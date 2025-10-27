#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: 

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..507"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ListFulfillmentScripts
samples/cli/sample-apps Platform listFulfillmentScripts \
    > test.out 2>&1
eval_tap $? 2 'ListFulfillmentScripts' test.out

#- 3 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'gEoBZvGS' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'ImcEgCSs' \
    --body '{"grantDays": "DbuKfgyj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'HzrqQCJ2' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'GVOI5NEj' \
    --body '{"grantDays": "WXMIhhLH"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "snVh3m1k", "dryRun": false, "fulfillmentUrl": "bmdNQybE", "itemType": "EXTENSION", "purchaseConditionUrl": "LO8XRxnb"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '19D96DmP' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '0wCeA16C' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'qdapER8S' \
    --body '{"clazz": "eU48dofj", "dryRun": true, "fulfillmentUrl": "XhW1FrpQ", "purchaseConditionUrl": "kks701re"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'AXJSlqTw' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'XntXzTk3' \
    --offset '79' \
    --tag 'uyxdRclZ' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wbtEekf7", "discountConfig": {"categories": [{"categoryPath": "xIJptXov", "includeSubCategories": false}, {"categoryPath": "KGPbqJYH", "includeSubCategories": true}, {"categoryPath": "QJdwYj9m", "includeSubCategories": false}], "currencyCode": "uNWRkugK", "currencyNamespace": "LPRLtOHj", "discountAmount": 9, "discountPercentage": 32, "discountType": "PERCENTAGE", "items": [{"itemId": "iuU50gC4", "itemName": "YIIU9OgU"}, {"itemId": "JOqTJS06", "itemName": "l9Ls4vEA"}, {"itemId": "3h1EgEvx", "itemName": "DKhkQ99g"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 65, "itemId": "diuq45mf", "itemName": "OMnU0dzT", "quantity": 64}, {"extraSubscriptionDays": 75, "itemId": "Ukg2UeZk", "itemName": "4MZwsf4B", "quantity": 87}, {"extraSubscriptionDays": 13, "itemId": "gpOEe5d4", "itemName": "sP7RMQJU", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 56, "maxRedeemCountPerCode": 24, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 68, "name": "3dgbTl3b", "redeemEnd": "1986-10-22T00:00:00Z", "redeemStart": "1978-06-04T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["zKMzPBjl", "MiK9vK9h", "32lXTklF"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'WTIz0zpM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'cja9n4wY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "o95QFXS6", "discountConfig": {"categories": [{"categoryPath": "rL2RnENR", "includeSubCategories": true}, {"categoryPath": "a2FVBRQH", "includeSubCategories": true}, {"categoryPath": "T3hkvxRM", "includeSubCategories": false}], "currencyCode": "mJaOPMgw", "currencyNamespace": "auOMlwSf", "discountAmount": 22, "discountPercentage": 42, "discountType": "AMOUNT", "items": [{"itemId": "8fLzHXhS", "itemName": "EARIPPZp"}, {"itemId": "CaOHlIDH", "itemName": "Up2EMjGg"}, {"itemId": "07savbcU", "itemName": "UoMR5CYo"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 48, "itemId": "FDGSFSwL", "itemName": "Im1aNph6", "quantity": 34}, {"extraSubscriptionDays": 63, "itemId": "sX138g7j", "itemName": "1hkrDFcN", "quantity": 64}, {"extraSubscriptionDays": 21, "itemId": "MhNft9TV", "itemName": "jLCnKiB8", "quantity": 26}], "maxRedeemCountPerCampaignPerUser": 46, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 63, "maxSaleCount": 39, "name": "5VLxJ5Xk", "redeemEnd": "1984-10-31T00:00:00Z", "redeemStart": "1983-10-08T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["YDwwMSWW", "pwGHNKXo", "TQWC4r0k"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'nxt4lnFz' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "RHCGLaHa", "oldName": "MeVmtg38"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'YLaMdBSG' \
    --namespace $AB_NAMESPACE \
    --batchName 'SQYB9SDX' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'Pcjcp8FV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetCampaignDynamic' test.out

#- 20 GetCatalogConfig
samples/cli/sample-apps Platform getCatalogConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetCatalogConfig' test.out

#- 21 UpdateCatalogConfig
samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CATALOG", "DLC"]}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateCatalogConfig' test.out

#- 22 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxPluginConfig' test.out

#- 23 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "bJDh8F70"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "kgFWhqLi"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateLootBoxPluginConfig' test.out

#- 24 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteLootBoxPluginConfig' test.out

#- 25 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 25 'UplodLootBoxPluginConfigCert' test.out

#- 26 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 26 'GetLootBoxGrpcInfo' test.out

#- 27 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetSectionPluginConfig' test.out

#- 28 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "OQWf34SG"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "oSGu5ZKS"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateSectionPluginConfig' test.out

#- 29 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteSectionPluginConfig' test.out

#- 30 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 30 'UploadSectionPluginConfigCert' test.out

#- 31 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'Iy3CjGgg' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '5wFP3mdL' \
    --body '{"categoryPath": "HS8QUry8", "localizationDisplayNames": {"nyJ7UOjR": "7J4dEl0u", "uoDJtkMk": "y2nkBGPj", "MLQ18XjJ": "VGe7UNrx"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'lp8NcICO' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'tNqPyboa' \
    --namespace $AB_NAMESPACE \
    --storeId 'y6S6aVTH' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '3a4w1xnh' \
    --namespace $AB_NAMESPACE \
    --storeId 'CShyoGXC' \
    --body '{"localizationDisplayNames": {"3XV1wEBh": "Hbn3Frd3", "2dTvePUT": "RX2Lj8BW", "TDiXxcy3": "vAdVBwgo"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'vEtomgwq' \
    --namespace $AB_NAMESPACE \
    --storeId 'kFEA8FQ3' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'F6mOIWAb' \
    --namespace $AB_NAMESPACE \
    --storeId 'zo2brjO4' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'h9ieBBix' \
    --namespace $AB_NAMESPACE \
    --storeId 'Yfq3wY6V' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Zd3Ry7Il' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'HlhhSLtY' \
    --batchNo '[9, 94, 33]' \
    --code 'SHYWj91T' \
    --limit '2' \
    --offset '65' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'UR02CSSE' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "z2N9Saey", "codeValue": "68aqYlq9", "quantity": 85}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId '7ZDJ7E3P' \
    --namespace $AB_NAMESPACE \
    --batchName 'SaIb3ldy' \
    --batchNo '[65, 40, 70]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'T9wNS01v' \
    --namespace $AB_NAMESPACE \
    --batchName 'HaDWxp32' \
    --batchNo '[44, 74, 97]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'ITEDzNLG' \
    --namespace $AB_NAMESPACE \
    --batchName 'zWuOE7Ut' \
    --batchNo '[24, 22, 36]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '74FJ8yOB' \
    --namespace $AB_NAMESPACE \
    --code 'JuzWlB0f' \
    --limit '35' \
    --offset '34' \
    --userId 'Qjw7K4kC' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'iIKW1TEY' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'XgVJ2BDd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'D7VtNvhY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'EnableCode' test.out

#- 48 GetServicePluginConfig
eval_tap 0 48 'GetServicePluginConfig # SKIP deprecated' test.out

#- 49 UpdateServicePluginConfig
eval_tap 0 49 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 50 DeleteServicePluginConfig
eval_tap 0 50 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 51 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "AnYx5vWs", "currencySymbol": "wTVzeRdm", "currencyType": "VIRTUAL", "decimals": 72, "localizationDescriptions": {"kGdolcPC": "GHAWLL26", "SeB86VsQ": "U6K0B1pL", "pcgeJG9S": "ADX58ARV"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'wdiyYDSe' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"K6WE2poH": "Cx0biKWZ", "j03bF2mx": "gveU1nlS", "5YCVC2w9": "5vijB48r"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'LpR5Z2j8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ovRD6agk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'OznN8sUY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId '6QoSJAjD' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'RtWvnHHq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RestoreDLCItemConfigHistory' test.out

#- 59 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'GetDLCItemConfig' test.out

#- 60 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"autoUpdate": false, "enableRevocation": false, "id": "namxSF33", "rewards": [{"currency": {"currencyCode": "LQwYPG2M", "namespace": "ZvItypnI"}, "item": {"itemId": "9GznG9eG", "itemName": "E4vwqaYJ", "itemSku": "1A6qHgaF", "itemType": "Ca0uDQqQ"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "1g3wEHEK", "namespace": "mH7HMiAA"}, "item": {"itemId": "O6dmmznx", "itemName": "xCSWXx00", "itemSku": "kKnHoIAS", "itemType": "0o77NqhS"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "QXRU58mK", "namespace": "ovcqn9YA"}, "item": {"itemId": "KQac1Fzb", "itemName": "jqz7M9Hj", "itemSku": "2MypUyFp", "itemType": "CyX9NU4y"}, "quantity": 3, "type": "ITEM"}], "rvn": 65}, {"autoUpdate": true, "enableRevocation": true, "id": "eTIF57TL", "rewards": [{"currency": {"currencyCode": "1x9y5MR5", "namespace": "062ENmt8"}, "item": {"itemId": "jP5hzYE1", "itemName": "iETHfkSw", "itemSku": "W9Mxxwla", "itemType": "nC82FOB4"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"currencyCode": "790nGRW7", "namespace": "DvUgy50h"}, "item": {"itemId": "Y7s1fsXr", "itemName": "ensWpNxH", "itemSku": "V85Eerac", "itemType": "ksVUefYi"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "FJusJGZ1", "namespace": "yal36Qx0"}, "item": {"itemId": "RLFB3k39", "itemName": "J9urzzVv", "itemSku": "xaJDIVVL", "itemType": "Mesiedxd"}, "quantity": 11, "type": "CURRENCY"}], "rvn": 65}, {"autoUpdate": false, "enableRevocation": true, "id": "P8XryWbo", "rewards": [{"currency": {"currencyCode": "rSaLUfRJ", "namespace": "JtRj4EZ9"}, "item": {"itemId": "ArFEsDOJ", "itemName": "9PRIcpLe", "itemSku": "Nk1zmrnk", "itemType": "8GZxITmT"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "fPjLAlV6", "namespace": "mwJwKyoi"}, "item": {"itemId": "Bk6bqJOF", "itemName": "xM9WufwB", "itemSku": "K5WjWRwh", "itemType": "lLaUv2vQ"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "gnlE30oZ", "namespace": "NNaHWiEw"}, "item": {"itemId": "ODvDIcJF", "itemName": "m4Ctr7UV", "itemSku": "PZyuIruy", "itemType": "5t0WN1H8"}, "quantity": 46, "type": "ITEM"}], "rvn": 42}]}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateDLCItemConfig' test.out

#- 61 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteDLCItemConfig' test.out

#- 62 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'GetPlatformDLCConfig' test.out

#- 63 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"wFdTMTn4": "JpiXIoj0", "YtAKOslj": "zXMzobw9", "RXmSAqzS": "jNzbly1E"}}, {"platform": "OCULUS", "platformDlcIdMap": {"cN41Grav": "WAL5ggC4", "sKhm60Sh": "2GT8RNP6", "uYjcc1tm": "6sSRpOJB"}}, {"platform": "PSN", "platformDlcIdMap": {"i60a7Bqw": "PzJ89YNY", "lj4Rhkhz": "nAntB8au", "ThvmKMfM": "jQz4TwIu"}}]}' \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'Tn1JFZHx' \
    --itemId '["iQlC564c", "dYhUhCOF", "0C5pM0nV"]' \
    --limit '58' \
    --offset '35' \
    --origin 'Steam' \
    --userId 'N8cD5WwI' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["qleOCXv3", "Dh2Tfr15", "m0LoFgfl"]' \
    --limit '19' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlementsByItemIds' test.out

#- 67 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'EnableEntitlementOriginFeature' test.out

#- 68 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "rtG5mZzy", "endDate": "1978-04-04T00:00:00Z", "grantedCode": "kx3xPAnW", "itemId": "3r1Nw5Ra", "itemNamespace": "fLviwPGn", "language": "KtN", "metadata": {"jSgr9Hi2": {}, "jgCwCWOL": {}, "CMYg2u5j": {}}, "origin": "Xbox", "quantity": 61, "region": "uBmrkulr", "source": "REDEEM_CODE", "startDate": "1981-05-12T00:00:00Z", "storeId": "wXbnYCzs"}, {"collectionId": "wdi8EufY", "endDate": "1984-02-03T00:00:00Z", "grantedCode": "ZRdGIT0E", "itemId": "8w70pVlV", "itemNamespace": "TpREEQ77", "language": "yS", "metadata": {"WCnYdzoj": {}, "kyxjZ1OH": {}, "wvvMaEy5": {}}, "origin": "Xbox", "quantity": 7, "region": "OR3GecYO", "source": "IAP", "startDate": "1983-03-05T00:00:00Z", "storeId": "FYyl7SvO"}, {"collectionId": "aAbMslA8", "endDate": "1976-02-12T00:00:00Z", "grantedCode": "XlPrVNjv", "itemId": "Rjeus2rD", "itemNamespace": "sYKtkTyL", "language": "ineb_MZ", "metadata": {"tAObflHP": {}, "VTjuC9aB": {}, "UzXf6B7E": {}}, "origin": "Playstation", "quantity": 62, "region": "aePdJM1U", "source": "REWARD", "startDate": "1976-09-15T00:00:00Z", "storeId": "Obe9zSqN"}], "userIds": ["TCOszd9I", "h6VCnZs2", "BaoKKZUK"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["grs4qMd4", "zzAph9Na", "Xm8UM4yR"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'fchRcY4t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '66' \
    --status 'FAIL' \
    --userId 'aEO3WuiG' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'b0ckvReP' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId '5cKOGTIj' \
    --limit '57' \
    --offset '69' \
    --startTime 'mCK3NKvN' \
    --status 'FAIL' \
    --userId 'vUXhTdnj' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "ZVLp5moj", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "bSzVVZMB"}, {"amountConsumed": 94, "clientTransactionId": "SnogO7Fx"}, {"amountConsumed": 78, "clientTransactionId": "Oout7ijX"}], "entitlementId": "d6tDCCQo", "usageCount": 79}, {"clientTransaction": [{"amountConsumed": 99, "clientTransactionId": "9xt5rq6x"}, {"amountConsumed": 55, "clientTransactionId": "fk5oqLBS"}, {"amountConsumed": 46, "clientTransactionId": "FcooOzfN"}], "entitlementId": "5mi4Qwd7", "usageCount": 45}, {"clientTransaction": [{"amountConsumed": 4, "clientTransactionId": "6Z8hrQb1"}, {"amountConsumed": 12, "clientTransactionId": "LlF9sOxA"}, {"amountConsumed": 72, "clientTransactionId": "8R75F1yk"}], "entitlementId": "Qpr0LLBV", "usageCount": 86}], "purpose": "TwoVvTVt"}, "originalTitleName": "9joB6MkY", "paymentProductSKU": "mBmaNjN1", "purchaseDate": "juTaNX6Q", "sourceOrderItemId": "NMNe26dm", "titleName": "xFhfNegk"}, "eventDomain": "Fa26XG1r", "eventSource": "dTitjXKx", "eventType": "zdq27C1o", "eventVersion": 65, "id": "lxOBbe2r", "timestamp": "x78ZJyYj"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "9tCE7Cd0", "eventState": "83LvlW9z", "lineItemId": "3mcjfBdX", "orderId": "vtBNe8Qo", "productId": "6h87PpQt", "productType": "enyou7In", "purchasedDate": "R1A7iaAD", "sandboxId": "83RB9yoF", "skuId": "jBnTccTi", "subscriptionData": {"consumedDurationInDays": 71, "dateTime": "12eUj6NO", "durationInDays": 48, "recurrenceId": "9lTiAosW"}}, "datacontenttype": "uLHh1Idv", "id": "4IhONWL3", "source": "djSbSkZ0", "specVersion": "S75jBYJu", "subject": "XrQTbJkf", "time": "mmLkyxQj", "traceparent": "pGdP5Nx7", "type": "a5d5UXd0"}' \
    > test.out 2>&1
