"""Webhook signature verification, written by hand.

It is not an API call, so no generator produces it, and it is the part of a client most worth getting right.
Tested against a signature the Palsa server itself produced (tests/fixtures/webhook-signature.json).

The header looks like ``t=<milliseconds>,v1=<hex>`` and the signature is an HMAC-SHA256 over
``<t>.<raw body>``, so the timestamp cannot be changed without breaking it. Pass the raw body: parsing and
re-serialising it changes the bytes and the signature will not match. A signature older than five minutes is
refused, which is what stops an old delivery being replayed at you later.
"""

import hashlib
import hmac
import json
import time
from typing import Any, Dict, Optional, Union

WEBHOOK_TOLERANCE_SECONDS = 300.0


class WebhookSignatureError(Exception):
    """Raised by parse_webhook when a payload does not verify."""

    def __init__(self) -> None:
        super().__init__("That webhook signature did not verify.")


def verify_webhook(
    body: Union[str, bytes],
    signature: Optional[str],
    secret: str,
    tolerance_seconds: float = WEBHOOK_TOLERANCE_SECONDS,
    now: Optional[float] = None,
) -> bool:
    """Whether a webhook really came from Palsa."""
    if not signature or not secret:
        return False
    parts: Dict[str, str] = {}
    for piece in signature.split(","):
        key, _, value = piece.strip().partition("=")
        if key and value:
            parts[key] = value
    provided = parts.get("v1")
    try:
        timestamp_ms = int(parts["t"])
    except (KeyError, ValueError):
        return False
    if not provided:
        return False
    current = time.time() if now is None else now
    if abs(current - timestamp_ms / 1000.0) > tolerance_seconds:
        return False
    raw = body.encode("utf-8") if isinstance(body, str) else body
    expected = hmac.new(
        secret.encode("utf-8"), f"{timestamp_ms}.".encode("utf-8") + raw, hashlib.sha256
    ).hexdigest()
    # Constant time, so a wrong signature cannot be guessed a character at a time.
    return hmac.compare_digest(expected, provided)


def parse_webhook(
    body: Union[str, bytes],
    signature: Optional[str],
    secret: str,
    tolerance_seconds: float = WEBHOOK_TOLERANCE_SECONDS,
    now: Optional[float] = None,
) -> Dict[str, Any]:
    """Verify a webhook and return the event.

    Raises rather than returning ``None``: a payload that fails this check is either not from Palsa or has
    been tampered with, and neither should be handled as though it were an event.
    """
    if not verify_webhook(body, signature, secret, tolerance_seconds, now):
        raise WebhookSignatureError()
    return json.loads(body.decode("utf-8") if isinstance(body, bytes) else body)
