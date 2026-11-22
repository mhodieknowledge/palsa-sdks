# QuoteSms


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encoding** | **str** |  | 
**segments** | **int** |  | 

## Example

```python
from palsa_api.models.quote_sms import QuoteSms

# TODO update the JSON string below
json = "{}"
# create an instance of QuoteSms from a JSON string
quote_sms_instance = QuoteSms.from_json(json)
# print the JSON string representation of the object
print(QuoteSms.to_json())

# convert the object into a dict
quote_sms_dict = quote_sms_instance.to_dict()
# create an instance of QuoteSms from a dict
quote_sms_from_dict = QuoteSms.from_dict(quote_sms_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


