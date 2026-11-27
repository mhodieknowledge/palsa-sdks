# ListPushApps200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apps** | [**List[PushApp]**](PushApp.md) |  | 

## Example

```python
from palsa_api.models.list_push_apps200_response_data import ListPushApps200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListPushApps200ResponseData from a JSON string
list_push_apps200_response_data_instance = ListPushApps200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListPushApps200ResponseData.to_json())

# convert the object into a dict
list_push_apps200_response_data_dict = list_push_apps200_response_data_instance.to_dict()
# create an instance of ListPushApps200ResponseData from a dict
list_push_apps200_response_data_from_dict = ListPushApps200ResponseData.from_dict(list_push_apps200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


