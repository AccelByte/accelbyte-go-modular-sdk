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
    --id 'LMSy7i6V' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'VeFRYuJA' \
    --body '{"grantDays": "b5WS8Yk2"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'PpVqQSfi' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '8htunpws' \
    --body '{"grantDays": "LUPBFoIK"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "LsGkai7Z", "dryRun": true, "fulfillmentUrl": "T7xeuG6n", "itemType": "EXTENSION", "purchaseConditionUrl": "zVHVrPTf"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'IgsWxHuI' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'sd32NSmP' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'YFq6qcc2' \
    --body '{"clazz": "7SwXxDoQ", "dryRun": false, "fulfillmentUrl": "DBeuGtMe", "purchaseConditionUrl": "gTkVlnUj"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'O0RGdDTc' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --name 'tFYTJ3UV' \
    --offset '92' \
    --tag 'Owo3pL7U' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IF1Ac0ga", "items": [{"extraSubscriptionDays": 56, "itemId": "v3enD0yS", "itemName": "ORk8S7GA", "quantity": 58}, {"extraSubscriptionDays": 16, "itemId": "4RnFs2NC", "itemName": "B1EAgMcK", "quantity": 43}, {"extraSubscriptionDays": 88, "itemId": "UeYcEVS3", "itemName": "DPHpTeO7", "quantity": 58}], "maxRedeemCountPerCampaignPerUser": 55, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 26, "maxSaleCount": 27, "name": "2caZtN6e", "redeemEnd": "1979-10-24T00:00:00Z", "redeemStart": "1977-11-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["21jri2Yv", "776Dr1mJ", "9teWki8l"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'JjyE1kpV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'D8xWmSax' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UH2Gf4Ke", "items": [{"extraSubscriptionDays": 64, "itemId": "JnPDlVdR", "itemName": "VlFiz6jf", "quantity": 58}, {"extraSubscriptionDays": 77, "itemId": "ZAFanPTs", "itemName": "MOLaCy22", "quantity": 69}, {"extraSubscriptionDays": 84, "itemId": "vkoXLg9X", "itemName": "Xcnj22FW", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 57, "maxRedeemCountPerCode": 84, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 57, "name": "fXepsCYE", "redeemEnd": "1978-10-11T00:00:00Z", "redeemStart": "1973-11-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["VKIu3BlF", "8JuB4GjH", "jr0xt6t6"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'IY1wFsQ6' \
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
    --body '{"appConfig": {"appName": "pTlFRXXc"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "MlbMSxkJ"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "5w9HMmdJ"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "1txwiRhg"}, "extendType": "CUSTOM"}' \
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
    --storeId 'b6aqmp4k' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'dPq7mUaP' \
    --body '{"categoryPath": "kDjFZzAA", "localizationDisplayNames": {"JbAGpHAu": "3y6NGRJh", "Dh82UMyM": "Q9RfT4i9", "iizT7bYk": "4zEifEo1"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'THBTBDrL' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'cEdpZ2SK' \
    --namespace $AB_NAMESPACE \
    --storeId 'K0JKEL0A' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'MieOG8dh' \
    --namespace $AB_NAMESPACE \
    --storeId 'pgHrmjeC' \
    --body '{"localizationDisplayNames": {"yhAp3bJ3": "1ySzaB6S", "49gwjIMW": "sJhK7UzE", "bXYIDuY1": "D06EICWc"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'YzN16tE0' \
    --namespace $AB_NAMESPACE \
    --storeId 'iBmmC3ji' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'yfuGvr8E' \
    --namespace $AB_NAMESPACE \
    --storeId '8IVkEPzE' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'thPgffm9' \
    --namespace $AB_NAMESPACE \
    --storeId '4n0STZ4a' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '4rNqAwcY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '40' \
    --code 'YlNj1wsQ' \
    --limit '86' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'GykZ9xsG' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 84}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'Qvvz46xN' \
    --namespace $AB_NAMESPACE \
    --batchNo '20' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'Y9RM5SBr' \
    --namespace $AB_NAMESPACE \
    --batchNo '71' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'qkpQh5LK' \
    --namespace $AB_NAMESPACE \
    --batchNo '41' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'lpmc3wmK' \
    --namespace $AB_NAMESPACE \
    --code 'GbqyV8hV' \
    --limit '75' \
    --offset '81' \
    --userId '4hrqts7s' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'BE6fjLWZ' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'AMRacSRb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'M3uvY3sn' \
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
    --body '{"currencyCode": "pg5sD9Qz", "currencySymbol": "KfNxFvdw", "currencyType": "VIRTUAL", "decimals": 40, "localizationDescriptions": {"qrr31gZm": "HGnfhoWl", "tPMOxiV7": "WIKEkr20", "44pySveG": "W7Jv10zb"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'pd6AEX63' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"uEJBHMru": "wyZvRNmt", "NKJ4ynMh": "V1qERSuD", "ux3hhOAu": "2rJAzMh8"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'NYrLTcEP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '9O8p8mOV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'FWnVHKqc' \
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
    --body '{"data": [{"id": "QyzjbJBn", "rewards": [{"currency": {"currencyCode": "Y7zdyKRh", "namespace": "OsHxQoAC"}, "item": {"itemId": "Uupg0bmg", "itemSku": "wqc95K32", "itemType": "cW0bLgQs"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "IFgOr0si", "namespace": "jXPcNZ2X"}, "item": {"itemId": "7AjHaJYo", "itemSku": "7j5BWx9C", "itemType": "i4B2VGoa"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "MiAbOmRv", "namespace": "17RJdGMo"}, "item": {"itemId": "j2VwQ6KV", "itemSku": "tqHovG9Y", "itemType": "9HfiYj9M"}, "quantity": 22, "type": "CURRENCY"}]}, {"id": "5S4dMzGt", "rewards": [{"currency": {"currencyCode": "YHNL5Ubb", "namespace": "nbVcO256"}, "item": {"itemId": "mdVifwNz", "itemSku": "HxAEKEkc", "itemType": "578LJ6At"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "mJp06jKb", "namespace": "R8KInTgB"}, "item": {"itemId": "YUjC2v2W", "itemSku": "ogTPZDia", "itemType": "d0Ob6Bnb"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "XcMOtyug", "namespace": "Wf8iPgm4"}, "item": {"itemId": "rGPzekmK", "itemSku": "J0ZDj14q", "itemType": "VTPlC5CI"}, "quantity": 20, "type": "CURRENCY"}]}, {"id": "SBkJVESc", "rewards": [{"currency": {"currencyCode": "ACXFovxT", "namespace": "YLMVqTBw"}, "item": {"itemId": "N0bAnIIS", "itemSku": "lYdPqvAz", "itemType": "lXcEnlKw"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "tBM6qo0x", "namespace": "z8ITEwjK"}, "item": {"itemId": "nO6vAOpm", "itemSku": "Z5MNBdr8", "itemType": "U8v8KKTH"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "8M3SIBBz", "namespace": "Svi9gcxI"}, "item": {"itemId": "TLuV4AFM", "itemSku": "cQHydCPc", "itemType": "njX9la7S"}, "quantity": 98, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"vUbHqotd": "0ZyJLYjQ", "z3trFD9p": "aMSWtVSt", "QVyz018d": "FfwryGdM"}}, {"platform": "STEAM", "platformDlcIdMap": {"qfFtHUOg": "HlO0dRra", "9U6sqVg7": "mnwiccXp", "rI8ZmUzm": "e3stIivg"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"mLIaCMJ3": "v3Ml2f54", "eTlSJEuy": "djFVrtnN", "Glf3Jam1": "QwIJ9CoT"}}]}' \
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
    --entitlementName 'XhL6YJ39' \
    --itemId '["BqVg5OW5", "ipInm8tD", "4HFyuDGA"]' \
    --limit '55' \
    --offset '90' \
    --userId 'y3lx0eyc' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["AePyjv9L", "gQMMzXVS", "pzxdKs13"]' \
    --limit '57' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1998-04-30T00:00:00Z", "grantedCode": "8KtonEQr", "itemId": "ohqAUM2p", "itemNamespace": "edExwgRb", "language": "RWX-bt", "quantity": 80, "region": "tpku49OU", "source": "OTHER", "startDate": "1973-11-15T00:00:00Z", "storeId": "mp5LPhXV"}, {"endDate": "1980-07-15T00:00:00Z", "grantedCode": "7jHtY317", "itemId": "91Eivm36", "itemNamespace": "wXOZSvwB", "language": "NWUt-Qnff-373", "quantity": 44, "region": "yVawAlUS", "source": "PROMOTION", "startDate": "1983-09-01T00:00:00Z", "storeId": "5gmO21zd"}, {"endDate": "1976-07-19T00:00:00Z", "grantedCode": "j8mSP0f8", "itemId": "fh0uXmYR", "itemNamespace": "g1tPJ6YO", "language": "cZQ-OgNv", "quantity": 90, "region": "2AQ3ZPRp", "source": "ACHIEVEMENT", "startDate": "1999-10-19T00:00:00Z", "storeId": "xOW3yKMl"}], "userIds": ["TaqZOlyo", "49Pko72S", "di1mTR3c"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["rOeMIIhS", "7hP3ukI0", "ADA6ApFx"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'y1TtyUAB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '36' \
    --status 'SUCCESS' \
    --userId 'fUCYKQ7D' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'oyUqs7t4' \
    --eventType 'OTHER' \
    --externalOrderId 'rIPGa6K1' \
    --limit '22' \
    --offset '52' \
    --startTime 'RFBmHmYN' \
    --status 'FAIL' \
    --userId 'SxR9AuGp' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "cKLiaD0j", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 41, "clientTransactionId": "jK8nr4Gt"}, {"amountConsumed": 94, "clientTransactionId": "fF4WQAic"}, {"amountConsumed": 82, "clientTransactionId": "1af0v8dI"}], "entitlementId": "dCheqfYq", "usageCount": 75}, {"clientTransaction": [{"amountConsumed": 47, "clientTransactionId": "51hYu46o"}, {"amountConsumed": 31, "clientTransactionId": "qETeqs9b"}, {"amountConsumed": 51, "clientTransactionId": "4ZpCqfVu"}], "entitlementId": "BERswjek", "usageCount": 30}, {"clientTransaction": [{"amountConsumed": 49, "clientTransactionId": "rm3DXO2b"}, {"amountConsumed": 23, "clientTransactionId": "ubhbWcKH"}, {"amountConsumed": 94, "clientTransactionId": "d5v4dtcx"}], "entitlementId": "k7a1nQ3u", "usageCount": 70}], "purpose": "TO3IfYds"}, "originalTitleName": "SDNPPvdp", "paymentProductSKU": "ZmZYOsYF", "purchaseDate": "N5S89GbY", "sourceOrderItemId": "cgz7PUIO", "titleName": "OL9p76HC"}, "eventDomain": "XvoUJEe1", "eventSource": "Qd98ZdMa", "eventType": "uRuNTp0W", "eventVersion": 33, "id": "V1ncJ9v0", "timestamp": "aPPvjg26"}' \
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
    --body '{"bundleId": "G7Tj8wE0", "password": "vYZZ5tht"}' \
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
    --body '{"sandboxId": "aUAlCTcz"}' \
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
    --body '{"applicationName": "W2RqXR8i", "serviceAccountId": "oHhghTkf"}' \
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
    --body '{"data": [{"itemIdentity": "hOYeNR8A", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DHkZYsZF": "weUw1Zs2", "RZ8oGWTN": "jMhzz2Kw", "QR8f36Ip": "3Txscz5D"}}, {"itemIdentity": "M24fATNZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"xWj9XlVB": "sp9GQfhO", "1c4NeDCu": "9yVM6xMk", "iYuqT9UR": "VD9KXloX"}}, {"itemIdentity": "1ScP5NCz", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"gBcYJQGI": "9ofg3duW", "NZrEqQ1d": "ABJ7YCWF", "jUCuPboV": "FokqaA6c"}}]}' \
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
    --body '{"appId": "cSTmmlhP", "appSecret": "cdqyjMBR"}' \
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
    --body '{"backOfficeServerClientId": "j5T6ND0N", "backOfficeServerClientSecret": "rsvUJGf3", "enableStreamJob": false, "environment": "BfoBF6Lr", "streamName": "ddNepepw", "streamPartnerName": "Mh7pIX7T"}' \
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
    --body '{"backOfficeServerClientId": "Eg4Ofs2A", "backOfficeServerClientSecret": "hpWDEjYC", "enableStreamJob": false, "environment": "Bho0FUcs", "streamName": "gy3lKO2l", "streamPartnerName": "zBiEzZGc"}' \
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
    --body '{"appId": "MA7Tt08i", "publisherAuthenticationKey": "mRHEC1Xu"}' \
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
    --body '{"clientId": "8KtNRTKW", "clientSecret": "XavKiK7y", "organizationId": "mgbhOhgw"}' \
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
    --body '{"relyingPartyCert": "vuglh8o8"}' \
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
    --password '892t1KzH' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'uq3KKFKK' \
    --itemId '1vU1wQnV' \
    --itemType 'MEDIA' \
    --endTime 'rrZnTjtu' \
    --startTime 'wThhvmnV' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'nxC7a1PO' \
    --itemId 'xBB00lCR' \
    --itemType 'OPTIONBOX' \
    --endTime 'oPL2807w' \
    --startTime 't3XFoNnh' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XS7pNjHY' \
    --body '{"categoryPath": "9PnNzEWb", "targetItemId": "bfuzmXMJ", "targetNamespace": "krNEmkpm"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'PxMmylVq' \
    --body '{"appId": "mSOvR43w", "appType": "GAME", "baseAppId": "BGXlp9Lt", "boothName": "bWvPBouz", "categoryPath": "3AohI7nX", "clazz": "aWksuEbc", "displayOrder": 76, "entitlementType": "DURABLE", "ext": {"DdEEf4CB": {}, "5CXJt7I9": {}, "YOYNSFVQ": {}}, "features": ["VOiTFhzK", "tzDkmclL", "xciWDv0E"], "flexible": true, "images": [{"as": "cZg9XkY5", "caption": "6P7A4U5x", "height": 77, "imageUrl": "qfZrrOSm", "smallImageUrl": "wwCWsgBr", "width": 77}, {"as": "9BhSUC1l", "caption": "UTtfm3OX", "height": 38, "imageUrl": "E2nA6E0M", "smallImageUrl": "00r1OdWc", "width": 96}, {"as": "mztPJFyV", "caption": "m6fi5mqc", "height": 25, "imageUrl": "GZhDziYz", "smallImageUrl": "9U0lsKnx", "width": 17}], "itemIds": ["aY5duS56", "SZVnHjZO", "Kol3wPQ5"], "itemQty": {"NpDfxBnU": 17, "AeNRCINe": 85, "oCO29qvU": 76}, "itemType": "SEASON", "listable": false, "localizations": {"QQ6u0mmi": {"description": "k0ezYKvY", "localExt": {"Iz2fKkLI": {}, "8AnEuOQ4": {}, "uj7RkpM5": {}}, "longDescription": "mbmi7Iot", "title": "c0Negpvc"}, "O6A8uDdj": {"description": "aUG8sO32", "localExt": {"4yWo8Ihg": {}, "6Jbljh2e": {}, "dnIMYzXI": {}}, "longDescription": "VFjFBuKQ", "title": "h6nbxbtY"}, "sCUi3gqT": {"description": "DYT2wYNO", "localExt": {"jHkYcRKC": {}, "mLLMKHMv": {}, "t8BHtBpo": {}}, "longDescription": "sp3JBTJ5", "title": "W5Dg8AdJ"}}, "lootBoxConfig": {"rewardCount": 91, "rewards": [{"lootBoxItems": [{"count": 13, "duration": 5, "endDate": "1988-09-28T00:00:00Z", "itemId": "enhFSEGo", "itemSku": "KE48xMjC", "itemType": "UZCkNEW8"}, {"count": 88, "duration": 34, "endDate": "1980-04-15T00:00:00Z", "itemId": "friQByoS", "itemSku": "JKdxAptN", "itemType": "7yY8InlL"}, {"count": 13, "duration": 13, "endDate": "1987-09-26T00:00:00Z", "itemId": "0hwnDsPN", "itemSku": "o8FoW3Uh", "itemType": "5VlZITjN"}], "name": "IibMr9qv", "odds": 0.4240457378839798, "type": "PROBABILITY_GROUP", "weight": 6}, {"lootBoxItems": [{"count": 70, "duration": 29, "endDate": "1998-10-21T00:00:00Z", "itemId": "Ohw6X3nq", "itemSku": "0rXvH3cd", "itemType": "21pa19Za"}, {"count": 0, "duration": 37, "endDate": "1984-09-05T00:00:00Z", "itemId": "HMBeSO9S", "itemSku": "WybGpRxO", "itemType": "4XLWsdzn"}, {"count": 65, "duration": 17, "endDate": "1972-04-18T00:00:00Z", "itemId": "CQRxUewY", "itemSku": "Myz5gju1", "itemType": "hoUKxhYv"}], "name": "c6XdsnU7", "odds": 0.08094180564765119, "type": "REWARD", "weight": 45}, {"lootBoxItems": [{"count": 12, "duration": 76, "endDate": "1996-10-26T00:00:00Z", "itemId": "gG3Zxg5R", "itemSku": "E8pOTQwu", "itemType": "4QqVAI5I"}, {"count": 59, "duration": 95, "endDate": "1991-03-28T00:00:00Z", "itemId": "qoG6uUAj", "itemSku": "TObXJp3k", "itemType": "hFGwn2KE"}, {"count": 67, "duration": 96, "endDate": "1995-07-11T00:00:00Z", "itemId": "umyPIt18", "itemSku": "RCFNRnQ8", "itemType": "hTdsjG9X"}], "name": "HEL31P13", "odds": 0.5561438613370637, "type": "PROBABILITY_GROUP", "weight": 5}], "rollFunction": "CUSTOM"}, "maxCount": 45, "maxCountPerUser": 46, "name": "5Qghj9BJ", "optionBoxConfig": {"boxItems": [{"count": 19, "duration": 86, "endDate": "1987-10-16T00:00:00Z", "itemId": "M28sEkAt", "itemSku": "gaS3s6S3", "itemType": "8PuEDtuC"}, {"count": 59, "duration": 94, "endDate": "1991-02-11T00:00:00Z", "itemId": "ozE1kcxs", "itemSku": "pJLaDX6E", "itemType": "lo01HG61"}, {"count": 88, "duration": 84, "endDate": "1983-10-05T00:00:00Z", "itemId": "uH9s70tk", "itemSku": "C0zAPvrq", "itemType": "VCOt9QBr"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 50, "fixedTrialCycles": 44, "graceDays": 79}, "regionData": {"BobIsboM": [{"currencyCode": "68pt4sm3", "currencyNamespace": "oyCTUr5c", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1996-08-18T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1985-01-01T00:00:00Z", "expireAt": "1988-03-31T00:00:00Z", "price": 79, "purchaseAt": "1976-02-02T00:00:00Z", "trialPrice": 70}, {"currencyCode": "V43Wk4A3", "currencyNamespace": "kUMTqQOr", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1998-03-06T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1987-07-17T00:00:00Z", "expireAt": "1985-08-29T00:00:00Z", "price": 30, "purchaseAt": "1985-11-16T00:00:00Z", "trialPrice": 49}, {"currencyCode": "TZmv13Fh", "currencyNamespace": "4sXVsEv3", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1998-01-05T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1996-07-12T00:00:00Z", "expireAt": "1999-11-16T00:00:00Z", "price": 5, "purchaseAt": "1971-04-18T00:00:00Z", "trialPrice": 92}], "psLJPwe1": [{"currencyCode": "TjLYxkMg", "currencyNamespace": "PmAS6jS2", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1974-05-17T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1987-08-15T00:00:00Z", "expireAt": "1974-01-05T00:00:00Z", "price": 64, "purchaseAt": "1999-08-26T00:00:00Z", "trialPrice": 32}, {"currencyCode": "fBruUvK6", "currencyNamespace": "6fdiIrUI", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1988-08-10T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1978-03-06T00:00:00Z", "expireAt": "1994-10-12T00:00:00Z", "price": 59, "purchaseAt": "1980-02-01T00:00:00Z", "trialPrice": 31}, {"currencyCode": "rR8FPW1B", "currencyNamespace": "dXFTTK6g", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1980-09-22T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1992-07-31T00:00:00Z", "expireAt": "1990-11-27T00:00:00Z", "price": 68, "purchaseAt": "1996-11-10T00:00:00Z", "trialPrice": 30}], "EY6k1fZF": [{"currencyCode": "KHnOQk3F", "currencyNamespace": "CnYk2TIn", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1976-11-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1993-10-08T00:00:00Z", "expireAt": "1972-02-09T00:00:00Z", "price": 79, "purchaseAt": "1980-05-15T00:00:00Z", "trialPrice": 78}, {"currencyCode": "c74Fj1ko", "currencyNamespace": "VvNTZi6k", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1992-08-22T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1983-07-20T00:00:00Z", "expireAt": "1974-12-04T00:00:00Z", "price": 74, "purchaseAt": "1975-12-13T00:00:00Z", "trialPrice": 22}, {"currencyCode": "ZhDfIT30", "currencyNamespace": "meib4x1N", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1998-07-01T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1994-09-28T00:00:00Z", "expireAt": "1985-03-23T00:00:00Z", "price": 17, "purchaseAt": "1982-06-30T00:00:00Z", "trialPrice": 68}]}, "saleConfig": {"currencyCode": "2Pb8bfwb", "price": 24}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "uvnFKlCD", "stackable": false, "status": "ACTIVE", "tags": ["l1Rg6mGz", "Ue5VkOwz", "CMUXSMeG"], "targetCurrencyCode": "pX2YiDdS", "targetNamespace": "0yJY0tZ6", "thumbnailUrl": "uh7TxqOo", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'cgXkAODd' \
    --appId 'arubkezR' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'PlNucC3w' \
    --baseAppId 'Yj0p7zqq' \
    --categoryPath 'jSDpnU2Q' \
    --features 'Xbt1iFuh' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --limit '87' \
    --offset '99' \
    --region 'WFf330yZ' \
    --sortBy '["displayOrder", "displayOrder:desc", "createdAt:desc"]' \
    --storeId 'p7I27bf2' \
    --tags 'yuAJb9mw' \
    --targetNamespace 'Bl0CzLxX' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["jK8p5sxG", "pfEL1UQm", "L0n4LMzX"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'KxU5q1ah' \
    --itemIds '6q6AIc4j' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'IVKmmGFN' \
    --sku 'Jt3Fxg3z' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'aHSnewKA' \
    --populateBundle 'true' \
    --region 'uHfCHHO3' \
    --storeId 'qflrzRYV' \
    --sku '0nnrZ8Lj' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '9GYUv1Fm' \
    --storeId 'TycQ7qvK' \
    --itemIds '5vSeNPDF' \
    --userId 'azbtONQ3' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'k6NUR6FU' \
    --sku '3QEBE9vG' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["1gXAtoUK", "OfeQqcL3", "Cnx2Fo6R"]' \
    --storeId '6EllOJ1V' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'eqMRkuFJ' \
    --region 'jtmKrNQY' \
    --storeId 'x1Z8y5uT' \
    --itemIds 'OJWfGBrw' \
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
    --userId 'tc1C60Po' \
    --body '{"itemIds": ["fOSfvuix", "0FfeCxiW", "UhHG95BG"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'V67ia8lL' \
    --body '{"changes": [{"itemIdentities": ["6mwilNg6", "nm1olshh", "J1tsitwn"], "itemIdentityType": "ITEM_SKU", "regionData": {"HsiEJWRb": [{"currencyCode": "IXXrXvEB", "currencyNamespace": "EbbLIW8d", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1971-02-13T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1971-05-21T00:00:00Z", "discountedPrice": 59, "expireAt": "1984-04-29T00:00:00Z", "price": 49, "purchaseAt": "1985-12-06T00:00:00Z", "trialPrice": 6}, {"currencyCode": "7AxnLJLO", "currencyNamespace": "826Cmj3e", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1985-09-10T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1978-12-05T00:00:00Z", "discountedPrice": 33, "expireAt": "1994-03-14T00:00:00Z", "price": 96, "purchaseAt": "1972-05-21T00:00:00Z", "trialPrice": 18}, {"currencyCode": "uVp8fdBv", "currencyNamespace": "UAvv4Lm3", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1986-03-02T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1998-08-24T00:00:00Z", "discountedPrice": 47, "expireAt": "1985-12-06T00:00:00Z", "price": 46, "purchaseAt": "1979-06-11T00:00:00Z", "trialPrice": 15}], "HidFr2Ec": [{"currencyCode": "KBABykW6", "currencyNamespace": "ivmV6WyC", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1995-05-27T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1976-05-31T00:00:00Z", "discountedPrice": 20, "expireAt": "1990-06-20T00:00:00Z", "price": 27, "purchaseAt": "1993-05-02T00:00:00Z", "trialPrice": 0}, {"currencyCode": "SAINEA2N", "currencyNamespace": "XXBBRPCE", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1993-05-02T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1972-06-08T00:00:00Z", "discountedPrice": 88, "expireAt": "1973-01-14T00:00:00Z", "price": 7, "purchaseAt": "1977-02-10T00:00:00Z", "trialPrice": 18}, {"currencyCode": "VcnLO6xa", "currencyNamespace": "vTkiAOgp", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1976-04-10T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1972-02-12T00:00:00Z", "discountedPrice": 83, "expireAt": "1983-03-03T00:00:00Z", "price": 87, "purchaseAt": "1987-06-26T00:00:00Z", "trialPrice": 19}], "kLxOySLC": [{"currencyCode": "Q230vqGF", "currencyNamespace": "Ay98bFSJ", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1982-10-16T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1981-07-15T00:00:00Z", "discountedPrice": 35, "expireAt": "1982-10-01T00:00:00Z", "price": 8, "purchaseAt": "1987-07-14T00:00:00Z", "trialPrice": 0}, {"currencyCode": "csKnqZEL", "currencyNamespace": "K3KDFEup", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1972-08-30T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1994-10-24T00:00:00Z", "discountedPrice": 12, "expireAt": "1999-01-04T00:00:00Z", "price": 25, "purchaseAt": "1998-02-21T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Rb3rncb8", "currencyNamespace": "KCkJSZWA", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1997-12-11T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1988-08-14T00:00:00Z", "discountedPrice": 33, "expireAt": "1998-10-30T00:00:00Z", "price": 45, "purchaseAt": "1997-12-29T00:00:00Z", "trialPrice": 26}]}}, {"itemIdentities": ["7jgZPoCG", "UlzqJvXr", "k7wSk6TV"], "itemIdentityType": "ITEM_ID", "regionData": {"P2zM5G7c": [{"currencyCode": "cDrxD6Mt", "currencyNamespace": "SY71o9X8", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1984-04-03T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1988-12-06T00:00:00Z", "discountedPrice": 17, "expireAt": "1997-05-13T00:00:00Z", "price": 92, "purchaseAt": "1977-09-05T00:00:00Z", "trialPrice": 90}, {"currencyCode": "OytM8PW2", "currencyNamespace": "0oVAISbP", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1986-11-01T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1977-04-22T00:00:00Z", "discountedPrice": 56, "expireAt": "1988-12-13T00:00:00Z", "price": 55, "purchaseAt": "1981-11-14T00:00:00Z", "trialPrice": 13}, {"currencyCode": "16NauMjC", "currencyNamespace": "UweTWJV1", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1991-07-31T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1990-04-08T00:00:00Z", "discountedPrice": 43, "expireAt": "1979-01-20T00:00:00Z", "price": 67, "purchaseAt": "1987-12-23T00:00:00Z", "trialPrice": 93}], "B3gdzBKf": [{"currencyCode": "uMFigQZ7", "currencyNamespace": "pbpz5ozd", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1988-06-09T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1979-11-13T00:00:00Z", "discountedPrice": 2, "expireAt": "1980-01-17T00:00:00Z", "price": 90, "purchaseAt": "1985-11-15T00:00:00Z", "trialPrice": 49}, {"currencyCode": "w0mySy5T", "currencyNamespace": "pYnvt8E7", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1988-08-28T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-04-13T00:00:00Z", "discountedPrice": 69, "expireAt": "1991-09-25T00:00:00Z", "price": 63, "purchaseAt": "1986-04-17T00:00:00Z", "trialPrice": 48}, {"currencyCode": "8LKBSpb2", "currencyNamespace": "qCPM0llV", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1994-03-01T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1973-09-16T00:00:00Z", "discountedPrice": 91, "expireAt": "1982-01-31T00:00:00Z", "price": 42, "purchaseAt": "1971-03-13T00:00:00Z", "trialPrice": 73}], "7JNgER1F": [{"currencyCode": "7EKbW5uW", "currencyNamespace": "EaUDvHIy", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1994-02-05T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1994-01-27T00:00:00Z", "discountedPrice": 98, "expireAt": "1999-03-10T00:00:00Z", "price": 2, "purchaseAt": "1985-04-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "nGzEhgD4", "currencyNamespace": "NJWg0Pu7", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1998-08-02T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1982-08-10T00:00:00Z", "discountedPrice": 53, "expireAt": "1989-08-21T00:00:00Z", "price": 13, "purchaseAt": "1998-06-08T00:00:00Z", "trialPrice": 35}, {"currencyCode": "fAVtMhlv", "currencyNamespace": "91Aw223o", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1999-02-27T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1980-05-20T00:00:00Z", "discountedPrice": 92, "expireAt": "1989-11-26T00:00:00Z", "price": 100, "purchaseAt": "1979-04-20T00:00:00Z", "trialPrice": 81}]}}, {"itemIdentities": ["GhUFWAMP", "SU6yrckf", "Fcvfp0wY"], "itemIdentityType": "ITEM_ID", "regionData": {"oZ7AAVgx": [{"currencyCode": "wdCgpsUG", "currencyNamespace": "VIYN0vuH", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1992-01-23T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-08-31T00:00:00Z", "discountedPrice": 96, "expireAt": "1985-07-16T00:00:00Z", "price": 89, "purchaseAt": "1984-09-06T00:00:00Z", "trialPrice": 50}, {"currencyCode": "Au3FxeiZ", "currencyNamespace": "I0y6Bnw7", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1986-12-01T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1999-06-24T00:00:00Z", "discountedPrice": 52, "expireAt": "1991-03-15T00:00:00Z", "price": 66, "purchaseAt": "1988-06-07T00:00:00Z", "trialPrice": 56}, {"currencyCode": "dbXjco2r", "currencyNamespace": "HqA6VpSp", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1978-01-09T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1998-10-23T00:00:00Z", "discountedPrice": 81, "expireAt": "1983-08-21T00:00:00Z", "price": 75, "purchaseAt": "1988-02-26T00:00:00Z", "trialPrice": 9}], "AZJ7YI8y": [{"currencyCode": "rUDpWagU", "currencyNamespace": "lNUXVsTP", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1971-11-22T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1971-12-29T00:00:00Z", "discountedPrice": 42, "expireAt": "1982-05-02T00:00:00Z", "price": 86, "purchaseAt": "1977-02-11T00:00:00Z", "trialPrice": 67}, {"currencyCode": "kCZ3bEqO", "currencyNamespace": "qfC7hBc3", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1972-11-11T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1971-07-15T00:00:00Z", "discountedPrice": 2, "expireAt": "1982-05-05T00:00:00Z", "price": 58, "purchaseAt": "1997-08-16T00:00:00Z", "trialPrice": 13}, {"currencyCode": "dnlATleJ", "currencyNamespace": "QRpUH4gU", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1973-04-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1988-11-26T00:00:00Z", "discountedPrice": 60, "expireAt": "1995-07-14T00:00:00Z", "price": 81, "purchaseAt": "1977-03-31T00:00:00Z", "trialPrice": 38}], "5BwY8agI": [{"currencyCode": "Z3Y59zbK", "currencyNamespace": "eRa5LErC", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1972-02-24T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1986-12-16T00:00:00Z", "discountedPrice": 100, "expireAt": "1998-12-17T00:00:00Z", "price": 18, "purchaseAt": "1999-04-16T00:00:00Z", "trialPrice": 19}, {"currencyCode": "3I2cEsDc", "currencyNamespace": "ENaHi5SV", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1987-09-23T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1993-05-30T00:00:00Z", "discountedPrice": 29, "expireAt": "1992-04-11T00:00:00Z", "price": 38, "purchaseAt": "1976-03-22T00:00:00Z", "trialPrice": 53}, {"currencyCode": "949ULonH", "currencyNamespace": "wzrj95Xv", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1985-11-04T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1988-08-16T00:00:00Z", "discountedPrice": 84, "expireAt": "1989-05-22T00:00:00Z", "price": 21, "purchaseAt": "1999-07-23T00:00:00Z", "trialPrice": 70}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'INGAMEITEM' \
    --limit '52' \
    --offset '92' \
    --sortBy 'MqWJEBq4' \
    --storeId 'eJlRAIA6' \
    --keyword 'jmE7fLie' \
    --language '2WFnd9xu' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '75' \
    --offset '51' \
    --sortBy '["name:desc", "createdAt:asc", "displayOrder:desc"]' \
    --storeId 'h84YWUl0' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'wLJd2FPK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'DGe6uOdO' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '4LmwH7os' \
    --namespace $AB_NAMESPACE \
    --storeId 'pndLak0R' \
    --body '{"appId": "B8suao1q", "appType": "DEMO", "baseAppId": "9aa2NKRD", "boothName": "z6Futb6p", "categoryPath": "wZzE0ZFT", "clazz": "ZnN0dYDm", "displayOrder": 26, "entitlementType": "DURABLE", "ext": {"SsD2V3je": {}, "ZeUu5ScN": {}, "tI8pwnqW": {}}, "features": ["wCtHK4CH", "XkqoWlWk", "rK5yAcHL"], "flexible": true, "images": [{"as": "GpvpmdCn", "caption": "aRgBKWXX", "height": 33, "imageUrl": "FKVaWamK", "smallImageUrl": "URQfc5CS", "width": 86}, {"as": "BHdkCdML", "caption": "iFdLOaso", "height": 16, "imageUrl": "md3soS3q", "smallImageUrl": "KxcKr0vv", "width": 43}, {"as": "nbcHE3PM", "caption": "iOdILELm", "height": 96, "imageUrl": "zvceS8pi", "smallImageUrl": "ngi7wwMc", "width": 69}], "itemIds": ["YEF50i4G", "0PY55Qxy", "wqlHsWVC"], "itemQty": {"jWCvUIXW": 6, "e6liegD8": 25, "MXFIN5rc": 4}, "itemType": "EXTENSION", "listable": true, "localizations": {"YNQymV2Q": {"description": "ht4lapEK", "localExt": {"hKMd0QrS": {}, "YvqMkhjj": {}, "85pJZbth": {}}, "longDescription": "qXFjDbhE", "title": "yW1SqJ98"}, "9CUL0UHc": {"description": "K2fC4PL4", "localExt": {"qkOxFJyY": {}, "bIhYghpJ": {}, "rdsOuWik": {}}, "longDescription": "RgIdecEH", "title": "Q02IY80O"}, "qebD2XyI": {"description": "embIcRhY", "localExt": {"1dLIqMj8": {}, "8zzyxTSw": {}, "w7Gh4sup": {}}, "longDescription": "ZLFYDUou", "title": "CUQNLrih"}}, "lootBoxConfig": {"rewardCount": 65, "rewards": [{"lootBoxItems": [{"count": 76, "duration": 11, "endDate": "1973-06-10T00:00:00Z", "itemId": "DPFBMVxJ", "itemSku": "Jdnb1VL5", "itemType": "1IhvOLCd"}, {"count": 31, "duration": 58, "endDate": "1974-03-10T00:00:00Z", "itemId": "d6iaDKuX", "itemSku": "cf79xNlP", "itemType": "eiv871kv"}, {"count": 75, "duration": 4, "endDate": "1993-01-31T00:00:00Z", "itemId": "iTdCoyie", "itemSku": "jqPNhVMW", "itemType": "SgB8yo3r"}], "name": "sWui8ijz", "odds": 0.5035665123141445, "type": "REWARD", "weight": 10}, {"lootBoxItems": [{"count": 54, "duration": 17, "endDate": "1980-10-12T00:00:00Z", "itemId": "az9DQu94", "itemSku": "oWIvyG3M", "itemType": "vZlkwgl3"}, {"count": 92, "duration": 12, "endDate": "1996-01-04T00:00:00Z", "itemId": "qlysEw8e", "itemSku": "AeMOhFK1", "itemType": "pgQwHCDS"}, {"count": 0, "duration": 41, "endDate": "1971-06-29T00:00:00Z", "itemId": "giKme4Du", "itemSku": "L1SopWZr", "itemType": "ws0vdGbK"}], "name": "kHqSzKuC", "odds": 0.26470184610262415, "type": "REWARD", "weight": 37}, {"lootBoxItems": [{"count": 100, "duration": 56, "endDate": "1973-06-05T00:00:00Z", "itemId": "BUoQO61J", "itemSku": "YFSxdVos", "itemType": "iIJVBMz7"}, {"count": 21, "duration": 95, "endDate": "1987-10-24T00:00:00Z", "itemId": "3u3LNRsg", "itemSku": "qcGi2kQ4", "itemType": "BDy2EUPf"}, {"count": 16, "duration": 21, "endDate": "1976-10-10T00:00:00Z", "itemId": "VNjrZlQN", "itemSku": "mJ5HmkPH", "itemType": "KbR3TzN9"}], "name": "D0avI2Xx", "odds": 0.34711285968192995, "type": "REWARD", "weight": 88}], "rollFunction": "DEFAULT"}, "maxCount": 3, "maxCountPerUser": 11, "name": "1IXt2utI", "optionBoxConfig": {"boxItems": [{"count": 10, "duration": 56, "endDate": "1992-12-08T00:00:00Z", "itemId": "bqZP9mU6", "itemSku": "Bu5llowK", "itemType": "oLZWuQ57"}, {"count": 59, "duration": 100, "endDate": "1971-07-08T00:00:00Z", "itemId": "hA8K3Zhu", "itemSku": "0TaDjpv9", "itemType": "4J9MO7YJ"}, {"count": 21, "duration": 90, "endDate": "1981-01-14T00:00:00Z", "itemId": "U0bJ0SKc", "itemSku": "5l0lm4bZ", "itemType": "Bvu71O3z"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 52, "fixedTrialCycles": 23, "graceDays": 73}, "regionData": {"Y3ItYgE5": [{"currencyCode": "H6lQgfND", "currencyNamespace": "dWfOeuwA", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1973-07-14T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1998-08-13T00:00:00Z", "expireAt": "1993-05-07T00:00:00Z", "price": 5, "purchaseAt": "1978-10-20T00:00:00Z", "trialPrice": 82}, {"currencyCode": "upMOLtwJ", "currencyNamespace": "hlDi45e6", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1981-04-17T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1993-09-09T00:00:00Z", "expireAt": "1982-02-18T00:00:00Z", "price": 1, "purchaseAt": "1977-03-01T00:00:00Z", "trialPrice": 58}, {"currencyCode": "ApdeznVc", "currencyNamespace": "rUWxxvco", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1971-11-20T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1988-05-06T00:00:00Z", "expireAt": "1995-10-09T00:00:00Z", "price": 27, "purchaseAt": "1996-08-06T00:00:00Z", "trialPrice": 34}], "Yj826idr": [{"currencyCode": "YdUug1Ca", "currencyNamespace": "zA0iPQ2Z", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1980-12-26T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1978-09-13T00:00:00Z", "expireAt": "1987-12-03T00:00:00Z", "price": 56, "purchaseAt": "1989-02-03T00:00:00Z", "trialPrice": 21}, {"currencyCode": "9DhZ4i7O", "currencyNamespace": "NihwmFxo", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1983-06-02T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1980-10-25T00:00:00Z", "expireAt": "1985-09-20T00:00:00Z", "price": 3, "purchaseAt": "1993-07-01T00:00:00Z", "trialPrice": 68}, {"currencyCode": "MorYI1vJ", "currencyNamespace": "OiOdu767", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1998-02-18T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1994-05-25T00:00:00Z", "expireAt": "1982-03-18T00:00:00Z", "price": 67, "purchaseAt": "1996-02-27T00:00:00Z", "trialPrice": 27}], "YZ9O5DAH": [{"currencyCode": "XyXZyOY5", "currencyNamespace": "69gple6F", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1991-12-31T00:00:00Z", "expireAt": "1972-06-20T00:00:00Z", "price": 71, "purchaseAt": "1991-08-31T00:00:00Z", "trialPrice": 17}, {"currencyCode": "5UB6gcya", "currencyNamespace": "Kv5E8jva", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1992-01-12T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1997-04-27T00:00:00Z", "expireAt": "1985-02-25T00:00:00Z", "price": 90, "purchaseAt": "1972-06-17T00:00:00Z", "trialPrice": 28}, {"currencyCode": "zkBtJjE4", "currencyNamespace": "xhPWzaUH", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1984-07-13T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1993-10-09T00:00:00Z", "expireAt": "1984-08-28T00:00:00Z", "price": 31, "purchaseAt": "1990-05-28T00:00:00Z", "trialPrice": 32}]}, "saleConfig": {"currencyCode": "TrkajP6V", "price": 63}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "BsZZpYp0", "stackable": false, "status": "ACTIVE", "tags": ["AElQbrEm", "sIPgWzqx", "L9Wbi9vz"], "targetCurrencyCode": "aGwwC9TC", "targetNamespace": "t5yVexFg", "thumbnailUrl": "xDWgjDGX", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'JtRzRwQS' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'XyFlSqr9' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '6gt0j5zw' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 3, "orderNo": "8RPCey7r"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'hXR4DmtS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'hgYIWe1E' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'cvoB7rHy' \
    --namespace $AB_NAMESPACE \
    --storeId '18PzYLYr' \
    --body '{"carousel": [{"alt": "2FOvxi7c", "previewUrl": "NuuFHMBk", "thumbnailUrl": "zhMFWa9J", "type": "image", "url": "ITQrLyjt", "videoSource": "generic"}, {"alt": "rvyve73v", "previewUrl": "ASOdKtm0", "thumbnailUrl": "MljUx0wR", "type": "video", "url": "IAeLehe5", "videoSource": "generic"}, {"alt": "HZEoCLSm", "previewUrl": "rz6bnoaM", "thumbnailUrl": "Ejk1y4Zx", "type": "image", "url": "6EITZiJs", "videoSource": "vimeo"}], "developer": "vWkDQrzI", "forumUrl": "8HWPOxel", "genres": ["Casual", "FreeToPlay", "Simulation"], "localizations": {"4CuGJEIe": {"announcement": "yavZ0SbO", "slogan": "VNJ6IceX"}, "ZJL6upL6": {"announcement": "SHTilEAb", "slogan": "8XOhzeTo"}, "TI0nmHqK": {"announcement": "CCeVJvKY", "slogan": "rw7741jN"}}, "platformRequirements": {"CIrRzy23": [{"additionals": "TDfcpzpK", "directXVersion": "D8f1LYAj", "diskSpace": "ygrZfgbS", "graphics": "lRDnXw87", "label": "HF9g0MkE", "osVersion": "IjHyevtG", "processor": "rCalhjUr", "ram": "Fhqqpsw1", "soundCard": "al3bi8TC"}, {"additionals": "wwypZn20", "directXVersion": "4WzIxEmJ", "diskSpace": "xefStoUg", "graphics": "zBbtIGAP", "label": "JnG2rUAZ", "osVersion": "3ZUpJgDc", "processor": "Y3dXSt07", "ram": "eN848zMp", "soundCard": "b5Kg4IXK"}, {"additionals": "pV1618oG", "directXVersion": "00OSNoSk", "diskSpace": "UsFiUrlX", "graphics": "kOU7xjql", "label": "hm5qua2a", "osVersion": "iP40aPYG", "processor": "2XX13RZz", "ram": "Xtjyhmv5", "soundCard": "EZnuPz1J"}], "TMF9eP5w": [{"additionals": "6QnLWfWo", "directXVersion": "RY2TuSR9", "diskSpace": "Ra8J34ps", "graphics": "N2JWkNoa", "label": "f2BxcOK1", "osVersion": "UzdeqvXa", "processor": "7onnmCuM", "ram": "fpJvMJyp", "soundCard": "vyZp63hy"}, {"additionals": "VlKblEkZ", "directXVersion": "fsCga1ew", "diskSpace": "5Ff8h0Af", "graphics": "utNjeQk1", "label": "eT2dbJhx", "osVersion": "icaM5p9c", "processor": "cU6FdayE", "ram": "8Weh3kDj", "soundCard": "ZbzLyRit"}, {"additionals": "fCED3YwB", "directXVersion": "xO9bcHZl", "diskSpace": "CFiuJNkZ", "graphics": "7LpSiXRk", "label": "3d3ZCGLr", "osVersion": "sDcvwyOf", "processor": "VT9fw9Te", "ram": "mIBcL5E8", "soundCard": "W9wn6dFM"}], "8kyimQVC": [{"additionals": "t094xHAx", "directXVersion": "6iq8sZKM", "diskSpace": "hTdeeVu4", "graphics": "5Y5QX8Wq", "label": "Lz9wpG9a", "osVersion": "2Ny0Ni9a", "processor": "AKnZGURq", "ram": "GS1xldVZ", "soundCard": "EAmjbifo"}, {"additionals": "3ss7VClF", "directXVersion": "pMQiT3Z6", "diskSpace": "O0vzgOXu", "graphics": "Rc6VxLWn", "label": "WjfrMACR", "osVersion": "LNwJ4fyy", "processor": "bkB7z1G8", "ram": "WOBliwjB", "soundCard": "PAsAF1Fg"}, {"additionals": "RvOHvkn5", "directXVersion": "Up4y3P5C", "diskSpace": "OLc8y6Tj", "graphics": "TetddwYI", "label": "GVVpTnqB", "osVersion": "YiyU3z3V", "processor": "CzdZnTxi", "ram": "Rem2a0SF", "soundCard": "jsPJSxgY"}]}, "platforms": ["Windows", "Android", "Windows"], "players": ["Coop", "MMO", "Multi"], "primaryGenre": "Indie", "publisher": "ZTGzAVjz", "releaseDate": "1973-10-13T00:00:00Z", "websiteUrl": "1c4pGy8v"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '2un08iQs' \
    --namespace $AB_NAMESPACE \
    --storeId 'k5S2Sn82' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'z5Mc7HO1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'KIazTv23' \
    --namespace $AB_NAMESPACE \
    --storeId 'MVl7Tw0m' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'wqF9qvCZ' \
    --itemId 'a4atQOrZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'y5zGgqgP' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'igA6dFyW' \
    --itemId 'g3iVdVRz' \
    --namespace $AB_NAMESPACE \
    --storeId 'AXsoI1Ua' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '3yWSGt6l' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'MKyfxzwv' \
    --populateBundle 'false' \
    --region '3XGVA9cC' \
    --storeId 'NThlFFBK' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'ZnSjNUPk' \
    --namespace $AB_NAMESPACE \
    --storeId 'R4ctSZJ2' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 43, "comparison": "isGreaterThanOrEqual", "name": "HOmNp0z3", "predicateType": "SeasonTierPredicate", "value": "9EwEmMAx", "values": ["plPPl3sa", "dTsZ7OgL", "VMhiwjZM"]}, {"anyOf": 18, "comparison": "isLessThan", "name": "TI74qpcR", "predicateType": "SeasonTierPredicate", "value": "kGOsVCbZ", "values": ["Qck4iXoF", "DJwQSri3", "NFkff9em"]}, {"anyOf": 42, "comparison": "isNot", "name": "n9KeMUfp", "predicateType": "EntitlementPredicate", "value": "E90jiDD7", "values": ["TDwrH0dQ", "4IT9O0o8", "65aMidcJ"]}]}, {"operator": "or", "predicates": [{"anyOf": 41, "comparison": "is", "name": "KbOOoY8m", "predicateType": "SeasonTierPredicate", "value": "764pTtV6", "values": ["88I3via9", "jzCxViKV", "chON3pbr"]}, {"anyOf": 78, "comparison": "isGreaterThan", "name": "axmBsrph", "predicateType": "EntitlementPredicate", "value": "fKgTy1d2", "values": ["cz7Sjbrz", "5i8t8neK", "celn3HEb"]}, {"anyOf": 52, "comparison": "includes", "name": "eHaeIy08", "predicateType": "SeasonTierPredicate", "value": "yEQe73P8", "values": ["0iVxGWkM", "wPIFMh3W", "hMO4y8i2"]}]}, {"operator": "and", "predicates": [{"anyOf": 83, "comparison": "isNot", "name": "uhMrOy3v", "predicateType": "EntitlementPredicate", "value": "xH4QhMNs", "values": ["KVMz9su2", "kmsiMSpI", "Q4JBBHEa"]}, {"anyOf": 52, "comparison": "isLessThanOrEqual", "name": "bJ2Jf2lU", "predicateType": "SeasonTierPredicate", "value": "uDFDuXUw", "values": ["OX1iSJVf", "WAg6jEJr", "h2aO81EK"]}, {"anyOf": 85, "comparison": "includes", "name": "Up7VxM5B", "predicateType": "SeasonPassPredicate", "value": "J2ArMbVS", "values": ["NGcPesBn", "nMft4VKI", "srgnVBqQ"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'qVfI2sS2' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "2M8QW3fS"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'PbsOQQJM' \
    --offset '78' \
    --tag '7XFEGoJM' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CsXlMLFA", "name": "f6g11YXN", "status": "ACTIVE", "tags": ["5qd6GuKi", "075zf3aw", "BpVwL20I"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'ekiSUQ92' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'NdfO4cZu' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1Phk2YZs", "name": "Lu3nmJFl", "status": "ACTIVE", "tags": ["b98M0tx3", "C0eK0Yzf", "Wl6Npmaq"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'pzQbV8o2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'dwJ0jHs7' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '6' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'A7BDyXdm' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'nts0GxBP' \
    --limit '50' \
    --offset '58' \
    --orderNos '["cxqq5W03", "nrVE9QW2", "nO7kkShU"]' \
    --sortBy 'xvYFlFqg' \
    --startTime 'Floqpr1W' \
    --status 'FULFILLED' \
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
    --orderNo 'TMiLDiql' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gnejTtd3' \
    --body '{"description": "LvbMmU64"}' \
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
    --body '{"dryRun": true, "notifyUrl": "pDwCFmS5", "privateKey": "6gm1HW5q"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Xt7979LI' \
    --externalId 'XStJIHfx' \
    --limit '73' \
    --notificationSource 'STRIPE' \
    --notificationType 'JmLhg44B' \
    --offset '44' \
    --paymentOrderNo 't9ryAvcT' \
    --startDate 'I17XgIGl' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '6Po05g2y' \
    --limit '82' \
    --offset '34' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "8vxocUhr", "currencyNamespace": "GY5rbrML", "customParameters": {"guEdOuyZ": {}, "y2eFancF": {}, "BidBe8Zs": {}}, "description": "BjeW3Bqr", "extOrderNo": "Pw1CImof", "extUserId": "HT6ukzHl", "itemType": "APP", "language": "jO_YSxS-qk", "metadata": {"N2K4vGTh": "odzRUJ7q", "ZkEuzFtr": "7maRtQsy", "5WSmI6Bu": "VowuN0JE"}, "notifyUrl": "0i6T8b86", "omitNotification": false, "platform": "PyC00P7x", "price": 67, "recurringPaymentOrderNo": "l1yTMdFv", "region": "G8FmRQjH", "returnUrl": "KszqVvaS", "sandbox": false, "sku": "TfahR325", "subscriptionId": "TzvBRMYJ", "targetNamespace": "I7wTwvIW", "targetUserId": "laHqSK8I", "title": "kbSnMYw9"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'YU6jdfoQ' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '04P4tDVm' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vowg0xGF' \
    --body '{"extTxId": "ObhJymP1", "paymentMethod": "Rmr3bq5p", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZOQppb33' \
    --body '{"description": "y6zCubHv"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WB7eEJz6' \
    --body '{"amount": 99, "currencyCode": "NKbP41Hb", "notifyType": "CHARGE", "paymentProvider": "PAYPAL", "salesTax": 8, "vat": 79}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YQlx7ywY' \
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
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Other", "GooglePlay", "System"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'lcgc6dj4' \
    --limit '21' \
    --offset '3' \
    --source 'DLC' \
    --startTime 'st7viY0I' \
    --status 'SUCCESS' \
    --transactionId 'FORvXvH6' \
    --userId 'vr9dVysG' \
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
    --body '{"appConfig": {"appName": "gwWhSNy3"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "0SMhb2PE"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "K1n1tkEC", "eventTopic": "pXBGlg6x", "maxAwarded": 56, "maxAwardedPerUser": 48, "namespaceExpression": "SAYETrH2", "rewardCode": "mS7DoMbT", "rewardConditions": [{"condition": "xbjhwYk1", "conditionName": "szAIFaMW", "eventName": "uXhf2gMS", "rewardItems": [{"duration": 87, "endDate": "1992-07-30T00:00:00Z", "itemId": "tlQqWb4Y", "quantity": 60}, {"duration": 55, "endDate": "1996-07-27T00:00:00Z", "itemId": "63hKaTlU", "quantity": 82}, {"duration": 43, "endDate": "1990-02-18T00:00:00Z", "itemId": "WoBJHNEs", "quantity": 45}]}, {"condition": "HzAHVM4r", "conditionName": "jwvY1scz", "eventName": "tX1ZBjQQ", "rewardItems": [{"duration": 24, "endDate": "1980-08-17T00:00:00Z", "itemId": "nmrarNxv", "quantity": 54}, {"duration": 92, "endDate": "1999-01-19T00:00:00Z", "itemId": "GHiU3Cx6", "quantity": 60}, {"duration": 65, "endDate": "1974-08-29T00:00:00Z", "itemId": "4XThNJRO", "quantity": 12}]}, {"condition": "srznNZwO", "conditionName": "v7yPLtpy", "eventName": "uIekWtZh", "rewardItems": [{"duration": 22, "endDate": "1991-02-22T00:00:00Z", "itemId": "fHHhOfHh", "quantity": 76}, {"duration": 52, "endDate": "1992-09-29T00:00:00Z", "itemId": "zNThtoVb", "quantity": 7}, {"duration": 9, "endDate": "1986-01-09T00:00:00Z", "itemId": "F04v3A1a", "quantity": 34}]}], "userIdExpression": "4ARmo5Hh"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '75TUg4UH' \
    --limit '77' \
    --offset '60' \
    --sortBy '["namespace:asc", "namespace", "namespace:desc"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'FrlXK01s' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ZgAdMnz2' \
    --body '{"description": "nUFikhij", "eventTopic": "0MBVbFy4", "maxAwarded": 77, "maxAwardedPerUser": 17, "namespaceExpression": "nQqYrboD", "rewardCode": "8ZzeCc7S", "rewardConditions": [{"condition": "0ktXOW6T", "conditionName": "H3uJ6Uny", "eventName": "eVDd4oHL", "rewardItems": [{"duration": 35, "endDate": "1971-08-14T00:00:00Z", "itemId": "UKkMC9zf", "quantity": 31}, {"duration": 95, "endDate": "1996-03-27T00:00:00Z", "itemId": "FKQ3jfvG", "quantity": 30}, {"duration": 85, "endDate": "1973-07-10T00:00:00Z", "itemId": "3DgLl2Gy", "quantity": 76}]}, {"condition": "QAR8U7uM", "conditionName": "4TRXKB3E", "eventName": "dv8gECvO", "rewardItems": [{"duration": 63, "endDate": "1972-10-18T00:00:00Z", "itemId": "ym6qTCaE", "quantity": 87}, {"duration": 78, "endDate": "1979-12-24T00:00:00Z", "itemId": "iaP2A9Xs", "quantity": 83}, {"duration": 94, "endDate": "1975-08-04T00:00:00Z", "itemId": "PylQNHAI", "quantity": 31}]}, {"condition": "ndQZqQlU", "conditionName": "RxptCqsh", "eventName": "EaOHalt6", "rewardItems": [{"duration": 9, "endDate": "1974-02-17T00:00:00Z", "itemId": "IwVZLXVf", "quantity": 20}, {"duration": 32, "endDate": "1976-11-22T00:00:00Z", "itemId": "oFH0xQGH", "quantity": 16}, {"duration": 84, "endDate": "1981-07-22T00:00:00Z", "itemId": "puW6QK0D", "quantity": 0}]}], "userIdExpression": "vZXUQ8Jc"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'rFrRqDal' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'm3jR5mb5' \
    --body '{"payload": {"TyyofhOf": {}, "mcfDkGGE": {}, "YORc0M5F": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'qbogXIc4' \
    --body '{"conditionName": "6jl84W7D", "userId": "2QOfAORY"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'D3O4Y9QO' \
    --limit '54' \
    --offset '95' \
    --start 'ZgiVjkSl' \
    --storeId 'fBpCuFu4' \
    --viewId 'XGgTzDDE' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'nIAEHUZI' \
    --body '{"active": true, "displayOrder": 58, "endDate": "1981-04-29T00:00:00Z", "ext": {"oAs6DQK3": {}, "o4eH7hjn": {}, "j4KmOQ0J": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 65, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "doO7SjiI", "sku": "JEfaCXpw"}, {"id": "AkwQkdbc", "sku": "ZGWED6yn"}, {"id": "V7mQFUUx", "sku": "ctKqYXnc"}], "localizations": {"HaAr1EiW": {"description": "ruxqAKGH", "localExt": {"hXCZIz5y": {}, "6ggVboN4": {}, "xgYdIN6S": {}}, "longDescription": "Lk0wmAVH", "title": "XEiBa0GM"}, "y0lUUOX4": {"description": "kD9fIJlt", "localExt": {"0GMS2kDC": {}, "QLCXbinW": {}, "jXwP0DGb": {}}, "longDescription": "wVEnKinL", "title": "2VqRrRcO"}, "UM7c9IoU": {"description": "yzLCPuvN", "localExt": {"92BLqDBk": {}, "8xxAxkCI": {}, "szYUrHyX": {}}, "longDescription": "XABhvxfy", "title": "Wi3dIZ07"}}, "name": "jhNoaY4O", "rotationType": "CUSTOM", "startDate": "1971-06-30T00:00:00Z", "viewId": "wq7tSKU8"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '7ZipD69C' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '0DbUOV2b' \
    --storeId 'H6S1Qxp8' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'hDRkWrsx' \
    --storeId 't1yrImpn' \
    --body '{"active": false, "displayOrder": 39, "endDate": "1973-11-04T00:00:00Z", "ext": {"EXDHkkXs": {}, "vPLtH7xi": {}, "HJtXDGCR": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 86, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "zI0PvaQd", "sku": "GxY7F5el"}, {"id": "pkP3lQMR", "sku": "rOg8X1Xi"}, {"id": "XHPfRHUw", "sku": "SNhkS4V4"}], "localizations": {"ookdXUfa": {"description": "c9zntWyW", "localExt": {"IHXqQf94": {}, "eopt3uBW": {}, "fyDzdYpG": {}}, "longDescription": "PPyMEfni", "title": "D1OrP1et"}, "fvJFEBaA": {"description": "3bLIzhKG", "localExt": {"6zX9IgDA": {}, "4aj4afkl": {}, "Akw3gA20": {}}, "longDescription": "QNg1vCxf", "title": "VXO428UU"}, "miItdmJP": {"description": "0CgAgPBn", "localExt": {"dh7rtn30": {}, "F9059x2E": {}, "tUGKfmUe": {}}, "longDescription": "N6ZBMIw4", "title": "S4b2dg9n"}}, "name": "rHpXfPSb", "rotationType": "CUSTOM", "startDate": "1985-10-20T00:00:00Z", "viewId": "MEjmcWxo"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'akeUH1Qk' \
    --storeId 'YNXfgmlX' \
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
    --body '{"defaultLanguage": "tas0jP2b", "defaultRegion": "HHZjQOfG", "description": "ibEwyyjZ", "supportedLanguages": ["aYa7ujSn", "HG38JlSd", "oyNQd4Iu"], "supportedRegions": ["foJfHaUK", "4qTmXzYl", "7fiu9Gad"], "title": "KhyWuvkF"}' \
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
    --storeId 'iqzl7goc' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '389hkAl2' \
    --body '{"defaultLanguage": "mjYQ054H", "defaultRegion": "CYN6I3kZ", "description": "oYFSDXXt", "supportedLanguages": ["pKjkU0I2", "NY9qAcXX", "32xl2CCS"], "supportedRegions": ["1jBKxlst", "GfQue1wY", "s3GXRCgR"], "title": "wxxp4jgK"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'IlQbQsQR' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'WjNspdgq' \
    --action 'DELETE' \
    --itemSku 'NeNtUzUo' \
    --itemType 'INGAMEITEM' \
    --limit '87' \
    --offset '55' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'ofpEXsK9' \
    --updatedAtStart 'RV2WdYS5' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'mnTS7jhx' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '7pZvswBj' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'El6HmCzw' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'z3Y2NZEa' \
    --action 'CREATE' \
    --itemSku 'KhJjJ4ek' \
    --itemType 'SUBSCRIPTION' \
    --type 'SECTION' \
    --updatedAtEnd 'jJlyB2kj' \
    --updatedAtStart 'WB05tMR7' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'CSiQTpse' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'A3EWajsO' \
    --namespace $AB_NAMESPACE \
    --storeId 'Hwztx1CM' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'KbljG6qs' \
    --namespace $AB_NAMESPACE \
    --storeId 'vL6WgrRZ' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'sULZfdsF' \
    --targetStoreId 'WXRYphWI' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'm97r8CJO' \
    --limit '15' \
    --offset '94' \
    --sku 'QqT0AqIF' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'DMvlAlVy' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0DLYwVwS' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '21XOsgPc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'gAKulozs' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "qRL99D1Z"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'lDJsaAmZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'fzH5rz3v' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 93, "orderNo": "PSJsJASi"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 10, "currencyCode": "q7HhJusO", "expireAt": "1997-10-12T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "PTr09wOH", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 1, "itemIdentity": "yFN7JyY1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "gUBLNPLx"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 2, "currencyCode": "3YkdoExu", "expireAt": "1976-04-30T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "LgYlnBoT", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 55, "itemIdentity": "qdwh66ml", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "coMjza9E"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 13, "currencyCode": "h0Kj5WyW", "expireAt": "1994-04-30T00:00:00Z"}, "debitPayload": {"count": 1, "currencyCode": "zNpsMW0g", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 16, "itemIdentity": "P1BdcgjD", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "VUjIMAo0"}, "type": "DEBIT_WALLET"}], "userId": "KVq4geHA"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 64, "currencyCode": "RVIKApuR", "expireAt": "1997-01-28T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "eg8Aflpr", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 30, "itemIdentity": "5UFSRfOe", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "PevrcxU0"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 16, "currencyCode": "etSBW9yI", "expireAt": "1987-12-31T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "p3VdJa5h", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 8, "itemIdentity": "xjwStegR", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "OJgRlAtM"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 70, "currencyCode": "v4UwXyRW", "expireAt": "1997-04-28T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "eFDQ5f4q", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 14, "itemIdentity": "VScbsveK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "DrEZdGWU"}, "type": "CREDIT_WALLET"}], "userId": "Z5y9DHpH"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 62, "currencyCode": "UucOCpSW", "expireAt": "1985-10-18T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "XkFQwRHi", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 34, "itemIdentity": "oqCmviQe", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "8TZnBZvW"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 51, "currencyCode": "7WPuBBwo", "expireAt": "1989-10-20T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "VIPGr1Th", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 49, "itemIdentity": "r7TAt4Iv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "TI1R0igu"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 72, "currencyCode": "xA0JCec0", "expireAt": "1979-06-06T00:00:00Z"}, "debitPayload": {"count": 27, "currencyCode": "276bU7OJ", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 7, "itemIdentity": "SPiKLEhM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 38, "entitlementId": "AV94AxvU"}, "type": "CREDIT_WALLET"}], "userId": "kITvoW6d"}], "metadata": {"CEE5i8fh": {}, "NZppSrHB": {}, "RCqYboe4": {}}, "needPreCheck": true, "transactionId": "vqsqdBJN", "type": "RuCeZDK6"}' \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '88' \
    --status 'INIT' \
    --type 'kTizGy39' \
    --userId '1qx9UvKZ' \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'gRlV3QnK' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'boEeRDyB' \
    --body '{"achievements": [{"id": "1b6ls6Ft", "value": 53}, {"id": "NU9qC8Bg", "value": 45}, {"id": "pqO8BXm9", "value": 16}], "steamUserId": "8ZfYQVrl"}' \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'S6976pM2' \
    --xboxUserId 'xhWsRjgV' \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'O59xhvma' \
    --body '{"achievements": [{"id": "jbCKeXvA", "percentComplete": 12}, {"id": "9SdxkBxp", "percentComplete": 36}, {"id": "Yq6tBkK0", "percentComplete": 87}], "serviceConfigId": "JxMLfE5Y", "titleId": "yBLd29nv", "xboxUserId": "wrBGtUj9"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Zr7mK0LH' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4vSghuZn' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '7yHEWR8Q' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Z9yY71Kw' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'zK9UVagx' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'UhW1RnI6' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'omlU78mr' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '7KjbwUoV' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'yhhpMCVq' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'rhLxa3gx' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JyGFsPAT' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gMt5Q9I8' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'CODE' \
    --entitlementName '9RlEN1Sv' \
    --features '["OjD1hKVt", "Zl0AoJCY", "8xbiJiRo"]' \
    --itemId '["9KBUVcRH", "ZlvoDLj0", "ac3AbRNu"]' \
    --limit '69' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pmlHLllU' \
    --body '[{"endDate": "1996-06-14T00:00:00Z", "grantedCode": "uS3nx9pA", "itemId": "C2fs1Hlx", "itemNamespace": "nJwmMXE3", "language": "sal-RrFr", "quantity": 76, "region": "5R7b8Jbo", "source": "IAP", "startDate": "1975-09-15T00:00:00Z", "storeId": "d4uEyIT8"}, {"endDate": "1980-11-03T00:00:00Z", "grantedCode": "qa3ALjEw", "itemId": "kIQl7vny", "itemNamespace": "wco7Kcpl", "language": "KVA_133", "quantity": 12, "region": "EvihmG42", "source": "REDEEM_CODE", "startDate": "1994-12-21T00:00:00Z", "storeId": "6Y2aVCqH"}, {"endDate": "1971-04-05T00:00:00Z", "grantedCode": "Nirs88sH", "itemId": "Ymwl1Rxb", "itemNamespace": "30yWF97a", "language": "ixz_Rbes", "quantity": 15, "region": "NAir0mGA", "source": "GIFT", "startDate": "1998-01-09T00:00:00Z", "storeId": "0isUMDyW"}]' \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 't5VFrAFL' \
    --activeOnly 'false' \
    --appId 'jOron9Yh' \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'brFX8Wb9' \
    --activeOnly 'false' \
    --limit '15' \
    --offset '12' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'EP0A7ELD' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'KJ6LOdO8' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'kModDkU4' \
    --ids '["ou1upsao", "xd6mmEVL", "b63XomM5"]' \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'aFMiLgOF' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --sku '37IvYzer' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'qJkuwf0Y' \
    --appIds '["Iavy4Lcb", "8UqvdPJP", "rh1iraUX"]' \
    --itemIds '["pEuRXvyA", "OlE91wiB", "wNMR37Rb"]' \
    --skus '["8RFt6UYz", "OKkG35Ku", "9SvbClDP"]' \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Tzrx0al8' \
    --itemIds '["dc5HO8tQ", "zBftQVxY", "e8ljhUu2"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tT9SqdWm' \
    --appId 'M8fsBJfP' \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'j8XQWEAG' \
    --entitlementClazz 'MEDIA' \
    --itemId 'L8MKobOq' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QOdLzbGp' \
    --ids '["RKxaZZUV", "59hiiEdQ", "26dF5btP"]' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'WOPG9O77' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'uiMp4bDY' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'J4y31tFS' \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LR4MwdOr' \
    --entitlementIds 'X67uflXG' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Q3kJ4hCI' \
    --namespace $AB_NAMESPACE \
    --userId 'fCZMnHu2' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'iALr7qYW' \
    --namespace $AB_NAMESPACE \
    --userId 'frld1Fy5' \
    --body '{"endDate": "1997-02-10T00:00:00Z", "nullFieldList": ["AUCDIiyw", "hJnHTtSQ", "DDZGhDEY"], "startDate": "1994-01-01T00:00:00Z", "status": "SOLD", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '7qLRHDA2' \
    --namespace $AB_NAMESPACE \
    --userId 'E5AB0cwZ' \
    --body '{"options": ["mWlJ4VjW", "jkUeZwHe", "MZuPzV7Z"], "requestId": "cVLYp4Fd", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '20na9zHf' \
    --namespace $AB_NAMESPACE \
    --userId 'Eg6RpbJG' \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'U4xN98Dp' \
    --namespace $AB_NAMESPACE \
    --userId 'DTGMkEGC' \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'p0nYXBWr' \
    --namespace $AB_NAMESPACE \
    --userId 'XPX8s05a' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'vRt3bgBs' \
    --namespace $AB_NAMESPACE \
    --userId 'njgAtRrS' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'qYMipkyO' \
    --namespace $AB_NAMESPACE \
    --userId 'Srghg59E' \
    --body '{"reason": "c2xCYjJs", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'HLK2gdAE' \
    --namespace $AB_NAMESPACE \
    --userId 'zM46BTcN' \
    --body '{"requestId": "90FnRzea", "useCount": 70}' \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'pKu4l2jQ' \
    --body '{"duration": 98, "endDate": "1988-11-10T00:00:00Z", "itemId": "885Bo69Y", "itemSku": "EwYthZrd", "language": "yJKHN8RI", "metadata": {"aPeVQHlo": {}, "8n56ABHH": {}, "pUBCXUZr": {}}, "order": {"currency": {"currencyCode": "64CVvZxh", "currencySymbol": "EQQ0Yhkl", "currencyType": "REAL", "decimals": 33, "namespace": "rl1kQQvZ"}, "ext": {"MDAaAULr": {}, "668Y5QOj": {}, "RF9QwEu7": {}}, "free": false}, "orderNo": "TCwCYBqr", "origin": "Epic", "overrideBundleItemQty": {"HpSHcgtf": 57, "3ztPfZY6": 92, "DtuOtZnM": 94}, "quantity": 45, "region": "AEp30OId", "source": "REFERRAL_BONUS", "startDate": "1981-12-14T00:00:00Z", "storeId": "cj4s02Lr"}' \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'whcSoJ36' \
    --body '{"code": "GIkwywpv", "language": "jeSP_oy", "region": "PrFUhzLq"}' \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'MB8nZYXr' \
    --body '{"metadata": {"MstCKUZf": {}, "nQMqXnb4": {}, "xTVM7n4A": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "5N91JR7u", "namespace": "fnknI6vT"}, "item": {"itemId": "vte7I6EA", "itemSku": "iZV7yi7s", "itemType": "NaTZ4jQc"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "LBo48Lgo", "namespace": "16ukmE33"}, "item": {"itemId": "d9NACLFn", "itemSku": "lPhLWUuW", "itemType": "xiy1Sbj5"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "HGYqvbsA", "namespace": "jSu4r8uK"}, "item": {"itemId": "278eIQcV", "itemSku": "MICPqLwo", "itemType": "QSx5C88T"}, "quantity": 57, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "TE4GuCBi"}' \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'QVQsJXJf' \
    --endTime 'Sz4b5nMz' \
    --limit '4' \
    --offset '64' \
    --productId 'xpFYHKM6' \
    --startTime 'ipJFZWHa' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '9kTQQxyC' \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'TRVcu0bS' \
    --endTime 'vVPJTJct' \
    --limit '27' \
    --offset '39' \
    --startTime 'kkORQv9b' \
    --status 'SUCCESS' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Rrh8NUEF' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "YZT-qwNb", "productId": "2gsEVz6Z", "region": "mF4IuPYK", "transactionId": "mpJctMRr", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'L83JntCs' \
    --itemId 'jBwNpdMR' \
    --limit '76' \
    --offset '0' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '4YD87qeJ' \
    --body '{"currencyCode": "jONaH0LT", "currencyNamespace": "P4SK9fPP", "discountedPrice": 45, "ext": {"D1xKLHP3": {}, "IFEQtgpD": {}, "3S0UieiX": {}}, "itemId": "b5ckbAMn", "language": "9n7KKsHd", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 25, "quantity": 16, "region": "tb6k5ohF", "returnUrl": "Rdvrwvdl", "sandbox": false, "sectionId": "BhpAXK4p"}' \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '0AYVe75C' \
    --itemId '3P3DralW' \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'w1HopXf6' \
    --userId 'Tloz6MCF' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'VSwYKcST' \
    --userId 'vzaESjd0' \
    --body '{"status": "CLOSED", "statusReason": "C0NrLbLU"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fSUHRdvy' \
    --userId 'LaBkUWLw' \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'FfHzABJh' \
    --userId 'X7WojUxh' \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'jOpbrPjU' \
    --userId 'REviqKw3' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'WIWK9Yva' \
    --userId 'tqrvvWDY' \
    --body '{"additionalData": {"cardSummary": "lQhpOb47"}, "authorisedTime": "1990-05-20T00:00:00Z", "chargebackReversedTime": "1994-10-24T00:00:00Z", "chargebackTime": "1987-11-24T00:00:00Z", "chargedTime": "1971-04-09T00:00:00Z", "createdTime": "1971-03-14T00:00:00Z", "currency": {"currencyCode": "BcFf3iWz", "currencySymbol": "aowiGVBj", "currencyType": "REAL", "decimals": 73, "namespace": "b5ROZSoR"}, "customParameters": {"v4RrtuQb": {}, "pEjZnhTc": {}, "HfJFASgt": {}}, "extOrderNo": "0wVFv030", "extTxId": "74Lh5jqU", "extUserId": "NS7aqCYN", "issuedAt": "1984-09-23T00:00:00Z", "metadata": {"T8x3U2KN": "hOyz2MAB", "7PF7pgu8": "yEmU9lKc", "dhHpPXc9": "snbzC6Za"}, "namespace": "z8aUnp1T", "nonceStr": "ehPrRmn4", "paymentMethod": "mPT8EFWv", "paymentMethodFee": 1, "paymentOrderNo": "X0k8zdXA", "paymentProvider": "ADYEN", "paymentProviderFee": 79, "paymentStationUrl": "Rjb0jIPw", "price": 65, "refundedTime": "1988-07-05T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "Tg1ExZsy", "status": "CHARGEBACK_REVERSED", "statusReason": "WmJ0u4qP", "subscriptionId": "FDCuxYNP", "subtotalPrice": 100, "targetNamespace": "yYqtzAeD", "targetUserId": "EnKBgRNb", "tax": 32, "totalPrice": 10, "totalTax": 67, "txEndTime": "1977-12-31T00:00:00Z", "type": "dYSgXjAd", "userId": "o93P7OQC", "vat": 88}' \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'qKnzy6HZ' \
    --userId 'hKfh92bl' \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'mpomlTIi' \
    --body '{"currencyCode": "pUAC1Hu8", "currencyNamespace": "DBZ7Zsxe", "customParameters": {"fEJV5sJz": {}, "2TVfsJpl": {}, "pB16hrhU": {}}, "description": "66N71lmH", "extOrderNo": "wEcGIc63", "extUserId": "qdvAfTHn", "itemType": "BUNDLE", "language": "oDE-ktOq_oR", "metadata": {"6NIAae1t": "MB00K3LB", "lzuvDndo": "h8OniyFF", "oC60LiB2": "sR02oIyM"}, "notifyUrl": "8bXulZ5D", "omitNotification": false, "platform": "VGjlIiQh", "price": 9, "recurringPaymentOrderNo": "Kg1NYli3", "region": "yuiDZBMW", "returnUrl": "RQvxjRqn", "sandbox": false, "sku": "J8U54Tsz", "subscriptionId": "PN6X49n9", "title": "E25QOoP9"}' \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4Z7t4Tjr' \
    --userId 'YVAAPJZX' \
    --body '{"description": "fzm1RGd1"}' \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'a2m8mYL4' \
    --body '{"code": "gLvdflys", "orderNo": "UspEzOWQ"}' \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'CJa0F2vu' \
    --body '{"meta": {"WsUNu0oR": {}, "7ftxdOeK": {}, "WS3loLK1": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "xbBqkYur", "namespace": "SeMIzgqx"}, "entitlement": {"entitlementId": "DYIcgxD5"}, "item": {"itemIdentity": "CcbTDwHN", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "93mHqrRC", "namespace": "biMvy62L"}, "entitlement": {"entitlementId": "flzKTQNi"}, "item": {"itemIdentity": "8nUpzLTz", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 60, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "sVYAJ1Gq", "namespace": "F3aMzega"}, "entitlement": {"entitlementId": "7ECxzudO"}, "item": {"itemIdentity": "60pwUQIc", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 13, "type": "ITEM"}], "source": "ORDER", "transactionId": "JDXuFFTb"}' \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'uRmoXgz3' \
    --body '{"gameSessionId": "zO0iAA48", "payload": {"vnnQrN3V": {}, "Izp65Z2b": {}, "ui5syRGO": {}}, "scid": "J2MUkd0v", "sessionTemplateName": "GHKoqkuj"}' \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '5F2uBOfe' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '51DLNHfy' \
    --limit '43' \
    --offset '63' \
    --sku 'YYZralp0' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '6a7S8VfT' \
    --excludeSystem 'false' \
    --limit '12' \
    --offset '15' \
    --subscriptionId 'L75P91Zm' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RwDm4EOL' \
    --body '{"grantDays": 40, "itemId": "TBUjUUTa", "language": "mN6dvzIG", "reason": "IJWNJZRN", "region": "4HzLazXc", "source": "e6NFJpCG"}' \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'd9VtoNsA' \
    --itemId 'dQ5ai4KW' \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WOzporJy' \
    --userId 'de2Ut6iK' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'A5qcwcus' \
    --userId 'c4yoQsg1' \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nFw8DXEV' \
    --userId 'qE7OPcEH' \
    --force 'true' \
    --body '{"immediate": true, "reason": "CpSCcWOa"}' \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1ta66TMK' \
    --userId 'cVfz5dvJ' \
    --body '{"grantDays": 68, "reason": "10v7VgPc"}' \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5do3jjUj' \
    --userId 'xJVQ9D7W' \
    --excludeFree 'true' \
    --limit '25' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 't6zzkbDZ' \
    --userId 'WcNsg5Vz' \
    --body '{"additionalData": {"cardSummary": "4lKo56zu"}, "authorisedTime": "1989-06-27T00:00:00Z", "chargebackReversedTime": "1972-03-03T00:00:00Z", "chargebackTime": "1997-07-28T00:00:00Z", "chargedTime": "1975-03-11T00:00:00Z", "createdTime": "1976-12-18T00:00:00Z", "currency": {"currencyCode": "DOJne15c", "currencySymbol": "t6nj6JAA", "currencyType": "REAL", "decimals": 86, "namespace": "E4HI7jfh"}, "customParameters": {"wV57KZii": {}, "RZmGygzs": {}, "DlAy3Yan": {}}, "extOrderNo": "NzW39OCz", "extTxId": "Z5uOWuMR", "extUserId": "9nkhjJXr", "issuedAt": "1990-11-13T00:00:00Z", "metadata": {"NTiC6Dm4": "RHEGLclh", "Gd2dWCcf": "p4cJ4FXs", "1IShV8LJ": "ldMmrc96"}, "namespace": "Rc4iclXv", "nonceStr": "X490kpwS", "paymentMethod": "F5dwSVTy", "paymentMethodFee": 50, "paymentOrderNo": "St2n0FQU", "paymentProvider": "ALIPAY", "paymentProviderFee": 52, "paymentStationUrl": "ARfcvlKo", "price": 93, "refundedTime": "1979-07-21T00:00:00Z", "salesTax": 12, "sandbox": true, "sku": "krktpUSe", "status": "REFUND_FAILED", "statusReason": "kDajG4bn", "subscriptionId": "Itn9O3OZ", "subtotalPrice": 4, "targetNamespace": "mWL1YLgz", "targetUserId": "FAwQtKEp", "tax": 22, "totalPrice": 29, "totalTax": 78, "txEndTime": "1982-05-04T00:00:00Z", "type": "64Yp0q5w", "userId": "2pjqyvbd", "vat": 33}' \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'jdS3GCKp' \
    --namespace $AB_NAMESPACE \
    --userId 'wNSowH8Q' \
    --body '{"count": 75, "orderNo": "v0QtQDwq"}' \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'VXUFTMBT' \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'yP4zmo7G' \
    --namespace $AB_NAMESPACE \
    --userId 'JVXcPrRe' \
    --body '{"allowOverdraft": true, "amount": 91, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"gyNdPJf1": {}, "WyPj5boY": {}, "SvEoxEeH": {}}, "reason": "WweWVMsl"}' \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'qZKXNFEu' \
    --namespace $AB_NAMESPACE \
    --userId 'K915PgTd' \
    --limit '83' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'YYwD4a5R' \
    --namespace $AB_NAMESPACE \
    --userId 'lqNygfkV' \
    --body '{"amount": 35, "expireAt": "1974-06-17T00:00:00Z", "metadata": {"UTQQOqwm": {}, "0u2GQu0T": {}, "Xc8IkWsq": {}}, "origin": "Oculus", "reason": "jrzPx04H", "source": "CONSUME_ENTITLEMENT"}' \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'lDzE0C79' \
    --namespace $AB_NAMESPACE \
    --userId 'i8c9XmEL' \
    --body '{"amount": 89, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"HLG5bqYt": {}, "qczJGJhg": {}, "hOSQtxoo": {}}, "reason": "OWH3N0LB", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'e3MLTHhN' \
    --namespace $AB_NAMESPACE \
    --userId '3sq8WrQz' \
    --body '{"amount": 12, "metadata": {"O8EQtF1b": {}, "TosC3AaV": {}, "Bxzb3aJC": {}}, "walletPlatform": "Playstation"}' \
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
    --storeId 'qFhTLvBh' \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'CEZB5dWQ' \
    --body '{"displayOrder": 91, "localizations": {"odPJbOsi": {"description": "qABvsug6", "localExt": {"LeVfQv0w": {}, "lAX8eD5C": {}, "D1LOI4CG": {}}, "longDescription": "4rPULUXC", "title": "rGMU2do7"}, "3kUkm3aa": {"description": "IPEtSyXM", "localExt": {"MRZOGkqz": {}, "ZjVb4k4P": {}, "21Hn8Xit": {}}, "longDescription": "SrbskivC", "title": "PHavqDtN"}, "4fErpxSV": {"description": "qETdIYN3", "localExt": {"FNydXyLX": {}, "BaVJx1H8": {}, "ChSbDy7V": {}}, "longDescription": "fulaqIDn", "title": "xQvRhrgn"}}, "name": "nyL9m0ii"}' \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'a7vUcNP7' \
    --storeId 'tuDiyvey' \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '3JsRvtUt' \
    --storeId 'q5fqnkwd' \
    --body '{"displayOrder": 6, "localizations": {"u5Kv7mQm": {"description": "3tLRVKk9", "localExt": {"roQ4p7xY": {}, "HUNKfoW8": {}, "MFrHp1p9": {}}, "longDescription": "OrZI0DwQ", "title": "MzkeI4MT"}, "tR8yUBHk": {"description": "uFVTSRWJ", "localExt": {"xQDItHAn": {}, "lHIg7jQ0": {}, "CFMD0xLz": {}}, "longDescription": "vmxWlDDE", "title": "KknKcRzB"}, "m0XPN0VT": {"description": "Wmt1IzDX", "localExt": {"sJ6vqrfw": {}, "8K2hd149": {}, "T3Z7Owqh": {}}, "longDescription": "NPV8whDm", "title": "lNs1YH4W"}}, "name": "hi88Ai2C"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'wg4dTPJV' \
    --storeId 'y53XgMJI' \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 15, "expireAt": "1987-05-30T00:00:00Z", "metadata": {"WDZ1hkdO": {}, "AzOCyS0W": {}, "KrcHpP0C": {}}, "origin": "Steam", "reason": "gcZGPXBj", "source": "IAP"}, "currencyCode": "Tjgmutjk", "userIds": ["xGqMi1Wh", "UmXtApMN", "i9ZyvxgW"]}, {"creditRequest": {"amount": 24, "expireAt": "1987-11-27T00:00:00Z", "metadata": {"9uE5OYgw": {}, "3R8mvZ9l": {}, "9u8ohMn9": {}}, "origin": "Epic", "reason": "sChyMOgi", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "8N0eK6e4", "userIds": ["lvXBn6iR", "UBNbp4cQ", "1uYdxz9F"]}, {"creditRequest": {"amount": 4, "expireAt": "1971-05-01T00:00:00Z", "metadata": {"Jgva6ipB": {}, "r6eqvHrc": {}, "WhjpeLpZ": {}}, "origin": "Xbox", "reason": "BNObvwXK", "source": "REFERRAL_BONUS"}, "currencyCode": "UWAnIPgY", "userIds": ["NccYtmJn", "6mkMakFd", "yTllBZna"]}]' \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "G5bRf9SP", "request": {"allowOverdraft": false, "amount": 83, "balanceOrigin": "System", "balanceSource": "IAP_REVOCATION", "metadata": {"Fy7aqqwP": {}, "GLvnolGD": {}, "Mfm9DdvT": {}}, "reason": "OkVYruL3"}, "userIds": ["eEEtzujM", "ssCkJK9F", "KriRwuIO"]}, {"currencyCode": "KQU0h6e1", "request": {"allowOverdraft": true, "amount": 87, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"c7PW6Xwy": {}, "C4G1UWG2": {}, "rd42CkOM": {}}, "reason": "jtCcJzJL"}, "userIds": ["RVdpjHyq", "NScaRj6k", "IP35XnCH"]}, {"currencyCode": "zp9EmAeK", "request": {"allowOverdraft": true, "amount": 63, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"l1fC0Nbq": {}, "6gWeWCF2": {}, "jpt2RkVA": {}}, "reason": "q63MHRjO"}, "userIds": ["GIz1OvNL", "6nkLXgtM", "MbtUF5fR"]}]' \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'BZw7QGx2' \
    --end 'xdvmI3m7' \
    --start 'JKw7csKi' \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["j9iLaS8Q", "rfi6draU", "uKKyQa9Q"], "apiKey": "CsnvOfE3", "authoriseAsCapture": false, "blockedPaymentMethods": ["OE4CaXqz", "5bkfvCub", "Cu76tokP"], "clientKey": "EQRirefw", "dropInSettings": "VFrMDOkN", "liveEndpointUrlPrefix": "KNVSePVK", "merchantAccount": "AnZyNqLs", "notificationHmacKey": "FgYR1YTU", "notificationPassword": "r2nG0Ey2", "notificationUsername": "czDNjvVz", "returnUrl": "xnCZ5F8M", "settings": "0G6kMoRx"}' \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "pcWnsrfI", "privateKey": "vgmOZ6gV", "publicKey": "dN6VlnA3", "returnUrl": "tJtd8jxY"}' \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "mvOsQori", "secretKey": "HMLhzWw5"}' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'S4Nsz2Nk' \
    --region 'JPGtKgGp' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "xgKwJ1cA", "clientSecret": "UJObW5jj", "returnUrl": "muMklfTE", "webHookId": "kKaRq2pJ"}' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["RBeowLuF", "YU8pBBpb", "UAWpscM7"], "publishableKey": "XaKNDIR5", "secretKey": "721YBszp", "webhookSecret": "ZWluiXTR"}' \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "pAfu3OYU", "key": "i8QuN2xx", "mchid": "6GmRyy3m", "returnUrl": "z0QlHPvd"}' \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "qdutbQSI", "flowCompletionUrl": "ybI0nGHQ", "merchantId": 45, "projectId": 90, "projectSecretKey": "RrmtOTsN"}' \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 've8IkAE1' \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '1pRc3gw1' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["EGGs3xir", "M6NhtlIK", "hiAvPMuk"], "apiKey": "YvMtECB2", "authoriseAsCapture": false, "blockedPaymentMethods": ["3Njpnf05", "s3fRaa5p", "QRM3Dsis"], "clientKey": "4R41KQNR", "dropInSettings": "7xPf247K", "liveEndpointUrlPrefix": "WSvWd7vQ", "merchantAccount": "KwGQ3xHb", "notificationHmacKey": "JzykTDQG", "notificationPassword": "tgRR4KYS", "notificationUsername": "07wV0IIi", "returnUrl": "l1cp7pKk", "settings": "Srny3dev"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'MkdxbfWI' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'oogH72S2' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "xWB00rEU", "privateKey": "mJyjH94e", "publicKey": "Jnwp8Q35", "returnUrl": "PUgZhJSL"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ghSs17U0' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'n429rXoY' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "DsXOsOYK", "secretKey": "52UTT53o"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '2IZIaqN9' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'D3rU7Cv3' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "0vdwVNn5", "clientSecret": "7PezV95C", "returnUrl": "U9phnmfv", "webHookId": "XOM4doWZ"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'YBuEWBzs' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'tGMHjMVO' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["SlnjIgGJ", "XNXNZd61", "ntRPkpNA"], "publishableKey": "fU8vR2x1", "secretKey": "HExv30i2", "webhookSecret": "4VybSrpz"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'GZm9oMxn' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'Cjvr3dkD' \
    --validate 'false' \
    --body '{"appId": "qTBXtMj5", "key": "UWkWQ8Dh", "mchid": "tnXamE6d", "returnUrl": "fltlT4IE"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '0lyrg1JP' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'XFOOvqUS' \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'dqD5GlYx' \
    --validate 'false' \
    --body '{"apiKey": "cLGjtzpp", "flowCompletionUrl": "wNNuZdFO", "merchantId": 38, "projectId": 2, "projectSecretKey": "QNQNo4LH"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '05NpiseA' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'DU1WLePQ' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '77' \
    --namespace 'N2iz6pJX' \
    --offset '74' \
    --region 'wBQNIS6x' \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "Mp5ZFcbL", "region": "Hjic2zkY", "sandboxTaxJarApiToken": "27UdfUEr", "specials": ["ALIPAY", "ALIPAY", "ADYEN"], "taxJarApiToken": "hrOgQcNe", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'Fe3ipKlu' \
    --region 'IygV2360' \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'XL2wzbtn' \
    --body '{"aggregate": "ADYEN", "namespace": "VCZY5VGV", "region": "MvUQ3ICW", "sandboxTaxJarApiToken": "jwVmkcrG", "specials": ["PAYPAL", "CHECKOUT", "ADYEN"], "taxJarApiToken": "zhqEutfz", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'iRLl338L' \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "aNQyjigi", "taxJarApiToken": "VZzD5hWv", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Tcsn1MxT": "Tt0PJ9L4", "zeAzXKyy": "yLiozeeH", "0tGZVhdI": "NJV8H62a"}}' \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'N7DYVMPY' \
    --end 'BTKQKoRA' \
    --start 'ZG43kfiM' \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '8Drv82SB' \
    --storeId 's7YLOdhE' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'Tcx5xmf2' \
    --storeId 'lTebrlyf' \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '7IpEAhzX' \
    --namespace $AB_NAMESPACE \
    --language 'nVSAqGxf' \
    --storeId '5Lt9Qsr3' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'Ec0vpExc' \
    --namespace $AB_NAMESPACE \
    --language 'UoZ4th9c' \
    --storeId '4AXbkJTK' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Wbasi3cb' \
    --namespace $AB_NAMESPACE \
    --language 'OhNzcjTA' \
    --storeId 'jgbkSQLA' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetDescendantCategories' test.out

#- 342 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 342 'PublicListCurrencies' test.out

#- 343 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 343 'GeDLCDurableRewardShortMap' test.out

#- 344 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 344 'GetIAPItemMapping' test.out

#- 345 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'x5cJrVWH' \
    --region 'eGG9kEE7' \
    --storeId 'on53Pkk6' \
    --appId 'k3oezGUp' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'OiYxYYwG' \
    --categoryPath 'fP0XpaWE' \
    --features 'k7h53eVR' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language 'JkDQrGjc' \
    --limit '81' \
    --offset '25' \
    --region 'DJid0Lgs' \
    --sortBy '["displayOrder", "createdAt:desc", "name"]' \
    --storeId '6l9CqOw3' \
    --tags 'zOd24bkn' \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '5AqJyZrB' \
    --region 'F1oRBRdm' \
    --storeId 'GStoM5G2' \
    --sku 'KseaGanH' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'MawD5wss' \
    --storeId 'vhvsDbJ4' \
    --itemIds '441UAfvY' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'MOqPpY9a' \
    --region 'THNuW1U9' \
    --storeId 'yQWoSwuj' \
    --itemIds 'c3uHUM4j' \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["hIP8BgAf", "cijAHvV9", "MKX3nZsy"]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SUBSCRIPTION' \
    --limit '12' \
    --offset '93' \
    --region 'IW61yyd2' \
    --storeId 'd8XxPa00' \
    --keyword 'zKHGqqE0' \
    --language 'lcgktVtK' \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '41DvE9Mu' \
    --namespace $AB_NAMESPACE \
    --language 'I2m7rkvC' \
    --region '6o2N6yea' \
    --storeId 'nM1srxfl' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'qnauKRGE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'kKZF1f76' \
    --namespace $AB_NAMESPACE \
    --language 'dmrlUym5' \
    --populateBundle 'true' \
    --region 'hwOKzJsM' \
    --storeId '1EJCrqId' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "vfYhz1L1", "paymentProvider": "ADYEN", "returnUrl": "1VGLw468", "ui": "uXAkrVig", "zipCode": "lDQTrNgv"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DvleanQv' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lQgi2UQb' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zuKQH74E' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'YsCEdBt8' \
    --body '{"token": "LbiRbpgg"}' \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2602JQ3r' \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'CVWEKiS6' \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'AFwTqpzH' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'W93EUoV1' \
    --foreinginvoice 'F0VDNdr2' \
    --invoiceId 'SOHVpNMr' \
    --payload 'pwxFitPg' \
    --redirectResult '3nkirDa9' \
    --resultCode 'GzbIajwk' \
    --sessionId 'akglXRWO' \
    --status '11yA1XKL' \
    --token 'U7JMOAwT' \
    --type 'fkGFbwxr' \
    --userId '8B8TxNpc' \
    --orderNo 'dO5UbC5d' \
    --paymentOrderNo 'sdXAoqil' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'Uwky8bai' \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'hO2Ajuyg' \
    --paymentOrderNo 'OAuWIG6S' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'VrnR4RQe' \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'KvaYCKLG' \
    --limit '48' \
    --offset '54' \
    --sortBy '["namespace:asc", "rewardCode:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'zEhOwXix' \
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
    --appIds '["uOunzwTA", "ODiA9mj2", "TIBm9DGn"]' \
    --itemIds '["FJ8WF3Be", "Gnq0ts9d", "yEkszLl4"]' \
    --skus '["QSXlcQBN", "C4QJWOAB", "NcBqNzd2"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'bM5tcfCU' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'QGT1dpqv' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku '7CPVyST1' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["ibSzdP3w", "yNLRa9j1", "Mu1JEv5n"]' \
    --itemIds '["UOAqUTDG", "dHRkWJOB", "rhAsZY2z"]' \
    --skus '["oWs9TT3L", "qreZzo7X", "43CTgi7K"]' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "BcVKrb4i", "language": "qNj_GZDX", "region": "QMYEz2FM"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'YcjDMq0j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KZeEN99i' \
    --body '{"epicGamesJwtToken": "CdpO4tFK"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fzXf5SXq' \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XTj3DyYC' \
    --body '{"serviceLabel": 89}' \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'CKprMenJ' \
    --body '{"serviceLabels": [17, 45, 77]}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'vSiuV0CW' \
    --body '{"appId": "32XGDQHL", "steamId": "YQzQjD27"}' \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KldHgE0i' \
    --body '{"xstsToken": "B6odbM7p"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'OL8GFUNR' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'MN7teMMj' \
    --features '["PgtIFYdI", "OygLbfUF", "eQIcj7DW"]' \
    --itemId '["8nF7J6SD", "8Z8dbzmd", "MHSmI79G"]' \
    --limit '93' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZNlYRbsh' \
    --appId 'wHmewwvQ' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'EOyUV5MU' \
    --limit '80' \
    --offset '77' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wfuWSExn' \
    --entitlementClazz 'CODE' \
    --itemId 'Yhec53GW' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'sfv2fWFG' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'UjgKd89H' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Fg40OHlk' \
    --appIds '["f49RkeY0", "UUZr1Caw", "dRwqlSw2"]' \
    --itemIds '["EXJnXr4U", "8A7mNLOR", "pYrjAvfu"]' \
    --skus '["3tiaaESb", "7641xIHs", "A212Ab7g"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1bzXE2wf' \
    --appId 'WrGVXts2' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'CDr106fc' \
    --entitlementClazz 'MEDIA' \
    --itemId 'FB7zBF71' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'v0xr6jfK' \
    --ids '["yrrkNfCy", "0T3rz93M", "XR7Voc9o"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '2WhKa6SW' \
    --entitlementClazz 'MEDIA' \
    --sku 'SKBr3LYy' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'AvcqWo1l' \
    --namespace $AB_NAMESPACE \
    --userId 'XyaHO3gv' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'SIHxK8w2' \
    --namespace $AB_NAMESPACE \
    --userId 'mJAT28Pr' \
    --body '{"options": ["BmH9guoB", "lLXTxc2h", "GDDBfGA1"], "requestId": "BRu22siS", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '3asFdY9g' \
    --namespace $AB_NAMESPACE \
    --userId 'vhzKwQAI' \
    --body '{"requestId": "Lf9taBFH", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'QATNvqzu' \
    --body '{"code": "zetHz0Gi", "language": "De", "region": "cBWqSlSO"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '7Z8fVlqT' \
    --body '{"excludeOldTransactions": true, "language": "fatl_KfCu_008", "productId": "oU5iJpX5", "receiptData": "0gpJQf6Y", "region": "KgYABBuo", "transactionId": "lSoQauB6"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'BSTMPLk7' \
    --body '{"epicGamesJwtToken": "tCVLMIb5"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ekyLVbyn' \
    --body '{"autoAck": true, "language": "mLkF_Lg", "orderId": "l4eZDxaV", "packageName": "ErcJXTxX", "productId": "NPcKu7dl", "purchaseTime": 46, "purchaseToken": "nUXm1lDZ", "region": "IqtI7LTE"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0htGUXXJ' \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'a7cjOTWS' \
    --body '{"currencyCode": "MfKUnupW", "price": 0.7850496481610796, "productId": "Kswwby4d", "serviceLabel": 73}' \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'anOa8CYc' \
    --body '{"currencyCode": "m0BCLnKX", "price": 0.46583933982087655, "productId": "PxUf2Ygh", "serviceLabels": [58, 50, 23]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'o5Z0zsVm' \
    --body '{"appId": "61HlEx0m", "currencyCode": "JXIycwdX", "language": "qyx", "price": 0.7902228011258148, "productId": "jPWcUOYM", "region": "TPVARGf4", "steamId": "Kcdne8cO"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'aoWOu5sh' \
    --body '{"gameId": "OGglCJQH", "language": "WE-Ci", "region": "Jx7JwtZf"}' \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'nk2s6nxd' \
    --body '{"currencyCode": "KJ5xh6YV", "price": 0.9602697399017524, "productId": "sngjJkgq", "xstsToken": "WjvUoDql"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'c063Zuqs' \
    --itemId 'Jd4xIVwv' \
    --limit '50' \
    --offset '17' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7zCtzaN5' \
    --body '{"currencyCode": "snPzDBUp", "discountedPrice": 28, "ext": {"3sJGxTiS": {}, "Ki1r6Q8u": {}, "2OmomiNL": {}}, "itemId": "fqxsvL2F", "language": "Fd-RmUb", "price": 27, "quantity": 27, "region": "Nt6uQqSU", "returnUrl": "qySv9XKT", "sectionId": "C9OLdPtw"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xFUh76Bx' \
    --userId 'qdQ9XRp1' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xf3GMzAK' \
    --userId 'XvvWF9T4' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'eh8LjPBm' \
    --userId 'F70VQZWG' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Vcet4RBS' \
    --userId 'iqSnXKR8' \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'FJbEFKUa' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'KdWA4Eby' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '2l8haHy5' \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'iSjrQZUc' \
    --language 'qNtYRBwc' \
    --region 'zdFETPdN' \
    --storeId 'MLuhFmBw' \
    --viewId 'LGodeiAe' \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'vvWiwOdc' \
    --chargeStatus 'NEVER' \
    --itemId '1bA5ZfNL' \
    --limit '66' \
    --offset '34' \
    --sku 'IR7XPctR' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'kwmkoysV' \
    --body '{"currencyCode": "Yryj6Ulx", "itemId": "f9H43vFX", "language": "TXU", "region": "gybRGgst", "returnUrl": "YqXhM35W", "source": "F80gcpga"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'c04Vpf2c' \
    --itemId 'KzGeYhmX' \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4mhK5xnQ' \
    --userId 'sN4W3tZD' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LBZopCOv' \
    --userId 'yVA9IfLK' \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PkOxdgsu' \
    --userId 'aacxRQ34' \
    --body '{"immediate": true, "reason": "hP58Godi"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yvfXZrRt' \
    --userId 'Pqc1NiH2' \
    --excludeFree 'true' \
    --limit '61' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'etTYvOQM' \
    --language '5i0R0Ya8' \
    --storeId 'hn98EteX' \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'gkpMen9l' \
    --namespace $AB_NAMESPACE \
    --userId 'QSGPklIR' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'IrQ5x9dE' \
    --namespace $AB_NAMESPACE \
    --userId 'rftltzq8' \
    --limit '23' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'APAMjEfJ' \
    --baseAppId '5zxsstVS' \
    --categoryPath '9zX03uz5' \
    --features 'xPgQDMAP' \
    --includeSubCategoryItem 'false' \
    --itemName 'qm2uB9zQ' \
    --itemStatus 'INACTIVE' \
    --itemType 'SUBSCRIPTION' \
    --limit '26' \
    --offset '39' \
    --region 'S3kuqrEQ' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder:desc", "createdAt:desc", "updatedAt:asc"]' \
    --storeId 'oQoQfGCB' \
    --tags 'OCh8BpmP' \
    --targetNamespace 'D0A9cLPF' \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'JYBYLiLB' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Mjl9nFLF' \
    --body '{"itemIds": ["woGKuovI", "yCAzyV1X", "XtRagqbq"]}' \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'G5TiLN3E' \
    --body '{"metadata": {"OYrpRSHq": {}, "2p9VUMSi": {}, "n88U8hYD": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "FST4IMyu", "namespace": "IMEiP3YB"}, "item": {"itemId": "QLfOZpKW", "itemSku": "EPwXMkAs", "itemType": "aQEiolWb"}, "quantity": 13, "type": "CURRENCY"}, {"currency": {"currencyCode": "D864eyhj", "namespace": "wLMqWtHa"}, "item": {"itemId": "ZTbDVDjE", "itemSku": "Jzkn6Aa0", "itemType": "4zDuBRVw"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "8YgB1TOf", "namespace": "qPfOO1MM"}, "item": {"itemId": "ikLz9CXD", "itemSku": "SDrGysP6", "itemType": "m58solz5"}, "quantity": 36, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "iOJEHpmv"}' \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE