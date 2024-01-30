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
echo "1..444"

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
    --id 'plKUWWvm' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'KDkK1zX6' \
    --body '{"grantDays": "QCzBVYQk"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'hptHQ8RK' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ZCffV5oq' \
    --body '{"grantDays": "ffS4IVas"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "YqzUO7FA", "dryRun": true, "fulfillmentUrl": "tEFFhK5f", "itemType": "SEASON", "purchaseConditionUrl": "r9RJHV6s"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'fWsxh6pq' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'jSK6hX36' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'zyergji3' \
    --body '{"clazz": "4bQjxr3g", "dryRun": false, "fulfillmentUrl": "AD1fq906", "purchaseConditionUrl": "w9z4gI3m"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'tAul06nE' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'xf5X7RiB' \
    --offset '27' \
    --tag 'qfhUBHR7' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cOu5wxkR", "items": [{"extraSubscriptionDays": 11, "itemId": "ROWe7p5N", "itemName": "SRTSa1Yd", "quantity": 32}, {"extraSubscriptionDays": 81, "itemId": "EObIVCXd", "itemName": "xNmP3kZZ", "quantity": 48}, {"extraSubscriptionDays": 58, "itemId": "fFUBXMze", "itemName": "alOovWkZ", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 38, "maxRedeemCountPerCode": 98, "maxRedeemCountPerCodePerUser": 90, "maxSaleCount": 38, "name": "DmJaIrCL", "redeemEnd": "1985-10-16T00:00:00Z", "redeemStart": "1980-08-23T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["7gKdal4C", "dV2Z0vq1", "dwkLfNFC"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'NkfgIvPb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '5x0kWHpp' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DK6ANbs9", "items": [{"extraSubscriptionDays": 91, "itemId": "a1oJJp4w", "itemName": "hVW8fxPt", "quantity": 59}, {"extraSubscriptionDays": 60, "itemId": "NqTMw83j", "itemName": "nOe5OgsG", "quantity": 54}, {"extraSubscriptionDays": 19, "itemId": "naHELXBa", "itemName": "E2yh8Wo2", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 55, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 22, "name": "Sdl640UV", "redeemEnd": "1995-04-11T00:00:00Z", "redeemStart": "1998-08-17T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["pulcAYax", "rgZsbCLW", "I14ibNk4"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'osz7Z2vn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetLootBoxPluginConfig' test.out

#- 19 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "LEDSOjmv"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "MXbLXgCu"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateLootBoxPluginConfig' test.out

#- 20 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteLootBoxPluginConfig' test.out

#- 21 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'UplodLootBoxPluginConfigCert' test.out

#- 22 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxGrpcInfo' test.out

#- 23 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetSectionPluginConfig' test.out

#- 24 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "PGVyqasN"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "e3oWcawm"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateSectionPluginConfig' test.out

#- 25 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'DeleteSectionPluginConfig' test.out

#- 26 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 26 'UploadSectionPluginConfigCert' test.out

#- 27 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'SCdaTJu2' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'auiTEHsO' \
    --body '{"categoryPath": "PiTDcqKo", "localizationDisplayNames": {"nQBblFC8": "NmpW6ID9", "T1pV13is": "hsXqVk0X", "WV3uWUzu": "WM4Dt6q6"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'xpJk8tR4' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'N0bYaOda' \
    --namespace $AB_NAMESPACE \
    --storeId 'MI27OAAw' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'lHoZtuHm' \
    --namespace $AB_NAMESPACE \
    --storeId 'a4MWScoZ' \
    --body '{"localizationDisplayNames": {"RZjI3DeM": "MHtnfDc3", "keMQiHhF": "vl8vz84Q", "4KlpXFSp": "RDdfYBP5"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'I9YRXexM' \
    --namespace $AB_NAMESPACE \
    --storeId 'VBBPyIl3' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'yJp6N23B' \
    --namespace $AB_NAMESPACE \
    --storeId 'bm9F4zMu' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'hJRrzuXh' \
    --namespace $AB_NAMESPACE \
    --storeId 'SuZQAB5l' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'tzu9ih9R' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '24' \
    --code 'aqhqDx5R' \
    --limit '41' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '0ajF7OaE' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 15}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId '8zstQaF5' \
    --namespace $AB_NAMESPACE \
    --batchNo '42' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'Qf6QqxBB' \
    --namespace $AB_NAMESPACE \
    --batchNo '11' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'XutmUXYl' \
    --namespace $AB_NAMESPACE \
    --batchNo '98' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'xivosDjM' \
    --namespace $AB_NAMESPACE \
    --code 'H20k8ArD' \
    --limit '16' \
    --offset '51' \
    --userId 'CMO3zrpp' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'jZcA5a1C' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'emofUCR2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'AVmlVFhK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'EnableCode' test.out

#- 44 GetServicePluginConfig
eval_tap 0 44 'GetServicePluginConfig # SKIP deprecated' test.out

#- 45 UpdateServicePluginConfig
eval_tap 0 45 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 46 DeleteServicePluginConfig
eval_tap 0 46 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 47 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "lMTXu2Ar", "currencySymbol": "Zy9SW0nE", "currencyType": "VIRTUAL", "decimals": 87, "localizationDescriptions": {"aR3J6yPc": "PEQqwnQU", "EwosUT17": "IoGLKrLf", "O8z18fnS": "lh9j6ToC"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'NvtavRKP' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"ntj4qEqY": "70QatvXu", "xlnUCxFO": "BYLv4h38", "e3NxqtMM": "vgo0xsHh"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'vdqPcASN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'f5K3qZpC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'ZH394L3t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencySummary' test.out

#- 53 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetDLCItemConfig' test.out

#- 54 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "Lws77PIN", "rewards": [{"currency": {"currencyCode": "U1JysUSo", "namespace": "9ibaalhS"}, "item": {"itemId": "Nlh8OGn6", "itemSku": "sSA2BPWr", "itemType": "RYgD4hHk"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "kHYWDNk5", "namespace": "RThuAMR5"}, "item": {"itemId": "NCGQPLM8", "itemSku": "Tzypq0zh", "itemType": "Tg8JdYpG"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "aoiVMTmI", "namespace": "I1miIrRT"}, "item": {"itemId": "fg2o8Eus", "itemSku": "97xeZvoZ", "itemType": "SuEXkxVO"}, "quantity": 10, "type": "CURRENCY"}]}, {"id": "xB95eXLc", "rewards": [{"currency": {"currencyCode": "cG5UbfVj", "namespace": "rPqZaLAF"}, "item": {"itemId": "8v4wvbd2", "itemSku": "mrFZNsNs", "itemType": "Nr9x8j84"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "4bfHcQDm", "namespace": "F5EQCsWn"}, "item": {"itemId": "ZB0cuwoB", "itemSku": "aUNTo2t6", "itemType": "tLgLGwE8"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "EBTCNRDQ", "namespace": "Aei42zsU"}, "item": {"itemId": "1ahXTKKe", "itemSku": "SDdSDMsa", "itemType": "fVJBrErb"}, "quantity": 93, "type": "CURRENCY"}]}, {"id": "XBO3Z8ve", "rewards": [{"currency": {"currencyCode": "RL0l1ysj", "namespace": "6GFNFL9v"}, "item": {"itemId": "8LuGa8Wf", "itemSku": "XEqSzy3w", "itemType": "xxhIEwXI"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "ocHcMIiW", "namespace": "v3kVwgDG"}, "item": {"itemId": "Q27My4Hl", "itemSku": "qv5Cj7NN", "itemType": "ah51nalW"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "lsEou1qV", "namespace": "xWdPknqH"}, "item": {"itemId": "fLyrseBY", "itemSku": "6sT3cHVx", "itemType": "57GHBVOf"}, "quantity": 59, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateDLCItemConfig' test.out

#- 55 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDLCItemConfig' test.out

#- 56 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetPlatformDLCConfig' test.out

#- 57 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"sp9HSXaH": "WK1JN7Dr", "waabxSfN": "5qfmqPak", "NOk142i1": "XGElt0Dx"}}, {"platform": "OCULUS", "platformDlcIdMap": {"t1Bt58gS": "4Ji8MoHU", "mTtfIp3Q": "5d2QRCWm", "N1vBMDeP": "5j7YrUsN"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"4FzC4UJz": "ELdnESCM", "xnSqB7e6": "ierYGwUJ", "dLNb6feK": "STqsI8b7"}}]}' \
    > test.out 2>&1
eval_tap $? 57 'UpdatePlatformDLCConfig' test.out

#- 58 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeletePlatformDLCConfig' test.out

#- 59 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'll40CtMM' \
    --itemId '["9dhrfR7Y", "CC9Sv0DZ", "qics40y2"]' \
    --limit '61' \
    --offset '8' \
    --origin 'Epic' \
    --userId 'C4YOHa3M' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["p1XNXNy8", "ccQ00DPV", "vzh5pQhJ"]' \
    --limit '17' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'EnableEntitlementOriginFeature' test.out

#- 62 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 62 'GetEntitlementConfigInfo' test.out

#- 63 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "vDEtmyKZ", "endDate": "1992-01-07T00:00:00Z", "grantedCode": "UHXjtArx", "itemId": "JIhFnFqZ", "itemNamespace": "H4YnWKCZ", "language": "te_nHrZ", "origin": "Epic", "quantity": 70, "region": "ZPmiab1z", "source": "REWARD", "startDate": "1997-05-23T00:00:00Z", "storeId": "XPCPQJAB"}, {"collectionId": "Xiy4K6X4", "endDate": "1983-05-09T00:00:00Z", "grantedCode": "2lIak8qI", "itemId": "Xjvtk8JG", "itemNamespace": "FKQHzF4R", "language": "NO_vO", "origin": "Steam", "quantity": 50, "region": "hWAFUauT", "source": "REFERRAL_BONUS", "startDate": "1983-05-22T00:00:00Z", "storeId": "urYxISFR"}, {"collectionId": "ER4fo6Bz", "endDate": "1977-12-09T00:00:00Z", "grantedCode": "dCqeCyt3", "itemId": "64JLN1Uq", "itemNamespace": "D3CmTFUh", "language": "FLOA_Elia-Ou", "origin": "GooglePlay", "quantity": 17, "region": "p8xRkrCR", "source": "REWARD", "startDate": "1995-06-29T00:00:00Z", "storeId": "KFcTGfQM"}], "userIds": ["COJ7UbGj", "k74fEclD", "GL32WlGE"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["GE90eBH4", "uzLzTphH", "68vLDjmt"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'Q0Ni2INi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '61' \
    --status 'FAIL' \
    --userId 'VqmAOsyX' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'uddMhwOc' \
    --eventType 'OTHER' \
    --externalOrderId '2Ov08fxB' \
    --limit '34' \
    --offset '28' \
    --startTime 'Cd2rIDKS' \
    --status 'SUCCESS' \
    --userId 'JfQoFImS' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "v0CJmZB9", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 40, "clientTransactionId": "p8dGDRZA"}, {"amountConsumed": 89, "clientTransactionId": "8zppbE0P"}, {"amountConsumed": 11, "clientTransactionId": "4p1HYisz"}], "entitlementId": "UQYFHnVx", "usageCount": 74}, {"clientTransaction": [{"amountConsumed": 66, "clientTransactionId": "5Mbfk8o8"}, {"amountConsumed": 27, "clientTransactionId": "8eqA55uT"}, {"amountConsumed": 73, "clientTransactionId": "MrinaHsB"}], "entitlementId": "lKfVl0VA", "usageCount": 65}, {"clientTransaction": [{"amountConsumed": 90, "clientTransactionId": "qgVSTV7v"}, {"amountConsumed": 40, "clientTransactionId": "pjhazoMK"}, {"amountConsumed": 32, "clientTransactionId": "mOUQRGJG"}], "entitlementId": "fQpzlxRT", "usageCount": 53}], "purpose": "JhahMXL6"}, "originalTitleName": "6cp18pcp", "paymentProductSKU": "ooIPfDep", "purchaseDate": "kseO9oUD", "sourceOrderItemId": "jewgLLZ3", "titleName": "QsdMB98a"}, "eventDomain": "SHBiRlzE", "eventSource": "21prSJDb", "eventType": "unaM1c4M", "eventVersion": 28, "id": "NCsWgiCI", "timestamp": "895oGNco"}' \
    > test.out 2>&1
eval_tap $? 68 'MockPlayStationStreamEvent' test.out

#- 69 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetAppleIAPConfig' test.out

#- 70 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "4GXynZwm", "password": "2nGgQfRw"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateAppleIAPConfig' test.out

#- 71 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteAppleIAPConfig' test.out

#- 72 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetEpicGamesIAPConfig' test.out

#- 73 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "XwhL5kda"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateEpicGamesIAPConfig' test.out

#- 74 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteEpicGamesIAPConfig' test.out

#- 75 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'GetGoogleIAPConfig' test.out

#- 76 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "VicDdaN2", "serviceAccountId": "giCsvKJO"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleIAPConfig' test.out

#- 77 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGoogleIAPConfig' test.out

#- 78 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleP12File' test.out

#- 79 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetIAPItemConfig' test.out

#- 80 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "rsfu3Gj3", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aPd86TDd": "pwvw9GXH", "uLsVEfYJ": "cQI4nynA", "XuHzYnej": "eSNEJwPR"}}, {"itemIdentity": "vJN2fo5w", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"RLh3UG03": "r3MdSENt", "tLlV0Boe": "bfnPLdRC", "vxgmJ1tn": "4iif0zxQ"}}, {"itemIdentity": "rDdzBvze", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"1rsm67ne": "zWnoMR1S", "S4llukyi": "wynwMQIX", "nHO77Vte": "sH9y76M4"}}]}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateIAPItemConfig' test.out

#- 81 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteIAPItemConfig' test.out

#- 82 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetOculusIAPConfig' test.out

#- 83 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "pciVPXoq", "appSecret": "A8tB1sDa"}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateOculusIAPConfig' test.out

#- 84 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'DeleteOculusIAPConfig' test.out

#- 85 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetPlayStationIAPConfig' test.out

