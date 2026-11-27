# ContactsApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createContact**](ContactsApi.md#createContact) | **POST** /v1/contacts | Save a contact |
| [**deleteContact**](ContactsApi.md#deleteContact) | **DELETE** /v1/contacts/{id} | Erase a contact |
| [**listContacts**](ContactsApi.md#listContacts) | **GET** /v1/contacts | List contacts |
| [**listDevices**](ContactsApi.md#listDevices) | **GET** /v1/devices | List registered devices |
| [**registerDevice**](ContactsApi.md#registerDevice) | **POST** /v1/devices | Register a device for push |
| [**unregisterDevice**](ContactsApi.md#unregisterDevice) | **POST** /v1/devices/unregister | Stop sending to a device |


<a id="createContact"></a>
# **createContact**
> CreateContact201Response createContact(contactCreate)

Save a contact

Give an email address or a phone number, or both. &#x60;state&#x60; is &#x60;pending&#x60; unless you can show the person consented, and marketing only goes to &#x60;consented&#x60; contacts. Requires the &#x60;contacts.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.ContactsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    ContactsApi apiInstance = new ContactsApi(defaultClient);
    ContactCreate contactCreate = new ContactCreate(); // ContactCreate | 
    try {
      CreateContact201Response result = apiInstance.createContact(contactCreate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactsApi#createContact");
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
| **contactCreate** | [**ContactCreate**](ContactCreate.md)|  | |

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

<a id="deleteContact"></a>
# **deleteContact**
> DeleteContact200Response deleteContact(id)

Erase a contact

Requires the &#x60;contacts.write&#x60; scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.ContactsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    ContactsApi apiInstance = new ContactsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      DeleteContact200Response result = apiInstance.deleteContact(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactsApi#deleteContact");
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

<a id="listContacts"></a>
# **listContacts**
> ListContacts200Response listContacts(limit)

List contacts

Newest first. Requires the &#x60;contacts.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.ContactsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    ContactsApi apiInstance = new ContactsApi(defaultClient);
    Integer limit = 50; // Integer | 
    try {
      ListContacts200Response result = apiInstance.listContacts(limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactsApi#listContacts");
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
| **limit** | **Integer**|  | [optional] [default to 50] |

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

<a id="listDevices"></a>
# **listDevices**
> ListDevices200Response listDevices(contactId)

List registered devices

The newest 200, optionally for one contact. Tokens are never returned. Requires the &#x60;contacts.read&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.ContactsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    ContactsApi apiInstance = new ContactsApi(defaultClient);
    String contactId = "contactId_example"; // String | 
    try {
      ListDevices200Response result = apiInstance.listDevices(contactId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactsApi#listDevices");
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
| **contactId** | **String**|  | [optional] |

### Return type

[**ListDevices200Response**](ListDevices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The devices. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="registerDevice"></a>
# **registerDevice**
> RegisterDevice201Response registerDevice(deviceRegister)

Register a device for push

Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the &#x60;contacts.write&#x60; scope. 

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.ContactsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    ContactsApi apiInstance = new ContactsApi(defaultClient);
    DeviceRegister deviceRegister = new DeviceRegister(); // DeviceRegister | 
    try {
      RegisterDevice201Response result = apiInstance.registerDevice(deviceRegister);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactsApi#registerDevice");
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
| **deviceRegister** | [**DeviceRegister**](DeviceRegister.md)|  | |

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
| **200** | A refreshed token replaced &#x60;previousToken&#x60; in place. |  -  |
| **401** | No key, or a key that has been revoked. |  -  |
| **403** | The key is missing the scope this operation needs. |  -  |
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

<a id="unregisterDevice"></a>
# **unregisterDevice**
> InlineObject unregisterDevice(unregisterDeviceRequest)

Stop sending to a device

For sign-out, or when the person turns notifications off. The device leaves its topics. Requires the &#x60;contacts.write&#x60; scope.

### Example
```java
// Import classes:
import com.kuzikode.palsa.api.ApiClient;
import com.kuzikode.palsa.api.ApiException;
import com.kuzikode.palsa.api.Configuration;
import com.kuzikode.palsa.api.auth.*;
import com.kuzikode.palsa.api.models.*;
import com.kuzikode.palsa.api.api.ContactsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.palsa.co.zw");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    ContactsApi apiInstance = new ContactsApi(defaultClient);
    UnregisterDeviceRequest unregisterDeviceRequest = new UnregisterDeviceRequest(); // UnregisterDeviceRequest | 
    try {
      InlineObject result = apiInstance.unregisterDevice(unregisterDeviceRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactsApi#unregisterDevice");
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
| **unregisterDeviceRequest** | [**UnregisterDeviceRequest**](UnregisterDeviceRequest.md)|  | |

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
| **422** | The request was wrong. &#x60;fields&#x60; names what, by field. |  -  |
| **429** | Too many requests for this key&#39;s plan. Try again shortly. |  -  |

