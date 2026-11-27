"""Run from clients/python: python3 -m unittest test.test_webhook. Uses the signature the server produced."""

import json
import pathlib
import unittest

from palsa_api import WebhookSignatureError, parse_webhook, verify_webhook

FIXTURE = json.loads(
    (pathlib.Path(__file__).resolve().parents[3] / "tests" / "fixtures" / "webhook-signature.json").read_text()
)
NOW = FIXTURE["timestampMs"] / 1000 + 1


class WebhookTest(unittest.TestCase):
    def check(self, **change):
        args = dict(body=FIXTURE["body"], signature=FIXTURE["signature"], secret=FIXTURE["secret"], now=NOW)
        args.update(change)
        return verify_webhook(**args)

    def test_server_signature_verifies(self):
        self.assertTrue(self.check())

    def test_changes_fail(self):
        self.assertFalse(self.check(body=FIXTURE["body"].replace("dlv_1", "dlv_2")))
        self.assertFalse(self.check(secret="whsec_other"))
        self.assertFalse(self.check(now=NOW + 360))
        self.assertFalse(self.check(signature=None))

    def test_parse(self):
        event = parse_webhook(FIXTURE["body"], FIXTURE["signature"], FIXTURE["secret"], now=NOW)
        self.assertEqual(event["id"], "evt_fixture")
        with self.assertRaises(WebhookSignatureError):
            parse_webhook(FIXTURE["body"], FIXTURE["signature"], "x", now=NOW)


if __name__ == "__main__":
    unittest.main()
