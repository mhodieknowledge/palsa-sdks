# VerificationApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**checkVerification**](VerificationApi.md#checkVerification) | **POST** /v1/verifications/{id}/check | Check a code |
| [**startVerification**](VerificationApi.md#startVerification) | **POST** /v1/verifications | Send a one-time code |


<a id="checkVerification"></a>
# **checkVerification**
> CheckVerification200Response checkVerification(id, checkVerificationRequest)

Check a code

Wrong guesses are counted and the challenge locks after too many, so do not guess. Requires the &#x60;verifications.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = VerificationApi()
val id : kotlin.String = id_example // kotlin.String | 
val checkVerificationRequest : CheckVerificationRequest =  // CheckVerificationRequest | 
try {
    val result : CheckVerification200Response = apiInstance.checkVerification(id, checkVerificationRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling VerificationApi#checkVerification")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling VerificationApi#checkVerification")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **checkVerificationRequest** | [**CheckVerificationRequest**](CheckVerificationRequest.md)|  | |

### Return type

[**CheckVerification200Response**](CheckVerification200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="startVerification"></a>
# **startVerification**
> StartVerification201Response startVerification(verificationRequest)

Send a one-time code

Palsa generates the code, keeps only a salted hash of it and sends it to the recipient, so nobody else ever sees it. With a sandbox key it comes back as &#x60;sandboxCode&#x60;, which is what lets you integrate without a handset.  At most five challenges per address every fifteen minutes. A code counts as a transactional send, so quiet hours do not hold it. Requires the &#x60;verifications.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = VerificationApi()
val verificationRequest : VerificationRequest =  // VerificationRequest | 
try {
    val result : StartVerification201Response = apiInstance.startVerification(verificationRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling VerificationApi#startVerification")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling VerificationApi#startVerification")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **verificationRequest** | [**VerificationRequest**](VerificationRequest.md)|  | |

### Return type

[**StartVerification201Response**](StartVerification201Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

