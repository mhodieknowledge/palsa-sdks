
# PushAppCreate

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **name** | **kotlin.String** |  |  |
| **authMode** | [**inline**](#AuthMode) |  |  |
| **projectId** | **kotlin.String** | Required for delegated. |  [optional] |
| **serviceAccount** | **kotlin.String** | The whole service-account JSON file as a string. Required for service_account. |  [optional] |
| **androidPackage** | **kotlin.String** |  |  [optional] |
| **iosBundleId** | **kotlin.String** |  |  [optional] |
| **webOrigin** | [**java.net.URI**](java.net.URI.md) |  |  [optional] |


<a id="AuthMode"></a>
## Enum: authMode
| Name | Value |
| ---- | ----- |
| authMode | service_account, delegated |



