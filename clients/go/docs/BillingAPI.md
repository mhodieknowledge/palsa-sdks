# \BillingAPI

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBalances**](BillingAPI.md#GetBalances) | **Get** /v1/balances | Prepaid balances



## GetBalances

> GetBalances200Response GetBalances(ctx).Execute()

Prepaid balances



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
	resp, r, err := apiClient.BillingAPI.GetBalances(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetBalances``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetBalances`: GetBalances200Response
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetBalances`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetBalancesRequest struct via the builder pattern


### Return type

[**GetBalances200Response**](GetBalances200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

