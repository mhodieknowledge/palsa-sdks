package com.kuzikode.palsa.api;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/**
 * Webhook signature verification.
 *
 * <p>Hand-written: it is not an API call, so no generator produces it, and it is the part of a client most
 * worth getting right. Wrong, it either trusts forged payloads or rejects genuine ones. It is tested
 * against a signature the Palsa server itself produced.
 */
public final class Webhook {

  /** How old a signature may be. This is what stops an old delivery being replayed at you later. */
  public static final long DEFAULT_TOLERANCE_MS = 5 * 60 * 1000L;

  private Webhook() {}

  /** Thrown rather than returning false, where a caller wants the failure to stop the request. */
  public static final class InvalidSignatureException extends RuntimeException {
    public InvalidSignatureException(String message) {
      super(message);
    }
  }

  /**
   * Whether a webhook really came from Palsa.
   *
   * <p>Pass the raw body. Parsing and re-serialising it changes the bytes and the signature will not
   * match. The header looks like {@code t=<milliseconds>,v1=<hex>} and the signature covers
   * {@code <t>.<body>}, so the timestamp cannot be changed without breaking it.
   */
  public static boolean verify(
      byte[] body, String signature, String secret, long nowMs, long toleranceMs) {
    if (signature == null || signature.isEmpty() || secret == null || secret.isEmpty()) {
      return false;
    }

    String timestamp = null;
    String provided = null;
    for (String part : signature.split(",")) {
      int equals = part.indexOf('=');
      if (equals < 0) {
        continue;
      }
      String key = part.substring(0, equals).trim();
      String value = part.substring(equals + 1).trim();
      if ("t".equals(key)) {
        timestamp = value;
      } else if ("v1".equals(key)) {
        provided = value;
      }
    }
    if (timestamp == null || provided == null) {
      return false;
    }

    final long signedAt;
    try {
      signedAt = Long.parseLong(timestamp);
    } catch (NumberFormatException notANumber) {
      return false;
    }
    // Too old, or too far ahead: a clock far in front is as suspect as one far behind.
    if (Math.abs(nowMs - signedAt) > toleranceMs) {
      return false;
    }

    final byte[] expected;
    try {
      Mac mac = Mac.getInstance("HmacSHA256");
      mac.init(new SecretKeySpec(secret.getBytes(StandardCharsets.UTF_8), "HmacSHA256"));
      mac.update((timestamp + ".").getBytes(StandardCharsets.UTF_8));
      mac.update(body);
      expected = hex(mac.doFinal()).getBytes(StandardCharsets.UTF_8);
    } catch (Exception unavailable) {
      // HmacSHA256 is required of every JVM, so this cannot happen in practice.
      return false;
    }

    // Constant time, so a wrong signature cannot be guessed a character at a time.
    return MessageDigest.isEqual(expected, provided.getBytes(StandardCharsets.UTF_8));
  }

  /** Verify with the current time and the default tolerance, which is what almost every caller wants. */
  public static boolean verify(byte[] body, String signature, String secret) {
    return verify(body, signature, secret, System.currentTimeMillis(), DEFAULT_TOLERANCE_MS);
  }

  /**
   * Verify, or throw. A payload that fails this check is either not from Palsa or has been tampered with,
   * and neither should be handled as though it were an event.
   */
  public static void require(byte[] body, String signature, String secret) {
    if (!verify(body, signature, secret)) {
      throw new InvalidSignatureException("That webhook signature did not verify.");
    }
  }

  private static String hex(byte[] bytes) {
    StringBuilder out = new StringBuilder(bytes.length * 2);
    for (byte b : bytes) {
      out.append(Character.forDigit((b >> 4) & 0xf, 16)).append(Character.forDigit(b & 0xf, 16));
    }
    return out.toString();
  }
}
