# IosPushOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ThreadId** | Pointer to **string** | Groups notifications together. | [optional] 
**Category** | Pointer to **string** | The notification category | [optional] 
**InterruptionLevel** | Pointer to **string** |  | [optional] 

## Methods

### NewIosPushOptions

`func NewIosPushOptions() *IosPushOptions`

NewIosPushOptions instantiates a new IosPushOptions object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIosPushOptionsWithDefaults

`func NewIosPushOptionsWithDefaults() *IosPushOptions`

NewIosPushOptionsWithDefaults instantiates a new IosPushOptions object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetThreadId

`func (o *IosPushOptions) GetThreadId() string`

GetThreadId returns the ThreadId field if non-nil, zero value otherwise.

### GetThreadIdOk

`func (o *IosPushOptions) GetThreadIdOk() (*string, bool)`

GetThreadIdOk returns a tuple with the ThreadId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThreadId

`func (o *IosPushOptions) SetThreadId(v string)`

SetThreadId sets ThreadId field to given value.

### HasThreadId

`func (o *IosPushOptions) HasThreadId() bool`

HasThreadId returns a boolean if a field has been set.

### GetCategory

`func (o *IosPushOptions) GetCategory() string`

GetCategory returns the Category field if non-nil, zero value otherwise.

### GetCategoryOk

`func (o *IosPushOptions) GetCategoryOk() (*string, bool)`

GetCategoryOk returns a tuple with the Category field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCategory

`func (o *IosPushOptions) SetCategory(v string)`

SetCategory sets Category field to given value.

### HasCategory

`func (o *IosPushOptions) HasCategory() bool`

HasCategory returns a boolean if a field has been set.

### GetInterruptionLevel

`func (o *IosPushOptions) GetInterruptionLevel() string`

GetInterruptionLevel returns the InterruptionLevel field if non-nil, zero value otherwise.

### GetInterruptionLevelOk

`func (o *IosPushOptions) GetInterruptionLevelOk() (*string, bool)`

GetInterruptionLevelOk returns a tuple with the InterruptionLevel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterruptionLevel

`func (o *IosPushOptions) SetInterruptionLevel(v string)`

SetInterruptionLevel sets InterruptionLevel field to given value.

### HasInterruptionLevel

`func (o *IosPushOptions) HasInterruptionLevel() bool`

HasInterruptionLevel returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