eval_tap $? 75 'MockXblClawbackEvent' test.out

#- 76 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetAppleIAPConfig' test.out

#- 77 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 72, "bundleId": "1leqrVmS", "issuerId": "kpbyuYLc", "keyId": "Iv2CqTxl", "password": "BgxbqkOP", "version": "V1"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleIAPConfig' test.out

#- 78 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteAppleIAPConfig' test.out

#- 79 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 79 'UpdateAppleP8File' test.out

#- 80 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetEpicGamesIAPConfig' test.out

#- 81 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "xKXDbgEj"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateEpicGamesIAPConfig' test.out

#- 82 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteEpicGamesIAPConfig' test.out

#- 83 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetGoogleIAPConfig' test.out

#- 84 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "jisU9AKG", "notificationTokenAudience": "v5kiaZDn", "notificationTokenEmail": "DJxijUyZ", "packageName": "Ht6m5Duv", "serviceAccountId": "KkKydnUi"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleIAPConfig' test.out

#- 85 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeleteGoogleIAPConfig' test.out

#- 86 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 86 'UpdateGoogleP12File' test.out

#- 87 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetIAPItemConfig' test.out

#- 88 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "gYedGiyV", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"4JSaM0il": "HHYTEFpJ", "k3p3bPvD": "cc1zpQ1W", "Fb2x5A29": "cCnsQPMd"}}, {"itemIdentity": "SgXFzVKa", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nsxVmcbf": "qhuBhrna", "De0r4PG2": "vkwRDtAD", "mwRtWUk7": "x01kgrTx"}}, {"itemIdentity": "Fl0tycoE", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"CbfKMNK2": "XP6MNwLy", "NqnKZQJE": "tHxoxCKq", "nXqJ9zJu": "8qV0JbUo"}}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateIAPItemConfig' test.out

#- 89 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeleteIAPItemConfig' test.out

#- 90 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetOculusIAPConfig' test.out

#- 91 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "pLUcx5ms", "appSecret": "LvXBEyOv", "webhookVerifyToken": "95oxZQvX"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 ListOculusSubscriptionGroups
samples/cli/sample-apps Platform listOculusSubscriptionGroups \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'ListOculusSubscriptionGroups' test.out

#- 94 CreateOculusSubscriptionGroup
samples/cli/sample-apps Platform createOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"sku": "Eu4gxmIV"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'sikYi0K7' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'GEf6eATL' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "JBi5rHV5", "sku": "KBiMbqmx"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'gR1QhpJw' \
    > test.out 2>&1
eval_tap $? 98 'DeleteOculusSubscriptionTier' test.out

#- 99 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'GetPlayStationIAPConfig' test.out

#- 100 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "ukz5R4QA", "backOfficeServerClientSecret": "bjsCE06P", "enableStreamJob": false, "environment": "yIsaptXF", "streamName": "VF9ynGQk", "streamPartnerName": "NoOZfNQo"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdatePlaystationIAPConfig' test.out

#- 101 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'DeletePlaystationIAPConfig' test.out

#- 102 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'ValidateExistedPlaystationIAPConfig' test.out

#- 103 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "jKf8BJfB", "backOfficeServerClientSecret": "EeS3ujGJ", "enableStreamJob": true, "environment": "bgxYUvZd", "streamName": "41YrmzPP", "streamPartnerName": "tNqqBTNP"}' \
    > test.out 2>&1
eval_tap $? 103 'ValidatePlaystationIAPConfig' test.out

#- 104 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetSteamIAPConfig' test.out

#- 105 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "4rosEeqS", "env": "LIVE", "publisherAuthenticationKey": "aaFbhs3b", "syncMode": "TRANSACTION"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateSteamIAPConfig' test.out

#- 106 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'DeleteSteamIAPConfig' test.out

#- 107 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetTwitchIAPConfig' test.out

#- 108 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "u43sQbQm", "clientSecret": "sdU8m79e", "organizationId": "8Lb1d0id"}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateTwitchIAPConfig' test.out

#- 109 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 109 'DeleteTwitchIAPConfig' test.out

#- 110 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetXblIAPConfig' test.out

#- 111 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": false, "entraAppClientId": "EVX5YFFY", "entraAppClientSecret": "sxXCmFJh", "entraTenantId": "dLKJfmu5", "relyingPartyCert": "DVvs3rWE"}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateXblIAPConfig' test.out

#- 112 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'DeleteXblAPConfig' test.out

#- 113 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'WNkHFotU' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'CUeaT24m' \
    --externalId 'fdbibg3y' \
    --limit '86' \
    --offset '82' \
    --source 'XBOX' \
    --startDate 'U465xAfg' \
    --status 'WARN' \
    --type 'NrCcGLZy' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '47' \
    --orderId 'aACdaVg8' \
    --steamId '5pcTuYIq' \
    > test.out 2>&1
eval_tap $? 115 'QueryAbnormalTransactions' test.out

#- 116 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetSteamJobInfo' test.out

