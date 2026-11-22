# palsa_api.model.VerificationRequest

## Load the model package
```dart
import 'package:palsa_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel** | **String** |  | 
**to** | **String** |  | 
**length** | **int** |  | [optional] [default to 6]
**expiresInSeconds** | **int** |  | [optional] [default to 600]
**template** | **String** | Use `{{code}}` and `{{minutes}}`. Defaults to \"Your code is {{code}}. It expires in {{minutes}} minutes.\" | [optional] 
**flow** | **String** | The name of one of your active verification flows, set up in the console under Verification. Its expiry, attempt ceiling and rate apply to this challenge.  A name matching no active flow is refused with `NOT_FOUND` rather than falling back to the defaults, since a silent fallback is how somebody comes to believe a code allows three guesses when it allows five. A flow's rate applies in addition to the built-in ceiling of five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen it.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


