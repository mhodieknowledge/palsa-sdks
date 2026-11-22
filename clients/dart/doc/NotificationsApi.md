# palsa_api.api.NotificationsApi

## Load the API package
```dart
import 'package:palsa_api/api.dart';
```

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMcp**](NotificationsApi.md#describemcp) | **GET** /v1/mcp | What the MCP endpoint is
[**getNotification**](NotificationsApi.md#getnotification) | **GET** /v1/notifications/{id} | One send
[**listNotifications**](NotificationsApi.md#listnotifications) | **GET** /v1/notifications | List sends
[**quoteSend**](NotificationsApi.md#quotesend) | **POST** /v1/quotes | Price a send without making it
[**sendNotification**](NotificationsApi.md#sendnotification) | **POST** /v1/notifications | Send a notification


# **describeMcp**
> DescribeMcp200Response describeMcp()

What the MCP endpoint is

Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();

try {
    final result = api_instance.describeMcp();
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->describeMcp: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DescribeMcp200Response**](DescribeMcp200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotification**
> GetNotification200Response getNotification(id)

One send

Requires the `notifications.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getNotification(id);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->getNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetNotification200Response**](GetNotification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNotifications**
> ListNotifications200Response listNotifications(status, limit, cursor)

List sends

Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the `notifications.read` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();
final status = status_example; // String | Only sends in this state.
final limit = 56; // int | 
final cursor = cursor_example; // String | The `nextCursor` from a previous page.

try {
    final result = api_instance.listNotifications(status, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->listNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Only sends in this state. | [optional] 
 **limit** | **int**|  | [optional] [default to 25]
 **cursor** | **String**| The `nextCursor` from a previous page. | [optional] 

### Return type

[**ListNotifications200Response**](ListNotifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quoteSend**
> QuoteSend200Response quoteSend(sendRequest)

Price a send without making it

The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. `recipients` carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read `recipientCount` and `units` unless you need the rows themselves.  Requires the `notifications.send` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();
final sendRequest = SendRequest(); // SendRequest | 

try {
    final result = api_instance.quoteSend(sendRequest);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->quoteSend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendRequest** | [**SendRequest**](SendRequest.md)|  | 

### Return type

[**QuoteSend200Response**](QuoteSend200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendNotification**
> SendNotification202Response sendNotification(sendRequest, idempotencyKey)

Send a notification

Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the `notifications.send` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();
final sendRequest = SendRequest(); // SendRequest | 
final idempotencyKey = idempotencyKey_example; // String | A repeat with the same key returns the first answer and sends nothing more.

try {
    final result = api_instance.sendNotification(sendRequest, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->sendNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendRequest** | [**SendRequest**](SendRequest.md)|  | 
 **idempotencyKey** | **String**| A repeat with the same key returns the first answer and sends nothing more. | [optional] 

### Return type

[**SendNotification202Response**](SendNotification202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

