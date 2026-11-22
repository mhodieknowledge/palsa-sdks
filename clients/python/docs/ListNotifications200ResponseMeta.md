# ListNotifications200ResponseMeta


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_cursor** | **str** | Null on the last page. | [optional] 

## Example

```python
from palsa_api.models.list_notifications200_response_meta import ListNotifications200ResponseMeta

# TODO update the JSON string below
json = "{}"
# create an instance of ListNotifications200ResponseMeta from a JSON string
list_notifications200_response_meta_instance = ListNotifications200ResponseMeta.from_json(json)
# print the JSON string representation of the object
print(ListNotifications200ResponseMeta.to_json())

# convert the object into a dict
list_notifications200_response_meta_dict = list_notifications200_response_meta_instance.to_dict()
# create an instance of ListNotifications200ResponseMeta from a dict
list_notifications200_response_meta_from_dict = ListNotifications200ResponseMeta.from_dict(list_notifications200_response_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


