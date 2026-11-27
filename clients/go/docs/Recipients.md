# Recipients

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContactIds** | Pointer to **[]string** |  | [optional] 
**Addresses** | Pointer to **[]string** | Phone numbers or email addresses, for people who are not saved contacts. | [optional] 
**AudienceId** | Pointer to **string** |  | [optional] 
**Topic** | Pointer to **string** | Push only, and on push alone. Every device subscribed to this topic, as one delivery. | [optional] 

## Methods

### NewRecipients

`func NewRecipients() *Recipients`

NewRecipients instantiates a new Recipients object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecipientsWithDefaults

`func NewRecipientsWithDefaults() *Recipients`

NewRecipientsWithDefaults instantiates a new Recipients object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetContactIds

`func (o *Recipients) GetContactIds() []string`

GetContactIds returns the ContactIds field if non-nil, zero value otherwise.

### GetContactIdsOk

`func (o *Recipients) GetContactIdsOk() (*[]string, bool)`

GetContactIdsOk returns a tuple with the ContactIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContactIds

`func (o *Recipients) SetContactIds(v []string)`

SetContactIds sets ContactIds field to given value.

### HasContactIds

`func (o *Recipients) HasContactIds() bool`

HasContactIds returns a boolean if a field has been set.

### GetAddresses

`func (o *Recipients) GetAddresses() []string`

GetAddresses returns the Addresses field if non-nil, zero value otherwise.

### GetAddressesOk

`func (o *Recipients) GetAddressesOk() (*[]string, bool)`

GetAddressesOk returns a tuple with the Addresses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddresses

`func (o *Recipients) SetAddresses(v []string)`

SetAddresses sets Addresses field to given value.

### HasAddresses

`func (o *Recipients) HasAddresses() bool`

HasAddresses returns a boolean if a field has been set.

### GetAudienceId

`func (o *Recipients) GetAudienceId() string`

GetAudienceId returns the AudienceId field if non-nil, zero value otherwise.

### GetAudienceIdOk

`func (o *Recipients) GetAudienceIdOk() (*string, bool)`

GetAudienceIdOk returns a tuple with the AudienceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudienceId

`func (o *Recipients) SetAudienceId(v string)`

SetAudienceId sets AudienceId field to given value.

### HasAudienceId

`func (o *Recipients) HasAudienceId() bool`

HasAudienceId returns a boolean if a field has been set.

### GetTopic

`func (o *Recipients) GetTopic() string`

GetTopic returns the Topic field if non-nil, zero value otherwise.

### GetTopicOk

`func (o *Recipients) GetTopicOk() (*string, bool)`

GetTopicOk returns a tuple with the Topic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopic

`func (o *Recipients) SetTopic(v string)`

SetTopic sets Topic field to given value.

### HasTopic

`func (o *Recipients) HasTopic() bool`

HasTopic returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


