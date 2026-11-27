# \NotificationsAPI

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DescribeMcp**](NotificationsAPI.md#DescribeMcp) | **Get** /v1/mcp | What the MCP endpoint is
[**GetNotification**](NotificationsAPI.md#GetNotification) | **Get** /v1/notifications/{id} | One send
[**ListNotifications**](NotificationsAPI.md#ListNotifications) | **Get** /v1/notifications | List sends
[**QuoteSend**](NotificationsAPI.md#QuoteSend) | **Post** /v1/quotes | Price a send without making it
[**SendNotification**](NotificationsAPI.md#SendNotification) | **Post** /v1/notifications | Send a notification



## DescribeMcp

> DescribeMcp200Response DescribeMcp(ctx).Execute()

What the MCP endpoint is



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/mhodieknowledge/palsa-sdks/clients/go"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NotificationsAPI.DescribeMcp(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NotificationsAPI.DescribeMcp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DescribeMcp`: DescribeMcp200Response
	fmt.Fprintf(os.Stdout, "Response from `NotificationsAPI.DescribeMcp`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDescribeMcpRequest struct via the builder pattern


### Return type

[**DescribeMcp200Response**](DescribeMcp200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetNotification

> GetNotification200Response GetNotification(ctx, id).Execute()

One send



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/mhodieknowledge/palsa-sdks/clients/go"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NotificationsAPI.GetNotification(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NotificationsAPI.GetNotification``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetNotification`: GetNotification200Response
	fmt.Fprintf(os.Stdout, "Response from `NotificationsAPI.GetNotification`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetNotificationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetNotification200Response**](GetNotification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListNotifications

> ListNotifications200Response ListNotifications(ctx).Status(status).Limit(limit).Cursor(cursor).Execute()

List sends



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/mhodieknowledge/palsa-sdks/clients/go"
)

func main() {
	status := "status_example" // string | Only sends in this state. (optional)
	limit := int32(56) // int32 |  (optional) (default to 25)
	cursor := "cursor_example" // string | The `nextCursor` from a previous page. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NotificationsAPI.ListNotifications(context.Background()).Status(status).Limit(limit).Cursor(cursor).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NotificationsAPI.ListNotifications``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListNotifications`: ListNotifications200Response
	fmt.Fprintf(os.Stdout, "Response from `NotificationsAPI.ListNotifications`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListNotificationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string** | Only sends in this state. | 
 **limit** | **int32** |  | [default to 25]
 **cursor** | **string** | The &#x60;nextCursor&#x60; from a previous page. | 

### Return type

[**ListNotifications200Response**](ListNotifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuoteSend

> QuoteSend200Response QuoteSend(ctx).SendRequest(sendRequest).Execute()

Price a send without making it



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/mhodieknowledge/palsa-sdks/clients/go"
)

func main() {
	sendRequest := *openapiclient.NewSendRequest([]openapiclient.Channel{openapiclient.Channel("sms")}, *openapiclient.NewRecipients()) // SendRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NotificationsAPI.QuoteSend(context.Background()).SendRequest(sendRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NotificationsAPI.QuoteSend``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `QuoteSend`: QuoteSend200Response
	fmt.Fprintf(os.Stdout, "Response from `NotificationsAPI.QuoteSend`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiQuoteSendRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendRequest** | [**SendRequest**](SendRequest.md) |  | 

### Return type

[**QuoteSend200Response**](QuoteSend200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SendNotification

> SendNotification202Response SendNotification(ctx).SendRequest(sendRequest).IdempotencyKey(idempotencyKey).Execute()

Send a notification



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/mhodieknowledge/palsa-sdks/clients/go"
)

func main() {
	sendRequest := *openapiclient.NewSendRequest([]openapiclient.Channel{openapiclient.Channel("sms")}, *openapiclient.NewRecipients()) // SendRequest | 
	idempotencyKey := "idempotencyKey_example" // string | A repeat with the same key returns the first answer and sends nothing more. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NotificationsAPI.SendNotification(context.Background()).SendRequest(sendRequest).IdempotencyKey(idempotencyKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NotificationsAPI.SendNotification``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SendNotification`: SendNotification202Response
	fmt.Fprintf(os.Stdout, "Response from `NotificationsAPI.SendNotification`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSendNotificationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendRequest** | [**SendRequest**](SendRequest.md) |  | 
 **idempotencyKey** | **string** | A repeat with the same key returns the first answer and sends nothing more. | 

### Return type

[**SendNotification202Response**](SendNotification202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

