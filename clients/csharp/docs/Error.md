# Palsa.Api.Model.Error
`code` is stable and worth branching on. `message` is written for a person and may change, so do not match on it. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **string** |  | 
**Message** | **string** |  | 
**Fields** | **Dictionary&lt;string, List&lt;string&gt;&gt;** | Validation errors by field name. | [optional] 
**Detail** | **Dictionary&lt;string, Object&gt;** | Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED. | [optional] 
**RequestId** | **string** | Quote this when asking us about a request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

