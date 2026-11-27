# Palsa\Api\NotificationsApi

All URIs are relative to https://api.palsa.co.zw, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**describeMcp()**](NotificationsApi.md#describeMcp) | **GET** /v1/mcp | What the MCP endpoint is |
| [**getNotification()**](NotificationsApi.md#getNotification) | **GET** /v1/notifications/{id} | One send |
| [**listNotifications()**](NotificationsApi.md#listNotifications) | **GET** /v1/notifications | List sends |
| [**quoteSend()**](NotificationsApi.md#quoteSend) | **POST** /v1/quotes | Price a send without making it |
| [**sendNotification()**](NotificationsApi.md#sendNotification) | **POST** /v1/notifications | Send a notification |


## `describeMcp()`

```php
describeMcp(): \Palsa\Api\Model\DescribeMcp200Response
```

What the MCP endpoint is

Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  Requires the `notifications.read` scope.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\NotificationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->describeMcp();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NotificationsApi->describeMcp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Palsa\Api\Model\DescribeMcp200Response**](../Model/DescribeMcp200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getNotification()`

```php
getNotification($id): \Palsa\Api\Model\GetNotification200Response
```

One send

Requires the `notifications.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\NotificationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->getNotification($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NotificationsApi->getNotification: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\GetNotification200Response**](../Model/GetNotification200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listNotifications()`

```php
listNotifications($status, $limit, $cursor): \Palsa\Api\Model\ListNotifications200Response
```

List sends

Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the `notifications.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\NotificationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$status = 'status_example'; // string | Only sends in this state.
$limit = 25; // int
$cursor = 'cursor_example'; // string | The `nextCursor` from a previous page.

try {
    $result = $apiInstance->listNotifications($status, $limit, $cursor);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NotificationsApi->listNotifications: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **status** | **string**| Only sends in this state. | [optional] |
| **limit** | **int**|  | [optional] [default to 25] |
| **cursor** | **string**| The &#x60;nextCursor&#x60; from a previous page. | [optional] |

### Return type

[**\Palsa\Api\Model\ListNotifications200Response**](../Model/ListNotifications200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `quoteSend()`

```php
quoteSend($send_request): \Palsa\Api\Model\QuoteSend200Response
```

Price a send without making it

The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. `recipients` carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read `recipientCount` and `units` unless you need the rows themselves.  Requires the `notifications.send` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\NotificationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$send_request = new \Palsa\Api\Model\SendRequest(); // \Palsa\Api\Model\SendRequest

try {
    $result = $apiInstance->quoteSend($send_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NotificationsApi->quoteSend: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **send_request** | [**\Palsa\Api\Model\SendRequest**](../Model/SendRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\QuoteSend200Response**](../Model/QuoteSend200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sendNotification()`

```php
sendNotification($send_request, $idempotency_key): \Palsa\Api\Model\SendNotification202Response
```

Send a notification

Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the `notifications.send` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\NotificationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$send_request = new \Palsa\Api\Model\SendRequest(); // \Palsa\Api\Model\SendRequest
$idempotency_key = 'idempotency_key_example'; // string | A repeat with the same key returns the first answer and sends nothing more.

try {
    $result = $apiInstance->sendNotification($send_request, $idempotency_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NotificationsApi->sendNotification: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **send_request** | [**\Palsa\Api\Model\SendRequest**](../Model/SendRequest.md)|  | |
| **idempotency_key** | **string**| A repeat with the same key returns the first answer and sends nothing more. | [optional] |

### Return type

[**\Palsa\Api\Model\SendNotification202Response**](../Model/SendNotification202Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
