# palsa_api.VerificationApi

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_verification**](VerificationApi.md#check_verification) | **POST** /v1/verifications/{id}/check | Check a code
[**start_verification**](VerificationApi.md#start_verification) | **POST** /v1/verifications | Send a one-time code


# **check_verification**
> CheckVerification200Response check_verification(id, check_verification_request)

Check a code

Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the
`verifications.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.check_verification200_response import CheckVerification200Response
from palsa_api.models.check_verification_request import CheckVerificationRequest
from palsa_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.palsa.co.zw
# See configuration.py for a list of all supported configuration parameters.
configuration = palsa_api.Configuration(
    host = "https://api.palsa.co.zw"
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
    api_instance = palsa_api.VerificationApi(api_client)
    id = 'id_example' # str | 
    check_verification_request = palsa_api.CheckVerificationRequest() # CheckVerificationRequest | 

    try:
        # Check a code
        api_response = api_instance.check_verification(id, check_verification_request)
        print("The response of VerificationApi->check_verification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerificationApi->check_verification: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **check_verification_request** | [**CheckVerificationRequest**](CheckVerificationRequest.md)|  | 

### Return type

[**CheckVerification200Response**](CheckVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The state of the challenge after this attempt. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_verification**
> StartVerification201Response start_verification(verification_request)

Send a one-time code

Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody
else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you
integrate without a handset.

At most five challenges per address every fifteen minutes. A code counts as a transactional send,
so quiet hours do not hold it. Requires the `verifications.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.start_verification201_response import StartVerification201Response
from palsa_api.models.verification_request import VerificationRequest
from palsa_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.palsa.co.zw
# See configuration.py for a list of all supported configuration parameters.
configuration = palsa_api.Configuration(
    host = "https://api.palsa.co.zw"
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
    api_instance = palsa_api.VerificationApi(api_client)
    verification_request = palsa_api.VerificationRequest() # VerificationRequest | 

    try:
        # Send a one-time code
        api_response = api_instance.start_verification(verification_request)
        print("The response of VerificationApi->start_verification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerificationApi->start_verification: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verification_request** | [**VerificationRequest**](VerificationRequest.md)|  | 

### Return type

[**StartVerification201Response**](StartVerification201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | The challenge. &#x60;sandboxCode&#x60; is present only for a sandbox key. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**402** | The workspace cannot pay for this, and nothing was sent. &#x60;detail&#x60; names the channel, how much was needed and how much was available.  |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

