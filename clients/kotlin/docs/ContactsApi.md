# ContactsApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createContact**](ContactsApi.md#createContact) | **POST** /v1/contacts | Save a contact |
| [**deleteContact**](ContactsApi.md#deleteContact) | **DELETE** /v1/contacts/{id} | Erase a contact |
| [**listContacts**](ContactsApi.md#listContacts) | **GET** /v1/contacts | List contacts |
| [**registerDevice**](ContactsApi.md#registerDevice) | **POST** /v1/devices | Register a device for push |


<a id="createContact"></a>
# **createContact**
> CreateContact201Response createContact(contactCreate)

Save a contact

Give an email address or a phone number, or both. &#x60;state&#x60; is &#x60;pending&#x60; unless you can show the person consented, and marketing only goes to &#x60;consented&#x60; contacts. Requires the &#x60;contacts.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = ContactsApi()
val contactCreate : ContactCreate =  // ContactCreate | 
try {
    val result : CreateContact201Response = apiInstance.createContact(contactCreate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContactsApi#createContact")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContactsApi#createContact")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **contactCreate** | [**ContactCreate**](ContactCreate.md)|  | |

### Return type

[**CreateContact201Response**](CreateContact201Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="deleteContact"></a>
# **deleteContact**
> DeleteContact200Response deleteContact(id)

Erase a contact

Requires the &#x60;contacts.write&#x60; scope.  Here as well as in the console because a deletion request reaches your application at least as often as it reaches your staff.  Their deliveries are kept and their address is removed from them, so the record of what was sent and charged survives without saying who it went to. A suppression for that address is also kept: dropping it would mean the same person, imported again later, is sent to after asking not to be. Their devices and audience memberships go with them. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = ContactsApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : DeleteContact200Response = apiInstance.deleteContact(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContactsApi#deleteContact")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContactsApi#deleteContact")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**DeleteContact200Response**](DeleteContact200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="listContacts"></a>
# **listContacts**
> ListContacts200Response listContacts(limit)

List contacts

Newest first. Requires the &#x60;contacts.read&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = ContactsApi()
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : ListContacts200Response = apiInstance.listContacts(limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContactsApi#listContacts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContactsApi#listContacts")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**|  | [optional] [default to 50] |

### Return type

[**ListContacts200Response**](ListContacts200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="registerDevice"></a>
# **registerDevice**
> RegisterDevice201Response registerDevice(deviceRegister)

Register a device for push

Registering the same token again updates it rather than adding another, and revives one that had been invalidated. Requires the &#x60;contacts.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = ContactsApi()
val deviceRegister : DeviceRegister =  // DeviceRegister | 
try {
    val result : RegisterDevice201Response = apiInstance.registerDevice(deviceRegister)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContactsApi#registerDevice")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContactsApi#registerDevice")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **deviceRegister** | [**DeviceRegister**](DeviceRegister.md)|  | |

### Return type

[**RegisterDevice201Response**](RegisterDevice201Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

