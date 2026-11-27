# BillingApi

All URIs are relative to *https://api.palsa.co.zw*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getBalances**](BillingApi.md#getBalances) | **GET** /v1/balances | Prepaid balances |


<a id="getBalances"></a>
# **getBalances**
> GetBalances200Response getBalances()

Prepaid balances

What is available now, what is already promised to sends in flight, and what has been used, per channel. Requires the &#x60;analytics.read&#x60; scope. 

### Example
```kotlin
// Import classes:
//import com.kuzikode.palsa.api.infrastructure.*
//import com.kuzikode.palsa.api.models.*

val apiInstance = BillingApi()
try {
    val result : GetBalances200Response = apiInstance.getBalances()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BillingApi#getBalances")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BillingApi#getBalances")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetBalances200Response**](GetBalances200Response.md)

### Authorization


Configure bearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

