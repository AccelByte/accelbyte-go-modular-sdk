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
echo "1..436"

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
    --id 'ulpyMdHc' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'EIXFijLq' \
    --body '{"grantDays": "zMF9WoJs"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'qyeJjX9H' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'stXNDcGY' \
    --body '{"grantDays": "HkHmrz9y"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "zEvGzs8Q", "dryRun": false, "fulfillmentUrl": "xojpDe3h", "itemType": "MEDIA", "purchaseConditionUrl": "c6K9GPCr"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'WrI75otF' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'V18sPwEC' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'cyrjlk3R' \
    --body '{"clazz": "zLwWIohW", "dryRun": true, "fulfillmentUrl": "qQLm8wZY", "purchaseConditionUrl": "fSylOvNk"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'ywZ2LtGt' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'qA9dGZ83' \
    --offset '7' \
    --tag 'VuTxGt0S' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qUdSuH3r", "items": [{"extraSubscriptionDays": 49, "itemId": "CYzj87rN", "itemName": "wYHyO8fM", "quantity": 48}, {"extraSubscriptionDays": 78, "itemId": "gNyru3Lx", "itemName": "V7i4NJ5a", "quantity": 0}, {"extraSubscriptionDays": 23, "itemId": "vDncqKMa", "itemName": "1NT27Gf3", "quantity": 47}], "maxRedeemCountPerCampaignPerUser": 5, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 62, "maxSaleCount": 89, "name": "szBaYxh0", "redeemEnd": "1993-11-12T00:00:00Z", "redeemStart": "1995-10-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["HcaXJmQt", "eY0lO8gF", "u0W2Ej8A"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'JPEl9Syx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'zZchORmO' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ELmoFjmp", "items": [{"extraSubscriptionDays": 41, "itemId": "6I17vZkE", "itemName": "4kbCkpwY", "quantity": 5}, {"extraSubscriptionDays": 83, "itemId": "bdOpbPuf", "itemName": "JMFuAq0I", "quantity": 82}, {"extraSubscriptionDays": 58, "itemId": "oeNgT6UQ", "itemName": "JHv9ns0p", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 35, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 6, "maxSaleCount": 50, "name": "9DoXgCyW", "redeemEnd": "1992-10-07T00:00:00Z", "redeemStart": "1976-12-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["cTZOuqQB", "Br3Yb7Qw", "3Cd4YcD2"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'EmKd6MQf' \
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
    --body '{"appConfig": {"appName": "n37cOwRH"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "ZlH6ejfQ"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "7ojK0rOL"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "50JJzAbW"}, "extendType": "CUSTOM"}' \
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
    --storeId 'HlqROx7b' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'CICq1RlV' \
    --body '{"categoryPath": "9R680Cfz", "localizationDisplayNames": {"vkt89frp": "rMGASNUF", "6B3fKHVD": "JGnmZZOM", "6KkEv5MQ": "QTk8aNrx"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '6XWfNjUu' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '3qenNNDJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'qr6oypAk' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'fRpcX0k7' \
    --namespace $AB_NAMESPACE \
    --storeId 'gXX4Tjw6' \
    --body '{"localizationDisplayNames": {"zfKb1C1d": "54Z730Zh", "IQCnUkEe": "86tunL2Y", "bu9MsMg2": "p19kOFJ7"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'UEbO1ALX' \
    --namespace $AB_NAMESPACE \
    --storeId 'CnwDOgn1' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'ldyLCPtR' \
    --namespace $AB_NAMESPACE \
    --storeId 'Kr4asyDb' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'X7hGqhz7' \
    --namespace $AB_NAMESPACE \
    --storeId 'fNmruCu0' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'HxsdNtpA' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '17' \
    --code 'gXKC8hkU' \
    --limit '16' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'OoUcA3o2' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 99}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'JiGN24NU' \
    --namespace $AB_NAMESPACE \
    --batchNo '6' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'IHHfVCFV' \
    --namespace $AB_NAMESPACE \
    --batchNo '53' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'DgjiuF84' \
    --namespace $AB_NAMESPACE \
    --batchNo '23' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'arZsT9rS' \
    --namespace $AB_NAMESPACE \
    --code 'gKZlWgSp' \
    --limit '72' \
    --offset '25' \
    --userId 'g2wW1utw' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'jbScoHr8' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'rDUBjzhj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'zmXU8bpv' \
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
    --body '{"currencyCode": "G9KP4EEh", "currencySymbol": "haEAf2qr", "currencyType": "VIRTUAL", "decimals": 56, "localizationDescriptions": {"44H4Ye8Q": "8QgZz3gF", "9WI8Oeng": "OCI3zvN9", "ybL3fNKB": "HNxXK0xy"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Vt2BKSbi' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"EhU2ZN6I": "NpZ821Hv", "jQKemBEM": "NgppEkm0", "xoN3lbLf": "irmRDhNO"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'bjRx5MTA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'IK1UwTMi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'nnM4Xbua' \
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
    --body '{"data": [{"id": "rvfSfON5", "rewards": [{"currency": {"currencyCode": "KsisJvZz", "namespace": "ZeUcmsuI"}, "item": {"itemId": "sxmQFkBS", "itemSku": "0uNg4t4Z", "itemType": "QGytAaYC"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "nvJGBUE1", "namespace": "uGXE5rbM"}, "item": {"itemId": "SWh3Jg5w", "itemSku": "NCEigXbQ", "itemType": "nkKQox44"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "FGa1Pnxx", "namespace": "pEopf2w6"}, "item": {"itemId": "pqzeFck5", "itemSku": "QGN0e3en", "itemType": "6kcXGkxM"}, "quantity": 43, "type": "CURRENCY"}]}, {"id": "8hJqvvop", "rewards": [{"currency": {"currencyCode": "UizlFTj1", "namespace": "Q4O68wAf"}, "item": {"itemId": "kqppDs3E", "itemSku": "Q8k2fheq", "itemType": "x4YVFX7D"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "cNmuImqF", "namespace": "NPErgqow"}, "item": {"itemId": "6DZlGbQR", "itemSku": "jYvY4CLM", "itemType": "CCn48XRR"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "ioL5f0Vc", "namespace": "YZBUrfr2"}, "item": {"itemId": "EvWCbrWP", "itemSku": "ZlI406in", "itemType": "wS9Rxp58"}, "quantity": 64, "type": "CURRENCY"}]}, {"id": "Uft3iHuh", "rewards": [{"currency": {"currencyCode": "PiWH27bR", "namespace": "0EI3vDds"}, "item": {"itemId": "dAFT7TWQ", "itemSku": "9AELfG7i", "itemType": "IL5MY7em"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "sm3IVcXF", "namespace": "JjrMgA1r"}, "item": {"itemId": "NiyIrvMm", "itemSku": "5d0SRCuh", "itemType": "WCQFduDd"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "wobboEB4", "namespace": "WJomdKCm"}, "item": {"itemId": "y1wbo8OK", "itemSku": "jWaRSOwq", "itemType": "AnwM1Usd"}, "quantity": 56, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"KvKZDbnd": "8EVN5fGi", "cMNMiTVK": "fPdjOBoe", "nW0XiZi3": "RHC2RrPn"}}, {"platform": "XBOX", "platformDlcIdMap": {"6jIckdkm": "l2Cd3onD", "beqjLg5O": "hAOvlYet", "UFiv4Knm": "goyAPN6y"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"RMkJKMmv": "Z13IJMM3", "J3BXrUVU": "VKMmg5S9", "PH4tKpOv": "0xuWY3pq"}}]}' \
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
    --entitlementClazz 'CODE' \
    --entitlementName 'JOCLGORd' \
    --itemId '["xI2K4OMx", "AtKusmg5", "P29waSzU"]' \
    --limit '52' \
    --offset '60' \
    --origin 'Oculus' \
    --userId 'JLMXBOCn' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["V29nYZnV", "RTWNq8PA", "p5LUNQ45"]' \
    --limit '20' \
    --offset '59' \
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
    --body '{"entitlementGrantList": [{"endDate": "1981-08-13T00:00:00Z", "grantedCode": "T1D9RiXu", "itemId": "0KO5w1Lh", "itemNamespace": "oQY0MKbE", "language": "akW-YiMG_740", "origin": "Nintendo", "quantity": 57, "region": "jjJzO680", "source": "REDEEM_CODE", "startDate": "1996-09-01T00:00:00Z", "storeId": "ReLn8CwQ"}, {"endDate": "1998-11-03T00:00:00Z", "grantedCode": "oKZNRo6F", "itemId": "dbOJa5tT", "itemNamespace": "L4DYf4db", "language": "iD-Ia", "origin": "Nintendo", "quantity": 98, "region": "TElzs1Is", "source": "OTHER", "startDate": "1986-03-28T00:00:00Z", "storeId": "tlsKbgsL"}, {"endDate": "1987-05-09T00:00:00Z", "grantedCode": "y18zPwxz", "itemId": "FMQyABBk", "itemNamespace": "3IJLL0cH", "language": "QYBm-qBWC", "origin": "Other", "quantity": 1, "region": "srxA20Gu", "source": "PROMOTION", "startDate": "1997-09-04T00:00:00Z", "storeId": "I7AbbolV"}], "userIds": ["m3tfRsiC", "uBb2S3pv", "ruG5VItp"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["16yXTuzd", "ilhtaid3", "oa0rRdAy"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'dqvtk3cV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '87' \
    --status 'FAIL' \
    --userId 'QXN4K67Y' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '7CqvzcPg' \
    --eventType 'OTHER' \
    --externalOrderId 'nBXxlQk9' \
    --limit '32' \
    --offset '85' \
    --startTime 'kZmhPkXG' \
    --status 'IGNORED' \
    --userId 'yPpOBk1v' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "RwKGfeBu", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 57, "clientTransactionId": "5c3QecdQ"}, {"amountConsumed": 57, "clientTransactionId": "nXH9daav"}, {"amountConsumed": 2, "clientTransactionId": "wTuTP0Pt"}], "entitlementId": "twcuCera", "usageCount": 92}, {"clientTransaction": [{"amountConsumed": 19, "clientTransactionId": "msNxGrFJ"}, {"amountConsumed": 12, "clientTransactionId": "Um66yu6y"}, {"amountConsumed": 73, "clientTransactionId": "yvmmQusz"}], "entitlementId": "JFCnuJSu", "usageCount": 82}, {"clientTransaction": [{"amountConsumed": 57, "clientTransactionId": "65yGo2FE"}, {"amountConsumed": 31, "clientTransactionId": "KvWsXpqE"}, {"amountConsumed": 17, "clientTransactionId": "kXywSlOg"}], "entitlementId": "vMIxfmfv", "usageCount": 91}], "purpose": "guGJWlh1"}, "originalTitleName": "1sLfZIMo", "paymentProductSKU": "nkTnwbDt", "purchaseDate": "Y4CZCyzK", "sourceOrderItemId": "WgBkv5ZY", "titleName": "mGbfgWtv"}, "eventDomain": "CFr60y2x", "eventSource": "I3GJr7oG", "eventType": "xCx2cLw0", "eventVersion": 36, "id": "5oh1XeFx", "timestamp": "qzxZxbYC"}' \
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
    --body '{"bundleId": "4UJ4PYOQ", "password": "wnSL9ACl"}' \
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
    --body '{"sandboxId": "km7IAy2c"}' \
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
    --body '{"applicationName": "vKamxONw", "serviceAccountId": "ncmAYGQq"}' \
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
    --body '{"data": [{"itemIdentity": "8JEpkYOr", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4sL6J9Bc": "N0RGj56C", "8C4Z6wJj": "IYbENCqI", "FB4P52II": "9AGrcmZj"}}, {"itemIdentity": "EvMWVy2a", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"3rFlojlf": "glNjcPov", "0HJSFwG6": "XgZoLB1f", "kIg29UOD": "Yf2kBV4z"}}, {"itemIdentity": "IeZzupkI", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"R4o8J67x": "CXRPuffF", "4rlR964S": "1MWPXvFT", "EifbGTtL": "t7mywzZC"}}]}' \
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
    --body '{"appId": "rVPpJVIf", "appSecret": "7jfdvbnK"}' \
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
    --body '{"backOfficeServerClientId": "x51YXlks", "backOfficeServerClientSecret": "5TEoT3RY", "enableStreamJob": true, "environment": "HxsMTbTR", "streamName": "9EVqCPcq", "streamPartnerName": "ZgQDmRBv"}' \
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
    --body '{"backOfficeServerClientId": "bY88sIqL", "backOfficeServerClientSecret": "U5uKHK1o", "enableStreamJob": false, "environment": "J2KQiROt", "streamName": "YQZ5ZRM2", "streamPartnerName": "Ljm2oXLj"}' \
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
    --body '{"appId": "tb6TRjeS", "publisherAuthenticationKey": "91x05udO"}' \
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
    --body '{"clientId": "fDeWOgWq", "clientSecret": "91jV9sxO", "organizationId": "2ljxZY9d"}' \
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
    --body '{"relyingPartyCert": "VdPLuwhJ"}' \
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
    --password 'S2Xf4kSn' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'mqX8wxJL' \
    --itemId 'isyAPUEl' \
    --itemType 'MEDIA' \
    --endTime 'Lw3CdVHI' \
    --startTime 'R1MEEblW' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'k1uLjFcg' \
    --itemId 'Neivjdfb' \
    --itemType 'APP' \
    --endTime 'J7EJooJk' \
    --startTime 'ZSuU0H7M' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XxNx5c8N' \
    --body '{"categoryPath": "qApzy9eA", "targetItemId": "VlbjZ90t", "targetNamespace": "LxfaaFSB"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'S1C0Bbhi' \
    --body '{"appId": "IcbbK6hV", "appType": "DEMO", "baseAppId": "NQXKgfOb", "boothName": "R23kawGs", "categoryPath": "btoxBR1I", "clazz": "gqo7qCnt", "displayOrder": 73, "entitlementType": "DURABLE", "ext": {"QTY06MBA": {}, "XCtdajPq": {}, "PFO4U9Cv": {}}, "features": ["KAiLLcwL", "4uorrTwq", "47Ni1szy"], "flexible": true, "images": [{"as": "2M98JbQF", "caption": "vluCWzzl", "height": 99, "imageUrl": "GG49iPUe", "smallImageUrl": "9ybz3pN7", "width": 35}, {"as": "2Dm6qZSz", "caption": "CNw43V7z", "height": 64, "imageUrl": "RH9BWK2Y", "smallImageUrl": "P4sqcjYm", "width": 58}, {"as": "I2NcVBa6", "caption": "66njmCPd", "height": 58, "imageUrl": "zmmkoCg7", "smallImageUrl": "73dUTxxD", "width": 10}], "itemIds": ["TX5j0AXp", "2d6zzOUQ", "kPW0dTsb"], "itemQty": {"2GW1Gx4S": 44, "O3mEaY2E": 23, "sG07fBZA": 22}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"bjIEUa8w": {"description": "s2mII6BX", "localExt": {"KRiDE6wB": {}, "sYIbuYZ4": {}, "QBuFdlYw": {}}, "longDescription": "17XMZBV0", "title": "B6zj2RZj"}, "0F27AMUi": {"description": "xPxejVkc", "localExt": {"PpxxVGQF": {}, "eetDKDaX": {}, "GWAH8wGd": {}}, "longDescription": "dJVeYrig", "title": "ONBc9sut"}, "xH5HudHQ": {"description": "tmqpIf7e", "localExt": {"6GVxYyz2": {}, "mnJSu7Jj": {}, "99VBUJdc": {}}, "longDescription": "tdVt0WFH", "title": "sRj92BL0"}}, "lootBoxConfig": {"rewardCount": 95, "rewards": [{"lootBoxItems": [{"count": 15, "duration": 30, "endDate": "1971-10-23T00:00:00Z", "itemId": "scu8z3Bs", "itemSku": "DENjsnmi", "itemType": "uPwkeraU"}, {"count": 60, "duration": 57, "endDate": "1973-08-13T00:00:00Z", "itemId": "JeTCNXoe", "itemSku": "XebgpX6P", "itemType": "gsguhKHr"}, {"count": 16, "duration": 33, "endDate": "1973-09-22T00:00:00Z", "itemId": "4CueFzDd", "itemSku": "lDWWUmwG", "itemType": "BMaBJLdI"}], "name": "WTrVi00s", "odds": 0.7469864229867595, "type": "PROBABILITY_GROUP", "weight": 57}, {"lootBoxItems": [{"count": 49, "duration": 82, "endDate": "1994-07-31T00:00:00Z", "itemId": "kYjgECoh", "itemSku": "4iE1KaEz", "itemType": "VnHa5AyN"}, {"count": 95, "duration": 39, "endDate": "1998-04-22T00:00:00Z", "itemId": "USXqzbYa", "itemSku": "ozMp0eHb", "itemType": "Ob9SfbGd"}, {"count": 4, "duration": 57, "endDate": "1992-12-29T00:00:00Z", "itemId": "Vs9zTIAr", "itemSku": "qGbtzVSl", "itemType": "Bw9PlLlj"}], "name": "GFVwQr01", "odds": 0.6799993035449512, "type": "REWARD_GROUP", "weight": 77}, {"lootBoxItems": [{"count": 58, "duration": 97, "endDate": "1987-02-12T00:00:00Z", "itemId": "kfdZqaaZ", "itemSku": "YQA5ZkrV", "itemType": "r8KQ0aST"}, {"count": 100, "duration": 27, "endDate": "1991-03-09T00:00:00Z", "itemId": "mM9i2tX2", "itemSku": "isJ6x5qz", "itemType": "C9VNtPNO"}, {"count": 43, "duration": 9, "endDate": "1975-03-21T00:00:00Z", "itemId": "c1IGVCLo", "itemSku": "kSuCZARz", "itemType": "ToeEG0JD"}], "name": "IGAZA8l6", "odds": 0.9682968406443851, "type": "PROBABILITY_GROUP", "weight": 46}], "rollFunction": "CUSTOM"}, "maxCount": 64, "maxCountPerUser": 40, "name": "c8UID8UJ", "optionBoxConfig": {"boxItems": [{"count": 14, "duration": 47, "endDate": "1974-02-21T00:00:00Z", "itemId": "YQjgEUOs", "itemSku": "gITeh4P7", "itemType": "zxLmx1Z7"}, {"count": 47, "duration": 19, "endDate": "1990-02-19T00:00:00Z", "itemId": "8B3DoDez", "itemSku": "4t6b3GYd", "itemType": "f1JmKp5a"}, {"count": 62, "duration": 79, "endDate": "1995-05-29T00:00:00Z", "itemId": "9kUZXAdm", "itemSku": "kuWT72mp", "itemType": "Bohd5KmS"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 100, "fixedTrialCycles": 65, "graceDays": 8}, "regionData": {"GTUykqXq": [{"currencyCode": "oG1Voc6t", "currencyNamespace": "X6y2FVUQ", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1981-10-26T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1982-08-31T00:00:00Z", "expireAt": "1997-06-10T00:00:00Z", "price": 17, "purchaseAt": "1986-09-14T00:00:00Z", "trialPrice": 88}, {"currencyCode": "StmXmKtn", "currencyNamespace": "U8fxIHLz", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1981-02-27T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1999-12-02T00:00:00Z", "expireAt": "1988-10-01T00:00:00Z", "price": 31, "purchaseAt": "1990-05-02T00:00:00Z", "trialPrice": 1}, {"currencyCode": "q9Spvqpl", "currencyNamespace": "aGJrmcJg", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1983-05-15T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1971-07-06T00:00:00Z", "expireAt": "1994-12-20T00:00:00Z", "price": 83, "purchaseAt": "1986-11-15T00:00:00Z", "trialPrice": 19}], "frMkEfJc": [{"currencyCode": "nEezZJaW", "currencyNamespace": "tTe4qep2", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1997-11-06T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1972-02-14T00:00:00Z", "expireAt": "1987-07-02T00:00:00Z", "price": 19, "purchaseAt": "1996-10-13T00:00:00Z", "trialPrice": 82}, {"currencyCode": "6Yw9Hawk", "currencyNamespace": "98iXzwXF", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1977-04-18T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1971-11-21T00:00:00Z", "expireAt": "1986-06-05T00:00:00Z", "price": 17, "purchaseAt": "1989-08-22T00:00:00Z", "trialPrice": 98}, {"currencyCode": "7l8cZmVV", "currencyNamespace": "t3e4Jh4m", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1982-10-20T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1999-12-15T00:00:00Z", "expireAt": "1972-08-06T00:00:00Z", "price": 41, "purchaseAt": "1994-02-09T00:00:00Z", "trialPrice": 81}], "arYH3wJO": [{"currencyCode": "2QW8HNk3", "currencyNamespace": "PcTuJ0rt", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1998-04-01T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1980-10-09T00:00:00Z", "expireAt": "1991-09-20T00:00:00Z", "price": 62, "purchaseAt": "1985-12-18T00:00:00Z", "trialPrice": 7}, {"currencyCode": "mTL9HjHM", "currencyNamespace": "qjgVrU3x", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1979-08-02T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1995-06-22T00:00:00Z", "expireAt": "1971-12-23T00:00:00Z", "price": 90, "purchaseAt": "1994-11-15T00:00:00Z", "trialPrice": 93}, {"currencyCode": "0ar5woW1", "currencyNamespace": "HmuO3qpW", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1997-08-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1992-12-25T00:00:00Z", "expireAt": "1992-07-02T00:00:00Z", "price": 53, "purchaseAt": "1990-03-14T00:00:00Z", "trialPrice": 21}]}, "saleConfig": {"currencyCode": "nh7s2bXp", "price": 66}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "QWgQoJoy", "stackable": false, "status": "ACTIVE", "tags": ["YByEqg9Q", "Y5NpB12J", "r9Y1Y3a5"], "targetCurrencyCode": "tI2caDH1", "targetNamespace": "nHzubkAt", "thumbnailUrl": "fvEYAvLp", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '3FVKvWUT' \
    --appId 'omkjAOVU' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'M9dpC0Ac' \
    --baseAppId 'cCyFXs22' \
    --categoryPath 'XneynlU5' \
    --features 'NlEl16dH' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '36' \
    --offset '92' \
    --region 'tSaoWm46' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "name:asc"]' \
    --storeId 'Ew9CooL8' \
    --tags 'DCIYTwEw' \
    --targetNamespace 'xTbj3HYz' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["iOXxDGAU", "XekDpjXh", "7haFhXSc"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'UNhRp6QJ' \
    --itemIds '2tXzeBLs' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'EqXhGMy4' \
    --sku 'mtOCGcSH' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'YSLsa1Al' \
    --populateBundle 'false' \
    --region '6kp2D8cp' \
    --storeId 'ewWn6GN8' \
    --sku 'txoF0eav' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'LhSUQkb8' \
    --storeId 'IqUrzGjg' \
    --itemIds 'eAsUvPVf' \
    --userId 'd9kH51kj' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Uf8OGfo4' \
    --sku 'YU4HWEvf' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["KPvAZket", "pmgI6b2m", "b6w4jH30"]' \
    --storeId 'g75nSrBN' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Tj2gpFIQ' \
    --region 'wzzOgY45' \
    --storeId 'K91hfd8Z' \
    --itemIds 'dVmOcxSA' \
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
    --userId 'aKhKxuTG' \
    --body '{"itemIds": ["VYhBngNv", "O0vaZxkP", "yJq3RyC2"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'ORIE7mJM' \
    --body '{"changes": [{"itemIdentities": ["seN3sSGJ", "9X57u9c3", "ikDjJIHP"], "itemIdentityType": "ITEM_SKU", "regionData": {"HZUBNsqp": [{"currencyCode": "je7Ds9eW", "currencyNamespace": "YmRCJ12k", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1974-06-19T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1988-10-17T00:00:00Z", "discountedPrice": 32, "expireAt": "1984-08-13T00:00:00Z", "price": 21, "purchaseAt": "1972-03-04T00:00:00Z", "trialPrice": 24}, {"currencyCode": "JRzo3li3", "currencyNamespace": "PpRqkQ2H", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1989-02-10T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1991-12-09T00:00:00Z", "discountedPrice": 9, "expireAt": "1985-02-18T00:00:00Z", "price": 31, "purchaseAt": "1992-03-05T00:00:00Z", "trialPrice": 39}, {"currencyCode": "4FAbKJzI", "currencyNamespace": "3zQgrqPe", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1973-04-03T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1987-11-20T00:00:00Z", "discountedPrice": 50, "expireAt": "1974-01-03T00:00:00Z", "price": 66, "purchaseAt": "1994-03-15T00:00:00Z", "trialPrice": 84}], "2IRsga6f": [{"currencyCode": "93zOjXRk", "currencyNamespace": "4pyNhc44", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1983-06-01T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1979-04-15T00:00:00Z", "discountedPrice": 67, "expireAt": "1972-01-10T00:00:00Z", "price": 94, "purchaseAt": "1985-11-02T00:00:00Z", "trialPrice": 0}, {"currencyCode": "iRPakwi0", "currencyNamespace": "F184W7hh", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1989-04-30T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1998-04-26T00:00:00Z", "discountedPrice": 7, "expireAt": "1986-02-10T00:00:00Z", "price": 89, "purchaseAt": "1977-10-25T00:00:00Z", "trialPrice": 0}, {"currencyCode": "4AAFmmfq", "currencyNamespace": "O3D7mFQH", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1997-01-16T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1988-11-27T00:00:00Z", "discountedPrice": 9, "expireAt": "1998-08-05T00:00:00Z", "price": 65, "purchaseAt": "1980-07-18T00:00:00Z", "trialPrice": 38}], "iPtpFSNB": [{"currencyCode": "VzNBJ2eD", "currencyNamespace": "g8UItwjL", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1972-01-13T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-04-27T00:00:00Z", "discountedPrice": 17, "expireAt": "1995-08-02T00:00:00Z", "price": 39, "purchaseAt": "1991-12-23T00:00:00Z", "trialPrice": 22}, {"currencyCode": "vpXTHcfj", "currencyNamespace": "PgP2uGUp", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1981-08-13T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1980-02-08T00:00:00Z", "discountedPrice": 24, "expireAt": "1987-07-16T00:00:00Z", "price": 94, "purchaseAt": "1990-12-18T00:00:00Z", "trialPrice": 44}, {"currencyCode": "Ty8v4h29", "currencyNamespace": "3c8Q5jKM", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1979-10-21T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1985-05-12T00:00:00Z", "discountedPrice": 31, "expireAt": "1974-11-16T00:00:00Z", "price": 52, "purchaseAt": "1979-07-02T00:00:00Z", "trialPrice": 94}]}}, {"itemIdentities": ["Yobru1XG", "OTMNy2JH", "B2daV4gn"], "itemIdentityType": "ITEM_ID", "regionData": {"gZ817qto": [{"currencyCode": "hL6KQpdc", "currencyNamespace": "THPTc06B", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1989-02-04T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1971-04-05T00:00:00Z", "discountedPrice": 76, "expireAt": "1979-05-08T00:00:00Z", "price": 52, "purchaseAt": "1990-04-30T00:00:00Z", "trialPrice": 82}, {"currencyCode": "GadcTbvj", "currencyNamespace": "b9DoU5D9", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1974-12-13T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1976-01-20T00:00:00Z", "discountedPrice": 50, "expireAt": "1977-10-11T00:00:00Z", "price": 24, "purchaseAt": "1996-10-16T00:00:00Z", "trialPrice": 52}, {"currencyCode": "SMHiaGxR", "currencyNamespace": "NgW9IJQ8", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1979-08-18T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1979-08-10T00:00:00Z", "discountedPrice": 26, "expireAt": "1996-04-13T00:00:00Z", "price": 65, "purchaseAt": "1983-06-03T00:00:00Z", "trialPrice": 39}], "ztxIrrSL": [{"currencyCode": "zz17raqi", "currencyNamespace": "Xst4Oe71", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1978-04-28T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1977-02-23T00:00:00Z", "discountedPrice": 34, "expireAt": "1997-09-16T00:00:00Z", "price": 1, "purchaseAt": "1999-07-31T00:00:00Z", "trialPrice": 79}, {"currencyCode": "Al43FZ1a", "currencyNamespace": "W4jv8xx0", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1993-02-07T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1994-01-09T00:00:00Z", "discountedPrice": 82, "expireAt": "1989-04-20T00:00:00Z", "price": 27, "purchaseAt": "1985-09-11T00:00:00Z", "trialPrice": 75}, {"currencyCode": "PtQ8Bm35", "currencyNamespace": "uUTx0Zyg", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1973-02-02T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1993-04-02T00:00:00Z", "discountedPrice": 71, "expireAt": "1981-12-29T00:00:00Z", "price": 70, "purchaseAt": "1990-02-26T00:00:00Z", "trialPrice": 92}], "a9v2foWk": [{"currencyCode": "i1S3T5Bh", "currencyNamespace": "UzTx2iVx", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1990-02-19T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1996-01-05T00:00:00Z", "discountedPrice": 100, "expireAt": "1990-07-10T00:00:00Z", "price": 52, "purchaseAt": "1980-05-01T00:00:00Z", "trialPrice": 80}, {"currencyCode": "8x3iTxuX", "currencyNamespace": "mhkMbWCF", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1995-07-24T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1985-04-17T00:00:00Z", "discountedPrice": 94, "expireAt": "1986-09-05T00:00:00Z", "price": 73, "purchaseAt": "1997-10-04T00:00:00Z", "trialPrice": 62}, {"currencyCode": "cYPcA84U", "currencyNamespace": "f6W3CXih", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1973-07-25T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1993-10-04T00:00:00Z", "discountedPrice": 61, "expireAt": "1998-08-13T00:00:00Z", "price": 93, "purchaseAt": "1975-11-18T00:00:00Z", "trialPrice": 90}]}}, {"itemIdentities": ["5oXeAydL", "ZPTzqGew", "oetgsOMD"], "itemIdentityType": "ITEM_SKU", "regionData": {"5bJv8Vz5": [{"currencyCode": "R6IL0Xlv", "currencyNamespace": "OcAIliaS", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1974-11-03T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1980-08-30T00:00:00Z", "discountedPrice": 27, "expireAt": "1977-12-10T00:00:00Z", "price": 75, "purchaseAt": "1986-12-12T00:00:00Z", "trialPrice": 36}, {"currencyCode": "M4Qy8jNO", "currencyNamespace": "fFK4RR8u", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1989-08-09T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1993-02-26T00:00:00Z", "discountedPrice": 37, "expireAt": "1976-07-22T00:00:00Z", "price": 44, "purchaseAt": "1972-03-23T00:00:00Z", "trialPrice": 4}, {"currencyCode": "Yt6ZEZHu", "currencyNamespace": "BBjWudYN", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1987-05-14T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1989-07-27T00:00:00Z", "discountedPrice": 1, "expireAt": "1993-11-26T00:00:00Z", "price": 20, "purchaseAt": "1985-09-05T00:00:00Z", "trialPrice": 84}], "IDmZPFi4": [{"currencyCode": "CvuWOnX4", "currencyNamespace": "teqQX1Ui", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1978-02-27T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1985-09-25T00:00:00Z", "discountedPrice": 71, "expireAt": "1984-09-06T00:00:00Z", "price": 21, "purchaseAt": "1997-11-01T00:00:00Z", "trialPrice": 100}, {"currencyCode": "9ZnuwTgW", "currencyNamespace": "JuPcl2xR", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1977-05-27T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1989-11-16T00:00:00Z", "discountedPrice": 81, "expireAt": "1997-10-06T00:00:00Z", "price": 77, "purchaseAt": "1973-08-24T00:00:00Z", "trialPrice": 92}, {"currencyCode": "0LGQpuGf", "currencyNamespace": "MAfgqdNx", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1997-11-25T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-11-03T00:00:00Z", "discountedPrice": 63, "expireAt": "1982-08-21T00:00:00Z", "price": 81, "purchaseAt": "1980-01-13T00:00:00Z", "trialPrice": 15}], "rmtP9Cr3": [{"currencyCode": "qUEMVB9T", "currencyNamespace": "nCvMh5iY", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1982-12-27T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1984-10-05T00:00:00Z", "discountedPrice": 90, "expireAt": "1983-06-11T00:00:00Z", "price": 89, "purchaseAt": "1972-06-29T00:00:00Z", "trialPrice": 21}, {"currencyCode": "of6GZVt1", "currencyNamespace": "WllYV5Mw", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1993-09-07T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1998-09-18T00:00:00Z", "discountedPrice": 69, "expireAt": "1975-08-04T00:00:00Z", "price": 94, "purchaseAt": "1978-05-18T00:00:00Z", "trialPrice": 99}, {"currencyCode": "laRjCF4F", "currencyNamespace": "ZpX0XRhc", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1993-03-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1994-09-24T00:00:00Z", "discountedPrice": 88, "expireAt": "1979-11-20T00:00:00Z", "price": 8, "purchaseAt": "1981-12-29T00:00:00Z", "trialPrice": 75}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'LOOTBOX' \
    --limit '75' \
    --offset '73' \
    --sortBy 'eH5eEd6G' \
    --storeId 'jNuOU404' \
    --keyword '47RT63Fh' \
    --language 'kbkP8KFB' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '26' \
    --offset '75' \
    --sortBy '["updatedAt:desc", "displayOrder:desc", "name"]' \
    --storeId 'fBNNN02v' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'qGcWE0RW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'RHRYTSNP' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '7v6zK9gk' \
    --namespace $AB_NAMESPACE \
    --storeId 'jw8nFjyM' \
    --body '{"appId": "2JOJzLYD", "appType": "SOFTWARE", "baseAppId": "lOWrQEWt", "boothName": "raAIJA1s", "categoryPath": "A84LKY9k", "clazz": "kTIEp0Cq", "displayOrder": 61, "entitlementType": "DURABLE", "ext": {"uUGzybTL": {}, "RD66LRT9": {}, "hXt25lv1": {}}, "features": ["QleL7mbX", "fkmr4PaO", "AykPlxSx"], "flexible": false, "images": [{"as": "459qHXPu", "caption": "SKhjldgC", "height": 17, "imageUrl": "iFI2I6yo", "smallImageUrl": "AVfIaqJD", "width": 30}, {"as": "Ax8TCtx9", "caption": "JshblUKm", "height": 39, "imageUrl": "e84N0UcA", "smallImageUrl": "ys7cofhJ", "width": 100}, {"as": "0zPxWHez", "caption": "DsJZnEdI", "height": 68, "imageUrl": "z2uK5Jri", "smallImageUrl": "Z67gaULd", "width": 71}], "itemIds": ["h0Efhqvs", "8um0aUhb", "L1V2dRxu"], "itemQty": {"nzbCqfYE": 64, "hmgM3foZ": 38, "tRkyIOcw": 70}, "itemType": "EXTENSION", "listable": true, "localizations": {"qolQ5Q1J": {"description": "B3OZh7Sn", "localExt": {"RHM48HmO": {}, "NKMFfuky": {}, "Ajq69BfP": {}}, "longDescription": "lPdhgFyW", "title": "ZC7mqQNv"}, "pkoMjRtl": {"description": "nbfXu1LU", "localExt": {"dIwr0mHT": {}, "dzwBBoNF": {}, "QxFKaYxf": {}}, "longDescription": "t7bzsX1H", "title": "Nhxo5lix"}, "ArCcEMXN": {"description": "GA5MWwYW", "localExt": {"VVEZkCNy": {}, "FN6A1xis": {}, "W0SlBIp0": {}}, "longDescription": "eqIiFjNJ", "title": "vnVKFKHZ"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 16, "duration": 60, "endDate": "1994-01-23T00:00:00Z", "itemId": "ujs44nZQ", "itemSku": "H8sSpgQg", "itemType": "0huqfORi"}, {"count": 72, "duration": 57, "endDate": "1986-11-13T00:00:00Z", "itemId": "49fFOeI6", "itemSku": "oCIPYP8j", "itemType": "iC8gjtvZ"}, {"count": 26, "duration": 57, "endDate": "1972-11-19T00:00:00Z", "itemId": "q7DNA9PN", "itemSku": "VjpG4Dzf", "itemType": "w6Y0d6MW"}], "name": "ofbcNrd5", "odds": 0.8816183791901576, "type": "REWARD", "weight": 19}, {"lootBoxItems": [{"count": 62, "duration": 83, "endDate": "1984-06-09T00:00:00Z", "itemId": "a6vJScyY", "itemSku": "7Q21kkHx", "itemType": "46R8zkrr"}, {"count": 70, "duration": 50, "endDate": "1971-08-30T00:00:00Z", "itemId": "TiYi6b6i", "itemSku": "r5sfMi4y", "itemType": "ZIBsOQ4Z"}, {"count": 42, "duration": 60, "endDate": "1993-10-14T00:00:00Z", "itemId": "fxtjYl8G", "itemSku": "Ymj0VuII", "itemType": "R1QK0cav"}], "name": "pVqRpR2J", "odds": 0.49818252706738353, "type": "PROBABILITY_GROUP", "weight": 12}, {"lootBoxItems": [{"count": 30, "duration": 32, "endDate": "1976-12-26T00:00:00Z", "itemId": "zux7VBA0", "itemSku": "7lKJAxGx", "itemType": "7qXPi1nJ"}, {"count": 12, "duration": 46, "endDate": "1981-07-28T00:00:00Z", "itemId": "N7Saumgh", "itemSku": "cqVds96q", "itemType": "aKupKSK5"}, {"count": 30, "duration": 64, "endDate": "1991-04-05T00:00:00Z", "itemId": "wKasxJ6G", "itemSku": "0zXa2UIe", "itemType": "iKH2SGc1"}], "name": "kZZVN68F", "odds": 0.5501376020857196, "type": "REWARD", "weight": 85}], "rollFunction": "CUSTOM"}, "maxCount": 56, "maxCountPerUser": 48, "name": "8nc23zU9", "optionBoxConfig": {"boxItems": [{"count": 78, "duration": 81, "endDate": "1991-05-18T00:00:00Z", "itemId": "vwBvhcR5", "itemSku": "Qc911a4m", "itemType": "k9OuEPXI"}, {"count": 82, "duration": 47, "endDate": "1997-04-08T00:00:00Z", "itemId": "rMBnrl9x", "itemSku": "oDa5N2UX", "itemType": "kAA4nKfV"}, {"count": 76, "duration": 67, "endDate": "1979-04-15T00:00:00Z", "itemId": "oYjgkFGd", "itemSku": "3rLj80jS", "itemType": "0BCCK5B9"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 18, "fixedTrialCycles": 0, "graceDays": 62}, "regionData": {"AYDYl6GY": [{"currencyCode": "ITsRLNXb", "currencyNamespace": "TbYB1Jmt", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1984-05-24T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1993-03-25T00:00:00Z", "expireAt": "1982-04-14T00:00:00Z", "price": 35, "purchaseAt": "1977-02-09T00:00:00Z", "trialPrice": 14}, {"currencyCode": "u07MzyIJ", "currencyNamespace": "f66EN9u0", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1978-10-15T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1999-04-19T00:00:00Z", "expireAt": "1980-07-31T00:00:00Z", "price": 53, "purchaseAt": "1981-01-09T00:00:00Z", "trialPrice": 79}, {"currencyCode": "wrIPtHju", "currencyNamespace": "k5UTMWu0", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1997-06-03T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1972-07-15T00:00:00Z", "expireAt": "1984-10-24T00:00:00Z", "price": 14, "purchaseAt": "1993-12-05T00:00:00Z", "trialPrice": 57}], "JbDIUjuf": [{"currencyCode": "zAObKQKN", "currencyNamespace": "iFbbgiDp", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1985-09-24T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1983-12-29T00:00:00Z", "expireAt": "1992-11-17T00:00:00Z", "price": 61, "purchaseAt": "1994-10-12T00:00:00Z", "trialPrice": 78}, {"currencyCode": "P6OMC8m1", "currencyNamespace": "mgh6bxtv", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1981-11-12T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1972-04-06T00:00:00Z", "expireAt": "1975-05-20T00:00:00Z", "price": 8, "purchaseAt": "1981-09-11T00:00:00Z", "trialPrice": 71}, {"currencyCode": "ytxOshx4", "currencyNamespace": "sVt2nMmk", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1974-10-09T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1996-12-10T00:00:00Z", "expireAt": "1976-01-16T00:00:00Z", "price": 69, "purchaseAt": "1993-08-24T00:00:00Z", "trialPrice": 90}], "P7pHzEio": [{"currencyCode": "nYUIxLUD", "currencyNamespace": "nfEryOzo", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1975-09-11T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1981-05-25T00:00:00Z", "expireAt": "1979-06-01T00:00:00Z", "price": 0, "purchaseAt": "1983-10-01T00:00:00Z", "trialPrice": 19}, {"currencyCode": "Gh3QSTFo", "currencyNamespace": "LaXzsgRv", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1971-05-02T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1995-01-06T00:00:00Z", "expireAt": "1973-07-05T00:00:00Z", "price": 23, "purchaseAt": "1997-04-07T00:00:00Z", "trialPrice": 4}, {"currencyCode": "0Xes02PB", "currencyNamespace": "Q8WKCh1V", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1999-01-14T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1992-11-11T00:00:00Z", "expireAt": "1997-04-21T00:00:00Z", "price": 4, "purchaseAt": "1995-01-22T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "BaZPggDV", "price": 79}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "jpJYwFLa", "stackable": false, "status": "INACTIVE", "tags": ["5SpZ2Fm5", "ixQzpuZK", "XSLWXNc0"], "targetCurrencyCode": "dedPcytU", "targetNamespace": "CfZ8jQXg", "thumbnailUrl": "k9CTfZzf", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'bp10uHEc' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'VpZV8S6T' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'heQm3WGX' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 63, "orderNo": "Uc0u7CD7"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'oKBcoVIm' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'afe3GuVB' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'qZBnbI3z' \
    --namespace $AB_NAMESPACE \
    --storeId 'ek1BIGOQ' \
    --body '{"carousel": [{"alt": "jvBxiyaa", "previewUrl": "VF87MMDK", "thumbnailUrl": "usnRdo3E", "type": "video", "url": "zfLtZ1mH", "videoSource": "youtube"}, {"alt": "rPZUhKUh", "previewUrl": "OZpalPRB", "thumbnailUrl": "2zkVIKpv", "type": "video", "url": "qzRSyxxz", "videoSource": "vimeo"}, {"alt": "HNng0xw2", "previewUrl": "FF2FS0Pa", "thumbnailUrl": "vJkuVaNU", "type": "image", "url": "EP7zazIn", "videoSource": "vimeo"}], "developer": "1gXEqM03", "forumUrl": "eri6WH5R", "genres": ["Simulation", "Action", "Indie"], "localizations": {"jpBEGWSk": {"announcement": "L92cDei7", "slogan": "YoY1w7a1"}, "l2iD5mkW": {"announcement": "Ba7hVw3X", "slogan": "EOtmpwEn"}, "ezhLXUvT": {"announcement": "17bgwCbS", "slogan": "2SpJWFA8"}}, "platformRequirements": {"R5luVSd8": [{"additionals": "xCrXqyk9", "directXVersion": "hj5Z4pXr", "diskSpace": "WsFHM50F", "graphics": "PO655hvq", "label": "hxW6ZR2u", "osVersion": "OX8BXmu6", "processor": "IXBb6aUI", "ram": "IGYWqwwF", "soundCard": "WXNVumYx"}, {"additionals": "nyvPJWJR", "directXVersion": "I3huNbHs", "diskSpace": "wg2rgAYD", "graphics": "SeD3PtLC", "label": "vsrz1OMC", "osVersion": "KV9LCq9J", "processor": "y9GgpUta", "ram": "URLrHXTa", "soundCard": "LDzhbJ5B"}, {"additionals": "oMjXgAG7", "directXVersion": "5mzweVtb", "diskSpace": "ByrmTA7K", "graphics": "X8teTEpu", "label": "sIs0vaYZ", "osVersion": "eliY9LiU", "processor": "2s5p2z4f", "ram": "qwy9f3fN", "soundCard": "KEz7ZerW"}], "kJzqYvsT": [{"additionals": "JxYJcl3m", "directXVersion": "H7g0AIjz", "diskSpace": "mOtwFsNU", "graphics": "ZxlJa0EU", "label": "YRuesR9L", "osVersion": "jMghcU6D", "processor": "NCXmdmrp", "ram": "y8nlWxQo", "soundCard": "Ct84Iq7T"}, {"additionals": "i5Aeqsv6", "directXVersion": "5eMRgmCK", "diskSpace": "dr6Hp2xX", "graphics": "zdXd1Pxi", "label": "kczTbuJY", "osVersion": "HrkcX06T", "processor": "1xFv6RQe", "ram": "vwWa5ap2", "soundCard": "mSFI8jgk"}, {"additionals": "sEOuapNi", "directXVersion": "FN32axuI", "diskSpace": "ajmkVkvq", "graphics": "1A6pPxYN", "label": "axxaKPm3", "osVersion": "skzQJqeU", "processor": "R3ozps2r", "ram": "KbUcEddo", "soundCard": "ul54fXLo"}], "GseFTSuP": [{"additionals": "6A47bJNs", "directXVersion": "tGayE1jW", "diskSpace": "i9UkSfw3", "graphics": "MFfIZJv5", "label": "XvoUK9bo", "osVersion": "yYcRIFes", "processor": "6xmPAx2N", "ram": "5nDnKKgq", "soundCard": "ml0iOK48"}, {"additionals": "AeFyg2pv", "directXVersion": "M70lmZ5U", "diskSpace": "rjQAzUWV", "graphics": "JJpV7THN", "label": "a2Qswixx", "osVersion": "eR17mz9i", "processor": "9hqqoM4b", "ram": "EwxwrhkL", "soundCard": "22HlV6GZ"}, {"additionals": "BPq6FpY3", "directXVersion": "HAOxSTAq", "diskSpace": "5ydkVVdX", "graphics": "4wciJsbY", "label": "pNwS3mUG", "osVersion": "mgDmyK8D", "processor": "76nlPGRS", "ram": "3A8Npluv", "soundCard": "bqQrL87g"}]}, "platforms": ["Linux", "Linux", "MacOS"], "players": ["CrossPlatformMulti", "Single", "Coop"], "primaryGenre": "RPG", "publisher": "cLrtUoYr", "releaseDate": "1995-04-17T00:00:00Z", "websiteUrl": "zUUb83XQ"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'QoBATU3Z' \
    --namespace $AB_NAMESPACE \
    --storeId 'js3qOIfF' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'z8XiVLr7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '8ny1BqQU' \
    --namespace $AB_NAMESPACE \
    --storeId 'RaBfci3D' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'GiNwxC41' \
    --itemId 'jf7tIjOh' \
    --namespace $AB_NAMESPACE \
    --storeId 'mYni2eNq' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Fgnoutg4' \
    --itemId 'K1SXuKY7' \
    --namespace $AB_NAMESPACE \
    --storeId 'VNiFek2m' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'aUfbOyko' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'nWS4nlhs' \
    --populateBundle 'true' \
    --region 'kRbhBESw' \
    --storeId 'ctc6Jfdc' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'oxgQ7Ynl' \
    --namespace $AB_NAMESPACE \
    --storeId '7zVaxsm8' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 25, "comparison": "isNot", "name": "44Hys2J7", "predicateType": "SeasonPassPredicate", "value": "qOwy68wY", "values": ["WsT8B3yu", "8UIlPD0Q", "HMOt30eN"]}, {"anyOf": 31, "comparison": "isLessThan", "name": "AZ3BX1PT", "predicateType": "SeasonPassPredicate", "value": "cGLVG9BV", "values": ["d94PETIJ", "6GzwttuN", "IM3lTm5v"]}, {"anyOf": 49, "comparison": "isLessThanOrEqual", "name": "KwDgCqsH", "predicateType": "SeasonPassPredicate", "value": "Aemk5oSe", "values": ["rc3Vt8f3", "i582ngYl", "Csj4xVDx"]}]}, {"operator": "or", "predicates": [{"anyOf": 11, "comparison": "isLessThanOrEqual", "name": "FUqB6WiX", "predicateType": "SeasonTierPredicate", "value": "K7jmGmts", "values": ["Scuq3pdv", "o4bLVIWT", "p5mVLonQ"]}, {"anyOf": 26, "comparison": "isGreaterThanOrEqual", "name": "1ZaqmbOc", "predicateType": "SeasonPassPredicate", "value": "MVNnDGfn", "values": ["xQF5MT25", "QSDS1DkH", "rKF6PVnM"]}, {"anyOf": 33, "comparison": "isGreaterThan", "name": "Ln8u5Aw0", "predicateType": "SeasonTierPredicate", "value": "qYKznDRf", "values": ["bkvvpdnk", "IQGcLFAj", "VkNhy7YM"]}]}, {"operator": "or", "predicates": [{"anyOf": 80, "comparison": "isLessThanOrEqual", "name": "aLAeG67V", "predicateType": "SeasonPassPredicate", "value": "LzgYsLRd", "values": ["VxSfUZFE", "n6NIxLgx", "QFQe9oxQ"]}, {"anyOf": 93, "comparison": "isLessThan", "name": "swN7c4Jh", "predicateType": "SeasonPassPredicate", "value": "AMCObgXh", "values": ["a6zONOQf", "2uPBz4H8", "sr8yixQF"]}, {"anyOf": 100, "comparison": "includes", "name": "zInmaKQv", "predicateType": "SeasonTierPredicate", "value": "B7dGUmSQ", "values": ["trdKQdEa", "C7T7dpEs", "nTdiZ0Xy"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'FgL45wyi' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "G8syKxVg"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'feFn1RAm' \
    --offset '47' \
    --tag 'qcNkywI9' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "I8NxXTfV", "name": "7nJ7ck2i", "status": "INACTIVE", "tags": ["k82uMMKt", "7R9F09wH", "Xj5H6KVc"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'UShgOdDU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '3dlhWWmF' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tfhMNQje", "name": "VTLODVQD", "status": "INACTIVE", "tags": ["bdBAsQIW", "IkyVnH5q", "31puXmG2"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'j6HEnx7J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ND1Dli4u' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '84' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ZlBFokXL' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'TlBI45g8' \
    --limit '64' \
    --offset '15' \
    --orderNos '["N3YSijH9", "7U09Szle", "r2hu8O67"]' \
    --sortBy '8mTBFW6n' \
    --startTime '6SLLDFv8' \
    --status 'INIT' \
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
    --orderNo 'PkD1STzl' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UttGzrwE' \
    --body '{"description": "EI4eP3WD"}' \
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
    --body '{"dryRun": false, "notifyUrl": "7xc2dTc0", "privateKey": "7qbXkNrS"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Dntm7I4r' \
    --externalId '0VGoE8HD' \
    --limit '21' \
    --notificationSource 'XSOLLA' \
    --notificationType 'AB0xKwJI' \
    --offset '95' \
    --paymentOrderNo 'HTrYtME8' \
    --startDate 'ObgWNMf5' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'R2UVRU9f' \
    --limit '49' \
    --offset '51' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "UBWTIu3Q", "currencyNamespace": "fOGlAjtI", "customParameters": {"qXfUYc4l": {}, "RnjEKcff": {}, "iL9BFQHN": {}}, "description": "ioO2SoW5", "extOrderNo": "acaYZD2k", "extUserId": "ObE67UBG", "itemType": "BUNDLE", "language": "hX_CZ", "metadata": {"ddFSIF6q": "Zoa3AMYJ", "5ZnGB3KK": "Dttasjc0", "yhCvnynx": "4qvIKtbi"}, "notifyUrl": "nl7nFtPX", "omitNotification": false, "platform": "jhSz3a5Q", "price": 28, "recurringPaymentOrderNo": "yxvqMsEe", "region": "HqHW221w", "returnUrl": "KaOzJuOB", "sandbox": true, "sku": "qvjvD71d", "subscriptionId": "h4Zscgkf", "targetNamespace": "QDD1I1Dg", "targetUserId": "8uLKL3s6", "title": "5llovKQ6"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'sJ9W6pCW' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HiJXFiVH' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '70LZlnEB' \
    --body '{"extTxId": "5tVaSNTC", "paymentMethod": "SqxhcGoN", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6cZCxbZZ' \
    --body '{"description": "UiOVM1EL"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dk30fxzr' \
    --body '{"amount": 54, "currencyCode": "hpLrujrw", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 27, "vat": 70}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oHVtHpIs' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedPlatformOrigins": ["Xbox", "Nintendo", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["System", "Twitch", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime '9TWXjqwc' \
    --limit '50' \
    --offset '55' \
    --source 'DLC' \
    --startTime '9Dfcf9kH' \
    --status 'SUCCESS' \
    --transactionId 'HYTLEbHE' \
    --userId 'iFluKYAX' \
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
    --body '{"appConfig": {"appName": "easLs3cr"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "1ZAH36Ns"}, "extendType": "APP"}' \
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
    --body '{"description": "uUJMrhG6", "eventTopic": "O3UMLOyF", "maxAwarded": 48, "maxAwardedPerUser": 56, "namespaceExpression": "gD1muiuA", "rewardCode": "zNw42tsq", "rewardConditions": [{"condition": "2b74iCZl", "conditionName": "lgMMC25D", "eventName": "sZRxmQTX", "rewardItems": [{"duration": 28, "endDate": "1982-10-21T00:00:00Z", "itemId": "Pom5Jt7L", "quantity": 6}, {"duration": 28, "endDate": "1984-10-02T00:00:00Z", "itemId": "eBjMzlRZ", "quantity": 86}, {"duration": 77, "endDate": "1996-09-28T00:00:00Z", "itemId": "jEdO0UyV", "quantity": 29}]}, {"condition": "kr6xtrUC", "conditionName": "qXabGZue", "eventName": "ReAK3lY4", "rewardItems": [{"duration": 87, "endDate": "1988-11-18T00:00:00Z", "itemId": "zpzvRNbm", "quantity": 37}, {"duration": 45, "endDate": "1975-08-20T00:00:00Z", "itemId": "67xYecUP", "quantity": 77}, {"duration": 20, "endDate": "1983-01-21T00:00:00Z", "itemId": "twKkjj1d", "quantity": 34}]}, {"condition": "EaMSbnW2", "conditionName": "QSvfBqCV", "eventName": "PlvWz59f", "rewardItems": [{"duration": 16, "endDate": "1972-06-10T00:00:00Z", "itemId": "mROxtwHU", "quantity": 50}, {"duration": 2, "endDate": "1991-07-10T00:00:00Z", "itemId": "ssamHnIk", "quantity": 34}, {"duration": 72, "endDate": "1981-09-05T00:00:00Z", "itemId": "FWSn5zzk", "quantity": 52}]}], "userIdExpression": "aV7rwp7D"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'yaDxT5VC' \
    --limit '62' \
    --offset '70' \
    --sortBy '["namespace", "namespace:asc", "rewardCode"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'S7rISK1M' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wCdZjxxo' \
    --body '{"description": "AznDI5fv", "eventTopic": "FzrS8XRn", "maxAwarded": 24, "maxAwardedPerUser": 4, "namespaceExpression": "J9KIvQSc", "rewardCode": "BKKpmpqq", "rewardConditions": [{"condition": "zma99wgi", "conditionName": "pD667YQk", "eventName": "mv5wtqWl", "rewardItems": [{"duration": 27, "endDate": "1984-02-10T00:00:00Z", "itemId": "E5EkeJ0Q", "quantity": 58}, {"duration": 59, "endDate": "1976-02-19T00:00:00Z", "itemId": "gZGqrjJo", "quantity": 54}, {"duration": 93, "endDate": "1974-03-02T00:00:00Z", "itemId": "mohk1NYH", "quantity": 62}]}, {"condition": "SxoYMG9s", "conditionName": "JWPEDOy2", "eventName": "S1E7awWx", "rewardItems": [{"duration": 38, "endDate": "1998-03-15T00:00:00Z", "itemId": "QvrRexrD", "quantity": 64}, {"duration": 70, "endDate": "1990-02-20T00:00:00Z", "itemId": "xY9yMRzW", "quantity": 43}, {"duration": 68, "endDate": "1973-09-12T00:00:00Z", "itemId": "QROWO4Mg", "quantity": 36}]}, {"condition": "ibnE3fBi", "conditionName": "ayUNrkUD", "eventName": "eHB36ncn", "rewardItems": [{"duration": 8, "endDate": "1977-08-28T00:00:00Z", "itemId": "yc7GnRpv", "quantity": 40}, {"duration": 64, "endDate": "1996-12-13T00:00:00Z", "itemId": "bpsa2hbS", "quantity": 42}, {"duration": 12, "endDate": "1988-02-28T00:00:00Z", "itemId": "tRVpGFFi", "quantity": 45}]}], "userIdExpression": "90uQbGxN"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'sg74NdrQ' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'kpr2ttnQ' \
    --body '{"payload": {"4IZn8miv": {}, "OKNzDAjI": {}, "KqCVJ3xh": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'aVVy7zY5' \
    --body '{"conditionName": "PkZUjVTL", "userId": "BXOhaczS"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'wgGbblld' \
    --limit '49' \
    --offset '18' \
    --start 'H6PYXmgZ' \
    --storeId 'y102Mib1' \
    --viewId 'JOkPLv90' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '5lBkX5NB' \
    --body '{"active": false, "displayOrder": 23, "endDate": "1984-02-24T00:00:00Z", "ext": {"VJyhepIt": {}, "Jebakrm4": {}, "nKXSkqQF": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 77, "itemCount": 10, "rule": "SEQUENCE"}, "items": [{"id": "VpQYamft", "sku": "o9uJm2Ng"}, {"id": "o4GaTdR3", "sku": "PYAEbqlG"}, {"id": "0oNobFFX", "sku": "Y3oNt7PF"}], "localizations": {"qxVctgu5": {"description": "YwQdGgVO", "localExt": {"QvNn83ug": {}, "CbwUEklq": {}, "3blCdZ12": {}}, "longDescription": "JMVjlVLB", "title": "Thpy2Hd9"}, "c0mMxHxE": {"description": "TDstupv6", "localExt": {"2haCXMUr": {}, "jlBES4Cr": {}, "ZSlZ5LHR": {}}, "longDescription": "gqb93VOQ", "title": "Mte3DqYh"}, "q40bdTk1": {"description": "u8AmexkP", "localExt": {"7OpffkL5": {}, "5NY9MwBF": {}, "kkVIbZvT": {}}, "longDescription": "T59HPaoF", "title": "qjOv7Ust"}}, "name": "F4K524aZ", "rotationType": "CUSTOM", "startDate": "1979-01-28T00:00:00Z", "viewId": "vCE1qZWZ"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'vBnW7SKq' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ADdtllur' \
    --storeId 'KqtqFhc9' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Lo7iqjp9' \
    --storeId 'sJN58dT1' \
    --body '{"active": true, "displayOrder": 100, "endDate": "1999-11-03T00:00:00Z", "ext": {"yV5UeUJ1": {}, "0MnucL2V": {}, "0ajDTREz": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 19, "itemCount": 16, "rule": "SEQUENCE"}, "items": [{"id": "70KEbMUa", "sku": "OeF0kNyr"}, {"id": "bnklKo1Q", "sku": "Q5eMcG4T"}, {"id": "zG7rjMWK", "sku": "tKkBQHbg"}], "localizations": {"JSf00B2o": {"description": "RDwgd0t5", "localExt": {"s0l1dY2z": {}, "pp2EYEwk": {}, "ut8HuObr": {}}, "longDescription": "1tAUD7iG", "title": "ngHDwVMC"}, "PpkPXg9h": {"description": "AxI2ChBs", "localExt": {"XZu2M5rs": {}, "Vnaqdgah": {}, "XSwhtBoA": {}}, "longDescription": "ZrcjZdOB", "title": "n1XERikT"}, "uHwh8dRN": {"description": "Ws4W7X0b", "localExt": {"QfH5GUf9": {}, "esQZjKQd": {}, "BqSqhwHb": {}}, "longDescription": "34neUV43", "title": "Ls8HN33y"}}, "name": "NbbU4fXV", "rotationType": "CUSTOM", "startDate": "1997-11-24T00:00:00Z", "viewId": "WRAQUZN3"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '0v8U4gMA' \
    --storeId 'Vj5Wjum3' \
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
    --body '{"defaultLanguage": "GSEZtkdd", "defaultRegion": "TQRrINGt", "description": "0mbt4piv", "supportedLanguages": ["vBQEM39I", "Ti0DGrPZ", "CY5M86IW"], "supportedRegions": ["bHzQKakS", "JexQCAbT", "9GBFE4jE"], "title": "AIpS319x"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 ImportStore
eval_tap 0 186 'ImportStore # SKIP deprecated' test.out

#- 187 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 187 'GetPublishedStore' test.out

#- 188 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'DeletePublishedStore' test.out

#- 189 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 189 'GetPublishedStoreBackup' test.out

#- 190 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'RollbackPublishedStore' test.out

#- 191 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Z3I4nlpQ' \
    > test.out 2>&1
eval_tap $? 191 'GetStore' test.out

#- 192 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'D9sMZxMT' \
    --body '{"defaultLanguage": "xypoMFBv", "defaultRegion": "4LJIlo4s", "description": "jLJ2noFh", "supportedLanguages": ["3h2Ckt8Q", "T0NvRurB", "KL3mMKiB"], "supportedRegions": ["WAyFy2H7", "CXCUqiAv", "8DbvxRFW"], "title": "tb9sWKLV"}' \
    > test.out 2>&1
eval_tap $? 192 'UpdateStore' test.out

#- 193 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'wzkkj8IJ' \
    > test.out 2>&1
eval_tap $? 193 'DeleteStore' test.out

#- 194 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'TrrnWJOs' \
    --action 'CREATE' \
    --itemSku 'DAJxPn1b' \
    --itemType 'OPTIONBOX' \
    --limit '57' \
    --offset '41' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'vB8IqSzD' \
    --updatedAtStart 'uuALoCJj' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 194 'QueryChanges' test.out

#- 195 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '16zmQh6g' \
    > test.out 2>&1
eval_tap $? 195 'PublishAll' test.out

#- 196 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'S6YFsK6q' \
    > test.out 2>&1
eval_tap $? 196 'PublishSelected' test.out

#- 197 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'c5KtyUi9' \
    > test.out 2>&1
eval_tap $? 197 'SelectAllRecords' test.out

#- 198 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'QcOIQcj2' \
    --action 'UPDATE' \
    --itemSku '1A4VrP0E' \
    --itemType 'BUNDLE' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd '6aMdvHmZ' \
    --updatedAtStart 'prYj60ef' \
    > test.out 2>&1
eval_tap $? 198 'SelectAllRecordsByCriteria' test.out

#- 199 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'BA43jBXT' \
    --action 'DELETE' \
    --itemSku 'ZmazATAn' \
    --itemType 'INGAMEITEM' \
    --type 'ITEM' \
    --updatedAtEnd '70ygEsdZ' \
    --updatedAtStart '1dTfRL4L' \
    > test.out 2>&1
eval_tap $? 199 'GetStatistic' test.out

#- 200 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'OTAJqqar' \
    > test.out 2>&1
eval_tap $? 200 'UnselectAllRecords' test.out

#- 201 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'eHXgeu29' \
    --namespace $AB_NAMESPACE \
    --storeId 'jxiKZlMQ' \
    > test.out 2>&1
eval_tap $? 201 'SelectRecord' test.out

#- 202 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'XquktjGy' \
    --namespace $AB_NAMESPACE \
    --storeId 'MZfYidYs' \
    > test.out 2>&1
eval_tap $? 202 'UnselectRecord' test.out

#- 203 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cEmceyAI' \
    --targetStoreId 'P2kUkfRo' \
    > test.out 2>&1
eval_tap $? 203 'CloneStore' test.out

#- 204 ExportStore
eval_tap 0 204 'ExportStore # SKIP deprecated' test.out

#- 205 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'Zwv1ceGr' \
    --limit '17' \
    --offset '73' \
    --sku 'IHoeHjU6' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId '5xIQPQKl' \
    > test.out 2>&1
eval_tap $? 205 'QuerySubscriptions' test.out

#- 206 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Gmdm8kYa' \
    > test.out 2>&1
eval_tap $? 206 'RecurringChargeSubscription' test.out

#- 207 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'kDfjaNw1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 207 'GetTicketDynamic' test.out

#- 208 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'BgvyEbRL' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "LIA5jmwB"}' \
    > test.out 2>&1
eval_tap $? 208 'DecreaseTicketSale' test.out

#- 209 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Z2huicKY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetTicketBoothID' test.out

#- 210 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'qjZ9LID9' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 43, "orderNo": "KA6BHpKt"}' \
    > test.out 2>&1
eval_tap $? 210 'IncreaseTicketSale' test.out

#- 211 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 11, "currencyCode": "OtUND1fk", "expireAt": "1987-02-04T00:00:00Z"}, "debitPayload": {"count": 68, "currencyCode": "k7HhmJtd", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 72, "entitlementOrigin": "Epic", "itemIdentity": "e779Fnjl", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "ZX1YhQOC"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 78, "currencyCode": "HC31vbUI", "expireAt": "1997-05-31T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "Ea3gveT4", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 94, "entitlementOrigin": "IOS", "itemIdentity": "abkqtL8R", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "V7e8iURh"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 10, "currencyCode": "TqIvXfCS", "expireAt": "1988-10-18T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "v4cmASnk", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 85, "entitlementOrigin": "Oculus", "itemIdentity": "MqttO4Bv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "iyGQv9xw"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "ycy24YDE"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 35, "currencyCode": "Lz2tHsqO", "expireAt": "1982-05-21T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "iNi0Wr3a", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 0, "entitlementOrigin": "Epic", "itemIdentity": "Xc8pB88F", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "pxBd7ahw"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 44, "currencyCode": "OyWunOV7", "expireAt": "1995-11-01T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "9IvRFfU7", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 30, "entitlementOrigin": "Other", "itemIdentity": "Fn335Hmv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "FilNkDfC"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 61, "currencyCode": "3QcmN0IP", "expireAt": "1977-10-16T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "lJjLjl8e", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 23, "entitlementOrigin": "Epic", "itemIdentity": "Yb7Tp6CD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "lYrc5Po6"}, "type": "FULFILL_ITEM"}], "userId": "Ss7L6GQs"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 11, "currencyCode": "Kra1bqUv", "expireAt": "1977-11-12T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "fGT9fTHO", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 75, "entitlementOrigin": "GooglePlay", "itemIdentity": "EKmhyj6r", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "jTb2LBRQ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 99, "currencyCode": "gBsMTKwp", "expireAt": "1992-05-08T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "dO6fYHJe", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 71, "entitlementOrigin": "Nintendo", "itemIdentity": "kHB1whNv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "DXL3qKMn"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 73, "currencyCode": "pazrtc4S", "expireAt": "1977-10-29T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "3xWINkWO", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 68, "entitlementOrigin": "System", "itemIdentity": "XEbzZbjj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "l3W6cX0V"}, "type": "CREDIT_WALLET"}], "userId": "lunsoYLD"}], "metadata": {"rQ0iPgqO": {}, "VFJPU87Z": {}, "I3v5uJUI": {}}, "needPreCheck": false, "transactionId": "cR4GDMr4", "type": "6GHwsxQF"}' \
    > test.out 2>&1
eval_tap $? 211 'Commit' test.out

#- 212 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '42' \
    --status 'SUCCESS' \
    --type 'zktnxt8V' \
    --userId '3aw6l2Sh' \
    > test.out 2>&1
eval_tap $? 212 'GetTradeHistoryByCriteria' test.out

#- 213 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'a7xTdB0M' \
    > test.out 2>&1
eval_tap $? 213 'GetTradeHistoryByTransactionId' test.out

#- 214 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hDqhwApN' \
    --body '{"achievements": [{"id": "hhio12xj", "value": 73}, {"id": "GPwLr6OF", "value": 22}, {"id": "B7exn5Il", "value": 70}], "steamUserId": "teumHSnD"}' \
    > test.out 2>&1
eval_tap $? 214 'UnlockSteamUserAchievement' test.out

#- 215 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Fm20mIYS' \
    --xboxUserId 'hQ1rmwAL' \
    > test.out 2>&1
eval_tap $? 215 'GetXblUserAchievements' test.out

#- 216 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'LZZdlz39' \
    --body '{"achievements": [{"id": "NEy3FdOU", "percentComplete": 61}, {"id": "Y3XvmIlU", "percentComplete": 52}, {"id": "jAjInwrS", "percentComplete": 88}], "serviceConfigId": "TvhV42XP", "titleId": "BpqHOFGo", "xboxUserId": "fymAEppx"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateXblUserAchievement' test.out

#- 217 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'F1g1ntF5' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeCampaign' test.out

#- 218 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'o9cAgRK8' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeEntitlement' test.out

#- 219 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '9CUIsjkU' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeFulfillment' test.out

#- 220 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'RkGCcpyp' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeIntegration' test.out

#- 221 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'VsRZ5qTH' \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeOrder' test.out

#- 222 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'UZ5gKIjb' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizePayment' test.out

#- 223 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'phRFAUXL' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeRevocation' test.out

#- 224 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'b8siIaLw' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeSubscription' test.out

#- 225 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'VhAIDiAM' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeWallet' test.out

#- 226 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'QYySZXPL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 226 'GetUserDLCByPlatform' test.out

#- 227 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MrN2WIOa' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 227 'GetUserDLC' test.out

#- 228 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7siP1dlt' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '1iVt3CZw' \
    --features '["oAXxVIdc", "xTic1wfR", "dKuuuxaa"]' \
    --fuzzyMatchName 'false' \
    --itemId '["QQnPPPtw", "kwiROdyU", "BUB9DbIJ"]' \
    --limit '23' \
    --offset '79' \
    --origin 'Epic' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserEntitlements' test.out

#- 229 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'GF6Qfo2A' \
    --body '[{"endDate": "1992-05-29T00:00:00Z", "grantedCode": "kH19E6rV", "itemId": "RQDbJ6tZ", "itemNamespace": "a12yWKi4", "language": "KGxF-oxQF-rF", "origin": "Steam", "quantity": 72, "region": "ZwoC8xpF", "source": "IAP", "startDate": "1975-02-25T00:00:00Z", "storeId": "6I6JMKzA"}, {"endDate": "1977-12-19T00:00:00Z", "grantedCode": "vwoI1GvB", "itemId": "ZIIIh0uk", "itemNamespace": "KghgMSZq", "language": "Ij_Ovyx-304", "origin": "Other", "quantity": 32, "region": "1XkhXSBf", "source": "GIFT", "startDate": "1986-03-11T00:00:00Z", "storeId": "CIc5PMZa"}, {"endDate": "1994-05-04T00:00:00Z", "grantedCode": "czcb2Ibv", "itemId": "2Xwaqwz6", "itemNamespace": "CEDpBGLW", "language": "ZM-808", "origin": "Oculus", "quantity": 34, "region": "W7FCOH6k", "source": "REDEEM_CODE", "startDate": "1990-11-01T00:00:00Z", "storeId": "4YBhhNdn"}]' \
    > test.out 2>&1
eval_tap $? 229 'GrantUserEntitlement' test.out

#- 230 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ByB9KkhO' \
    --activeOnly 'true' \
    --appId 'Y3VQNYLt' \
    > test.out 2>&1
eval_tap $? 230 'GetUserAppEntitlementByAppId' test.out

#- 231 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'liG9WDVU' \
    --activeOnly 'false' \
    --limit '73' \
    --offset '2' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 231 'QueryUserEntitlementsByAppType' test.out

#- 232 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ExJ6zRWZ' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'xITp6Hlc' \
    --itemId '53l6Q58i' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementByItemId' test.out

#- 233 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JCVdxuLA' \
    --ids '["rrNHjVpl", "ZDAcRICm", "c1SXQiT9"]' \
    --platform 'Y7Bwa4K4' \
    > test.out 2>&1
eval_tap $? 233 'GetUserActiveEntitlementsByItemIds' test.out

#- 234 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'q6dBOlTB' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'qu9OOISk' \
    --sku 'ghDH0NWT' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementBySku' test.out

#- 235 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'DaVVgifZ' \
    --appIds '["0hoXAP5l", "ZO9nSxAF", "B8xa9frx"]' \
    --itemIds '["yRtWU2gc", "DCJgS1bf", "mW7IBM8d"]' \
    --platform 'KyyH0gnn' \
    --skus '["VsuCY9L0", "awHjehl1", "1njDyjmp"]' \
    > test.out 2>&1
eval_tap $? 235 'ExistsAnyUserActiveEntitlement' test.out

#- 236 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'TXVJ7Fqk' \
    --platform 'Jrhzn6f9' \
    --itemIds '["Yx8BJJf9", "ttMkG6ji", "Agw4ZYSA"]' \
    > test.out 2>&1
eval_tap $? 236 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 237 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'qPZApb7t' \
    --appId '6At3uqUc' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 238 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rXFvYGlb' \
    --entitlementClazz 'MEDIA' \
    --platform 'E99LoHjV' \
    --itemId 'AUqtoRIF' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementOwnershipByItemId' test.out

#- 239 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'jetl7IxQ' \
    --ids '["5sEVUzvp", "r5yVB588", "R7cBxlFR"]' \
    --platform 'bNCCrxIY' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementOwnershipByItemIds' test.out

#- 240 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'F8nvZ4Ff' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '3Okc6gvL' \
    --sku 'YZYE7wxG' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementOwnershipBySku' test.out

#- 241 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'xvQigp53' \
    > test.out 2>&1
eval_tap $? 241 'RevokeAllEntitlements' test.out

#- 242 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2wdoveYs' \
    --entitlementIds '6zqWzi6s' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUserEntitlements' test.out

#- 243 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'CLss5W3X' \
    --namespace $AB_NAMESPACE \
    --userId 'AlwMIC0j' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlement' test.out

#- 244 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'EIDHynBq' \
    --namespace $AB_NAMESPACE \
    --userId 'FQCYbLaw' \
    --body '{"endDate": "1980-03-24T00:00:00Z", "nullFieldList": ["XLg8BR8t", "upraEOyl", "aZeDAEfm"], "origin": "Twitch", "reason": "xEbIYX4g", "startDate": "1980-03-09T00:00:00Z", "status": "CONSUMED", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserEntitlement' test.out

#- 245 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'Cu5qidAP' \
    --namespace $AB_NAMESPACE \
    --userId 'wKhzdAfl' \
    --body '{"options": ["viOEC5lm", "uGPkdFxl", "nogeVEwk"], "platform": "y7qEPGFb", "requestId": "8DUCP6yS", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 245 'ConsumeUserEntitlement' test.out

#- 246 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '7JhQDl3W' \
    --namespace $AB_NAMESPACE \
    --userId 'XIpVueMz' \
    > test.out 2>&1
eval_tap $? 246 'DisableUserEntitlement' test.out

#- 247 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'GHSBHKIi' \
    --namespace $AB_NAMESPACE \
    --userId '9Gkp8els' \
    > test.out 2>&1
eval_tap $? 247 'EnableUserEntitlement' test.out

#- 248 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'U8dYQitV' \
    --namespace $AB_NAMESPACE \
    --userId 'offr9CW7' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementHistories' test.out

#- 249 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'VRf0CfZC' \
    --namespace $AB_NAMESPACE \
    --userId 'JcH6HgpE' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlement' test.out

#- 250 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '66Mchq4v' \
    --namespace $AB_NAMESPACE \
    --userId 'lXYEN8bb' \
    --body '{"reason": "zkyCbj90", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 250 'RevokeUserEntitlementByUseCount' test.out

#- 251 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'LLUAE34I' \
    --namespace $AB_NAMESPACE \
    --userId '3wq9UHns' \
    --quantity '4' \
    > test.out 2>&1
eval_tap $? 251 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 252 RevokeUseCount
eval_tap 0 252 'RevokeUseCount # SKIP deprecated' test.out

#- 253 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'JaQiysNY' \
    --namespace $AB_NAMESPACE \
    --userId 'Z5ZexufD' \
    --body '{"platform": "Eh8kdjhR", "requestId": "sSRgoTVf", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 253 'SellUserEntitlement' test.out

#- 254 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'lhnr05ne' \
    --body '{"duration": 64, "endDate": "1980-03-23T00:00:00Z", "entitlementOrigin": "Other", "itemId": "Ae2C4kxD", "itemSku": "KralM4CH", "language": "jjtKzMhu", "metadata": {"setaesM0": {}, "jbnYppoi": {}, "PoERUg6l": {}}, "order": {"currency": {"currencyCode": "ahBN8REi", "currencySymbol": "7G1ZOr5q", "currencyType": "REAL", "decimals": 70, "namespace": "TNELeyzX"}, "ext": {"QL8EW0ZO": {}, "f3gBLLZF": {}, "QF5vVy5a": {}}, "free": true}, "orderNo": "DyqEDvn4", "origin": "IOS", "overrideBundleItemQty": {"UaTT3CsA": 41, "frH83dP3": 51, "weueEOE5": 35}, "quantity": 6, "region": "PRDUaJsp", "source": "PAYMENT", "startDate": "1995-06-06T00:00:00Z", "storeId": "Tat33A8p"}' \
    > test.out 2>&1
eval_tap $? 254 'FulfillItem' test.out

#- 255 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '1rNTw3DT' \
    --body '{"code": "1tNVZmCY", "language": "Ewh-CECH", "region": "FQlzOUaQ"}' \
    > test.out 2>&1
eval_tap $? 255 'RedeemCode' test.out

#- 256 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '1ykYYG52' \
    --body '{"itemId": "pZtqB3Id", "itemSku": "l7d70gLF", "quantity": 57}' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckFulfillItem' test.out

#- 257 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'nbPqHId2' \
    --body '{"entitlementOrigin": "System", "metadata": {"iAJjAgqz": {}, "iloxOY08": {}, "s6W10dWv": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "Tb6mzRZi", "namespace": "gItpzHWl"}, "item": {"itemId": "tK7r4Rbd", "itemSku": "6fGFX9fC", "itemType": "TEGcniCA"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "MirQ7dz0", "namespace": "pwnKzK6Q"}, "item": {"itemId": "dBnnYLIe", "itemSku": "E6HzYIBJ", "itemType": "6iwUZvsb"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "UOfRPwbG", "namespace": "xJReVfEc"}, "item": {"itemId": "nHVmxGfg", "itemSku": "ZjjfX8bp", "itemType": "B44TdLRK"}, "quantity": 60, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "fhKpf0bN"}' \
    > test.out 2>&1
eval_tap $? 257 'FulfillRewards' test.out

#- 258 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'JguQqddA' \
    --endTime 'J8hoNhMz' \
    --limit '36' \
    --offset '90' \
    --productId 'K7iGY30L' \
    --startTime 'AqyuGbXb' \
    --status 'FULFILLED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserIAPOrders' test.out

#- 259 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'qMGKeQdO' \
    > test.out 2>&1
eval_tap $? 259 'QueryAllUserIAPOrders' test.out

#- 260 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'nuOJQNN0' \
    --endTime 'QfdepkKp' \
    --limit '87' \
    --offset '99' \
    --startTime 'ZwsZDx4N' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserIAPConsumeHistory' test.out

#- 261 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'SrLVpiHI' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "DE", "productId": "a3iIaIgp", "region": "5nX2DEh5", "transactionId": "JtK1pPQC", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 261 'MockFulfillIAPItem' test.out

#- 262 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oqxeTJsl' \
    --itemId 'WnYtkFRn' \
    --limit '11' \
    --offset '7' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 262 'QueryUserOrders' test.out

#- 263 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'pEOiYCyg' \
    --body '{"currencyCode": "2vEqmxHr", "currencyNamespace": "0zn3n6SY", "discountedPrice": 50, "ext": {"4cJBi8s2": {}, "0Tw64DRA": {}, "NKTYJm27": {}}, "itemId": "XOOw0ccC", "language": "PE1W8lSP", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 70, "quantity": 99, "region": "1PtCijYw", "returnUrl": "7ZS1RkOl", "sandbox": true, "sectionId": "ersBbtmc"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminCreateUserOrder' test.out

#- 264 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'DzEX5f12' \
    --itemId 'a7So2kKS' \
    > test.out 2>&1
eval_tap $? 264 'CountOfPurchasedItem' test.out

#- 265 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EszXbh2D' \
    --userId 'dqhWQDLU' \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrder' test.out

#- 266 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'HfFTvH09' \
    --userId 'ecc1fHHl' \
    --body '{"status": "CHARGED", "statusReason": "lJgJ6dmL"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateUserOrderStatus' test.out

#- 267 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gv9GkvIc' \
    --userId 'qECxiUvl' \
    > test.out 2>&1
eval_tap $? 267 'FulfillUserOrder' test.out

#- 268 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZJTlSkjg' \
    --userId 'dz8xZUqK' \
    > test.out 2>&1
eval_tap $? 268 'GetUserOrderGrant' test.out

#- 269 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'e3QVSOR0' \
    --userId 'hUv80lcu' \
    > test.out 2>&1
eval_tap $? 269 'GetUserOrderHistories' test.out

#- 270 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'ugbUEhY9' \
    --userId 'ZNmBwt36' \
    --body '{"additionalData": {"cardSummary": "H5EOF7hr"}, "authorisedTime": "1976-12-07T00:00:00Z", "chargebackReversedTime": "1982-02-05T00:00:00Z", "chargebackTime": "1981-02-12T00:00:00Z", "chargedTime": "1980-11-30T00:00:00Z", "createdTime": "1984-04-27T00:00:00Z", "currency": {"currencyCode": "o4LMSCCa", "currencySymbol": "H57ux7fV", "currencyType": "VIRTUAL", "decimals": 27, "namespace": "Ur6TbBn0"}, "customParameters": {"KKfmi3rU": {}, "SOssUYby": {}, "bhhsTp6Z": {}}, "extOrderNo": "x5QT1lj4", "extTxId": "3crcuTNv", "extUserId": "mbTeONSQ", "issuedAt": "1994-09-17T00:00:00Z", "metadata": {"wbE5jB19": "8N8JhKgS", "7eMkT5So": "FDlnxrJ8", "godB3fSk": "pF8A5313"}, "namespace": "K3NpgYpp", "nonceStr": "ID98XJYL", "paymentMethod": "s30L2eOw", "paymentMethodFee": 58, "paymentOrderNo": "7oFm7Juq", "paymentProvider": "WALLET", "paymentProviderFee": 33, "paymentStationUrl": "0lP0ZkjS", "price": 73, "refundedTime": "1973-11-30T00:00:00Z", "salesTax": 81, "sandbox": true, "sku": "gtcTVn8w", "status": "AUTHORISED", "statusReason": "U00sb3pm", "subscriptionId": "v5dFIayR", "subtotalPrice": 90, "targetNamespace": "s7mrzpyP", "targetUserId": "Qq5Q3YZS", "tax": 33, "totalPrice": 77, "totalTax": 37, "txEndTime": "1991-08-17T00:00:00Z", "type": "iR5SQo1Q", "userId": "AVrypb6r", "vat": 72}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserOrderNotification' test.out

#- 271 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'vDvMRGrQ' \
    --userId 'uBzwdOpB' \
    > test.out 2>&1
eval_tap $? 271 'DownloadUserOrderReceipt' test.out

#- 272 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'niiZafpA' \
    --body '{"currencyCode": "xxS8f16w", "currencyNamespace": "j1gkRGU8", "customParameters": {"0F3OULZe": {}, "OKgahOhr": {}, "dmRBfKVi": {}}, "description": "AQRY9LwE", "extOrderNo": "NlpIVC3b", "extUserId": "1orxthDy", "itemType": "BUNDLE", "language": "bhi_tegD_qH", "metadata": {"sVhhAXnZ": "coKY1PZ1", "YEEGZ6d7": "IZLFHhKG", "VzAAITjf": "XdYRtH54"}, "notifyUrl": "sXYDse0i", "omitNotification": false, "platform": "yvZ7nOhU", "price": 46, "recurringPaymentOrderNo": "NQlxCEVA", "region": "h79LUli0", "returnUrl": "NVn32C79", "sandbox": false, "sku": "bepIXC9e", "subscriptionId": "RVyftsuQ", "title": "9rkGoxD2"}' \
    > test.out 2>&1
eval_tap $? 272 'CreateUserPaymentOrder' test.out

#- 273 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '80DUbP9S' \
    --userId 'd0ICcPwd' \
    --body '{"description": "3jzOqYEU"}' \
    > test.out 2>&1
eval_tap $? 273 'RefundUserPaymentOrder' test.out

#- 274 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'JTCZIuiX' \
    --body '{"code": "R1JhBXSH", "orderNo": "p9FFb8MH"}' \
    > test.out 2>&1
eval_tap $? 274 'ApplyUserRedemption' test.out

#- 275 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'ZIOTPxim' \
    --body '{"meta": {"aH84lpsJ": {}, "BecjA39K": {}, "b9GSMPTu": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "Zw2W2leH", "namespace": "KMmE6xEC"}, "entitlement": {"entitlementId": "8Li4vneq"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "D3w5Lf8r", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 99, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "N7NMAPlZ", "namespace": "82wjJtMl"}, "entitlement": {"entitlementId": "FdI3Y6cG"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "isuNawLs", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "WmP3sOuH", "namespace": "kC17FWa9"}, "entitlement": {"entitlementId": "Ycfaqihm"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "cwYXKMWF", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 17, "type": "CURRENCY"}], "source": "DLC", "transactionId": "KpfrjnOa"}' \
    > test.out 2>&1
eval_tap $? 275 'DoRevocation' test.out

#- 276 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'JMk7iLGr' \
    --body '{"gameSessionId": "3aAb3GOy", "payload": {"e3Svef9R": {}, "eDdDlaKy": {}, "G6J3iDhU": {}}, "scid": "gLMfApSf", "sessionTemplateName": "sV7wSYr4"}' \
    > test.out 2>&1
eval_tap $? 276 'RegisterXblSessions' test.out

#- 277 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '32LzuZNK' \
    --chargeStatus 'SETUP' \
    --itemId 'AIeQQvTY' \
    --limit '58' \
    --offset '35' \
    --sku 'Nm00Xjdu' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserSubscriptions' test.out

#- 278 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'b5iJ7iuR' \
    --excludeSystem 'false' \
    --limit '16' \
    --offset '31' \
    --subscriptionId 'uLnPNTyV' \
    > test.out 2>&1
eval_tap $? 278 'GetUserSubscriptionActivities' test.out

#- 279 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'C6fxFidQ' \
    --body '{"grantDays": 20, "itemId": "hSPbAaMR", "language": "7xQ3Ywtm", "reason": "x8eR06Pt", "region": "m4CMMp0j", "source": "cadEBSnP"}' \
    > test.out 2>&1
eval_tap $? 279 'PlatformSubscribeSubscription' test.out

#- 280 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'exLe9yB3' \
    --itemId 'SLq5u53M' \
    > test.out 2>&1
eval_tap $? 280 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 281 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'j74jUaKZ' \
    --userId 'w7KCYYIL' \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscription' test.out

#- 282 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6I0WgXkC' \
    --userId 'yvgIl6oC' \
    > test.out 2>&1
eval_tap $? 282 'DeleteUserSubscription' test.out

#- 283 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QDdfycNy' \
    --userId 'XbtvPUys' \
    --force 'true' \
    --body '{"immediate": true, "reason": "t2cYcKhH"}' \
    > test.out 2>&1
eval_tap $? 283 'CancelSubscription' test.out

#- 284 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1FXul9MJ' \
    --userId 'Qy8c9Rsv' \
    --body '{"grantDays": 69, "reason": "vgraAZ40"}' \
    > test.out 2>&1
eval_tap $? 284 'GrantDaysToSubscription' test.out

#- 285 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'c9v2nTIU' \
    --userId 'ZqMdijOk' \
    --excludeFree 'true' \
    --limit '30' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionBillingHistories' test.out

#- 286 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OlzahfrN' \
    --userId 'wAaKBbHY' \
    --body '{"additionalData": {"cardSummary": "HNdYHNif"}, "authorisedTime": "1975-11-03T00:00:00Z", "chargebackReversedTime": "1977-08-20T00:00:00Z", "chargebackTime": "1979-08-21T00:00:00Z", "chargedTime": "1972-09-05T00:00:00Z", "createdTime": "1989-06-18T00:00:00Z", "currency": {"currencyCode": "C3N2r6Fr", "currencySymbol": "hnRmcPbi", "currencyType": "REAL", "decimals": 59, "namespace": "O8OoL6ux"}, "customParameters": {"QQB8vqBk": {}, "TZfqH8NO": {}, "XT9vEXZO": {}}, "extOrderNo": "MKGTrFlM", "extTxId": "ypqmnqHJ", "extUserId": "ob2WHtr4", "issuedAt": "1997-05-07T00:00:00Z", "metadata": {"R8CYOtOV": "DZ7w03zX", "4UqHgnJR": "JXVins7u", "YSw9HNad": "iUCUkdJE"}, "namespace": "AmNmO2nP", "nonceStr": "83732slC", "paymentMethod": "iTto0k7z", "paymentMethodFee": 61, "paymentOrderNo": "37Sx1kmB", "paymentProvider": "WALLET", "paymentProviderFee": 99, "paymentStationUrl": "TFJOT4Ay", "price": 74, "refundedTime": "1975-08-14T00:00:00Z", "salesTax": 16, "sandbox": true, "sku": "VwJst9cn", "status": "REFUNDED", "statusReason": "X8Iplzyc", "subscriptionId": "ES2eIuur", "subtotalPrice": 35, "targetNamespace": "XxwXh8C5", "targetUserId": "S7gkaZFH", "tax": 82, "totalPrice": 15, "totalTax": 22, "txEndTime": "1971-10-16T00:00:00Z", "type": "yjyJBv8B", "userId": "dRyh0jMd", "vat": 33}' \
    > test.out 2>&1
eval_tap $? 286 'ProcessUserSubscriptionNotification' test.out

#- 287 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'hpkwyZLO' \
    --namespace $AB_NAMESPACE \
    --userId 'PaKTjdHX' \
    --body '{"count": 38, "orderNo": "0qzhU2qt"}' \
    > test.out 2>&1
eval_tap $? 287 'AcquireUserTicket' test.out

#- 288 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'OWI4aDKU' \
    > test.out 2>&1
eval_tap $? 288 'QueryUserCurrencyWallets' test.out

#- 289 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'ZpS5oU8H' \
    --namespace $AB_NAMESPACE \
    --userId 'tqv3uW85' \
    --body '{"allowOverdraft": true, "amount": 48, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"c8FclR0O": {}, "GkLrFS2C": {}, "j9u2r7xm": {}}, "reason": "Jc5FlhE4"}' \
    > test.out 2>&1
eval_tap $? 289 'DebitUserWalletByCurrencyCode' test.out

#- 290 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'QKuGcVdv' \
    --namespace $AB_NAMESPACE \
    --userId '7ODFZfz7' \
    --limit '70' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 290 'ListUserCurrencyTransactions' test.out

#- 291 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'TMeG74Xf' \
    --namespace $AB_NAMESPACE \
    --userId 'J80LHx1j' \
    --request '{"amount": 72, "debitBalanceSource": "PAYMENT", "metadata": {"X96voUGj": {}, "RBmQSwht": {}, "9yjq6KQ8": {}}, "reason": "sHMykNZH", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 291 'CheckBalance' test.out

#- 292 CheckWallet
eval_tap 0 292 'CheckWallet # SKIP deprecated' test.out

#- 293 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'NTEGEGLO' \
    --namespace $AB_NAMESPACE \
    --userId 'BKE2mWL5' \
    --body '{"amount": 21, "expireAt": "1992-11-14T00:00:00Z", "metadata": {"PWqFriJY": {}, "g4qyEYoU": {}, "Qh957XVK": {}}, "origin": "Playstation", "reason": "rKLE5FOc", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 293 'CreditUserWallet' test.out

#- 294 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'LJBWppB3' \
    --namespace $AB_NAMESPACE \
    --userId 'irGCciDs' \
    --request '{"amount": 45, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"ZNXn7Vc4": {}, "IsmE5RFt": {}, "Mt1OAQWs": {}}, "reason": "PyJ22qOD", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitByWalletPlatform' test.out

#- 295 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '1qZODvql' \
    --namespace $AB_NAMESPACE \
    --userId 'Uo6xooPk' \
    --body '{"amount": 29, "metadata": {"dFZ5dFW7": {}, "rlI6a1a3": {}, "8ZHH2GvD": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 295 'PayWithUserWallet' test.out

#- 296 GetUserWallet
eval_tap 0 296 'GetUserWallet # SKIP deprecated' test.out

#- 297 DebitUserWallet
eval_tap 0 297 'DebitUserWallet # SKIP deprecated' test.out

#- 298 DisableUserWallet
eval_tap 0 298 'DisableUserWallet # SKIP deprecated' test.out

#- 299 EnableUserWallet
eval_tap 0 299 'EnableUserWallet # SKIP deprecated' test.out

#- 300 ListUserWalletTransactions
eval_tap 0 300 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 301 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '19O07i4m' \
    > test.out 2>&1
eval_tap $? 301 'ListViews' test.out

#- 302 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ZKJdIbyO' \
    --body '{"displayOrder": 62, "localizations": {"AlPqpnzW": {"description": "FokdNeLS", "localExt": {"cnDf7MPr": {}, "ExtXP7z8": {}, "7pCR6kH9": {}}, "longDescription": "lvbVuMF6", "title": "D2G0IaXK"}, "KDTNerAp": {"description": "yVUh6sE7", "localExt": {"836V2t4d": {}, "omdDVIeF": {}, "RgyEmREd": {}}, "longDescription": "1ASoUoqU", "title": "XSmyMhDD"}, "9hhrxiRK": {"description": "NyPueIC9", "localExt": {"AwDMz5GN": {}, "JRp0Ninx": {}, "E9j9N1GO": {}}, "longDescription": "UJHyAite", "title": "LmmsVauq"}}, "name": "MhUZpjOc"}' \
    > test.out 2>&1
eval_tap $? 302 'CreateView' test.out

#- 303 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'uUwXq8xW' \
    --storeId 'KwDhRt0R' \
    > test.out 2>&1
eval_tap $? 303 'GetView' test.out

#- 304 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'EstNUyem' \
    --storeId 'M9dfUqZj' \
    --body '{"displayOrder": 34, "localizations": {"fXcl9Lqg": {"description": "q7Crb7aA", "localExt": {"yehGNewm": {}, "yiRnsUgx": {}, "f7DMtn8b": {}}, "longDescription": "k7BDERi1", "title": "afaZJRm3"}, "nSpRYLc8": {"description": "tlf7ytt2", "localExt": {"XZFanewu": {}, "pyD6oPti": {}, "knuxfPLL": {}}, "longDescription": "FuDBgpa7", "title": "jaRQV0wi"}, "inzvVOE7": {"description": "1leRxROy", "localExt": {"4pyXChFF": {}, "HYUcFmdG": {}, "YTAaYh5I": {}}, "longDescription": "GfJKyrqk", "title": "nQUwXiV9"}}, "name": "EQbpswHy"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateView' test.out

#- 305 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '4DO5Yhh2' \
    --storeId 'b7JKht3J' \
    > test.out 2>&1
eval_tap $? 305 'DeleteView' test.out

#- 306 QueryWallets
eval_tap 0 306 'QueryWallets # SKIP deprecated' test.out

#- 307 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 36, "expireAt": "1999-09-14T00:00:00Z", "metadata": {"KTQn5hvT": {}, "8Eh9eu7j": {}, "FNhwQEjU": {}}, "origin": "Nintendo", "reason": "Iic4LcD9", "source": "REDEEM_CODE"}, "currencyCode": "jtvk8Gz6", "userIds": ["Vvfx4ABk", "7YW4ob2V", "IZqfZOvx"]}, {"creditRequest": {"amount": 34, "expireAt": "1989-08-24T00:00:00Z", "metadata": {"JQCjZ81H": {}, "NkpSgwtR": {}, "d4LVnBOw": {}}, "origin": "Oculus", "reason": "UN9MMJcv", "source": "TRADE"}, "currencyCode": "dPeTBBhn", "userIds": ["irvVX60b", "q6xC829P", "KVIM6pMI"]}, {"creditRequest": {"amount": 34, "expireAt": "1990-07-16T00:00:00Z", "metadata": {"hy7ltkWr": {}, "uKIQpbyb": {}, "TrypkKnH": {}}, "origin": "GooglePlay", "reason": "K624EM6C", "source": "DLC"}, "currencyCode": "49Nd7LlW", "userIds": ["LXww9ttc", "b4iWH2N2", "oCLS9J3l"]}]' \
    > test.out 2>&1
eval_tap $? 307 'BulkCredit' test.out

#- 308 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "0kQ0tLrL", "request": {"allowOverdraft": false, "amount": 54, "balanceOrigin": "Other", "balanceSource": "DLC_REVOCATION", "metadata": {"UmJtdLTI": {}, "B5ffEAVI": {}, "8e2LJMOO": {}}, "reason": "5gph2YKo"}, "userIds": ["SjYEllLH", "hohoUCWr", "Ie4LmKWn"]}, {"currencyCode": "0sDxUyCQ", "request": {"allowOverdraft": false, "amount": 66, "balanceOrigin": "Xbox", "balanceSource": "OTHER", "metadata": {"9Yzby2lQ": {}, "OrhrqHZd": {}, "fscUXtgE": {}}, "reason": "BQVtCnM5"}, "userIds": ["QUb0BNvv", "QGEjRsJ9", "IzdFRCEG"]}, {"currencyCode": "HtxQ9nqS", "request": {"allowOverdraft": false, "amount": 37, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"wMk6I5kd": {}, "6vaqZwEi": {}, "J2a0TZPp": {}}, "reason": "Ytk01AVi"}, "userIds": ["lxTmLcpx", "KsjmiXl0", "bNk20MdO"]}]' \
    > test.out 2>&1
eval_tap $? 308 'BulkDebit' test.out

#- 309 GetWallet
eval_tap 0 309 'GetWallet # SKIP deprecated' test.out

#- 310 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '2BE0zS0U' \
    --end 'YASwAJ7Q' \
    --start 'VCXY9uuz' \
    > test.out 2>&1
eval_tap $? 310 'SyncOrders' test.out

#- 311 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["SOIpBzWx", "KSjfieF6", "RFrqV6kV"], "apiKey": "rAH4XxvJ", "authoriseAsCapture": false, "blockedPaymentMethods": ["D0g6f8iA", "qwbSqMFx", "hhHgAqHK"], "clientKey": "2ZYVTjUx", "dropInSettings": "NZhFToXW", "liveEndpointUrlPrefix": "wMRmH0GZ", "merchantAccount": "RKblNDJd", "notificationHmacKey": "459jFpBJ", "notificationPassword": "FiOZFJVc", "notificationUsername": "RfdQMvCu", "returnUrl": "IQlRhFEd", "settings": "fmG2g88C"}' \
    > test.out 2>&1
eval_tap $? 311 'TestAdyenConfig' test.out

#- 312 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "LTHzdGzz", "privateKey": "I8j3zXiT", "publicKey": "9jy3Khcc", "returnUrl": "pldwbPsk"}' \
    > test.out 2>&1
eval_tap $? 312 'TestAliPayConfig' test.out

#- 313 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "9HwRiy7Q", "secretKey": "OF8pxfhK"}' \
    > test.out 2>&1
eval_tap $? 313 'TestCheckoutConfig' test.out

#- 314 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '8p8FNAo9' \
    --region 'cVE9kVRF' \
    > test.out 2>&1
eval_tap $? 314 'DebugMatchedPaymentMerchantConfig' test.out

#- 315 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "tiXVFFJw", "clientSecret": "eouGllEX", "returnUrl": "jjhA81VX", "webHookId": "Yi2teTe7"}' \
    > test.out 2>&1
eval_tap $? 315 'TestPayPalConfig' test.out

#- 316 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["K1J7lQFD", "WGyIGlo8", "4vm8in1S"], "publishableKey": "gtwSuCad", "secretKey": "150NII9Z", "webhookSecret": "ijQVQckP"}' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfig' test.out

#- 317 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "3cNHdtn8", "key": "iVrIYdpd", "mchid": "0564Si69", "returnUrl": "l5KadtZh"}' \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfig' test.out

#- 318 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "hnguSDYk", "flowCompletionUrl": "hAuVVk28", "merchantId": 72, "projectId": 53, "projectSecretKey": "HeipwyGp"}' \
    > test.out 2>&1
eval_tap $? 318 'TestXsollaConfig' test.out

#- 319 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'YufFrJ32' \
    > test.out 2>&1
eval_tap $? 319 'GetPaymentMerchantConfig' test.out

#- 320 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'qixkWotB' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["6CZuVyAz", "zgTpAZe9", "LSklJzCY"], "apiKey": "UUVBkFVs", "authoriseAsCapture": false, "blockedPaymentMethods": ["tiypjnAB", "o9IkCApz", "oRP0Jlgs"], "clientKey": "Z8LgL7qv", "dropInSettings": "H0b3lSlW", "liveEndpointUrlPrefix": "aq8MGIgu", "merchantAccount": "dZtN7dK8", "notificationHmacKey": "lNzgjy2Q", "notificationPassword": "dLjJ8ldx", "notificationUsername": "i3XncjYo", "returnUrl": "YF8d38uU", "settings": "zCP1rapF"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateAdyenConfig' test.out

#- 321 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'UUDvWYvn' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 321 'TestAdyenConfigById' test.out

#- 322 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Zi0KMAuW' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "3EKhuZvP", "privateKey": "J06ehkXE", "publicKey": "igiKpQ82", "returnUrl": "fIODQYly"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateAliPayConfig' test.out

#- 323 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'QU4OdQHz' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 323 'TestAliPayConfigById' test.out

#- 324 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'hTrUEvo8' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "qkDb5Evm", "secretKey": "UJs7L3Sy"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateCheckoutConfig' test.out

#- 325 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'xXlMObgL' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfigById' test.out

#- 326 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'W3DX33zA' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "HoLvHHt8", "clientSecret": "WKIUtA3X", "returnUrl": "hWg5w6sI", "webHookId": "4EZcbBI2"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePayPalConfig' test.out

#- 327 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'yyTbqYM2' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 327 'TestPayPalConfigById' test.out

#- 328 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'Xs22Q8Z3' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["jPvV9y7n", "IlMZ653u", "cczYJlWD"], "publishableKey": "ijFK0DOa", "secretKey": "3mrrlibG", "webhookSecret": "2jycmPTe"}' \
    > test.out 2>&1
eval_tap $? 328 'UpdateStripeConfig' test.out

#- 329 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'WVNReOXb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfigById' test.out

#- 330 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '87ifwyMQ' \
    --validate 'true' \
    --body '{"appId": "Asj75BV4", "key": "DD8styIL", "mchid": "s32yRjzy", "returnUrl": "lASpJetY"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateWxPayConfig' test.out

#- 331 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '32ED3yl1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 331 'UpdateWxPayConfigCert' test.out

#- 332 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'KcvsoY4u' \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfigById' test.out

#- 333 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'LZYnMY9i' \
    --validate 'false' \
    --body '{"apiKey": "lg5qDFxO", "flowCompletionUrl": "Qa8Yo0u8", "merchantId": 100, "projectId": 100, "projectSecretKey": "8kaDcoMY"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateXsollaConfig' test.out

#- 334 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'cpvhACmE' \
    > test.out 2>&1
eval_tap $? 334 'TestXsollaConfigById' test.out

#- 335 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'C9Q9FlSk' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateXsollaUIConfig' test.out

#- 336 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '100' \
    --namespace '7MCIwHMZ' \
    --offset '67' \
    --region 'SPYez6Qs' \
    > test.out 2>&1
eval_tap $? 336 'QueryPaymentProviderConfig' test.out

#- 337 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "cRJyERS1", "region": "OL7ZH39I", "sandboxTaxJarApiToken": "KoPPxNZt", "specials": ["PAYPAL", "PAYPAL", "ALIPAY"], "taxJarApiToken": "YzjudGk1", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 337 'CreatePaymentProviderConfig' test.out

#- 338 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 338 'GetAggregatePaymentProviders' test.out

#- 339 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'o6ochBfQ' \
    --region 'GUTUT5kA' \
    > test.out 2>&1
eval_tap $? 339 'DebugMatchedPaymentProviderConfig' test.out

#- 340 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 340 'GetSpecialPaymentProviders' test.out

#- 341 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'MhIQ9GKa' \
    --body '{"aggregate": "XSOLLA", "namespace": "Vl4CS97Y", "region": "7oJKzLYT", "sandboxTaxJarApiToken": "eHhxkvx6", "specials": ["CHECKOUT", "CHECKOUT", "WALLET"], "taxJarApiToken": "YVvtnxST", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePaymentProviderConfig' test.out

#- 342 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'CKzcdXTJ' \
    > test.out 2>&1
eval_tap $? 342 'DeletePaymentProviderConfig' test.out

#- 343 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 343 'GetPaymentTaxConfig' test.out

#- 344 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "LvPOMwVv", "taxJarApiToken": "ATpgFoq5", "taxJarEnabled": true, "taxJarProductCodesMapping": {"nNg1JTx8": "x9DGmMW3", "MaOxN3YL": "RsuXXPf5", "QOIdGXiO": "NtofdH3C"}}' \
    > test.out 2>&1
eval_tap $? 344 'UpdatePaymentTaxConfig' test.out

#- 345 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'Vv9HtLjC' \
    --end 'gc23Xsoh' \
    --start 'Buy1yO0c' \
    > test.out 2>&1
eval_tap $? 345 'SyncPaymentOrders' test.out

#- 346 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'yy6Zo1Yw' \
    --storeId '1TGqrZtl' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetRootCategories' test.out

#- 347 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '7BSIUQqH' \
    --storeId '0XpDzcwO' \
    > test.out 2>&1
eval_tap $? 347 'DownloadCategories' test.out

#- 348 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QeEnkxYe' \
    --namespace $AB_NAMESPACE \
    --language 'hUKpFFqm' \
    --storeId '5wcuHOso' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetCategory' test.out

#- 349 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'esHxvJtb' \
    --namespace $AB_NAMESPACE \
    --language 'zBLZUJWl' \
    --storeId '309FSLYg' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetChildCategories' test.out

#- 350 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'iTgiRhKG' \
    --namespace $AB_NAMESPACE \
    --language 'hbDGChkv' \
    --storeId '0b7i6JD4' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetDescendantCategories' test.out

#- 351 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 351 'PublicListCurrencies' test.out

#- 352 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 352 'GeDLCDurableRewardShortMap' test.out

#- 353 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 353 'GetIAPItemMapping' test.out

#- 354 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'WlipcTBb' \
    --region 'I8MDw2gC' \
    --storeId 'P0fHO8pl' \
    --appId 'c6Tksxbp' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItemByAppId' test.out

#- 355 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'vHPdKqtw' \
    --categoryPath 'vZNs7Zku' \
    --features 'u9w95FuP' \
    --includeSubCategoryItem 'false' \
    --itemType 'LOOTBOX' \
    --language 'oPjqyhgr' \
    --limit '11' \
    --offset '21' \
    --region 'k7ANvCfP' \
    --sortBy '["displayOrder:asc", "createdAt", "name:asc"]' \
    --storeId 'yxDu5HUv' \
    --tags '6I55n0DM' \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryItems' test.out

#- 356 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'lU303b9f' \
    --region 'JdVd5ph0' \
    --storeId 'ETNnttBB' \
    --sku 'Vu58phbb' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetItemBySku' test.out

#- 357 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'sY7nNnOD' \
    --storeId 'TdpOLtwc' \
    --itemIds 'rutR6xit' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetEstimatedPrice' test.out

#- 358 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'nNexRylr' \
    --region 'F5ReWv8u' \
    --storeId 'oqpAvtzQ' \
    --itemIds 'BpR2duKo' \
    > test.out 2>&1
eval_tap $? 358 'PublicBulkGetItems' test.out

#- 359 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["CFaeaRkT", "hbExB8cD", "W3s9U8G4"]}' \
    > test.out 2>&1
eval_tap $? 359 'PublicValidateItemPurchaseCondition' test.out

#- 360 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'LOOTBOX' \
    --limit '49' \
    --offset '89' \
    --region 'RFBgJDVN' \
    --storeId '89QNssSI' \
    --keyword 'Jyj4XB95' \
    --language '3iiwVFks' \
    > test.out 2>&1
eval_tap $? 360 'PublicSearchItems' test.out

#- 361 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'uIGbZZN9' \
    --namespace $AB_NAMESPACE \
    --language 'GGk81DD4' \
    --region 'LiPczebb' \
    --storeId 'FBsaX8EI' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetApp' test.out

#- 362 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'YSvfITy5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemDynamicData' test.out

#- 363 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'mtixtKm7' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'IrzErFPl' \
    --populateBundle 'false' \
    --region 'mDDl7VMX' \
    --storeId 'l7aMWB0o' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItem' test.out

#- 364 GetPaymentCustomization
eval_tap 0 364 'GetPaymentCustomization # SKIP deprecated' test.out

#- 365 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "EG3mSfrQ", "paymentProvider": "WXPAY", "returnUrl": "nVQcroZk", "ui": "aNxGeoZ6", "zipCode": "dIKbiHB8"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentUrl' test.out

#- 366 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oOVrFd6x' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetPaymentMethods' test.out

#- 367 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'j9Tsfd85' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUnpaidPaymentOrder' test.out

#- 368 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BgKH3QjP' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'sPHjVSI9' \
    --body '{"token": "nD3zrKhl"}' \
    > test.out 2>&1
eval_tap $? 368 'Pay' test.out

#- 369 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yAB4DfV2' \
    > test.out 2>&1
eval_tap $? 369 'PublicCheckPaymentOrderPaidStatus' test.out

#- 370 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'TW7pYsQV' \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentPublicConfig' test.out

#- 371 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'ZWHDT2gu' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetQRCode' test.out

#- 372 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'dGZvm7co' \
    --foreinginvoice 'Zq7rmlgr' \
    --invoiceId 'vQyD7JKZ' \
    --payload 'FpVtbayC' \
    --redirectResult 'QDRy8l78' \
    --resultCode 'v0HRDKP1' \
    --sessionId 'g95qCSPf' \
    --status 'Y50T04yb' \
    --token 'X0ZLOGbb' \
    --type 'yDf3o9Jh' \
    --userId 'iq4B4xrD' \
    --orderNo 'srYxOFTH' \
    --paymentOrderNo 'GiKeDlYH' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'O9P7vc3U' \
    > test.out 2>&1
eval_tap $? 372 'PublicNormalizePaymentReturnUrl' test.out

#- 373 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'MWwmKaLa' \
    --paymentOrderNo '9GYS4r8u' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 373 'GetPaymentTaxValue' test.out

#- 374 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'coKWTbZm' \
    > test.out 2>&1
eval_tap $? 374 'GetRewardByCode' test.out

#- 375 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'bCpESOt0' \
    --limit '8' \
    --offset '67' \
    --sortBy '["rewardCode:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 375 'QueryRewards1' test.out

#- 376 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Ab68jGqh' \
    > test.out 2>&1
eval_tap $? 376 'GetReward1' test.out

#- 377 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicListStores' test.out

#- 378 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["cnc2yP0X", "tU2yEO5Z", "RBURJAxz"]' \
    --itemIds '["Gb2mzTC3", "JOeQKVrd", "gDMPJXLS"]' \
    --skus '["WBuBkuog", "ZfSeVlBH", "Uz5WxJwa"]' \
    > test.out 2>&1
eval_tap $? 378 'PublicExistsAnyMyActiveEntitlement' test.out

#- 379 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'DyWgidoV' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 380 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'ysof8IfY' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 381 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'lhlWxCxa' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 382 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["AXKFF4rM", "oZSyd64t", "UBJ15AYa"]' \
    --itemIds '["wPN2iyvW", "1jfctia6", "24QCkjLo"]' \
    --skus '["XI902kap", "pNzfU4Zv", "DWYeZn5d"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetEntitlementOwnershipToken' test.out

#- 383 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "TnETQI7X", "language": "Khjy-ZBGq", "region": "GdD1KILj"}' \
    > test.out 2>&1
eval_tap $? 383 'SyncTwitchDropsEntitlement' test.out

#- 384 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'kbUHVoxV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyWallet' test.out

#- 385 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'aeoDAdC6' \
    --body '{"epicGamesJwtToken": "UVkI1g13"}' \
    > test.out 2>&1
eval_tap $? 385 'SyncEpicGameDLC' test.out

#- 386 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gLwN8v97' \
    > test.out 2>&1
eval_tap $? 386 'SyncOculusDLC' test.out

#- 387 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'zbRfIxFr' \
    --body '{"serviceLabel": 4}' \
    > test.out 2>&1
eval_tap $? 387 'PublicSyncPsnDlcInventory' test.out

#- 388 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'EFxHgcGa' \
    --body '{"serviceLabels": [50, 69, 7]}' \
    > test.out 2>&1
eval_tap $? 388 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 389 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'iGutN29x' \
    --body '{"appId": "pxzlsBh9", "steamId": "KzkgyvC7"}' \
    > test.out 2>&1
eval_tap $? 389 'SyncSteamDLC' test.out

#- 390 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qIGZv2f6' \
    --body '{"xstsToken": "eVnfrU5V"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncXboxDLC' test.out

#- 391 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wLJw8A07' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'glpBmTDS' \
    --features '["gO4nk9D4", "8Uqy3Y26", "ML05oWUu"]' \
    --itemId '["nksvQNbo", "iw2vIlGE", "hq8GTs5t"]' \
    --limit '4' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 391 'PublicQueryUserEntitlements' test.out

#- 392 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'b0PedCUD' \
    --appId 'LpDwYROF' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserAppEntitlementByAppId' test.out

#- 393 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ghyJ4Itw' \
    --limit '86' \
    --offset '8' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 393 'PublicQueryUserEntitlementsByAppType' test.out

#- 394 PublicGetUserEntitlementByItemId
eval_tap 0 394 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 395 PublicGetUserEntitlementBySku
eval_tap 0 395 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 396 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'lf4KaQCt' \
    --appIds '["fkuRxEqZ", "gbJMuo01", "2ErBRWin"]' \
    --itemIds '["f38FXBRn", "0QxCFEgL", "EGjnCFwU"]' \
    --skus '["alWiMvAM", "fy865XsB", "xqC71pzI"]' \
    > test.out 2>&1
eval_tap $? 396 'PublicExistsAnyUserActiveEntitlement' test.out

#- 397 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PhnIYS9C' \
    --appId 'c90oFsAa' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 398 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Ot85A3eW' \
    --entitlementClazz 'APP' \
    --itemId 'wJs9lVGh' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 399 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'dx8lBQcu' \
    --ids '["XKhsGr2R", "NY1HearC", "jzRY4xN3"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 400 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'SkbnlPo0' \
    --entitlementClazz 'APP' \
    --sku 'ibyGRQDQ' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 401 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'LBlO6Tgt' \
    --namespace $AB_NAMESPACE \
    --userId 'zCbf0tvW' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlement' test.out

#- 402 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'O9pscX3a' \
    --namespace $AB_NAMESPACE \
    --userId 'FVinqboE' \
    --body '{"options": ["bxW2Riev", "1kwRmwgQ", "mTQHgmQl"], "requestId": "2YUG895i", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 402 'PublicConsumeUserEntitlement' test.out

#- 403 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '5HY9eVIU' \
    --namespace $AB_NAMESPACE \
    --userId 'rb7lCR5u' \
    --body '{"requestId": "v8vEJH6E", "useCount": 58}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSellUserEntitlement' test.out

#- 404 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'UUHttxsJ' \
    --body '{"code": "Txku0fYR", "language": "wlD_991", "region": "6C11w83y"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicRedeemCode' test.out

#- 405 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'aEaQxlzv' \
    --body '{"excludeOldTransactions": true, "language": "ZZ", "productId": "MGiayrXw", "receiptData": "tNhvAgbz", "region": "KlYXkbRF", "transactionId": "GTm7SPOy"}' \
    > test.out 2>&1
eval_tap $? 405 'PublicFulfillAppleIAPItem' test.out

#- 406 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '8dVSjgyX' \
    --body '{"epicGamesJwtToken": "1a4Lk1Pt"}' \
    > test.out 2>&1
eval_tap $? 406 'SyncEpicGamesInventory' test.out

#- 407 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'oNt9Eqiq' \
    --body '{"autoAck": false, "language": "QIrX_NtOk", "orderId": "ydlTr3Cd", "packageName": "wV7hXiAu", "productId": "uFtqgKl5", "purchaseTime": 29, "purchaseToken": "arXaM5Nh", "region": "nPrvBq0u"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicFulfillGoogleIAPItem' test.out

#- 408 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '1OAEbm3m' \
    > test.out 2>&1
eval_tap $? 408 'SyncOculusConsumableEntitlements' test.out

#- 409 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'czGSWX9M' \
    --body '{"currencyCode": "XpaW54xi", "price": 0.7848496945768219, "productId": "grbySwqb", "serviceLabel": 50}' \
    > test.out 2>&1
eval_tap $? 409 'PublicReconcilePlayStationStore' test.out

#- 410 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'zoJGW62w' \
    --body '{"currencyCode": "20YoEZIG", "price": 0.961777259862305, "productId": "olLHakQw", "serviceLabels": [48, 34, 36]}' \
    > test.out 2>&1
eval_tap $? 410 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 411 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'dWHMWlsp' \
    --body '{"appId": "K73YPNbR", "currencyCode": "idRJTELH", "language": "ZkZT", "price": 0.2789749240318078, "productId": "lbFxoXl2", "region": "eZmOl97H", "steamId": "FQfRWkY5"}' \
    > test.out 2>&1
eval_tap $? 411 'SyncSteamInventory' test.out

#- 412 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'VoMOEF4E' \
    --body '{"gameId": "aN8clg54", "language": "wrqp_977", "region": "V4hCTf7v"}' \
    > test.out 2>&1
eval_tap $? 412 'SyncTwitchDropsEntitlement1' test.out

#- 413 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sj3sZBJ5' \
    --body '{"currencyCode": "48q3FaxP", "price": 0.5913575732850134, "productId": "RXw7wjKs", "xstsToken": "6wVpkUlQ"}' \
    > test.out 2>&1
eval_tap $? 413 'SyncXboxInventory' test.out

#- 414 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wvBBgKtp' \
    --itemId 'ob0IWYY6' \
    --limit '24' \
    --offset '97' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserOrders' test.out

#- 415 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'DmYRhoY4' \
    --body '{"currencyCode": "3d6MnzEX", "discountedPrice": 8, "ext": {"y7Uw7s0H": {}, "Zi9bI5uE": {}, "7mvvyVQ3": {}}, "itemId": "E06w5ri6", "language": "xARw", "price": 21, "quantity": 48, "region": "RlzIA0xp", "returnUrl": "0mfIAdhy", "sectionId": "XEgXwaHg"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateUserOrder' test.out

#- 416 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pms9OWUm' \
    --userId 'tf9w9CD9' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserOrder' test.out

#- 417 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '83isX9py' \
    --userId 'CYOqVTtQ' \
    > test.out 2>&1
eval_tap $? 417 'PublicCancelUserOrder' test.out

#- 418 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '69Lfcrqf' \
    --userId 'XVQVh2T8' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserOrderHistories' test.out

#- 419 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '515rfGQN' \
    --userId 'ld4LbwhB' \
    > test.out 2>&1
eval_tap $? 419 'PublicDownloadUserOrderReceipt' test.out

#- 420 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'AGZS3JBD' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentAccounts' test.out

#- 421 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'buetwCXq' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'SYXzkIVV' \
    > test.out 2>&1
eval_tap $? 421 'PublicDeletePaymentAccount' test.out

#- 422 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'dHhhdisF' \
    --autoCalcEstimatedPrice 'true' \
    --language 'yGnpfERz' \
    --region 'NaVcQku6' \
    --storeId 'HtluvDuf' \
    --viewId 'iaQNZxr6' \
    > test.out 2>&1
eval_tap $? 422 'PublicListActiveSections' test.out

#- 423 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'g64lPBmE' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'TPdxMdYB' \
    --limit '16' \
    --offset '70' \
    --sku 'bDWu3Ccx' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserSubscriptions' test.out

#- 424 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EK4pXZEx' \
    --body '{"currencyCode": "6oMVvufD", "itemId": "Vaha40Ae", "language": "SrnX", "region": "BVlNVCOz", "returnUrl": "9P2HzpbC", "source": "3eAuNonJ"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicSubscribeSubscription' test.out

#- 425 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'c3KgMBXB' \
    --itemId 'pXL1NKc1' \
    > test.out 2>&1
eval_tap $? 425 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 426 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pcHe0Rtv' \
    --userId 'wrdKMVG4' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserSubscription' test.out

#- 427 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kPN0Wc59' \
    --userId 'LHqCfvSU' \
    > test.out 2>&1
eval_tap $? 427 'PublicChangeSubscriptionBillingAccount' test.out

#- 428 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'X3rojow5' \
    --userId 'DY75wNid' \
    --body '{"immediate": false, "reason": "IbEPArhj"}' \
    > test.out 2>&1
eval_tap $? 428 'PublicCancelSubscription' test.out

#- 429 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pyNPXJAE' \
    --userId 'mBXkyr0f' \
    --excludeFree 'true' \
    --limit '65' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserSubscriptionBillingHistories' test.out

#- 430 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'LZPgdkpG' \
    --language 'TSuSpaB7' \
    --storeId 'kkZdIVpX' \
    > test.out 2>&1
eval_tap $? 430 'PublicListViews' test.out

#- 431 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '3Jt5ST1q' \
    --namespace $AB_NAMESPACE \
    --userId 'zySVG9X6' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetWallet' test.out

#- 432 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ZZxsumNU' \
    --namespace $AB_NAMESPACE \
    --userId 'hXbgJRHy' \
    --limit '62' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 432 'PublicListUserWalletTransactions' test.out

#- 433 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'enZ5A4MC' \
    --baseAppId 'mymwSyiq' \
    --categoryPath 'xwSoQdnk' \
    --features 'KlocyxJd' \
    --includeSubCategoryItem 'false' \
    --itemName 'Clt5Vrqr' \
    --itemStatus 'INACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '78' \
    --offset '83' \
    --region 'jnjOUSVQ' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "createdAt", "createdAt:desc"]' \
    --storeId 'sEh2P3bf' \
    --tags 'baNyDeNN' \
    --targetNamespace 'Jf87MiM2' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 433 'QueryItems1' test.out

#- 434 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ROAyH4rK' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 434 'ImportStore1' test.out

#- 435 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'fEstFLQH' \
    --body '{"itemIds": ["VOyhGh8h", "lT27fk5w", "nofvnQqg"]}' \
    > test.out 2>&1
eval_tap $? 435 'ExportStore1' test.out

#- 436 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'D08UxVzp' \
    --body '{"entitlementOrigin": "Xbox", "metadata": {"qcNRi7Xx": {}, "vX7VTVik": {}, "sIq1Wzbf": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "pm8qwuFW", "namespace": "jm1yttnV"}, "item": {"itemId": "XBsp2yGb", "itemSku": "DloqMf8e", "itemType": "7SiIGij4"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "L6wVeBaF", "namespace": "d7Lvg09K"}, "item": {"itemId": "0qVcdDko", "itemSku": "52RSrqRR", "itemType": "KAgaW1oL"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "ByJlVnvZ", "namespace": "quYlXdg7"}, "item": {"itemId": "0Gu3c4LE", "itemSku": "fXRuZb7a", "itemType": "VPOct3Sy"}, "quantity": 47, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "L52jWrcz"}' \
    > test.out 2>&1
eval_tap $? 436 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE