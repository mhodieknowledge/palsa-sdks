# SendingDomain


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**domain** | **str** |  | 
**status** | **str** |  | 
**message** | **str** | What the state means | 
**dkim_status** | **str** |  | [optional] 
**mail_from_domain** | **str** |  | [optional] 
**mail_from_status** | **str** |  | [optional] 
**records** | [**List[SendingDomainRecordsInner]**](SendingDomainRecordsInner.md) |  | 
**last_checked_at** | **datetime** |  | [optional] 
**next_check_at** | **datetime** |  | [optional] 
**verified_at** | **datetime** |  | [optional] 
**created_at** | **datetime** |  | 

## Example

```python
from palsa_api.models.sending_domain import SendingDomain

# TODO update the JSON string below
json = "{}"
# create an instance of SendingDomain from a JSON string
sending_domain_instance = SendingDomain.from_json(json)
# print the JSON string representation of the object
print(SendingDomain.to_json())

# convert the object into a dict
sending_domain_dict = sending_domain_instance.to_dict()
# create an instance of SendingDomain from a dict
sending_domain_from_dict = SendingDomain.from_dict(sending_domain_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


