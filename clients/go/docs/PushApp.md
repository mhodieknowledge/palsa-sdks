# PushApp

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**ProjectId** | **string** |  | 
**AuthMode** | **string** |  | 
**ClientEmail** | Pointer to **NullableString** | The uploaded key&#39;s service account. The key itself is never returned. | [optional] 
**GrantTo** | Pointer to **NullableString** | Delegated only. The account to grant the role to. | [optional] 
**Role** | Pointer to **string** |  | [optional] 
**AndroidPackage** | Pointer to **NullableString** |  | [optional] 
**IosBundleId** | Pointer to **NullableString** |  | [optional] 
**WebOrigin** | Pointer to **NullableString** |  | [optional] 
**Status** | **string** | Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved. | 
**Message** | Pointer to **NullableString** |  | [optional] 
**IsDefault** | **bool** |  | 
**VerifiedAt** | Pointer to **NullableString** |  | [optional] 
**CheckedAt** | Pointer to **NullableString** |  | [optional] 
**CreatedAt** | **string** |  | 
**UpdatedAt** | **string** |  | 

## Methods

### NewPushApp

`func NewPushApp(id string, name string, projectId string, authMode string, status string, isDefault bool, createdAt string, updatedAt string, ) *PushApp`

NewPushApp instantiates a new PushApp object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPushAppWithDefaults

`func NewPushAppWithDefaults() *PushApp`

NewPushAppWithDefaults instantiates a new PushApp object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PushApp) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PushApp) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PushApp) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *PushApp) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PushApp) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PushApp) SetName(v string)`

SetName sets Name field to given value.


### GetProjectId

`func (o *PushApp) GetProjectId() string`

GetProjectId returns the ProjectId field if non-nil, zero value otherwise.

### GetProjectIdOk

`func (o *PushApp) GetProjectIdOk() (*string, bool)`

GetProjectIdOk returns a tuple with the ProjectId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProjectId

`func (o *PushApp) SetProjectId(v string)`

SetProjectId sets ProjectId field to given value.


### GetAuthMode

`func (o *PushApp) GetAuthMode() string`

GetAuthMode returns the AuthMode field if non-nil, zero value otherwise.

### GetAuthModeOk

`func (o *PushApp) GetAuthModeOk() (*string, bool)`

GetAuthModeOk returns a tuple with the AuthMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthMode

`func (o *PushApp) SetAuthMode(v string)`

SetAuthMode sets AuthMode field to given value.


### GetClientEmail

`func (o *PushApp) GetClientEmail() string`

GetClientEmail returns the ClientEmail field if non-nil, zero value otherwise.

### GetClientEmailOk

`func (o *PushApp) GetClientEmailOk() (*string, bool)`

GetClientEmailOk returns a tuple with the ClientEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientEmail

`func (o *PushApp) SetClientEmail(v string)`

SetClientEmail sets ClientEmail field to given value.

### HasClientEmail

`func (o *PushApp) HasClientEmail() bool`

HasClientEmail returns a boolean if a field has been set.

### SetClientEmailNil

`func (o *PushApp) SetClientEmailNil(b bool)`

 SetClientEmailNil sets the value for ClientEmail to be an explicit nil

### UnsetClientEmail
`func (o *PushApp) UnsetClientEmail()`

UnsetClientEmail ensures that no value is present for ClientEmail, not even an explicit nil
### GetGrantTo

`func (o *PushApp) GetGrantTo() string`

GetGrantTo returns the GrantTo field if non-nil, zero value otherwise.

### GetGrantToOk

`func (o *PushApp) GetGrantToOk() (*string, bool)`

GetGrantToOk returns a tuple with the GrantTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTo

`func (o *PushApp) SetGrantTo(v string)`

SetGrantTo sets GrantTo field to given value.

### HasGrantTo

`func (o *PushApp) HasGrantTo() bool`

HasGrantTo returns a boolean if a field has been set.

### SetGrantToNil

`func (o *PushApp) SetGrantToNil(b bool)`

 SetGrantToNil sets the value for GrantTo to be an explicit nil

### UnsetGrantTo
`func (o *PushApp) UnsetGrantTo()`

UnsetGrantTo ensures that no value is present for GrantTo, not even an explicit nil
### GetRole

`func (o *PushApp) GetRole() string`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *PushApp) GetRoleOk() (*string, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *PushApp) SetRole(v string)`

SetRole sets Role field to given value.

### HasRole

`func (o *PushApp) HasRole() bool`

HasRole returns a boolean if a field has been set.

### GetAndroidPackage

`func (o *PushApp) GetAndroidPackage() string`

GetAndroidPackage returns the AndroidPackage field if non-nil, zero value otherwise.

### GetAndroidPackageOk

`func (o *PushApp) GetAndroidPackageOk() (*string, bool)`

GetAndroidPackageOk returns a tuple with the AndroidPackage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAndroidPackage

`func (o *PushApp) SetAndroidPackage(v string)`

SetAndroidPackage sets AndroidPackage field to given value.

### HasAndroidPackage

`func (o *PushApp) HasAndroidPackage() bool`

HasAndroidPackage returns a boolean if a field has been set.

### SetAndroidPackageNil

