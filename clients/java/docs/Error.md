

# Error

`code` is stable and worth branching on. `message` is written for a person and may change, so do not match on it. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**code** | [**CodeEnum**](#CodeEnum) |  |  |
|**message** | **String** |  |  |
|**fields** | **Map&lt;String, List&lt;String&gt;&gt;** | Validation errors by field name. |  [optional] |
|**detail** | **Map&lt;String, Object&gt;** | Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED. |  [optional] |
|**requestId** | **String** | Quote this when asking us about a request. |  [optional] |



## Enum: CodeEnum

| Name | Value |
|---- | -----|
| VALIDATION_FAILED | &quot;VALIDATION_FAILED&quot; |
| UNAUTHENTICATED | &quot;UNAUTHENTICATED&quot; |
| FORBIDDEN | &quot;FORBIDDEN&quot; |
| NOT_FOUND | &quot;NOT_FOUND&quot; |
| CONFLICT | &quot;CONFLICT&quot; |
| QUOTA_EXCEEDED | &quot;QUOTA_EXCEEDED&quot; |
| RATE_LIMITED | &quot;RATE_LIMITED&quot; |
| PROVIDER_ERROR | &quot;PROVIDER_ERROR&quot; |
| INTERNAL | &quot;INTERNAL&quot; |



