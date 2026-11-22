# Notification


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**kind** | **str** |  | 
**name** | **str** |  | [optional] 
**status** | **str** |  | 
**reserved_units** | **Dict[str, int]** | Billable units, per channel. | 
**settled_units** | **Dict[str, int]** | Billable units, per channel. | 
**recipient_count** | **int** |  | 
**scheduled_at** | **str** |  | [optional] 
**started_at** | **str** |  | [optional] 
**finished_at** | **str** |  | [optional] 
**failure_reason** | **str** |  | [optional] 
**metadata** | **str** | The JSON you sent | [optional] 
**created_at** | **str** |  | 
**deliveries** | **Dict[str, int]** | How many deliveries are in each state. | 

## Example

```python
from palsa_api.models.notification import Notification

# TODO update the JSON string below
json = "{}"
# create an instance of Notification from a JSON string
notification_instance = Notification.from_json(json)
# print the JSON string representation of the object
print(Notification.to_json())

# convert the object into a dict
notification_dict = notification_instance.to_dict()
# create an instance of Notification from a dict
notification_from_dict = Notification.from_dict(notification_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


