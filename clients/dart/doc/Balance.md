# palsa_api.model.Balance

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel** | [**Channel**](Channel.md) |  | 
**included** | **int** | The plan's allowance for this period. | 
**purchased** | **int** | Credit bought separately | 
**reservedIncluded** | **int** | Included units promised to sends in flight. | 
**reservedPurchased** | **int** | Purchased units promised to sends in flight. | 
**usedIncluded** | **int** |  | 
**usedPurchased** | **int** |  | 
**available** | **int** | `included + purchased - reserved`, and what a send is actually checked against. It cannot go below nothing.  | 
**periodEnd** | **String** | When the included allowance expires. Purchased units are unaffected by it. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


