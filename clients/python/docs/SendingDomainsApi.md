# palsa_api.SendingDomainsApi

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_sending_domain**](SendingDomainsApi.md#add_sending_domain) | **POST** /v1/sending-domains | Add a sending domain
[**check_sending_domain**](SendingDomainsApi.md#check_sending_domain) | **POST** /v1/sending-domains/{id}/check | Check a sending domain now
[**get_sending_domain**](SendingDomainsApi.md#get_sending_domain) | **GET** /v1/sending-domains/{id} | Get a sending domain
[**list_sending_domains**](SendingDomainsApi.md#list_sending_domains) | **GET** /v1/sending-domains | List sending domains
[**remove_sending_domain**](SendingDomainsApi.md#remove_sending_domain) | **DELETE** /v1/sending-domains/{id} | Remove a sending domain


# **add_sending_domain**
> AddSendingDomain201Response add_sending_domain(add_sending_domain_request)

Add a sending domain

Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records
to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`.
Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another
workspace holds is refused. Requires the `domains.write` scope.

Until email sending is live the domain is stored as `awaiting_provider` with no records; they
appear as soon as it is.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.add_sending_domain201_response import AddSendingDomain201Response
from palsa_api.models.add_sending_domain_request import AddSendingDomainRequest
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
    api_instance = palsa_api.SendingDomainsApi(api_client)
    add_sending_domain_request = palsa_api.AddSendingDomainRequest() # AddSendingDomainRequest | 

    try:
        # Add a sending domain
        api_response = api_instance.add_sending_domain(add_sending_domain_request)
        print("The response of SendingDomainsApi->add_sending_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SendingDomainsApi->add_sending_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_sending_domain_request** | [**AddSendingDomainRequest**](AddSendingDomainRequest.md)|  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | The domain, with its records. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**409** | That already exists. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_sending_domain**
> AddSendingDomain201Response check_sending_domain(id)

Check a sending domain now

Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour
per domain. Requires the `domains.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.add_sending_domain201_response import AddSendingDomain201Response
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
    api_instance = palsa_api.SendingDomainsApi(api_client)
    id = 'id_example' # str | 

    try:
        # Check a sending domain now
        api_response = api_instance.check_sending_domain(id)
        print("The response of SendingDomainsApi->check_sending_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SendingDomainsApi->check_sending_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The domain as it now is. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sending_domain**
> AddSendingDomain201Response get_sending_domain(id)

Get a sending domain

Requires the `domains.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.add_sending_domain201_response import AddSendingDomain201Response
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
    api_instance = palsa_api.SendingDomainsApi(api_client)
    id = 'id_example' # str | 

    try:
        # Get a sending domain
        api_response = api_instance.get_sending_domain(id)
        print("The response of SendingDomainsApi->get_sending_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SendingDomainsApi->get_sending_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The domain. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_sending_domains**
> ListSendingDomains200Response list_sending_domains()

List sending domains

Every domain this workspace sends email from, with its verification state and the DNS records to
publish. Requires the `domains.read` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.list_sending_domains200_response import ListSendingDomains200Response
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
    api_instance = palsa_api.SendingDomainsApi(api_client)

    try:
        # List sending domains
        api_response = api_instance.list_sending_domains()
        print("The response of SendingDomainsApi->list_sending_domains:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SendingDomainsApi->list_sending_domains: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSendingDomains200Response**](ListSendingDomains200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The domains. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_sending_domain**
> RemoveSendingDomain200Response remove_sending_domain(id)

Remove a sending domain

Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.remove_sending_domain200_response import RemoveSendingDomain200Response
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
    api_instance = palsa_api.SendingDomainsApi(api_client)
    id = 'id_example' # str | 

    try:
        # Remove a sending domain
        api_response = api_instance.remove_sending_domain(id)
        print("The response of SendingDomainsApi->remove_sending_domain:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SendingDomainsApi->remove_sending_domain: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**RemoveSendingDomain200Response**](RemoveSendingDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The domain is gone. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

