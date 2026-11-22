//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;


class ContactsApi {
  ContactsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Save a contact
  ///
  /// Give an email address or a phone number, or both. `state` is `pending` unless you can show the person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactCreate] contactCreate (required):
  Future<Response> createContactWithHttpInfo(ContactCreate contactCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts';

    // ignore: prefer_final_locals
    Object? postBody = contactCreate;

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

  /// Save a contact
  ///
  /// Give an email address or a phone number, or both. `state` is `pending` unless you can show the person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [ContactCreate] contactCreate (required):
  Future<CreateContact201Response?> createContact(ContactCreate contactCreate,) async {
    final response = await createContactWithHttpInfo(contactCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateContact201Response',) as CreateContact201Response;
    
    }
    return null;
  }

  /// Erase a contact
  ///
  /// Requires the `contacts.write` scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteContactWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/{id}'
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

  /// Erase a contact
  ///
  /// Requires the `contacts.write` scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DeleteContact200Response?> deleteContact(String id,) async {
    final response = await deleteContactWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteContact200Response',) as DeleteContact200Response;
    
    }
    return null;
  }

  /// List contacts
  ///
  /// Newest first. Requires the `contacts.read` scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> listContactsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List contacts
  ///
  /// Newest first. Requires the `contacts.read` scope.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<ListContacts200Response?> listContacts({ int? limit, }) async {
    final response = await listContactsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListContacts200Response',) as ListContacts200Response;
    
    }
    return null;
  }

  /// Register a device for push
  ///
  /// Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the `contacts.write` scope. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeviceRegister] deviceRegister (required):
  Future<Response> registerDeviceWithHttpInfo(DeviceRegister deviceRegister,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/devices';

    // ignore: prefer_final_locals
    Object? postBody = deviceRegister;

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

  /// Register a device for push
  ///
  /// Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the `contacts.write` scope. 
  ///
  /// Parameters:
  ///
  /// * [DeviceRegister] deviceRegister (required):
  Future<RegisterDevice201Response?> registerDevice(DeviceRegister deviceRegister,) async {
    final response = await registerDeviceWithHttpInfo(deviceRegister,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterDevice201Response',) as RegisterDevice201Response;
    
    }
    return null;
  }
}
