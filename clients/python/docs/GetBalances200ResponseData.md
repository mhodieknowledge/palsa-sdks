# GetBalances200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balances** | [**List[Balance]**](Balance.md) |  | 

## Example

```python
from palsa_api.models.get_balances200_response_data import GetBalances200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of GetBalances200ResponseData from a JSON string
get_balances200_response_data_instance = GetBalances200ResponseData.from_json(json)
# print the JSON string representation of the object
print(GetBalances200ResponseData.to_json())

# convert the object into a dict
get_balances200_response_data_dict = get_balances200_response_data_instance.to_dict()
# create an instance of GetBalances200ResponseData from a dict
get_balances200_response_data_from_dict = GetBalances200ResponseData.from_dict(get_balances200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


