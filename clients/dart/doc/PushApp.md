# palsa_api.model.PushApp

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**projectId** | **String** |  | 
**authMode** | **String** |  | 
**clientEmail** | **String** | The uploaded key's service account. The key itself is never returned. | [optional] 
**grantTo** | **String** | Delegated only. The account to grant the role to. | [optional] 
**role** | **String** |  | [optional] 
**androidPackage** | **String** |  | [optional] 
**iosBundleId** | **String** |  | [optional] 
**webOrigin** | **String** |  | [optional] 
**status** | **String** | Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved. | 
**message** | **String** |  | [optional] 
**isDefault** | **bool** |  | 
**verifiedAt** | **String** |  | [optional] 
**checkedAt** | **String** |  | [optional] 
**createdAt** | **String** |  | 
**updatedAt** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


