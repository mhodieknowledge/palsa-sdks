# WebPushOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | Pointer to **string** |  | [optional] 
**RequireInteraction** | Pointer to **bool** | Keep it on screen until the person acts on it. | [optional] 

## Methods

### NewWebPushOptions

`func NewWebPushOptions() *WebPushOptions`

NewWebPushOptions instantiates a new WebPushOptions object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebPushOptionsWithDefaults

`func NewWebPushOptionsWithDefaults() *WebPushOptions`

NewWebPushOptionsWithDefaults instantiates a new WebPushOptions object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIcon

`func (o *WebPushOptions) GetIcon() string`

GetIcon returns the Icon field if non-nil, zero value otherwise.

### GetIconOk

`func (o *WebPushOptions) GetIconOk() (*string, bool)`

GetIconOk returns a tuple with the Icon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcon

`func (o *WebPushOptions) SetIcon(v string)`

SetIcon sets Icon field to given value.

### HasIcon

`func (o *WebPushOptions) HasIcon() bool`

HasIcon returns a boolean if a field has been set.

### GetRequireInteraction

`func (o *WebPushOptions) GetRequireInteraction() bool`

GetRequireInteraction returns the RequireInteraction field if non-nil, zero value otherwise.

### GetRequireInteractionOk

`func (o *WebPushOptions) GetRequireInteractionOk() (*bool, bool)`

GetRequireInteractionOk returns a tuple with the RequireInteraction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireInteraction

`func (o *WebPushOptions) SetRequireInteraction(v bool)`

SetRequireInteraction sets RequireInteraction field to given value.

### HasRequireInteraction

`func (o *WebPushOptions) HasRequireInteraction() bool`

HasRequireInteraction returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


