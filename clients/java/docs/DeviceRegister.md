

# DeviceRegister


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**token** | **String** |  |  |
|**platform** | [**PlatformEnum**](#PlatformEnum) |  |  |
|**contactId** | **String** |  |  [optional] |
|**appId** | **String** | The push app the token belongs to. Default the workspace&#39;s default app. |  [optional] |
|**previousToken** | **String** | The token this one replaces, from the app&#39;s token-refresh callback. The device keeps its id, contact and topics. |  [optional] |
|**appVersion** | **String** |  |  [optional] |
|**locale** | **String** |  |  [optional] |



## Enum: PlatformEnum

| Name | Value |
|---- | -----|
| ANDROID | &quot;android&quot; |
| IOS | &quot;ios&quot; |
| WEB | &quot;web&quot; |



