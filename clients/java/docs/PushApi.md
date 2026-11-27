# PushApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addPushApp**](PushApi.md#addPushApp) | **POST** /v1/push-apps | Connect an app&#39;s Firebase project |
| [**checkPushApp**](PushApi.md#checkPushApp) | **POST** /v1/push-apps/{id}/check | Check a push app&#39;s access again |
| [**confirmPushAppOwnership**](PushApi.md#confirmPushAppOwnership) | **POST** /v1/push-apps/{id}/ownership | Confirm the code, verifying a delegated app |
| [**getPushApp**](PushApi.md#getPushApp) | **GET** /v1/push-apps/{id} | Get a push app |
| [**listPushApps**](PushApi.md#listPushApps) | **GET** /v1/push-apps | List push apps |
| [**listPushTopics**](PushApi.md#listPushTopics) | **GET** /v1/push-topics | List topics and how many devices each has |
| [**removePushApp**](PushApi.md#removePushApp) | **DELETE** /v1/push-apps/{id} | Remove a push app |
| [**replacePushAppKey**](PushApi.md#replacePushAppKey) | **PUT** /v1/push-apps/{id}/key | Replace a push app&#39;s service-account key |
| [**sendPushAppOwnershipCode**](PushApi.md#sendPushAppOwnershipCode) | **POST** /v1/push-apps/{id}/ownership-code | Push a six-digit code to one of your devices |
| [**subscribeToPushTopic**](PushApi.md#subscribeToPushTopic) | **POST** /v1/push-topics/{topic}/subscribe | Subscribe devices to a topic |
| [**unsubscribeFromPushTopic**](PushApi.md#unsubscribeFromPushTopic) | **POST** /v1/push-topics/{topic}/unsubscribe | Unsubscribe devices from a topic |
| [**updatePushApp**](PushApi.md#updatePushApp) | **PATCH** /v1/push-apps/{id} | Rename a push app or make it the default |


<a id="addPushApp"></a>
# **addPushApp**
> InlineObject1 addPushApp(pushAppCreate)

Connect an app&#39;s Firebase project

With &#x60;service_account&#x60;, the key is checked with Firebase (a validate-only message, which sends nothing) and the app is verified at once. With &#x60;delegated&#x60;, grant &#x60;grantTo&#x60; the Firebase Cloud Messaging API Admin role on the project, then prove ownership with a code sent to one of your devices. Requires the &#x60;push.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    PushAppCreate pushAppCreate = new PushAppCreate(); // PushAppCreate | 
    try {
      InlineObject1 result = apiInstance.addPushApp(pushAppCreate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#addPushApp");
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
| **pushAppCreate** | [**PushAppCreate**](PushAppCreate.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The push app. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **409** | That already exists. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="checkPushApp"></a>
# **checkPushApp**
> InlineObject1 checkPushApp(id)

Check a push app&#39;s access again

Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      InlineObject1 result = apiInstance.checkPushApp(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#checkPushApp");
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

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The push app. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="confirmPushAppOwnership"></a>
# **confirmPushAppOwnership**
> InlineObject1 confirmPushAppOwnership(id, confirmPushAppOwnershipRequest)

Confirm the code, verifying a delegated app

Five wrong codes and a new one must be sent. Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    ConfirmPushAppOwnershipRequest confirmPushAppOwnershipRequest = new ConfirmPushAppOwnershipRequest(); // ConfirmPushAppOwnershipRequest | 
    try {
      InlineObject1 result = apiInstance.confirmPushAppOwnership(id, confirmPushAppOwnershipRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#confirmPushAppOwnership");
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
| **confirmPushAppOwnershipRequest** | [**ConfirmPushAppOwnershipRequest**](ConfirmPushAppOwnershipRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The push app. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="getPushApp"></a>
# **getPushApp**
> InlineObject1 getPushApp(id)

Get a push app

Requires the &#x60;push.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      InlineObject1 result = apiInstance.getPushApp(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#getPushApp");
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

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The push app. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="listPushApps"></a>
# **listPushApps**
> ListPushApps200Response listPushApps()

List push apps

Requires the &#x60;push.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    try {
      ListPushApps200Response result = apiInstance.listPushApps();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#listPushApps");
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

[**ListPushApps200Response**](ListPushApps200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The workspace&#39;s apps. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="listPushTopics"></a>
# **listPushTopics**
> ListPushTopics200Response listPushTopics()

List topics and how many devices each has

Requires the &#x60;push.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    try {
      ListPushTopics200Response result = apiInstance.listPushTopics();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#listPushTopics");
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

[**ListPushTopics200Response**](ListPushTopics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The topics. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="removePushApp"></a>
# **removePushApp**
> InlineObject removePushApp(id)

Remove a push app

Its key is deleted and its devices stop receiving push. Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      InlineObject result = apiInstance.removePushApp(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#removePushApp");
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

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Done. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="replacePushAppKey"></a>
# **replacePushAppKey**
> InlineObject1 replacePushAppKey(id, replacePushAppKeyRequest)

Replace a push app&#39;s service-account key

For rotating a key. The new one must be for the same project. Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    ReplacePushAppKeyRequest replacePushAppKeyRequest = new ReplacePushAppKeyRequest(); // ReplacePushAppKeyRequest | 
    try {
      InlineObject1 result = apiInstance.replacePushAppKey(id, replacePushAppKeyRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#replacePushAppKey");
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
| **replacePushAppKeyRequest** | [**ReplacePushAppKeyRequest**](ReplacePushAppKeyRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The push app. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="sendPushAppOwnershipCode"></a>
# **sendPushAppOwnershipCode**
> InlineObject sendPushAppOwnershipCode(id, sendPushAppOwnershipCodeRequest)

Push a six-digit code to one of your devices

Delegated apps only. The code arrives as a notification and as the &#x60;palsa_verification_code&#x60; data key, and lasts 15 minutes. Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    SendPushAppOwnershipCodeRequest sendPushAppOwnershipCodeRequest = new SendPushAppOwnershipCodeRequest(); // SendPushAppOwnershipCodeRequest | 
    try {
      InlineObject result = apiInstance.sendPushAppOwnershipCode(id, sendPushAppOwnershipCodeRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#sendPushAppOwnershipCode");
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
| **sendPushAppOwnershipCodeRequest** | [**SendPushAppOwnershipCodeRequest**](SendPushAppOwnershipCodeRequest.md)|  | |

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
| **200** | Done. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **409** | That already exists. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="subscribeToPushTopic"></a>
# **subscribeToPushTopic**
> InlineObject2 subscribeToPushTopic(topic, deviceTargets)

Subscribe devices to a topic

Through each device&#39;s own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through &#x60;previousToken&#x60; is subscribed again automatically. Requires the &#x60;push.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String topic = "topic_example"; // String | 
    DeviceTargets deviceTargets = new DeviceTargets(); // DeviceTargets | 
    try {
      InlineObject2 result = apiInstance.subscribeToPushTopic(topic, deviceTargets);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#subscribeToPushTopic");
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
| **topic** | **String**|  | |
| **deviceTargets** | [**DeviceTargets**](DeviceTargets.md)|  | |

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Which devices Firebase took, and which it refused and why. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="unsubscribeFromPushTopic"></a>
# **unsubscribeFromPushTopic**
> InlineObject2 unsubscribeFromPushTopic(topic, deviceTargets)

Unsubscribe devices from a topic

Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String topic = "topic_example"; // String | 
    DeviceTargets deviceTargets = new DeviceTargets(); // DeviceTargets | 
    try {
      InlineObject2 result = apiInstance.unsubscribeFromPushTopic(topic, deviceTargets);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#unsubscribeFromPushTopic");
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
| **topic** | **String**|  | |
| **deviceTargets** | [**DeviceTargets**](DeviceTargets.md)|  | |

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Which devices Firebase took, and which it refused and why. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="updatePushApp"></a>
# **updatePushApp**
> InlineObject1 updatePushApp(id, updatePushAppRequest)

Rename a push app or make it the default

Requires the &#x60;push.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.PushApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    PushApi apiInstance = new PushApi(defaultClient);
    String id = "id_example"; // String | 
    UpdatePushAppRequest updatePushAppRequest = new UpdatePushAppRequest(); // UpdatePushAppRequest | 
    try {
      InlineObject1 result = apiInstance.updatePushApp(id, updatePushAppRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PushApi#updatePushApp");
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
| **updatePushAppRequest** | [**UpdatePushAppRequest**](UpdatePushAppRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The push app. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **404** | No such thing in this workspace. An id from elsewhere answers the same way. |  -  |
| **409** | That already exists. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

