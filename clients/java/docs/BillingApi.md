# BillingApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getBalances**](BillingApi.md#getBalances) | **GET** /v1/balances | Prepaid balances |


<a id="getBalances"></a>
# **getBalances**
> GetBalances200Response getBalances()

Prepaid balances

What is available now, what is already promised to sends in flight, and what has been used, per channel. Requires the &#x60;analytics.read&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.BillingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    BillingApi apiInstance = new BillingApi(defaultClient);
    try {
      GetBalances200Response result = apiInstance.getBalances();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BillingApi#getBalances");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

