# InlineObject2Data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Topic** | **string** |  | 
**Subscribed** | Pointer to **int32** |  | [optional] 
**Unsubscribed** | Pointer to **int32** |  | [optional] 
**Failed** | [**[]InlineObject2DataFailedInner**](InlineObject2DataFailedInner.md) |  | 

## Methods

### NewInlineObject2Data

`func NewInlineObject2Data(topic string, failed []InlineObject2DataFailedInner, ) *InlineObject2Data`

NewInlineObject2Data instantiates a new InlineObject2Data object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInlineObject2DataWithDefaults

`func NewInlineObject2DataWithDefaults() *InlineObject2Data`

NewInlineObject2DataWithDefaults instantiates a new InlineObject2Data object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTopic

`func (o *InlineObject2Data) GetTopic() string`

GetTopic returns the Topic field if non-nil, zero value otherwise.

### GetTopicOk

`func (o *InlineObject2Data) GetTopicOk() (*string, bool)`

GetTopicOk returns a tuple with the Topic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopic

`func (o *InlineObject2Data) SetTopic(v string)`

SetTopic sets Topic field to given value.


### GetSubscribed

`func (o *InlineObject2Data) GetSubscribed() int32`

GetSubscribed returns the Subscribed field if non-nil, zero value otherwise.

### GetSubscribedOk

`func (o *InlineObject2Data) GetSubscribedOk() (*int32, bool)`

GetSubscribedOk returns a tuple with the Subscribed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubscribed

`func (o *InlineObject2Data) SetSubscribed(v int32)`

SetSubscribed sets Subscribed field to given value.

### HasSubscribed

`func (o *InlineObject2Data) HasSubscribed() bool`

HasSubscribed returns a boolean if a field has been set.

### GetUnsubscribed

`func (o *InlineObject2Data) GetUnsubscribed() int32`

GetUnsubscribed returns the Unsubscribed field if non-nil, zero value otherwise.

### GetUnsubscribedOk

`func (o *InlineObject2Data) GetUnsubscribedOk() (*int32, bool)`

GetUnsubscribedOk returns a tuple with the Unsubscribed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnsubscribed

`func (o *InlineObject2Data) SetUnsubscribed(v int32)`

SetUnsubscribed sets Unsubscribed field to given value.

### HasUnsubscribed

`func (o *InlineObject2Data) HasUnsubscribed() bool`

HasUnsubscribed returns a boolean if a field has been set.

### GetFailed

`func (o *InlineObject2Data) GetFailed() []InlineObject2DataFailedInner`

GetFailed returns the Failed field if non-nil, zero value otherwise.

### GetFailedOk

`func (o *InlineObject2Data) GetFailedOk() (*[]InlineObject2DataFailedInner, bool)`

GetFailedOk returns a tuple with the Failed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailed

`func (o *InlineObject2Data) SetFailed(v []InlineObject2DataFailedInner)`

SetFailed sets Failed field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


