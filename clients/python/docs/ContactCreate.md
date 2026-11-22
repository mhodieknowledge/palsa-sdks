# ContactCreate

Give an email address or a phone number, or both.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] [default to '']
**email** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**state** | **str** | Only &#x60;consented&#x60; contacts receive marketing. Say &#x60;consented&#x60; only if you can show they did. | [optional] [default to 'pending']
**consent_source** | **str** | Where consent came from. Worth recording. | [optional] 
**tags** | **List[str]** |  | [optional] 
**fields** | **Dict[str, str]** | Your own fields, usable as &#x60;{{ variables }}&#x60; in a body. | [optional] 

## Example

```python
from palsa_api.models.contact_create import ContactCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ContactCreate from a JSON string
contact_create_instance = ContactCreate.from_json(json)
# print the JSON string representation of the object
print(ContactCreate.to_json())

# convert the object into a dict
contact_create_dict = contact_create_instance.to_dict()
# create an instance of ContactCreate from a dict
contact_create_from_dict = ContactCreate.from_dict(contact_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


