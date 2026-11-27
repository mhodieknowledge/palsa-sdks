
# Device

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **platform** | [**inline**](#Platform) |  |  |
| **tokenEnd** | **kotlin.String** | The last eight characters of the token. The token itself is never returned. |  |
| **createdAt** | **kotlin.String** |  |  |
| **contactId** | **kotlin.String** |  |  [optional] |
| **appId** | **kotlin.String** |  |  [optional] |
| **appVersion** | **kotlin.String** |  |  [optional] |
| **locale** | **kotlin.String** |  |  [optional] |
| **lastSeenAt** | **kotlin.String** |  |  [optional] |
| **tokenRefreshedAt** | **kotlin.String** |  |  [optional] |
| **invalidatedAt** | **kotlin.String** |  |  [optional] |
| **invalidReason** | **kotlin.String** | unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed. |  [optional] |


<a id="Platform"></a>
## Enum: platform
| Name | Value |
| ---- | ----- |
| platform | android, ios, web |



