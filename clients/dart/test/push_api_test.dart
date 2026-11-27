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


/// tests for PushApi
void main() {
  // final instance = PushApi();

  group('tests for PushApi', () {
    // Connect an app's Firebase project
    //
    // With `service_account`, the key is checked with Firebase (a validate-only message, which sends nothing) and the app is verified at once. With `delegated`, grant `grantTo` the Firebase Cloud Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices. Requires the `push.write` scope. 
    //
    //Future<InlineObject1> addPushApp(PushAppCreate pushAppCreate) async
    test('test addPushApp', () async {
      // TODO
    });

    // Check a push app's access again
    //
    // Requires the `push.write` scope.
    //
    //Future<InlineObject1> checkPushApp(String id) async
    test('test checkPushApp', () async {
      // TODO
    });

    // Confirm the code, verifying a delegated app
    //
    // Five wrong codes and a new one must be sent. Requires the `push.write` scope.
    //
    //Future<InlineObject1> confirmPushAppOwnership(String id, ConfirmPushAppOwnershipRequest confirmPushAppOwnershipRequest) async
    test('test confirmPushAppOwnership', () async {
      // TODO
    });

    // Get a push app
    //
    // Requires the `push.read` scope.
    //
    //Future<InlineObject1> getPushApp(String id) async
    test('test getPushApp', () async {
      // TODO
    });

    // List push apps
    //
    // Requires the `push.read` scope.
    //
    //Future<ListPushApps200Response> listPushApps() async
    test('test listPushApps', () async {
      // TODO
    });

    // List topics and how many devices each has
    //
    // Requires the `push.read` scope.
    //
    //Future<ListPushTopics200Response> listPushTopics() async
    test('test listPushTopics', () async {
      // TODO
    });

    // Remove a push app
    //
    // Its key is deleted and its devices stop receiving push. Requires the `push.write` scope.
    //
    //Future<InlineObject> removePushApp(String id) async
    test('test removePushApp', () async {
      // TODO
    });

    // Replace a push app's service-account key
    //
    // For rotating a key. The new one must be for the same project. Requires the `push.write` scope.
    //
    //Future<InlineObject1> replacePushAppKey(String id, ReplacePushAppKeyRequest replacePushAppKeyRequest) async
    test('test replacePushAppKey', () async {
      // TODO
    });

    // Push a six-digit code to one of your devices
    //
    // Delegated apps only. The code arrives as a notification and as the `palsa_verification_code` data key, and lasts 15 minutes. Requires the `push.write` scope.
    //
    //Future<InlineObject> sendPushAppOwnershipCode(String id, SendPushAppOwnershipCodeRequest sendPushAppOwnershipCodeRequest) async
    test('test sendPushAppOwnershipCode', () async {
      // TODO
    });

    // Subscribe devices to a topic
    //
    // Through each device's own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through `previousToken` is subscribed again automatically. Requires the `push.write` scope. 
    //
    //Future<InlineObject2> subscribeToPushTopic(String topic, DeviceTargets deviceTargets) async
    test('test subscribeToPushTopic', () async {
      // TODO
    });

    // Unsubscribe devices from a topic
    //
    // Requires the `push.write` scope.
    //
    //Future<InlineObject2> unsubscribeFromPushTopic(String topic, DeviceTargets deviceTargets) async
    test('test unsubscribeFromPushTopic', () async {
      // TODO
    });

    // Rename a push app or make it the default
    //
    // Requires the `push.write` scope.
    //
    //Future<InlineObject1> updatePushApp(String id, UpdatePushAppRequest updatePushAppRequest) async
    test('test updatePushApp', () async {
      // TODO
    });

  });
}
