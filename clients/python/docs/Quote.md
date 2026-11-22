# Quote


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channels** | [**List[Channel]**](Channel.md) |  | 
**recipients** | **Dict[str, List[QuotedRecipient]]** | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read &#x60;recipientCount&#x60; unless you need the rows.  | 
**units** | **Dict[str, int]** | Billable units, per channel. | 
**recipient_count** | **int** |  | 
**skipped** | [**List[SkippedRecipient]**](SkippedRecipient.md) |  | 
**blockers** | [**List[Blocker]**](Blocker.md) | Everything standing in the way. Those with &#x60;skippable: false&#x60; stop the send. | 
**sms** | [**QuoteSms**](QuoteSms.md) |  | 
**variants** | [**QuoteVariants**](QuoteVariants.md) |  | 
**tracked_links** | **List[str]** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. | 
**held_until** | [**QuoteHeldUntil**](QuoteHeldUntil.md) |  | 
**estimate_minor** | **int** | What the units would cost at the published top-up rate | 
**currency** | **str** |  | 

## Example

```python
from palsa_api.models.quote import Quote

# TODO update the JSON string below
json = "{}"
# create an instance of Quote from a JSON string
quote_instance = Quote.from_json(json)
# print the JSON string representation of the object
print(Quote.to_json())

# convert the object into a dict
quote_dict = quote_instance.to_dict()
# create an instance of Quote from a dict
quote_from_dict = Quote.from_dict(quote_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


