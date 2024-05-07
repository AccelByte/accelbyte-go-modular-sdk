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
echo "1..448"

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
    --id 'DFuGrhgB' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'sesivuq9' \
    --body '{"grantDays": "r47IVThJ"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'ykmYOU9e' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'mHOigK6J' \
    --body '{"grantDays": "2gFopoQm"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "5WhREYjs", "dryRun": true, "fulfillmentUrl": "9VG6wj7x", "itemType": "MEDIA", "purchaseConditionUrl": "PbouNw1B"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'n3GtISMJ' \
    --itemType 'COINS' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'aPlV9CaU' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'OMK07A8a' \
    --body '{"clazz": "M8dB0eRl", "dryRun": false, "fulfillmentUrl": "7b8r9UsO", "purchaseConditionUrl": "UpCDP7m5"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'ro7RbbvN' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --name 'wBpm41hm' \
    --offset '75' \
    --tag 'XkYA1K4x' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "9EvzbjLG", "discountConfig": {"categories": [{"categoryPath": "fV7AkB15", "includeSubCategories": true}, {"categoryPath": "sV8ir1TS", "includeSubCategories": true}, {"categoryPath": "qPng2FLL", "includeSubCategories": false}], "currencyCode": "DYLntfBO", "currencyNamespace": "r0HDHhxM", "discountAmount": 62, "discountPercentage": 19, "discountType": "AMOUNT", "items": [{"itemId": "ePOZe8fF", "itemName": "C0XNoKl2"}, {"itemId": "5rialXPH", "itemName": "ivVWkPn5"}, {"itemId": "hTsKNw9o", "itemName": "4FFEoHTK"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 77, "itemId": "Sw3BNBHC", "itemName": "c0dufx4H", "quantity": 44}, {"extraSubscriptionDays": 39, "itemId": "mS0lyoF3", "itemName": "050Q4P1E", "quantity": 62}, {"extraSubscriptionDays": 46, "itemId": "qg1QlZLf", "itemName": "U3n5RcNR", "quantity": 22}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 51, "maxRedeemCountPerCodePerUser": 59, "maxSaleCount": 41, "name": "h2KQbmGU", "redeemEnd": "1999-02-15T00:00:00Z", "redeemStart": "1995-09-20T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["K0rKY1Lj", "74z17IDL", "zsfN3Grk"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'lvBXPTHV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'c8uYQeuC' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "epuRjG5C", "discountConfig": {"categories": [{"categoryPath": "ICq1pNrl", "includeSubCategories": false}, {"categoryPath": "5F3StbdY", "includeSubCategories": false}, {"categoryPath": "cvLoZkRA", "includeSubCategories": false}], "currencyCode": "csbJz0kS", "currencyNamespace": "kswgJaEf", "discountAmount": 68, "discountPercentage": 9, "discountType": "AMOUNT", "items": [{"itemId": "N9dynlNA", "itemName": "LjkOpBBP"}, {"itemId": "84hNJaD3", "itemName": "SIfE98pv"}, {"itemId": "8IN3XOae", "itemName": "JYiLPfyE"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 74, "itemId": "wq2yGAZw", "itemName": "RCbTKhgF", "quantity": 77}, {"extraSubscriptionDays": 50, "itemId": "4BrWHLRL", "itemName": "4FheNHXh", "quantity": 31}, {"extraSubscriptionDays": 51, "itemId": "ZAdA90nz", "itemName": "GRJyXa84", "quantity": 44}], "maxRedeemCountPerCampaignPerUser": 69, "maxRedeemCountPerCode": 26, "maxRedeemCountPerCodePerUser": 23, "maxSaleCount": 65, "name": "uCQXhczL", "redeemEnd": "1977-05-06T00:00:00Z", "redeemStart": "1979-09-10T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["kbHVaCOX", "5RKUPeNL", "q6PKPU9d"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'dqPVadlJ' \
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
    --body '{"enableInventoryCheck": true}' \
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
    --body '{"appConfig": {"appName": "MzcafYen"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "obEtRIlM"}, "extendType": "APP"}' \
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
    --force 'true' \
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
    --body '{"appConfig": {"appName": "LYqpflMl"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "280VqcLs"}, "extendType": "APP"}' \
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
    --storeId 'bgQfGBEc' \
    > test.out 2>&1
eval_tap $? 29 'GetRootCategories' test.out

#- 30 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'd9F8qUiV' \
    --body '{"categoryPath": "QlwXTj25", "localizationDisplayNames": {"xSWMameY": "jP20cDUN", "HfxReSr8": "N1cxxEDb", "4pUwfRhm": "crmW2jjz"}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateCategory' test.out

#- 31 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'CHkJUVwf' \
    > test.out 2>&1
eval_tap $? 31 'ListCategoriesBasic' test.out

#- 32 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'uAR9V3I0' \
    --namespace $AB_NAMESPACE \
    --storeId '0X3WquuY' \
    > test.out 2>&1
eval_tap $? 32 'GetCategory' test.out

#- 33 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'WzGjCWDt' \
    --namespace $AB_NAMESPACE \
    --storeId 'yBqJe5Ww' \
    --body '{"localizationDisplayNames": {"jBNc8bgS": "sOD5Jt7f", "dIG6blDW": "pMbS2HCd", "vOuKGr7o": "hOU7qVMf"}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateCategory' test.out

#- 34 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'nTlan9JU' \
    --namespace $AB_NAMESPACE \
    --storeId 'KS98hy0t' \
    > test.out 2>&1
eval_tap $? 34 'DeleteCategory' test.out

#- 35 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'ADUCwZU1' \
    --namespace $AB_NAMESPACE \
    --storeId 'wbGpWYm0' \
    > test.out 2>&1
eval_tap $? 35 'GetChildCategories' test.out

#- 36 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '7BxH9oph' \
    --namespace $AB_NAMESPACE \
    --storeId 'l5kQ1V9O' \
    > test.out 2>&1
eval_tap $? 36 'GetDescendantCategories' test.out

#- 37 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'MTFSTycC' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '5' \
    --code 'ckFeV7sJ' \
    --limit '2' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 37 'QueryCodes' test.out

#- 38 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'gJ7NWH4i' \
    --namespace $AB_NAMESPACE \
    --body '{"codeValue": "7l4XZ8MU", "quantity": 2}' \
    > test.out 2>&1
eval_tap $? 38 'CreateCodes' test.out

#- 39 Download
samples/cli/sample-apps Platform download \
    --campaignId 'xQfRV2v0' \
    --namespace $AB_NAMESPACE \
    --batchNo '46' \
    > test.out 2>&1
eval_tap $? 39 'Download' test.out

#- 40 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'CcDiwKQi' \
    --namespace $AB_NAMESPACE \
    --batchNo '98' \
    > test.out 2>&1
eval_tap $? 40 'BulkDisableCodes' test.out

#- 41 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'wxrQER9U' \
    --namespace $AB_NAMESPACE \
    --batchNo '17' \
    > test.out 2>&1
eval_tap $? 41 'BulkEnableCodes' test.out

#- 42 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '6QesPB0g' \
    --namespace $AB_NAMESPACE \
    --code 'OtdoIPwo' \
    --limit '10' \
    --offset '63' \
    --userId '6cpAHGV2' \
    > test.out 2>&1
eval_tap $? 42 'QueryRedeemHistory' test.out

#- 43 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'cxj9JWTU' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 43 'GetCode' test.out

#- 44 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'pmElmFCt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DisableCode' test.out

#- 45 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'bI9xv1TS' \
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
    --body '{"currencyCode": "EvSfBFGF", "currencySymbol": "mQ1FGAC2", "currencyType": "VIRTUAL", "decimals": 70, "localizationDescriptions": {"sAyoeCcS": "sdWAM7Qi", "uQaVgNNv": "7JfKrCb5", "LS9hlBqC": "lPKatJh9"}}' \
    > test.out 2>&1
eval_tap $? 50 'CreateCurrency' test.out

#- 51 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'HWFnGhjU' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"JiH3EdeX": "eJIbL0Au", "0sSPqisv": "hZdl6940", "kCm41scW": "y0qMjrMz"}}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateCurrency' test.out

#- 52 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'Y7NTAVgj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteCurrency' test.out

#- 53 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '0fapzLWM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencyConfig' test.out

#- 54 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'ey92FrHL' \
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
    --body '{"data": [{"id": "f9cObX05", "rewards": [{"currency": {"currencyCode": "gEtOGwAd", "namespace": "gICuRUz8"}, "item": {"itemId": "mfE0DqoG", "itemSku": "LNRvOagR", "itemType": "TiIcK2sk"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "uUlEJiw2", "namespace": "ytoR7ien"}, "item": {"itemId": "SmkH6AiE", "itemSku": "F7G71vrb", "itemType": "hETRlMLV"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "VW8Imrjr", "namespace": "NXVOadJv"}, "item": {"itemId": "arjxNvRa", "itemSku": "p7PECNBc", "itemType": "xOfTMJOQ"}, "quantity": 86, "type": "CURRENCY"}]}, {"id": "LD2WWwgd", "rewards": [{"currency": {"currencyCode": "pK2H5YRx", "namespace": "rr8lwz3X"}, "item": {"itemId": "wnpnFCwv", "itemSku": "HLO3myfx", "itemType": "Cn4Ox67k"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "gV01VQYG", "namespace": "RoZBdfpE"}, "item": {"itemId": "UqIHDSJX", "itemSku": "FtoUIfBx", "itemType": "cw4MV3sp"}, "quantity": 22, "type": "ITEM"}, {"currency": {"currencyCode": "U0jjH6k8", "namespace": "TeJCUeRQ"}, "item": {"itemId": "UshHmIhD", "itemSku": "yrcDZGSM", "itemType": "3QLxMDdT"}, "quantity": 95, "type": "ITEM"}]}, {"id": "7NC4uHTJ", "rewards": [{"currency": {"currencyCode": "wxWCKtax", "namespace": "0kxdGV22"}, "item": {"itemId": "pZKgrKSL", "itemSku": "yJWermbO", "itemType": "qGSvRJEU"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "VHXiiyQQ", "namespace": "i2Zbjb28"}, "item": {"itemId": "IvQTu0iJ", "itemSku": "Sn8aadpp", "itemType": "CkthvQoH"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "ou0UBiW5", "namespace": "0CNrXgex"}, "item": {"itemId": "QzmAdRv9", "itemSku": "LNOjsb4t", "itemType": "OEAxWXjl"}, "quantity": 30, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"nP4z33Q3": "Lo5azIAu", "bucDZO8v": "0VBwloIa", "PevTc9E4": "ioGKuhRZ"}}, {"platform": "PSN", "platformDlcIdMap": {"eLniwXrJ": "hqnM8EkC", "N2ovLvAm": "XVybqQHi", "BSdi37ed": "Fz5n49vK"}}, {"platform": "PSN", "platformDlcIdMap": {"iohEWux2": "v84wh9bh", "rDRybyDz": "J8A8ho0M", "0MwKP0kH": "LdCFK0UD"}}]}' \
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
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName '5KiS1EBg' \
    --itemId '["kr3cYTBt", "JEGiVxcR", "dBECP1QP"]' \
    --limit '83' \
    --offset '58' \
    --origin 'Xbox' \
    --userId 'XsaWpIkT' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements' test.out

#- 62 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["UAXyCS3t", "btOuV48E", "TEurGXTl"]' \
    --limit '27' \
    --offset '49' \
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
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlementConfigInfo' test.out

#- 65 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "3fLHkuuV", "endDate": "1992-05-03T00:00:00Z", "grantedCode": "VMlIFtkh", "itemId": "zhScgAIa", "itemNamespace": "O5LJCUOU", "language": "TT-SJgX_SB", "origin": "GooglePlay", "quantity": 91, "region": "4qCuMRZa", "source": "REDEEM_CODE", "startDate": "1992-12-15T00:00:00Z", "storeId": "lmsUfBE2"}, {"collectionId": "T4CrCrEL", "endDate": "1974-01-24T00:00:00Z", "grantedCode": "E77lmoV0", "itemId": "Ul5BRg7z", "itemNamespace": "kRduf9wd", "language": "Kz-cRMr_mF", "origin": "IOS", "quantity": 60, "region": "HlBGS24m", "source": "REDEEM_CODE", "startDate": "1992-04-13T00:00:00Z", "storeId": "wEdWfeFg"}, {"collectionId": "YxajJEKh", "endDate": "1998-08-19T00:00:00Z", "grantedCode": "N3SwCZ5z", "itemId": "xh649GWP", "itemNamespace": "4Qe6VpuC", "language": "pEH", "origin": "Nintendo", "quantity": 4, "region": "hlfp9J6v", "source": "PROMOTION", "startDate": "1990-09-22T00:00:00Z", "storeId": "M2cubmif"}], "userIds": ["A8u8jWRg", "giGFIp9W", "XxMNOZ8H"]}' \
    > test.out 2>&1
eval_tap $? 65 'GrantEntitlements' test.out

#- 66 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["CRN9OH5h", "ttJjmltb", "s7qweApW"]' \
    > test.out 2>&1
eval_tap $? 66 'RevokeEntitlements' test.out

#- 67 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '5To3wfUS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetEntitlement' test.out

#- 68 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '93' \
    --status 'SUCCESS' \
    --userId 'Rp0AjL8a' \
    > test.out 2>&1
eval_tap $? 68 'QueryFulfillmentHistories' test.out

#- 69 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'eZldk1tg' \
    --eventType 'REFUND' \
    --externalOrderId 'jGJ92QwH' \
    --limit '35' \
    --offset '97' \
    --startTime 'bxLnaZRe' \
    --status 'SUCCESS' \
    --userId 'bOORznA7' \
    > test.out 2>&1
eval_tap $? 69 'QueryIAPClawbackHistory' test.out

#- 70 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "wV2sxvvK", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 62, "clientTransactionId": "HBsDUnky"}, {"amountConsumed": 75, "clientTransactionId": "9a08oPc7"}, {"amountConsumed": 4, "clientTransactionId": "FQtA2cUF"}], "entitlementId": "1hGBB9wt", "usageCount": 21}, {"clientTransaction": [{"amountConsumed": 33, "clientTransactionId": "ziLEqC2O"}, {"amountConsumed": 50, "clientTransactionId": "aP30sL3l"}, {"amountConsumed": 43, "clientTransactionId": "JC6BFo7l"}], "entitlementId": "MmrAHj02", "usageCount": 76}, {"clientTransaction": [{"amountConsumed": 22, "clientTransactionId": "rYqpVN00"}, {"amountConsumed": 91, "clientTransactionId": "igMF7w8B"}, {"amountConsumed": 89, "clientTransactionId": "hQy3NR1G"}], "entitlementId": "zK6hOcOE", "usageCount": 91}], "purpose": "1TuCdHkE"}, "originalTitleName": "9ULmAu2Y", "paymentProductSKU": "6AsinJwN", "purchaseDate": "VdHlA9uW", "sourceOrderItemId": "yQRgubVj", "titleName": "sRaxApdI"}, "eventDomain": "L5A5zY2k", "eventSource": "bCASZNlk", "eventType": "bLgJ9hVl", "eventVersion": 66, "id": "SdjCg0Wc", "timestamp": "72t6lIzJ"}' \
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
    --body '{"bundleId": "rmE3lKcI", "password": "FiBWbGjy"}' \
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
    --body '{"sandboxId": "UK1wjAsU"}' \
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
    --body '{"applicationName": "H4FZptG7", "serviceAccountId": "QBPIGHVP"}' \
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
    --body '{"data": [{"itemIdentity": "jyBV5ngQ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"G4tjaaPE": "QIeV785Z", "P3K9zb7E": "rWZH78oU", "a2g6JCvP": "uyHRjI2M"}}, {"itemIdentity": "3HCssK3L", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"T4aVYouk": "GYrChjfB", "vq60Bklc": "SnyWxmHZ", "RFVLbjUx": "4p75zIwL"}}, {"itemIdentity": "n0UL2ifO", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"5DLR6Qu6": "9vtiU50I", "smEnQAJc": "UgbINRK8", "eKTt7lut": "dRpoSkMj"}}]}' \
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
    --body '{"appId": "xtIKnCTJ", "appSecret": "BeHpQTee"}' \
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
    --body '{"backOfficeServerClientId": "a161EJ5i", "backOfficeServerClientSecret": "kdzsTa5Z", "enableStreamJob": false, "environment": "OEBoIvrM", "streamName": "fcvLrS6a", "streamPartnerName": "QTm7o6cs"}' \
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
    --body '{"backOfficeServerClientId": "0R5uOfIU", "backOfficeServerClientSecret": "pWWlxRBR", "enableStreamJob": false, "environment": "cszwzmMo", "streamName": "yKNfK5AZ", "streamPartnerName": "AZFmSP9u"}' \
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
    --body '{"appId": "A7pHCSVz", "publisherAuthenticationKey": "mvz8Tc9f"}' \
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
    --body '{"clientId": "oViul2he", "clientSecret": "G5MG22tx", "organizationId": "QuPzRnyi"}' \
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
    --body '{"relyingPartyCert": "23YYSq49"}' \
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
    --password 'ritba9Kh' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblBPCertFile' test.out

#- 102 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'cSRlPJJQ' \
    --itemId '9VAFN2dn' \
    --itemType 'EXTENSION' \
    --endTime '2im3p2Lp' \
    --startTime 'tiPKvTUL' \
    > test.out 2>&1
eval_tap $? 102 'DownloadInvoiceDetails' test.out

#- 103 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'h43HUFi5' \
    --itemId 'bpi75aHO' \
    --itemType 'SEASON' \
    --endTime 'xkTsxKM7' \
    --startTime 'cq7ksp9T' \
    > test.out 2>&1
eval_tap $? 103 'GenerateInvoiceSummary' test.out

#- 104 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '1knntteo' \
    --body '{"categoryPath": "GMbDVmWB", "targetItemId": "YW1VVifu", "targetNamespace": "PITd02Rb"}' \
    > test.out 2>&1
eval_tap $? 104 'SyncInGameItem' test.out

#- 105 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '8wApiGyr' \
    --body '{"appId": "yLH4fvAD", "appType": "DLC", "baseAppId": "86sHpPeB", "boothName": "lTPyzb33", "categoryPath": "AwmwJiF5", "clazz": "BFQ0JqZ6", "displayOrder": 82, "entitlementType": "CONSUMABLE", "ext": {"N9gXabeE": {}, "YNXK4DjJ": {}, "slXmI4ef": {}}, "features": ["EWqQccgp", "cL5yNLJP", "w6WNswM2"], "flexible": true, "images": [{"as": "ahT0qvUV", "caption": "6jOC3DsL", "height": 83, "imageUrl": "0tJfSlY7", "smallImageUrl": "PE6bq3aq", "width": 79}, {"as": "tV0MYifD", "caption": "WnWpFLEF", "height": 1, "imageUrl": "zgftoCjO", "smallImageUrl": "xWJPR0Dr", "width": 10}, {"as": "pjsU8U1W", "caption": "rdxh7eYu", "height": 76, "imageUrl": "1yu1GmBx", "smallImageUrl": "czcbFDde", "width": 14}], "inventoryConfig": {"customAttributes": {"vPNywLBc": {}, "59M6aQ0U": {}, "cm2hRySy": {}}, "serverCustomAttributes": {"P4pDg5r6": {}, "jrFg3RqW": {}, "LiiCFSX3": {}}, "slotUsed": 52}, "itemIds": ["bSJbmXXm", "X2vCvNCJ", "IcLGMVLb"], "itemQty": {"RiEC0p4D": 35, "5g7qLLEq": 64, "r0KhpWqS": 24}, "itemType": "BUNDLE", "listable": false, "localizations": {"0U7wF8qb": {"description": "889lI6eL", "localExt": {"OQ3AlbMi": {}, "PFyAOM1Q": {}, "vLEVIBrk": {}}, "longDescription": "rHTIYZ7h", "title": "yd9we1iq"}, "slD94BOS": {"description": "8k23nn9f", "localExt": {"xa90rYT1": {}, "eR7SF58G": {}, "9huwjGqw": {}}, "longDescription": "bKPO7t4y", "title": "4OUkH7xh"}, "Csck4Tio": {"description": "bKQ22zuI", "localExt": {"jjEbz7kp": {}, "1vj5TCOW": {}, "kh7B6cR2": {}}, "longDescription": "NT6QuMvF", "title": "QECBNqgd"}}, "lootBoxConfig": {"rewardCount": 48, "rewards": [{"lootBoxItems": [{"count": 12, "duration": 61, "endDate": "1985-05-04T00:00:00Z", "itemId": "zq955hRG", "itemSku": "onz70wTD", "itemType": "07MMwHRE"}, {"count": 18, "duration": 70, "endDate": "1979-04-26T00:00:00Z", "itemId": "LjVJW74d", "itemSku": "nJhprTuf", "itemType": "idF2WtSq"}, {"count": 31, "duration": 23, "endDate": "1989-05-22T00:00:00Z", "itemId": "WuWGxeoR", "itemSku": "Mx3arC5u", "itemType": "NC5Q7ZHz"}], "name": "aUXumHCR", "odds": 0.967583891300148, "type": "REWARD", "weight": 54}, {"lootBoxItems": [{"count": 58, "duration": 40, "endDate": "1989-07-16T00:00:00Z", "itemId": "HCb3rSPF", "itemSku": "BcJzdT3M", "itemType": "wJ7QkqN1"}, {"count": 20, "duration": 49, "endDate": "1975-11-07T00:00:00Z", "itemId": "7ududkVN", "itemSku": "xUpjR7jF", "itemType": "OQnODSnW"}, {"count": 38, "duration": 47, "endDate": "1975-01-19T00:00:00Z", "itemId": "pYiLNmJR", "itemSku": "rbQ8OWst", "itemType": "elwsGLvB"}], "name": "UKWfhr0j", "odds": 0.20807108149396436, "type": "REWARD_GROUP", "weight": 17}, {"lootBoxItems": [{"count": 20, "duration": 92, "endDate": "1987-04-21T00:00:00Z", "itemId": "9VHvBmlR", "itemSku": "TNbeUflj", "itemType": "OfReSCni"}, {"count": 30, "duration": 14, "endDate": "1978-05-16T00:00:00Z", "itemId": "Oiw4KDRE", "itemSku": "6cbctejG", "itemType": "H84I9Y13"}, {"count": 91, "duration": 1, "endDate": "1982-10-02T00:00:00Z", "itemId": "VqSbuaRb", "itemSku": "U0S0RRpb", "itemType": "0giCX7my"}], "name": "gyJlqLHB", "odds": 0.028172429420563305, "type": "PROBABILITY_GROUP", "weight": 89}], "rollFunction": "DEFAULT"}, "maxCount": 5, "maxCountPerUser": 84, "name": "BInS5TlL", "optionBoxConfig": {"boxItems": [{"count": 91, "duration": 30, "endDate": "1974-07-09T00:00:00Z", "itemId": "MBzGB7FE", "itemSku": "JXLOJInc", "itemType": "Ato3c0Kr"}, {"count": 39, "duration": 3, "endDate": "1982-11-13T00:00:00Z", "itemId": "G9QfcA81", "itemSku": "3N0HTqxI", "itemType": "hvUUpEyP"}, {"count": 97, "duration": 95, "endDate": "1991-02-18T00:00:00Z", "itemId": "u7O9lSEw", "itemSku": "lpC0emNt", "itemType": "WV3OvGbb"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 24, "fixedTrialCycles": 74, "graceDays": 15}, "regionData": {"yHBtKoeR": [{"currencyCode": "m9CI4nGu", "currencyNamespace": "mavA2gGz", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1997-12-14T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1994-07-08T00:00:00Z", "expireAt": "1996-10-16T00:00:00Z", "price": 50, "purchaseAt": "1985-07-13T00:00:00Z", "trialPrice": 6}, {"currencyCode": "Vaw8ARMk", "currencyNamespace": "fEW1NKi7", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1992-03-22T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1985-02-22T00:00:00Z", "expireAt": "1986-01-15T00:00:00Z", "price": 48, "purchaseAt": "1994-11-07T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Hrkjn5WV", "currencyNamespace": "rhZsrByy", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1974-05-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1982-09-15T00:00:00Z", "expireAt": "1993-07-25T00:00:00Z", "price": 34, "purchaseAt": "1978-01-30T00:00:00Z", "trialPrice": 19}], "98MLOCWj": [{"currencyCode": "ZSWaPDPK", "currencyNamespace": "g3eh5IAT", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1980-11-09T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1985-07-21T00:00:00Z", "expireAt": "1971-05-06T00:00:00Z", "price": 5, "purchaseAt": "1999-11-11T00:00:00Z", "trialPrice": 7}, {"currencyCode": "hvm9CjTm", "currencyNamespace": "jiaGkfBc", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1972-10-21T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1995-07-13T00:00:00Z", "expireAt": "1982-06-26T00:00:00Z", "price": 61, "purchaseAt": "1987-02-17T00:00:00Z", "trialPrice": 86}, {"currencyCode": "97JL4k8N", "currencyNamespace": "zBauIdR4", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1991-07-06T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1988-02-23T00:00:00Z", "expireAt": "1995-09-29T00:00:00Z", "price": 20, "purchaseAt": "1997-01-23T00:00:00Z", "trialPrice": 82}], "U4bksLPH": [{"currencyCode": "d5xHboOi", "currencyNamespace": "DvW8OwsZ", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1989-01-12T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1997-06-04T00:00:00Z", "expireAt": "1977-09-08T00:00:00Z", "price": 31, "purchaseAt": "1996-12-07T00:00:00Z", "trialPrice": 58}, {"currencyCode": "rrjo11VT", "currencyNamespace": "ANNl2wjm", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1983-07-30T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1988-12-02T00:00:00Z", "expireAt": "1975-06-29T00:00:00Z", "price": 60, "purchaseAt": "1971-08-05T00:00:00Z", "trialPrice": 0}, {"currencyCode": "xN7ZCn3E", "currencyNamespace": "DQLtTD6G", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1982-05-05T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1998-10-22T00:00:00Z", "expireAt": "1975-10-06T00:00:00Z", "price": 67, "purchaseAt": "1979-11-09T00:00:00Z", "trialPrice": 87}]}, "saleConfig": {"currencyCode": "QSPDYoOH", "price": 59}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Y0CMWp7A", "stackable": true, "status": "INACTIVE", "tags": ["8nOZ2J5M", "9u5q1ztZ", "X5803RTt"], "targetCurrencyCode": "xElCyHti", "targetNamespace": "yiQamNrO", "thumbnailUrl": "FY8SqOrl", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 105 'CreateItem' test.out

#- 106 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'azuq7uu6' \
    --appId 'rnzq84Rr' \
    > test.out 2>&1
eval_tap $? 106 'GetItemByAppId' test.out

#- 107 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'uZbkrq4U' \
    --baseAppId 'rqlAl2hx' \
    --categoryPath 'YQ8Q1gVY' \
    --features 'wAIfYWDI' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '46' \
    --offset '8' \
    --region 'H6YU2IPy' \
    --sortBy '["displayOrder", "updatedAt:asc", "name:asc"]' \
    --storeId '6rTOVVg3' \
    --tags 'quuxzM6L' \
    --targetNamespace 'cRwHHj7K' \
    > test.out 2>&1
eval_tap $? 107 'QueryItems' test.out

#- 108 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["suU2Lgag", "GkZtqHlf", "psR3FeHU"]' \
    > test.out 2>&1
eval_tap $? 108 'ListBasicItemsByFeatures' test.out

#- 109 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DfKCtvqx' \
    --itemIds 'sNlly475' \
    > test.out 2>&1
eval_tap $? 109 'GetItems' test.out

#- 110 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Ez8r3Ner' \
    --sku 'yyt1Ze9J' \
    > test.out 2>&1
eval_tap $? 110 'GetItemBySku' test.out

#- 111 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'WG6aVxoF' \
    --populateBundle 'true' \
    --region 'azIbysvE' \
    --storeId 'yI0d0UbH' \
    --sku 'ukMFhwyL' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItemBySku' test.out

#- 112 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'Td7EJEdP' \
    --region 'R18NtaHO' \
    --storeId 'UCGbqS7E' \
    --itemIds 'breRdrr3' \
    --userId 'I5xLOQff' \
    > test.out 2>&1
eval_tap $? 112 'GetEstimatedPrice' test.out

#- 113 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wvSDsVnt' \
    --sku 'Qz036eZd' \
    > test.out 2>&1
eval_tap $? 113 'GetItemIdBySku' test.out

#- 114 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["38mmixkY", "6cOv6Qpv", "IUsdj0gj"]' \
    --storeId 'TuQidbCs' \
    > test.out 2>&1
eval_tap $? 114 'GetBulkItemIdBySkus' test.out

#- 115 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'EkYgOZ84' \
    --region '4FYP8EfK' \
    --storeId 'z6vfE1RI' \
    --itemIds 'n8uCYLpG' \
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
    --platform 'U9CvrhEj' \
    --userId 'oZRU57i8' \
    --body '{"itemIds": ["6nDz0ssT", "qKD15BXE", "SavLCv3c"]}' \
    > test.out 2>&1
eval_tap $? 117 'ValidateItemPurchaseCondition' test.out

#- 118 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Pn6KtDwO' \
    --body '{"changes": [{"itemIdentities": ["0Y3HeY4C", "n9EDjA08", "4snzJNYD"], "itemIdentityType": "ITEM_ID", "regionData": {"GVXBXF0d": [{"currencyCode": "LUUcykId", "currencyNamespace": "XsMjRqey", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1972-03-30T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1977-05-02T00:00:00Z", "discountedPrice": 92, "expireAt": "1983-11-26T00:00:00Z", "price": 75, "purchaseAt": "1974-11-17T00:00:00Z", "trialPrice": 84}, {"currencyCode": "g83dhDAy", "currencyNamespace": "mbt2cBbD", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1977-08-20T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-07-02T00:00:00Z", "discountedPrice": 1, "expireAt": "1983-07-27T00:00:00Z", "price": 71, "purchaseAt": "1985-04-05T00:00:00Z", "trialPrice": 6}, {"currencyCode": "NKj3GPw9", "currencyNamespace": "z18lFAiO", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1996-08-31T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1999-06-12T00:00:00Z", "discountedPrice": 97, "expireAt": "1988-09-07T00:00:00Z", "price": 96, "purchaseAt": "1991-06-02T00:00:00Z", "trialPrice": 94}], "Ww4UlF8G": [{"currencyCode": "IiwclUun", "currencyNamespace": "UDjmC7qp", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-11-20T00:00:00Z", "discountedPrice": 76, "expireAt": "1995-11-13T00:00:00Z", "price": 87, "purchaseAt": "1971-11-26T00:00:00Z", "trialPrice": 89}, {"currencyCode": "AuTsKJ66", "currencyNamespace": "Wkdv7mt1", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1982-12-24T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1988-07-27T00:00:00Z", "discountedPrice": 11, "expireAt": "1983-01-01T00:00:00Z", "price": 52, "purchaseAt": "1971-04-13T00:00:00Z", "trialPrice": 100}, {"currencyCode": "1RwkIsrp", "currencyNamespace": "2HhYmQK4", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1987-02-25T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1979-07-30T00:00:00Z", "discountedPrice": 100, "expireAt": "1998-06-19T00:00:00Z", "price": 75, "purchaseAt": "1982-02-24T00:00:00Z", "trialPrice": 24}], "I28uFhdq": [{"currencyCode": "NmbEL3AJ", "currencyNamespace": "5yME6tgq", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1983-07-10T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1995-12-05T00:00:00Z", "discountedPrice": 45, "expireAt": "1986-07-05T00:00:00Z", "price": 0, "purchaseAt": "1974-06-25T00:00:00Z", "trialPrice": 56}, {"currencyCode": "JDAdHIjY", "currencyNamespace": "MTnPpEIE", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1980-07-14T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1972-02-22T00:00:00Z", "discountedPrice": 14, "expireAt": "1983-10-29T00:00:00Z", "price": 65, "purchaseAt": "1989-05-20T00:00:00Z", "trialPrice": 26}, {"currencyCode": "NucKlkfU", "currencyNamespace": "DHMtWG2u", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1999-05-13T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1993-08-24T00:00:00Z", "discountedPrice": 4, "expireAt": "1977-02-23T00:00:00Z", "price": 80, "purchaseAt": "1986-11-14T00:00:00Z", "trialPrice": 18}]}}, {"itemIdentities": ["TGxFZode", "xTGwdEpO", "ukXMSh7Y"], "itemIdentityType": "ITEM_SKU", "regionData": {"NUXAxtgf": [{"currencyCode": "hlxCcsXY", "currencyNamespace": "OUIoyjCV", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1994-11-12T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1981-04-10T00:00:00Z", "discountedPrice": 78, "expireAt": "1973-09-11T00:00:00Z", "price": 10, "purchaseAt": "1999-01-31T00:00:00Z", "trialPrice": 11}, {"currencyCode": "qGw7Mb3s", "currencyNamespace": "fKCs9QEC", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1988-03-18T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1995-01-24T00:00:00Z", "discountedPrice": 40, "expireAt": "1987-10-25T00:00:00Z", "price": 9, "purchaseAt": "1980-06-30T00:00:00Z", "trialPrice": 66}, {"currencyCode": "5ZUqeD0o", "currencyNamespace": "YJ2XjMrQ", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1993-08-17T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1981-04-01T00:00:00Z", "discountedPrice": 26, "expireAt": "1986-04-22T00:00:00Z", "price": 40, "purchaseAt": "1979-12-29T00:00:00Z", "trialPrice": 5}], "qhMHXAlg": [{"currencyCode": "NZ7veTRU", "currencyNamespace": "C4HzOtwd", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1980-02-08T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1990-02-15T00:00:00Z", "discountedPrice": 42, "expireAt": "1980-10-19T00:00:00Z", "price": 11, "purchaseAt": "1995-04-21T00:00:00Z", "trialPrice": 53}, {"currencyCode": "RdRYV9hT", "currencyNamespace": "nuDL8zz3", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1980-03-03T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1982-01-12T00:00:00Z", "discountedPrice": 36, "expireAt": "1995-03-04T00:00:00Z", "price": 37, "purchaseAt": "1992-01-05T00:00:00Z", "trialPrice": 97}, {"currencyCode": "VzU5tgDh", "currencyNamespace": "aaGax9ID", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1993-05-10T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1976-10-23T00:00:00Z", "discountedPrice": 76, "expireAt": "1980-02-27T00:00:00Z", "price": 95, "purchaseAt": "1994-12-12T00:00:00Z", "trialPrice": 65}], "5yqSKwVm": [{"currencyCode": "yOxulC7n", "currencyNamespace": "u6VHYKQi", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1991-07-12T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1989-07-21T00:00:00Z", "discountedPrice": 14, "expireAt": "1974-03-07T00:00:00Z", "price": 32, "purchaseAt": "1984-06-27T00:00:00Z", "trialPrice": 44}, {"currencyCode": "K8KS5dyR", "currencyNamespace": "5r5ItFwb", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1989-06-18T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1980-07-04T00:00:00Z", "discountedPrice": 56, "expireAt": "1980-08-06T00:00:00Z", "price": 66, "purchaseAt": "1977-06-12T00:00:00Z", "trialPrice": 95}, {"currencyCode": "ioBOyoYL", "currencyNamespace": "tCbo4uoY", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1971-01-17T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1999-08-04T00:00:00Z", "discountedPrice": 7, "expireAt": "1974-06-03T00:00:00Z", "price": 87, "purchaseAt": "1992-08-19T00:00:00Z", "trialPrice": 90}]}}, {"itemIdentities": ["331sVoL9", "9Rkgwsac", "ruCL8L6A"], "itemIdentityType": "ITEM_ID", "regionData": {"OdYpsCgF": [{"currencyCode": "JkFghqIC", "currencyNamespace": "Nsc4uvlc", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1996-01-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1991-04-04T00:00:00Z", "discountedPrice": 33, "expireAt": "1983-06-10T00:00:00Z", "price": 65, "purchaseAt": "1997-10-22T00:00:00Z", "trialPrice": 96}, {"currencyCode": "SyeH6nPk", "currencyNamespace": "0ZJ8EhRL", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1975-06-24T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1979-02-20T00:00:00Z", "discountedPrice": 26, "expireAt": "1980-02-11T00:00:00Z", "price": 61, "purchaseAt": "1981-12-21T00:00:00Z", "trialPrice": 72}, {"currencyCode": "Fc0biduN", "currencyNamespace": "t4jTX6LL", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1999-05-04T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1972-06-01T00:00:00Z", "discountedPrice": 26, "expireAt": "1980-09-05T00:00:00Z", "price": 98, "purchaseAt": "1998-10-10T00:00:00Z", "trialPrice": 13}], "8g5mX5iW": [{"currencyCode": "kvbz5dsU", "currencyNamespace": "S495zVjD", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1978-01-22T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1982-10-03T00:00:00Z", "discountedPrice": 6, "expireAt": "1974-07-24T00:00:00Z", "price": 8, "purchaseAt": "1986-01-24T00:00:00Z", "trialPrice": 47}, {"currencyCode": "KIenDPMZ", "currencyNamespace": "BE0vbfkw", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1971-07-07T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1996-04-29T00:00:00Z", "discountedPrice": 3, "expireAt": "1985-01-03T00:00:00Z", "price": 97, "purchaseAt": "1990-08-15T00:00:00Z", "trialPrice": 29}, {"currencyCode": "Df70oVbU", "currencyNamespace": "3AQ6aHKK", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1984-06-07T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1987-01-05T00:00:00Z", "discountedPrice": 35, "expireAt": "1986-11-01T00:00:00Z", "price": 74, "purchaseAt": "1985-02-01T00:00:00Z", "trialPrice": 87}], "kliQz8xT": [{"currencyCode": "5SAYFXTV", "currencyNamespace": "73VOU3En", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1995-08-31T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1975-06-10T00:00:00Z", "discountedPrice": 29, "expireAt": "1988-01-04T00:00:00Z", "price": 44, "purchaseAt": "1995-05-06T00:00:00Z", "trialPrice": 36}, {"currencyCode": "ARAYtjri", "currencyNamespace": "ScWlCJCq", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1994-07-21T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1993-07-10T00:00:00Z", "discountedPrice": 82, "expireAt": "1971-11-06T00:00:00Z", "price": 76, "purchaseAt": "1999-12-01T00:00:00Z", "trialPrice": 22}, {"currencyCode": "RdUyd9HV", "currencyNamespace": "vsGRF7BE", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1993-12-24T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1982-09-29T00:00:00Z", "discountedPrice": 8, "expireAt": "1990-09-26T00:00:00Z", "price": 0, "purchaseAt": "1977-05-12T00:00:00Z", "trialPrice": 52}]}}]}' \
    > test.out 2>&1
eval_tap $? 118 'BulkUpdateRegionData' test.out

#- 119 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '71' \
    --offset '99' \
    --sortBy 'fsF30wPM' \
    --storeId 'uEE8t5ZX' \
    --keyword 'dN01Ux9T' \
    --language 'Zu427kW0' \
    > test.out 2>&1
eval_tap $? 119 'SearchItems' test.out

#- 120 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '92' \
    --offset '78' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "name:desc"]' \
    --storeId 'oWv7qNQr' \
    > test.out 2>&1
eval_tap $? 120 'QueryUncategorizedItems' test.out

#- 121 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'UyfCTPAq' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '7GldpxWr' \
    > test.out 2>&1
eval_tap $? 121 'GetItem' test.out

#- 122 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Q7dHrbYX' \
    --namespace $AB_NAMESPACE \
    --storeId 'fPScS3P0' \
    --body '{"appId": "xjBKGWet", "appType": "SOFTWARE", "baseAppId": "c8OZmSOV", "boothName": "AAPwi1t2", "categoryPath": "lnfu5ZY6", "clazz": "ylccKE8A", "displayOrder": 43, "entitlementType": "DURABLE", "ext": {"rEURo2tQ": {}, "6cgqgnvK": {}, "7UIN8x1D": {}}, "features": ["RDT3dCbB", "p53Djy14", "wN78cpuC"], "flexible": true, "images": [{"as": "UX0Ys94x", "caption": "zej5H6WS", "height": 47, "imageUrl": "FwMNmfaK", "smallImageUrl": "yj3ieeko", "width": 45}, {"as": "QvclBCnm", "caption": "hzpKGrj3", "height": 47, "imageUrl": "QzQcXR2W", "smallImageUrl": "044L25Hv", "width": 57}, {"as": "mrGaxiQd", "caption": "f4uXIQQW", "height": 65, "imageUrl": "4lwirKuK", "smallImageUrl": "4XbqUen2", "width": 36}], "inventoryConfig": {"customAttributes": {"O4FqZZ2R": {}, "bwI03FB7": {}, "1OHx4pYs": {}}, "serverCustomAttributes": {"hjUmuRPC": {}, "7LnYv96U": {}, "pmP3BQ98": {}}, "slotUsed": 27}, "itemIds": ["hUsBJyR8", "3vZ4diPR", "dbc8sdrS"], "itemQty": {"bIOmr2IC": 94, "u0JIXKFr": 73, "frQ1IY4U": 77}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"LT7ajVlt": {"description": "eRWHYd9S", "localExt": {"WKG7xvIK": {}, "bR81fTrn": {}, "XaAZVOiw": {}}, "longDescription": "oJYRdMem", "title": "bg2qsRm8"}, "uvoRGFqd": {"description": "qxj6xxl3", "localExt": {"1NXzfxEp": {}, "zYO3lZkK": {}, "8XEfdeN3": {}}, "longDescription": "swmIO76o", "title": "MM99iWgm"}, "U9ZS2MGr": {"description": "iAZqiIEq", "localExt": {"GAjTbpof": {}, "MYosTsA9": {}, "7Zc5yfJZ": {}}, "longDescription": "XwoxSpUw", "title": "XCMxXwhP"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 45, "duration": 34, "endDate": "1990-01-17T00:00:00Z", "itemId": "PNO0TBK5", "itemSku": "Ta3oZ5ur", "itemType": "LL5noh7q"}, {"count": 27, "duration": 24, "endDate": "1981-10-15T00:00:00Z", "itemId": "Y1S6hqpc", "itemSku": "Jk1ZFS1v", "itemType": "Bml7CJEF"}, {"count": 84, "duration": 63, "endDate": "1976-07-17T00:00:00Z", "itemId": "6e3F73h1", "itemSku": "yDnJkwDD", "itemType": "5duxCeD4"}], "name": "IU6Ds5pZ", "odds": 0.7420616678202941, "type": "REWARD_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 95, "duration": 33, "endDate": "1984-10-31T00:00:00Z", "itemId": "TJfkxGOu", "itemSku": "4lybA78M", "itemType": "wybRnBam"}, {"count": 10, "duration": 13, "endDate": "1984-08-12T00:00:00Z", "itemId": "V6GQNnj1", "itemSku": "qdTvA0Wb", "itemType": "CTfCk9bn"}, {"count": 10, "duration": 54, "endDate": "1983-09-20T00:00:00Z", "itemId": "xY2B50pJ", "itemSku": "3i15aONI", "itemType": "SgKSrcmq"}], "name": "ac4b3Gxf", "odds": 0.5417388462228871, "type": "REWARD", "weight": 52}, {"lootBoxItems": [{"count": 52, "duration": 85, "endDate": "1994-08-28T00:00:00Z", "itemId": "JujhdHs0", "itemSku": "7U2GGOdI", "itemType": "zJUO7kVI"}, {"count": 71, "duration": 75, "endDate": "1994-05-31T00:00:00Z", "itemId": "Jqwyg85X", "itemSku": "W9GfEJs5", "itemType": "pdJwxjaq"}, {"count": 32, "duration": 25, "endDate": "1982-10-18T00:00:00Z", "itemId": "WebTfD6g", "itemSku": "OM54ITQD", "itemType": "IllXw4v7"}], "name": "rXbrr4tV", "odds": 0.004059996692515555, "type": "REWARD", "weight": 70}], "rollFunction": "CUSTOM"}, "maxCount": 89, "maxCountPerUser": 66, "name": "VYD1wMrF", "optionBoxConfig": {"boxItems": [{"count": 60, "duration": 9, "endDate": "1984-09-09T00:00:00Z", "itemId": "iVnNxnpz", "itemSku": "E7U4ycz4", "itemType": "Pm01YYtm"}, {"count": 16, "duration": 51, "endDate": "1998-01-25T00:00:00Z", "itemId": "K61UKRtH", "itemSku": "C25izXG3", "itemType": "0LFbEalI"}, {"count": 14, "duration": 75, "endDate": "1992-01-24T00:00:00Z", "itemId": "ynz8B9Qw", "itemSku": "Vm0Wf45h", "itemType": "T0Wc8DQt"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 91, "fixedTrialCycles": 58, "graceDays": 3}, "regionData": {"n6aXaYVt": [{"currencyCode": "ROKubz7I", "currencyNamespace": "jot1pUEN", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1999-11-20T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1979-03-31T00:00:00Z", "expireAt": "1974-02-18T00:00:00Z", "price": 8, "purchaseAt": "1974-03-13T00:00:00Z", "trialPrice": 49}, {"currencyCode": "bBS7eDw0", "currencyNamespace": "VYx1RCAe", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1987-06-18T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-01-15T00:00:00Z", "expireAt": "1997-10-29T00:00:00Z", "price": 81, "purchaseAt": "1999-02-13T00:00:00Z", "trialPrice": 17}, {"currencyCode": "uszbQmTa", "currencyNamespace": "GaVoicBL", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1999-06-01T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1992-04-22T00:00:00Z", "expireAt": "1974-01-27T00:00:00Z", "price": 26, "purchaseAt": "1991-08-11T00:00:00Z", "trialPrice": 6}], "JVsljU4d": [{"currencyCode": "vACpPgzV", "currencyNamespace": "Nx4BszNm", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1984-01-09T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-06-26T00:00:00Z", "expireAt": "1972-04-19T00:00:00Z", "price": 56, "purchaseAt": "1977-12-15T00:00:00Z", "trialPrice": 42}, {"currencyCode": "bOfoVmxm", "currencyNamespace": "sTqb9meM", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1988-03-05T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1979-12-30T00:00:00Z", "expireAt": "1971-03-15T00:00:00Z", "price": 50, "purchaseAt": "1989-04-07T00:00:00Z", "trialPrice": 41}, {"currencyCode": "aXajEsfW", "currencyNamespace": "H82AM2cB", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1973-12-01T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1985-09-05T00:00:00Z", "expireAt": "1977-04-06T00:00:00Z", "price": 41, "purchaseAt": "1981-09-13T00:00:00Z", "trialPrice": 81}], "jFwzIZsH": [{"currencyCode": "gCmjEgeF", "currencyNamespace": "oTjQTb9p", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1987-02-05T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1986-02-21T00:00:00Z", "expireAt": "1976-06-28T00:00:00Z", "price": 27, "purchaseAt": "1993-07-14T00:00:00Z", "trialPrice": 22}, {"currencyCode": "EtznsKH4", "currencyNamespace": "bKdncMip", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1985-02-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1978-08-08T00:00:00Z", "expireAt": "1979-05-25T00:00:00Z", "price": 35, "purchaseAt": "1979-03-10T00:00:00Z", "trialPrice": 99}, {"currencyCode": "ebZjXUlh", "currencyNamespace": "CEWbtGeq", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1983-09-15T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1986-01-02T00:00:00Z", "expireAt": "1973-01-15T00:00:00Z", "price": 28, "purchaseAt": "1982-05-23T00:00:00Z", "trialPrice": 18}]}, "saleConfig": {"currencyCode": "QqTsYZRz", "price": 76}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "XZxtVDd2", "stackable": true, "status": "INACTIVE", "tags": ["cb7c1vor", "pBS4TcTO", "BD83AvrA"], "targetCurrencyCode": "FKhAWIim", "targetNamespace": "JBMdREJY", "thumbnailUrl": "ZzwcI5wR", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateItem' test.out

#- 123 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Iw61qE13' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'qsy2BAQy' \
    > test.out 2>&1
eval_tap $? 123 'DeleteItem' test.out

#- 124 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'kSio3y3K' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58, "orderNo": "BQhWxSaD"}' \
    > test.out 2>&1
eval_tap $? 124 'AcquireItem' test.out

#- 125 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'TB6QBZk6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'XFdgP5w5' \
    > test.out 2>&1
eval_tap $? 125 'GetApp' test.out

#- 126 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'MyYbdzbL' \
    --namespace $AB_NAMESPACE \
    --storeId 's4LDPieh' \
    --body '{"carousel": [{"alt": "PbY3in0x", "previewUrl": "Rv79PXNi", "thumbnailUrl": "xcmI1Caa", "type": "image", "url": "JyhxuAEu", "videoSource": "generic"}, {"alt": "P4IFqPEk", "previewUrl": "UYvQdiQ6", "thumbnailUrl": "wiMwNB3g", "type": "video", "url": "H0crPtdy", "videoSource": "vimeo"}, {"alt": "K6mx9SIH", "previewUrl": "fuxY15CB", "thumbnailUrl": "PkRMI6cY", "type": "image", "url": "rn6ahdoY", "videoSource": "vimeo"}], "developer": "8ElXl0Xc", "forumUrl": "QvcdSeez", "genres": ["RPG", "MassivelyMultiplayer", "Indie"], "localizations": {"4lFbtw3v": {"announcement": "mLSzqK5T", "slogan": "7OflxwMi"}, "yRK57DqY": {"announcement": "oJjBHr2g", "slogan": "vEIpOK6n"}, "ky2qlqi0": {"announcement": "uRd47fye", "slogan": "v0uLx25G"}}, "platformRequirements": {"eSqHKamD": [{"additionals": "g0s1IjuI", "directXVersion": "mtQAIYu4", "diskSpace": "WCoW5PyJ", "graphics": "NXw7ws4e", "label": "ScNtfkpu", "osVersion": "nB0ntYBi", "processor": "E08ppxiw", "ram": "BEk66Upi", "soundCard": "Rb2PitPw"}, {"additionals": "vMg49CEL", "directXVersion": "jXAnpBQF", "diskSpace": "PbIz5GNY", "graphics": "Z6KJ36gZ", "label": "QpFtMtGn", "osVersion": "EswKxCwK", "processor": "34Z1GPD8", "ram": "EFz24Glu", "soundCard": "o4ZAN63Y"}, {"additionals": "3Mh66tR3", "directXVersion": "qsepgrNN", "diskSpace": "9HHR3YTe", "graphics": "Ueegoc6N", "label": "judD2kRv", "osVersion": "CQPhgUfe", "processor": "XhtwVs4O", "ram": "DJPe8koz", "soundCard": "RjwAQE30"}], "oi2CeBpC": [{"additionals": "4B0VsIkC", "directXVersion": "HRuWVOCt", "diskSpace": "XdTa6B4n", "graphics": "Le9ZQOWD", "label": "pv7pEaK3", "osVersion": "s1niK6yl", "processor": "PIrdhgg8", "ram": "qEDlGwA8", "soundCard": "jWRCBCQZ"}, {"additionals": "OHqiLt7Z", "directXVersion": "WxyOk059", "diskSpace": "3fiduujp", "graphics": "fM4AjAIZ", "label": "YpB7TP6q", "osVersion": "hqtSg2fy", "processor": "3TiAMIsZ", "ram": "Qib5rLBM", "soundCard": "UzUxTi0s"}, {"additionals": "UCx4X2T6", "directXVersion": "mWLTubuw", "diskSpace": "Hbep2EzY", "graphics": "wKI2grOY", "label": "EIxv3C6L", "osVersion": "SxJZTcwG", "processor": "K5MFmlXl", "ram": "xp1kUoXK", "soundCard": "o4UjMhn4"}], "jMiaRG9H": [{"additionals": "Kfyr0UXc", "directXVersion": "SkyCHgc3", "diskSpace": "Hpm62iBx", "graphics": "xDL02uT5", "label": "khFVDqtD", "osVersion": "8POzSdOo", "processor": "j7UM0zQK", "ram": "Hyq3yTUZ", "soundCard": "SCURjFhn"}, {"additionals": "sMEuzGVC", "directXVersion": "PB0736Fm", "diskSpace": "aRv5IDsO", "graphics": "Net0g94q", "label": "mJlaRabq", "osVersion": "7g1VTUcI", "processor": "COEbaVk8", "ram": "X3SQTOPd", "soundCard": "GJki5IM0"}, {"additionals": "du8XMtdX", "directXVersion": "dyC43FBS", "diskSpace": "SPffrslm", "graphics": "SjJjvxpS", "label": "EadtrLlL", "osVersion": "RmYD0ZmP", "processor": "0lLvBgzs", "ram": "SaGan5DQ", "soundCard": "yGsEdgMG"}]}, "platforms": ["Android", "Android", "Windows"], "players": ["Multi", "LocalCoop", "Single"], "primaryGenre": "MassivelyMultiplayer", "publisher": "ml7R7C2d", "releaseDate": "1988-03-26T00:00:00Z", "websiteUrl": "gweSbpOF"}' \
    > test.out 2>&1
eval_tap $? 126 'UpdateApp' test.out

#- 127 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'KhblpEnT' \
    --namespace $AB_NAMESPACE \
    --storeId 'JsXMSNKz' \
    > test.out 2>&1
eval_tap $? 127 'DisableItem' test.out

#- 128 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'lkTZd6C1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetItemDynamicData' test.out

#- 129 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'upKuiG4T' \
    --namespace $AB_NAMESPACE \
    --storeId '5f1bmOaG' \
    > test.out 2>&1
eval_tap $? 129 'EnableItem' test.out

#- 130 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'Ohgy2LqB' \
    --itemId '8on2mw2U' \
    --namespace $AB_NAMESPACE \
    --storeId 'pOzh7lV7' \
    > test.out 2>&1
eval_tap $? 130 'FeatureItem' test.out

#- 131 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'qWn6Cyux' \
    --itemId 'Tjfrf7Vi' \
    --namespace $AB_NAMESPACE \
    --storeId 'AoV9TVrE' \
    > test.out 2>&1
eval_tap $? 131 'DefeatureItem' test.out

#- 132 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '3BCKIgUg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'owKgnP3s' \
    --populateBundle 'false' \
    --region '1wk2uQAA' \
    --storeId 'wLEF2jSH' \
    > test.out 2>&1
eval_tap $? 132 'GetLocaleItem' test.out

#- 133 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'UZpwNGfD' \
    --namespace $AB_NAMESPACE \
    --storeId 'qUlomvqY' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 75, "comparison": "isLessThanOrEqual", "name": "zL9xSjPw", "predicateType": "SeasonTierPredicate", "value": "wF5HeaCH", "values": ["lNaa30gv", "pgrTcETb", "1bpRRx23"]}, {"anyOf": 43, "comparison": "isNot", "name": "7KgCZQx3", "predicateType": "SeasonPassPredicate", "value": "ynpDCkSv", "values": ["nxLZCQBw", "cKWz4nUM", "KYuSSnhw"]}, {"anyOf": 16, "comparison": "isLessThanOrEqual", "name": "WYLz7M5t", "predicateType": "EntitlementPredicate", "value": "Ta44vrXL", "values": ["fbkUCbFi", "gBtWiFtx", "Ma7uSunw"]}]}, {"operator": "or", "predicates": [{"anyOf": 2, "comparison": "isGreaterThanOrEqual", "name": "TW4kLY7Y", "predicateType": "SeasonPassPredicate", "value": "gWNHYICT", "values": ["MW4fhseT", "doOBrVgf", "UbUS71Vr"]}, {"anyOf": 45, "comparison": "isLessThanOrEqual", "name": "zziXjkyD", "predicateType": "EntitlementPredicate", "value": "dxoF7M0k", "values": ["or6XFbdi", "qYvStECP", "JrwjmEsO"]}, {"anyOf": 45, "comparison": "excludes", "name": "Qik24HtH", "predicateType": "SeasonTierPredicate", "value": "7d8eStQc", "values": ["x1l7xDKO", "VXpLqL9a", "Sfeuylk4"]}]}, {"operator": "and", "predicates": [{"anyOf": 17, "comparison": "includes", "name": "eFWdyIor", "predicateType": "SeasonPassPredicate", "value": "tH1EzuLm", "values": ["nJZqZGfg", "dDpYVKw3", "e4zK7s5y"]}, {"anyOf": 77, "comparison": "isLessThanOrEqual", "name": "yOfyGowB", "predicateType": "SeasonTierPredicate", "value": "PYpvV9KY", "values": ["L8G7CCTK", "kzTvhMsE", "9SuB2PbQ"]}, {"anyOf": 30, "comparison": "is", "name": "SBNLIyOy", "predicateType": "SeasonTierPredicate", "value": "JS0ySAFs", "values": ["WxYmW6za", "LrXEpDfT", "uTD07WZ1"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateItemPurchaseCondition' test.out

#- 134 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'IAamPC3v' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "l9ljBoKz"}' \
    > test.out 2>&1
eval_tap $? 134 'ReturnItem' test.out

#- 135 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'uO2QTKBV' \
    --offset '51' \
    --tag '2E6pb9Vh' \
    > test.out 2>&1
eval_tap $? 135 'QueryKeyGroups' test.out

#- 136 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mCT3hI8D", "name": "dKgnDlHs", "status": "INACTIVE", "tags": ["ggF6nkdu", "0AkS9LDd", "C6TC7IKo"]}' \
    > test.out 2>&1
eval_tap $? 136 'CreateKeyGroup' test.out

#- 137 GetKeyGroupByBoothName
eval_tap 0 137 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 138 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '4v8jPoz5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroup' test.out

#- 139 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'cnXBZ5RI' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KM9OeQDO", "name": "uJevHBWh", "status": "ACTIVE", "tags": ["r3RqhYgm", "bM4KwcR8", "M9bi2xF1"]}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateKeyGroup' test.out

#- 140 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'wyysF0Ig' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroupDynamic' test.out

#- 141 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'uuo93oOP' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '45' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 141 'ListKeys' test.out

#- 142 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'WBg3nEtK' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 142 'UploadKeys' test.out

#- 143 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '1uMI69vR' \
    --limit '14' \
    --offset '2' \
    --orderNos '["k86N1zjX", "W4ce7HXh", "wgK10YP9"]' \
    --sortBy 'OYlXjzi5' \
    --startTime 'LZSjifl2' \
    --status 'REFUND_FAILED' \
    --withTotal 'false' \
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
    --orderNo 'OWqSPSAU' \
    > test.out 2>&1
eval_tap $? 145 'GetOrder' test.out

#- 146 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'TijK6SZx' \
    --body '{"description": "XycsHFGv"}' \
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
    --body '{"dryRun": false, "notifyUrl": "BJiHYZaq", "privateKey": "x4FXoCZt"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdatePaymentCallbackConfig' test.out

#- 149 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'lQZCPWpY' \
    --externalId 'Vij9AJvy' \
    --limit '57' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'Q3U2hGYw' \
    --offset '32' \
    --paymentOrderNo 'QOlqiS5e' \
    --startDate 'MUJrodT2' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 149 'QueryPaymentNotifications' test.out

#- 150 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'Yo9QpXhV' \
    --limit '60' \
    --offset '45' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 150 'QueryPaymentOrders' test.out

#- 151 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "5JZ6xAS5", "currencyNamespace": "jT28pqwn", "customParameters": {"TDw9945Z": {}, "sKN8jjAi": {}, "lxmQt341": {}}, "description": "vpg1FSVm", "extOrderNo": "MFHZ9pGg", "extUserId": "nDBiidNH", "itemType": "CODE", "language": "Jd", "metadata": {"3pMOHEz6": "OFuT4k73", "5UPlafY1": "g38nqigF", "oubhjKCl": "u7SctjC4"}, "notifyUrl": "jg3LB83n", "omitNotification": false, "platform": "8KNrfFWD", "price": 85, "recurringPaymentOrderNo": "acC36bvL", "region": "dowM08Pn", "returnUrl": "ROPiaG66", "sandbox": true, "sku": "WnGy9tRf", "subscriptionId": "9TY8jZxs", "targetNamespace": "8IHmVWh6", "targetUserId": "6KHHNu5w", "title": "tTBxmqN8"}' \
    > test.out 2>&1
eval_tap $? 151 'CreatePaymentOrderByDedicated' test.out

#- 152 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'sA4jb3y5' \
    > test.out 2>&1
eval_tap $? 152 'ListExtOrderNoByExtTxId' test.out

#- 153 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pIgpOkrN' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrder' test.out

#- 154 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cjtxWkTq' \
    --body '{"extTxId": "INOW5qEL", "paymentMethod": "UlztabuG", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 154 'ChargePaymentOrder' test.out

#- 155 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8vhc5i0h' \
    --body '{"description": "ObkiH17w"}' \
    > test.out 2>&1
eval_tap $? 155 'RefundPaymentOrderByDedicated' test.out

#- 156 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oE6xmjQw' \
    --body '{"amount": 85, "currencyCode": "KWbi9tTD", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 23, "vat": 46}' \
    > test.out 2>&1
eval_tap $? 156 'SimulatePaymentOrderNotification' test.out

#- 157 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wtqRdDLc' \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrderChargeStatus' test.out

#- 158 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformEntitlementConfig' test.out

#- 159 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Oculus", "GooglePlay", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformEntitlementConfig' test.out

#- 160 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 160 'GetPlatformWalletConfig' test.out

#- 161 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Oculus", "GooglePlay", "System"]}' \
    > test.out 2>&1
eval_tap $? 161 'UpdatePlatformWalletConfig' test.out

#- 162 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 162 'ResetPlatformWalletConfig' test.out

#- 163 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'GetRevocationConfig' test.out

#- 164 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 164 'UpdateRevocationConfig' test.out

#- 165 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'DeleteRevocationConfig' test.out

#- 166 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'nfvVZlq0' \
    --limit '3' \
    --offset '25' \
    --source 'IAP' \
    --startTime 'lnU8CCIj' \
    --status 'FAIL' \
    --transactionId 'm2XuJDco' \
    --userId 'C8whaXuA' \
    > test.out 2>&1
eval_tap $? 166 'QueryRevocationHistories' test.out

#- 167 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'GetRevocationPluginConfig' test.out

#- 168 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "2JgsaaIv"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "6KB4y0fR"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateRevocationPluginConfig' test.out

#- 169 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'DeleteRevocationPluginConfig' test.out

#- 170 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 170 'UploadRevocationPluginConfigCert' test.out

#- 171 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dgdXpimc", "eventTopic": "PmtV0ic5", "maxAwarded": 86, "maxAwardedPerUser": 19, "namespaceExpression": "cKmahu9x", "rewardCode": "kTHWT6DN", "rewardConditions": [{"condition": "bKM4Y2OA", "conditionName": "b7MABfSv", "eventName": "lDlI0PqY", "rewardItems": [{"duration": 100, "endDate": "1999-03-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zBIVYloc", "quantity": 44, "sku": "NGZMqcXx"}, {"duration": 74, "endDate": "1989-03-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xWzRCdDo", "quantity": 79, "sku": "fboFwjeu"}, {"duration": 14, "endDate": "1975-11-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8SfTHK2a", "quantity": 29, "sku": "1btRG0Og"}]}, {"condition": "NXrTM9dI", "conditionName": "8jF5HZSU", "eventName": "EUPlHSck", "rewardItems": [{"duration": 77, "endDate": "1996-05-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sFdlw5tm", "quantity": 16, "sku": "PKjBSr8D"}, {"duration": 33, "endDate": "1997-03-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PxGTCPjq", "quantity": 62, "sku": "4xnPsU5T"}, {"duration": 68, "endDate": "1998-04-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vzUVATmL", "quantity": 77, "sku": "aANwnBha"}]}, {"condition": "TyMydX2f", "conditionName": "Ojw0uhQp", "eventName": "yHQF1nj7", "rewardItems": [{"duration": 25, "endDate": "1987-09-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AyJai2Bg", "quantity": 48, "sku": "pBiV70vX"}, {"duration": 95, "endDate": "1999-04-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "EAWg8ShH", "quantity": 11, "sku": "T5j9w2na"}, {"duration": 37, "endDate": "1996-05-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KIiMhYGA", "quantity": 17, "sku": "wv6s40zE"}]}], "userIdExpression": "ehPxhAcP"}' \
    > test.out 2>&1
eval_tap $? 171 'CreateReward' test.out

#- 172 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'HE5csZu7' \
    --limit '97' \
    --offset '74' \
    --sortBy '["namespace:asc", "rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 172 'QueryRewards' test.out

#- 173 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'ExportRewards' test.out

#- 174 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 174 'ImportRewards' test.out

#- 175 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'tWFLTczd' \
    > test.out 2>&1
eval_tap $? 175 'GetReward' test.out

#- 176 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Z4tlaZQz' \
    --body '{"description": "MT9dP0Os", "eventTopic": "Rf6o7mPA", "maxAwarded": 54, "maxAwardedPerUser": 29, "namespaceExpression": "ZUsX5ige", "rewardCode": "fpS8mQCP", "rewardConditions": [{"condition": "RKZi2lAn", "conditionName": "Dp5g01Gy", "eventName": "zNLh2zis", "rewardItems": [{"duration": 60, "endDate": "1999-07-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2XjyvNgj", "quantity": 35, "sku": "6w0NdXiU"}, {"duration": 20, "endDate": "1995-12-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wx0FDNFT", "quantity": 4, "sku": "1KnpdzuV"}, {"duration": 42, "endDate": "1994-04-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "voD0S0Z1", "quantity": 16, "sku": "cjTJdwGd"}]}, {"condition": "wr1sMhKK", "conditionName": "BQj75WWq", "eventName": "p1sCPss0", "rewardItems": [{"duration": 18, "endDate": "1972-03-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XQpKtFTz", "quantity": 75, "sku": "HFpf5Qu9"}, {"duration": 54, "endDate": "1999-01-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WtN5aZFV", "quantity": 46, "sku": "uhtkCPjd"}, {"duration": 79, "endDate": "1999-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "f7Im9km9", "quantity": 100, "sku": "sbRNPDkn"}]}, {"condition": "5tpehA1i", "conditionName": "kHmfEGyw", "eventName": "qJLvbUws", "rewardItems": [{"duration": 10, "endDate": "1992-05-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Yl2nNYGz", "quantity": 38, "sku": "XLzzXPX2"}, {"duration": 6, "endDate": "1975-01-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "o5ObXMgM", "quantity": 83, "sku": "x421CD3Z"}, {"duration": 66, "endDate": "1979-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XQS2dNnM", "quantity": 4, "sku": "KsyC7f4k"}]}], "userIdExpression": "RYhT0T9W"}' \
    > test.out 2>&1
eval_tap $? 176 'UpdateReward' test.out

#- 177 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'pe0TQzZN' \
    > test.out 2>&1
eval_tap $? 177 'DeleteReward' test.out

#- 178 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'eskq67qf' \
    --body '{"payload": {"fd6k2BKL": {}, "2DMxmgAR": {}, "SZ3F7XQj": {}}}' \
    > test.out 2>&1
eval_tap $? 178 'CheckEventCondition' test.out

#- 179 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '5ZzJWurD' \
    --body '{"conditionName": "VI8nsEPP", "userId": "O9c2iNBm"}' \
    > test.out 2>&1
eval_tap $? 179 'DeleteRewardConditionRecord' test.out

#- 180 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'nJfNFrYl' \
    --limit '36' \
    --offset '36' \
    --start 'mgzFfpRo' \
    --storeId 'St80QF0v' \
    --viewId 'wm4J3zCd' \
    > test.out 2>&1
eval_tap $? 180 'QuerySections' test.out

#- 181 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'tMGrI78d' \
    --body '{"active": false, "displayOrder": 43, "endDate": "1978-02-08T00:00:00Z", "ext": {"i1olXVeA": {}, "lXh4UbmR": {}, "ry1W980h": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 25, "itemCount": 26, "rule": "SEQUENCE"}, "items": [{"id": "xMQQqyVo", "sku": "5ETeQBfQ"}, {"id": "J2z9J8Ee", "sku": "Yhrjgv6P"}, {"id": "Tl6VbFH2", "sku": "mc2gMXrE"}], "localizations": {"efGfH2En": {"description": "Mgy1jaAk", "localExt": {"nCXyfjq9": {}, "HwLicu25": {}, "xCpr6MkG": {}}, "longDescription": "WnU6qpdE", "title": "P749QMul"}, "VmqkgyIn": {"description": "F68WEhNt", "localExt": {"J4frYDA7": {}, "d9O7qxjU": {}, "JG3kmpRd": {}}, "longDescription": "r3yZuH6P", "title": "ap4lyjBs"}, "Pix1pMDz": {"description": "7W10mZBa", "localExt": {"9jWaM2L7": {}, "09vojenx": {}, "Oi6WHBEU": {}}, "longDescription": "vA8LsKOX", "title": "PRzKhS23"}}, "name": "VFKTi9AZ", "rotationType": "NONE", "startDate": "1978-01-04T00:00:00Z", "viewId": "1FR2xqwR"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateSection' test.out

#- 182 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'UYZfoyzT' \
    > test.out 2>&1
eval_tap $? 182 'PurgeExpiredSection' test.out

#- 183 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'TvmXdnuI' \
    --storeId 'cqd2LSJu' \
    > test.out 2>&1
eval_tap $? 183 'GetSection' test.out

#- 184 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'KRidxDAK' \
    --storeId 'JgumohAs' \
    --body '{"active": true, "displayOrder": 11, "endDate": "1982-10-06T00:00:00Z", "ext": {"ahOKKoWz": {}, "s2VqW6i1": {}, "oln5A4OM": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 47, "itemCount": 1, "rule": "SEQUENCE"}, "items": [{"id": "7Nl3z6S1", "sku": "Gbs2BT1y"}, {"id": "MiNvf7Jc", "sku": "HUtwvdbn"}, {"id": "OhixrjLo", "sku": "Rkf72Xyq"}], "localizations": {"YqjExRlz": {"description": "kJZHbgOp", "localExt": {"dfjsyJYA": {}, "k4v6W4ub": {}, "MPMSYqlJ": {}}, "longDescription": "cyP8igXp", "title": "FEW0dxHV"}, "yYSAMc5O": {"description": "BD0uNt5q", "localExt": {"E77FrtDy": {}, "qJ2UrCbA": {}, "khMPm7Pz": {}}, "longDescription": "KWz1YQml", "title": "IiaH22CD"}, "jFiEDSkG": {"description": "o3OlYHZi", "localExt": {"CFS2mYSJ": {}, "2EoYZeSD": {}, "xgXm11k3": {}}, "longDescription": "IR5VeLiL", "title": "MWMC9O8a"}}, "name": "dfQ5RqAR", "rotationType": "CUSTOM", "startDate": "1975-05-28T00:00:00Z", "viewId": "m7f9TpP7"}' \
    > test.out 2>&1
eval_tap $? 184 'UpdateSection' test.out

#- 185 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'TwrOAOZG' \
    --storeId '3qjfDywm' \
    > test.out 2>&1
eval_tap $? 185 'DeleteSection' test.out

#- 186 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'ListStores' test.out

#- 187 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "95OOu3xl", "defaultRegion": "kL3rYHjL", "description": "IRj966Pw", "supportedLanguages": ["TLu71q3A", "LYw8qarz", "dIIby2ze"], "supportedRegions": ["orWclGSO", "bI5xqvFX", "26FV6OQZ"], "title": "SJyl08Er"}' \
    > test.out 2>&1
eval_tap $? 187 'CreateStore' test.out

#- 188 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
    > test.out 2>&1
eval_tap $? 188 'GetCatalogDefinition' test.out

#- 189 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 189 'DownloadCSVTemplates' test.out

#- 190 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["CjAkpHkF", "XdySUFMc", "jKF7iz8m"], "idsToBeExported": ["FjdFQoOc", "SNQlTdZ7", "uZDXpUGk"], "storeId": "pHLjidK1"}' \
    > test.out 2>&1
eval_tap $? 190 'ExportStoreByCSV' test.out

#- 191 ImportStore
eval_tap 0 191 'ImportStore # SKIP deprecated' test.out

#- 192 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStore' test.out

#- 193 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'DeletePublishedStore' test.out

#- 194 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'GetPublishedStoreBackup' test.out

#- 195 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'RollbackPublishedStore' test.out

#- 196 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'tEvGIVLm' \
    > test.out 2>&1
eval_tap $? 196 'GetStore' test.out

#- 197 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'kZ9tdXzT' \
    --body '{"defaultLanguage": "S6hVPtfY", "defaultRegion": "BDVIQv1q", "description": "VKI69jar", "supportedLanguages": ["zbf7Afrd", "o5ixg4mK", "hnSCW4y3"], "supportedRegions": ["uxSKtIYV", "Epck7lY4", "9vRU4DdT"], "title": "CCppT3lR"}' \
    > test.out 2>&1
eval_tap $? 197 'UpdateStore' test.out

#- 198 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '9M41SpfS' \
    > test.out 2>&1
eval_tap $? 198 'DeleteStore' test.out

#- 199 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'rrpOTla4' \
    --action 'DELETE' \
    --itemSku 'p53ZqVxJ' \
    --itemType 'MEDIA' \
    --limit '54' \
    --offset '20' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "updatedAt:asc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'GtpkfvqK' \
    --updatedAtStart 'Chc1KvFZ' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 199 'QueryChanges' test.out

#- 200 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '0qorYe4M' \
    > test.out 2>&1
eval_tap $? 200 'PublishAll' test.out

#- 201 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'xFUZpkBx' \
    > test.out 2>&1
eval_tap $? 201 'PublishSelected' test.out

#- 202 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Q2RAm54s' \
    > test.out 2>&1
eval_tap $? 202 'SelectAllRecords' test.out

#- 203 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '2KoBEEAb' \
    --action 'UPDATE' \
    --itemSku 'C81fuNME' \
    --itemType 'MEDIA' \
    --selected 'false' \
    --type 'CATEGORY' \
    --updatedAtEnd '1dvIFAeC' \
    --updatedAtStart 'wohwWltj' \
    > test.out 2>&1
eval_tap $? 203 'SelectAllRecordsByCriteria' test.out

#- 204 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'NFUwe1d5' \
    --action 'DELETE' \
    --itemSku 'SkCQlo55' \
    --itemType 'LOOTBOX' \
    --type 'STORE' \
    --updatedAtEnd 'MPHDb59x' \
    --updatedAtStart 'KDIsx6js' \
    > test.out 2>&1
eval_tap $? 204 'GetStatistic' test.out

#- 205 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Vf89rbtG' \
    > test.out 2>&1
eval_tap $? 205 'UnselectAllRecords' test.out

#- 206 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '9O2ZmM4w' \
    --namespace $AB_NAMESPACE \
    --storeId 'tWVOomGk' \
    > test.out 2>&1
eval_tap $? 206 'SelectRecord' test.out

#- 207 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'MXwGh2BH' \
    --namespace $AB_NAMESPACE \
    --storeId 'URDImblY' \
    > test.out 2>&1
eval_tap $? 207 'UnselectRecord' test.out

#- 208 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'GijwrPBI' \
    --targetStoreId 'mhtV7IQV' \
    > test.out 2>&1
eval_tap $? 208 'CloneStore' test.out

#- 209 ExportStore
eval_tap 0 209 'ExportStore # SKIP deprecated' test.out

#- 210 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'OVXBFJ86' \
    --end 'mV1Uhy32' \
    --limit '23' \
    --offset '81' \
    --sortBy 'GJY7wvce' \
    --start 'Ce2IKn5V' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 210 'QueryImportHistory' test.out

#- 211 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId '3fzFQc4E' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '8RnDP1JP' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 211 'ImportStoreByCSV' test.out

#- 212 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'I6qdV3Gq' \
    --limit '73' \
    --offset '43' \
    --sku '8Ks4bekb' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId '69MGagEo' \
    > test.out 2>&1
eval_tap $? 212 'QuerySubscriptions' test.out

#- 213 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'N77AZMhv' \
    > test.out 2>&1
eval_tap $? 213 'RecurringChargeSubscription' test.out

#- 214 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '3gaXIVBa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketDynamic' test.out

#- 215 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'H6BUUBlM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "NgvSmQ20"}' \
    > test.out 2>&1
eval_tap $? 215 'DecreaseTicketSale' test.out

#- 216 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'of4byYqv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 216 'GetTicketBoothID' test.out

#- 217 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'V7cl4TFy' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 33, "orderNo": "gUAwM9ED"}' \
    > test.out 2>&1
eval_tap $? 217 'IncreaseTicketSale' test.out

#- 218 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 83, "currencyCode": "d85qRQGf", "expireAt": "1985-05-20T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "ePfLhfoe", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "tzQSu5sH", "entitlementOrigin": "Oculus", "itemIdentity": "oQS79TCQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "KEuuk8My"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 7, "currencyCode": "u21YHU6E", "expireAt": "1991-11-16T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "NJ8ytSym", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "7QIpWjxD", "entitlementOrigin": "Oculus", "itemIdentity": "zSdvDnWf", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "13Tq5hfJ"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 26, "currencyCode": "E3nVcDuH", "expireAt": "1992-04-26T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "XyOwjWjg", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "MGQ8xMoo", "entitlementOrigin": "Oculus", "itemIdentity": "T4OhPWTs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "L6tJKQTg"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "j9ENa945"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 19, "currencyCode": "027MSw0G", "expireAt": "1983-01-06T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "6Gmj283A", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "XzqrYGHG", "entitlementOrigin": "Twitch", "itemIdentity": "wcvqI5IM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "fVkykgwr"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 47, "currencyCode": "2dzXGdBr", "expireAt": "1989-05-08T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "NNAslWpk", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "RSLoDKMM", "entitlementOrigin": "GooglePlay", "itemIdentity": "IOUs8Lmv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 17, "entitlementId": "YQEG7jFB"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 84, "currencyCode": "Xzkqp9Vy", "expireAt": "1995-10-24T00:00:00Z"}, "debitPayload": {"count": 40, "currencyCode": "E4wNmvcP", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 39, "entitlementCollectionId": "ioL811M1", "entitlementOrigin": "Steam", "itemIdentity": "86dFRZhp", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "p4CTWuxo"}, "type": "FULFILL_ITEM"}], "userId": "VAt9TSjf"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 11, "currencyCode": "rwqHRujj", "expireAt": "1974-11-20T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "c1Azm9xG", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 42, "entitlementCollectionId": "8wH4mC8T", "entitlementOrigin": "System", "itemIdentity": "sCjB9FK1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 77, "entitlementId": "Q0r2Y8py"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 70, "currencyCode": "Pa5DOBrO", "expireAt": "1978-12-15T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "2Wdrisl0", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "nsPSS9rE", "entitlementOrigin": "System", "itemIdentity": "BzkCMKlX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "ZDIjU52Q"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 69, "currencyCode": "TZh3FQQ1", "expireAt": "1988-07-09T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "5C8Ivl58", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "blZY3yL2", "entitlementOrigin": "Other", "itemIdentity": "9QJLlSBh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "3I8ieBAZ"}, "type": "FULFILL_ITEM"}], "userId": "PFejXOFQ"}], "metadata": {"bW4UUSjr": {}, "of7t5sGs": {}, "rmoF1hr0": {}}, "needPreCheck": true, "transactionId": "xWcCFQhp", "type": "ZegZ9RW0"}' \
    > test.out 2>&1
eval_tap $? 218 'Commit' test.out

#- 219 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '76' \
    --status 'FAILED' \
    --type 'XScJZkPc' \
    --userId '0cApVZpC' \
    > test.out 2>&1
eval_tap $? 219 'GetTradeHistoryByCriteria' test.out

#- 220 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'vD0GOXyQ' \
    > test.out 2>&1
eval_tap $? 220 'GetTradeHistoryByTransactionId' test.out

#- 221 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RCpZom4s' \
    --body '{"achievements": [{"id": "RSRfeRMQ", "value": 18}, {"id": "ZstvOh8e", "value": 90}, {"id": "B9NgsSuQ", "value": 67}], "steamUserId": "Sm6RaKFl"}' \
    > test.out 2>&1
eval_tap $? 221 'UnlockSteamUserAchievement' test.out

#- 222 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'HNFPTZyi' \
    --xboxUserId '3Nip8obd' \
    > test.out 2>&1
eval_tap $? 222 'GetXblUserAchievements' test.out

#- 223 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '0ey3IRjA' \
    --body '{"achievements": [{"id": "VeRaZLYZ", "percentComplete": 50}, {"id": "PE7MqLp8", "percentComplete": 22}, {"id": "FsfdMXcO", "percentComplete": 83}], "serviceConfigId": "tlHFRRg7", "titleId": "tWzx5DDC", "xboxUserId": "bwSwilEG"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateXblUserAchievement' test.out

#- 224 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'UWDeAZQ2' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeCampaign' test.out

#- 225 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'icpKVvvI' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeEntitlement' test.out

#- 226 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'oB8KsmeO' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeFulfillment' test.out

#- 227 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '8FeOKh87' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizeIntegration' test.out

#- 228 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'bi3bNy5R' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeOrder' test.out

#- 229 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'bxzTm6OS' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizePayment' test.out

#- 230 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'mCCKvzWB' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeRevocation' test.out

#- 231 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'VT0ZX7h7' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeSubscription' test.out

#- 232 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'EbnF51ux' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeWallet' test.out

#- 233 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Bu6SZyQr' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 233 'GetUserDLCByPlatform' test.out

#- 234 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'BbM9XtVh' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 234 'GetUserDLC' test.out

#- 235 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6lNqiCJo' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --collectionId 'qYZ8HRRC' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'esY0dao4' \
    --features '["m3yPn3jC", "IO1ZZQ9F", "ralFRLjO"]' \
    --fuzzyMatchName 'false' \
    --itemId '["UVfbTlWx", "RkhEoFk2", "90n5RM3z"]' \
    --limit '72' \
    --offset '22' \
    --origin 'Steam' \
    > test.out 2>&1
eval_tap $? 235 'QueryUserEntitlements' test.out

#- 236 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'cwyHtQDO' \
    --body '[{"collectionId": "75YMRODb", "endDate": "1996-01-16T00:00:00Z", "grantedCode": "Ns8JSMGy", "itemId": "gdM0gfkG", "itemNamespace": "mPDLTxVa", "language": "pn", "origin": "Epic", "quantity": 68, "region": "ccpsP7iA", "source": "PURCHASE", "startDate": "1989-08-13T00:00:00Z", "storeId": "1Pxap7Y3"}, {"collectionId": "NwDgs6vu", "endDate": "1982-11-06T00:00:00Z", "grantedCode": "5v5rHRsn", "itemId": "4h5DT4Xg", "itemNamespace": "rLhLNODZ", "language": "dH-MyPF_987", "origin": "Other", "quantity": 51, "region": "65DRp3bN", "source": "GIFT", "startDate": "1976-01-24T00:00:00Z", "storeId": "nthDgqhy"}, {"collectionId": "H6w7OyQW", "endDate": "1981-05-27T00:00:00Z", "grantedCode": "8xNfNReD", "itemId": "eoRbJGLq", "itemNamespace": "E9ZIHUzQ", "language": "Mxb_NiHp-iC", "origin": "Oculus", "quantity": 42, "region": "oMQfXSr1", "source": "REDEEM_CODE", "startDate": "1992-11-30T00:00:00Z", "storeId": "Ty6Nfk4w"}]' \
    > test.out 2>&1
eval_tap $? 236 'GrantUserEntitlement' test.out

#- 237 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'vzeU0uIv' \
    --activeOnly 'true' \
    --appId 'N9HwAfma' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementByAppId' test.out

#- 238 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'RuTVMk0w' \
    --activeOnly 'true' \
    --limit '82' \
    --offset '91' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 238 'QueryUserEntitlementsByAppType' test.out

#- 239 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Del05XWq' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'mio2d0tt' \
    --itemId 'FBZOYoNm' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementByItemId' test.out

#- 240 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'uRpBkQlV' \
    --ids '["OC69qIYl", "cVJph5Pb", "Jd32w79B"]' \
    --platform 'LSX8PyYQ' \
    > test.out 2>&1
eval_tap $? 240 'GetUserActiveEntitlementsByItemIds' test.out

#- 241 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xOdIIJUS' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform 'KTaTJTYU' \
    --sku 'VUlhjcQQ' \
    > test.out 2>&1
eval_tap $? 241 'GetUserEntitlementBySku' test.out

#- 242 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ebvMsXOB' \
    --appIds '["urTXyOm1", "8clXGKo1", "ntXtDojA"]' \
    --itemIds '["uyU6jHgu", "98WJzD3M", "ZOAqzdZE"]' \
    --platform 'hrpDRjxR' \
    --skus '["myXOeIQq", "KU4hUJJG", "KSC3VSJX"]' \
    > test.out 2>&1
eval_tap $? 242 'ExistsAnyUserActiveEntitlement' test.out

#- 243 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hUT2bzoS' \
    --platform 'Fcy44Sm9' \
    --itemIds '["5STdOXwH", "YpgETJ36", "FK22x25D"]' \
    > test.out 2>&1
eval_tap $? 243 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 244 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'QgqkHeiP' \
    --appId 'C5UVpBCA' \
    > test.out 2>&1
eval_tap $? 244 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 245 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9UT2XlQs' \
    --entitlementClazz 'APP' \
    --platform 't56Ee87m' \
    --itemId 'eCgmEmxF' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipByItemId' test.out

#- 246 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4Ah2ov5o' \
    --ids '["qNtKIBDa", "0KANGH4B", "DhW24oBr"]' \
    --platform 'K8QLMXDb' \
    > test.out 2>&1
eval_tap $? 246 'GetUserEntitlementOwnershipByItemIds' test.out

#- 247 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'V5GSl7SG' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'RKxSj2BB' \
    --sku 'C5wP9o9b' \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementOwnershipBySku' test.out

#- 248 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HjVVh5sq' \
    > test.out 2>&1
eval_tap $? 248 'RevokeAllEntitlements' test.out

#- 249 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'BSl59fxC' \
    --entitlementIds 'GXtb0hoq' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlements' test.out

#- 250 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'NiEDeRa6' \
    --namespace $AB_NAMESPACE \
    --userId 'kHqFEvp2' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlement' test.out

#- 251 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '7srK3I7S' \
    --namespace $AB_NAMESPACE \
    --userId '4Zhb5kSU' \
    --body '{"collectionId": "xMiZNVL3", "endDate": "1983-12-03T00:00:00Z", "nullFieldList": ["zKYRQ1dA", "5GSTe6Zg", "tlCVYBUK"], "origin": "Xbox", "reason": "oA45NXDe", "startDate": "1989-04-17T00:00:00Z", "status": "REVOKED", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 251 'UpdateUserEntitlement' test.out

#- 252 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'HBuumfvu' \
    --namespace $AB_NAMESPACE \
    --userId 'UvA3xtQT' \
    --body '{"options": ["xJw10gFa", "z2FX0I5a", "r9a6orWe"], "platform": "NtTtpVYp", "requestId": "4jjxubT1", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 252 'ConsumeUserEntitlement' test.out

#- 253 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'DrmFZBuJ' \
    --namespace $AB_NAMESPACE \
    --userId 'hFHhk6Tw' \
    > test.out 2>&1
eval_tap $? 253 'DisableUserEntitlement' test.out

#- 254 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'arzsxghW' \
    --namespace $AB_NAMESPACE \
    --userId 'vUQdKVsC' \
    > test.out 2>&1
eval_tap $? 254 'EnableUserEntitlement' test.out

#- 255 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'NZNjQ7BD' \
    --namespace $AB_NAMESPACE \
    --userId 'XM83ZCnp' \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementHistories' test.out

#- 256 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'VeyujjwE' \
    --namespace $AB_NAMESPACE \
    --userId 'SSCzvnF9' \
    > test.out 2>&1
eval_tap $? 256 'RevokeUserEntitlement' test.out

#- 257 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'Lzdd84Ri' \
    --namespace $AB_NAMESPACE \
    --userId 'wJU74o6u' \
    --body '{"reason": "Iz4yu77e", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 257 'RevokeUserEntitlementByUseCount' test.out

#- 258 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'wBKwCZCl' \
    --namespace $AB_NAMESPACE \
    --userId 'Q5voOnLe' \
    --quantity '52' \
    > test.out 2>&1
eval_tap $? 258 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 259 RevokeUseCount
eval_tap 0 259 'RevokeUseCount # SKIP deprecated' test.out

#- 260 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'QE3fHh6T' \
    --namespace $AB_NAMESPACE \
    --userId '8M4HaTvl' \
    --body '{"platform": "j8mMyrhB", "requestId": "U4srdfS5", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 260 'SellUserEntitlement' test.out

#- 261 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'X1wJme5L' \
    --body '{"duration": 27, "endDate": "1981-02-09T00:00:00Z", "entitlementCollectionId": "VmA1wIXL", "entitlementOrigin": "Nintendo", "itemId": "0eNG8Hk5", "itemSku": "wcV2tugs", "language": "Nv86FpC0", "metadata": {"v6t4oXh6": {}, "8qr4fNiA": {}, "J17Yfaeu": {}}, "order": {"currency": {"currencyCode": "2sCoMd8k", "currencySymbol": "MmqvJafz", "currencyType": "REAL", "decimals": 20, "namespace": "XysAat7v"}, "ext": {"cLYjCF8s": {}, "4raxj6tR": {}, "HNCfIClF": {}}, "free": false}, "orderNo": "dCOomZ0b", "origin": "IOS", "overrideBundleItemQty": {"8FQlEjxo": 86, "fykgje6L": 77, "4cC7KFr2": 49}, "quantity": 73, "region": "o3f451g0", "source": "GIFT", "startDate": "1974-04-17T00:00:00Z", "storeId": "SSils9sr"}' \
    > test.out 2>&1
eval_tap $? 261 'FulfillItem' test.out

#- 262 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'W2hJQoVG' \
    --body '{"code": "RBNc6Wd2", "language": "APPg-YS", "region": "twtYIqav"}' \
    > test.out 2>&1
eval_tap $? 262 'RedeemCode' test.out

#- 263 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Js60yDk1' \
    --body '{"itemId": "shpQkODB", "itemSku": "0FdV8Zgh", "quantity": 18}' \
    > test.out 2>&1
eval_tap $? 263 'PreCheckFulfillItem' test.out

#- 264 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'pBth0yM5' \
    --body '{"entitlementCollectionId": "2MhXQP9k", "entitlementOrigin": "System", "metadata": {"wLBswHsG": {}, "cHHG0AYg": {}, "LnKD1VEC": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "7l58VBzl", "namespace": "JxNX2Jyw"}, "item": {"itemId": "Otko9vOi", "itemSku": "DYEqiXbt", "itemType": "b5ZBWfZd"}, "quantity": 22, "type": "CURRENCY"}, {"currency": {"currencyCode": "aAjG6W6P", "namespace": "HCRM16WU"}, "item": {"itemId": "0KaihOSZ", "itemSku": "Tj7eaLG0", "itemType": "cSa83Vf1"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "XRH3ZBAY", "namespace": "gymNRWTT"}, "item": {"itemId": "W7uX5K3h", "itemSku": "nmATwyQk", "itemType": "04hJklNR"}, "quantity": 18, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "d7b41uSu"}' \
    > test.out 2>&1
eval_tap $? 264 'FulfillRewards' test.out

#- 265 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'O1ICLka3' \
    --endTime 'eSwpZBFP' \
    --limit '47' \
    --offset '86' \
    --productId 'TbjnPWl4' \
    --startTime 'bRwlHKcW' \
    --status 'VERIFIED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPOrders' test.out

#- 266 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5Zu3OlPe' \
    > test.out 2>&1
eval_tap $? 266 'QueryAllUserIAPOrders' test.out

#- 267 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'q9P1sBYz' \
    --endTime 'p9FVJWqA' \
    --limit '100' \
    --offset '17' \
    --startTime 'PxympMyX' \
    --status 'SUCCESS' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserIAPConsumeHistory' test.out

#- 268 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xdfVJQ0S' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "JQs", "productId": "3r1oM4ha", "region": "QsGz4M82", "transactionId": "sFzeODCK", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 268 'MockFulfillIAPItem' test.out

#- 269 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mWIgb9zJ' \
    --discounted 'false' \
    --itemId '8LXIgxsm' \
    --limit '8' \
    --offset '25' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserOrders' test.out

#- 270 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'sGhsSQBb' \
    --body '{"currencyCode": "YE1fzhwo", "currencyNamespace": "M1tPhDpb", "discountCodes": ["TAA4pd65", "a8qXTiov", "JSHqjTae"], "discountedPrice": 2, "entitlementPlatform": "Nintendo", "ext": {"6pXr3pgp": {}, "QejxEbV7": {}, "U6cMv7Lw": {}}, "itemId": "Q1oE5SxV", "language": "jmBeBu5P", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 97, "quantity": 37, "region": "D92LRwrP", "returnUrl": "CLthTsgg", "sandbox": false, "sectionId": "qiLsARS5"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateUserOrder' test.out

#- 271 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZfppDkhu' \
    --itemId 'd9jcUlaa' \
    > test.out 2>&1
eval_tap $? 271 'CountOfPurchasedItem' test.out

#- 272 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 's8KI2bgI' \
    --userId 'LsF9Et9n' \
    > test.out 2>&1
eval_tap $? 272 'GetUserOrder' test.out

#- 273 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '9T3KebGX' \
    --userId 'rkvHkoJJ' \
    --body '{"status": "REFUND_FAILED", "statusReason": "7dnwrZVC"}' \
    > test.out 2>&1
eval_tap $? 273 'UpdateUserOrderStatus' test.out

#- 274 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'w3A7CuPA' \
    --userId 'x4E4wxYo' \
    > test.out 2>&1
eval_tap $? 274 'FulfillUserOrder' test.out

#- 275 GetUserOrderGrant
eval_tap 0 275 'GetUserOrderGrant # SKIP deprecated' test.out

#- 276 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'WdyLaRb9' \
    --userId 'JTOTzEJH' \
    > test.out 2>&1
eval_tap $? 276 'GetUserOrderHistories' test.out

#- 277 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '0OdcZKWv' \
    --userId 'NtPYQFit' \
    --body '{"additionalData": {"cardSummary": "ZFnZdZSN"}, "authorisedTime": "1985-10-27T00:00:00Z", "chargebackReversedTime": "1994-03-25T00:00:00Z", "chargebackTime": "1996-09-19T00:00:00Z", "chargedTime": "1991-06-10T00:00:00Z", "createdTime": "1971-02-15T00:00:00Z", "currency": {"currencyCode": "RGKYcf3n", "currencySymbol": "1x9LhKG9", "currencyType": "REAL", "decimals": 39, "namespace": "HwStW4rd"}, "customParameters": {"8gQZLQ4z": {}, "AFqQ6768": {}, "iphwQKHW": {}}, "extOrderNo": "mey3pfyZ", "extTxId": "NgPfLyyH", "extUserId": "LQo8XQwL", "issuedAt": "1992-10-26T00:00:00Z", "metadata": {"RpKkB5lt": "mCuKeh3x", "bofx9amc": "Q43tPNaZ", "4USSHpIg": "k60V6S3U"}, "namespace": "WjkZ56Jj", "nonceStr": "xhxxe0db", "paymentMethod": "Eeo9vVVz", "paymentMethodFee": 94, "paymentOrderNo": "B00U2NSR", "paymentProvider": "ALIPAY", "paymentProviderFee": 44, "paymentStationUrl": "etwW2HNz", "price": 50, "refundedTime": "1992-06-19T00:00:00Z", "salesTax": 87, "sandbox": true, "sku": "iJ0PH2UN", "status": "REFUNDING", "statusReason": "PH3JnZfv", "subscriptionId": "dCyxVLFB", "subtotalPrice": 9, "targetNamespace": "STaw6LTU", "targetUserId": "v9vNqzKL", "tax": 60, "totalPrice": 79, "totalTax": 39, "txEndTime": "1975-11-21T00:00:00Z", "type": "uNmis5fs", "userId": "uRrdvBrs", "vat": 4}' \
    > test.out 2>&1
eval_tap $? 277 'ProcessUserOrderNotification' test.out

#- 278 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'J673qpJj' \
    --userId 'cabXdQyo' \
    > test.out 2>&1
eval_tap $? 278 'DownloadUserOrderReceipt' test.out

#- 279 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'pGyxffZe' \
    --body '{"currencyCode": "fdO5AIqj", "currencyNamespace": "JWbIQP4A", "customParameters": {"1q8tZgoD": {}, "sMeR3k2Q": {}, "1dOFmyqz": {}}, "description": "DNrC1PDv", "extOrderNo": "D878G4XB", "extUserId": "zQKfaoWx", "itemType": "SEASON", "language": "tSN_SnTT", "metadata": {"v0PmXggy": "y4CN8Vs4", "OK5uZVr3": "qZap6Xrf", "gfozDhhs": "dgbANXZP"}, "notifyUrl": "8n4p2B2f", "omitNotification": true, "platform": "6kd6osNc", "price": 9, "recurringPaymentOrderNo": "8okHPAZi", "region": "48wkWzu3", "returnUrl": "Paq7WGDA", "sandbox": true, "sku": "5cWIz2xF", "subscriptionId": "xLYBczWz", "title": "N7osPqRI"}' \
    > test.out 2>&1
eval_tap $? 279 'CreateUserPaymentOrder' test.out

#- 280 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ibN9ofwM' \
    --userId 'LU243HzH' \
    --body '{"description": "JaL4HrkF"}' \
    > test.out 2>&1
eval_tap $? 280 'RefundUserPaymentOrder' test.out

#- 281 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'sdyckiI6' \
    --body '{"code": "1qMfLEBq", "orderNo": "8QuEDz4j"}' \
    > test.out 2>&1
eval_tap $? 281 'ApplyUserRedemption' test.out

#- 282 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'IjMMnKPn' \
    --body '{"meta": {"J8z5l7EI": {}, "ghYWxQ9i": {}, "CqUuCI07": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "gU2Wlva2", "namespace": "GMkLwiMQ"}, "entitlement": {"entitlementId": "foqRjXZT"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "uXnoD7AF", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 53, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "j84GkCoK", "namespace": "Z3DMQhvL"}, "entitlement": {"entitlementId": "2raonyij"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "i1o7abXf", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 85, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "j7rBcmeI", "namespace": "x06cJC1f"}, "entitlement": {"entitlementId": "OoQ2U7w4"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "N5gQn0Nt", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 97, "type": "ITEM"}], "source": "DLC", "transactionId": "UORIHKxj"}' \
    > test.out 2>&1
eval_tap $? 282 'DoRevocation' test.out

#- 283 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'beT43nrj' \
    --body '{"gameSessionId": "uXS4KZUg", "payload": {"2JckkFVZ": {}, "nxqneisS": {}, "XVcF8xsG": {}}, "scid": "CPJa2YlN", "sessionTemplateName": "CE3iJYwF"}' \
    > test.out 2>&1
eval_tap $? 283 'RegisterXblSessions' test.out

#- 284 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'YRKNuOh9' \
    --chargeStatus 'CHARGED' \
    --itemId 'hAMlrhBq' \
    --limit '44' \
    --offset '86' \
    --sku 'C30MOffg' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserSubscriptions' test.out

#- 285 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'KnpdRTR1' \
    --excludeSystem 'true' \
    --limit '97' \
    --offset '56' \
    --subscriptionId 'rLcNjPyr' \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionActivities' test.out

#- 286 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2mXYmiPe' \
    --body '{"grantDays": 45, "itemId": "0F8tiOHv", "language": "siA6w99j", "reason": "1fy5q0HH", "region": "3YBLFU71", "source": "kPg5c4Ky"}' \
    > test.out 2>&1
eval_tap $? 286 'PlatformSubscribeSubscription' test.out

#- 287 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'v2UskKlJ' \
    --itemId 'E3NQGmyM' \
    > test.out 2>&1
eval_tap $? 287 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 288 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2u6XXKHI' \
    --userId 'AzxcPcVM' \
    > test.out 2>&1
eval_tap $? 288 'GetUserSubscription' test.out

#- 289 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dovnEgGv' \
    --userId 'ow3wjcff' \
    > test.out 2>&1
eval_tap $? 289 'DeleteUserSubscription' test.out

#- 290 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0GnSitI0' \
    --userId 'pFHa6zSX' \
    --force 'true' \
    --body '{"immediate": false, "reason": "o5Km0bzy"}' \
    > test.out 2>&1
eval_tap $? 290 'CancelSubscription' test.out

#- 291 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'E6xfR7pd' \
    --userId 'BQbEJdMN' \
    --body '{"grantDays": 84, "reason": "gdVSxeOQ"}' \
    > test.out 2>&1
eval_tap $? 291 'GrantDaysToSubscription' test.out

#- 292 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RbB9URHj' \
    --userId 'qLtrJBCq' \
    --excludeFree 'true' \
    --limit '64' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 292 'GetUserSubscriptionBillingHistories' test.out

#- 293 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'azGOv1T9' \
    --userId 'tMUKSIt1' \
    --body '{"additionalData": {"cardSummary": "nzKtS3cW"}, "authorisedTime": "1993-02-16T00:00:00Z", "chargebackReversedTime": "1995-03-05T00:00:00Z", "chargebackTime": "1973-01-30T00:00:00Z", "chargedTime": "1994-02-05T00:00:00Z", "createdTime": "1994-10-20T00:00:00Z", "currency": {"currencyCode": "evsHxjQu", "currencySymbol": "obJKN0xa", "currencyType": "REAL", "decimals": 39, "namespace": "EVW9I6dJ"}, "customParameters": {"VkEXD1vh": {}, "sTPEaLVH": {}, "8lKB4Pgx": {}}, "extOrderNo": "6fN18OwK", "extTxId": "XISB2cAs", "extUserId": "wSm11mms", "issuedAt": "1979-07-07T00:00:00Z", "metadata": {"CU1PhHIe": "Hfwfhy1Z", "1bpmoJY6": "MANS2m45", "BLc4bttY": "QlGX9CW5"}, "namespace": "C8rLtWXI", "nonceStr": "AN9x6qty", "paymentMethod": "dzk71fGh", "paymentMethodFee": 92, "paymentOrderNo": "M9v4oICP", "paymentProvider": "WALLET", "paymentProviderFee": 17, "paymentStationUrl": "1P7y14S2", "price": 100, "refundedTime": "1992-02-06T00:00:00Z", "salesTax": 33, "sandbox": false, "sku": "dcSQ9t89", "status": "CHARGEBACK_REVERSED", "statusReason": "ENgQXpFz", "subscriptionId": "dyslr0sv", "subtotalPrice": 28, "targetNamespace": "VqY1Z8TZ", "targetUserId": "5Umbc8oV", "tax": 99, "totalPrice": 83, "totalTax": 39, "txEndTime": "1997-02-28T00:00:00Z", "type": "Mdj0SNDU", "userId": "FegVj4qV", "vat": 26}' \
    > test.out 2>&1
eval_tap $? 293 'ProcessUserSubscriptionNotification' test.out

#- 294 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'uUcGkNeb' \
    --namespace $AB_NAMESPACE \
    --userId 'DiQ3c2QE' \
    --body '{"count": 83, "orderNo": "tkjcHRIK"}' \
    > test.out 2>&1
eval_tap $? 294 'AcquireUserTicket' test.out

#- 295 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'MGKqq8gu' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserCurrencyWallets' test.out

#- 296 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '9Rkbr2Gg' \
    --namespace $AB_NAMESPACE \
    --userId '9XFFFIiM' \
    --body '{"allowOverdraft": false, "amount": 77, "balanceOrigin": "IOS", "balanceSource": "IAP_REVOCATION", "metadata": {"Pb7j5ARR": {}, "AdAunodb": {}, "xtAYsgwZ": {}}, "reason": "jl53wDDS"}' \
    > test.out 2>&1
eval_tap $? 296 'DebitUserWalletByCurrencyCode' test.out

#- 297 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'bdIxM6O7' \
    --namespace $AB_NAMESPACE \
    --userId 'z3N9R2aT' \
    --limit '19' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 297 'ListUserCurrencyTransactions' test.out

#- 298 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'zcU9TIJu' \
    --namespace $AB_NAMESPACE \
    --userId 'nduMKmxE' \
    --request '{"amount": 54, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"W91ax6Xa": {}, "pPlh3vrK": {}, "DVHZObfD": {}}, "reason": "e4SolX6M", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 298 'CheckBalance' test.out

#- 299 CheckWallet
eval_tap 0 299 'CheckWallet # SKIP deprecated' test.out

#- 300 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'tX9CMM23' \
    --namespace $AB_NAMESPACE \
    --userId 'e8WaZDlX' \
    --body '{"amount": 36, "expireAt": "1971-12-03T00:00:00Z", "metadata": {"gtQt29Io": {}, "q4tBiYui": {}, "RTE4sqYE": {}}, "origin": "Steam", "reason": "HBeHDE8j", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 300 'CreditUserWallet' test.out

#- 301 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'P53mGaus' \
    --namespace $AB_NAMESPACE \
    --userId 'P9503s1q' \
    --request '{"amount": 96, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"X1yKwmA8": {}, "sCcxQ0jm": {}, "XUCkQaK9": {}}, "reason": "aGUEshni", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 301 'DebitByWalletPlatform' test.out

#- 302 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'mry9X8z6' \
    --namespace $AB_NAMESPACE \
    --userId 'Yk19vihm' \
    --body '{"amount": 37, "metadata": {"Jicb6F76": {}, "vlDeBHs6": {}, "hcHEwuWm": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 302 'PayWithUserWallet' test.out

#- 303 GetUserWallet
eval_tap 0 303 'GetUserWallet # SKIP deprecated' test.out

#- 304 DebitUserWallet
eval_tap 0 304 'DebitUserWallet # SKIP deprecated' test.out

#- 305 DisableUserWallet
eval_tap 0 305 'DisableUserWallet # SKIP deprecated' test.out

#- 306 EnableUserWallet
eval_tap 0 306 'EnableUserWallet # SKIP deprecated' test.out

#- 307 ListUserWalletTransactions
eval_tap 0 307 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 308 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'BitzlqFC' \
    > test.out 2>&1
eval_tap $? 308 'ListViews' test.out

#- 309 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'G7fP83ql' \
    --body '{"displayOrder": 13, "localizations": {"afgOzMup": {"description": "t4VGNqkW", "localExt": {"BnTIg26S": {}, "nQ66zpOT": {}, "3Ag9kMNy": {}}, "longDescription": "VMX36oJe", "title": "NoeBnXBb"}, "mzJSaNFF": {"description": "tPFyWHIv", "localExt": {"ayQz5ysz": {}, "VAN5pxPJ": {}, "erkxz40X": {}}, "longDescription": "pL3I01ec", "title": "iNFJQERn"}, "IMeX9zEQ": {"description": "Q0VWGwcm", "localExt": {"0Li9HAmo": {}, "fBTDJCsv": {}, "Ba9BUTXP": {}}, "longDescription": "StX21Omv", "title": "UU3u5fUm"}}, "name": "GrVCKu5O"}' \
    > test.out 2>&1
eval_tap $? 309 'CreateView' test.out

#- 310 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'kf11GAsA' \
    --storeId 'qh0mlTeI' \
    > test.out 2>&1
eval_tap $? 310 'GetView' test.out

#- 311 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'XD5MhK5V' \
    --storeId 'mvfyuqt3' \
    --body '{"displayOrder": 76, "localizations": {"ZKYEaJ5Y": {"description": "Cvv81bn0", "localExt": {"ZzcHbXml": {}, "ZzEW2Lsb": {}, "c7a1M0c2": {}}, "longDescription": "vDRre5qY", "title": "NnC9AFyZ"}, "IXBQ4scD": {"description": "7RHwDZ2P", "localExt": {"Dc4QwOBC": {}, "kwdVAPIW": {}, "a0BcBCHM": {}}, "longDescription": "wVu9YpoM", "title": "igmY0uzh"}, "71JzmFM2": {"description": "0CQ5hSun", "localExt": {"v4BStYmV": {}, "EHV2NNTA": {}, "6dNPWk5G": {}}, "longDescription": "Bbck5TI1", "title": "pbeWu9Pm"}}, "name": "NtWIekMG"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateView' test.out

#- 312 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'B0UIzVlx' \
    --storeId 'kgp6hSNG' \
    > test.out 2>&1
eval_tap $? 312 'DeleteView' test.out

#- 313 QueryWallets
eval_tap 0 313 'QueryWallets # SKIP deprecated' test.out

#- 314 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 62, "expireAt": "1986-03-09T00:00:00Z", "metadata": {"oWq2uI3J": {}, "hU9GRWnh": {}, "Moup6OIQ": {}}, "origin": "Xbox", "reason": "gY3ygfgP", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "8bMcZ685", "userIds": ["Qpo5BWWT", "EprxjH59", "Pu3gLtmD"]}, {"creditRequest": {"amount": 97, "expireAt": "1995-06-07T00:00:00Z", "metadata": {"Iegc3jQn": {}, "y821iKn8": {}, "Blw5Pqso": {}}, "origin": "Twitch", "reason": "n8BER5QF", "source": "IAP"}, "currencyCode": "tuBGX7BF", "userIds": ["Hr17lGgy", "vb6BKDUP", "WHktVZR9"]}, {"creditRequest": {"amount": 33, "expireAt": "1977-08-23T00:00:00Z", "metadata": {"TEhFoyMp": {}, "KIIcuCtj": {}, "ye5yuZVn": {}}, "origin": "GooglePlay", "reason": "QT1qznsv", "source": "TRADE"}, "currencyCode": "rGZtQnlW", "userIds": ["HvGlULjQ", "UyE8ZCTn", "2tymM844"]}]' \
    > test.out 2>&1
eval_tap $? 314 'BulkCredit' test.out

#- 315 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "T9SBcXaY", "request": {"allowOverdraft": true, "amount": 76, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"jPsTViI3": {}, "I89jKZVA": {}, "G4vBy3AM": {}}, "reason": "PzO1EjUi"}, "userIds": ["rQBlFpyg", "LXnDjguA", "msFstLO9"]}, {"currencyCode": "L5J0aVGx", "request": {"allowOverdraft": true, "amount": 49, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"ZCdig5vO": {}, "y1FjMTEs": {}, "ChKGwdbD": {}}, "reason": "n32zmbhq"}, "userIds": ["g9kSsXpW", "4QJH3qv3", "LypqJcJT"]}, {"currencyCode": "h45sa84W", "request": {"allowOverdraft": false, "amount": 90, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"zVaHLyKt": {}, "CjaJ6nKF": {}, "lNFVUvpP": {}}, "reason": "dwJKA2vM"}, "userIds": ["B2pNpAkK", "TxIxqGWt", "tvN7lEGK"]}]' \
    > test.out 2>&1
eval_tap $? 315 'BulkDebit' test.out

#- 316 GetWallet
eval_tap 0 316 'GetWallet # SKIP deprecated' test.out

#- 317 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'NI0zN5Um' \
    --end '1BX7bCzs' \
    --start 'osPPDOuZ' \
    > test.out 2>&1
eval_tap $? 317 'SyncOrders' test.out

#- 318 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["MrvZYR1C", "Pen9Ogqk", "ygV7qhK7"], "apiKey": "ukmPkPDu", "authoriseAsCapture": true, "blockedPaymentMethods": ["xQem8cm3", "ojKC0FkZ", "advjjAcn"], "clientKey": "Llb1px3n", "dropInSettings": "Qr67J8jw", "liveEndpointUrlPrefix": "XCgiUBbt", "merchantAccount": "Z85u35Dp", "notificationHmacKey": "8kca4cue", "notificationPassword": "EYiE0fE4", "notificationUsername": "kw6gzhoh", "returnUrl": "d8NwN36u", "settings": "xBdhKEYU"}' \
    > test.out 2>&1
eval_tap $? 318 'TestAdyenConfig' test.out

#- 319 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "fcIyaJZE", "privateKey": "TzAti3vt", "publicKey": "vdaoLEwD", "returnUrl": "T7Uia5kN"}' \
    > test.out 2>&1
eval_tap $? 319 'TestAliPayConfig' test.out

#- 320 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "4a7pk1SU", "secretKey": "dPOjcvew"}' \
    > test.out 2>&1
eval_tap $? 320 'TestCheckoutConfig' test.out

#- 321 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'TsfxYNna' \
    --region 'CKDqqpx7' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentMerchantConfig' test.out

#- 322 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "6pdsUm17", "clientSecret": "0QitubfY", "returnUrl": "o1nsRXrB", "webHookId": "jhfNNz0Q"}' \
    > test.out 2>&1
eval_tap $? 322 'TestPayPalConfig' test.out

#- 323 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["wFSjBoNV", "VdkuwWdd", "4rLwa8HX"], "publishableKey": "KFktDCXl", "secretKey": "cOYYc4oM", "webhookSecret": "mQO04PBq"}' \
    > test.out 2>&1
eval_tap $? 323 'TestStripeConfig' test.out

#- 324 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "BHDSxnEJ", "key": "zz4h9HTq", "mchid": "8hB1Yf1u", "returnUrl": "lcUdt2BL"}' \
    > test.out 2>&1
eval_tap $? 324 'TestWxPayConfig' test.out

#- 325 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "CbzLz7MT", "flowCompletionUrl": "n8KpMMig", "merchantId": 40, "projectId": 25, "projectSecretKey": "H8cbPYEr"}' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfig' test.out

#- 326 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'W2JRWSE8' \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentMerchantConfig' test.out

#- 327 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ZAJQDP5S' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["TlsocPgs", "gzvpfLjj", "PWi1ogzq"], "apiKey": "EXNmTjGz", "authoriseAsCapture": false, "blockedPaymentMethods": ["pdneXhcA", "ydqoLINR", "Rk9oo6c2"], "clientKey": "iMN6JRFV", "dropInSettings": "ucpy09KR", "liveEndpointUrlPrefix": "vDYRzllL", "merchantAccount": "MHUyHhKH", "notificationHmacKey": "CoznN9yo", "notificationPassword": "Q3Axgy6C", "notificationUsername": "D22xCxtH", "returnUrl": "EPXuWgHv", "settings": "Tg1nldCB"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAdyenConfig' test.out

#- 328 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'NcpGxmZB' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 328 'TestAdyenConfigById' test.out

#- 329 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '6B4e9bfC' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "PTPH2s0y", "privateKey": "irD9LrGA", "publicKey": "clCBHxuI", "returnUrl": "qmo764at"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateAliPayConfig' test.out

#- 330 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'hQD0GxyD' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestAliPayConfigById' test.out

#- 331 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'EorGloTz' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "SqQkoJyu", "secretKey": "UGOuKE6p"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdateCheckoutConfig' test.out

#- 332 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'QSsf8fIn' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestCheckoutConfigById' test.out

#- 333 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'FOLEu6Qn' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "sP7EYFzj", "clientSecret": "5MUPFuhf", "returnUrl": "P8kOrjRO", "webHookId": "PqbMzUHl"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdatePayPalConfig' test.out

#- 334 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'a6x6fCP7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 334 'TestPayPalConfigById' test.out

#- 335 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'jkOJkroc' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["CmjVZLQS", "mHaiEJ1j", "bHGUf59S"], "publishableKey": "ddfmgr6j", "secretKey": "XY3ssmXF", "webhookSecret": "finV4f14"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateStripeConfig' test.out

#- 336 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'faKOEJLV' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 336 'TestStripeConfigById' test.out

#- 337 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '9GJNW47p' \
    --validate 'true' \
    --body '{"appId": "0zbYzDKt", "key": "vhS1pH1I", "mchid": "60BW7laE", "returnUrl": "pxYIo0U9"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateWxPayConfig' test.out

#- 338 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'Es5JSCRO' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 338 'UpdateWxPayConfigCert' test.out

#- 339 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'PoA6wBjn' \
    > test.out 2>&1
eval_tap $? 339 'TestWxPayConfigById' test.out

#- 340 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ivKMNUVp' \
    --validate 'true' \
    --body '{"apiKey": "tzq3aIMI", "flowCompletionUrl": "vTjKTUzw", "merchantId": 85, "projectId": 43, "projectSecretKey": "BTK6mShK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaConfig' test.out

#- 341 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'C9Qd1oEo' \
    > test.out 2>&1
eval_tap $? 341 'TestXsollaConfigById' test.out

#- 342 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'AlgLWwfR' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 342 'UpdateXsollaUIConfig' test.out

#- 343 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '15' \
    --namespace '38GbRuQ2' \
    --offset '48' \
    --region 'PXS6pl7o' \
    > test.out 2>&1
eval_tap $? 343 'QueryPaymentProviderConfig' test.out

#- 344 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "a0y7ojOE", "region": "FGcPWKH8", "sandboxTaxJarApiToken": "gmSLIAwo", "specials": ["STRIPE", "WALLET", "WALLET"], "taxJarApiToken": "yUBqacYR", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 344 'CreatePaymentProviderConfig' test.out

#- 345 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetAggregatePaymentProviders' test.out

#- 346 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'pfo2ktbJ' \
    --region 'V21OFKZk' \
    > test.out 2>&1
eval_tap $? 346 'DebugMatchedPaymentProviderConfig' test.out

#- 347 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 347 'GetSpecialPaymentProviders' test.out

#- 348 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'z3h76DeU' \
    --body '{"aggregate": "XSOLLA", "namespace": "sUmArJud", "region": "5YYADmmn", "sandboxTaxJarApiToken": "vPVGmkUU", "specials": ["WXPAY", "ADYEN", "XSOLLA"], "taxJarApiToken": "zIezKvbE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 348 'UpdatePaymentProviderConfig' test.out

#- 349 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'cctIGAqn' \
    > test.out 2>&1
eval_tap $? 349 'DeletePaymentProviderConfig' test.out

#- 350 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentTaxConfig' test.out

#- 351 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "IJlHhRUP", "taxJarApiToken": "Sz6KDz6l", "taxJarEnabled": false, "taxJarProductCodesMapping": {"2CQfCmLZ": "XTySdkGo", "3g2b7TXF": "CWz50xGK", "BcvTE8fi": "XttGoi4F"}}' \
    > test.out 2>&1
eval_tap $? 351 'UpdatePaymentTaxConfig' test.out

#- 352 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'H1zCyjG3' \
    --end 'imnzGgrJ' \
    --start '8WgVVYZd' \
    > test.out 2>&1
eval_tap $? 352 'SyncPaymentOrders' test.out

#- 353 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'T17M5K6y' \
    --storeId 'NI2FK5UK' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetRootCategories' test.out

#- 354 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'YWDcTPeG' \
    --storeId 'ZuVZeEoU' \
    > test.out 2>&1
eval_tap $? 354 'DownloadCategories' test.out

#- 355 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '05XCSgSc' \
    --namespace $AB_NAMESPACE \
    --language 'zvQkgT62' \
    --storeId 'k3Wpk3oQ' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetCategory' test.out

#- 356 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'XfWgbXVp' \
    --namespace $AB_NAMESPACE \
    --language '8hySoKFI' \
    --storeId 'EPcCAVfU' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetChildCategories' test.out

#- 357 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '5bRFUCwJ' \
    --namespace $AB_NAMESPACE \
    --language 'xdsOYbYx' \
    --storeId 'fC4SqD5H' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetDescendantCategories' test.out

#- 358 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 358 'PublicListCurrencies' test.out

#- 359 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 359 'GeDLCDurableRewardShortMap' test.out

#- 360 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 360 'GetIAPItemMapping' test.out

#- 361 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'eOjcwe1r' \
    --region '6dREQUZN' \
    --storeId 'RV1BNVGG' \
    --appId 'gk0hTnbW' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemByAppId' test.out

#- 362 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'A06yKci8' \
    --categoryPath 'WMW5JF2d' \
    --features 'kGBOvdWW' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 'WqGx5jCr' \
    --limit '27' \
    --offset '41' \
    --region 'sakeUSpg' \
    --sortBy '["createdAt:asc", "createdAt:desc", "displayOrder:desc"]' \
    --storeId 'NqkA30kb' \
    --tags 'nH1JHgoZ' \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryItems' test.out

#- 363 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'zCvHBgjL' \
    --region '8SYkXKwk' \
    --storeId '0pZ70ZB2' \
    --sku 'OcXo4whT' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItemBySku' test.out

#- 364 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'wECPhXC8' \
    --storeId 'o4epmWWw' \
    --itemIds 'RJtgxZs2' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetEstimatedPrice' test.out

#- 365 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'uViinPYk' \
    --region 'ucw9PV7F' \
    --storeId '25mSWavR' \
    --itemIds 'INeVz4X5' \
    > test.out 2>&1
eval_tap $? 365 'PublicBulkGetItems' test.out

#- 366 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Z9OU1Gl6", "03iqeVlJ", "LkJF3PRW"]}' \
    > test.out 2>&1
eval_tap $? 366 'PublicValidateItemPurchaseCondition' test.out

#- 367 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'OPTIONBOX' \
    --limit '0' \
    --offset '24' \
    --region 'rrpxrOS8' \
    --storeId 'i7wbUKiK' \
    --keyword 'ZGDOBwPM' \
    --language 'BVOvbcCX' \
    > test.out 2>&1
eval_tap $? 367 'PublicSearchItems' test.out

#- 368 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '6jtdFl0b' \
    --namespace $AB_NAMESPACE \
    --language 'r0ZD8diS' \
    --region 'ZhrPDI2p' \
    --storeId 'cQrGZcTc' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetApp' test.out

#- 369 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '11cxMRyu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 369 'PublicGetItemDynamicData' test.out

#- 370 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 's40lW9SC' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'pVhLpAgD' \
    --populateBundle 'false' \
    --region 'xgeCdPEf' \
    --storeId '6mvFr3qD' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetItem' test.out

#- 371 GetPaymentCustomization
eval_tap 0 371 'GetPaymentCustomization # SKIP deprecated' test.out

#- 372 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "DkDDMN7C", "paymentProvider": "ALIPAY", "returnUrl": "kiZs7kHY", "ui": "GoSIbvkU", "zipCode": "aqhoxK7l"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetPaymentUrl' test.out

#- 373 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ernov0CO' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentMethods' test.out

#- 374 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qBZxds4O' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUnpaidPaymentOrder' test.out

#- 375 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bn2UEOlw' \
    --paymentProvider 'ADYEN' \
    --zipCode 'xkTmAuzp' \
    --body '{"token": "8qAmOjJc"}' \
    > test.out 2>&1
eval_tap $? 375 'Pay' test.out

#- 376 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jwW60hXD' \
    > test.out 2>&1
eval_tap $? 376 'PublicCheckPaymentOrderPaidStatus' test.out

#- 377 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'E1hWnpjC' \
    > test.out 2>&1
eval_tap $? 377 'GetPaymentPublicConfig' test.out

#- 378 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '83dZD3EU' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetQRCode' test.out

#- 379 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'CwbNKRBt' \
    --foreinginvoice '9GDQdPbN' \
    --invoiceId 'RWBS0bog' \
    --payload '07SKtPmA' \
    --redirectResult 'GNjK7Vof' \
    --resultCode 'k0tsLozm' \
    --sessionId '7fv2bPVM' \
    --status 'ABCRI5EN' \
    --token 'EVhnqjL6' \
    --type 'oYV7AJKu' \
    --userId '3xS8q1Wl' \
    --orderNo 'Laszg1ov' \
    --paymentOrderNo 'L2YWXemN' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'jr9tveYG' \
    > test.out 2>&1
eval_tap $? 379 'PublicNormalizePaymentReturnUrl' test.out

#- 380 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'nncfyik2' \
    --paymentOrderNo 'mXACjduP' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 380 'GetPaymentTaxValue' test.out

#- 381 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'myIP3LCU' \
    > test.out 2>&1
eval_tap $? 381 'GetRewardByCode' test.out

#- 382 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'tY56H391' \
    --limit '74' \
    --offset '61' \
    --sortBy '["rewardCode:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 382 'QueryRewards1' test.out

#- 383 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'QhrR5JuN' \
    > test.out 2>&1
eval_tap $? 383 'GetReward1' test.out

#- 384 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicListStores' test.out

#- 385 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["8Bg69SHb", "72hd2wmA", "6doMOgu3"]' \
    --itemIds '["F9Y1AqNx", "8l1MVwoK", "v5cKBNIW"]' \
    --skus '["09i48r93", "r7VebHQc", "MpjHKkj1"]' \
    > test.out 2>&1
eval_tap $? 385 'PublicExistsAnyMyActiveEntitlement' test.out

#- 386 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'L3LJsp2H' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 387 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '807fvUls' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 388 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku '9L1ds6P1' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 389 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["qodbwF1C", "dblBpfvZ", "mWkTB5xO"]' \
    --itemIds '["JOuK6Z6N", "7LCFOUgJ", "oFfBRyht"]' \
    --skus '["wLX6ylNR", "YsbNcTJk", "x5xxkVEx"]' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetEntitlementOwnershipToken' test.out

#- 390 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "7J3kHn6h", "language": "WKN", "region": "ByAF9qSF"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncTwitchDropsEntitlement' test.out

#- 391 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '1Qv4uGQP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 391 'PublicGetMyWallet' test.out

#- 392 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '7hqjrS8t' \
    --body '{"epicGamesJwtToken": "xNDji9Yz"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncEpicGameDLC' test.out

#- 393 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '7uc7x1NI' \
    > test.out 2>&1
eval_tap $? 393 'SyncOculusDLC' test.out

#- 394 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NudnLa90' \
    --body '{"serviceLabel": 97}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSyncPsnDlcInventory' test.out

#- 395 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'GWhbJxv0' \
    --body '{"serviceLabels": [65, 66, 5]}' \
    > test.out 2>&1
eval_tap $? 395 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 396 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ras8fw7w' \
    --body '{"appId": "VdsG390h", "steamId": "o4jyYVTk"}' \
    > test.out 2>&1
eval_tap $? 396 'SyncSteamDLC' test.out

#- 397 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '98YOmBfu' \
    --body '{"xstsToken": "5pyYuuig"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncXboxDLC' test.out

#- 398 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'kBvw7l0W' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'Ylp5pWVA' \
    --features '["oaMJl4ud", "djmU1Fte", "Os89SKuJ"]' \
    --itemId '["0p7dDLuO", "9TLlSYMK", "XMWfFh1v"]' \
    --limit '30' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlements' test.out

#- 399 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'i0WFqAzf' \
    --appId 'wgDQHrlP' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserAppEntitlementByAppId' test.out

#- 400 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'ROH7zD8m' \
    --limit '9' \
    --offset '96' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 400 'PublicQueryUserEntitlementsByAppType' test.out

#- 401 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'av4LDnFg' \
    --availablePlatformOnly 'true' \
    --ids '["BWAUn24Z", "ZqTc1ghh", "Z4OnjU6K"]' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlementsByIds' test.out

#- 402 PublicGetUserEntitlementByItemId
eval_tap 0 402 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 403 PublicGetUserEntitlementBySku
eval_tap 0 403 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 404 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'G28NcRdK' \
    --endDate 'i5lhRnZg' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '51' \
    --offset '24' \
    --startDate 'HPo1gLqj' \
    > test.out 2>&1
eval_tap $? 404 'PublicUserEntitlementHistory' test.out

#- 405 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'G8wFWKJm' \
    --appIds '["HNq33lry", "fnXaFzT8", "nO6pfYpq"]' \
    --itemIds '["H7dhgroW", "JsdT4LTN", "hyuA14LY"]' \
    --skus '["rIZUQZsk", "ILlz9PCy", "RWtU5RKf"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicExistsAnyUserActiveEntitlement' test.out

#- 406 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'sf5DYCi1' \
    --appId 'wKR17UHp' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 407 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uzBpUH7C' \
    --entitlementClazz 'MEDIA' \
    --itemId 'lGELukju' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 408 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'wYgW5ZQL' \
    --ids '["wqWQH87D", "mhlkrOgr", "CX3qC5xQ"]' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 409 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'XEXF1SlE' \
    --entitlementClazz 'APP' \
    --sku 'XEESWbF7' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 410 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Zm31ru1G' \
    --namespace $AB_NAMESPACE \
    --userId 'BF0aYSgh' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserEntitlement' test.out

#- 411 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'GUddoAeL' \
    --namespace $AB_NAMESPACE \
    --userId 'mChgOmhR' \
    --body '{"options": ["66ZsNfIC", "NwoTHrRQ", "Gee1fa40"], "requestId": "dfHCxN3h", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 411 'PublicConsumeUserEntitlement' test.out

#- 412 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'ffTMPHJN' \
    --namespace $AB_NAMESPACE \
    --userId '6VA63dkG' \
    --body '{"requestId": "jf26lFzz", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 412 'PublicSellUserEntitlement' test.out

#- 413 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'zw6f25KK' \
    --namespace $AB_NAMESPACE \
    --userId 'vG533Xzn' \
    --body '{"useCount": 93}' \
    > test.out 2>&1
eval_tap $? 413 'PublicSplitUserEntitlement' test.out

#- 414 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'aMYMWeGu' \
    --namespace $AB_NAMESPACE \
    --userId '7CeSrTvR' \
    --body '{"entitlementId": "IGEqhxvi", "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 414 'PublicTransferUserEntitlement' test.out

#- 415 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'dAdOW0ls' \
    --body '{"code": "hB1rwz2i", "language": "CnN-MmKt", "region": "wpHEykks"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicRedeemCode' test.out

#- 416 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'IHHIGgxs' \
    --body '{"excludeOldTransactions": true, "language": "dOZ_821", "productId": "ASLrPMOQ", "receiptData": "qqarLqME", "region": "CdByme2S", "transactionId": "NkjaXYsC"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillAppleIAPItem' test.out

#- 417 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xu8KdHrO' \
    --body '{"epicGamesJwtToken": "vRXLagBl"}' \
    > test.out 2>&1
eval_tap $? 417 'SyncEpicGamesInventory' test.out

#- 418 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5gm49vjS' \
    --body '{"autoAck": true, "language": "Ad_kKQQ-037", "orderId": "NYGDk6Vc", "packageName": "QmDgcTwp", "productId": "h3904Qn3", "purchaseTime": 73, "purchaseToken": "MBDeytmj", "region": "2bHcpgYg"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicFulfillGoogleIAPItem' test.out

#- 419 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '4XSX39Jl' \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusConsumableEntitlements' test.out

#- 420 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'EkiEVBxx' \
    --body '{"currencyCode": "UO7RvNjo", "price": 0.5082032495628852, "productId": "I8CVAvmY", "serviceLabel": 100}' \
    > test.out 2>&1
eval_tap $? 420 'PublicReconcilePlayStationStore' test.out

#- 421 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '5hfiDgaT' \
    --body '{"currencyCode": "IUYt8Kip", "price": 0.0016544910057525453, "productId": "icL9Cbdz", "serviceLabels": [56, 61, 47]}' \
    > test.out 2>&1
eval_tap $? 421 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 422 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'eqnc9cLo' \
    --body '{"appId": "YO3JVxHc", "currencyCode": "tsV5JXYj", "language": "SZ", "price": 0.111522404920537, "productId": "0HgPeYMm", "region": "8OAzHfxP", "steamId": "CDGMz83i"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamInventory' test.out

#- 423 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'oy41Tr3Z' \
    --body '{"gameId": "K7HoL1k9", "language": "iUlm_089", "region": "kV0k63QH"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncTwitchDropsEntitlement1' test.out

#- 424 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '3HYptw0E' \
    --body '{"currencyCode": "LAB8bflv", "price": 0.27271217461556496, "productId": "oAV1e3qV", "xstsToken": "2lU0TStF"}' \
    > test.out 2>&1
eval_tap $? 424 'SyncXboxInventory' test.out

#- 425 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'PTqEB0mF' \
    --discounted 'false' \
    --itemId 'vzee4FWQ' \
    --limit '33' \
    --offset '47' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 425 'PublicQueryUserOrders' test.out

#- 426 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7JCR3sZh' \
    --body '{"currencyCode": "fZrNnHFm", "discountCodes": ["ockqmBXX", "vcN7h2Wl", "uxl0QFf4"], "discountedPrice": 43, "ext": {"eIicdXjL": {}, "Th97npUF": {}, "npG3FO7a": {}}, "itemId": "jUUmdgEq", "language": "APR-Xd", "price": 50, "quantity": 61, "region": "6KVp2P8R", "returnUrl": "6Rt4Z5ON", "sectionId": "AM2ajHjE"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicCreateUserOrder' test.out

#- 427 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'KP9CveHX' \
    --body '{"currencyCode": "W44fR6JP", "discountCodes": ["rt9cklVw", "yDT1EUZP", "iEnaHUT5"], "discountedPrice": 27, "itemId": "Ms6Yi8w3", "price": 74, "quantity": 51}' \
    > test.out 2>&1
eval_tap $? 427 'PublicPreviewOrderPrice' test.out

#- 428 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'eLJlMYCO' \
    --userId 'rw5x0VXt' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetUserOrder' test.out

#- 429 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pj9s8hgd' \
    --userId 'ew4CEG5q' \
    > test.out 2>&1
eval_tap $? 429 'PublicCancelUserOrder' test.out

#- 430 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '0XtduGKG' \
    --userId 'wn39y14K' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserOrderHistories' test.out

#- 431 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'kFFIkLyy' \
    --userId 'WhkAgbD4' \
    > test.out 2>&1
eval_tap $? 431 'PublicDownloadUserOrderReceipt' test.out

#- 432 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'G4TbC5oo' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetPaymentAccounts' test.out

#- 433 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'XyLnJ58w' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'j0tLvthu' \
    > test.out 2>&1
eval_tap $? 433 'PublicDeletePaymentAccount' test.out

#- 434 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'jS0fS7uS' \
    --autoCalcEstimatedPrice 'true' \
    --language 'z9NF9lSo' \
    --region 'ory8tk2Q' \
    --storeId 'fLcnSP9S' \
    --viewId 'fj8N7oAi' \
    > test.out 2>&1
eval_tap $? 434 'PublicListActiveSections' test.out

#- 435 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Aa9GVmwB' \
    --chargeStatus 'CHARGED' \
    --itemId 'LFRpjtjQ' \
    --limit '40' \
    --offset '74' \
    --sku 'RSJXJ8Ug' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserSubscriptions' test.out

#- 436 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'X8aJ63I9' \
    --body '{"currencyCode": "UoGA8vPE", "itemId": "FfSJ4H7h", "language": "gsB_ECSi", "region": "KDhCofPw", "returnUrl": "YzJsPw1C", "source": "Dr6Jwnc7"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicSubscribeSubscription' test.out

#- 437 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'bDwXjzO4' \
    --itemId '7etYQkMH' \
    > test.out 2>&1
eval_tap $? 437 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 438 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bPcoSvyU' \
    --userId 'WUOGe9FL' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscription' test.out

#- 439 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OB4t97wc' \
    --userId 'NhvIa9nQ' \
    > test.out 2>&1
eval_tap $? 439 'PublicChangeSubscriptionBillingAccount' test.out

#- 440 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Uj2Qs8gV' \
    --userId 'WtJKbC6A' \
    --body '{"immediate": false, "reason": "usghy7r2"}' \
    > test.out 2>&1
eval_tap $? 440 'PublicCancelSubscription' test.out

#- 441 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RmadVgUD' \
    --userId 'IACCz2fu' \
    --excludeFree 'false' \
    --limit '63' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 441 'PublicGetUserSubscriptionBillingHistories' test.out

#- 442 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'kJ2KTVoy' \
    --language 'IYFP3Wlq' \
    --storeId 'kgtiuKWy' \
    > test.out 2>&1
eval_tap $? 442 'PublicListViews' test.out

#- 443 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'V5ozqc3n' \
    --namespace $AB_NAMESPACE \
    --userId '8R2T6nyr' \
    > test.out 2>&1
eval_tap $? 443 'PublicGetWallet' test.out

#- 444 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'Ny2N7a5V' \
    --namespace $AB_NAMESPACE \
    --userId 'ofPQNB7d' \
    --limit '88' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 444 'PublicListUserWalletTransactions' test.out

#- 445 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate '0xom1hvt' \
    --baseAppId '4cZDdPho' \
    --categoryPath 'CSEBHyqr' \
    --features 'RN2PowiH' \
    --includeSubCategoryItem 'true' \
    --itemName 'i3s4oSlp' \
    --itemStatus 'INACTIVE' \
    --itemType 'CODE' \
    --limit '17' \
    --offset '20' \
    --region 'c4cs3Obs' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt:asc", "updatedAt", "createdAt"]' \
    --storeId 'n8KIjqSP' \
    --tags 'LyaH0wK6' \
    --targetNamespace 'cmXndhEE' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 445 'QueryItems1' test.out

#- 446 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ELISbMCV' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 446 'ImportStore1' test.out

#- 447 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'yye4xKMZ' \
    --body '{"itemIds": ["7ZVsQbGB", "CsoCOYvd", "jcGfOq9W"]}' \
    > test.out 2>&1
eval_tap $? 447 'ExportStore1' test.out

#- 448 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'gC19R1dL' \
    --body '{"entitlementCollectionId": "XXzqVFCW", "entitlementOrigin": "IOS", "metadata": {"oUzFiJR5": {}, "5Urhpgan": {}, "Q3Nj8ebP": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "6cEQqIkt", "namespace": "17mJRmqF"}, "item": {"itemId": "5o0lHwkZ", "itemSku": "y3GlRWZH", "itemType": "Ibh1c7cr"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "GCtLySnV", "namespace": "CoADJrCQ"}, "item": {"itemId": "b68KKhqR", "itemSku": "iU7iO6VP", "itemType": "Euwjxi3E"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "hQthybT1", "namespace": "sO6GdWMg"}, "item": {"itemId": "2IVdsLMQ", "itemSku": "09V0aDB3", "itemType": "rsHhuMSc"}, "quantity": 78, "type": "CURRENCY"}], "source": "PROMOTION", "transactionId": "1Njpc5B6"}' \
    > test.out 2>&1
eval_tap $? 448 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE