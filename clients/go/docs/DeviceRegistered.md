# DeviceRegistered

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Registered** | **bool** |  | 
**DeviceId** | **string** |  | 
**AppId** | Pointer to **NullableString** |  | [optional] 
**Refreshed** | **bool** |  | 

## Methods

### NewDeviceRegistered

`func NewDeviceRegistered(registered bool, deviceId string, refreshed bool, ) *DeviceRegistered`

NewDeviceRegistered instantiates a new DeviceRegistered object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceRegisteredWithDefaults

`func NewDeviceRegisteredWithDefaults() *DeviceRegistered`

NewDeviceRegisteredWithDefaults instantiates a new DeviceRegistered object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRegistered

`func (o *DeviceRegistered) GetRegistered() bool`

GetRegistered returns the Registered field if non-nil, zero value otherwise.

### GetRegisteredOk

`func (o *DeviceRegistered) GetRegisteredOk() (*bool, bool)`

GetRegisteredOk returns a tuple with the Registered field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistered

`func (o *DeviceRegistered) SetRegistered(v bool)`

SetRegistered sets Registered field to given value.


### GetDeviceId

`func (o *DeviceRegistered) GetDeviceId() string`

GetDeviceId returns the DeviceId field if non-nil, zero value otherwise.

### GetDeviceIdOk

`func (o *DeviceRegistered) GetDeviceIdOk() (*string, bool)`

GetDeviceIdOk returns a tuple with the DeviceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceId

`func (o *DeviceRegistered) SetDeviceId(v string)`

SetDeviceId sets DeviceId field to given value.


### GetAppId

`func (o *DeviceRegistered) GetAppId() string`

GetAppId returns the AppId field if non-nil, zero value otherwise.

### GetAppIdOk

`func (o *DeviceRegistered) GetAppIdOk() (*string, bool)`

GetAppIdOk returns a tuple with the AppId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppId

`func (o *DeviceRegistered) SetAppId(v string)`

SetAppId sets AppId field to given value.

### HasAppId

`func (o *DeviceRegistered) HasAppId() bool`

HasAppId returns a boolean if a field has been set.

### SetAppIdNil

`func (o *DeviceRegistered) SetAppIdNil(b bool)`

 SetAppIdNil sets the value for AppId to be an explicit nil

### UnsetAppId
`func (o *DeviceRegistered) UnsetAppId()`

UnsetAppId ensures that no value is present for AppId, not even an explicit nil
### GetRefreshed

`func (o *DeviceRegistered) GetRefreshed() bool`

GetRefreshed returns the Refreshed field if non-nil, zero value otherwise.

### GetRefreshedOk

`func (o *DeviceRegistered) GetRefreshedOk() (*bool, bool)`

GetRefreshedOk returns a tuple with the Refreshed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefreshed

`func (o *DeviceRegistered) SetRefreshed(v bool)`

SetRefreshed sets Refreshed field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


