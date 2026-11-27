# ListPushApps200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ListPushApps200ResponseData**](ListPushApps200ResponseData.md) |  | 

## Example

```python
from palsa_api.models.list_push_apps200_response import ListPushApps200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListPushApps200Response from a JSON string
list_push_apps200_response_instance = ListPushApps200Response.from_json(json)
# print the JSON string representation of the object
print(ListPushApps200Response.to_json())

# convert the object into a dict
list_push_apps200_response_dict = list_push_apps200_response_instance.to_dict()
# create an instance of ListPushApps200Response from a dict
list_push_apps200_response_from_dict = ListPushApps200Response.from_dict(list_push_apps200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


