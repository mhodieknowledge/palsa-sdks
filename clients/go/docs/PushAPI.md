# \PushAPI

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddPushApp**](PushAPI.md#AddPushApp) | **Post** /v1/push-apps | Connect an app&#39;s Firebase project
[**CheckPushApp**](PushAPI.md#CheckPushApp) | **Post** /v1/push-apps/{id}/check | Check a push app&#39;s access again
[**ConfirmPushAppOwnership**](PushAPI.md#ConfirmPushAppOwnership) | **Post** /v1/push-apps/{id}/ownership | Confirm the code, verifying a delegated app
[**GetPushApp**](PushAPI.md#GetPushApp) | **Get** /v1/push-apps/{id} | Get a push app
[**ListPushApps**](PushAPI.md#ListPushApps) | **Get** /v1/push-apps | List push apps
[**ListPushTopics**](PushAPI.md#ListPushTopics) | **Get** /v1/push-topics | List topics and how many devices each has
[**RemovePushApp**](PushAPI.md#RemovePushApp) | **Delete** /v1/push-apps/{id} | Remove a push app
[**ReplacePushAppKey**](PushAPI.md#ReplacePushAppKey) | **Put** /v1/push-apps/{id}/key | Replace a push app&#39;s service-account key
[**SendPushAppOwnershipCode**](PushAPI.md#SendPushAppOwnershipCode) | **Post** /v1/push-apps/{id}/ownership-code | Push a six-digit code to one of your devices
[**SubscribeToPushTopic**](PushAPI.md#SubscribeToPushTopic) | **Post** /v1/push-topics/{topic}/subscribe | Subscribe devices to a topic
[**UnsubscribeFromPushTopic**](PushAPI.md#UnsubscribeFromPushTopic) | **Post** /v1/push-topics/{topic}/unsubscribe | Unsubscribe devices from a topic
[**UpdatePushApp**](PushAPI.md#UpdatePushApp) | **Patch** /v1/push-apps/{id} | Rename a push app or make it the default



## AddPushApp

> InlineObject1 AddPushApp(ctx).PushAppCreate(pushAppCreate).Execute()

Connect an app's Firebase project



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
	pushAppCreate := *openapiclient.NewPushAppCreate("Name_example", "AuthMode_example") // PushAppCreate | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.AddPushApp(context.Background()).PushAppCreate(pushAppCreate).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.AddPushApp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddPushApp`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.AddPushApp`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddPushAppRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pushAppCreate** | [**PushAppCreate**](PushAppCreate.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckPushApp

> InlineObject1 CheckPushApp(ctx, id).Execute()

Check a push app's access again



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
	resp, r, err := apiClient.PushAPI.CheckPushApp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.CheckPushApp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckPushApp`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.CheckPushApp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckPushAppRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ConfirmPushAppOwnership

> InlineObject1 ConfirmPushAppOwnership(ctx, id).ConfirmPushAppOwnershipRequest(confirmPushAppOwnershipRequest).Execute()

Confirm the code, verifying a delegated app



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
	confirmPushAppOwnershipRequest := *openapiclient.NewConfirmPushAppOwnershipRequest("Code_example") // ConfirmPushAppOwnershipRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.ConfirmPushAppOwnership(context.Background(), id).ConfirmPushAppOwnershipRequest(confirmPushAppOwnershipRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.ConfirmPushAppOwnership``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ConfirmPushAppOwnership`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.ConfirmPushAppOwnership`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiConfirmPushAppOwnershipRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **confirmPushAppOwnershipRequest** | [**ConfirmPushAppOwnershipRequest**](ConfirmPushAppOwnershipRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPushApp

> InlineObject1 GetPushApp(ctx, id).Execute()

Get a push app



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
	resp, r, err := apiClient.PushAPI.GetPushApp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.GetPushApp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPushApp`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.GetPushApp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPushAppRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListPushApps

> ListPushApps200Response ListPushApps(ctx).Execute()

List push apps



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
	resp, r, err := apiClient.PushAPI.ListPushApps(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.ListPushApps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListPushApps`: ListPushApps200Response
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.ListPushApps`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiListPushAppsRequest struct via the builder pattern


### Return type

[**ListPushApps200Response**](ListPushApps200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListPushTopics

> ListPushTopics200Response ListPushTopics(ctx).Execute()

List topics and how many devices each has



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
	resp, r, err := apiClient.PushAPI.ListPushTopics(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.ListPushTopics``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListPushTopics`: ListPushTopics200Response
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.ListPushTopics`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiListPushTopicsRequest struct via the builder pattern


### Return type

[**ListPushTopics200Response**](ListPushTopics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemovePushApp

> InlineObject RemovePushApp(ctx, id).Execute()

Remove a push app



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
	resp, r, err := apiClient.PushAPI.RemovePushApp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.RemovePushApp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RemovePushApp`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.RemovePushApp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRemovePushAppRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReplacePushAppKey

> InlineObject1 ReplacePushAppKey(ctx, id).ReplacePushAppKeyRequest(replacePushAppKeyRequest).Execute()

Replace a push app's service-account key



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
	replacePushAppKeyRequest := *openapiclient.NewReplacePushAppKeyRequest("ServiceAccount_example") // ReplacePushAppKeyRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.ReplacePushAppKey(context.Background(), id).ReplacePushAppKeyRequest(replacePushAppKeyRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.ReplacePushAppKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ReplacePushAppKey`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.ReplacePushAppKey`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiReplacePushAppKeyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **replacePushAppKeyRequest** | [**ReplacePushAppKeyRequest**](ReplacePushAppKeyRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SendPushAppOwnershipCode

> InlineObject SendPushAppOwnershipCode(ctx, id).SendPushAppOwnershipCodeRequest(sendPushAppOwnershipCodeRequest).Execute()

Push a six-digit code to one of your devices



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
	sendPushAppOwnershipCodeRequest := *openapiclient.NewSendPushAppOwnershipCodeRequest("DeviceToken_example") // SendPushAppOwnershipCodeRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.SendPushAppOwnershipCode(context.Background(), id).SendPushAppOwnershipCodeRequest(sendPushAppOwnershipCodeRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.SendPushAppOwnershipCode``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SendPushAppOwnershipCode`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.SendPushAppOwnershipCode`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSendPushAppOwnershipCodeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **sendPushAppOwnershipCodeRequest** | [**SendPushAppOwnershipCodeRequest**](SendPushAppOwnershipCodeRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SubscribeToPushTopic

> InlineObject2 SubscribeToPushTopic(ctx, topic).DeviceTargets(deviceTargets).Execute()

Subscribe devices to a topic



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
	topic := "topic_example" // string | 
	deviceTargets := *openapiclient.NewDeviceTargets() // DeviceTargets | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.SubscribeToPushTopic(context.Background(), topic).DeviceTargets(deviceTargets).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.SubscribeToPushTopic``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SubscribeToPushTopic`: InlineObject2
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.SubscribeToPushTopic`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**topic** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSubscribeToPushTopicRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **deviceTargets** | [**DeviceTargets**](DeviceTargets.md) |  | 

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UnsubscribeFromPushTopic

> InlineObject2 UnsubscribeFromPushTopic(ctx, topic).DeviceTargets(deviceTargets).Execute()

Unsubscribe devices from a topic



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
	topic := "topic_example" // string | 
	deviceTargets := *openapiclient.NewDeviceTargets() // DeviceTargets | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.UnsubscribeFromPushTopic(context.Background(), topic).DeviceTargets(deviceTargets).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.UnsubscribeFromPushTopic``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UnsubscribeFromPushTopic`: InlineObject2
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.UnsubscribeFromPushTopic`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**topic** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUnsubscribeFromPushTopicRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **deviceTargets** | [**DeviceTargets**](DeviceTargets.md) |  | 

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdatePushApp

> InlineObject1 UpdatePushApp(ctx, id).UpdatePushAppRequest(updatePushAppRequest).Execute()

Rename a push app or make it the default



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
	updatePushAppRequest := *openapiclient.NewUpdatePushAppRequest() // UpdatePushAppRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PushAPI.UpdatePushApp(context.Background(), id).UpdatePushAppRequest(updatePushAppRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PushAPI.UpdatePushApp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdatePushApp`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `PushAPI.UpdatePushApp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdatePushAppRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **updatePushAppRequest** | [**UpdatePushAppRequest**](UpdatePushAppRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

