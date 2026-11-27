# PushApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
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
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val pushAppCreate : PushAppCreate =  // PushAppCreate | 
try {
    val result : InlineObject1 = apiInstance.addPushApp(pushAppCreate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#addPushApp")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#addPushApp")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pushAppCreate** | [**PushAppCreate**](PushAppCreate.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="checkPushApp"></a>
# **checkPushApp**
> InlineObject1 checkPushApp(id)

Check a push app&#39;s access again

Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : InlineObject1 = apiInstance.checkPushApp(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#checkPushApp")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#checkPushApp")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="confirmPushAppOwnership"></a>
# **confirmPushAppOwnership**
> InlineObject1 confirmPushAppOwnership(id, confirmPushAppOwnershipRequest)

Confirm the code, verifying a delegated app

Five wrong codes and a new one must be sent. Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
val confirmPushAppOwnershipRequest : ConfirmPushAppOwnershipRequest =  // ConfirmPushAppOwnershipRequest | 
try {
    val result : InlineObject1 = apiInstance.confirmPushAppOwnership(id, confirmPushAppOwnershipRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#confirmPushAppOwnership")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#confirmPushAppOwnership")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **confirmPushAppOwnershipRequest** | [**ConfirmPushAppOwnershipRequest**](ConfirmPushAppOwnershipRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="getPushApp"></a>
# **getPushApp**
> InlineObject1 getPushApp(id)

Get a push app

Requires the &#x60;push.read&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : InlineObject1 = apiInstance.getPushApp(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#getPushApp")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#getPushApp")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="listPushApps"></a>
# **listPushApps**
> ListPushApps200Response listPushApps()

List push apps

Requires the &#x60;push.read&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
try {
    val result : ListPushApps200Response = apiInstance.listPushApps()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#listPushApps")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#listPushApps")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPushApps200Response**](ListPushApps200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="listPushTopics"></a>
# **listPushTopics**
> ListPushTopics200Response listPushTopics()

List topics and how many devices each has

Requires the &#x60;push.read&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
try {
    val result : ListPushTopics200Response = apiInstance.listPushTopics()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#listPushTopics")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#listPushTopics")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPushTopics200Response**](ListPushTopics200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="removePushApp"></a>
# **removePushApp**
> InlineObject removePushApp(id)

Remove a push app

Its key is deleted and its devices stop receiving push. Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : InlineObject = apiInstance.removePushApp(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#removePushApp")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#removePushApp")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="replacePushAppKey"></a>
# **replacePushAppKey**
> InlineObject1 replacePushAppKey(id, replacePushAppKeyRequest)

Replace a push app&#39;s service-account key

For rotating a key. The new one must be for the same project. Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
val replacePushAppKeyRequest : ReplacePushAppKeyRequest =  // ReplacePushAppKeyRequest | 
try {
    val result : InlineObject1 = apiInstance.replacePushAppKey(id, replacePushAppKeyRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#replacePushAppKey")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#replacePushAppKey")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **replacePushAppKeyRequest** | [**ReplacePushAppKeyRequest**](ReplacePushAppKeyRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="sendPushAppOwnershipCode"></a>
# **sendPushAppOwnershipCode**
> InlineObject sendPushAppOwnershipCode(id, sendPushAppOwnershipCodeRequest)

Push a six-digit code to one of your devices

Delegated apps only. The code arrives as a notification and as the &#x60;palsa_verification_code&#x60; data key, and lasts 15 minutes. Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
val sendPushAppOwnershipCodeRequest : SendPushAppOwnershipCodeRequest =  // SendPushAppOwnershipCodeRequest | 
try {
    val result : InlineObject = apiInstance.sendPushAppOwnershipCode(id, sendPushAppOwnershipCodeRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#sendPushAppOwnershipCode")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#sendPushAppOwnershipCode")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **sendPushAppOwnershipCodeRequest** | [**SendPushAppOwnershipCodeRequest**](SendPushAppOwnershipCodeRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="subscribeToPushTopic"></a>
# **subscribeToPushTopic**
> InlineObject2 subscribeToPushTopic(topic, deviceTargets)

Subscribe devices to a topic

Through each device&#39;s own app. A token Firebase no longer knows is invalidated. A device whose token is later refreshed through &#x60;previousToken&#x60; is subscribed again automatically. Requires the &#x60;push.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val topic : kotlin.String = topic_example // kotlin.String | 
val deviceTargets : DeviceTargets =  // DeviceTargets | 
try {
    val result : InlineObject2 = apiInstance.subscribeToPushTopic(topic, deviceTargets)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#subscribeToPushTopic")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#subscribeToPushTopic")
    e.printStackTrace()
}
```

### Parameters
| **topic** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **deviceTargets** | [**DeviceTargets**](DeviceTargets.md)|  | |

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="unsubscribeFromPushTopic"></a>
# **unsubscribeFromPushTopic**
> InlineObject2 unsubscribeFromPushTopic(topic, deviceTargets)

Unsubscribe devices from a topic

Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val topic : kotlin.String = topic_example // kotlin.String | 
val deviceTargets : DeviceTargets =  // DeviceTargets | 
try {
    val result : InlineObject2 = apiInstance.unsubscribeFromPushTopic(topic, deviceTargets)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#unsubscribeFromPushTopic")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#unsubscribeFromPushTopic")
    e.printStackTrace()
}
```

### Parameters
| **topic** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **deviceTargets** | [**DeviceTargets**](DeviceTargets.md)|  | |

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="updatePushApp"></a>
# **updatePushApp**
> InlineObject1 updatePushApp(id, updatePushAppRequest)

Rename a push app or make it the default

Requires the &#x60;push.write&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = PushApi()
val id : kotlin.String = id_example // kotlin.String | 
val updatePushAppRequest : UpdatePushAppRequest =  // UpdatePushAppRequest | 
try {
    val result : InlineObject1 = apiInstance.updatePushApp(id, updatePushAppRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PushApi#updatePushApp")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PushApi#updatePushApp")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **updatePushAppRequest** | [**UpdatePushAppRequest**](UpdatePushAppRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

