# DeleteContact200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**DeleteContact200ResponseData**](DeleteContact200ResponseData.md) |  | 

## Example

```python
from palsa_api.models.delete_contact200_response import DeleteContact200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteContact200Response from a JSON string
delete_contact200_response_instance = DeleteContact200Response.from_json(json)
# print the JSON string representation of the object
print(DeleteContact200Response.to_json())

# convert the object into a dict
delete_contact200_response_dict = delete_contact200_response_instance.to_dict()
# create an instance of DeleteContact200Response from a dict
delete_contact200_response_from_dict = DeleteContact200Response.from_dict(delete_contact200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


