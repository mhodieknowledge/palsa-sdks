package io.github.mhodieknowledge.api;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

/**
 * Webhook verification, against the fixture the Palsa server itself signed.
 *
 * <p>A test comparing Java's HMAC with Java's own HMAC would prove nothing. This proves the client agrees
 * with the server, and a test on the TypeScript side asserts the same fixture still matches what the
 * server signs today, so neither can drift without a failure.
 */
class WebhookTest {

  private static String secret;
  private static byte[] body;
  private static String signature;
  private static long signedAtMs;

  @BeforeAll
  static void loadFixture() throws Exception {
    // Read with a small regex rather than adding a JSON dependency to a test of a dependency-free class.
    String raw =
        Files.readString(Path.of("../../tests/fixtures/webhook-signature.json"), StandardCharsets.UTF_8);
    secret = field(raw, "secret");
    body = unescape(field(raw, "body")).getBytes(StandardCharsets.UTF_8);
    signature = field(raw, "signature");
    signedAtMs = Long.parseLong(numberField(raw, "timestampMs"));
  }

  private static String field(String json, String name) {
    Matcher m = Pattern.compile("\"" + name + "\"\\s*:\\s*\"((?:[^\"\\\\]|\\\\.)*)\"").matcher(json);
    if (!m.find()) throw new IllegalStateException("The fixture has no " + name);
    return m.group(1);
  }

  private static String numberField(String json, String name) {
    Matcher m = Pattern.compile("\"" + name + "\"\\s*:\\s*(\\d+)").matcher(json);
    if (!m.find()) throw new IllegalStateException("The fixture has no " + name);
    return m.group(1);
  }

  private static String unescape(String value) {
    return value.replace("\\\"", "\"").replace("\\\\", "\\").replace("\\n", "\n");
  }

  @Test
  void acceptsASignatureTheServerProduced() {
    assertTrue(Webhook.verify(body, signature, secret, signedAtMs, Webhook.DEFAULT_TOLERANCE_MS));
  }

  @Test
  void refusesAChangedBody() {
    byte[] tampered =
        new String(body, StandardCharsets.UTF_8)
            .replace("dlv_1", "dlv_2")
            .getBytes(StandardCharsets.UTF_8);
    assertFalse(Webhook.verify(tampered, signature, secret, signedAtMs, Webhook.DEFAULT_TOLERANCE_MS));
  }

  @Test
  void refusesTheWrongSecret() {
    assertFalse(
        Webhook.verify(body, signature, "whsec_other", signedAtMs, Webhook.DEFAULT_TOLERANCE_MS));
  }

  @Test
  void refusesAMalformedOrMissingSignature() {
    for (String bad : new String[] {null, "", "v1=deadbeef", "t=notanumber,v1=deadbeef", "nonsense"}) {
      assertFalse(
          Webhook.verify(body, bad, secret, signedAtMs, Webhook.DEFAULT_TOLERANCE_MS),
          "accepted a malformed signature: " + bad);
    }
  }

  @Test
  void refusesAMovedTimestamp() {
    // The timestamp is covered by the signature, so moving it breaks the check.
    assertFalse(
        Webhook.verify(
            body, signature.replace("t=", "t=1"), secret, signedAtMs, Webhook.DEFAULT_TOLERANCE_MS));
  }

  @Test
  void refusesOneTooOldToBeFresh() {
    long tenMinutes = 10 * 60 * 1000L;
    // This is what stops an old delivery being replayed later.
    assertFalse(
        Webhook.verify(
            body, signature, secret, signedAtMs + tenMinutes, Webhook.DEFAULT_TOLERANCE_MS));
    assertTrue(
        Webhook.verify(body, signature, secret, signedAtMs + 60_000, Webhook.DEFAULT_TOLERANCE_MS));
    // A wider window accepts it, for a consumer that wants one.
    assertTrue(Webhook.verify(body, signature, secret, signedAtMs + tenMinutes, 20 * 60 * 1000L));
  }

  @Test
  void refusesOneFromTooFarAhead() {
    // A clock far in front is as suspect as one far behind.
    assertFalse(
        Webhook.verify(
            body, signature, secret, signedAtMs - 10 * 60 * 1000L, Webhook.DEFAULT_TOLERANCE_MS));
  }

  @Test
  void requireThrowsRatherThanReturning() {
    assertThrows(
        Webhook.InvalidSignatureException.class, () -> Webhook.require(body, "v1=nope", secret));
  }
}
