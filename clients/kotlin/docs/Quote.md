
# Quote

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **channels** | [**kotlin.collections.List&lt;Channel&gt;**](Channel.md) |  |  |
| **recipients** | **kotlin.collections.Map&lt;kotlin.String, kotlin.collections.List&lt;QuotedRecipient&gt;&gt;** | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read &#x60;recipientCount&#x60; unless you need the rows.  |  |
| **units** | **kotlin.collections.Map&lt;kotlin.String, kotlin.Int&gt;** | Billable units, per channel. |  |
| **recipientCount** | **kotlin.Int** |  |  |
| **skipped** | [**kotlin.collections.List&lt;SkippedRecipient&gt;**](SkippedRecipient.md) |  |  |
| **blockers** | [**kotlin.collections.List&lt;Blocker&gt;**](Blocker.md) | Everything standing in the way. Those with &#x60;skippable: false&#x60; stop the send. |  |
| **sms** | [**QuoteSms**](QuoteSms.md) |  |  |
| **variants** | [**QuoteVariants**](QuoteVariants.md) |  |  |
| **trackedLinks** | **kotlin.collections.List&lt;kotlin.String&gt;** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. |  |
| **heldUntil** | [**QuoteHeldUntil**](QuoteHeldUntil.md) |  |  |
| **estimateMinor** | **kotlin.Int** | What the units would cost at the published top-up rate |  |
| **currency** | **kotlin.String** |  |  |



