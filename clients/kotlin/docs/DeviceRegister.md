
# DeviceRegister

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **token** | **kotlin.String** |  |  |
| **platform** | [**inline**](#Platform) |  |  |
| **contactId** | **kotlin.String** |  |  [optional] |
| **appId** | **kotlin.String** | The push app the token belongs to. Default the workspace&#39;s default app. |  [optional] |
| **previousToken** | **kotlin.String** | The token this one replaces, from the app&#39;s token-refresh callback. The device keeps its id, contact and topics. |  [optional] |
| **appVersion** | **kotlin.String** |  |  [optional] |
| **locale** | **kotlin.String** |  |  [optional] |


<a id="Platform"></a>
## Enum: platform
| Name | Value |
| ---- | ----- |
| platform | android, ios, web |



