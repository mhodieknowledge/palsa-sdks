# QuoteVariants

How the audience divides between the two arms of an A/B test.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**a** | **int** |  | 
**b** | **int** |  | 

## Example

```python
from palsa_api.models.quote_variants import QuoteVariants

# TODO update the JSON string below
json = "{}"
# create an instance of QuoteVariants from a JSON string
quote_variants_instance = QuoteVariants.from_json(json)
# print the JSON string representation of the object
print(QuoteVariants.to_json())

# convert the object into a dict
quote_variants_dict = quote_variants_instance.to_dict()
# create an instance of QuoteVariants from a dict
quote_variants_from_dict = QuoteVariants.from_dict(quote_variants_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