#- 117 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "LIVE", "lastTime": "1986-05-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'Xh8Gd7te' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '95' \
    --orderId 'NrsXx9sR' \
    --processStatus 'PROCESSED' \
    --steamId 'jofRI9wS' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId '2MzeAs7W' \
    --limit '0' \
    --offset '32' \
    --platform 'STEAM' \
    --productId 'cBxuXdc0' \
    --userId '7eO82vfo' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'BAvJ57pk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'g1LfIK3F' \
    --feature 'MBl7qCyF' \
    --itemId 'fNHPOBZl' \
    --itemType 'BUNDLE' \
    --startTime 'soCItrLY' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'UEDjOfsW' \
    --feature '6R3UrS40' \
    --itemId 'cWXRzWPs' \
    --itemType 'SEASON' \
    --startTime 'FeDie0mb' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'bNgsXaMy' \
    --body '{"categoryPath": "BM3NANHq", "targetItemId": "XE8FZLns", "targetNamespace": "eLMzXgMD"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'I5QaMVO5' \
    --body '{"appId": "idqTUaEB", "appType": "DLC", "baseAppId": "D3GDotvo", "boothName": "mAthgRJb", "categoryPath": "q1sc9VnN", "clazz": "olDyF0dA", "displayOrder": 2, "entitlementType": "DURABLE", "ext": {"8dWRjRbx": {}, "P2XadlY2": {}, "qwt6QHEY": {}}, "features": ["RG4mzywv", "jWwuN1od", "TI6wizYk"], "flexible": true, "images": [{"as": "lBGdpJ0R", "caption": "GCrFutqn", "height": 64, "imageUrl": "0RyyHWLd", "smallImageUrl": "7jLTYGkV", "width": 9}, {"as": "WQwTL2PO", "caption": "OGm3gbB3", "height": 84, "imageUrl": "954TOJOK", "smallImageUrl": "SotcJGVS", "width": 18}, {"as": "oR9YxveK", "caption": "GomQduTC", "height": 3, "imageUrl": "leDfJ86c", "smallImageUrl": "TIurhYu0", "width": 71}], "inventoryConfig": {"customAttributes": {"8sbJ1x0L": {}, "zHGKGVS8": {}, "IFAuI1s7": {}}, "serverCustomAttributes": {"XXDMpZtI": {}, "MvVaFrfx": {}, "oKTk9a2Z": {}}, "slotUsed": 86}, "itemId": "X4uB5tSM", "itemIds": ["MtHzJ0sW", "PR5xHnXJ", "TpaIugl8"], "itemQty": {"uioUe6VF": 36, "wo7AA1vi": 55, "yIs3Bvl9": 44}, "itemType": "BUNDLE", "listable": true, "localizations": {"Qp37msha": {"description": "76Z9V7K3", "localExt": {"kjCxQy1v": {}, "A6JMloET": {}, "RaeDPSYl": {}}, "longDescription": "LxGAC8CH", "title": "fwyYrvSp"}, "W2VR3HEU": {"description": "GE5HwIAW", "localExt": {"yA9KtopL": {}, "BV3gp9JI": {}, "LvnzvBTf": {}}, "longDescription": "CV5etf5r", "title": "tDanAij4"}, "V4nT5p8v": {"description": "GavemQ1x", "localExt": {"jXrNgmTO": {}, "W6pjRYLl": {}, "GLhtqfiw": {}}, "longDescription": "8IEN7qL9", "title": "ByzkZsUi"}}, "lootBoxConfig": {"rewardCount": 8, "rewards": [{"lootBoxItems": [{"count": 4, "duration": 44, "endDate": "1993-02-07T00:00:00Z", "itemId": "wGp6xIaL", "itemSku": "Pr8QhpbD", "itemType": "cojUiPtP"}, {"count": 91, "duration": 39, "endDate": "1972-09-19T00:00:00Z", "itemId": "ONA3XGqj", "itemSku": "Vuoc04d1", "itemType": "OQ1lTpkF"}, {"count": 78, "duration": 72, "endDate": "1975-12-27T00:00:00Z", "itemId": "3eNJQZzt", "itemSku": "t8LzxqDH", "itemType": "x2O38BnS"}], "name": "vjhGH1Sr", "odds": 0.9873274110715706, "type": "REWARD", "weight": 16}, {"lootBoxItems": [{"count": 10, "duration": 95, "endDate": "1992-05-27T00:00:00Z", "itemId": "GDrUD4v6", "itemSku": "HMXNDyRP", "itemType": "degdajxW"}, {"count": 82, "duration": 29, "endDate": "1981-05-18T00:00:00Z", "itemId": "sDF9yRv2", "itemSku": "bSApUw65", "itemType": "oa2TgXyT"}, {"count": 37, "duration": 45, "endDate": "1979-07-05T00:00:00Z", "itemId": "j0vo8QTu", "itemSku": "Nrb3UfP3", "itemType": "wDeLOaho"}], "name": "idUMChgL", "odds": 0.9471757566756377, "type": "REWARD", "weight": 93}, {"lootBoxItems": [{"count": 55, "duration": 89, "endDate": "1978-12-10T00:00:00Z", "itemId": "JCZrRHQw", "itemSku": "0WczSrRZ", "itemType": "8Gx918h4"}, {"count": 43, "duration": 17, "endDate": "1972-04-20T00:00:00Z", "itemId": "vb2HE8Vf", "itemSku": "XV35iySQ", "itemType": "BLk4JGGI"}, {"count": 16, "duration": 92, "endDate": "1977-02-27T00:00:00Z", "itemId": "ucjHXWRS", "itemSku": "9UxEUvrZ", "itemType": "mmN0ytIx"}], "name": "10kWq1Ao", "odds": 0.09660358601876928, "type": "REWARD", "weight": 51}], "rollFunction": "CUSTOM"}, "maxCount": 48, "maxCountPerUser": 68, "name": "l5HKWYZF", "optionBoxConfig": {"boxItems": [{"count": 98, "duration": 49, "endDate": "1990-12-29T00:00:00Z", "itemId": "I1GqKPcZ", "itemSku": "PshIgTe1", "itemType": "nsC1rGCO"}, {"count": 11, "duration": 28, "endDate": "1991-08-05T00:00:00Z", "itemId": "CaVdRUBG", "itemSku": "zrax0QsQ", "itemType": "y2BMYX01"}, {"count": 58, "duration": 62, "endDate": "1974-04-15T00:00:00Z", "itemId": "5XinVOzQ", "itemSku": "u8ELbcGI", "itemType": "OBTnybbh"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 29, "fixedTrialCycles": 25, "graceDays": 92}, "regionData": {"sDhG9g30": [{"currencyCode": "qbjTbELF", "currencyNamespace": "nRSmfg8x", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1977-03-09T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1994-08-22T00:00:00Z", "expireAt": "1986-08-07T00:00:00Z", "price": 26, "purchaseAt": "1994-06-03T00:00:00Z", "trialPrice": 65}, {"currencyCode": "txpb2NZC", "currencyNamespace": "l7vhl5mQ", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1996-08-15T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1978-10-14T00:00:00Z", "expireAt": "1973-04-10T00:00:00Z", "price": 56, "purchaseAt": "1978-05-24T00:00:00Z", "trialPrice": 0}, {"currencyCode": "FAuQgGZq", "currencyNamespace": "e7kA81t3", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1999-11-20T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1998-05-24T00:00:00Z", "expireAt": "1972-11-01T00:00:00Z", "price": 82, "purchaseAt": "1997-10-28T00:00:00Z", "trialPrice": 36}], "p1HfuTfo": [{"currencyCode": "LGpJo0Jt", "currencyNamespace": "wC3aWpS1", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1979-11-07T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1975-09-26T00:00:00Z", "expireAt": "1999-06-09T00:00:00Z", "price": 40, "purchaseAt": "1994-03-16T00:00:00Z", "trialPrice": 71}, {"currencyCode": "EtzTgxBv", "currencyNamespace": "c0LrIDNh", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1974-08-26T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1971-09-13T00:00:00Z", "expireAt": "1982-10-15T00:00:00Z", "price": 11, "purchaseAt": "1997-06-04T00:00:00Z", "trialPrice": 78}, {"currencyCode": "wulNwqde", "currencyNamespace": "ggzbNcCt", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1978-12-25T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1987-04-30T00:00:00Z", "expireAt": "1987-05-31T00:00:00Z", "price": 67, "purchaseAt": "1985-10-21T00:00:00Z", "trialPrice": 8}], "XVSNpm3A": [{"currencyCode": "dSde0MWv", "currencyNamespace": "KnpdiUeQ", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1985-04-30T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1990-04-09T00:00:00Z", "expireAt": "1997-07-12T00:00:00Z", "price": 60, "purchaseAt": "1980-05-06T00:00:00Z", "trialPrice": 38}, {"currencyCode": "O5oQmlp6", "currencyNamespace": "q96ecrRA", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1987-05-23T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1983-12-04T00:00:00Z", "expireAt": "1981-07-27T00:00:00Z", "price": 77, "purchaseAt": "1982-09-10T00:00:00Z", "trialPrice": 40}, {"currencyCode": "7p88xNBx", "currencyNamespace": "fqLEh3ex", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1988-12-28T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1979-01-01T00:00:00Z", "expireAt": "1997-12-29T00:00:00Z", "price": 37, "purchaseAt": "1990-05-17T00:00:00Z", "trialPrice": 77}]}, "saleConfig": {"currencyCode": "7UkjtLZy", "price": 16}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "I9af6KzE", "stackable": true, "status": "ACTIVE", "tags": ["oltfypYt", "KEREVQKU", "zg9oTbHz"], "targetCurrencyCode": "0eIwDxcj", "targetNamespace": "8zcdhPQX", "thumbnailUrl": "ZWWkpNiL", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ToBXLRAB' \
    --appId 'qbSZARJw' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'z4xNsbHq' \
    --baseAppId 'NFlQ5OKi' \
    --categoryPath 'ZKcSwbrA' \
    --features 'vuJd1NUE' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '74' \
    --offset '66' \
    --region 'idl54siY' \
    --sortBy '["displayOrder:asc", "createdAt:desc", "displayOrder"]' \
    --storeId '0OjhGV5C' \
    --tags 'AvLrrHt2' \
    --targetNamespace 'S8gPA79L' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["aPMqHnL1", "EFJ0PUAG", "LSKRjE2V"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'jgg69kqe' \
    --itemIds 'iUYU3wg0' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'pLlD7zwT' \
    --sku 'wwYr7lMr' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'lNrf6wGn' \
    --populateBundle 'false' \
    --region 'WdwythqL' \
    --storeId 'KTLl51M4' \
    --sku 'hCamu7aa' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'xasbCHjy' \
    --region 'DxM7fDGL' \
    --storeId 'RqMqR0A4' \
    --itemIds 'N1ShDRYD' \
    --userId '8RFCA5bh' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qEJEEGs7' \
    --sku 'a46vFsWZ' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["zSTP8MPs", "xQ7Mxhv1", "7oW9BY0Q"]' \
    --storeId 'l6tueVlV' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'S85aFHqV' \
    --region 'TVXde4RC' \
    --storeId 'SqfHvRAq' \
    --itemIds 'AW3osIMH' \
    > test.out 2>&1
eval_tap $? 135 'BulkGetLocaleItems' test.out

#- 136 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetAvailablePredicateTypes' test.out

#- 137 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'pAtgA19l' \
    --userId '4jiDYspj' \
    --body '{"itemIds": ["Z8iweDQ7", "DcFf1RwB", "KRocLxHv"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'z355i6nO' \
    --body '{"changes": [{"itemIdentities": ["DvT4Npjy", "1hw5Mn0B", "vplJ2g3G"], "itemIdentityType": "ITEM_ID", "regionData": {"672I9gwH": [{"currencyCode": "dL8FbG0X", "currencyNamespace": "aPqYu9nq", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1990-03-24T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1995-03-20T00:00:00Z", "discountedPrice": 42, "expireAt": "1997-09-13T00:00:00Z", "price": 26, "purchaseAt": "1980-01-14T00:00:00Z", "trialPrice": 37}, {"currencyCode": "GvtVmjWT", "currencyNamespace": "Z0MIqVSY", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1975-01-08T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-06-02T00:00:00Z", "discountedPrice": 68, "expireAt": "1997-04-02T00:00:00Z", "price": 91, "purchaseAt": "1980-11-06T00:00:00Z", "trialPrice": 7}, {"currencyCode": "YA6zzRbm", "currencyNamespace": "BUENJFeP", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1981-02-17T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1973-05-13T00:00:00Z", "discountedPrice": 52, "expireAt": "1980-05-09T00:00:00Z", "price": 2, "purchaseAt": "1998-07-22T00:00:00Z", "trialPrice": 99}], "aHynFvTB": [{"currencyCode": "c0z0F7IL", "currencyNamespace": "r9Asqoef", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1992-03-12T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1978-12-09T00:00:00Z", "discountedPrice": 4, "expireAt": "1999-12-15T00:00:00Z", "price": 90, "purchaseAt": "1987-08-08T00:00:00Z", "trialPrice": 61}, {"currencyCode": "MvWeWwzB", "currencyNamespace": "CWpfQ1gR", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1972-08-03T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1975-07-29T00:00:00Z", "discountedPrice": 97, "expireAt": "1980-09-13T00:00:00Z", "price": 36, "purchaseAt": "1987-01-04T00:00:00Z", "trialPrice": 50}, {"currencyCode": "k7Llg71h", "currencyNamespace": "9jU1cBMq", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1986-04-29T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1996-04-04T00:00:00Z", "discountedPrice": 78, "expireAt": "1973-08-15T00:00:00Z", "price": 6, "purchaseAt": "1975-05-24T00:00:00Z", "trialPrice": 16}], "m4Hq9NyW": [{"currencyCode": "rsaggKUB", "currencyNamespace": "DRaOvdf8", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1972-03-16T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1992-01-06T00:00:00Z", "discountedPrice": 56, "expireAt": "1982-10-25T00:00:00Z", "price": 29, "purchaseAt": "1979-12-05T00:00:00Z", "trialPrice": 36}, {"currencyCode": "jYFwh2LE", "currencyNamespace": "sOClEi3e", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1982-06-07T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1999-01-25T00:00:00Z", "discountedPrice": 73, "expireAt": "1998-03-19T00:00:00Z", "price": 85, "purchaseAt": "1995-07-09T00:00:00Z", "trialPrice": 15}, {"currencyCode": "cWW0ymg8", "currencyNamespace": "obiMrVHK", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1984-10-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1981-05-28T00:00:00Z", "discountedPrice": 45, "expireAt": "1984-07-29T00:00:00Z", "price": 10, "purchaseAt": "1996-12-04T00:00:00Z", "trialPrice": 35}]}}, {"itemIdentities": ["ZQRvHp1V", "2GLHA5ZE", "V8uAwhzA"], "itemIdentityType": "ITEM_SKU", "regionData": {"Zs0bgAyB": [{"currencyCode": "2kbrqRsY", "currencyNamespace": "21cbO9jf", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1976-03-19T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1980-05-03T00:00:00Z", "discountedPrice": 42, "expireAt": "1977-06-11T00:00:00Z", "price": 19, "purchaseAt": "1995-01-25T00:00:00Z", "trialPrice": 89}, {"currencyCode": "L6t5osTU", "currencyNamespace": "Wv5wNXHX", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1976-02-25T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-10-23T00:00:00Z", "discountedPrice": 12, "expireAt": "1993-12-08T00:00:00Z", "price": 5, "purchaseAt": "1976-10-12T00:00:00Z", "trialPrice": 11}, {"currencyCode": "lUHsFXIQ", "currencyNamespace": "dhHf804Y", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1974-08-31T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1979-07-23T00:00:00Z", "discountedPrice": 46, "expireAt": "1989-06-20T00:00:00Z", "price": 62, "purchaseAt": "1996-07-18T00:00:00Z", "trialPrice": 20}], "58dtU0HI": [{"currencyCode": "5Yo5iWId", "currencyNamespace": "3EwF4soX", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1979-10-16T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1976-04-17T00:00:00Z", "discountedPrice": 64, "expireAt": "1989-05-04T00:00:00Z", "price": 34, "purchaseAt": "1992-07-10T00:00:00Z", "trialPrice": 23}, {"currencyCode": "g8AXJ9Cg", "currencyNamespace": "GI2FbeVe", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1996-01-01T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1983-05-30T00:00:00Z", "discountedPrice": 53, "expireAt": "1980-11-10T00:00:00Z", "price": 49, "purchaseAt": "1986-07-12T00:00:00Z", "trialPrice": 24}, {"currencyCode": "PfmcmBva", "currencyNamespace": "v88FOvpw", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1995-02-19T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1976-01-30T00:00:00Z", "discountedPrice": 34, "expireAt": "1995-06-22T00:00:00Z", "price": 93, "purchaseAt": "1998-07-30T00:00:00Z", "trialPrice": 13}], "j8muHbHZ": [{"currencyCode": "cEXNJ9gS", "currencyNamespace": "5Tu6tSes", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1990-06-30T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1982-07-31T00:00:00Z", "discountedPrice": 80, "expireAt": "1976-01-24T00:00:00Z", "price": 69, "purchaseAt": "1985-05-06T00:00:00Z", "trialPrice": 25}, {"currencyCode": "xGqs4wCz", "currencyNamespace": "4U2PXObD", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1972-03-01T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1998-06-24T00:00:00Z", "discountedPrice": 22, "expireAt": "1974-10-23T00:00:00Z", "price": 90, "purchaseAt": "1976-05-30T00:00:00Z", "trialPrice": 40}, {"currencyCode": "x0JMRAyF", "currencyNamespace": "7aJ3NmUq", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1977-10-13T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1999-02-14T00:00:00Z", "discountedPrice": 25, "expireAt": "1974-11-02T00:00:00Z", "price": 31, "purchaseAt": "1972-11-06T00:00:00Z", "trialPrice": 1}]}}, {"itemIdentities": ["NBspx2p1", "gXY6eSqN", "zgTRaeGo"], "itemIdentityType": "ITEM_ID", "regionData": {"z5QhnJEI": [{"currencyCode": "i9f5uFTS", "currencyNamespace": "U5xiiY7Z", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1993-07-31T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1984-08-30T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-04-18T00:00:00Z", "price": 86, "purchaseAt": "1990-05-30T00:00:00Z", "trialPrice": 29}, {"currencyCode": "XV32GANA", "currencyNamespace": "iLuPERke", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1999-05-30T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1998-12-08T00:00:00Z", "discountedPrice": 84, "expireAt": "1974-11-20T00:00:00Z", "price": 60, "purchaseAt": "1971-12-18T00:00:00Z", "trialPrice": 17}, {"currencyCode": "HobmCHdR", "currencyNamespace": "bT41lrXs", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1973-12-01T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1976-10-18T00:00:00Z", "discountedPrice": 79, "expireAt": "1986-02-02T00:00:00Z", "price": 70, "purchaseAt": "1990-11-30T00:00:00Z", "trialPrice": 97}], "9JOcOrY6": [{"currencyCode": "AlCDTjvV", "currencyNamespace": "GzRCz68Y", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1981-07-13T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1988-02-21T00:00:00Z", "discountedPrice": 69, "expireAt": "1982-03-26T00:00:00Z", "price": 85, "purchaseAt": "1973-03-23T00:00:00Z", "trialPrice": 72}, {"currencyCode": "9QkssCpZ", "currencyNamespace": "y7iAO6gd", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1971-03-22T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1977-08-30T00:00:00Z", "discountedPrice": 6, "expireAt": "1993-04-02T00:00:00Z", "price": 55, "purchaseAt": "1985-07-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "xbuK1htL", "currencyNamespace": "nXrBVhWv", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1989-12-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1985-09-15T00:00:00Z", "discountedPrice": 42, "expireAt": "1979-10-07T00:00:00Z", "price": 88, "purchaseAt": "1992-03-17T00:00:00Z", "trialPrice": 43}], "yn7OiiSc": [{"currencyCode": "ODe4ncbI", "currencyNamespace": "KXq4WJw0", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1989-01-02T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1988-04-10T00:00:00Z", "discountedPrice": 86, "expireAt": "1984-04-18T00:00:00Z", "price": 87, "purchaseAt": "1994-06-26T00:00:00Z", "trialPrice": 76}, {"currencyCode": "srPIzXop", "currencyNamespace": "pjF4MjzR", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1986-03-19T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1990-10-18T00:00:00Z", "discountedPrice": 99, "expireAt": "1987-03-05T00:00:00Z", "price": 90, "purchaseAt": "1979-01-23T00:00:00Z", "trialPrice": 54}, {"currencyCode": "LqoNxmIG", "currencyNamespace": "kE5ESNHA", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1971-05-09T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1984-08-07T00:00:00Z", "discountedPrice": 47, "expireAt": "1972-05-27T00:00:00Z", "price": 48, "purchaseAt": "1994-12-15T00:00:00Z", "trialPrice": 60}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'COINS' \
    --limit '12' \
    --offset '69' \
    --sortBy 't4pO2l8N' \
    --storeId '5EDYcS4h' \
    --keyword 'E9tnUgKs' \
    --language 'ihwuNoLb' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '12' \
    --offset '79' \
    --sortBy '["updatedAt:asc", "displayOrder:asc"]' \
    --storeId 'VOymiVyB' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'YWmzN5hn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'vtGpkzO7' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '8nzpsygT' \
    --namespace $AB_NAMESPACE \
    --storeId 'XYv3O2HE' \
    --body '{"appId": "UN8nlk50", "appType": "GAME", "baseAppId": "v4LD43mR", "boothName": "g2tnNrfT", "categoryPath": "uOl6dHae", "clazz": "xULPdkWy", "displayOrder": 63, "entitlementType": "CONSUMABLE", "ext": {"yH5zisx2": {}, "j6X7a4zp": {}, "yfhhwqtz": {}}, "features": ["DzwdYkPu", "gEurwkGD", "k4etrE1o"], "flexible": true, "images": [{"as": "40YlxI0U", "caption": "fQqP43WI", "height": 6, "imageUrl": "J9IlRHkA", "smallImageUrl": "T1mKEwLW", "width": 41}, {"as": "06J9bA5k", "caption": "KwNYYG7p", "height": 96, "imageUrl": "njN7ECKZ", "smallImageUrl": "mSNxEgIB", "width": 91}, {"as": "tQjLg3uG", "caption": "ZXFb53ME", "height": 43, "imageUrl": "3EExVIZ7", "smallImageUrl": "lnB1rzSB", "width": 87}], "inventoryConfig": {"customAttributes": {"oD7wp8ZU": {}, "vLtl7egK": {}, "9PEgoCQp": {}}, "serverCustomAttributes": {"CsOSBHgu": {}, "LV3lDgmg": {}, "wv9Py1z6": {}}, "slotUsed": 57}, "itemIds": ["Y07sIhEf", "2CX0vztP", "MYtZ9DBg"], "itemQty": {"BPPtMD9a": 66, "GlHIDhBK": 49, "bKHuHDPH": 84}, "itemType": "EXTENSION", "listable": true, "localizations": {"CfqvzFix": {"description": "8ipY21YV", "localExt": {"oogSpMR3": {}, "zUZEonVG": {}, "hc6C5vbS": {}}, "longDescription": "ImOn9bWQ", "title": "pUPu185m"}, "4IMiwshS": {"description": "6jVU4u4M", "localExt": {"5md8hrse": {}, "ETsp4nY6": {}, "aF5dPxDC": {}}, "longDescription": "RIX8pS8v", "title": "scTZNqjv"}, "56SyNaP3": {"description": "u7NvixjJ", "localExt": {"4kDMkb6w": {}, "aqK04Wp9": {}, "3WOczmAW": {}}, "longDescription": "TJIzwB9z", "title": "5NppQBi1"}}, "lootBoxConfig": {"rewardCount": 18, "rewards": [{"lootBoxItems": [{"count": 70, "duration": 85, "endDate": "1974-08-25T00:00:00Z", "itemId": "IIeiplez", "itemSku": "tItVOgcI", "itemType": "VcxkpM6t"}, {"count": 25, "duration": 29, "endDate": "1993-07-03T00:00:00Z", "itemId": "90gjthsT", "itemSku": "gVrkCHiG", "itemType": "46sLzzfK"}, {"count": 99, "duration": 78, "endDate": "1978-12-25T00:00:00Z", "itemId": "tgJvisCP", "itemSku": "cvoCZLgT", "itemType": "GQP2DVIf"}], "name": "c4mr34r5", "odds": 0.013271727162795566, "type": "REWARD", "weight": 11}, {"lootBoxItems": [{"count": 73, "duration": 75, "endDate": "1980-02-19T00:00:00Z", "itemId": "fbbIYMFS", "itemSku": "FYNt0QsM", "itemType": "u5c8DevG"}, {"count": 16, "duration": 61, "endDate": "1987-04-25T00:00:00Z", "itemId": "8PwRrIy6", "itemSku": "JAZsUoxS", "itemType": "Ol7ZmUhJ"}, {"count": 83, "duration": 32, "endDate": "1978-10-14T00:00:00Z", "itemId": "PSC2dApD", "itemSku": "zW2iOU5f", "itemType": "L4w47FMG"}], "name": "cCUOdSNt", "odds": 0.47181550002708217, "type": "REWARD_GROUP", "weight": 31}, {"lootBoxItems": [{"count": 36, "duration": 81, "endDate": "1984-06-06T00:00:00Z", "itemId": "jD130v7e", "itemSku": "SOQAAWiD", "itemType": "IDehf9yZ"}, {"count": 100, "duration": 8, "endDate": "1988-10-20T00:00:00Z", "itemId": "0PLNzcZ2", "itemSku": "WBgo8Q3P", "itemType": "uXEXgus5"}, {"count": 7, "duration": 8, "endDate": "1980-05-10T00:00:00Z", "itemId": "PS2FT0ut", "itemSku": "tPrWEyJf", "itemType": "IVjd77jJ"}], "name": "KVdKchj1", "odds": 0.30618884308474137, "type": "REWARD_GROUP", "weight": 76}], "rollFunction": "CUSTOM"}, "maxCount": 49, "maxCountPerUser": 32, "name": "DxaPPnQF", "optionBoxConfig": {"boxItems": [{"count": 78, "duration": 65, "endDate": "1973-08-14T00:00:00Z", "itemId": "5Hy1uUrI", "itemSku": "RFfG3sWE", "itemType": "ze0MPLGE"}, {"count": 36, "duration": 85, "endDate": "1993-07-12T00:00:00Z", "itemId": "umV1NoRa", "itemSku": "p0slhLdw", "itemType": "9j3TO3iU"}, {"count": 71, "duration": 75, "endDate": "1976-12-22T00:00:00Z", "itemId": "bx97EMrC", "itemSku": "n4FScRaf", "itemType": "NhL0NX5x"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 93, "fixedTrialCycles": 72, "graceDays": 65}, "regionData": {"v0lSjgXd": [{"currencyCode": "H37mD2cH", "currencyNamespace": "0TCH9kD3", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1989-10-15T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-12-02T00:00:00Z", "expireAt": "1993-07-20T00:00:00Z", "price": 47, "purchaseAt": "1989-07-09T00:00:00Z", "trialPrice": 90}, {"currencyCode": "joLxi8na", "currencyNamespace": "Cfgqf07Y", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-16T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1995-01-03T00:00:00Z", "expireAt": "1979-04-13T00:00:00Z", "price": 54, "purchaseAt": "1996-06-17T00:00:00Z", "trialPrice": 34}, {"currencyCode": "dWczGV0j", "currencyNamespace": "xoh7nl7y", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1989-12-21T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-11-30T00:00:00Z", "expireAt": "1991-03-06T00:00:00Z", "price": 66, "purchaseAt": "1978-12-27T00:00:00Z", "trialPrice": 77}], "nKzgPkc1": [{"currencyCode": "6eYXf4gC", "currencyNamespace": "jIWOiUzp", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1995-06-28T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1994-08-19T00:00:00Z", "expireAt": "1987-07-28T00:00:00Z", "price": 95, "purchaseAt": "1984-02-11T00:00:00Z", "trialPrice": 56}, {"currencyCode": "jUPYUSuU", "currencyNamespace": "QWlVToas", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1976-10-25T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1985-07-06T00:00:00Z", "expireAt": "1979-10-20T00:00:00Z", "price": 63, "purchaseAt": "1972-08-04T00:00:00Z", "trialPrice": 26}, {"currencyCode": "bwwosB8R", "currencyNamespace": "Ua5RiWeT", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1997-12-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1971-12-28T00:00:00Z", "expireAt": "1986-06-06T00:00:00Z", "price": 77, "purchaseAt": "1975-03-15T00:00:00Z", "trialPrice": 96}], "leRAgEOc": [{"currencyCode": "E6xZwP3T", "currencyNamespace": "FWWWDpTQ", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1987-12-13T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1988-04-16T00:00:00Z", "expireAt": "1997-12-06T00:00:00Z", "price": 32, "purchaseAt": "1993-01-22T00:00:00Z", "trialPrice": 31}, {"currencyCode": "DDiqsZUB", "currencyNamespace": "SmlKDVzl", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1976-03-14T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1972-01-05T00:00:00Z", "expireAt": "1971-04-18T00:00:00Z", "price": 88, "purchaseAt": "1986-11-06T00:00:00Z", "trialPrice": 8}, {"currencyCode": "MZxWC80i", "currencyNamespace": "N1OfkHGF", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1990-03-26T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1985-05-05T00:00:00Z", "expireAt": "1977-04-27T00:00:00Z", "price": 26, "purchaseAt": "1981-02-16T00:00:00Z", "trialPrice": 74}]}, "saleConfig": {"currencyCode": "SuQtQsFN", "price": 100}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "51JghHSu", "stackable": true, "status": "INACTIVE", "tags": ["TLScblCt", "NoN2B2Bq", "kww243Ev"], "targetCurrencyCode": "ykLhfyZy", "targetNamespace": "a3wOgx6T", "thumbnailUrl": "0BP5XHC0", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '8gUAwdhj' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "DLC", "CAMPAIGN"]' \
    --force 'true' \
    --storeId 'JN1z6aWB' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'wlUBk8Rw' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 6, "orderNo": "UuUzOgms"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'pv4JHtZ4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'BFmasWYA' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'soJs1cdi' \
    --namespace $AB_NAMESPACE \
    --storeId 'mVXELYGa' \
    --body '{"carousel": [{"alt": "Jev6JpOm", "previewUrl": "gLQ5Cp08", "thumbnailUrl": "llnTvhIi", "type": "image", "url": "oO1Py0ht", "videoSource": "generic"}, {"alt": "GIyeXFtZ", "previewUrl": "qKCiMs8W", "thumbnailUrl": "liUCkjOB", "type": "image", "url": "UAh3tlB0", "videoSource": "generic"}, {"alt": "hyrztqVj", "previewUrl": "1EP01Ou9", "thumbnailUrl": "6IgSy4oW", "type": "image", "url": "rjOcEN3I", "videoSource": "vimeo"}], "developer": "FwKaLGyS", "forumUrl": "4h5Din9G", "genres": ["Indie", "Adventure", "Action"], "localizations": {"FOnmmIDq": {"announcement": "udlsohhF", "slogan": "lj6xQVPq"}, "CUR3MgrD": {"announcement": "UgvuLsKX", "slogan": "aOeJr4Yl"}, "nCa8ptG3": {"announcement": "o5oUymg1", "slogan": "UMe0rdrK"}}, "platformRequirements": {"t8qCM8GT": [{"additionals": "1kp0ESgG", "directXVersion": "zCzfDUNm", "diskSpace": "08NS4sbi", "graphics": "KUpXJcJ1", "label": "wZ5KKuCF", "osVersion": "S4uSBIZi", "processor": "3Pwh9tQu", "ram": "LfVGIJmd", "soundCard": "3McTLnTc"}, {"additionals": "wCb7tvEt", "directXVersion": "mni3LRLQ", "diskSpace": "BCaFB862", "graphics": "c7eIuYNh", "label": "sbdvLDa3", "osVersion": "18Hd1Tyd", "processor": "bxgZ3bFD", "ram": "TZTnI7lZ", "soundCard": "5LHZ7Pxn"}, {"additionals": "kDzC2OtK", "directXVersion": "bjYfJz9E", "diskSpace": "MoEn0B5V", "graphics": "sc9MIIe1", "label": "ODIJ68W8", "osVersion": "6F6aphJk", "processor": "sxgpRmqg", "ram": "amQou4OT", "soundCard": "t8IlO4jU"}], "SmB5O10t": [{"additionals": "x5H7rRyc", "directXVersion": "F59Gy03r", "diskSpace": "GgvkDROl", "graphics": "NDpfBXHj", "label": "izmv5cUm", "osVersion": "Lmjoo7Ss", "processor": "Fgpe99GX", "ram": "4gujNqgN", "soundCard": "YoYC1y4a"}, {"additionals": "EZuIfi3Q", "directXVersion": "sMgnvoBB", "diskSpace": "ZchWYqpo", "graphics": "bOgF7Ivm", "label": "0IPMhIeM", "osVersion": "GDAsv3jD", "processor": "9YuWKEaZ", "ram": "yxufRTmi", "soundCard": "sCv0OY4s"}, {"additionals": "Iaaavy6l", "directXVersion": "sEEHXD21", "diskSpace": "4ubZAMDJ", "graphics": "ZD1kL1yy", "label": "RRumqhjB", "osVersion": "HLbSvsvJ", "processor": "8nsutuEl", "ram": "BCicqhld", "soundCard": "x36TKIVq"}], "2OoY9Hun": [{"additionals": "rLj9ArpR", "directXVersion": "HVaQLaFk", "diskSpace": "egT9oyHE", "graphics": "6OJoQPXB", "label": "7Ri4Sd20", "osVersion": "viJTDQnB", "processor": "UQNTuhdZ", "ram": "FxTHlSul", "soundCard": "5YVh5T1p"}, {"additionals": "e3zvj7C9", "directXVersion": "00gycYeI", "diskSpace": "qIoW66M4", "graphics": "fcvxDPIR", "label": "LjZn1ACS", "osVersion": "h5YzJBeM", "processor": "7ZBon6uP", "ram": "SBDD9xkH", "soundCard": "rD1CLM8M"}, {"additionals": "qC8uK7G4", "directXVersion": "tE5aBuNJ", "diskSpace": "3AQdmjLa", "graphics": "C6yef8Hb", "label": "Efrdo6Tq", "osVersion": "UIU51MZN", "processor": "3Gf1eMdc", "ram": "NjIGND2Y", "soundCard": "Ygvt8hEa"}]}, "platforms": ["Linux", "Android", "Windows"], "players": ["CrossPlatformMulti", "Single", "Coop"], "primaryGenre": "MassivelyMultiplayer", "publisher": "QH1MDX79", "releaseDate": "1973-12-15T00:00:00Z", "websiteUrl": "KyXcMSrU"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'bHNbTO2l' \
    --namespace $AB_NAMESPACE \
    --storeId 'aEx4nNuW' \
    --body '{"featuresToCheck": ["CATALOG", "CAMPAIGN"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '2gkh2MYw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Z9eR2ACI' \
    --namespace $AB_NAMESPACE \
    --storeId '5cDMkz53' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'mZNA2F5Z' \
    --itemId '2HwMFNhw' \
    --namespace $AB_NAMESPACE \
    --storeId 'DqXR4a73' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Ojjfuc8O' \
    --itemId 'AYMQq6Ab' \
    --namespace $AB_NAMESPACE \
    --storeId '9GqbC4a7' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'h5Vd10Pv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'wRHNkvSv' \
    --populateBundle 'true' \
    --region 'kFxd2Lsf' \
    --storeId 'xhTHuDQQ' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'edI9TD3O' \
    --namespace $AB_NAMESPACE \
    --storeId 'b3WGPD8R' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 61, "code": "wEOBk0hD", "comparison": "includes", "name": "ePXuhmPx", "predicateType": "SeasonPassPredicate", "value": "zJmB1QXc", "values": ["HRZh5nj7", "0mxBIgGW", "wmuRFMCq"]}, {"anyOf": 27, "code": "FFEBTHy0", "comparison": "excludes", "name": "8JSsidAO", "predicateType": "SeasonTierPredicate", "value": "Bvb2MgAK", "values": ["1eK6lMFf", "wqQXG65e", "QC4znI0z"]}, {"anyOf": 62, "code": "mSRKLtTG", "comparison": "isNot", "name": "5pH1Pg1G", "predicateType": "EntitlementPredicate", "value": "5VPOahcf", "values": ["P2M4Ktk9", "gMWpNSLl", "MC21BLxJ"]}]}, {"operator": "and", "predicates": [{"anyOf": 100, "code": "bdwAvaCm", "comparison": "includes", "name": "3r6oZ0Qp", "predicateType": "SeasonPassPredicate", "value": "r7XcR2na", "values": ["sGwaD09G", "aavdrbUY", "DPRq5Lfx"]}, {"anyOf": 68, "code": "SyqUJzKn", "comparison": "isNot", "name": "W9zhNYkY", "predicateType": "SeasonTierPredicate", "value": "VWN1kORL", "values": ["4eLXkgtT", "xZt7LfZM", "0fYwXvqS"]}, {"anyOf": 85, "code": "oj5yfnBd", "comparison": "excludes", "name": "ZIrsddIa", "predicateType": "SeasonPassPredicate", "value": "lMoGmDv5", "values": ["cSXr4lse", "CAW78DvT", "tgI2GE9N"]}]}, {"operator": "or", "predicates": [{"anyOf": 23, "code": "MdkcIBOc", "comparison": "isGreaterThan", "name": "VXM4B0D6", "predicateType": "SeasonPassPredicate", "value": "Y9kWadCQ", "values": ["sSRqCyOj", "RsH4Ok8G", "bFq8cWgl"]}, {"anyOf": 53, "code": "RbqfeAER", "comparison": "isGreaterThanOrEqual", "name": "grJALkEC", "predicateType": "EntitlementPredicate", "value": "ymwr3jZ0", "values": ["WW6hMAjv", "R2VBu8Ps", "pVtRtPyV"]}, {"anyOf": 16, "code": "ZVG2xvls", "comparison": "isGreaterThan", "name": "UzdiuTle", "predicateType": "EntitlementPredicate", "value": "R89TYenz", "values": ["nLBedK2a", "XrmiJTEE", "6WsQ6H1R"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'pJg7ClPI' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["IAP", "ENTITLEMENT", "REWARD"]' \
    --storeId 'AePuGpfx' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'KzawzExX' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Xf0hEv6s"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'MkW21Jwq' \
    --offset '37' \
    --tag 'J8h60eDF' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wPPZGBM2", "name": "shTbmrnI", "status": "INACTIVE", "tags": ["KYmn4TFw", "LSCk1PHG", "s0Sm8R0w"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '7bp2z3Zi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'SHj7KU7k' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KV3p3fdJ", "name": "icO9SgXW", "status": "ACTIVE", "tags": ["MkTeoGHL", "2HqdSeEF", "D3sMmTxx"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'LgHFtMOw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'vQ5wqZrm' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '64' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '9emFnhqK' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '9YuI6C5c' \
    --limit '87' \
    --offset '33' \
    --orderNos '["8DYtZxXF", "9vNm51PL", "JbWLfSUq"]' \
    --sortBy 'YcD6eRVc' \
    --startTime 'UiHiOplJ' \
    --status 'REFUND_FAILED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 164 'QueryOrders' test.out

#- 165 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'GetOrderStatistics' test.out

#- 166 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'RO2JqCdP' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'MTmme2Qq' \
    --body '{"description": "BgTb37Z1"}' \
    > test.out 2>&1
eval_tap $? 167 'RefundOrder' test.out

#- 168 GetPaymentCallbackConfig
eval_tap 0 168 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 169 UpdatePaymentCallbackConfig
eval_tap 0 169 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 170 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentMerchantConfig' test.out

#- 171 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["8s8O1Psn", "ATXiCoHN", "itI6G0fR"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'q0cJe4vm' \
    --externalId 'RLsbebbz' \
    --limit '19' \
    --notificationSource 'NEONPAY' \
    --notificationType 'hs4WZauM' \
    --offset '21' \
    --paymentOrderNo 'wEsw4aBm' \
    --startDate 'SFom1Uxu' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'BJcnGOW9' \
    --limit '17' \
    --offset '94' \
    --status 'AUTHORISED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "jWGswvio", "currencyNamespace": "kGFbqgJZ", "customParameters": {"IwG3ExG8": {}, "cV0Lu8jd": {}, "EApxLO59": {}}, "description": "RntToVtB", "extOrderNo": "4ieJNkO1", "extUserId": "Nn01FHPN", "itemType": "LOOTBOX", "language": "SjZ_yhqF-Jb", "metadata": {"7dkg70JL": "AKNKPg6G", "MBGZ7opw": "xr2zAbLO", "Dp86B27m": "cWKfZ5Cr"}, "notifyUrl": "cpW6XGSR", "omitNotification": true, "platform": "i2fjwldm", "price": 0, "recurringPaymentOrderNo": "aceAW7Xi", "region": "Ni2thAW3", "returnUrl": "SwPlNdkC", "sandbox": false, "sku": "v27z1imY", "subscriptionId": "EHRzQMRb", "targetNamespace": "gDqKPX69", "targetUserId": "DtqLsfAJ", "title": "ul9yhukW"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '2ApYmSat' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XPjGcjfa' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aGiuJTaD' \
    --body '{"extTxId": "JSBbWRG3", "paymentMethod": "OoPHcjnG", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FHuJ140p' \
    --body '{"description": "jprIvKTH"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RcyTogdw' \
    --body '{"amount": 59, "currencyCode": "w8yMEcxI", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 57, "vat": 52}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WyNGDkby' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'y1yASfGg' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "rPyJdjcd", "serviceLabel": 81}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'EdppSQ0y' \
    --body '{"delegationToken": "lBx6PRtw", "sandboxId": "g07qi7xE"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["Other", "Oculus", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Epic", "Oculus", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 187 'ResetPlatformWalletConfig' test.out

#- 188 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'GetRevocationConfig' test.out

#- 189 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 189 'UpdateRevocationConfig' test.out

#- 190 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'DeleteRevocationConfig' test.out

#- 191 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'w1vtrpmg' \
    --limit '71' \
    --offset '40' \
    --source 'IAP' \
    --startTime 'AjYvWbmD' \
    --status 'SUCCESS' \
    --transactionId '5ZyAwl9R' \
    --userId 'PSczb77A' \
    > test.out 2>&1
eval_tap $? 191 'QueryRevocationHistories' test.out

#- 192 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetRevocationPluginConfig' test.out

#- 193 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "0mB7srUk"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "N5H5Hqpl"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCert' test.out

#- 196 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Nusys1lI", "eventTopic": "PgnjP3Dk", "maxAwarded": 11, "maxAwardedPerUser": 72, "namespaceExpression": "BVI7ECwm", "rewardCode": "C1XRNT74", "rewardConditions": [{"condition": "y56Upary", "conditionName": "Fe5iAj9t", "eventName": "db1vcqWG", "rewardItems": [{"duration": 20, "endDate": "1988-05-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2NIZm97r", "quantity": 36, "sku": "te2qdE8Z"}, {"duration": 14, "endDate": "1996-01-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ha4LxMGZ", "quantity": 78, "sku": "j8O8qenM"}, {"duration": 63, "endDate": "1987-01-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KRlSCjwH", "quantity": 45, "sku": "YALuwNv3"}]}, {"condition": "QJtzKyVs", "conditionName": "oVlFWydc", "eventName": "2ctWrtzg", "rewardItems": [{"duration": 96, "endDate": "1976-04-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Y7pLUAQm", "quantity": 45, "sku": "vbmXHNh6"}, {"duration": 23, "endDate": "1993-06-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nzGRbhdi", "quantity": 8, "sku": "Dka1ttZa"}, {"duration": 35, "endDate": "1989-01-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Xi0NlCXU", "quantity": 99, "sku": "46kHuk1S"}]}, {"condition": "4X2HTM21", "conditionName": "XoatGpM1", "eventName": "5iNDZTgy", "rewardItems": [{"duration": 94, "endDate": "1981-03-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WotTKbJb", "quantity": 21, "sku": "peMSBiLN"}, {"duration": 4, "endDate": "1976-09-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "simp1qgF", "quantity": 22, "sku": "RJoZHiRq"}, {"duration": 41, "endDate": "1978-09-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "A0KxoFSi", "quantity": 19, "sku": "gn4gw3iy"}]}], "userIdExpression": "cksj1MSo"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '8yYnuv3H' \
    --limit '83' \
    --offset '37' \
    --sortBy '["namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 197 'QueryRewards' test.out

#- 198 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'ExportRewards' test.out

#- 199 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 199 'ImportRewards' test.out

#- 200 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'htB6LnBn' \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '8OEsFmrt' \
    --body '{"description": "YSeVHt5f", "eventTopic": "qi5lIwhm", "maxAwarded": 63, "maxAwardedPerUser": 12, "namespaceExpression": "s9Tr8n8v", "rewardCode": "JLm5J9XI", "rewardConditions": [{"condition": "kmljkKvK", "conditionName": "7rQ4ecX1", "eventName": "1AqxCneq", "rewardItems": [{"duration": 45, "endDate": "1999-09-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mVAgZcdG", "quantity": 82, "sku": "VMVuJdrg"}, {"duration": 12, "endDate": "1996-07-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2RmCbGSR", "quantity": 93, "sku": "E1F4C9lG"}, {"duration": 11, "endDate": "1987-09-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1if6z7Pd", "quantity": 65, "sku": "wyTsTWrO"}]}, {"condition": "v1k5ua2d", "conditionName": "k44JMf3S", "eventName": "Ah4qVBE4", "rewardItems": [{"duration": 99, "endDate": "1987-01-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xwniFTm4", "quantity": 36, "sku": "ipkgI06a"}, {"duration": 63, "endDate": "1973-02-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DwMamyn7", "quantity": 89, "sku": "vI7yJ3Ag"}, {"duration": 25, "endDate": "1974-06-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BkFnAGgK", "quantity": 49, "sku": "jeNHBrjZ"}]}, {"condition": "sTPgxrFJ", "conditionName": "Ho13p84c", "eventName": "BiLOwv9l", "rewardItems": [{"duration": 28, "endDate": "1980-10-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6QAIAcii", "quantity": 43, "sku": "QBYP304p"}, {"duration": 31, "endDate": "1993-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "l4XNnD5y", "quantity": 78, "sku": "Kg02R7ZK"}, {"duration": 12, "endDate": "1981-08-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WEVFMFSr", "quantity": 37, "sku": "BgpYaZX9"}]}], "userIdExpression": "l1XpS9T8"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Sfth1hfV' \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'qYLyrGXo' \
    --body '{"payload": {"vxBwlpCo": {}, "UZzxJaDt": {}, "nZIUd1yI": {}}}' \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'rjx8jKef' \
    --body '{"conditionName": "q6iaqmPD", "userId": "e0dUSREh"}' \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'fAfLqR5x' \
    --limit '44' \
    --offset '72' \
    --start '5BQdAotJ' \
    --storeId 'pOvE9KPC' \
    --viewId 'mKJPXhZ8' \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '1Oe53qpO' \
    --body '{"active": true, "displayOrder": 22, "endDate": "1988-05-28T00:00:00Z", "ext": {"YFDwonR5": {}, "iKoh6ld8": {}, "ggM5Bh4c": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 30, "itemCount": 20, "rule": "SEQUENCE"}, "items": [{"id": "UNHzbPHm", "sku": "DY3HM57T"}, {"id": "g2GWY2g3", "sku": "3FnAp6BY"}, {"id": "gMCGuRRC", "sku": "RO87Rdf2"}], "localizations": {"CI9GJ68C": {"description": "hagnuePS", "localExt": {"pOy5hdzk": {}, "PfoQzHtu": {}, "8keXEHq2": {}}, "longDescription": "f8jtHK9V", "title": "BBE0EgDI"}, "olp3F4fX": {"description": "QFpvwfyv", "localExt": {"UWa5424C": {}, "cKSAfxMt": {}, "vfFAHFrx": {}}, "longDescription": "BZaDP7oC", "title": "Env58O72"}, "rQUYSntB": {"description": "e5cIVCKk", "localExt": {"FTLtzo24": {}, "mabSs54U": {}, "qdCaU82C": {}}, "longDescription": "fyZu8BJ7", "title": "U8nXrYdE"}}, "name": "IB8H7pM9", "rotationType": "NONE", "startDate": "1999-02-08T00:00:00Z", "viewId": "uGreiDoC"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'BNGEcvPu' \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '8zadbtoF' \
    --storeId 'UKCAJTbm' \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'aaU2G9vZ' \
    --storeId 'y7h3NKoc' \
    --body '{"active": true, "displayOrder": 15, "endDate": "1971-09-13T00:00:00Z", "ext": {"5UDdkPLq": {}, "wdTNOTwH": {}, "4548bsPf": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 43, "itemCount": 31, "rule": "SEQUENCE"}, "items": [{"id": "NI3L0O4E", "sku": "elB3Z8wd"}, {"id": "sZfVTmGC", "sku": "rfg6OzhI"}, {"id": "9w1LRnGO", "sku": "sgE1YeBF"}], "localizations": {"A34n2c0G": {"description": "hnEj7tLt", "localExt": {"a4jkvAmX": {}, "yBsUuhMX": {}, "i5i0r3oq": {}}, "longDescription": "QdWZzRUv", "title": "bABwlS7k"}, "eY4njpKo": {"description": "64oD1xj7", "localExt": {"9N1QmuC6": {}, "Yk8iokqd": {}, "wtHvyqhC": {}}, "longDescription": "NJpID9Qy", "title": "RhXb798f"}, "OSUS78aN": {"description": "xuC0DQCl", "localExt": {"bZ8P9map": {}, "EmmGtsCz": {}, "XewAEQRJ": {}}, "longDescription": "se0M3W7W", "title": "rf4QqKNa"}}, "name": "oTgOjw97", "rotationType": "FIXED_PERIOD", "startDate": "1994-12-14T00:00:00Z", "viewId": "tB6cuKzX"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '92F3FwgZ' \
    --storeId 'W3Bdg4cy' \
    > test.out 2>&1
eval_tap $? 210 'DeleteSection' test.out

#- 211 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'ListStores' test.out

#- 212 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "cPivWFBc", "defaultRegion": "bV58pKgA", "description": "yqzMYiJh", "supportedLanguages": ["P541xipy", "RLdd8AGl", "7c52yjLc"], "supportedRegions": ["34O4Bv0Y", "1mcfarT6", "IPXaQyfE"], "title": "YizZtok5"}' \
    > test.out 2>&1
eval_tap $? 212 'CreateStore' test.out

#- 213 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 213 'GetCatalogDefinition' test.out

#- 214 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'DownloadCSVTemplates' test.out

#- 215 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["2jEVmIM3", "wa0oYLM2", "uvCWWc6T"], "idsToBeExported": ["3T0cHX8G", "5CgZdINA", "8u77wFgG"], "storeId": "IOmkeVhv"}' \
    > test.out 2>&1
eval_tap $? 215 'ExportStoreByCSV' test.out

#- 216 ImportStore
eval_tap 0 216 'ImportStore # SKIP deprecated' test.out

#- 217 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 217 'GetPublishedStore' test.out

#- 218 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'DeletePublishedStore' test.out

#- 219 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 219 'GetPublishedStoreBackup' test.out

#- 220 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'RollbackPublishedStore' test.out

#- 221 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jGwndUch' \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'vCSU2kM4' \
    --body '{"defaultLanguage": "KUwuNAw2", "defaultRegion": "OMZtwh9x", "description": "cOlvE4fm", "supportedLanguages": ["J7KZ3lcX", "pgJtaean", "m7myhi4r"], "supportedRegions": ["QbXgEmY1", "f1BwqluZ", "qZ4lAMWu"], "title": "SKLhXSat"}' \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'SOR8FG7O' \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'hAr1QK5U' \
    --action 'UPDATE' \
    --itemSku 'YJCrJjcX' \
    --itemType 'APP' \
    --limit '55' \
    --offset '8' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'Rc03p6ip' \
    --updatedAtStart 'C7FPnf9D' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'zUQaChgR' \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'n77LACsm' \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'e298QXBc' \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'BXFOqUIC' \
    --action 'UPDATE' \
    --itemSku 'Km9Icqlj' \
    --itemType 'COINS' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'Le141Pdg' \
    --updatedAtStart 'G1bYaQRf' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '5j32IHZs' \
    --action 'CREATE' \
    --itemSku 'PYochg8T' \
    --itemType 'APP' \
    --type 'SECTION' \
    --updatedAtEnd 'COWuPXA1' \
    --updatedAtStart 'Ahxh5lzv' \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'xBj4iDIW' \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '8hmNA0Sq' \
    --namespace $AB_NAMESPACE \
    --storeId 'Oh5TaJi0' \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'tRzNHqL2' \
    --namespace $AB_NAMESPACE \
    --storeId 'FLMHfQQZ' \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'uoHXbc2x' \
    --targetStoreId 'YHEWauk4' \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '9bznfYcK' \
    --end 'oH7qvTui' \
    --limit '51' \
    --offset '2' \
    --sortBy '0Erex1Si' \
    --start 'F2zxanpJ' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'zf0D71yk' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'HIeozLFn' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'tzTqLonu' \
    --limit '90' \
    --offset '86' \
    --sku 'VFrtBhoB' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'THXdGCrN' \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bpXcx7OW' \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'v4ywyGma' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'bxhyKYtP' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "S0zlrwFp"}' \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'HQ4Zver1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'Bp3tavLd' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 6, "orderNo": "HGpemb0Y"}' \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 75, "currencyCode": "7D93MqW3", "expireAt": "1971-03-25T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "eJINcokv", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "XvbFMl2m", "entitlementOrigin": "Other", "itemIdentity": "Q0LpJtFX", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "Z1N7N5Bs"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 76, "currencyCode": "9uAS1LNW", "expireAt": "1978-06-03T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "TVTfwDRS", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "rQc9qnrW", "entitlementOrigin": "Xbox", "itemIdentity": "XnRXVx86", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "QUAUAkzb"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 27, "currencyCode": "kTqiao8u", "expireAt": "1975-01-13T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "fY7gqKZk", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "8DwECiYt", "entitlementOrigin": "Playstation", "itemIdentity": "ZxGAYdiv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "fUcw5zAO"}, "type": "DEBIT_WALLET"}], "userId": "IEaWXPxd"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 8, "currencyCode": "hUWOCmib", "expireAt": "1978-02-27T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "DzSvyVzf", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "SGgL9aFN", "entitlementOrigin": "System", "itemIdentity": "4qw7VMIB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "Bo3dkIyP"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 61, "currencyCode": "GiLPPQah", "expireAt": "1992-09-11T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "EQFXPCo4", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 52, "entitlementCollectionId": "MDNVGD20", "entitlementOrigin": "System", "itemIdentity": "HRYFx6LA", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "heLGr0Mp"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 17, "currencyCode": "A1Q8DzUE", "expireAt": "1982-03-22T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "TVznAnCC", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "dG4RhHHB", "entitlementOrigin": "Xbox", "itemIdentity": "ciVpjG22", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "y5l1Mu9o"}, "type": "CREDIT_WALLET"}], "userId": "xlO9oj9g"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 66, "currencyCode": "KEDdUPZF", "expireAt": "1997-11-06T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "uJsLsz1r", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "yRc7GLqQ", "entitlementOrigin": "Steam", "itemIdentity": "fDzCHnrQ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "johsvr7Z"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 61, "currencyCode": "3UV6NDK6", "expireAt": "1996-04-25T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "O2RGOqlh", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "HIaLLSnV", "entitlementOrigin": "System", "itemIdentity": "vy756cgP", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "Tvb4EU01"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 100, "currencyCode": "XVDyFmAw", "expireAt": "1991-03-18T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "MzVhgh77", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "ejRzXjXQ", "entitlementOrigin": "Steam", "itemIdentity": "sQJh5cVp", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "ui2SutIF"}, "type": "FULFILL_ITEM"}], "userId": "kTM7aHz5"}], "metadata": {"35Vni3iX": {}, "xLpSOsSo": {}, "O1nuLJKR": {}}, "needPreCheck": false, "transactionId": "Gff6hK5y", "type": "GqXKW9oz"}' \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '11' \
    --status 'INIT' \
    --type 'T8oohP1N' \
    --userId 'Djg27dn6' \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '94XDFTv9' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '8Srd8uxt' \
    --body '{"achievements": [{"id": "PdvjAKQo", "value": 86}, {"id": "1UljSRVg", "value": 19}, {"id": "XXTuOnb4", "value": 35}], "steamUserId": "0XlYvPIN"}' \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vUoxqKar' \
    --xboxUserId 'wxeo0Nid' \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ysuHmILd' \
    --body '{"achievements": [{"id": "LSDecbkV", "percentComplete": 39}, {"id": "iQ0LL0kQ", "percentComplete": 67}, {"id": "8SGyRO24", "percentComplete": 63}], "serviceConfigId": "UnrtfhnX", "titleId": "Y4p7r3of", "xboxUserId": "3Hu2CaPG"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'TSWk69Ut' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'etLSULLq' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'VKzpFfOn' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'sBiqzWhu' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'NLn8Praw' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'r3ZcJTuJ' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '4VXnCuHz' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PV5W2dNS' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'NYgn83Qy' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'OH3DSMSa' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'yW29PKSK' \
    --includeAllNamespaces 'true' \
    --status 'REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SbNbNB8Q' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId 'lAIhueIk' \
    --entitlementClazz 'APP' \
    --entitlementName 'ewiqU3LL' \
    --features '["as9Y9llw", "GHLz72bE", "WNSslhlu"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["aiDlY5yn", "eSfKtCUJ", "wjETzRfj"]' \
    --limit '95' \
    --offset '79' \
    --origin 'IOS' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4oolFec6' \
    --body '[{"collectionId": "I4PAE8W3", "endDate": "1983-06-09T00:00:00Z", "grantedCode": "6ZbK1LX9", "itemId": "7qBOsb8g", "itemNamespace": "8o30F3ij", "language": "Ar_lv", "metadata": {"KLoqV08S": {}, "F29nfoHA": {}, "YQVDb18S": {}}, "origin": "IOS", "quantity": 99, "region": "fgrGF7S8", "source": "REDEEM_CODE", "startDate": "1974-12-02T00:00:00Z", "storeId": "smmc3RGB"}, {"collectionId": "dEt26Im1", "endDate": "1982-01-27T00:00:00Z", "grantedCode": "3Pn7hMBl", "itemId": "BKj9krdW", "itemNamespace": "xH9uZvDB", "language": "jTP_xgar", "metadata": {"wuAm8dod": {}, "0PBbLH9y": {}, "9VF2cEAz": {}}, "origin": "System", "quantity": 31, "region": "EWqw2nty", "source": "OTHER", "startDate": "1978-11-24T00:00:00Z", "storeId": "jYP1eL6A"}, {"collectionId": "wMfKrMXo", "endDate": "1997-05-05T00:00:00Z", "grantedCode": "E8NqJI7s", "itemId": "0ENyGlhl", "itemNamespace": "U9lrFTwl", "language": "rzwr-iq", "metadata": {"xP7UiasR": {}, "0zXUIjy6": {}, "YJ5LAkNX": {}}, "origin": "IOS", "quantity": 100, "region": "RqJR3DjZ", "source": "GIFT", "startDate": "1982-04-11T00:00:00Z", "storeId": "pJm4CA2C"}]' \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TREC8pHn' \
    --activeOnly 'false' \
    --appId 'O8mat048' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SV4431x7' \
    --activeOnly 'false' \
    --limit '6' \
    --offset '19' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '4aVsiSbA' \
    --ids '["ra7UyumA", "GPQvWYf7", "d0xuvwv8"]' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tgNVXb0A' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'eKfw6cMX' \
    --itemId 'NO1MmDBk' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tah2JEqp' \
    --ids '["XqwWLR89", "agsPU15S", "JBTivfYO"]' \
    --platform '2wGphldZ' \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'RNoWHDq0' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'uHPY4doc' \
    --sku '2Q2AdABV' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'B8uHidON' \
    --appIds '["3lcRxUCQ", "sKGEvBCQ", "u1dMd07L"]' \
    --itemIds '["PbJL08wn", "oN1OBrin", "Xa3h5gbZ"]' \
    --platform 'MkoZVhDp' \
    --skus '["w9bIifmB", "dwuLkvoT", "2EymcOPJ"]' \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SxPr9nl6' \
    --platform '61Q71Wl0' \
    --itemIds '["DaVzjLeA", "Dzpvo66m", "tOwDKMq9"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YCYIiU6j' \
    --appId '1rYDbPvu' \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dhWblLDS' \
    --entitlementClazz 'CODE' \
    --platform 'v7a7PaX6' \
    --itemId 'ifsGJSEG' \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hypm3pfS' \
    --ids '["ReZbl1JL", "WXjBGvlD", "DTEOtXVq"]' \
    --platform 'CdVuWWch' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'EjUQslbj' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'RBSzc18n' \
    --sku 'lJrQRYF5' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FQko6tk6' \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '4Ike5PiU' \
    --entitlementIds 'NbQSotlu' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'brrqvv48' \
    --namespace $AB_NAMESPACE \
    --userId 'LGTPaTrI' \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'QhbkKcm7' \
    --namespace $AB_NAMESPACE \
    --userId 'iEHDu3NJ' \
    --body '{"collectionId": "X5UYntnu", "endDate": "1979-03-01T00:00:00Z", "nullFieldList": ["0yFJIwxR", "dRZbFgym", "qFgAgadJ"], "origin": "Nintendo", "reason": "MKCFdCSh", "startDate": "1991-01-08T00:00:00Z", "status": "CONSUMED", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'F2mQZwED' \
    --namespace $AB_NAMESPACE \
    --userId 'NnGEhYsG' \
    --body '{"metadata": {"s3jF2vfK": {}, "LY2PHAmj": {}, "rpB6RjkH": {}}, "options": ["GPcapWmj", "KaiC6Y8v", "AMmV0wH7"], "platform": "zMJXbFS0", "requestId": "Z4Peh5zc", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'xY0CbdkX' \
    --namespace $AB_NAMESPACE \
    --userId 'VIub9YUW' \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ciKAcjhw' \
    --namespace $AB_NAMESPACE \
    --userId 'wqOs32LS' \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'ST2xGX0w' \
    --namespace $AB_NAMESPACE \
    --userId 'ZfL5yYuT' \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'MIB2yG9O' \
    --namespace $AB_NAMESPACE \
    --userId 'Ydx9Zfp3' \
    --body '{"metadata": {"tpHr7R5z": {}, "VBNT6cMq": {}, "RJaGwzIF": {}}}' \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'GLPqPtrW' \
    --namespace $AB_NAMESPACE \
    --userId 'e0U7pEt7' \
    --body '{"reason": "q3YZI5g0", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'qNbITcxg' \
    --namespace $AB_NAMESPACE \
    --userId 'fxugNho5' \
    --quantity '23' \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '1S5Bu1rx' \
    --namespace $AB_NAMESPACE \
    --userId 'bJmP9gRd' \
    --body '{"platform": "mbMB0eEC", "requestId": "JOIJN6vZ", "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'wbooU0mE' \
    --body '{"duration": 10, "endDate": "1980-05-03T00:00:00Z", "entitlementCollectionId": "LOkD7zg3", "entitlementOrigin": "IOS", "itemId": "kf78NIVH", "itemSku": "yBNMIzyr", "language": "Gn5l8S2A", "metadata": {"6b17a1EC": {}, "HJYzoN9G": {}, "N8S9FPou": {}}, "order": {"currency": {"currencyCode": "H0H3iUl4", "currencySymbol": "jGCv3Ruq", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "eCbPOHX6"}, "ext": {"WBeEy6kq": {}, "Vvq3Arj9": {}, "JeSSvBMJ": {}}, "free": true}, "orderNo": "aDq20USO", "origin": "GooglePlay", "overrideBundleItemQty": {"7HFda5Wt": 43, "zubl22ct": 27, "AT2LAAec": 69}, "quantity": 21, "region": "g7Km1SKP", "source": "PURCHASE", "startDate": "1989-04-24T00:00:00Z", "storeId": "XInNWX0g"}' \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Sd7V40QR' \
    --body '{"code": "TBNzA9u0", "language": "RD-ujGt-874", "region": "3FBYEAJc"}' \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'XEUOfDTW' \
    --body '{"itemId": "PkmkHmZn", "itemSku": "IQ2v2UJV", "quantity": 0}' \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'QvfzZ6kF' \
    --body '{"entitlementCollectionId": "8bjKCXMr", "entitlementOrigin": "IOS", "metadata": {"tR9OnZGM": {}, "duOFpbMY": {}, "r7qZQYAd": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "NuQxXmdr", "namespace": "NhzPQYrL"}, "item": {"itemId": "HikPa2TH", "itemName": "b5TQB30j", "itemSku": "gz528uzI", "itemType": "3h5dlfBm"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "JwTfFfUN", "namespace": "7DF3Ua6H"}, "item": {"itemId": "oIymZNF2", "itemName": "XnAxH1vn", "itemSku": "EXwshOgP", "itemType": "Udlrhoot"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "3zH1rJNL", "namespace": "Q7XVRpOg"}, "item": {"itemId": "7k0QWXLG", "itemName": "lztcoShs", "itemSku": "8z60EgPC", "itemType": "JE0W97mL"}, "quantity": 23, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "ripuwuGp"}' \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'YcH9GsH9' \
    --endTime 'WmMuDa8p' \
    --limit '93' \
    --offset '71' \
    --productId '7W3MqyDs' \
    --startTime '0HavF1KK' \
    --status 'FAILED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'utjk6Q7V' \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'jhSbP3fr' \
    --endTime 'o0n8Z32G' \
    --limit '93' \
    --offset '91' \
    --startTime 'UGENu5Nj' \
    --status 'FAIL' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'tWYqUirE' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "xi-HN", "productId": "3C3L40Lc", "region": "EvYz1BBX", "transactionId": "cXWgSmLL", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '2B0J2JMb' \
    --body '{"skus": ["XwmZ82uN", "z3walnRw", "u613xfIz"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'PiL5kS0u' \
    --namespace $AB_NAMESPACE \
    --userId 'PVctLkw7' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'corizGvs' \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ucYAQy5E' \
    --body '{"orderId": "UsEHHI2A"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId '4VEht6ax' \
    --activeOnly 'true' \
    --groupId 'OGOVmHoU' \
    --limit '22' \
    --offset '16' \
    --platform 'STADIA' \
    --productId 'TheZSqYb' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId 'NJPrVU2K' \
    --groupId 'DBaHe8iv' \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'iSm5Q10w' \
    --productId 'BDYFEzlF' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'ml4U0CLX' \
    --activeOnly 'true' \
    --groupId 'xvK9l3Sl' \
    --limit '1' \
    --offset '0' \
    --platform 'TWITCH' \
    --productId 'M7A0cgAE' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'gDLmO3E0' \
    --namespace $AB_NAMESPACE \
    --userId '2iqtajYG' \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'X3BVkyKe' \
    --namespace $AB_NAMESPACE \
    --userId 'hSSJ7zP4' \
    --limit '98' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'leZyT0tj' \
    --namespace $AB_NAMESPACE \
    --userId '98iS0uE2' \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'rD5LNPpk' \
    --namespace $AB_NAMESPACE \
    --userId 'H8PvtCBp' \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'JSJDgY3f' \
    --namespace $AB_NAMESPACE \
    --userId 'aIWxXU3e' \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'M7LslWsq' \
    --discounted 'false' \
    --itemId 'FABvPeqm' \
    --limit '86' \
    --offset '59' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'phX4ROKB' \
    --body '{"currencyCode": "i6NN0V20", "currencyNamespace": "xBxurJZS", "discountCodes": ["kToINaOE", "kr0gh0bp", "EoCmJVsX"], "discountedPrice": 74, "entitlementPlatform": "Epic", "ext": {"MoK33Ui0": {}, "i9NIvYJL": {}, "RyUrL0ml": {}}, "itemId": "AYtElMSE", "language": "3pWy3u0P", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 30, "quantity": 42, "region": "dSAxlgY9", "returnUrl": "Wer1SoV8", "sandbox": true, "sectionId": "Ufglst1Y"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'ioIQzcOg' \
    --itemId 'ZkN7Lw3o' \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OMDGoG98' \
    --userId 'PrlEMCtW' \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'SrAJyUD1' \
    --userId '0RqmuzpU' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "hMoq6dtY"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'JPv6v4kX' \
    --userId 'b4IHo4bd' \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'i7CR6PMb' \
    --userId 'BdAGjSKE' \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'nh5abRAv' \
    --userId 'h81gDW38' \
    --body '{"additionalData": {"cardSummary": "JY2KJFjt"}, "authorisedTime": "1983-06-03T00:00:00Z", "chargebackReversedTime": "1982-05-21T00:00:00Z", "chargebackTime": "1993-09-15T00:00:00Z", "chargedTime": "1979-08-06T00:00:00Z", "createdTime": "1979-04-21T00:00:00Z", "currency": {"currencyCode": "Z1FkgDm9", "currencySymbol": "yUKvBbMW", "currencyType": "VIRTUAL", "decimals": 32, "namespace": "KFOsRrrh"}, "customParameters": {"6AZ7x00E": {}, "9J7i8agn": {}, "arK1L7G2": {}}, "extOrderNo": "8XdPxTa3", "extTxId": "8G7nPFE1", "extUserId": "81DIQiUD", "issuedAt": "1995-07-28T00:00:00Z", "metadata": {"LF4M8t4c": "mGH5glSS", "Sm2dQO59": "hQQJd2Ez", "ZWMUpDHp": "eoEr35u3"}, "namespace": "rH1p9UQB", "nonceStr": "IK5eqxXL", "paymentData": {"discountAmount": 20, "discountCode": "i2TFJt6G", "subtotalPrice": 85, "tax": 71, "totalPrice": 0}, "paymentMethod": "sVTBeKMf", "paymentMethodFee": 9, "paymentOrderNo": "W5Gj9muE", "paymentProvider": "WALLET", "paymentProviderFee": 4, "paymentStationUrl": "kFUiZ0M1", "price": 66, "refundedTime": "1983-10-13T00:00:00Z", "salesTax": 16, "sandbox": true, "sku": "NywVx0Eg", "status": "CHARGE_FAILED", "statusReason": "Xl7YDFab", "subscriptionId": "5Gr85UDA", "subtotalPrice": 63, "targetNamespace": "LtNFqfgt", "targetUserId": "BCo8WIjH", "tax": 53, "totalPrice": 2, "totalTax": 52, "txEndTime": "1995-03-15T00:00:00Z", "type": "BUF1glj2", "userId": "MH1wZeFr", "vat": 80}' \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'WA8RPCZd' \
    --userId 'xpUlPUtS' \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '7jqzByKq' \
    --body '{"currencyCode": "q9eOIUpj", "currencyNamespace": "Gfp1HATi", "customParameters": {"Zkm099gq": {}, "GjTOsHy4": {}, "CxPMhzmN": {}}, "description": "n0t9VzP1", "extOrderNo": "5ofC8yzl", "extUserId": "uhQ0REBG", "itemType": "APP", "language": "Sih_HJbR_278", "metadata": {"KnrwTVnh": "IzFhCeFM", "3vqZDzQM": "aqYTwBAx", "IjI3Y7w2": "7lJejQv9"}, "notifyUrl": "93BFKO5T", "omitNotification": false, "platform": "xkpPtXjr", "price": 22, "recurringPaymentOrderNo": "3X2DuGSk", "region": "PbN7vf8M", "returnUrl": "lqJOPsRu", "sandbox": false, "sku": "jYzrO8al", "subscriptionId": "gU8yzShU", "title": "zLV60uPp"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uSiH2zpU' \
    --userId 'oI48A973' \
    --body '{"description": "kzNwLq5O"}' \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'Z1R2bg1X' \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'fqiuBzCx' \
    --body '{"code": "vAfRUo11", "orderNo": "7WkOpYcR"}' \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'eko1c6nY' \
    --body '{"meta": {"d2c0II69": {}, "oUGEJNMj": {}, "ste5exZ1": {}}, "reason": "tdKRXu7H", "requestId": "RjKkCITz", "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "YwPpYROE", "namespace": "gUXZ5Q1m"}, "entitlement": {"entitlementId": "xuyEA8iv"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "nXwpVwpX", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 74, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "xGWfmfFq", "namespace": "uozyuGEF"}, "entitlement": {"entitlementId": "dRWFuhgl"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "apvsJfic", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 63, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "Ap6mcPAM", "namespace": "yPpa3k0G"}, "entitlement": {"entitlementId": "zo07EwG9"}, "item": {"entitlementOrigin": "System", "itemIdentity": "0ytXvn9O", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 8, "type": "ITEM"}], "source": "IAP", "transactionId": "rAbIYAw8"}' \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'ZHbcGxM0' \
    --body '{"gameSessionId": "n7amthWk", "payload": {"DQiVjn1A": {}, "ZTA2Zayk": {}, "bdDgNNSW": {}}, "scid": "BtLCjUXB", "sessionTemplateName": "M7Abxo3E"}' \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'VbNOUi12' \
    --chargeStatus 'NEVER' \
    --itemId '49pSOdoH' \
    --limit '5' \
    --offset '40' \
    --sku 'KXh0DhNu' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '6MePH8DT' \
    --excludeSystem 'false' \
    --limit '28' \
    --offset '16' \
    --subscriptionId 'i5RTz3xa' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jnhnwVWq' \
    --body '{"grantDays": 50, "itemId": "8ztevXEW", "language": "OYeRIu8H", "reason": "8fLzKxPm", "region": "kIazOkS9", "source": "RTjEo6Bw"}' \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wOT5Leao' \
    --itemId 'ULtTRO5X' \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'giAI7FYc' \
    --userId 'EijZ4bfh' \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '71Ji7BwP' \
    --userId 'DHycNYqv' \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b9VnYLhz' \
    --userId 'DjkC75vU' \
    --force 'false' \
    --body '{"immediate": true, "reason": "MbLsuv0n"}' \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KkeDT9EF' \
    --userId '2W7VFBsb' \
    --body '{"grantDays": 95, "reason": "zx9FYyTo"}' \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cwrgiJgD' \
    --userId 'nKLfkcI6' \
    --excludeFree 'true' \
    --limit '21' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cQN9THVZ' \
    --userId 'Q2avP2JJ' \
    --body '{"additionalData": {"cardSummary": "Sc6boY9g"}, "authorisedTime": "1985-04-26T00:00:00Z", "chargebackReversedTime": "1975-12-09T00:00:00Z", "chargebackTime": "1995-12-08T00:00:00Z", "chargedTime": "1994-03-31T00:00:00Z", "createdTime": "1983-02-26T00:00:00Z", "currency": {"currencyCode": "jBGovuTu", "currencySymbol": "xcgrawE9", "currencyType": "VIRTUAL", "decimals": 49, "namespace": "7Ggmz8Pn"}, "customParameters": {"4BS3Dstv": {}, "1jhLMlel": {}, "jJn1mHzw": {}}, "extOrderNo": "UJCoA9zM", "extTxId": "2IHKg8MH", "extUserId": "079vKapA", "issuedAt": "1979-12-22T00:00:00Z", "metadata": {"69hnGXlj": "2DfVe553", "HXd3EjPg": "eMDsmqIO", "K1E6u7eh": "4Ck2ZztT"}, "namespace": "ubsCvXcZ", "nonceStr": "1PeL0F7h", "paymentData": {"discountAmount": 9, "discountCode": "crpn42zb", "subtotalPrice": 53, "tax": 55, "totalPrice": 42}, "paymentMethod": "zR7nICB8", "paymentMethodFee": 53, "paymentOrderNo": "8hhCn6bi", "paymentProvider": "WALLET", "paymentProviderFee": 38, "paymentStationUrl": "pIjdyuW9", "price": 74, "refundedTime": "1996-01-15T00:00:00Z", "salesTax": 27, "sandbox": true, "sku": "7JhBrigx", "status": "REFUNDED", "statusReason": "WoR0ByDw", "subscriptionId": "QMHwkejM", "subtotalPrice": 41, "targetNamespace": "rb8TP9N1", "targetUserId": "4DdBW9iI", "tax": 34, "totalPrice": 97, "totalTax": 17, "txEndTime": "1985-03-27T00:00:00Z", "type": "VaKcNp78", "userId": "qLZHfyIK", "vat": 15}' \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Na53JwV1' \
    --namespace $AB_NAMESPACE \
    --userId '9ry1I3aC' \
    --body '{"count": 35, "orderNo": "YFD83UA1"}' \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'kiXwEmkS' \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '6PLbUpx8' \
    --namespace $AB_NAMESPACE \
    --userId 'N7vPJjfZ' \
    --body '{"allowOverdraft": true, "amount": 17, "balanceOrigin": "GooglePlay", "balanceSource": "IAP_REVOCATION", "metadata": {"tggYGxuq": {}, "l58oePUf": {}, "6fC5qp7d": {}}, "reason": "mh5coJeW"}' \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'J8D7jNDq' \
    --namespace $AB_NAMESPACE \
    --userId 'LU07srwT' \
    --limit '45' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'xWvxD7Ea' \
    --namespace $AB_NAMESPACE \
    --userId 'xEMlc7nX' \
    --request '{"amount": 59, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"RDr3RNYj": {}, "fD5FK0Jd": {}, "4Qiay6PU": {}}, "reason": "isGS7Lr4", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'R7fvkk6A' \
    --namespace $AB_NAMESPACE \
    --userId 'HB5yNxse' \
    --body '{"amount": 17, "expireAt": "1983-11-26T00:00:00Z", "metadata": {"1Qm4yyvh": {}, "xMUhGKCZ": {}, "XwPnPp8u": {}}, "origin": "System", "reason": "6kIfFhBo", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'dxOLKnJJ' \
    --namespace $AB_NAMESPACE \
    --userId 'NogyIJoc' \
    --request '{"amount": 84, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"uXPCDBPE": {}, "2iB6tcym": {}, "EQTOdu50": {}}, "reason": "OAtYcJ10", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'wh7w2IPt' \
    --namespace $AB_NAMESPACE \
    --userId 'uYBFYSiP' \
    --body '{"amount": 85, "metadata": {"y3PK06cd": {}, "XDV2ax4U": {}, "0Om0zp7Y": {}}, "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 342 'PayWithUserWallet' test.out

#- 343 GetUserWallet
eval_tap 0 343 'GetUserWallet # SKIP deprecated' test.out

#- 344 DebitUserWallet
eval_tap 0 344 'DebitUserWallet # SKIP deprecated' test.out

#- 345 DisableUserWallet
eval_tap 0 345 'DisableUserWallet # SKIP deprecated' test.out

#- 346 EnableUserWallet
eval_tap 0 346 'EnableUserWallet # SKIP deprecated' test.out

#- 347 ListUserWalletTransactions
eval_tap 0 347 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 348 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'gh8bTLxl' \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'JpKn3JCS' \
    --body '{"displayOrder": 49, "localizations": {"9cKynV9T": {"description": "BxgU5UeK", "localExt": {"dVs482ZL": {}, "Sley0aYl": {}, "c8FT6NF2": {}}, "longDescription": "t6xmkibk", "title": "h2cuHfYy"}, "0s4Pew2L": {"description": "gafTP2Av", "localExt": {"qlVMDMSf": {}, "YYp4XOzX": {}, "8g5l3BmY": {}}, "longDescription": "3uVa8kpj", "title": "JtfE9vDZ"}, "JqFaZH9i": {"description": "45ujdhIw", "localExt": {"QPzEHP6s": {}, "Fi9uSmbP": {}, "upruFXq3": {}}, "longDescription": "CGG79dI2", "title": "ExiCvEdK"}}, "name": "2lcqfy3X"}' \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'QcvKGxHn' \
    --storeId 'Fqto3srV' \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'qPNC2x4h' \
    --storeId 'hMsccWqw' \
    --body '{"displayOrder": 41, "localizations": {"kKZmaCP7": {"description": "evjxTLzR", "localExt": {"Zs8iDRiQ": {}, "1sJ9w0KU": {}, "lOXszyla": {}}, "longDescription": "i51iEsBf", "title": "JsUJLLiY"}, "afw5mBZg": {"description": "AQkuRiFE", "localExt": {"lvCE8kE5": {}, "nMI5iY2m": {}, "HiV8FBCa": {}}, "longDescription": "nEs0mSz8", "title": "7B0nzKXl"}, "hXjqLwxB": {"description": "lBQ6xzlw", "localExt": {"kE7YZ9gE": {}, "Xq54IL8l": {}, "2LhLtaaM": {}}, "longDescription": "2mzorOPt", "title": "OWKTYsjy"}}, "name": "vR9V8JqM"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'mIsKMCQI' \
    --storeId 'nGbT58Jq' \
    > test.out 2>&1
eval_tap $? 352 'DeleteView' test.out

#- 353 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'GetWalletConfig' test.out

#- 354 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateWalletConfig' test.out

#- 355 QueryWallets
eval_tap 0 355 'QueryWallets # SKIP deprecated' test.out

#- 356 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 42, "expireAt": "1994-12-16T00:00:00Z", "metadata": {"sIjMASKA": {}, "xNSFdHUL": {}, "6d4Lqhsg": {}}, "origin": "Playstation", "reason": "RGvvVsS8", "source": "TRADE"}, "currencyCode": "wRBWXJgm", "userIds": ["4QLultsZ", "igwC0iGc", "ZVOHQf32"]}, {"creditRequest": {"amount": 30, "expireAt": "1976-07-07T00:00:00Z", "metadata": {"OYQe5ZeS": {}, "Sa6cFUzT": {}, "34kSILbF": {}}, "origin": "Steam", "reason": "C42dJDKG", "source": "PROMOTION"}, "currencyCode": "9fUFqDt5", "userIds": ["rm83etRx", "t4fyBR65", "dY65Rto2"]}, {"creditRequest": {"amount": 86, "expireAt": "1981-08-28T00:00:00Z", "metadata": {"jxvD6Dis": {}, "QFMMkWjY": {}, "CX4hv3tR": {}}, "origin": "Playstation", "reason": "T6pBHwqi", "source": "ACHIEVEMENT"}, "currencyCode": "UH8hcxV7", "userIds": ["mkvIpSTs", "uz1qCzWj", "ntM1Ca8T"]}]' \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "1Spg9rGk", "request": {"allowOverdraft": false, "amount": 66, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"9jCZftYb": {}, "Nox0LEhk": {}, "mLlNpOgm": {}}, "reason": "w3DnE6P0"}, "userIds": ["dOasqy1l", "KyC0ds3U", "NwW4WcPD"]}, {"currencyCode": "qlIWwB3X", "request": {"allowOverdraft": false, "amount": 90, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"WO7SlLsS": {}, "wf7XgTMZ": {}, "vUO0XIhF": {}}, "reason": "TWtGNu81"}, "userIds": ["EIi85PfR", "O6T1mwGY", "mpene5bU"]}, {"currencyCode": "b3G5Gru0", "request": {"allowOverdraft": true, "amount": 72, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"i7yp5FvU": {}, "1WdegM9s": {}, "Bgiiu3KZ": {}}, "reason": "sZgPnUIy"}, "userIds": ["MHK24bMT", "GD6IzyT0", "RcFuNoqS"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'rbqPxFSU' \
    --end '7aP2cBsM' \
    --start '5FtrBDqA' \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["OeyT1WYm", "fIXs2axf", "lhsQb09q"], "apiKey": "qxRIgAf1", "authoriseAsCapture": true, "blockedPaymentMethods": ["18Hg65rU", "UZd3zpUp", "0j7cyiP1"], "clientKey": "HDn76Xs7", "dropInSettings": "CruAfXUS", "liveEndpointUrlPrefix": "b1eSkPvE", "merchantAccount": "TYd7r9hy", "notificationHmacKey": "Q3F6BCky", "notificationPassword": "nBkhFLff", "notificationUsername": "zAARAkfy", "returnUrl": "I8ovpsrA", "settings": "Qq0OSGwy"}' \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "EjP57yGK", "privateKey": "oUUPXc1d", "publicKey": "63RiTVcq", "returnUrl": "UW6x00Gh"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "KhntdBHj", "secretKey": "NDsp6CFT"}' \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'KND9CjWx' \
    --region '2jNgXW2R' \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "GE4fIDmI", "webhookSecretKey": "kHrer5js"}' \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "d5pYdm4c", "clientSecret": "6y7yzHqK", "returnUrl": "8xZw03oj", "webHookId": "N4BJCH90"}' \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["GU95E9xe", "0v2a43Mv", "RrGtxsSw"], "publishableKey": "2fx6YAZ3", "secretKey": "HtmGLFfw", "webhookSecret": "0LfaOW83"}' \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "T3V4qY3V", "key": "wdE5Dnno", "mchid": "4DVIQwTT", "returnUrl": "iSX9emzL"}' \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "dqfNpLCj", "flowCompletionUrl": "ee2Gvg5F", "merchantId": 40, "projectId": 39, "projectSecretKey": "fabDBqmG"}' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'ROeKScXY' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'jITojV6K' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["h017wPcU", "lDd3WWIk", "HMklIxT1"], "apiKey": "NXTg3zPE", "authoriseAsCapture": true, "blockedPaymentMethods": ["PL2dGGrZ", "MiB6Endp", "dgOEz9qp"], "clientKey": "189t2UCt", "dropInSettings": "56QOhipv", "liveEndpointUrlPrefix": "wv649f7H", "merchantAccount": "h3AnZGf9", "notificationHmacKey": "NyoEYldz", "notificationPassword": "GjKlHY7t", "notificationUsername": "jJv9SOKq", "returnUrl": "r6fTzm1S", "settings": "OLjOwyDR"}' \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'BXeV34MA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'NYXFeDxb' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "g0F6UmFg", "privateKey": "kYL1do9N", "publicKey": "vkFBxFKy", "returnUrl": "LAO3qbgB"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'B0rGyhbd' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'RBbp1Kwq' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "NeYEcJvp", "secretKey": "ISFjq8Nt"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'qLgVwtlf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'MutMwh5L' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "p46BqqTU", "webhookSecretKey": "YjvNmSgD"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'QqSARfvM' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'rTcNKCGh' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "pQIRgeXI", "clientSecret": "LhLQrqxZ", "returnUrl": "5zVoFy6q", "webHookId": "LqzQbXP9"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'AUDrSscf' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'EkeL5Mla' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["wrZD4PWx", "z5R3oOAd", "E3NJlIyT"], "publishableKey": "j5190tje", "secretKey": "Pagxie98", "webhookSecret": "HiDdyokS"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'd1i59CUu' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ydv1oK8K' \
    --validate 'false' \
    --body '{"appId": "ETNvkrnH", "key": "2La9mQgY", "mchid": "wpG0HxCk", "returnUrl": "TAa89D6z"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'uN0pYzRd' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '1OchMKmd' \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'pJVwHY8r' \
    --validate 'false' \
    --body '{"apiKey": "6RXSPxR7", "flowCompletionUrl": "AiSRCmJM", "merchantId": 85, "projectId": 89, "projectSecretKey": "Hm2JGoZc"}' \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'u4vey078' \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'rt2jzmai' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '6' \
    --namespace 'oNAmJN6i' \
    --offset '1' \
    --region 'LQcIG96x' \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "zOzludgC", "region": "7RPJe733", "sandboxTaxJarApiToken": "r3uCONYU", "specials": ["ALIPAY", "WXPAY", "PAYPAL"], "taxJarApiToken": "eoomW51A", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '78khn7Ab' \
    --region '3p9xgmKS' \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'G7gHHd4V' \
    --body '{"aggregate": "ADYEN", "namespace": "zaa31sJQ", "region": "ZGb5VJvi", "sandboxTaxJarApiToken": "z2ILwcGh", "specials": ["STRIPE", "CHECKOUT", "ALIPAY"], "taxJarApiToken": "cxXNmnfa", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ZWe0fWEK' \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "nHQI7xEX", "taxJarApiToken": "TLKE3jAY", "taxJarEnabled": true, "taxJarProductCodesMapping": {"MVKf3ulw": "qSZNXniH", "DMK7y1c8": "y3qdmtpO", "qotTDdro": "rl9qYkLf"}}' \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'uYKwVlHu' \
    --end 'DK5O9Sst' \
    --start '99d9Vofs' \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'cgNGBT8o' \
    --storeId 'wjHCuJOz' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'u6ZczMhT' \
    --storeId 'xL4gTWFa' \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'pgUOyCuf' \
    --namespace $AB_NAMESPACE \
    --language '4HXn1CM5' \
    --storeId '4uFapVyE' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'ZM57GLHT' \
    --namespace $AB_NAMESPACE \
    --language 'waG1G9dj' \
    --storeId 'D6ct9qAq' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'WIEeWPk8' \
    --namespace $AB_NAMESPACE \
    --language 'cvyerRlF' \
    --storeId 'qReT1Ij7' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetDescendantCategories' test.out

#- 403 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 403 'PublicListCurrencies' test.out

#- 404 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 404 'GeDLCDurableRewardShortMap' test.out

#- 405 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 405 'GetAppleConfigVersion' test.out

#- 406 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 406 'GetIAPItemMapping' test.out

#- 407 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'q1uFAXte' \
    --region 'Y92vsCgC' \
    --storeId 'DfwAcTmS' \
    --appId 'CQnwGmpc' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'jn9hUx2Y' \
    --categoryPath 'QF39Frvn' \
    --features 'N7ZSMz6Y' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --language 'vvhbhrff' \
    --limit '64' \
    --offset '12' \
    --region 'D0jJhEKQ' \
    --sortBy '["name:desc", "name", "updatedAt:desc"]' \
    --storeId 'KYqHAlhe' \
    --tags 'WLDXLiRt' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'S1NYtVg0' \
    --region 'gZWnBBtS' \
    --storeId 'nMqF0bjr' \
    --sku 'DQNv74V1' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'aXbBQhij' \
    --storeId 'mjOX4Ot3' \
    --itemIds 'r8IMZH0p' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'lSDGwv6M' \
    --region 'KanwG3O9' \
    --storeId 'jk23SRS2' \
    --itemIds 'PBM4XX2a' \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["CY5q2TYd", "28YVTIRn", "l6Zwrt8C"]}' \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'BUNDLE' \
    --limit '9' \
    --offset '100' \
    --region 'noMtQZSq' \
    --storeId '1z9nantM' \
    --keyword 'VMDm7oeo' \
    --language 'ljgeTC4H' \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'MwEL0RRA' \
    --namespace $AB_NAMESPACE \
    --language 'aGXWTUMy' \
    --region '79BggJUe' \
    --storeId 'VDBSOybk' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '3ToVSYCe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'eGyAIxRG' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'CcTrZWBX' \
    --populateBundle 'true' \
    --region 'teOI7g3Q' \
    --storeId 'yEKLW0dG' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "1apaJxmU", "successUrl": "w22XBIEB"}, "paymentOrderNo": "iiKF9I6N", "paymentProvider": "XSOLLA", "returnUrl": "cUgx42KE", "ui": "lmnHWp1x", "zipCode": "odZxENEy"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OyQselZm' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0Xz7Kf5c' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VQUyCuuL' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'spTYjrVQ' \
    --body '{"token": "9eMOGpGB"}' \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WMCxjbfg' \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'iqCm4Wum' \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'zEj7fstE' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'cHBHegaM' \
    --foreinginvoice 'dnY5qoQd' \
    --invoiceId 'PrtE9XaW' \
    --payload 'Z5M57g3W' \
    --redirectResult 'L4YKIzxE' \
    --resultCode 'qJ6ArMmE' \
    --sessionId 'bmSer7g9' \
    --status 'CbOWwVXF' \
    --token 'S6Pgw9NR' \
    --type 'P9slP7Ql' \
    --userId '3yfEUYJ2' \
    --orderNo '6ooKiFUR' \
    --paymentOrderNo 'm2XfGWja' \
    --paymentProvider 'NEONPAY' \
    --returnUrl 'hC8YekGN' \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'ArhXpdBu' \
    --paymentOrderNo 'FqIA2Mmo' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'OMf7KpFV' \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'L20gOM8p' \
    --limit '6' \
    --offset '41' \
    --sortBy '["namespace:desc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'q2wT4KSm' \
    > test.out 2>&1
eval_tap $? 429 'GetReward1' test.out

#- 430 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicListStores' test.out

#- 431 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["EcvjOdUI", "lRnfmsaZ", "c31Iiumn"]' \
    --itemIds '["CHKHT6TZ", "iY267svN", "QKzDyhhy"]' \
    --skus '["Y9L4kakm", "2WEa6Kz7", "dJCTLecb"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'OxgUle7H' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'VhPUbROx' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '1Bzqbo8Q' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["ka5lrLC0", "uzNIXZHM", "Llw1gV1E"]' \
    --itemIds '["PXas1KwH", "3NHfjiip", "7ZTlfaf4"]' \
    --skus '["NYhLyuur", "Z6bbc1xt", "KpWHTCD6"]' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "ZYGWnjEg", "language": "teL-ssac_JA", "region": "qBhUGzzj"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'So6SXqPd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'n40PgjFu' \
    --body '{"epicGamesJwtToken": "wEPT5AsR"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'n5en80mi' \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'vjKSmdL7' \
    --body '{"serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'aNx3upQt' \
    --body '{"serviceLabels": [12, 13, 87]}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'DQ7SU3JY' \
    --body '{"appId": "roU3pLcN", "steamId": "xUluLNXk"}' \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'jChYUVRt' \
    --body '{"xstsToken": "u2se5eSr"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SX2ThoIm' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'JSSuZIoo' \
    --features '["PZ8mGuOb", "mLmVpnOV", "VLsuRz6p"]' \
    --itemId '["eTHg0UXF", "9WgvNkUV", "3CNFWoAN"]' \
    --limit '34' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MrGK3tEg' \
    --appId 'Amoa0hqz' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'FwIEVVsU' \
    --limit '46' \
    --offset '70' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'ji3VSCYm' \
    --availablePlatformOnly 'true' \
    --ids '["CF1Z5eOR", "DGhGj1pF", "78cXqFOx"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId '7Yie5EA7' \
    --endDate 'mc8CVzM0' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '52' \
    --offset '60' \
    --startDate 'ZxJZmWG0' \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dzyYe1yE' \
    --appIds '["WvOe2taP", "M82ycQij", "Co5TEYAj"]' \
    --itemIds '["ZRzoEnit", "obmLHx0H", "DtW5V7KZ"]' \
    --skus '["W687lcRM", "RGl9odow", "psrhzBSM"]' \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'aQRr18pE' \
    --appId 'rKq37cCh' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5p4Pjo8p' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '4bR7sdup' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yQujbhrZ' \
    --ids '["9wiCqn0A", "bUO6EHkq", "jjTzE17V"]' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'mxmmG6cD' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'ccEcrBJk' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'rbj1OICT' \
    --namespace $AB_NAMESPACE \
    --userId 'IQqRyvZb' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'DpOEjoDw' \
    --namespace $AB_NAMESPACE \
    --userId '69CYXIgt' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["HElLs6sI", "3jBtX2mv", "g3tQytMM"], "requestId": "OrhhkEGk", "useCount": 10}' \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'wvWyk5c1' \
    --namespace $AB_NAMESPACE \
    --userId 'c1zdPXdL' \
    --body '{"requestId": "1mHGa6Hy", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'VqdWfWK8' \
    --namespace $AB_NAMESPACE \
    --userId 'birXdK7r' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'a3rHZwM8' \
    --namespace $AB_NAMESPACE \
    --userId '88syrwBm' \
    --body '{"entitlementId": "sgiXMEtH", "metadata": {"operationSource": "INVENTORY"}, "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'IN6hzTcM' \
    --body '{"code": "3sGG1wBa", "language": "uJV-Qz", "region": "nBQDy9Lj"}' \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'v1oDZZN9' \
    --body '{"excludeOldTransactions": false, "language": "urmV-OPkG", "productId": "uodDkH8f", "receiptData": "BG4OBIPS", "region": "cSZ4TvtM", "transactionId": "6qFBeO2n"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sowMB3w5' \
    --body '{"epicGamesJwtToken": "ViyDzJij"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '8RE8rhHV' \
    --body '{"autoAck": true, "autoConsume": false, "language": "xR_PNnS", "orderId": "SGJyL6Y3", "packageName": "zAicTkVi", "productId": "7SnB3mFx", "purchaseTime": 36, "purchaseToken": "7ymGAJBR", "region": "oxrAxKR3", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'BvWEjyCL' \
    --body '{"skus": ["NrrRbkEE", "bSj1Wf96", "g2A71qW3"]}' \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NcbD8lbq' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '3mZvJTe2' \
    --body '{"currencyCode": "4WpJZmtL", "price": 0.5927835426654805, "productId": "Ny4aYHvt", "serviceLabel": 56}' \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'zFUiK9sX' \
    --body '{"currencyCode": "uFN5IDKY", "price": 0.6914788054259645, "productId": "TXbSJS7L", "serviceLabels": [8, 42, 82]}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MEiacPEo' \
    --body '{"appId": "Wv2vY5rC", "currencyCode": "XBpfCiRf", "language": "Btl-389", "price": 0.503124324742992, "productId": "shjF59bQ", "region": "x6UQ7zLn", "steamId": "ba0KQ20H"}' \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'lTaZPf3G' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'i8zucQyv' \
    --body '{"orderId": "9LjZCoP0"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId '1blqaWFy' \
    --activeOnly 'false' \
    --groupId 'TNRc2Ov8' \
    --limit '47' \
    --offset '79' \
    --productId 'YISRn4Zh' \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'fIH781m5' \
    --body '{"gameId": "OoVsEGTC", "language": "zRYA-bYJL-Hf", "region": "8Z9YbBWk"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'PGNjeODw' \
    --body '{"currencyCode": "XmIQRcqa", "price": 0.60850996672485, "productId": "7SMvfedT", "xstsToken": "BulyTQvW"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '69v08QBW' \
    --discounted 'true' \
    --itemId 'TRLhzshA' \
    --limit '96' \
    --offset '75' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MfeHLbBt' \
    --body '{"currencyCode": "rABkwb0L", "discountCodes": ["DoMJTzrP", "PVmHv78i", "Cl92mmUm"], "discountedPrice": 91, "ext": {"a9QwtPRm": {}, "JhrJdXh2": {}, "CIwEidi9": {}}, "itemId": "GLCVIhCr", "language": "tJPP-YWrZ_756", "price": 26, "quantity": 29, "region": "vNT9i28O", "returnUrl": "2FqkDkQ6", "sectionId": "k1JlbFE3"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'oBHf3Gcq' \
    --body '{"currencyCode": "ADooo0VI", "discountCodes": ["lxL9k9xf", "lnwy9JdE", "LYCMx6bz"], "discountedPrice": 60, "itemId": "cGYyA5Ly", "price": 72, "quantity": 49}' \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'oG9sw3KE' \
    --userId 'DB60JWI5' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'IKvNRqMX' \
    --userId 'H8idUcZL' \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'BDhAeuto' \
    --userId 'oMZzof4o' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'yy8kdNPB' \
    --userId 'xSRJpslL' \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'VSsjnbSo' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'SsEpCe9D' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '8g1oNDb4' \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'ZJOucKfg' \
    --autoCalcEstimatedPrice 'true' \
    --language 'IkvdmHs9' \
    --region 'I4xBTyyv' \
    --storeId 'k9h6CXBX' \
    --viewId 'cpzCdlCg' \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'r1AnZT0L' \
    --chargeStatus 'CHARGED' \
    --itemId 'Z2PJyioJ' \
    --limit '91' \
    --offset '23' \
    --sku 'xyEAVC08' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'm4J4tVTg' \
    --body '{"currencyCode": "7WYPlcVU", "itemId": "D2SHopK9", "language": "Iw", "region": "LcaMS2Z2", "returnUrl": "ai0Spdwt", "source": "2YffMIUh"}' \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YdyU3h03' \
    --itemId 'F9XKuw7z' \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nqDAynUd' \
    --userId 'vVH1pu6l' \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CCF4AmVe' \
    --userId 'Om9GQetO' \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yqSxPK4f' \
    --userId 'FVAz58A2' \
    --body '{"immediate": true, "reason": "s0jdsd4W"}' \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 've3FXBRm' \
    --userId 'xX9UKxTQ' \
    --excludeFree 'false' \
    --limit '63' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'femcjmRa' \
    --language 'lzMF3clK' \
    --storeId 'pc2s6aQ7' \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '6IVdEP3T' \
    --namespace $AB_NAMESPACE \
    --userId 'XhHhCpcn' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'dfZvzLLy' \
    --namespace $AB_NAMESPACE \
    --userId 'tAycc8rk' \
    --limit '48' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 494 'PublicListUserWalletTransactions' test.out

#- 495 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetMyDLCContent' test.out

#- 496 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'lVrW91wr' \
    --limit '0' \
    --offset '3' \
    --startTime 'fCWZNGl5' \
    --state 'FULFILL_FAILED' \
    --transactionId 'WbLLPNIq' \
    --userId 'j8Ne17Ku' \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'NpoWTM10' \
    --baseAppId 'VS6AwSMq' \
    --categoryPath 'wAdlacaU' \
    --features 'Bno6WWa6' \
    --includeSubCategoryItem 'true' \
    --itemName 'ARUL3csy' \
    --itemStatus 'ACTIVE' \
    --itemType '["COINS", "MEDIA", "MEDIA"]' \
    --limit '80' \
    --offset '83' \
    --region 'p8BLod85' \
    --sectionExclusive 'false' \
    --sortBy '["name:desc", "displayOrder:desc", "displayOrder"]' \
    --storeId 'zETQqJEE' \
    --tags 'NulyGOP2' \
    --targetNamespace 'F4JTiYTU' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'HpKZ6QSw' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'RutSKyJi' \
    --body '{"itemIds": ["hqS6fKU7", "VLzo45sb", "gCP6rUAh"]}' \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'MsVFI0LN' \
    --body '{"entitlementCollectionId": "FJEh4tdw", "entitlementOrigin": "Epic", "metadata": {"VR91ByZA": {}, "GospV1QW": {}, "dLlIAzus": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "ecwdDQlO", "namespace": "Rm9in8Gm"}, "item": {"itemId": "Uq2iGW6L", "itemName": "Qxq7vERJ", "itemSku": "WlXVhgo2", "itemType": "Oqjk9sIy"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "ENd6UJyU", "namespace": "Kfl4rdaM"}, "item": {"itemId": "EaUpi5lf", "itemName": "uyJV73kY", "itemSku": "km7NueGH", "itemType": "zQWaQ8st"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "D8zC6KAT", "namespace": "KL7qvcd7"}, "item": {"itemId": "BmfbFN7V", "itemName": "WFVluIXV", "itemSku": "glISIHAJ", "itemType": "KIf6PP9d"}, "quantity": 56, "type": "ITEM"}], "source": "OTHER", "transactionId": "DxZih4qu"}' \
    > test.out 2>&1
eval_tap $? 500 'FulfillRewardsV2' test.out

#- 501 FulfillItems
eval_tap 0 501 'FulfillItems # SKIP deprecated' test.out

#- 502 RetryFulfillItems
eval_tap 0 502 'RetryFulfillItems # SKIP deprecated' test.out

#- 503 RevokeItems
eval_tap 0 503 'RevokeItems # SKIP deprecated' test.out

#- 504 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'FPM3b4JH' \
    --body '{"transactionId": "htG0BDBL"}' \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'CtAoRePp' \
    --userId '1WoAOSOh' \
    --body '{"items": [{"duration": 99, "endDate": "1996-02-09T00:00:00Z", "entitlementCollectionId": "yNKjEkNN", "entitlementOrigin": "Other", "itemId": "vWQ95SC2", "itemSku": "TScbgGz0", "language": "R1DKkEzA", "metadata": {"g7YxE0Al": {}, "MzazmQeN": {}, "5yXoGw5B": {}}, "orderNo": "1HkHi6Y3", "origin": "Xbox", "quantity": 85, "region": "lpGNE3ps", "source": "REFERRAL_BONUS", "startDate": "1977-07-25T00:00:00Z", "storeId": "TuW0vfRm"}, {"duration": 48, "endDate": "1978-02-17T00:00:00Z", "entitlementCollectionId": "aSlXAgkU", "entitlementOrigin": "GooglePlay", "itemId": "qHNUCHhZ", "itemSku": "Dy6dRCRF", "language": "iSQM7nSx", "metadata": {"DdZ3B1z3": {}, "qCDQ4Zec": {}, "Y9RZ17wE": {}}, "orderNo": "dcCmtSnK", "origin": "Xbox", "quantity": 50, "region": "L8d1zPW3", "source": "REDEEM_CODE", "startDate": "1989-08-01T00:00:00Z", "storeId": "nerpv0eq"}, {"duration": 62, "endDate": "1982-08-31T00:00:00Z", "entitlementCollectionId": "nhs61ekH", "entitlementOrigin": "Epic", "itemId": "gH2etdTm", "itemSku": "490WJAUh", "language": "7ZKKOW8W", "metadata": {"7G6dhF5X": {}, "F3ZKqcyP": {}, "goYUbGNc": {}}, "orderNo": "cEYsot71", "origin": "Steam", "quantity": 47, "region": "lKpq6vh1", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1981-11-17T00:00:00Z", "storeId": "QbvGls2v"}]}' \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'xFbOL9Fk' \
    --userId 'Nb0Lr53j' \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '3xCnFgtt' \
    --userId 'EOhWxClS' \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE