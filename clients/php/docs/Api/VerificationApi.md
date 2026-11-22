# Palsa\Api\VerificationApi

All URIs are relative to https://palsa.mhodieknowledge.workers.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**checkVerification()**](VerificationApi.md#checkVerification) | **POST** /v1/verifications/{id}/check | Check a code |
| [**startVerification()**](VerificationApi.md#startVerification) | **POST** /v1/verifications | Send a one-time code |


## `checkVerification()`

```php
checkVerification($id, $check_verification_request): \Palsa\Api\Model\CheckVerification200Response
```

Check a code

Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the `verifications.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\VerificationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$check_verification_request = new \Palsa\Api\Model\CheckVerificationRequest(); // \Palsa\Api\Model\CheckVerificationRequest

try {
    $result = $apiInstance->checkVerification($id, $check_verification_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VerificationApi->checkVerification: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **check_verification_request** | [**\Palsa\Api\Model\CheckVerificationRequest**](../Model/CheckVerificationRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\CheckVerification200Response**](../Model/CheckVerification200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `startVerification()`

```php
startVerification($verification_request): \Palsa\Api\Model\StartVerification201Response
```

Send a one-time code

Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the `verifications.write` scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\VerificationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$verification_request = new \Palsa\Api\Model\VerificationRequest(); // \Palsa\Api\Model\VerificationRequest

try {
    $result = $apiInstance->startVerification($verification_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VerificationApi->startVerification: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **verification_request** | [**\Palsa\Api\Model\VerificationRequest**](../Model/VerificationRequest.md)|  | |

### Return type

[**\Palsa\Api\Model\StartVerification201Response**](../Model/StartVerification201Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
