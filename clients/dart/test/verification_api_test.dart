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


/// tests for VerificationApi
void main() {
  // final instance = VerificationApi();

  group('tests for VerificationApi', () {
    // Check a code
    //
    // Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the `verifications.write` scope. 
    //
    //Future<CheckVerification200Response> checkVerification(String id, CheckVerificationRequest checkVerificationRequest) async
    test('test checkVerification', () async {
      // TODO
    });

    // Send a one-time code
    //
    // Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the `verifications.write` scope. 
    //
    //Future<StartVerification201Response> startVerification(VerificationRequest verificationRequest) async
    test('test startVerification', () async {
      // TODO
    });

  });
}
