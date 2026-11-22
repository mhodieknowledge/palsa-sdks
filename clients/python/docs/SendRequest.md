# SendRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channels** | [**List[Channel]**](Channel.md) | Tried in the order given. With &#x60;fallback&#x60; routing the next is used only if the previous does not work out. | 
**to** | [**Recipients**](Recipients.md) |  | 
**body** | **str** | Required unless &#x60;templateId&#x60; is given. Supports &#x60;{{ name }}&#x60; and your own variables. | [optional] 
**subject** | **str** | Email only. | [optional] 
**template_id** | **str** |  | [optional] 
**variables** | **Dict[str, object]** |  | [optional] 
**purpose** | **str** | Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the &#x60;List-Unsubscribe&#x60; and &#x60;List-Unsubscribe-Post&#x60; headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted.  | [optional] [default to 'transactional']
**routing** | **str** |  | [optional] [default to 'parallel']
**fallback_on** | **str** | With &#x60;fallback&#x60; routing, what counts as not working out. A refusal falls back whichever is chosen; &#x60;timeout&#x60; also falls back when nothing was delivered within the wait, and &#x60;unacknowledged&#x60; when nothing was read, which needs your own read callback wired up.  | [optional] [default to 'failure']
**fallback_wait_seconds** | **int** |  | [optional] 
**variant_body** | **str** | An A/B test&#39;s second message. Each arm is costed from its own body, so a longer B costs more. | [optional] 
**variant_subject** | **str** |  | [optional] 
**split_percent** | **int** | The share of the audience that gets variant B. | [optional] 
**track_links** | **bool** | Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent.  | [optional] [default to False]
**quiet_start** | **str** | 24-hour local time, e.g. \&quot;22:00\&quot;. Both ends are needed or neither applies. | [optional] 
**quiet_end** | **str** |  | [optional] 
**timezone** | **str** | An IANA zone, e.g. \&quot;Africa/Harare\&quot;. | [optional] 
**attachment_ids** | **List[str]** | Email only. Ids of files already uploaded to this workspace. | [optional] 
**deep_link** | **str** | Push only. | [optional] 
**ttl_seconds** | **int** | Push only. How long it stays worth delivering. | [optional] 
**priority** | **str** | Push only. | [optional] 
**badge** | **int** | Push only. The number on the app icon. Zero is meaningful: it clears the badge. | [optional] 
**image_url** | **str** | Push only. A picture shown with the notification. | [optional] 
**scheduled_at** | **str** | ISO 8601. Omit to send now. | [optional] 
**callback_url** | **str** |  | [optional] 
**metadata** | **Dict[str, object]** | Yours. Returned on the send and on webhooks about it. | [optional] 
**name** | **str** | Also seeds the A/B division | [optional] 

## Example

```python
from palsa_api.models.send_request import SendRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SendRequest from a JSON string
send_request_instance = SendRequest.from_json(json)
# print the JSON string representation of the object
print(SendRequest.to_json())

# convert the object into a dict
send_request_dict = send_request_instance.to_dict()
# create an instance of SendRequest from a dict
send_request_from_dict = SendRequest.from_dict(send_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


