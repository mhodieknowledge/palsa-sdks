# CreateContact201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CreateContact201ResponseData**](CreateContact201ResponseData.md) |  | 

## Example

```python
from palsa_api.models.create_contact201_response import CreateContact201Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContact201Response from a JSON string
create_contact201_response_instance = CreateContact201Response.from_json(json)
# print the JSON string representation of the object
print(CreateContact201Response.to_json())

# convert the object into a dict
create_contact201_response_dict = create_contact201_response_instance.to_dict()
# create an instance of CreateContact201Response from a dict
create_contact201_response_from_dict = CreateContact201Response.from_dict(create_contact201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


