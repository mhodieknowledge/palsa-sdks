

# VerificationRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**channel** | [**ChannelEnum**](#ChannelEnum) |  |  |
|**to** | **String** |  |  |
|**length** | **Integer** |  |  [optional] |
|**expiresInSeconds** | **Integer** |  |  [optional] |
|**template** | **String** | Use &#x60;{{code}}&#x60; and &#x60;{{minutes}}&#x60;. Defaults to \&quot;Your code is {{code}}. It expires in {{minutes}} minutes.\&quot; |  [optional] |
|**flow** | **String** | The name of one of your active verification flows, set up in the console under Verification. Its expiry, attempt ceiling and rate apply to this challenge.  A name matching no active flow is refused with &#x60;NOT_FOUND&#x60; rather than falling back to the defaults, since a silent fallback is how somebody comes to believe a code allows three guesses when it allows five. A flow&#39;s rate applies in addition to the built-in ceiling of five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen it.  |  [optional] |



## Enum: ChannelEnum

| Name | Value |
|---- | -----|
| SMS | &quot;sms&quot; |
| EMAIL | &quot;email&quot; |



