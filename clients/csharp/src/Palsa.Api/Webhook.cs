using System;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;

namespace Palsa.Api
{
    /// <summary>
    /// Webhook signature verification.
    ///
    /// Hand-written: it is not an API call, so no generator produces it, and it is the part of a client
    /// most worth getting right. Wrong, it either trusts forged payloads or rejects genuine ones. It is
    /// tested against a signature the Palsa server itself produced.
    /// </summary>
    public static class Webhook
    {
        /// <summary>How old a signature may be. This is what stops an old delivery being replayed later.</summary>
        public static readonly TimeSpan DefaultTolerance = TimeSpan.FromMinutes(5);

        public sealed class InvalidSignatureException : Exception
        {
            public InvalidSignatureException(string message) : base(message) { }
        }

        /// <summary>
        /// Whether a webhook really came from Palsa.
        ///
        /// Pass the raw body. Parsing and re-serialising it changes the bytes and the signature will not
        /// match. The header looks like <c>t=&lt;milliseconds&gt;,v1=&lt;hex&gt;</c> and the signature
        /// covers <c>&lt;t&gt;.&lt;body&gt;</c>, so the timestamp cannot be changed without breaking it.
        /// </summary>
        public static bool Verify(
            byte[] body,
            string? signature,
            string secret,
            DateTimeOffset? now = null,
            TimeSpan? tolerance = null)
        {
            if (string.IsNullOrEmpty(signature) || string.IsNullOrEmpty(secret)) return false;

            string? timestamp = null;
            string? provided = null;
            foreach (var part in signature!.Split(','))
            {
                var pair = part.Trim().Split('=', 2);
                if (pair.Length != 2) continue;
                if (pair[0] == "t") timestamp = pair[1];
                else if (pair[0] == "v1") provided = pair[1];
            }
            if (timestamp is null || provided is null) return false;
            if (!long.TryParse(timestamp, out var signedAtMs)) return false;

            // Too old, or too far ahead: a clock far in front is as suspect as one far behind.
            var current = now ?? DateTimeOffset.UtcNow;
            var window = tolerance ?? DefaultTolerance;
            var age = current - DateTimeOffset.FromUnixTimeMilliseconds(signedAtMs);
            if (age.Duration() > window) return false;

            using var mac = new HMACSHA256(Encoding.UTF8.GetBytes(secret));
            var prefix = Encoding.UTF8.GetBytes(timestamp + ".");
            var signed = new byte[prefix.Length + body.Length];
            Buffer.BlockCopy(prefix, 0, signed, 0, prefix.Length);
            Buffer.BlockCopy(body, 0, signed, prefix.Length, body.Length);
            var expected = Convert.ToHexString(mac.ComputeHash(signed)).ToLowerInvariant();

            // Constant time, so a wrong signature cannot be guessed a character at a time.
            return CryptographicOperations.FixedTimeEquals(
                Encoding.UTF8.GetBytes(expected),
                Encoding.UTF8.GetBytes(provided));
        }

        /// <summary>
        /// Verify and parse, throwing rather than returning null: a payload that fails this check is
        /// either not from Palsa or has been tampered with, and neither should be handled as an event.
        /// </summary>
        public static JsonDocument Parse(
            byte[] body,
            string? signature,
            string secret,
            DateTimeOffset? now = null,
            TimeSpan? tolerance = null)
        {
            if (!Verify(body, signature, secret, now, tolerance))
                throw new InvalidSignatureException("That webhook signature did not verify.");
            return JsonDocument.Parse(body);
        }
    }
}
