# Recipients

Who the send goes to. Give exactly one of these three.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_ids** | **List[str]** |  | [optional] 
**addresses** | **List[str]** | Phone numbers or email addresses, for people who are not saved contacts. | [optional] 
**audience_id** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.recipients import Recipients

# TODO update the JSON string below
json = "{}"
# create an instance of Recipients from a JSON string
recipients_instance = Recipients.from_json(json)
# print the JSON string representation of the object
print(Recipients.to_json())

# convert the object into a dict
recipients_dict = recipients_instance.to_dict()
# create an instance of Recipients from a dict
recipients_from_dict = Recipients.from_dict(recipients_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


