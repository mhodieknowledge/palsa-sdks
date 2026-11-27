# palsa_api.PushApi

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_push_app**](PushApi.md#add_push_app) | **POST** /v1/push-apps | Connect an app&#39;s Firebase project
[**check_push_app**](PushApi.md#check_push_app) | **POST** /v1/push-apps/{id}/check | Check a push app&#39;s access again
[**confirm_push_app_ownership**](PushApi.md#confirm_push_app_ownership) | **POST** /v1/push-apps/{id}/ownership | Confirm the code, verifying a delegated app
[**get_push_app**](PushApi.md#get_push_app) | **GET** /v1/push-apps/{id} | Get a push app
[**list_push_apps**](PushApi.md#list_push_apps) | **GET** /v1/push-apps | List push apps
[**list_push_topics**](PushApi.md#list_push_topics) | **GET** /v1/push-topics | List topics and how many devices each has
[**remove_push_app**](PushApi.md#remove_push_app) | **DELETE** /v1/push-apps/{id} | Remove a push app
[**replace_push_app_key**](PushApi.md#replace_push_app_key) | **PUT** /v1/push-apps/{id}/key | Replace a push app&#39;s service-account key
[**send_push_app_ownership_code**](PushApi.md#send_push_app_ownership_code) | **POST** /v1/push-apps/{id}/ownership-code | Push a six-digit code to one of your devices
[**subscribe_to_push_topic**](PushApi.md#subscribe_to_push_topic) | **POST** /v1/push-topics/{topic}/subscribe | Subscribe devices to a topic
[**unsubscribe_from_push_topic**](PushApi.md#unsubscribe_from_push_topic) | **POST** /v1/push-topics/{topic}/unsubscribe | Unsubscribe devices from a topic
[**update_push_app**](PushApi.md#update_push_app) | **PATCH** /v1/push-apps/{id} | Rename a push app or make it the default


# **add_push_app**
> InlineObject1 add_push_app(push_app_create)

Connect an app's Firebase project

With `service_account`, the key is checked with Firebase (a validate-only message, which sends
nothing) and the app is verified at once. With `delegated`, grant `grantTo` the Firebase Cloud
Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices.
Requires the `push.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object1 import InlineObject1
from palsa_api.models.push_app_create import PushAppCreate
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
    api_instance = palsa_api.PushApi(api_client)
    push_app_create = palsa_api.PushAppCreate() # PushAppCreate | 

    try:
        # Connect an app's Firebase project
        api_response = api_instance.add_push_app(push_app_create)
        print("The response of PushApi->add_push_app:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->add_push_app: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **push_app_create** | [**PushAppCreate**](PushAppCreate.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | The push app. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**409** | That already exists. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_push_app**
> InlineObject1 check_push_app(id)

Check a push app's access again

Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object1 import InlineObject1
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 

    try:
        # Check a push app's access again
        api_response = api_instance.check_push_app(id)
        print("The response of PushApi->check_push_app:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->check_push_app: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The push app. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirm_push_app_ownership**
> InlineObject1 confirm_push_app_ownership(id, confirm_push_app_ownership_request)

Confirm the code, verifying a delegated app

Five wrong codes and a new one must be sent. Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.confirm_push_app_ownership_request import ConfirmPushAppOwnershipRequest
from palsa_api.models.inline_object1 import InlineObject1
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 
    confirm_push_app_ownership_request = palsa_api.ConfirmPushAppOwnershipRequest() # ConfirmPushAppOwnershipRequest | 

    try:
        # Confirm the code, verifying a delegated app
        api_response = api_instance.confirm_push_app_ownership(id, confirm_push_app_ownership_request)
        print("The response of PushApi->confirm_push_app_ownership:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->confirm_push_app_ownership: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **confirm_push_app_ownership_request** | [**ConfirmPushAppOwnershipRequest**](ConfirmPushAppOwnershipRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The push app. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_push_app**
> InlineObject1 get_push_app(id)

Get a push app

Requires the `push.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object1 import InlineObject1
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 

    try:
        # Get a push app
        api_response = api_instance.get_push_app(id)
        print("The response of PushApi->get_push_app:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->get_push_app: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The push app. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_push_apps**
> ListPushApps200Response list_push_apps()

List push apps

Requires the `push.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.list_push_apps200_response import ListPushApps200Response
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
    api_instance = palsa_api.PushApi(api_client)

    try:
        # List push apps
        api_response = api_instance.list_push_apps()
        print("The response of PushApi->list_push_apps:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->list_push_apps: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPushApps200Response**](ListPushApps200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The workspace&#39;s apps. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_push_topics**
> ListPushTopics200Response list_push_topics()

List topics and how many devices each has

Requires the `push.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.list_push_topics200_response import ListPushTopics200Response
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
    api_instance = palsa_api.PushApi(api_client)

    try:
        # List topics and how many devices each has
        api_response = api_instance.list_push_topics()
        print("The response of PushApi->list_push_topics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->list_push_topics: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPushTopics200Response**](ListPushTopics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The topics. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_push_app**
> InlineObject remove_push_app(id)

Remove a push app

Its key is deleted and its devices stop receiving push. Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object import InlineObject
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 

    try:
        # Remove a push app
        api_response = api_instance.remove_push_app(id)
        print("The response of PushApi->remove_push_app:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->remove_push_app: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Done. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace_push_app_key**
> InlineObject1 replace_push_app_key(id, replace_push_app_key_request)

Replace a push app's service-account key

For rotating a key. The new one must be for the same project. Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object1 import InlineObject1
from palsa_api.models.replace_push_app_key_request import ReplacePushAppKeyRequest
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 
    replace_push_app_key_request = palsa_api.ReplacePushAppKeyRequest() # ReplacePushAppKeyRequest | 

    try:
        # Replace a push app's service-account key
        api_response = api_instance.replace_push_app_key(id, replace_push_app_key_request)
        print("The response of PushApi->replace_push_app_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->replace_push_app_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **replace_push_app_key_request** | [**ReplacePushAppKeyRequest**](ReplacePushAppKeyRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The push app. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_push_app_ownership_code**
> InlineObject send_push_app_ownership_code(id, send_push_app_ownership_code_request)

Push a six-digit code to one of your devices

Delegated apps only. The code arrives as a notification and as the `palsa_verification_code` data key, and lasts 15 minutes. Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object import InlineObject
from palsa_api.models.send_push_app_ownership_code_request import SendPushAppOwnershipCodeRequest
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 
    send_push_app_ownership_code_request = palsa_api.SendPushAppOwnershipCodeRequest() # SendPushAppOwnershipCodeRequest | 

    try:
        # Push a six-digit code to one of your devices
        api_response = api_instance.send_push_app_ownership_code(id, send_push_app_ownership_code_request)
        print("The response of PushApi->send_push_app_ownership_code:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->send_push_app_ownership_code: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **send_push_app_ownership_code_request** | [**SendPushAppOwnershipCodeRequest**](SendPushAppOwnershipCodeRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Done. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**409** | That already exists. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribe_to_push_topic**
> InlineObject2 subscribe_to_push_topic(topic, device_targets)

Subscribe devices to a topic

Through each device's own app. A token Firebase no longer knows is invalidated. A device whose token
is later refreshed through `previousToken` is subscribed again automatically. Requires the
`push.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.device_targets import DeviceTargets
from palsa_api.models.inline_object2 import InlineObject2
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
    api_instance = palsa_api.PushApi(api_client)
    topic = 'topic_example' # str | 
    device_targets = palsa_api.DeviceTargets() # DeviceTargets | 

    try:
        # Subscribe devices to a topic
        api_response = api_instance.subscribe_to_push_topic(topic, device_targets)
        print("The response of PushApi->subscribe_to_push_topic:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->subscribe_to_push_topic: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **str**|  | 
 **device_targets** | [**DeviceTargets**](DeviceTargets.md)|  | 

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Which devices Firebase took, and which it refused and why. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribe_from_push_topic**
> InlineObject2 unsubscribe_from_push_topic(topic, device_targets)

Unsubscribe devices from a topic

Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.device_targets import DeviceTargets
from palsa_api.models.inline_object2 import InlineObject2
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
    api_instance = palsa_api.PushApi(api_client)
    topic = 'topic_example' # str | 
    device_targets = palsa_api.DeviceTargets() # DeviceTargets | 

    try:
        # Unsubscribe devices from a topic
        api_response = api_instance.unsubscribe_from_push_topic(topic, device_targets)
        print("The response of PushApi->unsubscribe_from_push_topic:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->unsubscribe_from_push_topic: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **str**|  | 
 **device_targets** | [**DeviceTargets**](DeviceTargets.md)|  | 

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Which devices Firebase took, and which it refused and why. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_push_app**
> InlineObject1 update_push_app(id, update_push_app_request)

Rename a push app or make it the default

Requires the `push.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object1 import InlineObject1
from palsa_api.models.update_push_app_request import UpdatePushAppRequest
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
    api_instance = palsa_api.PushApi(api_client)
    id = 'id_example' # str | 
    update_push_app_request = palsa_api.UpdatePushAppRequest() # UpdatePushAppRequest | 

    try:
        # Rename a push app or make it the default
        api_response = api_instance.update_push_app(id, update_push_app_request)
        print("The response of PushApi->update_push_app:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PushApi->update_push_app: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **update_push_app_request** | [**UpdatePushAppRequest**](UpdatePushAppRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The push app. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**409** | That already exists. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

