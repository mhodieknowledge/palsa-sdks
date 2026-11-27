

# SendingDomain


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**domain** | **String** |  |  |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**message** | **String** | What the state means |  |
|**dkimStatus** | **String** |  |  [optional] |
|**mailFromDomain** | **String** |  |  [optional] |
|**mailFromStatus** | **String** |  |  [optional] |
|**records** | [**List&lt;SendingDomainRecordsInner&gt;**](SendingDomainRecordsInner.md) |  |  |
|**lastCheckedAt** | **OffsetDateTime** |  |  [optional] |
|**nextCheckAt** | **OffsetDateTime** |  |  [optional] |
|**verifiedAt** | **OffsetDateTime** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| AWAITING_PROVIDER | &quot;awaiting_provider&quot; |
| PENDING_DNS | &quot;pending_dns&quot; |
| VERIFIED | &quot;verified&quot; |
| FAILED | &quot;failed&quot; |
| SUSPENDED | &quot;suspended&quot; |



