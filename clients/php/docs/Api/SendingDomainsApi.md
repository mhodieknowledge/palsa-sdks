# Palsa\Api\SendingDomainsApi

All URIs are relative to https://api.palsa.co.zw, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**addSendingDomain()**](SendingDomainsApi.md#addSendingDomain) | **POST** /v1/sending-domains | Add a sending domain |
| [**checkSendingDomain()**](SendingDomainsApi.md#checkSendingDomain) | **POST** /v1/sending-domains/{id}/check | Check a sending domain now |
| [**getSendingDomain()**](SendingDomainsApi.md#getSendingDomain) | **GET** /v1/sending-domains/{id} | Get a sending domain |
| [**listSendingDomains()**](SendingDomainsApi.md#listSendingDomains) | **GET** /v1/sending-domains | List sending domains |
| [**removeSendingDomain()**](SendingDomainsApi.md#removeSendingDomain) | **DELETE** /v1/sending-domains/{id} | Remove a sending domain |


## `addSendingDomain()`

```php
addSendingDomain($add_sending_domain_request): \Palsa\Api\Model\AddSendingDomain201Response
```

Add a sending domain

Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`. Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another workspace holds is refused. Requires the `domains.write` scope.  Until email sending is live the domain is stored as `awaiting_provider` with no records; they appear as soon as it is.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\SendingDomainsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$add_sending_domain_request = new \Palsa\Api\Model\AddSendingDomainRequest(); // \Palsa\Api\Model\AddSendingDomainRequest

try {
    $result = $apiInstance->addSendingDomain($add_sending_domain_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SendingDomainsApi->addSendingDomain: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **add_sending_domain_request** | [**\Palsa\Api\Model\AddSendingDomainRequest**](../Model/AddSendingDomainRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\AddSendingDomain201Response**](../Model/AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `checkSendingDomain()`

```php
checkSendingDomain($id): \Palsa\Api\Model\AddSendingDomain201Response
```

Check a sending domain now

Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the `domains.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\SendingDomainsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->checkSendingDomain($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SendingDomainsApi->checkSendingDomain: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\AddSendingDomain201Response**](../Model/AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSendingDomain()`

```php
getSendingDomain($id): \Palsa\Api\Model\AddSendingDomain201Response
```

Get a sending domain

Requires the `domains.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\SendingDomainsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->getSendingDomain($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SendingDomainsApi->getSendingDomain: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\AddSendingDomain201Response**](../Model/AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listSendingDomains()`

```php
listSendingDomains(): \Palsa\Api\Model\ListSendingDomains200Response
```

List sending domains

Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the `domains.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\SendingDomainsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listSendingDomains();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SendingDomainsApi->listSendingDomains: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Palsa\Api\Model\ListSendingDomains200Response**](../Model/ListSendingDomains200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `removeSendingDomain()`

```php
removeSendingDomain($id): \Palsa\Api\Model\RemoveSendingDomain200Response
```

Remove a sending domain

Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\SendingDomainsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $result = $apiInstance->removeSendingDomain($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SendingDomainsApi->removeSendingDomain: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

[**\Palsa\Api\Model\RemoveSendingDomain200Response**](../Model/RemoveSendingDomain200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
