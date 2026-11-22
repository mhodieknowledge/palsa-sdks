
# ContactCreate

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **name** | **kotlin.String** |  |  [optional] |
| **email** | **kotlin.String** |  |  [optional] |
| **phone** | **kotlin.String** |  |  [optional] |
| **state** | [**inline**](#State) | Only &#x60;consented&#x60; contacts receive marketing. Say &#x60;consented&#x60; only if you can show they did. |  [optional] |
| **consentSource** | **kotlin.String** | Where consent came from. Worth recording. |  [optional] |
| **tags** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **fields** | **kotlin.collections.Map&lt;kotlin.String, kotlin.String&gt;** | Your own fields, usable as &#x60;{{ variables }}&#x60; in a body. |  [optional] |


<a id="State"></a>
## Enum: state
| Name | Value |
| ---- | ----- |
| state | consented, pending |



