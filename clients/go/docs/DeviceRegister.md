# DeviceRegister

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Token** | **string** |  | 
**Platform** | **string** |  | 
**ContactId** | Pointer to **NullableString** |  | [optional] 
**AppId** | Pointer to **NullableString** | The push app the token belongs to. Default the workspace&#39;s default app. | [optional] 
**PreviousToken** | Pointer to **NullableString** | The token this one replaces, from the app&#39;s token-refresh callback. The device keeps its id, contact and topics. | [optional] 
**AppVersion** | Pointer to **NullableString** |  | [optional] 
**Locale** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewDeviceRegister

`func NewDeviceRegister(token string, platform string, ) *DeviceRegister`

NewDeviceRegister instantiates a new DeviceRegister object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceRegisterWithDefaults

`func NewDeviceRegisterWithDefaults() *DeviceRegister`

NewDeviceRegisterWithDefaults instantiates a new DeviceRegister object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetToken

`func (o *DeviceRegister) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *DeviceRegister) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *DeviceRegister) SetToken(v string)`

SetToken sets Token field to given value.


### GetPlatform

`func (o *DeviceRegister) GetPlatform() string`

GetPlatform returns the Platform field if non-nil, zero value otherwise.

### GetPlatformOk

`func (o *DeviceRegister) GetPlatformOk() (*string, bool)`

GetPlatformOk returns a tuple with the Platform field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatform

`func (o *DeviceRegister) SetPlatform(v string)`

SetPlatform sets Platform field to given value.


### GetContactId

`func (o *DeviceRegister) GetContactId() string`

GetContactId returns the ContactId field if non-nil, zero value otherwise.

### GetContactIdOk

`func (o *DeviceRegister) GetContactIdOk() (*string, bool)`

GetContactIdOk returns a tuple with the ContactId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContactId

`func (o *DeviceRegister) SetContactId(v string)`

SetContactId sets ContactId field to given value.

### HasContactId

`func (o *DeviceRegister) HasContactId() bool`

HasContactId returns a boolean if a field has been set.

### SetContactIdNil

`func (o *DeviceRegister) SetContactIdNil(b bool)`

 SetContactIdNil sets the value for ContactId to be an explicit nil

### UnsetContactId
`func (o *DeviceRegister) UnsetContactId()`

UnsetContactId ensures that no value is present for ContactId, not even an explicit nil
### GetAppId

`func (o *DeviceRegister) GetAppId() string`

GetAppId returns the AppId field if non-nil, zero value otherwise.

### GetAppIdOk

`func (o *DeviceRegister) GetAppIdOk() (*string, bool)`

GetAppIdOk returns a tuple with the AppId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppId

`func (o *DeviceRegister) SetAppId(v string)`

SetAppId sets AppId field to given value.

### HasAppId

`func (o *DeviceRegister) HasAppId() bool`

HasAppId returns a boolean if a field has been set.

### SetAppIdNil

`func (o *DeviceRegister) SetAppIdNil(b bool)`

 SetAppIdNil sets the value for AppId to be an explicit nil

### UnsetAppId
`func (o *DeviceRegister) UnsetAppId()`

UnsetAppId ensures that no value is present for AppId, not even an explicit nil
### GetPreviousToken

`func (o *DeviceRegister) GetPreviousToken() string`

GetPreviousToken returns the PreviousToken field if non-nil, zero value otherwise.

### GetPreviousTokenOk

`func (o *DeviceRegister) GetPreviousTokenOk() (*string, bool)`

GetPreviousTokenOk returns a tuple with the PreviousToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreviousToken

`func (o *DeviceRegister) SetPreviousToken(v string)`

SetPreviousToken sets PreviousToken field to given value.

### HasPreviousToken

`func (o *DeviceRegister) HasPreviousToken() bool`

HasPreviousToken returns a boolean if a field has been set.

### SetPreviousTokenNil

`func (o *DeviceRegister) SetPreviousTokenNil(b bool)`

 SetPreviousTokenNil sets the value for PreviousToken to be an explicit nil

### UnsetPreviousToken
`func (o *DeviceRegister) UnsetPreviousToken()`

UnsetPreviousToken ensures that no value is present for PreviousToken, not even an explicit nil
### GetAppVersion

`func (o *DeviceRegister) GetAppVersion() string`

GetAppVersion returns the AppVersion field if non-nil, zero value otherwise.

### GetAppVersionOk

`func (o *DeviceRegister) GetAppVersionOk() (*string, bool)`

GetAppVersionOk returns a tuple with the AppVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppVersion

`func (o *DeviceRegister) SetAppVersion(v string)`

SetAppVersion sets AppVersion field to given value.

### HasAppVersion

`func (o *DeviceRegister) HasAppVersion() bool`

HasAppVersion returns a boolean if a field has been set.

### SetAppVersionNil

`func (o *DeviceRegister) SetAppVersionNil(b bool)`

 SetAppVersionNil sets the value for AppVersion to be an explicit nil

### UnsetAppVersion
`func (o *DeviceRegister) UnsetAppVersion()`

UnsetAppVersion ensures that no value is present for AppVersion, not even an explicit nil
### GetLocale

`func (o *DeviceRegister) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *DeviceRegister) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *DeviceRegister) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *DeviceRegister) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### SetLocaleNil

`func (o *DeviceRegister) SetLocaleNil(b bool)`

 SetLocaleNil sets the value for Locale to be an explicit nil

### UnsetLocale
`func (o *DeviceRegister) UnsetLocale()`

UnsetLocale ensures that no value is present for Locale, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


