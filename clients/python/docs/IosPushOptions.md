# IosPushOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**thread_id** | **str** | Groups notifications together. | [optional] 
**category** | **str** | The notification category | [optional] 
**interruption_level** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.ios_push_options import IosPushOptions

# TODO update the JSON string below
json = "{}"
# create an instance of IosPushOptions from a JSON string
ios_push_options_instance = IosPushOptions.from_json(json)
# print the JSON string representation of the object
print(IosPushOptions.to_json())

# convert the object into a dict
ios_push_options_dict = ios_push_options_instance.to_dict()
# create an instance of IosPushOptions from a dict
ios_push_options_from_dict = IosPushOptions.from_dict(ios_push_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


