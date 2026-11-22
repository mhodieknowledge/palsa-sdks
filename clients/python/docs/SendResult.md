# SendResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**status** | **str** | &#x60;running&#x60;, &#x60;scheduled&#x60; when held or scheduled, or &#x60;pending_approval&#x60;. | 
**mode** | **str** |  | 
**recipients** | **int** |  | 
**units** | **Dict[str, int]** | Billable units, per channel. | 
**skipped** | **int** | How many recipients were left out. The quote says why. | 
**warnings** | [**List[Blocker]**](Blocker.md) | Things that did not stop the send. | 

## Example

```python
from palsa_api.models.send_result import SendResult

# TODO update the JSON string below
json = "{}"
# create an instance of SendResult from a JSON string
send_result_instance = SendResult.from_json(json)
# print the JSON string representation of the object
print(SendResult.to_json())

# convert the object into a dict
send_result_dict = send_result_instance.to_dict()
# create an instance of SendResult from a dict
send_result_from_dict = SendResult.from_dict(send_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


