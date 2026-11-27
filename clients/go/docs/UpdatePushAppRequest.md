# UpdatePushAppRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**IsDefault** | Pointer to **bool** | Only true is accepted. Make this verified app the default. | [optional] 
**AndroidPackage** | Pointer to **NullableString** |  | [optional] 
**IosBundleId** | Pointer to **NullableString** |  | [optional] 
**WebOrigin** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewUpdatePushAppRequest

`func NewUpdatePushAppRequest() *UpdatePushAppRequest`

NewUpdatePushAppRequest instantiates a new UpdatePushAppRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdatePushAppRequestWithDefaults

`func NewUpdatePushAppRequestWithDefaults() *UpdatePushAppRequest`

NewUpdatePushAppRequestWithDefaults instantiates a new UpdatePushAppRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *UpdatePushAppRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UpdatePushAppRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UpdatePushAppRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UpdatePushAppRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetIsDefault

`func (o *UpdatePushAppRequest) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *UpdatePushAppRequest) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *UpdatePushAppRequest) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.

### HasIsDefault

`func (o *UpdatePushAppRequest) HasIsDefault() bool`

HasIsDefault returns a boolean if a field has been set.

### GetAndroidPackage

`func (o *UpdatePushAppRequest) GetAndroidPackage() string`

GetAndroidPackage returns the AndroidPackage field if non-nil, zero value otherwise.

### GetAndroidPackageOk

`func (o *UpdatePushAppRequest) GetAndroidPackageOk() (*string, bool)`

GetAndroidPackageOk returns a tuple with the AndroidPackage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAndroidPackage

`func (o *UpdatePushAppRequest) SetAndroidPackage(v string)`

SetAndroidPackage sets AndroidPackage field to given value.

### HasAndroidPackage

`func (o *UpdatePushAppRequest) HasAndroidPackage() bool`

HasAndroidPackage returns a boolean if a field has been set.

### SetAndroidPackageNil

`func (o *UpdatePushAppRequest) SetAndroidPackageNil(b bool)`

 SetAndroidPackageNil sets the value for AndroidPackage to be an explicit nil

### UnsetAndroidPackage
`func (o *UpdatePushAppRequest) UnsetAndroidPackage()`

UnsetAndroidPackage ensures that no value is present for AndroidPackage, not even an explicit nil
### GetIosBundleId

`func (o *UpdatePushAppRequest) GetIosBundleId() string`

GetIosBundleId returns the IosBundleId field if non-nil, zero value otherwise.

### GetIosBundleIdOk

`func (o *UpdatePushAppRequest) GetIosBundleIdOk() (*string, bool)`

GetIosBundleIdOk returns a tuple with the IosBundleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIosBundleId

`func (o *UpdatePushAppRequest) SetIosBundleId(v string)`

SetIosBundleId sets IosBundleId field to given value.

### HasIosBundleId

`func (o *UpdatePushAppRequest) HasIosBundleId() bool`

HasIosBundleId returns a boolean if a field has been set.

### SetIosBundleIdNil

`func (o *UpdatePushAppRequest) SetIosBundleIdNil(b bool)`

 SetIosBundleIdNil sets the value for IosBundleId to be an explicit nil

### UnsetIosBundleId
`func (o *UpdatePushAppRequest) UnsetIosBundleId()`

UnsetIosBundleId ensures that no value is present for IosBundleId, not even an explicit nil
### GetWebOrigin

`func (o *UpdatePushAppRequest) GetWebOrigin() string`

GetWebOrigin returns the WebOrigin field if non-nil, zero value otherwise.

### GetWebOriginOk

`func (o *UpdatePushAppRequest) GetWebOriginOk() (*string, bool)`

GetWebOriginOk returns a tuple with the WebOrigin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebOrigin

`func (o *UpdatePushAppRequest) SetWebOrigin(v string)`

SetWebOrigin sets WebOrigin field to given value.

### HasWebOrigin

`func (o *UpdatePushAppRequest) HasWebOrigin() bool`

HasWebOrigin returns a boolean if a field has been set.

### SetWebOriginNil

`func (o *UpdatePushAppRequest) SetWebOriginNil(b bool)`

 SetWebOriginNil sets the value for WebOrigin to be an explicit nil

### UnsetWebOrigin
`func (o *UpdatePushAppRequest) UnsetWebOrigin()`

UnsetWebOrigin ensures that no value is present for WebOrigin, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


