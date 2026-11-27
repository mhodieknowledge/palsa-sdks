# Device


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**contact_id** | **str** |  | [optional] 
**app_id** | **str** |  | [optional] 
**platform** | **str** |  | 
**token_end** | **str** | The last eight characters of the token. The token itself is never returned. | 
**app_version** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 
**last_seen_at** | **str** |  | [optional] 
**token_refreshed_at** | **str** |  | [optional] 
**invalidated_at** | **str** |  | [optional] 
**invalid_reason** | **str** | unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed. | [optional] 
**created_at** | **str** |  | 

## Example

```python
from palsa_api.models.device import Device

# TODO update the JSON string below
json = "{}"
# create an instance of Device from a JSON string
device_instance = Device.from_json(json)
# print the JSON string representation of the object
print(Device.to_json())

# convert the object into a dict
device_dict = device_instance.to_dict()
# create an instance of Device from a dict
device_from_dict = Device.from_dict(device_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


