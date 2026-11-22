# Notification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Kind** | **string** |  | 
**Name** | Pointer to **NullableString** |  | [optional] 
**Status** | **string** |  | 
**ReservedUnits** | **map[string]int32** | Billable units, per channel. | 
**SettledUnits** | **map[string]int32** | Billable units, per channel. | 
**RecipientCount** | **int32** |  | 
**ScheduledAt** | Pointer to **NullableString** |  | [optional] 
**StartedAt** | Pointer to **NullableString** |  | [optional] 
**FinishedAt** | Pointer to **NullableString** |  | [optional] 
**FailureReason** | Pointer to **NullableString** |  | [optional] 
**Metadata** | Pointer to **NullableString** | The JSON you sent | [optional] 
**CreatedAt** | **string** |  | 
**Deliveries** | **map[string]int32** | How many deliveries are in each state. | 

## Methods

### NewNotification

`func NewNotification(id string, kind string, status string, reservedUnits map[string]int32, settledUnits map[string]int32, recipientCount int32, createdAt string, deliveries map[string]int32, ) *Notification`

NewNotification instantiates a new Notification object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNotificationWithDefaults

`func NewNotificationWithDefaults() *Notification`

NewNotificationWithDefaults instantiates a new Notification object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Notification) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Notification) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Notification) SetId(v string)`

SetId sets Id field to given value.


### GetKind

`func (o *Notification) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *Notification) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *Notification) SetKind(v string)`

SetKind sets Kind field to given value.


### GetName

`func (o *Notification) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Notification) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Notification) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Notification) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *Notification) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *Notification) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetStatus

