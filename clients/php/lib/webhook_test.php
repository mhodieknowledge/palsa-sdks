<?php
/**
 * Webhook verification, against the fixture the Palsa server itself signed.
 *
 * A test comparing PHP's HMAC with PHP's own HMAC would prove nothing. This proves the client agrees with
 * the server, and a test on the TypeScript side asserts the same fixture still matches what the server
 * signs today, so neither can drift without a failure.
 *
 * Run: php lib/webhook_test.php   (exit 0 means every case passed)
 */

declare(strict_types=1);

// Only the verifier, not the autoloader: it has no dependencies, which is worth knowing when deciding
// where to call it from.
require_once __DIR__ . '/Webhook.php';

use Palsa\Api\Webhook;

$fixture = json_decode(
    file_get_contents(__DIR__ . '/../../../tests/fixtures/webhook-signature.json'),
    true,
    512,
    JSON_THROW_ON_ERROR
);

$secret = $fixture['secret'];
$body = $fixture['body'];
$signature = $fixture['signature'];
$signedAt = $fixture['timestampMs'] / 1000.0;

$failures = 0;
$check = function (string $what, bool $passed) use (&$failures): void {
    if (!$passed) {
        $failures++;
        echo "FAIL: $what\n";
    }
};

$check(
    'accepts a signature the server produced',
    Webhook::verify($body, $signature, $secret, 300, $signedAt) === true
);
$check(
    'parse returns the event',
    Webhook::parse($body, $signature, $secret, 300, $signedAt)['type'] === 'notification.delivered'
);
$check(
    'refuses a changed body',
    Webhook::verify(str_replace('dlv_1', 'dlv_2', $body), $signature, $secret, 300, $signedAt) === false
);
$check(
    'refuses the wrong secret',
    Webhook::verify($body, $signature, 'whsec_other', 300, $signedAt) === false
);
foreach ([null, '', 'v1=deadbeef', 't=notanumber,v1=deadbeef', 'nonsense'] as $bad) {
    $check(
        'refuses a malformed signature: ' . var_export($bad, true),
        Webhook::verify($body, $bad, $secret, 300, $signedAt) === false
    );
}
// The timestamp is covered by the signature, so moving it breaks the check.
$check(
    'refuses a moved timestamp',
    Webhook::verify($body, str_replace('t=', 't=1', $signature), $secret, 300, $signedAt) === false
);
// Ten minutes later, with the default five-minute window: this is what stops a replay.
$check(
    'refuses one too old to be fresh',
    Webhook::verify($body, $signature, $secret, 300, $signedAt + 600) === false
);
$check(
    'accepts one a minute old',
    Webhook::verify($body, $signature, $secret, 300, $signedAt + 60) === true
);
$check(
    'a wider tolerance accepts it',
    Webhook::verify($body, $signature, $secret, 1200, $signedAt + 600) === true
);
// A clock far in front is as suspect as one far behind.
$check(
    'refuses one from too far ahead',
    Webhook::verify($body, $signature, $secret, 300, $signedAt - 600) === false
);

$thrown = false;
try {
    Webhook::parse($body, 'v1=nope', $secret, 300, $signedAt);
} catch (\RuntimeException $expected) {
    $thrown = true;
}
$check('parse throws rather than returning nothing', $thrown);

if ($failures > 0) {
    echo "$failures failed\n";
    exit(1);
}
echo "PHP webhook verification: every case passed\n";
