

# SendingDomainRecordsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**purpose** | [**PurposeEnum**](#PurposeEnum) |  |  |
|**type** | [**TypeEnum**](#TypeEnum) |  |  |
|**name** | **String** |  |  |
|**value** | **String** |  |  |
|**priority** | **Integer** |  |  [optional] |
|**required** | **Boolean** |  |  |



## Enum: PurposeEnum

| Name | Value |
|---- | -----|
| DKIM | &quot;dkim&quot; |
| MAIL_FROM_MX | &quot;mail_from_mx&quot; |
| MAIL_FROM_SPF | &quot;mail_from_spf&quot; |
| DMARC | &quot;dmarc&quot; |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| CNAME | &quot;CNAME&quot; |
| MX | &quot;MX&quot; |
| TXT | &quot;TXT&quot; |



