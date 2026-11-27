# AndroidPushOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChannelId** | Pointer to **string** | The Android notification channel. | [optional] 
**Tag** | Pointer to **string** | A notification with the same tag replaces the one shown. | [optional] 
**Color** | Pointer to **string** |  | [optional] 

## Methods

### NewAndroidPushOptions

`func NewAndroidPushOptions() *AndroidPushOptions`

NewAndroidPushOptions instantiates a new AndroidPushOptions object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAndroidPushOptionsWithDefaults

`func NewAndroidPushOptionsWithDefaults() *AndroidPushOptions`

NewAndroidPushOptionsWithDefaults instantiates a new AndroidPushOptions object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChannelId

`func (o *AndroidPushOptions) GetChannelId() string`

GetChannelId returns the ChannelId field if non-nil, zero value otherwise.

### GetChannelIdOk

`func (o *AndroidPushOptions) GetChannelIdOk() (*string, bool)`

GetChannelIdOk returns a tuple with the ChannelId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannelId

`func (o *AndroidPushOptions) SetChannelId(v string)`

SetChannelId sets ChannelId field to given value.

### HasChannelId

`func (o *AndroidPushOptions) HasChannelId() bool`

HasChannelId returns a boolean if a field has been set.

### GetTag

`func (o *AndroidPushOptions) GetTag() string`

GetTag returns the Tag field if non-nil, zero value otherwise.

### GetTagOk

`func (o *AndroidPushOptions) GetTagOk() (*string, bool)`

GetTagOk returns a tuple with the Tag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTag

`func (o *AndroidPushOptions) SetTag(v string)`

SetTag sets Tag field to given value.

### HasTag

`func (o *AndroidPushOptions) HasTag() bool`

HasTag returns a boolean if a field has been set.

### GetColor

`func (o *AndroidPushOptions) GetColor() string`

GetColor returns the Color field if non-nil, zero value otherwise.

### GetColorOk

`func (o *AndroidPushOptions) GetColorOk() (*string, bool)`

GetColorOk returns a tuple with the Color field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetColor

`func (o *AndroidPushOptions) SetColor(v string)`

SetColor sets Color field to given value.

### HasColor

`func (o *AndroidPushOptions) HasColor() bool`

HasColor returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


