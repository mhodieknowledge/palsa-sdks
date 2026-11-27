# palsa_api.api.SendingDomainsApi

## Load the API package
```dart
import 'package:palsa_api/api.dart';
```

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSendingDomain**](SendingDomainsApi.md#addsendingdomain) | **POST** /v1/sending-domains | Add a sending domain
[**checkSendingDomain**](SendingDomainsApi.md#checksendingdomain) | **POST** /v1/sending-domains/{id}/check | Check a sending domain now
[**getSendingDomain**](SendingDomainsApi.md#getsendingdomain) | **GET** /v1/sending-domains/{id} | Get a sending domain
[**listSendingDomains**](SendingDomainsApi.md#listsendingdomains) | **GET** /v1/sending-domains | List sending domains
[**removeSendingDomain**](SendingDomainsApi.md#removesendingdomain) | **DELETE** /v1/sending-domains/{id} | Remove a sending domain


# **addSendingDomain**
> AddSendingDomain201Response addSendingDomain(addSendingDomainRequest)

Add a sending domain

Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`. Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another workspace holds is refused. Requires the `domains.write` scope.  Until email sending is live the domain is stored as `awaiting_provider` with no records; they appear as soon as it is. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDomainsApi();
final addSendingDomainRequest = AddSendingDomainRequest(); // AddSendingDomainRequest | 

try {
    final result = api_instance.addSendingDomain(addSendingDomainRequest);
    print(result);
} catch (e) {
    print('Exception when calling SendingDomainsApi->addSendingDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addSendingDomainRequest** | [**AddSendingDomainRequest**](AddSendingDomainRequest.md)|  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkSendingDomain**
> AddSendingDomain201Response checkSendingDomain(id)

Check a sending domain now

Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the `domains.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDomainsApi();
final id = id_example; // String | 

try {
    final result = api_instance.checkSendingDomain(id);
    print(result);
} catch (e) {
    print('Exception when calling SendingDomainsApi->checkSendingDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSendingDomain**
> AddSendingDomain201Response getSendingDomain(id)

Get a sending domain

Requires the `domains.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDomainsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getSendingDomain(id);
    print(result);
} catch (e) {
    print('Exception when calling SendingDomainsApi->getSendingDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSendingDomains**
> ListSendingDomains200Response listSendingDomains()

List sending domains

Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the `domains.read` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDomainsApi();

try {
    final result = api_instance.listSendingDomains();
    print(result);
} catch (e) {
    print('Exception when calling SendingDomainsApi->listSendingDomains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListSendingDomains200Response**](ListSendingDomains200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSendingDomain**
> RemoveSendingDomain200Response removeSendingDomain(id)

Remove a sending domain

Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDomainsApi();
final id = id_example; // String | 

try {
    final result = api_instance.removeSendingDomain(id);
    print(result);
} catch (e) {
    print('Exception when calling SendingDomainsApi->removeSendingDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RemoveSendingDomain200Response**](RemoveSendingDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

