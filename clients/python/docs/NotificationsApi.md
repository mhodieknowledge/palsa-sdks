# palsa_api.NotificationsApi

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describe_mcp**](NotificationsApi.md#describe_mcp) | **GET** /v1/mcp | What the MCP endpoint is
[**get_notification**](NotificationsApi.md#get_notification) | **GET** /v1/notifications/{id} | One send
[**list_notifications**](NotificationsApi.md#list_notifications) | **GET** /v1/notifications | List sends
[**quote_send**](NotificationsApi.md#quote_send) | **POST** /v1/quotes | Price a send without making it
[**send_notification**](NotificationsApi.md#send_notification) | **POST** /v1/notifications | Send a notification


# **describe_mcp**
> DescribeMcp200Response describe_mcp()

What the MCP endpoint is

Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is
deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would
describe the transport rather than the protocol, and an agent should reach it through an MCP
client, not a Palsa SDK.

Requires the `notifications.read` scope.

An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to
give it first.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.describe_mcp200_response import DescribeMcp200Response
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
    api_instance = palsa_api.NotificationsApi(api_client)

    try:
        # What the MCP endpoint is
        api_response = api_instance.describe_mcp()
        print("The response of NotificationsApi->describe_mcp:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->describe_mcp: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**DescribeMcp200Response**](DescribeMcp200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A description of the endpoint and the tools it offers. |  -  |
**401** | No key, or a key that has been revoked. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_notification**
> GetNotification200Response get_notification(id)

One send

Requires the `notifications.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.get_notification200_response import GetNotification200Response
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
    api_instance = palsa_api.NotificationsApi(api_client)
    id = 'id_example' # str | 

    try:
        # One send
        api_response = api_instance.get_notification(id)
        print("The response of NotificationsApi->get_notification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->get_notification: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**GetNotification200Response**](GetNotification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The send, with its delivery counts by state. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_notifications**
> ListNotifications200Response list_notifications(status=status, limit=limit, cursor=cursor)

List sends

Newest first, paginated by cursor rather than offset, because an offset drifts while new sends
arrive. Requires the `notifications.read` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.list_notifications200_response import ListNotifications200Response
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
    api_instance = palsa_api.NotificationsApi(api_client)
    status = 'status_example' # str | Only sends in this state. (optional)
    limit = 25 # int |  (optional) (default to 25)
    cursor = 'cursor_example' # str | The `nextCursor` from a previous page. (optional)

    try:
        # List sends
        api_response = api_instance.list_notifications(status=status, limit=limit, cursor=cursor)
        print("The response of NotificationsApi->list_notifications:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->list_notifications: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **str**| Only sends in this state. | [optional] 
 **limit** | **int**|  | [optional] [default to 25]
 **cursor** | **str**| The &#x60;nextCursor&#x60; from a previous page. | [optional] 

### Return type

[**ListNotifications200Response**](ListNotifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A page of sends. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quote_send**
> QuoteSend200Response quote_send(send_request)

Price a send without making it

The same calculation the send itself uses: what it would cost, who would be left out and why, and
anything that would stop it. Reserves nothing and sends nothing.

Note the size of the answer. `recipients` carries a row per recipient per channel, including their
address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read
`recipientCount` and `units` unless you need the rows themselves.

Requires the `notifications.send` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.quote_send200_response import QuoteSend200Response
from palsa_api.models.send_request import SendRequest
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
    api_instance = palsa_api.NotificationsApi(api_client)
    send_request = palsa_api.SendRequest() # SendRequest | 

    try:
        # Price a send without making it
        api_response = api_instance.quote_send(send_request)
        print("The response of NotificationsApi->quote_send:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->quote_send: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_request** | [**SendRequest**](SendRequest.md)|  | 

### Return type

[**QuoteSend200Response**](QuoteSend200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | What the send would cost. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_notification**
> SendNotification202Response send_notification(send_request, idempotency_key=idempotency_key)

Send a notification

Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted,
costs nothing and reaches nobody.

Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the
first answer and sends nothing more, which is what makes retrying after a timeout safe.

Requires the `notifications.send` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.send_notification202_response import SendNotification202Response
from palsa_api.models.send_request import SendRequest
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
    api_instance = palsa_api.NotificationsApi(api_client)
    send_request = palsa_api.SendRequest() # SendRequest | 
    idempotency_key = 'idempotency_key_example' # str | A repeat with the same key returns the first answer and sends nothing more. (optional)

    try:
        # Send a notification
        api_response = api_instance.send_notification(send_request, idempotency_key=idempotency_key)
        print("The response of NotificationsApi->send_notification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NotificationsApi->send_notification: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_request** | [**SendRequest**](SendRequest.md)|  | 
 **idempotency_key** | **str**| A repeat with the same key returns the first answer and sends nothing more. | [optional] 

### Return type

[**SendNotification202Response**](SendNotification202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**202** | Accepted. Dispatch continues after the response. |  -  |
**200** | A replay of an earlier request with the same idempotency key. Nothing was sent again. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**402** | The workspace cannot pay for this, and nothing was sent. &#x60;detail&#x60; names the channel, how much was needed and how much was available.  |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

