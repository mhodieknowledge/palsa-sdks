# Palsa.Api.Api.SendingDomainsApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AddSendingDomain**](SendingDomainsApi.md#addsendingdomain) | **POST** /v1/sending-domains | Add a sending domain |
| [**CheckSendingDomain**](SendingDomainsApi.md#checksendingdomain) | **POST** /v1/sending-domains/{id}/check | Check a sending domain now |
| [**GetSendingDomain**](SendingDomainsApi.md#getsendingdomain) | **GET** /v1/sending-domains/{id} | Get a sending domain |
| [**ListSendingDomains**](SendingDomainsApi.md#listsendingdomains) | **GET** /v1/sending-domains | List sending domains |
| [**RemoveSendingDomain**](SendingDomainsApi.md#removesendingdomain) | **DELETE** /v1/sending-domains/{id} | Remove a sending domain |

<a id="addsendingdomain"></a>
# **AddSendingDomain**
> AddSendingDomain201Response AddSendingDomain (AddSendingDomainRequest addSendingDomainRequest)

Add a sending domain

Registers the domain with Amazon SES under this workspace's own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM `bounce.<domain>`. Palsa checks automatically and the domain becomes `verified` once SES finds them. A domain another workspace holds is refused. Requires the `domains.write` scope.  Until email sending is live the domain is stored as `awaiting_provider` with no records; they appear as soon as it is. 

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
    public class AddSendingDomainExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.palsa.co.zw";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SendingDomainsApi(httpClient, config, httpClientHandler);
            var addSendingDomainRequest = new AddSendingDomainRequest(); // AddSendingDomainRequest | 

            try
            {
                // Add a sending domain
                AddSendingDomain201Response result = apiInstance.AddSendingDomain(addSendingDomainRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SendingDomainsApi.AddSendingDomain: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AddSendingDomainWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Add a sending domain
    ApiResponse<AddSendingDomain201Response> response = apiInstance.AddSendingDomainWithHttpInfo(addSendingDomainRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SendingDomainsApi.AddSendingDomainWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **addSendingDomainRequest** | [**AddSendingDomainRequest**](AddSendingDomainRequest.md) |  |  |

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
| **201** | The domain, with its records. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **409** | That already exists. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="checksendingdomain"></a>
# **CheckSendingDomain**
> AddSendingDomain201Response CheckSendingDomain (string id)

Check a sending domain now

Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the `domains.write` scope. 

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
    public class CheckSendingDomainExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.palsa.co.zw";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SendingDomainsApi(httpClient, config, httpClientHandler);
            var id = "id_example";  // string | 

            try
            {
                // Check a sending domain now
                AddSendingDomain201Response result = apiInstance.CheckSendingDomain(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SendingDomainsApi.CheckSendingDomain: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CheckSendingDomainWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Check a sending domain now
    ApiResponse<AddSendingDomain201Response> response = apiInstance.CheckSendingDomainWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SendingDomainsApi.CheckSendingDomainWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

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
| **200** | The domain as it now is. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getsendingdomain"></a>
# **GetSendingDomain**
> AddSendingDomain201Response GetSendingDomain (string id)

Get a sending domain

Requires the `domains.read` scope.

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
    public class GetSendingDomainExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.palsa.co.zw";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SendingDomainsApi(httpClient, config, httpClientHandler);
            var id = "id_example";  // string | 

            try
            {
                // Get a sending domain
                AddSendingDomain201Response result = apiInstance.GetSendingDomain(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SendingDomainsApi.GetSendingDomain: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSendingDomainWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get a sending domain
    ApiResponse<AddSendingDomain201Response> response = apiInstance.GetSendingDomainWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SendingDomainsApi.GetSendingDomainWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

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
| **200** | The domain. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listsendingdomains"></a>
# **ListSendingDomains**
> ListSendingDomains200Response ListSendingDomains ()

List sending domains

Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the `domains.read` scope. 

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
    public class ListSendingDomainsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.palsa.co.zw";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SendingDomainsApi(httpClient, config, httpClientHandler);

            try
            {
                // List sending domains
                ListSendingDomains200Response result = apiInstance.ListSendingDomains();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SendingDomainsApi.ListSendingDomains: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListSendingDomainsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List sending domains
    ApiResponse<ListSendingDomains200Response> response = apiInstance.ListSendingDomainsWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SendingDomainsApi.ListSendingDomainsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
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
| **200** | The domains. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="removesendingdomain"></a>
# **RemoveSendingDomain**
> RemoveSendingDomain200Response RemoveSendingDomain (string id)

Remove a sending domain

Removes the domain from Amazon SES and stops every address on it. Requires the `domains.write` scope. 

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
    public class RemoveSendingDomainExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.palsa.co.zw";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SendingDomainsApi(httpClient, config, httpClientHandler);
            var id = "id_example";  // string | 

            try
            {
                // Remove a sending domain
                RemoveSendingDomain200Response result = apiInstance.RemoveSendingDomain(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SendingDomainsApi.RemoveSendingDomain: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RemoveSendingDomainWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Remove a sending domain
    ApiResponse<RemoveSendingDomain200Response> response = apiInstance.RemoveSendingDomainWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SendingDomainsApi.RemoveSendingDomainWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

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
| **200** | The domain is gone. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

