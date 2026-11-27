# palsa_api.api.ContactsApi

## Load the API package
```dart
import 'package:palsa_api/api.dart';
```

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](ContactsApi.md#createcontact) | **POST** /v1/contacts | Save a contact
[**deleteContact**](ContactsApi.md#deletecontact) | **DELETE** /v1/contacts/{id} | Erase a contact
[**listContacts**](ContactsApi.md#listcontacts) | **GET** /v1/contacts | List contacts
[**listDevices**](ContactsApi.md#listdevices) | **GET** /v1/devices | List registered devices
[**registerDevice**](ContactsApi.md#registerdevice) | **POST** /v1/devices | Register a device for push
[**unregisterDevice**](ContactsApi.md#unregisterdevice) | **POST** /v1/devices/unregister | Stop sending to a device


# **createContact**
> CreateContact201Response createContact(contactCreate)

Save a contact

Give an email address or a phone number, or both. `state` is `pending` unless you can show the person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final contactCreate = ContactCreate(); // ContactCreate | 

try {
    final result = api_instance.createContact(contactCreate);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->createContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactCreate** | [**ContactCreate**](ContactCreate.md)|  | 

### Return type

[**CreateContact201Response**](CreateContact201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
> DeleteContact200Response deleteContact(id)

Erase a contact

Requires the `contacts.write` scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 

try {
    final result = api_instance.deleteContact(id);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->deleteContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DeleteContact200Response**](DeleteContact200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContacts**
> ListContacts200Response listContacts(limit)

List contacts

Newest first. Requires the `contacts.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final limit = 56; // int | 

try {
    final result = api_instance.listContacts(limit);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->listContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**ListContacts200Response**](ListContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevices**
> ListDevices200Response listDevices(contactId)

List registered devices

The newest 200, optionally for one contact. Tokens are never returned. Requires the `contacts.read` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final contactId = contactId_example; // String | 

try {
    final result = api_instance.listDevices(contactId);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->listDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **String**|  | [optional] 

### Return type

[**ListDevices200Response**](ListDevices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerDevice**
> RegisterDevice201Response registerDevice(deviceRegister)

Register a device for push

Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the `contacts.write` scope. 

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final deviceRegister = DeviceRegister(); // DeviceRegister | 

try {
    final result = api_instance.registerDevice(deviceRegister);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->registerDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceRegister** | [**DeviceRegister**](DeviceRegister.md)|  | 

### Return type

[**RegisterDevice201Response**](RegisterDevice201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregisterDevice**
> InlineObject unregisterDevice(unregisterDeviceRequest)

Stop sending to a device

For sign-out, or when the person turns notifications off. The device leaves its topics. Requires the `contacts.write` scope.

### Example
```dart
import 'package:palsa_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final unregisterDeviceRequest = UnregisterDeviceRequest(); // UnregisterDeviceRequest | 

try {
    final result = api_instance.unregisterDevice(unregisterDeviceRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->unregisterDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unregisterDeviceRequest** | [**UnregisterDeviceRequest**](UnregisterDeviceRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

