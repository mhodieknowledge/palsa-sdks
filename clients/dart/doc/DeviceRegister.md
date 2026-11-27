# palsa_api.model.DeviceRegister

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** |  | 
**platform** | **String** |  | 
**contactId** | **String** |  | [optional] 
**appId** | **String** | The push app the token belongs to. Default the workspace's default app. | [optional] 
**previousToken** | **String** | The token this one replaces, from the app's token-refresh callback. The device keeps its id, contact and topics. | [optional] 
**appVersion** | **String** |  | [optional] 
**locale** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


