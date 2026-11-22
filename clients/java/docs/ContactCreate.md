

# ContactCreate

Give an email address or a phone number, or both.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**email** | **String** |  |  [optional] |
|**phone** | **String** |  |  [optional] |
|**state** | [**StateEnum**](#StateEnum) | Only &#x60;consented&#x60; contacts receive marketing. Say &#x60;consented&#x60; only if you can show they did. |  [optional] |
|**consentSource** | **String** | Where consent came from. Worth recording. |  [optional] |
|**tags** | **List&lt;String&gt;** |  |  [optional] |
|**fields** | **Map&lt;String, String&gt;** | Your own fields, usable as &#x60;{{ variables }}&#x60; in a body. |  [optional] |



## Enum: StateEnum

| Name | Value |
|---- | -----|
| CONSENTED | &quot;consented&quot; |
| PENDING | &quot;pending&quot; |



