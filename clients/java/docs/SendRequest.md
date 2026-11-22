

# SendRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**channels** | **List&lt;Channel&gt;** | Tried in the order given. With &#x60;fallback&#x60; routing the next is used only if the previous does not work out. |  |
|**to** | [**Recipients**](Recipients.md) |  |  |
|**body** | **String** | Required unless &#x60;templateId&#x60; is given. Supports &#x60;{{ name }}&#x60; and your own variables. |  [optional] |
|**subject** | **String** | Email only. |  [optional] |
|**templateId** | **String** |  |  [optional] |
|**variables** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**purpose** | [**PurposeEnum**](#PurposeEnum) | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the &#x60;List-Unsubscribe&#x60; and &#x60;List-Unsubscribe-Post&#x60; headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted.  |  [optional] |
|**routing** | [**RoutingEnum**](#RoutingEnum) |  |  [optional] |
|**fallbackOn** | [**FallbackOnEnum**](#FallbackOnEnum) | With &#x60;fallback&#x60; routing, what counts as not working out. A refusal falls back whichever is chosen; &#x60;timeout&#x60; also falls back when nothing was delivered within the wait, and &#x60;unacknowledged&#x60; when nothing was read, which needs your own read callback wired up.  |  [optional] |
|**fallbackWaitSeconds** | **Integer** |  |  [optional] |
|**variantBody** | **String** | An A/B test&#39;s second message. Each arm is costed from its own body, so a longer B costs more. |  [optional] |
|**variantSubject** | **String** |  |  [optional] |
|**splitPercent** | **Integer** | The share of the audience that gets variant B. |  [optional] |
|**trackLinks** | **Boolean** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent.  |  [optional] |
|**quietStart** | **String** | 24-hour local time, e.g. \&quot;22:00\&quot;. Both ends are needed or neither applies. |  [optional] |
|**quietEnd** | **String** |  |  [optional] |
|**timezone** | **String** | An IANA zone, e.g. \&quot;Africa/Harare\&quot;. |  [optional] |
|**attachmentIds** | **List&lt;String&gt;** | Email only. Ids of files already uploaded to this workspace. |  [optional] |
|**deepLink** | **String** | Push only. |  [optional] |
|**ttlSeconds** | **Integer** | Push only. How long it stays worth delivering. |  [optional] |
|**priority** | [**PriorityEnum**](#PriorityEnum) | Push only. |  [optional] |
|**badge** | **Integer** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. |  [optional] |
|**imageUrl** | **URI** | Push only. A picture shown with the notification. |  [optional] |
|**scheduledAt** | **String** | ISO 8601. Omit to send now. |  [optional] |
|**callbackUrl** | **URI** |  |  [optional] |
|**metadata** | **Map&lt;String, Object&gt;** | Yours. Returned on the send and on webhooks about it. |  [optional] |
|**name** | **String** | Also seeds the A/B division |  [optional] |



## Enum: PurposeEnum

| Name | Value |
|---- | -----|
| MARKETING | &quot;marketing&quot; |
| TRANSACTIONAL | &quot;transactional&quot; |



## Enum: RoutingEnum

| Name | Value |
|---- | -----|
| PARALLEL | &quot;parallel&quot; |
| FALLBACK | &quot;fallback&quot; |



## Enum: FallbackOnEnum

| Name | Value |
|---- | -----|
| FAILURE | &quot;failure&quot; |
| TIMEOUT | &quot;timeout&quot; |
| UNACKNOWLEDGED | &quot;unacknowledged&quot; |



## Enum: PriorityEnum

| Name | Value |
|---- | -----|
| HIGH | &quot;high&quot; |
| NORMAL | &quot;normal&quot; |



