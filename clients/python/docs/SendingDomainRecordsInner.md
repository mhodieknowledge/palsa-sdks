# SendingDomainRecordsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purpose** | **str** |  | 
**type** | **str** |  | 
**name** | **str** |  | 
**value** | **str** |  | 
**priority** | **int** |  | [optional] 
**required** | **bool** |  | 

## Example

```python
from palsa_api.models.sending_domain_records_inner import SendingDomainRecordsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SendingDomainRecordsInner from a JSON string
sending_domain_records_inner_instance = SendingDomainRecordsInner.from_json(json)
# print the JSON string representation of the object
print(SendingDomainRecordsInner.to_json())

# convert the object into a dict
sending_domain_records_inner_dict = sending_domain_records_inner_instance.to_dict()
# create an instance of SendingDomainRecordsInner from a dict
sending_domain_records_inner_from_dict = SendingDomainRecordsInner.from_dict(sending_domain_records_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


