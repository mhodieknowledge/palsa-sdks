# palsa_api.model.Error

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** |  | 
**message** | **String** |  | 
**fields** | [**Map<String, List<String>>**](List.md) | Validation errors by field name. | [optional] [default to const {}]
**detail** | [**Map<String, Object>**](Object.md) | Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED. | [optional] [default to const {}]
**requestId** | **String** | Quote this when asking us about a request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


