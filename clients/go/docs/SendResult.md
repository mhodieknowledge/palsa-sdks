# SendResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Status** | **string** | &#x60;running&#x60;, &#x60;scheduled&#x60; when held or scheduled, or &#x60;pending_approval&#x60;. | 
**Mode** | **string** |  | 
**Recipients** | **int32** |  | 
**Units** | **map[string]int32** | Billable units, per channel. | 
**Skipped** | **int32** | How many recipients were left out. The quote says why. | 
**Warnings** | [**[]Blocker**](Blocker.md) | Things that did not stop the send. | 

## Methods

### NewSendResult

`func NewSendResult(id string, status string, mode string, recipients int32, units map[string]int32, skipped int32, warnings []Blocker, ) *SendResult`

NewSendResult instantiates a new SendResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendResultWithDefaults

`func NewSendResultWithDefaults() *SendResult`

NewSendResultWithDefaults instantiates a new SendResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SendResult) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SendResult) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SendResult) SetId(v string)`

SetId sets Id field to given value.


### GetStatus

`func (o *SendResult) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SendResult) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SendResult) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetMode

`func (o *SendResult) GetMode() string`

GetMode returns the Mode field if non-nil, zero value otherwise.

### GetModeOk

`func (o *SendResult) GetModeOk() (*string, bool)`

GetModeOk returns a tuple with the Mode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMode

`func (o *SendResult) SetMode(v string)`

SetMode sets Mode field to given value.


### GetRecipients

`func (o *SendResult) GetRecipients() int32`

GetRecipients returns the Recipients field if non-nil, zero value otherwise.

### GetRecipientsOk

`func (o *SendResult) GetRecipientsOk() (*int32, bool)`

GetRecipientsOk returns a tuple with the Recipients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipients

`func (o *SendResult) SetRecipients(v int32)`

SetRecipients sets Recipients field to given value.


### GetUnits

`func (o *SendResult) GetUnits() map[string]int32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *SendResult) GetUnitsOk() (*map[string]int32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *SendResult) SetUnits(v map[string]int32)`

SetUnits sets Units field to given value.


### GetSkipped

`func (o *SendResult) GetSkipped() int32`

GetSkipped returns the Skipped field if non-nil, zero value otherwise.

### GetSkippedOk

`func (o *SendResult) GetSkippedOk() (*int32, bool)`

GetSkippedOk returns a tuple with the Skipped field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipped

`func (o *SendResult) SetSkipped(v int32)`

SetSkipped sets Skipped field to given value.


### GetWarnings

`func (o *SendResult) GetWarnings() []Blocker`

GetWarnings returns the Warnings field if non-nil, zero value otherwise.

### GetWarningsOk

`func (o *SendResult) GetWarningsOk() (*[]Blocker, bool)`

GetWarningsOk returns a tuple with the Warnings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarnings

`func (o *SendResult) SetWarnings(v []Blocker)`

SetWarnings sets Warnings field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


