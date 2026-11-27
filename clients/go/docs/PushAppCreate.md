# PushAppCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**AuthMode** | **string** |  | 
**ProjectId** | Pointer to **string** | Required for delegated. | [optional] 
**ServiceAccount** | Pointer to **string** | The whole service-account JSON file as a string. Required for service_account. | [optional] 
**AndroidPackage** | Pointer to **NullableString** |  | [optional] 
**IosBundleId** | Pointer to **NullableString** |  | [optional] 
**WebOrigin** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewPushAppCreate

`func NewPushAppCreate(name string, authMode string, ) *PushAppCreate`

NewPushAppCreate instantiates a new PushAppCreate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPushAppCreateWithDefaults

`func NewPushAppCreateWithDefaults() *PushAppCreate`

NewPushAppCreateWithDefaults instantiates a new PushAppCreate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *PushAppCreate) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PushAppCreate) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PushAppCreate) SetName(v string)`

SetName sets Name field to given value.


### GetAuthMode

`func (o *PushAppCreate) GetAuthMode() string`

GetAuthMode returns the AuthMode field if non-nil, zero value otherwise.

### GetAuthModeOk

`func (o *PushAppCreate) GetAuthModeOk() (*string, bool)`

GetAuthModeOk returns a tuple with the AuthMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthMode

`func (o *PushAppCreate) SetAuthMode(v string)`

SetAuthMode sets AuthMode field to given value.


### GetProjectId

`func (o *PushAppCreate) GetProjectId() string`

GetProjectId returns the ProjectId field if non-nil, zero value otherwise.

### GetProjectIdOk

`func (o *PushAppCreate) GetProjectIdOk() (*string, bool)`

GetProjectIdOk returns a tuple with the ProjectId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProjectId

`func (o *PushAppCreate) SetProjectId(v string)`

SetProjectId sets ProjectId field to given value.

### HasProjectId

`func (o *PushAppCreate) HasProjectId() bool`

HasProjectId returns a boolean if a field has been set.

### GetServiceAccount

`func (o *PushAppCreate) GetServiceAccount() string`

GetServiceAccount returns the ServiceAccount field if non-nil, zero value otherwise.

### GetServiceAccountOk

`func (o *PushAppCreate) GetServiceAccountOk() (*string, bool)`

GetServiceAccountOk returns a tuple with the ServiceAccount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceAccount

`func (o *PushAppCreate) SetServiceAccount(v string)`

SetServiceAccount sets ServiceAccount field to given value.

### HasServiceAccount

`func (o *PushAppCreate) HasServiceAccount() bool`

HasServiceAccount returns a boolean if a field has been set.

### GetAndroidPackage

`func (o *PushAppCreate) GetAndroidPackage() string`

GetAndroidPackage returns the AndroidPackage field if non-nil, zero value otherwise.

### GetAndroidPackageOk

`func (o *PushAppCreate) GetAndroidPackageOk() (*string, bool)`

GetAndroidPackageOk returns a tuple with the AndroidPackage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAndroidPackage

`func (o *PushAppCreate) SetAndroidPackage(v string)`

SetAndroidPackage sets AndroidPackage field to given value.

### HasAndroidPackage

`func (o *PushAppCreate) HasAndroidPackage() bool`

HasAndroidPackage returns a boolean if a field has been set.

### SetAndroidPackageNil

`func (o *PushAppCreate) SetAndroidPackageNil(b bool)`

 SetAndroidPackageNil sets the value for AndroidPackage to be an explicit nil

### UnsetAndroidPackage
`func (o *PushAppCreate) UnsetAndroidPackage()`

UnsetAndroidPackage ensures that no value is present for AndroidPackage, not even an explicit nil
### GetIosBundleId

`func (o *PushAppCreate) GetIosBundleId() string`

GetIosBundleId returns the IosBundleId field if non-nil, zero value otherwise.

### GetIosBundleIdOk

`func (o *PushAppCreate) GetIosBundleIdOk() (*string, bool)`

GetIosBundleIdOk returns a tuple with the IosBundleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIosBundleId

`func (o *PushAppCreate) SetIosBundleId(v string)`

SetIosBundleId sets IosBundleId field to given value.

### HasIosBundleId

`func (o *PushAppCreate) HasIosBundleId() bool`

HasIosBundleId returns a boolean if a field has been set.

### SetIosBundleIdNil

`func (o *PushAppCreate) SetIosBundleIdNil(b bool)`

 SetIosBundleIdNil sets the value for IosBundleId to be an explicit nil

### UnsetIosBundleId
`func (o *PushAppCreate) UnsetIosBundleId()`

UnsetIosBundleId ensures that no value is present for IosBundleId, not even an explicit nil
### GetWebOrigin

`func (o *PushAppCreate) GetWebOrigin() string`

GetWebOrigin returns the WebOrigin field if non-nil, zero value otherwise.

### GetWebOriginOk

`func (o *PushAppCreate) GetWebOriginOk() (*string, bool)`

GetWebOriginOk returns a tuple with the WebOrigin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebOrigin

`func (o *PushAppCreate) SetWebOrigin(v string)`

SetWebOrigin sets WebOrigin field to given value.

### HasWebOrigin

`func (o *PushAppCreate) HasWebOrigin() bool`

HasWebOrigin returns a boolean if a field has been set.

### SetWebOriginNil

`func (o *PushAppCreate) SetWebOriginNil(b bool)`

 SetWebOriginNil sets the value for WebOrigin to be an explicit nil

### UnsetWebOrigin
`func (o *PushAppCreate) UnsetWebOrigin()`

UnsetWebOrigin ensures that no value is present for WebOrigin, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


