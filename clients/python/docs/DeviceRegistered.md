# DeviceRegistered


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**registered** | **bool** |  | 
**device_id** | **str** |  | 
**app_id** | **str** |  | [optional] 
**refreshed** | **bool** |  | 

## Example

```python
from palsa_api.models.device_registered import DeviceRegistered

# TODO update the JSON string below
json = "{}"
# create an instance of DeviceRegistered from a JSON string
device_registered_instance = DeviceRegistered.from_json(json)
# print the JSON string representation of the object
print(DeviceRegistered.to_json())

# convert the object into a dict
device_registered_dict = device_registered_instance.to_dict()
# create an instance of DeviceRegistered from a dict
device_registered_from_dict = DeviceRegistered.from_dict(device_registered_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


