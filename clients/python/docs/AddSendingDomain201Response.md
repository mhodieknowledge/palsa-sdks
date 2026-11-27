# AddSendingDomain201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**SendingDomain**](SendingDomain.md) |  | 

## Example

```python
from palsa_api.models.add_sending_domain201_response import AddSendingDomain201Response

# TODO update the JSON string below
json = "{}"
# create an instance of AddSendingDomain201Response from a JSON string
add_sending_domain201_response_instance = AddSendingDomain201Response.from_json(json)
# print the JSON string representation of the object
print(AddSendingDomain201Response.to_json())

# convert the object into a dict
add_sending_domain201_response_dict = add_sending_domain201_response_instance.to_dict()
# create an instance of AddSendingDomain201Response from a dict
add_sending_domain201_response_from_dict = AddSendingDomain201Response.from_dict(add_sending_domain201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


