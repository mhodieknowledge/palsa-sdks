# SendingDomain

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Domain** | **string** |  | 
**Status** | **string** |  | 
**Message** | **string** | What the state means | 
**DkimStatus** | Pointer to **string** |  | [optional] 
**MailFromDomain** | Pointer to **string** |  | [optional] 
**MailFromStatus** | Pointer to **string** |  | [optional] 
**Records** | [**[]SendingDomainRecordsInner**](SendingDomainRecordsInner.md) |  | 
**LastCheckedAt** | Pointer to **time.Time** |  | [optional] 
**NextCheckAt** | Pointer to **time.Time** |  | [optional] 
**VerifiedAt** | Pointer to **time.Time** |  | [optional] 
**CreatedAt** | **time.Time** |  | 

## Methods

### NewSendingDomain

`func NewSendingDomain(id string, domain string, status string, message string, records []SendingDomainRecordsInner, createdAt time.Time, ) *SendingDomain`

NewSendingDomain instantiates a new SendingDomain object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendingDomainWithDefaults

`func NewSendingDomainWithDefaults() *SendingDomain`

NewSendingDomainWithDefaults instantiates a new SendingDomain object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SendingDomain) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SendingDomain) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SendingDomain) SetId(v string)`

SetId sets Id field to given value.


### GetDomain

`func (o *SendingDomain) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *SendingDomain) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *SendingDomain) SetDomain(v string)`

SetDomain sets Domain field to given value.


### GetStatus

`func (o *SendingDomain) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SendingDomain) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SendingDomain) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetMessage

`func (o *SendingDomain) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *SendingDomain) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *SendingDomain) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetDkimStatus

`func (o *SendingDomain) GetDkimStatus() string`

GetDkimStatus returns the DkimStatus field if non-nil, zero value otherwise.

### GetDkimStatusOk

`func (o *SendingDomain) GetDkimStatusOk() (*string, bool)`

GetDkimStatusOk returns a tuple with the DkimStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDkimStatus

`func (o *SendingDomain) SetDkimStatus(v string)`

SetDkimStatus sets DkimStatus field to given value.

### HasDkimStatus

`func (o *SendingDomain) HasDkimStatus() bool`

HasDkimStatus returns a boolean if a field has been set.

### GetMailFromDomain

`func (o *SendingDomain) GetMailFromDomain() string`

GetMailFromDomain returns the MailFromDomain field if non-nil, zero value otherwise.

### GetMailFromDomainOk

`func (o *SendingDomain) GetMailFromDomainOk() (*string, bool)`

GetMailFromDomainOk returns a tuple with the MailFromDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailFromDomain

`func (o *SendingDomain) SetMailFromDomain(v string)`

SetMailFromDomain sets MailFromDomain field to given value.

### HasMailFromDomain

`func (o *SendingDomain) HasMailFromDomain() bool`

HasMailFromDomain returns a boolean if a field has been set.

### GetMailFromStatus

`func (o *SendingDomain) GetMailFromStatus() string`

GetMailFromStatus returns the MailFromStatus field if non-nil, zero value otherwise.

### GetMailFromStatusOk

`func (o *SendingDomain) GetMailFromStatusOk() (*string, bool)`

GetMailFromStatusOk returns a tuple with the MailFromStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailFromStatus

`func (o *SendingDomain) SetMailFromStatus(v string)`

SetMailFromStatus sets MailFromStatus field to given value.

### HasMailFromStatus

`func (o *SendingDomain) HasMailFromStatus() bool`

HasMailFromStatus returns a boolean if a field has been set.

### GetRecords

`func (o *SendingDomain) GetRecords() []SendingDomainRecordsInner`

GetRecords returns the Records field if non-nil, zero value otherwise.

### GetRecordsOk

`func (o *SendingDomain) GetRecordsOk() (*[]SendingDomainRecordsInner, bool)`

GetRecordsOk returns a tuple with the Records field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecords

`func (o *SendingDomain) SetRecords(v []SendingDomainRecordsInner)`

SetRecords sets Records field to given value.


### GetLastCheckedAt

`func (o *SendingDomain) GetLastCheckedAt() time.Time`

GetLastCheckedAt returns the LastCheckedAt field if non-nil, zero value otherwise.

### GetLastCheckedAtOk

`func (o *SendingDomain) GetLastCheckedAtOk() (*time.Time, bool)`

GetLastCheckedAtOk returns a tuple with the LastCheckedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastCheckedAt

`func (o *SendingDomain) SetLastCheckedAt(v time.Time)`

SetLastCheckedAt sets LastCheckedAt field to given value.

### HasLastCheckedAt

`func (o *SendingDomain) HasLastCheckedAt() bool`

HasLastCheckedAt returns a boolean if a field has been set.

### GetNextCheckAt

`func (o *SendingDomain) GetNextCheckAt() time.Time`

GetNextCheckAt returns the NextCheckAt field if non-nil, zero value otherwise.

### GetNextCheckAtOk

`func (o *SendingDomain) GetNextCheckAtOk() (*time.Time, bool)`

GetNextCheckAtOk returns a tuple with the NextCheckAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextCheckAt

`func (o *SendingDomain) SetNextCheckAt(v time.Time)`

SetNextCheckAt sets NextCheckAt field to given value.

### HasNextCheckAt

`func (o *SendingDomain) HasNextCheckAt() bool`

HasNextCheckAt returns a boolean if a field has been set.

### GetVerifiedAt

`func (o *SendingDomain) GetVerifiedAt() time.Time`

GetVerifiedAt returns the VerifiedAt field if non-nil, zero value otherwise.

### GetVerifiedAtOk

`func (o *SendingDomain) GetVerifiedAtOk() (*time.Time, bool)`

GetVerifiedAtOk returns a tuple with the VerifiedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerifiedAt

`func (o *SendingDomain) SetVerifiedAt(v time.Time)`

SetVerifiedAt sets VerifiedAt field to given value.

### HasVerifiedAt

`func (o *SendingDomain) HasVerifiedAt() bool`

HasVerifiedAt returns a boolean if a field has been set.

### GetCreatedAt

`func (o *SendingDomain) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SendingDomain) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SendingDomain) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


