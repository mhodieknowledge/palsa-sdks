//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:palsa_api/api.dart';
import 'package:test/test.dart';

// tests for SendRequest
void main() {
  // final instance = SendRequest();

  group('test SendRequest', () {
    // Tried in the order given. With `fallback` routing the next is used only if the previous does not work out.
    // List<Channel> channels (default value: const [])
    test('to test the property `channels`', () async {
      // TODO
    });

    // Recipients to
    test('to test the property `to`', () async {
      // TODO
    });

    // Required unless `templateId` is given. Supports `{{ name }}` and your own variables.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // Email only.
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // String templateId
    test('to test the property `templateId`', () async {
      // TODO
    });

    // Map<String, Object> variables (default value: const {})
    test('to test the property `variables`', () async {
      // TODO
    });

    // Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the `List-Unsubscribe` and `List-Unsubscribe-Post` headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted. 
    // String purpose (default value: 'transactional')
    test('to test the property `purpose`', () async {
      // TODO
    });

    // String routing (default value: 'parallel')
    test('to test the property `routing`', () async {
      // TODO
    });

    // With `fallback` routing, what counts as not working out. A refusal falls back whichever is chosen; `timeout` also falls back when nothing was delivered within the wait, and `unacknowledged` when nothing was read, which needs your own read callback wired up. 
    // String fallbackOn (default value: 'failure')
    test('to test the property `fallbackOn`', () async {
      // TODO
    });

    // int fallbackWaitSeconds
    test('to test the property `fallbackWaitSeconds`', () async {
      // TODO
    });

    // An A/B test's second message. Each arm is costed from its own body, so a longer B costs more.
    // String variantBody
    test('to test the property `variantBody`', () async {
      // TODO
    });

    // String variantSubject
    test('to test the property `variantSubject`', () async {
      // TODO
    });

    // The share of the audience that gets variant B.
    // int splitPercent
    test('to test the property `splitPercent`', () async {
      // TODO
    });

    // Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent. 
    // bool trackLinks (default value: false)
    test('to test the property `trackLinks`', () async {
      // TODO
    });

    // 24-hour local time, e.g. \"22:00\". Both ends are needed or neither applies.
    // String quietStart
    test('to test the property `quietStart`', () async {
      // TODO
    });

    // String quietEnd
    test('to test the property `quietEnd`', () async {
      // TODO
    });

    // An IANA zone, e.g. \"Africa/Harare\".
    // String timezone
    test('to test the property `timezone`', () async {
      // TODO
    });

    // Email only. Ids of files already uploaded to this workspace.
    // List<String> attachmentIds (default value: const [])
    test('to test the property `attachmentIds`', () async {
      // TODO
    });

    // Push only.
    // String deepLink
    test('to test the property `deepLink`', () async {
      // TODO
    });

    // Push only. How long it stays worth delivering.
    // int ttlSeconds
    test('to test the property `ttlSeconds`', () async {
      // TODO
    });

    // Push only.
    // String priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // Push only. The number on the app icon. Zero is meaningful: it clears the badge.
    // int badge
    test('to test the property `badge`', () async {
      // TODO
    });

    // Push only. A picture shown with the notification.
    // String imageUrl
    test('to test the property `imageUrl`', () async {
      // TODO
    });

    // Push only. Which push app to send through. Default the workspace's default app; a contact's device of that app is used.
    // String appId
    test('to test the property `appId`', () async {
      // TODO
    });

    // Push only. `default`, or the name of a sound bundled with the app.
    // String sound
    test('to test the property `sound`', () async {
      // TODO
    });

    // Push only. A newer message with the same key replaces an undelivered older one, on every platform.
    // String collapseKey
    test('to test the property `collapseKey`', () async {
      // TODO
    });

    // Push only. Key/value strings for the app. Keys may not be from, notification, message_type, or start with google or gcm.
    // Map<String, String> data (default value: const {})
    test('to test the property `data`', () async {
      // TODO
    });

    // Push only. Show nothing and wake the app in the background with `data`. Apple delivers these at low priority and may throttle them. `body` may then be omitted.
    // bool silent
    test('to test the property `silent`', () async {
      // TODO
    });

    // AndroidPushOptions android
    test('to test the property `android`', () async {
      // TODO
    });

    // IosPushOptions ios
    test('to test the property `ios`', () async {
      // TODO
    });

    // WebPushOptions web
    test('to test the property `web`', () async {
      // TODO
    });

    // ISO 8601. Omit to send now.
    // String scheduledAt
    test('to test the property `scheduledAt`', () async {
      // TODO
    });

    // String callbackUrl
    test('to test the property `callbackUrl`', () async {
      // TODO
    });

    // Yours. Returned on the send and on webhooks about it.
    // Map<String, Object> metadata (default value: const {})
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Also seeds the A/B division
    // String name
    test('to test the property `name`', () async {
      // TODO
    });


  });

}
