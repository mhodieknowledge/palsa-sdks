# ListPushTopics200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topics** | [**List[ListPushTopics200ResponseDataTopicsInner]**](ListPushTopics200ResponseDataTopicsInner.md) |  | 

## Example

```python
from palsa_api.models.list_push_topics200_response_data import ListPushTopics200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListPushTopics200ResponseData from a JSON string
list_push_topics200_response_data_instance = ListPushTopics200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListPushTopics200ResponseData.to_json())

# convert the object into a dict
list_push_topics200_response_data_dict = list_push_topics200_response_data_instance.to_dict()
# create an instance of ListPushTopics200ResponseData from a dict
list_push_topics200_response_data_from_dict = ListPushTopics200ResponseData.from_dict(list_push_topics200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


