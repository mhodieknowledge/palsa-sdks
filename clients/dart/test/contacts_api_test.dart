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


/// tests for ContactsApi
void main() {
  // final instance = ContactsApi();

  group('tests for ContactsApi', () {
    // Save a contact
    //
    // Give an email address or a phone number, or both. `state` is `pending` unless you can show the person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write` scope. 
    //
    //Future<CreateContact201Response> createContact(ContactCreate contactCreate) async
    test('test createContact', () async {
      // TODO
    });

    // Erase a contact
    //
    // Requires the `contacts.write` scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 
    //
    //Future<DeleteContact200Response> deleteContact(String id) async
    test('test deleteContact', () async {
      // TODO
    });

    // List contacts
    //
    // Newest first. Requires the `contacts.read` scope.
    //
    //Future<ListContacts200Response> listContacts({ int limit }) async
    test('test listContacts', () async {
      // TODO
    });

    // List registered devices
    //
    // The newest 200, optionally for one contact. Tokens are never returned. Requires the `contacts.read` scope.
    //
    //Future<ListDevices200Response> listDevices({ String contactId }) async
    test('test listDevices', () async {
      // TODO
    });

    // Register a device for push
    //
    // Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the `contacts.write` scope. 
    //
    //Future<RegisterDevice201Response> registerDevice(DeviceRegister deviceRegister) async
    test('test registerDevice', () async {
      // TODO
    });

    // Stop sending to a device
    //
    // For sign-out, or when the person turns notifications off. The device leaves its topics. Requires the `contacts.write` scope.
    //
    //Future<InlineObject> unregisterDevice(UnregisterDeviceRequest unregisterDeviceRequest) async
    test('test unregisterDevice', () async {
      // TODO
    });

  });
}
