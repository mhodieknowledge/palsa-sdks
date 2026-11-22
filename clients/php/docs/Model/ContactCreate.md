# # ContactCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to '']
**email** | **string** |  | [optional]
**phone** | **string** |  | [optional]
**state** | **string** | Only &#x60;consented&#x60; contacts receive marketing. Say &#x60;consented&#x60; only if you can show they did. | [optional] [default to 'pending']
**consent_source** | **string** | Where consent came from. Worth recording. | [optional]
**tags** | **string[]** |  | [optional]
**fields** | **array<string,string>** | Your own fields, usable as &#x60;{{ variables }}&#x60; in a body. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