#- 86 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "lUXB0B69", "backOfficeServerClientSecret": "lUlfGVtt", "enableStreamJob": true, "environment": "7tlTxEwS", "streamName": "uIpsv3f2", "streamPartnerName": "1WLi9gAA"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdatePlaystationIAPConfig' test.out

#- 87 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeletePlaystationIAPConfig' test.out

#- 88 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'ValidateExistedPlaystationIAPConfig' test.out

#- 89 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "4adWNWbl", "backOfficeServerClientSecret": "ak4PSbT4", "enableStreamJob": true, "environment": "Hcm7CbT7", "streamName": "eW7l4hKP", "streamPartnerName": "5hSPKMgO"}' \
    > test.out 2>&1
eval_tap $? 89 'ValidatePlaystationIAPConfig' test.out

#- 90 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetSteamIAPConfig' test.out

#- 91 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "TyBACdPh", "publisherAuthenticationKey": "jQgEgI8c"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateSteamIAPConfig' test.out

#- 92 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteSteamIAPConfig' test.out

#- 93 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetTwitchIAPConfig' test.out

#- 94 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "0kwzPZnG", "clientSecret": "Zoh4y0D5", "organizationId": "H8qsy56a"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateTwitchIAPConfig' test.out

#- 95 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'DeleteTwitchIAPConfig' test.out

#- 96 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetXblIAPConfig' test.out

#- 97 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "EHmRSCPf"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblIAPConfig' test.out

#- 98 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteXblAPConfig' test.out

#- 99 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'ZI8Acjw4' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'TRqWzPRf' \
    --itemId 'x3m07Qma' \
    --itemType 'SEASON' \
    --endTime 'NPtwvR1o' \
    --startTime 'b7KAVrXb' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'yJcvR1Fd' \
    --itemId 'qi5gWA7r' \
    --itemType 'MEDIA' \
    --endTime 'ULA9TrAR' \
    --startTime 'PzhvaEEF' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'AFGPauEG' \
    --body '{"categoryPath": "MgsRCSOz", "targetItemId": "dkoQM8aB", "targetNamespace": "oiaG57hC"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'aHXs9tki' \
    --body '{"appId": "yVmQpssv", "appType": "DEMO", "baseAppId": "XOGhvdxD", "boothName": "LjwhPsfN", "categoryPath": "sQEASlC9", "clazz": "faDLK6kT", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"muUEWeX7": {}, "aZ25UIAV": {}, "fmzXJkll": {}}, "features": ["JQP3Jc5b", "LlO2U3o0", "hmqk0VhS"], "flexible": true, "images": [{"as": "4gBGK11X", "caption": "mOzznl82", "height": 67, "imageUrl": "mhq4LpK9", "smallImageUrl": "jkEgFnAi", "width": 81}, {"as": "b5hL31PJ", "caption": "617Gr9h6", "height": 73, "imageUrl": "zpHJBFFR", "smallImageUrl": "E1LmRfvR", "width": 27}, {"as": "V3gocKkb", "caption": "Ik1KG8qE", "height": 21, "imageUrl": "deGMsVSk", "smallImageUrl": "oXB0lNb5", "width": 93}], "inventoryConfig": {"customAttributes": {"xzIFtPg4": {}, "08EeUXGN": {}, "xVgRiCIl": {}}, "serverCustomAttributes": {"9nRt1L1t": {}, "mHATjKdi": {}, "znvJlEP3": {}}, "slotUsed": 47}, "itemIds": ["xQl3FovW", "Weucs3xc", "FfvJmje9"], "itemQty": {"gX3fEE9n": 86, "jpVQaM2u": 47, "rzjo6M5t": 50}, "itemType": "LOOTBOX", "listable": true, "localizations": {"FFpTawpN": {"description": "9DV4zqe5", "localExt": {"URCR2hCT": {}, "lUi2JBYH": {}, "X7KM44t3": {}}, "longDescription": "hOfka180", "title": "fAoFmTYY"}, "43yLtjZM": {"description": "6y6SY0Dq", "localExt": {"XfY6LeIj": {}, "gsPrbVk1": {}, "jZdCT4oH": {}}, "longDescription": "Me75UYwq", "title": "YWt5WW3V"}, "Wm62QOrK": {"description": "GRVK1ENS", "localExt": {"HmJpk2gg": {}, "rF9IhOJa": {}, "JMcd0cKJ": {}}, "longDescription": "5RHBMBrN", "title": "2TWbOy6D"}}, "lootBoxConfig": {"rewardCount": 24, "rewards": [{"lootBoxItems": [{"count": 25, "duration": 78, "endDate": "1973-02-28T00:00:00Z", "itemId": "w4v53pom", "itemSku": "Lb40xhmj", "itemType": "zOtB1Mx8"}, {"count": 8, "duration": 29, "endDate": "1976-11-29T00:00:00Z", "itemId": "PeJIMDGj", "itemSku": "R6HcZxPR", "itemType": "0FsmPfip"}, {"count": 63, "duration": 66, "endDate": "1993-04-21T00:00:00Z", "itemId": "DsL1qsfk", "itemSku": "QDd0jqWp", "itemType": "lv0ClQC8"}], "name": "IZFMV6ip", "odds": 0.6364829136623149, "type": "REWARD_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 28, "duration": 76, "endDate": "1999-05-01T00:00:00Z", "itemId": "zm5SeMUX", "itemSku": "0aQe7Ls4", "itemType": "7Cp62fbz"}, {"count": 33, "duration": 26, "endDate": "1999-10-22T00:00:00Z", "itemId": "WVkzonn3", "itemSku": "vsj6DTRD", "itemType": "wninBRDX"}, {"count": 5, "duration": 82, "endDate": "1976-01-12T00:00:00Z", "itemId": "fetBcxjk", "itemSku": "Bfz717fI", "itemType": "nwD1DASS"}], "name": "nl5ngBLs", "odds": 0.10028498892680249, "type": "REWARD", "weight": 89}, {"lootBoxItems": [{"count": 83, "duration": 70, "endDate": "1985-12-09T00:00:00Z", "itemId": "rzj3SAP7", "itemSku": "ZX0clhVF", "itemType": "lwMsblFS"}, {"count": 25, "duration": 31, "endDate": "1981-08-17T00:00:00Z", "itemId": "PJixBcZc", "itemSku": "fs03oIpp", "itemType": "8ul1RH23"}, {"count": 43, "duration": 34, "endDate": "1988-09-14T00:00:00Z", "itemId": "drlbtlPr", "itemSku": "T4jdYy3F", "itemType": "nkt6ky9i"}], "name": "6U8I7gIY", "odds": 0.8755358311321846, "type": "REWARD_GROUP", "weight": 79}], "rollFunction": "CUSTOM"}, "maxCount": 91, "maxCountPerUser": 63, "name": "E5aZ8aHz", "optionBoxConfig": {"boxItems": [{"count": 3, "duration": 21, "endDate": "1999-12-19T00:00:00Z", "itemId": "iy6IRibS", "itemSku": "kXHh5tsr", "itemType": "swyI9b4T"}, {"count": 37, "duration": 92, "endDate": "1986-08-31T00:00:00Z", "itemId": "w2ZfJLtf", "itemSku": "LdFn63Ph", "itemType": "jabJXZ41"}, {"count": 92, "duration": 83, "endDate": "1999-05-29T00:00:00Z", "itemId": "1C7YEbiT", "itemSku": "3uUkCoMq", "itemType": "W92JHWpo"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 15, "fixedTrialCycles": 34, "graceDays": 78}, "regionData": {"d1NSPT0j": [{"currencyCode": "AVlqmXDE", "currencyNamespace": "IgiQyd5j", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1985-02-03T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1971-11-16T00:00:00Z", "expireAt": "1973-05-30T00:00:00Z", "price": 73, "purchaseAt": "1991-05-08T00:00:00Z", "trialPrice": 6}, {"currencyCode": "6hDuRVzw", "currencyNamespace": "4ls9NyCc", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1983-09-07T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1979-07-11T00:00:00Z", "expireAt": "1985-12-05T00:00:00Z", "price": 12, "purchaseAt": "1993-05-24T00:00:00Z", "trialPrice": 64}, {"currencyCode": "ceVYaNRz", "currencyNamespace": "VM1ejaGO", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1992-12-11T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1976-11-13T00:00:00Z", "expireAt": "1974-04-14T00:00:00Z", "price": 100, "purchaseAt": "1986-12-31T00:00:00Z", "trialPrice": 63}], "URKiPfEh": [{"currencyCode": "Aw3ghLIR", "currencyNamespace": "6QjhWFMw", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1986-04-21T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1986-02-28T00:00:00Z", "expireAt": "1980-03-05T00:00:00Z", "price": 34, "purchaseAt": "1989-03-18T00:00:00Z", "trialPrice": 23}, {"currencyCode": "kych89vK", "currencyNamespace": "LTeSSeoo", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1995-07-17T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1976-11-13T00:00:00Z", "expireAt": "1974-12-22T00:00:00Z", "price": 50, "purchaseAt": "1982-05-21T00:00:00Z", "trialPrice": 89}, {"currencyCode": "Q3c1Yuul", "currencyNamespace": "RnHBXEJT", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1980-05-27T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1973-10-31T00:00:00Z", "expireAt": "1982-08-26T00:00:00Z", "price": 90, "purchaseAt": "1972-01-17T00:00:00Z", "trialPrice": 68}], "mea0z2tQ": [{"currencyCode": "JKFDOGpc", "currencyNamespace": "B6VNNxh7", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1999-09-24T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1972-10-22T00:00:00Z", "expireAt": "1996-03-30T00:00:00Z", "price": 38, "purchaseAt": "1991-08-30T00:00:00Z", "trialPrice": 71}, {"currencyCode": "G3j6u6LB", "currencyNamespace": "5o5GGcLP", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1990-09-02T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1978-02-05T00:00:00Z", "expireAt": "1989-07-23T00:00:00Z", "price": 53, "purchaseAt": "1986-09-19T00:00:00Z", "trialPrice": 43}, {"currencyCode": "fRLsMEhT", "currencyNamespace": "eQUeOc53", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1998-06-01T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1999-10-31T00:00:00Z", "expireAt": "1984-09-11T00:00:00Z", "price": 13, "purchaseAt": "1983-07-03T00:00:00Z", "trialPrice": 75}]}, "saleConfig": {"currencyCode": "R5PML8F4", "price": 13}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "PnI2MaZY", "stackable": false, "status": "ACTIVE", "tags": ["rF5wSbBL", "KjfI4GAV", "wqs1uU7a"], "targetCurrencyCode": "95J92aDR", "targetNamespace": "LXP0a6T9", "thumbnailUrl": "Bdk5aIOD", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WgeU92Wn' \
    --appId 'c7ZoXOgr' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate 'bMJGngK3' \
    --baseAppId 'Glaj2DCk' \
    --categoryPath 'E1SB26Kv' \
    --features 'ChxsZ1kJ' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --limit '80' \
    --offset '51' \
    --region 'OiV1KYWZ' \
    --sortBy '["updatedAt", "name:desc", "createdAt:desc"]' \
    --storeId 'VEogiyg2' \
    --tags 'mBj0uayy' \
    --targetNamespace 'Be8dwtHe' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["PEeC019Q", "FIgwOXxF", "it6xFbW9"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2GcFrHBA' \
    --itemIds 'vSj5VCEh' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'yJ4YkOvg' \
    --sku 'y19VDlqh' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'b2PryfIX' \
    --populateBundle 'false' \
    --region 'Af9c6pfG' \
    --storeId 'rN3RFQ7B' \
    --sku '6kTGEs39' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'YRr14NZ5' \
    --region 'dbUQ74Vw' \
    --storeId 'MtubZBGc' \
    --itemIds 'e70DfQGa' \
    --userId 'Mwt7DDw0' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'TQc7T5ll' \
    --sku '32hNaoi9' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["FCgUsGf0", "lyvCl1I5", "3hcM3JFN"]' \
    --storeId 'v34Fsym0' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'dGP2J74G' \
    --region 'k9Yh6ADH' \
    --storeId 'S5NcJb26' \
    --itemIds '9Yttp9ME' \
    > test.out 2>&1
eval_tap $? 113 'BulkGetLocaleItems' test.out

#- 114 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetAvailablePredicateTypes' test.out

