# Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **string** |  | 
**Message** | **string** |  | 
**Fields** | Pointer to **map[string][]string** | Validation errors by field name. | [optional] 
**Detail** | Pointer to **map[string]interface{}** | Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED. | [optional] 
**RequestId** | Pointer to **string** | Quote this when asking us about a request. | [optional] 

## Methods

### NewError

`func NewError(code string, message string, ) *Error`

NewError instantiates a new Error object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewErrorWithDefaults

`func NewErrorWithDefaults() *Error`

NewErrorWithDefaults instantiates a new Error object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCode

`func (o *Error) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *Error) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *Error) SetCode(v string)`

SetCode sets Code field to given value.


### GetMessage

`func (o *Error) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *Error) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *Error) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetFields

`func (o *Error) GetFields() map[string][]string`

GetFields returns the Fields field if non-nil, zero value otherwise.

### GetFieldsOk

`func (o *Error) GetFieldsOk() (*map[string][]string, bool)`

GetFieldsOk returns a tuple with the Fields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFields

`func (o *Error) SetFields(v map[string][]string)`

SetFields sets Fields field to given value.

### HasFields

`func (o *Error) HasFields() bool`

HasFields returns a boolean if a field has been set.

### GetDetail

`func (o *Error) GetDetail() map[string]interface{}`

GetDetail returns the Detail field if non-nil, zero value otherwise.

### GetDetailOk

`func (o *Error) GetDetailOk() (*map[string]interface{}, bool)`

GetDetailOk returns a tuple with the Detail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetail

`func (o *Error) SetDetail(v map[string]interface{})`

SetDetail sets Detail field to given value.

### HasDetail

`func (o *Error) HasDetail() bool`

HasDetail returns a boolean if a field has been set.

### GetRequestId

`func (o *Error) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *Error) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *Error) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *Error) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


