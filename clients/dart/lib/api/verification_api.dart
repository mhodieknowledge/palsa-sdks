//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;


class VerificationApi {
  VerificationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check a code
  ///
  /// Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the `verifications.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CheckVerificationRequest] checkVerificationRequest (required):
  Future<Response> checkVerificationWithHttpInfo(String id, CheckVerificationRequest checkVerificationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/verifications/{id}/check'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = checkVerificationRequest;

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

  /// Check a code
  ///
  /// Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the `verifications.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CheckVerificationRequest] checkVerificationRequest (required):
  Future<CheckVerification200Response?> checkVerification(String id, CheckVerificationRequest checkVerificationRequest,) async {
    final response = await checkVerificationWithHttpInfo(id, checkVerificationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckVerification200Response',) as CheckVerification200Response;
    
    }
    return null;
  }

  /// Send a one-time code
  ///
  /// Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the `verifications.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerificationRequest] verificationRequest (required):
  Future<Response> startVerificationWithHttpInfo(VerificationRequest verificationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/verifications';

    // ignore: prefer_final_locals
    Object? postBody = verificationRequest;

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

  /// Send a one-time code
  ///
  /// Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the `verifications.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [VerificationRequest] verificationRequest (required):
  Future<StartVerification201Response?> startVerification(VerificationRequest verificationRequest,) async {
    final response = await startVerificationWithHttpInfo(verificationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartVerification201Response',) as StartVerification201Response;
    
    }
    return null;
  }
}
