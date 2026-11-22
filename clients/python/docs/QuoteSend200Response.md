# QuoteSend200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Quote**](Quote.md) |  | 

## Example

```python
from palsa_api.models.quote_send200_response import QuoteSend200Response

# TODO update the JSON string below
json = "{}"
# create an instance of QuoteSend200Response from a JSON string
quote_send200_response_instance = QuoteSend200Response.from_json(json)
# print the JSON string representation of the object
print(QuoteSend200Response.to_json())

# convert the object into a dict
quote_send200_response_dict = quote_send200_response_instance.to_dict()
# create an instance of QuoteSend200Response from a dict
quote_send200_response_from_dict = QuoteSend200Response.from_dict(quote_send200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


