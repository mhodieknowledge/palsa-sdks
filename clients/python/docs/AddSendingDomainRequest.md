# AddSendingDomainRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **str** |  | 

## Example

```python
from palsa_api.models.add_sending_domain_request import AddSendingDomainRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddSendingDomainRequest from a JSON string
add_sending_domain_request_instance = AddSendingDomainRequest.from_json(json)
# print the JSON string representation of the object
print(AddSendingDomainRequest.to_json())

# convert the object into a dict
add_sending_domain_request_dict = add_sending_domain_request_instance.to_dict()
# create an instance of AddSendingDomainRequest from a dict
add_sending_domain_request_from_dict = AddSendingDomainRequest.from_dict(add_sending_domain_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


