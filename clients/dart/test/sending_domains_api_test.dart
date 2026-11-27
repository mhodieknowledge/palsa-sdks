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


/// tests for SendingDomainsApi
void main() {
  // final instance = SendingDomainsApi();

  group('tests for SendingDomainsApi', () {
    // Add a sending domain
    //
    // Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`. Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another workspace holds is refused. Requires the `domains.write` scope.  Until email sending is live the domain is stored as `awaiting_provider` with no records; they appear as soon as it is. 
    //
    //Future<AddSendingDomain201Response> addSendingDomain(AddSendingDomainRequest addSendingDomainRequest) async
    test('test addSendingDomain', () async {
      // TODO
    });

    // Check a sending domain now
    //
    // Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the `domains.write` scope. 
    //
    //Future<AddSendingDomain201Response> checkSendingDomain(String id) async
    test('test checkSendingDomain', () async {
      // TODO
    });

    // Get a sending domain
    //
    // Requires the `domains.read` scope.
    //
    //Future<AddSendingDomain201Response> getSendingDomain(String id) async
    test('test getSendingDomain', () async {
      // TODO
    });

    // List sending domains
    //
    // Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the `domains.read` scope. 
    //
    //Future<ListSendingDomains200Response> listSendingDomains() async
    test('test listSendingDomains', () async {
      // TODO
    });

    // Remove a sending domain
    //
    // Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope. 
    //
    //Future<RemoveSendingDomain200Response> removeSendingDomain(String id) async
    test('test removeSendingDomain', () async {
      // TODO
    });

  });
}
