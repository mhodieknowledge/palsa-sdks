//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;


class NotificationsApi {
  NotificationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// What the MCP endpoint is
  ///
  /// Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  Requires the `notifications.read` scope.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> describeMcpWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mcp';

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

  /// What the MCP endpoint is
  ///
  /// Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  Requires the `notifications.read` scope.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first. 
  Future<DescribeMcp200Response?> describeMcp() async {
    final response = await describeMcpWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DescribeMcp200Response',) as DescribeMcp200Response;
    
    }
    return null;
  }

  /// One send
  ///
  /// Requires the `notifications.read` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getNotificationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notifications/{id}'
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

  /// One send
  ///
  /// Requires the `notifications.read` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<GetNotification200Response?> getNotification(String id,) async {
    final response = await getNotificationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetNotification200Response',) as GetNotification200Response;
    
    }
    return null;
  }

  /// List sends
  ///
  /// Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the `notifications.read` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Only sends in this state.
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  ///   The `nextCursor` from a previous page.
  Future<Response> listNotificationsWithHttpInfo({ String? status, int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notifications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }

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

  /// List sends
  ///
  /// Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the `notifications.read` scope. 
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Only sends in this state.
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  ///   The `nextCursor` from a previous page.
  Future<ListNotifications200Response?> listNotifications({ String? status, int? limit, String? cursor, }) async {
    final response = await listNotificationsWithHttpInfo( status: status, limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListNotifications200Response',) as ListNotifications200Response;
    
    }
    return null;
  }

  /// Price a send without making it
  ///
  /// The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. `recipients` carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read `recipientCount` and `units` unless you need the rows themselves.  Requires the `notifications.send` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendRequest] sendRequest (required):
  Future<Response> quoteSendWithHttpInfo(SendRequest sendRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/quotes';

    // ignore: prefer_final_locals
    Object? postBody = sendRequest;

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

  /// Price a send without making it
  ///
  /// The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. `recipients` carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read `recipientCount` and `units` unless you need the rows themselves.  Requires the `notifications.send` scope. 
  ///
  /// Parameters:
  ///
  /// * [SendRequest] sendRequest (required):
  Future<QuoteSend200Response?> quoteSend(SendRequest sendRequest,) async {
    final response = await quoteSendWithHttpInfo(sendRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuoteSend200Response',) as QuoteSend200Response;
    
    }
    return null;
  }

  /// Send a notification
  ///
  /// Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the `notifications.send` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendRequest] sendRequest (required):
  ///
  /// * [String] idempotencyKey:
  ///   A repeat with the same key returns the first answer and sends nothing more.
  Future<Response> sendNotificationWithHttpInfo(SendRequest sendRequest, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notifications';

    // ignore: prefer_final_locals
    Object? postBody = sendRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

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

  /// Send a notification
  ///
  /// Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the `notifications.send` scope. 
  ///
  /// Parameters:
  ///
  /// * [SendRequest] sendRequest (required):
  ///
  /// * [String] idempotencyKey:
  ///   A repeat with the same key returns the first answer and sends nothing more.
  Future<SendNotification202Response?> sendNotification(SendRequest sendRequest, { String? idempotencyKey, }) async {
    final response = await sendNotificationWithHttpInfo(sendRequest,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendNotification202Response',) as SendNotification202Response;
    
    }
    return null;
  }
}
