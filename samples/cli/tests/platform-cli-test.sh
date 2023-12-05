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
echo "1..427"

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
    --id '9oI3v8q8' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'W4EOvFGG' \
    --body '{"grantDays": "DycYffgA"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '6xwspWvp' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'kt4EcLTi' \
    --body '{"grantDays": "PZch7xOn"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "CAy7FYta", "dryRun": false, "fulfillmentUrl": "cI5P4ATx", "itemType": "MEDIA", "purchaseConditionUrl": "BuUZtU3f"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '8NKK4OW4' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'N8zVGOH8' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'IxEq5iPd' \
    --body '{"clazz": "8Ow1SDoT", "dryRun": true, "fulfillmentUrl": "3hpNFVYX", "purchaseConditionUrl": "sWpTMFnE"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'rXfMFbEb' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --name 'qiRjayVH' \
    --offset '77' \
    --tag 'Igc6jt6H' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VbvfiuMG", "items": [{"extraSubscriptionDays": 50, "itemId": "dqEhR0xy", "itemName": "PVBOhfpQ", "quantity": 59}, {"extraSubscriptionDays": 89, "itemId": "1jUUeRK1", "itemName": "UNl5h7kS", "quantity": 28}, {"extraSubscriptionDays": 41, "itemId": "JpwBCcUW", "itemName": "WZKZx7tR", "quantity": 64}], "maxRedeemCountPerCampaignPerUser": 75, "maxRedeemCountPerCode": 59, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 36, "name": "9OrGqG0n", "redeemEnd": "1989-10-23T00:00:00Z", "redeemStart": "1997-04-21T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MEXuW0Oo", "sD8pQCFS", "NYTRRXN8"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'YPnun0gp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'QBQXr0UG' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gFmfhnh4", "items": [{"extraSubscriptionDays": 83, "itemId": "UHJqJVOv", "itemName": "JWApZOHN", "quantity": 47}, {"extraSubscriptionDays": 20, "itemId": "LJbdHmkh", "itemName": "yaV59tNN", "quantity": 48}, {"extraSubscriptionDays": 59, "itemId": "WLkdHBJ5", "itemName": "woXFvZJ9", "quantity": 54}], "maxRedeemCountPerCampaignPerUser": 39, "maxRedeemCountPerCode": 98, "maxRedeemCountPerCodePerUser": 28, "maxSaleCount": 33, "name": "gX6dHRgO", "redeemEnd": "1981-10-20T00:00:00Z", "redeemStart": "1994-12-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["WC6wXPRa", "y9LuEgyq", "1shfvHpB"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'uV5OnuRi' \
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
    --body '{"appConfig": {"appName": "8ePpICr7"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "OJuK1oct"}, "extendType": "APP"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "zQnm6rsc"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "cftyIPMR"}, "extendType": "CUSTOM"}' \
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
    --storeId 'paGHUdlF' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'uWYYuwB4' \
    --body '{"categoryPath": "7vg1ZZKJ", "localizationDisplayNames": {"J3orugio": "pqBt6jgW", "SFt17Ngx": "mLrTxC9Z", "t0O3ZyQn": "960Zw6cI"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '9OArdblw' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'udqo0yvE' \
    --namespace $AB_NAMESPACE \
    --storeId 'fqF9kUPE' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'DH07sf0d' \
    --namespace $AB_NAMESPACE \
    --storeId '8JOx7YCT' \
    --body '{"localizationDisplayNames": {"AQSgXiu3": "thlQfLxW", "oJpVbpfj": "ONYhNrp3", "U7xd0FWa": "zeHV0TN0"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '8T8nhlFA' \
    --namespace $AB_NAMESPACE \
    --storeId 'UcTBO1pN' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'toeZsRn9' \
    --namespace $AB_NAMESPACE \
    --storeId 'Dt9ULXgF' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'hDPpuvTi' \
    --namespace $AB_NAMESPACE \
    --storeId '71Ugu34c' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '0cMn8UkA' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '7' \
    --code 'mUyL75iC' \
    --limit '77' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'a11UeDNs' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 30}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'q0RAMEim' \
    --namespace $AB_NAMESPACE \
    --batchNo '7' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'vTvJFHDH' \
    --namespace $AB_NAMESPACE \
    --batchNo '14' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'lurUVbJF' \
    --namespace $AB_NAMESPACE \
    --batchNo '78' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'iQVXBOIM' \
    --namespace $AB_NAMESPACE \
    --code 'Z7Cgddwg' \
    --limit '51' \
    --offset '20' \
    --userId 'pjwQSKau' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'CxB2JgWX' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'esdPbuMl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'fXf2QLLN' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "iYjPwOIX", "currencySymbol": "yzWT0GFC", "currencyType": "VIRTUAL", "decimals": 40, "localizationDescriptions": {"n5S7r4sY": "I4MmJcGs", "jcdTDJ82": "lliIIP5f", "ePkmmNuv": "ASOTppfF"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'FdSWZCwi' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"uoGE5hku": "jVG7sVEG", "DJFxgWJK": "vMjx1Poj", "Qs5OpvwD": "NTWnlmde"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'XmcbwMIr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'nsJvp4Fa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'prVSZRsN' \
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
    --body '{"data": [{"id": "KCWGUCQE", "rewards": [{"currency": {"currencyCode": "38PYlXxf", "namespace": "cpd6VlYl"}, "item": {"itemId": "9NlcpuDV", "itemSku": "GMUSmbTs", "itemType": "BW8vXFBg"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"currencyCode": "yRvRluD9", "namespace": "NgpnsEbz"}, "item": {"itemId": "XCrtZQNJ", "itemSku": "Uu30oBzC", "itemType": "M4O7kiMe"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "Og0Y3PVE", "namespace": "FGgclJTf"}, "item": {"itemId": "fnl2Y2zp", "itemSku": "W1fllpsK", "itemType": "XSxSQ0ZX"}, "quantity": 39, "type": "ITEM"}]}, {"id": "wbyL5A0j", "rewards": [{"currency": {"currencyCode": "iYoG9nPn", "namespace": "uLRpaVzs"}, "item": {"itemId": "6u1vpgrY", "itemSku": "Rg73NVCw", "itemType": "dHCFO9SV"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "6aYMXXQ0", "namespace": "wlyhTRRl"}, "item": {"itemId": "lKEzqOMf", "itemSku": "0MReasdn", "itemType": "OCBQANsM"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "mXGSdWq1", "namespace": "KPRe0SRE"}, "item": {"itemId": "oJCTDJrY", "itemSku": "QToQhi5k", "itemType": "RLVWWyc1"}, "quantity": 42, "type": "ITEM"}]}, {"id": "1UrgR5fu", "rewards": [{"currency": {"currencyCode": "kJQBIds1", "namespace": "cQE4Cla2"}, "item": {"itemId": "jsYnShBM", "itemSku": "NdyapgUG", "itemType": "pDRocW7V"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "7IRZEPmy", "namespace": "S9KNmcqM"}, "item": {"itemId": "csL88sYp", "itemSku": "hCJNaJFj", "itemType": "G29kMJXx"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "2K9QTNNd", "namespace": "hIYZPswL"}, "item": {"itemId": "dF0WqkZ7", "itemSku": "qBiETKSs", "itemType": "6YAngleI"}, "quantity": 40, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"zxlD65Ch": "YapDVPVP", "t4g5EaZn": "iRhh4uM8", "Pm1OLxPO": "aZFywv4h"}}, {"platform": "STEAM", "platformDlcIdMap": {"2eRuvAiQ": "LbJfWhZB", "f93ScESs": "xaKDDmut", "qTVpgcfb": "2FNO8f21"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"UFsY9mAt": "wQ6I54uH", "Vsex8yB8": "pmDxCUqP", "sBBGYlCS": "R7ICiu27"}}]}' \
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
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'wTK8LI2l' \
    --itemId '["j7F1jsxA", "5UvvI4kw", "UXWrdenF"]' \
    --limit '33' \
    --offset '37' \
    --userId 'WxXtLyBV' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["b3PkyLQI", "JkW0FSwU", "cfsddZzt"]' \
    --limit '84' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1988-01-03T00:00:00Z", "grantedCode": "QgpJ14qR", "itemId": "iXI96zNQ", "itemNamespace": "RUTE1sYM", "language": "Ofm_362", "quantity": 96, "region": "J7Hjpaay", "source": "PURCHASE", "startDate": "1984-12-23T00:00:00Z", "storeId": "rQqeASEm"}, {"endDate": "1990-09-21T00:00:00Z", "grantedCode": "4T1bi6cf", "itemId": "rW5BpuML", "itemNamespace": "BrCwwr4B", "language": "iFKA_FouP_zj", "quantity": 80, "region": "ldMk8Ipa", "source": "REDEEM_CODE", "startDate": "1996-01-03T00:00:00Z", "storeId": "OLrCNrta"}, {"endDate": "1985-08-16T00:00:00Z", "grantedCode": "rC41kS4E", "itemId": "3s6u0Cjm", "itemNamespace": "IEpGu158", "language": "jTJ_965", "quantity": 39, "region": "2Nr6gsK1", "source": "OTHER", "startDate": "1996-02-13T00:00:00Z", "storeId": "KawXDMXI"}], "userIds": ["iTOEkcd1", "hoLmynNs", "MMl0rfnx"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["viJLqT8A", "qrQxCDMW", "uE07z8Fx"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'MweMfKFg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '75' \
    --status 'FAIL' \
    --userId '3izEx6NI' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'DuiYfkQr' \
    --eventType 'REFUND' \
    --externalOrderId 'lz8XcXjq' \
    --limit '2' \
    --offset '84' \
    --startTime 'y0XcWcFC' \
    --status 'FAIL' \
    --userId 'XSexVlUn' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "tD9zbM5y", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 27, "clientTransactionId": "eb19aZBi"}, {"amountConsumed": 71, "clientTransactionId": "zHhU8hyV"}, {"amountConsumed": 67, "clientTransactionId": "udnW8bPX"}], "entitlementId": "Au0lMOhy", "usageCount": 99}, {"clientTransaction": [{"amountConsumed": 32, "clientTransactionId": "yQFRRg0p"}, {"amountConsumed": 22, "clientTransactionId": "W87O5tZ1"}, {"amountConsumed": 97, "clientTransactionId": "tdX4xQTI"}], "entitlementId": "8yfQAsmY", "usageCount": 25}, {"clientTransaction": [{"amountConsumed": 32, "clientTransactionId": "T0ogSZQa"}, {"amountConsumed": 80, "clientTransactionId": "LatOasFH"}, {"amountConsumed": 10, "clientTransactionId": "7sEFxpdc"}], "entitlementId": "v5U41q96", "usageCount": 85}], "purpose": "iYGsj3PL"}, "originalTitleName": "05RsIG10", "paymentProductSKU": "ccAA6Mgf", "purchaseDate": "DODsUpK0", "sourceOrderItemId": "RBn5g46F", "titleName": "xFmBMRE2"}, "eventDomain": "Cf8T0bsY", "eventSource": "Lqmapc4x", "eventType": "9mAbl7nQ", "eventVersion": 11, "id": "pqQW5NIm", "timestamp": "sTHASPha"}' \
    > test.out 2>&1
eval_tap $? 66 'MockPlayStationStreamEvent' test.out

#- 67 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetAppleIAPConfig' test.out

#- 68 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "EUJUROH9", "password": "Zp3yTwA2"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateAppleIAPConfig' test.out

#- 69 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteAppleIAPConfig' test.out

#- 70 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetEpicGamesIAPConfig' test.out

#- 71 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "Y4wpOyUs"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateEpicGamesIAPConfig' test.out

#- 72 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteEpicGamesIAPConfig' test.out

#- 73 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGoogleIAPConfig' test.out

#- 74 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "hcguGJeq", "serviceAccountId": "2Hzl8pHb"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateGoogleIAPConfig' test.out

#- 75 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteGoogleIAPConfig' test.out

#- 76 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleP12File' test.out

#- 77 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetIAPItemConfig' test.out

#- 78 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "hTl1Jt10", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6GZunvk0": "nNGtmYS8", "71KIrJQ2": "JCRiipd9", "h6of1XJD": "oKYyt6Vg"}}, {"itemIdentity": "URFEuVOU", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Q3ee4KMC": "wiCkMsGg", "QsV0d7Fq": "qoeZwisX", "BO4gpv16": "yyjCNo5s"}}, {"itemIdentity": "2IwhuSTj", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"9oysiuUu": "WZvx4vgu", "Ld27FHEP": "QdQ6QbqC", "PJ47REhe": "OHGGTnAI"}}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateIAPItemConfig' test.out

#- 79 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteIAPItemConfig' test.out

#- 80 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetOculusIAPConfig' test.out

#- 81 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "9ayNm0tN", "appSecret": "LVmx9nwj"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateOculusIAPConfig' test.out

#- 82 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteOculusIAPConfig' test.out

#- 83 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetPlayStationIAPConfig' test.out

#- 84 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "F7OmKEXE", "backOfficeServerClientSecret": "kUZnnY93", "enableStreamJob": true, "environment": "Jt5vwvbN", "streamName": "hkn7Kf3U", "streamPartnerName": "tPQODyKJ"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdatePlaystationIAPConfig' test.out

#- 85 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeletePlaystationIAPConfig' test.out

#- 86 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'ValidateExistedPlaystationIAPConfig' test.out

