# UnregisterDeviceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **str** |  | 

## Example

```python
from palsa_api.models.unregister_device_request import UnregisterDeviceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UnregisterDeviceRequest from a JSON string
unregister_device_request_instance = UnregisterDeviceRequest.from_json(json)
# print the JSON string representation of the object
print(UnregisterDeviceRequest.to_json())

# convert the object into a dict
unregister_device_request_dict = unregister_device_request_instance.to_dict()
# create an instance of UnregisterDeviceRequest from a dict
unregister_device_request_from_dict = UnregisterDeviceRequest.from_dict(unregister_device_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


