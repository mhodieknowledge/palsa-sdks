# palsa_api.model.ContactCreate

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] [default to '']
**email** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**state** | **String** | Only `consented` contacts receive marketing. Say `consented` only if you can show they did. | [optional] [default to 'pending']
**consentSource** | **String** | Where consent came from. Worth recording. | [optional] 
**tags** | **List<String>** |  | [optional] [default to const []]
**fields** | **Map<String, String>** | Your own fields, usable as `{{ variables }}` in a body. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


