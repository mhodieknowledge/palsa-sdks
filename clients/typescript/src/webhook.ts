/**
 * Webhook signature verification, written by hand: it is not an API call, so no generator produces it, and
 * it is the part of a client most worth getting right. Tested against a signature the Palsa server itself
 * produced (tests/fixtures/webhook-signature.json).
 *
 * The header looks like `t=<milliseconds>,v1=<hex>` and the signature is an HMAC-SHA256 over `<t>.<raw body>`,
 * so the timestamp cannot be changed without breaking it. Pass the raw body: parsing and re-serialising it
 * changes the bytes and the signature will not match. A signature older than five minutes is refused, which
 * is what stops an old delivery being replayed at you later.
 *
 * Uses Web Crypto, so it runs on Node 20 and later, Bun, Deno, Cloudflare Workers and in browsers.
 */

/** How old a signature may be, in milliseconds. */
export const WEBHOOK_TOLERANCE_MS = 5 * 60_000;

/** What Palsa sends. */
export interface WebhookEvent {
  id: string;
  type: string;
  createdAt: string;
  workspaceId: string;
  data: Record<string, unknown>;
}

/** Thrown by parseWebhook when a payload does not verify. */
export class WebhookSignatureError extends Error {
  constructor() {
    super('That webhook signature did not verify.');
    this.name = 'WebhookSignatureError';
  }
}

export interface WebhookInput {
  /** The raw request body, exactly as received. */
  body: string;
  /** The Palsa-Signature header. */
  signature: string | null | undefined;
  /** The endpoint's signing secret. */
  secret: string;
  /** How old a signature may be. Default five minutes. */
  toleranceMs?: number;
  /** For tests. Defaults to now. */
  nowMs?: number;
}

/** Whether a webhook really came from Palsa. */
export async function verifyWebhook(input: WebhookInput): Promise<boolean> {
  const { body, signature, secret } = input;
  if (!signature || !secret) return false;
  const parts = new Map<string, string>();
  for (const piece of signature.split(',')) {
    const at = piece.indexOf('=');
    if (at > 0) parts.set(piece.slice(0, at).trim(), piece.slice(at + 1).trim());
  }
  const timestamp = Number(parts.get('t'));
  const provided = parts.get('v1');
  if (!provided || !Number.isFinite(timestamp)) return false;
  const now = input.nowMs ?? Date.now();
  if (Math.abs(now - timestamp) > (input.toleranceMs ?? WEBHOOK_TOLERANCE_MS)) return false;

  const encoder = new TextEncoder();
  const key = await crypto.subtle.importKey(
    'raw',
    encoder.encode(secret),
    { name: 'HMAC', hash: 'SHA-256' },
    false,
    ['sign'],
  );
  const mac = new Uint8Array(await crypto.subtle.sign('HMAC', key, encoder.encode(`${timestamp}.${body}`)));
  let expected = '';
  for (const byte of mac) expected += (byte < 16 ? '0' : '') + byte.toString(16);
  // Constant time, so a wrong signature cannot be guessed a character at a time.
  if (expected.length !== provided.length) return false;
  let difference = 0;
  for (let i = 0; i < expected.length; i++) difference |= expected.charCodeAt(i) ^ provided.charCodeAt(i);
  return difference === 0;
}

/**
 * Verify a webhook and give back the event. Throws rather than returning null: a payload that fails this
 * check is either not from Palsa or has been tampered with, and neither should be handled as an event.
 */
export async function parseWebhook(input: WebhookInput): Promise<WebhookEvent> {
  if (!(await verifyWebhook(input))) throw new WebhookSignatureError();
  return JSON.parse(input.body) as WebhookEvent;
}
