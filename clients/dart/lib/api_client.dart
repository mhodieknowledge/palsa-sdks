//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.palsa.co.zw', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return await Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return await Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AddSendingDomain201Response':
          return AddSendingDomain201Response.fromJson(value);
        case 'AddSendingDomainRequest':
          return AddSendingDomainRequest.fromJson(value);
        case 'AndroidPushOptions':
          return AndroidPushOptions.fromJson(value);
        case 'Balance':
          return Balance.fromJson(value);
        case 'Blocker':
          return Blocker.fromJson(value);
        case 'Channel':
          return ChannelTypeTransformer().decode(value);
        case 'CheckVerification200Response':
          return CheckVerification200Response.fromJson(value);
        case 'CheckVerificationRequest':
          return CheckVerificationRequest.fromJson(value);
        case 'ConfirmPushAppOwnershipRequest':
          return ConfirmPushAppOwnershipRequest.fromJson(value);
        case 'Contact':
          return Contact.fromJson(value);
        case 'ContactCreate':
          return ContactCreate.fromJson(value);
        case 'CreateContact201Response':
          return CreateContact201Response.fromJson(value);
        case 'CreateContact201ResponseData':
          return CreateContact201ResponseData.fromJson(value);
        case 'DeleteContact200Response':
          return DeleteContact200Response.fromJson(value);
        case 'DeleteContact200ResponseData':
          return DeleteContact200ResponseData.fromJson(value);
        case 'DescribeMcp200Response':
          return DescribeMcp200Response.fromJson(value);
        case 'Device':
          return Device.fromJson(value);
        case 'DeviceRegister':
          return DeviceRegister.fromJson(value);
        case 'DeviceRegistered':
          return DeviceRegistered.fromJson(value);
        case 'DeviceTargets':
          return DeviceTargets.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorEnvelope':
          return ErrorEnvelope.fromJson(value);
        case 'GetBalances200Response':
          return GetBalances200Response.fromJson(value);
        case 'GetBalances200ResponseData':
          return GetBalances200ResponseData.fromJson(value);
        case 'GetNotification200Response':
          return GetNotification200Response.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'InlineObject2':
          return InlineObject2.fromJson(value);
        case 'InlineObject2Data':
          return InlineObject2Data.fromJson(value);
        case 'InlineObject2DataFailedInner':
          return InlineObject2DataFailedInner.fromJson(value);
        case 'IosPushOptions':
          return IosPushOptions.fromJson(value);
        case 'ListContacts200Response':
          return ListContacts200Response.fromJson(value);
        case 'ListContacts200ResponseData':
          return ListContacts200ResponseData.fromJson(value);
        case 'ListDevices200Response':
          return ListDevices200Response.fromJson(value);
        case 'ListDevices200ResponseData':
          return ListDevices200ResponseData.fromJson(value);
        case 'ListNotifications200Response':
          return ListNotifications200Response.fromJson(value);
        case 'ListNotifications200ResponseData':
          return ListNotifications200ResponseData.fromJson(value);
        case 'ListNotifications200ResponseMeta':
          return ListNotifications200ResponseMeta.fromJson(value);
        case 'ListPushApps200Response':
          return ListPushApps200Response.fromJson(value);
        case 'ListPushApps200ResponseData':
          return ListPushApps200ResponseData.fromJson(value);
        case 'ListPushTopics200Response':
          return ListPushTopics200Response.fromJson(value);
        case 'ListPushTopics200ResponseData':
          return ListPushTopics200ResponseData.fromJson(value);
        case 'ListPushTopics200ResponseDataTopicsInner':
          return ListPushTopics200ResponseDataTopicsInner.fromJson(value);
        case 'ListSendingDomains200Response':
          return ListSendingDomains200Response.fromJson(value);
        case 'ListSendingDomains200ResponseData':
          return ListSendingDomains200ResponseData.fromJson(value);
        case 'Notification':
          return Notification.fromJson(value);
        case 'NotificationSummary':
          return NotificationSummary.fromJson(value);
        case 'PushApp':
          return PushApp.fromJson(value);
        case 'PushAppCreate':
          return PushAppCreate.fromJson(value);
        case 'Quote':
          return Quote.fromJson(value);
        case 'QuoteHeldUntil':
          return QuoteHeldUntil.fromJson(value);
        case 'QuoteSend200Response':
          return QuoteSend200Response.fromJson(value);
        case 'QuoteSms':
          return QuoteSms.fromJson(value);
        case 'QuoteVariants':
          return QuoteVariants.fromJson(value);
        case 'QuotedRecipient':
          return QuotedRecipient.fromJson(value);
        case 'Recipients':
          return Recipients.fromJson(value);
        case 'RegisterDevice201Response':
          return RegisterDevice201Response.fromJson(value);
        case 'RemoveSendingDomain200Response':
          return RemoveSendingDomain200Response.fromJson(value);
        case 'RemoveSendingDomain200ResponseData':
          return RemoveSendingDomain200ResponseData.fromJson(value);
        case 'ReplacePushAppKeyRequest':
          return ReplacePushAppKeyRequest.fromJson(value);
        case 'SendNotification202Response':
          return SendNotification202Response.fromJson(value);
        case 'SendPushAppOwnershipCodeRequest':
          return SendPushAppOwnershipCodeRequest.fromJson(value);
        case 'SendRequest':
          return SendRequest.fromJson(value);
        case 'SendResult':
          return SendResult.fromJson(value);
        case 'SendingDomain':
          return SendingDomain.fromJson(value);
        case 'SendingDomainRecordsInner':
          return SendingDomainRecordsInner.fromJson(value);
        case 'SkippedRecipient':
          return SkippedRecipient.fromJson(value);
        case 'StartVerification201Response':
          return StartVerification201Response.fromJson(value);
        case 'UnregisterDeviceRequest':
          return UnregisterDeviceRequest.fromJson(value);
        case 'UpdatePushAppRequest':
          return UpdatePushAppRequest.fromJson(value);
        case 'Verification':
          return Verification.fromJson(value);
        case 'VerificationCheck':
          return VerificationCheck.fromJson(value);
        case 'VerificationRequest':
          return VerificationRequest.fromJson(value);
        case 'WebPushOptions':
          return WebPushOptions.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
