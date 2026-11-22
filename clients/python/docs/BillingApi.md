# palsa_api.BillingApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_balances**](BillingApi.md#get_balances) | **GET** /v1/balances | Prepaid balances


# **get_balances**
> GetBalances200Response get_balances()

Prepaid balances

What is available now, what is already promised to sends in flight, and what has been used, per
channel. Requires the `analytics.read` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.get_balances200_response import GetBalances200Response
from palsa_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://palsa.mhodieknowledge.workers.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = palsa_api.Configuration(
    host = "https://palsa.mhodieknowledge.workers.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = palsa_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with palsa_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = palsa_api.BillingApi(api_client)

    try:
        # Prepaid balances
        api_response = api_instance.get_balances()
        print("The response of BillingApi->get_balances:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingApi->get_balances: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The balance of each channel. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

