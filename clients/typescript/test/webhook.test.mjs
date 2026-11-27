// Run after `npm run build`: node test/webhook.test.mjs. Uses the signature the Palsa server produced.
import { readFileSync } from 'node:fs';
import assert from 'node:assert/strict';
import { createRequire } from 'node:module';

const { verifyWebhook, parseWebhook, WebhookSignatureError } = createRequire(import.meta.url)('../dist/index.js');
const f = JSON.parse(readFileSync(new URL('../../../tests/fixtures/webhook-signature.json', import.meta.url), 'utf8'));
const base = { body: f.body, signature: f.signature, secret: f.secret, nowMs: f.timestampMs + 1000 };

assert.equal(await verifyWebhook(base), true, 'the server-made signature verifies');
assert.equal(await verifyWebhook({ ...base, body: f.body.replace('dlv_1', 'dlv_2') }), false, 'a changed body fails');
assert.equal(await verifyWebhook({ ...base, secret: 'whsec_other' }), false, 'a wrong secret fails');
assert.equal(await verifyWebhook({ ...base, nowMs: f.timestampMs + 6 * 60_000 }), false, 'an old signature fails');
assert.equal(await verifyWebhook({ ...base, signature: null }), false, 'no header fails');
assert.equal((await parseWebhook(base)).id, 'evt_fixture');
await assert.rejects(parseWebhook({ ...base, secret: 'x' }), WebhookSignatureError);
console.log('webhook: 7 checks passed');
