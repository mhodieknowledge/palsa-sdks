# Blocker

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **string** |  | 
**Message** | **string** |  | 
**Skippable** | **bool** | False stops the send outright. True means it proceeds with those recipients left out. | 
**Count** | Pointer to **int32** |  | [optional] 

## Methods

### NewBlocker

`func NewBlocker(code string, message string, skippable bool, ) *Blocker`

NewBlocker instantiates a new Blocker object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBlockerWithDefaults

`func NewBlockerWithDefaults() *Blocker`

NewBlockerWithDefaults instantiates a new Blocker object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCode

`func (o *Blocker) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *Blocker) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *Blocker) SetCode(v string)`

SetCode sets Code field to given value.


### GetMessage

`func (o *Blocker) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *Blocker) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *Blocker) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetSkippable

`func (o *Blocker) GetSkippable() bool`

GetSkippable returns the Skippable field if non-nil, zero value otherwise.

### GetSkippableOk

`func (o *Blocker) GetSkippableOk() (*bool, bool)`

GetSkippableOk returns a tuple with the Skippable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkippable

`func (o *Blocker) SetSkippable(v bool)`

SetSkippable sets Skippable field to given value.


### GetCount

`func (o *Blocker) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *Blocker) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *Blocker) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *Blocker) HasCount() bool`

HasCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


