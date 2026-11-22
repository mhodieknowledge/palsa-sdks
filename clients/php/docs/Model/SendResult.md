# # SendResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**status** | **string** | &#x60;running&#x60;, &#x60;scheduled&#x60; when held or scheduled, or &#x60;pending_approval&#x60;. |
**mode** | **string** |  |
**recipients** | **int** |  |
**units** | **array<string,int>** | Billable units, per channel. |
**skipped** | **int** | How many recipients were left out. The quote says why. |
**warnings** | [**\Palsa\Api\Model\Blocker[]**](Blocker.md) | Things that did not stop the send. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
