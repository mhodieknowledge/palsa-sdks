# palsa_api.model.SendingDomain

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**domain** | **String** |  | 
**status** | **String** |  | 
**message** | **String** | What the state means | 
**dkimStatus** | **String** |  | [optional] 
**mailFromDomain** | **String** |  | [optional] 
**mailFromStatus** | **String** |  | [optional] 
**records** | [**List<SendingDomainRecordsInner>**](SendingDomainRecordsInner.md) |  | [default to const []]
**lastCheckedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**nextCheckAt** | [**DateTime**](DateTime.md) |  | [optional] 
**verifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


