
# SendResult

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **status** | **kotlin.String** | &#x60;running&#x60;, &#x60;scheduled&#x60; when held or scheduled, or &#x60;pending_approval&#x60;. |  |
| **mode** | [**inline**](#Mode) |  |  |
| **recipients** | **kotlin.Int** |  |  |
| **units** | **kotlin.collections.Map&lt;kotlin.String, kotlin.Int&gt;** | Billable units, per channel. |  |
| **skipped** | **kotlin.Int** | How many recipients were left out. The quote says why. |  |
| **warnings** | [**kotlin.collections.List&lt;Blocker&gt;**](Blocker.md) | Things that did not stop the send. |  |


<a id="Mode"></a>
## Enum: mode
| Name | Value |
| ---- | ----- |
| mode | live, sandbox |



