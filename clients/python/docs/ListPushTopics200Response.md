# ListPushTopics200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ListPushTopics200ResponseData**](ListPushTopics200ResponseData.md) |  | 

## Example

```python
from palsa_api.models.list_push_topics200_response import ListPushTopics200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListPushTopics200Response from a JSON string
list_push_topics200_response_instance = ListPushTopics200Response.from_json(json)
# print the JSON string representation of the object
print(ListPushTopics200Response.to_json())

# convert the object into a dict
list_push_topics200_response_dict = list_push_topics200_response_instance.to_dict()
# create an instance of ListPushTopics200Response from a dict
list_push_topics200_response_from_dict = ListPushTopics200Response.from_dict(list_push_topics200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


