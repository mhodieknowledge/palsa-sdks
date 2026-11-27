# ListDevices200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**devices** | [**List[Device]**](Device.md) |  | 

## Example

```python
from palsa_api.models.list_devices200_response_data import ListDevices200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListDevices200ResponseData from a JSON string
list_devices200_response_data_instance = ListDevices200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListDevices200ResponseData.to_json())

# convert the object into a dict
list_devices200_response_data_dict = list_devices200_response_data_instance.to_dict()
# create an instance of ListDevices200ResponseData from a dict
list_devices200_response_data_from_dict = ListDevices200ResponseData.from_dict(list_devices200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


