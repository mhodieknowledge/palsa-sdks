# ListNotifications200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notifications** | [**List[NotificationSummary]**](NotificationSummary.md) |  | 

## Example

```python
from palsa_api.models.list_notifications200_response_data import ListNotifications200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListNotifications200ResponseData from a JSON string
list_notifications200_response_data_instance = ListNotifications200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListNotifications200ResponseData.to_json())

# convert the object into a dict
list_notifications200_response_data_dict = list_notifications200_response_data_instance.to_dict()
# create an instance of ListNotifications200ResponseData from a dict
list_notifications200_response_data_from_dict = ListNotifications200ResponseData.from_dict(list_notifications200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


