# VerificationApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**checkVerification**](VerificationApi.md#checkVerification) | **POST** /v1/verifications/{id}/check | Check a code |
| [**startVerification**](VerificationApi.md#startVerification) | **POST** /v1/verifications | Send a one-time code |


<a id="checkVerification"></a>
# **checkVerification**
> CheckVerification200Response checkVerification(id, checkVerificationRequest)

Check a code

Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the &#x60;verifications.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.VerificationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    VerificationApi apiInstance = new VerificationApi(defaultClient);
    String id = "id_example"; // String | 
    CheckVerificationRequest checkVerificationRequest = new CheckVerificationRequest(); // CheckVerificationRequest | 
    try {
      CheckVerification200Response result = apiInstance.checkVerification(id, checkVerificationRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VerificationApi#checkVerification");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | |
| **checkVerificationRequest** | [**CheckVerificationRequest**](CheckVerificationRequest.md)|  | |

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

<a id="startVerification"></a>
# **startVerification**
> StartVerification201Response startVerification(verificationRequest)

Send a one-time code

Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as &#x60;sandboxCode&#x60;, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the &#x60;verifications.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.VerificationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    VerificationApi apiInstance = new VerificationApi(defaultClient);
    VerificationRequest verificationRequest = new VerificationRequest(); // VerificationRequest | 
    try {
      StartVerification201Response result = apiInstance.startVerification(verificationRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling VerificationApi#startVerification");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **verificationRequest** | [**VerificationRequest**](VerificationRequest.md)|  | |

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

