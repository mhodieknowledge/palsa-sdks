# GetNotification200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Notification**](Notification.md) |  | 

## Example

```python
from palsa_api.models.get_notification200_response import GetNotification200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetNotification200Response from a JSON string
get_notification200_response_instance = GetNotification200Response.from_json(json)
# print the JSON string representation of the object
print(GetNotification200Response.to_json())

# convert the object into a dict
get_notification200_response_dict = get_notification200_response_instance.to_dict()
# create an instance of GetNotification200Response from a dict
get_notification200_response_from_dict = GetNotification200Response.from_dict(get_notification200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


