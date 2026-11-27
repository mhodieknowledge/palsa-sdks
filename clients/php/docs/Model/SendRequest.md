# # SendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channels** | [**\Palsa\Api\Model\Channel[]**](Channel.md) | Tried in the order given. With &#x60;fallback&#x60; routing the next is used only if the previous does not work out. |
**to** | [**\Palsa\Api\Model\Recipients**](Recipients.md) |  |
**body** | **string** | Required unless &#x60;templateId&#x60; is given. Supports &#x60;{{ name }}&#x60; and your own variables. | [optional]
**subject** | **string** | Email only. | [optional]
**template_id** | **string** |  | [optional]
**variables** | **array<string,mixed>** |  | [optional]
**purpose** | **string** | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the &#x60;List-Unsubscribe&#x60; and &#x60;List-Unsubscribe-Post&#x60; headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted. | [optional] [default to 'transactional']
**routing** | **string** |  | [optional] [default to 'parallel']
**fallback_on** | **string** | With &#x60;fallback&#x60; routing, what counts as not working out. A refusal falls back whichever is chosen; &#x60;timeout&#x60; also falls back when nothing was delivered within the wait, and &#x60;unacknowledged&#x60; when nothing was read, which needs your own read callback wired up. | [optional] [default to 'failure']
**fallback_wait_seconds** | **int** |  | [optional]
**variant_body** | **string** | An A/B test&#39;s second message. Each arm is costed from its own body, so a longer B costs more. | [optional]
**variant_subject** | **string** |  | [optional]
**split_percent** | **int** | The share of the audience that gets variant B. | [optional]
**track_links** | **bool** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent. | [optional] [default to false]
**quiet_start** | **string** | 24-hour local time, e.g. \&quot;22:00\&quot;. Both ends are needed or neither applies. | [optional]
**quiet_end** | **string** |  | [optional]
**timezone** | **string** | An IANA zone, e.g. \&quot;Africa/Harare\&quot;. | [optional]
**attachment_ids** | **string[]** | Email only. Ids of files already uploaded to this workspace. | [optional]
**deep_link** | **string** | Push only. | [optional]
**ttl_seconds** | **int** | Push only. How long it stays worth delivering. | [optional]
**priority** | **string** | Push only. | [optional]
**badge** | **int** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. | [optional]
**image_url** | **string** | Push only. A picture shown with the notification. | [optional]
**app_id** | **string** | Push only. Which push app to send through. Default the workspace&#39;s default app; a contact&#39;s device of that app is used. | [optional]
**sound** | **string** | Push only. &#x60;default&#x60;, or the name of a sound bundled with the app. | [optional]
**collapse_key** | **string** | Push only. A newer message with the same key replaces an undelivered older one, on every platform. | [optional]
**data** | **array<string,string>** | Push only. Key/value strings for the app. Keys may not be from, notification, message_type, or start with google or gcm. | [optional]
**silent** | **bool** | Push only. Show nothing and wake the app in the background with &#x60;data&#x60;. Apple delivers these at low priority and may throttle them. &#x60;body&#x60; may then be omitted. | [optional]
**android** | [**\Palsa\Api\Model\AndroidPushOptions**](AndroidPushOptions.md) |  | [optional]
**ios** | [**\Palsa\Api\Model\IosPushOptions**](IosPushOptions.md) |  | [optional]
**web** | [**\Palsa\Api\Model\WebPushOptions**](WebPushOptions.md) |  | [optional]
**scheduled_at** | **string** | ISO 8601. Omit to send now. | [optional]
**callback_url** | **string** |  | [optional]
**metadata** | **array<string,mixed>** | Yours. Returned on the send and on webhooks about it. | [optional]
**name** | **string** | Also seeds the A/B division | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
