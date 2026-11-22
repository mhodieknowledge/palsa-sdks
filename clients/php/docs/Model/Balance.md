# # Balance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel** | [**\Palsa\Api\Model\Channel**](Channel.md) |  |
**included** | **int** | The plan&#39;s allowance for this period. |
**purchased** | **int** | Credit bought separately |
**reserved_included** | **int** | Included units promised to sends in flight. |
**reserved_purchased** | **int** | Purchased units promised to sends in flight. |
**used_included** | **int** |  |
**used_purchased** | **int** |  |
**available** | **int** | &#x60;included + purchased - reserved&#x60;, and what a send is actually checked against. It cannot go below nothing. |
**period_end** | **string** | When the included allowance expires. Purchased units are unaffected by it. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
