# Palsa.Api.Api.VerificationApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CheckVerification**](VerificationApi.md#checkverification) | **POST** /v1/verifications/{id}/check | Check a code |
| [**StartVerification**](VerificationApi.md#startverification) | **POST** /v1/verifications | Send a one-time code |

<a id="checkverification"></a>
# **CheckVerification**
> CheckVerification200Response CheckVerification (string id, CheckVerificationRequest checkVerificationRequest)

Check a code

Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the `verifications.write` scope. 

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
    public class CheckVerificationExample
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
            var apiInstance = new VerificationApi(httpClient, config, httpClientHandler);
            var id = "id_example";  // string | 
            var checkVerificationRequest = new CheckVerificationRequest(); // CheckVerificationRequest | 

            try
            {
                // Check a code
                CheckVerification200Response result = apiInstance.CheckVerification(id, checkVerificationRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling VerificationApi.CheckVerification: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CheckVerificationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Check a code
    ApiResponse<CheckVerification200Response> response = apiInstance.CheckVerificationWithHttpInfo(id, checkVerificationRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling VerificationApi.CheckVerificationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |
| **checkVerificationRequest** | [**CheckVerificationRequest**](CheckVerificationRequest.md) |  |  |

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
| **200** | The state of the challenge after this attempt. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="startverification"></a>
# **StartVerification**
> StartVerification201Response StartVerification (VerificationRequest verificationRequest)

Send a one-time code

Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as `sandboxCode`, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the `verifications.write` scope. 

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
    public class StartVerificationExample
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
            var apiInstance = new VerificationApi(httpClient, config, httpClientHandler);
            var verificationRequest = new VerificationRequest(); // VerificationRequest | 

            try
            {
                // Send a one-time code
                StartVerification201Response result = apiInstance.StartVerification(verificationRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling VerificationApi.StartVerification: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the StartVerificationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Send a one-time code
    ApiResponse<StartVerification201Response> response = apiInstance.StartVerificationWithHttpInfo(verificationRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling VerificationApi.StartVerificationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **verificationRequest** | [**VerificationRequest**](VerificationRequest.md) |  |  |

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
| **201** | The challenge. &#x60;sandboxCode&#x60; is present only for a sandbox key. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **402** | The workspace cannot pay for this, and nothing was sent. &#x60;detail&#x60; names the channel, how much was needed and how much was available.  |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

