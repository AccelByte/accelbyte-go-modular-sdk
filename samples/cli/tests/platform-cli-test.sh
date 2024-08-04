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
echo "1..460"

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
    --id '0dWX6Ui0' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'DBFmvQYg' \
    --body '{"grantDays": "jRQVcSC4"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'uW1kRiJX' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'K2q8g2mR' \
    --body '{"grantDays": "J2fEYkRC"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "ojfvpaQF", "dryRun": false, "fulfillmentUrl": "OPpiOhu4", "itemType": "BUNDLE", "purchaseConditionUrl": "RdolQNNU"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '4saQGWnd' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'DCkJ20jE' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '4idTZ4L4' \
    --body '{"clazz": "kNDhy04Q", "dryRun": true, "fulfillmentUrl": "9iK9BMEv", "purchaseConditionUrl": "Lx2wsfx8"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'SHkBUc42' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'QiMaxHKG' \
    --offset '51' \
    --tag '8JerbWxZ' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qtI8YR6x", "discountConfig": {"categories": [{"categoryPath": "TvmNaWPZ", "includeSubCategories": false}, {"categoryPath": "Hrj3JGqJ", "includeSubCategories": true}, {"categoryPath": "1lcB5KBn", "includeSubCategories": true}], "currencyCode": "YSJnYAPP", "currencyNamespace": "ZA1iTL7m", "discountAmount": 91, "discountPercentage": 61, "discountType": "AMOUNT", "items": [{"itemId": "Jl9D3h89", "itemName": "LZwsOBPq"}, {"itemId": "A73XJVbV", "itemName": "8yqdHFq2"}, {"itemId": "2E13gpD7", "itemName": "CILLNVTv"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 86, "itemId": "bjU6hOts", "itemName": "OyjSqOMS", "quantity": 89}, {"extraSubscriptionDays": 38, "itemId": "SzNtveQF", "itemName": "br734Wuu", "quantity": 29}, {"extraSubscriptionDays": 2, "itemId": "bAElAsZT", "itemName": "3lmoWcBy", "quantity": 17}], "maxRedeemCountPerCampaignPerUser": 12, "maxRedeemCountPerCode": 12, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 13, "name": "sUWgS7kW", "redeemEnd": "1981-10-21T00:00:00Z", "redeemStart": "1990-04-27T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["O7AVbnws", "j8YdHjDc", "RfAX8GLZ"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Xdwjyx3R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'tAg1BQWm' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "naPp6fog", "discountConfig": {"categories": [{"categoryPath": "S7VEAuzv", "includeSubCategories": true}, {"categoryPath": "WU32uK8T", "includeSubCategories": false}, {"categoryPath": "sLvCZWut", "includeSubCategories": false}], "currencyCode": "fr6o0UKl", "currencyNamespace": "60XEvYLB", "discountAmount": 26, "discountPercentage": 43, "discountType": "AMOUNT", "items": [{"itemId": "hjMU9SqK", "itemName": "H9weyWSR"}, {"itemId": "CXoVL30a", "itemName": "ve9oAHXH"}, {"itemId": "IK9aCVu9", "itemName": "EPSA4QWO"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 21, "itemId": "Bt5NW6J0", "itemName": "KMHH6KPK", "quantity": 85}, {"extraSubscriptionDays": 74, "itemId": "ys3o4WAk", "itemName": "AZYrUCpM", "quantity": 35}, {"extraSubscriptionDays": 41, "itemId": "IxFHVR8p", "itemName": "YpSr17t9", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 99, "maxRedeemCountPerCode": 49, "maxRedeemCountPerCodePerUser": 56, "maxSaleCount": 68, "name": "Qdeg5KK7", "redeemEnd": "1973-02-16T00:00:00Z", "redeemStart": "1993-08-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["NX5i2SWW", "S8gxfEZt", "8hhRnxqY"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'w1Hnq6Pj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetCatalogConfig
samples/cli/sample-apps Platform getCatalogConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCatalogConfig' test.out

#- 19 UpdateCatalogConfig
samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableInventoryCheck": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateCatalogConfig' test.out

#- 20 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetLootBoxPluginConfig' test.out

#- 21 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "UoqCgO5T"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "0jKIfK5E"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateLootBoxPluginConfig' test.out

#- 22 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteLootBoxPluginConfig' test.out

#- 23 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'UplodLootBoxPluginConfigCert' test.out

#- 24 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 24 'GetLootBoxGrpcInfo' test.out

#- 25 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'GetSectionPluginConfig' test.out

#- 26 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "gs44O7bc"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "SHBSEVbo"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateSectionPluginConfig' test.out

#- 27 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteSectionPluginConfig' test.out

#- 28 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 28 'UploadSectionPluginConfigCert' test.out

#- 29 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'pbLCBXYu' \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'bFbj3dMq' \
    --body '{"categoryPath": "3vRbeEfi", "localizationDisplayNames": {"0rzRY4sC": "B1sdr2fB", "gpdxnlen": "zIv6Tkh8", "7MNfeelg": "6HWVZrv3"}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'hr36KboB' \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'TGqMmZ4O' \
    --namespace $AB_NAMESPACE \
    --storeId 'kpDLoFI4' \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '4aYxXXLc' \
    --namespace $AB_NAMESPACE \
    --storeId 'FOdWCABa' \
    --body '{"localizationDisplayNames": {"FOqQXiUu": "3CTXIy5g", "LymEAKKy": "21IeBoyE", "Igo83koo": "H7YqhBtL"}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'AFs1NhB7' \
    --namespace $AB_NAMESPACE \
    --storeId 'HdwLABNf' \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'RWFxpdED' \
    --namespace $AB_NAMESPACE \
    --storeId 'OZAvgSuw' \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'uEM29pFw' \
    --namespace $AB_NAMESPACE \
    --storeId 'Mq6716vo' \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Rrb2OXOW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '1' \
    --code 'jXhehzCi' \
    --limit '63' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '2AbR450k' \
    --namespace $AB_NAMESPACE \
    --body '{"codeValue": "MBNrWwTI", "quantity": 90}' \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
samples/cli/sample-apps Platform download \
    --campaignId 'oWgKvsuE' \
    --namespace $AB_NAMESPACE \
    --batchNo '66' \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '27ZFe073' \
    --namespace $AB_NAMESPACE \
    --batchNo '47' \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '1Wki14YQ' \
    --namespace $AB_NAMESPACE \
    --batchNo '13' \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '9TvUsWz8' \
    --namespace $AB_NAMESPACE \
    --code '48YI8u0X' \
    --limit '22' \
    --offset '93' \
    --userId 'hfGYmFj0' \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'RK8r3Wpl' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'eH3QHc4H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'FuftNdmG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'EnableCode' test.out

#- 46 GetServicePluginConfig
eval_tap 0 46 'GetServicePluginConfig # SKIP deprecated' test.out

#- 47 UpdateServicePluginConfig
eval_tap 0 47 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 48 DeleteServicePluginConfig
eval_tap 0 48 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 49 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 49 'ListCurrencies' test.out

#- 50 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "FZr46IV3", "currencySymbol": "2yvudBZG", "currencyType": "VIRTUAL", "decimals": 43, "localizationDescriptions": {"g53QJeUw": "mrbOPlIx", "R7J87a0O": "LH4Q3eFD", "VvgFpvW6": "ua8DJdaV"}}' \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'ymxTgMm6' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"4Dapnrit": "Z4ljRGgS", "k1SX86BR": "w6M2jJl2", "Gm77wZlk": "WWrgcij7"}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '3GJo3qf4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ssl5JcQw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '98cvXJSU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetCurrencySummary' test.out

#- 55 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetDLCItemConfig' test.out

#- 56 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "pixj0XN5", "rewards": [{"currency": {"currencyCode": "eCD38YEf", "namespace": "1FtyTBr8"}, "item": {"itemId": "odIg1MD7", "itemName": "iUoDgw49", "itemSku": "NXzFYUAz", "itemType": "mZ2i6RUI"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "9qcOBVEp", "namespace": "c9sxg1v4"}, "item": {"itemId": "ZVktudU6", "itemName": "zSVxzFOT", "itemSku": "ekSMvG4g", "itemType": "ykOIlwdo"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "jEQfSyjo", "namespace": "zrM6pTls"}, "item": {"itemId": "pVeVGJF1", "itemName": "pICoccHu", "itemSku": "cD3ULsZI", "itemType": "QHon9UNU"}, "quantity": 37, "type": "CURRENCY"}]}, {"id": "iburErPA", "rewards": [{"currency": {"currencyCode": "6Ntx78Nw", "namespace": "DSze27Y7"}, "item": {"itemId": "BwjZwHbz", "itemName": "kWyc6k9t", "itemSku": "4SowDzKV", "itemType": "tfcVLB04"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "78A0kPic", "namespace": "7hRBXS5q"}, "item": {"itemId": "4T2NmkCp", "itemName": "whlyr0nz", "itemSku": "UG9ns514", "itemType": "bRhc1Uws"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "TaKEG6jz", "namespace": "2ymH45vX"}, "item": {"itemId": "oANB2QuE", "itemName": "kq1q94Tv", "itemSku": "lZHJSJHa", "itemType": "AwkoDF4C"}, "quantity": 11, "type": "ITEM"}]}, {"id": "dpEMZezX", "rewards": [{"currency": {"currencyCode": "TZDqgwPT", "namespace": "gg9jPuJb"}, "item": {"itemId": "rwb19YAr", "itemName": "jlQnndRH", "itemSku": "lgYMRTl2", "itemType": "J9CeazeA"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "x9pR2AEd", "namespace": "UfAezc1O"}, "item": {"itemId": "X9jrKyPg", "itemName": "R8tlLZ0c", "itemSku": "UsR15ZUa", "itemType": "hKgwklmj"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "eS7VmDO1", "namespace": "abZaZEde"}, "item": {"itemId": "Dm3aLlie", "itemName": "P4RaGZwo", "itemSku": "xFElBWiV", "itemType": "4paWTXEI"}, "quantity": 29, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateDLCItemConfig' test.out

#- 57 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'DeleteDLCItemConfig' test.out

#- 58 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetPlatformDLCConfig' test.out

#- 59 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"bBHwp5Lh": "kQutUUqD", "UJAmnJot": "P046Js9y", "5sWrq1Z1": "7qtXHMiL"}}, {"platform": "PSN", "platformDlcIdMap": {"UNUPynyU": "3hRVRm2o", "uUhZJenQ": "ewWhqfYS", "2oSV1EFA": "82tASfsH"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"t1kPAh0K": "BvOaEU9L", "E9XscTcy": "G8Smpuol", "s2ae7rkf": "tWLo3tuI"}}]}' \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlatformDLCConfig' test.out

#- 60 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeletePlatformDLCConfig' test.out

#- 61 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'KXMgbWKf' \
    --itemId '["1BWGXf4x", "SHNml6Bz", "2ZHD2V2W"]' \
    --limit '78' \
    --offset '95' \
    --origin 'Epic' \
    --userId 'B8ZotjrS' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["aoWvPnjc", "0Rvw4yq7", "byheE5xp"]' \
    --limit '10' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 62 'QueryEntitlements1' test.out

#- 63 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'EnableEntitlementOriginFeature' test.out

#- 64 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "5emM4Kzv", "endDate": "1978-07-12T00:00:00Z", "grantedCode": "roAlUuk4", "itemId": "WcGlBzsg", "itemNamespace": "LUmbmBo3", "language": "Dg-SU", "origin": "Other", "quantity": 94, "region": "vgGGNduN", "source": "REDEEM_CODE", "startDate": "1975-06-03T00:00:00Z", "storeId": "NGL1LYO4"}, {"collectionId": "5MKkLWok", "endDate": "1993-04-19T00:00:00Z", "grantedCode": "n6EQ1Le4", "itemId": "KMHiYvaS", "itemNamespace": "Fn0wnTCz", "language": "grCi-bhBg_207", "origin": "Steam", "quantity": 59, "region": "pb6K35Vz", "source": "REWARD", "startDate": "1972-02-12T00:00:00Z", "storeId": "WL4xf5E5"}, {"collectionId": "G9oxfMy1", "endDate": "1993-07-27T00:00:00Z", "grantedCode": "BrilJVFW", "itemId": "f5LuOEk3", "itemNamespace": "bEeRFuXv", "language": "Wc", "origin": "Xbox", "quantity": 89, "region": "OwMoO6Pm", "source": "IAP", "startDate": "1987-10-29T00:00:00Z", "storeId": "q45RogeB"}], "userIds": ["Sg2LQFxQ", "NVrRMoek", "r8D8YXZU"]}' \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["MmEB1HjX", "e8rnPaEh", "GqSSjSFK"]' \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'ATZvi3Wd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '50' \
    --status 'FAIL' \
    --userId 'G7wDsSfc' \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'ALgqRPAD' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'zV5wiNsU' \
    --limit '36' \
    --offset '58' \
    --startTime 'ge15ih9x' \
    --status 'SUCCESS' \
    --userId 'uqspRYrR' \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "yXKUChmz", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 47, "clientTransactionId": "njgqqBLU"}, {"amountConsumed": 87, "clientTransactionId": "wxfyS4lU"}, {"amountConsumed": 70, "clientTransactionId": "RUljySke"}], "entitlementId": "J5CLdyx0", "usageCount": 25}, {"clientTransaction": [{"amountConsumed": 29, "clientTransactionId": "MvXgeOdl"}, {"amountConsumed": 34, "clientTransactionId": "aMHgI6No"}, {"amountConsumed": 65, "clientTransactionId": "7XINA9xJ"}], "entitlementId": "6CYZW4eo", "usageCount": 50}, {"clientTransaction": [{"amountConsumed": 38, "clientTransactionId": "LHI6S78w"}, {"amountConsumed": 65, "clientTransactionId": "lm8qE8hz"}, {"amountConsumed": 62, "clientTransactionId": "pAFvWeVV"}], "entitlementId": "9dNLU997", "usageCount": 99}], "purpose": "CdEN6fJO"}, "originalTitleName": "EVdL3Utl", "paymentProductSKU": "xjpnauIi", "purchaseDate": "CSXxPyOo", "sourceOrderItemId": "IRrrs1kr", "titleName": "wPF3XsQT"}, "eventDomain": "IyK6Pg5U", "eventSource": "qi81GMwg", "eventType": "oFzhvYqV", "eventVersion": 95, "id": "ZMVlF7M2", "timestamp": "QPaB4JoQ"}' \
    > test.out 2>&1
eval_tap $? 70 'MockPlayStationStreamEvent' test.out

#- 71 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetAppleIAPConfig' test.out

#- 72 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "We9LU6sD", "password": "giKYAWp3"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateAppleIAPConfig' test.out

#- 73 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteAppleIAPConfig' test.out

#- 74 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetEpicGamesIAPConfig' test.out

#- 75 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "YUQfiWfr"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateEpicGamesIAPConfig' test.out

#- 76 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteEpicGamesIAPConfig' test.out

#- 77 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetGoogleIAPConfig' test.out

#- 78 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "COMJZ53f", "serviceAccountId": "j8DjTxb2"}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleIAPConfig' test.out

#- 79 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteGoogleIAPConfig' test.out

#- 80 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleP12File' test.out

#- 81 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetIAPItemConfig' test.out

#- 82 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "Plh1pNeW", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"rvEoqua6": "kPwl5DLF", "IERCFDbS": "vnCCI9Jh", "dm5RX0Pe": "CGbgg86f"}}, {"itemIdentity": "ghVSM7Yv", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Kf2lp2As": "xSZnIQC4", "7SynpDNc": "ajsyr01r", "7XKshV3L": "SvLarT30"}}, {"itemIdentity": "bkUmvTTE", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"yfasd9Rw": "ziIACLx4", "osUL4mK5": "ppPsfEn0", "sr38P3i4": "7S9AHnOR"}}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateIAPItemConfig' test.out

#- 83 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteIAPItemConfig' test.out

#- 84 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetOculusIAPConfig' test.out

#- 85 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "ZrYOfnEe", "appSecret": "F1HJvREq"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateOculusIAPConfig' test.out

#- 86 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'DeleteOculusIAPConfig' test.out

#- 87 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetPlayStationIAPConfig' test.out

#- 88 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "4Is78d0B", "backOfficeServerClientSecret": "FOlvbR4K", "enableStreamJob": false, "environment": "aGzVzc5A", "streamName": "6Bx3LuAG", "streamPartnerName": "h8Np03Oe"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdatePlaystationIAPConfig' test.out

#- 89 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeletePlaystationIAPConfig' test.out

#- 90 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'ValidateExistedPlaystationIAPConfig' test.out

#- 91 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "KjY0a368", "backOfficeServerClientSecret": "abrcmwv6", "enableStreamJob": true, "environment": "vE8oQalm", "streamName": "14AqrT0H", "streamPartnerName": "arNtw10v"}' \
    > test.out 2>&1
eval_tap $? 91 'ValidatePlaystationIAPConfig' test.out

#- 92 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetSteamIAPConfig' test.out

#- 93 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "hzYUMjw6", "publisherAuthenticationKey": "yciJEWtx"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateSteamIAPConfig' test.out

#- 94 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'DeleteSteamIAPConfig' test.out

#- 95 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetTwitchIAPConfig' test.out

#- 96 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "oQFpeMYF", "clientSecret": "x3O4DXyH", "organizationId": "FCoHnB6R"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateTwitchIAPConfig' test.out

#- 97 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'DeleteTwitchIAPConfig' test.out

#- 98 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetXblIAPConfig' test.out

#- 99 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "eihGfv9y"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblIAPConfig' test.out

#- 100 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteXblAPConfig' test.out

