//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;


class SendingDomainsApi {
  SendingDomainsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a sending domain
  ///
  /// Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`. Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another workspace holds is refused. Requires the `domains.write` scope.  Until email sending is live the domain is stored as `awaiting_provider` with no records; they appear as soon as it is. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddSendingDomainRequest] addSendingDomainRequest (required):
  Future<Response> addSendingDomainWithHttpInfo(AddSendingDomainRequest addSendingDomainRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains';

    // ignore: prefer_final_locals
    Object? postBody = addSendingDomainRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add a sending domain
  ///
  /// Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`. Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another workspace holds is refused. Requires the `domains.write` scope.  Until email sending is live the domain is stored as `awaiting_provider` with no records; they appear as soon as it is. 
  ///
  /// Parameters:
  ///
  /// * [AddSendingDomainRequest] addSendingDomainRequest (required):
  Future<AddSendingDomain201Response?> addSendingDomain(AddSendingDomainRequest addSendingDomainRequest,) async {
    final response = await addSendingDomainWithHttpInfo(addSendingDomainRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddSendingDomain201Response',) as AddSendingDomain201Response;
    
    }
    return null;
  }

  /// Check a sending domain now
  ///
  /// Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the `domains.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> checkSendingDomainWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{id}/check'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Check a sending domain now
  ///
  /// Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the `domains.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<AddSendingDomain201Response?> checkSendingDomain(String id,) async {
    final response = await checkSendingDomainWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddSendingDomain201Response',) as AddSendingDomain201Response;
    
    }
    return null;
  }

  /// Get a sending domain
  ///
  /// Requires the `domains.read` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSendingDomainWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a sending domain
  ///
  /// Requires the `domains.read` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<AddSendingDomain201Response?> getSendingDomain(String id,) async {
    final response = await getSendingDomainWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddSendingDomain201Response',) as AddSendingDomain201Response;
    
    }
    return null;
  }

  /// List sending domains
  ///
  /// Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the `domains.read` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listSendingDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List sending domains
  ///
  /// Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the `domains.read` scope. 
  Future<ListSendingDomains200Response?> listSendingDomains() async {
    final response = await listSendingDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSendingDomains200Response',) as ListSendingDomains200Response;
    
    }
    return null;
  }

  /// Remove a sending domain
  ///
  /// Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> removeSendingDomainWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove a sending domain
  ///
  /// Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<RemoveSendingDomain200Response?> removeSendingDomain(String id,) async {
    final response = await removeSendingDomainWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RemoveSendingDomain200Response',) as RemoveSendingDomain200Response;
    
    }
    return null;
  }
}
