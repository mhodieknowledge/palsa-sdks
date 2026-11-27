# Palsa.Api.Model.Device

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**ContactId** | **string** |  | [optional] 
**AppId** | **string** |  | [optional] 
**Platform** | **string** |  | 
**TokenEnd** | **string** | The last eight characters of the token. The token itself is never returned. | 
**AppVersion** | **string** |  | [optional] 
**Locale** | **string** |  | [optional] 
**LastSeenAt** | **string** |  | [optional] 
**TokenRefreshedAt** | **string** |  | [optional] 
**InvalidatedAt** | **string** |  | [optional] 
**InvalidReason** | **string** | unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed. | [optional] 
**CreatedAt** | **string** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

