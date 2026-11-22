# NotificationsApi

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
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
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = NotificationsApi()
try {
    val result : DescribeMcp200Response = apiInstance.describeMcp()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NotificationsApi#describeMcp")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NotificationsApi#describeMcp")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DescribeMcp200Response**](DescribeMcp200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getNotification"></a>
# **getNotification**
> GetNotification200Response getNotification(id)

One send

Requires the &#x60;notifications.read&#x60; scope.

### Example
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = NotificationsApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : GetNotification200Response = apiInstance.getNotification(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NotificationsApi#getNotification")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NotificationsApi#getNotification")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

[**GetNotification200Response**](GetNotification200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="listNotifications"></a>
# **listNotifications**
> ListNotifications200Response listNotifications(status, limit, cursor)

List sends

Newest first, paginated by cursor rather than offset, because an offset drifts while new sends arrive. Requires the &#x60;notifications.read&#x60; scope. 

### Example
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = NotificationsApi()
val status : kotlin.String = status_example // kotlin.String | Only sends in this state.
val limit : kotlin.Int = 56 // kotlin.Int | 
val cursor : kotlin.String = cursor_example // kotlin.String | The `nextCursor` from a previous page.
try {
    val result : ListNotifications200Response = apiInstance.listNotifications(status, limit, cursor)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NotificationsApi#listNotifications")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NotificationsApi#listNotifications")
    e.printStackTrace()
}
```

### Parameters
| **status** | **kotlin.String**| Only sends in this state. | [optional] |
| **limit** | **kotlin.Int**|  | [optional] [default to 25] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cursor** | **kotlin.String**| The &#x60;nextCursor&#x60; from a previous page. | [optional] |

### Return type

[**ListNotifications200Response**](ListNotifications200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="quoteSend"></a>
# **quoteSend**
> QuoteSend200Response quoteSend(sendRequest)

Price a send without making it

The same calculation the send itself uses: what it would cost, who would be left out and why, and anything that would stop it. Reserves nothing and sends nothing.  Note the size of the answer. &#x60;recipients&#x60; carries a row per recipient per channel, including their address, so quoting a fifty-thousand-contact audience returns fifty thousand rows. Read &#x60;recipientCount&#x60; and &#x60;units&#x60; unless you need the rows themselves.  Requires the &#x60;notifications.send&#x60; scope. 

### Example
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = NotificationsApi()
val sendRequest : SendRequest =  // SendRequest | 
try {
    val result : QuoteSend200Response = apiInstance.quoteSend(sendRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NotificationsApi#quoteSend")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NotificationsApi#quoteSend")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **sendRequest** | [**SendRequest**](SendRequest.md)|  | |

### Return type

[**QuoteSend200Response**](QuoteSend200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="sendNotification"></a>
# **sendNotification**
> SendNotification202Response sendNotification(sendRequest, idempotencyKey)

Send a notification

Reserves credit, then sends. A key beginning &#x60;pk_test_&#x60; is a sandbox key: the send is accepted, costs nothing and reaches nobody.  Pass &#x60;Idempotency-Key&#x60; for anything that must not go twice. A repeat with the same key returns the first answer and sends nothing more, which is what makes retrying after a timeout safe.  Requires the &#x60;notifications.send&#x60; scope. 

### Example
```kotlin
// Import classes:
//import io.github.mhodieknowledge.api.infrastructure.*
//import io.github.mhodieknowledge.api.models.*

val apiInstance = NotificationsApi()
val sendRequest : SendRequest =  // SendRequest | 
val idempotencyKey : kotlin.String = idempotencyKey_example // kotlin.String | A repeat with the same key returns the first answer and sends nothing more.
try {
    val result : SendNotification202Response = apiInstance.sendNotification(sendRequest, idempotencyKey)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NotificationsApi#sendNotification")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NotificationsApi#sendNotification")
    e.printStackTrace()
}
```

### Parameters
| **sendRequest** | [**SendRequest**](SendRequest.md)|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **idempotencyKey** | **kotlin.String**| A repeat with the same key returns the first answer and sends nothing more. | [optional] |

### Return type

[**SendNotification202Response**](SendNotification202Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

