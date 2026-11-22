# Error

`code` is stable and worth branching on. `message` is written for a person and may change, so do not match on it. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**message** | **str** |  | 
**fields** | **Dict[str, List[str]]** | Validation errors by field name. | [optional] 
**detail** | **Dict[str, object]** | Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED. | [optional] 
**request_id** | **str** | Quote this when asking us about a request. | [optional] 

## Example

```python
from palsa_api.models.error import Error

# TODO update the JSON string below
json = "{}"
# create an instance of Error from a JSON string
error_instance = Error.from_json(json)
# print the JSON string representation of the object
print(Error.to_json())

# convert the object into a dict
error_dict = error_instance.to_dict()
# create an instance of Error from a dict
error_from_dict = Error.from_dict(error_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