#- 101 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'IshGANkI' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'cL8TKoKO' \
    --itemId 'sH62FhsA' \
    --itemType 'SEASON' \
    --endTime '6F6oLN1Y' \
    --startTime 'SPXF1uTa' \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'FQGuy2jg' \
    --itemId 'hT7vRcXJ' \
    --itemType 'EXTENSION' \
    --endTime 'GsXt9KC7' \
    --startTime '2a124Sf4' \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'nCfWf7IM' \
    --body '{"categoryPath": "HTGykpvq", "targetItemId": "K1kYe2Dr", "targetNamespace": "Z6gpjKht"}' \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Yec7MPiQ' \
    --body '{"appId": "PBGBBuQV", "appType": "SOFTWARE", "baseAppId": "jygAxihJ", "boothName": "YFo0TIkM", "categoryPath": "zAzViTiI", "clazz": "KFC8hm9G", "displayOrder": 20, "entitlementType": "CONSUMABLE", "ext": {"yODLnz7e": {}, "PsfE1FVG": {}, "dAebp42X": {}}, "features": ["r8Mlt1BW", "JXDmAs4q", "4YyoggNY"], "flexible": true, "images": [{"as": "pY2tfxa6", "caption": "F2GA9ENQ", "height": 67, "imageUrl": "lidT34SG", "smallImageUrl": "JH982Khm", "width": 85}, {"as": "saJudRfb", "caption": "zC2lV8Wr", "height": 76, "imageUrl": "26CHRtB6", "smallImageUrl": "j0gTE8Lb", "width": 100}, {"as": "bIwIJwuv", "caption": "sonPIgqb", "height": 22, "imageUrl": "1JkspO6D", "smallImageUrl": "EWzOdDUo", "width": 96}], "inventoryConfig": {"customAttributes": {"Bp3wszRI": {}, "ZkneoCM9": {}, "RRnjOQHt": {}}, "serverCustomAttributes": {"qWWYmxRa": {}, "6yXlL2LS": {}, "taQdaSBN": {}}, "slotUsed": 20}, "itemIds": ["n9sjd5Pe", "BWThNn8x", "eUyJHNRL"], "itemQty": {"Mv6NnlR4": 24, "YLfJdEyP": 46, "9JtBxQZN": 19}, "itemType": "MEDIA", "listable": true, "localizations": {"eVlFsxIA": {"description": "lvcGaPQG", "localExt": {"Z34wvxA1": {}, "i2Y5xMSh": {}, "OiqgEzex": {}}, "longDescription": "g7kCP7Lz", "title": "zmzqX4Or"}, "xQ6plKn3": {"description": "DMUoG56J", "localExt": {"sqwyt5Qr": {}, "9WqIKmFK": {}, "50xSYLrs": {}}, "longDescription": "o0uf0Gq1", "title": "pOykjOzm"}, "S8iUrP3C": {"description": "PI9UK6k1", "localExt": {"iIVe7uDA": {}, "ZqQXjLn4": {}, "apOiNQhT": {}}, "longDescription": "BsaWeyaI", "title": "MNLe1ljA"}}, "lootBoxConfig": {"rewardCount": 23, "rewards": [{"lootBoxItems": [{"count": 33, "duration": 81, "endDate": "1972-03-15T00:00:00Z", "itemId": "jymsyPC3", "itemSku": "E9olDb3Z", "itemType": "nMOl4XyR"}, {"count": 74, "duration": 81, "endDate": "1974-03-31T00:00:00Z", "itemId": "CCiGq615", "itemSku": "yu1IJOaj", "itemType": "4GVBThdF"}, {"count": 80, "duration": 80, "endDate": "1977-03-17T00:00:00Z", "itemId": "iSY1dTmA", "itemSku": "mkoITQ2a", "itemType": "pn05fMoe"}], "name": "d8kkr4PR", "odds": 0.20024958118402691, "type": "REWARD_GROUP", "weight": 8}, {"lootBoxItems": [{"count": 99, "duration": 35, "endDate": "1975-02-01T00:00:00Z", "itemId": "yxsBOyQp", "itemSku": "fFsRrAXL", "itemType": "MN7v9g6k"}, {"count": 36, "duration": 99, "endDate": "1999-06-07T00:00:00Z", "itemId": "BYmDh13F", "itemSku": "JJMkcZOA", "itemType": "g5fUYwd1"}, {"count": 75, "duration": 69, "endDate": "1989-03-08T00:00:00Z", "itemId": "FclG0oh3", "itemSku": "hfFzjylO", "itemType": "YCDBz62c"}], "name": "qn82AT2N", "odds": 0.6782488233596048, "type": "PROBABILITY_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 74, "duration": 11, "endDate": "1982-01-14T00:00:00Z", "itemId": "kNXKRLFT", "itemSku": "fsu35IYK", "itemType": "0mXwICmE"}, {"count": 85, "duration": 42, "endDate": "1994-10-01T00:00:00Z", "itemId": "sFOBbExW", "itemSku": "e8QXoup1", "itemType": "1RnGCvrJ"}, {"count": 8, "duration": 8, "endDate": "1976-06-15T00:00:00Z", "itemId": "sHuytGdk", "itemSku": "neeanyGf", "itemType": "hwAjsxRS"}], "name": "rvA122Pl", "odds": 0.3813059075471763, "type": "REWARD_GROUP", "weight": 8}], "rollFunction": "CUSTOM"}, "maxCount": 65, "maxCountPerUser": 26, "name": "my3vV846", "optionBoxConfig": {"boxItems": [{"count": 40, "duration": 83, "endDate": "1982-10-30T00:00:00Z", "itemId": "tDZ7cShu", "itemSku": "L4ZvqRpf", "itemType": "IwS2HLFo"}, {"count": 20, "duration": 71, "endDate": "1980-08-10T00:00:00Z", "itemId": "r3KrZnPz", "itemSku": "JETyeFhe", "itemType": "OawaYMtc"}, {"count": 24, "duration": 11, "endDate": "1978-09-05T00:00:00Z", "itemId": "8uZ4IfXz", "itemSku": "TuF6DEGY", "itemType": "WORy0v9g"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 88, "fixedTrialCycles": 1, "graceDays": 28}, "regionData": {"88D8CrZh": [{"currencyCode": "6PdIZpDH", "currencyNamespace": "bLKyNIoN", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1975-05-21T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1984-12-17T00:00:00Z", "expireAt": "1985-02-21T00:00:00Z", "price": 63, "purchaseAt": "1979-07-17T00:00:00Z", "trialPrice": 88}, {"currencyCode": "uEFILuVa", "currencyNamespace": "UzUSqApT", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1997-11-05T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1994-01-03T00:00:00Z", "expireAt": "1992-06-22T00:00:00Z", "price": 22, "purchaseAt": "1977-01-11T00:00:00Z", "trialPrice": 76}, {"currencyCode": "24f61HWM", "currencyNamespace": "3C1Cki47", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1988-03-07T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1999-12-19T00:00:00Z", "expireAt": "1992-09-24T00:00:00Z", "price": 64, "purchaseAt": "1986-12-29T00:00:00Z", "trialPrice": 98}], "wTgwURVh": [{"currencyCode": "SY4ub9br", "currencyNamespace": "hyr656ky", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1992-06-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-04-14T00:00:00Z", "expireAt": "1982-05-06T00:00:00Z", "price": 2, "purchaseAt": "1981-05-30T00:00:00Z", "trialPrice": 20}, {"currencyCode": "WnfxU7gR", "currencyNamespace": "Hn1XYJjZ", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1994-10-15T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1995-12-04T00:00:00Z", "expireAt": "1971-04-30T00:00:00Z", "price": 13, "purchaseAt": "1989-03-21T00:00:00Z", "trialPrice": 88}, {"currencyCode": "Mo8xrvn4", "currencyNamespace": "qsEHtHBL", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1979-07-07T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1984-12-16T00:00:00Z", "expireAt": "1989-07-21T00:00:00Z", "price": 89, "purchaseAt": "1988-10-21T00:00:00Z", "trialPrice": 92}], "0zn1XVF5": [{"currencyCode": "uT32J3D7", "currencyNamespace": "WpVl8jDs", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1992-04-05T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1983-12-21T00:00:00Z", "expireAt": "1975-11-15T00:00:00Z", "price": 56, "purchaseAt": "1998-06-20T00:00:00Z", "trialPrice": 91}, {"currencyCode": "RBLDhx0o", "currencyNamespace": "KMOteuqt", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1981-11-23T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1971-10-16T00:00:00Z", "expireAt": "1988-05-26T00:00:00Z", "price": 63, "purchaseAt": "1989-04-24T00:00:00Z", "trialPrice": 19}, {"currencyCode": "TFy95srP", "currencyNamespace": "cvET9xKK", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1987-12-27T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1981-07-21T00:00:00Z", "expireAt": "1996-08-10T00:00:00Z", "price": 43, "purchaseAt": "1976-06-12T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "gnfzkmNh", "price": 25}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "z4MRpqkf", "stackable": true, "status": "INACTIVE", "tags": ["FaiFVcSv", "qqGfUNjd", "6JNiTr8n"], "targetCurrencyCode": "6cDZd7X5", "targetNamespace": "4EcsxosH", "thumbnailUrl": "n3O2Y80g", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'C4mojz9k' \
    --appId 'siwDPiX5' \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate 'rIHC3iYi' \
    --baseAppId 'x5TzHzAZ' \
    --categoryPath 'BOm55qe1' \
    --features 'LJKKr260' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --limit '75' \
    --offset '18' \
    --region 'HeCFBINq' \
    --sortBy '["updatedAt", "createdAt:desc", "updatedAt:desc"]' \
    --storeId 'Z8wVMpl1' \
    --tags 'LhKz2SVh' \
    --targetNamespace 'eNjFWxSz' \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["Hlmvsaj6", "TAUN8UKj", "VZkDA7r4"]' \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'TqiINiYz' \
    --itemIds 'rXGtZqnI' \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'jde63Spb' \
    --sku 'cbsWpV8l' \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'VzOEW5uQ' \
    --populateBundle 'true' \
    --region 'SZtrTMNq' \
    --storeId 'X6lpBVzX' \
    --sku 'mPOPxfIU' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'cvAZm8gE' \
    --region 'ywZqJJhb' \
    --storeId 'jeeyHP61' \
    --itemIds 'vXDKbuf5' \
    --userId 'GKvzL8wb' \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'gSe3N0FM' \
    --sku 'WDViME6l' \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["AZzGNkHv", "nFwH81KB", "C4tQIF0q"]' \
    --storeId 'XKQe25pT' \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'AEzwvwJT' \
    --region 'CERthLk8' \
    --storeId 'pCswW2P1' \
    --itemIds 'L18tv4QF' \
    > test.out 2>&1
eval_tap $? 115 'BulkGetLocaleItems' test.out

#- 116 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'GetAvailablePredicateTypes' test.out

#- 117 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'fuwYhwcc' \
    --userId '53nW433G' \
    --body '{"itemIds": ["lxabAd8M", "GUM8Vfci", "kpfbupxv"]}' \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'U1evPYHs' \
    --body '{"changes": [{"itemIdentities": ["ZUq9zcIP", "NLUtqnwQ", "pJin7NVg"], "itemIdentityType": "ITEM_SKU", "regionData": {"kiXvKAyb": [{"currencyCode": "6BsHPQv4", "currencyNamespace": "qb4IHFqr", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1991-12-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1971-10-30T00:00:00Z", "discountedPrice": 63, "expireAt": "1995-07-13T00:00:00Z", "price": 39, "purchaseAt": "1974-08-14T00:00:00Z", "trialPrice": 53}, {"currencyCode": "L7XfBjQO", "currencyNamespace": "SDDFUCE0", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1975-08-01T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1979-05-14T00:00:00Z", "discountedPrice": 90, "expireAt": "1983-08-23T00:00:00Z", "price": 23, "purchaseAt": "1994-08-14T00:00:00Z", "trialPrice": 56}, {"currencyCode": "l6mB0HxU", "currencyNamespace": "u5Oeu4bR", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1984-04-06T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1972-07-17T00:00:00Z", "discountedPrice": 45, "expireAt": "1973-12-17T00:00:00Z", "price": 31, "purchaseAt": "1988-08-13T00:00:00Z", "trialPrice": 9}], "piTGGdfo": [{"currencyCode": "sYFlj6yF", "currencyNamespace": "fQDJAgIC", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1994-02-28T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1995-12-03T00:00:00Z", "discountedPrice": 72, "expireAt": "1990-12-09T00:00:00Z", "price": 57, "purchaseAt": "1994-11-08T00:00:00Z", "trialPrice": 78}, {"currencyCode": "57tqj8ST", "currencyNamespace": "grbTF1Dx", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1988-04-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1980-12-07T00:00:00Z", "discountedPrice": 53, "expireAt": "1995-04-02T00:00:00Z", "price": 43, "purchaseAt": "1980-02-03T00:00:00Z", "trialPrice": 19}, {"currencyCode": "uivLZKDy", "currencyNamespace": "ackxNOFw", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1997-09-19T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1971-03-07T00:00:00Z", "discountedPrice": 48, "expireAt": "1972-06-24T00:00:00Z", "price": 23, "purchaseAt": "1995-12-30T00:00:00Z", "trialPrice": 64}], "sU36UYJq": [{"currencyCode": "cHPN9WcT", "currencyNamespace": "LkzzGGBq", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1980-10-30T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1980-01-19T00:00:00Z", "discountedPrice": 20, "expireAt": "1995-08-16T00:00:00Z", "price": 85, "purchaseAt": "1974-08-14T00:00:00Z", "trialPrice": 11}, {"currencyCode": "JfRrKQHz", "currencyNamespace": "a8c9OKD8", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1992-07-30T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1991-02-08T00:00:00Z", "discountedPrice": 44, "expireAt": "1975-03-16T00:00:00Z", "price": 15, "purchaseAt": "1983-10-03T00:00:00Z", "trialPrice": 98}, {"currencyCode": "vX7XNAn4", "currencyNamespace": "UlPVpDFT", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1984-07-30T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1979-04-14T00:00:00Z", "discountedPrice": 96, "expireAt": "1975-10-31T00:00:00Z", "price": 56, "purchaseAt": "1980-05-07T00:00:00Z", "trialPrice": 97}]}}, {"itemIdentities": ["FibOPuEB", "D909IxzD", "pgh0dzJr"], "itemIdentityType": "ITEM_ID", "regionData": {"Xxr1aVD6": [{"currencyCode": "Q9oJKiCy", "currencyNamespace": "sQuOCKlA", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1973-04-24T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1976-12-26T00:00:00Z", "discountedPrice": 83, "expireAt": "1976-10-05T00:00:00Z", "price": 30, "purchaseAt": "1993-03-10T00:00:00Z", "trialPrice": 78}, {"currencyCode": "7GFn3qQs", "currencyNamespace": "UjA7HqAg", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1971-02-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1992-01-09T00:00:00Z", "discountedPrice": 63, "expireAt": "1992-08-30T00:00:00Z", "price": 24, "purchaseAt": "1971-10-15T00:00:00Z", "trialPrice": 35}, {"currencyCode": "BmzKdTEr", "currencyNamespace": "QwktRwDX", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1975-03-11T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1993-01-31T00:00:00Z", "discountedPrice": 20, "expireAt": "1994-11-21T00:00:00Z", "price": 0, "purchaseAt": "1982-05-04T00:00:00Z", "trialPrice": 85}], "1APEP5Ie": [{"currencyCode": "8656z2Dh", "currencyNamespace": "mAZZByzd", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1989-07-23T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1988-06-23T00:00:00Z", "discountedPrice": 81, "expireAt": "1997-04-29T00:00:00Z", "price": 40, "purchaseAt": "1990-09-23T00:00:00Z", "trialPrice": 66}, {"currencyCode": "xkrIsFIt", "currencyNamespace": "FgcAdHy3", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1973-02-09T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1979-01-21T00:00:00Z", "discountedPrice": 83, "expireAt": "1998-07-14T00:00:00Z", "price": 43, "purchaseAt": "1995-06-24T00:00:00Z", "trialPrice": 74}, {"currencyCode": "QM0KO6nW", "currencyNamespace": "5ijPL4kC", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1982-12-08T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1993-02-02T00:00:00Z", "discountedPrice": 88, "expireAt": "1972-04-23T00:00:00Z", "price": 52, "purchaseAt": "1980-01-22T00:00:00Z", "trialPrice": 87}], "Q6rcxeJB": [{"currencyCode": "6pmunGm0", "currencyNamespace": "LUxCiGI0", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1992-07-29T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1995-05-13T00:00:00Z", "discountedPrice": 93, "expireAt": "1990-06-17T00:00:00Z", "price": 50, "purchaseAt": "1997-02-19T00:00:00Z", "trialPrice": 17}, {"currencyCode": "79ZBzMof", "currencyNamespace": "iwvfuKK6", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1980-02-18T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1995-11-05T00:00:00Z", "discountedPrice": 21, "expireAt": "1971-10-29T00:00:00Z", "price": 71, "purchaseAt": "1986-08-29T00:00:00Z", "trialPrice": 61}, {"currencyCode": "xckLVZfW", "currencyNamespace": "HaESesur", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1974-12-26T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1972-01-31T00:00:00Z", "discountedPrice": 48, "expireAt": "1993-12-02T00:00:00Z", "price": 59, "purchaseAt": "1994-08-10T00:00:00Z", "trialPrice": 92}]}}, {"itemIdentities": ["AMJqa6iK", "nO4sVpTb", "LUh4OCwT"], "itemIdentityType": "ITEM_ID", "regionData": {"XxFV9X4t": [{"currencyCode": "SHpm1IyQ", "currencyNamespace": "ssm2NWuG", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1979-08-24T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1989-08-27T00:00:00Z", "discountedPrice": 68, "expireAt": "1982-01-08T00:00:00Z", "price": 77, "purchaseAt": "1995-11-16T00:00:00Z", "trialPrice": 2}, {"currencyCode": "SShRLFyw", "currencyNamespace": "3NXgQ5Rw", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1991-05-07T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1997-02-01T00:00:00Z", "discountedPrice": 76, "expireAt": "1990-01-11T00:00:00Z", "price": 87, "purchaseAt": "1979-07-12T00:00:00Z", "trialPrice": 8}, {"currencyCode": "JWAFzyVi", "currencyNamespace": "uOUpEwnT", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1983-07-02T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1992-03-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1973-04-18T00:00:00Z", "price": 46, "purchaseAt": "1988-09-12T00:00:00Z", "trialPrice": 94}], "sl8zH8ji": [{"currencyCode": "oUU1UIYW", "currencyNamespace": "fS25OEQF", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1976-06-27T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1990-05-25T00:00:00Z", "discountedPrice": 22, "expireAt": "1985-12-30T00:00:00Z", "price": 97, "purchaseAt": "1993-09-30T00:00:00Z", "trialPrice": 9}, {"currencyCode": "6e2xWwt3", "currencyNamespace": "qyddbWLT", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1991-07-28T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1976-09-05T00:00:00Z", "discountedPrice": 91, "expireAt": "1973-02-22T00:00:00Z", "price": 69, "purchaseAt": "1995-04-28T00:00:00Z", "trialPrice": 0}, {"currencyCode": "bvwBoly2", "currencyNamespace": "mmeiZSZB", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1983-09-28T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1976-09-28T00:00:00Z", "discountedPrice": 10, "expireAt": "1992-07-02T00:00:00Z", "price": 70, "purchaseAt": "1999-10-21T00:00:00Z", "trialPrice": 43}], "u1I4ToCP": [{"currencyCode": "ur2d2skl", "currencyNamespace": "BSpQnLyX", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1990-10-10T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1999-08-24T00:00:00Z", "discountedPrice": 54, "expireAt": "1977-02-20T00:00:00Z", "price": 96, "purchaseAt": "1973-01-01T00:00:00Z", "trialPrice": 49}, {"currencyCode": "dxQueaEB", "currencyNamespace": "Po9lDJH9", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1987-02-14T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1985-01-31T00:00:00Z", "discountedPrice": 59, "expireAt": "1989-03-19T00:00:00Z", "price": 46, "purchaseAt": "1973-10-25T00:00:00Z", "trialPrice": 86}, {"currencyCode": "hxjYqJK4", "currencyNamespace": "gCRzQceQ", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1995-04-23T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 50, "expireAt": "1982-01-08T00:00:00Z", "price": 94, "purchaseAt": "1988-03-10T00:00:00Z", "trialPrice": 34}]}}]}' \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '86' \
    --offset '75' \
    --sortBy 'lne30lq6' \
    --storeId 'gscEqZN1' \
    --keyword 'jDxfeQhP' \
    --language 'xHoYAELA' \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '14' \
    --offset '99' \
    --sortBy '["name:desc", "name", "displayOrder:asc"]' \
    --storeId '6nrj0OHG' \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'JjFFUR10' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '05U5Iodh' \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'bFOwfBNh' \
    --namespace $AB_NAMESPACE \
    --storeId '99m7ok3T' \
    --body '{"appId": "WNthxsET", "appType": "DEMO", "baseAppId": "HRzA6iPM", "boothName": "DXdUODtz", "categoryPath": "cuQ3NFXj", "clazz": "PdBxmuL5", "displayOrder": 24, "entitlementType": "CONSUMABLE", "ext": {"fnnZktc4": {}, "sVUG5kPW": {}, "hJJzCytY": {}}, "features": ["70zKHOPG", "n4UVhfHm", "Q9mH6UMn"], "flexible": true, "images": [{"as": "kEwCwstb", "caption": "2HgnFlWI", "height": 26, "imageUrl": "9Tt77WU8", "smallImageUrl": "wZzXxntl", "width": 6}, {"as": "Su6hg8Ph", "caption": "LMAfZ5me", "height": 10, "imageUrl": "T0te5XQ6", "smallImageUrl": "PYq8a8id", "width": 96}, {"as": "DjTiajak", "caption": "6pWNwdP9", "height": 71, "imageUrl": "nxn6nGM3", "smallImageUrl": "DPnTqiqA", "width": 40}], "inventoryConfig": {"customAttributes": {"0bLjxZLt": {}, "uZ82e0wA": {}, "uhe9ZRto": {}}, "serverCustomAttributes": {"evML0mXs": {}, "fSYnEmRY": {}, "GMxN1DQn": {}}, "slotUsed": 98}, "itemIds": ["27viGVjz", "u5F7dZud", "P78utrDG"], "itemQty": {"VfDu83s7": 84, "ubeawY8L": 23, "ZtB6mMqB": 5}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"LItsU7nO": {"description": "wanjidmJ", "localExt": {"35pkR3Bb": {}, "hRCuSytj": {}, "XL0oqyN6": {}}, "longDescription": "tBFYs0Gb", "title": "MgWn1Mv6"}, "gU4olZL7": {"description": "Z3FMkiWR", "localExt": {"lgfLd96l": {}, "dfCFjsFp": {}, "MN6ZOPPn": {}}, "longDescription": "6GljGTvE", "title": "2YQ2kUGz"}, "GHqAyJfO": {"description": "R32S60Ji", "localExt": {"UtoImFoA": {}, "znMQsWRA": {}, "o8KMNeIA": {}}, "longDescription": "nJA7M3x3", "title": "oSLn4rFs"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 1, "duration": 67, "endDate": "1997-11-26T00:00:00Z", "itemId": "6znP8yo9", "itemSku": "ShmzAiwm", "itemType": "2AcvyV3x"}, {"count": 90, "duration": 52, "endDate": "1978-05-02T00:00:00Z", "itemId": "qLAno9Oa", "itemSku": "0dPiAVd2", "itemType": "YXm5aK3f"}, {"count": 35, "duration": 96, "endDate": "1999-07-27T00:00:00Z", "itemId": "3uWRwCOZ", "itemSku": "ymrk0pgn", "itemType": "iw6euIyZ"}], "name": "PNRSdlNy", "odds": 0.43206215278501314, "type": "PROBABILITY_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 39, "duration": 98, "endDate": "1981-07-22T00:00:00Z", "itemId": "thXO3LEC", "itemSku": "dvzqKUlX", "itemType": "87vDsnaq"}, {"count": 61, "duration": 37, "endDate": "1987-12-07T00:00:00Z", "itemId": "HAaL7ynz", "itemSku": "hRZ2YO4Q", "itemType": "QwomfqGA"}, {"count": 62, "duration": 44, "endDate": "1988-01-14T00:00:00Z", "itemId": "lzZjh8ff", "itemSku": "9adAa9eA", "itemType": "91Rsn1eo"}], "name": "uYnUOBr1", "odds": 0.28354302842468915, "type": "REWARD_GROUP", "weight": 50}, {"lootBoxItems": [{"count": 93, "duration": 49, "endDate": "1987-09-29T00:00:00Z", "itemId": "Pkoaf1Zl", "itemSku": "2905xbus", "itemType": "FSTxeULD"}, {"count": 0, "duration": 69, "endDate": "1971-06-28T00:00:00Z", "itemId": "lnK7DXpz", "itemSku": "5nAk5DjG", "itemType": "YDnFg5Wc"}, {"count": 90, "duration": 26, "endDate": "1999-08-13T00:00:00Z", "itemId": "Vf4r7A3D", "itemSku": "pJzYPvJC", "itemType": "HxNOJ714"}], "name": "teRkmbkR", "odds": 0.6942877500898043, "type": "REWARD", "weight": 68}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 40, "name": "tV2qn7jJ", "optionBoxConfig": {"boxItems": [{"count": 46, "duration": 69, "endDate": "1984-01-25T00:00:00Z", "itemId": "vldQHEfj", "itemSku": "lJt9y2DS", "itemType": "1e4N4dcX"}, {"count": 82, "duration": 18, "endDate": "1986-01-19T00:00:00Z", "itemId": "oWT7osBA", "itemSku": "L5kwLC4A", "itemType": "xyD6Jz1E"}, {"count": 46, "duration": 71, "endDate": "1980-05-26T00:00:00Z", "itemId": "7mzKuPGv", "itemSku": "n8IBKt82", "itemType": "Ccy8ozOr"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 83, "fixedTrialCycles": 67, "graceDays": 81}, "regionData": {"nPysLyVf": [{"currencyCode": "SyiEbZrZ", "currencyNamespace": "Zvte7dt3", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1990-11-11T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1994-08-26T00:00:00Z", "expireAt": "1998-08-28T00:00:00Z", "price": 55, "purchaseAt": "1985-12-02T00:00:00Z", "trialPrice": 14}, {"currencyCode": "xEbcS1J0", "currencyNamespace": "C3qN4Xa7", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1981-01-06T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1999-07-14T00:00:00Z", "expireAt": "1972-01-31T00:00:00Z", "price": 63, "purchaseAt": "1984-02-17T00:00:00Z", "trialPrice": 42}, {"currencyCode": "PYBcdvzJ", "currencyNamespace": "XWIXH40n", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1975-07-08T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1988-07-19T00:00:00Z", "expireAt": "1988-03-27T00:00:00Z", "price": 64, "purchaseAt": "1995-10-07T00:00:00Z", "trialPrice": 87}], "OuEIuBSY": [{"currencyCode": "Demm9wUQ", "currencyNamespace": "kAVg2QAp", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1998-09-27T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1981-06-21T00:00:00Z", "expireAt": "1981-05-04T00:00:00Z", "price": 82, "purchaseAt": "1991-10-11T00:00:00Z", "trialPrice": 47}, {"currencyCode": "O4NOfUgx", "currencyNamespace": "ZiBMU0YF", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1983-10-18T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1987-11-16T00:00:00Z", "expireAt": "1992-08-10T00:00:00Z", "price": 54, "purchaseAt": "1997-08-17T00:00:00Z", "trialPrice": 60}, {"currencyCode": "nOazxqIH", "currencyNamespace": "zfVuCgmc", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1993-05-17T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1989-10-17T00:00:00Z", "expireAt": "1975-02-02T00:00:00Z", "price": 19, "purchaseAt": "1989-03-13T00:00:00Z", "trialPrice": 58}], "XIuIjRcI": [{"currencyCode": "sVeExuPQ", "currencyNamespace": "RtSW4zBe", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1997-12-08T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1998-06-17T00:00:00Z", "expireAt": "1987-11-02T00:00:00Z", "price": 47, "purchaseAt": "1995-09-21T00:00:00Z", "trialPrice": 32}, {"currencyCode": "HP5l81ss", "currencyNamespace": "BMo8BgVU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1971-08-22T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1984-10-16T00:00:00Z", "expireAt": "1978-05-17T00:00:00Z", "price": 40, "purchaseAt": "1998-04-19T00:00:00Z", "trialPrice": 30}, {"currencyCode": "IMbMHsuB", "currencyNamespace": "vkr5fwKW", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1974-02-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1976-07-21T00:00:00Z", "expireAt": "1998-03-09T00:00:00Z", "price": 78, "purchaseAt": "1995-05-31T00:00:00Z", "trialPrice": 39}]}, "saleConfig": {"currencyCode": "Q3w9u26N", "price": 66}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "TY4bKsE3", "stackable": true, "status": "ACTIVE", "tags": ["TaJLFGyu", "iFGm1UvZ", "Pr1FBR22"], "targetCurrencyCode": "cFCEsR2L", "targetNamespace": "YFNqxnCP", "thumbnailUrl": "njOQ3oTo", "useCount": 32}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '1wtkTWNp' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'QegA9P92' \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Vi1HwUtC' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 16, "orderNo": "3vzprHYK"}' \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '4BmhuPbu' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'O2Nm74sY' \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'QcDO3t5v' \
    --namespace $AB_NAMESPACE \
    --storeId 'FyItLf6T' \
    --body '{"carousel": [{"alt": "XzT4diYb", "previewUrl": "jN3mLLN0", "thumbnailUrl": "kKLxBVIj", "type": "video", "url": "4do0Ym49", "videoSource": "youtube"}, {"alt": "3IBA6Cbf", "previewUrl": "g9q3ELOb", "thumbnailUrl": "n0j8MQEf", "type": "image", "url": "nwva0KaL", "videoSource": "youtube"}, {"alt": "AU2YV8ax", "previewUrl": "4ASxS9il", "thumbnailUrl": "Z4j15Vce", "type": "video", "url": "G3IZCVSf", "videoSource": "generic"}], "developer": "i9BjicS6", "forumUrl": "p9PDO53N", "genres": ["MassivelyMultiplayer", "RPG", "Action"], "localizations": {"yFsbvWHl": {"announcement": "rTJhUXiM", "slogan": "iY8DwqcA"}, "0LRnC6oq": {"announcement": "nRKSkXyf", "slogan": "qNzNCNo1"}, "DwMK1GV8": {"announcement": "DFrvy8Fc", "slogan": "7KayGdO5"}}, "platformRequirements": {"YTngtSX8": [{"additionals": "hMHvOpSr", "directXVersion": "bxHA1w3I", "diskSpace": "lDRmvheJ", "graphics": "UWgHMdHy", "label": "yEOO7Zg4", "osVersion": "vQjGMi1a", "processor": "pMMgUg6j", "ram": "sQgowJte", "soundCard": "mzbUrKj9"}, {"additionals": "QcG77AVv", "directXVersion": "zaR9PiGs", "diskSpace": "7aOp0uP6", "graphics": "u2Tg65HN", "label": "Zulfs7rK", "osVersion": "KWMKc05F", "processor": "bIYz5rWp", "ram": "3S4pLuHp", "soundCard": "vgjZpQQd"}, {"additionals": "oGvqW1T9", "directXVersion": "IexCEFup", "diskSpace": "U7y9N1uB", "graphics": "OApcWjMe", "label": "phQkEL1M", "osVersion": "6r8lB8Ww", "processor": "aRi3GTG2", "ram": "Q1YSbBKI", "soundCard": "ebNmxwIr"}], "2u4cBBzn": [{"additionals": "4W1zgTE5", "directXVersion": "ursMLWFa", "diskSpace": "6dLyasYV", "graphics": "XY43KnV8", "label": "SWxleixc", "osVersion": "1VA9oCcu", "processor": "gV9NXrKn", "ram": "lvwAx0iR", "soundCard": "vGLaO6qh"}, {"additionals": "MBE7YR9V", "directXVersion": "9L9u5a0F", "diskSpace": "yp9e2kaJ", "graphics": "VSHa1C5Z", "label": "pzRlfcKr", "osVersion": "xUEGDxLE", "processor": "yIDQknwR", "ram": "xMXQKVuL", "soundCard": "bgsZJUJf"}, {"additionals": "lCglog5e", "directXVersion": "Fih6lLgt", "diskSpace": "ZKz4U8i7", "graphics": "gylXKonf", "label": "5bwpzO2s", "osVersion": "RoooD10r", "processor": "oemPYtmY", "ram": "vwDDnrJ8", "soundCard": "3rE8p25B"}], "tNoJItFJ": [{"additionals": "p4YW44Ib", "directXVersion": "q2D5U0zF", "diskSpace": "IfX1DtfO", "graphics": "8Hzmmcrs", "label": "SSFpde6e", "osVersion": "XSSpJL06", "processor": "TXFrSEqI", "ram": "dd6ccHvH", "soundCard": "bX9fjyjd"}, {"additionals": "DGRIUZuK", "directXVersion": "6q19UgRa", "diskSpace": "PMyRBF12", "graphics": "E3rXzPUr", "label": "9gtgsIpZ", "osVersion": "fTEwpcnN", "processor": "G6xZ3ZNN", "ram": "X0sNEGWd", "soundCard": "iqTKKFgP"}, {"additionals": "nVZJkgzK", "directXVersion": "PfvePFS0", "diskSpace": "UOWu7RKP", "graphics": "r6YPVpR8", "label": "hqq4pWVS", "osVersion": "lGTRMbU7", "processor": "0yQh1Vwm", "ram": "FhFgLvHY", "soundCard": "fkFohUwL"}]}, "platforms": ["IOS", "IOS", "Windows"], "players": ["MMO", "Coop", "MMO"], "primaryGenre": "FreeToPlay", "publisher": "mx4h8WBH", "releaseDate": "1979-02-09T00:00:00Z", "websiteUrl": "PXMyFxoL"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'eyW4682D' \
    --namespace $AB_NAMESPACE \
    --storeId 'OwbV13lO' \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'le5wL6Nm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'o0oZ6SaF' \
    --namespace $AB_NAMESPACE \
    --storeId '7ITrtpJM' \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'bUdzqhmy' \
    --itemId 'AgCd3jbF' \
    --namespace $AB_NAMESPACE \
    --storeId 'RD68vkLb' \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '85VueNlA' \
    --itemId 'kRj1I4Jb' \
    --namespace $AB_NAMESPACE \
    --storeId 'RAxY5fNb' \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'eNg5dOSK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'ZncaSsqI' \
    --populateBundle 'false' \
    --region 'oRn9qFf4' \
    --storeId 'KcK8bGzS' \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '9GpVQrz0' \
    --namespace $AB_NAMESPACE \
    --storeId '90VqSMYp' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 43, "code": "gGiSvKqh", "comparison": "isNot", "name": "jcHGULK2", "predicateType": "StatisticCodePredicate", "value": "h8FMS6J4", "values": ["mGm99yJd", "bnDJD7wP", "fV9lDa7A"]}, {"anyOf": 44, "code": "6kM3Rz60", "comparison": "isLessThan", "name": "JVNJ9gY7", "predicateType": "StatisticCodePredicate", "value": "iScgzT5C", "values": ["KtP2xcnc", "u69LFdSj", "HAE2IUTr"]}, {"anyOf": 57, "code": "pFdlnFOa", "comparison": "isLessThanOrEqual", "name": "wTpTf3Hu", "predicateType": "EntitlementPredicate", "value": "WCr6Icti", "values": ["0eGhhyHf", "9pcDw3X7", "h9OjFL1r"]}]}, {"operator": "or", "predicates": [{"anyOf": 2, "code": "daCBtTVA", "comparison": "isGreaterThan", "name": "ieUWohyI", "predicateType": "SeasonTierPredicate", "value": "TX3Hrwnw", "values": ["3dVWqt1k", "x8w7hF2J", "oBp3VKo8"]}, {"anyOf": 43, "code": "UrMcAkfE", "comparison": "isNot", "name": "WzfKpAHW", "predicateType": "StatisticCodePredicate", "value": "TQlK9yET", "values": ["rSxzdRBM", "pIFnQbpj", "qDnNwqDX"]}, {"anyOf": 34, "code": "SEs5EPdI", "comparison": "is", "name": "PHZrH4KZ", "predicateType": "SeasonPassPredicate", "value": "p3ADgxco", "values": ["w3ms44tY", "WqDerDnK", "hmrSvKHi"]}]}, {"operator": "or", "predicates": [{"anyOf": 61, "code": "Qg7WmNt6", "comparison": "isGreaterThanOrEqual", "name": "KjIqTL3v", "predicateType": "StatisticCodePredicate", "value": "BFlQfXql", "values": ["EBke8vgZ", "NUlftSOi", "74XLPpjf"]}, {"anyOf": 3, "code": "B84JVZYV", "comparison": "excludes", "name": "ltOgdIlW", "predicateType": "EntitlementPredicate", "value": "oJAZNeZH", "values": ["6VBuEmdI", "KEyi5HFV", "ST60YMep"]}, {"anyOf": 67, "code": "GX7eAn7g", "comparison": "is", "name": "DFEmd6uu", "predicateType": "StatisticCodePredicate", "value": "7evoFPWq", "values": ["brT4M5fv", "vUNGjS5n", "FC0qcdF4"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'YXvTN6qB' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "DbWoo2OX"}' \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --name 'hpkJMxMX' \
    --offset '21' \
    --tag 'CTPthXms' \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fBIqlTHL", "name": "2j3G6mdx", "status": "INACTIVE", "tags": ["h8R6yBqB", "PJizAaXN", "vNTwFgKo"]}' \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'Nc5bukyc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'jWpi6nhC' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wThLq86V", "name": "tps9e6kB", "status": "ACTIVE", "tags": ["hQAIh6us", "EMNZNIIE", "rVuUYwgt"]}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'K6ldQJOg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'OFTRDXIZ' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '47' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'BTgFB82e' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'sdiLPO4x' \
    --limit '4' \
    --offset '33' \
    --orderNos '["P3WGMCsB", "OITsq2Lh", "0b46XFWT"]' \
    --sortBy 'nYuGBXeo' \
    --startTime 'kHGaYD2b' \
    --status 'FULFILL_FAILED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 143 'QueryOrders' test.out

#- 144 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'GetOrderStatistics' test.out

#- 145 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'LhhCq7x5' \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NakRqNzk' \
    --body '{"description": "56kFO5w9"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundOrder' test.out

#- 147 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentCallbackConfig' test.out

#- 148 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "2rqEfazE", "privateKey": "8xaaCiBW"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentMerchantConfig' test.out

#- 150 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["o1womFiU", "lR7oyXDu", "qJFhoBK8"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentDomainWhitelistConfig' test.out

#- 151 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '70YwKUsk' \
    --externalId 'ZKpEwCV9' \
    --limit '16' \
    --notificationSource 'STRIPE' \
    --notificationType 'Bm5AuQmw' \
    --offset '63' \
    --paymentOrderNo 'PVME9iWp' \
    --startDate 'oCxudXiq' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 151 'QueryPaymentNotifications' test.out

#- 152 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '9XT4HUvS' \
    --limit '59' \
    --offset '85' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 152 'QueryPaymentOrders' test.out

#- 153 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "HORxmyKy", "currencyNamespace": "XUkwyf4E", "customParameters": {"KNTyQQ9r": {}, "JeyAq4sj": {}, "zHV93r6O": {}}, "description": "0icNI7MF", "extOrderNo": "1z0iL0Ix", "extUserId": "OBD3EoHW", "itemType": "LOOTBOX", "language": "BpG", "metadata": {"CBHWMwgE": "1dlJMcVU", "C7hEOgnW": "tje5TVjo", "IuIgDSlV": "6TB2KNqo"}, "notifyUrl": "S7HYLa08", "omitNotification": false, "platform": "CoR2jM7I", "price": 20, "recurringPaymentOrderNo": "iw3ydl3x", "region": "oqP6ZcIq", "returnUrl": "BoBnTAvm", "sandbox": false, "sku": "Yq0H3AAa", "subscriptionId": "aABYGlde", "targetNamespace": "s2gEUlKF", "targetUserId": "NP7q4TW3", "title": "QaI4Rgb3"}' \
    > test.out 2>&1
eval_tap $? 153 'CreatePaymentOrderByDedicated' test.out

#- 154 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'ee6z1mFy' \
    > test.out 2>&1
eval_tap $? 154 'ListExtOrderNoByExtTxId' test.out

#- 155 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Wp2yziKE' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrder' test.out

#- 156 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bUJiVgbi' \
    --body '{"extTxId": "TWUTs92e", "paymentMethod": "SP7o062i", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 156 'ChargePaymentOrder' test.out

#- 157 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'N8aigFpr' \
    --body '{"description": "AyK1Jge5"}' \
    > test.out 2>&1
eval_tap $? 157 'RefundPaymentOrderByDedicated' test.out

#- 158 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PNkn2XfP' \
    --body '{"amount": 53, "currencyCode": "YMkNzAw4", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 12, "vat": 48}' \
    > test.out 2>&1
eval_tap $? 158 'SimulatePaymentOrderNotification' test.out

#- 159 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'alfWbFh3' \
    > test.out 2>&1
eval_tap $? 159 'GetPaymentOrderChargeStatus' test.out

#- 160 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'TABFNQFP' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "8UgkKYVV", "serviceLabel": 79}' \
    > test.out 2>&1
eval_tap $? 160 'GetPsnEntitlementOwnership' test.out

#- 161 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'ILbAPiGi' \
    --body '{"delegationToken": "dOxyGCIX", "sandboxId": "lppHtue0"}' \
    > test.out 2>&1
eval_tap $? 161 'GetXboxEntitlementOwnership' test.out

#- 162 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 162 'GetPlatformEntitlementConfig' test.out

#- 163 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Playstation", "Oculus", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePlatformEntitlementConfig' test.out

#- 164 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformWalletConfig' test.out

#- 165 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Oculus", "GooglePlay", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformWalletConfig' test.out

#- 166 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 166 'ResetPlatformWalletConfig' test.out

#- 167 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationConfig' test.out

#- 168 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationConfig' test.out

#- 169 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationConfig' test.out

#- 170 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime '6o2RjYE8' \
    --limit '22' \
    --offset '14' \
    --source 'ORDER' \
    --startTime 'jok8j715' \
    --status 'SUCCESS' \
    --transactionId 'vekrrm1A' \
    --userId 'hc2p2EHD' \
    > test.out 2>&1
eval_tap $? 170 'QueryRevocationHistories' test.out

#- 171 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'GetRevocationPluginConfig' test.out

#- 172 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "r6cVXB6z"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "aVIIZ1e3"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 172 'UpdateRevocationPluginConfig' test.out

#- 173 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'DeleteRevocationPluginConfig' test.out

#- 174 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 174 'UploadRevocationPluginConfigCert' test.out

#- 175 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZpL6TzIP", "eventTopic": "swZukFTF", "maxAwarded": 0, "maxAwardedPerUser": 14, "namespaceExpression": "pA4qzdOJ", "rewardCode": "34A1wVXu", "rewardConditions": [{"condition": "wwgF76Av", "conditionName": "DzBueN2J", "eventName": "wOsG9nlV", "rewardItems": [{"duration": 28, "endDate": "1997-06-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EZJX1U2W", "quantity": 99, "sku": "S25h9Vsl"}, {"duration": 51, "endDate": "1991-07-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WWyBgCRD", "quantity": 24, "sku": "LKSCFKeg"}, {"duration": 54, "endDate": "1980-06-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DOeoYlDl", "quantity": 89, "sku": "HHEdNBLJ"}]}, {"condition": "TkiJ6qVH", "conditionName": "Q0agJbeo", "eventName": "ZRLgCWc8", "rewardItems": [{"duration": 45, "endDate": "1992-10-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7j3XFJy5", "quantity": 30, "sku": "0J81wDkf"}, {"duration": 36, "endDate": "1988-04-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qQjenOkB", "quantity": 40, "sku": "qHcb743p"}, {"duration": 44, "endDate": "1997-06-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fGS2Plt2", "quantity": 6, "sku": "CVwe7X9m"}]}, {"condition": "S0mr6XYS", "conditionName": "UsHQcnPX", "eventName": "akoUJOKP", "rewardItems": [{"duration": 65, "endDate": "1996-06-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JYpU3VFx", "quantity": 27, "sku": "yN771jDp"}, {"duration": 49, "endDate": "1987-01-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sf3zb7f4", "quantity": 19, "sku": "fOhEtYhP"}, {"duration": 6, "endDate": "1999-10-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dLJlHG7j", "quantity": 55, "sku": "dQaU4q9K"}]}], "userIdExpression": "JR9zFxNh"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateReward' test.out

#- 176 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'yoBvl5ak' \
    --limit '22' \
    --offset '100' \
    --sortBy '["namespace:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 176 'QueryRewards' test.out

#- 177 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'ExportRewards' test.out

#- 178 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 178 'ImportRewards' test.out

#- 179 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'lxIwW9p3' \
    > test.out 2>&1
eval_tap $? 179 'GetReward' test.out

#- 180 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'vGhZpNoY' \
    --body '{"description": "ZtIbunSp", "eventTopic": "LzhYotaO", "maxAwarded": 79, "maxAwardedPerUser": 49, "namespaceExpression": "mHcacpHP", "rewardCode": "9XR2WY1e", "rewardConditions": [{"condition": "q5TBBWWV", "conditionName": "fqdjy0kd", "eventName": "1PLSfzy1", "rewardItems": [{"duration": 71, "endDate": "1994-10-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IKrDQwvj", "quantity": 71, "sku": "CWJOYoz8"}, {"duration": 0, "endDate": "1990-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "an7K0HBQ", "quantity": 14, "sku": "nYahhQEn"}, {"duration": 36, "endDate": "1994-04-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0lMkWgOu", "quantity": 48, "sku": "1OZRZa56"}]}, {"condition": "XqinAzVe", "conditionName": "wzbRmi31", "eventName": "JP38JYED", "rewardItems": [{"duration": 25, "endDate": "1998-07-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NH5VzQwB", "quantity": 20, "sku": "WgUuwxzj"}, {"duration": 20, "endDate": "1983-01-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tbAW3D6j", "quantity": 35, "sku": "TRoo5bmN"}, {"duration": 58, "endDate": "1992-12-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "H0scN1gT", "quantity": 65, "sku": "gnMVkzwn"}]}, {"condition": "a8CjIqrq", "conditionName": "3U65Tkc4", "eventName": "VVkmfehP", "rewardItems": [{"duration": 84, "endDate": "1998-02-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "040nii3m", "quantity": 56, "sku": "r84cOLI6"}, {"duration": 13, "endDate": "1991-08-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aSQYeMAw", "quantity": 75, "sku": "fHjqjVeF"}, {"duration": 69, "endDate": "1978-09-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MN7L1Yuq", "quantity": 47, "sku": "JMBvAU1u"}]}], "userIdExpression": "xfquOmd9"}' \
    > test.out 2>&1
eval_tap $? 180 'UpdateReward' test.out

#- 181 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'zQmjsMaF' \
    > test.out 2>&1
eval_tap $? 181 'DeleteReward' test.out

#- 182 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'qpRsbD47' \
    --body '{"payload": {"AEjt3NYR": {}, "mY2xXbOl": {}, "9Tcsj2S0": {}}}' \
    > test.out 2>&1
eval_tap $? 182 'CheckEventCondition' test.out

#- 183 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'jO0w5XZs' \
    --body '{"conditionName": "jfc0fnon", "userId": "BUflDetR"}' \
    > test.out 2>&1
eval_tap $? 183 'DeleteRewardConditionRecord' test.out

#- 184 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'HV2V7Rpg' \
    --limit '28' \
    --offset '10' \
    --start 'F1iJXqZD' \
    --storeId 'aoyOTMcO' \
    --viewId 'pI3wJ6nO' \
    > test.out 2>&1
eval_tap $? 184 'QuerySections' test.out

#- 185 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'je6uZUET' \
    --body '{"active": false, "displayOrder": 20, "endDate": "1975-03-27T00:00:00Z", "ext": {"c9blvSkR": {}, "oHzCnpDG": {}, "Uo3WiidA": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 54, "itemCount": 16, "rule": "SEQUENCE"}, "items": [{"id": "e6KgqJHs", "sku": "K8EuEPmd"}, {"id": "vWsjt5wL", "sku": "4K62Wqo9"}, {"id": "e6SjtXfl", "sku": "tTVH8CSm"}], "localizations": {"w0TOMbTL": {"description": "JKzWAg8O", "localExt": {"sBNWiZMi": {}, "yp5lg7HZ": {}, "y1Ugdj7R": {}}, "longDescription": "BKgt8eSw", "title": "U4J39Lmm"}, "TD7b8FHv": {"description": "sF63KYtx", "localExt": {"raW8Lo6P": {}, "3CAz0cfC": {}, "F9QYCIic": {}}, "longDescription": "5lSXj7Lk", "title": "G4ob6ux9"}, "ZtFJfQ6i": {"description": "B86sjocH", "localExt": {"sp7uRcI7": {}, "9MwgQbwi": {}, "shBaI18D": {}}, "longDescription": "8IXeJYRw", "title": "zWNqGdHH"}}, "name": "QLawbk6P", "rotationType": "FIXED_PERIOD", "startDate": "1992-05-02T00:00:00Z", "viewId": "uyKkyMyO"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateSection' test.out

#- 186 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'HvsrIwWG' \
    > test.out 2>&1
eval_tap $? 186 'PurgeExpiredSection' test.out

#- 187 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XNFueCHk' \
    --storeId 'yK5H6j9h' \
    > test.out 2>&1
eval_tap $? 187 'GetSection' test.out

#- 188 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'w7nI5aQM' \
    --storeId 'fvxemZgs' \
    --body '{"active": false, "displayOrder": 80, "endDate": "1986-07-19T00:00:00Z", "ext": {"3xvct5f7": {}, "6pGV8G8J": {}, "zuHWVN09": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 19, "itemCount": 25, "rule": "SEQUENCE"}, "items": [{"id": "nA6wAFyX", "sku": "RadHH6IY"}, {"id": "DRiUaa17", "sku": "jrzHZKAT"}, {"id": "HfhyUGry", "sku": "OuZZr4Sx"}], "localizations": {"JFFGGevI": {"description": "zI0cR0oz", "localExt": {"yvwqKr79": {}, "G505YXss": {}, "qky52weO": {}}, "longDescription": "ok31LzW5", "title": "tSh9noAr"}, "daPkn0vC": {"description": "VnxBSk0Q", "localExt": {"AG1thJ6c": {}, "FtrCWBQ2": {}, "1pUcHznC": {}}, "longDescription": "wzDsMgxY", "title": "IxVQNdXb"}, "fSU9WRSY": {"description": "4JQiW1FR", "localExt": {"6tZOBVk1": {}, "FJUGe15i": {}, "EGJUx0kc": {}}, "longDescription": "XryPZs5c", "title": "aJEo1KlH"}}, "name": "jlv2q7xC", "rotationType": "NONE", "startDate": "1985-03-17T00:00:00Z", "viewId": "nVvxsEFG"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateSection' test.out

#- 189 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '76kxSX0o' \
    --storeId '8nLl2yp5' \
    > test.out 2>&1
eval_tap $? 189 'DeleteSection' test.out

#- 190 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'ListStores' test.out

#- 191 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "Y1CLPwUK", "defaultRegion": "g9zFETUe", "description": "IZLUN2PQ", "supportedLanguages": ["lhE5sqg6", "QD41L9W8", "S99akTk7"], "supportedRegions": ["YD6ZsCyI", "VIgkn7kN", "WmIUoD8Z"], "title": "E7FPcvcv"}' \
    > test.out 2>&1
eval_tap $? 191 'CreateStore' test.out

#- 192 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'CATEGORY' \
    > test.out 2>&1
eval_tap $? 192 'GetCatalogDefinition' test.out

#- 193 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'DownloadCSVTemplates' test.out

#- 194 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["b6q3fBjk", "8a7kw4EV", "wlpkTF0b"], "idsToBeExported": ["HQG93Gc3", "PwR1NShs", "9H0NhNIB"], "storeId": "p26mTH6Q"}' \
    > test.out 2>&1
eval_tap $? 194 'ExportStoreByCSV' test.out

#- 195 ImportStore
eval_tap 0 195 'ImportStore # SKIP deprecated' test.out

#- 196 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 196 'GetPublishedStore' test.out

#- 197 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'DeletePublishedStore' test.out

#- 198 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStoreBackup' test.out

#- 199 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'RollbackPublishedStore' test.out

#- 200 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'T8OpOfnl' \
    > test.out 2>&1
eval_tap $? 200 'GetStore' test.out

#- 201 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YOHuI1qp' \
    --body '{"defaultLanguage": "U3bqit34", "defaultRegion": "RYrE9p6z", "description": "ktymmaLL", "supportedLanguages": ["dqzr1gbR", "GxweW0On", "MlBV6O6n"], "supportedRegions": ["64js3k8T", "yP5uRY9f", "9pGNR7is"], "title": "eqDSHAKY"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateStore' test.out

#- 202 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'rsbAIKWp' \
    > test.out 2>&1
eval_tap $? 202 'DeleteStore' test.out

#- 203 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'brNqXPln' \
    --action 'DELETE' \
    --itemSku 'Fqo8gZiX' \
    --itemType 'SEASON' \
    --limit '7' \
    --offset '97' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "createdAt:asc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'by18XC2B' \
    --updatedAtStart 'RD4L0e0r' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 203 'QueryChanges' test.out

#- 204 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'oYxUJNxl' \
    > test.out 2>&1
eval_tap $? 204 'PublishAll' test.out

#- 205 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'TO72W39C' \
    > test.out 2>&1
eval_tap $? 205 'PublishSelected' test.out

#- 206 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'GFoZjWwG' \
    > test.out 2>&1
eval_tap $? 206 'SelectAllRecords' test.out

#- 207 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'cJn8N4Z4' \
    --action 'DELETE' \
    --itemSku 'Rdobrr1l' \
    --itemType 'BUNDLE' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'MuHWnz3w' \
    --updatedAtStart 'qp5ihN4P' \
    > test.out 2>&1
eval_tap $? 207 'SelectAllRecordsByCriteria' test.out

#- 208 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'fzNmnk0b' \
    --action 'CREATE' \
    --itemSku '32SvWf3g' \
    --itemType 'OPTIONBOX' \
    --type 'SECTION' \
    --updatedAtEnd 'QoOTS04c' \
    --updatedAtStart 'D19hVjHB' \
    > test.out 2>&1
eval_tap $? 208 'GetStatistic' test.out

#- 209 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'LW1rBaP1' \
    > test.out 2>&1
eval_tap $? 209 'UnselectAllRecords' test.out

#- 210 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '08PQtQHt' \
    --namespace $AB_NAMESPACE \
    --storeId 'WYpE94uE' \
    > test.out 2>&1
eval_tap $? 210 'SelectRecord' test.out

#- 211 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'cl5kqNJP' \
    --namespace $AB_NAMESPACE \
    --storeId 'GuZKTlUf' \
    > test.out 2>&1
eval_tap $? 211 'UnselectRecord' test.out

#- 212 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'H39oxTCN' \
    --targetStoreId 'knj3GDAF' \
    > test.out 2>&1
eval_tap $? 212 'CloneStore' test.out

#- 213 ExportStore
eval_tap 0 213 'ExportStore # SKIP deprecated' test.out

#- 214 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'bEolvVQP' \
    --end 'Vd3OrOIK' \
    --limit '92' \
    --offset '78' \
    --sortBy '8AMOYLYK' \
    --start 'EyPQPaXE' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 214 'QueryImportHistory' test.out

#- 215 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'qH72ZNh1' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'HjGS7Yiw' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 215 'ImportStoreByCSV' test.out

#- 216 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'lQAxjYdA' \
    --limit '19' \
    --offset '6' \
    --sku 'PRWN2D6i' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'DlxpCvGh' \
    > test.out 2>&1
eval_tap $? 216 'QuerySubscriptions' test.out

#- 217 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rUzq0hTU' \
    > test.out 2>&1
eval_tap $? 217 'RecurringChargeSubscription' test.out

#- 218 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'Ow5B9HXa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'GetTicketDynamic' test.out

#- 219 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'uLR2FedH' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "122vNxYX"}' \
    > test.out 2>&1
eval_tap $? 219 'DecreaseTicketSale' test.out

#- 220 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'laNqHLUG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetTicketBoothID' test.out

#- 221 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'MGVrt0eU' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 16, "orderNo": "yIs5I2h4"}' \
    > test.out 2>&1
eval_tap $? 221 'IncreaseTicketSale' test.out

#- 222 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 16, "currencyCode": "VzPomaQo", "expireAt": "1994-03-25T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "j0ebZz5x", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 45, "entitlementCollectionId": "c4Xb3yOz", "entitlementOrigin": "Other", "itemIdentity": "uobUTDYf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "JEorupTa"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 97, "currencyCode": "D6Q76Tvg", "expireAt": "1974-03-04T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "PqKXXbh3", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "hd4JkL4T", "entitlementOrigin": "Steam", "itemIdentity": "v5erdWm0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "JjZJbkMR"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 44, "currencyCode": "Pt4VytvQ", "expireAt": "1989-01-29T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "Bkjlz3SS", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "S3L4gY4g", "entitlementOrigin": "IOS", "itemIdentity": "uylFpZ3U", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "Lg5MA80G"}, "type": "DEBIT_WALLET"}], "userId": "pqQXpeLa"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 39, "currencyCode": "KZgjibTr", "expireAt": "1974-11-27T00:00:00Z"}, "debitPayload": {"count": 17, "currencyCode": "nO6UdrTE", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "3GtqRkEF", "entitlementOrigin": "Twitch", "itemIdentity": "EbUT6eHl", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "FjdfGSjA"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 61, "currencyCode": "BeBXTkhL", "expireAt": "1980-12-15T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "8o6wBrKl", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 6, "entitlementCollectionId": "P48jJffO", "entitlementOrigin": "Xbox", "itemIdentity": "b2ZLqpa8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "Ad2eBMqg"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 85, "currencyCode": "TKTRhpsj", "expireAt": "1975-06-24T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "lTb1HmOW", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "GAtme5KQ", "entitlementOrigin": "IOS", "itemIdentity": "3rHVJ86L", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 63, "entitlementId": "j5NwNhST"}, "type": "FULFILL_ITEM"}], "userId": "532Oebez"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 96, "currencyCode": "0rp0RGPC", "expireAt": "1989-01-30T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "GtOnohHi", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "DdEeZBao", "entitlementOrigin": "Nintendo", "itemIdentity": "7bDFX6sP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "mhq82TlZ"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 34, "currencyCode": "a3o1SNMY", "expireAt": "1988-11-03T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "HkD3i7a8", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "llIQ2jFM", "entitlementOrigin": "Other", "itemIdentity": "a9LT3qqh", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "tLVNroq9"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 48, "currencyCode": "BMHv9Yrq", "expireAt": "1988-01-05T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "Oqe15abx", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "wZj9tBqb", "entitlementOrigin": "Oculus", "itemIdentity": "fhXk2AX5", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "hjrdowzb"}, "type": "CREDIT_WALLET"}], "userId": "KYXPAgZZ"}], "metadata": {"zngFKBIp": {}, "vjgCeD9U": {}, "7GrRLUxF": {}}, "needPreCheck": false, "transactionId": "3wI3nwYm", "type": "UOjrN5Dv"}' \
    > test.out 2>&1
eval_tap $? 222 'Commit' test.out

#- 223 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '60' \
    --status 'SUCCESS' \
    --type 'bpd6rLb6' \
    --userId 'SlHFmd0w' \
    > test.out 2>&1
eval_tap $? 223 'GetTradeHistoryByCriteria' test.out

#- 224 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'VA3Fsp2I' \
    > test.out 2>&1
eval_tap $? 224 'GetTradeHistoryByTransactionId' test.out

#- 225 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'g3C5qrXa' \
    --body '{"achievements": [{"id": "ul5ipPmd", "value": 52}, {"id": "jBSl4v7H", "value": 9}, {"id": "KBUMLjEj", "value": 17}], "steamUserId": "Bn6c4osQ"}' \
    > test.out 2>&1
eval_tap $? 225 'UnlockSteamUserAchievement' test.out

#- 226 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Rkso9xFf' \
    --xboxUserId 'N15lm4SU' \
    > test.out 2>&1
eval_tap $? 226 'GetXblUserAchievements' test.out

#- 227 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'cbtDsKA0' \
    --body '{"achievements": [{"id": "3xHjmZz3", "percentComplete": 9}, {"id": "DkBBVSe2", "percentComplete": 64}, {"id": "pqw8JtpI", "percentComplete": 8}], "serviceConfigId": "0DrqQwp8", "titleId": "xOvGNrfl", "xboxUserId": "O4MuPztI"}' \
    > test.out 2>&1
eval_tap $? 227 'UpdateXblUserAchievement' test.out

#- 228 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '0D8GfGDt' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeCampaign' test.out

#- 229 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dzvTkblb' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeEntitlement' test.out

#- 230 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'N03eCR1O' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeFulfillment' test.out

#- 231 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'GkjPUQcw' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeIntegration' test.out

#- 232 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '34f0hx16' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeOrder' test.out

#- 233 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'iJEn2lBn' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizePayment' test.out

#- 234 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'eJDom6yh' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeRevocation' test.out

#- 235 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rVlqtESb' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeSubscription' test.out

#- 236 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'pZv8RXWI' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeWallet' test.out

#- 237 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'srY9EZMi' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 237 'GetUserDLCByPlatform' test.out

#- 238 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '2wXr9blm' \
    --includeAllNamespaces 'true' \
    --status 'REVOKED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 238 'GetUserDLC' test.out

#- 239 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'BObc7aB0' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'xkUn5rW4' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'xEjthOzt' \
    --features '["8ODtytfp", "xGDYacXM", "CknYPWZe"]' \
    --fuzzyMatchName 'true' \
    --itemId '["6sprMt2s", "0D4sp7wK", "lqnqjm67"]' \
    --limit '81' \
    --offset '39' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 239 'QueryUserEntitlements' test.out

#- 240 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '124xVOrk' \
    --body '[{"collectionId": "4Rm6KtF3", "endDate": "1971-06-28T00:00:00Z", "grantedCode": "jzluLSqG", "itemId": "OaLqvH2q", "itemNamespace": "m2e597Ll", "language": "Yb_iyPW_653", "origin": "System", "quantity": 77, "region": "ZDm7TrMq", "source": "ACHIEVEMENT", "startDate": "1982-07-22T00:00:00Z", "storeId": "pbLHL6ww"}, {"collectionId": "MyGilR3k", "endDate": "1994-03-21T00:00:00Z", "grantedCode": "oWGePUeb", "itemId": "1YAdb5rj", "itemNamespace": "KSsgm7tA", "language": "BJgt-779", "origin": "System", "quantity": 0, "region": "J4gXXBEE", "source": "PROMOTION", "startDate": "1996-06-27T00:00:00Z", "storeId": "KdBQAPdq"}, {"collectionId": "nERYnT5k", "endDate": "1978-12-20T00:00:00Z", "grantedCode": "HHfP6IYH", "itemId": "acLfIIE4", "itemNamespace": "AJuNhe7n", "language": "pE_euOm-Og", "origin": "System", "quantity": 12, "region": "1xdZHUSk", "source": "ACHIEVEMENT", "startDate": "1988-03-21T00:00:00Z", "storeId": "5yzdwqc7"}]' \
    > test.out 2>&1
eval_tap $? 240 'GrantUserEntitlement' test.out

#- 241 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'uuDZWxxX' \
    --activeOnly 'true' \
    --appId 'fKsUaMBm' \
    > test.out 2>&1
eval_tap $? 241 'GetUserAppEntitlementByAppId' test.out

#- 242 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SLG5vkNg' \
    --activeOnly 'true' \
    --limit '46' \
    --offset '17' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserEntitlementsByAppType' test.out

#- 243 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4C5jSYfu' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform '1mc6Skx2' \
    --itemId 'gvTf1yBh' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementByItemId' test.out

#- 244 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tI3xPaZP' \
    --ids '["IjxB2CQ6", "uHmNPMrn", "h00GlH1S"]' \
    --platform 'heY6jf8Z' \
    > test.out 2>&1
eval_tap $? 244 'GetUserActiveEntitlementsByItemIds' test.out

#- 245 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yvinjK3j' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --platform 'IHDBiw7R' \
    --sku '1Htg8X0W' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementBySku' test.out

#- 246 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'nYRpsu7l' \
    --appIds '["q9iPIRFO", "EF7sgrJN", "EnnTn2ny"]' \
    --itemIds '["XF8wkUg0", "8z9bmERw", "02nKrc9x"]' \
    --platform 'YaOMSmol' \
    --skus '["vcRfVEyp", "r6dR93s8", "QhhzCf2x"]' \
    > test.out 2>&1
eval_tap $? 246 'ExistsAnyUserActiveEntitlement' test.out

#- 247 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '3dGlRJZj' \
    --platform 'OdEyzA9g' \
    --itemIds '["JUkag78f", "rJmyGjIh", "fqRMgfAg"]' \
    > test.out 2>&1
eval_tap $? 247 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 248 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HS92YMZ2' \
    --appId 'wslSK249' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 249 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'km2j4srg' \
    --entitlementClazz 'APP' \
    --platform 'QI6Bn5ee' \
    --itemId 'c8yRlZpO' \
    > test.out 2>&1
eval_tap $? 249 'GetUserEntitlementOwnershipByItemId' test.out

#- 250 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0sKU5CI8' \
    --ids '["5DdKWu6y", "J3v4b4Oc", "Gi83ncYo"]' \
    --platform 'zzNz3iUF' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementOwnershipByItemIds' test.out

#- 251 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'cd1iKU9p' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform '54Cpf6h6' \
    --sku 'qzACOJ8C' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipBySku' test.out

#- 252 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6z8IPNrY' \
    > test.out 2>&1
eval_tap $? 252 'RevokeAllEntitlements' test.out

#- 253 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Mwi0f7RO' \
    --entitlementIds 'JF0BUJVO' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserEntitlements' test.out

#- 254 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'RmbeTTg2' \
    --namespace $AB_NAMESPACE \
    --userId 'KJ7J3SdF' \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlement' test.out

#- 255 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'ggcfheP2' \
    --namespace $AB_NAMESPACE \
    --userId 'MnE1An2m' \
    --body '{"collectionId": "1aWGKy1h", "endDate": "1982-10-12T00:00:00Z", "nullFieldList": ["C2IG8Sxj", "eDhrCUq4", "A6WBLYam"], "origin": "Nintendo", "reason": "mz4aRQP2", "startDate": "1989-06-25T00:00:00Z", "status": "INACTIVE", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserEntitlement' test.out

#- 256 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '0CkATDBi' \
    --namespace $AB_NAMESPACE \
    --userId 'bELtXtFI' \
    --body '{"options": ["XcqlIKrv", "unaaW5Hp", "zo2Lh5Fu"], "platform": "pD3ONNFD", "requestId": "J3jUBpJW", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 256 'ConsumeUserEntitlement' test.out

#- 257 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'dMdtL0a4' \
    --namespace $AB_NAMESPACE \
    --userId 'RYbreOYh' \
    > test.out 2>&1
eval_tap $? 257 'DisableUserEntitlement' test.out

#- 258 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'LQHnMkSm' \
    --namespace $AB_NAMESPACE \
    --userId 'MVOGne1R' \
    > test.out 2>&1
eval_tap $? 258 'EnableUserEntitlement' test.out

#- 259 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'NQBBe347' \
    --namespace $AB_NAMESPACE \
    --userId 'VkosRQQR' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementHistories' test.out

#- 260 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'vfGv3IRA' \
    --namespace $AB_NAMESPACE \
    --userId 'no5gcqzY' \
    > test.out 2>&1
eval_tap $? 260 'RevokeUserEntitlement' test.out

#- 261 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'efcNorDw' \
    --namespace $AB_NAMESPACE \
    --userId 'fsAgn8Ll' \
    --body '{"reason": "vW9skDh7", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlementByUseCount' test.out

#- 262 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'SOT63Rme' \
    --namespace $AB_NAMESPACE \
    --userId 'hUUBK9tQ' \
    --quantity '56' \
    > test.out 2>&1
eval_tap $? 262 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 263 RevokeUseCount
eval_tap 0 263 'RevokeUseCount # SKIP deprecated' test.out

#- 264 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'sEv1TtAK' \
    --namespace $AB_NAMESPACE \
    --userId 'NvWonbe4' \
    --body '{"platform": "5qFrqggM", "requestId": "hTrDy71o", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 264 'SellUserEntitlement' test.out

#- 265 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'wmgqwWHQ' \
    --body '{"duration": 58, "endDate": "1986-06-27T00:00:00Z", "entitlementCollectionId": "T1qMkrMp", "entitlementOrigin": "GooglePlay", "itemId": "go7d11Ne", "itemSku": "7R6oE1Hb", "language": "i0ildhVU", "metadata": {"SKAJJPVA": {}, "cG0zPI6Y": {}, "HyHUJOCN": {}}, "order": {"currency": {"currencyCode": "ouxO7zxy", "currencySymbol": "1FpqTqBQ", "currencyType": "VIRTUAL", "decimals": 58, "namespace": "UBMcfjj8"}, "ext": {"CVMa8VgS": {}, "T09AetSk": {}, "1MWElvBz": {}}, "free": true}, "orderNo": "sXkLh21h", "origin": "Nintendo", "overrideBundleItemQty": {"FCu2PaBu": 31, "Xy6ZtNLy": 37, "Jn0rvMM6": 75}, "quantity": 1, "region": "GCVknD8q", "source": "PAYMENT", "startDate": "1987-11-04T00:00:00Z", "storeId": "Rtnx5rGh"}' \
    > test.out 2>&1
eval_tap $? 265 'FulfillItem' test.out

#- 266 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '82jdRB4Y' \
    --body '{"code": "jnaKLk5l", "language": "ohR-WRpc", "region": "WKu5nFvb"}' \
    > test.out 2>&1
eval_tap $? 266 'RedeemCode' test.out

#- 267 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'DYPQGQvQ' \
    --body '{"itemId": "T7SJt5Ry", "itemSku": "V4IwCJFu", "quantity": 62}' \
    > test.out 2>&1
eval_tap $? 267 'PreCheckFulfillItem' test.out

#- 268 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'GpIlCZph' \
    --body '{"entitlementCollectionId": "fZHgHjVR", "entitlementOrigin": "Steam", "metadata": {"NdGQjciL": {}, "6tQfZNMT": {}, "jE4mFIlX": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "bNsK78cV", "namespace": "3jtmSv0K"}, "item": {"itemId": "4KR4eO3w", "itemName": "PG2YK8tg", "itemSku": "gu791Fb2", "itemType": "nzB9iPqf"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "gVjqhgmw", "namespace": "e8E6tttL"}, "item": {"itemId": "NNOgNMIl", "itemName": "eY3j2rmn", "itemSku": "GNOqGr3z", "itemType": "UEXcGRjA"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "rObNd2HM", "namespace": "ZJPNm0n6"}, "item": {"itemId": "rdTrVWYa", "itemName": "klWVHcaa", "itemSku": "UgeUPCO6", "itemType": "dLDjySuj"}, "quantity": 24, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "rHUHmDii"}' \
    > test.out 2>&1
eval_tap $? 268 'FulfillRewards' test.out

#- 269 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'cj5GdjEi' \
    --endTime 'X9TNYKV5' \
    --limit '94' \
    --offset '9' \
    --productId '1vpYuyGb' \
    --startTime 'ebMr2kBd' \
    --status 'FAILED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserIAPOrders' test.out

#- 270 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '3B4pRqjX' \
    > test.out 2>&1
eval_tap $? 270 'QueryAllUserIAPOrders' test.out

#- 271 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '23NuyN0m' \
    --endTime 'UCynrDRF' \
    --limit '56' \
    --offset '14' \
    --startTime 'hRHRF0Px' \
    --status 'FAIL' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPConsumeHistory' test.out

#- 272 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '3cAoz4yu' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "nZ_FcsN", "productId": "wsBrX3ke", "region": "CzejlFNw", "transactionId": "xgcqBmzN", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 272 'MockFulfillIAPItem' test.out

#- 273 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'KMRJJ2Vp' \
    --discounted 'true' \
    --itemId 'DItKvtC1' \
    --limit '26' \
    --offset '52' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserOrders' test.out

#- 274 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7s5o9nvP' \
    --body '{"currencyCode": "gxZkBeB5", "currencyNamespace": "Gw7QUroi", "discountCodes": ["mWujH9Li", "l3AY7hlu", "JOm7AEjT"], "discountedPrice": 86, "entitlementPlatform": "Other", "ext": {"wYp7LSim": {}, "3mY416XB": {}, "GTtDPY3R": {}}, "itemId": "N5GWKNTd", "language": "GdITlHle", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 78, "quantity": 43, "region": "YCAdLfHD", "returnUrl": "aMzgaZtc", "sandbox": true, "sectionId": "dgp6506D"}' \
    > test.out 2>&1
eval_tap $? 274 'AdminCreateUserOrder' test.out

#- 275 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '9d39C8Rb' \
    --itemId '99YkiFbo' \
    > test.out 2>&1
eval_tap $? 275 'CountOfPurchasedItem' test.out

#- 276 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'dsWWUOCs' \
    --userId 'hkEwWuuq' \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrder' test.out

#- 277 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 't5p5Dgik' \
    --userId '1W4BQcO9' \
    --body '{"status": "CHARGED", "statusReason": "h0HrGQre"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserOrderStatus' test.out

#- 278 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5t38v9sc' \
    --userId 'M5HZC4Tp' \
    > test.out 2>&1
eval_tap $? 278 'FulfillUserOrder' test.out

#- 279 GetUserOrderGrant
eval_tap 0 279 'GetUserOrderGrant # SKIP deprecated' test.out

#- 280 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'YxgwqXLO' \
    --userId 'yJy4OtBd' \
    > test.out 2>&1
eval_tap $? 280 'GetUserOrderHistories' test.out

#- 281 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'taEceKbL' \
    --userId 'xhejTowk' \
    --body '{"additionalData": {"cardSummary": "AgkmKV5b"}, "authorisedTime": "1975-11-17T00:00:00Z", "chargebackReversedTime": "1971-12-17T00:00:00Z", "chargebackTime": "1995-08-07T00:00:00Z", "chargedTime": "1998-11-20T00:00:00Z", "createdTime": "1974-11-12T00:00:00Z", "currency": {"currencyCode": "Yp8Wy9OA", "currencySymbol": "4cGkuwjI", "currencyType": "VIRTUAL", "decimals": 41, "namespace": "5JSWHWsT"}, "customParameters": {"ZXhtxnMt": {}, "ZAkrY41t": {}, "egEpIoxI": {}}, "extOrderNo": "rneNPP6I", "extTxId": "753MYaND", "extUserId": "yOdAAKhY", "issuedAt": "1994-12-10T00:00:00Z", "metadata": {"3cCBAhWE": "9RolSA1I", "bnP03PzS": "9Ie9LZ9D", "iDXcUM2x": "kHm7z1EM"}, "namespace": "ZFNZvTY7", "nonceStr": "pX5NDOuR", "paymentData": {"discountAmount": 22, "discountCode": "cKw9650f", "subtotalPrice": 0, "tax": 90, "totalPrice": 53}, "paymentMethod": "MkVE6cwC", "paymentMethodFee": 40, "paymentOrderNo": "0owmixHK", "paymentProvider": "ALIPAY", "paymentProviderFee": 83, "paymentStationUrl": "YfOIXmCU", "price": 66, "refundedTime": "1985-01-25T00:00:00Z", "salesTax": 42, "sandbox": true, "sku": "Wx6kZxoZ", "status": "CHARGED", "statusReason": "uLacVDnc", "subscriptionId": "HNEswOZn", "subtotalPrice": 70, "targetNamespace": "uUeBhpDN", "targetUserId": "d1k4qRes", "tax": 54, "totalPrice": 98, "totalTax": 2, "txEndTime": "1980-07-20T00:00:00Z", "type": "MzCMAvCR", "userId": "PI6rbilC", "vat": 44}' \
    > test.out 2>&1
eval_tap $? 281 'ProcessUserOrderNotification' test.out

#- 282 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'P4Oxs5D1' \
    --userId 'qDO5jpZz' \
    > test.out 2>&1
eval_tap $? 282 'DownloadUserOrderReceipt' test.out

#- 283 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'rHoiTzu9' \
    --body '{"currencyCode": "pgCoW8Y7", "currencyNamespace": "BzTwW7PG", "customParameters": {"BcLGS6hW": {}, "irC1eEPU": {}, "Fc8ylF3a": {}}, "description": "JBFqMNqb", "extOrderNo": "CjE3dGMQ", "extUserId": "PL27tdhf", "itemType": "LOOTBOX", "language": "yzYI_KkfD-dB", "metadata": {"TWtNIecA": "VKFM7BZC", "Wh3hgBBH": "vFZssPGT", "7Nc0sISp": "RM6HbX0F"}, "notifyUrl": "7SiymnWa", "omitNotification": false, "platform": "eEn8fkQf", "price": 69, "recurringPaymentOrderNo": "586kzDsz", "region": "Nnia3Xem", "returnUrl": "XVmRIbFe", "sandbox": true, "sku": "z7AcASAf", "subscriptionId": "0AHAbbCj", "title": "Q2hd1Apz"}' \
    > test.out 2>&1
eval_tap $? 283 'CreateUserPaymentOrder' test.out

#- 284 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9IWi8zqo' \
    --userId 'dN7XRrmM' \
    --body '{"description": "Af3xTJpQ"}' \
    > test.out 2>&1
eval_tap $? 284 'RefundUserPaymentOrder' test.out

#- 285 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'RXdYawHd' \
    > test.out 2>&1
eval_tap $? 285 'GetUserPlatformAccountClosureHistories' test.out

#- 286 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'fqqx2AS5' \
    --body '{"code": "K849eKqN", "orderNo": "lcS8do4y"}' \
    > test.out 2>&1
eval_tap $? 286 'ApplyUserRedemption' test.out

#- 287 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'WTnY71Sv' \
    --body '{"meta": {"KzAR5oXX": {}, "tJYvJ5qH": {}, "oDYo034U": {}}, "reason": "feH9bOUl", "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "QmucLJbV", "namespace": "acskJFiz"}, "entitlement": {"entitlementId": "07ablurF"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "0Q2vt1jk", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 86, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "q0hRGbvP", "namespace": "5rPUXImp"}, "entitlement": {"entitlementId": "ixlkZyb5"}, "item": {"entitlementOrigin": "System", "itemIdentity": "zzwgoenm", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "ZXfwwcit", "namespace": "uz56tQek"}, "entitlement": {"entitlementId": "qGBW7Sgp"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "mDEr8Ud0", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 8, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "agr9S2lZ"}' \
    > test.out 2>&1
eval_tap $? 287 'DoRevocation' test.out

#- 288 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'eSy6YlkQ' \
    --body '{"gameSessionId": "vLRSGurG", "payload": {"cqk0ClPN": {}, "d2DPbITY": {}, "xH6uUR3r": {}}, "scid": "TJnR2FfK", "sessionTemplateName": "R6KqKCHH"}' \
    > test.out 2>&1
eval_tap $? 288 'RegisterXblSessions' test.out

#- 289 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'MWIgWVu0' \
    --chargeStatus 'NEVER' \
    --itemId 'hwDclXOj' \
    --limit '7' \
    --offset '57' \
    --sku 'WJXtL9Dq' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 289 'QueryUserSubscriptions' test.out

#- 290 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'bmSAaUip' \
    --excludeSystem 'true' \
    --limit '7' \
    --offset '47' \
    --subscriptionId '4CAItyyE' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionActivities' test.out

#- 291 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'OrJXVloN' \
    --body '{"grantDays": 5, "itemId": "OS45XpsE", "language": "qPLLrCKk", "reason": "2vr42pkD", "region": "ZOllVv5w", "source": "Vitg9W4U"}' \
    > test.out 2>&1
eval_tap $? 291 'PlatformSubscribeSubscription' test.out

#- 292 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'i5kEigVW' \
    --itemId '8OkArHSO' \
    > test.out 2>&1
eval_tap $? 292 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 293 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EZUGobrg' \
    --userId 'VrozH1hm' \
    > test.out 2>&1
eval_tap $? 293 'GetUserSubscription' test.out

#- 294 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cjTJ6obz' \
    --userId 'eGAsrQb8' \
    > test.out 2>&1
eval_tap $? 294 'DeleteUserSubscription' test.out

#- 295 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zyhe9mGg' \
    --userId 'bqh5N3H2' \
    --force 'true' \
    --body '{"immediate": true, "reason": "eg4mdLkG"}' \
    > test.out 2>&1
eval_tap $? 295 'CancelSubscription' test.out

#- 296 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'z0eaMfCC' \
    --userId 'tzljg8mT' \
    --body '{"grantDays": 10, "reason": "3Ppiv0EZ"}' \
    > test.out 2>&1
eval_tap $? 296 'GrantDaysToSubscription' test.out

#- 297 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'D7q86xHd' \
    --userId 'uD43DcHw' \
    --excludeFree 'false' \
    --limit '49' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 297 'GetUserSubscriptionBillingHistories' test.out

#- 298 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GSIKjxA6' \
    --userId 'mpm4xJyp' \
    --body '{"additionalData": {"cardSummary": "5NSAIsNY"}, "authorisedTime": "1976-03-15T00:00:00Z", "chargebackReversedTime": "1971-01-07T00:00:00Z", "chargebackTime": "1972-07-18T00:00:00Z", "chargedTime": "1996-12-21T00:00:00Z", "createdTime": "1993-08-14T00:00:00Z", "currency": {"currencyCode": "3yE4qpzu", "currencySymbol": "tjJQEvLD", "currencyType": "VIRTUAL", "decimals": 8, "namespace": "3hLmA1I0"}, "customParameters": {"PfqoHRQh": {}, "y3Okw1ZE": {}, "6Vc7JFi7": {}}, "extOrderNo": "uRxHi9WD", "extTxId": "uwOcrkpH", "extUserId": "U8xFQ9ll", "issuedAt": "1993-08-20T00:00:00Z", "metadata": {"6zWwPNxM": "DCU4c8tR", "CxIE0g1s": "izLAr0NS", "iapaMRKP": "Vnh8EFOH"}, "namespace": "1hwAn2pF", "nonceStr": "2X5c9zBB", "paymentData": {"discountAmount": 28, "discountCode": "dY2Rfuuf", "subtotalPrice": 46, "tax": 37, "totalPrice": 37}, "paymentMethod": "1ILzogVg", "paymentMethodFee": 15, "paymentOrderNo": "cvYF2KOY", "paymentProvider": "PAYPAL", "paymentProviderFee": 16, "paymentStationUrl": "oCzxYrFe", "price": 42, "refundedTime": "1995-01-08T00:00:00Z", "salesTax": 11, "sandbox": false, "sku": "3RQlC7Zm", "status": "CHARGE_FAILED", "statusReason": "KIC4iooB", "subscriptionId": "49UNrg1B", "subtotalPrice": 32, "targetNamespace": "0rM5owHO", "targetUserId": "CLtVwCDL", "tax": 96, "totalPrice": 89, "totalTax": 97, "txEndTime": "1995-02-28T00:00:00Z", "type": "12Tn5TCr", "userId": "FXNbMWl9", "vat": 31}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserSubscriptionNotification' test.out

#- 299 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'mu7s31Fw' \
    --namespace $AB_NAMESPACE \
    --userId 'xCYxhtYN' \
    --body '{"count": 71, "orderNo": "R8o4j8Ka"}' \
    > test.out 2>&1
eval_tap $? 299 'AcquireUserTicket' test.out

#- 300 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'BotOwWYp' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserCurrencyWallets' test.out

#- 301 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'WN1tGamQ' \
    --namespace $AB_NAMESPACE \
    --userId '1vkQIidA' \
    --body '{"allowOverdraft": true, "amount": 91, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"cIob05A9": {}, "CKDwFdTK": {}, "TzW8rXJe": {}}, "reason": "PKOtFsJO"}' \
    > test.out 2>&1
eval_tap $? 301 'DebitUserWalletByCurrencyCode' test.out

#- 302 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'fWhari2O' \
    --namespace $AB_NAMESPACE \
    --userId 'oXcBkazY' \
    --limit '51' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 302 'ListUserCurrencyTransactions' test.out

#- 303 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '8aQ1xjhx' \
    --namespace $AB_NAMESPACE \
    --userId 'Pz9thyF7' \
    --request '{"amount": 75, "debitBalanceSource": "EXPIRATION", "metadata": {"HmhlPScW": {}, "Ah5DBLQw": {}, "uZQMhZ6L": {}}, "reason": "xqybroRe", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 303 'CheckBalance' test.out

#- 304 CheckWallet
eval_tap 0 304 'CheckWallet # SKIP deprecated' test.out

#- 305 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '8L55oE5e' \
    --namespace $AB_NAMESPACE \
    --userId 'xuxSs8sv' \
    --body '{"amount": 32, "expireAt": "1987-12-21T00:00:00Z", "metadata": {"QN9MAjnY": {}, "Tm74uZQy": {}, "sFgoUAY5": {}}, "origin": "IOS", "reason": "Vx6lDBkl", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 305 'CreditUserWallet' test.out

#- 306 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'tqMmNYPN' \
    --namespace $AB_NAMESPACE \
    --userId 'k4DNuI9M' \
    --request '{"amount": 93, "debitBalanceSource": "TRADE", "metadata": {"P57UuC6G": {}, "Kpes1yEJ": {}, "mozs5T0B": {}}, "reason": "LBsDO2m8", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 306 'DebitByWalletPlatform' test.out

#- 307 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '67BZEs14' \
    --namespace $AB_NAMESPACE \
    --userId 'vUkitlhA' \
    --body '{"amount": 97, "metadata": {"YSC3ffPb": {}, "VJaUQljc": {}, "L41VLPt5": {}}, "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 307 'PayWithUserWallet' test.out

#- 308 GetUserWallet
eval_tap 0 308 'GetUserWallet # SKIP deprecated' test.out

#- 309 DebitUserWallet
eval_tap 0 309 'DebitUserWallet # SKIP deprecated' test.out

#- 310 DisableUserWallet
eval_tap 0 310 'DisableUserWallet # SKIP deprecated' test.out

#- 311 EnableUserWallet
eval_tap 0 311 'EnableUserWallet # SKIP deprecated' test.out

#- 312 ListUserWalletTransactions
eval_tap 0 312 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 313 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'lQzq3dPY' \
    > test.out 2>&1
eval_tap $? 313 'ListViews' test.out

#- 314 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'lWfZ4oit' \
    --body '{"displayOrder": 77, "localizations": {"QO2KMEUL": {"description": "BuViJd6c", "localExt": {"dWytvP7V": {}, "gTOPWsMK": {}, "ZpSxe6AF": {}}, "longDescription": "vUnGwNx7", "title": "SnsXp8YE"}, "H9txTQIL": {"description": "GX03bK5N", "localExt": {"151AyWet": {}, "hTWdP6Cf": {}, "0h9BVJoN": {}}, "longDescription": "7U9PiI7n", "title": "iO9btjFE"}, "L97H8iWM": {"description": "LhwNBAvR", "localExt": {"OjbEJygZ": {}, "y711BKnb": {}, "AyrMGuGX": {}}, "longDescription": "53LrQuH0", "title": "ODKYRARQ"}}, "name": "IusXkq52"}' \
    > test.out 2>&1
eval_tap $? 314 'CreateView' test.out

#- 315 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'eNLOrU5E' \
    --storeId 'XVIaWquS' \
    > test.out 2>&1
eval_tap $? 315 'GetView' test.out

#- 316 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'ycOslelJ' \
    --storeId '6k7D2LyF' \
    --body '{"displayOrder": 37, "localizations": {"BwfV7Nj5": {"description": "WzBwQXc8", "localExt": {"zGNHw4dI": {}, "FW4oWLms": {}, "OCur3OkS": {}}, "longDescription": "8uvOPdb2", "title": "Spbc1GEC"}, "rjyys2U0": {"description": "gx1WeZSx", "localExt": {"FcxJyfQp": {}, "hhZRYwWE": {}, "Kt0gOA1j": {}}, "longDescription": "OoY5NbsG", "title": "nNIYtDUB"}, "xMoRZa0H": {"description": "J4eUZBRE", "localExt": {"opM40n9E": {}, "5O0ckERl": {}, "iNFJuPAs": {}}, "longDescription": "6FjBv9z4", "title": "2daIvQmy"}}, "name": "XtDtQ99a"}' \
    > test.out 2>&1
eval_tap $? 316 'UpdateView' test.out

#- 317 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'MbQfOFQo' \
    --storeId 'PRUKimzA' \
    > test.out 2>&1
eval_tap $? 317 'DeleteView' test.out

#- 318 QueryWallets
eval_tap 0 318 'QueryWallets # SKIP deprecated' test.out

#- 319 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 61, "expireAt": "1973-10-13T00:00:00Z", "metadata": {"JDHhIYPU": {}, "ry9XNZVh": {}, "6OxIsrzg": {}}, "origin": "GooglePlay", "reason": "5QOSFrKD", "source": "REWARD"}, "currencyCode": "DxcUGz7Z", "userIds": ["gu9h2mp1", "05pZmAVo", "89fTMltt"]}, {"creditRequest": {"amount": 6, "expireAt": "1976-05-07T00:00:00Z", "metadata": {"9Y8VlCO6": {}, "SMme9n3h": {}, "cTJakao8": {}}, "origin": "Oculus", "reason": "LmaIdJts", "source": "DLC"}, "currencyCode": "QWSBWFEy", "userIds": ["hAtv1XkE", "JNA48dzF", "kMXLSMas"]}, {"creditRequest": {"amount": 50, "expireAt": "1992-10-13T00:00:00Z", "metadata": {"AdqJ5cqM": {}, "gGa7ho1C": {}, "qkXZxto9": {}}, "origin": "Other", "reason": "XrJnY8Cb", "source": "PURCHASE"}, "currencyCode": "Ggrqgmrr", "userIds": ["bW0NXelD", "CwkZlZp7", "q3xiMVqW"]}]' \
    > test.out 2>&1
eval_tap $? 319 'BulkCredit' test.out

#- 320 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "UqSTzyzL", "request": {"allowOverdraft": false, "amount": 19, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"KPQ5WjCf": {}, "OFqB2ves": {}, "8EWXel2g": {}}, "reason": "3CT7zoyS"}, "userIds": ["wrNNscsk", "DYoEsCb2", "DVSxMyQN"]}, {"currencyCode": "1sTuiVPC", "request": {"allowOverdraft": true, "amount": 66, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"MaUl8jr7": {}, "P6WLQAJp": {}, "caDxTT3o": {}}, "reason": "AHPumhLo"}, "userIds": ["dZZalQhD", "VX5QumMn", "7ny9DotQ"]}, {"currencyCode": "ACPo1w4P", "request": {"allowOverdraft": false, "amount": 10, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"qcLzlyWs": {}, "BQm1EE7L": {}, "NArOzN3t": {}}, "reason": "RTsqQW6B"}, "userIds": ["TlOadanh", "YsgHRT5w", "c859Bo9a"]}]' \
    > test.out 2>&1
eval_tap $? 320 'BulkDebit' test.out

#- 321 GetWallet
eval_tap 0 321 'GetWallet # SKIP deprecated' test.out

#- 322 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'jcLg1XVd' \
    --end 'fzZ9qfZj' \
    --start 'vwREEncf' \
    > test.out 2>&1
eval_tap $? 322 'SyncOrders' test.out

#- 323 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["sh7Qnwky", "IbEKIoUi", "9i6vzGMD"], "apiKey": "FJcObGuu", "authoriseAsCapture": true, "blockedPaymentMethods": ["F1QJAT1n", "T0N90Osa", "pPvr36PH"], "clientKey": "Nb6mf1F2", "dropInSettings": "tBvaKmHb", "liveEndpointUrlPrefix": "OA5WZWrw", "merchantAccount": "jEoYxnAF", "notificationHmacKey": "JRGgn7B1", "notificationPassword": "T0mD9wd9", "notificationUsername": "Dgz4KOC7", "returnUrl": "VAFTpI90", "settings": "eaVA9bCD"}' \
    > test.out 2>&1
eval_tap $? 323 'TestAdyenConfig' test.out

#- 324 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "Lx3oxo2n", "privateKey": "wniYP5hl", "publicKey": "6Pym2fj4", "returnUrl": "CLKt5qQs"}' \
    > test.out 2>&1
eval_tap $? 324 'TestAliPayConfig' test.out

#- 325 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "mOJwTUff", "secretKey": "v9xGv9IY"}' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfig' test.out

#- 326 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'bGl0d5hP' \
    --region 'HpvwONi8' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentMerchantConfig' test.out

#- 327 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "ZdrxXh8R", "webhookSecretKey": "NzC26nKb"}' \
    > test.out 2>&1
eval_tap $? 327 'TestNeonPayConfig' test.out

#- 328 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "1ClFzTHM", "clientSecret": "icJCssxb", "returnUrl": "5rlu5gzk", "webHookId": "Hk8vn74C"}' \
    > test.out 2>&1
eval_tap $? 328 'TestPayPalConfig' test.out

#- 329 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["cB0FaVpC", "mEuzxzbd", "YeSDyeky"], "publishableKey": "cyVKHYd8", "secretKey": "KRhFl50E", "webhookSecret": "g3pZ4wET"}' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfig' test.out

#- 330 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "oJ7qzQQV", "key": "81gzoRhQ", "mchid": "hAdCdsY8", "returnUrl": "75ldXK2N"}' \
    > test.out 2>&1
eval_tap $? 330 'TestWxPayConfig' test.out

#- 331 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "IwcznrnQ", "flowCompletionUrl": "sgOnRBb7", "merchantId": 73, "projectId": 69, "projectSecretKey": "TlV4SqTm"}' \
    > test.out 2>&1
eval_tap $? 331 'TestXsollaConfig' test.out

#- 332 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '9cizybJ0' \
    > test.out 2>&1
eval_tap $? 332 'GetPaymentMerchantConfig1' test.out

#- 333 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'yamPxm9W' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["FRTO9yOb", "RTTMNwwI", "zcGeUiGe"], "apiKey": "G8r7jaRW", "authoriseAsCapture": true, "blockedPaymentMethods": ["fEKwhWaK", "k0Uudujb", "B2dqG2vJ"], "clientKey": "bJF1HaIH", "dropInSettings": "GvwdKdtc", "liveEndpointUrlPrefix": "K8n4MGdH", "merchantAccount": "sNrAbkxU", "notificationHmacKey": "DrmmPjs7", "notificationPassword": "ohcvrAz0", "notificationUsername": "Vl0mZTvm", "returnUrl": "OM234BXR", "settings": "uicWp8A6"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateAdyenConfig' test.out

#- 334 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'xTx1zcKi' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestAdyenConfigById' test.out

#- 335 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Qnq12B1M' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "57guiH1r", "privateKey": "kiVZk8Im", "publicKey": "n0rWdtiG", "returnUrl": "3Tqwpzvm"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateAliPayConfig' test.out

#- 336 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'GJ0RUlRW' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 336 'TestAliPayConfigById' test.out

#- 337 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'cxETIWJ1' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "G1jJctTq", "secretKey": "w3uH8UDC"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateCheckoutConfig' test.out

#- 338 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '8hJ0dKIx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 338 'TestCheckoutConfigById' test.out

#- 339 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'Z6dvvChy' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "1t7GfLVv", "webhookSecretKey": "sZ4pQjsO"}' \
    > test.out 2>&1
eval_tap $? 339 'UpdateNeonPayConfig' test.out

#- 340 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'LvOK6glF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 340 'TestNeonPayConfigById' test.out

#- 341 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '84Z5IwNI' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "fgCAPVu5", "clientSecret": "Gtr7f79K", "returnUrl": "9bJap2ai", "webHookId": "ksSA2PgK"}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePayPalConfig' test.out

#- 342 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'L7UNYpxE' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfigById' test.out

#- 343 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'LEfrDRRo' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["bwNRjX6D", "nbUDSzcC", "PCXZ9d5W"], "publishableKey": "Nev8ma6F", "secretKey": "jowCc8MM", "webhookSecret": "uRtKehCe"}' \
    > test.out 2>&1
eval_tap $? 343 'UpdateStripeConfig' test.out

#- 344 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'X85ZZRZP' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 344 'TestStripeConfigById' test.out

#- 345 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '6KFHcuRK' \
    --validate 'false' \
    --body '{"appId": "SSBD1KlO", "key": "WpPPX0gF", "mchid": "S9ngsjnG", "returnUrl": "jzKaRsn8"}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWxPayConfig' test.out

#- 346 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '3hlGVKPU' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 346 'UpdateWxPayConfigCert' test.out

#- 347 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '0CfXE1dR' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfigById' test.out

#- 348 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'lYX0rF4W' \
    --validate 'true' \
    --body '{"apiKey": "491Yjyvx", "flowCompletionUrl": "ru1xV16u", "merchantId": 21, "projectId": 42, "projectSecretKey": "48TshSO9"}' \
    > test.out 2>&1
eval_tap $? 348 'UpdateXsollaConfig' test.out

#- 349 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'QEwQ5KfV' \
    > test.out 2>&1
eval_tap $? 349 'TestXsollaConfigById' test.out

#- 350 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'W0pZlSai' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaUIConfig' test.out

#- 351 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '23' \
    --namespace 'KM0zlXOx' \
    --offset '42' \
    --region 'wfQhYF5y' \
    > test.out 2>&1
eval_tap $? 351 'QueryPaymentProviderConfig' test.out

#- 352 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "U1zE6WpZ", "region": "z7U5RqME", "sandboxTaxJarApiToken": "q6CLX5z1", "specials": ["NEONPAY", "WXPAY", "NEONPAY"], "taxJarApiToken": "BYo1rOUb", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 352 'CreatePaymentProviderConfig' test.out

#- 353 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 353 'GetAggregatePaymentProviders' test.out

#- 354 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'kSyrHJPy' \
    --region 'J77ipVmz' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentProviderConfig' test.out

#- 355 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 355 'GetSpecialPaymentProviders' test.out

#- 356 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '1MrTW1Ij' \
    --body '{"aggregate": "XSOLLA", "namespace": "RHAaWtb9", "region": "ezlFtUGy", "sandboxTaxJarApiToken": "pxc2rGU3", "specials": ["PAYPAL", "STRIPE", "WXPAY"], "taxJarApiToken": "w68MpbYO", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 356 'UpdatePaymentProviderConfig' test.out

#- 357 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'lldB7I4N' \
    > test.out 2>&1
eval_tap $? 357 'DeletePaymentProviderConfig' test.out

#- 358 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 358 'GetPaymentTaxConfig' test.out

#- 359 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "PHqZHUM0", "taxJarApiToken": "VRdvoTC7", "taxJarEnabled": true, "taxJarProductCodesMapping": {"rpOMcEJv": "H6iYKfwg", "8WNLmuG5": "oaUDGlcx", "YqyrUS0r": "EawoSzGx"}}' \
    > test.out 2>&1
eval_tap $? 359 'UpdatePaymentTaxConfig' test.out

#- 360 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'F3vAmv6I' \
    --end 'tUetfIWw' \
    --start 'zzT3wmKd' \
    > test.out 2>&1
eval_tap $? 360 'SyncPaymentOrders' test.out

#- 361 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'qj96NPEi' \
    --storeId 'rKs1rJ5R' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetRootCategories' test.out

#- 362 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'k4m4UKqf' \
    --storeId 'KSv3wQR2' \
    > test.out 2>&1
eval_tap $? 362 'DownloadCategories' test.out

#- 363 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'r6pZpqnu' \
    --namespace $AB_NAMESPACE \
    --language 'ajb64EVN' \
    --storeId 'Pqe01O3h' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetCategory' test.out

#- 364 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'DIOBjylc' \
    --namespace $AB_NAMESPACE \
    --language '0FqrfKnS' \
    --storeId '7XxeBA5M' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetChildCategories' test.out

#- 365 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'HgEoMhuy' \
    --namespace $AB_NAMESPACE \
    --language 'mOKI09jJ' \
    --storeId 'ZFQC28vD' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetDescendantCategories' test.out

#- 366 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 366 'PublicListCurrencies' test.out

#- 367 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 367 'GeDLCDurableRewardShortMap' test.out

#- 368 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 368 'GetIAPItemMapping' test.out

#- 369 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'VNsLKWGA' \
    --region 'V6IsFOlu' \
    --storeId 'nnwlKne6' \
    --appId 'vLwzzU2j' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemByAppId' test.out

#- 370 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'CvOkAwWp' \
    --categoryPath 'yHW7HlIK' \
    --features '1d8IFvv1' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language 'rLfWE4we' \
    --limit '100' \
    --offset '18' \
    --region 'y3Pz2k9b' \
    --sortBy '["displayOrder", "createdAt"]' \
    --storeId 'ZYZsm18W' \
    --tags 'ce3LJRS9' \
    > test.out 2>&1
eval_tap $? 370 'PublicQueryItems' test.out

#- 371 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'z0w6K1kt' \
    --region 'N8L6X7XQ' \
    --storeId 'u1xV5Xtu' \
    --sku '7F6Ikw35' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemBySku' test.out

#- 372 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'AHmGWZ2G' \
    --storeId 'fyQf9Mdk' \
    --itemIds 'N6wm9IUM' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetEstimatedPrice' test.out

#- 373 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'AqMF1ynX' \
    --region '03YVLMgc' \
    --storeId 'lVKLfjKU' \
    --itemIds '8uRwdL5D' \
    > test.out 2>&1
eval_tap $? 373 'PublicBulkGetItems' test.out

#- 374 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["xyteX8dx", "0nRQf5N4", "eCCIsON2"]}' \
    > test.out 2>&1
eval_tap $? 374 'PublicValidateItemPurchaseCondition' test.out

#- 375 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '63' \
    --offset '61' \
    --region '91G8zZJG' \
    --storeId '9axIUOef' \
    --keyword 'DMivObqB' \
    --language 'OrxEaLBl' \
    > test.out 2>&1
eval_tap $? 375 'PublicSearchItems' test.out

#- 376 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'OROsaMQN' \
    --namespace $AB_NAMESPACE \
    --language 'apmMnRJP' \
    --region 'LfFWmu5m' \
    --storeId 'Y5xAwcUe' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetApp' test.out

#- 377 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '31wnYDpC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicGetItemDynamicData' test.out

#- 378 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'vXlXxt0K' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '7yu7h5iO' \
    --populateBundle 'false' \
    --region 'AASAnBXA' \
    --storeId 'zvR8HBgA' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetItem' test.out

#- 379 GetPaymentCustomization
eval_tap 0 379 'GetPaymentCustomization # SKIP deprecated' test.out

#- 380 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "KItvakYX", "successUrl": "wmIFvbTY"}, "paymentOrderNo": "BCHX8UP6", "paymentProvider": "STRIPE", "returnUrl": "qqXVZeqO", "ui": "FPyPbhXD", "zipCode": "GRbSXNjg"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetPaymentUrl' test.out

#- 381 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YZspcVEv' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentMethods' test.out

#- 382 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vDmgjxmu' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUnpaidPaymentOrder' test.out

#- 383 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'R6EQqXhY' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'UPSS4sob' \
    --body '{"token": "ahERkHpa"}' \
    > test.out 2>&1
eval_tap $? 383 'Pay' test.out

#- 384 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5mOEMTm0' \
    > test.out 2>&1
eval_tap $? 384 'PublicCheckPaymentOrderPaidStatus' test.out

#- 385 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'LHAi6tsO' \
    > test.out 2>&1
eval_tap $? 385 'GetPaymentPublicConfig' test.out

#- 386 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '6MVcSKK6' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetQRCode' test.out

#- 387 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'UV323k1T' \
    --foreinginvoice 'iykbfbee' \
    --invoiceId 'i0c7jCBs' \
    --payload 'qSxeNXbt' \
    --redirectResult 'oiR8OnPM' \
    --resultCode 'KgJ97hdH' \
    --sessionId 'OQSRLADZ' \
    --status '8LYBkt8T' \
    --token '3padB1vp' \
    --type 'NuL8DwEZ' \
    --userId '4jm2MFGV' \
    --orderNo 'm80aasjC' \
    --paymentOrderNo 'VpwDZubt' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'J2pJ36U0' \
    > test.out 2>&1
eval_tap $? 387 'PublicNormalizePaymentReturnUrl' test.out

#- 388 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'SclhvLSH' \
    --paymentOrderNo 'HxEn0SRv' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxValue' test.out

#- 389 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'MNiZcRip' \
    > test.out 2>&1
eval_tap $? 389 'GetRewardByCode' test.out

#- 390 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'ocGFPRfm' \
    --limit '86' \
    --offset '57' \
    --sortBy '["namespace", "rewardCode:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 390 'QueryRewards1' test.out

#- 391 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '1uQ0D29A' \
    > test.out 2>&1
eval_tap $? 391 'GetReward1' test.out

#- 392 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicListStores' test.out

#- 393 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["fA7GDYfD", "OKB2uKG2", "C8FHGvWj"]' \
    --itemIds '["yiX9VCQ8", "aSZPtKwB", "ZZdNOKG9"]' \
    --skus '["TVQuOPm0", "ocjkLjFi", "CaHkApu3"]' \
    > test.out 2>&1
eval_tap $? 393 'PublicExistsAnyMyActiveEntitlement' test.out

#- 394 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'ATWR4ULM' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 395 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId '9DXCm2LH' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 396 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'm5lZKJd3' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 397 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["10J4sViL", "5jEJ23Kd", "NCq2E0M9"]' \
    --itemIds '["NtgyMtPa", "BrpxO8f7", "ABpZ2gUP"]' \
    --skus '["ncarY30J", "cQJDasPd", "aX3WITYz"]' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetEntitlementOwnershipToken' test.out

#- 398 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "KxEKAmvH", "language": "Mm_Km", "region": "GpyHPwXT"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement' test.out

#- 399 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'coriBrI3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyWallet' test.out

#- 400 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'C7qXL7SR' \
    --body '{"epicGamesJwtToken": "UgJCE6gr"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncEpicGameDLC' test.out

#- 401 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MPuthKaH' \
    > test.out 2>&1
eval_tap $? 401 'SyncOculusDLC' test.out

#- 402 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'FD8sk9pQ' \
    --body '{"serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 402 'PublicSyncPsnDlcInventory' test.out

#- 403 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'JFqKcvYe' \
    --body '{"serviceLabels": [94, 13, 54]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 404 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 't7cBO9Jq' \
    --body '{"appId": "gP4cIoS9", "steamId": "I2fh34Cd"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncSteamDLC' test.out

#- 405 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Tq20Qpmf' \
    --body '{"xstsToken": "He21wqkh"}' \
    > test.out 2>&1
eval_tap $? 405 'SyncXboxDLC' test.out

#- 406 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'uoovcxvd' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '2LoVeNqY' \
    --features '["gJlMBa0r", "TFHXxo7k", "0OSkKrsw"]' \
    --itemId '["p46JFO18", "3oZPYYj9", "j4puLlpI"]' \
    --limit '5' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserEntitlements' test.out

#- 407 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2j1rMiE1' \
    --appId 'j627HMvu' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserAppEntitlementByAppId' test.out

#- 408 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Z0TTJL6a' \
    --limit '28' \
    --offset '7' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlementsByAppType' test.out

#- 409 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'gy5pU4w7' \
    --availablePlatformOnly 'true' \
    --ids '["JDHo9tiQ", "L9GAhXE3", "0tHDLJNu"]' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementsByIds' test.out

#- 410 PublicGetUserEntitlementByItemId
eval_tap 0 410 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 411 PublicGetUserEntitlementBySku
eval_tap 0 411 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 412 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'hgzXLDfM' \
    --endDate 'EZ605xYY' \
    --entitlementClazz 'MEDIA' \
    --limit '5' \
    --offset '1' \
    --startDate '3VWfk4MV' \
    > test.out 2>&1
eval_tap $? 412 'PublicUserEntitlementHistory' test.out

#- 413 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'SS2qElZ5' \
    --appIds '["pXYxEwVY", "iLdF2BpF", "bIjkH9ao"]' \
    --itemIds '["3mDXBk0W", "2TEIbU3T", "EgsAXQ1a"]' \
    --skus '["KTJumAal", "owPX04bk", "IohNTijO"]' \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyUserActiveEntitlement' test.out

#- 414 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ni8ApZ3O' \
    --appId 'TshQu8c4' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'A8PyHUZS' \
    --entitlementClazz 'APP' \
    --itemId 'yVhTmaEr' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 416 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tGd1PVob' \
    --ids '["AmKOfIOb", "CHpYjUJV", "zCaoqC1F"]' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 417 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '42W55AQA' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'ycaQ1ZuM' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 418 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ksz3134H' \
    --namespace $AB_NAMESPACE \
    --userId 'ItaYqo47' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlement' test.out

#- 419 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'SmIdx2Tp' \
    --namespace $AB_NAMESPACE \
    --userId '2LscBekS' \
    --body '{"options": ["Fb7JthOR", "RoA8yk31", "1hds49wo"], "requestId": "ooZIFRp9", "useCount": 78}' \
    > test.out 2>&1
eval_tap $? 419 'PublicConsumeUserEntitlement' test.out

#- 420 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'MBdBKg8J' \
    --namespace $AB_NAMESPACE \
    --userId '0vCyFye8' \
    --body '{"requestId": "H8Rb5gTW", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSellUserEntitlement' test.out

#- 421 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'cSgHPsNo' \
    --namespace $AB_NAMESPACE \
    --userId 'jOdzznnB' \
    --body '{"useCount": 99}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSplitUserEntitlement' test.out

#- 422 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'qpkgEqiN' \
    --namespace $AB_NAMESPACE \
    --userId 'wpphIQmo' \
    --body '{"entitlementId": "dPFiKEc6", "useCount": 71}' \
    > test.out 2>&1
eval_tap $? 422 'PublicTransferUserEntitlement' test.out

#- 423 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '7iRIDaLc' \
    --body '{"code": "pvNhhcBK", "language": "pOr", "region": "3Ck5Kkq8"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicRedeemCode' test.out

#- 424 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'm666fpE1' \
    --body '{"excludeOldTransactions": false, "language": "FKQ_Tljr", "productId": "qBfms4mc", "receiptData": "W3J5xANv", "region": "1LaCctTS", "transactionId": "qkZ2Y8T0"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicFulfillAppleIAPItem' test.out

#- 425 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Xof9GHvt' \
    --body '{"epicGamesJwtToken": "ODXwMNz1"}' \
    > test.out 2>&1
eval_tap $? 425 'SyncEpicGamesInventory' test.out

#- 426 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '0VStdeBv' \
    --body '{"autoAck": true, "language": "Ax_ZSpL-ne", "orderId": "tvlC8193", "packageName": "DEauVbL7", "productId": "0TCZOaRb", "purchaseTime": 28, "purchaseToken": "3iGgJDJ7", "region": "A3Vxu7dO"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillGoogleIAPItem' test.out

#- 427 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'z08VbhmK' \
    > test.out 2>&1
eval_tap $? 427 'SyncOculusConsumableEntitlements' test.out

#- 428 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'SyKA7AZI' \
    --body '{"currencyCode": "ukIP2k8F", "price": 0.5986852718774166, "productId": "4u8mudWD", "serviceLabel": 45}' \
    > test.out 2>&1
eval_tap $? 428 'PublicReconcilePlayStationStore' test.out

#- 429 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'C91hKtSo' \
    --body '{"currencyCode": "DcQlRLsd", "price": 0.8073866756654975, "productId": "4uhk7F8H", "serviceLabels": [49, 75, 7]}' \
    > test.out 2>&1
eval_tap $? 429 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 430 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '0YYdCHd2' \
    --body '{"appId": "6rfpgTfT", "currencyCode": "I5HSegDH", "language": "GBbv-NVUk-us", "price": 0.7349958564785437, "productId": "EHlm7hIU", "region": "wo9ErPJ5", "steamId": "ycVGwN7o"}' \
    > test.out 2>&1
eval_tap $? 430 'SyncSteamInventory' test.out

#- 431 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '5snznHFY' \
    --body '{"gameId": "gSIvIhpt", "language": "bP_OBHn", "region": "jhnfuiij"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncTwitchDropsEntitlement1' test.out

#- 432 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UGZLBrCJ' \
    --body '{"currencyCode": "MjzdZYhQ", "price": 0.4435469160703658, "productId": "je8PQree", "xstsToken": "rlha8CZU"}' \
    > test.out 2>&1
eval_tap $? 432 'SyncXboxInventory' test.out

#- 433 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'psIeHIzP' \
    --discounted 'true' \
    --itemId 'kQimUe6m' \
    --limit '6' \
    --offset '18' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 433 'PublicQueryUserOrders' test.out

#- 434 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'NqxYX1Qg' \
    --body '{"currencyCode": "QHX4uWhO", "discountCodes": ["bvOwDTpn", "XVcayauV", "p5P4VEcM"], "discountedPrice": 40, "ext": {"grqBc30z": {}, "Vq34uLJO": {}, "czdLZL2I": {}}, "itemId": "OOE4tlQE", "language": "wbW-XmtN-Ju", "price": 37, "quantity": 35, "region": "WIbzJUv2", "returnUrl": "BxslSro8", "sectionId": "ZPvPNvBh"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicCreateUserOrder' test.out

#- 435 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'WoBfoIuW' \
    --body '{"currencyCode": "4Q0cA1td", "discountCodes": ["75yKGeeP", "HiIuPTDU", "w8H3KJIM"], "discountedPrice": 79, "itemId": "oDIwCAiI", "price": 26, "quantity": 97}' \
    > test.out 2>&1
eval_tap $? 435 'PublicPreviewOrderPrice' test.out

#- 436 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wOMtHyno' \
    --userId 'jofje5vO' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserOrder' test.out

#- 437 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VX71i3LB' \
    --userId 'lkXd5wpa' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelUserOrder' test.out

#- 438 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'pAuTQ4Wr' \
    --userId 'qX8PweLA' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrderHistories' test.out

#- 439 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'EqGC4Wrb' \
    --userId 'Yjh7CUlr' \
    > test.out 2>&1
eval_tap $? 439 'PublicDownloadUserOrderReceipt' test.out

#- 440 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '3AbFtuZH' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetPaymentAccounts' test.out

#- 441 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'D101UcSM' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'qHZxA2OO' \
    > test.out 2>&1
eval_tap $? 441 'PublicDeletePaymentAccount' test.out

#- 442 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'Kwh4hgsi' \
    --autoCalcEstimatedPrice 'false' \
    --language 'tdf89MSs' \
    --region 'LYrSZRRm' \
    --storeId 'dURQoX7F' \
    --viewId 'ShIuRq2w' \
    > test.out 2>&1
eval_tap $? 442 'PublicListActiveSections' test.out

#- 443 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dQFZTzF7' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '7bsfyi3z' \
    --limit '13' \
    --offset '18' \
    --sku '8vFKEUeE' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 443 'PublicQueryUserSubscriptions' test.out

#- 444 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3bPMYfU2' \
    --body '{"currencyCode": "R5JkPEoG", "itemId": "NATzljN7", "language": "pNW_zKqS", "region": "KdBOTdfc", "returnUrl": "WrVIXnZ5", "source": "TuOe7vbv"}' \
    > test.out 2>&1
eval_tap $? 444 'PublicSubscribeSubscription' test.out

#- 445 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fE2phu79' \
    --itemId 'VBiQSHVZ' \
    > test.out 2>&1
eval_tap $? 445 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 446 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'O0vW2rf3' \
    --userId 'XkPyxL7U' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserSubscription' test.out

#- 447 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tBi77H0A' \
    --userId '6Ktgmxqo' \
    > test.out 2>&1
eval_tap $? 447 'PublicChangeSubscriptionBillingAccount' test.out

#- 448 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qeVtWIs4' \
    --userId 'mKi4eUlI' \
    --body '{"immediate": false, "reason": "0pKLypYO"}' \
    > test.out 2>&1
eval_tap $? 448 'PublicCancelSubscription' test.out

#- 449 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GJTOKxES' \
    --userId 'eIKmrKoB' \
    --excludeFree 'true' \
    --limit '57' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserSubscriptionBillingHistories' test.out

#- 450 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'fiiXQ3uM' \
    --language 'gb8BK43n' \
    --storeId 'ddjewqsD' \
    > test.out 2>&1
eval_tap $? 450 'PublicListViews' test.out

#- 451 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'wBQr0DdT' \
    --namespace $AB_NAMESPACE \
    --userId 'YxNLASjp' \
    > test.out 2>&1
eval_tap $? 451 'PublicGetWallet' test.out

#- 452 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'lTjgdEMP' \
    --namespace $AB_NAMESPACE \
    --userId 'iyFJeJgq' \
    --limit '76' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 452 'PublicListUserWalletTransactions' test.out

#- 453 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetMyDLCContent' test.out

#- 454 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'nY4zwOnH' \
    --limit '42' \
    --offset '56' \
    --startTime 'XoNUEwta' \
    --state 'REVOKE_FAILED' \
    --transactionId 'W1OuTE54' \
    --userId 'ME6HTBGA' \
    > test.out 2>&1
eval_tap $? 454 'QueryFulfillments' test.out

#- 455 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'aIm79HBD' \
    --baseAppId 'nrWXMYgo' \
    --categoryPath 'nu5Oi8QU' \
    --features 'W1IKGQ6F' \
    --includeSubCategoryItem 'true' \
    --itemName 'Oxt4ivwm' \
    --itemStatus 'ACTIVE' \
    --itemType '["SEASON", "COINS", "EXTENSION"]' \
    --limit '68' \
    --offset '47' \
    --region 'A4ALxYdl' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt", "name:asc", "updatedAt:desc"]' \
    --storeId 'JYKtBa0u' \
    --tags 'Ivheb6mq' \
    --targetNamespace 'SlRjiKi4' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 455 'QueryItemsV2' test.out

#- 456 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'nBvp40Uq' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 456 'ImportStore1' test.out

#- 457 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'jdnyl8L1' \
    --body '{"itemIds": ["EdN0SVkl", "kGncYtls", "xT7X2LGO"]}' \
    > test.out 2>&1
eval_tap $? 457 'ExportStore1' test.out

#- 458 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'M6ll9UwG' \
    --body '{"entitlementCollectionId": "2MWzFjH2", "entitlementOrigin": "GooglePlay", "metadata": {"KZbXLTSw": {}, "R14yrocv": {}, "rJ4W3nTw": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "zMyQkr7O", "namespace": "6p0bDuxv"}, "item": {"itemId": "3YF4bsy4", "itemName": "gnHhY5v6", "itemSku": "YKwGopmc", "itemType": "ZxHAS2s4"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "aEQ1SeGJ", "namespace": "lHwPl6Gd"}, "item": {"itemId": "4QEvMxaP", "itemName": "3h85KwxI", "itemSku": "HVQtItd5", "itemType": "0PiL0tO0"}, "quantity": 34, "type": "ITEM"}, {"currency": {"currencyCode": "cuf51D0A", "namespace": "vmJ9EWNW"}, "item": {"itemId": "423CJvIJ", "itemName": "CJ2E1AGG", "itemSku": "BO83Tcli", "itemType": "f8qZRagZ"}, "quantity": 9, "type": "ITEM"}], "source": "GIFT", "transactionId": "cZDp7pBT"}' \
    > test.out 2>&1
eval_tap $? 458 'FulfillRewardsV2' test.out

#- 459 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'Vdp8ZQ0D' \
    --userId 'M8CgIlKy' \
    --body '{"items": [{"duration": 49, "endDate": "1976-02-03T00:00:00Z", "entitlementCollectionId": "JCtIeWCN", "entitlementOrigin": "Nintendo", "itemId": "HXfYlXzJ", "itemSku": "mQNwIMUB", "language": "2MifmHxG", "metadata": {"XhWzwoio": {}, "FD6SE0Ak": {}, "L7hJNNua": {}}, "orderNo": "IIjShJZt", "origin": "Oculus", "quantity": 95, "region": "9fxhQgZs", "source": "ACHIEVEMENT", "startDate": "1971-01-11T00:00:00Z", "storeId": "XkQNGvE9"}, {"duration": 40, "endDate": "1997-12-07T00:00:00Z", "entitlementCollectionId": "EEkrs1uq", "entitlementOrigin": "Twitch", "itemId": "Aij5ZmDc", "itemSku": "m8YQRxI8", "language": "18bFgP9U", "metadata": {"x6hPUiE4": {}, "zzD7IAgj": {}, "GLkoUHVF": {}}, "orderNo": "IsQfABHq", "origin": "System", "quantity": 77, "region": "6mBBuSN7", "source": "EXPIRATION", "startDate": "1988-08-16T00:00:00Z", "storeId": "Ki9yI2OB"}, {"duration": 15, "endDate": "1991-04-16T00:00:00Z", "entitlementCollectionId": "eYnhKGYP", "entitlementOrigin": "Oculus", "itemId": "UTQzIMYb", "itemSku": "mXEL43l0", "language": "lAKpjpyN", "metadata": {"iHXzhTuU": {}, "WTWFN1tf": {}, "veN9PGPA": {}}, "orderNo": "rYfZEEs9", "origin": "Steam", "quantity": 38, "region": "ITuLPqyU", "source": "SELL_BACK", "startDate": "1972-06-02T00:00:00Z", "storeId": "xLTD6bX2"}]}' \
    > test.out 2>&1
eval_tap $? 459 'FulfillItems' test.out

#- 460 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'LZagcO90' \
    --userId 'OlhBIx5e' \
    > test.out 2>&1
eval_tap $? 460 'RevokeItems' test.out


rm -f "tmp.dat"

exit $EXIT_CODE