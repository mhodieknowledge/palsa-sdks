# Device

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**ContactId** | Pointer to **NullableString** |  | [optional] 
**AppId** | Pointer to **NullableString** |  | [optional] 
**Platform** | **string** |  | 
**TokenEnd** | **string** | The last eight characters of the token. The token itself is never returned. | 
**AppVersion** | Pointer to **NullableString** |  | [optional] 
**Locale** | Pointer to **NullableString** |  | [optional] 
**LastSeenAt** | Pointer to **NullableString** |  | [optional] 
**TokenRefreshedAt** | Pointer to **NullableString** |  | [optional] 
**InvalidatedAt** | Pointer to **NullableString** |  | [optional] 
**InvalidReason** | Pointer to **NullableString** | unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed. | [optional] 
**CreatedAt** | **string** |  | 

## Methods

### NewDevice

`func NewDevice(id string, platform string, tokenEnd string, createdAt string, ) *Device`

NewDevice instantiates a new Device object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceWithDefaults

`func NewDeviceWithDefaults() *Device`

NewDeviceWithDefaults instantiates a new Device object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Device) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Device) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Device) SetId(v string)`

SetId sets Id field to given value.


### GetContactId

`func (o *Device) GetContactId() string`

GetContactId returns the ContactId field if non-nil, zero value otherwise.

### GetContactIdOk

`func (o *Device) GetContactIdOk() (*string, bool)`

GetContactIdOk returns a tuple with the ContactId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContactId

`func (o *Device) SetContactId(v string)`

SetContactId sets ContactId field to given value.

### HasContactId

`func (o *Device) HasContactId() bool`

HasContactId returns a boolean if a field has been set.

### SetContactIdNil

`func (o *Device) SetContactIdNil(b bool)`

 SetContactIdNil sets the value for ContactId to be an explicit nil

### UnsetContactId
`func (o *Device) UnsetContactId()`

UnsetContactId ensures that no value is present for ContactId, not even an explicit nil
### GetAppId

`func (o *Device) GetAppId() string`

GetAppId returns the AppId field if non-nil, zero value otherwise.

### GetAppIdOk

`func (o *Device) GetAppIdOk() (*string, bool)`

GetAppIdOk returns a tuple with the AppId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppId

`func (o *Device) SetAppId(v string)`

SetAppId sets AppId field to given value.

### HasAppId

`func (o *Device) HasAppId() bool`

HasAppId returns a boolean if a field has been set.

### SetAppIdNil

`func (o *Device) SetAppIdNil(b bool)`

 SetAppIdNil sets the value for AppId to be an explicit nil

### UnsetAppId
`func (o *Device) UnsetAppId()`

UnsetAppId ensures that no value is present for AppId, not even an explicit nil
### GetPlatform

`func (o *Device) GetPlatform() string`

GetPlatform returns the Platform field if non-nil, zero value otherwise.

### GetPlatformOk

`func (o *Device) GetPlatformOk() (*string, bool)`

GetPlatformOk returns a tuple with the Platform field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatform

`func (o *Device) SetPlatform(v string)`

SetPlatform sets Platform field to given value.


### GetTokenEnd

`func (o *Device) GetTokenEnd() string`

GetTokenEnd returns the TokenEnd field if non-nil, zero value otherwise.

### GetTokenEndOk

`func (o *Device) GetTokenEndOk() (*string, bool)`

GetTokenEndOk returns a tuple with the TokenEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEnd

`func (o *Device) SetTokenEnd(v string)`

SetTokenEnd sets TokenEnd field to given value.


### GetAppVersion

`func (o *Device) GetAppVersion() string`

GetAppVersion returns the AppVersion field if non-nil, zero value otherwise.

### GetAppVersionOk

`func (o *Device) GetAppVersionOk() (*string, bool)`

GetAppVersionOk returns a tuple with the AppVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppVersion

`func (o *Device) SetAppVersion(v string)`

SetAppVersion sets AppVersion field to given value.

### HasAppVersion

`func (o *Device) HasAppVersion() bool`

HasAppVersion returns a boolean if a field has been set.

### SetAppVersionNil

`func (o *Device) SetAppVersionNil(b bool)`

 SetAppVersionNil sets the value for AppVersion to be an explicit nil

### UnsetAppVersion
`func (o *Device) UnsetAppVersion()`

UnsetAppVersion ensures that no value is present for AppVersion, not even an explicit nil
### GetLocale

`func (o *Device) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *Device) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *Device) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *Device) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### SetLocaleNil

