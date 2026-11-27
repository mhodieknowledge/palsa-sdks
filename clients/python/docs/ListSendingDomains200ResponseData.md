# ListSendingDomains200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domains** | [**List[SendingDomain]**](SendingDomain.md) |  | 

## Example

```python
from palsa_api.models.list_sending_domains200_response_data import ListSendingDomains200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListSendingDomains200ResponseData from a JSON string
list_sending_domains200_response_data_instance = ListSendingDomains200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListSendingDomains200ResponseData.to_json())

# convert the object into a dict
list_sending_domains200_response_data_dict = list_sending_domains200_response_data_instance.to_dict()
# create an instance of ListSendingDomains200ResponseData from a dict
list_sending_domains200_response_data_from_dict = ListSendingDomains200ResponseData.from_dict(list_sending_domains200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


