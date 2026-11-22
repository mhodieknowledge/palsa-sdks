
# Error

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **code** | [**inline**](#Code) |  |  |
| **message** | **kotlin.String** |  |  |
| **fields** | **kotlin.collections.Map&lt;kotlin.String, kotlin.collections.List&lt;kotlin.String&gt;&gt;** | Validation errors by field name. |  [optional] |
| **detail** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED. |  [optional] |
| **requestId** | **kotlin.String** | Quote this when asking us about a request. |  [optional] |


<a id="Code"></a>
## Enum: code
| Name | Value |
| ---- | ----- |
| code | VALIDATION_FAILED, UNAUTHENTICATED, FORBIDDEN, NOT_FOUND, CONFLICT, QUOTA_EXCEEDED, RATE_LIMITED, PROVIDER_ERROR, INTERNAL |



