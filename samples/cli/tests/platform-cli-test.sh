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
echo "1..510"

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
    --id 'QU4PrkbM' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '0bygtjUB' \
    --body '{"grantDays": "dpwfIAhj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'pfM0oKpl' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'xlon7FB6' \
    --body '{"grantDays": "VpQqXgLs"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "33z6txqD", "dryRun": false, "fulfillmentUrl": "oDg8fhA9", "itemType": "LOOTBOX", "purchaseConditionUrl": "5HgCrrxC"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'D1PJQrsI' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'MgspYOg7' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'iDkESEIP' \
    --body '{"clazz": "szjxycrl", "dryRun": false, "fulfillmentUrl": "TVfCdhBA", "purchaseConditionUrl": "WrqjNDFI"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'nFoJHa0C' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'lEzvQ2cH' \
    --offset '50' \
    --tag 'J1OTwB5m' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "a1XNEr7Y", "discountConfig": {"categories": [{"categoryPath": "ssX6cimm", "includeSubCategories": false}, {"categoryPath": "8GHP8Fi3", "includeSubCategories": false}, {"categoryPath": "wL5nYg5q", "includeSubCategories": true}], "currencyCode": "4EYZwRrU", "currencyNamespace": "LHNP9DuW", "discountAmount": 74, "discountPercentage": 11, "discountType": "AMOUNT", "items": [{"itemId": "5K60TB4K", "itemName": "2HZhRe82"}, {"itemId": "oeRI37iq", "itemName": "EIC3hW8M"}, {"itemId": "pCdDjKAB", "itemName": "ZzsyCg6n"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 82, "itemId": "WMYTYL14", "itemName": "OrDuKRd6", "quantity": 91}, {"extraSubscriptionDays": 2, "itemId": "7l1IsOeO", "itemName": "kvv5xw7L", "quantity": 23}, {"extraSubscriptionDays": 63, "itemId": "ZihzxUE7", "itemName": "VTy5SikS", "quantity": 6}], "maxRedeemCountPerCampaignPerUser": 56, "maxRedeemCountPerCode": 63, "maxRedeemCountPerCodePerUser": 7, "maxSaleCount": 58, "name": "NF63AMeo", "redeemEnd": "1979-03-13T00:00:00Z", "redeemStart": "1991-10-24T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["Cl9eZEA2", "RyC4jmAS", "xpMhv05w"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'fVAjI7HS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'mTmTamtn' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "I6rIYgmf", "discountConfig": {"categories": [{"categoryPath": "CovSZnuO", "includeSubCategories": false}, {"categoryPath": "WO97cclG", "includeSubCategories": false}, {"categoryPath": "g7XhqCOo", "includeSubCategories": true}], "currencyCode": "eQezMcUm", "currencyNamespace": "Mvrq4jgU", "discountAmount": 75, "discountPercentage": 93, "discountType": "AMOUNT", "items": [{"itemId": "7hs02Jr4", "itemName": "6zoR2Wm1"}, {"itemId": "hWbcGUnv", "itemName": "rpT5ktmI"}, {"itemId": "hTIDM9pU", "itemName": "vdJDMv2C"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 83, "itemId": "93gyfq6F", "itemName": "DNOOkStA", "quantity": 67}, {"extraSubscriptionDays": 95, "itemId": "ZK5LPKr9", "itemName": "HHM8gepR", "quantity": 79}, {"extraSubscriptionDays": 49, "itemId": "0DDlkLYr", "itemName": "v8rLz8m1", "quantity": 64}], "maxRedeemCountPerCampaignPerUser": 22, "maxRedeemCountPerCode": 31, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 98, "name": "tR7b22bR", "redeemEnd": "1984-09-27T00:00:00Z", "redeemStart": "1979-12-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["DXtF0jop", "VuHXc7KF", "L92xxwis"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'ehgArfd7' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "fzxkzZwb", "oldName": "okXOtcnm"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'DqUKpn2o' \
    --namespace $AB_NAMESPACE \
    --batchName 'vRMKksxS' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'WZUYNQmB' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["IAP", "CAMPAIGN", "REWARD"]}' \
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
    --body '{"appConfig": {"appName": "X7KoeGGj"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "uwHA9PNi"}, "extendType": "APP"}' \
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
    --force 'true' \
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
    --body '{"appConfig": {"appName": "qS73rB2Q"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ZYJfXnwT"}, "extendType": "APP"}' \
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
    --storeId 'l04cMwti' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'fHn0tQYj' \
    --body '{"categoryPath": "WOm6UDjW", "localizationDisplayNames": {"wpj8e0Nx": "VaF03tsE", "skQkuUKv": "EGRjBqnD", "uh3yHhcB": "qecBni55"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'ZxAWL5kX' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '6mdjOzBI' \
    --namespace $AB_NAMESPACE \
    --storeId '2Xfp3ZaE' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'LyYe2v5v' \
    --namespace $AB_NAMESPACE \
    --storeId 'AuHKd7iI' \
    --body '{"localizationDisplayNames": {"CvaInl4R": "GcxmZbJ1", "6xxGDER1": "4KppCQqW", "kEHUws55": "PQA2EIPL"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'GEZVOmd8' \
    --namespace $AB_NAMESPACE \
    --storeId '6FfPEa4L' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'STRTAl6r' \
    --namespace $AB_NAMESPACE \
    --storeId 'N4AsuAFN' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'V5slqeuk' \
    --namespace $AB_NAMESPACE \
    --storeId 'X09pNPkP' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'X1mdnal3' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 't4cQJdiR' \
    --batchNo '[55, 33, 1]' \
    --code '3zOCjyFu' \
    --limit '22' \
    --offset '86' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'uiOejvdJ' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "HCZDdX3s", "codeValue": "6VEj1rmI", "quantity": 80}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'TNTLW29d' \
    --namespace $AB_NAMESPACE \
    --batchName 'hhH5XncB' \
    --batchNo '[45, 21, 70]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'o0XVSi1i' \
    --namespace $AB_NAMESPACE \
    --batchName 'vBQkQZIV' \
    --batchNo '[36, 4, 38]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'gCWIheVC' \
    --namespace $AB_NAMESPACE \
    --batchName 'BfNC3IXD' \
    --batchNo '[58, 89, 92]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'CuQP3oYh' \
    --namespace $AB_NAMESPACE \
    --code 'WJgxNgQb' \
    --limit '27' \
    --offset '13' \
    --userId '9YXwIoxz' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'q93qkNtF' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'CnHKBvIO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'i796yqMV' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ZReJqqyU", "currencySymbol": "LDfx3z7D", "currencyType": "REAL", "decimals": 85, "localizationDescriptions": {"jZMrL0Di": "G2tYuiBX", "zmo4bhYt": "NoEiadlv", "E0HNGpSr": "2HjS7oDr"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'TIbqmWts' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"k6HOYpEE": "S1wrH5Vf", "2XA3B3TF": "bd48kAzD", "BngJoQAH": "MYC3EQIh"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'A2Qdax62' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '1qp6tIyu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'rQWAzkjX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'UagmwhZF' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'YsSSun3o' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": true, "id": "kjP6UWMn", "rewards": [{"currency": {"currencyCode": "hXYdmv37", "namespace": "fDdAkTlR"}, "item": {"itemId": "rAd48r8E", "itemName": "SLsGPaSi", "itemSku": "YOmf1iyX", "itemType": "XFBHoFbE"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "uBXnlyG9", "namespace": "iIi4LJO7"}, "item": {"itemId": "aAe3FNuu", "itemName": "jpLPGYP1", "itemSku": "gE58sODl", "itemType": "Jads4any"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "vB4CG9sa", "namespace": "eDI6TteR"}, "item": {"itemId": "OPSZNXWv", "itemName": "fBPnPdhf", "itemSku": "pa5OVdkP", "itemType": "tbeAbfF6"}, "quantity": 45, "type": "CURRENCY"}], "rvn": 43}, {"autoUpdate": true, "enableRevocation": false, "id": "Ufug6oig", "rewards": [{"currency": {"currencyCode": "3pAc05b4", "namespace": "w0Ainy2h"}, "item": {"itemId": "gpn4hyX5", "itemName": "snm1EjKc", "itemSku": "yIlEAcBO", "itemType": "Dg4Vvaaj"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "26DRoI8Y", "namespace": "aw6k219f"}, "item": {"itemId": "XBhk3gtV", "itemName": "OnOISIqB", "itemSku": "G5KPtc5j", "itemType": "pfWsuN1r"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "PNh8tu93", "namespace": "3YSWy6AH"}, "item": {"itemId": "R4v3EYTa", "itemName": "iKJIlH2Z", "itemSku": "8EWthI8l", "itemType": "Ud6t967J"}, "quantity": 9, "type": "ITEM"}], "rvn": 35}, {"autoUpdate": false, "enableRevocation": false, "id": "yoWDy1rD", "rewards": [{"currency": {"currencyCode": "M7QGcdTM", "namespace": "DBqaJk8t"}, "item": {"itemId": "q85UNChQ", "itemName": "ATZVUQu1", "itemSku": "AlePdWGA", "itemType": "jfontNTu"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "XmDkP6iO", "namespace": "46RhC971"}, "item": {"itemId": "MBubxwmQ", "itemName": "3kHQuOHa", "itemSku": "ALvt31VP", "itemType": "mzXimcSU"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "dW6VlDo3", "namespace": "q0B1SeUf"}, "item": {"itemId": "rbxlhe1q", "itemName": "2yDdNxJY", "itemSku": "svpqvkVK", "itemType": "YGSdkwhm"}, "quantity": 48, "type": "ITEM"}], "rvn": 1}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"UJDTHczG": "tG8gdvsx", "UsjdFxp5": "0pzGLRmn", "t7EAdbIz": "WWUs5fpA"}}, {"platform": "OCULUS", "platformDlcIdMap": {"PglSNLGG": "K1Ah5njt", "koq0kGFL": "rGvNEKjs", "y6eGGYHe": "UzAoi7jy"}}, {"platform": "PSN", "platformDlcIdMap": {"0BZrta04": "SrVIzFKR", "fVTOMgFi": "WL7ZHCW2", "NWWCzfBD": "m4EfSxEv"}}]}' \
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
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'PsxGGxVD' \
    --itemId '["MAxu3DCf", "YljDL0Aw", "MjvROeV2"]' \
    --limit '95' \
    --offset '98' \
    --origin 'Oculus' \
    --userId 'cYb6Yt6q' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["ozbQ2rlI", "EUQt3cc8", "9PD5Bpaj"]' \
    --limit '68' \
    --offset '52' \
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
    --body '{"entitlementGrantList": [{"collectionId": "QT6IVkFs", "endDate": "1987-06-26T00:00:00Z", "grantedCode": "l1zChQgT", "itemId": "8QvhHc3f", "itemNamespace": "TPzYNR6F", "language": "MKsH", "metadata": {"ncracQHs": {}, "KI6yxNBx": {}, "mfbCI7Ua": {}}, "origin": "Nintendo", "quantity": 21, "region": "Rqx5SOr9", "source": "GIFT", "startDate": "1977-09-07T00:00:00Z", "storeId": "6rNNr1wF"}, {"collectionId": "tLcERTo0", "endDate": "1979-04-16T00:00:00Z", "grantedCode": "dSn7JOEw", "itemId": "3wOF0thJ", "itemNamespace": "OAMMjAfo", "language": "otIR-VDlH", "metadata": {"zQD3fmiw": {}, "0LJKhDJF": {}, "bxAIp1bJ": {}}, "origin": "Playstation", "quantity": 21, "region": "AOOpm7nQ", "source": "ACHIEVEMENT", "startDate": "1980-06-20T00:00:00Z", "storeId": "0yXgqkI1"}, {"collectionId": "lWgusAq6", "endDate": "1996-10-02T00:00:00Z", "grantedCode": "00dozWZc", "itemId": "atuKdKtj", "itemNamespace": "1m01VqVf", "language": "Za_wdpp", "metadata": {"CJRLdoUh": {}, "LPUyHBu9": {}, "Oj1KzUMz": {}}, "origin": "Playstation", "quantity": 48, "region": "WjquEuzu", "source": "GIFT", "startDate": "1973-08-28T00:00:00Z", "storeId": "y87TUqxn"}], "userIds": ["xU0JFBzF", "2cCWkJDU", "DZmD9tEs"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["pASCxAaM", "k66bcXkf", "EZJtOM6h"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'O5Oc58rH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '25' \
    --status 'SUCCESS' \
    --userId 'UmaN2S0a' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'PKvDDSG6' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'tEyzZjrc' \
    --limit '11' \
    --offset '13' \
    --startTime 'rDiFLCW4' \
    --status 'IGNORED' \
    --userId 'bJIBIiB9' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "p3aMpmMY", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 23, "clientTransactionId": "1EFhz17O"}, {"amountConsumed": 0, "clientTransactionId": "EmNPhnhm"}, {"amountConsumed": 86, "clientTransactionId": "Dw74iDxL"}], "entitlementId": "YFroyMvD", "usageCount": 7}, {"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "fdqRTBUD"}, {"amountConsumed": 21, "clientTransactionId": "EIXp2BMN"}, {"amountConsumed": 71, "clientTransactionId": "KWJS33Dk"}], "entitlementId": "vJWHhS9M", "usageCount": 63}, {"clientTransaction": [{"amountConsumed": 76, "clientTransactionId": "G2Hxi7GV"}, {"amountConsumed": 42, "clientTransactionId": "Ggx2qAhA"}, {"amountConsumed": 22, "clientTransactionId": "jhd5zVA7"}], "entitlementId": "PZgX8eNk", "usageCount": 80}], "purpose": "dGgopC4h"}, "originalTitleName": "5WzO0U4d", "paymentProductSKU": "3fHu538r", "purchaseDate": "CP64bvU2", "sourceOrderItemId": "8ojDwfgu", "titleName": "HacAGQGy"}, "eventDomain": "kV62JyGE", "eventSource": "JmPKMqOu", "eventType": "2HOd1wNu", "eventVersion": 12, "id": "2mG4jNwh", "timestamp": "sgDdOsD8"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "SJRlVGac", "eventState": "bvegHCAg", "lineItemId": "DB664H9R", "orderId": "iX4gf0uI", "productId": "SB2OzIam", "productType": "foVht9uQ", "purchasedDate": "9OZLhgV6", "sandboxId": "UxVJSYwD", "skuId": "TFBCEkvh", "subscriptionData": {"consumedDurationInDays": 59, "dateTime": "qfLUvMYd", "durationInDays": 78, "recurrenceId": "yAt7Gkdf"}}, "datacontenttype": "NSlcv94q", "id": "0THCBxS7", "source": "UDVAcBem", "specVersion": "dqrrJ5nS", "subject": "ngeJk6bf", "time": "VzZ8YpR1", "traceparent": "sHVr9x1Z", "type": "QICoAiaj"}' \
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
    --body '{"appAppleId": 90, "bundleId": "pe4WlraB", "issuerId": "az09ONhR", "keyId": "zW0eg15S", "password": "DmlC2IOZ", "version": "V2"}' \
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
    --body '{"sandboxId": "Lhsh7mWE"}' \
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
    --body '{"applicationName": "HKLezia7", "notificationTokenAudience": "0TnDruhn", "notificationTokenEmail": "CbRD3HgW", "packageName": "gzB7yhUD", "serviceAccountId": "eHqdOp7z"}' \
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
    --body '{"data": [{"itemIdentity": "m4BfdsGA", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Ey9lQvaE": "wcsOzpFu", "vpolj0Go": "1INEHDlT", "havQTW1N": "kW3jmZWn"}}, {"itemIdentity": "qtX4oUGB", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"GMOQkihB": "KAcwyQxb", "t6stb9xY": "Eix1IvRZ", "M3hOaFty": "JTkz3HMG"}}, {"itemIdentity": "aCFqkroL", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Rf5FE2bf": "WiUEojvD", "nFG2jFNg": "4A965xlh", "YlHFUUBs": "5h4zImK6"}}]}' \
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
    --body '{"appId": "pNHank0F", "appSecret": "FjB1nFVE", "webhookVerifyToken": "yC51lI4m"}' \
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
    --body '{"sku": "lpfVpRhX"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'tAFcHyl4' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'DBRAaBpo' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "RV7vZZ6k", "sku": "OrVJekIj"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku '7Mnd0a1V' \
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
    --body '{"backOfficeServerClientId": "SWjhK5u7", "backOfficeServerClientSecret": "hDdRZG0o", "enableStreamJob": false, "environment": "kdpEEgKT", "streamName": "pSaO0a6N", "streamPartnerName": "vBOuGSBf"}' \
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
    --body '{"backOfficeServerClientId": "g0cUhiI2", "backOfficeServerClientSecret": "Be3jfmEP", "enableStreamJob": false, "environment": "eoYRtwXq", "streamName": "GOrDeoFH", "streamPartnerName": "dHaKsLAM"}' \
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
    --body '{"appId": "tTsWyuEX", "env": "LIVE", "publisherAuthenticationKey": "9aBUEPRy", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "DiWsgFNR", "clientSecret": "mIze9IoJ", "organizationId": "PutanmBr"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "E962uC9k", "entraAppClientSecret": "khfT7HDF", "entraTenantId": "Zk4iRbw0", "relyingPartyCert": "5xacrHnZ"}' \
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
    --password 'AJJCUYAj' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'jZ3hnDJL' \
    --externalId 'cppbVIOo' \
    --limit '97' \
    --offset '9' \
    --source 'TWITCH' \
    --startDate 'ECOSRwIQ' \
    --status 'IGNORED' \
    --type 'vY77faXt' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '99' \
    --orderId 'WkFCok7W' \
    --steamId 'TfWFY0JB' \
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
    --body '{"env": "SANDBOX", "lastTime": "1994-12-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'q1bpEq2E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '53' \
    --orderId 'CtqgwkPz' \
    --processStatus 'PROCESSED' \
    --steamId 'GEiquiHx' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'OpPRZ5B4' \
    --limit '40' \
    --offset '3' \
    --platform 'PLAYSTATION' \
    --productId 'fTmVJzW0' \
    --userId 'IOHHA5xb' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'CGMwcfBj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime '6Kpa0gbq' \
    --feature 'CP5q9BC0' \
    --itemId 'LQdbyQ5b' \
    --itemType 'SEASON' \
    --startTime 'GMdnBl08' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'ffwVyKxf' \
    --feature '1xNuwOhS' \
    --itemId 'z49PN9sa' \
    --itemType 'COINS' \
    --startTime '8nsdDUVz' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'tBTbIBiH' \
    --body '{"categoryPath": "Ak6Js2rT", "targetItemId": "6pfra857", "targetNamespace": "gx3KRtFg"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'TxPuU05E' \
    --body '{"appId": "rSXmaUuy", "appType": "SOFTWARE", "baseAppId": "bkOGB7Aw", "boothName": "Mn1iV7Z1", "categoryPath": "qQWC3JRD", "clazz": "cUdHWu6U", "displayOrder": 65, "entitlementType": "DURABLE", "ext": {"57Lu81oK": {}, "V02Og1ME": {}, "eRQ70JGi": {}}, "features": ["hqALBmzm", "8zWCF0ov", "kRiVePe4"], "flexible": true, "images": [{"as": "Qc2lsdJG", "caption": "hZrar6o4", "height": 97, "imageUrl": "S5Y7RTzl", "smallImageUrl": "by7UaaqZ", "width": 7}, {"as": "hD4mqE4U", "caption": "a6ANyUHJ", "height": 8, "imageUrl": "yVUaxxZi", "smallImageUrl": "hZybYwWW", "width": 80}, {"as": "WYfC1JXw", "caption": "7PQyRM12", "height": 12, "imageUrl": "mJPr0Prc", "smallImageUrl": "t1p6ET0G", "width": 95}], "inventoryConfig": {"customAttributes": {"Ozr5jdt6": {}, "JTOxtR95": {}, "7ndjVKCk": {}}, "serverCustomAttributes": {"fBqK5AGS": {}, "WeZDgPmq": {}, "9uPjTVaC": {}}, "slotUsed": 51}, "itemId": "EVujfsai", "itemIds": ["y1herldU", "hOYljvY6", "msOx31gD"], "itemQty": {"5ICHSs7h": 58, "OUpgBgjV": 46, "Q8IiaAYj": 83}, "itemType": "COINS", "listable": true, "localizations": {"o4SO4jUb": {"description": "hAKma6O0", "localExt": {"OKrkt37M": {}, "fkXmXJ8U": {}, "ph0KLxnd": {}}, "longDescription": "WAULjvHi", "title": "hnsFp5oq"}, "me3gRdyr": {"description": "VGlnlN3K", "localExt": {"iBU8MJDa": {}, "3nZ3rofW": {}, "09pUZ80s": {}}, "longDescription": "nXUwfhrR", "title": "LtaMfPFu"}, "x8o27BLP": {"description": "1nPCcOkn", "localExt": {"j9JMsKYa": {}, "unDbqCeS": {}, "ONWK6op3": {}}, "longDescription": "Lrv9Yszm", "title": "6ZgW1Alu"}}, "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 43, "duration": 10, "endDate": "1995-05-13T00:00:00Z", "itemId": "j58EtQ7P", "itemSku": "I7CguJu9", "itemType": "w1DJJsDn"}, {"count": 32, "duration": 67, "endDate": "1995-09-03T00:00:00Z", "itemId": "wMltGgT3", "itemSku": "ADexqI4z", "itemType": "TyVCif6Y"}, {"count": 16, "duration": 30, "endDate": "1995-12-10T00:00:00Z", "itemId": "wtBI0Sxr", "itemSku": "kHkgcM3d", "itemType": "ivPtsTg2"}], "name": "PpN54Pvq", "odds": 0.08662106220588728, "type": "REWARD_GROUP", "weight": 35}, {"lootBoxItems": [{"count": 4, "duration": 85, "endDate": "1982-12-08T00:00:00Z", "itemId": "PbqO5j1C", "itemSku": "pn0HrK1G", "itemType": "YBN2St1y"}, {"count": 0, "duration": 98, "endDate": "1976-10-16T00:00:00Z", "itemId": "iBAiCevq", "itemSku": "yqNeKDi6", "itemType": "Aw9jLGyU"}, {"count": 37, "duration": 68, "endDate": "1996-10-30T00:00:00Z", "itemId": "giDTU8aA", "itemSku": "H5Ued0Co", "itemType": "DAPEWecn"}], "name": "XzxpTNzf", "odds": 0.1306945333604448, "type": "REWARD", "weight": 22}, {"lootBoxItems": [{"count": 77, "duration": 88, "endDate": "1976-11-14T00:00:00Z", "itemId": "9lLV6DtR", "itemSku": "xZCgE4pr", "itemType": "sCjFKRPy"}, {"count": 13, "duration": 99, "endDate": "1986-03-17T00:00:00Z", "itemId": "QC6KCRpH", "itemSku": "2tZQuvnU", "itemType": "N8q8FP4D"}, {"count": 58, "duration": 47, "endDate": "1983-11-03T00:00:00Z", "itemId": "gbJlzN81", "itemSku": "6td4L7Oj", "itemType": "qsn3Qslg"}], "name": "nkT3QlSB", "odds": 0.6661755731666742, "type": "REWARD_GROUP", "weight": 71}], "rollFunction": "CUSTOM"}, "maxCount": 56, "maxCountPerUser": 49, "name": "NgmQ8YBV", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 68, "endDate": "1984-01-14T00:00:00Z", "itemId": "hPyE1LdF", "itemSku": "Cu749oRs", "itemType": "PliIwYLA"}, {"count": 85, "duration": 82, "endDate": "1973-06-07T00:00:00Z", "itemId": "FiIisFNI", "itemSku": "lOUU44jT", "itemType": "lAb7rZoU"}, {"count": 17, "duration": 45, "endDate": "1993-12-12T00:00:00Z", "itemId": "bQHz5dEz", "itemSku": "mfXKjlrZ", "itemType": "fQR4CV9w"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 77, "fixedTrialCycles": 77, "graceDays": 17}, "regionData": {"8SxE8EBE": [{"currencyCode": "6kubYu5X", "currencyNamespace": "rizGI30T", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1971-11-05T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1988-02-22T00:00:00Z", "expireAt": "1980-04-08T00:00:00Z", "price": 76, "purchaseAt": "1979-07-22T00:00:00Z", "trialPrice": 37}, {"currencyCode": "gPxUpdYj", "currencyNamespace": "vUaOneQD", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1982-09-24T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1971-08-17T00:00:00Z", "expireAt": "1994-04-26T00:00:00Z", "price": 12, "purchaseAt": "1979-10-23T00:00:00Z", "trialPrice": 24}, {"currencyCode": "yBFuz6pC", "currencyNamespace": "ef0bCnCI", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1988-12-29T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1999-01-26T00:00:00Z", "expireAt": "1989-06-08T00:00:00Z", "price": 56, "purchaseAt": "1977-12-17T00:00:00Z", "trialPrice": 15}], "bijcv15l": [{"currencyCode": "pFW7dUYk", "currencyNamespace": "PRWFPoTr", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1991-07-26T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1992-01-07T00:00:00Z", "expireAt": "1992-02-17T00:00:00Z", "price": 98, "purchaseAt": "1977-11-05T00:00:00Z", "trialPrice": 90}, {"currencyCode": "JhRFYGBd", "currencyNamespace": "HBQvdfbz", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1982-06-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1984-06-30T00:00:00Z", "expireAt": "1987-12-27T00:00:00Z", "price": 11, "purchaseAt": "1980-07-03T00:00:00Z", "trialPrice": 77}, {"currencyCode": "M7u6R3NU", "currencyNamespace": "N9SpAb5p", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1973-09-25T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1980-07-02T00:00:00Z", "expireAt": "1976-06-07T00:00:00Z", "price": 62, "purchaseAt": "1980-08-15T00:00:00Z", "trialPrice": 40}], "uby80MCL": [{"currencyCode": "yqcRdaG2", "currencyNamespace": "dqNjBky1", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1975-10-18T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1989-07-02T00:00:00Z", "expireAt": "1988-04-21T00:00:00Z", "price": 9, "purchaseAt": "1999-09-18T00:00:00Z", "trialPrice": 43}, {"currencyCode": "tAUX4XCU", "currencyNamespace": "mSKOOX41", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1986-09-28T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1985-01-08T00:00:00Z", "expireAt": "1992-02-18T00:00:00Z", "price": 9, "purchaseAt": "1982-04-30T00:00:00Z", "trialPrice": 49}, {"currencyCode": "KglUPYcH", "currencyNamespace": "M9d38ASg", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1975-03-04T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1992-03-14T00:00:00Z", "expireAt": "1971-03-25T00:00:00Z", "price": 74, "purchaseAt": "1981-05-05T00:00:00Z", "trialPrice": 88}]}, "saleConfig": {"currencyCode": "QuOwpqkD", "price": 86}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "Jk0QDkjk", "stackable": true, "status": "INACTIVE", "tags": ["6VqfXZ5O", "7M68rlgP", "IYxmeVsj"], "targetCurrencyCode": "XUKTTWHb", "targetNamespace": "T3qtQ06w", "thumbnailUrl": "uiZlaRZj", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '3L7rN29c' \
    --appId 'HCM0uOXM' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'asRIy5AG' \
    --baseAppId 'wLV5rUjD' \
    --categoryPath 'TSNRgV2S' \
    --features 'TQPcInhc' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '23' \
    --offset '47' \
    --region 'xqKpl564' \
    --sortBy '["createdAt:desc", "displayOrder", "createdAt"]' \
    --storeId 'hXajZ24E' \
    --tags '8vUEOGKI' \
    --targetNamespace '3bPIGrYK' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["lYfEMem6", "D3pgsUsT", "dDzSYqGG"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'XahjPK5p' \
    --itemIds 'phDlbKUW' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'CKNPHWyV' \
    --sku 'bLhHoOS2' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'mhYjos9y' \
    --populateBundle 'true' \
    --region 'hu5allsD' \
    --storeId 'A12es0Ol' \
    --sku 'QHBPJNoa' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '2SpKlifd' \
    --region 'JkdPxC6c' \
    --storeId 'bM2lRdGk' \
    --itemIds 'p43tbznd' \
    --userId 'VvF5UhyI' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'FOuVBDcn' \
    --sku 'poeNyiTp' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["lH4mS4jE", "Z6ORDyK3", "vrxOdOaS"]' \
    --storeId 'nzYegA07' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'sYYNPEcS' \
    --region 'zb7kpXvK' \
    --storeId '3UHbOrTk' \
    --itemIds '4An4wiNt' \
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
    --platform '1BfCMo3G' \
    --userId 'WjcKjiEr' \
    --body '{"itemIds": ["ertgypyg", "5maXwJnX", "50sLxcjt"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'fBuxCzqZ' \
    --body '{"changes": [{"itemIdentities": ["5L6nVQ6B", "Ul7id9pm", "UBIcaSgg"], "itemIdentityType": "ITEM_SKU", "regionData": {"lMlV7WyI": [{"currencyCode": "SieBGfJB", "currencyNamespace": "m52HLFTL", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1983-04-29T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1988-09-26T00:00:00Z", "discountedPrice": 1, "expireAt": "1980-10-21T00:00:00Z", "price": 12, "purchaseAt": "1979-03-26T00:00:00Z", "trialPrice": 18}, {"currencyCode": "pE23oX0f", "currencyNamespace": "1GtOc64e", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1994-04-25T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-10-06T00:00:00Z", "discountedPrice": 97, "expireAt": "1998-02-08T00:00:00Z", "price": 85, "purchaseAt": "1986-03-23T00:00:00Z", "trialPrice": 97}, {"currencyCode": "bpIs0acU", "currencyNamespace": "llxToHle", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1980-06-07T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1992-09-06T00:00:00Z", "discountedPrice": 44, "expireAt": "1982-02-23T00:00:00Z", "price": 11, "purchaseAt": "1976-09-03T00:00:00Z", "trialPrice": 72}], "vAoF9rxJ": [{"currencyCode": "qUiFPiJu", "currencyNamespace": "wGLRU6Ga", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1974-03-24T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1986-04-01T00:00:00Z", "discountedPrice": 48, "expireAt": "1988-11-20T00:00:00Z", "price": 100, "purchaseAt": "1984-03-05T00:00:00Z", "trialPrice": 34}, {"currencyCode": "y8dObjKX", "currencyNamespace": "In2wC0I4", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1989-03-12T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1989-02-07T00:00:00Z", "discountedPrice": 63, "expireAt": "1999-06-17T00:00:00Z", "price": 79, "purchaseAt": "1980-11-19T00:00:00Z", "trialPrice": 47}, {"currencyCode": "hSoc01xE", "currencyNamespace": "DPKm1nXV", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1973-01-20T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1984-08-28T00:00:00Z", "discountedPrice": 61, "expireAt": "1973-10-16T00:00:00Z", "price": 11, "purchaseAt": "1972-04-09T00:00:00Z", "trialPrice": 25}], "SniLFWdB": [{"currencyCode": "Kut6hjwo", "currencyNamespace": "Qseln5gj", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1993-11-24T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1989-02-02T00:00:00Z", "discountedPrice": 28, "expireAt": "1982-02-14T00:00:00Z", "price": 23, "purchaseAt": "1987-10-10T00:00:00Z", "trialPrice": 51}, {"currencyCode": "YFKdZ9Vu", "currencyNamespace": "SZdgVSHt", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1972-01-18T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1986-03-15T00:00:00Z", "discountedPrice": 24, "expireAt": "1999-02-19T00:00:00Z", "price": 13, "purchaseAt": "1995-11-26T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zlUTy9go", "currencyNamespace": "NBAKO3RL", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1973-12-01T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1981-11-05T00:00:00Z", "discountedPrice": 13, "expireAt": "1980-03-20T00:00:00Z", "price": 72, "purchaseAt": "1977-03-05T00:00:00Z", "trialPrice": 45}]}}, {"itemIdentities": ["9dx4pRJo", "rLMevVzd", "S2sPlKrI"], "itemIdentityType": "ITEM_SKU", "regionData": {"rqyWBAKu": [{"currencyCode": "bPe0Bu0H", "currencyNamespace": "BbVmUFqk", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1988-10-26T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1978-04-16T00:00:00Z", "discountedPrice": 76, "expireAt": "1981-07-27T00:00:00Z", "price": 46, "purchaseAt": "1984-10-02T00:00:00Z", "trialPrice": 40}, {"currencyCode": "QbbNCKAM", "currencyNamespace": "yGbTfkok", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1982-11-15T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1971-10-09T00:00:00Z", "discountedPrice": 91, "expireAt": "1999-01-03T00:00:00Z", "price": 97, "purchaseAt": "1995-12-20T00:00:00Z", "trialPrice": 24}, {"currencyCode": "sVGV0BkM", "currencyNamespace": "BkGma359", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1980-03-22T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1998-12-10T00:00:00Z", "discountedPrice": 54, "expireAt": "1982-01-28T00:00:00Z", "price": 72, "purchaseAt": "1992-11-28T00:00:00Z", "trialPrice": 64}], "GHS6NE2s": [{"currencyCode": "5hb5RZK1", "currencyNamespace": "T0avWiL1", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1975-01-28T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1981-11-24T00:00:00Z", "discountedPrice": 89, "expireAt": "1988-04-16T00:00:00Z", "price": 54, "purchaseAt": "1997-11-28T00:00:00Z", "trialPrice": 10}, {"currencyCode": "2c6yMDKQ", "currencyNamespace": "vzI2OmZE", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1990-03-02T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-03-04T00:00:00Z", "discountedPrice": 88, "expireAt": "1974-07-07T00:00:00Z", "price": 4, "purchaseAt": "1985-06-03T00:00:00Z", "trialPrice": 44}, {"currencyCode": "KU8V2MOD", "currencyNamespace": "X12tJlqC", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1995-01-10T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1979-01-01T00:00:00Z", "discountedPrice": 44, "expireAt": "1974-07-20T00:00:00Z", "price": 0, "purchaseAt": "1973-01-12T00:00:00Z", "trialPrice": 89}], "PUnkmqOF": [{"currencyCode": "ZGlBDWuM", "currencyNamespace": "uhZPGqhO", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1983-02-18T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-06-11T00:00:00Z", "discountedPrice": 95, "expireAt": "1990-11-08T00:00:00Z", "price": 94, "purchaseAt": "1986-07-12T00:00:00Z", "trialPrice": 61}, {"currencyCode": "rD3EMVWj", "currencyNamespace": "r8JhxGvr", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1972-01-29T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1988-10-04T00:00:00Z", "discountedPrice": 79, "expireAt": "1982-08-18T00:00:00Z", "price": 6, "purchaseAt": "1976-09-27T00:00:00Z", "trialPrice": 80}, {"currencyCode": "932xRn9A", "currencyNamespace": "B0R372DR", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1992-07-22T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1979-10-05T00:00:00Z", "discountedPrice": 58, "expireAt": "1977-12-29T00:00:00Z", "price": 16, "purchaseAt": "1975-06-25T00:00:00Z", "trialPrice": 88}]}}, {"itemIdentities": ["TgURWh3v", "LLOUb753", "CNp5et9w"], "itemIdentityType": "ITEM_ID", "regionData": {"1f8ucoeC": [{"currencyCode": "a0qmHpmv", "currencyNamespace": "NZaTn9HV", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1972-02-15T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1987-09-20T00:00:00Z", "discountedPrice": 2, "expireAt": "1982-08-29T00:00:00Z", "price": 91, "purchaseAt": "1997-09-30T00:00:00Z", "trialPrice": 74}, {"currencyCode": "xGzWuFzs", "currencyNamespace": "C04ZtOxJ", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1998-05-12T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1984-08-24T00:00:00Z", "discountedPrice": 1, "expireAt": "1972-04-20T00:00:00Z", "price": 0, "purchaseAt": "1988-07-27T00:00:00Z", "trialPrice": 35}, {"currencyCode": "mVV0Brf0", "currencyNamespace": "M4aC4ITV", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1975-06-13T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1999-09-25T00:00:00Z", "discountedPrice": 93, "expireAt": "1978-09-29T00:00:00Z", "price": 5, "purchaseAt": "1972-01-31T00:00:00Z", "trialPrice": 18}], "EYmhXT60": [{"currencyCode": "oPOiUHXT", "currencyNamespace": "letnZNKY", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1973-04-20T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-11-22T00:00:00Z", "discountedPrice": 85, "expireAt": "1994-08-08T00:00:00Z", "price": 45, "purchaseAt": "1985-12-29T00:00:00Z", "trialPrice": 16}, {"currencyCode": "tzE0tSCi", "currencyNamespace": "2zZSAXmj", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1979-11-07T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1997-05-01T00:00:00Z", "discountedPrice": 89, "expireAt": "1972-12-31T00:00:00Z", "price": 51, "purchaseAt": "1985-06-07T00:00:00Z", "trialPrice": 36}, {"currencyCode": "qdFu2phV", "currencyNamespace": "2XuxPzhs", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1975-07-05T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1989-11-12T00:00:00Z", "discountedPrice": 58, "expireAt": "1974-04-25T00:00:00Z", "price": 48, "purchaseAt": "1974-12-23T00:00:00Z", "trialPrice": 60}], "R988V0cY": [{"currencyCode": "izQ7maSZ", "currencyNamespace": "KN8Opuq2", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1986-11-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1978-03-27T00:00:00Z", "discountedPrice": 90, "expireAt": "1988-07-06T00:00:00Z", "price": 4, "purchaseAt": "1986-06-03T00:00:00Z", "trialPrice": 25}, {"currencyCode": "rKsFSWml", "currencyNamespace": "EbyFtzTk", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1975-01-04T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1987-09-04T00:00:00Z", "discountedPrice": 15, "expireAt": "1973-11-30T00:00:00Z", "price": 79, "purchaseAt": "1977-02-13T00:00:00Z", "trialPrice": 76}, {"currencyCode": "Qlp5M9XX", "currencyNamespace": "4B5JN8Vf", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1998-02-02T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1977-01-30T00:00:00Z", "discountedPrice": 74, "expireAt": "1977-11-30T00:00:00Z", "price": 41, "purchaseAt": "1999-07-30T00:00:00Z", "trialPrice": 71}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'EXTENSION' \
    --limit '30' \
    --offset '35' \
    --sortBy 'DTZP2AWK' \
    --storeId 'zrV7bXeU' \
    --keyword '5dBpiSgK' \
    --language 'dqzy814s' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '100' \
    --offset '73' \
    --sortBy '["name:desc", "displayOrder", "displayOrder:desc"]' \
    --storeId 'Ggjkg592' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'GO7nsDKZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'n4v4x2Xp' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'opgVD4Vp' \
    --namespace $AB_NAMESPACE \
    --storeId 'QFg208WD' \
    --body '{"appId": "fbHKL4eP", "appType": "DEMO", "baseAppId": "xbSAiKhO", "boothName": "KE274K4K", "categoryPath": "EIHVS10o", "clazz": "5Pv2hkXG", "displayOrder": 21, "entitlementType": "CONSUMABLE", "ext": {"rdwtYppr": {}, "PF23OGM7": {}, "bwTA6bec": {}}, "features": ["VHqd4q8u", "bnLwg0Hh", "54POnDiu"], "flexible": false, "images": [{"as": "UlTvqlkU", "caption": "bGm94dAc", "height": 1, "imageUrl": "hoy9S17W", "smallImageUrl": "QUCfTH9P", "width": 54}, {"as": "aeZikF6q", "caption": "5txfgQtB", "height": 83, "imageUrl": "hBvXGUr4", "smallImageUrl": "v3Trp5zz", "width": 99}, {"as": "Yoj65uI8", "caption": "86PzQ2L3", "height": 97, "imageUrl": "dThvtdP1", "smallImageUrl": "IXqtrsfA", "width": 17}], "inventoryConfig": {"customAttributes": {"zzhiJtI2": {}, "JXnnLkPN": {}, "4dh775sB": {}}, "serverCustomAttributes": {"ZeuFGprh": {}, "DC8RwOJz": {}, "190Ewkmy": {}}, "slotUsed": 86}, "itemIds": ["YQ4sh8kj", "NoPGbSIi", "edJ8Jred"], "itemQty": {"0zZhqwpc": 99, "JLuOMgam": 81, "GJoim7E0": 17}, "itemType": "BUNDLE", "listable": true, "localizations": {"VcPQudV9": {"description": "jeNm9Pb4", "localExt": {"bxIMYjmL": {}, "cKyX5Cs6": {}, "xkHmCpe7": {}}, "longDescription": "JHF1oOD4", "title": "PEEEHugo"}, "YCAm3wps": {"description": "YHcSXFcF", "localExt": {"XnN8NVtF": {}, "t2PfnCyj": {}, "YpfincbA": {}}, "longDescription": "7UgzW2d5", "title": "nylLQ56m"}, "YJt9KNDr": {"description": "bkR74QXg", "localExt": {"35342TfX": {}, "86ubvWyE": {}, "BlCHlN1F": {}}, "longDescription": "hurmlCcX", "title": "mZ61iRrs"}}, "lootBoxConfig": {"rewardCount": 19, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 38, "endDate": "1999-12-25T00:00:00Z", "itemId": "edj8dpGz", "itemSku": "feLX8yFx", "itemType": "ZmgicjS1"}, {"count": 46, "duration": 99, "endDate": "1999-08-10T00:00:00Z", "itemId": "I2ZIUd50", "itemSku": "l5epID5k", "itemType": "IR0jkzZm"}, {"count": 0, "duration": 92, "endDate": "1979-03-07T00:00:00Z", "itemId": "8Zl3c0Tp", "itemSku": "iu5Yr7st", "itemType": "5A0cHjLa"}], "name": "nDLyANEH", "odds": 0.3923929779968527, "type": "PROBABILITY_GROUP", "weight": 86}, {"lootBoxItems": [{"count": 90, "duration": 29, "endDate": "1997-05-13T00:00:00Z", "itemId": "Fwn6U19U", "itemSku": "jMFhqCuh", "itemType": "u4IMrmhL"}, {"count": 9, "duration": 34, "endDate": "1999-06-15T00:00:00Z", "itemId": "6iy5Olzp", "itemSku": "oF6e4K4M", "itemType": "AeKgwN5Y"}, {"count": 88, "duration": 59, "endDate": "1980-12-11T00:00:00Z", "itemId": "UmSIrWzd", "itemSku": "VHNOUbbF", "itemType": "oqJL3GSR"}], "name": "9rbpyrEj", "odds": 0.16498718655186473, "type": "REWARD", "weight": 59}, {"lootBoxItems": [{"count": 38, "duration": 39, "endDate": "1981-09-16T00:00:00Z", "itemId": "42CNqQHE", "itemSku": "kb57tTr0", "itemType": "xsQysZNA"}, {"count": 67, "duration": 93, "endDate": "1977-05-04T00:00:00Z", "itemId": "vudQXF3s", "itemSku": "FsCBwCZy", "itemType": "indjRyLJ"}, {"count": 19, "duration": 39, "endDate": "1991-06-23T00:00:00Z", "itemId": "DssljhFR", "itemSku": "5OY6E6a7", "itemType": "Y5N2U0zb"}], "name": "3ifgo823", "odds": 0.14411590646368, "type": "REWARD_GROUP", "weight": 53}], "rollFunction": "DEFAULT"}, "maxCount": 28, "maxCountPerUser": 8, "name": "gabiAlIC", "optionBoxConfig": {"boxItems": [{"count": 75, "duration": 31, "endDate": "1984-10-27T00:00:00Z", "itemId": "JRAH6Q1I", "itemSku": "13tJhe3k", "itemType": "jlJuHC11"}, {"count": 61, "duration": 91, "endDate": "1990-12-25T00:00:00Z", "itemId": "NHi13Yyv", "itemSku": "QMIpEp9y", "itemType": "lIGAi389"}, {"count": 75, "duration": 18, "endDate": "1971-02-24T00:00:00Z", "itemId": "KRkpJeSC", "itemSku": "1DiLWLse", "itemType": "ml9DUHHk"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 44, "fixedTrialCycles": 47, "graceDays": 3}, "regionData": {"bwwR6EzD": [{"currencyCode": "SUOXvIaP", "currencyNamespace": "KsXnhNXN", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1985-07-09T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1981-07-08T00:00:00Z", "expireAt": "1991-12-10T00:00:00Z", "price": 68, "purchaseAt": "1987-01-19T00:00:00Z", "trialPrice": 28}, {"currencyCode": "fSXwKSIw", "currencyNamespace": "vHChTJs8", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1981-11-04T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1976-03-12T00:00:00Z", "expireAt": "1999-04-09T00:00:00Z", "price": 4, "purchaseAt": "1971-04-07T00:00:00Z", "trialPrice": 7}, {"currencyCode": "wBIwxtYV", "currencyNamespace": "DtziBwck", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1984-11-26T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1987-08-08T00:00:00Z", "expireAt": "1998-12-30T00:00:00Z", "price": 51, "purchaseAt": "1997-09-14T00:00:00Z", "trialPrice": 93}], "sSGjhx2S": [{"currencyCode": "OQyCZ1eR", "currencyNamespace": "UEW0G3k7", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1996-06-18T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1974-05-01T00:00:00Z", "expireAt": "1973-11-20T00:00:00Z", "price": 17, "purchaseAt": "1998-11-19T00:00:00Z", "trialPrice": 52}, {"currencyCode": "9KFBBGb0", "currencyNamespace": "0XGmqZro", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1995-10-17T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1972-06-22T00:00:00Z", "expireAt": "1984-11-10T00:00:00Z", "price": 71, "purchaseAt": "1996-11-17T00:00:00Z", "trialPrice": 66}, {"currencyCode": "6tRjrEFW", "currencyNamespace": "Ypfr6O4D", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1994-08-15T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1978-10-12T00:00:00Z", "expireAt": "1999-05-27T00:00:00Z", "price": 93, "purchaseAt": "1972-08-02T00:00:00Z", "trialPrice": 77}], "p6WYOXtV": [{"currencyCode": "inTcJ3XO", "currencyNamespace": "bOWrcFhU", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1999-11-02T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1989-10-02T00:00:00Z", "expireAt": "1998-01-25T00:00:00Z", "price": 70, "purchaseAt": "1971-05-06T00:00:00Z", "trialPrice": 46}, {"currencyCode": "ppTzAV5n", "currencyNamespace": "9nXH2r8x", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1996-08-18T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1979-09-19T00:00:00Z", "expireAt": "1990-10-17T00:00:00Z", "price": 86, "purchaseAt": "1994-09-19T00:00:00Z", "trialPrice": 87}, {"currencyCode": "gjruT9oo", "currencyNamespace": "874nKIhR", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1978-11-02T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1990-05-26T00:00:00Z", "expireAt": "1998-01-13T00:00:00Z", "price": 8, "purchaseAt": "1985-08-15T00:00:00Z", "trialPrice": 21}]}, "saleConfig": {"currencyCode": "algrCkRz", "price": 31}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "FTXNaYIb", "stackable": true, "status": "ACTIVE", "tags": ["JHvTZ5Vg", "Z5sIai7J", "KnMFunmL"], "targetCurrencyCode": "amPLFKKC", "targetNamespace": "xiwricOj", "thumbnailUrl": "XwyjoJdQ", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'PP3pXC9n' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "CAMPAIGN", "IAP"]' \
    --force 'false' \
    --storeId 'q17i6Ekf' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Mrx9Ff7Z' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 59, "orderNo": "z9Shq0BW"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'c9z2gVKK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'O2VFXY1Y' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '7dCYV4cX' \
    --namespace $AB_NAMESPACE \
    --storeId '1KEfjHhZ' \
    --body '{"carousel": [{"alt": "6K8GK9DQ", "previewUrl": "jI1Mb9Yt", "thumbnailUrl": "rQLSuVpE", "type": "image", "url": "FF2ek67G", "videoSource": "youtube"}, {"alt": "zxBMRpEL", "previewUrl": "DU436iMB", "thumbnailUrl": "onVwP1R2", "type": "image", "url": "Eu1m1dd9", "videoSource": "youtube"}, {"alt": "gQpN5bXI", "previewUrl": "WWhKWAcK", "thumbnailUrl": "c2IICrml", "type": "image", "url": "S6bZ2UTU", "videoSource": "generic"}], "developer": "F9WNXr3V", "forumUrl": "5Ynm4j7e", "genres": ["Strategy", "Indie", "Action"], "localizations": {"Sg1LxA8Y": {"announcement": "gGQIpIzY", "slogan": "d7m2dKKA"}, "POfh878l": {"announcement": "RJ8Fn1VH", "slogan": "IUwuKDqQ"}, "WaPseCZ4": {"announcement": "IRYJvUkZ", "slogan": "P91AbDLG"}}, "platformRequirements": {"qQpt8Vpj": [{"additionals": "jTV5QGsY", "directXVersion": "LqYozohb", "diskSpace": "ex9ZeH1g", "graphics": "Xnphytts", "label": "MLMjXuil", "osVersion": "uGuG234S", "processor": "CUiHWBKc", "ram": "mITDhHs2", "soundCard": "zovfocgU"}, {"additionals": "nzs8gk0q", "directXVersion": "71mf9lX8", "diskSpace": "4anONM1e", "graphics": "tOjZUsQY", "label": "dlJgmPQO", "osVersion": "RaUUxyvD", "processor": "4RvN7lix", "ram": "aIQcnwI1", "soundCard": "FzkAZQTL"}, {"additionals": "BNT33W9H", "directXVersion": "1dOxGIKk", "diskSpace": "XBu9kkim", "graphics": "PRHIJlIz", "label": "XuZKBZJF", "osVersion": "4cOJkroM", "processor": "pOyxE4TX", "ram": "LKSnppdy", "soundCard": "BPkvSr2n"}], "GKZQqXe3": [{"additionals": "K8sSBEXP", "directXVersion": "uU0AAPgR", "diskSpace": "SX1MfB7D", "graphics": "L9iulnpB", "label": "hNOGYIDn", "osVersion": "16pmf5cH", "processor": "LL2D6HKL", "ram": "3ZxTvWGy", "soundCard": "JrEkvW4F"}, {"additionals": "TDd0bnLf", "directXVersion": "CdvozQu7", "diskSpace": "NAPwKcmE", "graphics": "FqtddHwG", "label": "nogz0mQ0", "osVersion": "MbKLxRAZ", "processor": "EWbqcmhE", "ram": "nbaSHK7q", "soundCard": "Kjqi7LDd"}, {"additionals": "C2P5zfzq", "directXVersion": "uIVCoeR0", "diskSpace": "wZXEjUMi", "graphics": "tWtGp7gl", "label": "JJU3Ficv", "osVersion": "jAmtaERg", "processor": "upBDWwye", "ram": "WQX86ILT", "soundCard": "DdD5hK12"}], "ALaOEqjX": [{"additionals": "Psspa8EO", "directXVersion": "6EElpQ8c", "diskSpace": "E7ykkK6Q", "graphics": "OW9nClHS", "label": "xfpkhEOh", "osVersion": "xOJahInb", "processor": "Dduczzmy", "ram": "Cvojzior", "soundCard": "kJHxQcjU"}, {"additionals": "KUscWlkV", "directXVersion": "YLecHuH4", "diskSpace": "7typ4Feu", "graphics": "hxsp0YN0", "label": "PG6M84ez", "osVersion": "udEWRU4x", "processor": "05XZSYtT", "ram": "60zbNyoZ", "soundCard": "gKUwGVvu"}, {"additionals": "WNNkN1Gh", "directXVersion": "WF7Cxmfm", "diskSpace": "Sz1GLZN7", "graphics": "2wqHZN5K", "label": "WFv45cTI", "osVersion": "a7r0Q1wL", "processor": "1asXJRWl", "ram": "ky7fKBnH", "soundCard": "lZFpzmSv"}]}, "platforms": ["Windows", "Linux", "MacOS"], "players": ["Single", "CrossPlatformMulti", "MMO"], "primaryGenre": "Simulation", "publisher": "1iuuwUo8", "releaseDate": "1977-03-18T00:00:00Z", "websiteUrl": "KUw54wU3"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'kLVAitRr' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZlvZ4ijX' \
    --body '{"featuresToCheck": ["DLC", "CAMPAIGN"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'hKwoJvE6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '6pqZBIza' \
    --namespace $AB_NAMESPACE \
    --storeId 'ymVoSQDl' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'VFhuESb2' \
    --itemId 'asrlL9p3' \
    --namespace $AB_NAMESPACE \
    --storeId 'SpE7HbO6' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'rtNkSQua' \
    --itemId 'hTfxe14P' \
    --namespace $AB_NAMESPACE \
    --storeId 'XMmZybm7' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'FSDgWsWr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'IDtksA6B' \
    --populateBundle 'true' \
    --region 'drGJpGcJ' \
    --storeId 'eF8t41qN' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'hfKcef1w' \
    --namespace $AB_NAMESPACE \
    --storeId 'UduO4klF' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 10, "code": "qdXM0Zav", "comparison": "isGreaterThanOrEqual", "name": "TbKDR4YQ", "predicateType": "EntitlementPredicate", "value": "d2JsYUxg", "values": ["JagX0hHp", "rlv1OfL5", "v5v4m9nF"]}, {"anyOf": 29, "code": "YynFs2o8", "comparison": "isNot", "name": "JgzzInE8", "predicateType": "SeasonTierPredicate", "value": "ybe8sb3c", "values": ["QWwOOSJQ", "zJQpZtpu", "DwUNgDKl"]}, {"anyOf": 51, "code": "69rt7URH", "comparison": "includes", "name": "XIkX74Ya", "predicateType": "EntitlementPredicate", "value": "NbdG3R5O", "values": ["aoisvaly", "SEvfHDX9", "R4XDJaAg"]}]}, {"operator": "or", "predicates": [{"anyOf": 36, "code": "nYAZK8OW", "comparison": "isLessThanOrEqual", "name": "BBycH5ZZ", "predicateType": "SeasonPassPredicate", "value": "xb8ulQRi", "values": ["oU6HlAB2", "6wyU4zFf", "PkguE83W"]}, {"anyOf": 99, "code": "J1NAJEWw", "comparison": "isLessThanOrEqual", "name": "uvI7fv8N", "predicateType": "SeasonTierPredicate", "value": "zzUwINtH", "values": ["FW6t6HYI", "NnbPlqcZ", "lSkOaGf5"]}, {"anyOf": 25, "code": "F9CKarB1", "comparison": "is", "name": "WOymRkKo", "predicateType": "StatisticCodePredicate", "value": "SRf6kB0T", "values": ["JmA64CFY", "4zZjoZ5A", "Lq8HBMnK"]}]}, {"operator": "and", "predicates": [{"anyOf": 56, "code": "aN4WCp9m", "comparison": "is", "name": "TMVlZDfp", "predicateType": "EntitlementPredicate", "value": "WtI1XsNV", "values": ["RzG79l6J", "FdWwkf9n", "Ipwmy3uP"]}, {"anyOf": 7, "code": "xSTKwise", "comparison": "isLessThan", "name": "WkLzO17R", "predicateType": "EntitlementPredicate", "value": "HIypsZNk", "values": ["DoRDYO5A", "5rDG1VNV", "iin1oHkL"]}, {"anyOf": 59, "code": "kczhx6C9", "comparison": "isGreaterThan", "name": "0yeg0ISu", "predicateType": "EntitlementPredicate", "value": "Z2sQBTue", "values": ["RukcFBYp", "BXTiJhkq", "zPVlMrdJ"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'R4RIad52' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "DLC", "CAMPAIGN"]' \
    --storeId 'Ei1PfgPZ' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'Hq2ke7Wx' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "NCLKvlaq"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name 'TO7Z2EqY' \
    --offset '20' \
    --tag 'JMdLr1yI' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Dx3WEH9Q", "name": "JQmoP7nD", "status": "INACTIVE", "tags": ["LWTJJhgW", "G4dMcpcH", "0vYa7D8M"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'xGzTkjFo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '5aBHH1lG' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nkXqXCUz", "name": "mB1hu4WP", "status": "INACTIVE", "tags": ["O6ClpN2V", "v1SUwc0W", "pHXqMB2l"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'yrgxvSM1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'M8rjIzNa' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '45' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'V3QKw40l' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Vwi1sBwr' \
    --limit '56' \
    --offset '80' \
    --orderNos '["I1tGhBjK", "GlPP9UDt", "TS1gW1KH"]' \
    --sortBy 'W8Ukn9tQ' \
    --startTime 'w59Gv8TH' \
    --status 'CHARGEBACK_REVERSED' \
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
    --orderNo 'lPnPsQFQ' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'e2AjXYkK' \
    --body '{"description": "7ipPoA5Y"}' \
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
    --body '{"domains": ["8FeBdDP5", "YL1y2Ua6", "rziuOlEz"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'qqcEZBeT' \
    --externalId 'a0tJi5AR' \
    --limit '8' \
    --notificationSource 'WXPAY' \
    --notificationType 'mvRsE8H9' \
    --offset '86' \
    --paymentOrderNo 'd9uTA5TJ' \
    --startDate 'ePMhUvAp' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'tjxPaIbh' \
    --limit '99' \
    --offset '88' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "VwIjlIrA", "currencyNamespace": "RGXWsD9c", "customParameters": {"390iizxH": {}, "7cB0zZ47": {}, "OdOBGHdX": {}}, "description": "KC8neWhj", "extOrderNo": "dBX9pjTn", "extUserId": "iP6rEPJk", "itemType": "MEDIA", "language": "LEeo", "metadata": {"mPxALPDx": "cUBjW4Y0", "RngL8QWS": "m1o9mQ3H", "7acMIiDJ": "nlexXcAJ"}, "notifyUrl": "8ek9Dw73", "omitNotification": true, "platform": "toy0gz4k", "price": 16, "recurringPaymentOrderNo": "yJoJ6kpo", "region": "FR1DMVLX", "returnUrl": "CBBjuNDj", "sandbox": true, "sku": "RzwAJB86", "subscriptionId": "bjGmZsEn", "targetNamespace": "l2J3A0gH", "targetUserId": "XLFHR7jN", "title": "Sh1KkSc3"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'FS1ZAFAr' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FiOFyYcE' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UoIixk7A' \
    --body '{"extTxId": "elBlbt5D", "paymentMethod": "jN5lrof7", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OWzkXa8q' \
    --body '{"description": "QIwCboP0"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2UZ9vdoD' \
    --body '{"amount": 52, "currencyCode": "SlPD9Gat", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 84, "vat": 12}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5cbNztTx' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'YhFSM2vn' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "h7y8RRaK", "serviceLabel": 30}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '0lpWWEwC' \
    --body '{"delegationToken": "4a1Z4fmc", "sandboxId": "0by9FdZB"}' \
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
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["Steam", "Steam", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Oculus", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'rS2PL18Y' \
    --limit '34' \
    --offset '46' \
    --source 'IAP' \
    --startTime '1zU5UFa8' \
    --status 'FAIL' \
    --transactionId '9rTUpDOQ' \
    --userId 'UqBDLP4V' \
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
    --body '{"appConfig": {"appName": "Qtki29oi"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "fdcZct5A"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCertV2
samples/cli/sample-apps Platform uploadRevocationPluginConfigCertV2 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCertV2' test.out

#- 196 UploadRevocationPluginConfigCert
eval_tap 0 196 'UploadRevocationPluginConfigCert # SKIP deprecated' test.out

#- 197 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HknY2W3x", "eventTopic": "csTDzASj", "maxAwarded": 4, "maxAwardedPerUser": 9, "namespaceExpression": "Np0vHB2y", "rewardCode": "8IbteIyB", "rewardConditions": [{"condition": "KIQwmFAB", "conditionName": "oRfmPmsT", "eventName": "TC8tRH2S", "rewardItems": [{"duration": 27, "endDate": "1974-04-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Cqh41MyU", "quantity": 4, "sku": "RhbN4ywX"}, {"duration": 20, "endDate": "1995-02-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pAoDcmT1", "quantity": 92, "sku": "FK1Nftjp"}, {"duration": 74, "endDate": "1990-02-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rMDGGcIm", "quantity": 0, "sku": "OIYqaksS"}]}, {"condition": "EJQU8gLR", "conditionName": "NWEQsyDG", "eventName": "BgsCVjvl", "rewardItems": [{"duration": 12, "endDate": "1972-08-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "E3UtGe2O", "quantity": 88, "sku": "Apm7Vj9K"}, {"duration": 62, "endDate": "1994-02-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "E9a834fG", "quantity": 20, "sku": "VRm9ArMS"}, {"duration": 64, "endDate": "1992-06-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0vAowp39", "quantity": 33, "sku": "6aldsi8W"}]}, {"condition": "zJXL9PMZ", "conditionName": "sPuCLwSI", "eventName": "JrIcqO62", "rewardItems": [{"duration": 50, "endDate": "1987-04-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xtHyimoW", "quantity": 86, "sku": "o2ZL0qbZ"}, {"duration": 9, "endDate": "1992-02-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9YNXByRm", "quantity": 51, "sku": "FTZovPqr"}, {"duration": 70, "endDate": "1977-12-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "e1hVQ4OQ", "quantity": 85, "sku": "IIKM2YWo"}]}], "userIdExpression": "AEtR2DC0"}' \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'fTaUsJFM' \
    --limit '77' \
    --offset '85' \
    --sortBy '["rewardCode:asc", "namespace", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 198 'QueryRewards' test.out

#- 199 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'ExportRewards' test.out

#- 200 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 200 'ImportRewards' test.out

#- 201 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '0h3QQ9Xc' \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '0Ud4OBHB' \
    --body '{"description": "GRQXJ8vh", "eventTopic": "ywH06pL3", "maxAwarded": 94, "maxAwardedPerUser": 81, "namespaceExpression": "bdFBio6X", "rewardCode": "6Do5EGQV", "rewardConditions": [{"condition": "Rmoswurn", "conditionName": "1jbxeoak", "eventName": "KJTnPQ7R", "rewardItems": [{"duration": 89, "endDate": "1981-07-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "w5e0IrAQ", "quantity": 45, "sku": "EIwBpinG"}, {"duration": 45, "endDate": "1974-07-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8vPTkqHI", "quantity": 61, "sku": "FxWWitbU"}, {"duration": 5, "endDate": "1979-11-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "y6NrBLox", "quantity": 35, "sku": "CeVxxoBf"}]}, {"condition": "Pm8YSe9O", "conditionName": "Vu0QuR78", "eventName": "I9LXTnTv", "rewardItems": [{"duration": 16, "endDate": "1971-02-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fICSg6Y3", "quantity": 19, "sku": "Ei7MrRK3"}, {"duration": 20, "endDate": "1985-12-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HgTdS4sA", "quantity": 61, "sku": "FOSvStms"}, {"duration": 27, "endDate": "1974-01-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9FxmIrJn", "quantity": 46, "sku": "SesoXS2O"}]}, {"condition": "n9a94fT0", "conditionName": "DrURlJtt", "eventName": "vvu2i46U", "rewardItems": [{"duration": 3, "endDate": "1988-06-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "S9lx29M5", "quantity": 4, "sku": "I91K9yLi"}, {"duration": 59, "endDate": "1984-08-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FAHfk3mV", "quantity": 78, "sku": "yv4ZFS16"}, {"duration": 61, "endDate": "1984-02-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PMuW4LmS", "quantity": 2, "sku": "crUth9hF"}]}], "userIdExpression": "UeWbi03q"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'uZV1GbyB' \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'vsEZ3m6D' \
    --body '{"payload": {"JoyNUbE0": {}, "V5sxNaMQ": {}, "YUbzHgXE": {}}}' \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'M7dqVIXK' \
    --body '{"conditionName": "OhNfXgfo", "userId": "L41aYnlE"}' \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'XsizqI4Y' \
    --limit '97' \
    --offset '19' \
    --start 'hrZnXhRi' \
    --storeId 'IzamUKUA' \
    --viewId 'WVz7RXSl' \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '7cEg4KeO' \
    --body '{"active": true, "displayOrder": 12, "endDate": "1990-01-28T00:00:00Z", "ext": {"aL5vRezJ": {}, "7fAvagOU": {}, "cN5W5LD8": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 97, "itemCount": 79, "rule": "LOOP"}, "items": [{"id": "ODUoXdEC", "sku": "zicATVan"}, {"id": "a75JMOt3", "sku": "s6O9hV8S"}, {"id": "yc0gJJk7", "sku": "jLe3xN73"}], "localizations": {"5pjc6YNB": {"description": "VZ4U3i0n", "localExt": {"raq6PNvx": {}, "COG2nKW2": {}, "Dh5lGo1A": {}}, "longDescription": "MZbbFn36", "title": "ToQ6C1YN"}, "fBR88Hw5": {"description": "5wOih17U", "localExt": {"bJCYF8qp": {}, "BICagdPi": {}, "EGFUz7Dr": {}}, "longDescription": "97cDIdCB", "title": "o1D0lnFm"}, "pLAHAA12": {"description": "NHbqbheI", "localExt": {"t0KOaenA": {}, "AWuosE2T": {}, "a7qH4Ik4": {}}, "longDescription": "Z1IvOUkL", "title": "Xs1pdmry"}}, "name": "hWxrahKF", "rotationType": "CUSTOM", "startDate": "1997-10-25T00:00:00Z", "viewId": "vBjnyUYb"}' \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '7JSrshRj' \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'eWv5GD8z' \
    --storeId '15QygkBN' \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'EKglhYxa' \
    --storeId 'VKvN9fw9' \
    --body '{"active": false, "displayOrder": 13, "endDate": "1998-03-08T00:00:00Z", "ext": {"rN9SHgsi": {}, "SD3afsT0": {}, "dU5lFUxo": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 96, "itemCount": 54, "rule": "LOOP"}, "items": [{"id": "mOt11uvK", "sku": "cYp0KOf9"}, {"id": "ljCynihD", "sku": "V6ACQ3bp"}, {"id": "O8N4iVPb", "sku": "iqy1XiQt"}], "localizations": {"NT3aSPjL": {"description": "xdouMeao", "localExt": {"zWEM7iWq": {}, "Qa1y5IK4": {}, "UjyCMqqT": {}}, "longDescription": "HhzNG7Aw", "title": "BcJER4gi"}, "RmnldKaQ": {"description": "FoKp8X9X", "localExt": {"259le9cn": {}, "YaHW27OB": {}, "hAEFA6jU": {}}, "longDescription": "siu8tnhg", "title": "f4XkEoyk"}, "1vww8ll5": {"description": "5zdjh4AC", "localExt": {"Oj2uhUl1": {}, "YqMlIOG8": {}, "0dpDwTpn": {}}, "longDescription": "ix6LgI12", "title": "do5gsjKa"}}, "name": "yCJwQ5mS", "rotationType": "CUSTOM", "startDate": "1989-05-03T00:00:00Z", "viewId": "16vGEsQO"}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Wbq5xX5D' \
    --storeId 'DzCk5V4f' \
    > test.out 2>&1
eval_tap $? 211 'DeleteSection' test.out

#- 212 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'ListStores' test.out

#- 213 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "ndnEcLgv", "defaultRegion": "h00UJCDD", "description": "5x995Z08", "supportedLanguages": ["eEZU2SpT", "jHk1TsU9", "9BDKzpiQ"], "supportedRegions": ["qy3CYyUc", "Av6Js7V2", "j99JJmKS"], "title": "RuqKKCvf"}' \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
    > test.out 2>&1
eval_tap $? 214 'GetCatalogDefinition' test.out

#- 215 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 215 'DownloadCSVTemplates' test.out

#- 216 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["Eg03BjG8", "BIgSUY5H", "IR4eGkeV"], "idsToBeExported": ["bGtKJYBQ", "Owwh7FYc", "pGg9BLM1"], "storeId": "XY4dnPVh"}' \
    > test.out 2>&1
eval_tap $? 216 'ExportStoreByCSV' test.out

#- 217 ImportStore
eval_tap 0 217 'ImportStore # SKIP deprecated' test.out

#- 218 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'GetPublishedStore' test.out

#- 219 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 219 'DeletePublishedStore' test.out

#- 220 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetPublishedStoreBackup' test.out

#- 221 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 221 'RollbackPublishedStore' test.out

#- 222 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fAMWZE41' \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'yTfWoMAr' \
    --body '{"defaultLanguage": "CTbiHhG5", "defaultRegion": "2UFHbxbw", "description": "Tvo3v98d", "supportedLanguages": ["2snMIZ8U", "IHSfzU1w", "TMHg9ItO"], "supportedRegions": ["VYJoG6Nj", "UyHTym0w", "W5AXHqkw"], "title": "Bwba4JjB"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'rFJ8E1JY' \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'q0eoSVG0' \
    --action 'DELETE' \
    --itemSku 'uiN3vbCg' \
    --itemType 'SUBSCRIPTION' \
    --limit '50' \
    --offset '25' \
    --selected 'false' \
    --sortBy '["updatedAt", "updatedAt:desc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'kaP7JB6u' \
    --updatedAtStart 'hi6GhQRP' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'FN7JdZ3U' \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '9N34Uqxl' \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'e8fjDP9e' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'eRfHMtNt' \
    --action 'DELETE' \
    --itemSku 'auFLlJWy' \
    --itemType 'INGAMEITEM' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'KAokzOet' \
    --updatedAtStart 'HJZfT9XN' \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'BNLNNKQP' \
    --action 'DELETE' \
    --itemSku 'nmQUccSs' \
    --itemType 'BUNDLE' \
    --type 'CATEGORY' \
    --updatedAtEnd '5WgoqVtf' \
    --updatedAtStart '43tfw4Je' \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'xcPvic3n' \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '8x6isHGT' \
    --namespace $AB_NAMESPACE \
    --storeId 'msqVxlbo' \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '615wqyZR' \
    --namespace $AB_NAMESPACE \
    --storeId 'QnClHULn' \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fPKIwyVG' \
    --targetStoreId '8wlFh0R5' \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'ecc1Vm73' \
    --end 'Whjj74Eo' \
    --limit '31' \
    --offset '22' \
    --sortBy 'zJYPjOfG' \
    --start 'ik48aDYU' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'yiiLCRJb' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'Bi7bXu0z' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'aRqpCtom' \
    --limit '47' \
    --offset '72' \
    --sku '6UunyFSm' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'p6MiSXtN' \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n7ixvN4g' \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '7J29Klw6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'oYvGGDeY' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "nYcymImM"}' \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'A0I28e1d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'YOGOJyvA' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 51, "orderNo": "4yuCwm3D"}' \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 3, "currencyCode": "mfPxkKh0", "expireAt": "1998-09-14T00:00:00Z"}, "debitPayload": {"count": 11, "currencyCode": "vleQ2B4u", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "vY1U2Fmd", "entitlementOrigin": "Other", "itemIdentity": "Z6733Jmu", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "55sGkn61"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 20, "currencyCode": "PRQOjstx", "expireAt": "1985-11-11T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "OWfafI6w", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "P17g267c", "entitlementOrigin": "Nintendo", "itemIdentity": "7dUgskUo", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "BISaKQBP"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 49, "currencyCode": "5hgF0slJ", "expireAt": "1973-01-11T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "U0WxQeaC", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "L4EYANUe", "entitlementOrigin": "System", "itemIdentity": "U5FiAQLe", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 49, "entitlementId": "pISbulpq"}, "type": "FULFILL_ITEM"}], "userId": "7FZCblMX"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 4, "currencyCode": "s51Btnvb", "expireAt": "1990-11-03T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "YTezumqZ", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 22, "entitlementCollectionId": "fPBZgnLR", "entitlementOrigin": "Steam", "itemIdentity": "mlqp6byl", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "WKq4fSA6"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 32, "currencyCode": "iGNGjVWg", "expireAt": "1973-04-12T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "c0ucbumk", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "aq02nnfR", "entitlementOrigin": "Xbox", "itemIdentity": "fomZbQv4", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "8lm2QwMs"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 35, "currencyCode": "N1SQzZdI", "expireAt": "1973-01-08T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "D0VOJUof", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "vrHetFfo", "entitlementOrigin": "Oculus", "itemIdentity": "nukyYoAJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "kJaJd6p8"}, "type": "CREDIT_WALLET"}], "userId": "MDzCiOoE"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 13, "currencyCode": "0RWKAfvH", "expireAt": "1996-09-24T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "Pi170eFv", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "kuCYLIzd", "entitlementOrigin": "IOS", "itemIdentity": "x8LITFwR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "MDgKS39J"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 7, "currencyCode": "3u0nOl2M", "expireAt": "1977-12-14T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "Bo9SApv9", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "hhalOxOU", "entitlementOrigin": "Other", "itemIdentity": "08e5klJX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "L09v4F7d"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 33, "currencyCode": "xOwnOnIX", "expireAt": "1985-03-01T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "40lgJRG2", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 16, "entitlementCollectionId": "EfjEWBFS", "entitlementOrigin": "IOS", "itemIdentity": "6PExMTL5", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "4NApSzJU"}, "type": "CREDIT_WALLET"}], "userId": "M9fZo0UC"}], "metadata": {"Ya2YFHEG": {}, "jkAn307H": {}, "RC1wMQ6K": {}}, "needPreCheck": true, "transactionId": "pLnWwn5w", "type": "Iea46ogM"}' \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '15' \
    --status 'FAILED' \
    --type 'bDsLGxpo' \
    --userId 'ncT4dpxn' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'S8OMGpDy' \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'LzlttWVo' \
    --body '{"achievements": [{"id": "2PE3LjFB", "value": 25}, {"id": "JOwu9b4t", "value": 97}, {"id": "nyM6fEiL", "value": 63}], "steamUserId": "bzf1Tngy"}' \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'rQvgaffp' \
    --xboxUserId '2YLGbnbG' \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '29dZoEXK' \
    --body '{"achievements": [{"id": "mSd2fD2K", "percentComplete": 56}, {"id": "Y4Eq66mo", "percentComplete": 3}, {"id": "bqP2duzT", "percentComplete": 96}], "serviceConfigId": "WadtooD5", "titleId": "xAVRALfe", "xboxUserId": "QsRvWuXn"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'fgx29AYA' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jrlrDM5y' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '1y4ygUJ5' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Oz1d8FuU' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cMjT8RSM' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'sIXdZokC' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '8PY61qTF' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'hCMl1Zpv' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'oHF75e8d' \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'WFCVNnKQ' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TbbdOiJp' \
    --includeAllNamespaces 'true' \
    --status 'REVOKED' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Yp0YqXbI' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --collectionId 'zFzN54BX' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'shb44c6X' \
    --features '["XGiJ6f9H", "RNzu2pDK", "yP7Pgp1G"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["FY0UxN4a", "wQ4w039z", "e7B4p2Hk"]' \
    --limit '73' \
    --offset '22' \
    --origin 'Nintendo' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'LMuhbLjD' \
    --body '[{"collectionId": "ImMAJMgW", "endDate": "1982-07-01T00:00:00Z", "grantedCode": "yxpIbl1r", "itemId": "XIt0TPwq", "itemNamespace": "mcuUGRIR", "language": "Dm-JXVF", "metadata": {"ElBQcCfh": {}, "3JT8GbDY": {}, "3mx2jdtn": {}}, "origin": "Oculus", "quantity": 53, "region": "HpjLq7PB", "source": "REFERRAL_BONUS", "startDate": "1972-07-10T00:00:00Z", "storeId": "Jej5XtsK"}, {"collectionId": "L7GWqyXQ", "endDate": "1976-05-28T00:00:00Z", "grantedCode": "WkJnmxUS", "itemId": "izzPni8X", "itemNamespace": "VxhnMQym", "language": "Jw_nFeK", "metadata": {"412sT0Ku": {}, "gJirjUhS": {}, "WoMeAcFR": {}}, "origin": "System", "quantity": 34, "region": "090pb51g", "source": "GIFT", "startDate": "1992-07-13T00:00:00Z", "storeId": "RWf4daXy"}, {"collectionId": "1z7doC32", "endDate": "1995-02-04T00:00:00Z", "grantedCode": "0U7c92TW", "itemId": "TLRXflbL", "itemNamespace": "Yavgt3tJ", "language": "aR_771", "metadata": {"yTxS20vC": {}, "ZROk3JyR": {}, "VEEauiSU": {}}, "origin": "GooglePlay", "quantity": 23, "region": "fukJU4HM", "source": "ACHIEVEMENT", "startDate": "1999-03-27T00:00:00Z", "storeId": "pIDvldaU"}]' \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dqNyUsWu' \
    --activeOnly 'false' \
    --appId 'm0e9Cwzu' \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Ji5gAP1M' \
    --activeOnly 'false' \
    --limit '70' \
    --offset '44' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'yl1fsWNW' \
    --ids '["oKyXkH82", "nQqB0M9R", "o2rWf1eN"]' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tumwNfIQ' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'cCng9ecb' \
    --itemId 'LYgDyVmS' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'OlzuBqIc' \
    --ids '["Sejolyv7", "niaorslG", "qR15jGWZ"]' \
    --platform 'At4uEU0k' \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'EtqnqWqg' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform 'Dp4Ilkpn' \
    --sku 'H7QDVf9i' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ne5AlXrJ' \
    --appIds '["oSv7XWTN", "EHCfMZqT", "rfJObzWU"]' \
    --itemIds '["7rabIU49", "2Hr4OoMS", "LTxWVqwM"]' \
    --platform 'LsSX5cv9' \
    --skus '["gcayQ62V", "xHl1sJ7n", "k0p2DHpF"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'HeYhTLnI' \
    --platform 'yoX7ULuM' \
    --itemIds '["O2gnH6Oj", "EXpnSIcz", "vcnOX8VT"]' \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'oTQc0cOV' \
    --appId 'MBbewztP' \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UXdSbqnK' \
    --entitlementClazz 'MEDIA' \
    --platform 'b45nXn3g' \
    --itemId 'kBAchgC2' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'a98AGecN' \
    --ids '["1Uz5Wv6W", "nTfQtGvI", "34swztLs"]' \
    --platform 'IZWT7daJ' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ZnV5O9lA' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'MuRxm0p8' \
    --sku 'V1uoJzWF' \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NBqaKT80' \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'YC7hXqrY' \
    --entitlementIds '1xZfiOck' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'hUqY6Mob' \
    --namespace $AB_NAMESPACE \
    --userId 'lqgZQSjT' \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '6WOUsBAi' \
    --namespace $AB_NAMESPACE \
    --userId 'VNoeqxWQ' \
    --body '{"collectionId": "9R2ddX1I", "endDate": "1971-02-18T00:00:00Z", "nullFieldList": ["XfyNkwKj", "BHLypLH4", "tBimR7Nr"], "origin": "GooglePlay", "reason": "KC6UX8PI", "startDate": "1972-01-10T00:00:00Z", "status": "INACTIVE", "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'gq20PXmi' \
    --namespace $AB_NAMESPACE \
    --userId 'LOVWbvV6' \
    --body '{"metadata": {"YZzsxaXg": {}, "mLwOUH7v": {}, "5fqVrD9X": {}}, "options": ["xavDsVcM", "s47VHVOA", "PQnzNqrk"], "platform": "SHu5xayp", "requestId": "M3MNqGSo", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'yEHMqice' \
    --namespace $AB_NAMESPACE \
    --userId 'V1u3NARe' \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'iX9Ab7ld' \
    --namespace $AB_NAMESPACE \
    --userId 'GUrOVjH2' \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'tIZRXQst' \
    --namespace $AB_NAMESPACE \
    --userId 'mG9VH9OA' \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'xRMV6Bx7' \
    --namespace $AB_NAMESPACE \
    --userId 'ueThc00q' \
    --body '{"metadata": {"ARa1mGuu": {}, "454GTI9H": {}, "FaJIT79T": {}}}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'fSIHQJ8l' \
    --namespace $AB_NAMESPACE \
    --userId 'D9Fruk4d' \
    --body '{"reason": "fcS5eyFZ", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'JtNy5i7e' \
    --namespace $AB_NAMESPACE \
    --userId 'cjWAKqnX' \
    --quantity '9' \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '5q0DXRX1' \
    --namespace $AB_NAMESPACE \
    --userId '3lOiPtEi' \
    --body '{"platform": "N44TmTn2", "requestId": "PDqd1Wa1", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'NOnJb9eA' \
    --body '{"duration": 46, "endDate": "1985-02-13T00:00:00Z", "entitlementCollectionId": "3wxLRGNB", "entitlementOrigin": "Epic", "itemId": "bkM9Xliq", "itemSku": "FmidJ16P", "language": "tbdrDPEt", "metadata": {"NxQSRrhG": {}, "83ohkOzo": {}, "wP7i7mLs": {}}, "order": {"currency": {"currencyCode": "bB5b4eZN", "currencySymbol": "OMyh5NGC", "currencyType": "REAL", "decimals": 44, "namespace": "tZt2qk6g"}, "ext": {"gJJAVq8g": {}, "TVQphorV": {}, "TbC21b1s": {}}, "free": true}, "orderNo": "rvKjWiZ7", "origin": "Epic", "overrideBundleItemQty": {"0ytFrCHH": 92, "mvLxxPsw": 33, "bhMWi1kA": 16}, "quantity": 7, "region": "KoSKo8al", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1988-01-29T00:00:00Z", "storeId": "CeQoaeuZ"}' \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'DKyTzWGt' \
    --body '{"code": "RwjBqmFT", "language": "YhJY", "region": "IPbrPp2d"}' \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '8FJP715Z' \
    --body '{"itemId": "OVMCiXrX", "itemSku": "IOWt78dZ", "quantity": 25}' \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'KKDevxq1' \
    --body '{"entitlementCollectionId": "uhVhStpV", "entitlementOrigin": "Xbox", "metadata": {"wMj9Vo1G": {}, "eufVEI8o": {}, "FyZ1mJ9p": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "6aXpU7fw", "namespace": "vBROI3L3"}, "item": {"itemId": "E2Mn5ODA", "itemName": "rY1CANBJ", "itemSku": "GxUExABQ", "itemType": "dX3l04K9"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "l2MTSSIR", "namespace": "QxRd4vMZ"}, "item": {"itemId": "jfR8zOv7", "itemName": "NY3yL71i", "itemSku": "fEEIpJtb", "itemType": "FNvwHSSJ"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "bX4zZEy7", "namespace": "FidIasmJ"}, "item": {"itemId": "WIbf1mQ5", "itemName": "spvT9hdU", "itemSku": "HQgWSP5t", "itemType": "GI2tv3zB"}, "quantity": 15, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "8xLv8AH1"}' \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'BFXlJfaB' \
    --endTime 'tZ7vTZ3T' \
    --limit '62' \
    --offset '63' \
    --productId 'kmstsA3K' \
    --startTime 'fJOwS1Nn' \
    --status 'PARTIAL_REVOKED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wy9jyTEp' \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'I5QKeqs0' \
    --endTime 'g6BuM83N' \
    --limit '74' \
    --offset '63' \
    --startTime 'bknzHV2u' \
    --status 'FAIL' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'RZMkLJnY' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "jYTs", "productId": "zqheWeX6", "region": "wlfahpAN", "transactionId": "yG6mr0gL", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'KroTG4gx' \
    --body '{"skus": ["wN925sXI", "ekLS7nwP", "OoxDY7fH"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'wbubcfRx' \
    --namespace $AB_NAMESPACE \
    --userId 'RKbHMl0R' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'kvlwIM3p' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'kgB7TWzI' \
    --body '{"orderId": "wSuDD864"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'nGr3TsJi' \
    --activeOnly 'false' \
    --groupId 'N1tZtOeM' \
    --limit '57' \
    --offset '27' \
    --platform 'APPLE' \
    --productId 'DwfV0jWa' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'yoMNooZr' \
    --groupId 'ghDEcxWY' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'Z5m7Oe1a' \
    --productId 'HG5cNIyX' \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'tNd22e4a' \
    --activeOnly 'false' \
    --groupId 'T0m9z0wu' \
    --limit '77' \
    --offset '9' \
    --platform 'STADIA' \
    --productId '5HyCrHJ0' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'Z16xGAmB' \
    --namespace $AB_NAMESPACE \
    --userId 'ZbMsiFV2' \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'iuDSd1MR' \
    --namespace $AB_NAMESPACE \
    --userId 'CCCGvPD6' \
    --limit '42' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id '79eSoNFj' \
    --namespace $AB_NAMESPACE \
    --userId 'xrwTDJMy' \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'ZgAw5sLi' \
    --namespace $AB_NAMESPACE \
    --userId 'Q5Y4hhqj' \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'x6jE4Oyo' \
    --namespace $AB_NAMESPACE \
    --userId 'dBPvptdr' \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 AdminSyncTwitchDropsEntitlement
samples/cli/sample-apps Platform adminSyncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tb1ZJL5U' \
    --body '{"gameId": "3xAOOTKn", "language": "oLS_EQHm-187", "region": "eDXpxreg"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminSyncTwitchDropsEntitlement' test.out

#- 310 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'lXRxr7sk' \
    --discounted 'true' \
    --itemId 'UBPM9c08' \
    --limit '49' \
    --offset '100' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 310 'QueryUserOrders' test.out

#- 311 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'erzXIBZ4' \
    --body '{"currencyCode": "o8R9R6yu", "currencyNamespace": "kucUkTD7", "discountCodes": ["ZlAe6FuJ", "2vKORTym", "n7NJ3kZZ"], "discountedPrice": 51, "entitlementPlatform": "Xbox", "ext": {"JhX0Evwl": {}, "cHXHNtUO": {}, "R2qQJrRw": {}}, "itemId": "iydYetjv", "language": "LyfOjgO9", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 8, "quantity": 16, "region": "Y5TOD6Hh", "returnUrl": "I6xtOXgb", "sandbox": false, "sectionId": "lUShr0Wo"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserOrder' test.out

#- 312 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'Fg9ucP6R' \
    --itemId 'DSl6ptRa' \
    > test.out 2>&1
eval_tap $? 312 'CountOfPurchasedItem' test.out

#- 313 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '7pCAQ1oe' \
    --userId 'ppxXXaYU' \
    > test.out 2>&1
eval_tap $? 313 'GetUserOrder' test.out

#- 314 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '0vCQj8W0' \
    --userId '26bhusOc' \
    --body '{"status": "CHARGEBACK", "statusReason": "qiviBVkQ"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateUserOrderStatus' test.out

#- 315 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qQ035M56' \
    --userId 'a3wKTLdt' \
    > test.out 2>&1
eval_tap $? 315 'FulfillUserOrder' test.out

#- 316 GetUserOrderGrant
eval_tap 0 316 'GetUserOrderGrant # SKIP deprecated' test.out

#- 317 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'BkgofBNq' \
    --userId 'FewJY27Q' \
    > test.out 2>&1
eval_tap $? 317 'GetUserOrderHistories' test.out

#- 318 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'CIWMqT5B' \
    --userId 'hceXz4qb' \
    --body '{"additionalData": {"cardSummary": "lEF3vPh4"}, "authorisedTime": "1980-08-05T00:00:00Z", "chargebackReversedTime": "1988-04-05T00:00:00Z", "chargebackTime": "1994-12-08T00:00:00Z", "chargedTime": "1982-06-17T00:00:00Z", "createdTime": "1977-12-23T00:00:00Z", "currency": {"currencyCode": "MdwLQCpJ", "currencySymbol": "d1JEGUAp", "currencyType": "REAL", "decimals": 88, "namespace": "ZIUah41m"}, "customParameters": {"1ZHJdpk6": {}, "Q6rP03Hu": {}, "BhjUw6GY": {}}, "extOrderNo": "kzu6T8an", "extTxId": "ZQBxPjmr", "extUserId": "o8BH1Lis", "issuedAt": "1987-01-03T00:00:00Z", "metadata": {"pJg4CF6P": "NXCloLhd", "dVhbpZQR": "0Es2R5LJ", "TSj7mWvg": "TsqSPdg9"}, "namespace": "nQ9V7V3v", "nonceStr": "XI6bmGeU", "paymentData": {"discountAmount": 90, "discountCode": "Vx8ZVaGH", "subtotalPrice": 54, "tax": 17, "totalPrice": 24}, "paymentMethod": "sJrIz9V2", "paymentMethodFee": 22, "paymentOrderNo": "tHSNxiPy", "paymentProvider": "XSOLLA", "paymentProviderFee": 48, "paymentStationUrl": "bsrUs2dQ", "price": 65, "refundedTime": "1989-05-27T00:00:00Z", "salesTax": 49, "sandbox": false, "sku": "cjw0A3KT", "status": "DELETED", "statusReason": "E6k5xupK", "subscriptionId": "xlv2jR66", "subtotalPrice": 65, "targetNamespace": "pDlC1MCd", "targetUserId": "Is66ykcc", "tax": 47, "totalPrice": 17, "totalTax": 4, "txEndTime": "1977-10-19T00:00:00Z", "type": "Jabq44s8", "userId": "8PQrrbwQ", "vat": 68}' \
    > test.out 2>&1
eval_tap $? 318 'ProcessUserOrderNotification' test.out

#- 319 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'HppkiU1T' \
    --userId 'qqkO7Gcg' \
    > test.out 2>&1
eval_tap $? 319 'DownloadUserOrderReceipt' test.out

#- 320 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '90KzH6Lr' \
    --body '{"currencyCode": "V9pWmCLj", "currencyNamespace": "E7jA0GOM", "customParameters": {"DSghtd7J": {}, "70bK9Mpi": {}, "qRVfDWtY": {}}, "description": "ffDvJv2P", "extOrderNo": "3I1vKfmc", "extUserId": "oIUHepQD", "itemType": "SUBSCRIPTION", "language": "jg-mC", "metadata": {"nDFOseml": "mwRIMjfy", "4UTjSwhc": "Q0oXA8ld", "cwYhpT5k": "jMOGjvFa"}, "notifyUrl": "u3yjXF2O", "omitNotification": false, "platform": "AnbOLcLX", "price": 32, "recurringPaymentOrderNo": "dcc5i3yD", "region": "pmW2L7I7", "returnUrl": "hiV8XYno", "sandbox": false, "sku": "fvyvwdhm", "subscriptionId": "E3n4QBYM", "title": "ok8mDfve"}' \
    > test.out 2>&1
eval_tap $? 320 'CreateUserPaymentOrder' test.out

#- 321 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aSUV3PHh' \
    --userId 'qZCwJ9VW' \
    --body '{"description": "gIMu6lmp"}' \
    > test.out 2>&1
eval_tap $? 321 'RefundUserPaymentOrder' test.out

#- 322 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'xQ7NfeXY' \
    > test.out 2>&1
eval_tap $? 322 'GetUserPlatformAccountClosureHistories' test.out

#- 323 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'NxCMom0I' \
    --body '{"code": "BSFZkC5u", "orderNo": "UavgN3fv"}' \
    > test.out 2>&1
eval_tap $? 323 'ApplyUserRedemption' test.out

#- 324 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ckP5a6SW' \
    --body '{"meta": {"VwzDgzEn": {}, "WXBZLJea": {}, "KWbCytxm": {}}, "reason": "P7D5Mswp", "requestId": "B1kB0mP1", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "pkrqEQIA", "namespace": "cBW2Wpq9"}, "entitlement": {"entitlementId": "vjNKiRpr"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "EfPrDgcZ", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "MPB1Jsiy", "namespace": "wB96iVN5"}, "entitlement": {"entitlementId": "drcsyvP4"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "mfEK3w47", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 88, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "hGvVsoyn", "namespace": "nDSGxDwC"}, "entitlement": {"entitlementId": "YE1NeGsA"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "OwgJdNXz", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 81, "type": "CURRENCY"}], "source": "IAP", "transactionId": "KLX11Duu"}' \
    > test.out 2>&1
eval_tap $? 324 'DoRevocation' test.out

#- 325 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'oqKEGCLa' \
    --body '{"gameSessionId": "TkQtP9a1", "payload": {"7hBkQeNP": {}, "aVkpRgo1": {}, "ccA69hmO": {}}, "scid": "mc4ZG3bP", "sessionTemplateName": "QzRRIfdV"}' \
    > test.out 2>&1
eval_tap $? 325 'RegisterXblSessions' test.out

#- 326 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'rQzDuHSc' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '92X2u8kH' \
    --limit '97' \
    --offset '78' \
    --sku 'IkfOociX' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserSubscriptions' test.out

#- 327 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'vV0IzzPm' \
    --excludeSystem 'false' \
    --limit '56' \
    --offset '48' \
    --subscriptionId 'xbNFCK4L' \
    > test.out 2>&1
eval_tap $? 327 'GetUserSubscriptionActivities' test.out

#- 328 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'qMI0aFu4' \
    --body '{"grantDays": 28, "itemId": "Iv8HIQoe", "language": "gA47F55p", "reason": "phZrsWfb", "region": "485Hu1Mq", "source": "0KPbKlu0"}' \
    > test.out 2>&1
eval_tap $? 328 'PlatformSubscribeSubscription' test.out

#- 329 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'C6ElF3Zf' \
    --itemId 'MBGpvQxA' \
    > test.out 2>&1
eval_tap $? 329 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 330 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'okvLL99T' \
    --userId '3twPykwQ' \
    > test.out 2>&1
eval_tap $? 330 'GetUserSubscription' test.out

#- 331 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cvOSuFvI' \
    --userId '2A1evGnQ' \
    > test.out 2>&1
eval_tap $? 331 'DeleteUserSubscription' test.out

#- 332 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NHQ2whSH' \
    --userId 'lupk9QRj' \
    --force 'false' \
    --body '{"immediate": false, "reason": "X12efIVB"}' \
    > test.out 2>&1
eval_tap $? 332 'CancelSubscription' test.out

#- 333 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MsWIxgZ0' \
    --userId 'L0SMI1NG' \
    --body '{"grantDays": 30, "reason": "dYq4d4ig"}' \
    > test.out 2>&1
eval_tap $? 333 'GrantDaysToSubscription' test.out

#- 334 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x7HEjVG2' \
    --userId 'Tzpa6IC8' \
    --excludeFree 'false' \
    --limit '14' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 334 'GetUserSubscriptionBillingHistories' test.out

#- 335 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nxd1yIa6' \
    --userId 'rjbnYb2m' \
    --body '{"additionalData": {"cardSummary": "18Pcvct4"}, "authorisedTime": "1972-12-06T00:00:00Z", "chargebackReversedTime": "1991-05-26T00:00:00Z", "chargebackTime": "1975-01-06T00:00:00Z", "chargedTime": "1974-09-18T00:00:00Z", "createdTime": "1994-04-26T00:00:00Z", "currency": {"currencyCode": "kf1tQzPp", "currencySymbol": "Y0DigyVw", "currencyType": "VIRTUAL", "decimals": 78, "namespace": "I9F0EpTy"}, "customParameters": {"aVY1Cc4w": {}, "0y26ATdq": {}, "0oFGHbnX": {}}, "extOrderNo": "fLsIC7I7", "extTxId": "qLDzWVkb", "extUserId": "NMtu0G7j", "issuedAt": "1980-09-27T00:00:00Z", "metadata": {"KIg4LGPR": "kYsr1UUo", "GjLKbsBD": "xVngpM81", "oyuWx43R": "wWgZT10E"}, "namespace": "Fi56WVQ1", "nonceStr": "wmhmtjdN", "paymentData": {"discountAmount": 50, "discountCode": "0wNmv0h7", "subtotalPrice": 13, "tax": 38, "totalPrice": 99}, "paymentMethod": "JuznjPMM", "paymentMethodFee": 53, "paymentOrderNo": "XLqUf3d6", "paymentProvider": "WALLET", "paymentProviderFee": 88, "paymentStationUrl": "no1izr3Y", "price": 49, "refundedTime": "1979-04-26T00:00:00Z", "salesTax": 39, "sandbox": true, "sku": "xunsAZDI", "status": "INIT", "statusReason": "3uds7ALW", "subscriptionId": "Rkk1MQe7", "subtotalPrice": 17, "targetNamespace": "VgY8Yjlf", "targetUserId": "W6Q6G7lo", "tax": 30, "totalPrice": 90, "totalTax": 62, "txEndTime": "1972-04-21T00:00:00Z", "type": "X9rGLN7q", "userId": "6cR7L07d", "vat": 5}' \
    > test.out 2>&1
eval_tap $? 335 'ProcessUserSubscriptionNotification' test.out

#- 336 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Ph0cTxmf' \
    --namespace $AB_NAMESPACE \
    --userId 'fCswC2Lk' \
    --body '{"count": 9, "orderNo": "92FfbOxE"}' \
    > test.out 2>&1
eval_tap $? 336 'AcquireUserTicket' test.out

#- 337 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'LOxWsye4' \
    > test.out 2>&1
eval_tap $? 337 'QueryUserCurrencyWallets' test.out

#- 338 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '8IdvfMLg' \
    --namespace $AB_NAMESPACE \
    --userId 'u06H4h3a' \
    --body '{"allowOverdraft": true, "amount": 31, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"vyyOe2Jp": {}, "KJwThpXp": {}, "SKVn48je": {}}, "reason": "BULh2D8h"}' \
    > test.out 2>&1
eval_tap $? 338 'DebitUserWalletByCurrencyCode' test.out

#- 339 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'YqjLjati' \
    --namespace $AB_NAMESPACE \
    --userId 'apTZE60V' \
    --limit '65' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 339 'ListUserCurrencyTransactions' test.out

#- 340 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'nNUle11L' \
    --namespace $AB_NAMESPACE \
    --userId '4QyG09xo' \
    --request '{"amount": 60, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"CNq4D7ae": {}, "BPQEOGL1": {}, "EhBjUyfO": {}}, "reason": "eDILuuzM", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 340 'CheckBalance' test.out

#- 341 CheckWallet
eval_tap 0 341 'CheckWallet # SKIP deprecated' test.out

#- 342 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'BzpEGFvD' \
    --namespace $AB_NAMESPACE \
    --userId 'Pt0HcDCC' \
    --body '{"amount": 93, "expireAt": "1973-02-25T00:00:00Z", "metadata": {"enNyXj2x": {}, "udejv8Qf": {}, "ThkBmUHk": {}}, "origin": "Twitch", "reason": "WFFIUadv", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 342 'CreditUserWallet' test.out

#- 343 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '8nikZTT0' \
    --namespace $AB_NAMESPACE \
    --userId 'IYh9mwDA' \
    --request '{"amount": 33, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"NjfQyAs5": {}, "pNqY8zEi": {}, "NwaZDm9B": {}}, "reason": "piJQdAs2", "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 343 'DebitByWalletPlatform' test.out

#- 344 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'B8sHfXIi' \
    --namespace $AB_NAMESPACE \
    --userId 'o4gk9L3L' \
    --body '{"amount": 55, "metadata": {"o2vJXllx": {}, "Nk5lEFRi": {}, "CQZNDc2d": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 344 'PayWithUserWallet' test.out

#- 345 GetUserWallet
eval_tap 0 345 'GetUserWallet # SKIP deprecated' test.out

#- 346 DebitUserWallet
eval_tap 0 346 'DebitUserWallet # SKIP deprecated' test.out

#- 347 DisableUserWallet
eval_tap 0 347 'DisableUserWallet # SKIP deprecated' test.out

#- 348 EnableUserWallet
eval_tap 0 348 'EnableUserWallet # SKIP deprecated' test.out

#- 349 ListUserWalletTransactions
eval_tap 0 349 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 350 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'fc7Y9Sen' \
    > test.out 2>&1
eval_tap $? 350 'ListViews' test.out

#- 351 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'tgP85FvM' \
    --body '{"displayOrder": 14, "localizations": {"z6NytBf8": {"description": "iXp7xRYg", "localExt": {"Z1IQIMUK": {}, "ozAMozXZ": {}, "Sv50wGjP": {}}, "longDescription": "Cbk1g3V4", "title": "80F42oIw"}, "J5PIvok4": {"description": "P4sV1Nyw", "localExt": {"DtcQobJi": {}, "AkxzEWZA": {}, "u881C0Ed": {}}, "longDescription": "vtIDLGoy", "title": "pE97ine4"}, "gJd56kco": {"description": "5CViRQg6", "localExt": {"CH03XZK8": {}, "Yc49k2iy": {}, "YmnTVjY7": {}}, "longDescription": "gsHnG4pe", "title": "ovBa7o5K"}}, "name": "0ItpMBvo"}' \
    > test.out 2>&1
eval_tap $? 351 'CreateView' test.out

#- 352 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'CgS4PsPp' \
    --storeId 'DltRgXJ6' \
    > test.out 2>&1
eval_tap $? 352 'GetView' test.out

#- 353 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'lrrioKXF' \
    --storeId 'KRNuKpKv' \
    --body '{"displayOrder": 79, "localizations": {"l2E5TiVs": {"description": "42QCPZZv", "localExt": {"E1Gyu5OG": {}, "6Ii7eACz": {}, "FMSE0hCt": {}}, "longDescription": "7z7MwxN5", "title": "QCQs0NHo"}, "V0CxOyg9": {"description": "ZtvFMdey", "localExt": {"uwUr2uYo": {}, "mVI79Y3G": {}, "Mi3hkCsn": {}}, "longDescription": "IwyNWJwX", "title": "f3ZXcEuc"}, "arYa9esN": {"description": "zMBuNUWd", "localExt": {"EV4q9DFr": {}, "sS4pDdb8": {}, "zizzoq1t": {}}, "longDescription": "8HcTP9Xf", "title": "Q3waztwT"}}, "name": "bvx4RgCr"}' \
    > test.out 2>&1
eval_tap $? 353 'UpdateView' test.out

#- 354 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'rCpvsQ4A' \
    --storeId 'JvSVUB71' \
    > test.out 2>&1
eval_tap $? 354 'DeleteView' test.out

#- 355 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'GetWalletConfig' test.out

#- 356 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateWalletConfig' test.out

#- 357 QueryWallets
eval_tap 0 357 'QueryWallets # SKIP deprecated' test.out

#- 358 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 60, "expireAt": "1971-01-05T00:00:00Z", "metadata": {"HagTqpxm": {}, "kmr9SfrG": {}, "Dti8nYBG": {}}, "origin": "Steam", "reason": "tTfPtFXl", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "C8gmmK1c", "userIds": ["yx9wGIqN", "zL8h18Uz", "FQyYnq01"]}, {"creditRequest": {"amount": 20, "expireAt": "1987-10-13T00:00:00Z", "metadata": {"ztx6gkKR": {}, "M13PZJsw": {}, "jXWbbN1L": {}}, "origin": "GooglePlay", "reason": "uzuZccgg", "source": "REFERRAL_BONUS"}, "currencyCode": "N4PmSagR", "userIds": ["e04uHFws", "lvqChptu", "4yB9awCf"]}, {"creditRequest": {"amount": 82, "expireAt": "1982-03-29T00:00:00Z", "metadata": {"d7VSOqpz": {}, "GcYNBlsU": {}, "5qcZ4zDT": {}}, "origin": "Nintendo", "reason": "pNwDLtnX", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "COOzzj7B", "userIds": ["zdXKrdOm", "9jkX4R6n", "NLptR7wS"]}]' \
    > test.out 2>&1
eval_tap $? 358 'BulkCredit' test.out

#- 359 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "1erfmsM2", "request": {"allowOverdraft": true, "amount": 53, "balanceOrigin": "Steam", "balanceSource": "IAP_REVOCATION", "metadata": {"putKgCJz": {}, "DphaowWV": {}, "ccuh0ilL": {}}, "reason": "ZHJtAru4"}, "userIds": ["Rm5i98py", "CcsgewIP", "9lpjusEw"]}, {"currencyCode": "IsICjQPj", "request": {"allowOverdraft": false, "amount": 30, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"fyfDeIXw": {}, "CatdhXPH": {}, "PVjbc4eZ": {}}, "reason": "ROSWZZ98"}, "userIds": ["elLDYSW7", "7mRoYZCT", "N6JowjF1"]}, {"currencyCode": "YDjQDg0c", "request": {"allowOverdraft": false, "amount": 61, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"LPSsLjC6": {}, "zW2IXREd": {}, "kGxAPWdE": {}}, "reason": "hmWoARML"}, "userIds": ["k53aJVt0", "JMUDZU0f", "wxDoFq49"]}]' \
    > test.out 2>&1
eval_tap $? 359 'BulkDebit' test.out

#- 360 GetWallet
eval_tap 0 360 'GetWallet # SKIP deprecated' test.out

#- 361 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'lZU6puJe' \
    --end 'v539Kyio' \
    --start 'cs3NfzwA' \
    > test.out 2>&1
eval_tap $? 361 'SyncOrders' test.out

#- 362 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["mEv6zE92", "SxK5bzTK", "46K3gp3c"], "apiKey": "cDXd8pSE", "authoriseAsCapture": false, "blockedPaymentMethods": ["RxMvonK3", "E6e54F4f", "STQj8qwe"], "clientKey": "E8SwXRqI", "dropInSettings": "enGtParJ", "liveEndpointUrlPrefix": "wzjcJkhQ", "merchantAccount": "ipxAbfVg", "notificationHmacKey": "71dFBX2J", "notificationPassword": "i1RYLW6B", "notificationUsername": "Ntc1wEaU", "returnUrl": "a0WKkvDr", "settings": "WrJ9xia0"}' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfig' test.out

#- 363 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "WdFTN4B2", "privateKey": "Y8WWBWyD", "publicKey": "R1UhAqL8", "returnUrl": "d2O1DEyj"}' \
    > test.out 2>&1
eval_tap $? 363 'TestAliPayConfig' test.out

#- 364 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "sJiBX6xx", "secretKey": "vygrqr13"}' \
    > test.out 2>&1
eval_tap $? 364 'TestCheckoutConfig' test.out

#- 365 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '2kLN2o0d' \
    --region 'RMCO5vnb' \
    > test.out 2>&1
eval_tap $? 365 'DebugMatchedPaymentMerchantConfig' test.out

#- 366 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "SEXlXPyX", "webhookSecretKey": "xAoRJJoN"}' \
    > test.out 2>&1
eval_tap $? 366 'TestNeonPayConfig' test.out

#- 367 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "GqpIvVVp", "clientSecret": "RjyCprPc", "returnUrl": "jn2IB93O", "webHookId": "RAQiGd6g"}' \
    > test.out 2>&1
eval_tap $? 367 'TestPayPalConfig' test.out

#- 368 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["RIU0X86n", "gRolvtUV", "YcGYoPxz"], "publishableKey": "1nz0EQcy", "secretKey": "DuhyzMtF", "webhookSecret": "QIbBtOXx"}' \
    > test.out 2>&1
eval_tap $? 368 'TestStripeConfig' test.out

#- 369 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ZNzAQxgv", "key": "AfTiPdk7", "mchid": "lsakw6SM", "returnUrl": "QSxPak7A"}' \
    > test.out 2>&1
eval_tap $? 369 'TestWxPayConfig' test.out

#- 370 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "HGddLDID", "flowCompletionUrl": "lTtwPxFx", "merchantId": 31, "projectId": 48, "projectSecretKey": "oVdhAYy3"}' \
    > test.out 2>&1
eval_tap $? 370 'TestXsollaConfig' test.out

#- 371 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'bSDcLNzv' \
    > test.out 2>&1
eval_tap $? 371 'GetPaymentMerchantConfig1' test.out

#- 372 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'LflFzYqA' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["ejaLUKy8", "hjRx9UjX", "gwtBWska"], "apiKey": "VCzDTGPj", "authoriseAsCapture": true, "blockedPaymentMethods": ["4BZJHnNx", "NvzlJEim", "4inOATLJ"], "clientKey": "88YOyVYb", "dropInSettings": "NUwtYwIa", "liveEndpointUrlPrefix": "r7LnSGkE", "merchantAccount": "Ff0tAZM7", "notificationHmacKey": "1tPWz9QL", "notificationPassword": "DTx3r0Eu", "notificationUsername": "tiSxbCky", "returnUrl": "eXn2XYAX", "settings": "TnccAf8L"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAdyenConfig' test.out

#- 373 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'tVwOh6Yo' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 373 'TestAdyenConfigById' test.out

#- 374 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'ewZnOwrO' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "0ABr8zbu", "privateKey": "ldGtQTBb", "publicKey": "GbqNrUXN", "returnUrl": "q5BWixoX"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateAliPayConfig' test.out

#- 375 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'DGqOtJ1n' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 375 'TestAliPayConfigById' test.out

#- 376 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'NBgP49JO' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "F1Fw0Whr", "secretKey": "yoLNpHtQ"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateCheckoutConfig' test.out

#- 377 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'QHJCpxI9' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 377 'TestCheckoutConfigById' test.out

#- 378 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'qdYic5xu' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "kiCquX47", "webhookSecretKey": "wnrbAxXO"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateNeonPayConfig' test.out

#- 379 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'JzoanqJq' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 379 'TestNeonPayConfigById' test.out

#- 380 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'BVzOtega' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "jfKxX8lz", "clientSecret": "fgWJOlyK", "returnUrl": "MApGBcNT", "webHookId": "sysJNkZP"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdatePayPalConfig' test.out

#- 381 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'G9U3kbwc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 381 'TestPayPalConfigById' test.out

#- 382 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'lkuRq0yi' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["MEMmaHBy", "wAy5g2QT", "snD7XpxZ"], "publishableKey": "c9aHvCPU", "secretKey": "8Q5WIPQD", "webhookSecret": "QX91xc6V"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateStripeConfig' test.out

#- 383 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'ICVaChti' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 383 'TestStripeConfigById' test.out

#- 384 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'VZrlXNxt' \
    --validate 'false' \
    --body '{"appId": "o9yX0S3n", "key": "krf3LZXD", "mchid": "XsiNssYd", "returnUrl": "7ErpplU7"}' \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfig' test.out

#- 385 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 's6Zrv8JX' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 385 'UpdateWxPayConfigCert' test.out

#- 386 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'elIQNi0e' \
    > test.out 2>&1
eval_tap $? 386 'TestWxPayConfigById' test.out

#- 387 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '38zE3rNJ' \
    --validate 'false' \
    --body '{"apiKey": "RIT418Ot", "flowCompletionUrl": "QiDU4qPg", "merchantId": 77, "projectId": 91, "projectSecretKey": "NBLg3pga"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaConfig' test.out

#- 388 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ZQJy3aJ3' \
    > test.out 2>&1
eval_tap $? 388 'TestXsollaConfigById' test.out

#- 389 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'f4f6viEx' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 389 'UpdateXsollaUIConfig' test.out

#- 390 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '0' \
    --namespace 'kSaToxyK' \
    --offset '83' \
    --region 'LiWtYxfK' \
    > test.out 2>&1
eval_tap $? 390 'QueryPaymentProviderConfig' test.out

#- 391 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "zuO3i3Aw", "region": "vAWRsmq2", "sandboxTaxJarApiToken": "HoAnNwJV", "specials": ["PAYPAL", "ADYEN", "CHECKOUT"], "taxJarApiToken": "HGiUvkor", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 391 'CreatePaymentProviderConfig' test.out

#- 392 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetAggregatePaymentProviders' test.out

#- 393 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'QCjUi0g6' \
    --region 'e3F5ksvQ' \
    > test.out 2>&1
eval_tap $? 393 'DebugMatchedPaymentProviderConfig' test.out

#- 394 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 394 'GetSpecialPaymentProviders' test.out

#- 395 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'CWE1N6mj' \
    --body '{"aggregate": "CHECKOUT", "namespace": "bCki8QwL", "region": "HwrjSoMG", "sandboxTaxJarApiToken": "EwNi4n8E", "specials": ["PAYPAL", "CHECKOUT", "STRIPE"], "taxJarApiToken": "tMYMsi7U", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 395 'UpdatePaymentProviderConfig' test.out

#- 396 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'h3GgvVg1' \
    > test.out 2>&1
eval_tap $? 396 'DeletePaymentProviderConfig' test.out

#- 397 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 397 'GetPaymentTaxConfig' test.out

#- 398 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "ZCIKnpXi", "taxJarApiToken": "KBuhrFum", "taxJarEnabled": true, "taxJarProductCodesMapping": {"8QnDxSXp": "KlwC7tdC", "71BXw1QX": "A3lnyhEd", "uloPaZz0": "WyW7otmi"}}' \
    > test.out 2>&1
eval_tap $? 398 'UpdatePaymentTaxConfig' test.out

#- 399 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'XMVLxpLW' \
    --end 'Kq04JuCu' \
    --start 'jxzpIyyt' \
    > test.out 2>&1
eval_tap $? 399 'SyncPaymentOrders' test.out

#- 400 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'vlX18LHJ' \
    --storeId 'yBWxEkWM' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetRootCategories' test.out

#- 401 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ruOpsGwd' \
    --storeId 'jzsk3T0h' \
    > test.out 2>&1
eval_tap $? 401 'DownloadCategories' test.out

#- 402 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'AikRmRDM' \
    --namespace $AB_NAMESPACE \
    --language 'JZ4yZxov' \
    --storeId '9OsPrgkq' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetCategory' test.out

#- 403 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'scU43vkE' \
    --namespace $AB_NAMESPACE \
    --language 'EnYYqq2J' \
    --storeId 'A5IZQ7qc' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetChildCategories' test.out

#- 404 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'o5CL12tJ' \
    --namespace $AB_NAMESPACE \
    --language 'tjEYbwUT' \
    --storeId 'UQYHdjSn' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetDescendantCategories' test.out

#- 405 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 405 'PublicListCurrencies' test.out

#- 406 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 406 'GeDLCDurableRewardShortMap' test.out

#- 407 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 407 'GetAppleConfigVersion' test.out

#- 408 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 408 'GetIAPItemMapping' test.out

#- 409 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'KPu5ZYFf' \
    --region 'szLumQX3' \
    --storeId 'dvI5cbP2' \
    --appId 'JljcoNBL' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemByAppId' test.out

#- 410 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'mA6JwPZT' \
    --categoryPath 'RkrXeZ36' \
    --features 'ALoHmdb4' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language 'C45EpoJx' \
    --limit '44' \
    --offset '1' \
    --region 'zq5OsInd' \
    --sortBy '["createdAt:asc", "updatedAt:desc", "createdAt:desc"]' \
    --storeId 'ZUX00mf5' \
    --tags 'VmBUixJM' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryItems' test.out

#- 411 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'Ip7a2iVt' \
    --region 'Z1mD4Und' \
    --storeId 'xQELKyug' \
    --sku 'hnJ4dfJt' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetItemBySku' test.out

#- 412 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'LHRTtCbm' \
    --storeId '4nT8pr2c' \
    --itemIds '36JXlIhI' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEstimatedPrice' test.out

#- 413 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'FvTdV80x' \
    --region '5nX0PZli' \
    --storeId 'MMQwd4k4' \
    --itemIds '1NlWTMYW' \
    > test.out 2>&1
eval_tap $? 413 'PublicBulkGetItems' test.out

#- 414 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["FicprTzM", "PGWDstSZ", "Fsn8op0P"]}' \
    > test.out 2>&1
eval_tap $? 414 'PublicValidateItemPurchaseCondition' test.out

#- 415 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'MEDIA' \
    --limit '96' \
    --offset '21' \
    --region 'MKitL86m' \
    --storeId 'ONmD6KML' \
    --keyword '5vvEfC4t' \
    --language 'fV61tZGh' \
    > test.out 2>&1
eval_tap $? 415 'PublicSearchItems' test.out

#- 416 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'jzYmnHPe' \
    --namespace $AB_NAMESPACE \
    --language 'k4evqnly' \
    --region 'wpp84z2p' \
    --storeId 'gMYyNCZj' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetApp' test.out

#- 417 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '18pmC0XM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItemDynamicData' test.out

#- 418 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'ctOspIJL' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'VDVyYc11' \
    --populateBundle 'true' \
    --region 'qyDQTb8Y' \
    --storeId 'SdeZPafV' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetItem' test.out

#- 419 GetPaymentCustomization
eval_tap 0 419 'GetPaymentCustomization # SKIP deprecated' test.out

#- 420 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "MGEXskr1", "successUrl": "py6c5DtI"}, "paymentOrderNo": "H68VejvA", "paymentProvider": "PAYPAL", "returnUrl": "pilGBgQu", "ui": "715moEl4", "zipCode": "FuMfDznC"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentUrl' test.out

#- 421 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rouJqBSQ' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetPaymentMethods' test.out

#- 422 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AbomSH2W' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUnpaidPaymentOrder' test.out

#- 423 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O9Y2s1ou' \
    --paymentProvider 'WALLET' \
    --zipCode '2w4461Pr' \
    --body '{"token": "Z0QsfjGq"}' \
    > test.out 2>&1
eval_tap $? 423 'Pay' test.out

#- 424 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qXSpY3yM' \
    > test.out 2>&1
eval_tap $? 424 'PublicCheckPaymentOrderPaidStatus' test.out

#- 425 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ADYEN' \
    --region 'middd6rf' \
    > test.out 2>&1
eval_tap $? 425 'GetPaymentPublicConfig' test.out

#- 426 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'gzPJCssD' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetQRCode' test.out

#- 427 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'sybVsZGF' \
    --foreinginvoice 'KK0DubVR' \
    --invoiceId 'wgn8XUnq' \
    --payload 'Rf49qWuF' \
    --redirectResult 'TXYgzXCa' \
    --resultCode '07dASKpB' \
    --sessionId 'ZJ5iB1NT' \
    --status 'UhWomfZu' \
    --token 'nyfQeR0t' \
    --type 'jC6z4v04' \
    --userId 'ceMO5RGG' \
    --orderNo 'qBFChCgy' \
    --paymentOrderNo '4GqqHosz' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'X8Qwafxn' \
    > test.out 2>&1
eval_tap $? 427 'PublicNormalizePaymentReturnUrl' test.out

#- 428 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'tI3u7EC4' \
    --paymentOrderNo 'u4o1qmex' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 428 'GetPaymentTaxValue' test.out

#- 429 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '6TjwJ7nn' \
    > test.out 2>&1
eval_tap $? 429 'GetRewardByCode' test.out

#- 430 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Kw9k2Dm6' \
    --limit '40' \
    --offset '60' \
    --sortBy '["namespace", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 430 'QueryRewards1' test.out

#- 431 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'KCNxJgxq' \
    > test.out 2>&1
eval_tap $? 431 'GetReward1' test.out

#- 432 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 432 'PublicListStores' test.out

#- 433 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["pvhX2PfW", "y6yXvavh", "dbOf9Q0U"]' \
    --itemIds '["y5OuJ0wM", "Gx7ScA8N", "uU0b9shl"]' \
    --skus '["jfG3hmy6", "rvcd8hxs", "7KEytFGF"]' \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyMyActiveEntitlement' test.out

#- 434 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Y195eYSd' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'rebmbCcd' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 436 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'ZASqTuAu' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 437 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["I34rNlPr", "841TwuMy", "jLQI9OQl"]' \
    --itemIds '["P7fJYzWm", "TPdTcJWD", "s5whtQMQ"]' \
    --skus '["qPzsQywY", "93gq9MP6", "F6Ke2W61"]' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetEntitlementOwnershipToken' test.out

#- 438 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "t92Ua68D", "language": "LgNm-pKKJ", "region": "5dsIJ3pJ"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncTwitchDropsEntitlement' test.out

#- 439 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'pefIrnmN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 439 'PublicGetMyWallet' test.out

#- 440 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '1Cfh1zSk' \
    --body '{"epicGamesJwtToken": "uuMV20dm"}' \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGameDLC' test.out

#- 441 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'eiq91QVm' \
    > test.out 2>&1
eval_tap $? 441 'SyncOculusDLC' test.out

#- 442 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'CgTE78uq' \
    --body '{"serviceLabel": 69}' \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventory' test.out

#- 443 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '0bNsr4Ix' \
    --body '{"serviceLabels": [44, 45, 78]}' \
    > test.out 2>&1
eval_tap $? 443 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 444 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '2rPaksym' \
    --body '{"appId": "XMjCExFq", "steamId": "Tys69UkW"}' \
    > test.out 2>&1
eval_tap $? 444 'SyncSteamDLC' test.out

#- 445 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '7QAwbV9n' \
    --body '{"xstsToken": "KxhJInRs"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncXboxDLC' test.out

#- 446 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LrblGDcm' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'HYpMncIu' \
    --features '["3Qewwlnh", "aImgoz88", "b9PINhUy"]' \
    --itemId '["GSRsuD8C", "aRxFLf4C", "W9oFaFHb"]' \
    --limit '27' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlements' test.out

#- 447 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XTv5aOaE' \
    --appId 'iUHnBAlT' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserAppEntitlementByAppId' test.out

#- 448 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'xZZ9MEEN' \
    --limit '70' \
    --offset '49' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 448 'PublicQueryUserEntitlementsByAppType' test.out

#- 449 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'dkI0s3M2' \
    --availablePlatformOnly 'true' \
    --ids '["W8qkRJjm", "CWMfU2St", "PiM7vCbK"]' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlementsByIds' test.out

#- 450 PublicGetUserEntitlementByItemId
eval_tap 0 450 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 451 PublicGetUserEntitlementBySku
eval_tap 0 451 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 452 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'DrANb67V' \
    --endDate 'tSD75fZZ' \
    --entitlementClazz 'OPTIONBOX' \
    --limit '23' \
    --offset '12' \
    --startDate '3FAq7RJn' \
    > test.out 2>&1
eval_tap $? 452 'PublicUserEntitlementHistory' test.out

#- 453 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'eT5f3jYG' \
    --appIds '["z5xVo17X", "TJa9sfbf", "Br8Zw1wV"]' \
    --itemIds '["DI3pf2UP", "Ild12fWv", "vP5lg7t4"]' \
    --skus '["255vrchc", "7X298RoG", "OCLNCABR"]' \
    > test.out 2>&1
eval_tap $? 453 'PublicExistsAnyUserActiveEntitlement' test.out

#- 454 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xIs5KDfR' \
    --appId 'Tr8393Yi' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uuTlV5x9' \
    --entitlementClazz 'CODE' \
    --itemId 'SyqZW68o' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 456 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'xDx6i6BD' \
    --ids '["5drCQMYw", "miulYGCs", "cOf3B7NJ"]' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 457 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'RzDbqK8G' \
    --entitlementClazz 'CODE' \
    --sku 'vGlBisEZ' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 458 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '4FjwT8R9' \
    --namespace $AB_NAMESPACE \
    --userId 'OhLr9D7a' \
    > test.out 2>&1
eval_tap $? 458 'PublicGetUserEntitlement' test.out

#- 459 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'BqSAIcYV' \
    --namespace $AB_NAMESPACE \
    --userId 'xaLyKFxg' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["rT975QtO", "z0n519Zv", "g8Qy43ba"], "requestId": "Y9mHISFX", "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 459 'PublicConsumeUserEntitlement' test.out

#- 460 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '8MRRr1ic' \
    --namespace $AB_NAMESPACE \
    --userId 'mDi98pJe' \
    --body '{"requestId": "O1u6WVfR", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSellUserEntitlement' test.out

#- 461 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'iwiqbUxe' \
    --namespace $AB_NAMESPACE \
    --userId 'gdla3FHW' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 461 'PublicSplitUserEntitlement' test.out

#- 462 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '2XjcqMBV' \
    --namespace $AB_NAMESPACE \
    --userId 'et6LxRJQ' \
    --body '{"entitlementId": "YwYx1CTt", "metadata": {"operationSource": "INVENTORY"}, "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 462 'PublicTransferUserEntitlement' test.out

#- 463 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'eKWvwYIx' \
    --body '{"code": "hr7ar1Io", "language": "Lm_dPUK", "region": "C8d7XyHE"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicRedeemCode' test.out

#- 464 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'GYZMZ3C0' \
    --body '{"excludeOldTransactions": true, "language": "NpZo-GnbY", "productId": "WFEmXKQA", "receiptData": "MTp7PaP6", "region": "rNAYwJtj", "transactionId": "BDGbkaHz"}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillAppleIAPItem' test.out

#- 465 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '1oCKAQkR' \
    --body '{"epicGamesJwtToken": "Um4BsG9P"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncEpicGamesInventory' test.out

#- 466 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'J5d3YXWU' \
    --body '{"autoAck": false, "autoConsume": true, "language": "FA-zeNC-Qr", "orderId": "X0zvD1U7", "packageName": "ssoTdVoc", "productId": "TyUr3XXM", "purchaseTime": 64, "purchaseToken": "xosnYpyC", "region": "bl08WkLn", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 466 'PublicFulfillGoogleIAPItem' test.out

#- 467 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'XAeo2TyF' \
    --body '{"skus": ["s0eDsm42", "V852RYdp", "GW3g9jOZ"]}' \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusSubscriptions' test.out

#- 468 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'R8RgfSTi' \
    > test.out 2>&1
eval_tap $? 468 'SyncOculusConsumableEntitlements' test.out

#- 469 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'DgQO3X7c' \
    --body '{"currencyCode": "AsTDz82x", "price": 0.9512343006592059, "productId": "6KjhPMed", "serviceLabel": 73}' \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStore' test.out

#- 470 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'B1BPTs8a' \
    --body '{"currencyCode": "Edv9UAA2", "price": 0.7785298363842332, "productId": "p8dO4o5J", "serviceLabels": [74, 82, 7]}' \
    > test.out 2>&1
eval_tap $? 470 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 471 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'diwPvgeE' \
    --body '{"appId": "DbmEKIHL", "currencyCode": "MNmfQwGQ", "language": "OFvj_JIbE", "price": 0.8838813357015803, "productId": "u8ffwdMP", "region": "Ai1XBf7V", "steamId": "EUj1oewL"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamInventory' test.out

#- 472 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'm6WEjL5A' \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamAbnormalTransaction' test.out

#- 473 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'o9zciU4D' \
    --body '{"orderId": "0bmsjw2p"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncSteamIAPByTransaction' test.out

#- 474 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'ClzYtGcA' \
    --activeOnly 'false' \
    --groupId 'IMEcShAO' \
    --limit '27' \
    --offset '0' \
    --productId 'eDkLDMij' \
    > test.out 2>&1
eval_tap $? 474 'PublicQueryUserThirdPartySubscription' test.out

#- 475 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y5Y5pttb' \
    --body '{"gameId": "3VzRuTn9", "language": "Gmf-236", "region": "zMf258Sn"}' \
    > test.out 2>&1
eval_tap $? 475 'SyncTwitchDropsEntitlement1' test.out

#- 476 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Vcbp0vJ9' \
    --body '{"currencyCode": "wbSSxUz7", "price": 0.1404257538840925, "productId": "SFnIA4Wk", "xstsToken": "HGvgMN1C"}' \
    > test.out 2>&1
eval_tap $? 476 'SyncXboxInventory' test.out

#- 477 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'bAcMeLcT' \
    --discounted 'true' \
    --itemId '1F5hYfvk' \
    --limit '76' \
    --offset '46' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserOrders' test.out

#- 478 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cFXufLSP' \
    --body '{"currencyCode": "rDYt901i", "discountCodes": ["bJW6pFFI", "9VYKpGMJ", "enkIGlaX"], "discountedPrice": 43, "ext": {"Gue9pVmN": {}, "mRmhAAN8": {}, "K04RpfAl": {}}, "itemId": "jOc3jvXe", "language": "Fv_186", "price": 7, "quantity": 10, "region": "8FapBOys", "returnUrl": "a0u91MA4", "sectionId": "GCOrYwPD"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicCreateUserOrder' test.out

#- 479 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'cr6W4E9A' \
    --body '{"currencyCode": "DUZ54fvq", "discountCodes": ["aKcxYLPJ", "cUkGJkGY", "cEiCRlOS"], "discountedPrice": 8, "itemId": "RzEv4GqW", "price": 99, "quantity": 20}' \
    > test.out 2>&1
eval_tap $? 479 'PublicPreviewOrderPrice' test.out

#- 480 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ckrJYCvX' \
    --userId 'p9PAMOLE' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrder' test.out

#- 481 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'biygbRqY' \
    --userId '50wUzXrL' \
    > test.out 2>&1
eval_tap $? 481 'PublicCancelUserOrder' test.out

#- 482 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'vkbzVLZR' \
    --userId '1fYOyqHf' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetUserOrderHistories' test.out

#- 483 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'AiCOYuQJ' \
    --userId 'CDMvY6Ly' \
    > test.out 2>&1
eval_tap $? 483 'PublicDownloadUserOrderReceipt' test.out

#- 484 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'r4V8X2Sk' \
    > test.out 2>&1
eval_tap $? 484 'PublicGetPaymentAccounts' test.out

#- 485 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'eHysNMgr' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '81EIBrRu' \
    > test.out 2>&1
eval_tap $? 485 'PublicDeletePaymentAccount' test.out

#- 486 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '3LdCogSY' \
    --autoCalcEstimatedPrice 'true' \
    --language 'Z3K4ekIf' \
    --region 'U12XUiAI' \
    --storeId 'SY93LYSA' \
    --viewId 'PBmDwxft' \
    > test.out 2>&1
eval_tap $? 486 'PublicListActiveSections' test.out

#- 487 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Idp2Bu2S' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'ZiAarydz' \
    --limit '17' \
    --offset '97' \
    --sku '7fStQ9KS' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 487 'PublicQueryUserSubscriptions' test.out

#- 488 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'D90JCnbo' \
    --body '{"currencyCode": "bHfwrjY3", "itemId": "h4M0yoHl", "language": "ChGV-WIIm", "region": "GtPKP0pk", "returnUrl": "lPwnwQHv", "source": "LnGSm9VM"}' \
    > test.out 2>&1
eval_tap $? 488 'PublicSubscribeSubscription' test.out

#- 489 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'OIZYUw79' \
    --itemId 'UgMMpe9Z' \
    > test.out 2>&1
eval_tap $? 489 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 490 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EjIFeEXN' \
    --userId '6E2h2XLN' \
    > test.out 2>&1
eval_tap $? 490 'PublicGetUserSubscription' test.out

#- 491 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4AkzJ3y9' \
    --userId '7iKMrE9Z' \
    > test.out 2>&1
eval_tap $? 491 'PublicChangeSubscriptionBillingAccount' test.out

#- 492 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'filgQ11Y' \
    --userId 'WD9kHiaR' \
    --body '{"immediate": true, "reason": "gHzbQgK2"}' \
    > test.out 2>&1
eval_tap $? 492 'PublicCancelSubscription' test.out

#- 493 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pzC5hHJN' \
    --userId 'zr2UFlwb' \
    --excludeFree 'false' \
    --limit '48' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetUserSubscriptionBillingHistories' test.out

#- 494 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'HANdBs7w' \
    --language 'ZNJM6wGy' \
    --storeId '1C2uune6' \
    > test.out 2>&1
eval_tap $? 494 'PublicListViews' test.out

#- 495 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'lv0SiCnA' \
    --namespace $AB_NAMESPACE \
    --userId 'g7BzXdj0' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetWallet' test.out

#- 496 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'QQlwRdd4' \
    --namespace $AB_NAMESPACE \
    --userId '4w9pznx5' \
    --limit '87' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 496 'PublicListUserWalletTransactions' test.out

#- 497 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 497 'PublicGetMyDLCContent' test.out

#- 498 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'WKXHr0xm' \
    --limit '37' \
    --offset '14' \
    --startTime 'izZcxmJN' \
    --state 'REVOKE_FAILED' \
    --transactionId '4ImIND6c' \
    --userId 'qKFu9vu9' \
    > test.out 2>&1
eval_tap $? 498 'QueryFulfillments' test.out

#- 499 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'kZ0gIdmj' \
    --baseAppId 'AcIToN8r' \
    --categoryPath '7bIFdCG9' \
    --features 'pMIPdFHb' \
    --includeSubCategoryItem 'false' \
    --itemName 'yrv8mr86' \
    --itemStatus 'INACTIVE' \
    --itemType '["SEASON", "BUNDLE", "MEDIA"]' \
    --limit '52' \
    --offset '41' \
    --region 'OAl33iUk' \
    --sectionExclusive 'true' \
    --sortBy '["name", "updatedAt", "createdAt"]' \
    --storeId 'Rr7FLwEq' \
    --tags 'ailszl5V' \
    --targetNamespace 'lBILHK9Z' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 499 'QueryItemsV2' test.out

#- 500 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'v7vRUnYX' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 500 'ImportStore1' test.out

#- 501 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'DE3a7QA3' \
    --body '{"itemIds": ["iHqKnGKc", "EmCNsDSp", "1ZNtu0lD"]}' \
    > test.out 2>&1
eval_tap $? 501 'ExportStore1' test.out

#- 502 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '2r9sPSRP' \
    --body '{"entitlementCollectionId": "nkL7ZqhJ", "entitlementOrigin": "GooglePlay", "metadata": {"qnOot848": {}, "mcWw8sYn": {}, "uKRGdvQp": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "4dXK4J1l", "namespace": "4PV9H4EZ"}, "item": {"itemId": "KQjPGj0A", "itemName": "H0cEGqgz", "itemSku": "FNn9DCri", "itemType": "fUS2BYyR"}, "quantity": 56, "type": "ITEM"}, {"currency": {"currencyCode": "mCpB5r8S", "namespace": "EgjcmA8r"}, "item": {"itemId": "AscLdio3", "itemName": "CXoO18T4", "itemSku": "pByAlrUH", "itemType": "dY8nuNgj"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "dVt4AORq", "namespace": "aizfEbS4"}, "item": {"itemId": "D5epehN9", "itemName": "fruqL9MW", "itemSku": "SRi1jnRd", "itemType": "OMIT4H4m"}, "quantity": 68, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "COpisXDF"}' \
    > test.out 2>&1
eval_tap $? 502 'FulfillRewardsV2' test.out

#- 503 FulfillItems
eval_tap 0 503 'FulfillItems # SKIP deprecated' test.out

#- 504 RetryFulfillItems
eval_tap 0 504 'RetryFulfillItems # SKIP deprecated' test.out

#- 505 RevokeItems
eval_tap 0 505 'RevokeItems # SKIP deprecated' test.out

#- 506 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'bjSqMr1i' \
    --body '{"transactionId": "ZnDsQtKh"}' \
    > test.out 2>&1
eval_tap $? 506 'V2PublicFulfillAppleIAPItem' test.out

#- 507 BulkFulfillItemsV3
samples/cli/sample-apps Platform bulkFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KSVTQiaW' \
    --body '[{"items": [{"duration": 97, "endDate": "1989-09-08T00:00:00Z", "entitlementCollectionId": "EJ42EYtm", "entitlementOrigin": "Other", "itemId": "uZX0ObBz", "itemSku": "pV8LRvFq", "language": "5qamwPDp", "metadata": {"qeSWiDd1": {}, "WvVbZg6r": {}, "HeO1uqeK": {}}, "orderNo": "sZakUl49", "origin": "IOS", "quantity": 45, "region": "e6SJK3ak", "source": "REFERRAL_BONUS", "startDate": "1980-02-15T00:00:00Z", "storeId": "F2HskMy9"}, {"duration": 55, "endDate": "1998-06-06T00:00:00Z", "entitlementCollectionId": "6b8HbQjh", "entitlementOrigin": "Nintendo", "itemId": "4YtjdykD", "itemSku": "rYyLXdPv", "language": "hPt630in", "metadata": {"w12ROXt3": {}, "bAaCQami": {}, "TzjsZ0H9": {}}, "orderNo": "voddLhAH", "origin": "IOS", "quantity": 74, "region": "NBPIgRlW", "source": "REDEEM_CODE", "startDate": "1977-08-06T00:00:00Z", "storeId": "E9rdsYJa"}, {"duration": 61, "endDate": "1996-10-01T00:00:00Z", "entitlementCollectionId": "VKoOI8OD", "entitlementOrigin": "Twitch", "itemId": "WI8FkWBL", "itemSku": "g1DOYSiN", "language": "LRJz7cUe", "metadata": {"q3xcZR34": {}, "9fQFjDTE": {}, "f64wWH2E": {}}, "orderNo": "quxptLNK", "origin": "Other", "quantity": 83, "region": "pitwuFzR", "source": "IAP", "startDate": "1987-11-09T00:00:00Z", "storeId": "2hDUOnkI"}], "transactionId": "RuFO6jf1"}, {"items": [{"duration": 48, "endDate": "1987-02-21T00:00:00Z", "entitlementCollectionId": "zlDqsV0Z", "entitlementOrigin": "Oculus", "itemId": "H8cSFhoM", "itemSku": "LAmmxlWY", "language": "u0X3egDO", "metadata": {"E7nMdw9T": {}, "6inXFkHy": {}, "a0Rqt1t0": {}}, "orderNo": "etq7sDcA", "origin": "IOS", "quantity": 51, "region": "DBPCuwSn", "source": "REDEEM_CODE", "startDate": "1976-02-22T00:00:00Z", "storeId": "Hzw3wfMH"}, {"duration": 17, "endDate": "1998-10-29T00:00:00Z", "entitlementCollectionId": "biqkO6MT", "entitlementOrigin": "Nintendo", "itemId": "Z5CgZvSi", "itemSku": "BRTuarPN", "language": "raUc1PbA", "metadata": {"ZYyoUXr9": {}, "Rq6arXsp": {}, "6TbkfXqK": {}}, "orderNo": "Tzhkxfi0", "origin": "Nintendo", "quantity": 54, "region": "enOcn1Hl", "source": "OTHER", "startDate": "1985-08-10T00:00:00Z", "storeId": "RW9Wzw8E"}, {"duration": 62, "endDate": "1989-12-28T00:00:00Z", "entitlementCollectionId": "j11y0LAY", "entitlementOrigin": "IOS", "itemId": "gKe0Iusv", "itemSku": "UMTlP0vy", "language": "Kb33LXR7", "metadata": {"E5HYkoUm": {}, "vHLufkue": {}, "5tvGtaEf": {}}, "orderNo": "kYNdPZYP", "origin": "GooglePlay", "quantity": 81, "region": "ge5AqOI7", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1996-11-29T00:00:00Z", "storeId": "TFsA54jE"}], "transactionId": "cMHPsSRh"}, {"items": [{"duration": 8, "endDate": "1980-08-14T00:00:00Z", "entitlementCollectionId": "vCQjsxYK", "entitlementOrigin": "Other", "itemId": "Kj7EmTeH", "itemSku": "6SrxxExA", "language": "OwzSkUEU", "metadata": {"jZAq8HA4": {}, "AP92Yu9C": {}, "zYr5HgHl": {}}, "orderNo": "xShfREGG", "origin": "IOS", "quantity": 2, "region": "473SphaS", "source": "GIFT", "startDate": "1991-09-01T00:00:00Z", "storeId": "wnRqFQEZ"}, {"duration": 16, "endDate": "1989-06-20T00:00:00Z", "entitlementCollectionId": "Om57F47o", "entitlementOrigin": "Epic", "itemId": "X7q8pPJ2", "itemSku": "3G7RPJXc", "language": "YaSxJO76", "metadata": {"x8GY0FQi": {}, "UdI2iNVU": {}, "cr3RqoEH": {}}, "orderNo": "DLGh4Uxq", "origin": "Steam", "quantity": 31, "region": "JRsbZb9J", "source": "PROMOTION", "startDate": "1990-03-12T00:00:00Z", "storeId": "b7jC6gTg"}, {"duration": 10, "endDate": "1981-09-12T00:00:00Z", "entitlementCollectionId": "e4LnfOe3", "entitlementOrigin": "IOS", "itemId": "2pfc8Pqh", "itemSku": "70TKsk6n", "language": "acT7KNQf", "metadata": {"qTLpe23D": {}, "pw05LGq4": {}, "oAan27AV": {}}, "orderNo": "A1tLpOfv", "origin": "Nintendo", "quantity": 84, "region": "SgOUn3D0", "source": "SELL_BACK", "startDate": "1993-10-06T00:00:00Z", "storeId": "P2NWwFeD"}], "transactionId": "W2OPOMgn"}]' \
    > test.out 2>&1
eval_tap $? 507 'BulkFulfillItemsV3' test.out

#- 508 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'LZphtipY' \
    --userId 'qw0B4xRX' \
    --body '{"items": [{"duration": 4, "endDate": "1988-02-07T00:00:00Z", "entitlementCollectionId": "XPhD6Ewy", "entitlementOrigin": "Playstation", "itemId": "GbToJdJZ", "itemSku": "f5pujK6x", "language": "ZZSLOj61", "metadata": {"3tB1x8nW": {}, "CFrGhvoi": {}, "8AXwoXjh": {}}, "orderNo": "5B4M0XJG", "origin": "Oculus", "quantity": 40, "region": "2NnSsVmc", "source": "REDEEM_CODE", "startDate": "1980-01-10T00:00:00Z", "storeId": "j7mCo09e"}, {"duration": 16, "endDate": "1991-10-01T00:00:00Z", "entitlementCollectionId": "0jsPqsrN", "entitlementOrigin": "Xbox", "itemId": "MXX52tQ7", "itemSku": "13FjKJol", "language": "rzWepZJx", "metadata": {"YGpXNWhj": {}, "aF1iK0HS": {}, "v89jhbgo": {}}, "orderNo": "3YMysag0", "origin": "Playstation", "quantity": 90, "region": "7ru7c1dx", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1983-11-17T00:00:00Z", "storeId": "sTuHG8jm"}, {"duration": 96, "endDate": "1980-02-01T00:00:00Z", "entitlementCollectionId": "Qzhn0uzz", "entitlementOrigin": "Playstation", "itemId": "l8FSiNvr", "itemSku": "g6KUtTmv", "language": "hyfUNwSM", "metadata": {"7L1huxgJ": {}, "3mN6sXJq": {}, "TLEFQgIz": {}}, "orderNo": "jjx7bvDz", "origin": "Steam", "quantity": 83, "region": "zeTl8UXC", "source": "ACHIEVEMENT", "startDate": "1971-06-17T00:00:00Z", "storeId": "W91u1FrA"}]}' \
    > test.out 2>&1
eval_tap $? 508 'FulfillItemsV3' test.out

#- 509 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'bprYdbHs' \
    --userId 'JGjX5wGI' \
    > test.out 2>&1
eval_tap $? 509 'RetryFulfillItemsV3' test.out

#- 510 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'zzWBfHJJ' \
    --userId '2wRsgIv1' \
    > test.out 2>&1
eval_tap $? 510 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE