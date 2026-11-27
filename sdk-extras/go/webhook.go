package palsaapi

import (
	"crypto/hmac"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"strconv"
	"strings"
	"time"
)

// ErrInvalidSignature is returned by ParseWebhook when a payload does not verify. It is an error rather
// than a false return because a payload that fails this check is either not from Palsa or has been
// tampered with, and neither should be handled as though it were an event.
var ErrInvalidSignature = errors.New("palsa: the webhook signature did not verify")

// WebhookTolerance is how old a signature may be. Five minutes is what stops an old delivery being
// replayed at you later.
const WebhookTolerance = 5 * time.Minute

// VerifyWebhook reports whether a webhook really came from Palsa.
//
// Pass the raw body. Parsing and re-serialising it changes the bytes and the signature will not match.
// The header looks like "t=<milliseconds>,v1=<hex>" and the signature covers "<t>.<body>", so the
// timestamp cannot be changed without breaking it.
//
// This is hand-written: it is not an API call, so no generator produces it, and it is the part of a client
// most worth getting right. It is tested against a signature the Palsa server itself produced.
func VerifyWebhook(body []byte, signature, secret string, now time.Time, tolerance time.Duration) bool {
	if signature == "" || secret == "" {
		return false
	}

	var timestamp, provided string
	for _, part := range strings.Split(signature, ",") {
		key, value, found := strings.Cut(strings.TrimSpace(part), "=")
		if !found {
			continue
		}
		switch key {
		case "t":
			timestamp = value
		case "v1":
			provided = value
		}
	}
	if timestamp == "" || provided == "" {
		return false
	}

	milliseconds, err := strconv.ParseInt(timestamp, 10, 64)
	if err != nil {
		return false
	}
	// Too old, or too far ahead: a clock far in front is as suspect as one far behind.
	age := now.Sub(time.UnixMilli(milliseconds))
	if age < 0 {
		age = -age
	}
	if age > tolerance {
		return false
	}

	mac := hmac.New(sha256.New, []byte(secret))
	mac.Write([]byte(timestamp + "."))
	mac.Write(body)
	expected := hex.EncodeToString(mac.Sum(nil))

	// Constant time, so a wrong signature cannot be guessed a character at a time.
	return hmac.Equal([]byte(expected), []byte(provided))
}

// VerifyWebhookNow is VerifyWebhook with the current time and the default tolerance, which is what almost
// every caller wants.
func VerifyWebhookNow(body []byte, signature, secret string) bool {
	return VerifyWebhook(body, signature, secret, time.Now(), WebhookTolerance)
}

// WebhookEvent is what Palsa sends.
type WebhookEvent struct {
	ID          string         `json:"id"`
	Type        string         `json:"type"`
	CreatedAt   string         `json:"createdAt"`
	WorkspaceID string         `json:"workspaceId"`
	Data        map[string]any `json:"data"`
}
