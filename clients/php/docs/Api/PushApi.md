# Palsa\Api\PushApi

All URIs are relative to https://api.palsa.co.zw, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**addPushApp()**](PushApi.md#addPushApp) | **POST** /v1/push-apps | Connect an app&#39;s Firebase project |
| [**checkPushApp()**](PushApi.md#checkPushApp) | **POST** /v1/push-apps/{id}/check | Check a push app&#39;s access again |
| [**confirmPushAppOwnership()**](PushApi.md#confirmPushAppOwnership) | **POST** /v1/push-apps/{id}/ownership | Confirm the code, verifying a delegated app |
| [**getPushApp()**](PushApi.md#getPushApp) | **GET** /v1/push-apps/{id} | Get a push app |
| [**listPushApps()**](PushApi.md#listPushApps) | **GET** /v1/push-apps | List push apps |
| [**listPushTopics()**](PushApi.md#listPushTopics) | **GET** /v1/push-topics | List topics and how many devices each has |
| [**removePushApp()**](PushApi.md#removePushApp) | **DELETE** /v1/push-apps/{id} | Remove a push app |
| [**replacePushAppKey()**](PushApi.md#replacePushAppKey) | **PUT** /v1/push-apps/{id}/key | Replace a push app&#39;s service-account key |
| [**sendPushAppOwnershipCode()**](PushApi.md#sendPushAppOwnershipCode) | **POST** /v1/push-apps/{id}/ownership-code | Push a six-digit code to one of your devices |
| [**subscribeToPushTopic()**](PushApi.md#subscribeToPushTopic) | **POST** /v1/push-topics/{topic}/subscribe | Subscribe devices to a topic |
| [**unsubscribeFromPushTopic()**](PushApi.md#unsubscribeFromPushTopic) | **POST** /v1/push-topics/{topic}/unsubscribe | Unsubscribe devices from a topic |
| [**updatePushApp()**](PushApi.md#updatePushApp) | **PATCH** /v1/push-apps/{id} | Rename a push app or make it the default |


## `addPushApp()`

```php
addPushApp($push_app_create): \Palsa\Api\Model\InlineObject1
```

Connect an app's Firebase project

With `service_account`, the key is checked with Firebase (a validate-only message, which sends nothing) and the app is verified at once. With `delegated`, grant `grantTo` the Firebase Cloud Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices. Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$push_app_create = new \Palsa\Api\Model\PushAppCreate(); // \Palsa\Api\Model\PushAppCreate

try {
    $result = $apiInstance->addPushApp($push_app_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->addPushApp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **push_app_create** | [**\Palsa\Api\Model\PushAppCreate**](../Model/PushAppCreate.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `checkPushApp()`

```php
checkPushApp($id): \Palsa\Api\Model\InlineObject1
```

Check a push app's access again

Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->checkPushApp($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->checkPushApp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `confirmPushAppOwnership()`

```php
confirmPushAppOwnership($id, $confirm_push_app_ownership_request): \Palsa\Api\Model\InlineObject1
```

Confirm the code, verifying a delegated app

Five wrong codes and a new one must be sent. Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$confirm_push_app_ownership_request = new \Palsa\Api\Model\ConfirmPushAppOwnershipRequest(); // \Palsa\Api\Model\ConfirmPushAppOwnershipRequest

try {
    $result = $apiInstance->confirmPushAppOwnership($id, $confirm_push_app_ownership_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->confirmPushAppOwnership: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **confirm_push_app_ownership_request** | [**\Palsa\Api\Model\ConfirmPushAppOwnershipRequest**](../Model/ConfirmPushAppOwnershipRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPushApp()`

```php
getPushApp($id): \Palsa\Api\Model\InlineObject1
```

Get a push app

Requires the `push.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->getPushApp($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->getPushApp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listPushApps()`

```php
listPushApps(): \Palsa\Api\Model\ListPushApps200Response
```

List push apps

Requires the `push.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listPushApps();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->listPushApps: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Palsa\Api\Model\ListPushApps200Response**](../Model/ListPushApps200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listPushTopics()`

```php
listPushTopics(): \Palsa\Api\Model\ListPushTopics200Response
```

List topics and how many devices each has

Requires the `push.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listPushTopics();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->listPushTopics: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Palsa\Api\Model\ListPushTopics200Response**](../Model/ListPushTopics200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `removePushApp()`

```php
removePushApp($id): \Palsa\Api\Model\InlineObject
```

Remove a push app

Its key is deleted and its devices stop receiving push. Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->removePushApp($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->removePushApp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `replacePushAppKey()`

```php
replacePushAppKey($id, $replace_push_app_key_request): \Palsa\Api\Model\InlineObject1
```

Replace a push app's service-account key

For rotating a key. The new one must be for the same project. Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$replace_push_app_key_request = new \Palsa\Api\Model\ReplacePushAppKeyRequest(); // \Palsa\Api\Model\ReplacePushAppKeyRequest

try {
    $result = $apiInstance->replacePushAppKey($id, $replace_push_app_key_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->replacePushAppKey: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **replace_push_app_key_request** | [**\Palsa\Api\Model\ReplacePushAppKeyRequest**](../Model/ReplacePushAppKeyRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sendPushAppOwnershipCode()`

```php
sendPushAppOwnershipCode($id, $send_push_app_ownership_code_request): \Palsa\Api\Model\InlineObject
```

Push a six-digit code to one of your devices

Delegated apps only. The code arrives as a notification and as the `palsa_verification_code` data key, and lasts 15 minutes. Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$send_push_app_ownership_code_request = new \Palsa\Api\Model\SendPushAppOwnershipCodeRequest(); // \Palsa\Api\Model\SendPushAppOwnershipCodeRequest

try {
    $result = $apiInstance->sendPushAppOwnershipCode($id, $send_push_app_ownership_code_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->sendPushAppOwnershipCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **send_push_app_ownership_code_request** | [**\Palsa\Api\Model\SendPushAppOwnershipCodeRequest**](../Model/SendPushAppOwnershipCodeRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `subscribeToPushTopic()`

```php
subscribeToPushTopic($topic, $device_targets): \Palsa\Api\Model\InlineObject2
```

Subscribe devices to a topic

Through each device's own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through `previousToken` is subscribed again automatically. Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$topic = 'topic_example'; // string
$device_targets = new \Palsa\Api\Model\DeviceTargets(); // \Palsa\Api\Model\DeviceTargets

try {
    $result = $apiInstance->subscribeToPushTopic($topic, $device_targets);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->subscribeToPushTopic: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **topic** | **string**|  | |
| **device_targets** | [**\Palsa\Api\Model\DeviceTargets**](../Model/DeviceTargets.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject2**](../Model/InlineObject2.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `unsubscribeFromPushTopic()`

```php
unsubscribeFromPushTopic($topic, $device_targets): \Palsa\Api\Model\InlineObject2
```

Unsubscribe devices from a topic

Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$topic = 'topic_example'; // string
$device_targets = new \Palsa\Api\Model\DeviceTargets(); // \Palsa\Api\Model\DeviceTargets

try {
    $result = $apiInstance->unsubscribeFromPushTopic($topic, $device_targets);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->unsubscribeFromPushTopic: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **topic** | **string**|  | |
| **device_targets** | [**\Palsa\Api\Model\DeviceTargets**](../Model/DeviceTargets.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject2**](../Model/InlineObject2.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePushApp()`

```php
updatePushApp($id, $update_push_app_request): \Palsa\Api\Model\InlineObject1
```

Rename a push app or make it the default

Requires the `push.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\PushApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$update_push_app_request = new \Palsa\Api\Model\UpdatePushAppRequest(); // \Palsa\Api\Model\UpdatePushAppRequest

try {
    $result = $apiInstance->updatePushApp($id, $update_push_app_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PushApi->updatePushApp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **update_push_app_request** | [**\Palsa\Api\Model\UpdatePushAppRequest**](../Model/UpdatePushAppRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
