# Palsa.Api.Api.ContactsApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateContact**](ContactsApi.md#createcontact) | **POST** /v1/contacts | Save a contact |
| [**DeleteContact**](ContactsApi.md#deletecontact) | **DELETE** /v1/contacts/{id} | Erase a contact |
| [**ListContacts**](ContactsApi.md#listcontacts) | **GET** /v1/contacts | List contacts |
| [**RegisterDevice**](ContactsApi.md#registerdevice) | **POST** /v1/devices | Register a device for push |

<a id="createcontact"></a>
# **CreateContact**
> CreateContact201Response CreateContact (ContactCreate contactCreate)

Save a contact

Give an email address or a phone number, or both. `state` is `pending` unless you can show the person consented, and marketing only goes to `consented` contacts. Requires the `contacts.write` scope. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Palsa.Api.Api;
using Palsa.Api.Client;
using Palsa.Api.Model;

namespace Example
{
    public class CreateContactExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://palsa.mhodieknowledge.workers.dev";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new ContactsApi(httpClient, config, httpClientHandler);
            var contactCreate = new ContactCreate(); // ContactCreate | 

            try
            {
                // Save a contact
                CreateContact201Response result = apiInstance.CreateContact(contactCreate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ContactsApi.CreateContact: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateContactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Save a contact
    ApiResponse<CreateContact201Response> response = apiInstance.CreateContactWithHttpInfo(contactCreate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContactsApi.CreateContactWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contactCreate** | [**ContactCreate**](ContactCreate.md) |  |  |

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
| **201** | Created. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **409** | That already exists. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="deletecontact"></a>
# **DeleteContact**
> DeleteContact200Response DeleteContact (string id)

Erase a contact

Requires the `contacts.write` scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Palsa.Api.Api;
using Palsa.Api.Client;
using Palsa.Api.Model;

namespace Example
{
    public class DeleteContactExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://palsa.mhodieknowledge.workers.dev";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new ContactsApi(httpClient, config, httpClientHandler);
            var id = "id_example";  // string | 

            try
            {
                // Erase a contact
                DeleteContact200Response result = apiInstance.DeleteContact(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ContactsApi.DeleteContact: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteContactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Erase a contact
    ApiResponse<DeleteContact200Response> response = apiInstance.DeleteContactWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContactsApi.DeleteContactWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

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
| **200** | The contact is gone. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listcontacts"></a>
# **ListContacts**
> ListContacts200Response ListContacts (int? limit = null)

List contacts

Newest first. Requires the `contacts.read` scope.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Palsa.Api.Api;
using Palsa.Api.Client;
using Palsa.Api.Model;

namespace Example
{
    public class ListContactsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://palsa.mhodieknowledge.workers.dev";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new ContactsApi(httpClient, config, httpClientHandler);
            var limit = 50;  // int? |  (optional)  (default to 50)

            try
            {
                // List contacts
                ListContacts200Response result = apiInstance.ListContacts(limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ContactsApi.ListContacts: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListContactsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List contacts
    ApiResponse<ListContacts200Response> response = apiInstance.ListContactsWithHttpInfo(limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContactsApi.ListContactsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **limit** | **int?** |  | [optional] [default to 50] |

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
| **200** | The contacts. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="registerdevice"></a>
# **RegisterDevice**
> RegisterDevice201Response RegisterDevice (DeviceRegister deviceRegister)

Register a device for push

Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the `contacts.write` scope. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Palsa.Api.Api;
using Palsa.Api.Client;
using Palsa.Api.Model;

namespace Example
{
    public class RegisterDeviceExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://palsa.mhodieknowledge.workers.dev";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new ContactsApi(httpClient, config, httpClientHandler);
            var deviceRegister = new DeviceRegister(); // DeviceRegister | 

            try
            {
                // Register a device for push
                RegisterDevice201Response result = apiInstance.RegisterDevice(deviceRegister);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ContactsApi.RegisterDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RegisterDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Register a device for push
    ApiResponse<RegisterDevice201Response> response = apiInstance.RegisterDeviceWithHttpInfo(deviceRegister);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContactsApi.RegisterDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceRegister** | [**DeviceRegister**](DeviceRegister.md) |  |  |

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
| **201** | Registered. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