#- 115 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'YRf0egfi' \
    --userId 'sQfbMKBp' \
    --body '{"itemIds": ["sBV0sf0I", "qQNtcd8I", "604lh3TT"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'EPzKIJcE' \
    --body '{"changes": [{"itemIdentities": ["AWAwbodG", "QcWYmJXZ", "Nhw5wmWK"], "itemIdentityType": "ITEM_SKU", "regionData": {"yE3uhf1b": [{"currencyCode": "EAIR0I9t", "currencyNamespace": "aWu4CTid", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1974-11-09T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1998-03-19T00:00:00Z", "discountedPrice": 52, "expireAt": "1977-04-24T00:00:00Z", "price": 98, "purchaseAt": "1985-04-02T00:00:00Z", "trialPrice": 52}, {"currencyCode": "0yZxMRKJ", "currencyNamespace": "j9cQuJ5G", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1992-07-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1973-05-06T00:00:00Z", "discountedPrice": 9, "expireAt": "1982-10-27T00:00:00Z", "price": 4, "purchaseAt": "1978-02-10T00:00:00Z", "trialPrice": 89}, {"currencyCode": "9xIv1y9Y", "currencyNamespace": "lomqGnG8", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1976-11-04T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1986-06-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1991-06-30T00:00:00Z", "price": 55, "purchaseAt": "1990-10-08T00:00:00Z", "trialPrice": 78}], "iniHeMBH": [{"currencyCode": "dWi1JY71", "currencyNamespace": "adVYpLVi", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1991-08-30T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1979-05-08T00:00:00Z", "discountedPrice": 37, "expireAt": "1997-06-11T00:00:00Z", "price": 23, "purchaseAt": "1986-05-28T00:00:00Z", "trialPrice": 50}, {"currencyCode": "54I9AEgo", "currencyNamespace": "Udbomlqt", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1992-01-08T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1988-07-11T00:00:00Z", "discountedPrice": 43, "expireAt": "1974-06-02T00:00:00Z", "price": 40, "purchaseAt": "1971-07-20T00:00:00Z", "trialPrice": 22}, {"currencyCode": "nuhm4vsu", "currencyNamespace": "2CS1Ka7y", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1991-05-03T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1982-06-29T00:00:00Z", "discountedPrice": 29, "expireAt": "1988-11-08T00:00:00Z", "price": 32, "purchaseAt": "1977-12-30T00:00:00Z", "trialPrice": 68}], "8NAPhEKR": [{"currencyCode": "8mfibH8b", "currencyNamespace": "3WffUUDu", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1972-12-14T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1973-02-16T00:00:00Z", "discountedPrice": 95, "expireAt": "1992-02-25T00:00:00Z", "price": 57, "purchaseAt": "1989-03-01T00:00:00Z", "trialPrice": 74}, {"currencyCode": "J4oClMoE", "currencyNamespace": "HlOg5HLm", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1987-11-27T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1994-05-24T00:00:00Z", "discountedPrice": 12, "expireAt": "1973-05-19T00:00:00Z", "price": 96, "purchaseAt": "1988-08-20T00:00:00Z", "trialPrice": 83}, {"currencyCode": "4Jo9WQh6", "currencyNamespace": "VXkROoyp", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-20T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-09-09T00:00:00Z", "discountedPrice": 98, "expireAt": "1990-09-13T00:00:00Z", "price": 79, "purchaseAt": "1989-07-29T00:00:00Z", "trialPrice": 2}]}}, {"itemIdentities": ["Edkozag1", "88BSf8az", "eBOFmGlI"], "itemIdentityType": "ITEM_ID", "regionData": {"9yuQ2uOD": [{"currencyCode": "xzf9IZii", "currencyNamespace": "9wHIhxf9", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1976-05-04T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1998-06-29T00:00:00Z", "discountedPrice": 91, "expireAt": "1987-05-19T00:00:00Z", "price": 86, "purchaseAt": "1995-12-31T00:00:00Z", "trialPrice": 19}, {"currencyCode": "e08bZ1Di", "currencyNamespace": "JxVvKz3R", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1988-06-09T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1984-07-29T00:00:00Z", "discountedPrice": 34, "expireAt": "1981-07-01T00:00:00Z", "price": 54, "purchaseAt": "1995-07-10T00:00:00Z", "trialPrice": 95}, {"currencyCode": "vF2k4Ybt", "currencyNamespace": "ueZjSoCM", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1979-03-07T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1998-04-12T00:00:00Z", "discountedPrice": 88, "expireAt": "1998-03-05T00:00:00Z", "price": 95, "purchaseAt": "1981-09-03T00:00:00Z", "trialPrice": 30}], "2a1bLIS1": [{"currencyCode": "TmiNbDH1", "currencyNamespace": "h5oSoFH6", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1997-06-27T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-08-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1983-01-20T00:00:00Z", "price": 52, "purchaseAt": "1977-01-15T00:00:00Z", "trialPrice": 84}, {"currencyCode": "OYRd9p2x", "currencyNamespace": "ibRPC85y", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1993-11-05T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1982-09-30T00:00:00Z", "discountedPrice": 12, "expireAt": "1971-04-14T00:00:00Z", "price": 26, "purchaseAt": "1989-11-05T00:00:00Z", "trialPrice": 81}, {"currencyCode": "2aGGnd3o", "currencyNamespace": "mt8eulsh", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1971-08-04T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1992-05-25T00:00:00Z", "discountedPrice": 34, "expireAt": "1982-05-26T00:00:00Z", "price": 77, "purchaseAt": "1993-08-27T00:00:00Z", "trialPrice": 69}], "YnddAZyM": [{"currencyCode": "oIsQkfPI", "currencyNamespace": "AaQTCFUx", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1983-10-10T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1989-08-01T00:00:00Z", "discountedPrice": 65, "expireAt": "1989-12-05T00:00:00Z", "price": 81, "purchaseAt": "1985-07-12T00:00:00Z", "trialPrice": 95}, {"currencyCode": "SMWISwyD", "currencyNamespace": "dVnQNC4V", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1986-03-18T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1982-08-17T00:00:00Z", "discountedPrice": 68, "expireAt": "1971-10-10T00:00:00Z", "price": 35, "purchaseAt": "1994-07-12T00:00:00Z", "trialPrice": 0}, {"currencyCode": "u0VbkdYe", "currencyNamespace": "ilrMXNEg", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1978-04-06T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1977-05-13T00:00:00Z", "discountedPrice": 40, "expireAt": "1990-05-29T00:00:00Z", "price": 39, "purchaseAt": "1993-01-19T00:00:00Z", "trialPrice": 26}]}}, {"itemIdentities": ["Hqtzyq6R", "ujRFYd7H", "ugUI4jH8"], "itemIdentityType": "ITEM_SKU", "regionData": {"EQRirqWY": [{"currencyCode": "k0IxN3gk", "currencyNamespace": "EWeJdh8n", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1979-07-10T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1988-10-13T00:00:00Z", "discountedPrice": 65, "expireAt": "1985-05-25T00:00:00Z", "price": 57, "purchaseAt": "1982-12-04T00:00:00Z", "trialPrice": 19}, {"currencyCode": "p8QGmtSK", "currencyNamespace": "g22awAY5", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1990-11-09T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1989-11-06T00:00:00Z", "discountedPrice": 73, "expireAt": "1978-05-22T00:00:00Z", "price": 21, "purchaseAt": "1984-12-19T00:00:00Z", "trialPrice": 47}, {"currencyCode": "P6EKAfzl", "currencyNamespace": "l29A8Abn", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1972-12-02T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1999-12-11T00:00:00Z", "discountedPrice": 70, "expireAt": "1996-02-17T00:00:00Z", "price": 99, "purchaseAt": "1984-01-22T00:00:00Z", "trialPrice": 50}], "qcySxtWz": [{"currencyCode": "zestYL4b", "currencyNamespace": "YQODdTg6", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1989-01-01T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1998-08-10T00:00:00Z", "discountedPrice": 9, "expireAt": "1981-05-05T00:00:00Z", "price": 83, "purchaseAt": "1976-11-11T00:00:00Z", "trialPrice": 100}, {"currencyCode": "R4mVZZ8T", "currencyNamespace": "mIvfXagI", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1999-06-11T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1975-11-07T00:00:00Z", "discountedPrice": 69, "expireAt": "1988-11-03T00:00:00Z", "price": 89, "purchaseAt": "1987-11-05T00:00:00Z", "trialPrice": 51}, {"currencyCode": "ZZvEfb9s", "currencyNamespace": "birNYeaJ", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1981-04-14T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1979-11-10T00:00:00Z", "discountedPrice": 36, "expireAt": "1991-01-03T00:00:00Z", "price": 58, "purchaseAt": "1985-08-03T00:00:00Z", "trialPrice": 5}], "XKssg0s9": [{"currencyCode": "gVAS8aKO", "currencyNamespace": "WJVVceES", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1975-10-29T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1989-01-18T00:00:00Z", "discountedPrice": 88, "expireAt": "1972-05-15T00:00:00Z", "price": 97, "purchaseAt": "1972-07-24T00:00:00Z", "trialPrice": 10}, {"currencyCode": "IlrI0Gwd", "currencyNamespace": "NTzgT5DL", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1982-01-28T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1973-04-18T00:00:00Z", "discountedPrice": 43, "expireAt": "1979-11-26T00:00:00Z", "price": 62, "purchaseAt": "1996-03-10T00:00:00Z", "trialPrice": 80}, {"currencyCode": "5P9yWUbr", "currencyNamespace": "5pDs5t5B", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1991-01-13T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1992-12-23T00:00:00Z", "discountedPrice": 43, "expireAt": "1991-03-31T00:00:00Z", "price": 10, "purchaseAt": "1978-06-19T00:00:00Z", "trialPrice": 51}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'CODE' \
    --limit '41' \
    --offset '38' \
    --sortBy '6V4x19PS' \
    --storeId 'KpHz3sUh' \
    --keyword 'XGec22RO' \
    --language 'XdzYUeje' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '21' \
    --offset '0' \
    --sortBy '["name:desc", "createdAt:desc", "displayOrder:desc"]' \
    --storeId 'rnWothTM' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'koTPSBKb' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Gi71o2lz' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '08iWqHgP' \
    --namespace $AB_NAMESPACE \
    --storeId 'h8eKsMDa' \
    --body '{"appId": "IQflu3NS", "appType": "SOFTWARE", "baseAppId": "9LoN3AEr", "boothName": "tHXQHRdp", "categoryPath": "oWu152JW", "clazz": "XeQ05QW7", "displayOrder": 60, "entitlementType": "DURABLE", "ext": {"0XWJPSba": {}, "hzp7U7M0": {}, "Bk1OFyyF": {}}, "features": ["6BRnc4SS", "AcqqQQRq", "Hs8su3Bx"], "flexible": true, "images": [{"as": "KcQLbirY", "caption": "eVsf3V7m", "height": 82, "imageUrl": "Lli0JC6W", "smallImageUrl": "YK4QegYD", "width": 33}, {"as": "USCRxnWB", "caption": "Wo9xB8qp", "height": 28, "imageUrl": "0stCjmSp", "smallImageUrl": "C3dcu1cg", "width": 16}, {"as": "sZhY6P9T", "caption": "rcFhtXXi", "height": 19, "imageUrl": "nW5rZEAd", "smallImageUrl": "FrdkdRi0", "width": 84}], "inventoryConfig": {"customAttributes": {"Y0qR6T3A": {}, "XLO1RCbl": {}, "2OXN4GUK": {}}, "serverCustomAttributes": {"RoFrjlGG": {}, "koThSt0A": {}, "NJc2Cd1b": {}}, "slotUsed": 86}, "itemIds": ["fMfU9ADU", "rGEmF335", "XvrWN2cP"], "itemQty": {"qa8FcHa2": 32, "tMY9Cd83": 45, "SAIHAROv": 51}, "itemType": "APP", "listable": false, "localizations": {"meI6Ntph": {"description": "sN9t5B4l", "localExt": {"muXErpnP": {}, "rHJlfCsL": {}, "UNl5HaCp": {}}, "longDescription": "XWfbve9U", "title": "ky6vijX6"}, "49U7DraS": {"description": "cuApDRL8", "localExt": {"Jd8DfLRr": {}, "fCi7M41H": {}, "enN6NFjp": {}}, "longDescription": "txopDqkn", "title": "S0t1ycDg"}, "EpXQJn1Y": {"description": "b0sKtQd7", "localExt": {"agfRxafM": {}, "YsP3XSLW": {}, "3fW5wCZF": {}}, "longDescription": "T4zAgSqy", "title": "foapDsDU"}}, "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 83, "duration": 21, "endDate": "1981-05-29T00:00:00Z", "itemId": "MJi3YWDQ", "itemSku": "OGP2Qr65", "itemType": "SUeo1NUg"}, {"count": 25, "duration": 23, "endDate": "1971-12-04T00:00:00Z", "itemId": "B08RcAHY", "itemSku": "cvPMZUHk", "itemType": "MSYFYdzT"}, {"count": 15, "duration": 91, "endDate": "1983-03-18T00:00:00Z", "itemId": "Ev6dZVtO", "itemSku": "km25Dwih", "itemType": "IiJTIJig"}], "name": "fif74a7H", "odds": 0.046128894692128664, "type": "REWARD_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 81, "duration": 66, "endDate": "1979-06-07T00:00:00Z", "itemId": "E4NmI4H9", "itemSku": "f3KjDdVz", "itemType": "oI7qWRBo"}, {"count": 25, "duration": 3, "endDate": "1974-04-22T00:00:00Z", "itemId": "lmPddrjp", "itemSku": "O2atOZ78", "itemType": "mKkFNywx"}, {"count": 14, "duration": 0, "endDate": "1977-07-25T00:00:00Z", "itemId": "oqhsN7Kb", "itemSku": "6di9LuNh", "itemType": "KIv3UnsR"}], "name": "KGLfjNRB", "odds": 0.030896125208415448, "type": "PROBABILITY_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 81, "duration": 22, "endDate": "1997-05-21T00:00:00Z", "itemId": "RKZy3mFZ", "itemSku": "9T9KDihS", "itemType": "E55VlFtn"}, {"count": 3, "duration": 62, "endDate": "1994-09-29T00:00:00Z", "itemId": "4TZPIaGm", "itemSku": "r3iIVWLE", "itemType": "LII3ugIq"}, {"count": 57, "duration": 0, "endDate": "1994-03-12T00:00:00Z", "itemId": "BwuOHfTD", "itemSku": "49jm40tF", "itemType": "8itNfdfK"}], "name": "LJZnS3by", "odds": 0.503377355484943, "type": "REWARD_GROUP", "weight": 80}], "rollFunction": "DEFAULT"}, "maxCount": 27, "maxCountPerUser": 42, "name": "rzR5HwRt", "optionBoxConfig": {"boxItems": [{"count": 0, "duration": 33, "endDate": "1983-04-22T00:00:00Z", "itemId": "BpDJelwz", "itemSku": "I2wj0eGU", "itemType": "6ErNw3Nw"}, {"count": 49, "duration": 92, "endDate": "1983-11-01T00:00:00Z", "itemId": "9mwQbI90", "itemSku": "wMvAU59K", "itemType": "SY4UFO9J"}, {"count": 74, "duration": 14, "endDate": "1996-10-18T00:00:00Z", "itemId": "mgyVkwQj", "itemSku": "w4OA46LF", "itemType": "VzhrttYL"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 97, "fixedTrialCycles": 24, "graceDays": 3}, "regionData": {"yhCGC9xq": [{"currencyCode": "PhqzeCP3", "currencyNamespace": "kR1UAZ4E", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1975-04-03T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-09-28T00:00:00Z", "expireAt": "1980-12-04T00:00:00Z", "price": 62, "purchaseAt": "1992-10-31T00:00:00Z", "trialPrice": 82}, {"currencyCode": "xlcUnBHs", "currencyNamespace": "ClpqSu2s", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1973-02-17T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1992-11-10T00:00:00Z", "expireAt": "1985-06-29T00:00:00Z", "price": 42, "purchaseAt": "1978-10-21T00:00:00Z", "trialPrice": 14}, {"currencyCode": "Vo4gy6hf", "currencyNamespace": "5WnPmZNL", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1976-12-20T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1999-08-22T00:00:00Z", "expireAt": "1980-03-13T00:00:00Z", "price": 5, "purchaseAt": "1994-12-30T00:00:00Z", "trialPrice": 87}], "uFBPRVfu": [{"currencyCode": "norWmMin", "currencyNamespace": "LeDDtZxG", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1975-06-25T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1976-03-14T00:00:00Z", "expireAt": "1996-10-07T00:00:00Z", "price": 4, "purchaseAt": "1979-12-20T00:00:00Z", "trialPrice": 17}, {"currencyCode": "iAdMKgnA", "currencyNamespace": "zjIfmyJQ", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1985-09-17T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1984-04-10T00:00:00Z", "expireAt": "1994-09-26T00:00:00Z", "price": 79, "purchaseAt": "1996-05-30T00:00:00Z", "trialPrice": 64}, {"currencyCode": "gEHiahro", "currencyNamespace": "jDRB4h7O", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1990-03-01T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1986-05-17T00:00:00Z", "expireAt": "1992-02-28T00:00:00Z", "price": 17, "purchaseAt": "1981-12-28T00:00:00Z", "trialPrice": 22}], "WLTBuzyI": [{"currencyCode": "RBKtqdOl", "currencyNamespace": "EGR49VmQ", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1974-06-24T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1973-12-18T00:00:00Z", "expireAt": "1997-12-19T00:00:00Z", "price": 46, "purchaseAt": "1998-07-18T00:00:00Z", "trialPrice": 13}, {"currencyCode": "OgneZddO", "currencyNamespace": "m7H08GoL", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1978-12-31T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1988-10-29T00:00:00Z", "expireAt": "1999-07-15T00:00:00Z", "price": 20, "purchaseAt": "1973-12-23T00:00:00Z", "trialPrice": 53}, {"currencyCode": "bx0pSnyq", "currencyNamespace": "2v2N5Do6", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1982-11-30T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1987-07-31T00:00:00Z", "expireAt": "1981-11-26T00:00:00Z", "price": 57, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 3}]}, "saleConfig": {"currencyCode": "O6IhB6ER", "price": 96}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "cCHm79uB", "stackable": true, "status": "ACTIVE", "tags": ["tXFiLZcy", "mCsrVnl7", "E8eq4oz0"], "targetCurrencyCode": "bKbLNfqu", "targetNamespace": "R8JOWCuq", "thumbnailUrl": "NJa4NLcT", "useCount": 50}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'j9wSkLx2' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'ZeqZMYOl' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'N0FJYBcq' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 6, "orderNo": "sy5KRByR"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'KFcQbKN2' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'SN77WZ2y' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'TpysggdO' \
    --namespace $AB_NAMESPACE \
    --storeId 'z4elibb4' \
    --body '{"carousel": [{"alt": "cENpli4H", "previewUrl": "GUUIQgRk", "thumbnailUrl": "EAXrlOz2", "type": "video", "url": "yus9GYKW", "videoSource": "generic"}, {"alt": "Aqem1Muq", "previewUrl": "HecLg36o", "thumbnailUrl": "AKvz6pFn", "type": "video", "url": "nio860XT", "videoSource": "vimeo"}, {"alt": "Dk4bIgmt", "previewUrl": "S6OlcMUD", "thumbnailUrl": "JkzCeVST", "type": "video", "url": "wY6NkFQU", "videoSource": "vimeo"}], "developer": "1dqc2KrT", "forumUrl": "rBJKHv2Z", "genres": ["RPG", "Simulation", "Action"], "localizations": {"4rb8tzKy": {"announcement": "aVJNBRke", "slogan": "e6x1VwRs"}, "xLjnJhJo": {"announcement": "ocUrvRPw", "slogan": "SfYRET8p"}, "o7H9gFpe": {"announcement": "GAtOrIbQ", "slogan": "cQIfzmR2"}}, "platformRequirements": {"v2ahwlav": [{"additionals": "a27Sjyed", "directXVersion": "snbgGSQu", "diskSpace": "rnlO1mjE", "graphics": "KLJUDm8Z", "label": "qEiYPaca", "osVersion": "Sip6Z0Xf", "processor": "Cab61UF5", "ram": "mBSYnN1M", "soundCard": "wupcqrvB"}, {"additionals": "Ct6LJMkf", "directXVersion": "5U7XfeDQ", "diskSpace": "YUbFpAha", "graphics": "YK4RSUEZ", "label": "si6IXk78", "osVersion": "0GxhYmbP", "processor": "4sypmKNH", "ram": "qG3vsUR2", "soundCard": "2zX5nUTi"}, {"additionals": "gy1TgZm6", "directXVersion": "cA4LacxI", "diskSpace": "eCGWvE2p", "graphics": "LORIfA1Y", "label": "8cNnSw0R", "osVersion": "O4Ckafyw", "processor": "qE3SlKru", "ram": "czFqwdgs", "soundCard": "8vN1LPjg"}], "7W5zOyDB": [{"additionals": "Ti2u3alA", "directXVersion": "JCOWzZIO", "diskSpace": "VGiHS1m5", "graphics": "cIQCBN9u", "label": "rXJ9lz4l", "osVersion": "iWFf8ldD", "processor": "HW5BTQjw", "ram": "H4mmJhe7", "soundCard": "LwqLSBhi"}, {"additionals": "deLc37Te", "directXVersion": "wVW6QZsr", "diskSpace": "YeIdmfqO", "graphics": "YdWm2eOp", "label": "0lEaBuf3", "osVersion": "FulY4DNp", "processor": "HwMr46YG", "ram": "qAHM6x25", "soundCard": "FxIzGBfG"}, {"additionals": "dwmo9C1n", "directXVersion": "zdyYUgJ8", "diskSpace": "HFyrTohe", "graphics": "BgTEIqm6", "label": "ewYI7TDi", "osVersion": "fp4Qk534", "processor": "Hxsa3I0w", "ram": "nedbPhjn", "soundCard": "nRoQLE6w"}], "zEId8jfn": [{"additionals": "JnTYRJuv", "directXVersion": "RomJw0Ej", "diskSpace": "yOqDa8T2", "graphics": "zftJP8dn", "label": "ZMnDsUNt", "osVersion": "mODrKLyx", "processor": "5nvs9QYy", "ram": "zU4IhEWY", "soundCard": "GGKQoiIC"}, {"additionals": "tFXBhMnw", "directXVersion": "nqt9C2oS", "diskSpace": "eOEgLtMp", "graphics": "LZdf2M89", "label": "Ei4JqyS7", "osVersion": "KV3EmTpb", "processor": "4AGu4bsD", "ram": "kPu8LCW1", "soundCard": "0gDiMoB9"}, {"additionals": "0mKyLJ0n", "directXVersion": "NBbOTqhb", "diskSpace": "NXd2h3Yo", "graphics": "d67WTdha", "label": "33hIaqbF", "osVersion": "j8PZOnpM", "processor": "XqRICFw1", "ram": "dodILKGG", "soundCard": "hTOOxxZs"}]}, "platforms": ["Windows", "IOS", "Windows"], "players": ["Multi", "LocalCoop", "CrossPlatformMulti"], "primaryGenre": "Simulation", "publisher": "g8qaFm3G", "releaseDate": "1997-02-05T00:00:00Z", "websiteUrl": "plP66YyK"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '014Uhnh3' \
    --namespace $AB_NAMESPACE \
    --storeId 'Sb2V7Zrp' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'iircukTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'dEEv2alV' \
    --namespace $AB_NAMESPACE \
    --storeId 'GxmaaNDo' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'BDtTwJsW' \
    --itemId '124Dx4w7' \
    --namespace $AB_NAMESPACE \
    --storeId 'WNvHCr3S' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'OMfL9Lv5' \
    --itemId 'CDncLIyr' \
    --namespace $AB_NAMESPACE \
    --storeId 'fHRaRxuP' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '1tewWCpB' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'UZzhlPiM' \
    --populateBundle 'true' \
    --region 'C6Xw9kCt' \
    --storeId '2pV9IlKX' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'KigZWYXx' \
    --namespace $AB_NAMESPACE \
    --storeId 'gA4rZqtJ' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isLessThan", "name": "WJdV7yd5", "predicateType": "SeasonPassPredicate", "value": "VXDwlTUG", "values": ["nklJSPxF", "Wi0hCA35", "mHedNr4d"]}, {"anyOf": 34, "comparison": "includes", "name": "p45iOWzg", "predicateType": "SeasonPassPredicate", "value": "MygU9Cyj", "values": ["DVuSdgOH", "RIqsLn6U", "0dSsaVf6"]}, {"anyOf": 61, "comparison": "isLessThanOrEqual", "name": "6FAGz1Z6", "predicateType": "EntitlementPredicate", "value": "Vd7f6h0X", "values": ["0q6EHMt1", "iTVQB5iL", "TZ0oMb5c"]}]}, {"operator": "and", "predicates": [{"anyOf": 66, "comparison": "isGreaterThan", "name": "9sfpM9yv", "predicateType": "EntitlementPredicate", "value": "jrkPBQhV", "values": ["aYVVmpIA", "LLPUk1eq", "Baz4Wm1H"]}, {"anyOf": 26, "comparison": "isNot", "name": "7BdoFg97", "predicateType": "SeasonTierPredicate", "value": "PkX4yZzE", "values": ["ZYxWagZc", "occKlwpA", "Ae8cl1Pt"]}, {"anyOf": 55, "comparison": "includes", "name": "EYvQ9foR", "predicateType": "SeasonPassPredicate", "value": "0aqJ1HuJ", "values": ["hETVorPE", "uB0apEG2", "WQ19NCGN"]}]}, {"operator": "and", "predicates": [{"anyOf": 82, "comparison": "includes", "name": "1R4yJasQ", "predicateType": "EntitlementPredicate", "value": "9U5ivM3A", "values": ["dCuo1Ow3", "MURyDIyt", "z2RIR1B4"]}, {"anyOf": 5, "comparison": "includes", "name": "grAcTZmI", "predicateType": "SeasonPassPredicate", "value": "DPiU7xFs", "values": ["ej5btpIi", "4kHSTiNb", "F9IKN3o0"]}, {"anyOf": 54, "comparison": "excludes", "name": "tRY9l9AN", "predicateType": "EntitlementPredicate", "value": "YeNmG2Q2", "values": ["B0eoLHpJ", "7YMw7u8N", "UhbCccc8"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '5iEADHKU' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "JGIJhEzA"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'yqTpcRLD' \
    --offset '95' \
    --tag 'BKkVGsuU' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Rd4PDzaF", "name": "MBd6Z2Qq", "status": "INACTIVE", "tags": ["DUAYZwtw", "egvvlw9c", "wZSpkOzi"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'AKGKOvbr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Eg8romW9' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dFRKWNEZ", "name": "PYYBQMvm", "status": "INACTIVE", "tags": ["t5lQqa2X", "4Lkyx0iG", "PJcN2ayz"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'XR9kYSdw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'OUhjEtft' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '56' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'qt3iNsce' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'VBKcdfkv' \
    --limit '63' \
    --offset '90' \
    --orderNos '["PbnoGAYq", "VKYPMilg", "SnJtQfJP"]' \
    --sortBy 'HnUz3bAf' \
    --startTime 'jdpTzPaV' \
    --status 'CHARGED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 141 'QueryOrders' test.out

#- 142 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetOrderStatistics' test.out

#- 143 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '26CN8eAy' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BCUMB9sp' \
    --body '{"description": "RqSQtYlG"}' \
    > test.out 2>&1
eval_tap $? 144 'RefundOrder' test.out

#- 145 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentCallbackConfig' test.out

#- 146 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "gAmIEMfn", "privateKey": "xMUh42mD"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'OKCm4Oj2' \
    --externalId 'mDAStmUH' \
    --limit '29' \
    --notificationSource 'PAYPAL' \
    --notificationType 'TrB8HKt5' \
    --offset '97' \
    --paymentOrderNo '72MlPvJm' \
    --startDate 'RnOZ9Fcy' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'BLaxitoE' \
    --limit '80' \
    --offset '67' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "s7zQIRcr", "currencyNamespace": "AKCQkOj2", "customParameters": {"z6pNM7Uu": {}, "R8nckeYW": {}, "oyS7aTGS": {}}, "description": "oJguPnAT", "extOrderNo": "NvHe6RZx", "extUserId": "mbnC1nT1", "itemType": "OPTIONBOX", "language": "HCz", "metadata": {"zL00TBbW": "PM7tXLEx", "1hjriz9N": "WeBktZlY", "LVwsJw8M": "MphVhwB7"}, "notifyUrl": "zAPiLMmT", "omitNotification": false, "platform": "anvqDxTD", "price": 45, "recurringPaymentOrderNo": "xQ3LUDjs", "region": "cMDy5qEd", "returnUrl": "ZCf1RwY1", "sandbox": false, "sku": "qe1FG6gm", "subscriptionId": "2BFKfI0e", "targetNamespace": "6mmpXVU1", "targetUserId": "7Bry1dUQ", "title": "D5jGMQpH"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'V7viApTk' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'k7SgSZwE' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vsNVoX3A' \
    --body '{"extTxId": "rTet6cqd", "paymentMethod": "uhky8U5z", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NV70vSf2' \
    --body '{"description": "ocY6xZfJ"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4aBiCMGL' \
    --body '{"amount": 75, "currencyCode": "damfDjTr", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 14, "vat": 61}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cm7fN6C6' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Steam", "IOS", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Twitch", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 160 'ResetPlatformWalletConfig' test.out

#- 161 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationConfig' test.out

#- 162 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationConfig' test.out

#- 163 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationConfig' test.out

#- 164 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'S5mMraRq' \
    --limit '67' \
    --offset '63' \
    --source 'ORDER' \
    --startTime 'yJyYRMCU' \
    --status 'SUCCESS' \
    --transactionId '6abp5bKH' \
    --userId 'ln73DLYk' \
    > test.out 2>&1
eval_tap $? 164 'QueryRevocationHistories' test.out

#- 165 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'GetRevocationPluginConfig' test.out

#- 166 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "DDwgobNA"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "GKCuoEu9"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 166 'UpdateRevocationPluginConfig' test.out

#- 167 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'DeleteRevocationPluginConfig' test.out

#- 168 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'UploadRevocationPluginConfigCert' test.out

#- 169 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bDIdhQj9", "eventTopic": "sfTztxOU", "maxAwarded": 6, "maxAwardedPerUser": 26, "namespaceExpression": "cbHct3NE", "rewardCode": "9v0NTsCG", "rewardConditions": [{"condition": "mucZouiR", "conditionName": "q6hLlJcG", "eventName": "LzJsfCvs", "rewardItems": [{"duration": 23, "endDate": "1995-01-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "u4uD0yMK", "quantity": 17, "sku": "u6tFZH8k"}, {"duration": 46, "endDate": "1993-03-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GM70DANw", "quantity": 23, "sku": "aqNSBWwt"}, {"duration": 57, "endDate": "1976-08-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mpRUgPRP", "quantity": 48, "sku": "kHShETBv"}]}, {"condition": "FZ0HYV6g", "conditionName": "P7MZKvvF", "eventName": "q92qmhDR", "rewardItems": [{"duration": 63, "endDate": "1981-07-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1FRUpJzS", "quantity": 38, "sku": "cp5ka1fD"}, {"duration": 9, "endDate": "1982-01-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1shPQ5jC", "quantity": 83, "sku": "AqQxUvQA"}, {"duration": 59, "endDate": "1982-09-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XjtIhE2p", "quantity": 15, "sku": "SAKNJqHh"}]}, {"condition": "zNeH5bDo", "conditionName": "wKCdkOpR", "eventName": "Wf8eoG8D", "rewardItems": [{"duration": 32, "endDate": "1990-06-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PkgpkfdG", "quantity": 88, "sku": "41THGnQd"}, {"duration": 95, "endDate": "1998-06-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3Y073ao2", "quantity": 76, "sku": "mDgOGV7P"}, {"duration": 2, "endDate": "1983-09-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HQ8PY5W4", "quantity": 98, "sku": "vOYtA4Ph"}]}], "userIdExpression": "vcbLB3PM"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'CY57gSQt' \
    --limit '38' \
    --offset '3' \
    --sortBy '["rewardCode", "rewardCode:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 170 'QueryRewards' test.out

#- 171 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'ExportRewards' test.out

#- 172 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'upY23rrI' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '5x6OMHUu' \
    --body '{"description": "56E67igS", "eventTopic": "Em1z7TKK", "maxAwarded": 87, "maxAwardedPerUser": 90, "namespaceExpression": "UTtoNCfU", "rewardCode": "uyGlw7Ay", "rewardConditions": [{"condition": "8UQKx53p", "conditionName": "9wBsos3N", "eventName": "XY2EaFkY", "rewardItems": [{"duration": 56, "endDate": "1980-01-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UqvUCPgj", "quantity": 28, "sku": "HbTp0Phq"}, {"duration": 29, "endDate": "1983-03-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DMCuBQBu", "quantity": 47, "sku": "OfbpWuTE"}, {"duration": 55, "endDate": "1972-08-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "STIltFMs", "quantity": 30, "sku": "ZOQzPXha"}]}, {"condition": "ksUlaGwd", "conditionName": "wclDTAx2", "eventName": "48KYjS5E", "rewardItems": [{"duration": 67, "endDate": "1984-10-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mrc0su2r", "quantity": 57, "sku": "tSEt4s9P"}, {"duration": 49, "endDate": "1988-07-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4dY0mWcn", "quantity": 88, "sku": "l0EE9kkG"}, {"duration": 1, "endDate": "1990-10-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1QljpUuh", "quantity": 15, "sku": "LKmZrxHW"}]}, {"condition": "pl89hsDf", "conditionName": "wxLSxHyI", "eventName": "pWEkXm98", "rewardItems": [{"duration": 24, "endDate": "1989-03-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sAoDnE1Y", "quantity": 41, "sku": "CzNDHuy7"}, {"duration": 4, "endDate": "1994-05-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kbWbWziU", "quantity": 29, "sku": "ZlPRlu63"}, {"duration": 61, "endDate": "1978-11-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "udBJlHUn", "quantity": 6, "sku": "NrlxKvyl"}]}], "userIdExpression": "ppOYGALs"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '93TD68cX' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '3ltNjqmc' \
    --body '{"payload": {"KXWLo0E5": {}, "EaZ07HFu": {}, "uL89sxr5": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'HuOYsW7Z' \
    --body '{"conditionName": "rRPFBnv7", "userId": "AhWhkqyx"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '6cFEnyFw' \
    --limit '24' \
    --offset '100' \
    --start '6LmgVksq' \
    --storeId '6aJGbenH' \
    --viewId 'h6SDO3Bf' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'S0pWudeX' \
    --body '{"active": false, "displayOrder": 7, "endDate": "1979-01-15T00:00:00Z", "ext": {"AjCoHnw1": {}, "6RB8DRCT": {}, "iDqr95C5": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 43, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "S4ZZ5gjR", "sku": "P6HCgXyg"}, {"id": "tn99s8e3", "sku": "hZxcpixD"}, {"id": "0TWtcidf", "sku": "FzG8C7zs"}], "localizations": {"C1xG9Qw0": {"description": "MWp09Foc", "localExt": {"7fzw7gsf": {}, "iDLyOAfp": {}, "BD4eL4Yf": {}}, "longDescription": "fnjJN52D", "title": "BzK83LAH"}, "OWPZMTn6": {"description": "1icjQBnZ", "localExt": {"LM5q84XI": {}, "KouL18QO": {}, "akhKzsGK": {}}, "longDescription": "f5MhXUqz", "title": "BnX9S7En"}, "M2At97Ds": {"description": "x53HYu93", "localExt": {"l33HUZ02": {}, "hLxwqQQa": {}, "rkUYjLOV": {}}, "longDescription": "efWLHyhP", "title": "IUitq3oI"}}, "name": "SJZLs8pL", "rotationType": "NONE", "startDate": "1998-09-28T00:00:00Z", "viewId": "HedHRuZz"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'TtccbY9m' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '9qbxcoa1' \
    --storeId '9ZbyGESq' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'o5u4UhE9' \
    --storeId 'drRA3xMp' \
    --body '{"active": false, "displayOrder": 6, "endDate": "1976-02-18T00:00:00Z", "ext": {"qmX3xSpx": {}, "CjdmeY85": {}, "L0KFAoBt": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 42, "itemCount": 0, "rule": "SEQUENCE"}, "items": [{"id": "mBDa6ubv", "sku": "A8YqQuCc"}, {"id": "sChaPK7W", "sku": "Ww5gQvLM"}, {"id": "42REYRcY", "sku": "l4RhfkVJ"}], "localizations": {"vmcgHULh": {"description": "BFYkcDBS", "localExt": {"liw9k5f4": {}, "XYj1Na9P": {}, "5o46D3tH": {}}, "longDescription": "0ElzSnRn", "title": "XDvAHOfF"}, "e14gyqsQ": {"description": "DMqRSvn6", "localExt": {"87gXYawS": {}, "389kNu9x": {}, "9dMbr4Bx": {}}, "longDescription": "PcDKU2ly", "title": "IknHrHb0"}, "5VCplHwK": {"description": "e96TeyLb", "localExt": {"QwY9L3uo": {}, "cpz9owX5": {}, "j1EsrLF0": {}}, "longDescription": "NkGBqQr9", "title": "bF1Q3dLx"}}, "name": "vyKO30UG", "rotationType": "FIXED_PERIOD", "startDate": "1986-06-28T00:00:00Z", "viewId": "AqgezoDx"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Eh5LexDG' \
    --storeId 'FKcFdqHU' \
    > test.out 2>&1
eval_tap $? 183 'DeleteSection' test.out

#- 184 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'ListStores' test.out

#- 185 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "dxR8I6JO", "defaultRegion": "WcIpfVya", "description": "Zqqrb7KY", "supportedLanguages": ["lkd3qW3O", "vZDIMVHq", "1epjtubu"], "supportedRegions": ["S8lGSZEP", "1oufJwmE", "5XkNxXCP"], "title": "KpIe8SHh"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 186 'GetCatalogDefinition' test.out

#- 187 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 187 'DownloadCSVTemplates' test.out

#- 188 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["iNvuZkqa", "HuUguluA", "cASX8yRZ"], "idsToBeExported": ["DQrr6kmu", "FebuLcJI", "uh42pXL8"], "storeId": "k5NNVlfh"}' \
    > test.out 2>&1
eval_tap $? 188 'ExportStoreByCSV' test.out

#- 189 ImportStore
eval_tap 0 189 'ImportStore # SKIP deprecated' test.out

#- 190 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'GetPublishedStore' test.out

#- 191 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 191 'DeletePublishedStore' test.out

#- 192 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStoreBackup' test.out

#- 193 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'RollbackPublishedStore' test.out

#- 194 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'zQRT8HW1' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '4bOHUnQc' \
    --body '{"defaultLanguage": "f33RovHc", "defaultRegion": "3zdjnX7M", "description": "P9qiOonP", "supportedLanguages": ["Crdd0gV1", "6JjOaAtN", "hBNEkM4B"], "supportedRegions": ["rhLDk9hi", "vWXiPeRl", "H3igtiPn"], "title": "qxdrNgxK"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fBQ1MBIw' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'uv9V1AeN' \
    --action 'UPDATE' \
    --itemSku 'PE9tSkt0' \
    --itemType 'SEASON' \
    --limit '64' \
    --offset '94' \
    --selected 'false' \
    --sortBy '["updatedAt", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'qIlYpUwg' \
    --updatedAtStart 'f66cPUHW' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'BjBAeBs5' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'c8P2maO1' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '9xZj1vv4' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'Y14WotRd' \
    --action 'UPDATE' \
    --itemSku 'htpZn2N2' \
    --itemType 'SUBSCRIPTION' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd 'WQbrjXc2' \
    --updatedAtStart 'GSxRUFcZ' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'DWmBqULE' \
    --action 'CREATE' \
    --itemSku 'y6JX0Yu8' \
    --itemType 'APP' \
    --type 'CATEGORY' \
    --updatedAtEnd 'n1fDH0MY' \
    --updatedAtStart 'UgaAef5w' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Ft5sGb4C' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'EMjDTN9x' \
    --namespace $AB_NAMESPACE \
    --storeId 'kd2qFi2Q' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'JUsbH0X1' \
    --namespace $AB_NAMESPACE \
    --storeId '4uTadAH6' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ezkG3A9K' \
    --targetStoreId 'q5QujQSC' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'Jzgm6oe6' \
    --end 'g0GTNjjJ' \
    --limit '69' \
    --offset '25' \
    --sortBy 'k5I1vmab' \
    --start 'Ryujy9Mg' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'ZsQhEFIR' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '1vknaDKO' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'oZFKWHGo' \
    --limit '18' \
    --offset '42' \
    --sku 'mDKYbMQs' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'PCkUpLBo' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DmYe1HNt' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'pkw5VBcT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'U1bcNYpk' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ZudWOseC"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'ZbhuXP4X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'HYlugXq6' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 81, "orderNo": "Zq1sp3wp"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 12, "currencyCode": "PuhNJxbf", "expireAt": "1991-10-31T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "gq0yzfEL", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 68, "entitlementCollectionId": "e5f5Meqm", "entitlementOrigin": "Xbox", "itemIdentity": "GkHTMI8C", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "qnrne1lx"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 38, "currencyCode": "UDMfFgzH", "expireAt": "1999-06-15T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "LRZ0UnZo", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "xz3hkhiy", "entitlementOrigin": "IOS", "itemIdentity": "80mTSHbU", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "EzXuK1jm"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 60, "currencyCode": "njvEd25p", "expireAt": "1978-11-23T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "OlURL5Ws", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "0794slzc", "entitlementOrigin": "Steam", "itemIdentity": "9fIA935k", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "4bH1o3iJ"}, "type": "DEBIT_WALLET"}], "userId": "dReljRBb"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 94, "currencyCode": "juanB34M", "expireAt": "1995-12-02T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "vcVOTKVo", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "EJDMUCav", "entitlementOrigin": "Other", "itemIdentity": "355WWj5f", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 61, "entitlementId": "o9E5j8js"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 83, "currencyCode": "bTjDlLM9", "expireAt": "1997-07-23T00:00:00Z"}, "debitPayload": {"count": 74, "currencyCode": "Vvh5mjmm", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "OkUJhQ6J", "entitlementOrigin": "Xbox", "itemIdentity": "V1cooMjb", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "jDCZUjqy"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 32, "currencyCode": "g092cIc4", "expireAt": "1989-02-23T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "OTV28UEE", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "Q82ZGfOX", "entitlementOrigin": "Oculus", "itemIdentity": "aSVS0a3u", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "9EQZa61m"}, "type": "CREDIT_WALLET"}], "userId": "vUc53X6a"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 33, "currencyCode": "X0owbZs8", "expireAt": "1982-06-17T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "shtjjHFR", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 63, "entitlementCollectionId": "HxtGpHCm", "entitlementOrigin": "Nintendo", "itemIdentity": "WLe9VH90", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "4IPfMO4O"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 78, "currencyCode": "259hChSV", "expireAt": "1974-04-13T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "2dLASxiM", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "UuMOG2yv", "entitlementOrigin": "Epic", "itemIdentity": "3CSS3tXm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "0zkfoTWQ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 77, "currencyCode": "0rbwfsou", "expireAt": "1992-01-05T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "eXbSBlry", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "MSQGOemH", "entitlementOrigin": "Epic", "itemIdentity": "CwMwOQKN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "IvtB2mN9"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "jgMbRIdy"}], "metadata": {"cft7rq1i": {}, "Adjyf6DF": {}, "yp2EzTYr": {}}, "needPreCheck": false, "transactionId": "62p0aGMd", "type": "Vb77Kw9b"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '94' \
    --status 'INIT' \
    --type 'q9OfUv1Y' \
    --userId 'X2ZmJpoZ' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '5lIqCLmh' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'YY0pbw7J' \
    --body '{"achievements": [{"id": "l3R4Duui", "value": 69}, {"id": "BWhHysan", "value": 17}, {"id": "6LqfAPfj", "value": 95}], "steamUserId": "xPbbbysN"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'SUC9yDDi' \
    --xboxUserId 'cdqR9OXR' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IKtdMHMp' \
    --body '{"achievements": [{"id": "3xSfoZcl", "percentComplete": 87}, {"id": "Fh3qD73a", "percentComplete": 67}, {"id": "5FvrHQRp", "percentComplete": 43}], "serviceConfigId": "Y3S8uop1", "titleId": "vppVCET9", "xboxUserId": "nCtfKrwN"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'DdEgp6ov' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'RVnt78iV' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'cfPDPGec' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'UYNUnrVF' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'pW1UF2p4' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'kV30OAAT' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Hqvk5hbe' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'lKlQGRSa' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'QrAtIxPw' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Su6tffXn' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LShcXtMc' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SqASWHmK' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --collectionId 'YPW91vSQ' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'Jzn3PF0N' \
    --features '["oyoaBagQ", "gqcE4mGt", "v2zi7JMG"]' \
    --fuzzyMatchName 'true' \
    --itemId '["Tiek9ObU", "JfGRFL1B", "2hQki3qr"]' \
    --limit '27' \
    --offset '55' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'KkWxWes4' \
    --body '[{"collectionId": "3OlunQqt", "endDate": "1974-12-07T00:00:00Z", "grantedCode": "4vV1HsQO", "itemId": "FO1hVCBW", "itemNamespace": "q2AdQnAD", "language": "FSy-ymdL_125", "origin": "Oculus", "quantity": 26, "region": "G3jvbnv6", "source": "ACHIEVEMENT", "startDate": "1993-12-03T00:00:00Z", "storeId": "uC85td78"}, {"collectionId": "DwKloyD2", "endDate": "1976-03-05T00:00:00Z", "grantedCode": "JYfof6jd", "itemId": "kILgcpfb", "itemNamespace": "70BIBu68", "language": "bcNr", "origin": "Steam", "quantity": 62, "region": "jfQXRSzO", "source": "REDEEM_CODE", "startDate": "1977-08-17T00:00:00Z", "storeId": "TOdTGdyn"}, {"collectionId": "Vn90t2By", "endDate": "1991-01-10T00:00:00Z", "grantedCode": "VFl8ureS", "itemId": "agfnpZLo", "itemNamespace": "zB2lhVE6", "language": "yhY_SrYn-376", "origin": "Twitch", "quantity": 69, "region": "R4HznaPr", "source": "OTHER", "startDate": "1991-08-17T00:00:00Z", "storeId": "G6oPNlAv"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'UBp1zWZi' \
    --activeOnly 'false' \
    --appId 'h3G3BkQ2' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'TRCqS8bN' \
    --activeOnly 'false' \
    --limit '5' \
    --offset '76' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UKVrIhZm' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --platform '1HN32CLw' \
    --itemId 'lCDMZtXo' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'AvIBjaft' \
    --ids '["IYWTa7OV", "4G8o6L3t", "IKxNosDc"]' \
    --platform 'GPDZxt57' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'd5SZF0gG' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'MRM7QPBW' \
    --sku '2jensHu2' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '1JlmceTL' \
    --appIds '["eFu77r72", "s7gI2Vx6", "A51YbaCd"]' \
    --itemIds '["myEmNkF8", "FwZ2m3oQ", "aGXAIRW6"]' \
    --platform 'OeB3v75L' \
    --skus '["qi3zSfSF", "9kUUvmTt", "xLkya4IU"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'XnANeq07' \
    --platform '95mYGXdk' \
    --itemIds '["0yavjfS6", "dcVjDHcU", "aVBXDvSL"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bbteIv8X' \
    --appId 'ewdJ8i1k' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'suFyPlyD' \
    --entitlementClazz 'APP' \
    --platform 'fnMcj0NQ' \
    --itemId 'kPi5u8gF' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'eJykfPlY' \
    --ids '["MVGfUyBo", "zWE2WUoD", "dJp7Qoup"]' \
    --platform 'Mqiy4MGt' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jcqGI3ev' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform '13bkSHgQ' \
    --sku 'EujElA9w' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZFaxzDO9' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'kpMFzl2L' \
    --entitlementIds 'hzqby3oQ' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'L5bBW6je' \
    --namespace $AB_NAMESPACE \
    --userId 'TAMgPGke' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'j7QpcZ2N' \
    --namespace $AB_NAMESPACE \
    --userId 'go3xmSj5' \
    --body '{"collectionId": "2oPv4LlH", "endDate": "1987-11-29T00:00:00Z", "nullFieldList": ["JMgBowuo", "xVkaFZeC", "fBlofCRV"], "origin": "Epic", "reason": "QI35YbPt", "startDate": "1982-02-05T00:00:00Z", "status": "SOLD", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '0YIivzqp' \
    --namespace $AB_NAMESPACE \
    --userId 'qmKghdYD' \
    --body '{"options": ["l2XM3MRG", "ebXPnqU9", "vrsea4Zg"], "platform": "K4ZCh0aZ", "requestId": "gkBUDbpt", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Z6grbxt5' \
    --namespace $AB_NAMESPACE \
    --userId '8TWIG20r' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'VbMOfze8' \
    --namespace $AB_NAMESPACE \
    --userId 'vy6vTEwl' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '3Pb3TQkp' \
    --namespace $AB_NAMESPACE \
    --userId 'Fu9yVn2V' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '26gAIbpT' \
    --namespace $AB_NAMESPACE \
    --userId '3eeVKfOU' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '3DO6FhDC' \
    --namespace $AB_NAMESPACE \
    --userId 'KM2W2fl9' \
    --body '{"reason": "1gyGJH2v", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId '19ileX9d' \
    --namespace $AB_NAMESPACE \
    --userId '3RfaiuGF' \
    --quantity '64' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'BZqrQgKm' \
    --namespace $AB_NAMESPACE \
    --userId 'lY5xdFQM' \
    --body '{"platform": "KbdqASOD", "requestId": "HBdr1Boi", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '8uOeUnv3' \
    --body '{"duration": 17, "endDate": "1993-06-08T00:00:00Z", "entitlementCollectionId": "LKDRCtYk", "entitlementOrigin": "Xbox", "itemId": "wb2wRavB", "itemSku": "Qzlw2Q8c", "language": "0XYw5JHl", "metadata": {"2LXuW0za": {}, "qId7RwO7": {}, "z4eXqzAN": {}}, "order": {"currency": {"currencyCode": "NaSPery6", "currencySymbol": "UUnWOtJW", "currencyType": "REAL", "decimals": 21, "namespace": "Ot6fzHQt"}, "ext": {"Nbl92ece": {}, "WHjKiJEw": {}, "eYz7w2Aw": {}}, "free": true}, "orderNo": "Ggxihjx6", "origin": "Epic", "overrideBundleItemQty": {"PhONiJT5": 97, "ZcnUOJaP": 8, "cajdX9xX": 79}, "quantity": 37, "region": "d496MhOz", "source": "PROMOTION", "startDate": "1987-03-15T00:00:00Z", "storeId": "eNqnQAWV"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ZVBcxIsd' \
    --body '{"code": "OHP3va7t", "language": "IJRY", "region": "drwMravT"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Ox6BcaF3' \
    --body '{"itemId": "z0CIYuCz", "itemSku": "IF6hcGMB", "quantity": 35}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'qnB9cBUP' \
    --body '{"entitlementCollectionId": "ZOljMj3W", "entitlementOrigin": "Steam", "metadata": {"yZMkh1pP": {}, "7qmPsiDu": {}, "waCpEwJt": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "elgoenQL", "namespace": "vdJE5hDa"}, "item": {"itemId": "ii7TFRbp", "itemSku": "nZNuB7H2", "itemType": "36E00M6a"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "HXhO4h8u", "namespace": "Bwyf1FvV"}, "item": {"itemId": "J4Qyh48j", "itemSku": "fYCJXyNp", "itemType": "HblgEl6Z"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "5NE4ONBK", "namespace": "CvgnQ5LI"}, "item": {"itemId": "k6qs4v7l", "itemSku": "NYWtRBPE", "itemType": "7Tw30oCe"}, "quantity": 19, "type": "ITEM"}], "source": "SELL_BACK", "transactionId": "05d0icOa"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'QoHn9xOG' \
    --endTime '2Ynojj3S' \
    --limit '3' \
    --offset '71' \
    --productId 'WBbPAv7w' \
    --startTime 'CJ3P5Jxo' \
    --status 'VERIFIED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'neQ3Gyud' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'OAZMETAY' \
    --endTime 'ysANorBh' \
    --limit '15' \
    --offset '26' \
    --startTime 'YVyRECZC' \
    --status 'SUCCESS' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'hbv0HDJ8' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "yS-LLGs", "productId": "u3mAF5Wu", "region": "Tgivkj9x", "transactionId": "PVGFlm7e", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oDAdcH2o' \
    --itemId 'zz75H0wW' \
    --limit '10' \
    --offset '41' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Rlbc4K3I' \
    --body '{"currencyCode": "RV7fZVZk", "currencyNamespace": "cgZP7geG", "discountedPrice": 16, "entitlementPlatform": "Oculus", "ext": {"tzaYbkBL": {}, "iQEWqdZc": {}, "K2CaKQMQ": {}}, "itemId": "Q1EnAuwU", "language": "jA1WwxnY", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 92, "quantity": 10, "region": "z5nJsvkP", "returnUrl": "HDxIKf0w", "sandbox": false, "sectionId": "Ez3id2Oe"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'F3rDZixs' \
    --itemId 'RIqg5KvU' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tSAjpTuX' \
    --userId '9iSThpdx' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'sP6PiBr0' \
    --userId 'dI6JEa7o' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "wiSxuxUI"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1tDljnlT' \
    --userId 'FxaSUBNz' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZqGqWnmi' \
    --userId 'bssQms4j' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'dQWmLBtt' \
    --userId 'ThzCwdLl' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'dxU9cmzu' \
    --userId 'FewtKiC0' \
    --body '{"additionalData": {"cardSummary": "4w7UwR1W"}, "authorisedTime": "1977-07-18T00:00:00Z", "chargebackReversedTime": "1995-06-23T00:00:00Z", "chargebackTime": "1977-01-12T00:00:00Z", "chargedTime": "1971-10-21T00:00:00Z", "createdTime": "1993-04-06T00:00:00Z", "currency": {"currencyCode": "sZGLhIZ4", "currencySymbol": "xIMSEFel", "currencyType": "REAL", "decimals": 69, "namespace": "BTmFYxr5"}, "customParameters": {"Py7gqc3M": {}, "99OkgUks": {}, "J2C6Onmh": {}}, "extOrderNo": "R6vERGYN", "extTxId": "bBstfRAj", "extUserId": "LQEqbHoY", "issuedAt": "1982-08-10T00:00:00Z", "metadata": {"MUJ4Vdh1": "6eDtdxcv", "zmKed81Y": "DATEjbYP", "2K9NsI69": "NPfuZkUE"}, "namespace": "vMUMJBPV", "nonceStr": "bDlDwxi9", "paymentMethod": "ruqDan9k", "paymentMethodFee": 38, "paymentOrderNo": "qur3nLpk", "paymentProvider": "STRIPE", "paymentProviderFee": 16, "paymentStationUrl": "oSBhvNPA", "price": 91, "refundedTime": "1977-03-02T00:00:00Z", "salesTax": 47, "sandbox": true, "sku": "4aRErAXp", "status": "CHARGEBACK", "statusReason": "GoyAWEhZ", "subscriptionId": "HY17lTY1", "subtotalPrice": 49, "targetNamespace": "WvBIFhJh", "targetUserId": "hwG0y4w6", "tax": 78, "totalPrice": 60, "totalTax": 88, "txEndTime": "1994-07-20T00:00:00Z", "type": "PEQMmIVo", "userId": "IQQwVn78", "vat": 86}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'm18VqiEC' \
    --userId '1zLrrV8x' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'yWUNtWIF' \
    --body '{"currencyCode": "VpX4AlNB", "currencyNamespace": "Vygj1OHo", "customParameters": {"ejlGxn6A": {}, "Fg0GRqvK": {}, "Dp1u9sqT": {}}, "description": "L2mkGieY", "extOrderNo": "1gwUMUnK", "extUserId": "EWIzcXsJ", "itemType": "SUBSCRIPTION", "language": "ZzB_OOlj-792", "metadata": {"H5FSM2nF": "f4xKsUNm", "VmFU1HZm": "uHhLfZ8t", "JSLq59gv": "E2y8OSmm"}, "notifyUrl": "ZqLIs2nA", "omitNotification": true, "platform": "2HiQl3Gc", "price": 92, "recurringPaymentOrderNo": "A3fo2Hcx", "region": "rxGF9tDG", "returnUrl": "akBlhumo", "sandbox": false, "sku": "Xrl8dSOo", "subscriptionId": "BeF7EMRu", "title": "ujhd5erR"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9Bbqe0nH' \
    --userId '4ND9SytQ' \
    --body '{"description": "qb2vkDHV"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'QrFLFZQN' \
    --body '{"code": "y5zZHsfS", "orderNo": "fe6idToI"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'SvdTgqsE' \
    --body '{"meta": {"VJNjpicd": {}, "pxYbhRzu": {}, "GEfHWz4f": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "IjRzAC1c", "namespace": "CUUvs4Sw"}, "entitlement": {"entitlementId": "5vkyrsPA"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "PHyhCkT9", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 7, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "b2722q6z", "namespace": "Kdwji229"}, "entitlement": {"entitlementId": "CbqFhxGt"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "FcaOxupg", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 52, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "QW6YG8U8", "namespace": "oDzA3IS4"}, "entitlement": {"entitlementId": "VYRMPcVf"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "HzaE61ob", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 69, "type": "ITEM"}], "source": "OTHER", "transactionId": "eimFt3Lf"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'gADRpj9w' \
    --body '{"gameSessionId": "hVKqkzVs", "payload": {"z2q0bTOa": {}, "K3njrmnC": {}, "4aKkm2Jy": {}}, "scid": "dopoeSXs", "sessionTemplateName": "uZDEdkUS"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'lNTkpAOF' \
    --chargeStatus 'CHARGED' \
    --itemId 'o9YRzPa3' \
    --limit '97' \
    --offset '32' \
    --sku 'CPr2vGRJ' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Yv62C5St' \
    --excludeSystem 'false' \
    --limit '85' \
    --offset '34' \
    --subscriptionId 'ZbVUIhff' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'QoujuuQa' \
    --body '{"grantDays": 68, "itemId": "pGQaWF1x", "language": "nyiHiptl", "reason": "DBLscPdU", "region": "iNG8yMnS", "source": "uiiIVeBD"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'KAcQdGs1' \
    --itemId 'Xab0F8hS' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Rh87No58' \
    --userId 'HF7u9c6v' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SNAXELwD' \
    --userId 'yUQw5wIr' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1oGM7dIK' \
    --userId 'pihfO7rA' \
    --force 'false' \
    --body '{"immediate": true, "reason": "XXNSeVbx"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1rhOpg3T' \
    --userId 'aUgZGqrF' \
    --body '{"grantDays": 25, "reason": "LsTIXkqU"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2Iu99fVU' \
    --userId '41wtmmUm' \
    --excludeFree 'true' \
    --limit '25' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tyMNcwtZ' \
    --userId 'czVhCTKU' \
    --body '{"additionalData": {"cardSummary": "29xi2sgH"}, "authorisedTime": "1972-08-28T00:00:00Z", "chargebackReversedTime": "1985-10-11T00:00:00Z", "chargebackTime": "1972-10-14T00:00:00Z", "chargedTime": "1974-02-23T00:00:00Z", "createdTime": "1987-05-25T00:00:00Z", "currency": {"currencyCode": "IeiNqZcv", "currencySymbol": "wuPdLenE", "currencyType": "REAL", "decimals": 9, "namespace": "D2hnVy4O"}, "customParameters": {"AeELmUuU": {}, "O1CYVfQU": {}, "m8q7oRua": {}}, "extOrderNo": "FirwtOUq", "extTxId": "HGn6NDeh", "extUserId": "oWP0PgEW", "issuedAt": "1977-03-20T00:00:00Z", "metadata": {"WAOQkuUU": "73WkTEPq", "ZKXbk3pn": "HCSvmkDw", "OPMMmvNt": "SLBHETSp"}, "namespace": "xohqwoza", "nonceStr": "hO8Gmutp", "paymentMethod": "hbc4TygU", "paymentMethodFee": 82, "paymentOrderNo": "VEkX5Z5S", "paymentProvider": "PAYPAL", "paymentProviderFee": 53, "paymentStationUrl": "czAD9nIp", "price": 67, "refundedTime": "1975-08-13T00:00:00Z", "salesTax": 39, "sandbox": false, "sku": "SLNOROno", "status": "DELETED", "statusReason": "UHaLESww", "subscriptionId": "0p3VyNGE", "subtotalPrice": 72, "targetNamespace": "wqABpRWI", "targetUserId": "Irt7xljY", "tax": 55, "totalPrice": 51, "totalTax": 79, "txEndTime": "1981-12-27T00:00:00Z", "type": "6Fx6VEPh", "userId": "0xFErdum", "vat": 72}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Fa9NN01g' \
    --namespace $AB_NAMESPACE \
    --userId 'wRDLvrgl' \
    --body '{"count": 3, "orderNo": "unLH5Ask"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '6o93XYxb' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'cV6LG8zR' \
    --namespace $AB_NAMESPACE \
    --userId 'M22s2lqG' \
    --body '{"allowOverdraft": true, "amount": 31, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"jVZGXLkI": {}, "SGHLfWuK": {}, "Ibg2UetQ": {}}, "reason": "RnZS80e5"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'ekOhyNyM' \
    --namespace $AB_NAMESPACE \
    --userId 'Gnbfsxqz' \
    --limit '20' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'Q3NJVw0B' \
    --namespace $AB_NAMESPACE \
    --userId 'NYjQ8pN6' \
    --request '{"amount": 84, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"yJpslqv4": {}, "dzx03fwz": {}, "FKJ2I51t": {}}, "reason": "pz4QKZMg", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'YH3Qcx7H' \
    --namespace $AB_NAMESPACE \
    --userId 'nj2eB2zw' \
    --body '{"amount": 5, "expireAt": "1972-08-30T00:00:00Z", "metadata": {"9wZOLSCt": {}, "PxlG3rz1": {}, "Cjhb5aXf": {}}, "origin": "Playstation", "reason": "KWxnAZMi", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '7oOA3r83' \
    --namespace $AB_NAMESPACE \
    --userId 'rgniIxsb' \
    --request '{"amount": 14, "debitBalanceSource": "EXPIRATION", "metadata": {"S0g7TLUt": {}, "vwmYgzRC": {}, "6dgwyqaW": {}}, "reason": "S0n7YxbM", "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'm7ix4Ife' \
    --namespace $AB_NAMESPACE \
    --userId 'Nd2PTGCl' \
    --body '{"amount": 41, "metadata": {"A9sEe3yU": {}, "8TQvyBFv": {}, "JOndT1iN": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 300 'PayWithUserWallet' test.out

#- 301 GetUserWallet
eval_tap 0 301 'GetUserWallet # SKIP deprecated' test.out

#- 302 DebitUserWallet
eval_tap 0 302 'DebitUserWallet # SKIP deprecated' test.out

#- 303 DisableUserWallet
eval_tap 0 303 'DisableUserWallet # SKIP deprecated' test.out

#- 304 EnableUserWallet
eval_tap 0 304 'EnableUserWallet # SKIP deprecated' test.out

#- 305 ListUserWalletTransactions
eval_tap 0 305 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 306 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'Y79nOZjC' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'UT8ttHX6' \
    --body '{"displayOrder": 28, "localizations": {"3TtbrV8S": {"description": "pt7OzXvF", "localExt": {"tPqzW07a": {}, "IHhGmncT": {}, "ZADOcMW3": {}}, "longDescription": "kjQIwDTx", "title": "l6NV1Aig"}, "hczb2McQ": {"description": "6KLbD7cN", "localExt": {"rcU9yiaV": {}, "izOdZ1OD": {}, "RGxapNvv": {}}, "longDescription": "bRjHIKwc", "title": "ZXAAbsls"}, "LqCStzsN": {"description": "m0avX0yY", "localExt": {"S76MhQrM": {}, "NMbrJq5X": {}, "YwLsajvu": {}}, "longDescription": "OCCAncPY", "title": "zha0rIOI"}}, "name": "dAWrJwuP"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'ZT7ryu84' \
    --storeId 'PwAiVzH5' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'fyPfKTAe' \
    --storeId 'Lypdeavg' \
    --body '{"displayOrder": 27, "localizations": {"J88CJFip": {"description": "KDUnmiRc", "localExt": {"NoQvbxeO": {}, "Cp0IoE1E": {}, "auQvTHoC": {}}, "longDescription": "2JoNiyrJ", "title": "2wFXeLN1"}, "BXR78loN": {"description": "mCj4pfzB", "localExt": {"mETKsCHE": {}, "yKC6gLYD": {}, "EYhyeANe": {}}, "longDescription": "V5KICETT", "title": "xHgMvcfN"}, "Eez1BvDl": {"description": "pXc7xhL7", "localExt": {"E5bHPZuY": {}, "xJE0BcmM": {}, "2lSNlbc3": {}}, "longDescription": "l0jxdXMs", "title": "UoNiZl4p"}}, "name": "dn2KfHtV"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'bDjUqh5C' \
    --storeId 'OqBFc95z' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 82, "expireAt": "1975-04-11T00:00:00Z", "metadata": {"hyYa7lF9": {}, "LFEjnO8H": {}, "9EdkjPjZ": {}}, "origin": "Steam", "reason": "6jInwyqs", "source": "TRADE"}, "currencyCode": "cii8O246", "userIds": ["ZZ7PyUbA", "XMl9ElR4", "kPtar6oF"]}, {"creditRequest": {"amount": 27, "expireAt": "1996-02-27T00:00:00Z", "metadata": {"Mkb5WLG4": {}, "ootnodRH": {}, "FbUlYXpa": {}}, "origin": "Oculus", "reason": "FGtrWFuT", "source": "OTHER"}, "currencyCode": "Y1MW0olf", "userIds": ["ubJ9Ppjh", "coe1z9aF", "NF1Oxqsz"]}, {"creditRequest": {"amount": 37, "expireAt": "1978-03-16T00:00:00Z", "metadata": {"pnKU0hZv": {}, "62ypXdof": {}, "TtocXrEa": {}}, "origin": "IOS", "reason": "JghHhIOL", "source": "REFUND"}, "currencyCode": "6Gp8dcnO", "userIds": ["onm7UDMH", "Uc5NBbIz", "fJ4WqvxQ"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "3uGqGw3a", "request": {"allowOverdraft": true, "amount": 83, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"cSdZ4Lmm": {}, "tzpK8e5N": {}, "ZirTJZDB": {}}, "reason": "FQvNCCxC"}, "userIds": ["6zbnJi4C", "AJUjdnJ7", "nZcxIq7g"]}, {"currencyCode": "JAatzoe4", "request": {"allowOverdraft": false, "amount": 71, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"A0q0Wiz3": {}, "bNFyc7zF": {}, "jPKmXHcS": {}}, "reason": "J5qVSN8L"}, "userIds": ["SmDUt5BB", "1M9RnafF", "KUNbTVyZ"]}, {"currencyCode": "ZRC91kUQ", "request": {"allowOverdraft": true, "amount": 63, "balanceOrigin": "IOS", "balanceSource": "DLC_REVOCATION", "metadata": {"tFLC4dui": {}, "jaVkoDOB": {}, "tLNHy2wW": {}}, "reason": "xNuTpCK2"}, "userIds": ["GlUgz1ZF", "QDGKmcQR", "9J1MbPU5"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'htWMuacw' \
    --end 'En6FVjg8' \
    --start 'ONvMNaf2' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["x8aWpaeZ", "JZ1Ts9oY", "cQs33Mgy"], "apiKey": "IXqHohjj", "authoriseAsCapture": false, "blockedPaymentMethods": ["YP7ApQ4h", "mVnIh2oN", "YHCR6EQa"], "clientKey": "ansNOeyI", "dropInSettings": "HtTo4u0A", "liveEndpointUrlPrefix": "SmLLUKZT", "merchantAccount": "mzDEwcwx", "notificationHmacKey": "PGnP99LV", "notificationPassword": "GRtsdeLx", "notificationUsername": "Kkyy6ZyG", "returnUrl": "TwadCSUa", "settings": "PMvntNsM"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "X8Z1njOM", "privateKey": "xGwUStld", "publicKey": "qbnzMIlo", "returnUrl": "iqupueyH"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "JHkdebK7", "secretKey": "HjSdahLg"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'KW2bmIsL' \
    --region 'fBVNINWW' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "SerPecUg", "clientSecret": "26V5nKiV", "returnUrl": "e2M3jBzl", "webHookId": "p2DhlDVI"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["HdqGRD9F", "8Da2NRSO", "pbdkVBvK"], "publishableKey": "qgA5lQi0", "secretKey": "1KJdUvDi", "webhookSecret": "cOIrzMhb"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "YkMA6u38", "key": "ELb8b5TC", "mchid": "0SiR13KE", "returnUrl": "tNY2aunE"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "9SBk9TgR", "flowCompletionUrl": "Paj0bPro", "merchantId": 79, "projectId": 39, "projectSecretKey": "fJbfHStZ"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'zRNDyDhN' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'uPRHE4fu' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["Q4zJrYHg", "hOjJiyb9", "1HmbRzmh"], "apiKey": "EhjQtOev", "authoriseAsCapture": true, "blockedPaymentMethods": ["yageNFYO", "S5JjxjeR", "HjymX19i"], "clientKey": "eJEp9zod", "dropInSettings": "jFE1gnTl", "liveEndpointUrlPrefix": "2Lw1bKGg", "merchantAccount": "Zo9Vybtn", "notificationHmacKey": "jReyCWof", "notificationPassword": "f8QcWBnq", "notificationUsername": "ySAoeNKN", "returnUrl": "zb7aYXBo", "settings": "TdTOyTDr"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'hgX1TX2q' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'huXekfNV' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "rUjVDWNR", "privateKey": "3AI602xD", "publicKey": "2Enlv5X1", "returnUrl": "3c6egcCF"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ei50gvMx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'CEoVeCeN' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "Oq75Ccxu", "secretKey": "tGXyH366"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'p7ySf8Ty' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'bqcjRmcN' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "4bzMEEla", "clientSecret": "04bzmWkP", "returnUrl": "G2UkX6rX", "webHookId": "LgefJAqv"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'P8EbSPpy' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'yuWTKI9r' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["zhLsRvfq", "UkGj3HKX", "2rvR2SKl"], "publishableKey": "q6xB2GLf", "secretKey": "Wftxvxgg", "webhookSecret": "9KgsJaYi"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '9QTq3dOg' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'jg6b5ZOU' \
    --validate 'true' \
    --body '{"appId": "vI2N4IRb", "key": "YFaLGzNh", "mchid": "qBoWvf2u", "returnUrl": "EFd1dRcO"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ShkF1Bzb' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'xnUhDYFg' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'HyZ4OaB7' \
    --validate 'false' \
    --body '{"apiKey": "55MdSVnG", "flowCompletionUrl": "w1DjLBLK", "merchantId": 95, "projectId": 78, "projectSecretKey": "HdimcQ3m"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'zWN4fuKi' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '9RAyHCNx' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '100' \
    --namespace 'BQyAFUXE' \
    --offset '47' \
    --region 'SPxJ67aG' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "i5ETJP3k", "region": "jmZav2Ls", "sandboxTaxJarApiToken": "BVIHncz4", "specials": ["WXPAY", "CHECKOUT", "XSOLLA"], "taxJarApiToken": "bcWVOTq5", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'oU4tjKb5' \
    --region 'W9sp616s' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Sdxq9bus' \
    --body '{"aggregate": "ADYEN", "namespace": "szJRvEVX", "region": "PgdQSD27", "sandboxTaxJarApiToken": "iK06JvE2", "specials": ["WXPAY", "XSOLLA", "ALIPAY"], "taxJarApiToken": "bgFQigPS", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'VhzmOwmu' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "47g3ZAT1", "taxJarApiToken": "ALr7mrxi", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Aj9n7ogT": "OuORxOHl", "GK7ov2yz": "4nsfoHC8", "PlEaxsKM": "9sh40eWc"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'JnQ2QxmK' \
    --end 'hvkYxxpW' \
    --start 'tpUSb6QV' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'cRz5SFdr' \
    --storeId 'YPcMSPOm' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '5OZcHKJb' \
    --storeId 'oRmlutMU' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'yq917ycp' \
    --namespace $AB_NAMESPACE \
    --language '0eo79APF' \
    --storeId '8KVzLj0H' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'A7RKdtPt' \
    --namespace $AB_NAMESPACE \
    --language 'LHJrFQRR' \
    --storeId 'oSjaKeul' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'fVTRod8T' \
    --namespace $AB_NAMESPACE \
    --language 'JyIqEPso' \
    --storeId 'LlQsaLil' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetDescendantCategories' test.out

#- 356 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 356 'PublicListCurrencies' test.out

#- 357 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'L2OR3suM' \
    --region 'iDJHubsN' \
    --storeId 'AsPSh7On' \
    --appId 'GJ1LQBzR' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'uItefulV' \
    --categoryPath 'G2gctig6' \
    --features 'ME17PG31' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --language 'Lofih2VF' \
    --limit '84' \
    --offset '23' \
    --region 'op61MRnG' \
    --sortBy '["name:asc", "createdAt"]' \
    --storeId 'n4ervNOf' \
    --tags 'kmycGWH4' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'MuSEmgo5' \
    --region '51buzIQ2' \
    --storeId '2ispl54J' \
    --sku '6TcQGy9E' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'gZZkgf2i' \
    --storeId '3pjucnEf' \
    --itemIds 'f7IDzkEv' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'Oibt6ZWo' \
    --region 'RRl6dU0s' \
    --storeId 'eEpL5k0I' \
    --itemIds 'rdcFiNNb' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["yL8OcOq4", "wZjz4ns2", "MI9hkjn9"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'APP' \
    --limit '90' \
    --offset '29' \
    --region 'nSHwR3Cp' \
    --storeId 'e8xupQOD' \
    --keyword 'SmWCkTEc' \
    --language 'E7VBvDPn' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'SqW3h0Y7' \
    --namespace $AB_NAMESPACE \
    --language '9m3RE43H' \
    --region 'uGSE8z5y' \
    --storeId 'GqIQ8KRF' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'kEmE90Ii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'yUSMzGaH' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'dbzEWvi6' \
    --populateBundle 'true' \
    --region 'Hkhp7s2l' \
    --storeId 'kuAwgfMC' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "ZyHVH6i7", "paymentProvider": "WXPAY", "returnUrl": "B6NR3uma", "ui": "j4od3PTD", "zipCode": "WrR2dH6S"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KRf68KvH' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eJodQCE1' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QsHRnLYK' \
    --paymentProvider 'ALIPAY' \
    --zipCode '62vwZPEe' \
    --body '{"token": "EVrugIQN"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IYEdFR2h' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'hm0bbkV9' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'fYNwTged' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'xqkG0w4e' \
    --foreinginvoice '7zoefrsd' \
    --invoiceId 'diMI4nwF' \
    --payload '5g7Uwy7v' \
    --redirectResult 'cFIcMso2' \
    --resultCode 'Zaq1CQYw' \
    --sessionId 'p0KEPjUz' \
    --status 'zeJBblaM' \
    --token 'Ys6O2BQC' \
    --type 'SDVKW3TD' \
    --userId 'mRUEo5bH' \
    --orderNo 'ZwQOboxB' \
    --paymentOrderNo 'dmMVrHpO' \
    --paymentProvider 'WALLET' \
    --returnUrl 'EysX9l1s' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'irXbdXub' \
    --paymentOrderNo 'JZMUKab7' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'jz73kWWj' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '3zkbYnP0' \
    --limit '64' \
    --offset '15' \
    --sortBy '["namespace:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'pGqdKSS5' \
    > test.out 2>&1
eval_tap $? 381 'GetReward1' test.out

#- 382 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 382 'PublicListStores' test.out

#- 383 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["MqPRQleZ", "iHVUEGDN", "CTmXyYyp"]' \
    --itemIds '["M5jjGInX", "aIifVZ56", "2SdFevI9"]' \
    --skus '["LtB5zCRP", "vv4M7sTo", "s0NYKO6O"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'WbRCnInS' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'F0zj6vXM' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'XUGUvKks' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["QkQr0gIL", "0F3KHNSv", "PClSXJgg"]' \
    --itemIds '["YeCxIMVS", "r6DWnI1V", "Z8yc5wUU"]' \
    --skus '["fgpEF1ZX", "USej8Rmf", "EA9xIFa5"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "L94cI5wB", "language": "Kf_SIrt_Jv", "region": "XeRFroLl"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '293cZEt2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gYWk4FMj' \
    --body '{"epicGamesJwtToken": "XlGV4L2M"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MhJ4iD7Y' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QebzkkDO' \
    --body '{"serviceLabel": 87}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'IjnvJG5P' \
    --body '{"serviceLabels": [88, 3, 95]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'udUKtrUf' \
    --body '{"appId": "4qfrUEJF", "steamId": "SmnFpTDZ"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'AqY26rI6' \
    --body '{"xstsToken": "hCWPCizZ"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '052RbKyR' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'eqg5VJbq' \
    --features '["kuGfMkNz", "jjVsUurP", "TG4G4waD"]' \
    --itemId '["IHE36nBv", "7CkEr4Lu", "20R3rem6"]' \
    --limit '65' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xejEE1EX' \
    --appId 'EhweI9V0' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'AtKFg8Nl' \
    --limit '25' \
    --offset '31' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'DTeXIvn7' \
    --availablePlatformOnly 'false' \
    --ids '["jt8qTt0o", "91BoliuY", "8NAfB7QP"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Kg4E5qMc' \
    --appIds '["ppZkAB3f", "CyAj1MOs", "90OnpCCG"]' \
    --itemIds '["WcYrJY53", "1XUT9j6I", "JuiBjnjx"]' \
    --skus '["EYCDtbJI", "MCW2opK7", "C7gYTI65"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ycFN0JRy' \
    --appId '2o9os8Q1' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jxFgNjvU' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'wThhQaOl' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9cEayQ3p' \
    --ids '["9yHaVxRw", "ae4eDI8z", "jdkJ0xG6"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '00qILcJg' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'mqBjz7vF' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'TPOddEgp' \
    --namespace $AB_NAMESPACE \
    --userId 'pHQ9gyrJ' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'IjQHFCOB' \
    --namespace $AB_NAMESPACE \
    --userId '0ZDx1Ww0' \
    --body '{"options": ["NKbSnlOX", "PMlvPznH", "nPCkiUc1"], "requestId": "8BI1oKJs", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '50CoVOHD' \
    --namespace $AB_NAMESPACE \
    --userId 'uSue3lYV' \
    --body '{"requestId": "yVenIjqL", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'PGBlMUUP' \
    --namespace $AB_NAMESPACE \
    --userId '32lNxIB6' \
    --body '{"useCount": 38}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '0rf4csYP' \
    --namespace $AB_NAMESPACE \
    --userId 'O6NwLYUi' \
    --body '{"entitlementId": "XXAqpQDm", "useCount": 40}' \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'cjMkbAHh' \
    --body '{"code": "BGyyh4c7", "language": "Hy_715", "region": "9CbDvcbw"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'm5wSxXfQ' \
    --body '{"excludeOldTransactions": false, "language": "mk", "productId": "2DPjcXCN", "receiptData": "BKuNLGMJ", "region": "1vAzA0sY", "transactionId": "OL9lLJAp"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XMSDSgfo' \
    --body '{"epicGamesJwtToken": "X8l8ziKa"}' \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'aAbADv2Z' \
    --body '{"autoAck": true, "language": "yQNP_RGfI", "orderId": "7biZC2MX", "packageName": "oe06IcVf", "productId": "QpRoSb44", "purchaseTime": 69, "purchaseToken": "NObeqTOe", "region": "XY7DLcTV"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8klik5R7' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '7WYAyrpx' \
    --body '{"currencyCode": "8fr7bgqK", "price": 0.283117169923521, "productId": "RmybPFSX", "serviceLabel": 31}' \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'luQs7DEm' \
    --body '{"currencyCode": "exp4q7sh", "price": 0.8531475119984131, "productId": "m0kspBG4", "serviceLabels": [10, 67, 74]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UxKN8ZnD' \
    --body '{"appId": "l0YO2JUy", "currencyCode": "IUPIeTeC", "language": "ZG-ImmR", "price": 0.5478944922095388, "productId": "apV3gBhV", "region": "gP4HZL62", "steamId": "TktL2Ncs"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'kW59HDXO' \
    --body '{"gameId": "cGsv6ms0", "language": "smRU_OmiY", "region": "GbiZ19xO"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'E6DXPJEc' \
    --body '{"currencyCode": "vXklZfcW", "price": 0.07714269752836889, "productId": "o4tYkbO1", "xstsToken": "PSRyIma6"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '2R6edyOC' \
    --itemId 'trJWslgD' \
    --limit '25' \
    --offset '26' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VOeJQzEP' \
    --body '{"currencyCode": "ZmohWJ9A", "discountedPrice": 63, "ext": {"1T3BllFX": {}, "aqtjYRVH": {}, "db2fphLG": {}}, "itemId": "SlRWdyMh", "language": "ixey_TuJe", "price": 100, "quantity": 63, "region": "kjW402rT", "returnUrl": "dj983V61", "sectionId": "GaWRj2dF"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KGllfYWs' \
    --userId 'KbkCjYso' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'XGfF4ppO' \
    --userId 'cYOf8CCI' \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Fo3XPi4x' \
    --userId 'jT59uipr' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZDNOB9jd' \
    --userId 'SThkKxag' \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'BiBCkuGz' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'NiZeYQWs' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'QmyOhCXg' \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'RqcHQucZ' \
    --autoCalcEstimatedPrice 'true' \
    --language '6pG3xHZi' \
    --region 'S0Z1cAkm' \
    --storeId '8cPRNBbI' \
    --viewId 'O8aszaX2' \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'AE6WlSlX' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '26iBpWDk' \
    --limit '83' \
    --offset '97' \
    --sku 'KeGSE38l' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0eElNS4k' \
    --body '{"currencyCode": "cIUKvdzY", "itemId": "vFh9SDZX", "language": "rtn_TroF", "region": "YSqg6d5s", "returnUrl": "lYmrjAFT", "source": "qiFS97fu"}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'w7xUEyd5' \
    --itemId 'QYw2lcM8' \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GnEuYgmC' \
    --userId 'xVrlZdL7' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Tt2vSjxr' \
    --userId 'RUdB3DHe' \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Qj8zs9aA' \
    --userId '9dBNFoCW' \
    --body '{"immediate": true, "reason": "NSibVrGM"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BC2HIGMF' \
    --userId 'uEEgXnEM' \
    --excludeFree 'true' \
    --limit '65' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'EuTAMsuM' \
    --language 'iWaeouGL' \
    --storeId 'cokNsSrY' \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'xysabmhK' \
    --namespace $AB_NAMESPACE \
    --userId '3xwDjKOd' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'cq1lLqPE' \
    --namespace $AB_NAMESPACE \
    --userId 'vAh8kok5' \
    --limit '100' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'tiMhjfhm' \
    --baseAppId '7i4fi9m6' \
    --categoryPath 'F77Yqlp6' \
    --features 'HL4fyoCA' \
    --includeSubCategoryItem 'true' \
    --itemName 'gNKJy2Sv' \
    --itemStatus 'ACTIVE' \
    --itemType 'EXTENSION' \
    --limit '93' \
    --offset '35' \
    --region 'l1LmRixl' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "displayOrder:desc", "createdAt:asc"]' \
    --storeId 'MfLltO7A' \
    --tags 'NbWn7hYF' \
    --targetNamespace 'TGiyJ1fw' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '7oX754Ko' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'gobqyp19' \
    --body '{"itemIds": ["9s3eIfqU", "flUv3oOu", "uRzpiphR"]}' \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sOl0w6Xc' \
    --body '{"entitlementCollectionId": "YbCekUxk", "entitlementOrigin": "Playstation", "metadata": {"0i3ewSuq": {}, "tPQZiHOa": {}, "cuNBAU29": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "rytJHg3g", "namespace": "0MwXHeYe"}, "item": {"itemId": "AsW85sJt", "itemSku": "0wSMYUsQ", "itemType": "1dEXUgIt"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "cRlIFPa0", "namespace": "g2f2nLRN"}, "item": {"itemId": "x3VwDehp", "itemSku": "QONAMUAi", "itemType": "gM1GflWw"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "QdTX0YTv", "namespace": "VO9SK8Ft"}, "item": {"itemId": "Upyh91X1", "itemSku": "5mXAyXUv", "itemType": "A2VK12Do"}, "quantity": 36, "type": "ITEM"}], "source": "DLC", "transactionId": "abBlVOmN"}' \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE