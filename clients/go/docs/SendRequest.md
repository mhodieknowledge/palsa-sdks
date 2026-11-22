# SendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channels** | [**[]Channel**](Channel.md) | Tried in the order given. With &#x60;fallback&#x60; routing the next is used only if the previous does not work out. | 
**To** | [**Recipients**](Recipients.md) |  | 
**Body** | Pointer to **string** | Required unless &#x60;templateId&#x60; is given. Supports &#x60;{{ name }}&#x60; and your own variables. | [optional] 
**Subject** | Pointer to **string** | Email only. | [optional] 
**TemplateId** | Pointer to **string** |  | [optional] 
**Variables** | Pointer to **map[string]interface{}** |  | [optional] 
**Purpose** | Pointer to **string** | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the &#x60;List-Unsubscribe&#x60; and &#x60;List-Unsubscribe-Post&#x60; headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted.  | [optional] [default to "transactional"]
**Routing** | Pointer to **string** |  | [optional] [default to "parallel"]
**FallbackOn** | Pointer to **string** | With &#x60;fallback&#x60; routing, what counts as not working out. A refusal falls back whichever is chosen; &#x60;timeout&#x60; also falls back when nothing was delivered within the wait, and &#x60;unacknowledged&#x60; when nothing was read, which needs your own read callback wired up.  | [optional] [default to "failure"]
**FallbackWaitSeconds** | Pointer to **int32** |  | [optional] 
**VariantBody** | Pointer to **string** | An A/B test&#39;s second message. Each arm is costed from its own body, so a longer B costs more. | [optional] 
**VariantSubject** | Pointer to **string** |  | [optional] 
**SplitPercent** | Pointer to **int32** | The share of the audience that gets variant B. | [optional] 
**TrackLinks** | Pointer to **bool** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent.  | [optional] [default to false]
**QuietStart** | Pointer to **NullableString** | 24-hour local time, e.g. \&quot;22:00\&quot;. Both ends are needed or neither applies. | [optional] 
**QuietEnd** | Pointer to **NullableString** |  | [optional] 
**Timezone** | Pointer to **NullableString** | An IANA zone, e.g. \&quot;Africa/Harare\&quot;. | [optional] 
**AttachmentIds** | Pointer to **[]string** | Email only. Ids of files already uploaded to this workspace. | [optional] 
**DeepLink** | Pointer to **string** | Push only. | [optional] 
**TtlSeconds** | Pointer to **int32** | Push only. How long it stays worth delivering. | [optional] 
**Priority** | Pointer to **string** | Push only. | [optional] 
**Badge** | Pointer to **int32** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. | [optional] 
**ImageUrl** | Pointer to **string** | Push only. A picture shown with the notification. | [optional] 
**ScheduledAt** | Pointer to **NullableString** | ISO 8601. Omit to send now. | [optional] 
**CallbackUrl** | Pointer to **string** |  | [optional] 
**Metadata** | Pointer to **map[string]interface{}** | Yours. Returned on the send and on webhooks about it. | [optional] 
**Name** | Pointer to **string** | Also seeds the A/B division | [optional] 

## Methods

### NewSendRequest

`func NewSendRequest(channels []Channel, to Recipients, ) *SendRequest`

NewSendRequest instantiates a new SendRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendRequestWithDefaults

`func NewSendRequestWithDefaults() *SendRequest`

NewSendRequestWithDefaults instantiates a new SendRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChannels

`func (o *SendRequest) GetChannels() []Channel`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *SendRequest) GetChannelsOk() (*[]Channel, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *SendRequest) SetChannels(v []Channel)`

SetChannels sets Channels field to given value.


### GetTo

`func (o *SendRequest) GetTo() Recipients`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *SendRequest) GetToOk() (*Recipients, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *SendRequest) SetTo(v Recipients)`

SetTo sets To field to given value.


### GetBody

`func (o *SendRequest) GetBody() string`

GetBody returns the Body field if non-nil, zero value otherwise.

### GetBodyOk

`func (o *SendRequest) GetBodyOk() (*string, bool)`

GetBodyOk returns a tuple with the Body field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBody

`func (o *SendRequest) SetBody(v string)`

SetBody sets Body field to given value.

### HasBody

`func (o *SendRequest) HasBody() bool`

HasBody returns a boolean if a field has been set.

### GetSubject

