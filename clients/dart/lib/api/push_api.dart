//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;


class PushApi {
  PushApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Connect an app's Firebase project
  ///
  /// With `service_account`, the key is checked with Firebase (a validate-only message, which sends nothing) and the app is verified at once. With `delegated`, grant `grantTo` the Firebase Cloud Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices. Requires the `push.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PushAppCreate] pushAppCreate (required):
  Future<Response> addPushAppWithHttpInfo(PushAppCreate pushAppCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps';

    // ignore: prefer_final_locals
    Object? postBody = pushAppCreate;

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

  /// Connect an app's Firebase project
  ///
  /// With `service_account`, the key is checked with Firebase (a validate-only message, which sends nothing) and the app is verified at once. With `delegated`, grant `grantTo` the Firebase Cloud Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices. Requires the `push.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [PushAppCreate] pushAppCreate (required):
  Future<InlineObject1?> addPushApp(PushAppCreate pushAppCreate,) async {
    final response = await addPushAppWithHttpInfo(pushAppCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject1',) as InlineObject1;
    
    }
    return null;
  }

  /// Check a push app's access again
  ///
  /// Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> checkPushAppWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}/check'
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

  /// Check a push app's access again
  ///
  /// Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InlineObject1?> checkPushApp(String id,) async {
    final response = await checkPushAppWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject1',) as InlineObject1;
    
    }
    return null;
  }

  /// Confirm the code, verifying a delegated app
  ///
  /// Five wrong codes and a new one must be sent. Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ConfirmPushAppOwnershipRequest] confirmPushAppOwnershipRequest (required):
  Future<Response> confirmPushAppOwnershipWithHttpInfo(String id, ConfirmPushAppOwnershipRequest confirmPushAppOwnershipRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}/ownership'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = confirmPushAppOwnershipRequest;

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

  /// Confirm the code, verifying a delegated app
  ///
  /// Five wrong codes and a new one must be sent. Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ConfirmPushAppOwnershipRequest] confirmPushAppOwnershipRequest (required):
  Future<InlineObject1?> confirmPushAppOwnership(String id, ConfirmPushAppOwnershipRequest confirmPushAppOwnershipRequest,) async {
    final response = await confirmPushAppOwnershipWithHttpInfo(id, confirmPushAppOwnershipRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject1',) as InlineObject1;
    
    }
    return null;
  }

  /// Get a push app
  ///
  /// Requires the `push.read` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getPushAppWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}'
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

  /// Get a push app
  ///
  /// Requires the `push.read` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InlineObject1?> getPushApp(String id,) async {
    final response = await getPushAppWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject1',) as InlineObject1;
    
    }
    return null;
  }

  /// List push apps
  ///
  /// Requires the `push.read` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPushAppsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps';

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

  /// List push apps
  ///
  /// Requires the `push.read` scope.
  Future<ListPushApps200Response?> listPushApps() async {
    final response = await listPushAppsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPushApps200Response',) as ListPushApps200Response;
    
    }
    return null;
  }

  /// List topics and how many devices each has
  ///
  /// Requires the `push.read` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPushTopicsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-topics';

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

  /// List topics and how many devices each has
  ///
  /// Requires the `push.read` scope.
  Future<ListPushTopics200Response?> listPushTopics() async {
    final response = await listPushTopicsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPushTopics200Response',) as ListPushTopics200Response;
    
    }
    return null;
  }

  /// Remove a push app
  ///
  /// Its key is deleted and its devices stop receiving push. Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> removePushAppWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}'
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

  /// Remove a push app
  ///
  /// Its key is deleted and its devices stop receiving push. Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InlineObject?> removePushApp(String id,) async {
    final response = await removePushAppWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject',) as InlineObject;
    
    }
    return null;
  }

  /// Replace a push app's service-account key
  ///
  /// For rotating a key. The new one must be for the same project. Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ReplacePushAppKeyRequest] replacePushAppKeyRequest (required):
  Future<Response> replacePushAppKeyWithHttpInfo(String id, ReplacePushAppKeyRequest replacePushAppKeyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}/key'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = replacePushAppKeyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Replace a push app's service-account key
  ///
  /// For rotating a key. The new one must be for the same project. Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ReplacePushAppKeyRequest] replacePushAppKeyRequest (required):
  Future<InlineObject1?> replacePushAppKey(String id, ReplacePushAppKeyRequest replacePushAppKeyRequest,) async {
    final response = await replacePushAppKeyWithHttpInfo(id, replacePushAppKeyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject1',) as InlineObject1;
    
    }
    return null;
  }

  /// Push a six-digit code to one of your devices
  ///
  /// Delegated apps only. The code arrives as a notification and as the `palsa_verification_code` data key, and lasts 15 minutes. Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SendPushAppOwnershipCodeRequest] sendPushAppOwnershipCodeRequest (required):
  Future<Response> sendPushAppOwnershipCodeWithHttpInfo(String id, SendPushAppOwnershipCodeRequest sendPushAppOwnershipCodeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}/ownership-code'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = sendPushAppOwnershipCodeRequest;

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

  /// Push a six-digit code to one of your devices
  ///
  /// Delegated apps only. The code arrives as a notification and as the `palsa_verification_code` data key, and lasts 15 minutes. Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SendPushAppOwnershipCodeRequest] sendPushAppOwnershipCodeRequest (required):
  Future<InlineObject?> sendPushAppOwnershipCode(String id, SendPushAppOwnershipCodeRequest sendPushAppOwnershipCodeRequest,) async {
    final response = await sendPushAppOwnershipCodeWithHttpInfo(id, sendPushAppOwnershipCodeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject',) as InlineObject;
    
    }
    return null;
  }

  /// Subscribe devices to a topic
  ///
  /// Through each device's own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through `previousToken` is subscribed again automatically. Requires the `push.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///
  /// * [DeviceTargets] deviceTargets (required):
  Future<Response> subscribeToPushTopicWithHttpInfo(String topic, DeviceTargets deviceTargets,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-topics/{topic}/subscribe'
      .replaceAll('{topic}', topic);

    // ignore: prefer_final_locals
    Object? postBody = deviceTargets;

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

  /// Subscribe devices to a topic
  ///
  /// Through each device's own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through `previousToken` is subscribed again automatically. Requires the `push.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///
  /// * [DeviceTargets] deviceTargets (required):
  Future<InlineObject2?> subscribeToPushTopic(String topic, DeviceTargets deviceTargets,) async {
    final response = await subscribeToPushTopicWithHttpInfo(topic, deviceTargets,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject2',) as InlineObject2;
    
    }
    return null;
  }

  /// Unsubscribe devices from a topic
  ///
  /// Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///
  /// * [DeviceTargets] deviceTargets (required):
  Future<Response> unsubscribeFromPushTopicWithHttpInfo(String topic, DeviceTargets deviceTargets,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-topics/{topic}/unsubscribe'
      .replaceAll('{topic}', topic);

    // ignore: prefer_final_locals
    Object? postBody = deviceTargets;

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

  /// Unsubscribe devices from a topic
  ///
  /// Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///
  /// * [DeviceTargets] deviceTargets (required):
  Future<InlineObject2?> unsubscribeFromPushTopic(String topic, DeviceTargets deviceTargets,) async {
    final response = await unsubscribeFromPushTopicWithHttpInfo(topic, deviceTargets,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject2',) as InlineObject2;
    
    }
    return null;
  }

  /// Rename a push app or make it the default
  ///
  /// Requires the `push.write` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdatePushAppRequest] updatePushAppRequest (required):
  Future<Response> updatePushAppWithHttpInfo(String id, UpdatePushAppRequest updatePushAppRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/push-apps/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updatePushAppRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Rename a push app or make it the default
  ///
  /// Requires the `push.write` scope.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdatePushAppRequest] updatePushAppRequest (required):
  Future<InlineObject1?> updatePushApp(String id, UpdatePushAppRequest updatePushAppRequest,) async {
    final response = await updatePushAppWithHttpInfo(id, updatePushAppRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineObject1',) as InlineObject1;
    
    }
    return null;
  }
}