`func (o *PushApp) SetAndroidPackageNil(b bool)`

 SetAndroidPackageNil sets the value for AndroidPackage to be an explicit nil

### UnsetAndroidPackage
`func (o *PushApp) UnsetAndroidPackage()`

UnsetAndroidPackage ensures that no value is present for AndroidPackage, not even an explicit nil
### GetIosBundleId

`func (o *PushApp) GetIosBundleId() string`

GetIosBundleId returns the IosBundleId field if non-nil, zero value otherwise.

### GetIosBundleIdOk

`func (o *PushApp) GetIosBundleIdOk() (*string, bool)`

GetIosBundleIdOk returns a tuple with the IosBundleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIosBundleId

`func (o *PushApp) SetIosBundleId(v string)`

SetIosBundleId sets IosBundleId field to given value.

### HasIosBundleId

`func (o *PushApp) HasIosBundleId() bool`

HasIosBundleId returns a boolean if a field has been set.

### SetIosBundleIdNil

`func (o *PushApp) SetIosBundleIdNil(b bool)`

 SetIosBundleIdNil sets the value for IosBundleId to be an explicit nil

### UnsetIosBundleId
`func (o *PushApp) UnsetIosBundleId()`

UnsetIosBundleId ensures that no value is present for IosBundleId, not even an explicit nil
### GetWebOrigin

`func (o *PushApp) GetWebOrigin() string`

GetWebOrigin returns the WebOrigin field if non-nil, zero value otherwise.

### GetWebOriginOk

`func (o *PushApp) GetWebOriginOk() (*string, bool)`

GetWebOriginOk returns a tuple with the WebOrigin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebOrigin

`func (o *PushApp) SetWebOrigin(v string)`

SetWebOrigin sets WebOrigin field to given value.

### HasWebOrigin

`func (o *PushApp) HasWebOrigin() bool`

HasWebOrigin returns a boolean if a field has been set.

### SetWebOriginNil

`func (o *PushApp) SetWebOriginNil(b bool)`

 SetWebOriginNil sets the value for WebOrigin to be an explicit nil

### UnsetWebOrigin
`func (o *PushApp) UnsetWebOrigin()`

UnsetWebOrigin ensures that no value is present for WebOrigin, not even an explicit nil
### GetStatus

`func (o *PushApp) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *PushApp) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *PushApp) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetMessage

`func (o *PushApp) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PushApp) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PushApp) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PushApp) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### SetMessageNil

`func (o *PushApp) SetMessageNil(b bool)`

 SetMessageNil sets the value for Message to be an explicit nil

### UnsetMessage
`func (o *PushApp) UnsetMessage()`

UnsetMessage ensures that no value is present for Message, not even an explicit nil
### GetIsDefault

`func (o *PushApp) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *PushApp) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *PushApp) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.


### GetVerifiedAt

`func (o *PushApp) GetVerifiedAt() string`

GetVerifiedAt returns the VerifiedAt field if non-nil, zero value otherwise.

### GetVerifiedAtOk

`func (o *PushApp) GetVerifiedAtOk() (*string, bool)`

GetVerifiedAtOk returns a tuple with the VerifiedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerifiedAt

`func (o *PushApp) SetVerifiedAt(v string)`

SetVerifiedAt sets VerifiedAt field to given value.

### HasVerifiedAt

`func (o *PushApp) HasVerifiedAt() bool`

HasVerifiedAt returns a boolean if a field has been set.

### SetVerifiedAtNil

`func (o *PushApp) SetVerifiedAtNil(b bool)`

 SetVerifiedAtNil sets the value for VerifiedAt to be an explicit nil

### UnsetVerifiedAt
`func (o *PushApp) UnsetVerifiedAt()`

UnsetVerifiedAt ensures that no value is present for VerifiedAt, not even an explicit nil
### GetCheckedAt

`func (o *PushApp) GetCheckedAt() string`

GetCheckedAt returns the CheckedAt field if non-nil, zero value otherwise.

### GetCheckedAtOk

`func (o *PushApp) GetCheckedAtOk() (*string, bool)`

GetCheckedAtOk returns a tuple with the CheckedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheckedAt

`func (o *PushApp) SetCheckedAt(v string)`

SetCheckedAt sets CheckedAt field to given value.

### HasCheckedAt

`func (o *PushApp) HasCheckedAt() bool`

HasCheckedAt returns a boolean if a field has been set.

### SetCheckedAtNil

`func (o *PushApp) SetCheckedAtNil(b bool)`

 SetCheckedAtNil sets the value for CheckedAt to be an explicit nil

### UnsetCheckedAt
`func (o *PushApp) UnsetCheckedAt()`

UnsetCheckedAt ensures that no value is present for CheckedAt, not even an explicit nil
### GetCreatedAt

`func (o *PushApp) GetCreatedAt() string`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *PushApp) GetCreatedAtOk() (*string, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *PushApp) SetCreatedAt(v string)`

SetCreatedAt sets CreatedAt field to given value.


### GetUpdatedAt

`func (o *PushApp) GetUpdatedAt() string`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *PushApp) GetUpdatedAtOk() (*string, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *PushApp) SetUpdatedAt(v string)`

SetUpdatedAt sets UpdatedAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