`func (o *Device) SetLocaleNil(b bool)`

 SetLocaleNil sets the value for Locale to be an explicit nil

### UnsetLocale
`func (o *Device) UnsetLocale()`

UnsetLocale ensures that no value is present for Locale, not even an explicit nil
### GetLastSeenAt

`func (o *Device) GetLastSeenAt() string`

GetLastSeenAt returns the LastSeenAt field if non-nil, zero value otherwise.

### GetLastSeenAtOk

`func (o *Device) GetLastSeenAtOk() (*string, bool)`

GetLastSeenAtOk returns a tuple with the LastSeenAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeenAt

`func (o *Device) SetLastSeenAt(v string)`

SetLastSeenAt sets LastSeenAt field to given value.

### HasLastSeenAt

`func (o *Device) HasLastSeenAt() bool`

HasLastSeenAt returns a boolean if a field has been set.

### SetLastSeenAtNil

`func (o *Device) SetLastSeenAtNil(b bool)`

 SetLastSeenAtNil sets the value for LastSeenAt to be an explicit nil

### UnsetLastSeenAt
`func (o *Device) UnsetLastSeenAt()`

UnsetLastSeenAt ensures that no value is present for LastSeenAt, not even an explicit nil
### GetTokenRefreshedAt

`func (o *Device) GetTokenRefreshedAt() string`

GetTokenRefreshedAt returns the TokenRefreshedAt field if non-nil, zero value otherwise.

### GetTokenRefreshedAtOk

`func (o *Device) GetTokenRefreshedAtOk() (*string, bool)`

GetTokenRefreshedAtOk returns a tuple with the TokenRefreshedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenRefreshedAt

`func (o *Device) SetTokenRefreshedAt(v string)`

SetTokenRefreshedAt sets TokenRefreshedAt field to given value.

### HasTokenRefreshedAt

`func (o *Device) HasTokenRefreshedAt() bool`

HasTokenRefreshedAt returns a boolean if a field has been set.

### SetTokenRefreshedAtNil

`func (o *Device) SetTokenRefreshedAtNil(b bool)`

 SetTokenRefreshedAtNil sets the value for TokenRefreshedAt to be an explicit nil

### UnsetTokenRefreshedAt
`func (o *Device) UnsetTokenRefreshedAt()`

UnsetTokenRefreshedAt ensures that no value is present for TokenRefreshedAt, not even an explicit nil
### GetInvalidatedAt

`func (o *Device) GetInvalidatedAt() string`

GetInvalidatedAt returns the InvalidatedAt field if non-nil, zero value otherwise.

### GetInvalidatedAtOk

`func (o *Device) GetInvalidatedAtOk() (*string, bool)`

GetInvalidatedAtOk returns a tuple with the InvalidatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInvalidatedAt

`func (o *Device) SetInvalidatedAt(v string)`

SetInvalidatedAt sets InvalidatedAt field to given value.

### HasInvalidatedAt

`func (o *Device) HasInvalidatedAt() bool`

HasInvalidatedAt returns a boolean if a field has been set.

### SetInvalidatedAtNil

`func (o *Device) SetInvalidatedAtNil(b bool)`

 SetInvalidatedAtNil sets the value for InvalidatedAt to be an explicit nil

### UnsetInvalidatedAt
`func (o *Device) UnsetInvalidatedAt()`

UnsetInvalidatedAt ensures that no value is present for InvalidatedAt, not even an explicit nil
### GetInvalidReason

`func (o *Device) GetInvalidReason() string`

GetInvalidReason returns the InvalidReason field if non-nil, zero value otherwise.

### GetInvalidReasonOk

`func (o *Device) GetInvalidReasonOk() (*string, bool)`

GetInvalidReasonOk returns a tuple with the InvalidReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInvalidReason

`func (o *Device) SetInvalidReason(v string)`

SetInvalidReason sets InvalidReason field to given value.

### HasInvalidReason

`func (o *Device) HasInvalidReason() bool`

HasInvalidReason returns a boolean if a field has been set.

### SetInvalidReasonNil

`func (o *Device) SetInvalidReasonNil(b bool)`

 SetInvalidReasonNil sets the value for InvalidReason to be an explicit nil

### UnsetInvalidReason
`func (o *Device) UnsetInvalidReason()`

UnsetInvalidReason ensures that no value is present for InvalidReason, not even an explicit nil
### GetCreatedAt

`func (o *Device) GetCreatedAt() string`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Device) GetCreatedAtOk() (*string, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Device) SetCreatedAt(v string)`

SetCreatedAt sets CreatedAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


