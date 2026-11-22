# palsa_api.model.Notification

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | **String** |  | 
**name** | **String** |  | [optional] 
**status** | **String** |  | 
**reservedUnits** | **Map<String, int>** | Billable units, per channel. | [default to const {}]
**settledUnits** | **Map<String, int>** | Billable units, per channel. | [default to const {}]
**recipientCount** | **int** |  | 
**scheduledAt** | **String** |  | [optional] 
**startedAt** | **String** |  | [optional] 
**finishedAt** | **String** |  | [optional] 
**failureReason** | **String** |  | [optional] 
**metadata** | **String** | The JSON you sent | [optional] 
**createdAt** | **String** |  | 
**deliveries** | **Map<String, int>** | How many deliveries are in each state. | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


