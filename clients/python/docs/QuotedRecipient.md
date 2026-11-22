# QuotedRecipient


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_id** | **str** |  | 
**address** | **str** |  | 
**channel** | [**Channel**](Channel.md) |  | 
**name** | **str** |  | 
**fields** | **Dict[str, object]** |  | 
**units** | **int** | What this one recipient costs | 
**variant** | **str** |  | 

## Example

```python
from palsa_api.models.quoted_recipient import QuotedRecipient

# TODO update the JSON string below
json = "{}"
# create an instance of QuotedRecipient from a JSON string
quoted_recipient_instance = QuotedRecipient.from_json(json)
# print the JSON string representation of the object
print(QuotedRecipient.to_json())

# convert the object into a dict
quoted_recipient_dict = quoted_recipient_instance.to_dict()
# create an instance of QuotedRecipient from a dict
quoted_recipient_from_dict = QuotedRecipient.from_dict(quoted_recipient_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


