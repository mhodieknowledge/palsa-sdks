

# Verification


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**channel** | [**ChannelEnum**](#ChannelEnum) |  |  |
|**to** | **String** |  |  |
|**expiresAt** | **String** |  |  |
|**sandboxCode** | **String** | Only with a sandbox key. Never returned for a live send, to anyone, including the workspace that asked. |  [optional] |



## Enum: ChannelEnum

| Name | Value |
|---- | -----|
| SMS | &quot;sms&quot; |
| EMAIL | &quot;email&quot; |



