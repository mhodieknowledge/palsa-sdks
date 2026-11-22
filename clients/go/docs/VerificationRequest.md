# VerificationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channel** | **string** |  | 
**To** | **string** |  | 
**Length** | Pointer to **int32** |  | [optional] [default to 6]
**ExpiresInSeconds** | Pointer to **int32** |  | [optional] [default to 600]
**Template** | Pointer to **string** | Use &#x60;{{code}}&#x60; and &#x60;{{minutes}}&#x60;. Defaults to \&quot;Your code is {{code}}. It expires in {{minutes}} minutes.\&quot; | [optional] 
**Flow** | Pointer to **string** | The name of one of your active verification flows, set up in the console under Verification. Its expiry, attempt ceiling and rate apply to this challenge.  A name matching no active flow is refused with &#x60;NOT_FOUND&#x60; rather than falling back to the defaults, since a silent fallback is how somebody comes to believe a code allows three guesses when it allows five. A flow&#39;s rate applies in addition to the built-in ceiling of five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen it.  | [optional] 

## Methods

### NewVerificationRequest

`func NewVerificationRequest(channel string, to string, ) *VerificationRequest`

NewVerificationRequest instantiates a new VerificationRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerificationRequestWithDefaults

`func NewVerificationRequestWithDefaults() *VerificationRequest`

NewVerificationRequestWithDefaults instantiates a new VerificationRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChannel

`func (o *VerificationRequest) GetChannel() string`

GetChannel returns the Channel field if non-nil, zero value otherwise.

### GetChannelOk

`func (o *VerificationRequest) GetChannelOk() (*string, bool)`

GetChannelOk returns a tuple with the Channel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannel

`func (o *VerificationRequest) SetChannel(v string)`

SetChannel sets Channel field to given value.


### GetTo

`func (o *VerificationRequest) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *VerificationRequest) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *VerificationRequest) SetTo(v string)`

SetTo sets To field to given value.


### GetLength

`func (o *VerificationRequest) GetLength() int32`

GetLength returns the Length field if non-nil, zero value otherwise.

### GetLengthOk

`func (o *VerificationRequest) GetLengthOk() (*int32, bool)`

GetLengthOk returns a tuple with the Length field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLength

`func (o *VerificationRequest) SetLength(v int32)`

SetLength sets Length field to given value.

### HasLength

`func (o *VerificationRequest) HasLength() bool`

HasLength returns a boolean if a field has been set.

### GetExpiresInSeconds

`func (o *VerificationRequest) GetExpiresInSeconds() int32`

GetExpiresInSeconds returns the ExpiresInSeconds field if non-nil, zero value otherwise.

### GetExpiresInSecondsOk

`func (o *VerificationRequest) GetExpiresInSecondsOk() (*int32, bool)`

GetExpiresInSecondsOk returns a tuple with the ExpiresInSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresInSeconds

`func (o *VerificationRequest) SetExpiresInSeconds(v int32)`

SetExpiresInSeconds sets ExpiresInSeconds field to given value.

### HasExpiresInSeconds

`func (o *VerificationRequest) HasExpiresInSeconds() bool`

HasExpiresInSeconds returns a boolean if a field has been set.

### GetTemplate

`func (o *VerificationRequest) GetTemplate() string`

GetTemplate returns the Template field if non-nil, zero value otherwise.

### GetTemplateOk

`func (o *VerificationRequest) GetTemplateOk() (*string, bool)`

GetTemplateOk returns a tuple with the Template field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplate

`func (o *VerificationRequest) SetTemplate(v string)`

SetTemplate sets Template field to given value.

### HasTemplate

`func (o *VerificationRequest) HasTemplate() bool`

HasTemplate returns a boolean if a field has been set.

### GetFlow

`func (o *VerificationRequest) GetFlow() string`

GetFlow returns the Flow field if non-nil, zero value otherwise.

### GetFlowOk

`func (o *VerificationRequest) GetFlowOk() (*string, bool)`

GetFlowOk returns a tuple with the Flow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlow

`func (o *VerificationRequest) SetFlow(v string)`

SetFlow sets Flow field to given value.

### HasFlow

`func (o *VerificationRequest) HasFlow() bool`

HasFlow returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


