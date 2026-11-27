package palsaapi

import (
	"encoding/json"
	"os"
	"strings"
	"testing"
	"time"
)

// The fixture was signed by the Palsa server itself, and a test on the TypeScript side asserts it still
// matches what the server signs today. Checking Go's HMAC against Go's own HMAC would prove nothing; this
// proves the client agrees with the server.
type fixture struct {
	Secret      string `json:"secret"`
	Body        string `json:"body"`
	TimestampMs int64  `json:"timestampMs"`
	Signature   string `json:"signature"`
}

func load(t *testing.T) (fixture, time.Time) {
	t.Helper()
	raw, err := os.ReadFile("../../tests/fixtures/webhook-signature.json")
	if err != nil {
		t.Fatalf("the shared fixture could not be read: %v", err)
	}
	var f fixture
	if err := json.Unmarshal(raw, &f); err != nil {
		t.Fatalf("the shared fixture is not valid JSON: %v", err)
	}
	return f, time.UnixMilli(f.TimestampMs)
}

func TestAcceptsASignatureTheServerProduced(t *testing.T) {
	f, signedAt := load(t)
	if !VerifyWebhook([]byte(f.Body), f.Signature, f.Secret, signedAt, WebhookTolerance) {
		t.Fatal("a signature the server produced was refused")
	}
}

func TestRefusesAChangedBody(t *testing.T) {
	f, signedAt := load(t)
	tampered := strings.Replace(f.Body, "dlv_1", "dlv_2", 1)
	if VerifyWebhook([]byte(tampered), f.Signature, f.Secret, signedAt, WebhookTolerance) {
		t.Fatal("a tampered body was accepted")
	}
}

func TestRefusesTheWrongSecret(t *testing.T) {
	f, signedAt := load(t)
	if VerifyWebhook([]byte(f.Body), f.Signature, "whsec_other", signedAt, WebhookTolerance) {
		t.Fatal("the wrong secret was accepted")
	}
}

func TestRefusesAMalformedOrMissingSignature(t *testing.T) {
	f, signedAt := load(t)
	for _, bad := range []string{"", "v1=deadbeef", "t=notanumber,v1=deadbeef", "nonsense"} {
		if VerifyWebhook([]byte(f.Body), bad, f.Secret, signedAt, WebhookTolerance) {
			t.Fatalf("a malformed signature was accepted: %q", bad)
		}
	}
}

func TestRefusesAMovedTimestamp(t *testing.T) {
	f, signedAt := load(t)
	// The timestamp is covered by the signature, so moving it breaks the check.
	moved := strings.Replace(f.Signature, "t=", "t=1", 1)
	if VerifyWebhook([]byte(f.Body), moved, f.Secret, signedAt, WebhookTolerance) {
		t.Fatal("a moved timestamp was accepted")
	}
}

func TestRefusesOneTooOldToBeFresh(t *testing.T) {
	f, signedAt := load(t)
	// Ten minutes later, with the default five-minute window: this is what stops a replay.
	if VerifyWebhook([]byte(f.Body), f.Signature, f.Secret, signedAt.Add(10*time.Minute), WebhookTolerance) {
		t.Fatal("a stale signature was accepted")
	}
	// Still good a minute later.
	if !VerifyWebhook([]byte(f.Body), f.Signature, f.Secret, signedAt.Add(time.Minute), WebhookTolerance) {
		t.Fatal("a fresh signature was refused")
	}
	// And a wider window accepts it, for a consumer that wants one.
	if !VerifyWebhook([]byte(f.Body), f.Signature, f.Secret, signedAt.Add(10*time.Minute), 20*time.Minute) {
		t.Fatal("a wider tolerance did not accept it")
	}
}

func TestRefusesOneFromTooFarAhead(t *testing.T) {
	f, signedAt := load(t)
	// A clock far in front is as suspect as one far behind.
	if VerifyWebhook([]byte(f.Body), f.Signature, f.Secret, signedAt.Add(-10*time.Minute), WebhookTolerance) {
		t.Fatal("a signature from the future was accepted")
	}
}
