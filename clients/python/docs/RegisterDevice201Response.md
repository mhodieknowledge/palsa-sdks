# RegisterDevice201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**DeviceRegistered**](DeviceRegistered.md) |  | 

## Example

```python
from palsa_api.models.register_device201_response import RegisterDevice201Response

# TODO update the JSON string below
json = "{}"
# create an instance of RegisterDevice201Response from a JSON string
register_device201_response_instance = RegisterDevice201Response.from_json(json)
# print the JSON string representation of the object
print(RegisterDevice201Response.to_json())

# convert the object into a dict
register_device201_response_dict = register_device201_response_instance.to_dict()
# create an instance of RegisterDevice201Response from a dict
register_device201_response_from_dict = RegisterDevice201Response.from_dict(register_device201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


