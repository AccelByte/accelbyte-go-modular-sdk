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
    --id '27L232Ne' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'WvR5c20y' \
    --body '{"grantDays": "IVqg7i0U"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'sFbZYj5o' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'UpPDgaTK' \
    --body '{"grantDays": "HILXPsk4"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "yJ1mQ4qU", "dryRun": false, "fulfillmentUrl": "qFnjS5WQ", "itemType": "INGAMEITEM", "purchaseConditionUrl": "1T2O9fwB"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'DiB2WPRf' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ECnnHFgD' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '5SAfA2vg' \
    --body '{"clazz": "YwpNjzoc", "dryRun": true, "fulfillmentUrl": "VZUDcAUN", "purchaseConditionUrl": "obfLMQTz"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Q2Q28s5j' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --name '5ELSOME6' \
    --offset '65' \
    --tag 'JRSo6MZg' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QIdP65FG", "discountConfig": {"categories": [{"categoryPath": "wqRjSRmu", "includeSubCategories": false}, {"categoryPath": "CeSNt3Rx", "includeSubCategories": true}, {"categoryPath": "OWgFgfU4", "includeSubCategories": false}], "currencyCode": "sMCMbM89", "currencyNamespace": "y4sda7e7", "discountAmount": 57, "discountPercentage": 49, "discountType": "AMOUNT", "items": [{"itemId": "HDZmDaWL", "itemName": "zHWobOkJ"}, {"itemId": "fVvptF3Q", "itemName": "iY1KZRDl"}, {"itemId": "Sp2wOGCz", "itemName": "m8jlxr8e"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 45, "itemId": "lBg0bMVl", "itemName": "EeD78Ia5", "quantity": 50}, {"extraSubscriptionDays": 53, "itemId": "Qqp1H6yU", "itemName": "g2qmmCTL", "quantity": 93}, {"extraSubscriptionDays": 89, "itemId": "WKPtWzBU", "itemName": "H8BekqXx", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 29, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 50, "name": "hEKnHcQV", "redeemEnd": "1973-07-04T00:00:00Z", "redeemStart": "1980-04-17T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["soydx5z1", "86WeLnsp", "x2zNHQ5n"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'xNKyH570' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'oWU0Ucho' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qPcwDg0f", "discountConfig": {"categories": [{"categoryPath": "0eJHfs7B", "includeSubCategories": true}, {"categoryPath": "cQyj8c9T", "includeSubCategories": true}, {"categoryPath": "XTpUKRbY", "includeSubCategories": true}], "currencyCode": "GhuAFHBD", "currencyNamespace": "mXr2sJmG", "discountAmount": 74, "discountPercentage": 38, "discountType": "PERCENTAGE", "items": [{"itemId": "BeA0ETRt", "itemName": "4514Z0lp"}, {"itemId": "NkskMGjh", "itemName": "jvlpLu5l"}, {"itemId": "vn5wjdcg", "itemName": "gWXZ9pBF"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 78, "itemId": "uQw6jGSf", "itemName": "5lQNuGjj", "quantity": 78}, {"extraSubscriptionDays": 27, "itemId": "iZxMqnDH", "itemName": "xSxxcREY", "quantity": 17}, {"extraSubscriptionDays": 78, "itemId": "NEqYFrnW", "itemName": "VOzAxytv", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 30, "maxRedeemCountPerCode": 36, "maxRedeemCountPerCodePerUser": 38, "maxSaleCount": 36, "name": "6vyRwnvC", "redeemEnd": "1998-01-25T00:00:00Z", "redeemStart": "1987-05-23T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["ElD7sjpc", "s0Jyfc04", "IuNiRkd1"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'SdGSRd7I' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "DRpblknd", "oldName": "ZskIdvhl"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'cUDq6gaR' \
    --namespace $AB_NAMESPACE \
    --batchName '05TQkMPP' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '2iHO3nff' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["DLC", "CATALOG", "CAMPAIGN"]}' \
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
    --body '{"appConfig": {"appName": "tBzWQl7X"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "H4ILc3ih"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "FP8FUxQB"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "PB4g9lBq"}, "extendType": "APP"}' \
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
    --storeId 'c6XyGMPR' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'DKpzXXny' \
    --body '{"categoryPath": "fDS0prR0", "localizationDisplayNames": {"F3yucnOt": "tJ7aBw1p", "d6jtb25H": "OtEEwJg0", "PoKbFoSv": "Iqi0cFV6"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'JMXROzM4' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '8dP1GiJs' \
    --namespace $AB_NAMESPACE \
    --storeId 'DNO0ZDzq' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'l89Tyst8' \
    --namespace $AB_NAMESPACE \
    --storeId 'cWUyfV4L' \
    --body '{"localizationDisplayNames": {"MxCw8Iu2": "mhS1w4Ot", "q4V5Rsnm": "GliXVOpF", "PsQgYddK": "4aXp65rJ"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'FAe360DE' \
    --namespace $AB_NAMESPACE \
    --storeId 'WU767TNe' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '9Kg9XSiz' \
    --namespace $AB_NAMESPACE \
    --storeId 'SBm9e0ah' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Qg4BBbue' \
    --namespace $AB_NAMESPACE \
    --storeId 'u8ucEEf7' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '9EYeZKuw' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'KvFPtD4K' \
    --batchNo '[17, 68, 5]' \
    --code 'Irdkbu7S' \
    --limit '44' \
    --offset '85' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'WEtfmwxM' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "EaFIe7De", "codeValue": "aMhqMznS", "quantity": 53}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'kg8FMrNZ' \
    --namespace $AB_NAMESPACE \
    --batchName 'KYOt7pi1' \
    --batchNo '[75, 2, 5]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'hVvDUcJ6' \
    --namespace $AB_NAMESPACE \
    --batchName 'C1kpvM1F' \
    --batchNo '[21, 83, 37]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '9NufIEDD' \
    --namespace $AB_NAMESPACE \
    --batchName 'wPIC3uTw' \
    --batchNo '[47, 80, 88]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'pzZuxfYp' \
    --namespace $AB_NAMESPACE \
    --code 'yuEW1tOV' \
    --limit '7' \
    --offset '69' \
    --userId 'rLH6I6qE' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'IVLM9QW5' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'PcPVutPu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'fgY2cwVU' \
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
    --body '{"currencyCode": "X3sS69mM", "currencySymbol": "OOW9IXdD", "currencyType": "VIRTUAL", "decimals": 67, "localizationDescriptions": {"d5kddOB0": "Lspcw7Pa", "GjCG8whB": "eSNXgIqQ", "C4XFOHKC": "9XJu0Fdf"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'g6GUnnG8' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"QQ32SJ64": "oHgPRUFD", "MeFPGi1E": "tT1iUhS8", "SV3lTyrt": "7P2Ml6Qk"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'hFI7uCUN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 't8zlFbBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'e1ur59oT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'BJoHuJAC' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'gznpp6BU' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": true, "id": "AczuvdSk", "rewards": [{"currency": {"currencyCode": "YDmBkE5Q", "namespace": "M9I7vTI8"}, "item": {"itemId": "1ekEzMzj", "itemName": "NDRwLGdq", "itemSku": "6NjWKu44", "itemType": "E0EvwjGq"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "pulmXZ0p", "namespace": "lLHRpwkZ"}, "item": {"itemId": "0aLxhzR3", "itemName": "KhOmtSKM", "itemSku": "HL91v2KX", "itemType": "qRXTsRPC"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "S5Q4owjh", "namespace": "acouKDMD"}, "item": {"itemId": "2B9yumBE", "itemName": "gi06pCk8", "itemSku": "YVHN3ZB1", "itemType": "WcNAuXd4"}, "quantity": 62, "type": "ITEM"}], "rvn": 68}, {"autoUpdate": false, "enableRevocation": true, "id": "9vc1QJ86", "rewards": [{"currency": {"currencyCode": "KK5Kl6je", "namespace": "68yAt5H5"}, "item": {"itemId": "ixS2y1vO", "itemName": "3pblQ9uF", "itemSku": "LWllhHWr", "itemType": "K4WTt3Cc"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "QS8oFtuD", "namespace": "i9mxQUYc"}, "item": {"itemId": "R2JyGpkN", "itemName": "zkwMWyc3", "itemSku": "85xEyYHr", "itemType": "jBnZVQYM"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "DfHsccL0", "namespace": "FLIzOZKf"}, "item": {"itemId": "vUgdyg9L", "itemName": "R8CIg2XZ", "itemSku": "NzyaduMF", "itemType": "MEqerXRI"}, "quantity": 25, "type": "CURRENCY"}], "rvn": 75}, {"autoUpdate": false, "enableRevocation": true, "id": "KV7ofqzM", "rewards": [{"currency": {"currencyCode": "hBWDSi3I", "namespace": "dfhTHoqh"}, "item": {"itemId": "8W6Hyzq5", "itemName": "8GGVUCek", "itemSku": "1j5MFdlc", "itemType": "v4l8GBwz"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "mDbwNtDW", "namespace": "8GZtQgWH"}, "item": {"itemId": "CnnWxKws", "itemName": "jgEIxUuv", "itemSku": "UWNV4rTR", "itemType": "URQGWEbx"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "R8JreiiV", "namespace": "Y2eBG8hm"}, "item": {"itemId": "MBXJHh61", "itemName": "JIVs9bbj", "itemSku": "Eilosc8s", "itemType": "kCC4keg2"}, "quantity": 68, "type": "ITEM"}], "rvn": 20}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"IYlHoyjK": "PxhlOa95", "8Yz1Mq1Q": "ig8HkWEQ", "yPq27QYz": "fwTewBgd"}}, {"platform": "PSN", "platformDlcIdMap": {"Qhn6ty0g": "QBv68ek4", "W1TkXXDI": "asT3CF1b", "tRHycd1p": "qIPfkafZ"}}, {"platform": "XBOX", "platformDlcIdMap": {"IgnhIe0W": "FTcJyiqP", "LXbwm0hj": "Z0N4OZ2n", "vDKz0UEu": "JK0g7jyE"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'D8ecABOE' \
    --itemId '["6X808XW7", "XM1ytNOV", "xSeQ4oy8"]' \
    --limit '41' \
    --offset '41' \
    --origin 'IOS' \
    --userId 'lPdpO4rn' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["s0qDmPuv", "9XqPgCkh", "Vj6Nadu5"]' \
    --limit '20' \
    --offset '94' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "N3lobDSl", "endDate": "1972-12-27T00:00:00Z", "grantedCode": "PfIHrpzK", "itemId": "LTLKIDJI", "itemNamespace": "RUf7WhTx", "language": "lRtB", "metadata": {"ttmJp1TX": {}, "PT03PKOV": {}, "PMc7skyj": {}}, "origin": "Nintendo", "quantity": 11, "region": "4yAWj0jH", "source": "REWARD", "startDate": "1982-09-17T00:00:00Z", "storeId": "JT5xRjfG"}, {"collectionId": "ViS37oJ6", "endDate": "1976-11-24T00:00:00Z", "grantedCode": "G8dPXpFB", "itemId": "72zw5F2W", "itemNamespace": "gzFuKCOt", "language": "Lf-KTVA-FB", "metadata": {"P6hUgZRT": {}, "c0U1EkbG": {}, "PHVG1umE": {}}, "origin": "Epic", "quantity": 87, "region": "jXhZk3se", "source": "REDEEM_CODE", "startDate": "1981-05-13T00:00:00Z", "storeId": "QmdihM87"}, {"collectionId": "GbGYqFxA", "endDate": "1977-04-16T00:00:00Z", "grantedCode": "qIxQuUYJ", "itemId": "zXzLCRQ6", "itemNamespace": "0B0k5XYG", "language": "aoi-DeKq-ce", "metadata": {"91xwMYvJ": {}, "OZHNxR1h": {}, "owuzr1BL": {}}, "origin": "Twitch", "quantity": 17, "region": "TH6zuqbW", "source": "REFERRAL_BONUS", "startDate": "1997-05-21T00:00:00Z", "storeId": "QZkpSsga"}], "userIds": ["Yw5cmur1", "BtsRKJ5z", "MZsNrAP7"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["FlMjklLw", "q2has81N", "p5mbOnOV"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'cf0BJys6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '100' \
    --status 'FAIL' \
    --userId 'g7Y6bDf6' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'Q2MPnEdq' \
    --eventType 'REVOKED' \
    --externalOrderId 'cLowirbY' \
    --limit '67' \
    --offset '18' \
    --startTime 'bGqqtw9W' \
    --status 'FAIL' \
    --userId 'JXXZIyJp' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "dtJP9MeL", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "PFd0oySD"}, {"amountConsumed": 0, "clientTransactionId": "sTTmnlaM"}, {"amountConsumed": 98, "clientTransactionId": "dvCNudvr"}], "entitlementId": "V5smdfXf", "usageCount": 26}, {"clientTransaction": [{"amountConsumed": 98, "clientTransactionId": "X5iXH6xz"}, {"amountConsumed": 38, "clientTransactionId": "Fv8NbK5q"}, {"amountConsumed": 33, "clientTransactionId": "NtQh91PC"}], "entitlementId": "BL9kXBqe", "usageCount": 41}, {"clientTransaction": [{"amountConsumed": 5, "clientTransactionId": "xT1jGPFI"}, {"amountConsumed": 80, "clientTransactionId": "pVoHO8Ae"}, {"amountConsumed": 87, "clientTransactionId": "XDoHRqnI"}], "entitlementId": "6ubaMmPm", "usageCount": 6}], "purpose": "28HuzExL"}, "originalTitleName": "O7APmQwg", "paymentProductSKU": "8iNWUuDS", "purchaseDate": "ktyWqu99", "sourceOrderItemId": "GHzVFXko", "titleName": "ENlG27rT"}, "eventDomain": "B68ZtrGG", "eventSource": "gAuXhanf", "eventType": "zjfPqpMx", "eventVersion": 40, "id": "ejuJqsvZ", "timestamp": "ydACyw63"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "qkzgUh6v", "eventState": "jBSvzGqX", "lineItemId": "eT1k4Edo", "orderId": "clcpMxTJ", "productId": "QhGfY0yT", "productType": "460S4Fzy", "purchasedDate": "dSQf3Iw7", "sandboxId": "1l7v8uPC", "skuId": "0zd6eFlp", "subscriptionData": {"consumedDurationInDays": 49, "dateTime": "0DtYKIxI", "durationInDays": 69, "recurrenceId": "R8wkvTfz"}}, "datacontenttype": "940D8wYB", "id": "qEvVLjhc", "source": "VZpuahfJ", "specVersion": "NoubgJ6g", "subject": "0skZ6K7I", "time": "6BTxSfgw", "traceparent": "gFXVTgW4", "type": "2afWYLe4"}' \
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
    --body '{"appAppleId": 59, "bundleId": "slh6d6Iv", "issuerId": "5xr5TfEH", "keyId": "DHpwBsSc", "password": "LIiMn7W6", "version": "V2"}' \
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
    --body '{"sandboxId": "iwBggO4J"}' \
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
    --body '{"applicationName": "GtSu7tY2", "notificationTokenAudience": "NAQE1fKv", "notificationTokenEmail": "mX86U7Bz", "packageName": "rxzaF7BA", "serviceAccountId": "6XgA5lRT"}' \
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
    --body '{"data": [{"itemIdentity": "pS64jipb", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"rtYUvlPm": "RZzsS50C", "P1ytnVxv": "orRLzuWD", "UXNaBpL5": "5w5aqUPG"}}, {"itemIdentity": "p9kvpEnA", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"sNFjO3rH": "yz5fYrxl", "2UaQUu6P": "rsoPpaDR", "PXbbypMO": "OCn3rWqz"}}, {"itemIdentity": "gqqtk9WG", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"OmnEhxcV": "dLryPaFN", "aM2F5BpI": "QXD7MeNp", "Wmi8sPiP": "6mlZlq33"}}]}' \
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
    --body '{"appId": "4zQzN0ZK", "appSecret": "GyA6PDfg", "webhookVerifyToken": "vBFsPciw"}' \
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
    --body '{"sku": "r9q3j6Ed"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'cEh3Y4kx' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'yKjB1eLv' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "04umSSIc", "sku": "kgeDwrNJ"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'ECS52zdi' \
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
    --body '{"backOfficeServerClientId": "wYDWAfSP", "backOfficeServerClientSecret": "4gDjN6VX", "enableStreamJob": true, "environment": "g8SYWduk", "streamName": "4UQGbBUk", "streamPartnerName": "gOgQPFl1"}' \
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
    --body '{"backOfficeServerClientId": "p0nrQ6Gn", "backOfficeServerClientSecret": "Espan6rG", "enableStreamJob": true, "environment": "tj3DrhAe", "streamName": "CyhLwDVH", "streamPartnerName": "nN0VA35B"}' \
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
    --body '{"appId": "wvOWq6mX", "env": "SANDBOX", "publisherAuthenticationKey": "CaMWZNL7", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "yyxpWfur", "clientSecret": "0MrF2rwq", "organizationId": "GsF94I3J"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "zeQXYMj3", "entraAppClientSecret": "n7bHVSDZ", "entraTenantId": "Kz1lUHBJ", "relyingPartyCert": "KEaiI21H"}' \
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
    --password 'HJdlO5cQ' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '3vzq5t7K' \
    --externalId 'EUjo2bRV' \
    --limit '100' \
    --offset '92' \
    --source 'GOOGLE' \
    --startDate 'sAm4jgso' \
    --status 'IGNORED' \
    --type 'K0CzuSWw' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '23' \
    --orderId 'KGWhRgN3' \
    --steamId 'oRCGD2Ib' \
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
    --body '{"env": "LIVE", "lastTime": "1985-10-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'DIPQHR3M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '44' \
    --orderId 'mkhMMXQC' \
    --processStatus 'PROCESSED' \
    --steamId '8flyoocd' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'KQo1Hdzr' \
    --limit '86' \
    --offset '46' \
    --platform 'GOOGLE' \
    --productId 'Xayy9iM5' \
    --userId 'B6OgnIHb' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo '7YACXlqx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'THkb0TW8' \
    --feature 'QrjOXofn' \
    --itemId 'REUAOBzR' \
    --itemType 'MEDIA' \
    --startTime 'lVRqgv4l' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'v9Hok7rz' \
    --feature 'nI6nVagE' \
    --itemId '4PRwSJ8X' \
    --itemType 'INGAMEITEM' \
    --startTime 'XDiS2DAJ' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'MoSxrsJ2' \
    --body '{"categoryPath": "qxQKiBzh", "targetItemId": "vHvO6Ojn", "targetNamespace": "jk9Kfkb2"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'fnlokp6A' \
    --body '{"appId": "r7QdaObq", "appType": "GAME", "baseAppId": "KbMXdD1K", "boothName": "DC5mkKes", "categoryPath": "Bmi6eBv0", "clazz": "5nClghrY", "displayOrder": 6, "entitlementType": "CONSUMABLE", "ext": {"3Kasz4j4": {}, "lYnv9G53": {}, "IiWT9riB": {}}, "features": ["M1wgPem7", "Q80wp4Az", "S0nRAnYa"], "flexible": true, "images": [{"as": "Mt6yuk8X", "caption": "Ji88fjjc", "height": 34, "imageUrl": "aSWKz0la", "smallImageUrl": "IpRNQKpQ", "width": 92}, {"as": "Qv8GyEzv", "caption": "VRqd9OsK", "height": 26, "imageUrl": "U7qg266i", "smallImageUrl": "Qkd96ms8", "width": 55}, {"as": "w42UdzO8", "caption": "acpkXJXD", "height": 28, "imageUrl": "8kYwIpjr", "smallImageUrl": "UeqydIA2", "width": 92}], "inventoryConfig": {"customAttributes": {"ULkK0nsc": {}, "tR6krtmd": {}, "myu4V9xR": {}}, "serverCustomAttributes": {"pVwal87l": {}, "aMZUlUjR": {}, "rEi6dhfl": {}}, "slotUsed": 24}, "itemId": "Vzbhxkc0", "itemIds": ["Vv9ciCCs", "8E9yWC3V", "E4u8ElmD"], "itemQty": {"ZAIud4Le": 83, "bUFnXyy5": 17, "YLKLD1sq": 70}, "itemType": "CODE", "listable": false, "localizations": {"HLN4dXk2": {"description": "fRV9nD56", "localExt": {"ZRmJ5Ob1": {}, "ALX0C8YT": {}, "wxLTbWRL": {}}, "longDescription": "g8WP4x02", "title": "oMPPTtDE"}, "Xw66apOY": {"description": "vqsTYYRn", "localExt": {"dNZtbGsk": {}, "iKfZQsUf": {}, "vOCLZis7": {}}, "longDescription": "1CG2MBZE", "title": "wiFvUlIs"}, "7ldbIJZb": {"description": "C3chfs3u", "localExt": {"bRMPo939": {}, "XMbwaYJx": {}, "7gmFYGUU": {}}, "longDescription": "UpzWZ6vo", "title": "7Knw9YxC"}}, "lootBoxConfig": {"rewardCount": 97, "rewards": [{"lootBoxItems": [{"count": 5, "duration": 60, "endDate": "1981-07-14T00:00:00Z", "itemId": "GPK2sayZ", "itemSku": "QIkEfByO", "itemType": "e1IHELOZ"}, {"count": 17, "duration": 40, "endDate": "1991-04-11T00:00:00Z", "itemId": "zeHhEOth", "itemSku": "mmXz3cSh", "itemType": "YwK17pR9"}, {"count": 67, "duration": 43, "endDate": "1974-02-05T00:00:00Z", "itemId": "rEEGpPvs", "itemSku": "UP7d3p1E", "itemType": "nhAEFkyh"}], "name": "xpdlaFe2", "odds": 0.03173081875138861, "type": "PROBABILITY_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 62, "duration": 61, "endDate": "1974-11-24T00:00:00Z", "itemId": "3JAfN5BV", "itemSku": "KBwkBoCQ", "itemType": "7uvkwzvh"}, {"count": 11, "duration": 81, "endDate": "1976-11-18T00:00:00Z", "itemId": "zXUvN0V5", "itemSku": "Cqmwyc98", "itemType": "QBQUhFUd"}, {"count": 69, "duration": 61, "endDate": "1980-01-27T00:00:00Z", "itemId": "umqZo5xi", "itemSku": "Moj2JCkp", "itemType": "fD2kwnGl"}], "name": "IeQ6abcm", "odds": 0.6123163677291892, "type": "REWARD_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 32, "duration": 44, "endDate": "1996-12-06T00:00:00Z", "itemId": "wfkENe6S", "itemSku": "K8Ag4ZIj", "itemType": "rgllv2rQ"}, {"count": 31, "duration": 73, "endDate": "1997-09-13T00:00:00Z", "itemId": "WafvoAlv", "itemSku": "9NIsfkaM", "itemType": "pkdDtBTN"}, {"count": 67, "duration": 94, "endDate": "1977-06-17T00:00:00Z", "itemId": "tCoGS4Du", "itemSku": "xTUkApyw", "itemType": "mupduk72"}], "name": "Zr3o6Lbr", "odds": 0.5505801140261747, "type": "PROBABILITY_GROUP", "weight": 26}], "rollFunction": "CUSTOM"}, "maxCount": 30, "maxCountPerUser": 5, "name": "QoqwzReG", "optionBoxConfig": {"boxItems": [{"count": 11, "duration": 90, "endDate": "1982-01-13T00:00:00Z", "itemId": "ne1Z0t1H", "itemSku": "o5CLbjTx", "itemType": "yhATAjn2"}, {"count": 34, "duration": 36, "endDate": "1974-10-27T00:00:00Z", "itemId": "sZtD4FHi", "itemSku": "Vkjl0hT6", "itemType": "3WdraEh5"}, {"count": 73, "duration": 19, "endDate": "1998-02-26T00:00:00Z", "itemId": "W0Bdkwdt", "itemSku": "FyezCug6", "itemType": "HqYe5Vbq"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 72, "fixedTrialCycles": 94, "graceDays": 77}, "regionData": {"KHnOGB5s": [{"currencyCode": "cp2qwcEX", "currencyNamespace": "Q4JH6WSs", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1980-02-17T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1987-08-11T00:00:00Z", "expireAt": "1974-05-04T00:00:00Z", "price": 4, "purchaseAt": "1985-10-06T00:00:00Z", "trialPrice": 67}, {"currencyCode": "u3Ecnugf", "currencyNamespace": "ER3LSptU", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1995-01-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1995-01-11T00:00:00Z", "expireAt": "1995-05-30T00:00:00Z", "price": 2, "purchaseAt": "1989-05-06T00:00:00Z", "trialPrice": 67}, {"currencyCode": "9i1Pp20X", "currencyNamespace": "J8WcDpoW", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1995-12-08T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1992-02-19T00:00:00Z", "expireAt": "1991-07-25T00:00:00Z", "price": 46, "purchaseAt": "1985-03-01T00:00:00Z", "trialPrice": 73}], "U958nsnw": [{"currencyCode": "eUqnt3Ps", "currencyNamespace": "5lPFwg4x", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1985-08-14T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1989-01-11T00:00:00Z", "expireAt": "1995-09-03T00:00:00Z", "price": 7, "purchaseAt": "1992-07-26T00:00:00Z", "trialPrice": 45}, {"currencyCode": "Dw9Ex4AS", "currencyNamespace": "yXCZB936", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1992-12-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1998-02-02T00:00:00Z", "expireAt": "1971-01-19T00:00:00Z", "price": 78, "purchaseAt": "1993-01-31T00:00:00Z", "trialPrice": 53}, {"currencyCode": "0HoegIkf", "currencyNamespace": "EUDzlrRR", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1976-08-06T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1980-06-15T00:00:00Z", "expireAt": "1998-05-30T00:00:00Z", "price": 70, "purchaseAt": "1974-06-22T00:00:00Z", "trialPrice": 67}], "qZGvRd5B": [{"currencyCode": "cIhbMaCg", "currencyNamespace": "edA7X58P", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1998-02-21T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1981-11-24T00:00:00Z", "expireAt": "1982-03-04T00:00:00Z", "price": 24, "purchaseAt": "1983-09-21T00:00:00Z", "trialPrice": 52}, {"currencyCode": "RSJtdWyn", "currencyNamespace": "74kYNG33", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1974-04-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-01-24T00:00:00Z", "expireAt": "1998-06-11T00:00:00Z", "price": 81, "purchaseAt": "1990-06-24T00:00:00Z", "trialPrice": 79}, {"currencyCode": "wangXPmH", "currencyNamespace": "KxDrytwg", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1993-04-04T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1986-12-08T00:00:00Z", "expireAt": "1996-10-20T00:00:00Z", "price": 55, "purchaseAt": "1971-11-22T00:00:00Z", "trialPrice": 23}]}, "saleConfig": {"currencyCode": "gU1UJROt", "price": 100}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "CCgSHawO", "stackable": false, "status": "INACTIVE", "tags": ["VOJiRKk4", "oNvkElWn", "BqkRChfT"], "targetCurrencyCode": "IHZCrxtD", "targetNamespace": "J29AO5v3", "thumbnailUrl": "zxYyYfSs", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'To4GSpDo' \
    --appId 'F9OSG3wp' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate '3YR6hUGe' \
    --baseAppId 'jEp93tiM' \
    --categoryPath 'sMwmXmai' \
    --features 'ntUO89uW' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '57' \
    --offset '33' \
    --region 'ySD4UPvt' \
    --sortBy '["updatedAt:desc", "name:desc", "displayOrder:asc"]' \
    --storeId 'PfSi4Kfx' \
    --tags 'VNROBrSB' \
    --targetNamespace '87Bgj2s9' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["HxIz3Oa0", "urnOQFWD", "bbCZJipq"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'mLpzLoo8' \
    --itemIds 'w8DlsqXb' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'NXKWV3Ax' \
    --sku 'wjM3ICM7' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'sckRtTc0' \
    --populateBundle 'true' \
    --region 'Xe7lGiYp' \
    --storeId 'LX9wIreE' \
    --sku 'GFbGNEtc' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'bSJgVwQ3' \
    --region '5FGK8zRx' \
    --storeId 'WutkYDZ3' \
    --itemIds 'hPEm4tGh' \
    --userId '65KsWzod' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'xrmqVDwe' \
    --sku 'CaEEEUoG' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ho7jIcOc", "j3dYfL7b", "conxnUwT"]' \
    --storeId '27VyKTFM' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'tctdWjZT' \
    --region '90cjlHSD' \
    --storeId 'T027l4Yt' \
    --itemIds 'TRCNyaIt' \
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
    --platform 'Cj9Y8dTN' \
    --userId 'pZeUpG8O' \
    --body '{"itemIds": ["KVUtLobY", "ni2mtFVQ", "H4Frrl3A"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'BT48jNBQ' \
    --body '{"changes": [{"itemIdentities": ["9O8iGpLQ", "vAQbfFtE", "u959DWof"], "itemIdentityType": "ITEM_ID", "regionData": {"6VEk3TjD": [{"currencyCode": "u7vhvwWu", "currencyNamespace": "72ov93oG", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1972-03-19T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1994-10-15T00:00:00Z", "discountedPrice": 58, "expireAt": "1978-04-30T00:00:00Z", "price": 74, "purchaseAt": "1980-03-26T00:00:00Z", "trialPrice": 47}, {"currencyCode": "QaBUt99P", "currencyNamespace": "leyqFIAp", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1989-11-27T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1980-06-29T00:00:00Z", "discountedPrice": 62, "expireAt": "1984-06-06T00:00:00Z", "price": 81, "purchaseAt": "1981-04-29T00:00:00Z", "trialPrice": 63}, {"currencyCode": "uMxzPayX", "currencyNamespace": "hwEzIKri", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1986-11-04T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1975-01-03T00:00:00Z", "discountedPrice": 94, "expireAt": "1998-04-04T00:00:00Z", "price": 83, "purchaseAt": "1983-03-22T00:00:00Z", "trialPrice": 66}], "YYXFInqE": [{"currencyCode": "fsDO9t1D", "currencyNamespace": "gLPUU0PR", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1975-08-05T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1995-10-24T00:00:00Z", "discountedPrice": 0, "expireAt": "1987-03-14T00:00:00Z", "price": 39, "purchaseAt": "1995-06-18T00:00:00Z", "trialPrice": 87}, {"currencyCode": "qRo5Lhmn", "currencyNamespace": "mEOLIyvw", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1994-08-28T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1990-02-25T00:00:00Z", "discountedPrice": 36, "expireAt": "1986-06-16T00:00:00Z", "price": 46, "purchaseAt": "1971-01-09T00:00:00Z", "trialPrice": 5}, {"currencyCode": "Ed4ekUO5", "currencyNamespace": "muSUegTx", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1980-07-02T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1999-05-14T00:00:00Z", "discountedPrice": 32, "expireAt": "1976-10-10T00:00:00Z", "price": 67, "purchaseAt": "1994-08-09T00:00:00Z", "trialPrice": 9}], "d8LMKOnk": [{"currencyCode": "AlF3pnH0", "currencyNamespace": "67UE4cRs", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1999-07-10T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1971-07-13T00:00:00Z", "discountedPrice": 73, "expireAt": "1993-09-16T00:00:00Z", "price": 36, "purchaseAt": "1999-05-29T00:00:00Z", "trialPrice": 13}, {"currencyCode": "8wY3vVJo", "currencyNamespace": "B1tqxFKZ", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1991-09-04T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1994-01-09T00:00:00Z", "discountedPrice": 40, "expireAt": "1987-11-26T00:00:00Z", "price": 35, "purchaseAt": "1980-08-11T00:00:00Z", "trialPrice": 48}, {"currencyCode": "xanlRn1q", "currencyNamespace": "YWq9PX2P", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1972-03-22T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1989-04-08T00:00:00Z", "discountedPrice": 24, "expireAt": "1986-05-20T00:00:00Z", "price": 75, "purchaseAt": "1991-06-03T00:00:00Z", "trialPrice": 72}]}}, {"itemIdentities": ["zhD8w2mY", "xRPXoeQl", "9wKC03V4"], "itemIdentityType": "ITEM_SKU", "regionData": {"Y249TyWZ": [{"currencyCode": "KZ1i8Tfy", "currencyNamespace": "zEiNgB6y", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1977-11-21T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1985-06-25T00:00:00Z", "discountedPrice": 28, "expireAt": "1986-06-09T00:00:00Z", "price": 44, "purchaseAt": "1987-11-10T00:00:00Z", "trialPrice": 64}, {"currencyCode": "XI2hNsX6", "currencyNamespace": "aBtWpCQg", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1998-12-14T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1991-02-22T00:00:00Z", "discountedPrice": 40, "expireAt": "1991-11-13T00:00:00Z", "price": 100, "purchaseAt": "1996-10-15T00:00:00Z", "trialPrice": 49}, {"currencyCode": "PE7da4MV", "currencyNamespace": "SPs5hfUX", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1977-01-24T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1995-01-08T00:00:00Z", "discountedPrice": 26, "expireAt": "1971-02-21T00:00:00Z", "price": 37, "purchaseAt": "1995-07-19T00:00:00Z", "trialPrice": 33}], "ZqGuKg7e": [{"currencyCode": "8bgiL2lY", "currencyNamespace": "uR0LYGeU", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1983-11-07T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1981-04-03T00:00:00Z", "discountedPrice": 43, "expireAt": "1991-05-05T00:00:00Z", "price": 10, "purchaseAt": "1996-07-08T00:00:00Z", "trialPrice": 9}, {"currencyCode": "B56au4V9", "currencyNamespace": "i4GwXAV1", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1999-03-18T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1975-05-01T00:00:00Z", "discountedPrice": 20, "expireAt": "1995-06-12T00:00:00Z", "price": 80, "purchaseAt": "1995-11-08T00:00:00Z", "trialPrice": 37}, {"currencyCode": "a8miwaMl", "currencyNamespace": "TNniCrm5", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1986-07-07T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1997-04-09T00:00:00Z", "discountedPrice": 1, "expireAt": "1971-11-01T00:00:00Z", "price": 56, "purchaseAt": "1981-06-01T00:00:00Z", "trialPrice": 12}], "FkHQ4j8R": [{"currencyCode": "3k4Qm7IY", "currencyNamespace": "TIBA1yJd", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1980-11-28T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1978-02-13T00:00:00Z", "discountedPrice": 23, "expireAt": "1985-05-11T00:00:00Z", "price": 56, "purchaseAt": "1984-07-28T00:00:00Z", "trialPrice": 9}, {"currencyCode": "Ycyk2DjY", "currencyNamespace": "BurVQFBP", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1999-07-07T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1977-04-08T00:00:00Z", "discountedPrice": 10, "expireAt": "1975-08-30T00:00:00Z", "price": 99, "purchaseAt": "1996-11-05T00:00:00Z", "trialPrice": 64}, {"currencyCode": "TtvvndCe", "currencyNamespace": "BbgeQnW5", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1974-06-05T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1978-07-14T00:00:00Z", "discountedPrice": 35, "expireAt": "1986-08-24T00:00:00Z", "price": 7, "purchaseAt": "1977-05-14T00:00:00Z", "trialPrice": 79}]}}, {"itemIdentities": ["6wwicQER", "z4khvLC5", "1to2FlTu"], "itemIdentityType": "ITEM_SKU", "regionData": {"QljVkUCf": [{"currencyCode": "sCrH1GK0", "currencyNamespace": "2mpRFqpM", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1971-10-27T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1993-12-06T00:00:00Z", "discountedPrice": 61, "expireAt": "1972-02-06T00:00:00Z", "price": 36, "purchaseAt": "1981-03-29T00:00:00Z", "trialPrice": 33}, {"currencyCode": "bitfAlTf", "currencyNamespace": "ZXbCVDRh", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1998-05-21T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1972-07-06T00:00:00Z", "discountedPrice": 55, "expireAt": "1974-02-19T00:00:00Z", "price": 45, "purchaseAt": "1972-05-02T00:00:00Z", "trialPrice": 39}, {"currencyCode": "Am90rO0G", "currencyNamespace": "kPueDt5v", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-08-05T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1993-04-11T00:00:00Z", "discountedPrice": 81, "expireAt": "1991-03-23T00:00:00Z", "price": 48, "purchaseAt": "1997-07-12T00:00:00Z", "trialPrice": 86}], "CCgah0vq": [{"currencyCode": "2ONcWWgV", "currencyNamespace": "X2GrPlkS", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1988-09-23T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1998-08-06T00:00:00Z", "discountedPrice": 47, "expireAt": "1981-01-29T00:00:00Z", "price": 44, "purchaseAt": "1987-02-05T00:00:00Z", "trialPrice": 93}, {"currencyCode": "jxg3pS6P", "currencyNamespace": "6QUn235g", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1987-12-22T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1993-08-14T00:00:00Z", "discountedPrice": 92, "expireAt": "1989-06-10T00:00:00Z", "price": 36, "purchaseAt": "1973-03-06T00:00:00Z", "trialPrice": 28}, {"currencyCode": "9avU4nGD", "currencyNamespace": "4QvJ2Pkr", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1995-09-22T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1981-02-07T00:00:00Z", "discountedPrice": 41, "expireAt": "1976-11-29T00:00:00Z", "price": 90, "purchaseAt": "1979-04-30T00:00:00Z", "trialPrice": 16}], "vjVfondZ": [{"currencyCode": "2uOG9nY8", "currencyNamespace": "gBZSf7M4", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1996-02-17T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1975-03-13T00:00:00Z", "discountedPrice": 99, "expireAt": "1973-03-15T00:00:00Z", "price": 22, "purchaseAt": "1971-09-01T00:00:00Z", "trialPrice": 27}, {"currencyCode": "xiYZQf4k", "currencyNamespace": "FopdWnuP", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1998-10-10T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1983-05-29T00:00:00Z", "discountedPrice": 8, "expireAt": "1973-06-04T00:00:00Z", "price": 6, "purchaseAt": "1975-09-17T00:00:00Z", "trialPrice": 87}, {"currencyCode": "6DEG8M3i", "currencyNamespace": "qmA2RIAf", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1998-01-05T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1981-07-14T00:00:00Z", "discountedPrice": 42, "expireAt": "1976-03-05T00:00:00Z", "price": 39, "purchaseAt": "1996-01-12T00:00:00Z", "trialPrice": 2}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SEASON' \
    --limit '82' \
    --offset '26' \
    --sortBy 'AOJIRdI8' \
    --storeId 'bWDpdLaR' \
    --keyword 'k6qm1cWh' \
    --language 'Rks0d7Ss' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '60' \
    --offset '81' \
    --sortBy '["name", "name:desc", "displayOrder:asc"]' \
    --storeId 'uyacAWxg' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'swYOGny5' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'TpqV13lt' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'O2dKLnn0' \
    --namespace $AB_NAMESPACE \
    --storeId 'gxtUE47w' \
    --body '{"appId": "5aNFinBi", "appType": "DLC", "baseAppId": "E3bat9ps", "boothName": "eSmvwQNG", "categoryPath": "XIf02PqF", "clazz": "x6Yoieat", "displayOrder": 56, "entitlementType": "DURABLE", "ext": {"akDbJeIX": {}, "BPHdWA8C": {}, "3J9JbgZ6": {}}, "features": ["irrwrdfo", "ZhdIinLR", "qrAFXvao"], "flexible": false, "images": [{"as": "vuoL8ROG", "caption": "6YKMOkHW", "height": 84, "imageUrl": "A9uct3AU", "smallImageUrl": "lBNsX7xl", "width": 75}, {"as": "wXROMOKW", "caption": "8JZIn8wv", "height": 52, "imageUrl": "Vl9pG6pp", "smallImageUrl": "ZHCoVoZt", "width": 93}, {"as": "5whggSJ7", "caption": "Nd83Bi4o", "height": 10, "imageUrl": "QzmSPUqF", "smallImageUrl": "MimHVmrl", "width": 25}], "inventoryConfig": {"customAttributes": {"bc9DcwvB": {}, "hzvwIHRT": {}, "4J8iaJIA": {}}, "serverCustomAttributes": {"WzOkIeJp": {}, "FVDu65FU": {}, "6uAKnCRq": {}}, "slotUsed": 100}, "itemIds": ["94rw7ZaA", "f15lDzEn", "oCkT0pGt"], "itemQty": {"1gzZgleI": 33, "e8Zy1nJk": 15, "etJTy4bZ": 59}, "itemType": "SEASON", "listable": false, "localizations": {"D0YakmT7": {"description": "Izy6OsTg", "localExt": {"PxRv0Ztz": {}, "34ROC48E": {}, "CKL1oIW8": {}}, "longDescription": "Ww4Z9DSF", "title": "bluj8XBJ"}, "QBccvC3q": {"description": "1S7GK7bF", "localExt": {"rUVSSDBM": {}, "QnbyCyot": {}, "Lqr40zk8": {}}, "longDescription": "dmnSCcnZ", "title": "BrD7WEjq"}, "2U3nBAuE": {"description": "wVrZhhRa", "localExt": {"NHP5m2hl": {}, "4G60Ex6c": {}, "yLaayHdt": {}}, "longDescription": "ha5SFfxa", "title": "DTuVLR1K"}}, "lootBoxConfig": {"rewardCount": 23, "rewards": [{"lootBoxItems": [{"count": 65, "duration": 79, "endDate": "1974-05-03T00:00:00Z", "itemId": "2mUyuj9u", "itemSku": "Wsr0LWyx", "itemType": "d9soORdY"}, {"count": 75, "duration": 85, "endDate": "1979-02-17T00:00:00Z", "itemId": "X2kolutM", "itemSku": "uoUcbA0b", "itemType": "tP22EzGj"}, {"count": 19, "duration": 85, "endDate": "1972-03-20T00:00:00Z", "itemId": "YLEkaK3r", "itemSku": "3uU2nREE", "itemType": "aUFcfLO3"}], "name": "KE7FNjmW", "odds": 0.51749011379409, "type": "PROBABILITY_GROUP", "weight": 8}, {"lootBoxItems": [{"count": 99, "duration": 26, "endDate": "1997-03-15T00:00:00Z", "itemId": "7WVoBPKX", "itemSku": "kJi5Pn9D", "itemType": "Muzt92sg"}, {"count": 56, "duration": 95, "endDate": "1975-07-01T00:00:00Z", "itemId": "9Zlj55hD", "itemSku": "hGkaFcOt", "itemType": "DEPrikpy"}, {"count": 48, "duration": 98, "endDate": "1974-11-22T00:00:00Z", "itemId": "iosL3vke", "itemSku": "1VdDHIBW", "itemType": "X8gPE4VL"}], "name": "atYEW0Dh", "odds": 0.4467434196182716, "type": "REWARD_GROUP", "weight": 51}, {"lootBoxItems": [{"count": 63, "duration": 33, "endDate": "1990-07-03T00:00:00Z", "itemId": "dcdNpRLs", "itemSku": "KqIO889E", "itemType": "Va590BR2"}, {"count": 39, "duration": 72, "endDate": "1981-03-14T00:00:00Z", "itemId": "Erxtb3u9", "itemSku": "ILwGWkHP", "itemType": "XyS2dioV"}, {"count": 91, "duration": 2, "endDate": "1994-03-01T00:00:00Z", "itemId": "3CZUlARx", "itemSku": "sW4M7aw8", "itemType": "N5TsfAjB"}], "name": "vqaVH0ld", "odds": 0.857134550959922, "type": "REWARD_GROUP", "weight": 90}], "rollFunction": "DEFAULT"}, "maxCount": 49, "maxCountPerUser": 56, "name": "4ayAwWyr", "optionBoxConfig": {"boxItems": [{"count": 62, "duration": 52, "endDate": "1986-11-18T00:00:00Z", "itemId": "UhbNiF5D", "itemSku": "BjZpppkO", "itemType": "LeuSYFFF"}, {"count": 98, "duration": 44, "endDate": "1993-08-10T00:00:00Z", "itemId": "BcVR8aJr", "itemSku": "v7q0UGZo", "itemType": "uHfFeL4V"}, {"count": 19, "duration": 56, "endDate": "1998-02-18T00:00:00Z", "itemId": "mk9pHsdF", "itemSku": "Ue4YEmyj", "itemType": "dBPUr7Im"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 74, "fixedTrialCycles": 17, "graceDays": 10}, "regionData": {"AViqokqj": [{"currencyCode": "05R71Ynn", "currencyNamespace": "CetHXjDO", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1985-12-14T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1976-07-12T00:00:00Z", "expireAt": "1999-02-06T00:00:00Z", "price": 67, "purchaseAt": "1985-06-14T00:00:00Z", "trialPrice": 7}, {"currencyCode": "IT4sg0ni", "currencyNamespace": "4XgjLjbN", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1994-10-29T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1998-02-25T00:00:00Z", "expireAt": "1974-07-07T00:00:00Z", "price": 21, "purchaseAt": "1986-12-12T00:00:00Z", "trialPrice": 20}, {"currencyCode": "6tZOcdWJ", "currencyNamespace": "KBdnDzyw", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1982-02-25T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1982-01-08T00:00:00Z", "expireAt": "1996-02-01T00:00:00Z", "price": 48, "purchaseAt": "1975-10-01T00:00:00Z", "trialPrice": 67}], "BmSJBsCG": [{"currencyCode": "SW0zYdwR", "currencyNamespace": "95ieflj8", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1981-04-07T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1997-12-07T00:00:00Z", "expireAt": "1994-11-10T00:00:00Z", "price": 91, "purchaseAt": "1977-08-12T00:00:00Z", "trialPrice": 70}, {"currencyCode": "jhgM12zT", "currencyNamespace": "DSiY3YWD", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1984-12-20T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1981-02-05T00:00:00Z", "expireAt": "1989-06-07T00:00:00Z", "price": 61, "purchaseAt": "1975-11-07T00:00:00Z", "trialPrice": 71}, {"currencyCode": "UPcweCDS", "currencyNamespace": "u6uHQyLs", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1982-03-03T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1989-06-18T00:00:00Z", "expireAt": "1993-01-18T00:00:00Z", "price": 32, "purchaseAt": "1972-03-11T00:00:00Z", "trialPrice": 56}], "ImROK5TM": [{"currencyCode": "IiGyguH7", "currencyNamespace": "VRWqFADX", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1991-04-05T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1979-05-14T00:00:00Z", "expireAt": "1981-06-12T00:00:00Z", "price": 90, "purchaseAt": "1977-11-26T00:00:00Z", "trialPrice": 17}, {"currencyCode": "xqCmzHhf", "currencyNamespace": "2Gfh8by6", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1977-03-20T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1979-01-22T00:00:00Z", "expireAt": "1993-10-15T00:00:00Z", "price": 35, "purchaseAt": "1995-12-13T00:00:00Z", "trialPrice": 82}, {"currencyCode": "YVO2K3ov", "currencyNamespace": "HWUd7Wmt", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1999-10-04T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1993-01-26T00:00:00Z", "expireAt": "1975-01-21T00:00:00Z", "price": 67, "purchaseAt": "1995-10-19T00:00:00Z", "trialPrice": 77}]}, "saleConfig": {"currencyCode": "hzOrjHYA", "price": 95}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "sanuIBzx", "stackable": false, "status": "ACTIVE", "tags": ["cGYxmCYh", "h4HhNVrS", "MtB3vcF4"], "targetCurrencyCode": "cGANGaJQ", "targetNamespace": "npGnPFPx", "thumbnailUrl": "voJJltjY", "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '1nm4QSn0' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "DLC", "CATALOG"]' \
    --force 'false' \
    --storeId 'BXRVD4Bw' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'h2pLic8W' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 94, "orderNo": "A430CB5S"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'QQrEjBku' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'D5XFI1Ge' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'jIteYC0l' \
    --namespace $AB_NAMESPACE \
    --storeId 'WBhRFmrJ' \
    --body '{"carousel": [{"alt": "Tqd8DXPm", "previewUrl": "kRATOUWs", "thumbnailUrl": "0aSUIcJr", "type": "video", "url": "oxTWmnv2", "videoSource": "vimeo"}, {"alt": "bsr9cbLx", "previewUrl": "tUwEkEuX", "thumbnailUrl": "o4CEvLwl", "type": "video", "url": "8fD9BQAm", "videoSource": "youtube"}, {"alt": "JI8dzDPt", "previewUrl": "9wW0txf5", "thumbnailUrl": "IU674rBE", "type": "image", "url": "nhbgboz8", "videoSource": "generic"}], "developer": "Vm3Q4Zjv", "forumUrl": "YXHdHZ4T", "genres": ["Action", "Sports", "RPG"], "localizations": {"Y3UfUOPR": {"announcement": "SNsTeL2H", "slogan": "zCu9g8uQ"}, "y5quqS70": {"announcement": "2DgRD0aC", "slogan": "1FkvVT25"}, "e9Id3UtJ": {"announcement": "Aj9T5mcA", "slogan": "0dIag1SE"}}, "platformRequirements": {"Styo4TOG": [{"additionals": "FtzoUm4O", "directXVersion": "L446tekp", "diskSpace": "WfrvtIj4", "graphics": "Ea6aeY9n", "label": "yXqCB1iE", "osVersion": "UIR6rXOZ", "processor": "fFp0UCbN", "ram": "OjpuyVoW", "soundCard": "Dekft53g"}, {"additionals": "vRsRNY7J", "directXVersion": "tvZG8QKL", "diskSpace": "UhwfwS1R", "graphics": "RflDpDIE", "label": "8Sjg9lKR", "osVersion": "Nj6lazYq", "processor": "qvlWcGHx", "ram": "gVUkZFWE", "soundCard": "ZE2XYmZE"}, {"additionals": "e8qTq3CS", "directXVersion": "fSGrGgkX", "diskSpace": "PLFX6Rwb", "graphics": "IUzcXGVM", "label": "AsTL63SA", "osVersion": "xbpcGkPb", "processor": "MJgHCtEZ", "ram": "D34G0pBB", "soundCard": "Xm6oUJPU"}], "1FbgVRLM": [{"additionals": "mFLXHCYM", "directXVersion": "jBwKMHr2", "diskSpace": "wJNbBCAH", "graphics": "VtTPGhzE", "label": "bsi1c0EB", "osVersion": "0v62oDuL", "processor": "czsZlvFg", "ram": "g6UG6gC0", "soundCard": "XqWJCdx9"}, {"additionals": "mTLIByoO", "directXVersion": "AHkmSABE", "diskSpace": "ua0IXgQv", "graphics": "pwZLqV0X", "label": "p2hKQybV", "osVersion": "2YFf9e6o", "processor": "87mLBbBl", "ram": "qbqj97aT", "soundCard": "WLxDZ5cO"}, {"additionals": "bcF8ZAQr", "directXVersion": "BORocPfX", "diskSpace": "akyGeBv6", "graphics": "kTN7tvSm", "label": "MhAu1ceo", "osVersion": "BKk5w5YS", "processor": "BPpTIuDO", "ram": "oJDcpGm9", "soundCard": "dLbVHYz3"}], "fBBnrGcd": [{"additionals": "G9tJFRBi", "directXVersion": "1pu3ToEw", "diskSpace": "AkrkK6Ye", "graphics": "ftFtRjiv", "label": "XfYYz17j", "osVersion": "kituqw9I", "processor": "0RSxlyeO", "ram": "aLd0MUKs", "soundCard": "PKec27jN"}, {"additionals": "TXinjUPA", "directXVersion": "bY90Jf5T", "diskSpace": "oNVQ8l6E", "graphics": "frjEHuxk", "label": "N1YSGgzn", "osVersion": "whvoJkUh", "processor": "DoaTdBk6", "ram": "UO72r7A1", "soundCard": "zWb0cC6C"}, {"additionals": "6Nr6J3Iu", "directXVersion": "Y2BeC5wT", "diskSpace": "M5aimgtm", "graphics": "wkW9pBqY", "label": "UXqmIHbn", "osVersion": "PJ3vuK31", "processor": "z37Vvw59", "ram": "NqYO301B", "soundCard": "o5osx41m"}]}, "platforms": ["Linux", "IOS", "Android"], "players": ["Coop", "LocalCoop", "Coop"], "primaryGenre": "RPG", "publisher": "GMiJXrBt", "releaseDate": "1979-04-26T00:00:00Z", "websiteUrl": "Tzr8T7uP"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'JAOYLkc7' \
    --namespace $AB_NAMESPACE \
    --storeId 'T8qZ1qzQ' \
    --body '{"featuresToCheck": ["REWARD", "CATALOG", "ENTITLEMENT"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'PoNlXIFq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Mmhuk8zj' \
    --namespace $AB_NAMESPACE \
    --storeId 'DPqu23BP' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'sAMvnBGe' \
    --itemId 'xYVXjciG' \
    --namespace $AB_NAMESPACE \
    --storeId '5y02RTK5' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'IL8cGZwT' \
    --itemId 'DSm6lSQe' \
    --namespace $AB_NAMESPACE \
    --storeId 'hNJMgTda' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'X89VZKcs' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'xEfgPNoS' \
    --populateBundle 'true' \
    --region 'mECdvqFI' \
    --storeId 'tZXX7poK' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'v8oXa43W' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZJRa2YNj' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 84, "code": "dyGjk1SW", "comparison": "isLessThanOrEqual", "name": "pl13USLz", "predicateType": "StatisticCodePredicate", "value": "mz5qaQgL", "values": ["e0uYdHCY", "ElQhSlDZ", "WPO4nL4n"]}, {"anyOf": 32, "code": "U4HkZBOk", "comparison": "isNot", "name": "ngdiVpPn", "predicateType": "StatisticCodePredicate", "value": "8eLwc1Vh", "values": ["OgoSl4FO", "OVrc79uZ", "6aZXzheP"]}, {"anyOf": 24, "code": "D7a2KunC", "comparison": "isLessThanOrEqual", "name": "UpU6T97P", "predicateType": "SeasonTierPredicate", "value": "8BtYwRLk", "values": ["mIFGN0Db", "yQ32hHFa", "LohApQf8"]}]}, {"operator": "and", "predicates": [{"anyOf": 66, "code": "uE2S8n1b", "comparison": "isLessThanOrEqual", "name": "AnW7cRjE", "predicateType": "EntitlementPredicate", "value": "2N53qWxJ", "values": ["Gbwar5fs", "SjnDVraX", "xFEfzmwP"]}, {"anyOf": 11, "code": "J5pk94Gg", "comparison": "isLessThanOrEqual", "name": "FhGvltV9", "predicateType": "SeasonPassPredicate", "value": "1yCyShdx", "values": ["Zv8C664j", "lhynfWqP", "QdPsSkqh"]}, {"anyOf": 36, "code": "FoaYtrrv", "comparison": "isGreaterThan", "name": "uhwam1Ga", "predicateType": "SeasonTierPredicate", "value": "EU76WC0M", "values": ["bBu7IkX7", "U2DDqfKT", "YlD3N8lg"]}]}, {"operator": "and", "predicates": [{"anyOf": 87, "code": "0jKjWLto", "comparison": "is", "name": "qIvoSine", "predicateType": "SeasonPassPredicate", "value": "JdVOXNE9", "values": ["I6HRUH1K", "fnU45Ncr", "G6aQW04C"]}, {"anyOf": 2, "code": "wrz2Hn30", "comparison": "excludes", "name": "i7VTSSnN", "predicateType": "EntitlementPredicate", "value": "l7eEzHQe", "values": ["k6d5v2SB", "AVLqWGu5", "BViv4Lj0"]}, {"anyOf": 80, "code": "JPAxWI4F", "comparison": "isLessThanOrEqual", "name": "GyM5Hthb", "predicateType": "EntitlementPredicate", "value": "DQ1DTSzE", "values": ["952kJmJf", "5MFiUisV", "dXYkNMI5"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'Kqmgql79' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "REWARD", "REWARD"]' \
    --storeId 'VfgWIp8b' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'scMhUONM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "OWlrdjoU"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'ZFjXlWpo' \
    --offset '9' \
    --tag 'LL8fb7NI' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WD6ybJ0k", "name": "to82W4Id", "status": "ACTIVE", "tags": ["rMD8Tz61", "DtpMbCbj", "MtC2ohIO"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'MclWkv2e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'vBLkHYDX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Fg8viPA7", "name": "4OuLLjNZ", "status": "ACTIVE", "tags": ["kp5oorB7", "j0qziXuJ", "cPAduil6"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '1VkQXiZ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'hlrkECvC' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '11' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'YDEcCvuD' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'q1YGA9jj' \
    --limit '41' \
    --offset '41' \
    --orderNos '["NrsFVbIU", "lrj4ggpL", "WL9s1C9z"]' \
    --sortBy 'Jkc46Noo' \
    --startTime 'gSnCCWYU' \
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
    --orderNo 'qv494gSi' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BQVzlj0s' \
    --body '{"description": "CQmWKn7n"}' \
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
    --body '{"domains": ["qcZdlmMP", "i0rvdfLt", "BG8YDWu1"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '85ZRhpkl' \
    --externalId 'MByEi1bJ' \
    --limit '14' \
    --notificationSource 'ADYEN' \
    --notificationType 'QsxwgTTI' \
    --offset '35' \
    --paymentOrderNo 'qO9xjAXl' \
    --startDate 'BBSKOGO3' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'EeKoVF1e' \
    --limit '74' \
    --offset '97' \
    --status 'AUTHORISED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "CV7W7O3X", "currencyNamespace": "hNXFJbxC", "customParameters": {"1vlpJ0jW": {}, "wJsV9tEq": {}, "9od3XuiB": {}}, "description": "G5Cm0B79", "extOrderNo": "FuCd0e9Y", "extUserId": "BcbSzSJo", "itemType": "APP", "language": "ag-JkUA_Yd", "metadata": {"h4oe5Tr3": "3jgpPwjp", "uutnFGWF": "z86O0oUi", "w2i4jFgK": "6mjqOo9R"}, "notifyUrl": "hYATUuCy", "omitNotification": true, "platform": "W2HtXFcK", "price": 93, "recurringPaymentOrderNo": "VyeQ2VFn", "region": "yhfvWRrc", "returnUrl": "294U7eLn", "sandbox": true, "sku": "6xCcMURK", "subscriptionId": "0nUps30A", "targetNamespace": "hTtEZoDo", "targetUserId": "mJUsMVpI", "title": "qkiII5sF"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'zGeLmETv' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bH2KClEu' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FeDatQky' \
    --body '{"extTxId": "S9mWTClS", "paymentMethod": "pzEgkilE", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YbCUhziB' \
    --body '{"description": "zohIBKNF"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hfad5W60' \
    --body '{"amount": 0, "currencyCode": "pzsEXpc2", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 1, "vat": 88}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vZAqGQ4I' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'ZpAwOyeU' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "4QtVWjkQ", "serviceLabel": 91}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'RvHHkuEB' \
    --body '{"delegationToken": "ssuaXDkv", "sandboxId": "jsCIdu2M"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedPlatformOrigins": ["Playstation", "Nintendo", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["Steam", "Other", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'kmKVvO3e' \
    --limit '28' \
    --offset '9' \
    --source 'IAP' \
    --startTime 'TmauWmjb' \
    --status 'FAIL' \
    --transactionId '29DwHp9G' \
    --userId '6fcDv1VW' \
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
    --body '{"appConfig": {"appName": "xMoe8gT3"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "UHLGaLeK"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "jvFSzguP", "eventTopic": "2Azpgh3M", "maxAwarded": 53, "maxAwardedPerUser": 94, "namespaceExpression": "zBwDrlsl", "rewardCode": "jNldRZzl", "rewardConditions": [{"condition": "nfZSR3PL", "conditionName": "VyuHIyAh", "eventName": "g03glVLc", "rewardItems": [{"duration": 82, "endDate": "1982-04-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ky5qCQTc", "quantity": 97, "sku": "RWty42tO"}, {"duration": 59, "endDate": "1992-02-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3fQ9BZcn", "quantity": 53, "sku": "AhuvRLxE"}, {"duration": 47, "endDate": "1990-10-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5Uj5MO7g", "quantity": 54, "sku": "j7dY66z7"}]}, {"condition": "FbHigEfg", "conditionName": "CB1eXAZs", "eventName": "HEmp1eS5", "rewardItems": [{"duration": 88, "endDate": "1994-06-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7sxX5l7J", "quantity": 65, "sku": "nu4nAyKm"}, {"duration": 2, "endDate": "1999-04-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5XtB5rbN", "quantity": 54, "sku": "QwVndVgo"}, {"duration": 57, "endDate": "1988-08-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "D3dDHUq8", "quantity": 17, "sku": "5k5Yyg45"}]}, {"condition": "DvmwZA2T", "conditionName": "W0lWXeiW", "eventName": "xVaPB7OZ", "rewardItems": [{"duration": 75, "endDate": "1983-09-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NmPLHVlS", "quantity": 52, "sku": "RxPS3uQe"}, {"duration": 33, "endDate": "1971-11-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OpGNDf5Y", "quantity": 23, "sku": "kAGDkaok"}, {"duration": 90, "endDate": "1997-08-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2sxwPOGz", "quantity": 43, "sku": "2ia8rPAK"}]}], "userIdExpression": "qffaC5rR"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'dIn14sgQ' \
    --limit '15' \
    --offset '38' \
    --sortBy '["rewardCode:asc", "rewardCode:desc", "namespace:asc"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 199 'ImportRewards' test.out

#- 200 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'IAJQtt4H' \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'MJmnPduK' \
    --body '{"description": "jqLIYn0D", "eventTopic": "o6sb92hY", "maxAwarded": 2, "maxAwardedPerUser": 35, "namespaceExpression": "ooezLCfE", "rewardCode": "J5k6DaP8", "rewardConditions": [{"condition": "qIAahORB", "conditionName": "Go6MOepX", "eventName": "8bHCiHZA", "rewardItems": [{"duration": 86, "endDate": "1976-08-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vEqeC5dE", "quantity": 20, "sku": "Zb7iZ9qC"}, {"duration": 60, "endDate": "1982-01-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4q5Bplii", "quantity": 11, "sku": "p3f6gJtU"}, {"duration": 40, "endDate": "1990-11-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ZDi4qlxk", "quantity": 37, "sku": "8LxhnLj4"}]}, {"condition": "bUGelL6m", "conditionName": "Jj1LPJls", "eventName": "VXUQK5ad", "rewardItems": [{"duration": 15, "endDate": "1995-03-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "okD3zIP3", "quantity": 98, "sku": "w0NzPkLW"}, {"duration": 54, "endDate": "1989-06-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "q4UGojDr", "quantity": 48, "sku": "GWiTJwu9"}, {"duration": 97, "endDate": "1979-12-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tn0XETaQ", "quantity": 44, "sku": "fSKrp0If"}]}, {"condition": "mPVZqj97", "conditionName": "o8I7HEZu", "eventName": "g4owv9CM", "rewardItems": [{"duration": 36, "endDate": "1979-09-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5iBP8dY8", "quantity": 19, "sku": "hBplBA0Q"}, {"duration": 81, "endDate": "1994-02-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "shMtzs8J", "quantity": 29, "sku": "JWeMtsmG"}, {"duration": 50, "endDate": "1999-12-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "M7uCdViR", "quantity": 34, "sku": "0y6AaEKf"}]}], "userIdExpression": "QhGu1Z1Q"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'nS5irxDs' \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '2vm9gDFV' \
    --body '{"payload": {"VlpwaqHA": {}, "TXoFJM7V": {}, "Yk7CzkDq": {}}}' \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'xV0M4iLI' \
    --body '{"conditionName": "V7yqFvCB", "userId": "Sti8fnsH"}' \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'm4mNcp5l' \
    --limit '49' \
    --offset '20' \
    --start 'Ag5dO2K2' \
    --storeId 'ZngmVjZ4' \
    --viewId 'Ce1Wud6L' \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'dk7Aubln' \
    --body '{"active": true, "displayOrder": 35, "endDate": "1971-02-02T00:00:00Z", "ext": {"f6yLdU30": {}, "u07MEfLO": {}, "A24qRvdW": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 79, "itemCount": 99, "rule": "LOOP"}, "items": [{"id": "7NnAfVDa", "sku": "nAZ33YDl"}, {"id": "3DM1m4nI", "sku": "fCpd5Pzk"}, {"id": "SDtXDxmp", "sku": "1mfD9za8"}], "localizations": {"y59y1PCG": {"description": "mXUzUwze", "localExt": {"S1D3Q9T4": {}, "pUAF14fD": {}, "EJrxiS4x": {}}, "longDescription": "TGEyQOfA", "title": "a9Jkr7NL"}, "feuanpa2": {"description": "xbZ0uYbr", "localExt": {"ZqrJ1Mma": {}, "43AEuhVa": {}, "fBYciEqO": {}}, "longDescription": "ye58nJH9", "title": "xyFEfs7H"}, "dDSnEEaD": {"description": "lqpaeeGr", "localExt": {"i22vXG95": {}, "krpFl2HK": {}, "Gp05lKxV": {}}, "longDescription": "wnhCpnDQ", "title": "7bClyaHB"}}, "name": "4I0EasQR", "rotationType": "CUSTOM", "startDate": "1987-03-24T00:00:00Z", "viewId": "HQVHEcsC"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'IEibaBzJ' \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'OY0Xo5BR' \
    --storeId 'c0rcmTEC' \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'QtieFrLD' \
    --storeId 'DvaTyDJO' \
    --body '{"active": true, "displayOrder": 62, "endDate": "1987-10-01T00:00:00Z", "ext": {"snudBjNW": {}, "iun72vtn": {}, "FuELOU90": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 42, "itemCount": 55, "rule": "LOOP"}, "items": [{"id": "uOXAMj1G", "sku": "wDVt4dv6"}, {"id": "MAIXbKEg", "sku": "W1Vw2nS3"}, {"id": "PSNChFaY", "sku": "gp1m3cLT"}], "localizations": {"75bycO5i": {"description": "FHEcz7hz", "localExt": {"UnImpSup": {}, "RHkXc099": {}, "pbLqmqRy": {}}, "longDescription": "UrzNqmux", "title": "DcrNhf5p"}, "E1TOJT02": {"description": "BnxBKRR7", "localExt": {"3u7lgMx2": {}, "9tdagXfR": {}, "AyPjIGkb": {}}, "longDescription": "Xl4uIfpv", "title": "cZHhbqhO"}, "bMsy2lQh": {"description": "1ckB4nw2", "localExt": {"uFjlkJN9": {}, "w9p6l7hQ": {}, "cFQlzMka": {}}, "longDescription": "WdUli2fU", "title": "HN6138Ex"}}, "name": "JkslTN1v", "rotationType": "CUSTOM", "startDate": "1981-08-15T00:00:00Z", "viewId": "vvrEsAVb"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xpuDnH9W' \
    --storeId 'qb1XNQI7' \
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
    --body '{"defaultLanguage": "eyVXX38g", "defaultRegion": "OTAwY492", "description": "nAVF2bSB", "supportedLanguages": ["b7LV43Sj", "0vV2l3CJ", "KX5knwR6"], "supportedRegions": ["0SxQzQgO", "OczkWM1v", "6oaZoz2t"], "title": "E3UyMFw4"}' \
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
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["P3aSpwew", "aPdVdggW", "hUiKuquy"], "idsToBeExported": ["S2pFmQyj", "F6tm1nvy", "9ZCFK6Wu"], "storeId": "rCueMl0p"}' \
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
    --storeId 'gVQKEoXn' \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'mwFICW7Z' \
    --body '{"defaultLanguage": "TSWEQPbs", "defaultRegion": "UntWacOh", "description": "gdqmTErl", "supportedLanguages": ["xc9QayV5", "Ptr3mDMe", "wgLTMzA7"], "supportedRegions": ["rdMdO90I", "fAF7Yadn", "688EtoG0"], "title": "5poYYEO8"}' \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dhlzt8uU' \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'af4DZN5o' \
    --action 'UPDATE' \
    --itemSku 'ZOOkxQYL' \
    --itemType 'MEDIA' \
    --limit '58' \
    --offset '37' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'LWIOhPIW' \
    --updatedAtStart 'HOY0PEZi' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'F6ZrHMwU' \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '74KHOYpt' \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '7oo9MoYv' \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'qrCQjEUq' \
    --action 'DELETE' \
    --itemSku 'FsPfoyHD' \
    --itemType 'EXTENSION' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd '3dyjEnbn' \
    --updatedAtStart 'I7LJ60P3' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '8iTjemjg' \
    --action 'CREATE' \
    --itemSku 's5gUHM5G' \
    --itemType 'INGAMEITEM' \
    --type 'CATEGORY' \
    --updatedAtEnd 'bSd3L6OD' \
    --updatedAtStart 'ExX7Xfqz' \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '1FUgBViU' \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'nJpyT7Pz' \
    --namespace $AB_NAMESPACE \
    --storeId 'sg1vDZtH' \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'KGmvW3mU' \
    --namespace $AB_NAMESPACE \
    --storeId 'gPKzmXaW' \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'pqTBYTkG' \
    --targetStoreId 'W7kBgovP' \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'NRQLGXUJ' \
    --end '6oBreGg9' \
    --limit '40' \
    --offset '80' \
    --sortBy 'y9lpBlma' \
    --start '7obHFP9z' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'QXHuebwb' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'Sja6pWwR' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'GjOGRzsh' \
    --limit '96' \
    --offset '91' \
    --sku 'wgKTUJnT' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'BVtbTmyl' \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BzjY3z9U' \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'ZFn0ZuNN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'bcxuFe7c' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "3bNJ8v9h"}' \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'mTxckTXz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'RloRafM8' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 42, "orderNo": "mQd0dI6w"}' \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 89, "currencyCode": "xRaS8zuQ", "expireAt": "1987-09-18T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "afckV0bI", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 18, "entitlementCollectionId": "Gi8sQ3nc", "entitlementOrigin": "Other", "itemIdentity": "7Lb6ddLA", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "5dqHyYRt"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 70, "currencyCode": "yUs4NlH8", "expireAt": "1977-05-03T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "LSRFykRg", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "gUTvYXjI", "entitlementOrigin": "Oculus", "itemIdentity": "XSLa5uL9", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "W9qQh3HP"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 32, "currencyCode": "ENidSoJr", "expireAt": "1976-11-23T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "EkduXpsz", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 70, "entitlementCollectionId": "QpkNGVCL", "entitlementOrigin": "System", "itemIdentity": "DmzFT7HO", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "RBbjmlsa"}, "type": "FULFILL_ITEM"}], "userId": "xcvHzaoK"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 98, "currencyCode": "xVbRmsJf", "expireAt": "1975-07-03T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "UUN5KQEW", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "X897cgAL", "entitlementOrigin": "Nintendo", "itemIdentity": "ZkuHyjvu", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "Ik4OuECd"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 9, "currencyCode": "GqsObaJi", "expireAt": "1974-11-06T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "K5Zv2rK2", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "9BI9Udbd", "entitlementOrigin": "IOS", "itemIdentity": "fKA4KTVs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "mtDP4heK"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 24, "currencyCode": "QSm99Ojp", "expireAt": "1988-05-08T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "JeHURDVg", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "AK3H5Msx", "entitlementOrigin": "GooglePlay", "itemIdentity": "2irLSyF7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "UrMKsQtC"}, "type": "FULFILL_ITEM"}], "userId": "8dJhuu7M"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 77, "currencyCode": "yDiwfhMk", "expireAt": "1984-09-23T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "njspFUO1", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "etP3uzd8", "entitlementOrigin": "Other", "itemIdentity": "Zp3ZiVkH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "RMtVX09Q"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 13, "currencyCode": "AqIJ1jjy", "expireAt": "1980-09-25T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "nacViYKp", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 57, "entitlementCollectionId": "7pVFysGa", "entitlementOrigin": "System", "itemIdentity": "D0V7IEVV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "cPxyp2tt"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 49, "currencyCode": "g7kT82ey", "expireAt": "1991-12-04T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "HpZSYPHz", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 11, "entitlementCollectionId": "qGtUN972", "entitlementOrigin": "Epic", "itemIdentity": "BFLEsI2Z", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "joX0YAWs"}, "type": "DEBIT_WALLET"}], "userId": "zj8qLKm8"}], "metadata": {"Y2SLIw6W": {}, "oPTMvZrL": {}, "jEFl03P4": {}}, "needPreCheck": false, "transactionId": "RISlrasK", "type": "AVjY4I5z"}' \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '10' \
    --status 'SUCCESS' \
    --type 'YXof88GU' \
    --userId 'DX8zwfJt' \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'Ox9uVQ7m' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XSY4vAUt' \
    --body '{"achievements": [{"id": "vYdnopm0", "value": 23}, {"id": "zMOdNjxW", "value": 26}, {"id": "rKXPKmWS", "value": 50}], "steamUserId": "0LjTov4H"}' \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'XgHViJUI' \
    --xboxUserId 'bhh36m2v' \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'nRgCmKUc' \
    --body '{"achievements": [{"id": "8Bti6uGT", "percentComplete": 12}, {"id": "YOWEGRkA", "percentComplete": 34}, {"id": "UAgbs5jF", "percentComplete": 82}], "serviceConfigId": "24ivtsM0", "titleId": "sUzlJiBD", "xboxUserId": "Mv0mnPPe"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '4IBGvdw0' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'g1aRnFC2' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'vNcnK4YP' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '9riNlVmv' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '0jTpA2av' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'nnBQiDGS' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Ptlbipcq' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'eDeL5aui' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '2VvUfM8W' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'CYpsVnMR' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YR08lOGd' \
    --includeAllNamespaces 'true' \
    --status 'REVOKE_FAILED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'CtJ7zaYb' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --collectionId '1AsetizM' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'W6n4dw2L' \
    --features '["HjzeG6cf", "fFHwHqDg", "5lLYTBQh"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["8kiIdDl6", "QSABG6mE", "a19Nka75"]' \
    --limit '37' \
    --offset '67' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'knmfv9ct' \
    --body '[{"collectionId": "vtl5XXxZ", "endDate": "1975-04-05T00:00:00Z", "grantedCode": "MQ6kl7nb", "itemId": "M3B8ndLH", "itemNamespace": "Te3c9hay", "language": "PmLI", "metadata": {"Io0DP2Cd": {}, "LLz0JHWq": {}, "NNqqjBaJ": {}}, "origin": "Nintendo", "quantity": 84, "region": "B1i1hxuu", "source": "IAP", "startDate": "1997-06-08T00:00:00Z", "storeId": "lKUmMl4F"}, {"collectionId": "jpMrN8W9", "endDate": "1973-11-06T00:00:00Z", "grantedCode": "Eqpr1Ryh", "itemId": "DBTF3G76", "itemNamespace": "WmfLqlwb", "language": "OHR", "metadata": {"8UXvNVTF": {}, "mNeRzWIS": {}, "pGE6ksmp": {}}, "origin": "Epic", "quantity": 98, "region": "hfnRLKQ4", "source": "REFERRAL_BONUS", "startDate": "1976-08-28T00:00:00Z", "storeId": "GE5BKlFT"}, {"collectionId": "doa3y1QT", "endDate": "1986-04-03T00:00:00Z", "grantedCode": "4QNRdbbR", "itemId": "U02KFz4h", "itemNamespace": "RMdNWm2E", "language": "uKU-IIPW_sY", "metadata": {"nltqIQWF": {}, "5m96EyXm": {}, "PP7B22JP": {}}, "origin": "Xbox", "quantity": 37, "region": "5mtDyGHL", "source": "REDEEM_CODE", "startDate": "1989-06-02T00:00:00Z", "storeId": "rykim4AC"}]' \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MZeCvgWL' \
    --activeOnly 'false' \
    --appId 'yrJq8BKo' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'RivCDz08' \
    --activeOnly 'false' \
    --limit '89' \
    --offset '42' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'dNEOmBOq' \
    --ids '["xcmTGbtf", "nx3WJ0wK", "bYQDpe8W"]' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SHGoCgLV' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'iqX2uqsD' \
    --itemId '2VtwADRO' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'sX0IOFVV' \
    --ids '["yXr0ISC2", "PFGoZjWG", "pSNWODAo"]' \
    --platform '49HSNJyR' \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'nEL8OdmA' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'JZhPy71T' \
    --sku '7Ck0QJ21' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kmBFxX0v' \
    --appIds '["vHnkUaPu", "DhZehGTX", "KM3x1dQB"]' \
    --itemIds '["NUqcT6Nl", "6Bx5RI7m", "qo1P0K1p"]' \
    --platform 'DXUpEaoB' \
    --skus '["Ik5AAljV", "hXGmPoUL", "Nkjz0SDk"]' \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'idnxaVWh' \
    --platform 'rsTwfEQw' \
    --itemIds '["BHzPAhoR", "RYKaBnbf", "6vvML5dI"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5htxpUfZ' \
    --appId 'tC1rXKil' \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'dU4kc47s' \
    --entitlementClazz 'APP' \
    --platform 'izwaWJck' \
    --itemId 'vpBzwxiF' \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vwEXzMkE' \
    --ids '["sgUDJpEk", "YJeKrEA9", "ZM2jmF59"]' \
    --platform '6MA5NOUQ' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'DCRJbGjd' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'BigtP8Qi' \
    --sku 'sZPM91HU' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pbUt0Xyb' \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LcbbNefD' \
    --entitlementIds 'zlpzMau4' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '38wbZP9O' \
    --namespace $AB_NAMESPACE \
    --userId '3v5Ibl5D' \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'UT9XkkRs' \
    --namespace $AB_NAMESPACE \
    --userId 'it5ViRkt' \
    --body '{"collectionId": "yvEF49SS", "endDate": "1982-05-08T00:00:00Z", "nullFieldList": ["DfF2mMia", "jjISMrO6", "CFUOQ7DK"], "origin": "Twitch", "reason": "vEH71Aba", "startDate": "1996-12-03T00:00:00Z", "status": "ACTIVE", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'feVojEKO' \
    --namespace $AB_NAMESPACE \
    --userId 'VCYGgbB0' \
    --body '{"metadata": {"UckPLB2D": {}, "Eouohjmw": {}, "bQ0KdoGV": {}}, "options": ["7xPDDeaH", "sHoOgdvH", "lo7ofMQM"], "platform": "R3EMOat6", "requestId": "mYktGvEf", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'KDWTDqVq' \
    --namespace $AB_NAMESPACE \
    --userId 'zdk4o7iH' \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '5jr4Pwa7' \
    --namespace $AB_NAMESPACE \
    --userId 'OoageKNO' \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'aP2G6PQc' \
    --namespace $AB_NAMESPACE \
    --userId 'kyP8iBWc' \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'uiuwnqcR' \
    --namespace $AB_NAMESPACE \
    --userId 'Ir774PG4' \
    --body '{"metadata": {"cAOhBZha": {}, "T9s084S7": {}, "vvPLsDGn": {}}}' \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '1AgfWKX2' \
    --namespace $AB_NAMESPACE \
    --userId 'OlcuvzeR' \
    --body '{"reason": "pKvQUH6o", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'gNmBBc99' \
    --namespace $AB_NAMESPACE \
    --userId 'tSWfERRf' \
    --quantity '10' \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'HUVDCBiw' \
    --namespace $AB_NAMESPACE \
    --userId '7IhaCo02' \
    --body '{"platform": "Akez6tML", "requestId": "M7YclxWQ", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'L15CeG4k' \
    --body '{"duration": 2, "endDate": "1988-09-03T00:00:00Z", "entitlementCollectionId": "GYQA01N5", "entitlementOrigin": "Playstation", "itemId": "F8C29hIE", "itemSku": "mwTOekJ3", "language": "S74ob8r6", "metadata": {"f7ABrR0S": {}, "xA8VPWw6": {}, "whfYjyCs": {}}, "order": {"currency": {"currencyCode": "5OLvYLRK", "currencySymbol": "oy0x6F0G", "currencyType": "VIRTUAL", "decimals": 17, "namespace": "7zbYTJXb"}, "ext": {"RQBkP1fI": {}, "BEQwJOCQ": {}, "0mmFrTs4": {}}, "free": true}, "orderNo": "fAubTMe5", "origin": "GooglePlay", "overrideBundleItemQty": {"Px9aRPzW": 96, "WjeFWLzC": 39, "EPujOYk6": 73}, "quantity": 46, "region": "S6usmeeE", "source": "IAP", "startDate": "1986-09-07T00:00:00Z", "storeId": "PFZyVbsB"}' \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'QirhPwXR' \
    --body '{"code": "UO9jk8Fm", "language": "xLhC-ttwU", "region": "NYr0yGxA"}' \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'yiHmU0ss' \
    --body '{"itemId": "i2AYaz2E", "itemSku": "p1XAAtAC", "quantity": 39}' \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'HCWvYHQ4' \
    --body '{"entitlementCollectionId": "Hsh148LP", "entitlementOrigin": "Other", "metadata": {"qtPwe4Fb": {}, "YLyH2c1o": {}, "hAbwko6G": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "QWpFWTWT", "namespace": "TeMPzFfm"}, "item": {"itemId": "LsGSkaR5", "itemName": "EDuWTxQv", "itemSku": "W5n1YHPB", "itemType": "lPf2amHN"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "qbM8CQk4", "namespace": "P5UeZJlH"}, "item": {"itemId": "MFXzvoi0", "itemName": "Jb5xCQOK", "itemSku": "NVeXACHO", "itemType": "l4UbMaGi"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "yLurT8RD", "namespace": "XVXUq77z"}, "item": {"itemId": "VJ4oMtMQ", "itemName": "q8bwFdLp", "itemSku": "zOakMseT", "itemType": "F4NbFlgW"}, "quantity": 36, "type": "ITEM"}], "source": "REDEEM_CODE", "transactionId": "nhmdP0b4"}' \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '7vRBC9g9' \
    --endTime 'opuOCS25' \
    --limit '7' \
    --offset '72' \
    --productId 'eqYOsjDm' \
    --startTime 'gaMtHeXn' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oNNWSfNh' \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '4Gq8Vy2P' \
    --endTime 'crZuP6v6' \
    --limit '71' \
    --offset '74' \
    --startTime 'UkWKqC93' \
    --status 'PENDING' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QlyWeYCV' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "icE_779", "productId": "HfAgSgYo", "region": "Oub5xcCw", "transactionId": "KC0Cvewv", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '6Jjv2lto' \
    --body '{"skus": ["k3KAR6zJ", "LVWbnVWA", "zBQPTSSH"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'wucxU4yh' \
    --namespace $AB_NAMESPACE \
    --userId 'sa2R9KHx' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'YjJV2TPV' \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'OSieugX9' \
    --body '{"orderId": "QOn6oW7b"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId '5qHgK9MA' \
    --activeOnly 'true' \
    --groupId '1Rzg6VOr' \
    --limit '78' \
    --offset '69' \
    --platform 'TWITCH' \
    --productId 'e7KAKnNo' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'LMwhmrWG' \
    --groupId 'BtyEfJhW' \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId '6GcgrrGm' \
    --productId 'C1GLXGvm' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'ircEu88C' \
    --activeOnly 'true' \
    --groupId 'fX50EHTQ' \
    --limit '33' \
    --offset '72' \
    --platform 'GOOGLE' \
    --productId '5yhd5G0E' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'VMU3Rebt' \
    --namespace $AB_NAMESPACE \
    --userId 'VC18TCtc' \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'tnLqAyT0' \
    --namespace $AB_NAMESPACE \
    --userId 'coJLibdf' \
    --limit '19' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'UynKpC2i' \
    --namespace $AB_NAMESPACE \
    --userId 'NSiOg1WF' \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'bUMTRqMR' \
    --namespace $AB_NAMESPACE \
    --userId 'A4PUaxu3' \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id '7mp6IJB2' \
    --namespace $AB_NAMESPACE \
    --userId 'oEF8RZTf' \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mrjIkEnQ' \
    --discounted 'true' \
    --itemId 'HxLGKh1V' \
    --limit '85' \
    --offset '72' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'RMqTrIWE' \
    --body '{"currencyCode": "OO9sF9ce", "currencyNamespace": "7rbCOi04", "discountCodes": ["F4KYwzsk", "0fPb1GAk", "O2iDyxjD"], "discountedPrice": 94, "entitlementPlatform": "Steam", "ext": {"Xlanr6w4": {}, "Y1AJ2Nt1": {}, "Ion5fODi": {}}, "itemId": "i4VpVJV1", "language": "Epw57e9j", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 66, "quantity": 8, "region": "bOpHa1jh", "returnUrl": "NUSY5dbY", "sandbox": true, "sectionId": "mL4Z2q0M"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'mwA9sEuu' \
    --itemId 'TG1lTZA9' \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5SfkIFNd' \
    --userId 'sDmeFI9l' \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'Wvri4nBs' \
    --userId 'tvJXXBs2' \
    --body '{"status": "CLOSED", "statusReason": "MtEugZTd"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Lm11yikW' \
    --userId 'LTxuIa3z' \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '3LIYTP0D' \
    --userId 'i2e10erF' \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'DGwIRMyo' \
    --userId 'D2MrtY1e' \
    --body '{"additionalData": {"cardSummary": "rUAiRFWE"}, "authorisedTime": "1980-12-21T00:00:00Z", "chargebackReversedTime": "1984-03-12T00:00:00Z", "chargebackTime": "1999-04-02T00:00:00Z", "chargedTime": "1986-05-21T00:00:00Z", "createdTime": "1982-12-19T00:00:00Z", "currency": {"currencyCode": "SgSwmDJz", "currencySymbol": "HoDNxNTT", "currencyType": "REAL", "decimals": 6, "namespace": "K5e4uaau"}, "customParameters": {"nwi9xYxh": {}, "cU4t9wpg": {}, "7DTiOAhf": {}}, "extOrderNo": "45Ves2pH", "extTxId": "1UwDFNbt", "extUserId": "sNVCCmbM", "issuedAt": "1983-01-20T00:00:00Z", "metadata": {"857C6uYa": "a3GYDEnr", "U5ksVfWf": "WpqiT0e7", "fEnAtWbi": "zeXWOtvi"}, "namespace": "AShinFbh", "nonceStr": "TWOTQHhQ", "paymentData": {"discountAmount": 57, "discountCode": "pgsyauIr", "subtotalPrice": 87, "tax": 34, "totalPrice": 85}, "paymentMethod": "E9QzUhyY", "paymentMethodFee": 24, "paymentOrderNo": "tivblTSB", "paymentProvider": "WALLET", "paymentProviderFee": 38, "paymentStationUrl": "sl3WiBKV", "price": 56, "refundedTime": "1973-10-16T00:00:00Z", "salesTax": 87, "sandbox": true, "sku": "xH2oXrU4", "status": "INIT", "statusReason": "GjHkAIwI", "subscriptionId": "x8JzyEbk", "subtotalPrice": 83, "targetNamespace": "yj9Kehdo", "targetUserId": "GBVnLSWl", "tax": 27, "totalPrice": 24, "totalTax": 71, "txEndTime": "1976-06-16T00:00:00Z", "type": "kCYJIrsg", "userId": "tZF2Vncv", "vat": 28}' \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'b7yaBp7D' \
    --userId 'dFtz2izl' \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Mizw4xVC' \
    --body '{"currencyCode": "j5DvHUKq", "currencyNamespace": "y02j34r1", "customParameters": {"UeX3Ushj": {}, "6igS4bib": {}, "opU5Aepq": {}}, "description": "DSw0n6a8", "extOrderNo": "13jRDcdL", "extUserId": "MNBKRgkl", "itemType": "BUNDLE", "language": "ALx", "metadata": {"zHeMZkQ1": "WlfogCmH", "AhzWzj5Y": "IAG1EyBg", "TXyan8hb": "NUEpQ8FH"}, "notifyUrl": "LJoG5nK4", "omitNotification": false, "platform": "Ms0a2pad", "price": 61, "recurringPaymentOrderNo": "HfjvLmv3", "region": "OBVTXjlo", "returnUrl": "OKyJZIub", "sandbox": false, "sku": "dV43Msr2", "subscriptionId": "E41PN80i", "title": "ClsV0mha"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hbCSYnKN' \
    --userId 'VxG0xsda' \
    --body '{"description": "LooxSNFx"}' \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'd7wRBATx' \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'xG4oGOVa' \
    --body '{"code": "2L5Ji2AH", "orderNo": "rQcEk6Mn"}' \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'NiwwmZl7' \
    --body '{"meta": {"ZDBpp5eJ": {}, "BrChZRDV": {}, "5BQIRcQZ": {}}, "reason": "vvbiQV8E", "requestId": "5sBAmyqm", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "5RinLOTy", "namespace": "y35JnYPB"}, "entitlement": {"entitlementId": "t15khSyt"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "WqE5BKR6", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 25, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "Lq14cq3Z", "namespace": "WGUL11zv"}, "entitlement": {"entitlementId": "eyzfcnxl"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "ST5POmVd", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 55, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "OdexsaoJ", "namespace": "TNn2nMYB"}, "entitlement": {"entitlementId": "WPPNJ0qj"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "6hwRUAnp", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 75, "type": "ITEM"}], "source": "IAP", "transactionId": "GPzVF8cC"}' \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'bPKBcm3Z' \
    --body '{"gameSessionId": "RBucBTtn", "payload": {"5KMP2kfj": {}, "V3WtEr0c": {}, "YggaZhNM": {}}, "scid": "VrTFwz1W", "sessionTemplateName": "U4id397Y"}' \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'r3Bm9SeC' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'Q6f1rMTU' \
    --limit '87' \
    --offset '100' \
    --sku 'xzww3iS1' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '43COGx0J' \
    --excludeSystem 'true' \
    --limit '9' \
    --offset '64' \
    --subscriptionId 'kmB3G9GV' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jBwJCR5L' \
    --body '{"grantDays": 39, "itemId": "0fi1vVLi", "language": "bMUWGZPR", "reason": "cy6JuyUX", "region": "RPXnYGrP", "source": "Q9HuYEsW"}' \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1B57g8MA' \
    --itemId '3prGAblV' \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2R2ukzWA' \
    --userId 'u6aluIdi' \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xHMrW2Ig' \
    --userId 'rgCxnWQE' \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tbMnQhid' \
    --userId 'We0poQQZ' \
    --force 'false' \
    --body '{"immediate": false, "reason": "5GGP1j4y"}' \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hIl1pepP' \
    --userId 'G6ILJjka' \
    --body '{"grantDays": 98, "reason": "LfszsrXu"}' \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pJWjNPbP' \
    --userId 'w11XFUb3' \
    --excludeFree 'true' \
    --limit '84' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Xg5JPCQL' \
    --userId 'k2fBdX0F' \
    --body '{"additionalData": {"cardSummary": "XgNwNTr7"}, "authorisedTime": "1985-02-27T00:00:00Z", "chargebackReversedTime": "1985-03-12T00:00:00Z", "chargebackTime": "1999-03-22T00:00:00Z", "chargedTime": "1991-01-21T00:00:00Z", "createdTime": "1990-02-20T00:00:00Z", "currency": {"currencyCode": "OtmLWani", "currencySymbol": "GhQoQ1qK", "currencyType": "REAL", "decimals": 92, "namespace": "S4xe6e1x"}, "customParameters": {"r8hH3ldy": {}, "JBiUP5uY": {}, "tPoV5pwl": {}}, "extOrderNo": "L6YpazLO", "extTxId": "nSbjEs9B", "extUserId": "uZffY2bF", "issuedAt": "1983-08-14T00:00:00Z", "metadata": {"SrrNJp99": "YODdONZv", "fZ6jT9jt": "lpE8tDx4", "ONAnAAmV": "QOlMsiHy"}, "namespace": "ipSqfHvZ", "nonceStr": "k8Nu1Nju", "paymentData": {"discountAmount": 35, "discountCode": "ushrrsSD", "subtotalPrice": 37, "tax": 36, "totalPrice": 28}, "paymentMethod": "uDUKRzSD", "paymentMethodFee": 37, "paymentOrderNo": "2e6PTwfw", "paymentProvider": "WALLET", "paymentProviderFee": 35, "paymentStationUrl": "wLuzF8Ix", "price": 26, "refundedTime": "1993-09-23T00:00:00Z", "salesTax": 39, "sandbox": true, "sku": "ZktidJWe", "status": "REFUND_FAILED", "statusReason": "tabC0eVP", "subscriptionId": "Zm2wwCq5", "subtotalPrice": 73, "targetNamespace": "vB6JMyAr", "targetUserId": "qovyQ5Qu", "tax": 43, "totalPrice": 17, "totalTax": 22, "txEndTime": "1983-05-26T00:00:00Z", "type": "FoXKaRcl", "userId": "T0FbwG3P", "vat": 77}' \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'hIwWsboQ' \
    --namespace $AB_NAMESPACE \
    --userId 'tVQchI3k' \
    --body '{"count": 95, "orderNo": "lQ4ohMWV"}' \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'fWJbZmVu' \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'QCRzrxV7' \
    --namespace $AB_NAMESPACE \
    --userId '5RgpdASW' \
    --body '{"allowOverdraft": false, "amount": 12, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"yJQbceX9": {}, "ZIZR1u2q": {}, "iIgGe2V7": {}}, "reason": "7meV1yq3"}' \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'DLyduEsf' \
    --namespace $AB_NAMESPACE \
    --userId 'ZEUOrRFR' \
    --limit '82' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'FHUaoSVy' \
    --namespace $AB_NAMESPACE \
    --userId 'xTlHjrZY' \
    --request '{"amount": 77, "debitBalanceSource": "PAYMENT", "metadata": {"BbQ0IpsV": {}, "3t5zSgNJ": {}, "3qVkwMXo": {}}, "reason": "hJJxcfTp", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Dw9MlUSb' \
    --namespace $AB_NAMESPACE \
    --userId '2GJlQ6OY' \
    --body '{"amount": 3, "expireAt": "1989-03-12T00:00:00Z", "metadata": {"qk4UrIBP": {}, "6IUcDDhn": {}, "e97fp6yv": {}}, "origin": "System", "reason": "jZZ8Dmyq", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '5DrABVNO' \
    --namespace $AB_NAMESPACE \
    --userId '774nLmEe' \
    --request '{"amount": 71, "debitBalanceSource": "PAYMENT", "metadata": {"nxbqP6v8": {}, "JKkfvBpL": {}, "4F9jUvFr": {}}, "reason": "MnH0dAGH", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Vb1rP94w' \
    --namespace $AB_NAMESPACE \
    --userId 'BqWxxSUv' \
    --body '{"amount": 59, "metadata": {"2VexQ9bF": {}, "sZSLG8Tp": {}, "piOScJIS": {}}, "walletPlatform": "Playstation"}' \
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
    --storeId 'YVEZFL1T' \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '0aqxG2Bo' \
    --body '{"displayOrder": 28, "localizations": {"Qsa7y6QO": {"description": "fZRT10oy", "localExt": {"OtiDubQn": {}, "Qy8D6wq8": {}, "B6Gvsxn3": {}}, "longDescription": "cEebH38H", "title": "6bD6ZfZd"}, "2l1CA0eS": {"description": "5o0hTUPM", "localExt": {"Jgo5V4LC": {}, "YBnWXxA9": {}, "ACKOT6bg": {}}, "longDescription": "9rD665Ms", "title": "b5hUYXkg"}, "fxsqns5O": {"description": "9Wtd9lJr", "localExt": {"pxzTitoY": {}, "H4dC33Bu": {}, "847g8BXo": {}}, "longDescription": "aLsDGuf7", "title": "o6VcyEEl"}}, "name": "mQcsbskN"}' \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'NvFXcCT0' \
    --storeId 'OKCIRcSZ' \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Q38ouqso' \
    --storeId 'L4vaaEze' \
    --body '{"displayOrder": 37, "localizations": {"WIUchp9d": {"description": "hz5MP75I", "localExt": {"0MWmBz2E": {}, "7fbrbUi8": {}, "CQZKdbpC": {}}, "longDescription": "Vz5i2CWV", "title": "WBZtnuSm"}, "5QV5Z8xy": {"description": "Rw1qxw8L", "localExt": {"FZpKZHyS": {}, "SbpVhUcV": {}, "7G08DYUe": {}}, "longDescription": "O3kgNJpH", "title": "ZMN4HeJI"}, "x7G6NRiP": {"description": "wo856CnJ", "localExt": {"5XP9TYYO": {}, "yOuQc0np": {}, "iEWCp78u": {}}, "longDescription": "cx8o0z5N", "title": "th9PMn88"}}, "name": "vdiOGxIJ"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'acHN3iwA' \
    --storeId 'f4DyERIb' \
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
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateWalletConfig' test.out

#- 355 QueryWallets
eval_tap 0 355 'QueryWallets # SKIP deprecated' test.out

#- 356 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 1, "expireAt": "1985-03-10T00:00:00Z", "metadata": {"J7xIDf7M": {}, "9P2BkCW5": {}, "Qv0vgMag": {}}, "origin": "Steam", "reason": "zABvcyCc", "source": "REFERRAL_BONUS"}, "currencyCode": "XTDAxOKS", "userIds": ["eGMhfLnr", "Z8SoZLvB", "lTuR2d5V"]}, {"creditRequest": {"amount": 66, "expireAt": "1985-11-15T00:00:00Z", "metadata": {"kYbwyV52": {}, "TYdFZUZ5": {}, "Qmwz52qt": {}}, "origin": "Steam", "reason": "KDdfSO71", "source": "ACHIEVEMENT"}, "currencyCode": "jl8ypSch", "userIds": ["y1pq9IgQ", "75LPKnOF", "2HZR3Xih"]}, {"creditRequest": {"amount": 73, "expireAt": "1980-12-05T00:00:00Z", "metadata": {"kSgQx8hx": {}, "XjUc5a3c": {}, "jHJv0KTt": {}}, "origin": "Other", "reason": "hfFqA9GF", "source": "PURCHASE"}, "currencyCode": "MmlDHOOF", "userIds": ["NLuG4Ea2", "2gf4AdSO", "Koz6W103"]}]' \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "D9DrPATY", "request": {"allowOverdraft": true, "amount": 43, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"eTGjtC9X": {}, "jpVVwJPu": {}, "URYy8zD9": {}}, "reason": "48nUI0x4"}, "userIds": ["o3LRT3kQ", "8YnrYxSg", "nJ6fk3tp"]}, {"currencyCode": "0L4tizhu", "request": {"allowOverdraft": true, "amount": 68, "balanceOrigin": "GooglePlay", "balanceSource": "DLC_REVOCATION", "metadata": {"emddB2td": {}, "3jmcInZx": {}, "R2FBSc1k": {}}, "reason": "qUd0df7L"}, "userIds": ["PxjocFxl", "guEvqoi8", "P1ovUOuN"]}, {"currencyCode": "1LVsx1ff", "request": {"allowOverdraft": true, "amount": 40, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"KqYuuSYZ": {}, "ouw3mrbY": {}, "3MiBXIYE": {}}, "reason": "s3bBmwzX"}, "userIds": ["K2brwr2X", "Ts8lUmGH", "NqUFjBqi"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '5g77kAeZ' \
    --end 'AlXGBbMW' \
    --start 't5HWpOam' \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["gNS4FJRQ", "FOW4TkyO", "D1QZGB9h"], "apiKey": "Z2NdX67P", "authoriseAsCapture": false, "blockedPaymentMethods": ["EzSA1FOJ", "ckzgPnzJ", "2oVutUjR"], "clientKey": "Fdrxy5xc", "dropInSettings": "Zq9e2c8L", "liveEndpointUrlPrefix": "Wxh1bg0m", "merchantAccount": "DG5LdvVE", "notificationHmacKey": "fe5qprwV", "notificationPassword": "127RsInh", "notificationUsername": "mkAWqRH4", "returnUrl": "ys5GQP5b", "settings": "DGKImtl8"}' \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "LEY0cWVZ", "privateKey": "VQ7E0dAh", "publicKey": "ij9lPt7F", "returnUrl": "YcVasJqR"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "pNgSgokq", "secretKey": "NZ2kxmuu"}' \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'pYxSxIdJ' \
    --region 'yPlPQPcp' \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "wEorPPqg", "webhookSecretKey": "LKyZPl8m"}' \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "rIwID1l4", "clientSecret": "SGCFiE1d", "returnUrl": "740ozhSk", "webHookId": "eQODKQQD"}' \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["B8oKc3nW", "w803t5u7", "tGIoQhB1"], "publishableKey": "XaukG29j", "secretKey": "CeTzBMBQ", "webhookSecret": "02ck16Y6"}' \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "hUKABOnR", "key": "uHbckySH", "mchid": "9aUPA9Du", "returnUrl": "iZbxFami"}' \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "JOVESI77", "flowCompletionUrl": "QCy8xBzz", "merchantId": 40, "projectId": 33, "projectSecretKey": "0kylvhHY"}' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'FwRGLgHK' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'Aiy8RoSr' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["CgQfjCQm", "RKTRHkfd", "IBhxGMn1"], "apiKey": "JPUzmpPb", "authoriseAsCapture": true, "blockedPaymentMethods": ["KuXNbx1V", "dHmLE6Pw", "ilBiRXhr"], "clientKey": "ua7PwZlj", "dropInSettings": "vYfmDBR9", "liveEndpointUrlPrefix": "nDDqLGuz", "merchantAccount": "vaePOAKD", "notificationHmacKey": "BxFqqg9Z", "notificationPassword": "lUvdfVTn", "notificationUsername": "PuDw1RVG", "returnUrl": "CAVCkIgH", "settings": "UAMmfpg3"}' \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'L7mIyA1V' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'kRbjXgRn' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "vvACRRpG", "privateKey": "APVr4pA8", "publicKey": "b1rt4CAB", "returnUrl": "WBX6M6eW"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'jPj1DR8y' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'hPLY8CeL' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "37kdZAN7", "secretKey": "hKEjHVgH"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '4UprNfJx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'cjpAioMi' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "kK3gIFfr", "webhookSecretKey": "QVhLiF9B"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'aDX0evfO' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'mVT7NBbT' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "BVmXySDP", "clientSecret": "v0LVHgA1", "returnUrl": "GgmgyAsk", "webHookId": "krC8irXC"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'T8hwDv6S' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '1h3FRCxI' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["1PpnKWK5", "ualLwSAM", "pr9Y3iWn"], "publishableKey": "SrFgT1qA", "secretKey": "U9yO6H0w", "webhookSecret": "OskVoWRt"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'KF60QvSA' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'VUTuV8Rt' \
    --validate 'false' \
    --body '{"appId": "8XcsvCvo", "key": "BCA8UJf4", "mchid": "amCMFYRC", "returnUrl": "tsk0OZoH"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'V9OeCbDh' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'rX7eDHef' \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'XORGajoE' \
    --validate 'true' \
    --body '{"apiKey": "wyvr03sv", "flowCompletionUrl": "gWK9HK6n", "merchantId": 10, "projectId": 48, "projectSecretKey": "PtEog9k9"}' \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'OIEQ084S' \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '0zH04kvd' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '52' \
    --namespace 'rt7605VV' \
    --offset '44' \
    --region '4FwPI7C1' \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "HvbAxcI7", "region": "wcdizEWn", "sandboxTaxJarApiToken": "5YHRYMkk", "specials": ["XSOLLA", "CHECKOUT", "PAYPAL"], "taxJarApiToken": "WggR6ijr", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'hwOpWxil' \
    --region 'XQVCSOnB' \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'SJmPNpin' \
    --body '{"aggregate": "XSOLLA", "namespace": "qiV5iQ8q", "region": "cCpY3jck", "sandboxTaxJarApiToken": "Mpyk3FzZ", "specials": ["NEONPAY", "PAYPAL", "STRIPE"], "taxJarApiToken": "rm3inPkO", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YqSj21Fv' \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "TMbm7LGM", "taxJarApiToken": "bq1MNPF8", "taxJarEnabled": true, "taxJarProductCodesMapping": {"hP1dZfu9": "fwzvIqKv", "ejMBd53B": "A2lbfsd8", "ZsdXNpcf": "NKndbVPP"}}' \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'E2uAMkwr' \
    --end 'b7hiRDi0' \
    --start 'r7NJBNDd' \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'WZhA7ovp' \
    --storeId 'YZNX8sHC' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '9HVpT2BZ' \
    --storeId 'dXcukcym' \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'uHmA0NQB' \
    --namespace $AB_NAMESPACE \
    --language 'd4QdCWC8' \
    --storeId 'UG7IYXsm' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '2HSTbpsG' \
    --namespace $AB_NAMESPACE \
    --language 'Woc1m9yh' \
    --storeId 'DXqlaUJg' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'gkIErfBp' \
    --namespace $AB_NAMESPACE \
    --language 'y0nF3Vl6' \
    --storeId 'T8lgHLZY' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetDescendantCategories' test.out

#- 403 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 403 'PublicListCurrencies' test.out

#- 404 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
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
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 406 'GetIAPItemMapping' test.out

#- 407 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'XfN5OgWC' \
    --region 'yAZliQH9' \
    --storeId '7y3Ta7YQ' \
    --appId 'DoZqBXBi' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'dhOYwCvE' \
    --categoryPath 'ApGFHOcT' \
    --features 'sBAb19Ig' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --language 'GArPWdzw' \
    --limit '64' \
    --offset '92' \
    --region 'hybJmf2e' \
    --sortBy '["name:desc", "displayOrder:asc", "createdAt:desc"]' \
    --storeId 'tbdUqlXL' \
    --tags 'NsP7WFyn' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'ltLRm7Md' \
    --region 'EJ2NlbY0' \
    --storeId 'zeMtL0Eg' \
    --sku '2QCwfyj6' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'xZHFtHmd' \
    --storeId 'JAHqrqES' \
    --itemIds 'oSNIJVEU' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'lPIdwL0C' \
    --region 'R6UjwBOZ' \
    --storeId 'RxHdrQ6O' \
    --itemIds 'K6jLazXK' \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["7c6erOSK", "5dcxJNoP", "oBxeUrKO"]}' \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '91' \
    --offset '30' \
    --region '24ZOf6te' \
    --storeId '9qOCsobD' \
    --keyword 'WrznCHy5' \
    --language 'A8Ub8agz' \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'bSAX1ffQ' \
    --namespace $AB_NAMESPACE \
    --language 'k9KWSVVS' \
    --region 'vXLWJZra' \
    --storeId '2g6ABliP' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'jqNmaXZC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '1JUXxfWl' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'joFOBiFA' \
    --populateBundle 'true' \
    --region '1KgLgDGa' \
    --storeId 'zzhUvsVh' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "hvfBHgU2", "successUrl": "IxgS4rTc"}, "paymentOrderNo": "xkDgN4mY", "paymentProvider": "WXPAY", "returnUrl": "mbZwHqOK", "ui": "OOA04dVj", "zipCode": "YXdoxfal"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OXUgfhYN' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YoS9tzp4' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mTDIKWnF' \
    --paymentProvider 'WALLET' \
    --zipCode 'akq4Uj2G' \
    --body '{"token": "wVqRfYue"}' \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5ndURrb8' \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'JI2mvWMI' \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'JYt7Wm0q' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'J4EP1ofN' \
    --foreinginvoice 'NGhikD31' \
    --invoiceId 'bYh9Rsnd' \
    --payload 'OzCTu1cx' \
    --redirectResult 'UAu4Inb7' \
    --resultCode 'ErxEYdCR' \
    --sessionId 's9Za9y82' \
    --status 'SGKhrEo7' \
    --token 'l6tcaZMk' \
    --type '1cfwejTV' \
    --userId 'v1ueNmQt' \
    --orderNo 'iocZLseR' \
    --paymentOrderNo 'XLhkECc4' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'RfWg23cM' \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'jpxKABAf' \
    --paymentOrderNo 'PBi9bR3f' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'ORM3wquI' \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '40Tu3Qvs' \
    --limit '40' \
    --offset '37' \
    --sortBy '["rewardCode", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'UerlMj9m' \
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
    --appIds '["M2jjccXB", "fSaYkRIh", "2T6Qkmvy"]' \
    --itemIds '["CWlaqYzD", "2Rvsjvhb", "HLYFrvCE"]' \
    --skus '["SkCzLPQx", "hMgYMk8i", "MusEYBAZ"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'LVGqqKn2' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId '2XkAe3Ti' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'HlXq6H2H' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["g5v01BHu", "beD5P6UK", "sRHVHrXw"]' \
    --itemIds '["2tKFLIMg", "DClIrhnc", "6OL2cDjj"]' \
    --skus '["iSDu0Oh2", "mux9gw4H", "opnQb4EK"]' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "Sxtf6cCD", "language": "NcL", "region": "2hFnDwMw"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'myj2ifLf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UwcitGpG' \
    --body '{"epicGamesJwtToken": "BHoqqfxc"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '9wzmFkgy' \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'OScaB4Y2' \
    --body '{"serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'i0fPnIFf' \
    --body '{"serviceLabels": [7, 94, 22]}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'xcSfo7lk' \
    --body '{"appId": "6FmyRJok", "steamId": "KckQpNpe"}' \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'F2xRkczU' \
    --body '{"xstsToken": "8Mni9FhM"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'BB3iu2BZ' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'UxSsj1sS' \
    --features '["OXp1NU0o", "zLjgm5Mn", "bqj9EkND"]' \
    --itemId '["FTdBb4qZ", "4Xn58DPy", "CGjdCnEb"]' \
    --limit '97' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rGZj2OUq' \
    --appId 'RqHsGb40' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '1bE6yCjm' \
    --limit '78' \
    --offset '89' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'DiT75yns' \
    --availablePlatformOnly 'false' \
    --ids '["BH76GUuX", "0rmJ7SBp", "p1I0MZ2P"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'WfY7GAru' \
    --endDate 'aSDZvSIo' \
    --entitlementClazz 'LOOTBOX' \
    --limit '73' \
    --offset '12' \
    --startDate 'GSmkYL3h' \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JePE94er' \
    --appIds '["9YzCv0Hi", "DVFF5VLM", "ZxkeyGAV"]' \
    --itemIds '["fagsnYeG", "UEGvK3RX", "CqGEjyZL"]' \
    --skus '["3bU39Xyd", "5ymT0YdO", "fT1ydPPQ"]' \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '0AyUAxIv' \
    --appId 'dZfA5aAk' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jAS3UgKS' \
    --entitlementClazz 'MEDIA' \
    --itemId 'llxYxpcF' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'AOTnJgN2' \
    --ids '["04HoOZqD", "nhIqTitJ", "Tj0rWpcU"]' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'T3TJJ7WV' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'EdF3i8EK' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'WYlhJJdK' \
    --namespace $AB_NAMESPACE \
    --userId 'FYHgsaVE' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'oX2P8j0V' \
    --namespace $AB_NAMESPACE \
    --userId 'xVwNv8Tb' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["yHoGENJa", "XDGStsLN", "XKDdnF5Z"], "requestId": "79Y9Dkfd", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'Rqzn5pma' \
    --namespace $AB_NAMESPACE \
    --userId 'xYEQFk8U' \
    --body '{"requestId": "a1zGhlFV", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'M8QxQfxu' \
    --namespace $AB_NAMESPACE \
    --userId 'XmlVob25' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '9Nl4BrqR' \
    --namespace $AB_NAMESPACE \
    --userId 'CYDhTdOJ' \
    --body '{"entitlementId": "TnnGwXGF", "metadata": {"operationSource": "INVENTORY"}, "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'AErHV3do' \
    --body '{"code": "bAlyJ3rc", "language": "Log-iESn", "region": "u38qre9P"}' \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'O9BtMzpN' \
    --body '{"excludeOldTransactions": true, "language": "DhXH", "productId": "Xv8FmVyS", "receiptData": "PIyzXTeD", "region": "uPT6SDiJ", "transactionId": "zjiBSGpD"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'PPTwqCfn' \
    --body '{"epicGamesJwtToken": "GfLqubyd"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'NsXxesu8' \
    --body '{"autoAck": false, "autoConsume": true, "language": "KjPu_bsJh", "orderId": "lxFIMnqA", "packageName": "M2EaTqNC", "productId": "cKy5JU8v", "purchaseTime": 32, "purchaseToken": "yAVDcxSm", "region": "eEzKw8pC", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'nx47wEZZ' \
    --body '{"skus": ["TiZvtJWC", "2gDpxx72", "bVtQgIM7"]}' \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PBWDSuLM' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'EpAGefst' \
    --body '{"currencyCode": "37ROcf2O", "price": 0.6782565976220905, "productId": "11HZryPn", "serviceLabel": 32}' \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'w6LxeOvw' \
    --body '{"currencyCode": "5FSKlGU7", "price": 0.21832115074031044, "productId": "xHQ8hs5Z", "serviceLabels": [64, 61, 71]}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'tu2uin9w' \
    --body '{"appId": "sSpGyXbO", "currencyCode": "kgo0uocj", "language": "jlja_VXdy_778", "price": 0.3392649257899094, "productId": "S2Kv4gg0", "region": "gxs1kJSq", "steamId": "36lPIHeI"}' \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'NPkc00vg' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'eWNCyeSY' \
    --body '{"orderId": "CX6j6MYq"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'QDtDbkzc' \
    --activeOnly 'false' \
    --groupId 'bkRIAag8' \
    --limit '5' \
    --offset '20' \
    --productId 'btX1Vc7T' \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'pmFv1i48' \
    --body '{"gameId": "5i8O0l9t", "language": "NqPw", "region": "980WID9U"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qTRTLTNx' \
    --body '{"currencyCode": "JoOmQQnZ", "price": 0.05585865380130539, "productId": "4J3h74Yn", "xstsToken": "qydTLHjF"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'w7NLMG16' \
    --discounted 'false' \
    --itemId 'BD0DJ1Bl' \
    --limit '57' \
    --offset '80' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'oUtStZw5' \
    --body '{"currencyCode": "Aa0vKKOq", "discountCodes": ["uaSBBudB", "XsRk6pkI", "FPRu0OE8"], "discountedPrice": 98, "ext": {"9Vs0eVTR": {}, "DG9x3PbX": {}, "qbfYyYOV": {}}, "itemId": "4QYyf4Mi", "language": "Wd", "price": 15, "quantity": 8, "region": "SvOZ19js", "returnUrl": "uISpfXa6", "sectionId": "cX386cXe"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'LfjjTSf1' \
    --body '{"currencyCode": "P6GRV5mV", "discountCodes": ["1Qy8EDPh", "ZSPkHcO3", "P0ZhS64T"], "discountedPrice": 34, "itemId": "cYXjJZKS", "price": 56, "quantity": 34}' \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'a9GaAqVu' \
    --userId 'MADwgAeT' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EKF311lW' \
    --userId 'XriP903g' \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'L3C96rEA' \
    --userId 'ejWXmgzy' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'pwN3q483' \
    --userId 'B5jMtp5D' \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'GAF2sUXY' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'eH02qZ5N' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '2UwDLnvd' \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'MprcvDqV' \
    --autoCalcEstimatedPrice 'true' \
    --language 'Si5GjLzi' \
    --region 'gpLHGbvZ' \
    --storeId 'LPDuERR0' \
    --viewId 'xKph5U17' \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'PrtpbtpQ' \
    --chargeStatus 'CHARGED' \
    --itemId 'PwsTGmls' \
    --limit '86' \
    --offset '78' \
    --sku 'TnnlkzWT' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'JsCKjOin' \
    --body '{"currencyCode": "7Q6cPX9y", "itemId": "jj5qKfBL", "language": "rm_Hg", "region": "J9yUio7h", "returnUrl": "nEfeqHQA", "source": "hPpawLW9"}' \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 't4SaIHvr' \
    --itemId 'LVvSsqN0' \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gvne3XO9' \
    --userId 'uawuV3vi' \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SEdgrVle' \
    --userId '5gapAkwQ' \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'v9PQSRrz' \
    --userId 'wrMFVMJD' \
    --body '{"immediate": true, "reason": "QQUtTOhz"}' \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RtzBlT0f' \
    --userId 'YI4vVsMf' \
    --excludeFree 'true' \
    --limit '91' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'vY7nOcJ9' \
    --language 'qCkmHcgT' \
    --storeId 'KT2PQaJg' \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '5NO7exOV' \
    --namespace $AB_NAMESPACE \
    --userId 'G3Eh7Wa9' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'vjjRUE8r' \
    --namespace $AB_NAMESPACE \
    --userId 'B1DFHL2W' \
    --limit '60' \
    --offset '85' \
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
    --endTime 'JI6e2nsU' \
    --limit '32' \
    --offset '34' \
    --startTime 'iHk3FT98' \
    --state 'FULFILLED' \
    --transactionId 'pdc1V6Me' \
    --userId 'GExIaeTo' \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'VjNzi7zO' \
    --baseAppId 'jCZqPQk9' \
    --categoryPath 'sJYDQgmP' \
    --features 'N6gK5NMq' \
    --includeSubCategoryItem 'true' \
    --itemName 'JOU199Po' \
    --itemStatus 'INACTIVE' \
    --itemType '["CODE", "APP", "EXTENSION"]' \
    --limit '41' \
    --offset '0' \
    --region 'pJSMuiwy' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt", "createdAt:asc", "createdAt:desc"]' \
    --storeId 'vpN7SgY3' \
    --tags '9n3vfQ0J' \
    --targetNamespace 'D7LPbXZx' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'mhkTz9fh' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'EOPqDCES' \
    --body '{"itemIds": ["vbK1pOOg", "751Fn0VK", "nOr7QLRv"]}' \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NQt52NiE' \
    --body '{"entitlementCollectionId": "fc4eo9xL", "entitlementOrigin": "Steam", "metadata": {"wrbqShtm": {}, "KpLKDdcy": {}, "GxNmhqEm": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "GRQSQx4o", "namespace": "fdOvCl69"}, "item": {"itemId": "l2wuMGw5", "itemName": "cl3hpuXW", "itemSku": "HAeOHhhZ", "itemType": "3xVnZRep"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "h19xp0Ub", "namespace": "CM8VeSCG"}, "item": {"itemId": "4nl0UlYz", "itemName": "gJH3ms6d", "itemSku": "8kKUgTMs", "itemType": "Koj8vk99"}, "quantity": 47, "type": "ITEM"}, {"currency": {"currencyCode": "pQWrnaSE", "namespace": "CP4C71UX"}, "item": {"itemId": "nYcUVO1q", "itemName": "1DVS5llb", "itemSku": "Cu4P01x7", "itemType": "7QzS4iL3"}, "quantity": 63, "type": "CURRENCY"}], "source": "PROMOTION", "transactionId": "XWjMbzp2"}' \
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
    --userId 'ewYw2c2X' \
    --body '{"transactionId": "NEDLnhUi"}' \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'Ea4J0Qe8' \
    --userId 'Q9Z9zzkp' \
    --body '{"items": [{"duration": 30, "endDate": "1994-08-15T00:00:00Z", "entitlementCollectionId": "UZMsfuQR", "entitlementOrigin": "Other", "itemId": "yRAJwRZh", "itemSku": "S8NFqjWM", "language": "c0KsMAHt", "metadata": {"2JbyQY7V": {}, "Uw0YTrpF": {}, "iRG4Sl53": {}}, "orderNo": "AmXMQT17", "origin": "Xbox", "quantity": 45, "region": "pgX5ypeR", "source": "ORDER_REVOCATION", "startDate": "1988-09-27T00:00:00Z", "storeId": "w7OZ342p"}, {"duration": 81, "endDate": "1976-03-20T00:00:00Z", "entitlementCollectionId": "259fGQKa", "entitlementOrigin": "Other", "itemId": "DxU4N719", "itemSku": "jNNhDM3Y", "language": "hLc5ap8O", "metadata": {"CcNsJCpk": {}, "r2zn0A8d": {}, "Lvvrot1B": {}}, "orderNo": "3P48h11p", "origin": "IOS", "quantity": 80, "region": "yfOq661e", "source": "IAP", "startDate": "1991-10-22T00:00:00Z", "storeId": "sBjcTnda"}, {"duration": 33, "endDate": "1972-01-09T00:00:00Z", "entitlementCollectionId": "rEYc40rY", "entitlementOrigin": "Oculus", "itemId": "WKoZ54Ho", "itemSku": "dA9poJa7", "language": "pSSS2FcU", "metadata": {"AsLheVss": {}, "v92UkKFL": {}, "5wEX5WS9": {}}, "orderNo": "AmmTmkHZ", "origin": "Epic", "quantity": 45, "region": "xVGh2a7S", "source": "REDEEM_CODE", "startDate": "1972-02-25T00:00:00Z", "storeId": "JWWAZWce"}]}' \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'BrGG6QTB' \
    --userId 'dJJdidwy' \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'ugujFivU' \
    --userId 'O6Yj19Pw' \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE