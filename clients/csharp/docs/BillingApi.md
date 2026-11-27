# Palsa.Api.Api.BillingApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetBalances**](BillingApi.md#getbalances) | **GET** /v1/balances | Prepaid balances |

<a id="getbalances"></a>
# **GetBalances**
> GetBalances200Response GetBalances ()

Prepaid balances

What is available now, what is already promised to sends in flight, and what has been used, per channel. Requires the `analytics.read` scope. 

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
    public class GetBalancesExample
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
            var apiInstance = new BillingApi(httpClient, config, httpClientHandler);

            try
            {
                // Prepaid balances
                GetBalances200Response result = apiInstance.GetBalances();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BillingApi.GetBalances: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetBalancesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Prepaid balances
    ApiResponse<GetBalances200Response> response = apiInstance.GetBalancesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BillingApi.GetBalancesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
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
| **200** | The balance of each channel. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