`func (o *Notification) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Notification) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Notification) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetReservedUnits

`func (o *Notification) GetReservedUnits() map[string]int32`

GetReservedUnits returns the ReservedUnits field if non-nil, zero value otherwise.

### GetReservedUnitsOk

`func (o *Notification) GetReservedUnitsOk() (*map[string]int32, bool)`

GetReservedUnitsOk returns a tuple with the ReservedUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReservedUnits

`func (o *Notification) SetReservedUnits(v map[string]int32)`

SetReservedUnits sets ReservedUnits field to given value.


### GetSettledUnits

`func (o *Notification) GetSettledUnits() map[string]int32`

GetSettledUnits returns the SettledUnits field if non-nil, zero value otherwise.

### GetSettledUnitsOk

`func (o *Notification) GetSettledUnitsOk() (*map[string]int32, bool)`

GetSettledUnitsOk returns a tuple with the SettledUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettledUnits

`func (o *Notification) SetSettledUnits(v map[string]int32)`

SetSettledUnits sets SettledUnits field to given value.


### GetRecipientCount

`func (o *Notification) GetRecipientCount() int32`

GetRecipientCount returns the RecipientCount field if non-nil, zero value otherwise.

### GetRecipientCountOk

`func (o *Notification) GetRecipientCountOk() (*int32, bool)`

GetRecipientCountOk returns a tuple with the RecipientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipientCount

`func (o *Notification) SetRecipientCount(v int32)`

SetRecipientCount sets RecipientCount field to given value.


### GetScheduledAt

`func (o *Notification) GetScheduledAt() string`

GetScheduledAt returns the ScheduledAt field if non-nil, zero value otherwise.

### GetScheduledAtOk

`func (o *Notification) GetScheduledAtOk() (*string, bool)`

GetScheduledAtOk returns a tuple with the ScheduledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledAt

`func (o *Notification) SetScheduledAt(v string)`

SetScheduledAt sets ScheduledAt field to given value.

### HasScheduledAt

`func (o *Notification) HasScheduledAt() bool`

HasScheduledAt returns a boolean if a field has been set.

### SetScheduledAtNil

`func (o *Notification) SetScheduledAtNil(b bool)`

 SetScheduledAtNil sets the value for ScheduledAt to be an explicit nil

### UnsetScheduledAt
`func (o *Notification) UnsetScheduledAt()`

UnsetScheduledAt ensures that no value is present for ScheduledAt, not even an explicit nil
### GetStartedAt

`func (o *Notification) GetStartedAt() string`

GetStartedAt returns the StartedAt field if non-nil, zero value otherwise.

### GetStartedAtOk

`func (o *Notification) GetStartedAtOk() (*string, bool)`

GetStartedAtOk returns a tuple with the StartedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartedAt

`func (o *Notification) SetStartedAt(v string)`

SetStartedAt sets StartedAt field to given value.

### HasStartedAt

`func (o *Notification) HasStartedAt() bool`

HasStartedAt returns a boolean if a field has been set.

### SetStartedAtNil

`func (o *Notification) SetStartedAtNil(b bool)`

 SetStartedAtNil sets the value for StartedAt to be an explicit nil

### UnsetStartedAt
`func (o *Notification) UnsetStartedAt()`

UnsetStartedAt ensures that no value is present for StartedAt, not even an explicit nil
### GetFinishedAt

`func (o *Notification) GetFinishedAt() string`

GetFinishedAt returns the FinishedAt field if non-nil, zero value otherwise.

### GetFinishedAtOk

`func (o *Notification) GetFinishedAtOk() (*string, bool)`

GetFinishedAtOk returns a tuple with the FinishedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFinishedAt

`func (o *Notification) SetFinishedAt(v string)`

SetFinishedAt sets FinishedAt field to given value.

### HasFinishedAt

`func (o *Notification) HasFinishedAt() bool`

HasFinishedAt returns a boolean if a field has been set.

### SetFinishedAtNil

`func (o *Notification) SetFinishedAtNil(b bool)`

 SetFinishedAtNil sets the value for FinishedAt to be an explicit nil

### UnsetFinishedAt
`func (o *Notification) UnsetFinishedAt()`

UnsetFinishedAt ensures that no value is present for FinishedAt, not even an explicit nil
### GetFailureReason

`func (o *Notification) GetFailureReason() string`

GetFailureReason returns the FailureReason field if non-nil, zero value otherwise.

### GetFailureReasonOk

`func (o *Notification) GetFailureReasonOk() (*string, bool)`

GetFailureReasonOk returns a tuple with the FailureReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureReason

`func (o *Notification) SetFailureReason(v string)`

SetFailureReason sets FailureReason field to given value.

### HasFailureReason

`func (o *Notification) HasFailureReason() bool`

HasFailureReason returns a boolean if a field has been set.

### SetFailureReasonNil

`func (o *Notification) SetFailureReasonNil(b bool)`

 SetFailureReasonNil sets the value for FailureReason to be an explicit nil

### UnsetFailureReason
`func (o *Notification) UnsetFailureReason()`

UnsetFailureReason ensures that no value is present for FailureReason, not even an explicit nil
### GetMetadata

`func (o *Notification) GetMetadata() string`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *Notification) GetMetadataOk() (*string, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *Notification) SetMetadata(v string)`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *Notification) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.

### SetMetadataNil

`func (o *Notification) SetMetadataNil(b bool)`

 SetMetadataNil sets the value for Metadata to be an explicit nil

### UnsetMetadata
`func (o *Notification) UnsetMetadata()`

UnsetMetadata ensures that no value is present for Metadata, not even an explicit nil
### GetCreatedAt

`func (o *Notification) GetCreatedAt() string`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Notification) GetCreatedAtOk() (*string, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Notification) SetCreatedAt(v string)`

SetCreatedAt sets CreatedAt field to given value.


### GetDeliveries

`func (o *Notification) GetDeliveries() map[string]int32`

GetDeliveries returns the Deliveries field if non-nil, zero value otherwise.

### GetDeliveriesOk

`func (o *Notification) GetDeliveriesOk() (*map[string]int32, bool)`

GetDeliveriesOk returns a tuple with the Deliveries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeliveries

`func (o *Notification) SetDeliveries(v map[string]int32)`

SetDeliveries sets Deliveries field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


