# palsa_api.api.PushApi

## Load the API package
```dart
import 'package:palsa_api/api.dart';
```

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPushApp**](PushApi.md#addpushapp) | **POST** /v1/push-apps | Connect an app's Firebase project
[**checkPushApp**](PushApi.md#checkpushapp) | **POST** /v1/push-apps/{id}/check | Check a push app's access again
[**confirmPushAppOwnership**](PushApi.md#confirmpushappownership) | **POST** /v1/push-apps/{id}/ownership | Confirm the code, verifying a delegated app
[**getPushApp**](PushApi.md#getpushapp) | **GET** /v1/push-apps/{id} | Get a push app
[**listPushApps**](PushApi.md#listpushapps) | **GET** /v1/push-apps | List push apps
[**listPushTopics**](PushApi.md#listpushtopics) | **GET** /v1/push-topics | List topics and how many devices each has
[**removePushApp**](PushApi.md#removepushapp) | **DELETE** /v1/push-apps/{id} | Remove a push app
[**replacePushAppKey**](PushApi.md#replacepushappkey) | **PUT** /v1/push-apps/{id}/key | Replace a push app's service-account key
[**sendPushAppOwnershipCode**](PushApi.md#sendpushappownershipcode) | **POST** /v1/push-apps/{id}/ownership-code | Push a six-digit code to one of your devices
[**subscribeToPushTopic**](PushApi.md#subscribetopushtopic) | **POST** /v1/push-topics/{topic}/subscribe | Subscribe devices to a topic
[**unsubscribeFromPushTopic**](PushApi.md#unsubscribefrompushtopic) | **POST** /v1/push-topics/{topic}/unsubscribe | Unsubscribe devices from a topic
[**updatePushApp**](PushApi.md#updatepushapp) | **PATCH** /v1/push-apps/{id} | Rename a push app or make it the default


# **addPushApp**
> InlineObject1 addPushApp(pushAppCreate)

Connect an app's Firebase project

With `service_account`, the key is checked with Firebase (a validate-only message, which sends nothing) and the app is verified at once. With `delegated`, grant `grantTo` the Firebase Cloud Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices. Requires the `push.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final pushAppCreate = PushAppCreate(); // PushAppCreate | 

try {
    final result = api_instance.addPushApp(pushAppCreate);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->addPushApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pushAppCreate** | [**PushAppCreate**](PushAppCreate.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPushApp**
> InlineObject1 checkPushApp(id)

Check a push app's access again

Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 

try {
    final result = api_instance.checkPushApp(id);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->checkPushApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmPushAppOwnership**
> InlineObject1 confirmPushAppOwnership(id, confirmPushAppOwnershipRequest)

Confirm the code, verifying a delegated app

Five wrong codes and a new one must be sent. Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 
final confirmPushAppOwnershipRequest = ConfirmPushAppOwnershipRequest(); // ConfirmPushAppOwnershipRequest | 

try {
    final result = api_instance.confirmPushAppOwnership(id, confirmPushAppOwnershipRequest);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->confirmPushAppOwnership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **confirmPushAppOwnershipRequest** | [**ConfirmPushAppOwnershipRequest**](ConfirmPushAppOwnershipRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPushApp**
> InlineObject1 getPushApp(id)

Get a push app

Requires the `push.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 

try {
    final result = api_instance.getPushApp(id);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->getPushApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPushApps**
> ListPushApps200Response listPushApps()

List push apps

Requires the `push.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();

try {
    final result = api_instance.listPushApps();
    print(result);
} catch (e) {
    print('Exception when calling PushApi->listPushApps: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPushApps200Response**](ListPushApps200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPushTopics**
> ListPushTopics200Response listPushTopics()

List topics and how many devices each has

Requires the `push.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();

try {
    final result = api_instance.listPushTopics();
    print(result);
} catch (e) {
    print('Exception when calling PushApi->listPushTopics: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPushTopics200Response**](ListPushTopics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removePushApp**
> InlineObject removePushApp(id)

Remove a push app

Its key is deleted and its devices stop receiving push. Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 

try {
    final result = api_instance.removePushApp(id);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->removePushApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replacePushAppKey**
> InlineObject1 replacePushAppKey(id, replacePushAppKeyRequest)

Replace a push app's service-account key

For rotating a key. The new one must be for the same project. Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 
final replacePushAppKeyRequest = ReplacePushAppKeyRequest(); // ReplacePushAppKeyRequest | 

try {
    final result = api_instance.replacePushAppKey(id, replacePushAppKeyRequest);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->replacePushAppKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **replacePushAppKeyRequest** | [**ReplacePushAppKeyRequest**](ReplacePushAppKeyRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPushAppOwnershipCode**
> InlineObject sendPushAppOwnershipCode(id, sendPushAppOwnershipCodeRequest)

Push a six-digit code to one of your devices

Delegated apps only. The code arrives as a notification and as the `palsa_verification_code` data key, and lasts 15 minutes. Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 
final sendPushAppOwnershipCodeRequest = SendPushAppOwnershipCodeRequest(); // SendPushAppOwnershipCodeRequest | 

try {
    final result = api_instance.sendPushAppOwnershipCode(id, sendPushAppOwnershipCodeRequest);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->sendPushAppOwnershipCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **sendPushAppOwnershipCodeRequest** | [**SendPushAppOwnershipCodeRequest**](SendPushAppOwnershipCodeRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribeToPushTopic**
> InlineObject2 subscribeToPushTopic(topic, deviceTargets)

Subscribe devices to a topic

Through each device's own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through `previousToken` is subscribed again automatically. Requires the `push.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final topic = topic_example; // String | 
final deviceTargets = DeviceTargets(); // DeviceTargets | 

try {
    final result = api_instance.subscribeToPushTopic(topic, deviceTargets);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->subscribeToPushTopic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **String**|  | 
 **deviceTargets** | [**DeviceTargets**](DeviceTargets.md)|  | 

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribeFromPushTopic**
> InlineObject2 unsubscribeFromPushTopic(topic, deviceTargets)

Unsubscribe devices from a topic

Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final topic = topic_example; // String | 
final deviceTargets = DeviceTargets(); // DeviceTargets | 

try {
    final result = api_instance.unsubscribeFromPushTopic(topic, deviceTargets);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->unsubscribeFromPushTopic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **String**|  | 
 **deviceTargets** | [**DeviceTargets**](DeviceTargets.md)|  | 

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePushApp**
> InlineObject1 updatePushApp(id, updatePushAppRequest)

Rename a push app or make it the default

Requires the `push.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PushApi();
final id = id_example; // String | 
final updatePushAppRequest = UpdatePushAppRequest(); // UpdatePushAppRequest | 

try {
    final result = api_instance.updatePushApp(id, updatePushAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling PushApi->updatePushApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updatePushAppRequest** | [**UpdatePushAppRequest**](UpdatePushAppRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

