# Palsa\Api\BillingApi

All URIs are relative to https://palsa.mhodieknowledge.workers.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getBalances()**](BillingApi.md#getBalances) | **GET** /v1/balances | Prepaid balances |


## `getBalances()`

```php
getBalances(): \Palsa\Api\Model\GetBalances200Response
```

Prepaid balances

What is available now, what is already promised to sends in flight, and what has been used, per channel. Requires the `analytics.read` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\BillingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getBalances();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BillingApi->getBalances: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Palsa\Api\Model\GetBalances200Response**](../Model/GetBalances200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
