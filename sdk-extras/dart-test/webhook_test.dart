import 'dart:convert';
import 'dart:io';

import 'package:palsa_api/webhook.dart';
import 'package:test/test.dart';

/// Webhook verification, against the fixture the Palsa server itself signed.
///
/// A test comparing Dart's HMAC with Dart's own HMAC would prove nothing. This proves the client agrees
/// with the server, and a test on the TypeScript side asserts the same fixture still matches what the
/// server signs today, so neither can drift without a failure.
///
/// Run by `scripts/test-sdks.sh` alongside the 44 generated suites, and by
/// .github/workflows/sdk-verify.yml.
void main() {
  final fixture = jsonDecode(
    File('../../tests/fixtures/webhook-signature.json').readAsStringSync(),
  ) as Map<String, dynamic>;

  final secret = fixture['secret'] as String;
  final body = utf8.encode(fixture['body'] as String);
  final signature = fixture['signature'] as String;
  final signedAt = DateTime.fromMillisecondsSinceEpoch(fixture['timestampMs'] as int);
  const tenMinutes = Duration(minutes: 10);

  test('accepts a signature the server produced', () {
    expect(
      verifyWebhook(body: body, signature: signature, secret: secret, now: signedAt),
      isTrue,
    );
  });

  test('parse returns the event', () {
    final event = parseWebhook(body: body, signature: signature, secret: secret, now: signedAt);
    expect(event['type'], 'notification.delivered');
  });

  test('refuses a changed body', () {
    final tampered = utf8.encode(utf8.decode(body).replaceFirst('dlv_1', 'dlv_2'));
    expect(
      verifyWebhook(body: tampered, signature: signature, secret: secret, now: signedAt),
      isFalse,
    );
  });

  test('refuses the wrong secret', () {
    expect(
      verifyWebhook(body: body, signature: signature, secret: 'whsec_other', now: signedAt),
      isFalse,
    );
  });

  test('refuses a malformed or missing signature', () {
    for (final bad in [null, '', 'v1=deadbeef', 't=notanumber,v1=deadbeef', 'nonsense']) {
      expect(
        verifyWebhook(body: body, signature: bad, secret: secret, now: signedAt),
        isFalse,
        reason: 'accepted a malformed signature: $bad',
      );
    }
  });

  test('refuses a moved timestamp', () {
    // The timestamp is covered by the signature, so moving it breaks the check.
    expect(
      verifyWebhook(
        body: body,
        signature: signature.replaceFirst('t=', 't=1'),
        secret: secret,
        now: signedAt,
      ),
      isFalse,
    );
  });

  test('refuses one too old to be fresh', () {
    // This is what stops an old delivery being replayed later.
    expect(
      verifyWebhook(body: body, signature: signature, secret: secret, now: signedAt.add(tenMinutes)),
      isFalse,
    );
    expect(
      verifyWebhook(
        body: body,
        signature: signature,
        secret: secret,
        now: signedAt.add(const Duration(minutes: 1)),
      ),
      isTrue,
    );
    // A wider window accepts it, for a consumer that wants one.
    expect(
      verifyWebhook(
        body: body,
        signature: signature,
        secret: secret,
        now: signedAt.add(tenMinutes),
        tolerance: const Duration(minutes: 20),
      ),
      isTrue,
    );
  });

  test('refuses one from too far ahead', () {
    // A clock far in front is as suspect as one far behind.
    expect(
      verifyWebhook(body: body, signature: signature, secret: secret, now: signedAt.subtract(tenMinutes)),
      isFalse,
    );
  });

  test('parse throws rather than returning nothing', () {
    expect(
      () => parseWebhook(body: body, signature: 'v1=nope', secret: secret, now: signedAt),
      throwsA(isA<InvalidSignatureException>()),
    );
  });
}
