

# PushAppCreate


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**authMode** | [**AuthModeEnum**](#AuthModeEnum) |  |  |
|**projectId** | **String** | Required for delegated. |  [optional] |
|**serviceAccount** | **String** | The whole service-account JSON file as a string. Required for service_account. |  [optional] |
|**androidPackage** | **String** |  |  [optional] |
|**iosBundleId** | **String** |  |  [optional] |
|**webOrigin** | **URI** |  |  [optional] |



## Enum: AuthModeEnum

| Name | Value |
|---- | -----|
| SERVICE_ACCOUNT | &quot;service_account&quot; |
| DELEGATED | &quot;delegated&quot; |



