package io.github.mhodieknowledge.api

import java.io.File
import kotlin.test.Test
import kotlin.test.assertFailsWith
import kotlin.test.assertFalse
import kotlin.test.assertTrue

/**
 * Webhook verification, against the fixture the Palsa server itself signed.
 *
 * A test comparing Kotlin's HMAC with Kotlin's own HMAC would prove nothing. This proves the client agrees
 * with the server, and a test on the TypeScript side asserts the same fixture still matches what the
 * server signs today, so neither can drift without a failure.
 */
class WebhookTest {

    private val raw = File("../../tests/fixtures/webhook-signature.json").readText()
    private val secret = field("secret")
    private val body = field("body").unescape().toByteArray()
    private val signature = field("signature")
    private val signedAtMs = Regex("\"timestampMs\"\\s*:\\s*(\\d+)").find(raw)!!.groupValues[1].toLong()
    private val tenMinutes = 10 * 60 * 1000L

    /** Read with a regex rather than adding a JSON dependency to a test of a dependency-free object. */
    private fun field(name: String): String =
        Regex("\"$name\"\\s*:\\s*\"((?:[^\"\\\\]|\\\\.)*)\"").find(raw)!!.groupValues[1]

    private fun String.unescape(): String =
        replace("\\\"", "\"").replace("\\\\", "\\").replace("\\n", "\n")

    @Test
    fun `accepts a signature the server produced`() {
        assertTrue(Webhook.verify(body, signature, secret, signedAtMs))
    }

    @Test
    fun `refuses a changed body`() {
        val tampered = String(body).replace("dlv_1", "dlv_2").toByteArray()
        assertFalse(Webhook.verify(tampered, signature, secret, signedAtMs))
    }

    @Test
    fun `refuses the wrong secret`() {
        assertFalse(Webhook.verify(body, signature, "whsec_other", signedAtMs))
    }

    @Test
    fun `refuses a malformed or missing signature`() {
        for (bad in listOf(null, "", "v1=deadbeef", "t=notanumber,v1=deadbeef", "nonsense")) {
            assertFalse(Webhook.verify(body, bad, secret, signedAtMs), "accepted: $bad")
        }
    }

    @Test
    fun `refuses a moved timestamp`() {
        // The timestamp is covered by the signature, so moving it breaks the check.
        assertFalse(Webhook.verify(body, signature.replace("t=", "t=1"), secret, signedAtMs))
    }

    @Test
    fun `refuses one too old to be fresh`() {
        // This is what stops an old delivery being replayed later.
        assertFalse(Webhook.verify(body, signature, secret, signedAtMs + tenMinutes))
        assertTrue(Webhook.verify(body, signature, secret, signedAtMs + 60_000))
        // A wider window accepts it, for a consumer that wants one.
        assertTrue(Webhook.verify(body, signature, secret, signedAtMs + tenMinutes, 20 * 60 * 1000L))
    }

    @Test
    fun `refuses one from too far ahead`() {
        // A clock far in front is as suspect as one far behind.
        assertFalse(Webhook.verify(body, signature, secret, signedAtMs - tenMinutes))
    }

    @Test
    fun `require throws rather than returning`() {
        assertFailsWith<Webhook.InvalidSignatureException> {
            Webhook.require(body, "v1=nope", secret)
        }
    }
}
