# ListNotifications200ResponseMeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextCursor** | Pointer to **NullableString** | Null on the last page. | [optional] 

## Methods

### NewListNotifications200ResponseMeta

`func NewListNotifications200ResponseMeta() *ListNotifications200ResponseMeta`

NewListNotifications200ResponseMeta instantiates a new ListNotifications200ResponseMeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListNotifications200ResponseMetaWithDefaults

`func NewListNotifications200ResponseMetaWithDefaults() *ListNotifications200ResponseMeta`

NewListNotifications200ResponseMetaWithDefaults instantiates a new ListNotifications200ResponseMeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNextCursor

`func (o *ListNotifications200ResponseMeta) GetNextCursor() string`

GetNextCursor returns the NextCursor field if non-nil, zero value otherwise.

### GetNextCursorOk

`func (o *ListNotifications200ResponseMeta) GetNextCursorOk() (*string, bool)`

GetNextCursorOk returns a tuple with the NextCursor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextCursor

`func (o *ListNotifications200ResponseMeta) SetNextCursor(v string)`

SetNextCursor sets NextCursor field to given value.

### HasNextCursor

`func (o *ListNotifications200ResponseMeta) HasNextCursor() bool`

HasNextCursor returns a boolean if a field has been set.

### SetNextCursorNil

`func (o *ListNotifications200ResponseMeta) SetNextCursorNil(b bool)`

 SetNextCursorNil sets the value for NextCursor to be an explicit nil

### UnsetNextCursor
`func (o *ListNotifications200ResponseMeta) UnsetNextCursor()`

UnsetNextCursor ensures that no value is present for NextCursor, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


