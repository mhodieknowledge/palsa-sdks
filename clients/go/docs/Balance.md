# Balance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channel** | [**Channel**](Channel.md) |  | 
**Included** | **int32** | The plan&#39;s allowance for this period. | 
**Purchased** | **int32** | Credit bought separately | 
**ReservedIncluded** | **int32** | Included units promised to sends in flight. | 
**ReservedPurchased** | **int32** | Purchased units promised to sends in flight. | 
**UsedIncluded** | **int32** |  | 
**UsedPurchased** | **int32** |  | 
**Available** | **int32** | &#x60;included + purchased - reserved&#x60;, and what a send is actually checked against. It cannot go below nothing.  | 
**PeriodEnd** | Pointer to **NullableString** | When the included allowance expires. Purchased units are unaffected by it. | [optional] 

## Methods

### NewBalance

`func NewBalance(channel Channel, included int32, purchased int32, reservedIncluded int32, reservedPurchased int32, usedIncluded int32, usedPurchased int32, available int32, ) *Balance`

NewBalance instantiates a new Balance object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBalanceWithDefaults

`func NewBalanceWithDefaults() *Balance`

NewBalanceWithDefaults instantiates a new Balance object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChannel

`func (o *Balance) GetChannel() Channel`

GetChannel returns the Channel field if non-nil, zero value otherwise.

### GetChannelOk

`func (o *Balance) GetChannelOk() (*Channel, bool)`

GetChannelOk returns a tuple with the Channel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannel

`func (o *Balance) SetChannel(v Channel)`

SetChannel sets Channel field to given value.


### GetIncluded

`func (o *Balance) GetIncluded() int32`

GetIncluded returns the Included field if non-nil, zero value otherwise.

### GetIncludedOk

`func (o *Balance) GetIncludedOk() (*int32, bool)`

GetIncludedOk returns a tuple with the Included field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncluded

`func (o *Balance) SetIncluded(v int32)`

SetIncluded sets Included field to given value.


### GetPurchased

`func (o *Balance) GetPurchased() int32`

GetPurchased returns the Purchased field if non-nil, zero value otherwise.

### GetPurchasedOk

`func (o *Balance) GetPurchasedOk() (*int32, bool)`

GetPurchasedOk returns a tuple with the Purchased field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurchased

`func (o *Balance) SetPurchased(v int32)`

SetPurchased sets Purchased field to given value.


### GetReservedIncluded

`func (o *Balance) GetReservedIncluded() int32`

GetReservedIncluded returns the ReservedIncluded field if non-nil, zero value otherwise.

### GetReservedIncludedOk

`func (o *Balance) GetReservedIncludedOk() (*int32, bool)`

GetReservedIncludedOk returns a tuple with the ReservedIncluded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReservedIncluded

`func (o *Balance) SetReservedIncluded(v int32)`

SetReservedIncluded sets ReservedIncluded field to given value.


### GetReservedPurchased

`func (o *Balance) GetReservedPurchased() int32`

GetReservedPurchased returns the ReservedPurchased field if non-nil, zero value otherwise.

### GetReservedPurchasedOk

`func (o *Balance) GetReservedPurchasedOk() (*int32, bool)`

GetReservedPurchasedOk returns a tuple with the ReservedPurchased field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReservedPurchased

`func (o *Balance) SetReservedPurchased(v int32)`

SetReservedPurchased sets ReservedPurchased field to given value.


### GetUsedIncluded

`func (o *Balance) GetUsedIncluded() int32`

GetUsedIncluded returns the UsedIncluded field if non-nil, zero value otherwise.

### GetUsedIncludedOk

`func (o *Balance) GetUsedIncludedOk() (*int32, bool)`

GetUsedIncludedOk returns a tuple with the UsedIncluded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsedIncluded

`func (o *Balance) SetUsedIncluded(v int32)`

SetUsedIncluded sets UsedIncluded field to given value.


### GetUsedPurchased

`func (o *Balance) GetUsedPurchased() int32`

GetUsedPurchased returns the UsedPurchased field if non-nil, zero value otherwise.

### GetUsedPurchasedOk

`func (o *Balance) GetUsedPurchasedOk() (*int32, bool)`

GetUsedPurchasedOk returns a tuple with the UsedPurchased field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsedPurchased

`func (o *Balance) SetUsedPurchased(v int32)`

SetUsedPurchased sets UsedPurchased field to given value.


### GetAvailable

`func (o *Balance) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *Balance) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *Balance) SetAvailable(v int32)`

SetAvailable sets Available field to given value.


### GetPeriodEnd

`func (o *Balance) GetPeriodEnd() string`

GetPeriodEnd returns the PeriodEnd field if non-nil, zero value otherwise.

### GetPeriodEndOk

`func (o *Balance) GetPeriodEndOk() (*string, bool)`

GetPeriodEndOk returns a tuple with the PeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodEnd

`func (o *Balance) SetPeriodEnd(v string)`

SetPeriodEnd sets PeriodEnd field to given value.

### HasPeriodEnd

`func (o *Balance) HasPeriodEnd() bool`

HasPeriodEnd returns a boolean if a field has been set.

### SetPeriodEndNil

`func (o *Balance) SetPeriodEndNil(b bool)`

 SetPeriodEndNil sets the value for PeriodEnd to be an explicit nil

### UnsetPeriodEnd
`func (o *Balance) UnsetPeriodEnd()`

UnsetPeriodEnd ensures that no value is present for PeriodEnd, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


