# palsa_api.model.Quote

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channels** | [**List<Channel>**](Channel.md) |  | [default to const []]
**recipients** | [**Map<String, List<QuotedRecipient>>**](List.md) | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read `recipientCount` unless you need the rows.  | [default to const {}]
**units** | **Map<String, int>** | Billable units, per channel. | [default to const {}]
**recipientCount** | **int** |  | 
**skipped** | [**List<SkippedRecipient>**](SkippedRecipient.md) |  | [default to const []]
**blockers** | [**List<Blocker>**](Blocker.md) | Everything standing in the way. Those with `skippable: false` stop the send. | [default to const []]
**sms** | [**QuoteSms**](QuoteSms.md) |  | 
**variants** | [**QuoteVariants**](QuoteVariants.md) |  | 
**trackedLinks** | **List<String>** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. | [default to const []]
**heldUntil** | [**QuoteHeldUntil**](QuoteHeldUntil.md) |  | 
**estimateMinor** | **int** | What the units would cost at the published top-up rate | 
**currency** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


