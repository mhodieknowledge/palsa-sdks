<?php
/**
 * Webhook signature verification.
 *
 * Hand-written: it is not an API call, so no generator produces it, and it is the part of a client most
 * worth getting right. Wrong, it either trusts forged payloads or rejects genuine ones. It is tested
 * against a signature the Palsa server itself produced.
 */

declare(strict_types=1);

namespace Palsa\Api;

final class Webhook
{
    /** How old a signature may be. This is what stops an old delivery being replayed at you later. */
    public const DEFAULT_TOLERANCE_SECONDS = 300;

    /**
     * Whether a webhook really came from Palsa.
     *
     * Pass the raw body, not a decoded array: parsing and re-serialising changes the bytes and the
     * signature will not match. In a framework that means the raw request body, not the parsed JSON.
     *
     * The header looks like t=<milliseconds>,v1=<hex> and the signature covers <t>.<body>, so the
     * timestamp cannot be changed without breaking it.
     */
    public static function verify(
        string $body,
        ?string $signature,
        string $secret,
        int $toleranceSeconds = self::DEFAULT_TOLERANCE_SECONDS,
        ?float $now = null
    ): bool {
        if ($signature === null || $signature === '' || $secret === '') {
            return false;
        }

        $timestamp = null;
        $provided = null;
        foreach (explode(',', $signature) as $part) {
            $pair = explode('=', trim($part), 2);
            if (count($pair) !== 2) {
                continue;
            }
            if ($pair[0] === 't') {
                $timestamp = $pair[1];
            } elseif ($pair[0] === 'v1') {
                $provided = $pair[1];
            }
        }
        if ($timestamp === null || $provided === null || !ctype_digit($timestamp)) {
            return false;
        }

        // Too old, or too far ahead: a clock far in front is as suspect as one far behind.
        $current = $now ?? microtime(true);
        if (abs($current - ((int) $timestamp) / 1000.0) > $toleranceSeconds) {
            return false;
        }

        $expected = hash_hmac('sha256', $timestamp . '.' . $body, $secret);

        // Constant time, so a wrong signature cannot be guessed a character at a time.
        return hash_equals($expected, $provided);
    }

    /**
     * Verify and decode, throwing rather than returning null: a payload that fails this check is either
     * not from Palsa or has been tampered with, and neither should be handled as though it were an event.
     *
     * @return array<string, mixed>
     */
    public static function parse(
        string $body,
        ?string $signature,
        string $secret,
        int $toleranceSeconds = self::DEFAULT_TOLERANCE_SECONDS,
        ?float $now = null
    ): array {
        if (!self::verify($body, $signature, $secret, $toleranceSeconds, $now)) {
            throw new \RuntimeException('That webhook signature did not verify.');
        }
        return json_decode($body, true, 512, JSON_THROW_ON_ERROR);
    }
}
