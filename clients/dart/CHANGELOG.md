# Changelog

Every Palsa client is generated from the same OpenAPI document and released together, so a
version here means the same thing in all nine.

## 0.2.0

- Sending domains: add, list, read, check and remove the domains a workspace sends email from, with
  the DNS records to publish for each (seventeen operations in all).
- The TypeScript and Python clients now ship the webhook signature verifier too.

## 0.1.1

- The same code as 0.1.0, released to validate trusted publishing.

## 0.1.0

- First release.
- Covers all twelve operations: sending, quoting, delivery history, balances, contacts, devices
  and one-time codes.
- Ships a webhook signature verifier, which no generator produces.
