# ReplacePushAppKeyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_account** | **str** |  | 

## Example

```python
from palsa_api.models.replace_push_app_key_request import ReplacePushAppKeyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReplacePushAppKeyRequest from a JSON string
replace_push_app_key_request_instance = ReplacePushAppKeyRequest.from_json(json)
# print the JSON string representation of the object
print(ReplacePushAppKeyRequest.to_json())

# convert the object into a dict
replace_push_app_key_request_dict = replace_push_app_key_request_instance.to_dict()
# create an instance of ReplacePushAppKeyRequest from a dict
replace_push_app_key_request_from_dict = ReplacePushAppKeyRequest.from_dict(replace_push_app_key_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


