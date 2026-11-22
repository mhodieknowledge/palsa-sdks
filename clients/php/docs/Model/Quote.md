# # Quote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channels** | [**\Palsa\Api\Model\Channel[]**](Channel.md) |  |
**recipients** | **array<string,\Palsa\Api\Model\QuotedRecipient[]>** | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read &#x60;recipientCount&#x60; unless you need the rows. |
**units** | **array<string,int>** | Billable units, per channel. |
**recipient_count** | **int** |  |
**skipped** | [**\Palsa\Api\Model\SkippedRecipient[]**](SkippedRecipient.md) |  |
**blockers** | [**\Palsa\Api\Model\Blocker[]**](Blocker.md) | Everything standing in the way. Those with &#x60;skippable: false&#x60; stop the send. |
**sms** | [**\Palsa\Api\Model\QuoteSms**](QuoteSms.md) |  |
**variants** | [**\Palsa\Api\Model\QuoteVariants**](QuoteVariants.md) |  |
**tracked_links** | **string[]** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. |
**held_until** | [**\Palsa\Api\Model\QuoteHeldUntil**](QuoteHeldUntil.md) |  |
**estimate_minor** | **int** | What the units would cost at the published top-up rate |
**currency** | **string** |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
