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

// tests for VerificationRequest
void main() {
  // final instance = VerificationRequest();

  group('test VerificationRequest', () {
    // String channel
    test('to test the property `channel`', () async {
      // TODO
    });

    // String to
    test('to test the property `to`', () async {
      // TODO
    });

    // int length (default value: 6)
    test('to test the property `length`', () async {
      // TODO
    });

    // int expiresInSeconds (default value: 600)
    test('to test the property `expiresInSeconds`', () async {
      // TODO
    });

    // Use `{{code}}` and `{{minutes}}`. Defaults to \"Your code is {{code}}. It expires in {{minutes}} minutes.\"
    // String template
    test('to test the property `template`', () async {
      // TODO
    });

    // The name of one of your active verification flows, set up in the console under Verification. Its expiry, attempt ceiling and rate apply to this challenge.  A name matching no active flow is refused with `NOT_FOUND` rather than falling back to the defaults, since a silent fallback is how somebody comes to believe a code allows three guesses when it allows five. A flow's rate applies in addition to the built-in ceiling of five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen it. 
    // String flow
    test('to test the property `flow`', () async {
      // TODO
    });


  });

}
