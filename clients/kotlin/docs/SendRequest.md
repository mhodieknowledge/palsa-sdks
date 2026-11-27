
# SendRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **channels** | [**kotlin.collections.List&lt;Channel&gt;**](Channel.md) | Tried in the order given. With &#x60;fallback&#x60; routing the next is used only if the previous does not work out. |  |
| **to** | [**Recipients**](Recipients.md) |  |  |
| **body** | **kotlin.String** | Required unless &#x60;templateId&#x60; is given. Supports &#x60;{{ name }}&#x60; and your own variables. |  [optional] |
| **subject** | **kotlin.String** | Email only. |  [optional] |
| **templateId** | **kotlin.String** |  |  [optional] |
| **variables** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) |  |  [optional] |
| **purpose** | [**inline**](#Purpose) | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the &#x60;List-Unsubscribe&#x60; and &#x60;List-Unsubscribe-Post&#x60; headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted.  |  [optional] |
| **routing** | [**inline**](#Routing) |  |  [optional] |
| **fallbackOn** | [**inline**](#FallbackOn) | With &#x60;fallback&#x60; routing, what counts as not working out. A refusal falls back whichever is chosen; &#x60;timeout&#x60; also falls back when nothing was delivered within the wait, and &#x60;unacknowledged&#x60; when nothing was read, which needs your own read callback wired up.  |  [optional] |
| **fallbackWaitSeconds** | **kotlin.Int** |  |  [optional] |
| **variantBody** | **kotlin.String** | An A/B test&#39;s second message. Each arm is costed from its own body, so a longer B costs more. |  [optional] |
| **variantSubject** | **kotlin.String** |  |  [optional] |
| **splitPercent** | **kotlin.Int** | The share of the audience that gets variant B. |  [optional] |
| **trackLinks** | **kotlin.Boolean** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent.  |  [optional] |
| **quietStart** | **kotlin.String** | 24-hour local time, e.g. \&quot;22:00\&quot;. Both ends are needed or neither applies. |  [optional] |
| **quietEnd** | **kotlin.String** |  |  [optional] |
| **timezone** | **kotlin.String** | An IANA zone, e.g. \&quot;Africa/Harare\&quot;. |  [optional] |
| **attachmentIds** | **kotlin.collections.List&lt;kotlin.String&gt;** | Email only. Ids of files already uploaded to this workspace. |  [optional] |
| **deepLink** | **kotlin.String** | Push only. |  [optional] |
| **ttlSeconds** | **kotlin.Int** | Push only. How long it stays worth delivering. |  [optional] |
| **priority** | [**inline**](#Priority) | Push only. |  [optional] |
| **badge** | **kotlin.Int** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. |  [optional] |
| **imageUrl** | [**java.net.URI**](java.net.URI.md) | Push only. A picture shown with the notification. |  [optional] |
| **appId** | **kotlin.String** | Push only. Which push app to send through. Default the workspace&#39;s default app; a contact&#39;s device of that app is used. |  [optional] |
| **sound** | **kotlin.String** | Push only. &#x60;default&#x60;, or the name of a sound bundled with the app. |  [optional] |
| **collapseKey** | **kotlin.String** | Push only. A newer message with the same key replaces an undelivered older one, on every platform. |  [optional] |
| **&#x60;data&#x60;** | **kotlin.collections.Map&lt;kotlin.String, kotlin.String&gt;** | Push only. Key/value strings for the app. Keys may not be from, notification, message_type, or start with google or gcm. |  [optional] |
| **silent** | **kotlin.Boolean** | Push only. Show nothing and wake the app in the background with &#x60;data&#x60;. Apple delivers these at low priority and may throttle them. &#x60;body&#x60; may then be omitted. |  [optional] |
| **android** | [**AndroidPushOptions**](AndroidPushOptions.md) |  |  [optional] |
| **ios** | [**IosPushOptions**](IosPushOptions.md) |  |  [optional] |
| **web** | [**WebPushOptions**](WebPushOptions.md) |  |  [optional] |
| **scheduledAt** | **kotlin.String** | ISO 8601. Omit to send now. |  [optional] |
| **callbackUrl** | [**java.net.URI**](java.net.URI.md) |  |  [optional] |
| **metadata** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | Yours. Returned on the send and on webhooks about it. |  [optional] |
| **name** | **kotlin.String** | Also seeds the A/B division |  [optional] |


<a id="Purpose"></a>
## Enum: purpose
| Name | Value |
| ---- | ----- |
| purpose | marketing, transactional |


<a id="Routing"></a>
## Enum: routing
| Name | Value |
| ---- | ----- |
| routing | parallel, fallback |


<a id="FallbackOn"></a>
## Enum: fallbackOn
| Name | Value |
| ---- | ----- |
| fallbackOn | failure, timeout, unacknowledged |


<a id="Priority"></a>
## Enum: priority
| Name | Value |
| ---- | ----- |
| priority | high, normal |



