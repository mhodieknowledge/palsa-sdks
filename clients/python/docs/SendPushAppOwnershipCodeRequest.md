# SendPushAppOwnershipCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_token** | **str** |  | 

## Example

```python
from palsa_api.models.send_push_app_ownership_code_request import SendPushAppOwnershipCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SendPushAppOwnershipCodeRequest from a JSON string
send_push_app_ownership_code_request_instance = SendPushAppOwnershipCodeRequest.from_json(json)
# print the JSON string representation of the object
print(SendPushAppOwnershipCodeRequest.to_json())

# convert the object into a dict
send_push_app_ownership_code_request_dict = send_push_app_ownership_code_request_instance.to_dict()
# create an instance of SendPushAppOwnershipCodeRequest from a dict
send_push_app_ownership_code_request_from_dict = SendPushAppOwnershipCodeRequest.from_dict(send_push_app_ownership_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


