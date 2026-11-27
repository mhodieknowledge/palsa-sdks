
# SendingDomainRecordsInner

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **purpose** | [**inline**](#Purpose) |  |  |
| **type** | [**inline**](#Type) |  |  |
| **name** | **kotlin.String** |  |  |
| **&#x60;value&#x60;** | **kotlin.String** |  |  |
| **required** | **kotlin.Boolean** |  |  |
| **priority** | **kotlin.Int** |  |  [optional] |


<a id="Purpose"></a>
## Enum: purpose
| Name | Value |
| ---- | ----- |
| purpose | dkim, mail_from_mx, mail_from_spf, dmarc |


<a id="Type"></a>
## Enum: type
| Name | Value |
| ---- | ----- |
| type | CNAME, MX, TXT |



