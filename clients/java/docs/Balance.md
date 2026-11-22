

# Balance

Reservations and usage are split by where the units came from, because included units are spent before purchased ones: the allowance the customer has already paid for goes first, and what they bought separately is kept for when it runs out. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**channel** | **Channel** |  |  |
|**included** | **Integer** | The plan&#39;s allowance for this period. |  |
|**purchased** | **Integer** | Credit bought separately |  |
|**reservedIncluded** | **Integer** | Included units promised to sends in flight. |  |
|**reservedPurchased** | **Integer** | Purchased units promised to sends in flight. |  |
|**usedIncluded** | **Integer** |  |  |
|**usedPurchased** | **Integer** |  |  |
|**available** | **Integer** | &#x60;included + purchased - reserved&#x60;, and what a send is actually checked against. It cannot go below nothing.  |  |
|**periodEnd** | **String** | When the included allowance expires. Purchased units are unaffected by it. |  [optional] |



