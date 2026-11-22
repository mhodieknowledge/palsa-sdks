# StartVerification201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Verification**](Verification.md) |  | 

## Example

```python
from palsa_api.models.start_verification201_response import StartVerification201Response

# TODO update the JSON string below
json = "{}"
# create an instance of StartVerification201Response from a JSON string
start_verification201_response_instance = StartVerification201Response.from_json(json)
# print the JSON string representation of the object
print(StartVerification201Response.to_json())

# convert the object into a dict
start_verification201_response_dict = start_verification201_response_instance.to_dict()
# create an instance of StartVerification201Response from a dict
start_verification201_response_from_dict = StartVerification201Response.from_dict(start_verification201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


