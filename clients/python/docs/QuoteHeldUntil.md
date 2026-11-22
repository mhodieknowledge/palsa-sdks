# QuoteHeldUntil

Set when quiet hours will hold this send, with when it would go and in which zone.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**at** | **str** |  | [optional] 
**time_zone** | **str** |  | [optional] 

## Example

```python
from palsa_api.models.quote_held_until import QuoteHeldUntil

# TODO update the JSON string below
json = "{}"
# create an instance of QuoteHeldUntil from a JSON string
quote_held_until_instance = QuoteHeldUntil.from_json(json)
# print the JSON string representation of the object
print(QuoteHeldUntil.to_json())

# convert the object into a dict
quote_held_until_dict = quote_held_until_instance.to_dict()
# create an instance of QuoteHeldUntil from a dict
quote_held_until_from_dict = QuoteHeldUntil.from_dict(quote_held_until_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


