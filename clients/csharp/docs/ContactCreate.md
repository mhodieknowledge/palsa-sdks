# Palsa.Api.Model.ContactCreate
Give an email address or a phone number, or both.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | [optional] [default to ""]
**Email** | **string** |  | [optional] 
**Phone** | **string** |  | [optional] 
**State** | **string** | Only &#x60;consented&#x60; contacts receive marketing. Say &#x60;consented&#x60; only if you can show they did. | [optional] [default to StateEnum.Pending]
**ConsentSource** | **string** | Where consent came from. Worth recording. | [optional] 
**Tags** | **List&lt;string&gt;** |  | [optional] 
**Fields** | **Dictionary&lt;string, string&gt;** | Your own fields, usable as &#x60;{{ variables }}&#x60; in a body. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

