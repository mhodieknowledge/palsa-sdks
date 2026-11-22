# Blocker


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**message** | **str** |  | 
**skippable** | **bool** | False stops the send outright. True means it proceeds with those recipients left out. | 
**count** | **int** |  | [optional] 

## Example

```python
from palsa_api.models.blocker import Blocker

# TODO update the JSON string below
json = "{}"
# create an instance of Blocker from a JSON string
blocker_instance = Blocker.from_json(json)
# print the JSON string representation of the object
print(Blocker.to_json())

# convert the object into a dict
blocker_dict = blocker_instance.to_dict()
# create an instance of Blocker from a dict
blocker_from_dict = Blocker.from_dict(blocker_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


