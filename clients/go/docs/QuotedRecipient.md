# QuotedRecipient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContactId** | **NullableString** |  | 
**Address** | **string** |  | 
**Channel** | [**Channel**](Channel.md) |  | 
**Name** | **string** |  | 
**Fields** | **map[string]interface{}** |  | 
**Units** | **int32** | What this one recipient costs | 
**Variant** | **string** |  | 

## Methods

### NewQuotedRecipient

`func NewQuotedRecipient(contactId NullableString, address string, channel Channel, name string, fields map[string]interface{}, units int32, variant string, ) *QuotedRecipient`

NewQuotedRecipient instantiates a new QuotedRecipient object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQuotedRecipientWithDefaults

`func NewQuotedRecipientWithDefaults() *QuotedRecipient`

NewQuotedRecipientWithDefaults instantiates a new QuotedRecipient object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetContactId

`func (o *QuotedRecipient) GetContactId() string`

GetContactId returns the ContactId field if non-nil, zero value otherwise.

### GetContactIdOk

`func (o *QuotedRecipient) GetContactIdOk() (*string, bool)`

GetContactIdOk returns a tuple with the ContactId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContactId

`func (o *QuotedRecipient) SetContactId(v string)`

SetContactId sets ContactId field to given value.


### SetContactIdNil

`func (o *QuotedRecipient) SetContactIdNil(b bool)`

 SetContactIdNil sets the value for ContactId to be an explicit nil

### UnsetContactId
`func (o *QuotedRecipient) UnsetContactId()`

UnsetContactId ensures that no value is present for ContactId, not even an explicit nil
### GetAddress

`func (o *QuotedRecipient) GetAddress() string`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *QuotedRecipient) GetAddressOk() (*string, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *QuotedRecipient) SetAddress(v string)`

SetAddress sets Address field to given value.


### GetChannel

`func (o *QuotedRecipient) GetChannel() Channel`

GetChannel returns the Channel field if non-nil, zero value otherwise.

### GetChannelOk

`func (o *QuotedRecipient) GetChannelOk() (*Channel, bool)`

GetChannelOk returns a tuple with the Channel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannel

`func (o *QuotedRecipient) SetChannel(v Channel)`

SetChannel sets Channel field to given value.


### GetName

`func (o *QuotedRecipient) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *QuotedRecipient) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *QuotedRecipient) SetName(v string)`

SetName sets Name field to given value.


### GetFields

`func (o *QuotedRecipient) GetFields() map[string]interface{}`

GetFields returns the Fields field if non-nil, zero value otherwise.

### GetFieldsOk

`func (o *QuotedRecipient) GetFieldsOk() (*map[string]interface{}, bool)`

GetFieldsOk returns a tuple with the Fields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFields

`func (o *QuotedRecipient) SetFields(v map[string]interface{})`

SetFields sets Fields field to given value.


### GetUnits

`func (o *QuotedRecipient) GetUnits() int32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *QuotedRecipient) GetUnitsOk() (*int32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *QuotedRecipient) SetUnits(v int32)`

SetUnits sets Units field to given value.


### GetVariant

`func (o *QuotedRecipient) GetVariant() string`

GetVariant returns the Variant field if non-nil, zero value otherwise.

### GetVariantOk

`func (o *QuotedRecipient) GetVariantOk() (*string, bool)`

GetVariantOk returns a tuple with the Variant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariant

`func (o *QuotedRecipient) SetVariant(v string)`

SetVariant sets Variant field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


