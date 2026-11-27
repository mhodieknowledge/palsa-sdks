
# PushApp

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **name** | **kotlin.String** |  |  |
| **projectId** | **kotlin.String** |  |  |
| **authMode** | [**inline**](#AuthMode) |  |  |
| **status** | [**inline**](#Status) | Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved. |  |
| **isDefault** | **kotlin.Boolean** |  |  |
| **createdAt** | **kotlin.String** |  |  |
| **updatedAt** | **kotlin.String** |  |  |
| **clientEmail** | **kotlin.String** | The uploaded key&#39;s service account. The key itself is never returned. |  [optional] |
| **grantTo** | **kotlin.String** | Delegated only. The account to grant the role to. |  [optional] |
| **role** | **kotlin.String** |  |  [optional] |
| **androidPackage** | **kotlin.String** |  |  [optional] |
| **iosBundleId** | **kotlin.String** |  |  [optional] |
| **webOrigin** | **kotlin.String** |  |  [optional] |
| **message** | **kotlin.String** |  |  [optional] |
| **verifiedAt** | **kotlin.String** |  |  [optional] |
| **checkedAt** | **kotlin.String** |  |  [optional] |


<a id="AuthMode"></a>
## Enum: authMode
| Name | Value |
| ---- | ----- |
| authMode | service_account, delegated |


<a id="Status"></a>
## Enum: status
| Name | Value |
| ---- | ----- |
| status | pending, awaiting_device, verified, failed |



