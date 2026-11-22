
# Balance

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **channel** | [**Channel**](Channel.md) |  |  |
| **included** | **kotlin.Int** | The plan&#39;s allowance for this period. |  |
| **purchased** | **kotlin.Int** | Credit bought separately |  |
| **reservedIncluded** | **kotlin.Int** | Included units promised to sends in flight. |  |
| **reservedPurchased** | **kotlin.Int** | Purchased units promised to sends in flight. |  |
| **usedIncluded** | **kotlin.Int** |  |  |
| **usedPurchased** | **kotlin.Int** |  |  |
| **available** | **kotlin.Int** | &#x60;included + purchased - reserved&#x60;, and what a send is actually checked against. It cannot go below nothing.  |  |
| **periodEnd** | **kotlin.String** | When the included allowance expires. Purchased units are unaffected by it. |  [optional] |



