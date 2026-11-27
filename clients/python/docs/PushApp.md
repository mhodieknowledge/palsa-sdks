# PushApp


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**project_id** | **str** |  | 
**auth_mode** | **str** |  | 
**client_email** | **str** | The uploaded key&#39;s service account. The key itself is never returned. | [optional] 
**grant_to** | **str** | Delegated only. The account to grant the role to. | [optional] 
**role** | **str** |  | [optional] 
**android_package** | **str** |  | [optional] 
**ios_bundle_id** | **str** |  | [optional] 
**web_origin** | **str** |  | [optional] 
**status** | **str** | Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved. | 
**message** | **str** |  | [optional] 
**is_default** | **bool** |  | 
**verified_at** | **str** |  | [optional] 
**checked_at** | **str** |  | [optional] 
**created_at** | **str** |  | 
**updated_at** | **str** |  | 

## Example

```python
from palsa_api.models.push_app import PushApp

# TODO update the JSON string below
json = "{}"
# create an instance of PushApp from a JSON string
push_app_instance = PushApp.from_json(json)
# print the JSON string representation of the object
print(PushApp.to_json())

# convert the object into a dict
push_app_dict = push_app_instance.to_dict()
# create an instance of PushApp from a dict
push_app_from_dict = PushApp.from_dict(push_app_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


