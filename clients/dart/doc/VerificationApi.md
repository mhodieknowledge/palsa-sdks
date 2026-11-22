# palsa_api.api.VerificationApi

## Load the API package
```dart
import 'package:palsa_api/api.dart';
```

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkVerification**](VerificationApi.md#checkverification) | **POST** /v1/verifications/{id}/check | Check a code
[**startVerification**](VerificationApi.md#startverification) | **POST** /v1/verifications | Send a one-time code


# **checkVerification**
> CheckVerification200Response checkVerification(id, checkVerificationRequest)

Check a code

Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the `verifications.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = VerificationApi();
final id = id_example; // String | 
final checkVerificationRequest = CheckVerificationRequest(); // CheckVerificationRequest | 

try {
    final result = api_instance.checkVerification(id, checkVerificationRequest);
    print(result);
} catch (e) {
    print('Exception when calling VerificationApi->checkVerification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **checkVerificationRequest** | [**CheckVerificationRequest**](CheckVerificationRequest.md)|  | 

### Return type

[**CheckVerification200Response**](CheckVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startVerification**
> StartVerification201Response startVerification(verificationRequest)

Send a one-time code

Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the `verifications.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = VerificationApi();
final verificationRequest = VerificationRequest(); // VerificationRequest | 

try {
    final result = api_instance.startVerification(verificationRequest);
    print(result);
} catch (e) {
    print('Exception when calling VerificationApi->startVerification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verificationRequest** | [**VerificationRequest**](VerificationRequest.md)|  | 

### Return type

[**StartVerification201Response**](StartVerification201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

