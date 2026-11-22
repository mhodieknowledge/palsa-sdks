# palsa_api.api.BillingApi

## Load the API package
```dart
import 'package:palsa_api/api.dart';
```

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBalances**](BillingApi.md#getbalances) | **GET** /v1/balances | Prepaid balances


# **getBalances**
> GetBalances200Response getBalances()

Prepaid balances

What is available now, what is already promised to sends in flight, and what has been used, per channel. Requires the `analytics.read` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BillingApi();

try {
    final result = api_instance.getBalances();
    print(result);
} catch (e) {
    print('Exception when calling BillingApi->getBalances: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetBalances200Response**](GetBalances200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

