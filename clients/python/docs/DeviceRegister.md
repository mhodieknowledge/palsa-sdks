# DeviceRegister


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **str** |  | 
**platform** | **str** |  | 
**contact_id** | **str** |  | [optional] 
**app_version** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.device_register import DeviceRegister

# TODO update the JSON string below
json = "{}"
# create an instance of DeviceRegister from a JSON string
device_register_instance = DeviceRegister.from_json(json)
# print the JSON string representation of the object
print(DeviceRegister.to_json())

# convert the object into a dict
device_register_dict = device_register_instance.to_dict()
# create an instance of DeviceRegister from a dict
device_register_from_dict = DeviceRegister.from_dict(device_register_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


