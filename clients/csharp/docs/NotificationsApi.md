# Palsa.Api.Api.NotificationsApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DescribeMcp**](NotificationsApi.md#describemcp) | **GET** /v1/mcp | What the MCP endpoint is |
| [**GetNotification**](NotificationsApi.md#getnotification) | **GET** /v1/notifications/{id} | One send |
| [**ListNotifications**](NotificationsApi.md#listnotifications) | **GET** /v1/notifications | List sends |
| [**QuoteSend**](NotificationsApi.md#quotesend) | **POST** /v1/quotes | Price a send without making it |
| [**SendNotification**](NotificationsApi.md#sendnotification) | **POST** /v1/notifications | Send a notification |

<a id="describemcp"></a>
# **DescribeMcp**
> DescribeMcp200Response DescribeMcp ()

What the MCP endpoint is

Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first. 

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
    public class DescribeMcpExample
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
            var apiInstance = new NotificationsApi(httpClient, config, httpClientHandler);

            try
            {
                // What the MCP endpoint is
                DescribeMcp200Response result = apiInstance.DescribeMcp();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NotificationsApi.DescribeMcp: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DescribeMcpWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // What the MCP endpoint is
    ApiResponse<DescribeMcp200Response> response = apiInstance.DescribeMcpWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NotificationsApi.DescribeMcpWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
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
| **200** | A description of the endpoint and the tools it offers. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getnotification"></a>
# **GetNotification**
> GetNotification200Response GetNotification (string id)

One send

Requires the `notifications.read` scope.

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
    public class GetNotificationExample
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
            var apiInstance = new NotificationsApi(httpClient, config, httpClientHandler);
            var id = "id_example";  // string | 

            try
            {
                // One send
                GetNotification200Response result = apiInstance.GetNotification(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NotificationsApi.GetNotification: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetNotificationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // One send
    ApiResponse<GetNotification200Response> response = apiInstance.GetNotificationWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NotificationsApi.GetNotificationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

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
| **200** | The send, with its delivery counts by state. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listnotifications"></a>
# **ListNotifications**
> ListNotifications200Response ListNotifications (string? status = null, int? limit = null, string? cursor = null)

List sends

Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the `notifications.read` scope. 

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
    public class ListNotificationsExample
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
            var apiInstance = new NotificationsApi(httpClient, config, httpClientHandler);
            var status = "status_example";  // string? | Only sends in this state. (optional) 
            var limit = 25;  // int? |  (optional)  (default to 25)
            var cursor = "cursor_example";  // string? | The `nextCursor` from a previous page. (optional) 

            try
            {
                // List sends
                ListNotifications200Response result = apiInstance.ListNotifications(status, limit, cursor);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NotificationsApi.ListNotifications: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListNotificationsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List sends
    ApiResponse<ListNotifications200Response> response = apiInstance.ListNotificationsWithHttpInfo(status, limit, cursor);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NotificationsApi.ListNotificationsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **status** | **string?** | Only sends in this state. | [optional]  |
| **limit** | **int?** |  | [optional] [default to 25] |
| **cursor** | **string?** | The &#x60;nextCursor&#x60; from a previous page. | [optional]  |

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
| **200** | A page of sends. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="quotesend"></a>
# **QuoteSend**
> QuoteSend200Response QuoteSend (SendRequest sendRequest)

Price a send without making it

The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. `recipients` carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read `recipientCount` and `units` unless you need the rows themselves.  Requires the `notifications.send` scope. 

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
    public class QuoteSendExample
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
            var apiInstance = new NotificationsApi(httpClient, config, httpClientHandler);
            var sendRequest = new SendRequest(); // SendRequest | 

            try
            {
                // Price a send without making it
                QuoteSend200Response result = apiInstance.QuoteSend(sendRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NotificationsApi.QuoteSend: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the QuoteSendWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Price a send without making it
    ApiResponse<QuoteSend200Response> response = apiInstance.QuoteSendWithHttpInfo(sendRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NotificationsApi.QuoteSendWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sendRequest** | [**SendRequest**](SendRequest.md) |  |  |

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
| **200** | What the send would cost. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="sendnotification"></a>
# **SendNotification**
> SendNotification202Response SendNotification (SendRequest sendRequest, string? idempotencyKey = null)

Send a notification

Reserves credit, then sends. A key beginning `pk_test_` is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass `Idempotency-Key` for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the `notifications.send` scope. 

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
    public class SendNotificationExample
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
            var apiInstance = new NotificationsApi(httpClient, config, httpClientHandler);
            var sendRequest = new SendRequest(); // SendRequest | 
            var idempotencyKey = "idempotencyKey_example";  // string? | A repeat with the same key returns the first answer and sends nothing more. (optional) 

            try
            {
                // Send a notification
                SendNotification202Response result = apiInstance.SendNotification(sendRequest, idempotencyKey);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NotificationsApi.SendNotification: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SendNotificationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Send a notification
    ApiResponse<SendNotification202Response> response = apiInstance.SendNotificationWithHttpInfo(sendRequest, idempotencyKey);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NotificationsApi.SendNotificationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sendRequest** | [**SendRequest**](SendRequest.md) |  |  |
| **idempotencyKey** | **string?** | A repeat with the same key returns the first answer and sends nothing more. | [optional]  |

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
| **202** | Accepted. Dispatch continues after the response. |  -  |
| **200** | A replay of an earlier request with the same idempotency key. Nothing was sent again. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **402** | The workspace cannot pay for this, and nothing was sent. &#x60;detail&#x60; names the channel, how much was needed and how much was available.  |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

