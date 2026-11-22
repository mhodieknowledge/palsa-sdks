

# SendResult


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**status** | **String** | &#x60;running&#x60;, &#x60;scheduled&#x60; when held or scheduled, or &#x60;pending_approval&#x60;. |  |
|**mode** | [**ModeEnum**](#ModeEnum) |  |  |
|**recipients** | **Integer** |  |  |
|**units** | **Map&lt;String, Integer&gt;** | Billable units, per channel. |  |
|**skipped** | **Integer** | How many recipients were left out. The quote says why. |  |
|**warnings** | [**List&lt;Blocker&gt;**](Blocker.md) | Things that did not stop the send. |  |



## Enum: ModeEnum

| Name | Value |
|---- | -----|
| LIVE | &quot;live&quot; |
| SANDBOX | &quot;sandbox&quot; |



