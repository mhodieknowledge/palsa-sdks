# \SendingDomainsAPI

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddSendingDomain**](SendingDomainsAPI.md#AddSendingDomain) | **Post** /v1/sending-domains | Add a sending domain
[**CheckSendingDomain**](SendingDomainsAPI.md#CheckSendingDomain) | **Post** /v1/sending-domains/{id}/check | Check a sending domain now
[**GetSendingDomain**](SendingDomainsAPI.md#GetSendingDomain) | **Get** /v1/sending-domains/{id} | Get a sending domain
[**ListSendingDomains**](SendingDomainsAPI.md#ListSendingDomains) | **Get** /v1/sending-domains | List sending domains
[**RemoveSendingDomain**](SendingDomainsAPI.md#RemoveSendingDomain) | **Delete** /v1/sending-domains/{id} | Remove a sending domain



## AddSendingDomain

> AddSendingDomain201Response AddSendingDomain(ctx).AddSendingDomainRequest(addSendingDomainRequest).Execute()

Add a sending domain



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
	addSendingDomainRequest := *openapiclient.NewAddSendingDomainRequest("acme.co.zw") // AddSendingDomainRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SendingDomainsAPI.AddSendingDomain(context.Background()).AddSendingDomainRequest(addSendingDomainRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SendingDomainsAPI.AddSendingDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddSendingDomain`: AddSendingDomain201Response
	fmt.Fprintf(os.Stdout, "Response from `SendingDomainsAPI.AddSendingDomain`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddSendingDomainRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addSendingDomainRequest** | [**AddSendingDomainRequest**](AddSendingDomainRequest.md) |  | 

### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CheckSendingDomain

> AddSendingDomain201Response CheckSendingDomain(ctx, id).Execute()

Check a sending domain now



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
	resp, r, err := apiClient.SendingDomainsAPI.CheckSendingDomain(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SendingDomainsAPI.CheckSendingDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckSendingDomain`: AddSendingDomain201Response
	fmt.Fprintf(os.Stdout, "Response from `SendingDomainsAPI.CheckSendingDomain`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckSendingDomainRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSendingDomain

> AddSendingDomain201Response GetSendingDomain(ctx, id).Execute()

Get a sending domain



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
	resp, r, err := apiClient.SendingDomainsAPI.GetSendingDomain(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SendingDomainsAPI.GetSendingDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSendingDomain`: AddSendingDomain201Response
	fmt.Fprintf(os.Stdout, "Response from `SendingDomainsAPI.GetSendingDomain`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSendingDomainRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AddSendingDomain201Response**](AddSendingDomain201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListSendingDomains

> ListSendingDomains200Response ListSendingDomains(ctx).Execute()

List sending domains



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
	resp, r, err := apiClient.SendingDomainsAPI.ListSendingDomains(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SendingDomainsAPI.ListSendingDomains``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListSendingDomains`: ListSendingDomains200Response
	fmt.Fprintf(os.Stdout, "Response from `SendingDomainsAPI.ListSendingDomains`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiListSendingDomainsRequest struct via the builder pattern


### Return type

[**ListSendingDomains200Response**](ListSendingDomains200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveSendingDomain

> RemoveSendingDomain200Response RemoveSendingDomain(ctx, id).Execute()

Remove a sending domain



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
	resp, r, err := apiClient.SendingDomainsAPI.RemoveSendingDomain(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SendingDomainsAPI.RemoveSendingDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RemoveSendingDomain`: RemoveSendingDomain200Response
	fmt.Fprintf(os.Stdout, "Response from `SendingDomainsAPI.RemoveSendingDomain`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRemoveSendingDomainRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**RemoveSendingDomain200Response**](RemoveSendingDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

