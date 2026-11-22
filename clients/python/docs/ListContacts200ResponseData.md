# ListContacts200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contacts** | [**List[Contact]**](Contact.md) |  | 

## Example

```python
from palsa_api.models.list_contacts200_response_data import ListContacts200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListContacts200ResponseData from a JSON string
list_contacts200_response_data_instance = ListContacts200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListContacts200ResponseData.to_json())

# convert the object into a dict
list_contacts200_response_data_dict = list_contacts200_response_data_instance.to_dict()
# create an instance of ListContacts200ResponseData from a dict
list_contacts200_response_data_from_dict = ListContacts200ResponseData.from_dict(list_contacts200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


