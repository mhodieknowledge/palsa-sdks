# palsa_api.model.SendResult

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**status** | **String** | `running`, `scheduled` when held or scheduled, or `pending_approval`. | 
**mode** | **String** |  | 
**recipients** | **int** |  | 
**units** | **Map<String, int>** | Billable units, per channel. | [default to const {}]
**skipped** | **int** | How many recipients were left out. The quote says why. | 
**warnings** | [**List<Blocker>**](Blocker.md) | Things that did not stop the send. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


