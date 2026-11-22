# Palsa.Api.Model.SendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channels** | [**List&lt;Channel&gt;**](Channel.md) | Tried in the order given. With &#x60;fallback&#x60; routing the next is used only if the previous does not work out. | 
**To** | [**Recipients**](Recipients.md) |  | 
**Body** | **string** | Required unless &#x60;templateId&#x60; is given. Supports &#x60;{{ name }}&#x60; and your own variables. | [optional] 
**Subject** | **string** | Email only. | [optional] 
**TemplateId** | **string** |  | [optional] 
**Variables** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**Purpose** | **string** | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the &#x60;List-Unsubscribe&#x60; and &#x60;List-Unsubscribe-Post&#x60; headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted.  | [optional] [default to PurposeEnum.Transactional]
**Routing** | **string** |  | [optional] [default to RoutingEnum.Parallel]
**FallbackOn** | **string** | With &#x60;fallback&#x60; routing, what counts as not working out. A refusal falls back whichever is chosen; &#x60;timeout&#x60; also falls back when nothing was delivered within the wait, and &#x60;unacknowledged&#x60; when nothing was read, which needs your own read callback wired up.  | [optional] [default to FallbackOnEnum.Failure]
**FallbackWaitSeconds** | **int** |  | [optional] 
**VariantBody** | **string** | An A/B test&#39;s second message. Each arm is costed from its own body, so a longer B costs more. | [optional] 
**VariantSubject** | **string** |  | [optional] 
**SplitPercent** | **int** | The share of the audience that gets variant B. | [optional] 
**TrackLinks** | **bool** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent.  | [optional] [default to false]
**QuietStart** | **string** | 24-hour local time, e.g. \&quot;22:00\&quot;. Both ends are needed or neither applies. | [optional] 
**QuietEnd** | **string** |  | [optional] 
**Timezone** | **string** | An IANA zone, e.g. \&quot;Africa/Harare\&quot;. | [optional] 
**AttachmentIds** | **List&lt;string&gt;** | Email only. Ids of files already uploaded to this workspace. | [optional] 
**DeepLink** | **string** | Push only. | [optional] 
**TtlSeconds** | **int** | Push only. How long it stays worth delivering. | [optional] 
**Priority** | **string** | Push only. | [optional] 
**Badge** | **int** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. | [optional] 
**ImageUrl** | **string** | Push only. A picture shown with the notification. | [optional] 
**ScheduledAt** | **string** | ISO 8601. Omit to send now. | [optional] 
**CallbackUrl** | **string** |  | [optional] 
**Metadata** | **Dictionary&lt;string, Object&gt;** | Yours. Returned on the send and on webhooks about it. | [optional] 
**Name** | **string** | Also seeds the A/B division | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

