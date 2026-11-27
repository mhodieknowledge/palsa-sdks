# UpdatePushAppRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**is_default** | **bool** | Only true is accepted. Make this verified app the default. | [optional] 
**android_package** | **str** |  | [optional] 
**ios_bundle_id** | **str** |  | [optional] 
**web_origin** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.update_push_app_request import UpdatePushAppRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePushAppRequest from a JSON string
update_push_app_request_instance = UpdatePushAppRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePushAppRequest.to_json())

# convert the object into a dict
update_push_app_request_dict = update_push_app_request_instance.to_dict()
# create an instance of UpdatePushAppRequest from a dict
update_push_app_request_from_dict = UpdatePushAppRequest.from_dict(update_push_app_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


