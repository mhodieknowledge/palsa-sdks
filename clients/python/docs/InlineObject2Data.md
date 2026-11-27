# InlineObject2Data


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **str** |  | 
**subscribed** | **int** |  | [optional] 
**unsubscribed** | **int** |  | [optional] 
**failed** | [**List[InlineObject2DataFailedInner]**](InlineObject2DataFailedInner.md) |  | 

## Example

```python
from palsa_api.models.inline_object2_data import InlineObject2Data

# TODO update the JSON string below
json = "{}"
# create an instance of InlineObject2Data from a JSON string
inline_object2_data_instance = InlineObject2Data.from_json(json)
# print the JSON string representation of the object
print(InlineObject2Data.to_json())

# convert the object into a dict
inline_object2_data_dict = inline_object2_data_instance.to_dict()
# create an instance of InlineObject2Data from a dict
inline_object2_data_from_dict = InlineObject2Data.from_dict(inline_object2_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


