# PushAppCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**auth_mode** | **str** |  | 
**project_id** | **str** | Required for delegated. | [optional] 
**service_account** | **str** | The whole service-account JSON file as a string. Required for service_account. | [optional] 
**android_package** | **str** |  | [optional] 
**ios_bundle_id** | **str** |  | [optional] 
**web_origin** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.push_app_create import PushAppCreate

# TODO update the JSON string below
json = "{}"
# create an instance of PushAppCreate from a JSON string
push_app_create_instance = PushAppCreate.from_json(json)
# print the JSON string representation of the object
print(PushAppCreate.to_json())

# convert the object into a dict
push_app_create_dict = push_app_create_instance.to_dict()
# create an instance of PushAppCreate from a dict
push_app_create_from_dict = PushAppCreate.from_dict(push_app_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


