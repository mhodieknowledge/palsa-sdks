# Balance

Reservations and usage are split by where the units came from, because included units are spent before purchased ones: the allowance the customer has already paid for goes first, and what they bought separately is kept for when it runs out. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel** | [**Channel**](Channel.md) |  | 
**included** | **int** | The plan&#39;s allowance for this period. | 
**purchased** | **int** | Credit bought separately | 
**reserved_included** | **int** | Included units promised to sends in flight. | 
**reserved_purchased** | **int** | Purchased units promised to sends in flight. | 
**used_included** | **int** |  | 
**used_purchased** | **int** |  | 
**available** | **int** | &#x60;included + purchased - reserved&#x60;, and what a send is actually checked against. It cannot go below nothing.  | 
**period_end** | **str** | When the included allowance expires. Purchased units are unaffected by it. | [optional] 

## Example

```python
from palsa_api.models.balance import Balance

# TODO update the JSON string below
json = "{}"
# create an instance of Balance from a JSON string
balance_instance = Balance.from_json(json)
# print the JSON string representation of the object
print(Balance.to_json())

# convert the object into a dict
balance_dict = balance_instance.to_dict()
# create an instance of Balance from a dict
balance_from_dict = Balance.from_dict(balance_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


