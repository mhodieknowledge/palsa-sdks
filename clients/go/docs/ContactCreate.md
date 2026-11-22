# ContactCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] [default to ""]
**Email** | Pointer to **NullableString** |  | [optional] 
**Phone** | Pointer to **NullableString** |  | [optional] 
**State** | Pointer to **string** | Only &#x60;consented&#x60; contacts receive marketing. Say &#x60;consented&#x60; only if you can show they did. | [optional] [default to "pending"]
**ConsentSource** | Pointer to **NullableString** | Where consent came from. Worth recording. | [optional] 
**Tags** | Pointer to **[]string** |  | [optional] 
**Fields** | Pointer to **map[string]string** | Your own fields, usable as &#x60;{{ variables }}&#x60; in a body. | [optional] 

## Methods

### NewContactCreate

`func NewContactCreate() *ContactCreate`

NewContactCreate instantiates a new ContactCreate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContactCreateWithDefaults

`func NewContactCreateWithDefaults() *ContactCreate`

NewContactCreateWithDefaults instantiates a new ContactCreate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ContactCreate) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ContactCreate) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ContactCreate) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ContactCreate) HasName() bool`

HasName returns a boolean if a field has been set.

### GetEmail

`func (o *ContactCreate) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *ContactCreate) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *ContactCreate) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *ContactCreate) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### SetEmailNil

`func (o *ContactCreate) SetEmailNil(b bool)`

 SetEmailNil sets the value for Email to be an explicit nil

### UnsetEmail
`func (o *ContactCreate) UnsetEmail()`

UnsetEmail ensures that no value is present for Email, not even an explicit nil
### GetPhone

`func (o *ContactCreate) GetPhone() string`

GetPhone returns the Phone field if non-nil, zero value otherwise.

### GetPhoneOk

`func (o *ContactCreate) GetPhoneOk() (*string, bool)`

GetPhoneOk returns a tuple with the Phone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhone

`func (o *ContactCreate) SetPhone(v string)`

SetPhone sets Phone field to given value.

### HasPhone

`func (o *ContactCreate) HasPhone() bool`

HasPhone returns a boolean if a field has been set.

### SetPhoneNil

`func (o *ContactCreate) SetPhoneNil(b bool)`

 SetPhoneNil sets the value for Phone to be an explicit nil

### UnsetPhone
`func (o *ContactCreate) UnsetPhone()`

UnsetPhone ensures that no value is present for Phone, not even an explicit nil
### GetState

`func (o *ContactCreate) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *ContactCreate) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *ContactCreate) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *ContactCreate) HasState() bool`

HasState returns a boolean if a field has been set.

### GetConsentSource

`func (o *ContactCreate) GetConsentSource() string`

GetConsentSource returns the ConsentSource field if non-nil, zero value otherwise.

### GetConsentSourceOk

`func (o *ContactCreate) GetConsentSourceOk() (*string, bool)`

GetConsentSourceOk returns a tuple with the ConsentSource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsentSource

`func (o *ContactCreate) SetConsentSource(v string)`

SetConsentSource sets ConsentSource field to given value.

### HasConsentSource

`func (o *ContactCreate) HasConsentSource() bool`

HasConsentSource returns a boolean if a field has been set.

### SetConsentSourceNil

`func (o *ContactCreate) SetConsentSourceNil(b bool)`

 SetConsentSourceNil sets the value for ConsentSource to be an explicit nil

### UnsetConsentSource
`func (o *ContactCreate) UnsetConsentSource()`

UnsetConsentSource ensures that no value is present for ConsentSource, not even an explicit nil
### GetTags

`func (o *ContactCreate) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *ContactCreate) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *ContactCreate) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *ContactCreate) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetFields

`func (o *ContactCreate) GetFields() map[string]string`

GetFields returns the Fields field if non-nil, zero value otherwise.

### GetFieldsOk

`func (o *ContactCreate) GetFieldsOk() (*map[string]string, bool)`

GetFieldsOk returns a tuple with the Fields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFields

`func (o *ContactCreate) SetFields(v map[string]string)`

SetFields sets Fields field to given value.

### HasFields

`func (o *ContactCreate) HasFields() bool`

HasFields returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


