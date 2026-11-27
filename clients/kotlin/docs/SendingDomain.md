
# SendingDomain

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **domain** | **kotlin.String** |  |  |
| **status** | [**inline**](#Status) |  |  |
| **message** | **kotlin.String** | What the state means |  |
| **records** | [**kotlin.collections.List&lt;SendingDomainRecordsInner&gt;**](SendingDomainRecordsInner.md) |  |  |
| **createdAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  |
| **dkimStatus** | **kotlin.String** |  |  [optional] |
| **mailFromDomain** | **kotlin.String** |  |  [optional] |
| **mailFromStatus** | **kotlin.String** |  |  [optional] |
| **lastCheckedAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional] |
| **nextCheckAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional] |
| **verifiedAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional] |


<a id="Status"></a>
## Enum: status
| Name | Value |
| ---- | ----- |
| status | awaiting_provider, pending_dns, verified, failed, suspended |



