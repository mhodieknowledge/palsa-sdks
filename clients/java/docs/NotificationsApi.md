# NotificationsApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**describeMcp**](NotificationsApi.md#describeMcp) | **GET** /v1/mcp | What the MCP endpoint is |
| [**getNotification**](NotificationsApi.md#getNotification) | **GET** /v1/notifications/{id} | One send |
| [**listNotifications**](NotificationsApi.md#listNotifications) | **GET** /v1/notifications | List sends |
| [**quoteSend**](NotificationsApi.md#quoteSend) | **POST** /v1/quotes | Price a send without making it |
| [**sendNotification**](NotificationsApi.md#sendNotification) | **POST** /v1/notifications | Send a notification |


<a id="describeMcp"></a>
# **describeMcp**
> DescribeMcp200Response describeMcp()

What the MCP endpoint is

Palsa speaks the Model Context Protocol at this address, as JSON-RPC 2.0 over HTTP POST. It is deliberately **not** modelled as typed operations here: a generated method per JSON-RPC call would describe the transport rather than the protocol, and an agent should reach it through an MCP client, not a Palsa SDK.  An agent gets exactly the scopes and the mode of the key it is given. A sandbox key is the one to give it first. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.NotificationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    NotificationsApi apiInstance = new NotificationsApi(defaultClient);
    try {
      DescribeMcp200Response result = apiInstance.describeMcp();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NotificationsApi#describeMcp");
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

<a id="getNotification"></a>
# **getNotification**
> GetNotification200Response getNotification(id)

One send

Requires the &#x60;notifications.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.NotificationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    NotificationsApi apiInstance = new NotificationsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      GetNotification200Response result = apiInstance.getNotification(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NotificationsApi#getNotification");
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

<a id="listNotifications"></a>
# **listNotifications**
> ListNotifications200Response listNotifications(status, limit, cursor)

List sends

Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the &#x60;notifications.read&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.NotificationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    NotificationsApi apiInstance = new NotificationsApi(defaultClient);
    String status = "status_example"; // String | Only sends in this state.
    Integer limit = 25; // Integer | 
    String cursor = "cursor_example"; // String | The `nextCursor` from a previous page.
    try {
      ListNotifications200Response result = apiInstance.listNotifications(status, limit, cursor);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NotificationsApi#listNotifications");
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
| **status** | **String**| Only sends in this state. | [optional] |
| **limit** | **Integer**|  | [optional] [default to 25] |
| **cursor** | **String**| The &#x60;nextCursor&#x60; from a previous page. | [optional] |

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

<a id="quoteSend"></a>
# **quoteSend**
> QuoteSend200Response quoteSend(sendRequest)

Price a send without making it

The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. &#x60;recipients&#x60; carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read &#x60;recipientCount&#x60; and &#x60;units&#x60; unless you need the rows themselves.  Requires the &#x60;notifications.send&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.NotificationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    NotificationsApi apiInstance = new NotificationsApi(defaultClient);
    SendRequest sendRequest = new SendRequest(); // SendRequest | 
    try {
      QuoteSend200Response result = apiInstance.quoteSend(sendRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NotificationsApi#quoteSend");
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
| **sendRequest** | [**SendRequest**](SendRequest.md)|  | |

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

<a id="sendNotification"></a>
# **sendNotification**
> SendNotification202Response sendNotification(sendRequest, idempotencyKey)

Send a notification

Reserves credit, then sends. A key beginning &#x60;pk_test_&#x60; is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass &#x60;Idempotency-Key&#x60; for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the &#x60;notifications.send&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.NotificationsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://palsa.mhodieknowledge.workers.dev");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    NotificationsApi apiInstance = new NotificationsApi(defaultClient);
    SendRequest sendRequest = new SendRequest(); // SendRequest | 
    String idempotencyKey = "idempotencyKey_example"; // String | A repeat with the same key returns the first answer and sends nothing more.
    try {
      SendNotification202Response result = apiInstance.sendNotification(sendRequest, idempotencyKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NotificationsApi#sendNotification");
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
| **sendRequest** | [**SendRequest**](SendRequest.md)|  | |
| **idempotencyKey** | **String**| A repeat with the same key returns the first answer and sends nothing more. | [optional] |

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

