# \ContactsAPI

All URIs are relative to *https://api.palsa.co.zw*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateContact**](ContactsAPI.md#CreateContact) | **Post** /v1/contacts | Save a contact
[**DeleteContact**](ContactsAPI.md#DeleteContact) | **Delete** /v1/contacts/{id} | Erase a contact
[**ListContacts**](ContactsAPI.md#ListContacts) | **Get** /v1/contacts | List contacts
[**RegisterDevice**](ContactsAPI.md#RegisterDevice) | **Post** /v1/devices | Register a device for push



## CreateContact

> CreateContact201Response CreateContact(ctx).ContactCreate(contactCreate).Execute()

Save a contact



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
	contactCreate := *openapiclient.NewContactCreate() // ContactCreate | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ContactsAPI.CreateContact(context.Background()).ContactCreate(contactCreate).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ContactsAPI.CreateContact``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateContact`: CreateContact201Response
	fmt.Fprintf(os.Stdout, "Response from `ContactsAPI.CreateContact`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreateContactRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactCreate** | [**ContactCreate**](ContactCreate.md) |  | 

### Return type

[**CreateContact201Response**](CreateContact201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteContact

> DeleteContact200Response DeleteContact(ctx, id).Execute()

Erase a contact



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
	resp, r, err := apiClient.ContactsAPI.DeleteContact(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ContactsAPI.DeleteContact``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteContact`: DeleteContact200Response
	fmt.Fprintf(os.Stdout, "Response from `ContactsAPI.DeleteContact`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteContactRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**DeleteContact200Response**](DeleteContact200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListContacts

> ListContacts200Response ListContacts(ctx).Limit(limit).Execute()

List contacts



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
	limit := int32(56) // int32 |  (optional) (default to 50)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ContactsAPI.ListContacts(context.Background()).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ContactsAPI.ListContacts``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListContacts`: ListContacts200Response
	fmt.Fprintf(os.Stdout, "Response from `ContactsAPI.ListContacts`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListContactsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** |  | [default to 50]

### Return type

[**ListContacts200Response**](ListContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RegisterDevice

> RegisterDevice201Response RegisterDevice(ctx).DeviceRegister(deviceRegister).Execute()

Register a device for push



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
	deviceRegister := *openapiclient.NewDeviceRegister("Token_example", "Platform_example") // DeviceRegister | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ContactsAPI.RegisterDevice(context.Background()).DeviceRegister(deviceRegister).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ContactsAPI.RegisterDevice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RegisterDevice`: RegisterDevice201Response
	fmt.Fprintf(os.Stdout, "Response from `ContactsAPI.RegisterDevice`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRegisterDeviceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceRegister** | [**DeviceRegister**](DeviceRegister.md) |  | 

### Return type

[**RegisterDevice201Response**](RegisterDevice201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

