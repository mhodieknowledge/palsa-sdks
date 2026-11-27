# SendingDomainsApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
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
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = SendingDomainsApi()
val addSendingDomainRequest : AddSendingDomainRequest =  // AddSendingDomainRequest | 
try {
    val result : AddSendingDomain201Response = apiInstance.addSendingDomain(addSendingDomainRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SendingDomainsApi#addSendingDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SendingDomainsApi#addSendingDomain")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **addSendingDomainRequest** | [**AddSendingDomainRequest**](AddSendingDomainRequest.md)|  | |

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="checkSendingDomain"></a>
# **checkSendingDomain**
> AddSendingDomain201Response checkSendingDomain(id)

Check a sending domain now

Asks SES straight away rather than waiting for the next automatic check. Up to twelve times an hour per domain. Requires the &#x60;domains.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = SendingDomainsApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : AddSendingDomain201Response = apiInstance.checkSendingDomain(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SendingDomainsApi#checkSendingDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SendingDomainsApi#checkSendingDomain")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getSendingDomain"></a>
# **getSendingDomain**
> AddSendingDomain201Response getSendingDomain(id)

Get a sending domain

Requires the &#x60;domains.read&#x60; scope.

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = SendingDomainsApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : AddSendingDomain201Response = apiInstance.getSendingDomain(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SendingDomainsApi#getSendingDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SendingDomainsApi#getSendingDomain")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="listSendingDomains"></a>
# **listSendingDomains**
> ListSendingDomains200Response listSendingDomains()

List sending domains

Every domain this workspace sends email from, with its verification state and the DNS records to publish. Requires the &#x60;domains.read&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = SendingDomainsApi()
try {
    val result : ListSendingDomains200Response = apiInstance.listSendingDomains()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SendingDomainsApi#listSendingDomains")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SendingDomainsApi#listSendingDomains")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListSendingDomains200Response**](ListSendingDomains200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="removeSendingDomain"></a>
# **removeSendingDomain**
> RemoveSendingDomain200Response removeSendingDomain(id)

Remove a sending domain

Removes the domain from Amazon SES and stops every address on it. Requires the &#x60;domains.write&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = SendingDomainsApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : RemoveSendingDomain200Response = apiInstance.removeSendingDomain(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SendingDomainsApi#removeSendingDomain")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SendingDomainsApi#removeSendingDomain")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**RemoveSendingDomain200Response**](RemoveSendingDomain200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

