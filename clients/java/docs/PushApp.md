

# PushApp


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**name** | **String** |  |  |
|**projectId** | **String** |  |  |
|**authMode** | [**AuthModeEnum**](#AuthModeEnum) |  |  |
|**clientEmail** | **String** | The uploaded key&#39;s service account. The key itself is never returned. |  [optional] |
|**grantTo** | **String** | Delegated only. The account to grant the role to. |  [optional] |
|**role** | **String** |  |  [optional] |
|**androidPackage** | **String** |  |  [optional] |
|**iosBundleId** | **String** |  |  [optional] |
|**webOrigin** | **String** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved. |  |
|**message** | **String** |  |  [optional] |
|**isDefault** | **Boolean** |  |  |
|**verifiedAt** | **String** |  |  [optional] |
|**checkedAt** | **String** |  |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: AuthModeEnum

| Name | Value |
|---- | -----|
| SERVICE_ACCOUNT | &quot;service_account&quot; |
| DELEGATED | &quot;delegated&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| AWAITING_DEVICE | &quot;awaiting_device&quot; |
| VERIFIED | &quot;verified&quot; |
| FAILED | &quot;failed&quot; |



