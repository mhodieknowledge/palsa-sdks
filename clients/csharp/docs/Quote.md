# Palsa.Api.Model.Quote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channels** | [**List&lt;Channel&gt;**](Channel.md) |  | 
**Recipients** | **Dictionary&lt;string, List&lt;QuotedRecipient&gt;&gt;** | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read &#x60;recipientCount&#x60; unless you need the rows.  | 
**Units** | **Dictionary&lt;string, int&gt;** | Billable units, per channel. | 
**RecipientCount** | **int** |  | 
**Skipped** | [**List&lt;SkippedRecipient&gt;**](SkippedRecipient.md) |  | 
**Blockers** | [**List&lt;Blocker&gt;**](Blocker.md) | Everything standing in the way. Those with &#x60;skippable: false&#x60; stop the send. | 
**Sms** | [**QuoteSms**](QuoteSms.md) |  | 
**Variants** | [**QuoteVariants**](QuoteVariants.md) |  | 
**TrackedLinks** | **List&lt;string&gt;** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. | 
**HeldUntil** | [**QuoteHeldUntil**](QuoteHeldUntil.md) |  | 
**EstimateMinor** | **int** | What the units would cost at the published top-up rate | 
**Currency** | **string** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

