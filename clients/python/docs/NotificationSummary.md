# NotificationSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**kind** | **str** |  | 
**name** | **str** |  | 
**status** | **str** |  | 
**recipient_count** | **int** |  | 
**created_at** | **str** |  | 

## Example

```python
from palsa_api.models.notification_summary import NotificationSummary

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSummary from a JSON string
notification_summary_instance = NotificationSummary.from_json(json)
# print the JSON string representation of the object
print(NotificationSummary.to_json())

# convert the object into a dict
notification_summary_dict = notification_summary_instance.to_dict()
# create an instance of NotificationSummary from a dict
notification_summary_from_dict = NotificationSummary.from_dict(notification_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


