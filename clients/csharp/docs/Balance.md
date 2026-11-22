# Palsa.Api.Model.Balance
Reservations and usage are split by where the units came from, because included units are spent before purchased ones: the allowance the customer has already paid for goes first, and what they bought separately is kept for when it runs out. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channel** | **Channel** |  | 
**Included** | **int** | The plan&#39;s allowance for this period. | 
**Purchased** | **int** | Credit bought separately | 
**ReservedIncluded** | **int** | Included units promised to sends in flight. | 
**ReservedPurchased** | **int** | Purchased units promised to sends in flight. | 
**UsedIncluded** | **int** |  | 
**UsedPurchased** | **int** |  | 
**Available** | **int** | &#x60;included + purchased - reserved&#x60;, and what a send is actually checked against. It cannot go below nothing.  | 
**PeriodEnd** | **string** | When the included allowance expires. Purchased units are unaffected by it. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

