package io.github.mhodieknowledge.api

import java.security.MessageDigest
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

/**
 * Webhook signature verification.
 *
 * Hand-written: it is not an API call, so no generator produces it, and it is the part of a client most
 * worth getting right. Wrong, it either trusts forged payloads or rejects genuine ones. It is tested
 * against a signature the Palsa server itself produced.
 */
object Webhook {

    /** How old a signature may be. This is what stops an old delivery being replayed at you later. */
    const val DEFAULT_TOLERANCE_MS: Long = 5 * 60 * 1000L

    class InvalidSignatureException(message: String) : RuntimeException(message)

    /**
     * Whether a webhook really came from Palsa.
     *
     * Pass the raw body. Parsing and re-serialising it changes the bytes and the signature will not match.
     * The header looks like `t=<milliseconds>,v1=<hex>` and the signature covers `<t>.<body>`, so the
     * timestamp cannot be changed without breaking it.
     */
    @JvmOverloads
    fun verify(
        body: ByteArray,
        signature: String?,
        secret: String,
        nowMs: Long = System.currentTimeMillis(),
        toleranceMs: Long = DEFAULT_TOLERANCE_MS,
    ): Boolean {
        if (signature.isNullOrEmpty() || secret.isEmpty()) return false

        val parts = signature.split(",")
            .mapNotNull { part ->
                val pair = part.trim().split("=", limit = 2)
                if (pair.size == 2) pair[0] to pair[1] else null
            }
            .toMap()

        val timestamp = parts["t"] ?: return false
        val provided = parts["v1"] ?: return false
        val signedAt = timestamp.toLongOrNull() ?: return false

        // Too old, or too far ahead: a clock far in front is as suspect as one far behind.
        if (kotlin.math.abs(nowMs - signedAt) > toleranceMs) return false

        val mac = Mac.getInstance("HmacSHA256")
        mac.init(SecretKeySpec(secret.toByteArray(), "HmacSHA256"))
        mac.update("$timestamp.".toByteArray())
        mac.update(body)
        val expected = mac.doFinal().joinToString("") { "%02x".format(it) }

        // Constant time, so a wrong signature cannot be guessed a character at a time.
        return MessageDigest.isEqual(expected.toByteArray(), provided.toByteArray())
    }

    /**
     * Verify, or throw. A payload that fails this check is either not from Palsa or has been tampered
     * with, and neither should be handled as though it were an event.
     */
    fun require(body: ByteArray, signature: String?, secret: String) {
        if (!verify(body, signature, secret)) {
            throw InvalidSignatureException("That webhook signature did not verify.")
        }
    }
}
