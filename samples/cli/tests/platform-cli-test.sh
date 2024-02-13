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
    --id 'E2h02Uub' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'DWYe42Vp' \
    --body '{"grantDays": "So9PgPNm"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'S6WxtxGt' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '7oEfKlpl' \
    --body '{"grantDays": "7iPPQliY"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "w3PfslLC", "dryRun": false, "fulfillmentUrl": "FyQNXjeB", "itemType": "EXTENSION", "purchaseConditionUrl": "JXtaRwbu"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'bdUFdSrD' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'A3X5Yrvf' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'Zq4iPW4z' \
    --body '{"clazz": "4OEw8ZRW", "dryRun": true, "fulfillmentUrl": "Hp34r8aE", "purchaseConditionUrl": "jGEIKhFw"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'GHIBbPl3' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'AtyhypDe' \
    --offset '53' \
    --tag 'QfSNv76C' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5IneDpF5", "items": [{"extraSubscriptionDays": 1, "itemId": "z8Cu4oD5", "itemName": "x0nxhTgr", "quantity": 45}, {"extraSubscriptionDays": 67, "itemId": "YZkwUK5Z", "itemName": "7ge0xU3w", "quantity": 72}, {"extraSubscriptionDays": 96, "itemId": "bagfY3wA", "itemName": "VQYORXRp", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 41, "maxRedeemCountPerCode": 79, "maxRedeemCountPerCodePerUser": 36, "maxSaleCount": 38, "name": "jdhSN8z8", "redeemEnd": "1998-05-09T00:00:00Z", "redeemStart": "1973-04-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["QAIPG0dm", "c4mJgkTv", "eoU0Qawk"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'ax0bqpZh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'vOMuFxBH' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1Ma5WXJz", "items": [{"extraSubscriptionDays": 2, "itemId": "Ztnbt7ep", "itemName": "4tAiTDPD", "quantity": 26}, {"extraSubscriptionDays": 57, "itemId": "CEQFj1Ap", "itemName": "UgGYZBBv", "quantity": 85}, {"extraSubscriptionDays": 52, "itemId": "ty4Hq4Pc", "itemName": "3sYoW07X", "quantity": 90}], "maxRedeemCountPerCampaignPerUser": 65, "maxRedeemCountPerCode": 14, "maxRedeemCountPerCodePerUser": 57, "maxSaleCount": 3, "name": "Nb5Hnkne", "redeemEnd": "1990-12-31T00:00:00Z", "redeemStart": "1975-03-22T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["RrppXRs0", "lrId32bR", "LX251n8R"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'cnsPqsfl' \
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
    --body '{"appConfig": {"appName": "Zl1M50oF"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "OsFeNxpW"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "EvWrLpQW"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "omFGmjcA"}, "extendType": "APP"}' \
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
    --storeId 'dnW7BYXM' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '84W9bmji' \
    --body '{"categoryPath": "Xyc9kUL0", "localizationDisplayNames": {"aZWmvE2C": "ueBq0GhI", "Et47DrmZ": "QpvwrpFs", "fMvAVRYU": "o81OZAjE"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'r6D85Mj3' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'P1vI8OpL' \
    --namespace $AB_NAMESPACE \
    --storeId 'aTvFvZjm' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '8s8hEDk6' \
    --namespace $AB_NAMESPACE \
    --storeId 'OS5usCdI' \
    --body '{"localizationDisplayNames": {"g6HMFvgh": "yqlKgMJh", "mYIhq9fo": "zs6xBULq", "F2uqjC3b": "mg8vFCKb"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'u1ms5lzK' \
    --namespace $AB_NAMESPACE \
    --storeId 'JXnx0W92' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '9xetwCgs' \
    --namespace $AB_NAMESPACE \
    --storeId 'rmVmH17b' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'zKhd7j64' \
    --namespace $AB_NAMESPACE \
    --storeId '8GaI1xFp' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '8OWusz4E' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '33' \
    --code '6rSeN7ZH' \
    --limit '50' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'APxYkUmv' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 88}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'yxY02QVb' \
    --namespace $AB_NAMESPACE \
    --batchNo '33' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'PdekWPYa' \
    --namespace $AB_NAMESPACE \
    --batchNo '80' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'mv84wLha' \
    --namespace $AB_NAMESPACE \
    --batchNo '26' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '3OI707oK' \
    --namespace $AB_NAMESPACE \
    --code 'wD89wJ6a' \
    --limit '20' \
    --offset '31' \
    --userId '4XiFMqCr' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'I14BEFIF' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'cTU6MisD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'vrA8NxV3' \
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
    --body '{"currencyCode": "N1rrulUp", "currencySymbol": "5RqBTXid", "currencyType": "VIRTUAL", "decimals": 53, "localizationDescriptions": {"fethvq1d": "WuDJU4Ae", "h92QLwDT": "p12OM336", "dn3BvtS8": "itfc453K"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'feO2MjL6' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"u8i7WfdN": "IoWHFvYR", "JKs5ticx": "UICMyMow", "H7HoaUVl": "7ImdW02Y"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'Bk46zdEb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'sz9qdtJP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'hEgAOkjw' \
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
    --body '{"data": [{"id": "qSQoW5Qd", "rewards": [{"currency": {"currencyCode": "8Uiusdcv", "namespace": "xozGtZ2W"}, "item": {"itemId": "6mEqQv3w", "itemSku": "mv8O2Hqd", "itemType": "2w44fMA7"}, "quantity": 41, "type": "ITEM"}, {"currency": {"currencyCode": "3sFlOyyT", "namespace": "vu7iDEXX"}, "item": {"itemId": "nzP2z5UI", "itemSku": "kPMNZjcG", "itemType": "I8F648Wx"}, "quantity": 63, "type": "CURRENCY"}, {"currency": {"currencyCode": "Tsp29qac", "namespace": "FFhL1MwO"}, "item": {"itemId": "6SC6bVNq", "itemSku": "ecL8PPfz", "itemType": "1IwoVuQL"}, "quantity": 11, "type": "ITEM"}]}, {"id": "vc7uSSbG", "rewards": [{"currency": {"currencyCode": "a1vX1A3n", "namespace": "cyicVK0u"}, "item": {"itemId": "o3o2vhIm", "itemSku": "h3X0n36S", "itemType": "LOygJlf1"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "c1R8dobR", "namespace": "foHzhkyC"}, "item": {"itemId": "ZflH98XZ", "itemSku": "z6ZBTICw", "itemType": "4wAH0eEC"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "rliziIxR", "namespace": "k83oWFqI"}, "item": {"itemId": "5GCQcekm", "itemSku": "cm2a0LFu", "itemType": "8q0XHjj3"}, "quantity": 82, "type": "CURRENCY"}]}, {"id": "JLOeUB4V", "rewards": [{"currency": {"currencyCode": "tsRRH2pC", "namespace": "6q7qHzTt"}, "item": {"itemId": "xXE9Ybbg", "itemSku": "eJIVI5Hu", "itemType": "VIFC2ijN"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "j3BQV6hR", "namespace": "zFKLWoQS"}, "item": {"itemId": "mOuDUCmu", "itemSku": "7TtCeUBl", "itemType": "iESDpDpn"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "FM3bHx5H", "namespace": "eAXsO1eb"}, "item": {"itemId": "ZKj76SLs", "itemSku": "zCoVitB8", "itemType": "78JDXMNr"}, "quantity": 61, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"IvXe6e33": "YZbpJTc7", "hTgSZu2H": "VMWcAa82", "aD729sk9": "EGs8aRBV"}}, {"platform": "STEAM", "platformDlcIdMap": {"LWk5EqQs": "7u4zQjlO", "HqqWjnKM": "t8pOT5yH", "ubWlahmQ": "UHyY6AzS"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"bXxlqoHg": "2DjBFcJ6", "WfyMzI6B": "joZKVu77", "Q9CxFxx9": "s5xukJ0z"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'Z5bWv7sN' \
    --itemId '["X6Ncmd8C", "Hh9iZYGn", "kFkPinui"]' \
    --limit '5' \
    --offset '31' \
    --origin 'Nintendo' \
    --userId '9Sd2sQzJ' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["HNCR44R3", "78LxXUkq", "PCIeeW8q"]' \
    --limit '32' \
    --offset '45' \
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
    --body '{"entitlementGrantList": [{"collectionId": "pv26st18", "endDate": "1975-02-10T00:00:00Z", "grantedCode": "EWOCuYC9", "itemId": "SNjdJrv9", "itemNamespace": "zyxXw6MR", "language": "Hg-ojHf_yR", "origin": "Nintendo", "quantity": 9, "region": "E86ozBMU", "source": "REDEEM_CODE", "startDate": "1988-02-12T00:00:00Z", "storeId": "K2GLrGNm"}, {"collectionId": "apIp5kKB", "endDate": "1998-10-31T00:00:00Z", "grantedCode": "tNHOCMLw", "itemId": "KQgiI1xe", "itemNamespace": "LOCkCGhs", "language": "Eic-eT", "origin": "Playstation", "quantity": 53, "region": "q0owSeQh", "source": "IAP", "startDate": "1978-08-07T00:00:00Z", "storeId": "qwIqhMyG"}, {"collectionId": "9OjQUWMG", "endDate": "1990-09-20T00:00:00Z", "grantedCode": "FzMeA4ay", "itemId": "puWng7qc", "itemNamespace": "kTtr73q7", "language": "EnrC-899", "origin": "Epic", "quantity": 1, "region": "cn64eUVd", "source": "GIFT", "startDate": "1975-06-29T00:00:00Z", "storeId": "eX3Qh9KO"}], "userIds": ["J0KOmmb9", "tHg4ByNi", "evboPJzM"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["RvYcxZPu", "alOueWN3", "TkFx2FIe"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'bPlI4abR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '0' \
    --status 'SUCCESS' \
    --userId 'fNnyCFan' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'AklGZPQq' \
    --eventType 'CHARGEBACK' \
    --externalOrderId '54XBMGS8' \
    --limit '99' \
    --offset '71' \
    --startTime '7zkLnxuW' \
    --status 'INIT' \
    --userId 'SrqBktqn' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "qCAzV4XI", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 22, "clientTransactionId": "lgxwv4oz"}, {"amountConsumed": 75, "clientTransactionId": "pAEX0Qmw"}, {"amountConsumed": 87, "clientTransactionId": "RJEKAtAB"}], "entitlementId": "rCg3w2Mb", "usageCount": 6}, {"clientTransaction": [{"amountConsumed": 2, "clientTransactionId": "CghmDKFy"}, {"amountConsumed": 79, "clientTransactionId": "3VCt5TpV"}, {"amountConsumed": 17, "clientTransactionId": "U3E2nXon"}], "entitlementId": "wt3nnEhi", "usageCount": 44}, {"clientTransaction": [{"amountConsumed": 87, "clientTransactionId": "VC3g6yro"}, {"amountConsumed": 47, "clientTransactionId": "U2kt1xq8"}, {"amountConsumed": 81, "clientTransactionId": "VPgln7yM"}], "entitlementId": "2pFFMvS1", "usageCount": 13}], "purpose": "wX3wiQjf"}, "originalTitleName": "Ze2idyKz", "paymentProductSKU": "Ahvpg8oH", "purchaseDate": "JQx7VXDr", "sourceOrderItemId": "kB96z6Ad", "titleName": "8L4QMURS"}, "eventDomain": "dixRASDG", "eventSource": "mE5pkJiD", "eventType": "IWTIPg6J", "eventVersion": 5, "id": "e4UVfAsV", "timestamp": "0Xu3RVvV"}' \
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
    --body '{"bundleId": "PGjviJbu", "password": "5ekuK1Ry"}' \
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
    --body '{"sandboxId": "X0SHPiC4"}' \
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
    --body '{"applicationName": "zNWmmh1D", "serviceAccountId": "FF4rYlCY"}' \
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
    --body '{"data": [{"itemIdentity": "wIk70qIk", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"2084ruSl": "9T66DU5F", "OrXCga75": "fqgW4jGI", "zTrcc2tD": "WI2uVXqk"}}, {"itemIdentity": "tqCUZ9ue", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"3PB9T7xC": "7yLKKbdM", "KevkTEMb": "ahrVrxUU", "x85uuUCd": "9ZrRjz7M"}}, {"itemIdentity": "qzfffBT0", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"eeETvjeP": "A9UzyHCY", "dh1avsET": "vSpR243G", "DnOyUVc0": "a3v0KO9P"}}]}' \
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
    --body '{"appId": "JUX46deD", "appSecret": "8YD7L8CN"}' \
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
    --body '{"backOfficeServerClientId": "hqbhuIqC", "backOfficeServerClientSecret": "gzavSLkA", "enableStreamJob": true, "environment": "OYuvu0Pc", "streamName": "6Nh22YWh", "streamPartnerName": "aKK1yrbl"}' \
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
    --body '{"backOfficeServerClientId": "sj4VgVVN", "backOfficeServerClientSecret": "VNDxYIaD", "enableStreamJob": true, "environment": "273hHc3H", "streamName": "NOuVr7As", "streamPartnerName": "iBHYBqFq"}' \
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
    --body '{"appId": "x1Evdvko", "publisherAuthenticationKey": "V4X7INVu"}' \
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
    --body '{"clientId": "Mnd6g6ki", "clientSecret": "HJjH8d8c", "organizationId": "uiABS2A9"}' \
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
    --body '{"relyingPartyCert": "ElhTlLt2"}' \
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
    --password 'JC17fCaP' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'r9jXRPqh' \
    --itemId 'W7t3Kl5I' \
    --itemType 'MEDIA' \
    --endTime 'Wvhw88ZP' \
    --startTime 'qYVIyAv0' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'LQGlwxrV' \
    --itemId 'fgSWtp4z' \
    --itemType 'SEASON' \
    --endTime '95QxKTzh' \
    --startTime 'BDk6x4JB' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '8mng94Ld' \
    --body '{"categoryPath": "lS5Jf4Gn", "targetItemId": "BTFCpZs5", "targetNamespace": "troSfT2r"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'blbC3rNc' \
    --body '{"appId": "sfv9hF5Q", "appType": "DEMO", "baseAppId": "vnTsh3W6", "boothName": "PKrnRWy4", "categoryPath": "WRvUNAKv", "clazz": "h7bkt3V7", "displayOrder": 29, "entitlementType": "DURABLE", "ext": {"oHp7s1u7": {}, "6tKVUF8h": {}, "44T5p1ZY": {}}, "features": ["ujdg8Cog", "zM27VWKh", "UWwcrqH3"], "flexible": true, "images": [{"as": "DAjIFL8l", "caption": "UsRXJuPg", "height": 74, "imageUrl": "s1N3mHS6", "smallImageUrl": "H3Zcjc3z", "width": 93}, {"as": "q2DUoRai", "caption": "dfziQAKW", "height": 9, "imageUrl": "GUbwK4V2", "smallImageUrl": "doj915oS", "width": 27}, {"as": "PL4S84B8", "caption": "1cSgDH1Q", "height": 93, "imageUrl": "BC38grLu", "smallImageUrl": "rEreELRd", "width": 43}], "inventoryConfig": {"customAttributes": {"3kR2JGqA": {}, "TcHwXjt9": {}, "rZqIwcrA": {}}, "serverCustomAttributes": {"11yz2GSi": {}, "0AcJksyN": {}, "7wy4Isru": {}}, "slotUsed": 19}, "itemIds": ["ZRK5Fk4o", "gKa8otmL", "4NWFX8ue"], "itemQty": {"M3UUSfnP": 97, "uiwXWmEq": 30, "2JV3Mo8a": 89}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"87MTjA9I": {"description": "lYOYiIcm", "localExt": {"XOu0SADy": {}, "Iub82wJG": {}, "gorbHByp": {}}, "longDescription": "9KbnArst", "title": "m5KIyqIy"}, "8deUSOeP": {"description": "Nzze6i1P", "localExt": {"RY1Td8OD": {}, "A2NVhtlc": {}, "SOf7423y": {}}, "longDescription": "bhVc4XKI", "title": "3Up6DryF"}, "OEWIfHgW": {"description": "DZzm2ghy", "localExt": {"NSguRS7U": {}, "qbqqtHFl": {}, "fPtvpllK": {}}, "longDescription": "K5UWBwf0", "title": "WrQ7Xpr7"}}, "lootBoxConfig": {"rewardCount": 24, "rewards": [{"lootBoxItems": [{"count": 24, "duration": 46, "endDate": "1971-01-15T00:00:00Z", "itemId": "ZhHGm1IJ", "itemSku": "jTcjcgR9", "itemType": "r2tuI90V"}, {"count": 42, "duration": 82, "endDate": "1994-06-22T00:00:00Z", "itemId": "JvCH7dO3", "itemSku": "xnGwxato", "itemType": "LuB1J6xn"}, {"count": 93, "duration": 15, "endDate": "1983-04-30T00:00:00Z", "itemId": "yHhxK071", "itemSku": "RKtPY8kO", "itemType": "yz5e1eaD"}], "name": "3ACby7re", "odds": 0.349664629817407, "type": "REWARD", "weight": 5}, {"lootBoxItems": [{"count": 12, "duration": 63, "endDate": "1984-02-24T00:00:00Z", "itemId": "NLy2W36n", "itemSku": "Tk75uexe", "itemType": "Z0UqlMVt"}, {"count": 24, "duration": 15, "endDate": "1997-08-22T00:00:00Z", "itemId": "TbSedREO", "itemSku": "2y7QbWrr", "itemType": "QJ4xGzE4"}, {"count": 35, "duration": 94, "endDate": "1999-04-16T00:00:00Z", "itemId": "M5yNvKws", "itemSku": "vQ4kPdOc", "itemType": "OHpAs77j"}], "name": "TFh7aMEX", "odds": 0.3208229528270429, "type": "REWARD", "weight": 55}, {"lootBoxItems": [{"count": 18, "duration": 87, "endDate": "1975-12-28T00:00:00Z", "itemId": "UW5t0ED9", "itemSku": "pjcFK65w", "itemType": "kzohWor2"}, {"count": 21, "duration": 47, "endDate": "1980-12-05T00:00:00Z", "itemId": "nyVdwj4e", "itemSku": "AekURSHq", "itemType": "c87Wtj8v"}, {"count": 56, "duration": 12, "endDate": "1995-06-05T00:00:00Z", "itemId": "SUPtRs0n", "itemSku": "IjvRpyN4", "itemType": "Juj4RYMv"}], "name": "mA05KkzI", "odds": 0.48633696780133284, "type": "REWARD_GROUP", "weight": 67}], "rollFunction": "DEFAULT"}, "maxCount": 69, "maxCountPerUser": 88, "name": "mIDG4rRp", "optionBoxConfig": {"boxItems": [{"count": 29, "duration": 42, "endDate": "1982-08-11T00:00:00Z", "itemId": "AgZBeHOy", "itemSku": "KT0TSrbu", "itemType": "HyVnIPYI"}, {"count": 73, "duration": 89, "endDate": "1998-06-19T00:00:00Z", "itemId": "REjFY0l6", "itemSku": "d49CFhoa", "itemType": "bEHtyFds"}, {"count": 38, "duration": 74, "endDate": "1993-05-04T00:00:00Z", "itemId": "kJZomnYd", "itemSku": "2S76YDvo", "itemType": "46IsyqKW"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 29, "fixedTrialCycles": 50, "graceDays": 56}, "regionData": {"Xs8a595A": [{"currencyCode": "EY8SKDQO", "currencyNamespace": "tMwdm4P6", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1981-03-01T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1979-01-14T00:00:00Z", "expireAt": "1974-12-22T00:00:00Z", "price": 53, "purchaseAt": "1983-04-06T00:00:00Z", "trialPrice": 35}, {"currencyCode": "JI7DPvmO", "currencyNamespace": "eSZOpkFQ", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1989-03-28T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1990-03-14T00:00:00Z", "expireAt": "1971-06-11T00:00:00Z", "price": 70, "purchaseAt": "1995-09-12T00:00:00Z", "trialPrice": 97}, {"currencyCode": "wAESIGEI", "currencyNamespace": "EnLIXXlQ", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1981-10-29T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1973-12-22T00:00:00Z", "expireAt": "1973-04-19T00:00:00Z", "price": 99, "purchaseAt": "1993-12-26T00:00:00Z", "trialPrice": 48}], "zGJulE1g": [{"currencyCode": "arlvRgcb", "currencyNamespace": "hrkrSCTu", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1986-04-21T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1996-04-25T00:00:00Z", "expireAt": "1975-03-06T00:00:00Z", "price": 97, "purchaseAt": "1996-05-08T00:00:00Z", "trialPrice": 53}, {"currencyCode": "1EJmbtCE", "currencyNamespace": "b0PTYUxd", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1994-11-15T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1982-10-01T00:00:00Z", "expireAt": "1975-01-03T00:00:00Z", "price": 69, "purchaseAt": "1980-10-19T00:00:00Z", "trialPrice": 94}, {"currencyCode": "uJ2hYbNL", "currencyNamespace": "TnUAXfRY", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1985-06-19T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1997-03-29T00:00:00Z", "expireAt": "1981-06-06T00:00:00Z", "price": 27, "purchaseAt": "1989-02-27T00:00:00Z", "trialPrice": 93}], "2F83gchE": [{"currencyCode": "1zh6oKwa", "currencyNamespace": "N1Z8maea", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1975-10-27T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1998-10-10T00:00:00Z", "expireAt": "1974-01-19T00:00:00Z", "price": 68, "purchaseAt": "1976-09-15T00:00:00Z", "trialPrice": 88}, {"currencyCode": "cFKqT3sP", "currencyNamespace": "aA6Ku7dv", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1976-03-07T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1984-12-30T00:00:00Z", "expireAt": "1975-07-28T00:00:00Z", "price": 52, "purchaseAt": "1979-05-23T00:00:00Z", "trialPrice": 89}, {"currencyCode": "s1Owo22j", "currencyNamespace": "5XzWtIv0", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1975-01-17T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1973-11-04T00:00:00Z", "expireAt": "1985-04-09T00:00:00Z", "price": 100, "purchaseAt": "1995-05-07T00:00:00Z", "trialPrice": 17}]}, "saleConfig": {"currencyCode": "UBeXD5be", "price": 87}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "7jbjWQMA", "stackable": true, "status": "ACTIVE", "tags": ["YzmqRtA4", "MOxW7J7H", "KBzGN1lJ"], "targetCurrencyCode": "WnOLmzSq", "targetNamespace": "3gEAX2F6", "thumbnailUrl": "G3GAiibO", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Rlko2IV1' \
    --appId 'mxARgV5l' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate '5jWUalFc' \
    --baseAppId '3EPZYH2S' \
    --categoryPath 'UICvcLsx' \
    --features 'J8PSNAFd' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --limit '96' \
    --offset '13' \
    --region 'cgaNKir2' \
    --sortBy '["createdAt:desc", "updatedAt:desc"]' \
    --storeId 'MMGWsqSo' \
    --tags 'eXIA8VBi' \
    --targetNamespace 'g6O5B0WR' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["qo4pOZ8j", "kcUwHNEh", "yN231hpc"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'XLTzIyKr' \
    --itemIds 'QRGblDCF' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'jq2yPqtb' \
    --sku 'hfC631rO' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'ULRbfw41' \
    --populateBundle 'false' \
    --region 'MLFdM3j9' \
    --storeId 'euFGhBUw' \
    --sku 'OicBpvNM' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '1FLwSMef' \
    --region 'dDCcof5O' \
    --storeId 'ZkZFxAZV' \
    --itemIds 'dodhZBrM' \
    --userId 'gQTm6UHB' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'nULzwlqQ' \
    --sku 'GCulUZZa' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["3yxbqWVf", "AYQMKwEt", "VhGgstrl"]' \
    --storeId 'DVoXLfQw' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'sH8xFNcW' \
    --region '15ucNq08' \
    --storeId 'dPCPdYny' \
    --itemIds 'OCjyeAMH' \
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
    --platform 'TsuxoKos' \
    --userId '1cp88Ueo' \
    --body '{"itemIds": ["PIxTg0ln", "VIx4PgZt", "706F8aZa"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 's83PHZCM' \
    --body '{"changes": [{"itemIdentities": ["Z7ky0ZaC", "pZaFO55F", "tPgXJer9"], "itemIdentityType": "ITEM_SKU", "regionData": {"SLmcrfCo": [{"currencyCode": "OxmDZidz", "currencyNamespace": "90wKbicG", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1982-04-24T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1990-02-03T00:00:00Z", "discountedPrice": 36, "expireAt": "1987-08-03T00:00:00Z", "price": 75, "purchaseAt": "1976-07-03T00:00:00Z", "trialPrice": 96}, {"currencyCode": "Vu5FQcpQ", "currencyNamespace": "g6h250Fj", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1975-06-04T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1975-04-24T00:00:00Z", "discountedPrice": 91, "expireAt": "1995-11-08T00:00:00Z", "price": 62, "purchaseAt": "1977-04-29T00:00:00Z", "trialPrice": 99}, {"currencyCode": "ioZKnZDT", "currencyNamespace": "AEhATA9e", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1982-07-23T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1988-01-22T00:00:00Z", "discountedPrice": 49, "expireAt": "1978-07-17T00:00:00Z", "price": 72, "purchaseAt": "1972-01-26T00:00:00Z", "trialPrice": 93}], "FALCPlTd": [{"currencyCode": "Eie2UDYY", "currencyNamespace": "3YzM7ouC", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-12-07T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1985-11-04T00:00:00Z", "discountedPrice": 48, "expireAt": "1976-05-28T00:00:00Z", "price": 70, "purchaseAt": "1978-01-16T00:00:00Z", "trialPrice": 3}, {"currencyCode": "wdQT5uOc", "currencyNamespace": "T7MnchHp", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1974-11-01T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1972-11-17T00:00:00Z", "discountedPrice": 7, "expireAt": "1979-03-24T00:00:00Z", "price": 92, "purchaseAt": "1978-05-15T00:00:00Z", "trialPrice": 62}, {"currencyCode": "MzLGVtlk", "currencyNamespace": "BaH6dK8g", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1977-07-01T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-08-05T00:00:00Z", "discountedPrice": 87, "expireAt": "1999-11-22T00:00:00Z", "price": 76, "purchaseAt": "1995-11-07T00:00:00Z", "trialPrice": 4}], "orVq5ftB": [{"currencyCode": "MMtruRio", "currencyNamespace": "esjb3eys", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1990-04-28T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1985-12-12T00:00:00Z", "discountedPrice": 66, "expireAt": "1980-09-15T00:00:00Z", "price": 34, "purchaseAt": "1976-05-19T00:00:00Z", "trialPrice": 71}, {"currencyCode": "Gv3rHCXA", "currencyNamespace": "udwiIXot", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1999-05-12T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1997-01-21T00:00:00Z", "discountedPrice": 51, "expireAt": "1980-11-19T00:00:00Z", "price": 55, "purchaseAt": "1981-05-05T00:00:00Z", "trialPrice": 42}, {"currencyCode": "d8EPLzhk", "currencyNamespace": "v7lwkz2h", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1991-12-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1995-04-29T00:00:00Z", "discountedPrice": 99, "expireAt": "1994-10-03T00:00:00Z", "price": 34, "purchaseAt": "1987-11-01T00:00:00Z", "trialPrice": 41}]}}, {"itemIdentities": ["uy6OJCeI", "kf5m4fDv", "39I1NRH2"], "itemIdentityType": "ITEM_SKU", "regionData": {"OTjm9u3g": [{"currencyCode": "Vpuq4IHj", "currencyNamespace": "lfR0q5Yy", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1993-10-20T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1978-11-18T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-05-12T00:00:00Z", "price": 79, "purchaseAt": "1988-01-11T00:00:00Z", "trialPrice": 13}, {"currencyCode": "6U17NsRl", "currencyNamespace": "0LPtoloy", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1983-03-31T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1987-11-10T00:00:00Z", "discountedPrice": 11, "expireAt": "1990-12-16T00:00:00Z", "price": 28, "purchaseAt": "1973-09-03T00:00:00Z", "trialPrice": 83}, {"currencyCode": "zA0y6fPG", "currencyNamespace": "SzUjf6A9", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1996-11-29T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1997-11-09T00:00:00Z", "discountedPrice": 37, "expireAt": "1992-01-26T00:00:00Z", "price": 92, "purchaseAt": "1987-11-20T00:00:00Z", "trialPrice": 55}], "tEUJ8o6L": [{"currencyCode": "T6APQm79", "currencyNamespace": "EMaP90If", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1976-06-15T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1974-07-26T00:00:00Z", "discountedPrice": 33, "expireAt": "1987-09-05T00:00:00Z", "price": 0, "purchaseAt": "1990-12-13T00:00:00Z", "trialPrice": 22}, {"currencyCode": "oKS9QDhc", "currencyNamespace": "UCrGOJFL", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1978-06-17T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1984-03-17T00:00:00Z", "discountedPrice": 3, "expireAt": "1971-06-13T00:00:00Z", "price": 8, "purchaseAt": "1980-09-18T00:00:00Z", "trialPrice": 71}, {"currencyCode": "1ppARRrm", "currencyNamespace": "c3zumuDJ", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1986-07-17T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1971-05-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1990-06-25T00:00:00Z", "price": 8, "purchaseAt": "1982-10-18T00:00:00Z", "trialPrice": 48}], "UjTeNpyO": [{"currencyCode": "7Zlq9Ije", "currencyNamespace": "Apv1nEC1", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1995-06-08T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1987-05-28T00:00:00Z", "discountedPrice": 61, "expireAt": "1998-08-10T00:00:00Z", "price": 30, "purchaseAt": "1980-01-08T00:00:00Z", "trialPrice": 53}, {"currencyCode": "ql3sprxo", "currencyNamespace": "0Cr3OpI1", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1998-11-10T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1984-12-06T00:00:00Z", "discountedPrice": 11, "expireAt": "1999-05-17T00:00:00Z", "price": 59, "purchaseAt": "1982-03-31T00:00:00Z", "trialPrice": 89}, {"currencyCode": "f5VrxBHc", "currencyNamespace": "j63sf7eI", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1988-05-08T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1973-03-29T00:00:00Z", "discountedPrice": 100, "expireAt": "1982-09-04T00:00:00Z", "price": 95, "purchaseAt": "1971-12-25T00:00:00Z", "trialPrice": 31}]}}, {"itemIdentities": ["5nHwo1My", "Y5tb7IHn", "49j7wFPx"], "itemIdentityType": "ITEM_SKU", "regionData": {"3RVhuf7s": [{"currencyCode": "GSDIRU8X", "currencyNamespace": "zvLg1Cca", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1999-09-30T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1980-10-05T00:00:00Z", "discountedPrice": 59, "expireAt": "1985-09-09T00:00:00Z", "price": 30, "purchaseAt": "1974-09-15T00:00:00Z", "trialPrice": 27}, {"currencyCode": "5iX7BHBV", "currencyNamespace": "z80jfc7u", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1991-12-05T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1988-01-13T00:00:00Z", "discountedPrice": 18, "expireAt": "1977-05-23T00:00:00Z", "price": 50, "purchaseAt": "1975-09-23T00:00:00Z", "trialPrice": 96}, {"currencyCode": "fOTOb6Wu", "currencyNamespace": "sm0zUKbu", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1984-07-01T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1991-01-12T00:00:00Z", "discountedPrice": 79, "expireAt": "1972-08-30T00:00:00Z", "price": 12, "purchaseAt": "1988-04-19T00:00:00Z", "trialPrice": 88}], "pCf8moEc": [{"currencyCode": "OcUYe0EP", "currencyNamespace": "VZSZV5hq", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1998-06-09T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1982-12-07T00:00:00Z", "discountedPrice": 26, "expireAt": "1990-08-08T00:00:00Z", "price": 92, "purchaseAt": "1994-10-07T00:00:00Z", "trialPrice": 94}, {"currencyCode": "p8oZO1hC", "currencyNamespace": "B8ac8bKK", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1992-10-11T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1975-11-16T00:00:00Z", "discountedPrice": 85, "expireAt": "1993-11-15T00:00:00Z", "price": 26, "purchaseAt": "1981-04-12T00:00:00Z", "trialPrice": 74}, {"currencyCode": "LJKYM8vq", "currencyNamespace": "aUesoeVZ", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1994-09-02T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1987-03-09T00:00:00Z", "discountedPrice": 91, "expireAt": "1989-10-11T00:00:00Z", "price": 21, "purchaseAt": "1973-12-29T00:00:00Z", "trialPrice": 88}], "1eCM84zc": [{"currencyCode": "bDN7Nqab", "currencyNamespace": "MuX08uRP", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1995-06-12T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1999-07-26T00:00:00Z", "discountedPrice": 62, "expireAt": "1983-12-06T00:00:00Z", "price": 90, "purchaseAt": "1994-07-04T00:00:00Z", "trialPrice": 32}, {"currencyCode": "zOmHB1sF", "currencyNamespace": "7lTD4rBf", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1999-09-01T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1997-03-01T00:00:00Z", "discountedPrice": 19, "expireAt": "1973-03-02T00:00:00Z", "price": 1, "purchaseAt": "1994-03-25T00:00:00Z", "trialPrice": 13}, {"currencyCode": "U2sNHZwN", "currencyNamespace": "4EEAO0Hj", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1988-12-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1973-06-02T00:00:00Z", "discountedPrice": 44, "expireAt": "1981-11-23T00:00:00Z", "price": 72, "purchaseAt": "1995-10-16T00:00:00Z", "trialPrice": 78}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '28' \
    --offset '16' \
    --sortBy '6hVg1qMc' \
    --storeId 'ixgw671q' \
    --keyword 'vHML7xTv' \
    --language 'yNxW2bOq' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '5' \
    --offset '89' \
    --sortBy '["updatedAt", "displayOrder:asc", "updatedAt:desc"]' \
    --storeId 'no9deiWV' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '0ktH4fXh' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ern5eS5w' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Rcliphfo' \
    --namespace $AB_NAMESPACE \
    --storeId 'sJR5kIwr' \
    --body '{"appId": "vVDu8TH4", "appType": "SOFTWARE", "baseAppId": "hGxx97sj", "boothName": "hac1sC68", "categoryPath": "Wos3uGz7", "clazz": "jJUcGoDM", "displayOrder": 69, "entitlementType": "DURABLE", "ext": {"K3u6YK7n": {}, "CzNlsM9P": {}, "paOiUEMs": {}}, "features": ["aBRB2iGm", "mUFrsBvO", "CbmhZpSo"], "flexible": false, "images": [{"as": "qV8fXX5f", "caption": "4NeCbO1f", "height": 70, "imageUrl": "ha3GXUWE", "smallImageUrl": "XuprGFlX", "width": 17}, {"as": "7RqsAOnv", "caption": "92CcWPVc", "height": 17, "imageUrl": "pKtEkSnM", "smallImageUrl": "H9jyvdqG", "width": 79}, {"as": "wjCIKqRA", "caption": "xKaRJdhH", "height": 56, "imageUrl": "R8ywmHvb", "smallImageUrl": "MRnjXqvn", "width": 85}], "inventoryConfig": {"customAttributes": {"hGwxPic9": {}, "N1kqtNid": {}, "526UDPYl": {}}, "serverCustomAttributes": {"9klfYWB7": {}, "QOx8uiZf": {}, "Jo4Eyyf1": {}}, "slotUsed": 89}, "itemIds": ["CBRTe0qy", "wDxcN4tc", "c8FVA4OK"], "itemQty": {"9gO8y0YA": 45, "DRAOXCwj": 53, "SacKjMmq": 71}, "itemType": "CODE", "listable": true, "localizations": {"aWhoavKW": {"description": "ysu8vxuC", "localExt": {"yq0Ci3Db": {}, "Zs6V9bVh": {}, "YLafqwVn": {}}, "longDescription": "s8ev8rTx", "title": "Bk19jXog"}, "Jek4dkEk": {"description": "ZlkaRI6Z", "localExt": {"8Luu9b36": {}, "yeHI5rGg": {}, "Te215Kwm": {}}, "longDescription": "4Ky7UxXy", "title": "sqQD72zQ"}, "KOULLdqy": {"description": "919263jh", "localExt": {"EbuUhz05": {}, "ZtbxagX3": {}, "89dH0sia": {}}, "longDescription": "NH8EK3QZ", "title": "LwOeSh3p"}}, "lootBoxConfig": {"rewardCount": 91, "rewards": [{"lootBoxItems": [{"count": 30, "duration": 84, "endDate": "1984-06-24T00:00:00Z", "itemId": "02wHO9Es", "itemSku": "BeuWQEXX", "itemType": "nZ8OVURw"}, {"count": 50, "duration": 17, "endDate": "1995-06-04T00:00:00Z", "itemId": "TycL0DQ9", "itemSku": "Gtse6Bus", "itemType": "5bK0rh1l"}, {"count": 94, "duration": 35, "endDate": "1971-12-27T00:00:00Z", "itemId": "qONj5Ber", "itemSku": "feJVjv6P", "itemType": "Lll3q39J"}], "name": "Vl0zfxV6", "odds": 0.9410783410177648, "type": "PROBABILITY_GROUP", "weight": 90}, {"lootBoxItems": [{"count": 38, "duration": 25, "endDate": "1998-03-04T00:00:00Z", "itemId": "BU6iY6H3", "itemSku": "jcsRAuZB", "itemType": "Bc44SqRA"}, {"count": 5, "duration": 88, "endDate": "1972-04-18T00:00:00Z", "itemId": "rlecxRjs", "itemSku": "D2UhrCHK", "itemType": "0c2NncOn"}, {"count": 99, "duration": 74, "endDate": "1987-09-26T00:00:00Z", "itemId": "NOIrmOVO", "itemSku": "eGw7UMd9", "itemType": "kFsE9MWo"}], "name": "VojLw6d0", "odds": 0.48220562480266604, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 32, "duration": 36, "endDate": "1984-01-23T00:00:00Z", "itemId": "brrGEeOS", "itemSku": "MdqdlVNg", "itemType": "QNaHiNOg"}, {"count": 6, "duration": 42, "endDate": "1983-10-22T00:00:00Z", "itemId": "6kGfdT8q", "itemSku": "W0PoHyGo", "itemType": "Q3U4D29N"}, {"count": 79, "duration": 8, "endDate": "1992-11-16T00:00:00Z", "itemId": "ddNwOsK5", "itemSku": "GlgLRTB4", "itemType": "Zx1FVojh"}], "name": "hxWdNlJ1", "odds": 0.6846860114381828, "type": "REWARD", "weight": 72}], "rollFunction": "CUSTOM"}, "maxCount": 16, "maxCountPerUser": 24, "name": "N3lTyFSZ", "optionBoxConfig": {"boxItems": [{"count": 41, "duration": 16, "endDate": "1999-07-12T00:00:00Z", "itemId": "1SK7ASYV", "itemSku": "Vyn5xwO7", "itemType": "QR9jW0Br"}, {"count": 42, "duration": 86, "endDate": "1980-01-19T00:00:00Z", "itemId": "z1CSuH70", "itemSku": "AZzhZmFv", "itemType": "6wBLMRci"}, {"count": 86, "duration": 80, "endDate": "1974-07-17T00:00:00Z", "itemId": "SgaTbwNE", "itemSku": "oDk0VBvj", "itemType": "rwiBFSSM"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 41, "fixedTrialCycles": 96, "graceDays": 0}, "regionData": {"HQIyzwB8": [{"currencyCode": "5rz6UzMy", "currencyNamespace": "xObgRwpL", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1972-09-22T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1992-06-12T00:00:00Z", "expireAt": "1975-11-01T00:00:00Z", "price": 36, "purchaseAt": "1983-04-02T00:00:00Z", "trialPrice": 10}, {"currencyCode": "BpXjDXp2", "currencyNamespace": "mYW097Co", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1974-03-27T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1973-08-30T00:00:00Z", "expireAt": "1971-08-28T00:00:00Z", "price": 71, "purchaseAt": "1998-10-17T00:00:00Z", "trialPrice": 91}, {"currencyCode": "1wH0sfxz", "currencyNamespace": "gHnE39rM", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1977-01-07T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-09-09T00:00:00Z", "expireAt": "1979-05-13T00:00:00Z", "price": 74, "purchaseAt": "1971-09-02T00:00:00Z", "trialPrice": 10}], "ZMmLC8V6": [{"currencyCode": "bBtDriIy", "currencyNamespace": "xCk3Jud3", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1971-08-04T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1980-05-02T00:00:00Z", "expireAt": "1980-07-27T00:00:00Z", "price": 73, "purchaseAt": "1974-03-11T00:00:00Z", "trialPrice": 56}, {"currencyCode": "UVyIPQYa", "currencyNamespace": "uXRS9cjF", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1987-11-07T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1979-11-18T00:00:00Z", "expireAt": "1972-10-17T00:00:00Z", "price": 99, "purchaseAt": "1987-03-14T00:00:00Z", "trialPrice": 58}, {"currencyCode": "K7L5HidO", "currencyNamespace": "Re0UqwPd", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1983-07-18T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1982-10-15T00:00:00Z", "expireAt": "1982-05-09T00:00:00Z", "price": 28, "purchaseAt": "1990-10-17T00:00:00Z", "trialPrice": 27}], "a7jVcW1G": [{"currencyCode": "fgY1kJO5", "currencyNamespace": "JeeGmut4", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1980-08-10T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1999-06-19T00:00:00Z", "expireAt": "1990-03-10T00:00:00Z", "price": 31, "purchaseAt": "1988-08-06T00:00:00Z", "trialPrice": 4}, {"currencyCode": "2vnuRR6s", "currencyNamespace": "iEqxVWAi", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1974-09-21T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1996-05-11T00:00:00Z", "expireAt": "1972-08-15T00:00:00Z", "price": 89, "purchaseAt": "1984-11-15T00:00:00Z", "trialPrice": 53}, {"currencyCode": "aBPdk46A", "currencyNamespace": "hrELXWYw", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1994-06-18T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1992-10-21T00:00:00Z", "expireAt": "1998-12-15T00:00:00Z", "price": 81, "purchaseAt": "1977-01-30T00:00:00Z", "trialPrice": 70}]}, "saleConfig": {"currencyCode": "DGO9vbiY", "price": 77}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "wG0aadxK", "stackable": true, "status": "ACTIVE", "tags": ["vmmXvXO8", "ZZtQXfPy", "yDyiMJFh"], "targetCurrencyCode": "9IXTWyc1", "targetNamespace": "t8LROBu1", "thumbnailUrl": "GyPejyxI", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Pvl968w3' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'YL2dPTrl' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '2FgnRGpu' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 85, "orderNo": "8bccLp7N"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'tUvKTybL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '4jlhv4D5' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'J2nX8paA' \
    --namespace $AB_NAMESPACE \
    --storeId 'U5wDdAeh' \
    --body '{"carousel": [{"alt": "f0pj6SVo", "previewUrl": "QGeOCb3E", "thumbnailUrl": "weaTJdKe", "type": "video", "url": "d7CfvX6Z", "videoSource": "youtube"}, {"alt": "Bhe4nlyB", "previewUrl": "cRaVPlj8", "thumbnailUrl": "07rzwhAe", "type": "image", "url": "SNPRYOCk", "videoSource": "youtube"}, {"alt": "KJtb9cuF", "previewUrl": "rEiw9HOs", "thumbnailUrl": "psr5cyoq", "type": "image", "url": "L1vVWUOv", "videoSource": "youtube"}], "developer": "WHOkmiWY", "forumUrl": "7dj0crqC", "genres": ["Adventure", "Action", "Strategy"], "localizations": {"ZyVK7NDU": {"announcement": "t7tFA5Op", "slogan": "niOAXRRU"}, "c1A8K7ef": {"announcement": "CLsdfypd", "slogan": "joQVGGds"}, "tSZJqKsT": {"announcement": "Wek1aber", "slogan": "T4F7B2WS"}}, "platformRequirements": {"QVf3fDns": [{"additionals": "rRo0hAmw", "directXVersion": "2ViWluDo", "diskSpace": "B8X8wzUw", "graphics": "Ka7YXZsj", "label": "ieO00Dya", "osVersion": "vd0qQQhf", "processor": "uetljoW8", "ram": "3ziIog8U", "soundCard": "ODO4obCc"}, {"additionals": "NrA3lIr1", "directXVersion": "mx1eACBb", "diskSpace": "DztiG1eJ", "graphics": "vlF0jw1D", "label": "3GJliLKx", "osVersion": "qC13PsDn", "processor": "NnZmaCGP", "ram": "64XhRd2r", "soundCard": "Wo04rYeL"}, {"additionals": "74i7r8fc", "directXVersion": "jVNQTjhG", "diskSpace": "Zj3N6oWC", "graphics": "KT45uq2M", "label": "YsC068OK", "osVersion": "U8z1gGyp", "processor": "A234786Y", "ram": "sbx7oNuH", "soundCard": "ZFZV5qqH"}], "TbY28zQ0": [{"additionals": "eH8M6DIe", "directXVersion": "7q6IKAOH", "diskSpace": "qPHaqI2N", "graphics": "kZVftatY", "label": "jGO3GI8C", "osVersion": "LkBBXn8z", "processor": "vJZODeqT", "ram": "ACo3aT81", "soundCard": "MQJ8B6lV"}, {"additionals": "SiXVZrhr", "directXVersion": "ylaEyEPS", "diskSpace": "vIXmIDpU", "graphics": "AgTh3sxZ", "label": "n9X7DgQN", "osVersion": "MioCqdkU", "processor": "fmxxP8lO", "ram": "chpL9hwo", "soundCard": "SUEMTjOK"}, {"additionals": "LlrUOJgV", "directXVersion": "iU1SGFfk", "diskSpace": "Rgx969uh", "graphics": "Bk1fVjh3", "label": "2eX8v6vo", "osVersion": "shn5c4sX", "processor": "2brrtv0X", "ram": "Aydj8NRq", "soundCard": "KyLOWxzx"}], "x2VZV5Xt": [{"additionals": "IeiTserR", "directXVersion": "ZlK55I8G", "diskSpace": "wBLoCiHA", "graphics": "zk7AhSXD", "label": "q38EzB9h", "osVersion": "kdOeSn1l", "processor": "E1mhKhPD", "ram": "j6qtUWWK", "soundCard": "cve2arJo"}, {"additionals": "ZFif3OIx", "directXVersion": "kyxQJVC8", "diskSpace": "OyF6zyIY", "graphics": "1llnYJH4", "label": "cxjFBjRW", "osVersion": "i03XTErb", "processor": "OTqhL0Rm", "ram": "vQwDSBfh", "soundCard": "NLDIktHB"}, {"additionals": "ZuEizRAQ", "directXVersion": "D6DO9RrM", "diskSpace": "Z9gQDDUy", "graphics": "AmxjraXB", "label": "ALihtJHE", "osVersion": "aecXp0A1", "processor": "SvfapCHz", "ram": "np4JbTTq", "soundCard": "V7jteuHl"}]}, "platforms": ["IOS", "IOS", "MacOS"], "players": ["Coop", "LocalCoop", "LocalCoop"], "primaryGenre": "Sports", "publisher": "uWvcqqUQ", "releaseDate": "1988-01-28T00:00:00Z", "websiteUrl": "bWCOkak1"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '4RU7u8Oe' \
    --namespace $AB_NAMESPACE \
    --storeId 'ytbaWu2S' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'P8i0gbxA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'nwEWxucG' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z44ie1RV' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'OLtgqMRm' \
    --itemId 'aaVwYghh' \
    --namespace $AB_NAMESPACE \
    --storeId 'BfRgDxfZ' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'buOT6aYZ' \
    --itemId '7uuJuQ1h' \
    --namespace $AB_NAMESPACE \
    --storeId 'kTMhz5Ap' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'keu7tscG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'P34OeoHO' \
    --populateBundle 'false' \
    --region 'H1ea2sa9' \
    --storeId 'WnlDE51H' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'F75SWNrr' \
    --namespace $AB_NAMESPACE \
    --storeId 'GPVIhbSu' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 94, "comparison": "isLessThanOrEqual", "name": "S5qwN2BH", "predicateType": "SeasonTierPredicate", "value": "uVRzTemB", "values": ["FVWYyWwI", "tpNX6Myv", "ik8w606I"]}, {"anyOf": 93, "comparison": "isGreaterThanOrEqual", "name": "IvdAIzyK", "predicateType": "EntitlementPredicate", "value": "hGMtskBD", "values": ["HAMEIAO8", "m5sFt2pY", "Xmrnz0zT"]}, {"anyOf": 15, "comparison": "is", "name": "Aa4eRdul", "predicateType": "SeasonPassPredicate", "value": "DC59G50t", "values": ["9sLl6BX2", "XamDlNqP", "wpisI2p9"]}]}, {"operator": "and", "predicates": [{"anyOf": 24, "comparison": "isGreaterThan", "name": "KXFRlsDo", "predicateType": "SeasonTierPredicate", "value": "gYFEJA3f", "values": ["7lcP9jQz", "hLCNh1xr", "85qrLnXN"]}, {"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "RKzALr8Z", "predicateType": "SeasonPassPredicate", "value": "zSKPyujt", "values": ["WK1RqyvB", "OGrc4xwG", "Mc6eGtjj"]}, {"anyOf": 94, "comparison": "includes", "name": "lGYlojG3", "predicateType": "SeasonTierPredicate", "value": "IPQ43PPL", "values": ["ru54Tqhu", "4ILira8r", "Y2bcdDRp"]}]}, {"operator": "or", "predicates": [{"anyOf": 62, "comparison": "isGreaterThan", "name": "tZha9jQU", "predicateType": "EntitlementPredicate", "value": "2A3txp1k", "values": ["NJgQ5ZOR", "atrqwInt", "57VI4j8V"]}, {"anyOf": 93, "comparison": "isGreaterThan", "name": "NRRborrX", "predicateType": "EntitlementPredicate", "value": "TGd9PO0v", "values": ["iODrjlVp", "tJgkaQ03", "v51c8tG9"]}, {"anyOf": 42, "comparison": "isLessThan", "name": "sdmZvrrf", "predicateType": "SeasonPassPredicate", "value": "kDG7GGN4", "values": ["pHwOuOST", "iILJQkpW", "mkXbDjyY"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'P6tGfnbq' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "a9IhRzbZ"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'M94aU1JA' \
    --offset '77' \
    --tag 'aGLQhlx2' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Lq8etagc", "name": "w1PQM7Pr", "status": "INACTIVE", "tags": ["2Woi33ZC", "AVdHHaaT", "NSVOr66j"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'VLmo4v4f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'juyZaV4q' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jT1HiaaG", "name": "PXaPPzKY", "status": "ACTIVE", "tags": ["tIS99F2M", "cPO7fSQl", "KKwOPnKf"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'f26k9oTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZHDs4uFj' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '31' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ZpkjVjSQ' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '3h9TEJTy' \
    --limit '15' \
    --offset '37' \
    --orderNos '["2tPoXIC9", "bE1bKCol", "gHOMAPsA"]' \
    --sortBy 'Dlhjc2Nb' \
    --startTime 'mlaWzFcj' \
    --status 'FULFILL_FAILED' \
    --withTotal 'true' \
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
    --orderNo 'eg3h0OFe' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'JB4HCe7r' \
    --body '{"description": "wdTPFmaf"}' \
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
    --body '{"dryRun": false, "notifyUrl": "sTduexwg", "privateKey": "ctiaDhB0"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'he3E81hp' \
    --externalId 'oxiEtqmY' \
    --limit '88' \
    --notificationSource 'ALIPAY' \
    --notificationType '02X015uu' \
    --offset '91' \
    --paymentOrderNo 'sqtsUpod' \
    --startDate '76uTzLDk' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'nO2t9o0m' \
    --limit '32' \
    --offset '82' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "azyg86OX", "currencyNamespace": "fQMqpgIn", "customParameters": {"7LZfVgGH": {}, "puPhkyuJ": {}, "eGoVZdct": {}}, "description": "hnKzIZ5O", "extOrderNo": "UKT76WZq", "extUserId": "qlFA8BhB", "itemType": "EXTENSION", "language": "CB-bHqd", "metadata": {"1CEENsvz": "00Yd3Jr5", "gui9Onps": "bQsy3dvq", "FPiTQLau": "pJRbqsKU"}, "notifyUrl": "vFBmjMWI", "omitNotification": false, "platform": "pvUyVLd3", "price": 41, "recurringPaymentOrderNo": "Tf6djffz", "region": "fjwBagEa", "returnUrl": "tAh0vRdk", "sandbox": false, "sku": "rGueGNBT", "subscriptionId": "qmY7sVkj", "targetNamespace": "7rbEoO7w", "targetUserId": "Q9PgHMkN", "title": "VfamwoRi"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Zg7fjEhb' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ftUCmVAw' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wNozSzQH' \
    --body '{"extTxId": "qynPq0ow", "paymentMethod": "5POs98nW", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RUZIo1Ql' \
    --body '{"description": "74LPFf2J"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VyByWoyE' \
    --body '{"amount": 18, "currencyCode": "6nMOmKA2", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 4, "vat": 75}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cFPx2olO' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "GooglePlay", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["IOS", "Other", "System"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'U8sAcUS7' \
    --limit '94' \
    --offset '56' \
    --source 'IAP' \
    --startTime 'F81DsZwW' \
    --status 'SUCCESS' \
    --transactionId 'ajFAX5gg' \
    --userId 'slpL3Yld' \
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
    --body '{"appConfig": {"appName": "PgisaqyN"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "5j6bSriY"}, "extendType": "APP"}' \
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
    --body '{"description": "V117zfzZ", "eventTopic": "35V7eeJs", "maxAwarded": 71, "maxAwardedPerUser": 90, "namespaceExpression": "qzDF1KvY", "rewardCode": "tPjhwN7g", "rewardConditions": [{"condition": "iOGkHzwR", "conditionName": "eqf0lxOv", "eventName": "dYDucBIh", "rewardItems": [{"duration": 83, "endDate": "1988-09-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CqVzQajD", "quantity": 51, "sku": "F48mAMr0"}, {"duration": 72, "endDate": "1997-08-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "FB7WGc6a", "quantity": 5, "sku": "ZpOMooty"}, {"duration": 88, "endDate": "1983-09-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CEf4fg5W", "quantity": 13, "sku": "PUtNygIb"}]}, {"condition": "t8oea4WB", "conditionName": "EFZvOqDE", "eventName": "nOBXQTFX", "rewardItems": [{"duration": 45, "endDate": "1992-06-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "q2ZrndFm", "quantity": 14, "sku": "bLOgiFIC"}, {"duration": 51, "endDate": "1983-11-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KsYpQplN", "quantity": 33, "sku": "WZHnPgut"}, {"duration": 61, "endDate": "1990-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "A9IFYyXf", "quantity": 5, "sku": "BnleVq1n"}]}, {"condition": "vtvEyLQY", "conditionName": "t0ihNVg0", "eventName": "Ab3a9hAJ", "rewardItems": [{"duration": 7, "endDate": "1987-09-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uq4i4Kiq", "quantity": 73, "sku": "iSZmMXVe"}, {"duration": 33, "endDate": "1992-04-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "l8zQK1Uw", "quantity": 93, "sku": "1CflaZzJ"}, {"duration": 15, "endDate": "1979-02-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qv6zuNRc", "quantity": 51, "sku": "6H9N3sVV"}]}], "userIdExpression": "4xHR4bue"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'cWhh6y3o' \
    --limit '43' \
    --offset '87' \
    --sortBy '["rewardCode:desc", "namespace", "rewardCode"]' \
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
    --rewardId 'r3eA04jn' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'cjTViCPL' \
    --body '{"description": "zzZmHwRO", "eventTopic": "RggV6nEs", "maxAwarded": 14, "maxAwardedPerUser": 9, "namespaceExpression": "oGZ5Chlx", "rewardCode": "3MTNNqeJ", "rewardConditions": [{"condition": "729RCmdn", "conditionName": "Yht6gbSa", "eventName": "oo4KxNVH", "rewardItems": [{"duration": 55, "endDate": "1972-12-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kIXWprWa", "quantity": 99, "sku": "DyQNK69f"}, {"duration": 84, "endDate": "1979-04-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "z7N2s3E9", "quantity": 87, "sku": "rdqhop4s"}, {"duration": 1, "endDate": "1976-03-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bMvTVGAk", "quantity": 4, "sku": "0lCTlb9L"}]}, {"condition": "0FXPJivx", "conditionName": "FYLA8CUY", "eventName": "jm2gczwR", "rewardItems": [{"duration": 100, "endDate": "1987-09-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UWtWcezO", "quantity": 36, "sku": "WODLJo7x"}, {"duration": 4, "endDate": "1971-02-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VqxfIPYf", "quantity": 90, "sku": "jNYgdQXy"}, {"duration": 93, "endDate": "1977-04-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wFWyjKlr", "quantity": 30, "sku": "BlrtOzSA"}]}, {"condition": "j78fEBcP", "conditionName": "gXNcFGfo", "eventName": "DJBoorZc", "rewardItems": [{"duration": 41, "endDate": "1991-12-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4T0VUZnQ", "quantity": 56, "sku": "ile3Bu66"}, {"duration": 24, "endDate": "1975-06-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bakouNcB", "quantity": 33, "sku": "xRHCLVSr"}, {"duration": 61, "endDate": "1989-01-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wiflW7ky", "quantity": 45, "sku": "CpPLmByg"}]}], "userIdExpression": "p5wKF4pC"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'pf23t0As' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'Ryrz0u7E' \
    --body '{"payload": {"zGrwnPuC": {}, "hvRNL0Sh": {}, "h1QT0OZ8": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'oUCuLIsf' \
    --body '{"conditionName": "HCesfPyF", "userId": "JyzMwobh"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '41pVKwUx' \
    --limit '42' \
    --offset '9' \
    --start 'udwvJQ3Q' \
    --storeId 'qhB2HqaT' \
    --viewId 'SQdycsVi' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'VbcMHXXA' \
    --body '{"active": true, "displayOrder": 8, "endDate": "1983-07-16T00:00:00Z", "ext": {"CKtzU6BM": {}, "GLpFFSt5": {}, "yDNH9P92": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 70, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "e0tPerPR", "sku": "6AktagLm"}, {"id": "GnX91lcR", "sku": "8u8Oo2Lj"}, {"id": "cO8WSYug", "sku": "FybfNDmv"}], "localizations": {"3ZDQ43oW": {"description": "F2AeARjS", "localExt": {"oTpmnohU": {}, "42pmh16K": {}, "8PHaM4PQ": {}}, "longDescription": "PZrLD1wt", "title": "Q0jOuBMi"}, "9Rlj925t": {"description": "gQ5LyQVQ", "localExt": {"g66kHm5F": {}, "MOOPv5ge": {}, "ohEazcjj": {}}, "longDescription": "mcpBdW0h", "title": "ksnAn3XP"}, "b5dzGJtR": {"description": "vdc6hvIl", "localExt": {"jhlZF9qx": {}, "z9BDYOIS": {}, "XzAgzE8Q": {}}, "longDescription": "15I9Ubox", "title": "WUKzYqeG"}}, "name": "mrhKQAce", "rotationType": "NONE", "startDate": "1993-08-02T00:00:00Z", "viewId": "jKsEapRo"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'fHuqrwjS' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '1hrl6KpW' \
    --storeId 'A3jLSH0Z' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'D4j1Jy5e' \
    --storeId 'BtPFxaYV' \
    --body '{"active": true, "displayOrder": 20, "endDate": "1973-06-23T00:00:00Z", "ext": {"AcJu1fyv": {}, "NinjUL5b": {}, "lkLUg6mA": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 72, "itemCount": 52, "rule": "SEQUENCE"}, "items": [{"id": "NakMxj7E", "sku": "mDe1ZPfO"}, {"id": "kfsKEXeS", "sku": "geStCTLo"}, {"id": "VSNzlDCw", "sku": "O82JJDQu"}], "localizations": {"TFtBrycp": {"description": "TQ1Su4Eb", "localExt": {"fjxfIIx0": {}, "N0ZqAMFe": {}, "KtXJYKc5": {}}, "longDescription": "h8RAKf8x", "title": "cOXkTbXW"}, "Y5ZsmuUX": {"description": "k5tz3VBi", "localExt": {"tj1Nehl6": {}, "ZOnK4D3w": {}, "L5ppiW3p": {}}, "longDescription": "YzYYnduD", "title": "5uwMSw15"}, "o2G6ZNwP": {"description": "e0ICsLpy", "localExt": {"Q8ghuarY": {}, "F52JAZUR": {}, "kJdGcx3B": {}}, "longDescription": "1KoMsSTX", "title": "PWfibKJ7"}}, "name": "oCACrCKO", "rotationType": "FIXED_PERIOD", "startDate": "1975-06-02T00:00:00Z", "viewId": "a1jFNcD4"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'YpNywEtJ' \
    --storeId 'WG21erbX' \
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
    --body '{"defaultLanguage": "waLOgaog", "defaultRegion": "9yxOqQSk", "description": "NiJfk9nB", "supportedLanguages": ["70xBQtAy", "cNb97zY6", "EsWpTi4Z"], "supportedRegions": ["LjmTQSQz", "ksmNE9WK", "q2eYjbaw"], "title": "fufWlmWp"}' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["S6OF2gWX", "NeucolTm", "5xZ5KZgP"], "idsToBeExported": ["f3AkOGAl", "zILlaLSS", "M9hUY8BG"], "storeId": "hbZ1Qlu6"}' \
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
    --storeId 'gJSkzQen' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'dCQuK1hz' \
    --body '{"defaultLanguage": "pv5W6n1q", "defaultRegion": "NCUxFjgy", "description": "gxhftAYS", "supportedLanguages": ["jaEvy81S", "3u8xHk2c", "n6OVMKeN"], "supportedRegions": ["Jo3bm1rT", "DNaBdsAf", "dvBnoRuK"], "title": "xtxwwPWa"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'DCYXLoQ8' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'NptZxIpR' \
    --action 'CREATE' \
    --itemSku 'MvEx3eKa' \
    --itemType 'COINS' \
    --limit '76' \
    --offset '55' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'fxJVfPtB' \
    --updatedAtStart 'xGXPE5d5' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'ba1Cp9Qy' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'GNuAPmhn' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '5Mq8Y7Pg' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'LdKzM2wl' \
    --action 'CREATE' \
    --itemSku 'b9FVR8uV' \
    --itemType 'EXTENSION' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'cVzAzhZu' \
    --updatedAtStart 'a7OUmiyL' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'r01CxTe5' \
    --action 'CREATE' \
    --itemSku '8vSBuLRz' \
    --itemType 'MEDIA' \
    --type 'STORE' \
    --updatedAtEnd 'Ml6Quy9Y' \
    --updatedAtStart 'Srr4VFVd' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '5NtZDlcn' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '004Gl68f' \
    --namespace $AB_NAMESPACE \
    --storeId 'ljZRnhZf' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 't66CdDLy' \
    --namespace $AB_NAMESPACE \
    --storeId 'ghQbhZps' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'DzqWdpmn' \
    --targetStoreId 'xxmkil9n' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'gyE2QGmI' \
    --end 'TSth6lER' \
    --limit '73' \
    --offset '17' \
    --sortBy '4FrrEB3h' \
    --start 'ViDUGzir' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'fqNhVOP8' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'FBx7qW5s' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId '9RrVPzM8' \
    --limit '16' \
    --offset '38' \
    --sku 'qo4iqFli' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'qumMoVUZ' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9PHJ9PWK' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'zz5ipdtM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '7g3riTmD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "NCTR4SNa"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'iGQ2Gqth' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'kY2P8R2B' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 14, "orderNo": "Scw8Fqzf"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 74, "currencyCode": "bHAXPYAv", "expireAt": "1975-10-17T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "sc8jpnvz", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "m2t1MZRN", "entitlementOrigin": "GooglePlay", "itemIdentity": "lc15QYgr", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "ZHv7rpK6"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 57, "currencyCode": "b4T0ok1b", "expireAt": "1995-11-06T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "tSWRiES9", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 86, "entitlementCollectionId": "BqMKVNxZ", "entitlementOrigin": "Nintendo", "itemIdentity": "fdWS8ATC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "8QT647Ym"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 8, "currencyCode": "KPFTVTsb", "expireAt": "1975-04-28T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "GvvRG9Ib", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "R4urUO8Z", "entitlementOrigin": "Other", "itemIdentity": "FJi8eMXJ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 68, "entitlementId": "xRxo9QEt"}, "type": "FULFILL_ITEM"}], "userId": "jgdAePID"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 0, "currencyCode": "ASY74CZb", "expireAt": "1986-04-15T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "E445cMUN", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "zmiICVke", "entitlementOrigin": "Oculus", "itemIdentity": "Cd0KVeVd", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "HhQznz14"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 47, "currencyCode": "kA8iMwKo", "expireAt": "1993-03-22T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "D2qzbDPu", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "27JZ8gJ5", "entitlementOrigin": "Twitch", "itemIdentity": "qPWghzMC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 69, "entitlementId": "sGNFjyBF"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 43, "currencyCode": "iivEvpel", "expireAt": "1998-01-02T00:00:00Z"}, "debitPayload": {"count": 11, "currencyCode": "iE4M2gdz", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "x2prBnGu", "entitlementOrigin": "System", "itemIdentity": "uttMeSdm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "xx27RePt"}, "type": "CREDIT_WALLET"}], "userId": "D7jVj81u"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 64, "currencyCode": "zEy7bxlR", "expireAt": "1974-04-20T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "iYaAZkTM", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 0, "entitlementCollectionId": "HM6KRukA", "entitlementOrigin": "Xbox", "itemIdentity": "rdZTVWD1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "tn6z0CU8"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 31, "currencyCode": "ETBzspTc", "expireAt": "1999-04-24T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "kDxhg6pE", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "yLG8sPLI", "entitlementOrigin": "Nintendo", "itemIdentity": "EabfmjKz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "wRPl7QyA"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 5, "currencyCode": "YGwaWjjg", "expireAt": "1987-08-30T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "dwOwpnUh", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "LYZ9nFKK", "entitlementOrigin": "Playstation", "itemIdentity": "Q9pBbRJ1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "vOIIcGQI"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "qXCiGVCM"}], "metadata": {"jZkYJ3xk": {}, "K0kmgFhz": {}, "FNC0VeJh": {}}, "needPreCheck": false, "transactionId": "wd48IT0b", "type": "x1tRNVzu"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '36' \
    --status 'SUCCESS' \
    --type 'HjoyLqQ1' \
    --userId 'Gx1M8Txp' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'RUYC1TCy' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ePEVuH5T' \
    --body '{"achievements": [{"id": "q8X2wGLC", "value": 52}, {"id": "7IZQsEQ5", "value": 25}, {"id": "3gx9soPy", "value": 55}], "steamUserId": "eNOe9Aq6"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'dqiVal3L' \
    --xboxUserId 'licEAT0F' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'bLPsThO1' \
    --body '{"achievements": [{"id": "2kMW4HMC", "percentComplete": 25}, {"id": "ZHkXl0xZ", "percentComplete": 99}, {"id": "lVrOcqNl", "percentComplete": 90}], "serviceConfigId": "sN505nvH", "titleId": "4mmDXpTr", "xboxUserId": "ngL7LBF3"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '3z2Otn2J' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hWXV7Sc0' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ito7tR77' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'KuM9teXS' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'y0gZC5Pp' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'RojZzLiW' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '0sqPwa4F' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'te2mOS5H' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'uFBJ6DKZ' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'QiR1aOsr' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'dpDUSdT2' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'I0P635kb' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'UuSUGrpZ' \
    --entitlementClazz 'CODE' \
    --entitlementName 'jFIBbCFF' \
    --features '["RniCuPaX", "M0GhhZGY", "TDSGgPIK"]' \
    --fuzzyMatchName 'true' \
    --itemId '["U9AfhVpL", "sElX3Ege", "fngnMuOQ"]' \
    --limit '66' \
    --offset '83' \
    --origin 'Epic' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'XSTKVtFn' \
    --body '[{"collectionId": "tiweayvy", "endDate": "1981-01-13T00:00:00Z", "grantedCode": "Sol9chg5", "itemId": "l1H90Akf", "itemNamespace": "qblIfAT4", "language": "fX-neMg", "origin": "Twitch", "quantity": 83, "region": "ASFo7sdc", "source": "IAP", "startDate": "1981-02-19T00:00:00Z", "storeId": "uluFqw7o"}, {"collectionId": "dSrN2H8Z", "endDate": "1977-06-07T00:00:00Z", "grantedCode": "ta1Z5ThC", "itemId": "GYgOz3rj", "itemNamespace": "w6DlbD55", "language": "Sco_eSWa", "origin": "Epic", "quantity": 38, "region": "nfXNl5IS", "source": "REWARD", "startDate": "1997-08-23T00:00:00Z", "storeId": "O6QrwRzZ"}, {"collectionId": "gAX7knvX", "endDate": "1989-12-31T00:00:00Z", "grantedCode": "2i0XK52z", "itemId": "TunphxJM", "itemNamespace": "DYLpRusQ", "language": "VIjM-QMbK-787", "origin": "Epic", "quantity": 54, "region": "T8LVmkYz", "source": "PURCHASE", "startDate": "1988-09-22T00:00:00Z", "storeId": "A9mTrlW3"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'OIGhDvaQ' \
    --activeOnly 'false' \
    --appId 'LTZkMSFY' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'rHMmWxV3' \
    --activeOnly 'true' \
    --limit '32' \
    --offset '94' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '8JJi7VtQ' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'gAXdiw83' \
    --itemId 'tcgLXFNZ' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'u7PKOF2n' \
    --ids '["hM1Yc0qT", "OfnoHyxx", "29FS1Dsv"]' \
    --platform 'b0kUfcPZ' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'C8dhluxY' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --platform 'HUIDQMDE' \
    --sku '6eJGsuRe' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'cwsy8yUb' \
    --appIds '["kKkCbfmB", "CXbAefTz", "0nMgYWdE"]' \
    --itemIds '["EYRn0c8Y", "mbI8gFae", "qfVSqsZw"]' \
    --platform '5H0MhtFt' \
    --skus '["rBQ5tLax", "XvpK653c", "vq1oAmvn"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'xXeZ2F8b' \
    --platform '1hFRS3MQ' \
    --itemIds '["XS2B4zjz", "uNue8mqZ", "yYsQDToV"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dGXdugxC' \
    --appId 'wZIiQkMA' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '0kcavc7c' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'dqNrBapI' \
    --itemId 'y31I0YBl' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '87alzAcV' \
    --ids '["pqefK17D", "rABGq2Le", "uTMTDhSm"]' \
    --platform '6Qz8iFT0' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'apH1eOXM' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'X7kzZvaw' \
    --sku 'AlDBe0m3' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'TXMpOlCh' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pgIEFelk' \
    --entitlementIds 'vNiTwzYH' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'dYX7PgC1' \
    --namespace $AB_NAMESPACE \
    --userId 'bWOCi5pg' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'bjgW4qjt' \
    --namespace $AB_NAMESPACE \
    --userId 'zJrRcb9o' \
    --body '{"collectionId": "A2Vt7QQC", "endDate": "1997-04-18T00:00:00Z", "nullFieldList": ["YuRwRe0K", "zAZl8hy6", "THNNWsSA"], "origin": "Other", "reason": "861X4yuC", "startDate": "1998-06-21T00:00:00Z", "status": "ACTIVE", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '9g3JuQF3' \
    --namespace $AB_NAMESPACE \
    --userId 'W9fv8zZF' \
    --body '{"options": ["uhTlm4Ta", "P2c97IaB", "BmhMkxKk"], "platform": "hH0Wj4wq", "requestId": "6643e4lL", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'DtNsImNd' \
    --namespace $AB_NAMESPACE \
    --userId 'xh1mLZ9L' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'jPESZeQG' \
    --namespace $AB_NAMESPACE \
    --userId 'ZcuLdiRf' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'IdjMhI0b' \
    --namespace $AB_NAMESPACE \
    --userId 'G8eqD93w' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'cMkCtqX5' \
    --namespace $AB_NAMESPACE \
    --userId '4yzbFfrl' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'U9hZyNmq' \
    --namespace $AB_NAMESPACE \
    --userId 'v9nKdzmu' \
    --body '{"reason": "vP31T1Rw", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'qNRYcorL' \
    --namespace $AB_NAMESPACE \
    --userId 'mQ0igjUv' \
    --quantity '0' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'XFudcalj' \
    --namespace $AB_NAMESPACE \
    --userId 'vc0SSz1m' \
    --body '{"platform": "tkJ8pQRg", "requestId": "En4DAnUN", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'atYWw1MU' \
    --body '{"duration": 21, "endDate": "1974-08-30T00:00:00Z", "entitlementCollectionId": "kp3601jd", "entitlementOrigin": "Oculus", "itemId": "y7v8t9D9", "itemSku": "qkt6e7lA", "language": "VyVef0R7", "metadata": {"do9mAMYS": {}, "ZNB7P46D": {}, "iV3bZHka": {}}, "order": {"currency": {"currencyCode": "egnGZbYG", "currencySymbol": "cU6Mw2pa", "currencyType": "REAL", "decimals": 43, "namespace": "BJe0JDQJ"}, "ext": {"WVuSc2oj": {}, "zvINqASG": {}, "OF90q3wx": {}}, "free": false}, "orderNo": "mukeoS6F", "origin": "GooglePlay", "overrideBundleItemQty": {"zytA08wH": 76, "e9ABUsoW": 21, "hYe3bVLs": 62}, "quantity": 78, "region": "ZKS9vzmf", "source": "GIFT", "startDate": "1983-09-11T00:00:00Z", "storeId": "UbzihJTO"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'nZ5ebzN3' \
    --body '{"code": "Ka9O03lw", "language": "vvM", "region": "c90EIiuI"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '9M9GsgZn' \
    --body '{"itemId": "QbHC9zhE", "itemSku": "r7FSoSLk", "quantity": 5}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '0fTqSSuI' \
    --body '{"entitlementCollectionId": "aFWhYy9f", "entitlementOrigin": "System", "metadata": {"cl3BNggk": {}, "SzA11vtR": {}, "aFHX3TtL": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "H9Tko4at", "namespace": "wA0cYgkU"}, "item": {"itemId": "UoMTWkUK", "itemSku": "G64gSu1g", "itemType": "aWAJxrWL"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "HeYkjKEY", "namespace": "vKWobYPm"}, "item": {"itemId": "M92Lz9KU", "itemSku": "uFKZnX0Q", "itemType": "ZrCdo0MH"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "EGndDdac", "namespace": "JOQ9VF8e"}, "item": {"itemId": "yEIs2TsO", "itemSku": "sCpAY8OQ", "itemType": "Z2DajrbT"}, "quantity": 14, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "z0AF6jDA"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'goJ6d9vB' \
    --endTime 'aSg2Zyxd' \
    --limit '12' \
    --offset '62' \
    --productId 'ZXUcwCtE' \
    --startTime '8EBIPmhh' \
    --status 'FULFILLED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Rx6JksH3' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'JITD7ReK' \
    --endTime 'gGtnzM8g' \
    --limit '36' \
    --offset '6' \
    --startTime 'bVfujncI' \
    --status 'SUCCESS' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'nWTtEpX8' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "yp-xt", "productId": "NG8ajJPE", "region": "N1vnxYOq", "transactionId": "nwQRg0nm", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'YtyW6atu' \
    --itemId 'Qx71RUau' \
    --limit '61' \
    --offset '32' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KV4Emrts' \
    --body '{"currencyCode": "QibKKc2S", "currencyNamespace": "ptU6Ee6S", "discountedPrice": 7, "entitlementPlatform": "Xbox", "ext": {"nNKvAU67": {}, "zifPbpfB": {}, "A8SHEa5L": {}}, "itemId": "gAApv20r", "language": "Aqq7cSpJ", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 90, "quantity": 11, "region": "toDDNJV4", "returnUrl": "l3hGe3fQ", "sandbox": false, "sectionId": "VAtXYWGi"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '9RhiZGJ1' \
    --itemId 'J6cwDFsW' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'R6O4ZaPI' \
    --userId 'UkT6HZuh' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'BWCxJUng' \
    --userId 'EVeXhtTG' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "WqmFMLXn"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'sDfLUbP1' \
    --userId 'j7v6Dt5Q' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'XlYBMkHW' \
    --userId '4zmdsgmA' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'xSI5Q14g' \
    --userId 'LpRNRLNP' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'Qxbpw05A' \
    --userId '3mDRPDMa' \
    --body '{"additionalData": {"cardSummary": "ZED3xtjx"}, "authorisedTime": "1992-10-16T00:00:00Z", "chargebackReversedTime": "1996-11-09T00:00:00Z", "chargebackTime": "1971-05-06T00:00:00Z", "chargedTime": "1994-07-26T00:00:00Z", "createdTime": "1993-07-03T00:00:00Z", "currency": {"currencyCode": "b8TDFQRx", "currencySymbol": "PXu2F9oW", "currencyType": "VIRTUAL", "decimals": 59, "namespace": "9PWkzGZM"}, "customParameters": {"4x4bVax7": {}, "r7fy91oG": {}, "QCshdo0X": {}}, "extOrderNo": "N12Lj13q", "extTxId": "y8GtcGyI", "extUserId": "9jNY7PeJ", "issuedAt": "1991-06-09T00:00:00Z", "metadata": {"te04T54f": "9wEXRBv5", "2sVog3QF": "aOgFQhcR", "klfDZLCr": "pYCAKXly"}, "namespace": "R0ktFXzc", "nonceStr": "re6kMkge", "paymentMethod": "N0k0EdL9", "paymentMethodFee": 56, "paymentOrderNo": "EXtpd4QX", "paymentProvider": "PAYPAL", "paymentProviderFee": 36, "paymentStationUrl": "iwUgU17L", "price": 23, "refundedTime": "1998-02-18T00:00:00Z", "salesTax": 22, "sandbox": false, "sku": "6mD2Fhda", "status": "CHARGE_FAILED", "statusReason": "vP3f5LHs", "subscriptionId": "J1WOL64e", "subtotalPrice": 47, "targetNamespace": "9EpqtKQD", "targetUserId": "iB22juQ3", "tax": 5, "totalPrice": 63, "totalTax": 29, "txEndTime": "1981-04-11T00:00:00Z", "type": "lF63Mti6", "userId": "GKx44ftT", "vat": 15}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'PUwH80Qx' \
    --userId 'KiOHsHlQ' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VxRe0NQg' \
    --body '{"currencyCode": "X64NOQqG", "currencyNamespace": "1EUyqUPD", "customParameters": {"tZSEwlcq": {}, "W9lFG3MW": {}, "wgfoEIhR": {}}, "description": "kYgkSG05", "extOrderNo": "0SVrt0Z9", "extUserId": "8D0xdi7o", "itemType": "SEASON", "language": "qEVt_ASoO", "metadata": {"jbBUxKQR": "NIgZjboa", "jxq21IsY": "O2FOLMVa", "f444i52p": "Oj7hl71A"}, "notifyUrl": "bQqEQrP0", "omitNotification": true, "platform": "IH8NqZyr", "price": 20, "recurringPaymentOrderNo": "HJOKOxmE", "region": "2eMnhbu0", "returnUrl": "PG5M6tu1", "sandbox": false, "sku": "VMsuJylX", "subscriptionId": "9P4z4TDx", "title": "G6fuvMJn"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IK4iSndk' \
    --userId 'ouVvB8hw' \
    --body '{"description": "wVel1Fh5"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'uQhR38X2' \
    --body '{"code": "I9AxKv1X", "orderNo": "bUVvKZNV"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'eAU3545G' \
    --body '{"meta": {"PFdFKobk": {}, "vmdOzm2X": {}, "fhIVsTaU": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "72SqTJ9K", "namespace": "FzhIkyjH"}, "entitlement": {"entitlementId": "KLEVWT0p"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "ccRiFg5p", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "YsJUXFvs", "namespace": "0NPkPAh9"}, "entitlement": {"entitlementId": "ADVQLiKJ"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "0ShScxXu", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 91, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "jacZOlOh", "namespace": "fmKRtwiA"}, "entitlement": {"entitlementId": "wcj6UgdL"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "w3MfWhXm", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 92, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "OjrAEd7s"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '9SGPFfyW' \
    --body '{"gameSessionId": "nucgFHjw", "payload": {"JjQVAIhL": {}, "qwMVvdNt": {}, "Qs2OBJdH": {}}, "scid": "pHxdIvH6", "sessionTemplateName": "CY6JUBDE"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'AQQednak' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'pHslQQ4Y' \
    --limit '85' \
    --offset '88' \
    --sku 'DI8AfZsc' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'z9rxUmrb' \
    --excludeSystem 'true' \
    --limit '58' \
    --offset '81' \
    --subscriptionId 'dflT5jEh' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'qW3soXoR' \
    --body '{"grantDays": 45, "itemId": "a80OUFWT", "language": "9r5CL0sT", "reason": "yy0junxO", "region": "8cuW0aMb", "source": "SmjHkw1U"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'bdqf6u6I' \
    --itemId 'dRJqzkMs' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '18xfCiWJ' \
    --userId 'wLsQbLmu' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'oSXTHGtY' \
    --userId 'jWvdO5L4' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ux82bIrx' \
    --userId 'UQCl33OU' \
    --force 'false' \
    --body '{"immediate": true, "reason": "KKwurUPW"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BfiVjOZj' \
    --userId 'U50On4w9' \
    --body '{"grantDays": 22, "reason": "yJncFMBu"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T5GVIW9r' \
    --userId 'JC6N4VH6' \
    --excludeFree 'true' \
    --limit '12' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ZRlqL3of' \
    --userId 'U11Yb3YU' \
    --body '{"additionalData": {"cardSummary": "Prl6q21n"}, "authorisedTime": "1971-03-05T00:00:00Z", "chargebackReversedTime": "1975-09-21T00:00:00Z", "chargebackTime": "1971-01-23T00:00:00Z", "chargedTime": "1989-01-14T00:00:00Z", "createdTime": "1980-07-28T00:00:00Z", "currency": {"currencyCode": "YWfPDbyN", "currencySymbol": "znAEaO0F", "currencyType": "REAL", "decimals": 17, "namespace": "ym4KdbWw"}, "customParameters": {"iDLLD6Qi": {}, "frmE5KCM": {}, "RjrPo5Ae": {}}, "extOrderNo": "AXK1fYDO", "extTxId": "zelYBTiR", "extUserId": "PH5nZgDL", "issuedAt": "1977-01-17T00:00:00Z", "metadata": {"oAKnAzuX": "3lqgWgF6", "8VX76Ctw": "skLYs5re", "8klWvUal": "6cOY6WMk"}, "namespace": "whwO2l4G", "nonceStr": "wIMlQP45", "paymentMethod": "24IGcmz9", "paymentMethodFee": 25, "paymentOrderNo": "o8w8EFsS", "paymentProvider": "WXPAY", "paymentProviderFee": 19, "paymentStationUrl": "qrs92kBJ", "price": 13, "refundedTime": "1990-12-16T00:00:00Z", "salesTax": 93, "sandbox": false, "sku": "mFBHUMES", "status": "REFUND_FAILED", "statusReason": "r1cH5bMU", "subscriptionId": "x7s1rXJJ", "subtotalPrice": 7, "targetNamespace": "cydZ9jSf", "targetUserId": "UzBgoSbj", "tax": 29, "totalPrice": 30, "totalTax": 11, "txEndTime": "1978-09-24T00:00:00Z", "type": "rsJ58lUJ", "userId": "oEyf2uVJ", "vat": 36}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'rOr3XgxF' \
    --namespace $AB_NAMESPACE \
    --userId 'P38FLFni' \
    --body '{"count": 62, "orderNo": "QyqqwxBg"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '33EEqe1c' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Ast1xfNi' \
    --namespace $AB_NAMESPACE \
    --userId 'g1aWnbxe' \
    --body '{"allowOverdraft": true, "amount": 63, "balanceOrigin": "IOS", "balanceSource": "PAYMENT", "metadata": {"Me2Co3fK": {}, "xiMVZVzk": {}, "Uu4W3NRD": {}}, "reason": "DtQZfjwx"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'rpSdc9E7' \
    --namespace $AB_NAMESPACE \
    --userId 'j3JSJkll' \
    --limit '2' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'XM8g0IGQ' \
    --namespace $AB_NAMESPACE \
    --userId 'wxF0zxj0' \
    --request '{"amount": 4, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"R1gtQ49T": {}, "4qtZgpXP": {}, "ZrPXvwtz": {}}, "reason": "WCOSLsmp", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'C0HnQUFi' \
    --namespace $AB_NAMESPACE \
    --userId 'qbOHfQJG' \
    --body '{"amount": 2, "expireAt": "1986-05-19T00:00:00Z", "metadata": {"xU4vGpMW": {}, "gEeud0y8": {}, "Po6WbeZp": {}}, "origin": "Playstation", "reason": "uvKyhQnZ", "source": "TRADE"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '8SMBz4Bl' \
    --namespace $AB_NAMESPACE \
    --userId 'XUrzmYuP' \
    --request '{"amount": 3, "debitBalanceSource": "PAYMENT", "metadata": {"qVTLqwMX": {}, "WXEVqdPO": {}, "RzuPKeK6": {}}, "reason": "BBU6UT1o", "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'sun1PBs5' \
    --namespace $AB_NAMESPACE \
    --userId 'P0Sex1F2' \
    --body '{"amount": 67, "metadata": {"rjzfkNYR": {}, "NKgyDNGU": {}, "cfJlEzci": {}}, "walletPlatform": "IOS"}' \
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
    --storeId '5j2uul6j' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'M2d7pGYn' \
    --body '{"displayOrder": 53, "localizations": {"99XttlZh": {"description": "vpktSSCm", "localExt": {"0DrlbN2J": {}, "ruto736Y": {}, "zo3oqJVA": {}}, "longDescription": "5kH3UyOV", "title": "Ko8E5ri9"}, "cJB0SkPh": {"description": "3FNsmDaH", "localExt": {"zz9xA9o2": {}, "Pa8lUY6W": {}, "2jIkBRCU": {}}, "longDescription": "GDvCc0UY", "title": "Gx7FYa9v"}, "dvihuMvI": {"description": "7KT4IVa4", "localExt": {"uk6bqr5z": {}, "Y4h7jNxy": {}, "FNEVJcZB": {}}, "longDescription": "3cPV5NJg", "title": "Smjmvg2Q"}}, "name": "8fBAfRhM"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'ouHbMDgA' \
    --storeId 'eltpQqka' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'biTisinu' \
    --storeId 'WMTQZ2ZV' \
    --body '{"displayOrder": 41, "localizations": {"apXcaFSb": {"description": "VvEzvely", "localExt": {"ihgakxWF": {}, "6auaZ3wN": {}, "mMT1SFFi": {}}, "longDescription": "L9WdnE59", "title": "UbOApQWn"}, "srLg4rvC": {"description": "to8hm2g1", "localExt": {"MVXVsVWH": {}, "bc03C7Xj": {}, "xZM0SfrY": {}}, "longDescription": "yIivxhrO", "title": "OtziF05q"}, "Gk56Ff9h": {"description": "WHJsYhsj", "localExt": {"T1Qg6YaB": {}, "brVNPu1y": {}, "8hXKH8VK": {}}, "longDescription": "7nLzYC0j", "title": "MCMivMto"}}, "name": "vjsI7kq3"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '4KSk2bPj' \
    --storeId 'Zx49oQ9i' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 44, "expireAt": "1982-03-28T00:00:00Z", "metadata": {"0nuX6Tlk": {}, "SjMZ9ttB": {}, "zP9rhOEk": {}}, "origin": "Playstation", "reason": "wfVGd6jL", "source": "REFERRAL_BONUS"}, "currencyCode": "EbqPgNDS", "userIds": ["aQPP4YTN", "uOgOWl6v", "Adya5Ny6"]}, {"creditRequest": {"amount": 55, "expireAt": "1982-12-18T00:00:00Z", "metadata": {"32CbBfz6": {}, "x3XqBEZd": {}, "cwlt1BZj": {}}, "origin": "Playstation", "reason": "rncrPQtH", "source": "PURCHASE"}, "currencyCode": "IBa5F698", "userIds": ["S7eJ6OhI", "RlZkZaU2", "Bj8nIYTw"]}, {"creditRequest": {"amount": 53, "expireAt": "1983-11-17T00:00:00Z", "metadata": {"m8ZbjNRz": {}, "zhByKakB": {}, "2JBkSPof": {}}, "origin": "Other", "reason": "XrlZ7rWl", "source": "SELL_BACK"}, "currencyCode": "BInL9eL1", "userIds": ["Pdco3q6j", "ZsJODR4s", "aa28txBq"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "vT4IXt7K", "request": {"allowOverdraft": true, "amount": 52, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"i55TpmFN": {}, "wIaDWPAG": {}, "wiKUdAqy": {}}, "reason": "MeaRMYdL"}, "userIds": ["5MCUl88a", "DjHsXfSR", "CD0PcQAS"]}, {"currencyCode": "7isJTz6E", "request": {"allowOverdraft": true, "amount": 23, "balanceOrigin": "System", "balanceSource": "OTHER", "metadata": {"ihYKYaRy": {}, "FiciPFXC": {}, "TVE7G7uS": {}}, "reason": "he2bzd1W"}, "userIds": ["EKQQShSK", "bdrN8B6m", "WiKFmb6h"]}, {"currencyCode": "5wx1Nzgh", "request": {"allowOverdraft": true, "amount": 82, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"PVvI96kB": {}, "LTnEkZLz": {}, "lNUb40hR": {}}, "reason": "TXKaH2JK"}, "userIds": ["WOJsEy2U", "gjmGd2l3", "PmQBDQP3"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'TAoB6RsZ' \
    --end 'Cksj1Ok3' \
    --start '2XURW52U' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["nlYG0d2c", "6Fwvocjv", "gSRhrW57"], "apiKey": "SJskaPH3", "authoriseAsCapture": false, "blockedPaymentMethods": ["ugiSaNdi", "t70VO9BS", "R8NHCCbL"], "clientKey": "sKnOkuTA", "dropInSettings": "WxXtuyt7", "liveEndpointUrlPrefix": "S8p4meu3", "merchantAccount": "mHgECFxR", "notificationHmacKey": "9QtrBkPg", "notificationPassword": "hgTf0wdA", "notificationUsername": "9aW13BwW", "returnUrl": "KHjmNFhj", "settings": "01BOiBdq"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "tvsU9oUz", "privateKey": "r6cZsp9G", "publicKey": "dUM7Pzsm", "returnUrl": "4eevItWt"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "gsJGpnEG", "secretKey": "8lTdLTWg"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'gOweIkag' \
    --region 'uV3gJ9Zf' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "kBK1xfH6", "clientSecret": "2YzBVn0e", "returnUrl": "ZHQsvHte", "webHookId": "hqWNn0fA"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["Zvt6Re0H", "S0s1FMgm", "9sO0Yqvv"], "publishableKey": "EHvv0oxi", "secretKey": "1leBr2q7", "webhookSecret": "YhJGPz1W"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "yrvsdwPy", "key": "jlDhhY55", "mchid": "Bdz5WUb6", "returnUrl": "AX6TOHJY"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "MGu1oOrZ", "flowCompletionUrl": "OKcD9RZn", "merchantId": 43, "projectId": 59, "projectSecretKey": "w9UdZIaR"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'HCFNgiKc' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '54vzypZH' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["Jl2Y2iMr", "8bRQBt4W", "MhOl0arW"], "apiKey": "yEl4nHvs", "authoriseAsCapture": false, "blockedPaymentMethods": ["Gi9X9LlB", "YPCwYDIL", "xHuGA5rn"], "clientKey": "l5B9TGuQ", "dropInSettings": "BgUvzC83", "liveEndpointUrlPrefix": "Lr2qd8u5", "merchantAccount": "21XkdGUg", "notificationHmacKey": "oIFRydgo", "notificationPassword": "PeQPu4fA", "notificationUsername": "nRWExWHF", "returnUrl": "2e7YWoCy", "settings": "J5xicJVn"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'UrtD6M0U' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'yL0ohJyv' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "2q6CTGdR", "privateKey": "orQ1gB0k", "publicKey": "4Gigey9A", "returnUrl": "MUJaqklp"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ZHpEmKqA' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'LemkLy1L' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "Mrmwkrom", "secretKey": "ifxjHjn6"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'UNHSdTuW' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'N9dObXKY' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "ZAT0nVLM", "clientSecret": "oaUCKYoW", "returnUrl": "xRkEfIes", "webHookId": "CWBnr00E"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'RtOdkh3Z' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'I1fHQ81d' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["a00IF4cW", "ZwciQW8e", "c5Bmus9T"], "publishableKey": "z2x218YC", "secretKey": "X7TttX5Z", "webhookSecret": "ZCIUlFuq"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'OjyCPkAd' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'Vz7h4X6H' \
    --validate 'false' \
    --body '{"appId": "Ukv1gQfy", "key": "zwL1ztoM", "mchid": "DUMTb1Wo", "returnUrl": "dREU7vDh"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'YYpRDs3U' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'xBbxLLHP' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'vxdzi860' \
    --validate 'true' \
    --body '{"apiKey": "7vc4kmX9", "flowCompletionUrl": "WRDBLqrz", "merchantId": 39, "projectId": 8, "projectSecretKey": "uRQOmY8F"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'p9vpr3Dw' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'O66HEC2r' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '43' \
    --namespace 'qSGjxzCO' \
    --offset '92' \
    --region 'EeAmdg2e' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "UNATlOUM", "region": "QTcTr4ux", "sandboxTaxJarApiToken": "1vtmRPNC", "specials": ["PAYPAL", "ADYEN", "ADYEN"], "taxJarApiToken": "UsEmyxbh", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'MX8DzK53' \
    --region 'JmUNyHpZ' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'yX3khID5' \
    --body '{"aggregate": "XSOLLA", "namespace": "lVZkRO3s", "region": "MIuj9BX2", "sandboxTaxJarApiToken": "foOYhdWB", "specials": ["WALLET", "XSOLLA", "ADYEN"], "taxJarApiToken": "wJcH3Iid", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'VDTnZs41' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "csGmeAzL", "taxJarApiToken": "FobpYyBW", "taxJarEnabled": true, "taxJarProductCodesMapping": {"iLmaqm0d": "bjIHlCaa", "M5OaNfrs": "x0Bf9Ekh", "xQ4XkAJV": "PWZslVbc"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '4XhP5GVj' \
    --end 'KiV0WctN' \
    --start 'v7FtqLKQ' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'lCf2f1BY' \
    --storeId 'RdAGEQuM' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'YPL70E2k' \
    --storeId 'aPKfZWZY' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'w6bEuY8f' \
    --namespace $AB_NAMESPACE \
    --language 'rKnJu1SW' \
    --storeId 'q2FZ2G6J' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'jjfgvehm' \
    --namespace $AB_NAMESPACE \
    --language '1VwzzgIr' \
    --storeId 'r7FMeeib' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'khllNQED' \
    --namespace $AB_NAMESPACE \
    --language 'f7XMtQe7' \
    --storeId 'lXJ3Jw0P' \
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
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'FzbRwuKO' \
    --region 'XohXMMcA' \
    --storeId 'zvLnSzoP' \
    --appId 'CsmDKhjk' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'rcBIuklI' \
    --categoryPath 'UGgg3ent' \
    --features 'mnQZH4zH' \
    --includeSubCategoryItem 'false' \
    --itemType 'CODE' \
    --language 'DnupDH5B' \
    --limit '62' \
    --offset '22' \
    --region 'VJkeD4iM' \
    --sortBy '["updatedAt", "createdAt:asc"]' \
    --storeId '4NqDEdLn' \
    --tags 'KYw6oJxg' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'eWZGBcCL' \
    --region 'Uq2mFx8A' \
    --storeId 'e3omqZFt' \
    --sku 'WU5tWYA5' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'VT7q7s5u' \
    --storeId 'knsqzJZS' \
    --itemIds 'AdqJwBqd' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'QDzAVpH2' \
    --region 'QBvS3AXj' \
    --storeId '0sUGgsBZ' \
    --itemIds 'cwkQKKp3' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["27JzD16F", "z0jkd00x", "85mxuoAb"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'APP' \
    --limit '86' \
    --offset '23' \
    --region 'js1Dvskn' \
    --storeId 'yL9PenK6' \
    --keyword 'oABlUC11' \
    --language '2VmqdUxR' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '8H1VZsOP' \
    --namespace $AB_NAMESPACE \
    --language 'tJAtjCGZ' \
    --region 'dIQA7yXu' \
    --storeId '5GcfIWel' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'jqcgeKWZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'AeMbX4ox' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '3gpOp6Ow' \
    --populateBundle 'false' \
    --region '3w9OUgV4' \
    --storeId '7ZMt7UwU' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "7ScXfOBp", "paymentProvider": "WXPAY", "returnUrl": "n2E9buxt", "ui": "LQIzTAfM", "zipCode": "LHgDS5GO"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '59w0js3S' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zEmp0iTi' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XK7PWkHV' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'NiixFy48' \
    --body '{"token": "gZQdvvUv"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RL5PWnAv' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'u4Ds41Ql' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'KD9kKCCH' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'sNurEP6C' \
    --foreinginvoice 'yjCyJQtt' \
    --invoiceId 'BQr2qFDr' \
    --payload 'oN098XOG' \
    --redirectResult 'BvPQO3Ij' \
    --resultCode 'gw5sRxJp' \
    --sessionId 'bWtI5Tz3' \
    --status 'OTltBbMC' \
    --token 'tMRiAz5R' \
    --type 'RIGowxU6' \
    --userId '0OBt7uUj' \
    --orderNo 'JapsXNyE' \
    --paymentOrderNo '3hauB9qL' \
    --paymentProvider 'WALLET' \
    --returnUrl 'J1ipa7hj' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'kXG8Jgan' \
    --paymentOrderNo 'i0SaFO3C' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'xFihAH18' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'OkavifJo' \
    --limit '37' \
    --offset '8' \
    --sortBy '["rewardCode:desc", "namespace", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'gQik2Arp' \
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
    --appIds '["MfxL3O6b", "iDtZO8hf", "4EixzoRv"]' \
    --itemIds '["5NR2UhDI", "zNVyXmPZ", "Ap35fnpI"]' \
    --skus '["b2Ha1Fcs", "s0amDgjR", "voKqQvRT"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '82BRvImJ' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'OoimXwTp' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'RCLd54ld' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["h7u2f7yD", "vmPdNp5A", "3twhJEEf"]' \
    --itemIds '["sHVmh6zv", "pLtJ8uOy", "IvohFWiR"]' \
    --skus '["cUej1kpN", "4w4VIDrm", "E6HSRZvo"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "OmDZhpHb", "language": "rZ", "region": "mrtHkg14"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '6GknqPeq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'orfHVP32' \
    --body '{"epicGamesJwtToken": "zlAimYOb"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ThIlHMRQ' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'zezpNpNP' \
    --body '{"serviceLabel": 48}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'OZnNiYcc' \
    --body '{"serviceLabels": [62, 98, 78]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'RjOlOTfb' \
    --body '{"appId": "F1ynBXHJ", "steamId": "dORr1NMT"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'h1atScWR' \
    --body '{"xstsToken": "RAuh3Esa"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ULRCAcqW' \
    --appType 'DLC' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 's5qFc5kL' \
    --features '["nKUJsnZS", "QbFaOejM", "MZkBoQhJ"]' \
    --itemId '["5pbCtJTo", "HZMyoA18", "reLRX7AY"]' \
    --limit '12' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'lJcWd7z8' \
    --appId 'B2IsT7pe' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'IA8dDl4M' \
    --limit '5' \
    --offset '72' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'T1MgYLFD' \
    --availablePlatformOnly 'false' \
    --ids '["40umBIaY", "sZ3x0N3t", "PaW66sRS"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZfBCMaCW' \
    --appIds '["E78hFMVW", "lNYkJsYZ", "3EeHq0DE"]' \
    --itemIds '["jhtWEzOW", "QsQui9L2", "qlcsebyT"]' \
    --skus '["GV6y2EjX", "ud5NWnfl", "FWN055BZ"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'm4JIM9kk' \
    --appId 'B3Qsp30Z' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'mNgKP2ny' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'Ri2H6nr2' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'qKrFPAqm' \
    --ids '["FcbVayRg", "jkRAHtvb", "diosMTYr"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'hRBFX77a' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'YUrQFMNN' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Olle3JbB' \
    --namespace $AB_NAMESPACE \
    --userId 'euF0cFg9' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'yBqbz1Nc' \
    --namespace $AB_NAMESPACE \
    --userId 'jFOx5Z6G' \
    --body '{"options": ["7QDYNMOM", "6samZ8rH", "saFKfULH"], "requestId": "6Zk4wxO8", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'vDEmRrnC' \
    --namespace $AB_NAMESPACE \
    --userId 'MWcn0fhn' \
    --body '{"requestId": "ZOS0LqtH", "useCount": 40}' \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'V6zh67qc' \
    --namespace $AB_NAMESPACE \
    --userId 'uBsRURHx' \
    --body '{"useCount": 48}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'TjUgGK73' \
    --namespace $AB_NAMESPACE \
    --userId '6t1W1wL0' \
    --body '{"entitlementId": "jUYH3LdF", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'zfM7eke2' \
    --body '{"code": "Kei2rIPC", "language": "szjU", "region": "Fmlewm39"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'EWXVIlfP' \
    --body '{"excludeOldTransactions": false, "language": "MR_MxCA_IE", "productId": "bsi0lArq", "receiptData": "kEjF1uRL", "region": "rI7iF5tL", "transactionId": "NMwM1Rkk"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ztoo4Pes' \
    --body '{"epicGamesJwtToken": "jIMaQd74"}' \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'vZQqrOKk' \
    --body '{"autoAck": true, "language": "jx_MF", "orderId": "K0e8bytc", "packageName": "TWakGylL", "productId": "4z94TH0A", "purchaseTime": 22, "purchaseToken": "BfaqP9wh", "region": "5HD2Ynlo"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PINBKFDI' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'ikAHzng5' \
    --body '{"currencyCode": "UaCEHuwk", "price": 0.5391016921826287, "productId": "RK8qQjY7", "serviceLabel": 12}' \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Obo6rOme' \
    --body '{"currencyCode": "LMjipKMP", "price": 0.7633031548709316, "productId": "Ofq8Diqc", "serviceLabels": [59, 77, 22]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'al3GQtGt' \
    --body '{"appId": "cGTsQQQi", "currencyCode": "f1qxreZl", "language": "JNpt_WAxO", "price": 0.6485487749575153, "productId": "WkRsfkuK", "region": "0QgBhsi9", "steamId": "v2YEuVmP"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'YpB1l5tX' \
    --body '{"gameId": "XJr388Dv", "language": "lFLh-HCOA-TG", "region": "DHTAIir6"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ujKplTcm' \
    --body '{"currencyCode": "7IfN0ThZ", "price": 0.3608283758082472, "productId": "gCr1Vgc4", "xstsToken": "4BgUeCN4"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'aDnA1BOh' \
    --itemId 'j5UBgbUK' \
    --limit '65' \
    --offset '96' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'C2E3kdhf' \
    --body '{"currencyCode": "WqDrEkW9", "discountedPrice": 59, "ext": {"mYIOkj2i": {}, "k6Fg59O1": {}, "J0RbeMKQ": {}}, "itemId": "Pom3YxIi", "language": "RQu_yWOz-698", "price": 7, "quantity": 36, "region": "elVQ4eKY", "returnUrl": "3qrq8ZMH", "sectionId": "dKOpbdxh"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yZlg8brH' \
    --userId 'IiDhgdrV' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0usevceQ' \
    --userId 'qAaWbsNU' \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'XZGomBqK' \
    --userId 'CshVEYN8' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'qbKefGgH' \
    --userId '7D5oi09q' \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '5Za38zTx' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'AseZgm0a' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '57GKVFxn' \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '1reCML8B' \
    --autoCalcEstimatedPrice 'false' \
    --language 'RTg1K0Lb' \
    --region 'n2zesGDH' \
    --storeId 'ixyiCIui' \
    --viewId 'u6O7S9dq' \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'AqcPWbeu' \
    --chargeStatus 'SETUP' \
    --itemId 'aHjomzaT' \
    --limit '82' \
    --offset '28' \
    --sku 'Jd1RleP0' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'hz8mCGzq' \
    --body '{"currencyCode": "2FfkS3Bj", "itemId": "CwIvyae2", "language": "XZ_chKv", "region": "bl1F4dcM", "returnUrl": "XoLqHp78", "source": "mUqmuon1"}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IfEZDam3' \
    --itemId 'DGQJMyPp' \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'IpC1WVGc' \
    --userId 'lhS8MqX9' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SrcH0WLB' \
    --userId '7m8U6fFd' \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yFts5uPw' \
    --userId 'Qa5uisAC' \
    --body '{"immediate": false, "reason": "AbCYuGNs"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T4hazP9r' \
    --userId 'BuDs27bI' \
    --excludeFree 'true' \
    --limit '74' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'UTnViZRe' \
    --language 'X4qGYgQR' \
    --storeId 'RYlU4Qpu' \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '9153r1k1' \
    --namespace $AB_NAMESPACE \
    --userId 'OvkGZCFk' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'Lto6TGXU' \
    --namespace $AB_NAMESPACE \
    --userId 'jObzY7N0' \
    --limit '65' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'GIB9Cehl' \
    --baseAppId 'pKPuKWuM' \
    --categoryPath 'euib5G3B' \
    --features '2cjggSeR' \
    --includeSubCategoryItem 'false' \
    --itemName 'ctFQm3Gz' \
    --itemStatus 'ACTIVE' \
    --itemType 'APP' \
    --limit '5' \
    --offset '24' \
    --region 'ZRjPmZK2' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "createdAt:desc", "name:desc"]' \
    --storeId 'joxscFDv' \
    --tags '3asvdZ8v' \
    --targetNamespace '6LsqUFe1' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Y4TX6dd0' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '8HvSTuu8' \
    --body '{"itemIds": ["fxehp9je", "NfaSSAiA", "L5LFiBhQ"]}' \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'O1A2MdTx' \
    --body '{"entitlementCollectionId": "6JqOFRNw", "entitlementOrigin": "Nintendo", "metadata": {"ZO4y1vOf": {}, "HxFxyryJ": {}, "P0sTNLC9": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "SaiDzLV4", "namespace": "KsAOatn9"}, "item": {"itemId": "QyRPAwaH", "itemSku": "CxtYrWtb", "itemType": "PJOzbM2G"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "5wn1yxOH", "namespace": "1K7dz7nk"}, "item": {"itemId": "9ukCZc3n", "itemSku": "XrRHY5jp", "itemType": "lsuaHgPr"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "sKgUFMEl", "namespace": "eJlbxVjR"}, "item": {"itemId": "CDb2KlfZ", "itemSku": "KvmUTjQf", "itemType": "apHfS7z6"}, "quantity": 87, "type": "CURRENCY"}], "source": "DLC", "transactionId": "XO78EwD6"}' \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE