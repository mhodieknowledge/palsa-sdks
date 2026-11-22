# CheckVerification200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**VerificationCheck**](VerificationCheck.md) |  | 

## Example

```python
from palsa_api.models.check_verification200_response import CheckVerification200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CheckVerification200Response from a JSON string
check_verification200_response_instance = CheckVerification200Response.from_json(json)
# print the JSON string representation of the object
print(CheckVerification200Response.to_json())

# convert the object into a dict
check_verification200_response_dict = check_verification200_response_instance.to_dict()
# create an instance of CheckVerification200Response from a dict
check_verification200_response_from_dict = CheckVerification200Response.from_dict(check_verification200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


