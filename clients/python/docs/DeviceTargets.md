# DeviceTargets


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_ids** | **List[str]** |  | [optional] 
**tokens** | **List[str]** |  | [optional] 
**contact_ids** | **List[str]** |  | [optional] 

## Example

```python
from palsa_api.models.device_targets import DeviceTargets

# TODO update the JSON string below
json = "{}"
# create an instance of DeviceTargets from a JSON string
device_targets_instance = DeviceTargets.from_json(json)
# print the JSON string representation of the object
print(DeviceTargets.to_json())

# convert the object into a dict
device_targets_dict = device_targets_instance.to_dict()
# create an instance of DeviceTargets from a dict
device_targets_from_dict = DeviceTargets.from_dict(device_targets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


