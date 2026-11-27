import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Webhook signature verification.
///
/// Hand-written: it is not an API call, so no generator produces it, and it is the part of a client most
/// worth getting right. Wrong, it either trusts forged payloads or rejects genuine ones. It is tested
/// against a signature the Palsa server itself produced.
class InvalidSignatureException implements Exception {
  @override
  String toString() => 'That webhook signature did not verify.';
}

/// How old a signature may be. This is what stops an old delivery being replayed at you later.
const Duration defaultWebhookTolerance = Duration(minutes: 5);

/// Whether a webhook really came from Palsa.
///
/// Pass the raw body bytes. Parsing and re-serialising changes the bytes and the signature will not match.
/// The header looks like `t=<milliseconds>,v1=<hex>` and the signature covers `<t>.<body>`, so the
/// timestamp cannot be changed without breaking it.
bool verifyWebhook({
  required List<int> body,
  required String? signature,
  required String secret,
  DateTime? now,
  Duration tolerance = defaultWebhookTolerance,
}) {
  if (signature == null || signature.isEmpty || secret.isEmpty) return false;

  String? timestamp;
  String? provided;
  for (final part in signature.split(',')) {
    final pair = part.trim().split('=');
    if (pair.length < 2) continue;
    if (pair[0] == 't') timestamp = pair.sublist(1).join('=');
    if (pair[0] == 'v1') provided = pair.sublist(1).join('=');
  }
  if (timestamp == null || provided == null) return false;

  final signedAtMs = int.tryParse(timestamp);
  if (signedAtMs == null) return false;

  // Too old, or too far ahead: a clock far in front is as suspect as one far behind.
  final current = now ?? DateTime.now();
  final age = current.millisecondsSinceEpoch - signedAtMs;
  if (age.abs() > tolerance.inMilliseconds) return false;

  final mac = Hmac(sha256, utf8.encode(secret));
  final signed = <int>[...utf8.encode('$timestamp.'), ...body];
  final expected = mac.convert(signed).toString();

  return _constantTimeEquals(expected, provided);
}

/// Verify and decode, throwing rather than returning null: a payload that fails this check is either not
/// from Palsa or has been tampered with, and neither should be handled as though it were an event.
Map<String, dynamic> parseWebhook({
  required List<int> body,
  required String? signature,
  required String secret,
  DateTime? now,
  Duration tolerance = defaultWebhookTolerance,
}) {
  if (!verifyWebhook(
    body: body,
    signature: signature,
    secret: secret,
    now: now,
    tolerance: tolerance,
  )) {
    throw InvalidSignatureException();
  }
  return jsonDecode(utf8.decode(body)) as Map<String, dynamic>;
}

/// Compares in time that does not depend on where the first difference is.
bool _constantTimeEquals(String a, String b) {
  final left = utf8.encode(a);
  final right = utf8.encode(b);
  if (left.length != right.length) return false;
  var difference = 0;
  for (var i = 0; i < left.length; i++) {
    difference |= left[i] ^ right[i];
  }
  return difference == 0;
}
