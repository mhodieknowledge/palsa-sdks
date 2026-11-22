# palsa_api.model.SendRequest

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channels** | [**List<Channel>**](Channel.md) | Tried in the order given. With `fallback` routing the next is used only if the previous does not work out. | [default to const []]
**to** | [**Recipients**](Recipients.md) |  | 
**body** | **String** | Required unless `templateId` is given. Supports `{{ name }}` and your own variables. | [optional] 
**subject** | **String** | Email only. | [optional] 
**templateId** | **String** |  | [optional] 
**variables** | [**Map<String, Object>**](Object.md) |  | [optional] [default to const {}]
**purpose** | **String** | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the `List-Unsubscribe` and `List-Unsubscribe-Post` headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted.  | [optional] [default to 'transactional']
**routing** | **String** |  | [optional] [default to 'parallel']
**fallbackOn** | **String** | With `fallback` routing, what counts as not working out. A refusal falls back whichever is chosen; `timeout` also falls back when nothing was delivered within the wait, and `unacknowledged` when nothing was read, which needs your own read callback wired up.  | [optional] [default to 'failure']
**fallbackWaitSeconds** | **int** |  | [optional] 
**variantBody** | **String** | An A/B test's second message. Each arm is costed from its own body, so a longer B costs more. | [optional] 
**variantSubject** | **String** |  | [optional] 
**splitPercent** | **int** | The share of the audience that gets variant B. | [optional] 
**trackLinks** | **bool** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent.  | [optional] [default to false]
**quietStart** | **String** | 24-hour local time, e.g. \"22:00\". Both ends are needed or neither applies. | [optional] 
**quietEnd** | **String** |  | [optional] 
**timezone** | **String** | An IANA zone, e.g. \"Africa/Harare\". | [optional] 
**attachmentIds** | **List<String>** | Email only. Ids of files already uploaded to this workspace. | [optional] [default to const []]
**deepLink** | **String** | Push only. | [optional] 
**ttlSeconds** | **int** | Push only. How long it stays worth delivering. | [optional] 
**priority** | **String** | Push only. | [optional] 
**badge** | **int** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. | [optional] 
**imageUrl** | **String** | Push only. A picture shown with the notification. | [optional] 
**scheduledAt** | **String** | ISO 8601. Omit to send now. | [optional] 
**callbackUrl** | **String** |  | [optional] 
**metadata** | [**Map<String, Object>**](Object.md) | Yours. Returned on the send and on webhooks about it. | [optional] [default to const {}]
**name** | **String** | Also seeds the A/B division | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


