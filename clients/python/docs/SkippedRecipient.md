# SkippedRecipient


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **str** |  | 
**reason** | **str** |  | 

## Example

```python
from palsa_api.models.skipped_recipient import SkippedRecipient

# TODO update the JSON string below
json = "{}"
# create an instance of SkippedRecipient from a JSON string
skipped_recipient_instance = SkippedRecipient.from_json(json)
# print the JSON string representation of the object
print(SkippedRecipient.to_json())

# convert the object into a dict
skipped_recipient_dict = skipped_recipient_instance.to_dict()
# create an instance of SkippedRecipient from a dict
skipped_recipient_from_dict = SkippedRecipient.from_dict(skipped_recipient_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


