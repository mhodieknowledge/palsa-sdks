# Verification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Channel** | **string** |  | 
**To** | **string** |  | 
**ExpiresAt** | **string** |  | 
**SandboxCode** | Pointer to **string** | Only with a sandbox key. Never returned for a live send, to anyone, including the workspace that asked. | [optional] 

## Methods

### NewVerification

`func NewVerification(id string, channel string, to string, expiresAt string, ) *Verification`

NewVerification instantiates a new Verification object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerificationWithDefaults

`func NewVerificationWithDefaults() *Verification`

NewVerificationWithDefaults instantiates a new Verification object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Verification) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Verification) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Verification) SetId(v string)`

SetId sets Id field to given value.


### GetChannel

`func (o *Verification) GetChannel() string`

GetChannel returns the Channel field if non-nil, zero value otherwise.

### GetChannelOk

`func (o *Verification) GetChannelOk() (*string, bool)`

GetChannelOk returns a tuple with the Channel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannel

`func (o *Verification) SetChannel(v string)`

SetChannel sets Channel field to given value.


### GetTo

`func (o *Verification) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *Verification) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *Verification) SetTo(v string)`

SetTo sets To field to given value.


### GetExpiresAt

`func (o *Verification) GetExpiresAt() string`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *Verification) GetExpiresAtOk() (*string, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *Verification) SetExpiresAt(v string)`

SetExpiresAt sets ExpiresAt field to given value.


### GetSandboxCode

`func (o *Verification) GetSandboxCode() string`

GetSandboxCode returns the SandboxCode field if non-nil, zero value otherwise.

### GetSandboxCodeOk

`func (o *Verification) GetSandboxCodeOk() (*string, bool)`

GetSandboxCodeOk returns a tuple with the SandboxCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSandboxCode

`func (o *Verification) SetSandboxCode(v string)`

SetSandboxCode sets SandboxCode field to given value.

### HasSandboxCode

`func (o *Verification) HasSandboxCode() bool`

HasSandboxCode returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


