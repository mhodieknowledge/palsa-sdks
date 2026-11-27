# ConfirmPushAppOwnershipRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 

## Example

```python
from palsa_api.models.confirm_push_app_ownership_request import ConfirmPushAppOwnershipRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ConfirmPushAppOwnershipRequest from a JSON string
confirm_push_app_ownership_request_instance = ConfirmPushAppOwnershipRequest.from_json(json)
# print the JSON string representation of the object
print(ConfirmPushAppOwnershipRequest.to_json())

# convert the object into a dict
confirm_push_app_ownership_request_dict = confirm_push_app_ownership_request_instance.to_dict()
# create an instance of ConfirmPushAppOwnershipRequest from a dict
confirm_push_app_ownership_request_from_dict = ConfirmPushAppOwnershipRequest.from_dict(confirm_push_app_ownership_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


