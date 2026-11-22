

# Quote


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**channels** | **List&lt;Channel&gt;** |  |  |
|**recipients** | **Map&lt;String, List&lt;QuotedRecipient&gt;&gt;** | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read &#x60;recipientCount&#x60; unless you need the rows.  |  |
|**units** | **Map&lt;String, Integer&gt;** | Billable units, per channel. |  |
|**recipientCount** | **Integer** |  |  |
|**skipped** | [**List&lt;SkippedRecipient&gt;**](SkippedRecipient.md) |  |  |
|**blockers** | [**List&lt;Blocker&gt;**](Blocker.md) | Everything standing in the way. Those with &#x60;skippable: false&#x60; stop the send. |  |
|**sms** | [**QuoteSms**](QuoteSms.md) |  |  |
|**variants** | [**QuoteVariants**](QuoteVariants.md) |  |  |
|**trackedLinks** | **List&lt;String&gt;** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. |  |
|**heldUntil** | [**QuoteHeldUntil**](QuoteHeldUntil.md) |  |  |
|**estimateMinor** | **Integer** | What the units would cost at the published top-up rate |  |
|**currency** | **String** |  |  |



