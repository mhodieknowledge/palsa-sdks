# SendingDomainsApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addSendingDomain**](SendingDomainsApi.md#addSendingDomain) | **POST** /v1/sending-domains | Add a sending domain |
| [**checkSendingDomain**](SendingDomainsApi.md#checkSendingDomain) | **POST** /v1/sending-domains/{id}/check | Check a sending domain now |
| [**getSendingDomain**](SendingDomainsApi.md#getSendingDomain) | **GET** /v1/sending-domains/{id} | Get a sending domain |
| [**listSendingDomains**](SendingDomainsApi.md#listSendingDomains) | **GET** /v1/sending-domains | List sending domains |
| [**removeSendingDomain**](SendingDomainsApi.md#removeSendingDomain) | **DELETE** /v1/sending-domains/{id} | Remove a sending domain |


<a id="addSendingDomain"></a>
# **addSendingDomain**
> AddSendingDomain201Response addSendingDomain(addSendingDomainRequest)

Add a sending domain

Registers the domain with Amazon SES under this workspace&#39;s own tenant and returns the DNS records to publish: three DKIM CNAMEs, and an MX and SPF TXT for the custom MAIL FROM &#x60;bounce.&lt;domain&gt;&#x60;. Palsa checks automatically and the domain becomes &#x60;verified&#x60; once SES finds them. A domain another workspace holds is refused. Requires the &#x60;domains.write&#x60; scope.  Until email sending is live the domain is stored as &#x60;awaiting_provider&#x60; with no records; they appear as soon as it is. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.SendingDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    SendingDomainsApi apiInstance = new SendingDomainsApi(defaultClient);
    AddSendingDomainRequest addSendingDomainRequest = new AddSendingDomainRequest(); // AddSendingDomainRequest | 
    try {
      AddSendingDomain201Response result = apiInstance.addSendingDomain(addSendingDomainRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendingDomainsApi#addSendingDomain");
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
| **addSendingDomainRequest** | [**AddSendingDomainRequest**](AddSendingDomainRequest.md)|  | |

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

<a id="checkSendingDomain"></a>
# **checkSendingDomain**
> AddSendingDomain201Response checkSendingDomain(id)

Check a sending domain now

Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the &#x60;domains.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.SendingDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    SendingDomainsApi apiInstance = new SendingDomainsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AddSendingDomain201Response result = apiInstance.checkSendingDomain(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendingDomainsApi#checkSendingDomain");
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

<a id="getSendingDomain"></a>
# **getSendingDomain**
> AddSendingDomain201Response getSendingDomain(id)

Get a sending domain

Requires the &#x60;domains.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.SendingDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    SendingDomainsApi apiInstance = new SendingDomainsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AddSendingDomain201Response result = apiInstance.getSendingDomain(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendingDomainsApi#getSendingDomain");
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

<a id="listSendingDomains"></a>
# **listSendingDomains**
> ListSendingDomains200Response listSendingDomains()

List sending domains

Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the &#x60;domains.read&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.SendingDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    SendingDomainsApi apiInstance = new SendingDomainsApi(defaultClient);
    try {
      ListSendingDomains200Response result = apiInstance.listSendingDomains();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendingDomainsApi#listSendingDomains");
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

<a id="removeSendingDomain"></a>
# **removeSendingDomain**
> RemoveSendingDomain200Response removeSendingDomain(id)

Remove a sending domain

Removes the domain from Amazon SES and stops every address on it. Requires the &#x60;domains.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.SendingDomainsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    SendingDomainsApi apiInstance = new SendingDomainsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RemoveSendingDomain200Response result = apiInstance.removeSendingDomain(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SendingDomainsApi#removeSendingDomain");
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