`func (o *SendRequest) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *SendRequest) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *SendRequest) SetSubject(v string)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *SendRequest) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetTemplateId

`func (o *SendRequest) GetTemplateId() string`

GetTemplateId returns the TemplateId field if non-nil, zero value otherwise.

### GetTemplateIdOk

`func (o *SendRequest) GetTemplateIdOk() (*string, bool)`

GetTemplateIdOk returns a tuple with the TemplateId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateId

`func (o *SendRequest) SetTemplateId(v string)`

SetTemplateId sets TemplateId field to given value.

### HasTemplateId

`func (o *SendRequest) HasTemplateId() bool`

HasTemplateId returns a boolean if a field has been set.

### GetVariables

`func (o *SendRequest) GetVariables() map[string]interface{}`

GetVariables returns the Variables field if non-nil, zero value otherwise.

### GetVariablesOk

`func (o *SendRequest) GetVariablesOk() (*map[string]interface{}, bool)`

GetVariablesOk returns a tuple with the Variables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariables

`func (o *SendRequest) SetVariables(v map[string]interface{})`

SetVariables sets Variables field to given value.

### HasVariables

`func (o *SendRequest) HasVariables() bool`

HasVariables returns a boolean if a field has been set.

### GetPurpose

`func (o *SendRequest) GetPurpose() string`

GetPurpose returns the Purpose field if non-nil, zero value otherwise.

### GetPurposeOk

`func (o *SendRequest) GetPurposeOk() (*string, bool)`

GetPurposeOk returns a tuple with the Purpose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurpose

`func (o *SendRequest) SetPurpose(v string)`

SetPurpose sets Purpose field to given value.

### HasPurpose

`func (o *SendRequest) HasPurpose() bool`

HasPurpose returns a boolean if a field has been set.

### GetRouting

`func (o *SendRequest) GetRouting() string`

GetRouting returns the Routing field if non-nil, zero value otherwise.

### GetRoutingOk

`func (o *SendRequest) GetRoutingOk() (*string, bool)`

GetRoutingOk returns a tuple with the Routing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRouting

`func (o *SendRequest) SetRouting(v string)`

SetRouting sets Routing field to given value.

### HasRouting

`func (o *SendRequest) HasRouting() bool`

HasRouting returns a boolean if a field has been set.

### GetFallbackOn

`func (o *SendRequest) GetFallbackOn() string`

GetFallbackOn returns the FallbackOn field if non-nil, zero value otherwise.

### GetFallbackOnOk

`func (o *SendRequest) GetFallbackOnOk() (*string, bool)`

GetFallbackOnOk returns a tuple with the FallbackOn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFallbackOn

`func (o *SendRequest) SetFallbackOn(v string)`

SetFallbackOn sets FallbackOn field to given value.

### HasFallbackOn

`func (o *SendRequest) HasFallbackOn() bool`

HasFallbackOn returns a boolean if a field has been set.

### GetFallbackWaitSeconds

`func (o *SendRequest) GetFallbackWaitSeconds() int32`

GetFallbackWaitSeconds returns the FallbackWaitSeconds field if non-nil, zero value otherwise.

### GetFallbackWaitSecondsOk

`func (o *SendRequest) GetFallbackWaitSecondsOk() (*int32, bool)`

GetFallbackWaitSecondsOk returns a tuple with the FallbackWaitSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFallbackWaitSeconds

`func (o *SendRequest) SetFallbackWaitSeconds(v int32)`

SetFallbackWaitSeconds sets FallbackWaitSeconds field to given value.

### HasFallbackWaitSeconds

`func (o *SendRequest) HasFallbackWaitSeconds() bool`

HasFallbackWaitSeconds returns a boolean if a field has been set.

### GetVariantBody

`func (o *SendRequest) GetVariantBody() string`

GetVariantBody returns the VariantBody field if non-nil, zero value otherwise.

### GetVariantBodyOk

`func (o *SendRequest) GetVariantBodyOk() (*string, bool)`

GetVariantBodyOk returns a tuple with the VariantBody field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariantBody

`func (o *SendRequest) SetVariantBody(v string)`

SetVariantBody sets VariantBody field to given value.

### HasVariantBody

`func (o *SendRequest) HasVariantBody() bool`

HasVariantBody returns a boolean if a field has been set.

### GetVariantSubject

`func (o *SendRequest) GetVariantSubject() string`

GetVariantSubject returns the VariantSubject field if non-nil, zero value otherwise.

### GetVariantSubjectOk

`func (o *SendRequest) GetVariantSubjectOk() (*string, bool)`

GetVariantSubjectOk returns a tuple with the VariantSubject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariantSubject

`func (o *SendRequest) SetVariantSubject(v string)`

SetVariantSubject sets VariantSubject field to given value.

### HasVariantSubject

`func (o *SendRequest) HasVariantSubject() bool`

HasVariantSubject returns a boolean if a field has been set.

### GetSplitPercent

`func (o *SendRequest) GetSplitPercent() int32`

GetSplitPercent returns the SplitPercent field if non-nil, zero value otherwise.

### GetSplitPercentOk

`func (o *SendRequest) GetSplitPercentOk() (*int32, bool)`

GetSplitPercentOk returns a tuple with the SplitPercent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSplitPercent

`func (o *SendRequest) SetSplitPercent(v int32)`

SetSplitPercent sets SplitPercent field to given value.

### HasSplitPercent

`func (o *SendRequest) HasSplitPercent() bool`

HasSplitPercent returns a boolean if a field has been set.

### GetTrackLinks

`func (o *SendRequest) GetTrackLinks() bool`

GetTrackLinks returns the TrackLinks field if non-nil, zero value otherwise.

### GetTrackLinksOk

`func (o *SendRequest) GetTrackLinksOk() (*bool, bool)`

GetTrackLinksOk returns a tuple with the TrackLinks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrackLinks

`func (o *SendRequest) SetTrackLinks(v bool)`

SetTrackLinks sets TrackLinks field to given value.

### HasTrackLinks

`func (o *SendRequest) HasTrackLinks() bool`

HasTrackLinks returns a boolean if a field has been set.

### GetQuietStart

`func (o *SendRequest) GetQuietStart() string`

GetQuietStart returns the QuietStart field if non-nil, zero value otherwise.

### GetQuietStartOk

`func (o *SendRequest) GetQuietStartOk() (*string, bool)`

GetQuietStartOk returns a tuple with the QuietStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuietStart

`func (o *SendRequest) SetQuietStart(v string)`

SetQuietStart sets QuietStart field to given value.

### HasQuietStart

`func (o *SendRequest) HasQuietStart() bool`

HasQuietStart returns a boolean if a field has been set.

### SetQuietStartNil

`func (o *SendRequest) SetQuietStartNil(b bool)`

 SetQuietStartNil sets the value for QuietStart to be an explicit nil

### UnsetQuietStart
`func (o *SendRequest) UnsetQuietStart()`

UnsetQuietStart ensures that no value is present for QuietStart, not even an explicit nil
### GetQuietEnd

`func (o *SendRequest) GetQuietEnd() string`

GetQuietEnd returns the QuietEnd field if non-nil, zero value otherwise.

### GetQuietEndOk

`func (o *SendRequest) GetQuietEndOk() (*string, bool)`

GetQuietEndOk returns a tuple with the QuietEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuietEnd

`func (o *SendRequest) SetQuietEnd(v string)`

SetQuietEnd sets QuietEnd field to given value.

### HasQuietEnd

`func (o *SendRequest) HasQuietEnd() bool`

HasQuietEnd returns a boolean if a field has been set.

### SetQuietEndNil

`func (o *SendRequest) SetQuietEndNil(b bool)`

 SetQuietEndNil sets the value for QuietEnd to be an explicit nil

### UnsetQuietEnd
`func (o *SendRequest) UnsetQuietEnd()`

UnsetQuietEnd ensures that no value is present for QuietEnd, not even an explicit nil
### GetTimezone

`func (o *SendRequest) GetTimezone() string`

GetTimezone returns the Timezone field if non-nil, zero value otherwise.

### GetTimezoneOk

`func (o *SendRequest) GetTimezoneOk() (*string, bool)`

GetTimezoneOk returns a tuple with the Timezone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimezone

`func (o *SendRequest) SetTimezone(v string)`

SetTimezone sets Timezone field to given value.

### HasTimezone

`func (o *SendRequest) HasTimezone() bool`

HasTimezone returns a boolean if a field has been set.

### SetTimezoneNil

`func (o *SendRequest) SetTimezoneNil(b bool)`

 SetTimezoneNil sets the value for Timezone to be an explicit nil

### UnsetTimezone
`func (o *SendRequest) UnsetTimezone()`

UnsetTimezone ensures that no value is present for Timezone, not even an explicit nil
### GetAttachmentIds

`func (o *SendRequest) GetAttachmentIds() []string`

GetAttachmentIds returns the AttachmentIds field if non-nil, zero value otherwise.

### GetAttachmentIdsOk

`func (o *SendRequest) GetAttachmentIdsOk() (*[]string, bool)`

GetAttachmentIdsOk returns a tuple with the AttachmentIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttachmentIds

`func (o *SendRequest) SetAttachmentIds(v []string)`

SetAttachmentIds sets AttachmentIds field to given value.

### HasAttachmentIds

`func (o *SendRequest) HasAttachmentIds() bool`

HasAttachmentIds returns a boolean if a field has been set.

### GetDeepLink

`func (o *SendRequest) GetDeepLink() string`

GetDeepLink returns the DeepLink field if non-nil, zero value otherwise.

### GetDeepLinkOk

`func (o *SendRequest) GetDeepLinkOk() (*string, bool)`

GetDeepLinkOk returns a tuple with the DeepLink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeepLink

`func (o *SendRequest) SetDeepLink(v string)`

SetDeepLink sets DeepLink field to given value.

### HasDeepLink

`func (o *SendRequest) HasDeepLink() bool`

HasDeepLink returns a boolean if a field has been set.

### GetTtlSeconds

`func (o *SendRequest) GetTtlSeconds() int32`

GetTtlSeconds returns the TtlSeconds field if non-nil, zero value otherwise.

### GetTtlSecondsOk

`func (o *SendRequest) GetTtlSecondsOk() (*int32, bool)`

GetTtlSecondsOk returns a tuple with the TtlSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTtlSeconds

`func (o *SendRequest) SetTtlSeconds(v int32)`

SetTtlSeconds sets TtlSeconds field to given value.

### HasTtlSeconds

`func (o *SendRequest) HasTtlSeconds() bool`

HasTtlSeconds returns a boolean if a field has been set.

### GetPriority

`func (o *SendRequest) GetPriority() string`

GetPriority returns the Priority field if non-nil, zero value otherwise.

### GetPriorityOk

`func (o *SendRequest) GetPriorityOk() (*string, bool)`

GetPriorityOk returns a tuple with the Priority field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriority

`func (o *SendRequest) SetPriority(v string)`

SetPriority sets Priority field to given value.

### HasPriority

`func (o *SendRequest) HasPriority() bool`

HasPriority returns a boolean if a field has been set.

### GetBadge

`func (o *SendRequest) GetBadge() int32`

GetBadge returns the Badge field if non-nil, zero value otherwise.

### GetBadgeOk

`func (o *SendRequest) GetBadgeOk() (*int32, bool)`

GetBadgeOk returns a tuple with the Badge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadge

`func (o *SendRequest) SetBadge(v int32)`

SetBadge sets Badge field to given value.

### HasBadge

`func (o *SendRequest) HasBadge() bool`

HasBadge returns a boolean if a field has been set.

### GetImageUrl

`func (o *SendRequest) GetImageUrl() string`

GetImageUrl returns the ImageUrl field if non-nil, zero value otherwise.

### GetImageUrlOk

`func (o *SendRequest) GetImageUrlOk() (*string, bool)`

GetImageUrlOk returns a tuple with the ImageUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageUrl

`func (o *SendRequest) SetImageUrl(v string)`

SetImageUrl sets ImageUrl field to given value.

### HasImageUrl

`func (o *SendRequest) HasImageUrl() bool`

HasImageUrl returns a boolean if a field has been set.

### GetScheduledAt

`func (o *SendRequest) GetScheduledAt() string`

GetScheduledAt returns the ScheduledAt field if non-nil, zero value otherwise.

### GetScheduledAtOk

`func (o *SendRequest) GetScheduledAtOk() (*string, bool)`

GetScheduledAtOk returns a tuple with the ScheduledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledAt

`func (o *SendRequest) SetScheduledAt(v string)`

SetScheduledAt sets ScheduledAt field to given value.

### HasScheduledAt

`func (o *SendRequest) HasScheduledAt() bool`

HasScheduledAt returns a boolean if a field has been set.

### SetScheduledAtNil

`func (o *SendRequest) SetScheduledAtNil(b bool)`

 SetScheduledAtNil sets the value for ScheduledAt to be an explicit nil

### UnsetScheduledAt
`func (o *SendRequest) UnsetScheduledAt()`

UnsetScheduledAt ensures that no value is present for ScheduledAt, not even an explicit nil
### GetCallbackUrl

`func (o *SendRequest) GetCallbackUrl() string`

GetCallbackUrl returns the CallbackUrl field if non-nil, zero value otherwise.

### GetCallbackUrlOk

`func (o *SendRequest) GetCallbackUrlOk() (*string, bool)`

GetCallbackUrlOk returns a tuple with the CallbackUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCallbackUrl

`func (o *SendRequest) SetCallbackUrl(v string)`

SetCallbackUrl sets CallbackUrl field to given value.

### HasCallbackUrl

`func (o *SendRequest) HasCallbackUrl() bool`

HasCallbackUrl returns a boolean if a field has been set.

### GetMetadata

`func (o *SendRequest) GetMetadata() map[string]interface{}`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *SendRequest) GetMetadataOk() (*map[string]interface{}, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *SendRequest) SetMetadata(v map[string]interface{})`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *SendRequest) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.

### GetName

`func (o *SendRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SendRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SendRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SendRequest) HasName() bool`

HasName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


