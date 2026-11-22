# \VerificationAPI

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CheckVerification**](VerificationAPI.md#CheckVerification) | **Post** /v1/verifications/{id}/check | Check a code
[**StartVerification**](VerificationAPI.md#StartVerification) | **Post** /v1/verifications | Send a one-time code



## CheckVerification

> CheckVerification200Response CheckVerification(ctx, id).CheckVerificationRequest(checkVerificationRequest).Execute()

Check a code



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
	checkVerificationRequest := *openapiclient.NewCheckVerificationRequest("Code_example") // CheckVerificationRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VerificationAPI.CheckVerification(context.Background(), id).CheckVerificationRequest(checkVerificationRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VerificationAPI.CheckVerification``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CheckVerification`: CheckVerification200Response
	fmt.Fprintf(os.Stdout, "Response from `VerificationAPI.CheckVerification`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCheckVerificationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **checkVerificationRequest** | [**CheckVerificationRequest**](CheckVerificationRequest.md) |  | 

### Return type

[**CheckVerification200Response**](CheckVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StartVerification

> StartVerification201Response StartVerification(ctx).VerificationRequest(verificationRequest).Execute()

Send a one-time code



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
	verificationRequest := *openapiclient.NewVerificationRequest("Channel_example", "To_example") // VerificationRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VerificationAPI.StartVerification(context.Background()).VerificationRequest(verificationRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VerificationAPI.StartVerification``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `StartVerification`: StartVerification201Response
	fmt.Fprintf(os.Stdout, "Response from `VerificationAPI.StartVerification`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStartVerificationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verificationRequest** | [**VerificationRequest**](VerificationRequest.md) |  | 

### Return type

[**StartVerification201Response**](StartVerification201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

