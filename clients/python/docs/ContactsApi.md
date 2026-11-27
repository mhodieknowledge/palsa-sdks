# palsa_api.ContactsApi

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactsApi.md#create_contact) | **POST** /v1/contacts | Save a contact
[**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /v1/contacts/{id} | Erase a contact
[**list_contacts**](ContactsApi.md#list_contacts) | **GET** /v1/contacts | List contacts
[**list_devices**](ContactsApi.md#list_devices) | **GET** /v1/devices | List registered devices
[**register_device**](ContactsApi.md#register_device) | **POST** /v1/devices | Register a device for push
[**unregister_device**](ContactsApi.md#unregister_device) | **POST** /v1/devices/unregister | Stop sending to a device


# **create_contact**
> CreateContact201Response create_contact(contact_create)

Save a contact

Give an email address or a phone number, or both. `state` is `pending` unless you can show the
person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write`
scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.contact_create import ContactCreate
from palsa_api.models.create_contact201_response import CreateContact201Response
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
    api_instance = palsa_api.ContactsApi(api_client)
    contact_create = palsa_api.ContactCreate() # ContactCreate | 

    try:
        # Save a contact
        api_response = api_instance.create_contact(contact_create)
        print("The response of ContactsApi->create_contact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContactsApi->create_contact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_create** | [**ContactCreate**](ContactCreate.md)|  | 

### Return type

[**CreateContact201Response**](CreateContact201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**409** | That already exists. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contact**
> DeleteContact200Response delete_contact(id)

Erase a contact

Requires the `contacts.write` scope.

Here as well as in the console because a deletion request reaches your application at least as
often as it reaches your staff.

Their deliveries are kept and their address is removed from them, so the record of what was sent
and charged survives without saying who it went to. A suppression for that address is also kept:
dropping it would mean the same person, imported again later, is sent to after asking not to be.
Their devices and audience memberships go with them.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.delete_contact200_response import DeleteContact200Response
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
    api_instance = palsa_api.ContactsApi(api_client)
    id = 'id_example' # str | 

    try:
        # Erase a contact
        api_response = api_instance.delete_contact(id)
        print("The response of ContactsApi->delete_contact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContactsApi->delete_contact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**DeleteContact200Response**](DeleteContact200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The contact is gone. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_contacts**
> ListContacts200Response list_contacts(limit=limit)

List contacts

Newest first. Requires the `contacts.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.list_contacts200_response import ListContacts200Response
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
    api_instance = palsa_api.ContactsApi(api_client)
    limit = 50 # int |  (optional) (default to 50)

    try:
        # List contacts
        api_response = api_instance.list_contacts(limit=limit)
        print("The response of ContactsApi->list_contacts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContactsApi->list_contacts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**ListContacts200Response**](ListContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The contacts. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_devices**
> ListDevices200Response list_devices(contact_id=contact_id)

List registered devices

The newest 200, optionally for one contact. Tokens are never returned. Requires the `contacts.read` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.list_devices200_response import ListDevices200Response
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
    api_instance = palsa_api.ContactsApi(api_client)
    contact_id = 'contact_id_example' # str |  (optional)

    try:
        # List registered devices
        api_response = api_instance.list_devices(contact_id=contact_id)
        print("The response of ContactsApi->list_devices:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContactsApi->list_devices: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **str**|  | [optional] 

### Return type

[**ListDevices200Response**](ListDevices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The devices. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_device**
> RegisterDevice201Response register_device(device_register)

Register a device for push

Registering the same token again updates it rather than adding another, and revives one that had
been invalidated. Requires the `contacts.write` scope.


### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.device_register import DeviceRegister
from palsa_api.models.register_device201_response import RegisterDevice201Response
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
    api_instance = palsa_api.ContactsApi(api_client)
    device_register = palsa_api.DeviceRegister() # DeviceRegister | 

    try:
        # Register a device for push
        api_response = api_instance.register_device(device_register)
        print("The response of ContactsApi->register_device:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContactsApi->register_device: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_register** | [**DeviceRegister**](DeviceRegister.md)|  | 

### Return type

[**RegisterDevice201Response**](RegisterDevice201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Registered. |  -  |
**200** | A refreshed token replaced &#x60;previousToken&#x60; in place. |  -  |
**401** | No key, or a key that has been revoked. |  -  |
**403** | The key is missing the scope this operation needs. |  -  |
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_device**
> InlineObject unregister_device(unregister_device_request)

Stop sending to a device

For sign-out, or when the person turns notifications off. The device leaves its topics. Requires the `contacts.write` scope.

### Example

* Bearer Authentication (bearerAuth):

```python
import palsa_api
from palsa_api.models.inline_object import InlineObject
from palsa_api.models.unregister_device_request import UnregisterDeviceRequest
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
    api_instance = palsa_api.ContactsApi(api_client)
    unregister_device_request = palsa_api.UnregisterDeviceRequest() # UnregisterDeviceRequest | 

    try:
        # Stop sending to a device
        api_response = api_instance.unregister_device(unregister_device_request)
        print("The response of ContactsApi->unregister_device:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContactsApi->unregister_device: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unregister_device_request** | [**UnregisterDeviceRequest**](UnregisterDeviceRequest.md)|  | 

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
**422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
**429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

