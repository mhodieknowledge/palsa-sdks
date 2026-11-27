# # Device

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**contact_id** | **string** |  | [optional]
**app_id** | **string** |  | [optional]
**platform** | **string** |  |
**token_end** | **string** | The last eight characters of the token. The token itself is never returned. |
**app_version** | **string** |  | [optional]
**locale** | **string** |  | [optional]
**last_seen_at** | **string** |  | [optional]
**token_refreshed_at** | **string** |  | [optional]
**invalidated_at** | **string** |  | [optional]
**invalid_reason** | **string** | unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed. | [optional]
**created_at** | **string** |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
