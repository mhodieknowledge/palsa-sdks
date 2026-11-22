# VerificationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel** | **str** |  | 
**to** | **str** |  | 
**length** | **int** |  | [optional] [default to 6]
**expires_in_seconds** | **int** |  | [optional] [default to 600]
**template** | **str** | Use &#x60;{{code}}&#x60; and &#x60;{{minutes}}&#x60;. Defaults to \&quot;Your code is {{code}}. It expires in {{minutes}} minutes.\&quot; | [optional] 
**flow** | **str** | The name of one of your active verification flows, set up in the console under Verification. Its expiry, attempt ceiling and rate apply to this challenge.  A name matching no active flow is refused with &#x60;NOT_FOUND&#x60; rather than falling back to the defaults, since a silent fallback is how somebody comes to believe a code allows three guesses when it allows five. A flow&#39;s rate applies in addition to the built-in ceiling of five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen it.  | [optional] 

## Example

```python
from palsa_api.models.verification_request import VerificationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerificationRequest from a JSON string
verification_request_instance = VerificationRequest.from_json(json)
# print the JSON string representation of the object
print(VerificationRequest.to_json())

# convert the object into a dict
verification_request_dict = verification_request_instance.to_dict()
# create an instance of VerificationRequest from a dict
verification_request_from_dict = VerificationRequest.from_dict(verification_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


