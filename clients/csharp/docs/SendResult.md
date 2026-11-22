# Palsa.Api.Model.SendResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Status** | **string** | &#x60;running&#x60;, &#x60;scheduled&#x60; when held or scheduled, or &#x60;pending_approval&#x60;. | 
**Mode** | **string** |  | 
**Recipients** | **int** |  | 
**Units** | **Dictionary&lt;string, int&gt;** | Billable units, per channel. | 
**Skipped** | **int** | How many recipients were left out. The quote says why. | 
**Warnings** | [**List&lt;Blocker&gt;**](Blocker.md) | Things that did not stop the send. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

