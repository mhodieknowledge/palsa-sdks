# AndroidPushOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel_id** | **str** | The Android notification channel. | [optional] 
**tag** | **str** | A notification with the same tag replaces the one shown. | [optional] 
**color** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.android_push_options import AndroidPushOptions

# TODO update the JSON string below
json = "{}"
# create an instance of AndroidPushOptions from a JSON string
android_push_options_instance = AndroidPushOptions.from_json(json)
# print the JSON string representation of the object
print(AndroidPushOptions.to_json())

# convert the object into a dict
android_push_options_dict = android_push_options_instance.to_dict()
# create an instance of AndroidPushOptions from a dict
android_push_options_from_dict = AndroidPushOptions.from_dict(android_push_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