#- 87 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "d0pkHuXM", "backOfficeServerClientSecret": "1VoSrEbV", "enableStreamJob": false, "environment": "FyPejkG7", "streamName": "hBc8kRDM", "streamPartnerName": "xvnf3zY5"}' \
    > test.out 2>&1
eval_tap $? 87 'ValidatePlaystationIAPConfig' test.out

#- 88 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetSteamIAPConfig' test.out

#- 89 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "xUa7lFOT", "publisherAuthenticationKey": "UrYBzSeN"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateSteamIAPConfig' test.out

#- 90 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteSteamIAPConfig' test.out

#- 91 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetTwitchIAPConfig' test.out

#- 92 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "bjrb6akB", "clientSecret": "abL2HSNf", "organizationId": "fI77FqrW"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateTwitchIAPConfig' test.out

#- 93 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeleteTwitchIAPConfig' test.out

#- 94 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetXblIAPConfig' test.out

#- 95 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "Fs9UKejJ"}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateXblIAPConfig' test.out

#- 96 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'DeleteXblAPConfig' test.out

#- 97 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'l760xnYD' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'O5A7LMgr' \
    --itemId 'mnsqrVWE' \
    --itemType 'LOOTBOX' \
    --endTime '9LOyDk8U' \
    --startTime 'nbh1z0cq' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'Pac8leP8' \
    --itemId 'hLi161OD' \
    --itemType 'MEDIA' \
    --endTime 'XHAizy3J' \
    --startTime 'QIRLCfJh' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '1UZ0OcL2' \
    --body '{"categoryPath": "9xMZ5oXv", "targetItemId": "drE7hYWb", "targetNamespace": "q1ffixec"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'i1Y2FDUN' \
    --body '{"appId": "BgmMy5Ya", "appType": "SOFTWARE", "baseAppId": "qa6JQ221", "boothName": "MfYQYmNH", "categoryPath": "gQ4oOps7", "clazz": "zintZA4u", "displayOrder": 77, "entitlementType": "CONSUMABLE", "ext": {"U7hSK5LO": {}, "CfF7AYOr": {}, "Rf1uWVX2": {}}, "features": ["HAhTxqiw", "rFgE6T8i", "xnWpgAK7"], "flexible": true, "images": [{"as": "Ldda8hGn", "caption": "rSnUgO3k", "height": 55, "imageUrl": "jcdDVoT4", "smallImageUrl": "BupzfUMO", "width": 91}, {"as": "Q5G5KIUz", "caption": "usFYidcC", "height": 66, "imageUrl": "JgAZTlLu", "smallImageUrl": "7KZpo9pR", "width": 69}, {"as": "Zyq37HzM", "caption": "HJ4o0AoD", "height": 100, "imageUrl": "mGree40k", "smallImageUrl": "2z93RZ4w", "width": 55}], "itemIds": ["0eAsH3B5", "0KED0tYf", "alYLDDtR"], "itemQty": {"k2uikzbA": 80, "adQRdTxp": 98, "6lw9ynJe": 89}, "itemType": "EXTENSION", "listable": false, "localizations": {"pbufm0NC": {"description": "RzAFELec", "localExt": {"lN2TLo2j": {}, "bUd9l33r": {}, "TVzGhjmc": {}}, "longDescription": "N51xWJsD", "title": "0hvdnY8j"}, "8mbjGo4r": {"description": "c0Up87FB", "localExt": {"vlVTmPYK": {}, "UqSR8IFl": {}, "2kT4QttA": {}}, "longDescription": "pvpyIJ5Q", "title": "YggZmaSu"}, "QJrozGkQ": {"description": "SkZYQfiZ", "localExt": {"yRbUnYFY": {}, "On9RtyzS": {}, "DJE5TtFa": {}}, "longDescription": "L6VDQH5L", "title": "pJGOld3C"}}, "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 53, "duration": 11, "endDate": "1993-06-10T00:00:00Z", "itemId": "EQSCeH0y", "itemSku": "fEnKTJUc", "itemType": "DM97Cpwv"}, {"count": 98, "duration": 13, "endDate": "1997-01-24T00:00:00Z", "itemId": "4LLSb0fh", "itemSku": "WFaB4xzD", "itemType": "WCQzyhRb"}, {"count": 47, "duration": 72, "endDate": "1976-03-24T00:00:00Z", "itemId": "FvEABdDE", "itemSku": "ckdNw3vy", "itemType": "npyFOD8q"}], "name": "3svNDtNK", "odds": 0.5709047381330628, "type": "REWARD", "weight": 45}, {"lootBoxItems": [{"count": 96, "duration": 38, "endDate": "1982-01-06T00:00:00Z", "itemId": "re4YX2ah", "itemSku": "G4nIAVCW", "itemType": "9qWRZkiO"}, {"count": 38, "duration": 30, "endDate": "1985-04-20T00:00:00Z", "itemId": "T8u3aiRO", "itemSku": "7ecw1ePU", "itemType": "bW4yXn9H"}, {"count": 7, "duration": 35, "endDate": "1995-11-01T00:00:00Z", "itemId": "ctct098L", "itemSku": "c9ZXNIZd", "itemType": "GxyGT3dk"}], "name": "KaE5gS0W", "odds": 0.6207486888087381, "type": "PROBABILITY_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 62, "duration": 71, "endDate": "1996-08-03T00:00:00Z", "itemId": "JJQsGw0L", "itemSku": "i0ODWWQz", "itemType": "CFho1gE4"}, {"count": 79, "duration": 65, "endDate": "1982-08-26T00:00:00Z", "itemId": "g2hm96W9", "itemSku": "PacuLaV9", "itemType": "jcip6fvw"}, {"count": 89, "duration": 54, "endDate": "1972-09-17T00:00:00Z", "itemId": "qumcjSq6", "itemSku": "iLZGCl8j", "itemType": "YJCGMZG1"}], "name": "YL3OGmfh", "odds": 0.7571962936640043, "type": "REWARD_GROUP", "weight": 79}], "rollFunction": "CUSTOM"}, "maxCount": 23, "maxCountPerUser": 43, "name": "Vp0O9Mtj", "optionBoxConfig": {"boxItems": [{"count": 30, "duration": 19, "endDate": "1974-04-13T00:00:00Z", "itemId": "o3SjsfKi", "itemSku": "DIeXWXUG", "itemType": "4BZ5B2PR"}, {"count": 68, "duration": 54, "endDate": "1971-06-07T00:00:00Z", "itemId": "XtfnT2x2", "itemSku": "Lfg9zGiZ", "itemType": "a76HfoNS"}, {"count": 18, "duration": 65, "endDate": "1992-08-27T00:00:00Z", "itemId": "9euELF4i", "itemSku": "E2NCbc0f", "itemType": "vQiwnbwN"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 69, "fixedTrialCycles": 79, "graceDays": 17}, "regionData": {"IEFgz3DJ": [{"currencyCode": "EdlV4d5L", "currencyNamespace": "NbfCIusc", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1987-09-10T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1983-11-04T00:00:00Z", "expireAt": "1972-02-17T00:00:00Z", "price": 93, "purchaseAt": "1985-04-18T00:00:00Z", "trialPrice": 45}, {"currencyCode": "AcoBpqWf", "currencyNamespace": "SA5NQxWv", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1978-01-04T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1982-05-01T00:00:00Z", "expireAt": "1974-04-03T00:00:00Z", "price": 11, "purchaseAt": "1994-09-29T00:00:00Z", "trialPrice": 95}, {"currencyCode": "3D0ETIyc", "currencyNamespace": "HV2LCPPu", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1980-10-29T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1977-05-02T00:00:00Z", "expireAt": "1978-01-10T00:00:00Z", "price": 9, "purchaseAt": "1997-11-14T00:00:00Z", "trialPrice": 36}], "ZpapVqbl": [{"currencyCode": "qXrF7cqG", "currencyNamespace": "YOhYug3F", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1984-02-12T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1991-03-27T00:00:00Z", "expireAt": "1974-11-05T00:00:00Z", "price": 74, "purchaseAt": "1990-10-10T00:00:00Z", "trialPrice": 30}, {"currencyCode": "mhjAdm6D", "currencyNamespace": "TA3AkaPx", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1994-02-13T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1974-03-28T00:00:00Z", "expireAt": "1986-01-10T00:00:00Z", "price": 58, "purchaseAt": "1980-05-11T00:00:00Z", "trialPrice": 53}, {"currencyCode": "wWnuTcuC", "currencyNamespace": "cJ15FmhH", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1991-12-07T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1993-09-23T00:00:00Z", "expireAt": "1994-03-20T00:00:00Z", "price": 91, "purchaseAt": "1978-01-24T00:00:00Z", "trialPrice": 17}], "jy9dQxwZ": [{"currencyCode": "jYtmzNlZ", "currencyNamespace": "fQHxjTHz", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1971-09-15T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1998-09-01T00:00:00Z", "expireAt": "1977-08-04T00:00:00Z", "price": 83, "purchaseAt": "1975-02-07T00:00:00Z", "trialPrice": 12}, {"currencyCode": "mS0WU3jC", "currencyNamespace": "oXGq8Xrh", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1988-03-02T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1984-11-16T00:00:00Z", "expireAt": "1996-06-20T00:00:00Z", "price": 62, "purchaseAt": "1989-08-18T00:00:00Z", "trialPrice": 53}, {"currencyCode": "gddE6ngy", "currencyNamespace": "OWHZOWL6", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1996-09-15T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1983-05-15T00:00:00Z", "expireAt": "1998-09-27T00:00:00Z", "price": 28, "purchaseAt": "1996-12-25T00:00:00Z", "trialPrice": 29}]}, "saleConfig": {"currencyCode": "rfeVqlWO", "price": 55}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "HJAq3NLv", "stackable": false, "status": "ACTIVE", "tags": ["UxnPcnmq", "QUz570JS", "O1moVPYb"], "targetCurrencyCode": "vvHf8YLH", "targetNamespace": "owtPRf0m", "thumbnailUrl": "LsU3eOjC", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ssUm6Q8f' \
    --appId '1KRci27O' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'C1QLXL0n' \
    --baseAppId 'zWCd4W43' \
    --categoryPath 'v1joTyn8' \
    --features 'l6b1hhgN' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '83' \
    --offset '63' \
    --region 'LbidKlMt' \
    --sortBy '["updatedAt:desc", "displayOrder", "name:asc"]' \
    --storeId 'yWUGTjwB' \
    --tags 'ssycR2MW' \
    --targetNamespace 'ge9T1FJM' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["g55EuIcF", "CM4ALikg", "TUvRsYYu"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '7LBzTbgV' \
    --itemIds 'YGOs9d88' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0yDaShgE' \
    --sku 'pG9Nt59u' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'wYVkEa4W' \
    --populateBundle 'false' \
    --region 'jRAy7iVT' \
    --storeId 'dG9tuVJR' \
    --sku '6CLa7Obq' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'h0VjAP39' \
    --storeId 'Tar7gVcf' \
    --itemIds 'jgigBd01' \
    --userId '8jxZNG87' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'lcsO0Cmo' \
    --sku 'csVMXj2r' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["FjuupQDZ", "yLHT9paP", "65eGHBEe"]' \
    --storeId 'y6ytABuL' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'rULIBrqW' \
    --region 'eaDW0lFy' \
    --storeId 'VY0knPX9' \
    --itemIds 'brTl0Hf7' \
    > test.out 2>&1
eval_tap $? 111 'BulkGetLocaleItems' test.out

#- 112 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetAvailablePredicateTypes' test.out

#- 113 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'E7EfJaV8' \
    --body '{"itemIds": ["VtU7AWD6", "jUb0Wlvo", "hHv2HVzX"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'peCE2KNM' \
    --body '{"changes": [{"itemIdentities": ["YVo6N9G5", "ra4JNhfz", "8JOUvW96"], "itemIdentityType": "ITEM_SKU", "regionData": {"YQFkqde8": [{"currencyCode": "rrd3EOrV", "currencyNamespace": "XqwsVVkj", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1983-10-26T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1980-02-25T00:00:00Z", "discountedPrice": 18, "expireAt": "1991-02-05T00:00:00Z", "price": 86, "purchaseAt": "1990-06-21T00:00:00Z", "trialPrice": 74}, {"currencyCode": "HAw8LCcz", "currencyNamespace": "zxsdHqEQ", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1979-10-27T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1990-12-30T00:00:00Z", "discountedPrice": 52, "expireAt": "1972-11-10T00:00:00Z", "price": 71, "purchaseAt": "1980-03-31T00:00:00Z", "trialPrice": 9}, {"currencyCode": "g5TogeXU", "currencyNamespace": "TFArAIPI", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1986-02-02T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1983-08-29T00:00:00Z", "discountedPrice": 93, "expireAt": "1988-12-27T00:00:00Z", "price": 71, "purchaseAt": "1973-11-25T00:00:00Z", "trialPrice": 98}], "vrXDKaRy": [{"currencyCode": "zE4oBedF", "currencyNamespace": "yVY2PO8p", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1985-07-16T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1978-01-26T00:00:00Z", "discountedPrice": 94, "expireAt": "1976-10-03T00:00:00Z", "price": 5, "purchaseAt": "1981-02-27T00:00:00Z", "trialPrice": 8}, {"currencyCode": "zUR8vM1V", "currencyNamespace": "6ZTZNffm", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1987-05-05T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1971-05-01T00:00:00Z", "discountedPrice": 81, "expireAt": "1996-06-04T00:00:00Z", "price": 96, "purchaseAt": "1990-03-31T00:00:00Z", "trialPrice": 60}, {"currencyCode": "td2AUJMN", "currencyNamespace": "Hmtavker", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1986-09-06T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1985-01-16T00:00:00Z", "discountedPrice": 71, "expireAt": "1989-08-07T00:00:00Z", "price": 86, "purchaseAt": "1975-10-29T00:00:00Z", "trialPrice": 90}], "M4vlb7pz": [{"currencyCode": "xhINlT0M", "currencyNamespace": "xXHBGwoL", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1971-07-12T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1993-12-09T00:00:00Z", "discountedPrice": 24, "expireAt": "1998-03-04T00:00:00Z", "price": 1, "purchaseAt": "1981-02-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "dgOewj7W", "currencyNamespace": "a7DtrhAT", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1976-08-19T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1989-11-21T00:00:00Z", "discountedPrice": 45, "expireAt": "1973-05-26T00:00:00Z", "price": 77, "purchaseAt": "1983-05-26T00:00:00Z", "trialPrice": 26}, {"currencyCode": "keqrBoOl", "currencyNamespace": "Jkud2jDh", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1991-11-25T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1988-10-22T00:00:00Z", "discountedPrice": 28, "expireAt": "1974-09-28T00:00:00Z", "price": 43, "purchaseAt": "1973-11-27T00:00:00Z", "trialPrice": 28}]}}, {"itemIdentities": ["UL0MYRRJ", "aPJpi2YJ", "aWDg4nlR"], "itemIdentityType": "ITEM_ID", "regionData": {"QGZ4fyP2": [{"currencyCode": "ky8DEE4y", "currencyNamespace": "kj0VdDeb", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1973-02-21T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1990-01-17T00:00:00Z", "discountedPrice": 79, "expireAt": "1999-03-30T00:00:00Z", "price": 2, "purchaseAt": "1979-03-29T00:00:00Z", "trialPrice": 87}, {"currencyCode": "2w27FF3V", "currencyNamespace": "Y7HW8hbJ", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1991-07-17T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-12-06T00:00:00Z", "discountedPrice": 58, "expireAt": "1999-01-23T00:00:00Z", "price": 85, "purchaseAt": "1977-06-08T00:00:00Z", "trialPrice": 94}, {"currencyCode": "hQCNidD7", "currencyNamespace": "6538yx1l", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1981-09-09T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1985-11-29T00:00:00Z", "discountedPrice": 15, "expireAt": "1976-10-27T00:00:00Z", "price": 69, "purchaseAt": "1999-01-26T00:00:00Z", "trialPrice": 23}], "yC4Sc8w8": [{"currencyCode": "ECQ1DsKx", "currencyNamespace": "4iiJ0JK2", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1979-12-08T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1980-08-06T00:00:00Z", "discountedPrice": 24, "expireAt": "1997-05-28T00:00:00Z", "price": 22, "purchaseAt": "1994-03-02T00:00:00Z", "trialPrice": 32}, {"currencyCode": "MRXjoiGD", "currencyNamespace": "c9wXGGl9", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1983-03-01T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1979-02-23T00:00:00Z", "discountedPrice": 56, "expireAt": "1986-10-12T00:00:00Z", "price": 55, "purchaseAt": "1996-06-10T00:00:00Z", "trialPrice": 14}, {"currencyCode": "hhAyvlq1", "currencyNamespace": "arap6LMW", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1996-12-15T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1992-11-22T00:00:00Z", "discountedPrice": 67, "expireAt": "1981-11-22T00:00:00Z", "price": 94, "purchaseAt": "1980-12-06T00:00:00Z", "trialPrice": 72}], "t00qN4B6": [{"currencyCode": "8hsPledX", "currencyNamespace": "jJ8wBN3I", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1988-10-20T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1981-12-21T00:00:00Z", "discountedPrice": 85, "expireAt": "1982-10-15T00:00:00Z", "price": 3, "purchaseAt": "1973-03-11T00:00:00Z", "trialPrice": 98}, {"currencyCode": "QJEQOJ8Y", "currencyNamespace": "Ga2V3fEq", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1993-10-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-07-06T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-08-12T00:00:00Z", "price": 11, "purchaseAt": "1977-11-25T00:00:00Z", "trialPrice": 97}, {"currencyCode": "eKfiehLf", "currencyNamespace": "1VstX0CZ", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1980-12-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1975-12-13T00:00:00Z", "discountedPrice": 20, "expireAt": "1975-07-21T00:00:00Z", "price": 27, "purchaseAt": "1996-10-29T00:00:00Z", "trialPrice": 99}]}}, {"itemIdentities": ["wGflIDWd", "XQ1N52cH", "vGrfbPhb"], "itemIdentityType": "ITEM_SKU", "regionData": {"qFT51Riq": [{"currencyCode": "kXCKjT7l", "currencyNamespace": "7eMi45U5", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1972-07-11T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1990-08-12T00:00:00Z", "discountedPrice": 93, "expireAt": "1973-01-13T00:00:00Z", "price": 25, "purchaseAt": "1996-07-12T00:00:00Z", "trialPrice": 68}, {"currencyCode": "rX0weMQB", "currencyNamespace": "IuAd9z3R", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1980-09-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1974-02-18T00:00:00Z", "discountedPrice": 43, "expireAt": "1992-01-18T00:00:00Z", "price": 37, "purchaseAt": "1990-07-28T00:00:00Z", "trialPrice": 6}, {"currencyCode": "JzjBnR9E", "currencyNamespace": "VYf20KEx", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1990-11-27T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1977-11-25T00:00:00Z", "discountedPrice": 97, "expireAt": "1979-06-26T00:00:00Z", "price": 60, "purchaseAt": "1982-09-10T00:00:00Z", "trialPrice": 79}], "q2TaE25G": [{"currencyCode": "AHjSAQcc", "currencyNamespace": "Gh5B2b24", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1989-11-08T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1984-02-20T00:00:00Z", "discountedPrice": 45, "expireAt": "1988-08-27T00:00:00Z", "price": 15, "purchaseAt": "1983-08-05T00:00:00Z", "trialPrice": 100}, {"currencyCode": "y1WOtAhY", "currencyNamespace": "HpxoViRF", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1974-10-15T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1997-09-16T00:00:00Z", "discountedPrice": 54, "expireAt": "1993-02-11T00:00:00Z", "price": 58, "purchaseAt": "1979-07-09T00:00:00Z", "trialPrice": 40}, {"currencyCode": "RJ9mZrwM", "currencyNamespace": "dD85o07m", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1973-07-30T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1989-08-17T00:00:00Z", "discountedPrice": 99, "expireAt": "1985-08-02T00:00:00Z", "price": 24, "purchaseAt": "1974-07-01T00:00:00Z", "trialPrice": 30}], "UEEzYoYC": [{"currencyCode": "PBMyRkkF", "currencyNamespace": "tuaflfXH", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1999-05-18T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1976-09-25T00:00:00Z", "discountedPrice": 11, "expireAt": "1972-03-31T00:00:00Z", "price": 89, "purchaseAt": "1996-09-30T00:00:00Z", "trialPrice": 71}, {"currencyCode": "Qy2IJSce", "currencyNamespace": "WZ36M5ox", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1995-05-20T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1997-06-17T00:00:00Z", "discountedPrice": 17, "expireAt": "1979-08-09T00:00:00Z", "price": 55, "purchaseAt": "1995-09-28T00:00:00Z", "trialPrice": 6}, {"currencyCode": "Lxtckl4c", "currencyNamespace": "Cb5qmZko", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1990-03-28T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1994-09-03T00:00:00Z", "discountedPrice": 70, "expireAt": "1980-11-26T00:00:00Z", "price": 24, "purchaseAt": "1972-10-25T00:00:00Z", "trialPrice": 7}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'EXTENSION' \
    --limit '80' \
    --offset '92' \
    --sortBy 'YgglX7Sh' \
    --storeId 'OhGK7ed2' \
    --keyword 'BDnFWVxj' \
    --language 'QWwVNwJK' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '62' \
    --offset '51' \
    --sortBy '["updatedAt:asc", "updatedAt", "name:desc"]' \
    --storeId 'u8gmnxkt' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '9gOBjMl3' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Yq30EGOd' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'dmxau4YP' \
    --namespace $AB_NAMESPACE \
    --storeId 'SYVmQWDG' \
    --body '{"appId": "ZG7beugv", "appType": "DEMO", "baseAppId": "kYb4y8Lm", "boothName": "h3RPcxY7", "categoryPath": "nIL1eb3d", "clazz": "S7lkcE4K", "displayOrder": 83, "entitlementType": "CONSUMABLE", "ext": {"Zd0mwDyL": {}, "gxOKL60u": {}, "CQ1Vykvb": {}}, "features": ["0iuI16OJ", "HSC4YkzR", "SPWqFdiL"], "flexible": false, "images": [{"as": "a1A5tq4b", "caption": "TvntF9zz", "height": 27, "imageUrl": "bjWYWjjH", "smallImageUrl": "PtUO8QXm", "width": 48}, {"as": "dgc3q6ml", "caption": "ITvhdLvR", "height": 2, "imageUrl": "7ovklbrn", "smallImageUrl": "EyNPkomq", "width": 18}, {"as": "ifBcIkmW", "caption": "fl62lAUz", "height": 26, "imageUrl": "28UmTvdu", "smallImageUrl": "49Ithsvu", "width": 69}], "itemIds": ["HSQz1Qbu", "RzSFpeQ4", "j8NWCnSV"], "itemQty": {"937qDczd": 36, "W7dOBQaG": 30, "9IleGtbV": 63}, "itemType": "EXTENSION", "listable": true, "localizations": {"FknkzSzR": {"description": "s0KU6Lnj", "localExt": {"HcGdKhf3": {}, "JnXxvbwO": {}, "vPl9K1oL": {}}, "longDescription": "KqcS6ig3", "title": "ukrSdiTf"}, "YQGXfqFK": {"description": "3xbpvzUU", "localExt": {"3LJR1Wox": {}, "ALOwsrYT": {}, "qEDEOtfC": {}}, "longDescription": "9GaQGFTz", "title": "WdOTB62v"}, "yH6pPKym": {"description": "sl8daj8P", "localExt": {"DsfrcMqo": {}, "STAXpPXf": {}, "kEQtyLZK": {}}, "longDescription": "C0KUew7I", "title": "zavBoshv"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 99, "duration": 87, "endDate": "1988-11-20T00:00:00Z", "itemId": "YiISqXLJ", "itemSku": "wmXrrlX3", "itemType": "Am052z3V"}, {"count": 69, "duration": 67, "endDate": "1995-11-08T00:00:00Z", "itemId": "GW0euZgJ", "itemSku": "ifsplXbt", "itemType": "9xaAtoT9"}, {"count": 85, "duration": 25, "endDate": "1981-05-18T00:00:00Z", "itemId": "NYBLi1yR", "itemSku": "HJR8eg6k", "itemType": "D8tPq1uj"}], "name": "mzFBWtBe", "odds": 0.6828116371610204, "type": "REWARD_GROUP", "weight": 97}, {"lootBoxItems": [{"count": 90, "duration": 92, "endDate": "1985-10-23T00:00:00Z", "itemId": "jaAVKQsX", "itemSku": "IkYJdE3I", "itemType": "8cchzJb0"}, {"count": 62, "duration": 80, "endDate": "1971-04-07T00:00:00Z", "itemId": "QxbTlFax", "itemSku": "aorWMC8s", "itemType": "5oqpNX9L"}, {"count": 42, "duration": 50, "endDate": "1981-11-02T00:00:00Z", "itemId": "wuF6adly", "itemSku": "mFy6syln", "itemType": "01Fb2ECS"}], "name": "GIPCjnhW", "odds": 0.617705657839692, "type": "REWARD", "weight": 71}, {"lootBoxItems": [{"count": 64, "duration": 64, "endDate": "1976-05-06T00:00:00Z", "itemId": "MyWMGraj", "itemSku": "SHNfUwZG", "itemType": "6ha45UeU"}, {"count": 29, "duration": 80, "endDate": "1999-04-02T00:00:00Z", "itemId": "MGHY3ghV", "itemSku": "Cc30fY60", "itemType": "q5MqBe5t"}, {"count": 37, "duration": 61, "endDate": "1983-12-04T00:00:00Z", "itemId": "6t7HWT69", "itemSku": "oqUCmPZy", "itemType": "3CdzxUr8"}], "name": "8UDg3OUm", "odds": 0.9949545600490411, "type": "REWARD", "weight": 48}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 2, "name": "OSUsEMil", "optionBoxConfig": {"boxItems": [{"count": 1, "duration": 39, "endDate": "1993-01-29T00:00:00Z", "itemId": "z2EUSiCH", "itemSku": "TAHySXFS", "itemType": "J4ZQrlkl"}, {"count": 37, "duration": 28, "endDate": "1990-09-19T00:00:00Z", "itemId": "0pjodX5i", "itemSku": "sqSJg1N0", "itemType": "W8wpoGzy"}, {"count": 43, "duration": 5, "endDate": "1998-10-15T00:00:00Z", "itemId": "UyW9qLIK", "itemSku": "jQbGRCTW", "itemType": "7dh1fZZo"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 82, "fixedTrialCycles": 55, "graceDays": 32}, "regionData": {"KXcvhyDn": [{"currencyCode": "3RcJpt6P", "currencyNamespace": "P4pbeo7z", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1971-10-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1987-03-01T00:00:00Z", "expireAt": "1993-10-19T00:00:00Z", "price": 31, "purchaseAt": "1989-12-13T00:00:00Z", "trialPrice": 90}, {"currencyCode": "fUvRnTsv", "currencyNamespace": "1iccfE2c", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1999-05-08T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1997-11-10T00:00:00Z", "expireAt": "1973-08-30T00:00:00Z", "price": 34, "purchaseAt": "1995-07-09T00:00:00Z", "trialPrice": 47}, {"currencyCode": "loMpJx4j", "currencyNamespace": "ln6qRRck", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1999-11-02T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1990-04-03T00:00:00Z", "expireAt": "1992-01-30T00:00:00Z", "price": 3, "purchaseAt": "1997-03-30T00:00:00Z", "trialPrice": 16}], "tE3iJiuC": [{"currencyCode": "Pquld3pI", "currencyNamespace": "MEBjZFiV", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1983-07-27T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1988-08-25T00:00:00Z", "expireAt": "1984-12-14T00:00:00Z", "price": 97, "purchaseAt": "1998-06-30T00:00:00Z", "trialPrice": 88}, {"currencyCode": "uwu2d582", "currencyNamespace": "fQ31hdXs", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1978-04-29T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1991-11-24T00:00:00Z", "expireAt": "1984-06-03T00:00:00Z", "price": 89, "purchaseAt": "1975-05-09T00:00:00Z", "trialPrice": 35}, {"currencyCode": "rNAie9l5", "currencyNamespace": "giHfN3NF", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1982-05-13T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1998-05-04T00:00:00Z", "expireAt": "1991-03-27T00:00:00Z", "price": 80, "purchaseAt": "1985-12-15T00:00:00Z", "trialPrice": 20}], "OzGOYjnw": [{"currencyCode": "chky0J4Q", "currencyNamespace": "nMiq09fe", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1971-12-17T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1997-05-10T00:00:00Z", "expireAt": "1974-01-29T00:00:00Z", "price": 89, "purchaseAt": "1973-12-15T00:00:00Z", "trialPrice": 33}, {"currencyCode": "ncDT8HRc", "currencyNamespace": "bqkADwFk", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1972-07-04T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1995-01-17T00:00:00Z", "expireAt": "1972-08-21T00:00:00Z", "price": 10, "purchaseAt": "1972-09-01T00:00:00Z", "trialPrice": 63}, {"currencyCode": "x9dcOPqW", "currencyNamespace": "fJuWalIO", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1980-07-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1978-02-02T00:00:00Z", "expireAt": "1975-07-09T00:00:00Z", "price": 84, "purchaseAt": "1981-02-17T00:00:00Z", "trialPrice": 25}]}, "saleConfig": {"currencyCode": "9SLgyqAZ", "price": 57}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "gFUa8PUz", "stackable": false, "status": "INACTIVE", "tags": ["r4Ynpg9Q", "OvMaqk4P", "gYG0Yfsd"], "targetCurrencyCode": "YdRuPETS", "targetNamespace": "6dYv5t8U", "thumbnailUrl": "wK6iQeKP", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'VT6zqGD1' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'O9EAbN6U' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 's5ewtntN' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 83, "orderNo": "bL0CVdAa"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Mc2Mubbn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '80aBMML8' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'WYQUg2R7' \
    --namespace $AB_NAMESPACE \
    --storeId 'TJ8bupTK' \
    --body '{"carousel": [{"alt": "Azd3Fw3I", "previewUrl": "5dvoNQhr", "thumbnailUrl": "LlpvrON3", "type": "image", "url": "fJDFoYvl", "videoSource": "youtube"}, {"alt": "9vdgCyIi", "previewUrl": "Ud3QOtEC", "thumbnailUrl": "FdDvyDuR", "type": "video", "url": "dVY82Upp", "videoSource": "generic"}, {"alt": "th95LJPk", "previewUrl": "tU19uH8o", "thumbnailUrl": "pzZwWemS", "type": "image", "url": "MAzEngqm", "videoSource": "vimeo"}], "developer": "j8srrhjV", "forumUrl": "G1MXqtjd", "genres": ["RPG", "Strategy", "Strategy"], "localizations": {"rn2nHikj": {"announcement": "RE51fWwr", "slogan": "OaEX3j4f"}, "myPDd9AD": {"announcement": "h5tuDyc6", "slogan": "RFtYGufY"}, "vWkT9fdH": {"announcement": "q8quS3YT", "slogan": "ScG121x7"}}, "platformRequirements": {"0WSd2Dso": [{"additionals": "GJYBLXEm", "directXVersion": "JdKkchGO", "diskSpace": "qutnu4rb", "graphics": "HHR4H2ur", "label": "bkestudL", "osVersion": "r1ncqQSY", "processor": "PZAEmitg", "ram": "oBCOsQaC", "soundCard": "GyhLRi6u"}, {"additionals": "0MrwtVy5", "directXVersion": "4oYPWYxQ", "diskSpace": "1fpACDOY", "graphics": "dtJmItKF", "label": "rbILKhm5", "osVersion": "rU7ax539", "processor": "fL1y78FT", "ram": "3UUuLSkD", "soundCard": "OgBXhXsY"}, {"additionals": "vHiOEUUB", "directXVersion": "USWWSfVo", "diskSpace": "cdN6ZRyF", "graphics": "plgD47hO", "label": "Mughyizh", "osVersion": "0lgSwlCL", "processor": "UTxfJ249", "ram": "wrRgbLEz", "soundCard": "nYze2izP"}], "bN3cyWCQ": [{"additionals": "2ka9ceuH", "directXVersion": "DIAisTXC", "diskSpace": "rwGY79He", "graphics": "hAW1gkiU", "label": "qBsKWQOx", "osVersion": "b2TaiFCV", "processor": "DtfTfbZu", "ram": "WHiYdFvM", "soundCard": "YrHRu3TX"}, {"additionals": "PnVOJMWi", "directXVersion": "qJdXjqeX", "diskSpace": "4A9auANb", "graphics": "YcZYpVi5", "label": "WfQlRf0X", "osVersion": "XPC6ZfrD", "processor": "RCnHleAn", "ram": "EI0QDyrn", "soundCard": "nSF475KH"}, {"additionals": "s66abSPU", "directXVersion": "xdWP2GCT", "diskSpace": "oCOpc8qa", "graphics": "khjogJoC", "label": "IsLufQDr", "osVersion": "zac9zWYI", "processor": "ky1mUS5V", "ram": "1sXy8qZZ", "soundCard": "G58tF76B"}], "7Trw5J1n": [{"additionals": "ymkVQtbR", "directXVersion": "I7iFupHE", "diskSpace": "vbrrP7uk", "graphics": "mMEZt6N1", "label": "ChNbCB5f", "osVersion": "5gRfsQe6", "processor": "X99oHxTz", "ram": "4cJueU6V", "soundCard": "dk39k2uU"}, {"additionals": "qEmJSQ4y", "directXVersion": "UYIojIn6", "diskSpace": "cQEVUBfK", "graphics": "O5qjad5O", "label": "SwDgOBfn", "osVersion": "XVy7OdUb", "processor": "1iP4Afy2", "ram": "0Q7LUFbL", "soundCard": "X4QGKqpV"}, {"additionals": "07JvgRu7", "directXVersion": "H00WI3RZ", "diskSpace": "0OekFWjm", "graphics": "VKNZQyGf", "label": "0KcFDjwL", "osVersion": "AfXZgQoL", "processor": "YvYwyzZY", "ram": "E2SEXTMN", "soundCard": "r8rFkJgz"}]}, "platforms": ["IOS", "Android", "Android"], "players": ["LocalCoop", "CrossPlatformMulti", "MMO"], "primaryGenre": "Sports", "publisher": "oQ6KJxDc", "releaseDate": "1988-03-30T00:00:00Z", "websiteUrl": "S72vsUit"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'B8KInH88' \
    --namespace $AB_NAMESPACE \
    --storeId '1yjKoO3Q' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'dNG541cT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'K68zj9cc' \
    --namespace $AB_NAMESPACE \
    --storeId 'oPvfhNCX' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'K2IVYfXS' \
    --itemId 'Hmhl59R5' \
    --namespace $AB_NAMESPACE \
    --storeId '7dJ3g93t' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'wyNMptG5' \
    --itemId 'IVt3UiIc' \
    --namespace $AB_NAMESPACE \
    --storeId 'aeQRPECb' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'CI2tSfAP' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '4t2vVouv' \
    --populateBundle 'true' \
    --region 'YwJqBvft' \
    --storeId 'fs9mHkKL' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'XGUEOioI' \
    --namespace $AB_NAMESPACE \
    --storeId 'fx2DvpL5' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 18, "comparison": "isLessThanOrEqual", "name": "fLcSRXNE", "predicateType": "SeasonTierPredicate", "value": "4mVkh7EJ", "values": ["J7TxLCM0", "0PuFPy9b", "KAodPqFK"]}, {"anyOf": 78, "comparison": "isGreaterThanOrEqual", "name": "NNiX3bZr", "predicateType": "SeasonPassPredicate", "value": "LDMmQvqf", "values": ["wd5M04a0", "8TIJY9Jm", "92ffwORY"]}, {"anyOf": 65, "comparison": "is", "name": "w05NGeVY", "predicateType": "EntitlementPredicate", "value": "UuVnlGIk", "values": ["bzWWVxwH", "SXPnbjY2", "KFopAbQh"]}]}, {"operator": "or", "predicates": [{"anyOf": 11, "comparison": "isNot", "name": "cvB1vGPz", "predicateType": "SeasonTierPredicate", "value": "MGsPnhFM", "values": ["CD4i4h7i", "p8zhyVCP", "3TaSMLov"]}, {"anyOf": 49, "comparison": "includes", "name": "5ueB31Cf", "predicateType": "EntitlementPredicate", "value": "c2eMYagM", "values": ["cw2WyM1J", "sQcVC2Si", "JsvCh8e0"]}, {"anyOf": 98, "comparison": "isLessThan", "name": "MvPHuXUW", "predicateType": "EntitlementPredicate", "value": "vNXLpid1", "values": ["VcbtZgjc", "8ciV6AL9", "IR1ti0dX"]}]}, {"operator": "or", "predicates": [{"anyOf": 21, "comparison": "isNot", "name": "wcx3Ojbt", "predicateType": "EntitlementPredicate", "value": "Tg6lJtYX", "values": ["ILWoLxhn", "ovLF9q77", "QXexJ3BM"]}, {"anyOf": 38, "comparison": "isGreaterThan", "name": "PlxBj7Tj", "predicateType": "SeasonPassPredicate", "value": "8ObURL0E", "values": ["SeBpbHJ8", "2tzkbQj5", "H7yesMp5"]}, {"anyOf": 8, "comparison": "includes", "name": "wfo8AYhI", "predicateType": "SeasonPassPredicate", "value": "T8nlwlEf", "values": ["aVVzoA0R", "dv1vWUqd", "BzjrRXTw"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'fCdhWOdM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "7Pm11AKU"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'EchkdWJV' \
    --offset '62' \
    --tag 'cUfUMDy5' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dfsq4BLR", "name": "hdP4yjPN", "status": "INACTIVE", "tags": ["5ykV7Z6h", "cZNainC0", "KAwu9GkG"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'abvcIpEr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Iiysb0w0' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RRqN104V", "name": "WXf2UU1g", "status": "INACTIVE", "tags": ["ocHMSrUs", "gx2ajMki", "CTtEQmJC"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'CCBFDkHT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'jJXPJHif' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '33' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'dmD7Yp1l' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'wtWPFGpN' \
    --limit '27' \
    --offset '4' \
    --orderNos '["k9sZ0Yce", "4xGTsbNe", "hrQfjKcU"]' \
    --sortBy 'gsv8S3wq' \
    --startTime 'RotIQDij' \
    --status 'FULFILL_FAILED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 139 'QueryOrders' test.out

#- 140 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetOrderStatistics' test.out

#- 141 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'AnPQOtjO' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6JRPQV0w' \
    --body '{"description": "v8Mpv3BY"}' \
    > test.out 2>&1
eval_tap $? 142 'RefundOrder' test.out

#- 143 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'GetPaymentCallbackConfig' test.out

#- 144 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "UjFNeTTz", "privateKey": "m6vY8NE0"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Ak5rA02h' \
    --externalId '32PKjRxw' \
    --limit '62' \
    --notificationSource 'WALLET' \
    --notificationType 'tVNnWa08' \
    --offset '74' \
    --paymentOrderNo 'g3pCHZB5' \
    --startDate '1F15tmKj' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'yRlnXqsb' \
    --limit '98' \
    --offset '71' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "GFim6LKF", "currencyNamespace": "pqMZxdkm", "customParameters": {"n0j7BjLk": {}, "7o06uli9": {}, "SZPgmiVi": {}}, "description": "YNqPwJlA", "extOrderNo": "aZCYmcwh", "extUserId": "iDsJxhdJ", "itemType": "APP", "language": "XqB_138", "metadata": {"hAigfCWH": "YT15E3Gl", "AcSjUI8v": "wDgkciEs", "7kawtkjU": "cA5ziZ1P"}, "notifyUrl": "Ug4vUclf", "omitNotification": true, "platform": "1a9PLwqm", "price": 85, "recurringPaymentOrderNo": "R7vm7zqR", "region": "UlyKcw7t", "returnUrl": "qCwemvno", "sandbox": true, "sku": "Abv6OiV7", "subscriptionId": "r6zCiSFO", "targetNamespace": "YAuQnIiS", "targetUserId": "6sys7zZQ", "title": "P003cLno"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'm9fHIGcm' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iIQrH7Lx' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'p4V9frEM' \
    --body '{"extTxId": "ZvI8tJqw", "paymentMethod": "4aU5VhDn", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '95CORgEE' \
    --body '{"description": "PH9WnPRn"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2GSN5PqI' \
    --body '{"amount": 86, "currencyCode": "dZoZYMvH", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 69, "vat": 65}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Eeucgh9p' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Xbox", "Steam", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 156 'ResetPlatformWalletConfig' test.out

#- 157 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetRevocationConfig' test.out

#- 158 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 158 'UpdateRevocationConfig' test.out

#- 159 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeleteRevocationConfig' test.out

#- 160 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'Lnh2IIIl' \
    --limit '2' \
    --offset '16' \
    --source 'DLC' \
    --startTime 'FZsErINL' \
    --status 'FAIL' \
    --transactionId 'BU4du7Ym' \
    --userId 'FE15PxGU' \
    > test.out 2>&1
eval_tap $? 160 'QueryRevocationHistories' test.out

#- 161 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationPluginConfig' test.out

#- 162 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "PlPuRrDq"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "5INzfiGX"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationPluginConfig' test.out

#- 163 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationPluginConfig' test.out

#- 164 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 164 'UploadRevocationPluginConfigCert' test.out

#- 165 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZLe8VVn6", "eventTopic": "dKn0CxXr", "maxAwarded": 63, "maxAwardedPerUser": 49, "namespaceExpression": "xsT8sNCV", "rewardCode": "pv6mEjrk", "rewardConditions": [{"condition": "kw2Fd6TZ", "conditionName": "AwiECuJd", "eventName": "yAHYsd8p", "rewardItems": [{"duration": 66, "endDate": "1975-03-10T00:00:00Z", "itemId": "rz14CoGa", "quantity": 55}, {"duration": 38, "endDate": "1971-06-19T00:00:00Z", "itemId": "pJX04cu0", "quantity": 14}, {"duration": 15, "endDate": "1987-07-01T00:00:00Z", "itemId": "vIfHhPg9", "quantity": 52}]}, {"condition": "AxNperGF", "conditionName": "87UH2v3F", "eventName": "LKP5O4L7", "rewardItems": [{"duration": 87, "endDate": "1987-08-05T00:00:00Z", "itemId": "nkX7FwNo", "quantity": 45}, {"duration": 59, "endDate": "1989-11-17T00:00:00Z", "itemId": "6fWfvX7J", "quantity": 100}, {"duration": 58, "endDate": "1992-05-26T00:00:00Z", "itemId": "jH8DxGdh", "quantity": 22}]}, {"condition": "vrW4INSc", "conditionName": "qXDkMYLp", "eventName": "BGZWbs7B", "rewardItems": [{"duration": 54, "endDate": "1999-08-19T00:00:00Z", "itemId": "0WKeSwrg", "quantity": 51}, {"duration": 11, "endDate": "1985-09-09T00:00:00Z", "itemId": "1fVvcU7E", "quantity": 8}, {"duration": 53, "endDate": "1995-10-13T00:00:00Z", "itemId": "mFuxxoEy", "quantity": 39}]}], "userIdExpression": "TbiMZnxY"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ek2ioD7Q' \
    --limit '78' \
    --offset '88' \
    --sortBy '["rewardCode", "namespace", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 166 'QueryRewards' test.out

#- 167 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'ExportRewards' test.out

#- 168 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '5jz1N1tQ' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'y9me7tyr' \
    --body '{"description": "kmhZandj", "eventTopic": "rtR9gqKR", "maxAwarded": 12, "maxAwardedPerUser": 47, "namespaceExpression": "DypYhOSc", "rewardCode": "Du2BFVdk", "rewardConditions": [{"condition": "Gs0CN7Cq", "conditionName": "kBfPfmuB", "eventName": "XvkNfMhM", "rewardItems": [{"duration": 52, "endDate": "1971-05-27T00:00:00Z", "itemId": "oONFiRqG", "quantity": 65}, {"duration": 21, "endDate": "1975-12-01T00:00:00Z", "itemId": "b2RO6kp9", "quantity": 90}, {"duration": 9, "endDate": "1994-08-14T00:00:00Z", "itemId": "BQ6uHo6G", "quantity": 78}]}, {"condition": "T3qY16Kd", "conditionName": "dJTa4n5l", "eventName": "B4R5xK0b", "rewardItems": [{"duration": 35, "endDate": "1992-12-12T00:00:00Z", "itemId": "6TH2HFBK", "quantity": 48}, {"duration": 42, "endDate": "1988-11-03T00:00:00Z", "itemId": "RzRlFmxH", "quantity": 43}, {"duration": 60, "endDate": "1985-03-22T00:00:00Z", "itemId": "5RFT5kis", "quantity": 37}]}, {"condition": "Yc77hG1F", "conditionName": "xdhbR6sk", "eventName": "EVp1xrv9", "rewardItems": [{"duration": 30, "endDate": "1973-07-12T00:00:00Z", "itemId": "3Z56RTqn", "quantity": 50}, {"duration": 58, "endDate": "1997-06-08T00:00:00Z", "itemId": "asoAIm5R", "quantity": 96}, {"duration": 92, "endDate": "1974-07-16T00:00:00Z", "itemId": "KOuFSxtG", "quantity": 58}]}], "userIdExpression": "XOWl8RGf"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'sEdyuDNg' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'zW2dgSXg' \
    --body '{"payload": {"doQuOH2G": {}, "6LSYGEv5": {}, "swiK4OQD": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'BDejNBh4' \
    --body '{"conditionName": "RopHlpzt", "userId": "HhbW3BXp"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'wD43Pg9g' \
    --limit '66' \
    --offset '59' \
    --start 'lzlTZBDo' \
    --storeId '7mIhwcSH' \
    --viewId 'KBLAB9lV' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '4rv3ktE3' \
    --body '{"active": true, "displayOrder": 41, "endDate": "1997-10-07T00:00:00Z", "ext": {"dtY1X5C3": {}, "sRPIm73e": {}, "ecGmLyFX": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 42, "itemCount": 32, "rule": "SEQUENCE"}, "items": [{"id": "QsfoLlBF", "sku": "QpgQDXtI"}, {"id": "7mflG7KC", "sku": "9wG3kha3"}, {"id": "XCTxu44f", "sku": "TWcgoWmC"}], "localizations": {"jzqrmRbE": {"description": "hJrS9mwT", "localExt": {"XRDLJzxc": {}, "os9TU6yk": {}, "R85RhFX0": {}}, "longDescription": "YUKNCmbf", "title": "DAoPRKeV"}, "5E6vIiTK": {"description": "tQd0gmAL", "localExt": {"4BSJvtIy": {}, "5Rs2kV2l": {}, "PxBbJX77": {}}, "longDescription": "LEVG1cYx", "title": "w7bRWQ6f"}, "C69BXVl9": {"description": "Z8V6cMcQ", "localExt": {"jYNyGYGJ": {}, "tgaZ2qvx": {}, "YQ8ohCI9": {}}, "longDescription": "vLXZ27Gp", "title": "hbQqflhE"}}, "name": "qyFO48KP", "rotationType": "FIXED_PERIOD", "startDate": "1972-12-29T00:00:00Z", "viewId": "ccr0j3Ij"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'Zaw7FAA7' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'D0Eg7Na8' \
    --storeId 'UHTP9hM8' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ba1oiGLL' \
    --storeId 'wUbNCDEG' \
    --body '{"active": false, "displayOrder": 46, "endDate": "1984-07-24T00:00:00Z", "ext": {"XSC4pBwP": {}, "8Ajpg1gq": {}, "XUEptfF6": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 70, "itemCount": 80, "rule": "SEQUENCE"}, "items": [{"id": "CpYRibmN", "sku": "e30Z04I1"}, {"id": "oAdpnNxx", "sku": "4RPmxWU9"}, {"id": "dxy53D5E", "sku": "1OdbW5Pb"}], "localizations": {"IIMG0zgV": {"description": "SwFPWsI3", "localExt": {"I3eAYBeY": {}, "fqXJBkZW": {}, "EkAghvM2": {}}, "longDescription": "9GLRZKPV", "title": "tlXCba3i"}, "Gzv5hhns": {"description": "ie8CTirf", "localExt": {"NMbQ3eZj": {}, "Osl1UuAJ": {}, "SJkq0J3t": {}}, "longDescription": "FQvnf4DW", "title": "Y1wqaAnM"}, "wjy6Y61l": {"description": "am9Q60Xw", "localExt": {"RxomFzjV": {}, "kY1Oaxg4": {}, "axnnNMvF": {}}, "longDescription": "9RiVucpN", "title": "uaeuunR7"}}, "name": "tyG4NZET", "rotationType": "NONE", "startDate": "1996-04-13T00:00:00Z", "viewId": "LYa5kNy8"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'GiMcGN0c' \
    --storeId 'qI1jovvd' \
    > test.out 2>&1
eval_tap $? 179 'DeleteSection' test.out

#- 180 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'ListStores' test.out

#- 181 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "nwWWRUQh", "defaultRegion": "XMyGn1hF", "description": "uJNifsUR", "supportedLanguages": ["GwMDRZ9r", "z6veqXwC", "sFcYDdkd"], "supportedRegions": ["Z0t9dDSU", "39QsCYIO", "laUFvSzP"], "title": "o9xHgojR"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateStore' test.out

#- 182 ImportStore
eval_tap 0 182 'ImportStore # SKIP deprecated' test.out

#- 183 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStore' test.out

#- 184 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeletePublishedStore' test.out

#- 185 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 185 'GetPublishedStoreBackup' test.out

#- 186 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'RollbackPublishedStore' test.out

#- 187 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dlCxufkE' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FSiUIpT9' \
    --body '{"defaultLanguage": "YqvBccLd", "defaultRegion": "L65n1QF8", "description": "SNAw2Qxr", "supportedLanguages": ["vGuuleWf", "jBGS19dQ", "lFaIctSc"], "supportedRegions": ["fc97Diep", "ZPGQMrZa", "qBOKqsry"], "title": "TLi5LPIE"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'G8CRqeEY' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'LldTddat' \
    --action 'CREATE' \
    --itemSku '6g8fPFWr' \
    --itemType 'APP' \
    --limit '79' \
    --offset '56' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'pqxY2ETQ' \
    --updatedAtStart 'FVdIKsLD' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'CE10Qjox' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'kpTs6RXb' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'khQJD1tr' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'Z5emigzx' \
    --action 'DELETE' \
    --itemSku 'SBuXnffu' \
    --itemType 'INGAMEITEM' \
    --type 'SECTION' \
    --updatedAtEnd 'XgxzCsIx' \
    --updatedAtStart 'IbelKIsQ' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Dwxke8R6' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'g1JNphsO' \
    --namespace $AB_NAMESPACE \
    --storeId 'gbcJ7M75' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'ZIjcYwJz' \
    --namespace $AB_NAMESPACE \
    --storeId 'NCHb0aeg' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'HH83drTp' \
    --targetStoreId 'm7ufgyxj' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'anlZAwpa' \
    --limit '39' \
    --offset '27' \
    --sku 'i7u5uDfU' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'wTbWhuo9' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3sgrFJP1' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'JFkVSK7r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'Lal7BbAg' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "16Q3TScF"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'QHTvaMvS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '6X2fwdxf' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 9, "orderNo": "CYFxrjRI"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 26, "currencyCode": "UXP84Fh8", "expireAt": "1993-03-02T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "zvUmtjqY", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 24, "itemIdentity": "N6ODuqcY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "d89Z9QYs"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 37, "currencyCode": "rYxzWXZN", "expireAt": "1983-01-29T00:00:00Z"}, "debitPayload": {"count": 25, "currencyCode": "MtLeHbw0", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 99, "itemIdentity": "sRgSZ2e8", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "pC2Z8W39"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 74, "currencyCode": "YPqszOzP", "expireAt": "1989-02-17T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "LBfQopLZ", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 19, "itemIdentity": "L4wfnGRh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "tidauQ15"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "QpfVO626"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 37, "currencyCode": "RvmGipij", "expireAt": "1992-09-24T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "eL62Q2O5", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 9, "itemIdentity": "UNtliFTE", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "YuCwttl8"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 51, "currencyCode": "uKOvqxO2", "expireAt": "1995-05-12T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "1oSEB49p", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 0, "itemIdentity": "i8iHMoCX", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "uPFCFs8b"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 46, "currencyCode": "XqvyUNB1", "expireAt": "1973-10-16T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "fDLojGQZ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 93, "itemIdentity": "5azp2UtZ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "4jfHBgmv"}, "type": "DEBIT_WALLET"}], "userId": "yzyQStIX"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 82, "currencyCode": "nqOkLyCM", "expireAt": "1982-02-07T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "9HW2SyjK", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 83, "itemIdentity": "u20XXpTL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "rrOMwXjD"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 38, "currencyCode": "J1xiP006", "expireAt": "1973-04-22T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "v63FTObe", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 10, "itemIdentity": "LKb8ckLg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 56, "entitlementId": "L9atQmQz"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 0, "currencyCode": "9eZQhU8R", "expireAt": "1993-11-06T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "l0biGAXy", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 12, "itemIdentity": "fCSUHUr5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 28, "entitlementId": "75SHeRSc"}, "type": "DEBIT_WALLET"}], "userId": "jqT4NJE5"}], "metadata": {"0vWnee0s": {}, "3CFsxrMl": {}, "YUR2VaNi": {}}, "needPreCheck": true, "transactionId": "qzmrGVtw", "type": "iok927iD"}' \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '50' \
    --status 'SUCCESS' \
    --type 'JjeFfLqa' \
    --userId 'quR7oqqR' \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'jTR5AQqI' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '2nRnIUrc' \
    --body '{"achievements": [{"id": "E6kMSIEw", "value": 0}, {"id": "ylETkeqX", "value": 98}, {"id": "HnykaLXH", "value": 57}], "steamUserId": "wEyoK5yt"}' \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'O0x2KGy1' \
    --xboxUserId 'TNN02trH' \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ZScVHfrz' \
    --body '{"achievements": [{"id": "sjc8X5Xg", "percentComplete": 82}, {"id": "gIHEF5Te", "percentComplete": 50}, {"id": "NSwIhm5d", "percentComplete": 44}], "serviceConfigId": "pNUVa8Cj", "titleId": "SvprtPNE", "xboxUserId": "fO1FaBwA"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'pY2EHUtz' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'M8ai6rSf' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'H5FksMVt' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '21o1UmYE' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'JyVKmWml' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '3y6ToUdm' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'dkYAjpm8' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Q84E0HWn' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'swtiMKuu' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '5OimQLSX' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'OEoQ4D4N' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ivAosIUZ' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'Fi4gnHtO' \
    --features '["kWjCt4F6", "BJcRWtOj", "FZhob1LX"]' \
    --itemId '["DHm46pcX", "gSaWxKt9", "tXUKRox1"]' \
    --limit '50' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fdPGoaiM' \
    --body '[{"endDate": "1999-02-04T00:00:00Z", "grantedCode": "pPI0hiva", "itemId": "odeBjm85", "itemNamespace": "6FAFuKnt", "language": "JWE-915", "quantity": 93, "region": "2ymcFyMB", "source": "PURCHASE", "startDate": "1996-05-24T00:00:00Z", "storeId": "FvqR7ZRI"}, {"endDate": "1996-02-16T00:00:00Z", "grantedCode": "kjAaIW7N", "itemId": "uSjcXmNa", "itemNamespace": "dSo1blF1", "language": "tDz-nGPN", "quantity": 6, "region": "rL7jUPgV", "source": "PROMOTION", "startDate": "1984-07-07T00:00:00Z", "storeId": "NXTk6DRE"}, {"endDate": "1973-05-01T00:00:00Z", "grantedCode": "4OsvB7RM", "itemId": "nUshLkiF", "itemNamespace": "XG1zwuEm", "language": "wDu-292", "quantity": 60, "region": "Av4UDHK5", "source": "PURCHASE", "startDate": "1974-10-06T00:00:00Z", "storeId": "wjL9TdHf"}]' \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'KCbgSb4v' \
    --activeOnly 'true' \
    --appId 'oSvLGjzG' \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'OKCSfZjG' \
    --activeOnly 'true' \
    --limit '66' \
    --offset '95' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IDGmUDXG' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --itemId '3DPtzBYj' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kgYWGp6t' \
    --ids '["ZEu7AtWO", "VRbUq1Fo", "HMKQjN1q"]' \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '2U1ZFg88' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'Jw8dPP54' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WfvbqLlq' \
    --appIds '["HleBTcen", "ilBuzjW0", "c7wOTvAB"]' \
    --itemIds '["KuCAFqYe", "UMkam7qp", "pMdlO3LB"]' \
    --skus '["KCxLxHsu", "MawP8FXo", "teFnwoQa"]' \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'LjoeXdaf' \
    --itemIds '["Pn8cmZpO", "AQuyCyPE", "mpWUM9HE"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'cbvTx9cn' \
    --appId 'xrLEwGwI' \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'eXI3yCQp' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'g5FPkWil' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hNVfJNbX' \
    --ids '["SzP6AtrO", "gyEDyNmz", "wfMK6vjR"]' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'LKiTvgpv' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'cKD8DLYU' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RA9wY1mV' \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '4Ojw0B7A' \
    --entitlementIds 'Hwzsm1ss' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'jf9uDgrz' \
    --namespace $AB_NAMESPACE \
    --userId 'v0XpQKqs' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'QrDO884l' \
    --namespace $AB_NAMESPACE \
    --userId 'Sq2oHNAr' \
    --body '{"endDate": "1984-10-01T00:00:00Z", "nullFieldList": ["fY8yPRlS", "6kSc3R0X", "PvXxHPVQ"], "startDate": "1992-09-02T00:00:00Z", "status": "CONSUMED", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'gJliPr89' \
    --namespace $AB_NAMESPACE \
    --userId '8MNVw4N5' \
    --body '{"options": ["kU2SzjIY", "8SFn2jg1", "VaYIoNm9"], "requestId": "WvvLQkKE", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '1fEUAQkL' \
    --namespace $AB_NAMESPACE \
    --userId 'z7VCm77m' \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'FHCuyLxA' \
    --namespace $AB_NAMESPACE \
    --userId '54VRI3s4' \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'wwZnP2Bc' \
    --namespace $AB_NAMESPACE \
    --userId '7zkisRw2' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'EmpAHGzz' \
    --namespace $AB_NAMESPACE \
    --userId 'hEtpzTAy' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId '4Dcj55SI' \
    --namespace $AB_NAMESPACE \
    --userId 'nPktTcTK' \
    --body '{"reason": "QmjQ9f2i", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'ornWWjvX' \
    --namespace $AB_NAMESPACE \
    --userId 'SVdvQhMb' \
    --body '{"requestId": "AefjvxtE", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '9HsJTpH3' \
    --body '{"duration": 12, "endDate": "1972-11-20T00:00:00Z", "itemId": "1Mukrreb", "itemSku": "UbyBLSmt", "language": "q35RJZXW", "metadata": {"eV7Q0w4Y": {}, "WGw0OpJB": {}, "kA32R63G": {}}, "order": {"currency": {"currencyCode": "YmqRv3yH", "currencySymbol": "RAOg2evv", "currencyType": "REAL", "decimals": 70, "namespace": "iVvFoWEX"}, "ext": {"Gq2DMSYZ": {}, "KMOEfXgI": {}, "ctP7X0s0": {}}, "free": false}, "orderNo": "WmDzTki2", "origin": "Other", "overrideBundleItemQty": {"hrRiakXh": 33, "wvg95UKZ": 82, "zh8ODFqy": 44}, "quantity": 4, "region": "CZwC2NiD", "source": "GIFT", "startDate": "1990-03-29T00:00:00Z", "storeId": "Mt052oDZ"}' \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ocsRW9vx' \
    --body '{"code": "8bKR877X", "language": "Ji-ee", "region": "4OT6br6P"}' \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ZbJpOhUh' \
    --body '{"metadata": {"sUiG7L78": {}, "DfE5lzD3": {}, "JEd8KJlS": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "JJ3G6nqD", "namespace": "kdl6UgIS"}, "item": {"itemId": "lzmZPOmj", "itemSku": "Wnq8wqJk", "itemType": "fMBKwzed"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "IMrKyKv6", "namespace": "wNBG2iRm"}, "item": {"itemId": "sElrrqbk", "itemSku": "LWS81YLH", "itemType": "G0MZyprD"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "Vdg0lbWZ", "namespace": "79iuPPz0"}, "item": {"itemId": "gItP1lAV", "itemSku": "HXfTNVZV", "itemType": "CEoSKxe3"}, "quantity": 4, "type": "CURRENCY"}], "source": "SELL_BACK", "transactionId": "nlpaFOkL"}' \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tJa8ecIo' \
    --endTime 'IXckHXIJ' \
    --limit '75' \
    --offset '1' \
    --productId 'd9LlptVC' \
    --startTime 'xH37x0fT' \
    --status 'FULFILLED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'UjBxy9d8' \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'u9S4tEUw' \
    --endTime 'EoZsy1o0' \
    --limit '92' \
    --offset '22' \
    --startTime 'sGVYQCwG' \
    --status 'SUCCESS' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WUZ0IqXA' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "nQYH_AErj", "productId": "LNRtaUIQ", "region": "VJ9wvgrs", "transactionId": "zm0TaHlb", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Gq51bE9O' \
    --itemId 'ewwiHx0d' \
    --limit '34' \
    --offset '50' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kaSAmJ9u' \
    --body '{"currencyCode": "ajVsRFfo", "currencyNamespace": "ue0m2Xep", "discountedPrice": 14, "ext": {"dpfShJla": {}, "5UexpdLV": {}, "MtOBxcKj": {}}, "itemId": "iPRKlghJ", "language": "F1nSkifj", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 87, "quantity": 76, "region": "5UJnQrLW", "returnUrl": "cVMSWJVE", "sandbox": false, "sectionId": "ZFKw2HAY"}' \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '7sufhC6O' \
    --itemId 'ESbGv46V' \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'g8ugkC0V' \
    --userId 'XRZfcqBF' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'JmInQwKV' \
    --userId 'HbA6DyG0' \
    --body '{"status": "REFUNDED", "statusReason": "vhngjfOv"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Bhrt2Cw2' \
    --userId 'ALC5vBrG' \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo '6NZ72M3Z' \
    --userId 'DtV3a5Ag' \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'cRT6XVUP' \
    --userId 'wsDCFaEU' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'gGV4dqdT' \
    --userId 'dl3rOSpB' \
    --body '{"additionalData": {"cardSummary": "pc4koLMX"}, "authorisedTime": "1972-04-29T00:00:00Z", "chargebackReversedTime": "1999-11-25T00:00:00Z", "chargebackTime": "1999-05-22T00:00:00Z", "chargedTime": "1987-03-11T00:00:00Z", "createdTime": "1991-12-15T00:00:00Z", "currency": {"currencyCode": "B5a9CCSG", "currencySymbol": "NHYBk76f", "currencyType": "REAL", "decimals": 16, "namespace": "XgOvYUYB"}, "customParameters": {"Q0k0pfxs": {}, "pBeHDshW": {}, "SUhvwGGv": {}}, "extOrderNo": "dQE4MzMi", "extTxId": "fXZkVBy3", "extUserId": "pBSTvpgM", "issuedAt": "1976-09-04T00:00:00Z", "metadata": {"JJYE0yEJ": "FCrdA2zT", "36mzPNXa": "JKjVPFHG", "hK6uDln2": "5gApNZFM"}, "namespace": "rYd7Fm0p", "nonceStr": "F5ThjPNL", "paymentMethod": "5TL9DCSl", "paymentMethodFee": 1, "paymentOrderNo": "XCLDMcST", "paymentProvider": "WXPAY", "paymentProviderFee": 14, "paymentStationUrl": "MLTNv7oz", "price": 7, "refundedTime": "1992-05-06T00:00:00Z", "salesTax": 80, "sandbox": true, "sku": "iOX2F9Di", "status": "AUTHORISE_FAILED", "statusReason": "lrFqzIRn", "subscriptionId": "j9kvu2gB", "subtotalPrice": 92, "targetNamespace": "G9RoSpV4", "targetUserId": "7UDpLkXx", "tax": 69, "totalPrice": 9, "totalTax": 49, "txEndTime": "1989-11-19T00:00:00Z", "type": "HoAi0Dn7", "userId": "q2uLae3j", "vat": 50}' \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'XqXiSPxd' \
    --userId 'QLmW2iOS' \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'fMJCTTeO' \
    --body '{"currencyCode": "VVDLVFsd", "currencyNamespace": "eto2uQFD", "customParameters": {"QhPvUbdq": {}, "NVQAaHUI": {}, "cpk8QIpm": {}}, "description": "sPx9Ch6i", "extOrderNo": "t4FCeJag", "extUserId": "ACWzM2LH", "itemType": "SEASON", "language": "EPY", "metadata": {"iWEHoQEg": "u8SkvXo2", "o6TMuPDr": "bcGhZwIu", "KZ5eZqBW": "kYXbgFQY"}, "notifyUrl": "4Txf7vaT", "omitNotification": true, "platform": "J3XHo2eR", "price": 45, "recurringPaymentOrderNo": "KQR2mfka", "region": "I1AfsvCP", "returnUrl": "aYAJIKdb", "sandbox": true, "sku": "GYHLyAmw", "subscriptionId": "Re4vrb99", "title": "fj98KFjD"}' \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'N6sqFSZv' \
    --userId 'rHhwaX8D' \
    --body '{"description": "u6bOXJOv"}' \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '5uOQ2ctB' \
    --body '{"code": "87qBXnSa", "orderNo": "YzBuCRU1"}' \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'nEliNFD9' \
    --body '{"meta": {"kZz1mXes": {}, "3nxMNPbV": {}, "FegjREdi": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "8g3djjCG", "namespace": "EQBjoFEi"}, "entitlement": {"entitlementId": "E7sl9FjG"}, "item": {"itemIdentity": "QgBopQgH", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 21, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "Gn1JiaS0", "namespace": "hxKDydmd"}, "entitlement": {"entitlementId": "hHLjXCk7"}, "item": {"itemIdentity": "mrMM5Gf3", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "SAoniWh4", "namespace": "CZfeA97v"}, "entitlement": {"entitlementId": "gqNaUEQx"}, "item": {"itemIdentity": "n9Dq8nNx", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 67, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "aDJE4qj7"}' \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'OL0cKY3m' \
    --body '{"gameSessionId": "QWD41ei1", "payload": {"HqYcSAzT": {}, "7iCNvLAe": {}, "d5reQsfH": {}}, "scid": "bbdrTLXo", "sessionTemplateName": "GcLWQm4p"}' \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Gdi4www2' \
    --chargeStatus 'CHARGED' \
    --itemId 'Ot5bc1AT' \
    --limit '0' \
    --offset '3' \
    --sku 'DYPYLIVk' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '2XeoZTup' \
    --excludeSystem 'false' \
    --limit '44' \
    --offset '30' \
    --subscriptionId 'qizKTaCQ' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'aKu2i2g7' \
    --body '{"grantDays": 82, "itemId": "Go2OAIEM", "language": "KQ5PaaDw", "reason": "vjteEzJ9", "region": "L8tXP4tQ", "source": "oY2cz0Z0"}' \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4oPEABwk' \
    --itemId 'hQZpa6Iu' \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tlyD8b8w' \
    --userId 'kClkof3q' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'emWGYxdO' \
    --userId 'iOtrR6EH' \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IVAzWQvz' \
    --userId '7cXQEPAH' \
    --force 'false' \
    --body '{"immediate": true, "reason": "AoqGr7Zw"}' \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VmmtSka5' \
    --userId 'ySgwAlZu' \
    --body '{"grantDays": 94, "reason": "zjlmdKC1"}' \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'j20YK3HH' \
    --userId 'XEpEuvix' \
    --excludeFree 'false' \
    --limit '88' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'c5NA6xqd' \
    --userId 'WLaKBJrj' \
    --body '{"additionalData": {"cardSummary": "E4nJNFMV"}, "authorisedTime": "1980-08-13T00:00:00Z", "chargebackReversedTime": "1977-01-27T00:00:00Z", "chargebackTime": "1992-05-09T00:00:00Z", "chargedTime": "1979-12-25T00:00:00Z", "createdTime": "1982-07-14T00:00:00Z", "currency": {"currencyCode": "46khNyv5", "currencySymbol": "kR32s6SK", "currencyType": "REAL", "decimals": 99, "namespace": "iFAfwfzB"}, "customParameters": {"JpouxOMr": {}, "zJG61p3B": {}, "lF4vVffh": {}}, "extOrderNo": "XvTyNkRZ", "extTxId": "7BdKsKbE", "extUserId": "lCVa7nng", "issuedAt": "1975-07-16T00:00:00Z", "metadata": {"O3JtOrE0": "l7udGdsN", "0NUBzALp": "aShflvSe", "v3c7tPjL": "ZPxYfOK2"}, "namespace": "gnuB4XKm", "nonceStr": "ZEq6z7JR", "paymentMethod": "aAHuJ9Pq", "paymentMethodFee": 96, "paymentOrderNo": "ycgmDt0e", "paymentProvider": "ADYEN", "paymentProviderFee": 44, "paymentStationUrl": "zAyoLISV", "price": 19, "refundedTime": "1982-05-03T00:00:00Z", "salesTax": 17, "sandbox": false, "sku": "iykbBKl7", "status": "REFUNDING", "statusReason": "1zsCFd1C", "subscriptionId": "GVBixlGE", "subtotalPrice": 51, "targetNamespace": "QxeeGEbj", "targetUserId": "Ee4SGZOk", "tax": 92, "totalPrice": 10, "totalTax": 34, "txEndTime": "1977-01-13T00:00:00Z", "type": "ELQyHDG5", "userId": "cBZ1xLrf", "vat": 49}' \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'bvrkl4L3' \
    --namespace $AB_NAMESPACE \
    --userId '1B8WJEz4' \
    --body '{"count": 96, "orderNo": "R9hvY1PF"}' \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '9Wnd0CGz' \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'CkUJjpu3' \
    --namespace $AB_NAMESPACE \
    --userId 'L5V1epBe' \
    --body '{"allowOverdraft": false, "amount": 24, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"mlYc7n7X": {}, "251APJdT": {}, "OKIg84IS": {}}, "reason": "EoLtQQl8"}' \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '2lLNJWuP' \
    --namespace $AB_NAMESPACE \
    --userId 'LxpONBbE' \
    --limit '72' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Mxp3lXYq' \
    --namespace $AB_NAMESPACE \
    --userId 'Gn9RZ3AO' \
    --body '{"amount": 84, "expireAt": "1972-01-18T00:00:00Z", "metadata": {"pKXztS4E": {}, "SvGkDrmR": {}, "sTiQBmXU": {}}, "origin": "System", "reason": "nF7IvOiu", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'RteYRJtN' \
    --namespace $AB_NAMESPACE \
    --userId 'rXOdux9O' \
    --body '{"amount": 19, "debitBalanceSource": "EXPIRATION", "metadata": {"4C9p762R": {}, "BQFcTEb0": {}, "K9x5XVp2": {}}, "reason": "PFiJsU59", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'CXLXWP8m' \
    --namespace $AB_NAMESPACE \
    --userId 'kJCiwr0C' \
    --body '{"amount": 47, "metadata": {"W027bXT2": {}, "ubIiAnVf": {}, "q42l3ayb": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 286 'PayWithUserWallet' test.out

#- 287 GetUserWallet
eval_tap 0 287 'GetUserWallet # SKIP deprecated' test.out

#- 288 DebitUserWallet
eval_tap 0 288 'DebitUserWallet # SKIP deprecated' test.out

#- 289 DisableUserWallet
eval_tap 0 289 'DisableUserWallet # SKIP deprecated' test.out

#- 290 EnableUserWallet
eval_tap 0 290 'EnableUserWallet # SKIP deprecated' test.out

#- 291 ListUserWalletTransactions
eval_tap 0 291 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 292 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'UtScobBU' \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'JH6b2KSI' \
    --body '{"displayOrder": 60, "localizations": {"mPzBayBy": {"description": "H8EwojJp", "localExt": {"yEjXRdNT": {}, "hO9lYkFE": {}, "pV4u1D8m": {}}, "longDescription": "j70E2h9D", "title": "nIEm4dXX"}, "Q8UoPgTq": {"description": "DY30Gah6", "localExt": {"PSzpKAnv": {}, "9C9tgHPf": {}, "n0C0NoUd": {}}, "longDescription": "f5QwR1LZ", "title": "aC0vTV1F"}, "qU32HOYt": {"description": "6QKfYaq6", "localExt": {"KRN8Dlas": {}, "xmrwqGWV": {}, "HdbqGqG5": {}}, "longDescription": "2DhCUyEh", "title": "62ZWcxp8"}}, "name": "AoJwO9yL"}' \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'JKdEHp95' \
    --storeId 'PXdO9AGL' \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '8FwmpSVf' \
    --storeId 'VHfw48uo' \
    --body '{"displayOrder": 36, "localizations": {"vSnKSpp7": {"description": "zmPbTQnj", "localExt": {"Da3TSSrV": {}, "LwhIhA8f": {}, "29il846N": {}}, "longDescription": "x6LFVn35", "title": "0RchQALv"}, "UWvPFIho": {"description": "MnWXpPD1", "localExt": {"YodHxa5F": {}, "P4JjPcBT": {}, "n9HFsJMm": {}}, "longDescription": "E3JQov8p", "title": "sqP4sjo3"}, "t0ARNlA1": {"description": "KHvQIfMw", "localExt": {"qcWD76HE": {}, "56VhHYb5": {}, "f0SMNWgy": {}}, "longDescription": "XO797gYb", "title": "U4iOfUMg"}}, "name": "oeyIHDZ7"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'vOaaASh9' \
    --storeId 'xEeKHx8e' \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 43, "expireAt": "1977-03-02T00:00:00Z", "metadata": {"lKyJqf5Q": {}, "4BT9wwJR": {}, "cCUu0CA6": {}}, "origin": "Nintendo", "reason": "LK4Tfa7T", "source": "REFERRAL_BONUS"}, "currencyCode": "aPggOCxv", "userIds": ["uOWtsEeE", "RvS0iKrl", "93moGfei"]}, {"creditRequest": {"amount": 1, "expireAt": "1976-10-26T00:00:00Z", "metadata": {"JMLf5y22": {}, "t0H8wdG8": {}, "z8hIBCCA": {}}, "origin": "Steam", "reason": "CYHQDVJP", "source": "ACHIEVEMENT"}, "currencyCode": "lMGm5eDO", "userIds": ["jaHRHt52", "tUJS80eE", "OXAC5BZI"]}, {"creditRequest": {"amount": 3, "expireAt": "1998-07-18T00:00:00Z", "metadata": {"075m00mo": {}, "OOsGCi29": {}, "OP1gS1C6": {}}, "origin": "System", "reason": "21HCsmDi", "source": "PROMOTION"}, "currencyCode": "ukL8H3Px", "userIds": ["JdFC3iGi", "BbpkDz5Z", "ZrrXVaf9"]}]' \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "F51UZBUe", "request": {"allowOverdraft": true, "amount": 94, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"eeehH9uP": {}, "ublTMaaL": {}, "WdbrqHJF": {}}, "reason": "d52pF9el"}, "userIds": ["sWvhPOJM", "UKMk8IsR", "TJCy7FmU"]}, {"currencyCode": "M3QQbwW0", "request": {"allowOverdraft": false, "amount": 56, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"VC37OhYX": {}, "AfZRYkNa": {}, "WJIQ81OP": {}}, "reason": "WLSqM7Ud"}, "userIds": ["0OLLTdhx", "RB87qKtj", "g8hHeKNF"]}, {"currencyCode": "WrwiFqc0", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"mI3GLzN5": {}, "nifOWZFt": {}, "YRRMQ0eR": {}}, "reason": "G0RDgRjd"}, "userIds": ["fggDG1Bl", "Tak2G7GB", "3Xf5kkRS"]}]' \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'LGkAf8gX' \
    --end 'VNWzEI6B' \
    --start 'mZjRY44v' \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["KnEDWuQo", "H1n6V9C6", "D1vTZgnZ"], "apiKey": "YVmBPwr1", "authoriseAsCapture": true, "blockedPaymentMethods": ["h0LDvdyk", "GnWzObaR", "zOPbJlPi"], "clientKey": "XL2Cd4lW", "dropInSettings": "9qdzGgPZ", "liveEndpointUrlPrefix": "ee6moBxb", "merchantAccount": "LhsRMUiK", "notificationHmacKey": "LlVHXiCh", "notificationPassword": "LtWUueAi", "notificationUsername": "6lFl8f1i", "returnUrl": "qLANjzj8", "settings": "LPcCxBNQ"}' \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "DSphVAGW", "privateKey": "zwfPSrMy", "publicKey": "SYzMwzJ7", "returnUrl": "aIzigaPJ"}' \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "F4ragt6E", "secretKey": "qFfBncOJ"}' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '34LXMq2I' \
    --region '797qvlSh' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "Vy8RheIW", "clientSecret": "ckJ4hNXi", "returnUrl": "di1c5Hnc", "webHookId": "4cUawF6e"}' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["6UntHI2p", "yJvRtkZw", "Vebr9PqT"], "publishableKey": "ZgUjhwHC", "secretKey": "pBRqRjwc", "webhookSecret": "Inyg5lnX"}' \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "hrmWJ7g8", "key": "PK9AYa2c", "mchid": "iGKnPxPi", "returnUrl": "O09TbodM"}' \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "JeKr3N7J", "flowCompletionUrl": "uB0XERLv", "merchantId": 48, "projectId": 61, "projectSecretKey": "YvxldIk1"}' \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'Dz7RTVmC' \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'xGND2IQ4' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["xbwxeSqB", "E0IkEkub", "HdpjMxji"], "apiKey": "Jolq5SDS", "authoriseAsCapture": false, "blockedPaymentMethods": ["f6oPuVZA", "mmvZTekM", "PVyFSYez"], "clientKey": "tb8G1P9m", "dropInSettings": "aZHc8bch", "liveEndpointUrlPrefix": "dU8Xc40n", "merchantAccount": "K68U18G6", "notificationHmacKey": "fVoGn00x", "notificationPassword": "vTIWZaNJ", "notificationUsername": "koC3oGYL", "returnUrl": "7s7NJLv1", "settings": "pizZ3tvQ"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'h01YKfAs' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'gQFOlHux' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "GtsRkkMS", "privateKey": "k90952Vh", "publicKey": "aHjpL5Am", "returnUrl": "0U8PagyF"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'wsH4ikXE' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'rFDDleJG' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "0q0VeyR1", "secretKey": "K14RjH5Q"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'dGn2KxAr' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'dnfOpzzE' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "K9VXbQOf", "clientSecret": "IP59p7U8", "returnUrl": "fLMSI8Z7", "webHookId": "1c29A7zZ"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '0oF3LwQR' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'DEQVyOlC' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["qtA3jtVO", "GlTxROdY", "uoAoNbrJ"], "publishableKey": "nwOWDHyl", "secretKey": "ooPJmiLB", "webhookSecret": "KHM8W02D"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'pmezwSaM' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'nOjkOMgc' \
    --validate 'true' \
    --body '{"appId": "zQzSnhTL", "key": "ZrRRnP2n", "mchid": "E18yyVea", "returnUrl": "N9uZourl"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '3ThBSl7a' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'PN4H8pS7' \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'vSAD4mTb' \
    --validate 'false' \
    --body '{"apiKey": "rONiQT5l", "flowCompletionUrl": "hFn3yW2w", "merchantId": 4, "projectId": 48, "projectSecretKey": "U6AmbDYQ"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'FWGRRU2a' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '802M5LWa' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '93' \
    --namespace '3ewpS8qM' \
    --offset '91' \
    --region 'P44oHixI' \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "pwOjsCu5", "region": "YBwY7kCf", "sandboxTaxJarApiToken": "xeaWIiYW", "specials": ["WALLET", "PAYPAL", "STRIPE"], "taxJarApiToken": "IfRmIzsF", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'B43IzJiC' \
    --region 'QHBiKDib' \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'u301iolt' \
    --body '{"aggregate": "ADYEN", "namespace": "FU6ja6Ny", "region": "aydNPUOS", "sandboxTaxJarApiToken": "gYuhGJkf", "specials": ["STRIPE", "CHECKOUT", "STRIPE"], "taxJarApiToken": "Tnc0fbeH", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'VTezrACT' \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "CUle1PZy", "taxJarApiToken": "wt9y1t4J", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ph6GKRx6": "UTGFjqSa", "5OGGI8pm": "pXq3lvMI", "w7eKmijr": "8vcjPyUR"}}' \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'Lmhbimok' \
    --end '6EfPch78' \
    --start 'xwskn1GI' \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'N0qde9hn' \
    --storeId '2dkKb1yh' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'hiWMU64S' \
    --storeId 'oUk7ea3p' \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'KsNATDWF' \
    --namespace $AB_NAMESPACE \
    --language 'iDaJ4Wwn' \
    --storeId 'pASKSHCj' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'pqLfdzqa' \
    --namespace $AB_NAMESPACE \
    --language '2SYab0gb' \
    --storeId 'JyzGBti5' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Nozddk7k' \
    --namespace $AB_NAMESPACE \
    --language 'IZAUBYRm' \
    --storeId 'xY1opLMd' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetDescendantCategories' test.out

#- 342 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 342 'PublicListCurrencies' test.out

#- 343 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 343 'GeDLCDurableRewardShortMap' test.out

#- 344 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    > test.out 2>&1
eval_tap $? 344 'GetIAPItemMapping' test.out

#- 345 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'aTB8SP0X' \
    --region 'tjB0sAIJ' \
    --storeId 'AV7bGz4v' \
    --appId 'naAmgiGh' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'OTTUbKCz' \
    --categoryPath 'Q6G4mzdm' \
    --features '7DEIqoxx' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --language 'GGg4mhFV' \
    --limit '2' \
    --offset '83' \
    --region 'qUvbupyA' \
    --sortBy '["createdAt", "name:asc", "updatedAt:asc"]' \
    --storeId 'exkZox8f' \
    --tags 'ma3ljsMV' \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '5NNwLWIz' \
    --region 'Y4Cx1klJ' \
    --storeId 'Y8cdfrUa' \
    --sku 'Q6Su2pYG' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Dr7VnHuJ' \
    --storeId 'MNLaBUQr' \
    --itemIds 'dli7KmMp' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'niS9Pp9e' \
    --region '7zxf7APm' \
    --storeId 'ZXUWzSUe' \
    --itemIds 'tbv5uB83' \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["01RKgRQE", "SyfC3A5v", "6LH7bSCL"]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '64' \
    --offset '46' \
    --region 'Vxzvxn3l' \
    --storeId 'eFlmiD9U' \
    --keyword 'Spnijtbb' \
    --language '9A3UdBa2' \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Se35ecvK' \
    --namespace $AB_NAMESPACE \
    --language '6ka7iD2j' \
    --region 'coHH2ypr' \
    --storeId 'd7oely5n' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'hX9utML9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'n43VqDoy' \
    --namespace $AB_NAMESPACE \
    --language '5g1CA2sY' \
    --populateBundle 'false' \
    --region 'IFJ5zU3G' \
    --storeId '0CEsb7f6' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "2lyzcN4X", "paymentProvider": "ALIPAY", "returnUrl": "CQGXPDcP", "ui": "JWdgxVz8", "zipCode": "hGqLt3m8"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZYdKwiLn' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Jb9yNDz0' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TJa4gOkT' \
    --paymentProvider 'WXPAY' \
    --zipCode 'ovcm6Vub' \
    --body '{"token": "d15OMPxo"}' \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sUG8xJXa' \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'oye595Nl' \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'qmZ3kWBP' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'KvWLQu6k' \
    --foreinginvoice 'X11BnJXN' \
    --invoiceId 'YRoa3fSU' \
    --payload '30W1p6XV' \
    --redirectResult 'TKFnJfbq' \
    --resultCode 'IkTkg68F' \
    --sessionId 'MGjd74vh' \
    --status 'joIYBMW2' \
    --token 'S8PtR0CK' \
    --type 'riGlnXIp' \
    --userId '1Jx2Vt44' \
    --orderNo 'jqYtPuKG' \
    --paymentOrderNo 'QwVUV1je' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'ZHefii3O' \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '3jDoe7Xg' \
    --paymentOrderNo 'kSbIKoEo' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'zF6YHJJY' \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'C1ZmLXgW' \
    --limit '2' \
    --offset '39' \
    --sortBy '["rewardCode", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'r9u05WkQ' \
    > test.out 2>&1
eval_tap $? 367 'GetReward1' test.out

#- 368 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicListStores' test.out

#- 369 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["nVeXzkNh", "9SmYmGFc", "KLBGRizk"]' \
    --itemIds '["c5BQYaHS", "dGmZ1RE6", "vtcdR3jh"]' \
    --skus '["3GJZGwTv", "YlOShHy4", "VHRBaLeS"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '1N1pY4T3' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'TwGrCmSt' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'istmjpCx' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["f4EoahI1", "FjvO2Kee", "g0Jc3mIt"]' \
    --itemIds '["wdtQxTh8", "0hYCm4rI", "ardmxrn2"]' \
    --skus '["lGIVoaTt", "9B6OfsMQ", "nB1dnCRJ"]' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "4F00vdIX", "language": "XoVc_vj", "region": "BaYR0FBq"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'U5rDiXiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'iPkZhq2z' \
    --body '{"epicGamesJwtToken": "SKBv77Hg"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'aGj6jMnN' \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xdCdfvip' \
    --body '{"serviceLabel": 21}' \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'ZQyz7Rfo' \
    --body '{"serviceLabels": [97, 11, 86]}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '6NZ37bf6' \
    --body '{"appId": "8OYrmdeP", "steamId": "4Zev9nMG"}' \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qTTv7xkO' \
    --body '{"xstsToken": "U5zMoMds"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'jNYdTbVG' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'btw2P7sY' \
    --features '["EmTZ98sL", "7GhR0on6", "BCJ5EVN3"]' \
    --itemId '["GVnSNZmt", "wOUzuNKC", "up2POtJU"]' \
    --limit '4' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4VhOGAa5' \
    --appId '8pvt03Po' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'qc78fvQr' \
    --limit '22' \
    --offset '88' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6Qfi9v8E' \
    --entitlementClazz 'CODE' \
    --itemId 'RXNeovlv' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Rw5NmKEp' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'VJG2Lj2w' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'XFiuMoJH' \
    --appIds '["rIUAeyLZ", "pUpjlQqp", "0oWy4peo"]' \
    --itemIds '["F6VcEXPS", "UJYjedze", "WeY5WwX9"]' \
    --skus '["N4ZwXxNh", "MdMcOCY9", "Hi1i5KcN"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '3T0RZc7r' \
    --appId 'UksNR5i2' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YcDOWpoe' \
    --entitlementClazz 'CODE' \
    --itemId '9AKMHtIG' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'LJk7i55v' \
    --ids '["ImEwoU90", "ldzwYX05", "uRjQd79f"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'kSvlgiRD' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'cCk3km8E' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '8RmQ4grg' \
    --namespace $AB_NAMESPACE \
    --userId 'i7QwFs7k' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'SCrc9a2N' \
    --namespace $AB_NAMESPACE \
    --userId 'ry998221' \
    --body '{"options": ["9CCvYhtm", "zoFq9kfn", "Mm2oATk7"], "requestId": "WrHcROGD", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'DhLNKzxZ' \
    --namespace $AB_NAMESPACE \
    --userId 'x4ljzxoU' \
    --body '{"requestId": "dBeS97ub", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'tarpnvLR' \
    --body '{"code": "ZCIbMCxN", "language": "JiCy_yLMN-XV", "region": "jsyEBtFc"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QOOzixTH' \
    --body '{"excludeOldTransactions": false, "language": "RIFW_577", "productId": "0XBoYhlZ", "receiptData": "cczQ7vKp", "region": "2sx7ITNr", "transactionId": "3PngI8xM"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UjAYVsN4' \
    --body '{"epicGamesJwtToken": "P3y0ldpP"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'lxnuncgY' \
    --body '{"autoAck": true, "language": "jOCe-atsw", "orderId": "V9bwwie7", "packageName": "fsrsP0GK", "productId": "w2BbZOgi", "purchaseTime": 50, "purchaseToken": "g7yHxFMJ", "region": "J09jyi6M"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aiBlROSq' \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '0JCL0nmM' \
    --body '{"currencyCode": "oryrmje8", "price": 0.0809551262681516, "productId": "X1WcIGNe", "serviceLabel": 98}' \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'tNQTQ0mD' \
    --body '{"currencyCode": "7tx2kdDW", "price": 0.43906405340583776, "productId": "WstWNc97", "serviceLabels": [33, 92, 29]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'OtRDiZ2T' \
    --body '{"appId": "6F6710IV", "currencyCode": "GY4oC4xC", "language": "YoA_ZhlV", "price": 0.005435524899658706, "productId": "sNHVwxlS", "region": "HDdyMj9T", "steamId": "fjTpWPEh"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'kYsE0TcP' \
    --body '{"gameId": "MqQwR7G1", "language": "vY_iZzd", "region": "a2e36bXE"}' \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '4Z3klq7x' \
    --body '{"currencyCode": "oKJhZtlZ", "price": 0.0033791555529331108, "productId": "8i0v9jVz", "xstsToken": "25bGPH9L"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'C7WpkGMS' \
    --itemId 'gkAcNtbr' \
    --limit '91' \
    --offset '51' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'PP51t5V3' \
    --body '{"currencyCode": "Jmu57HI2", "discountedPrice": 82, "ext": {"aAiM2wNy": {}, "CwXs7rSf": {}, "da95e55V": {}}, "itemId": "0ZcPaRXd", "language": "bb-pOTj", "price": 90, "quantity": 53, "region": "uHKf6RdW", "returnUrl": "UfSyeQ26", "sectionId": "XcwW7jP5"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YNPt0HrO' \
    --userId 'FrWxiYPl' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'R6Vjex6S' \
    --userId '1KMVYGpb' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'yBR5tK1e' \
    --userId 'GuzjCG0Q' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '7fCyW3ZR' \
    --userId 'gdQybOmG' \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'lIWPONcD' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '5OvEzghW' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'O9dDdHM5' \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '7WY9FL4v' \
    --language 'MTy2zg9f' \
    --region 'nfxb755z' \
    --storeId 'gEj5E5Hv' \
    --viewId 'OreRi7JK' \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'l8Xd9WqI' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'TRQrK3A4' \
    --limit '60' \
    --offset '75' \
    --sku 'stNsulMn' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'JhZg0FRJ' \
    --body '{"currencyCode": "dC1GQtxz", "itemId": "XMK0MUB4", "language": "ujL", "region": "phL6JUMN", "returnUrl": "0ez2041c", "source": "YkKqG7Dt"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'yMqeFKFp' \
    --itemId 'oMmfUIJu' \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HzRt1BIY' \
    --userId 'UNqSCdXJ' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Wf5XDnCm' \
    --userId '6YvuNhhe' \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bqwaC6lX' \
    --userId 'x81qkgD6' \
    --body '{"immediate": false, "reason": "t5y41iQA"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ACjQMg9w' \
    --userId 'jmeG4x7A' \
    --excludeFree 'false' \
    --limit '99' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'y3WLJQEL' \
    --language 'iyTUbEUv' \
    --storeId 'nUTnKzZu' \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'fyGiuhcz' \
    --namespace $AB_NAMESPACE \
    --userId 'cge5kyGT' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'C6oXI2bn' \
    --namespace $AB_NAMESPACE \
    --userId 'FZy0QLdA' \
    --limit '81' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'w9jY1hZw' \
    --baseAppId 'KaZCCxCV' \
    --categoryPath 'nLCCqovv' \
    --features 'Zzl5VRCO' \
    --includeSubCategoryItem 'false' \
    --itemName 'AZNGLwz3' \
    --itemStatus 'ACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '33' \
    --offset '82' \
    --region '2Xl28zcO' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "name:desc", "createdAt:desc"]' \
    --storeId 'LjW212JO' \
    --tags 'VgYw3MpG' \
    --targetNamespace 'rmFvT0MQ' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'J67v789m' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'OJbuiwMB' \
    --body '{"itemIds": ["EO78GBqI", "a24CB9ma", "npp39kFe"]}' \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'j7GANwyf' \
    --body '{"metadata": {"N915kMjE": {}, "zwvXdW7M": {}, "O4sdgVlq": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "BZqvpYAS", "namespace": "ieFLkJp1"}, "item": {"itemId": "W9YjouBD", "itemSku": "WnnPft02", "itemType": "i7hgfE1D"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "XLycUpYf", "namespace": "mvYtltEa"}, "item": {"itemId": "7doyAKPt", "itemSku": "u36Qq3Vy", "itemType": "4ripefuK"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "rikV47PJ", "namespace": "5wQGDlKy"}, "item": {"itemId": "I8VGci6H", "itemSku": "VbKW5oBZ", "itemType": "f1JLcOT2"}, "quantity": 18, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "LfNzh0da"}' \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE