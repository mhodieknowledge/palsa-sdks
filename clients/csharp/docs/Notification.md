# Palsa.Api.Model.Notification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Kind** | **string** |  | 
**Name** | **string** |  | [optional] 
**Status** | **string** |  | 
**ReservedUnits** | **Dictionary&lt;string, int&gt;** | Billable units, per channel. | 
**SettledUnits** | **Dictionary&lt;string, int&gt;** | Billable units, per channel. | 
**RecipientCount** | **int** |  | 
**ScheduledAt** | **string** |  | [optional] 
**StartedAt** | **string** |  | [optional] 
**FinishedAt** | **string** |  | [optional] 
**FailureReason** | **string** |  | [optional] 
**Metadata** | **string** | The JSON you sent | [optional] 
**CreatedAt** | **string** |  | 
**Deliveries** | **Dictionary&lt;string, int&gt;** | How many deliveries are in each state. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

