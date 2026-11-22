# VerificationCheck


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**state** | **str** |  | 
**attempts_left** | **int** | Present while still pending. | [optional] 

## Example

```python
from palsa_api.models.verification_check import VerificationCheck

# TODO update the JSON string below
json = "{}"
# create an instance of VerificationCheck from a JSON string
verification_check_instance = VerificationCheck.from_json(json)
# print the JSON string representation of the object
print(VerificationCheck.to_json())

# convert the object into a dict
verification_check_dict = verification_check_instance.to_dict()
# create an instance of VerificationCheck from a dict
verification_check_from_dict = VerificationCheck.from_dict(verification_check_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


