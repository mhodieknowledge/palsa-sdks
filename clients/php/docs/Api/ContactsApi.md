# Palsa\Api\ContactsApi

All URIs are relative to https://palsa.mhodieknowledge.workers.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createContact()**](ContactsApi.md#createContact) | **POST** /v1/contacts | Save a contact |
| [**deleteContact()**](ContactsApi.md#deleteContact) | **DELETE** /v1/contacts/{id} | Erase a contact |
| [**listContacts()**](ContactsApi.md#listContacts) | **GET** /v1/contacts | List contacts |
| [**registerDevice()**](ContactsApi.md#registerDevice) | **POST** /v1/devices | Register a device for push |


## `createContact()`

```php
createContact($contact_create): \Palsa\Api\Model\CreateContact201Response
```

Save a contact

Give an email address or a phone number, or both. `state` is `pending` unless you can show the person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\ContactsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$contact_create = new \Palsa\Api\Model\ContactCreate(); // \Palsa\Api\Model\ContactCreate

try {
    $result = $apiInstance->createContact($contact_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContactsApi->createContact: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **contact_create** | [**\Palsa\Api\Model\ContactCreate**](../Model/ContactCreate.md)|  | |

### Return type

[**\Palsa\Api\Model\CreateContact201Response**](../Model/CreateContact201Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteContact()`

```php
deleteContact($id): \Palsa\Api\Model\DeleteContact200Response
```

Erase a contact

Requires the `contacts.write` scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\ContactsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->deleteContact($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContactsApi->deleteContact: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\DeleteContact200Response**](../Model/DeleteContact200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listContacts()`

```php
listContacts($limit): \Palsa\Api\Model\ListContacts200Response
```

List contacts

Newest first. Requires the `contacts.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\ContactsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 50; // int

try {
    $result = $apiInstance->listContacts($limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContactsApi->listContacts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**|  | [optional] [default to 50] |

### Return type

[**\Palsa\Api\Model\ListContacts200Response**](../Model/ListContacts200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `registerDevice()`

```php
registerDevice($device_register): \Palsa\Api\Model\RegisterDevice201Response
```

Register a device for push

Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the `contacts.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\ContactsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$device_register = new \Palsa\Api\Model\DeviceRegister(); // \Palsa\Api\Model\DeviceRegister

try {
    $result = $apiInstance->registerDevice($device_register);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContactsApi->registerDevice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **device_register** | [**\Palsa\Api\Model\DeviceRegister**](../Model/DeviceRegister.md)|  | |

### Return type

[**\Palsa\Api\Model\RegisterDevice201Response**](../Model/RegisterDevice201Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
