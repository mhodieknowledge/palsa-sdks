# SendingDomainRecordsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Purpose** | **string** |  | 
**Type** | **string** |  | 
**Name** | **string** |  | 
**Value** | **string** |  | 
**Priority** | Pointer to **int32** |  | [optional] 
**Required** | **bool** |  | 

## Methods

### NewSendingDomainRecordsInner

`func NewSendingDomainRecordsInner(purpose string, type_ string, name string, value string, required bool, ) *SendingDomainRecordsInner`

NewSendingDomainRecordsInner instantiates a new SendingDomainRecordsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendingDomainRecordsInnerWithDefaults

`func NewSendingDomainRecordsInnerWithDefaults() *SendingDomainRecordsInner`

NewSendingDomainRecordsInnerWithDefaults instantiates a new SendingDomainRecordsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPurpose

`func (o *SendingDomainRecordsInner) GetPurpose() string`

GetPurpose returns the Purpose field if non-nil, zero value otherwise.

### GetPurposeOk

`func (o *SendingDomainRecordsInner) GetPurposeOk() (*string, bool)`

GetPurposeOk returns a tuple with the Purpose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurpose

`func (o *SendingDomainRecordsInner) SetPurpose(v string)`

SetPurpose sets Purpose field to given value.


### GetType

`func (o *SendingDomainRecordsInner) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SendingDomainRecordsInner) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SendingDomainRecordsInner) SetType(v string)`

SetType sets Type field to given value.


### GetName

`func (o *SendingDomainRecordsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SendingDomainRecordsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SendingDomainRecordsInner) SetName(v string)`

SetName sets Name field to given value.


### GetValue

`func (o *SendingDomainRecordsInner) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *SendingDomainRecordsInner) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *SendingDomainRecordsInner) SetValue(v string)`

SetValue sets Value field to given value.


### GetPriority

`func (o *SendingDomainRecordsInner) GetPriority() int32`

GetPriority returns the Priority field if non-nil, zero value otherwise.

### GetPriorityOk

`func (o *SendingDomainRecordsInner) GetPriorityOk() (*int32, bool)`

GetPriorityOk returns a tuple with the Priority field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriority

`func (o *SendingDomainRecordsInner) SetPriority(v int32)`

SetPriority sets Priority field to given value.

### HasPriority

`func (o *SendingDomainRecordsInner) HasPriority() bool`

HasPriority returns a boolean if a field has been set.

### GetRequired

`func (o *SendingDomainRecordsInner) GetRequired() bool`

GetRequired returns the Required field if non-nil, zero value otherwise.

### GetRequiredOk

`func (o *SendingDomainRecordsInner) GetRequiredOk() (*bool, bool)`

GetRequiredOk returns a tuple with the Required field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequired

`func (o *SendingDomainRecordsInner) SetRequired(v bool)`

SetRequired sets Required field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


