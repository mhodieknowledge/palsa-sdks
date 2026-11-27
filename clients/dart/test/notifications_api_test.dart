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


/// tests for NotificationsApi
void main() {
  // final instance = NotificationsApi();

  group('tests for NotificationsApi', () {
    // What the MCP endpoint is
    //
    // Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  Requires the `notifications.read` scope.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first. 
    //
    //Future<DescribeMcp200Response> describeMcp() async
    test('test describeMcp', () async {
      // TODO
    });

    // One send
    //
    // Requires the `notifications.read` scope.
    //
    //Future<GetNotification200Response> getNotification(String id) async
    test('test getNotification', () async {
      // TODO
    });

    // List sends
    //
    // Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the `notifications.read` scope. 
    //
    //Future<ListNotifications200Response> listNotifications({ String status, int limit, String cursor }) async
    test('test listNotifications', () async {
      // TODO
    });

    // Price a send without making it
    //
    // The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. `recipients` carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read `recipientCount` and `units` unless you need the rows themselves.  Requires the `notifications.send` scope. 
    //
    //Future<QuoteSend200Response> quoteSend(SendRequest sendRequest) async
    test('test quoteSend', () async {
      // TODO
    });

    // Send a notification
    //
    // Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the `notifications.send` scope. 
    //
    //Future<SendNotification202Response> sendNotification(SendRequest sendRequest, { String idempotencyKey }) async
    test('test sendNotification', () async {
      // TODO
    });

  });
}
