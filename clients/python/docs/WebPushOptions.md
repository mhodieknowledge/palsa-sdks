# WebPushOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**icon** | **str** |  | [optional] 
**require_interaction** | **bool** | Keep it on screen until the person acts on it. | [optional] 

## Example

```python
from palsa_api.models.web_push_options import WebPushOptions

# TODO update the JSON string below
json = "{}"
# create an instance of WebPushOptions from a JSON string
web_push_options_instance = WebPushOptions.from_json(json)
# print the JSON string representation of the object
print(WebPushOptions.to_json())

# convert the object into a dict
web_push_options_dict = web_push_options_instance.to_dict()
# create an instance of WebPushOptions from a dict
web_push_options_from_dict = WebPushOptions.from_dict(web_push_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


