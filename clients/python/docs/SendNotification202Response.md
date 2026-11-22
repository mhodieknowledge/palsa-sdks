# SendNotification202Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**SendResult**](SendResult.md) |  | 

## Example

```python
from palsa_api.models.send_notification202_response import SendNotification202Response

# TODO update the JSON string below
json = "{}"
# create an instance of SendNotification202Response from a JSON string
send_notification202_response_instance = SendNotification202Response.from_json(json)
# print the JSON string representation of the object
print(SendNotification202Response.to_json())

# convert the object into a dict
send_notification202_response_dict = send_notification202_response_instance.to_dict()
# create an instance of SendNotification202Response from a dict
send_notification202_response_from_dict = SendNotification202Response.from_dict(send_notification202_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


