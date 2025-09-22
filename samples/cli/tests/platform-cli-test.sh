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
echo "1..499"

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
    --id 'jN5JD59n' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'MUTO7e2B' \
    --body '{"grantDays": "JrrrSTk7"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '2C3fbxpt' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'gc5Fg1mK' \
    --body '{"grantDays": "smNeV8h4"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "dLZ4BOac", "dryRun": true, "fulfillmentUrl": "U3OduwLa", "itemType": "CODE", "purchaseConditionUrl": "WiwcUzzH"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'GvwN4Zff' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ZhRKZeTe' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'pMGCTE9z' \
    --body '{"clazz": "2EticODX", "dryRun": false, "fulfillmentUrl": "AnLZxV1A", "purchaseConditionUrl": "USATC8cM"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'GxbAIKh6' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'kzUyLDjE' \
    --offset '9' \
    --tag 'LMTURihW' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mOPt2NNR", "discountConfig": {"categories": [{"categoryPath": "EccSjokK", "includeSubCategories": true}, {"categoryPath": "SE3RZkxb", "includeSubCategories": false}, {"categoryPath": "UcllYXHO", "includeSubCategories": false}], "currencyCode": "Cop9Qy4u", "currencyNamespace": "5SDKSmFm", "discountAmount": 33, "discountPercentage": 65, "discountType": "PERCENTAGE", "items": [{"itemId": "iJwV0Ry7", "itemName": "vKpZ3IpS"}, {"itemId": "o2Ikp102", "itemName": "iubukIab"}, {"itemId": "Nuot9P3z", "itemName": "wBVJTkYi"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 44, "itemId": "ihtry9qH", "itemName": "BSOq5NhW", "quantity": 13}, {"extraSubscriptionDays": 87, "itemId": "RJ18bu95", "itemName": "HCEKTxNd", "quantity": 44}, {"extraSubscriptionDays": 46, "itemId": "g2bKWq1D", "itemName": "Pk7kjz9l", "quantity": 39}], "maxRedeemCountPerCampaignPerUser": 34, "maxRedeemCountPerCode": 45, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 12, "name": "LhLA2UA8", "redeemEnd": "1987-03-04T00:00:00Z", "redeemStart": "1991-01-08T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["4E88Ku70", "D7P5Ntz2", "OINFHKWc"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '79Eov9Rg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ZkBQ9Imj' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KRq2TAwU", "discountConfig": {"categories": [{"categoryPath": "0gtWsFP2", "includeSubCategories": false}, {"categoryPath": "rUI90KlF", "includeSubCategories": true}, {"categoryPath": "8bBconxw", "includeSubCategories": false}], "currencyCode": "zMU0eH6m", "currencyNamespace": "bBpmMT9O", "discountAmount": 25, "discountPercentage": 8, "discountType": "PERCENTAGE", "items": [{"itemId": "SqFgslKb", "itemName": "NjF4pfC3"}, {"itemId": "uDJak0WI", "itemName": "sactVBpG"}, {"itemId": "XSYW6a5R", "itemName": "V9ZkXmRe"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 67, "itemId": "Q41jSeki", "itemName": "mz4wdfCz", "quantity": 96}, {"extraSubscriptionDays": 6, "itemId": "S0DCGbrl", "itemName": "RKlOkc1j", "quantity": 10}, {"extraSubscriptionDays": 67, "itemId": "8Wg8yH7M", "itemName": "TphO9mfM", "quantity": 63}], "maxRedeemCountPerCampaignPerUser": 46, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 31, "maxSaleCount": 36, "name": "jUSovsjm", "redeemEnd": "1988-12-10T00:00:00Z", "redeemStart": "1991-11-27T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["ICn6LfA3", "LJOXbYUz", "Zz8LTJ0V"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'aEyZcj6R' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "FuVkGOoS", "oldName": "v3cQzmkj"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'kSFAEjJy' \
    --namespace $AB_NAMESPACE \
    --batchName '2buA9QYV' \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'pFIfNhNg' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["REWARD", "DLC", "IAP"]}' \
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
    --body '{"appConfig": {"appName": "3UR2Qu00"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "J5eyUtAk"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "U10mFazx"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "p4BZB0W4"}, "extendType": "CUSTOM"}' \
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
    --storeId 'R3JwwP1b' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'a5tmo5ys' \
    --body '{"categoryPath": "dt1eu4Bu", "localizationDisplayNames": {"3pBbvNIf": "tb6yVwc4", "8DQabJjV": "NgHYUCuP", "fxZpaFnX": "1n0JhtLr"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'VGDASpjY' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '97A6fR2v' \
    --namespace $AB_NAMESPACE \
    --storeId 'zmtyU1wq' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'jAM90Si9' \
    --namespace $AB_NAMESPACE \
    --storeId 'PkE5PZK0' \
    --body '{"localizationDisplayNames": {"AXH6GMDE": "79Lo5LXn", "3TioO5Zr": "qwKRaFFw", "WqpVymgE": "EQp6F5Hz"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'qK1BqI4W' \
    --namespace $AB_NAMESPACE \
    --storeId 'XwjYXPIx' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'Rv1fZKAo' \
    --namespace $AB_NAMESPACE \
    --storeId 'Rv5gi1T3' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'jYPMNIha' \
    --namespace $AB_NAMESPACE \
    --storeId 'kgF7yieg' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'x0bfgMbO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'lOqTxNpT' \
    --batchNo '[11, 97, 20]' \
    --code 'YfdDx4mn' \
    --limit '66' \
    --offset '33' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Kg9UUELJ' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "pw1SaGYr", "codeValue": "VqiOfKkJ", "quantity": 66}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'at1dgcao' \
    --namespace $AB_NAMESPACE \
    --batchName 'eJ2YabL0' \
    --batchNo '[95, 43, 10]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'b4tMVROY' \
    --namespace $AB_NAMESPACE \
    --batchName '6a3jHFin' \
    --batchNo '[76, 39, 79]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'STcY3qdo' \
    --namespace $AB_NAMESPACE \
    --batchName 'QnSWCsdb' \
    --batchNo '[48, 53, 52]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '4GiVdLL0' \
    --namespace $AB_NAMESPACE \
    --code 'g9ujhy7F' \
    --limit '9' \
    --offset '1' \
    --userId 'cUsXLNyt' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'qDTlF52A' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '26EcNZoa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'P62lOmyv' \
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
    --body '{"currencyCode": "OdENOF5a", "currencySymbol": "NK6KJSKV", "currencyType": "VIRTUAL", "decimals": 28, "localizationDescriptions": {"SMe8X7cs": "V9ceoCSu", "0OCHS1Ae": "NplsR0M6", "gY4NJd6N": "N4GV5cSv"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'ntMDoFnc' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"AyGBPu4I": "VRZQP1Yw", "K00318EC": "hu6qfmlA", "TSvcVNsK": "heIGeka6"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'cQ8pMarf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'XF8Ndkqn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'FoMJUE9S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'hVA52r0q' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'GG3z8E0y' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "4wQo29ST", "rewards": [{"currency": {"currencyCode": "23FCOwD7", "namespace": "VStuCwq9"}, "item": {"itemId": "xbpQumD5", "itemName": "tT7oWGN7", "itemSku": "o1OneGWv", "itemType": "XbYtys7R"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"currencyCode": "NnR1I2V1", "namespace": "B1eTh3g7"}, "item": {"itemId": "xgDvR2Uz", "itemName": "Mn3i9GPS", "itemSku": "m9JBlt13", "itemType": "uYcTzqSD"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "XOC2WOOW", "namespace": "LiCDcuFJ"}, "item": {"itemId": "DOrwuH2H", "itemName": "WRqjARV0", "itemSku": "pz6dUXQt", "itemType": "Sni2AHq2"}, "quantity": 70, "type": "ITEM"}], "rvn": 63}, {"autoUpdate": false, "enableRevocation": false, "id": "1u070dnl", "rewards": [{"currency": {"currencyCode": "SWcW3vUb", "namespace": "janQ6iqI"}, "item": {"itemId": "tEFHS5GT", "itemName": "hRr6qnJB", "itemSku": "TWvYGyRO", "itemType": "T3xUyhBQ"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "MgGavwJ7", "namespace": "nzo7hlbN"}, "item": {"itemId": "iyjjxHWh", "itemName": "v67WIthh", "itemSku": "vnusk8LV", "itemType": "Zbmg6OAP"}, "quantity": 65, "type": "ITEM"}, {"currency": {"currencyCode": "UuyOHP1l", "namespace": "Ae9yMzLD"}, "item": {"itemId": "IeBmaVoQ", "itemName": "NFKiNSuN", "itemSku": "Y0EITMcN", "itemType": "agNp5aHX"}, "quantity": 95, "type": "CURRENCY"}], "rvn": 12}, {"autoUpdate": true, "enableRevocation": true, "id": "Ev8mn7dU", "rewards": [{"currency": {"currencyCode": "TN8LIAUW", "namespace": "rPOaYVZD"}, "item": {"itemId": "azTgLETJ", "itemName": "cxZ6dHW9", "itemSku": "FN6iRIrJ", "itemType": "VkVbO4v4"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "pEOqJGBy", "namespace": "0jPmstAG"}, "item": {"itemId": "EKQoodl0", "itemName": "sm4jnFec", "itemSku": "Dd44HmBp", "itemType": "UcIA5yDg"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "smoDLjEk", "namespace": "wo4GFdYe"}, "item": {"itemId": "LhVZF3R6", "itemName": "sVtM6V0z", "itemSku": "PPMzVKYF", "itemType": "VVkkerIM"}, "quantity": 65, "type": "ITEM"}], "rvn": 34}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"0VSFp1rh": "y5Xltz6i", "SB5TK1Fu": "r1apAPKc", "WAyMg1GX": "3W0irHiw"}}, {"platform": "PSN", "platformDlcIdMap": {"3lmSuZLA": "4x8PGu1W", "1YuJlChK": "3vfB2z9v", "pTyY1HVb": "o9E9FXrF"}}, {"platform": "STEAM", "platformDlcIdMap": {"8z11hy6d": "ffzzB21m", "fgrHOzP5": "KAqN24Ig", "CxXxwnRE": "mKymIXee"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'C2WHDCM0' \
    --itemId '["BH9XSVBI", "jclEbDmS", "GZ1TxYBP"]' \
    --limit '73' \
    --offset '47' \
    --origin 'Epic' \
    --userId 'YiFgVxmG' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["P33JWKQ7", "ay6nmoUo", "rie9sq6g"]' \
    --limit '80' \
    --offset '47' \
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
    --body '{"entitlementGrantList": [{"collectionId": "9dlNhMQO", "endDate": "1997-05-06T00:00:00Z", "grantedCode": "63xGFI9U", "itemId": "oBvbR1IS", "itemNamespace": "8rjRZM76", "language": "hiW", "metadata": {"XTh6Wqp6": {}, "QVL5089H": {}, "yn5Ezp9O": {}}, "origin": "Epic", "quantity": 27, "region": "blTkdnvp", "source": "ACHIEVEMENT", "startDate": "1974-01-30T00:00:00Z", "storeId": "ZCB0dneM"}, {"collectionId": "rHJTNZ1M", "endDate": "1986-09-19T00:00:00Z", "grantedCode": "OWIX3fbF", "itemId": "oeW0MyRc", "itemNamespace": "vSDAHlzO", "language": "kv_LUqR-ey", "metadata": {"ZPfBjPdK": {}, "x3ial7W4": {}, "7b7T4mZJ": {}}, "origin": "Xbox", "quantity": 84, "region": "DcGd5rvz", "source": "PROMOTION", "startDate": "1995-05-13T00:00:00Z", "storeId": "nKLgifo4"}, {"collectionId": "SxxOuy1E", "endDate": "1985-04-12T00:00:00Z", "grantedCode": "LQwmdqNC", "itemId": "r4vBoHAK", "itemNamespace": "0WkrbeYe", "language": "EF-944", "metadata": {"bUMS5PBm": {}, "wPULtvUB": {}, "kTXfKpPm": {}}, "origin": "Twitch", "quantity": 54, "region": "aHcHPWjW", "source": "REDEEM_CODE", "startDate": "1998-10-27T00:00:00Z", "storeId": "F3T4vfE2"}], "userIds": ["1OgjH213", "rClMwhsv", "eFMo5U4o"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["6Y5CEYVv", "uMSIaiti", "n9UZRlIN"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'ptQmeBV3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '65' \
    --status 'SUCCESS' \
    --userId 'F4fE3oeD' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'qj4OYHb4' \
    --eventType 'OTHER' \
    --externalOrderId 'K6LCg2rD' \
    --limit '47' \
    --offset '5' \
    --startTime 'd9cQ9Ynk' \
    --status 'FAIL' \
    --userId 'E1oY6Ck5' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "nxS4vOOA", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 33, "clientTransactionId": "WOd82UYW"}, {"amountConsumed": 86, "clientTransactionId": "WCSlt6Qm"}, {"amountConsumed": 59, "clientTransactionId": "O1cvxU3x"}], "entitlementId": "eI4zGVwm", "usageCount": 56}, {"clientTransaction": [{"amountConsumed": 49, "clientTransactionId": "UkaoT7OA"}, {"amountConsumed": 46, "clientTransactionId": "WcWr1ahB"}, {"amountConsumed": 56, "clientTransactionId": "VdRofT4C"}], "entitlementId": "j0NDFbaK", "usageCount": 30}, {"clientTransaction": [{"amountConsumed": 16, "clientTransactionId": "GuMfSegz"}, {"amountConsumed": 85, "clientTransactionId": "fymPDj73"}, {"amountConsumed": 31, "clientTransactionId": "97QGDUB0"}], "entitlementId": "E1OfdDEW", "usageCount": 66}], "purpose": "577buOK9"}, "originalTitleName": "L8aFh3Vl", "paymentProductSKU": "TdidxLXb", "purchaseDate": "7q6Pu0zQ", "sourceOrderItemId": "jYBY0n3V", "titleName": "Ase2FHQO"}, "eventDomain": "d46eL4XG", "eventSource": "nhsWNkPt", "eventType": "yHRxLWpb", "eventVersion": 60, "id": "0jE39NFp", "timestamp": "DxXPF8VD"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "0MPpBpxr", "eventState": "3vKOamX5", "lineItemId": "WGazfsY1", "orderId": "fLaYXPZ7", "productId": "z6qBozI8", "productType": "P9YWTJtC", "purchasedDate": "9zVK7VF5", "sandboxId": "0q7XKhzt", "skuId": "BMJseQs4", "subscriptionData": {"consumedDurationInDays": 26, "dateTime": "Hbv9EEA2", "durationInDays": 68, "recurrenceId": "FOnUXxkz"}}, "datacontenttype": "t9opA94x", "id": "ynIkiNF5", "source": "jFEGMR0L", "specVersion": "6RQYAQB1", "subject": "frsOSg9Y", "time": "NLPOIRHs", "traceparent": "4xULQ85m", "type": "hEuioiTx"}' \
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
    --body '{"appAppleId": 73, "bundleId": "rvz8NaG1", "issuerId": "G7MTrIIs", "keyId": "CMaNsElT", "password": "6xxJKkOE", "version": "V2"}' \
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
    --body '{"sandboxId": "2UgLPC3o"}' \
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
    --body '{"applicationName": "LbqAjCPh", "notificationTokenAudience": "J1xD8Usv", "notificationTokenEmail": "TfQ7gfNv", "packageName": "GzQoTyuU", "serviceAccountId": "KkfqpK7r"}' \
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
    --body '{"data": [{"itemIdentity": "1TaolMlx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"CX7UKi2i": "gAge9Oiz", "mFOJaX0S": "p8O4K2hc", "osOvgLnf": "Eb0rbr0c"}}, {"itemIdentity": "3Mrn78Eo", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"jL0d2K26": "F3BqP3jU", "RHhAhL2V": "UVQRent9", "GEBBW7z0": "i4U0E99m"}}, {"itemIdentity": "enTHtzXy", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ZZe0hN8o": "keakAZ40", "lc4MThBl": "qzA8Rp8c", "bLMK56YN": "vZN7CM1w"}}]}' \
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
    --body '{"appId": "NPEoQPTL", "appSecret": "Gws2ylcv"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetPlayStationIAPConfig' test.out

#- 94 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "olmJ9gGH", "backOfficeServerClientSecret": "nTuvanzY", "enableStreamJob": false, "environment": "tZuZKmx8", "streamName": "8tqzKiOq", "streamPartnerName": "nVeos4Hq"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdatePlaystationIAPConfig' test.out

#- 95 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'DeletePlaystationIAPConfig' test.out

#- 96 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'ValidateExistedPlaystationIAPConfig' test.out

#- 97 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "rLgWHW9R", "backOfficeServerClientSecret": "h7F0YUqK", "enableStreamJob": false, "environment": "qsvLByEK", "streamName": "aZT9PAZe", "streamPartnerName": "XdRJwwmB"}' \
    > test.out 2>&1
eval_tap $? 97 'ValidatePlaystationIAPConfig' test.out

#- 98 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetSteamIAPConfig' test.out

#- 99 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "m2EW9Kvc", "env": "SANDBOX", "publisherAuthenticationKey": "xw7LbWdf", "syncMode": "INVENTORY"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateSteamIAPConfig' test.out

#- 100 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteSteamIAPConfig' test.out

#- 101 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'GetTwitchIAPConfig' test.out

#- 102 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Fl19T10d", "clientSecret": "tz8PAo65", "organizationId": "nojwTZGJ"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateTwitchIAPConfig' test.out

#- 103 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'DeleteTwitchIAPConfig' test.out

#- 104 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetXblIAPConfig' test.out

#- 105 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": true, "entraAppClientId": "HVwt7epC", "entraAppClientSecret": "pXaqBNeU", "entraTenantId": "210G88Rv", "relyingPartyCert": "2eCHln4d"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblIAPConfig' test.out

#- 106 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'DeleteXblAPConfig' test.out

#- 107 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'C70WIGas' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'QPk424n1' \
    --externalId 'ex5Gg5Na' \
    --limit '73' \
    --offset '13' \
    --source 'GOOGLE' \
    --startDate 'nWLEaDhE' \
    --status 'PROCESSED' \
    --type 'DPxpKadP' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '2' \
    --orderId 'IM1HWpwW' \
    --steamId 'gziLk8y1' \
    > test.out 2>&1
eval_tap $? 109 'QueryAbnormalTransactions' test.out

#- 110 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminGetSteamJobInfo' test.out

#- 111 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "LIVE", "lastTime": "1980-12-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'zuKk0yG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '100' \
    --orderId 'gxgLiKml' \
    --processStatus 'ERROR' \
    --steamId 'wEglNUf8' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'J18FmS3B' \
    --limit '59' \
    --offset '98' \
    --platform 'TWITCH' \
    --productId 'Fw1cQkLq' \
    --userId 'qllpDynw' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'gut52ZRH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime '4j2NHvcN' \
    --feature 'ZWI8jbWY' \
    --itemId 'LnzwmVcE' \
    --itemType 'OPTIONBOX' \
    --startTime 'JO7iZLuc' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'Cqs8M8pk' \
    --feature 'VLd5VBsE' \
    --itemId '9I7a0D9p' \
    --itemType 'LOOTBOX' \
    --startTime 'i4kexwcq' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'GryC9UnT' \
    --body '{"categoryPath": "OmY8NOHZ", "targetItemId": "MRWyJ9Zz", "targetNamespace": "fgLjBwMO"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'QY1PgCyY' \
    --body '{"appId": "Q84zg6HB", "appType": "GAME", "baseAppId": "8VJ4vRIS", "boothName": "9ILbCfE7", "categoryPath": "kkkMxUps", "clazz": "TiSorjBr", "displayOrder": 45, "entitlementType": "DURABLE", "ext": {"p0d38IBU": {}, "DyQpVpB9": {}, "O9BPMNns": {}}, "features": ["I8P5vY3G", "GVR7y6sh", "sOselRgv"], "flexible": true, "images": [{"as": "LhfXnyUv", "caption": "u211XD9w", "height": 90, "imageUrl": "oNbu2749", "smallImageUrl": "7Ea6Yib1", "width": 7}, {"as": "HW6WDeYE", "caption": "aSuIpape", "height": 69, "imageUrl": "oSrFjwhV", "smallImageUrl": "zQCYqYCM", "width": 43}, {"as": "wtcreSjM", "caption": "YHMsgw0j", "height": 67, "imageUrl": "N7oR17yg", "smallImageUrl": "kPIKDEsP", "width": 14}], "inventoryConfig": {"customAttributes": {"XDhEd4Zq": {}, "8TH469AV": {}, "F0vBapd9": {}}, "serverCustomAttributes": {"p55NmVUu": {}, "Omkon7J9": {}, "ZbN0BB8s": {}}, "slotUsed": 6}, "itemIds": ["3y8zOwvf", "VFiKYHqZ", "NxHhf7RU"], "itemQty": {"w3X9lMpx": 21, "6xfugWU4": 66, "AhLRBOcq": 20}, "itemType": "APP", "listable": true, "localizations": {"urylkY6P": {"description": "woAoBqiW", "localExt": {"ppWfdSwc": {}, "pa8HKkBG": {}, "TlZ1gqkY": {}}, "longDescription": "4WDR2Y74", "title": "8pexQZqU"}, "WxLXT5c1": {"description": "UqHjwUAx", "localExt": {"s3yXT52e": {}, "nv7nhUrC": {}, "NqwxIUON": {}}, "longDescription": "U00tZFs8", "title": "ayUJM0XV"}, "OS3Gzevl": {"description": "R6Hmpu9y", "localExt": {"T5MV5eF9": {}, "jl7pr21J": {}, "U4DwOe27": {}}, "longDescription": "kkiAHhT0", "title": "ZpVMtodN"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 32, "duration": 97, "endDate": "1978-09-03T00:00:00Z", "itemId": "YMGnyigt", "itemSku": "5ar7svCm", "itemType": "69k8FkvL"}, {"count": 46, "duration": 84, "endDate": "1993-05-05T00:00:00Z", "itemId": "KQm4YKuU", "itemSku": "zefIvnD4", "itemType": "mcExwUaZ"}, {"count": 89, "duration": 90, "endDate": "1988-03-17T00:00:00Z", "itemId": "EZ1s18cs", "itemSku": "NJeS6WE6", "itemType": "JRQm3dtx"}], "name": "8VkvkEWQ", "odds": 0.5018484668139533, "type": "REWARD", "weight": 62}, {"lootBoxItems": [{"count": 5, "duration": 92, "endDate": "1988-02-21T00:00:00Z", "itemId": "3V2vChAf", "itemSku": "LyO2mWK8", "itemType": "AtVFDWIS"}, {"count": 11, "duration": 79, "endDate": "1981-11-23T00:00:00Z", "itemId": "ji8I15Ie", "itemSku": "zNeAP57e", "itemType": "AKcfjU7H"}, {"count": 73, "duration": 96, "endDate": "1972-09-16T00:00:00Z", "itemId": "ZRV679AS", "itemSku": "6QrZw38F", "itemType": "cqZfVlS2"}], "name": "m33m9pax", "odds": 0.233907935815732, "type": "REWARD_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 2, "duration": 73, "endDate": "1995-03-13T00:00:00Z", "itemId": "HiR0vGvb", "itemSku": "ZJasSltA", "itemType": "S1XAwqo0"}, {"count": 64, "duration": 32, "endDate": "1986-02-26T00:00:00Z", "itemId": "EIKuo8hD", "itemSku": "CLEx7g5x", "itemType": "THMrK0n3"}, {"count": 88, "duration": 26, "endDate": "1981-06-26T00:00:00Z", "itemId": "BsEJqjAt", "itemSku": "PK56gN81", "itemType": "zIypBTEW"}], "name": "6GmK8KDG", "odds": 0.1666341159818916, "type": "REWARD", "weight": 98}], "rollFunction": "CUSTOM"}, "maxCount": 76, "maxCountPerUser": 14, "name": "vBtFDFjG", "optionBoxConfig": {"boxItems": [{"count": 95, "duration": 87, "endDate": "1997-03-06T00:00:00Z", "itemId": "q4QbXlxg", "itemSku": "11ZltJJv", "itemType": "WDeLs9Rp"}, {"count": 25, "duration": 39, "endDate": "1994-02-14T00:00:00Z", "itemId": "mbEfcRxV", "itemSku": "KUhRw0s3", "itemType": "aryPZ097"}, {"count": 92, "duration": 46, "endDate": "1988-10-04T00:00:00Z", "itemId": "ItKaG9GW", "itemSku": "bA1dmEkX", "itemType": "3WYQ1faj"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 27, "fixedTrialCycles": 21, "graceDays": 90}, "regionData": {"v85N7pA9": [{"currencyCode": "tUwdE0QI", "currencyNamespace": "kpDWLJ4Y", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1972-02-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1975-04-12T00:00:00Z", "expireAt": "1974-11-21T00:00:00Z", "price": 80, "purchaseAt": "1997-06-22T00:00:00Z", "trialPrice": 80}, {"currencyCode": "a9dl5Puk", "currencyNamespace": "RHir5P3m", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1986-05-11T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1984-12-13T00:00:00Z", "expireAt": "1982-04-25T00:00:00Z", "price": 70, "purchaseAt": "1975-02-21T00:00:00Z", "trialPrice": 40}, {"currencyCode": "qdU1pknT", "currencyNamespace": "KHQz00tK", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1972-10-08T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1993-02-09T00:00:00Z", "expireAt": "1982-11-19T00:00:00Z", "price": 11, "purchaseAt": "1986-05-02T00:00:00Z", "trialPrice": 80}], "QxLxIINY": [{"currencyCode": "w5qt0Bsf", "currencyNamespace": "v8AdjdUM", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1976-08-31T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1977-08-25T00:00:00Z", "expireAt": "1989-01-30T00:00:00Z", "price": 100, "purchaseAt": "1987-11-07T00:00:00Z", "trialPrice": 64}, {"currencyCode": "Yk3oEeYZ", "currencyNamespace": "gW1Q5lv7", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1991-09-11T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1996-01-31T00:00:00Z", "expireAt": "1994-03-30T00:00:00Z", "price": 69, "purchaseAt": "1980-12-07T00:00:00Z", "trialPrice": 60}, {"currencyCode": "5IhTkmZ6", "currencyNamespace": "nrUWN6je", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1977-01-10T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1972-05-26T00:00:00Z", "expireAt": "1981-09-20T00:00:00Z", "price": 100, "purchaseAt": "1993-05-17T00:00:00Z", "trialPrice": 61}], "9oWJBkKh": [{"currencyCode": "s0gYuR3u", "currencyNamespace": "oKs21U8Q", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1989-06-12T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1978-02-26T00:00:00Z", "expireAt": "1978-10-08T00:00:00Z", "price": 33, "purchaseAt": "1999-03-06T00:00:00Z", "trialPrice": 22}, {"currencyCode": "T0XIDSbM", "currencyNamespace": "0hVvBnNQ", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1984-11-25T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1973-07-23T00:00:00Z", "expireAt": "1986-12-02T00:00:00Z", "price": 38, "purchaseAt": "1979-06-07T00:00:00Z", "trialPrice": 22}, {"currencyCode": "6WuetnQQ", "currencyNamespace": "D6A4acEU", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1981-09-03T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1977-09-28T00:00:00Z", "expireAt": "1979-05-08T00:00:00Z", "price": 13, "purchaseAt": "1980-10-28T00:00:00Z", "trialPrice": 93}]}, "saleConfig": {"currencyCode": "UXyxb4cs", "price": 48}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "DhtYXgAw", "stackable": true, "status": "ACTIVE", "tags": ["u7KNyTDC", "1KFtYECV", "3TDtpaCh"], "targetCurrencyCode": "d38qaa6f", "targetNamespace": "p2cRd8w6", "thumbnailUrl": "4sq6jIop", "useCount": 14}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2lQiUpgQ' \
    --appId 'rLA7FVj8' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate '8VYus04W' \
    --baseAppId 'WVKZ6qwF' \
    --categoryPath 'GMZYbtWv' \
    --features 'VxjSsc1g' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --limit '42' \
    --offset '79' \
    --region 'uO3oaioy' \
    --sortBy '["updatedAt:desc", "name:asc"]' \
    --storeId 'KvCijNsX' \
    --tags '6ImjBjeC' \
    --targetNamespace 'vEe4V6Uy' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["CgbNUoJ6", "6fHdFHwf", "2caM52WQ"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'vQAPYk11' \
    --itemIds 'eG3e9VxV' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '3PGRgfy8' \
    --sku 'wktByXMt' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'U6MsIqn6' \
    --populateBundle 'true' \
    --region 'kniYahGV' \
    --storeId 'DOZtgmHN' \
    --sku 'VxiEM9SJ' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'Ljd3Tvpu' \
    --region 'WuO7zQWI' \
    --storeId 'rxvoKOJy' \
    --itemIds 'oEeuK0D1' \
    --userId 'JPfLfwkY' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '4xpaTLeT' \
    --sku 'kDMdh1Cb' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["setAtnup", "RHZe0M35", "S5h1z1o1"]' \
    --storeId 'kNgyfRi7' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Qu7BiIpo' \
    --region 'dqUtzqlb' \
    --storeId 'LzZpVeXP' \
    --itemIds 'b9ExMIsJ' \
    > test.out 2>&1
eval_tap $? 129 'BulkGetLocaleItems' test.out

#- 130 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'GetAvailablePredicateTypes' test.out

#- 131 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform '4Cg7dakT' \
    --userId 'LsR8eC4k' \
    --body '{"itemIds": ["WrdMxYIU", "Cz8fGndI", "L5wqg07e"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'DpcjgKiB' \
    --body '{"changes": [{"itemIdentities": ["63jLYvel", "SHwGVa7D", "AVfQvoRw"], "itemIdentityType": "ITEM_SKU", "regionData": {"pdO1Wbe8": [{"currencyCode": "G5HvsafL", "currencyNamespace": "75MIPkmP", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1990-01-08T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1990-02-24T00:00:00Z", "discountedPrice": 34, "expireAt": "1977-10-19T00:00:00Z", "price": 46, "purchaseAt": "1989-01-25T00:00:00Z", "trialPrice": 18}, {"currencyCode": "FpfuN12C", "currencyNamespace": "JuPAo91d", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1986-12-22T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1993-07-08T00:00:00Z", "discountedPrice": 80, "expireAt": "1971-08-01T00:00:00Z", "price": 69, "purchaseAt": "1986-06-20T00:00:00Z", "trialPrice": 48}, {"currencyCode": "pfonWIAG", "currencyNamespace": "fnuokhjZ", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1984-06-09T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1990-03-20T00:00:00Z", "discountedPrice": 93, "expireAt": "1994-05-19T00:00:00Z", "price": 1, "purchaseAt": "1982-09-09T00:00:00Z", "trialPrice": 61}], "dvk597Ii": [{"currencyCode": "RBgRVe2m", "currencyNamespace": "B4zr3v2s", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1978-01-31T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1976-01-03T00:00:00Z", "discountedPrice": 70, "expireAt": "1990-03-21T00:00:00Z", "price": 9, "purchaseAt": "1982-07-23T00:00:00Z", "trialPrice": 89}, {"currencyCode": "Qi7ePZab", "currencyNamespace": "PnUxKSJR", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1985-11-13T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-08-07T00:00:00Z", "discountedPrice": 89, "expireAt": "1993-09-10T00:00:00Z", "price": 42, "purchaseAt": "1982-03-01T00:00:00Z", "trialPrice": 85}, {"currencyCode": "jtFn5nh0", "currencyNamespace": "SygIrEtI", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1978-09-12T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1993-12-07T00:00:00Z", "discountedPrice": 31, "expireAt": "1974-02-27T00:00:00Z", "price": 42, "purchaseAt": "1977-11-24T00:00:00Z", "trialPrice": 35}], "KQoNNJgf": [{"currencyCode": "aqn42eBT", "currencyNamespace": "tDnpd39l", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1991-03-19T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1973-10-20T00:00:00Z", "discountedPrice": 51, "expireAt": "1982-03-28T00:00:00Z", "price": 13, "purchaseAt": "1971-09-22T00:00:00Z", "trialPrice": 46}, {"currencyCode": "d2phGpVH", "currencyNamespace": "Mb0MVTqV", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1983-12-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1989-02-19T00:00:00Z", "discountedPrice": 57, "expireAt": "1976-05-29T00:00:00Z", "price": 98, "purchaseAt": "1990-11-27T00:00:00Z", "trialPrice": 13}, {"currencyCode": "1mEUYOVE", "currencyNamespace": "aoBgVevh", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1999-07-22T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1994-05-19T00:00:00Z", "discountedPrice": 88, "expireAt": "1999-08-28T00:00:00Z", "price": 84, "purchaseAt": "1996-12-02T00:00:00Z", "trialPrice": 87}]}}, {"itemIdentities": ["IpDu6GiV", "DmyKD1zB", "l0CWdUFI"], "itemIdentityType": "ITEM_SKU", "regionData": {"1ZdJJjLI": [{"currencyCode": "bMBMwOUE", "currencyNamespace": "5mcjh1Cp", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1971-06-30T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-12-20T00:00:00Z", "discountedPrice": 8, "expireAt": "1976-12-13T00:00:00Z", "price": 26, "purchaseAt": "1977-04-06T00:00:00Z", "trialPrice": 75}, {"currencyCode": "G7mELtNO", "currencyNamespace": "tp2nBuLh", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1985-10-29T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1980-09-11T00:00:00Z", "discountedPrice": 46, "expireAt": "1981-10-16T00:00:00Z", "price": 77, "purchaseAt": "1981-02-19T00:00:00Z", "trialPrice": 28}, {"currencyCode": "QmhQP8QS", "currencyNamespace": "kbI0Fr9p", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1994-02-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1993-03-01T00:00:00Z", "discountedPrice": 66, "expireAt": "1999-11-12T00:00:00Z", "price": 21, "purchaseAt": "1985-05-15T00:00:00Z", "trialPrice": 86}], "qQArPloV": [{"currencyCode": "ByVW4eCQ", "currencyNamespace": "sE1KDuBt", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1999-03-27T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1994-02-28T00:00:00Z", "discountedPrice": 1, "expireAt": "1986-06-21T00:00:00Z", "price": 100, "purchaseAt": "1982-12-31T00:00:00Z", "trialPrice": 27}, {"currencyCode": "OYo3keCc", "currencyNamespace": "sD6jrUZl", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1976-01-28T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1983-11-01T00:00:00Z", "discountedPrice": 97, "expireAt": "1994-05-01T00:00:00Z", "price": 93, "purchaseAt": "1993-06-27T00:00:00Z", "trialPrice": 54}, {"currencyCode": "dsIWjMz2", "currencyNamespace": "zRILLgSn", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1972-12-24T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1993-02-14T00:00:00Z", "discountedPrice": 96, "expireAt": "1991-07-30T00:00:00Z", "price": 11, "purchaseAt": "1983-12-07T00:00:00Z", "trialPrice": 11}], "WnbP8kHk": [{"currencyCode": "yeS1aZky", "currencyNamespace": "UNoqekfY", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1975-09-23T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1985-11-03T00:00:00Z", "discountedPrice": 5, "expireAt": "1980-08-09T00:00:00Z", "price": 87, "purchaseAt": "1973-08-21T00:00:00Z", "trialPrice": 88}, {"currencyCode": "OuYDpSN2", "currencyNamespace": "c4L9juDe", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1983-06-22T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1996-12-26T00:00:00Z", "discountedPrice": 10, "expireAt": "1994-09-16T00:00:00Z", "price": 0, "purchaseAt": "1973-04-05T00:00:00Z", "trialPrice": 97}, {"currencyCode": "rCvwnKGQ", "currencyNamespace": "pKhmzWDN", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1971-04-23T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1982-05-26T00:00:00Z", "discountedPrice": 4, "expireAt": "1985-03-11T00:00:00Z", "price": 4, "purchaseAt": "1993-09-28T00:00:00Z", "trialPrice": 56}]}}, {"itemIdentities": ["IcE7vPgs", "5i51NzV5", "v53QSGNO"], "itemIdentityType": "ITEM_ID", "regionData": {"wfBJbrAQ": [{"currencyCode": "WXgv7Qke", "currencyNamespace": "YaTNKoIJ", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1978-09-29T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-12-29T00:00:00Z", "discountedPrice": 75, "expireAt": "1972-05-25T00:00:00Z", "price": 28, "purchaseAt": "1989-10-11T00:00:00Z", "trialPrice": 48}, {"currencyCode": "TCTytFPf", "currencyNamespace": "LfKQESkn", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1987-05-11T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1996-11-12T00:00:00Z", "discountedPrice": 76, "expireAt": "1986-06-30T00:00:00Z", "price": 75, "purchaseAt": "1987-04-20T00:00:00Z", "trialPrice": 31}, {"currencyCode": "40Ffirqj", "currencyNamespace": "ItD2G4WH", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1980-10-17T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1972-01-10T00:00:00Z", "discountedPrice": 22, "expireAt": "1988-10-03T00:00:00Z", "price": 22, "purchaseAt": "1977-05-23T00:00:00Z", "trialPrice": 97}], "5lYeYNoc": [{"currencyCode": "jjJB4eUt", "currencyNamespace": "c9bVNXzz", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1994-12-12T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1974-10-13T00:00:00Z", "discountedPrice": 72, "expireAt": "1981-01-24T00:00:00Z", "price": 70, "purchaseAt": "1982-10-10T00:00:00Z", "trialPrice": 3}, {"currencyCode": "WV5sx9If", "currencyNamespace": "a91wFbkT", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1979-11-05T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1995-11-04T00:00:00Z", "discountedPrice": 29, "expireAt": "1978-12-03T00:00:00Z", "price": 0, "purchaseAt": "1997-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "rSgBXuRh", "currencyNamespace": "MeR1mDRr", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1986-01-23T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1991-01-25T00:00:00Z", "discountedPrice": 74, "expireAt": "1982-04-16T00:00:00Z", "price": 31, "purchaseAt": "1983-06-09T00:00:00Z", "trialPrice": 55}], "kav8nEve": [{"currencyCode": "gaVYEd6e", "currencyNamespace": "xSmtTBsl", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1994-03-04T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1987-07-07T00:00:00Z", "discountedPrice": 56, "expireAt": "1976-01-07T00:00:00Z", "price": 80, "purchaseAt": "1992-01-08T00:00:00Z", "trialPrice": 23}, {"currencyCode": "6wES7AhT", "currencyNamespace": "HlxThUvG", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1981-10-20T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1990-05-20T00:00:00Z", "discountedPrice": 80, "expireAt": "1989-07-31T00:00:00Z", "price": 58, "purchaseAt": "1982-02-02T00:00:00Z", "trialPrice": 77}, {"currencyCode": "lbnYHmYu", "currencyNamespace": "4nercRGh", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1991-02-10T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-08-24T00:00:00Z", "discountedPrice": 70, "expireAt": "1991-06-10T00:00:00Z", "price": 39, "purchaseAt": "1977-12-23T00:00:00Z", "trialPrice": 53}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '72' \
    --offset '16' \
    --sortBy 'tjnT2CoI' \
    --storeId 'GF532v0e' \
    --keyword 'e3EltT9r' \
    --language '2Bm5ox41' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '57' \
    --offset '77' \
    --sortBy '["name:desc", "updatedAt:asc", "createdAt"]' \
    --storeId '6HO3RqKk' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 't1W75hxi' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'LX6yQsP6' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Cgazrni1' \
    --namespace $AB_NAMESPACE \
    --storeId 'Dp7CLyuC' \
    --body '{"appId": "fR3krGVl", "appType": "DLC", "baseAppId": "VTMmb1fD", "boothName": "dkCR4JDJ", "categoryPath": "sBUtnk6k", "clazz": "ykiDFYp9", "displayOrder": 12, "entitlementType": "DURABLE", "ext": {"YZ7GIySK": {}, "BhE0BHUp": {}, "5PX0PSIg": {}}, "features": ["OcBvlhuB", "rwjPJRs0", "i76Uymfa"], "flexible": false, "images": [{"as": "Jaf337PA", "caption": "tFufS1w6", "height": 10, "imageUrl": "eWyk4S6S", "smallImageUrl": "07pKPMQy", "width": 5}, {"as": "PzThWs6a", "caption": "IEAag0Cs", "height": 3, "imageUrl": "sjA5kI3e", "smallImageUrl": "M2yDBRPS", "width": 65}, {"as": "4EhCpLLy", "caption": "dKHZW3Mc", "height": 99, "imageUrl": "oQ9smu7J", "smallImageUrl": "3p0kdiWQ", "width": 93}], "inventoryConfig": {"customAttributes": {"BYjIXuhu": {}, "DHGSbLdG": {}, "AS9Dehlr": {}}, "serverCustomAttributes": {"eZN5Dfxa": {}, "DyZ8CATm": {}, "RnMHuPOr": {}}, "slotUsed": 21}, "itemIds": ["xpgt9LMP", "3ddUUfml", "act4rrpi"], "itemQty": {"n6R1krqO": 66, "OOhhCkKd": 34, "l7bjxH17": 54}, "itemType": "COINS", "listable": false, "localizations": {"5xqNX2zR": {"description": "hdg39119", "localExt": {"zzoEVMZg": {}, "MCaclrqw": {}, "hUwD8JSj": {}}, "longDescription": "EvFmO09i", "title": "HxMp6NkW"}, "mGn1b8FX": {"description": "wux6cPGG", "localExt": {"CxUhqKJr": {}, "OffRlWNk": {}, "qqcati6Z": {}}, "longDescription": "pwZPChAJ", "title": "KiraEGQQ"}, "6ZXNUYpD": {"description": "NBy9wppw", "localExt": {"O9QzssnF": {}, "zRT2E1uS": {}, "iDAY4hJR": {}}, "longDescription": "L1UVkvPs", "title": "LbFopgc8"}}, "lootBoxConfig": {"rewardCount": 78, "rewards": [{"lootBoxItems": [{"count": 41, "duration": 92, "endDate": "1996-06-13T00:00:00Z", "itemId": "8MfXQdao", "itemSku": "pj7KG5uY", "itemType": "QKJdqpIS"}, {"count": 32, "duration": 49, "endDate": "1989-05-11T00:00:00Z", "itemId": "tMsO4iuQ", "itemSku": "qeO3iQ5S", "itemType": "d4uVkcUx"}, {"count": 28, "duration": 39, "endDate": "1983-05-03T00:00:00Z", "itemId": "PkB5JSbB", "itemSku": "Ab8nAPGd", "itemType": "2ejdn9lz"}], "name": "TORUMK96", "odds": 0.2898165070478753, "type": "REWARD_GROUP", "weight": 17}, {"lootBoxItems": [{"count": 38, "duration": 51, "endDate": "1980-11-14T00:00:00Z", "itemId": "xlZEyQdF", "itemSku": "XFiJ327M", "itemType": "J9l9W0e5"}, {"count": 74, "duration": 74, "endDate": "1995-09-27T00:00:00Z", "itemId": "EC0Eo5PG", "itemSku": "HN8tDwY9", "itemType": "hP5toCRg"}, {"count": 13, "duration": 19, "endDate": "1996-09-27T00:00:00Z", "itemId": "XoXdVGMH", "itemSku": "Z9Ds9UMc", "itemType": "n8K7WwRE"}], "name": "J6SS9Toe", "odds": 0.5920353441024683, "type": "PROBABILITY_GROUP", "weight": 53}, {"lootBoxItems": [{"count": 61, "duration": 11, "endDate": "1975-12-06T00:00:00Z", "itemId": "gwgsmozV", "itemSku": "wpMAFf8o", "itemType": "Yf65Z7F1"}, {"count": 6, "duration": 93, "endDate": "1972-01-09T00:00:00Z", "itemId": "BE8uGLSe", "itemSku": "u3IE52wn", "itemType": "C0NReAY1"}, {"count": 89, "duration": 46, "endDate": "1988-09-26T00:00:00Z", "itemId": "R9G3lrME", "itemSku": "fDqD8w90", "itemType": "0NnkclUJ"}], "name": "9BiOIaW3", "odds": 0.49309954120336175, "type": "PROBABILITY_GROUP", "weight": 89}], "rollFunction": "DEFAULT"}, "maxCount": 56, "maxCountPerUser": 8, "name": "A1K3Nc2K", "optionBoxConfig": {"boxItems": [{"count": 0, "duration": 89, "endDate": "1996-03-25T00:00:00Z", "itemId": "j3BiqRUP", "itemSku": "hQGcfPrp", "itemType": "HBbVEIDu"}, {"count": 83, "duration": 15, "endDate": "1986-03-19T00:00:00Z", "itemId": "O1wcz04F", "itemSku": "WXQ3FYR0", "itemType": "cOvZKvz6"}, {"count": 4, "duration": 72, "endDate": "1993-07-29T00:00:00Z", "itemId": "uzkDmGrO", "itemSku": "CvjRsknR", "itemType": "9nf40Nxo"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 44, "fixedTrialCycles": 62, "graceDays": 27}, "regionData": {"GePNjmwr": [{"currencyCode": "9YUSHCal", "currencyNamespace": "s8l3VBR6", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1994-06-25T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-03-21T00:00:00Z", "expireAt": "1998-05-24T00:00:00Z", "price": 49, "purchaseAt": "1979-01-10T00:00:00Z", "trialPrice": 26}, {"currencyCode": "4lJ5kxqB", "currencyNamespace": "s5a99qO4", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1975-03-01T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-05-14T00:00:00Z", "expireAt": "1976-11-27T00:00:00Z", "price": 20, "purchaseAt": "1971-10-21T00:00:00Z", "trialPrice": 89}, {"currencyCode": "B9kDAKX8", "currencyNamespace": "ItkHdbdg", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1980-01-14T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1984-12-29T00:00:00Z", "expireAt": "1975-08-28T00:00:00Z", "price": 86, "purchaseAt": "1980-02-12T00:00:00Z", "trialPrice": 96}], "nCR0Nu4Q": [{"currencyCode": "J31DW9Z9", "currencyNamespace": "f9Nv7r55", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1982-12-07T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1989-09-15T00:00:00Z", "expireAt": "1979-04-26T00:00:00Z", "price": 58, "purchaseAt": "1996-03-28T00:00:00Z", "trialPrice": 79}, {"currencyCode": "RtVces0n", "currencyNamespace": "TNKRuzv2", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1998-09-25T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1990-05-24T00:00:00Z", "expireAt": "1976-01-14T00:00:00Z", "price": 75, "purchaseAt": "1990-10-02T00:00:00Z", "trialPrice": 20}, {"currencyCode": "9yj7FDA9", "currencyNamespace": "bMBJFWVO", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1972-09-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1975-01-16T00:00:00Z", "expireAt": "1995-12-05T00:00:00Z", "price": 90, "purchaseAt": "1979-06-11T00:00:00Z", "trialPrice": 28}], "5z6HvHMs": [{"currencyCode": "7VHQlqIJ", "currencyNamespace": "axTS7tTO", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1981-07-22T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1977-04-20T00:00:00Z", "expireAt": "1993-12-23T00:00:00Z", "price": 30, "purchaseAt": "1972-05-08T00:00:00Z", "trialPrice": 35}, {"currencyCode": "Y9KX9qGD", "currencyNamespace": "rjPgRlLh", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1972-12-19T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1994-03-10T00:00:00Z", "expireAt": "1997-04-02T00:00:00Z", "price": 1, "purchaseAt": "1971-01-23T00:00:00Z", "trialPrice": 63}, {"currencyCode": "Iqk3Pghw", "currencyNamespace": "m2JTqwq6", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1987-01-04T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1994-05-10T00:00:00Z", "expireAt": "1979-01-22T00:00:00Z", "price": 90, "purchaseAt": "1986-08-28T00:00:00Z", "trialPrice": 69}]}, "saleConfig": {"currencyCode": "rG8l3XC7", "price": 40}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "HsGBgFvZ", "stackable": true, "status": "INACTIVE", "tags": ["t7iXcjC0", "783ljIR4", "SOXwVwV8"], "targetCurrencyCode": "kp8kBKdh", "targetNamespace": "dgJsEvkR", "thumbnailUrl": "QAurHzcC", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'pmaIM4vt' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["ENTITLEMENT", "REWARD", "ENTITLEMENT"]' \
    --force 'true' \
    --storeId '8YdV6Mz2' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'kTwRqeuQ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 66, "orderNo": "qPYIlFtP"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'K5K8S5Wg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Lel9CXPX' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'yUff4gHk' \
    --namespace $AB_NAMESPACE \
    --storeId 'iWDPqGlp' \
    --body '{"carousel": [{"alt": "wP2bMl6m", "previewUrl": "71dlCwH6", "thumbnailUrl": "BP14iuju", "type": "image", "url": "gJZW4avb", "videoSource": "youtube"}, {"alt": "9zxuzZ6W", "previewUrl": "VfYRu4xR", "thumbnailUrl": "b9uql9sO", "type": "video", "url": "yq5c3Hqw", "videoSource": "vimeo"}, {"alt": "ZPc8omtr", "previewUrl": "BrRObWT4", "thumbnailUrl": "ketyoznv", "type": "video", "url": "XFLpBD5K", "videoSource": "youtube"}], "developer": "vHJGmqA5", "forumUrl": "MsvMXa4M", "genres": ["MassivelyMultiplayer", "Adventure", "Racing"], "localizations": {"SFUb2PsZ": {"announcement": "nnbdswDH", "slogan": "hPnj2g7E"}, "o0E9loac": {"announcement": "JJMTNizM", "slogan": "74COk0Wm"}, "fS5ywUOV": {"announcement": "8ukic9jx", "slogan": "uw8btldm"}}, "platformRequirements": {"vKfa4Yzx": [{"additionals": "H9T9bkrH", "directXVersion": "stcHRUDX", "diskSpace": "wMC8YEeh", "graphics": "5ING4T9B", "label": "8LtCggxd", "osVersion": "x5eahAee", "processor": "e29EjFkd", "ram": "yKLZQx6A", "soundCard": "91Qm0EOj"}, {"additionals": "QAENSOng", "directXVersion": "LQEWWytp", "diskSpace": "QZLy636T", "graphics": "jxH4CeoJ", "label": "CpllTqAd", "osVersion": "SaXXgCq5", "processor": "i4hRvMBa", "ram": "mW7QV2ec", "soundCard": "lBEG6UmO"}, {"additionals": "QxfRgqqU", "directXVersion": "Lvc98Fwf", "diskSpace": "N1XcqVmv", "graphics": "0w4bpesL", "label": "b4xXqsfN", "osVersion": "GENRwUvA", "processor": "JCmYQDFo", "ram": "4X0i8Xvc", "soundCard": "dFuR9NIA"}], "xCG3MKNu": [{"additionals": "mW69A9QW", "directXVersion": "N92AZucM", "diskSpace": "0e5m5WK6", "graphics": "kYdxrqyJ", "label": "WMlJkstu", "osVersion": "envjIrmK", "processor": "9bW1T9tM", "ram": "YI0uudzg", "soundCard": "5WTmoce4"}, {"additionals": "NsK9XKMR", "directXVersion": "hY1moWdj", "diskSpace": "xqFre9vD", "graphics": "CrnDbEGW", "label": "fjStlDgn", "osVersion": "ICuRiBRE", "processor": "Q3nSLklU", "ram": "uPOYoo5h", "soundCard": "C41yOhyl"}, {"additionals": "LHCnTEuo", "directXVersion": "iXMVEXQU", "diskSpace": "DC68SKNd", "graphics": "SGCtSlv1", "label": "aSLl3Doh", "osVersion": "RjHWrn91", "processor": "mNIN9iLz", "ram": "JHOOmE7U", "soundCard": "fMoxkmVe"}], "4CDL8ee9": [{"additionals": "mSQULLuH", "directXVersion": "byLic9pH", "diskSpace": "QQGlEIAq", "graphics": "aDqbCnBk", "label": "tOvpY1Be", "osVersion": "NSV6jq6X", "processor": "lol66jRN", "ram": "CTbBiAIt", "soundCard": "En9eUXe4"}, {"additionals": "j0LK0aBG", "directXVersion": "bIIHsQxo", "diskSpace": "QPRSJNYf", "graphics": "xLtFWrHZ", "label": "sRP1572t", "osVersion": "DCSkmyyv", "processor": "4Ac35VVV", "ram": "3EhPOBuU", "soundCard": "2qhLTRK1"}, {"additionals": "5gdtO6C5", "directXVersion": "Af7h7P3a", "diskSpace": "S6z3fDF8", "graphics": "DQ7pncAO", "label": "X3xigMxZ", "osVersion": "VEga9vEZ", "processor": "KPFaKGOM", "ram": "XHYJN6JV", "soundCard": "hPQ1KZZV"}]}, "platforms": ["Linux", "Android", "Linux"], "players": ["CrossPlatformMulti", "Multi", "CrossPlatformMulti"], "primaryGenre": "Indie", "publisher": "z2ZeSfQ5", "releaseDate": "1979-02-10T00:00:00Z", "websiteUrl": "Pk8WJbm0"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'LDFd8Bq8' \
    --namespace $AB_NAMESPACE \
    --storeId 'cSqrFUyS' \
    --body '{"featuresToCheck": ["REWARD", "DLC"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '3ESnQnYy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '61asKKUj' \
    --namespace $AB_NAMESPACE \
    --storeId '0ouEkFBL' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'vBld9eE2' \
    --itemId 'TGInkcEv' \
    --namespace $AB_NAMESPACE \
    --storeId 'qMlEno1B' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'f5b9FfRS' \
    --itemId 'dEvlNwsh' \
    --namespace $AB_NAMESPACE \
    --storeId 'KJ4nNDLl' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'PVUvMrzv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'WuV5no75' \
    --populateBundle 'false' \
    --region 'i5x8iyyQ' \
    --storeId 'ezZnGHN8' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'ETXr4Mzk' \
    --namespace $AB_NAMESPACE \
    --storeId 'cdhwY7m7' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 95, "code": "bhRKSJwU", "comparison": "isGreaterThan", "name": "aU3sg4AV", "predicateType": "SeasonTierPredicate", "value": "XbO0u44T", "values": ["q9JKgrer", "89J5j0Hs", "XMJvpXMr"]}, {"anyOf": 25, "code": "ofqB0Gjy", "comparison": "is", "name": "CUmrftY6", "predicateType": "EntitlementPredicate", "value": "pwxvabA0", "values": ["wMqvEMzS", "bqNTxKW3", "hmENqmiW"]}, {"anyOf": 79, "code": "uZO9WIc4", "comparison": "isNot", "name": "VZ3oJ3IJ", "predicateType": "SeasonPassPredicate", "value": "USq7chpo", "values": ["IvKDSd5K", "QK4MJ9XB", "TA767wBv"]}]}, {"operator": "or", "predicates": [{"anyOf": 53, "code": "JNLTsk9H", "comparison": "excludes", "name": "S3MrxUzo", "predicateType": "StatisticCodePredicate", "value": "vfWVCf6p", "values": ["HjtJ6E5i", "4MyJ4lqZ", "SPq2WYyG"]}, {"anyOf": 73, "code": "2vxmNl6U", "comparison": "is", "name": "X8v5JhkG", "predicateType": "StatisticCodePredicate", "value": "4UqapZpB", "values": ["2p4dx2BP", "v7FdVHxX", "TNAldXTD"]}, {"anyOf": 33, "code": "fuLp0jic", "comparison": "excludes", "name": "6a6bw2rD", "predicateType": "EntitlementPredicate", "value": "SS0LNJLG", "values": ["Bx2ORLsZ", "etm670fH", "ec86BXzb"]}]}, {"operator": "and", "predicates": [{"anyOf": 32, "code": "nAJ1vsl2", "comparison": "isLessThanOrEqual", "name": "i89ZdQmF", "predicateType": "EntitlementPredicate", "value": "09a1HYRC", "values": ["q4yjYxQr", "KLsCa51f", "2CMaYqao"]}, {"anyOf": 76, "code": "h3oUoNcF", "comparison": "isGreaterThanOrEqual", "name": "83IK8nBC", "predicateType": "SeasonTierPredicate", "value": "8QYq0Gve", "values": ["yziLApuE", "BWkUScdG", "KoX5gBbv"]}, {"anyOf": 62, "code": "Vhx8tDRN", "comparison": "is", "name": "m4avv2t4", "predicateType": "EntitlementPredicate", "value": "cyNCwTef", "values": ["pgaaqhQf", "GtM3CU0b", "Gm94VyJ1"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'Ja5GAd7T' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "CAMPAIGN", "CAMPAIGN"]' \
    --storeId '3xfvHVSl' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'LFw9OaVI' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "37C7h6Xt"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --name 'LctWNNGF' \
    --offset '8' \
    --tag 'd7HVbRXL' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SHa0Lk3x", "name": "CuJ2IviR", "status": "ACTIVE", "tags": ["qgBkloBd", "tlWm3KXE", "hIcVM4Ip"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'WgDnMkSf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'k85HQYtw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "frD5UnND", "name": "Q5Oaoa7J", "status": "ACTIVE", "tags": ["vZrDBNro", "nqmUO7NF", "GEi4l8Lr"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'sU4MzrXW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'YcWzKi4X' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '58' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '3xQxxmuJ' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'PHjdogUf' \
    --limit '35' \
    --offset '45' \
    --orderNos '["wpuqdaB7", "yUIoEAfU", "I9ijoPPv"]' \
    --sortBy 'k2l0VtzR' \
    --startTime 'fFFsvYZ3' \
    --status 'CHARGED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 158 'QueryOrders' test.out

#- 159 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetOrderStatistics' test.out

#- 160 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'WBWXsJsH' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yzHSNACc' \
    --body '{"description": "AMD6SRUp"}' \
    > test.out 2>&1
eval_tap $? 161 'RefundOrder' test.out

#- 162 GetPaymentCallbackConfig
eval_tap 0 162 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 163 UpdatePaymentCallbackConfig
eval_tap 0 163 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 164 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentMerchantConfig' test.out

#- 165 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["80r7aP67", "QKQv7OD4", "v6F0qKid"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'fTScMRAY' \
    --externalId 'xBP4TTWS' \
    --limit '28' \
    --notificationSource 'ADYEN' \
    --notificationType 'wKJV4Tcz' \
    --offset '56' \
    --paymentOrderNo 'UuzcllZz' \
    --startDate 't2W3b2qw' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'x7fOxMMX' \
    --limit '30' \
    --offset '20' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "V4cgM4vs", "currencyNamespace": "cdibklH5", "customParameters": {"ZbwK6J7O": {}, "AN8GgwUZ": {}, "kpnDhpwD": {}}, "description": "bjLRAp8k", "extOrderNo": "qo0niC54", "extUserId": "a8JyF0ir", "itemType": "LOOTBOX", "language": "Vw_PjrR", "metadata": {"O68Wims8": "usIGGqQ7", "o4ttiLi4": "zRHgnUjS", "40tv6R2X": "5ETxZ9pq"}, "notifyUrl": "V6CtuPC0", "omitNotification": false, "platform": "Vt9lCbU7", "price": 31, "recurringPaymentOrderNo": "geEAUInE", "region": "FbyqzYRp", "returnUrl": "OImSEXfX", "sandbox": false, "sku": "KXeUAM9Z", "subscriptionId": "TIHqoWrJ", "targetNamespace": "uv7tjm4B", "targetUserId": "fnzY0VwR", "title": "lsqN55Fe"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'sVgU9O0R' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dbn11oUN' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xgE0KVJF' \
    --body '{"extTxId": "xiduK38R", "paymentMethod": "UUEjcpO6", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'q78E0bIH' \
    --body '{"description": "xTwGeAkv"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vrayMFpE' \
    --body '{"amount": 51, "currencyCode": "IaM5wr8E", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 27, "vat": 20}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aP7hw3AI' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'AlaR3JbU' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "siWQZWTi", "serviceLabel": 4}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '8RUFz13r' \
    --body '{"delegationToken": "HJp2YUDK", "sandboxId": "dzib97Tg"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "GooglePlay", "Other"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["Steam", "Steam", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 181 'ResetPlatformWalletConfig' test.out

#- 182 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'GetRevocationConfig' test.out

#- 183 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateRevocationConfig' test.out

#- 184 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeleteRevocationConfig' test.out

#- 185 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'y60MvsfY' \
    --limit '97' \
    --offset '1' \
    --source 'OTHER' \
    --startTime 'D7EqisUi' \
    --status 'FAIL' \
    --transactionId 'fcg6eMHx' \
    --userId 'DRfcMTXg' \
    > test.out 2>&1
eval_tap $? 185 'QueryRevocationHistories' test.out

#- 186 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'GetRevocationPluginConfig' test.out

#- 187 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "acQxBaEC"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Icew20lm"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateRevocationPluginConfig' test.out

#- 188 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'DeleteRevocationPluginConfig' test.out

#- 189 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 189 'UploadRevocationPluginConfigCert' test.out

#- 190 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5ZSkg90n", "eventTopic": "T0ilQm56", "maxAwarded": 35, "maxAwardedPerUser": 36, "namespaceExpression": "bKhOQVRf", "rewardCode": "gh8oQeeo", "rewardConditions": [{"condition": "hWTA3cck", "conditionName": "rwP6CtYd", "eventName": "jj2QffR1", "rewardItems": [{"duration": 94, "endDate": "1990-10-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lwvD2x6C", "quantity": 13, "sku": "lkZTXqaI"}, {"duration": 23, "endDate": "1974-12-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Ab56tBVC", "quantity": 66, "sku": "UHtFkoi6"}, {"duration": 2, "endDate": "1993-09-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CfA7sTYS", "quantity": 4, "sku": "xItOaBQM"}]}, {"condition": "QUk1iFxy", "conditionName": "4iZWGhzT", "eventName": "7HXGilSq", "rewardItems": [{"duration": 3, "endDate": "1985-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vPd5yf5s", "quantity": 19, "sku": "i11bW3Ty"}, {"duration": 47, "endDate": "1993-02-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "quHpwlM7", "quantity": 62, "sku": "ud0dY1Ri"}, {"duration": 60, "endDate": "1988-10-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Tv56Y2Sh", "quantity": 7, "sku": "YpiohU4h"}]}, {"condition": "hnwXfgLV", "conditionName": "EIFZOpFq", "eventName": "IljhNZGd", "rewardItems": [{"duration": 88, "endDate": "1978-10-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "E7fET68a", "quantity": 12, "sku": "0V37mMep"}, {"duration": 46, "endDate": "1981-07-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dtniflki", "quantity": 76, "sku": "PestKVII"}, {"duration": 34, "endDate": "1976-09-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lpd9EB71", "quantity": 80, "sku": "NGpjFZGO"}]}], "userIdExpression": "38DH4UOl"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'HgPenKVe' \
    --limit '87' \
    --offset '12' \
    --sortBy '["rewardCode", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 191 'QueryRewards' test.out

#- 192 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'ExportRewards' test.out

#- 193 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '8rOEAeK6' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'WdbyhODc' \
    --body '{"description": "yzw7OL9w", "eventTopic": "36BiOu3L", "maxAwarded": 63, "maxAwardedPerUser": 74, "namespaceExpression": "NLpf5GbH", "rewardCode": "YoYpP6Nu", "rewardConditions": [{"condition": "qQjpFnYT", "conditionName": "MOlQUBdU", "eventName": "BXQloJ4T", "rewardItems": [{"duration": 37, "endDate": "1973-10-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DKfjxmsS", "quantity": 75, "sku": "4GM5XCYt"}, {"duration": 64, "endDate": "1975-12-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RKrSXl1J", "quantity": 16, "sku": "eM6BNCoc"}, {"duration": 10, "endDate": "1985-05-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Ksa2cDep", "quantity": 45, "sku": "btJFiSdF"}]}, {"condition": "Bc9wUGTX", "conditionName": "MHKBRAi6", "eventName": "vbVZQy5R", "rewardItems": [{"duration": 64, "endDate": "1986-10-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "f1M3wOmt", "quantity": 13, "sku": "gjpYWYvr"}, {"duration": 39, "endDate": "1972-12-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UueOSAM0", "quantity": 37, "sku": "72ZdQgN2"}, {"duration": 78, "endDate": "1991-06-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "93o4nXv2", "quantity": 85, "sku": "ZylYi5lo"}]}, {"condition": "7NPYh6Ow", "conditionName": "115lcoVw", "eventName": "kjevCclY", "rewardItems": [{"duration": 28, "endDate": "1999-07-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XCN4PqYp", "quantity": 100, "sku": "AnaHtF1w"}, {"duration": 26, "endDate": "1989-10-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "AxvMU9AP", "quantity": 42, "sku": "Lzc4bhT8"}, {"duration": 57, "endDate": "1971-09-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "z91pXbgc", "quantity": 55, "sku": "IbaQK9Ph"}]}], "userIdExpression": "A3LesCc4"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ur79Syq6' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '3U8DOZiZ' \
    --body '{"payload": {"TRpV9Q1E": {}, "WYjtPnqh": {}, "0KuRonj3": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 't7TPxLk1' \
    --body '{"conditionName": "ChIykO1b", "userId": "07Im2dDc"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'SwX0JXQ2' \
    --limit '89' \
    --offset '15' \
    --start '0eIUyEvj' \
    --storeId 'QqTaZToV' \
    --viewId 'IBCEAL45' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'bgsO0CwT' \
    --body '{"active": false, "displayOrder": 90, "endDate": "1986-09-29T00:00:00Z", "ext": {"mmWWHorY": {}, "accnELbS": {}, "l3LKPdNo": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 47, "itemCount": 35, "rule": "SEQUENCE"}, "items": [{"id": "GmCVcC8D", "sku": "DRxzjBRO"}, {"id": "lN7hmuV1", "sku": "ATkohyOb"}, {"id": "gVk8Rs9F", "sku": "SYvajx9X"}], "localizations": {"M95eDPWz": {"description": "ourW50sj", "localExt": {"q9uqo0yx": {}, "72l2U1Gs": {}, "yb2cVbqK": {}}, "longDescription": "Z0CqHGxt", "title": "dKvB51Kx"}, "px2RXaLt": {"description": "XuGdvcDH", "localExt": {"PmgPdg6b": {}, "gL6iZF5K": {}, "yDmycbBY": {}}, "longDescription": "NQhmjmwG", "title": "gh8bGojY"}, "kSoVSbO3": {"description": "NuNxJi84", "localExt": {"XAOJHOyu": {}, "ZOus3wKX": {}, "tmp4iXZF": {}}, "longDescription": "j3ro4L4z", "title": "ThuIVZAw"}}, "name": "wzDD7wP4", "rotationType": "FIXED_PERIOD", "startDate": "1996-05-06T00:00:00Z", "viewId": "MSWWhUQD"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '2diyoqIk' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'D8zKVhBZ' \
    --storeId 'S2Aiq6o8' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ZNqgoPIA' \
    --storeId 'jVlS2z74' \
    --body '{"active": true, "displayOrder": 51, "endDate": "1994-03-24T00:00:00Z", "ext": {"beT5ARrz": {}, "eGtM04lN": {}, "1wGJZFzq": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 22, "itemCount": 77, "rule": "SEQUENCE"}, "items": [{"id": "3wImDkZg", "sku": "VITSWhxm"}, {"id": "pWil2s3e", "sku": "kcM9bgt7"}, {"id": "ANUiVpES", "sku": "68bX6rka"}], "localizations": {"jnYAWR8y": {"description": "36nMtWvL", "localExt": {"3qeDQwK9": {}, "cLnrtGSM": {}, "bp95WjAC": {}}, "longDescription": "iOzuk40a", "title": "x6vwSxXS"}, "ZseWh6fR": {"description": "hwhlKQZj", "localExt": {"0QftS88T": {}, "DUg4XWFd": {}, "N8Pop7f0": {}}, "longDescription": "9AJjHg6y", "title": "sYGrWOLw"}, "6mcWymID": {"description": "hHGHu6G3", "localExt": {"6b4hPRrE": {}, "lmekYi0J": {}, "6SE7ixNK": {}}, "longDescription": "R0zpESkO", "title": "MeAaBZex"}}, "name": "n7NaTD7K", "rotationType": "CUSTOM", "startDate": "1972-04-19T00:00:00Z", "viewId": "6f5Oy7iA"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'LbiPJlWl' \
    --storeId 'pOKNYJlG' \
    > test.out 2>&1
eval_tap $? 204 'DeleteSection' test.out

#- 205 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'ListStores' test.out

#- 206 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "Z6l7Unvs", "defaultRegion": "Fx5HIlwX", "description": "TNNxXt2s", "supportedLanguages": ["hQUdYsIL", "LPgEgpBv", "RAX6gqtv"], "supportedRegions": ["OFZz6vbr", "TRa2cVNc", "OXjxfbCt"], "title": "etRFHF84"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 207 'GetCatalogDefinition' test.out

#- 208 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 208 'DownloadCSVTemplates' test.out

#- 209 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["OiZh3y0G", "VBmyZioA", "88ei6Vyr"], "idsToBeExported": ["IJGPY2Rb", "T9C5ozPs", "9UnSzZQ5"], "storeId": "58uTHOCZ"}' \
    > test.out 2>&1
eval_tap $? 209 'ExportStoreByCSV' test.out

#- 210 ImportStore
eval_tap 0 210 'ImportStore # SKIP deprecated' test.out

#- 211 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStore' test.out

#- 212 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'DeletePublishedStore' test.out

#- 213 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 213 'GetPublishedStoreBackup' test.out

#- 214 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'RollbackPublishedStore' test.out

#- 215 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'oaAWMW0R' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'U1Rx0eA8' \
    --body '{"defaultLanguage": "zdFQw0eT", "defaultRegion": "C6TL7aN4", "description": "oS7iIQLh", "supportedLanguages": ["AZoEU4TB", "UB5oa484", "nhCbzT7T"], "supportedRegions": ["S57daEAc", "jVT006nD", "BAiYPMdJ"], "title": "KnJ16GAV"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'A8DxzMwn' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '0Y7MoNxz' \
    --action 'UPDATE' \
    --itemSku 'TVsvq3na' \
    --itemType 'INGAMEITEM' \
    --limit '65' \
    --offset '91' \
    --selected 'true' \
    --sortBy '["createdAt:desc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'WYaLeVic' \
    --updatedAtStart 'idY6xBuY' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'NvqTE2qW' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'lL7YQPWi' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'woJGv8K4' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'RyF3B9OE' \
    --action 'UPDATE' \
    --itemSku 'YVQWWiRa' \
    --itemType 'COINS' \
    --selected 'true' \
    --type 'STORE' \
    --updatedAtEnd 'oy0VJx3o' \
    --updatedAtStart '4Vsi9L4F' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'm3qogGXT' \
    --action 'DELETE' \
    --itemSku 'Qz3j4ul6' \
    --itemType 'COINS' \
    --type 'STORE' \
    --updatedAtEnd '0OIOqnx4' \
    --updatedAtStart 'aPr4csfP' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'uG6As6Tw' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '4Hd8jomR' \
    --namespace $AB_NAMESPACE \
    --storeId 'mhxvDHqn' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'FCf3xO2i' \
    --namespace $AB_NAMESPACE \
    --storeId '4GjADxFr' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Jm3QnLXG' \
    --targetStoreId 'IVKOI2MK' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'YBrd1ieN' \
    --end 'CbluqF2p' \
    --limit '82' \
    --offset '45' \
    --sortBy 'zH7ze6fI' \
    --start 'BzCOZPC7' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'npBgTx3G' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'Pbp1r1GT' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId '0qTrAGam' \
    --limit '24' \
    --offset '70' \
    --sku 'm804sP3f' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'm4UPUirR' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LtMCxVrN' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'lA2nDZOP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'uHzKlatW' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Qwl0D2LF"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'VEGsLfRP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'kaiS2SIg' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17, "orderNo": "WTUDyEWX"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 62, "currencyCode": "yQnnN4LL", "expireAt": "1976-12-02T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "3loXWSqN", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 57, "entitlementCollectionId": "KpqqrkQ0", "entitlementOrigin": "IOS", "itemIdentity": "gnXzSy6k", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "vQuxi2Wu"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 9, "currencyCode": "swqbPyi2", "expireAt": "1983-10-25T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "ycxQHYa7", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "FtNGkHVE", "entitlementOrigin": "Xbox", "itemIdentity": "2JgoQ1p6", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "TdMmkpsF"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 32, "currencyCode": "QScoCRcU", "expireAt": "1999-10-02T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "cMFvnSos", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "OwRKXVeP", "entitlementOrigin": "Other", "itemIdentity": "HYQLroC4", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 49, "entitlementId": "xlcwDhQj"}, "type": "CREDIT_WALLET"}], "userId": "tFBsbN4H"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 52, "currencyCode": "0eDsPUs6", "expireAt": "1977-11-20T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "US8CnbH7", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "X96ybDEs", "entitlementOrigin": "Other", "itemIdentity": "33gs7pd6", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "vohi9eOS"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 60, "currencyCode": "QOjpGPUR", "expireAt": "1974-04-08T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "71rixrMJ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "7Nf3Wl1y", "entitlementOrigin": "GooglePlay", "itemIdentity": "I4Sh93Lg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "9DYHbWsZ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 25, "currencyCode": "8jueJDEY", "expireAt": "1985-05-25T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "hbFOm7iN", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "5wxVz49f", "entitlementOrigin": "IOS", "itemIdentity": "u7CWyLZT", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "1HqBh8U0"}, "type": "CREDIT_WALLET"}], "userId": "0L8H0ihW"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 81, "currencyCode": "33UJ9sJA", "expireAt": "1983-08-04T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "v2OCJ3vB", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "gTtiUN4V", "entitlementOrigin": "Twitch", "itemIdentity": "K0s2yKy4", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "DZeCgtKA"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 99, "currencyCode": "1PHrsyhs", "expireAt": "1974-09-08T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "77O1zE3v", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "EL0BCnC1", "entitlementOrigin": "Playstation", "itemIdentity": "GTTRNZJl", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "s5h5LFtC"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 32, "currencyCode": "qqyqg8Nh", "expireAt": "1985-05-04T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "jWTnTQH6", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "vj9ehcqu", "entitlementOrigin": "Playstation", "itemIdentity": "kWFaMYgp", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "ZeQ4QXRs"}, "type": "CREDIT_WALLET"}], "userId": "P6vNl4LB"}], "metadata": {"UbFgjkln": {}, "XBUjiOlG": {}, "Ns7GBolm": {}}, "needPreCheck": false, "transactionId": "57kLi1D2", "type": "54Gf3bNq"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '65' \
    --status 'SUCCESS' \
    --type 'd75B9zDj' \
    --userId 'ptvVc458' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'odg4sEZE' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6l8PQcCb' \
    --body '{"achievements": [{"id": "6mI2dmPC", "value": 89}, {"id": "3viIo99A", "value": 87}, {"id": "mly0w0Kf", "value": 25}], "steamUserId": "Nur1n35W"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'J0zG9uUy' \
    --xboxUserId 'wdBDxo5P' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'V8e8YZVo' \
    --body '{"achievements": [{"id": "gG2dLCES", "percentComplete": 86}, {"id": "S7vf5JBl", "percentComplete": 18}, {"id": "EDX9CoeQ", "percentComplete": 21}], "serviceConfigId": "I4hAnFoH", "titleId": "9YEPE2P7", "xboxUserId": "8V7HizHf"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Ahm9C9xB' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gTkOfjet' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'ujIYpTDL' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '5yc8aRTb' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'jMm6zpsn' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'baXpxSIU' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '3V7flSe1' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oJUU6Hz5' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'iUrrPt0r' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'HDxmJDLA' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '3GZrSS5E' \
    --includeAllNamespaces 'false' \
    --status 'FULFILLED' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5fw06aTL' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --collectionId 'CeyWsi7K' \
    --entitlementClazz 'CODE' \
    --entitlementName 'sl1nKAOS' \
    --features '["pqFBq98E", "7IiO5Q22", "yqrSHlgd"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["ToGpzEB9", "ld1hLBxp", "A0lJ0Jb1"]' \
    --limit '82' \
    --offset '98' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '7SpmUHsf' \
    --body '[{"collectionId": "asktJnJt", "endDate": "1976-08-05T00:00:00Z", "grantedCode": "1I1X8sRc", "itemId": "smbE2jPE", "itemNamespace": "NGb26Whb", "language": "bzd_lB", "metadata": {"Kqh3B1kt": {}, "95K1kZlh": {}, "GaOyV1QP": {}}, "origin": "Twitch", "quantity": 9, "region": "tuOLBTye", "source": "OTHER", "startDate": "1974-01-08T00:00:00Z", "storeId": "dFWqVrMX"}, {"collectionId": "ID9a65yj", "endDate": "1991-10-04T00:00:00Z", "grantedCode": "3mmEsVIf", "itemId": "RSchrKY2", "itemNamespace": "xCkOMiwH", "language": "Ve-795", "metadata": {"LdCpWvyZ": {}, "VsWYSCXL": {}, "N4W2kdvG": {}}, "origin": "Playstation", "quantity": 30, "region": "FwsuziUw", "source": "REDEEM_CODE", "startDate": "1990-11-08T00:00:00Z", "storeId": "sn5HkSmI"}, {"collectionId": "BiaeaQvW", "endDate": "1980-04-29T00:00:00Z", "grantedCode": "laIvGTOY", "itemId": "DU0Tchul", "itemNamespace": "gA3VJjTM", "language": "aN_pW", "metadata": {"5Q6mtSB4": {}, "sXsAgFFL": {}, "74TxLVvj": {}}, "origin": "IOS", "quantity": 73, "region": "TfyKgbES", "source": "GIFT", "startDate": "1987-11-10T00:00:00Z", "storeId": "JgAGWmTs"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'H2nYDA4r' \
    --activeOnly 'true' \
    --appId 'Q5dLXkHq' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '1Vlks3J7' \
    --activeOnly 'false' \
    --limit '0' \
    --offset '42' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'NolNrJg0' \
    --ids '["J0GFUf5W", "1oJGN5WM", "LOPgakCJ"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3IQb6mLn' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'QrxxHIwc' \
    --itemId 'tEMn3ALh' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'S2u8N24X' \
    --ids '["4tqIiTaJ", "i9TavTfg", "sMccDQjg"]' \
    --platform 'wbh7JOLY' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ShlDISop' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform 'hbT9F6eC' \
    --sku 'ZqYHR7i0' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pvjQPHEM' \
    --appIds '["FAzxO6Jk", "FWL8Yz4V", "ubnpIOtb"]' \
    --itemIds '["rAX2Z37s", "R37y9hNg", "JsM0w5ic"]' \
    --platform 'BZ4U8u3S' \
    --skus '["c6Z8jpGQ", "qSafPlub", "vJOodzVp"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vVYOhYXM' \
    --platform '43NbV7Ef' \
    --itemIds '["3ogSMDaT", "gyXcdZgb", "RSPbi0jB"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PYV0F90R' \
    --appId '8J5cw36G' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ACJIiWSU' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'yl1JvZ9U' \
    --itemId 'xMC5bnNh' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hbdoCeFc' \
    --ids '["yPZvgiQh", "gfW7B3Zr", "pPaYbRxX"]' \
    --platform 'OWBQHpOU' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'tzvmrClH' \
    --entitlementClazz 'MEDIA' \
    --platform 'eBSGF2kq' \
    --sku 'BoXBQckt' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'mmi0mLJh' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'm9eUzYgQ' \
    --entitlementIds 'vp8Q9G7t' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '9wUgByT0' \
    --namespace $AB_NAMESPACE \
    --userId 'wIBLmrcA' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'QCN0BNc1' \
    --namespace $AB_NAMESPACE \
    --userId 'MRZzzlNP' \
    --body '{"collectionId": "99zixkxd", "endDate": "1996-08-26T00:00:00Z", "nullFieldList": ["kERdB8bE", "E7TDPGn3", "LUnYoW6d"], "origin": "Playstation", "reason": "Z3XV1gSv", "startDate": "1978-09-08T00:00:00Z", "status": "REVOKED", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'eOMKaWak' \
    --namespace $AB_NAMESPACE \
    --userId 'fW8U1C09' \
    --body '{"metadata": {"KvMDLSur": {}, "NtSDymND": {}, "11AMaz1Q": {}}, "options": ["PI1RWpIG", "wA3O6Z4X", "MrvRDCwr"], "platform": "lTK39jVl", "requestId": "t76Plsnh", "useCount": 2}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'jPoJR8BL' \
    --namespace $AB_NAMESPACE \
    --userId 'CrZW06SI' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'EkUMWAAu' \
    --namespace $AB_NAMESPACE \
    --userId 'uDciTiZ5' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'Z34FV5uf' \
    --namespace $AB_NAMESPACE \
    --userId 'G7u2JseS' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'ihLlmnu7' \
    --namespace $AB_NAMESPACE \
    --userId 'Kzz7LKCv' \
    --body '{"metadata": {"rG4g5Vbm": {}, "89zL94h2": {}, "ERVX5uaB": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'RY9MhKo9' \
    --namespace $AB_NAMESPACE \
    --userId 'lFr2vKYH' \
    --body '{"reason": "SqMdjEdQ", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'YrOZPmeG' \
    --namespace $AB_NAMESPACE \
    --userId '22eqMeyc' \
    --quantity '85' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'To1eh1oe' \
    --namespace $AB_NAMESPACE \
    --userId 'rMDSiLgB' \
    --body '{"platform": "iVGP5Kg6", "requestId": "vKjAi9aD", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'mzhtGJti' \
    --body '{"duration": 50, "endDate": "1987-04-20T00:00:00Z", "entitlementCollectionId": "HaWkiH3K", "entitlementOrigin": "Epic", "itemId": "drnFebIQ", "itemSku": "enhCrRdV", "language": "R2tzoOlW", "metadata": {"Ktiy3DLU": {}, "uUVdD8me": {}, "oN0C26rL": {}}, "order": {"currency": {"currencyCode": "UFB4r0M2", "currencySymbol": "nSY8JguX", "currencyType": "REAL", "decimals": 43, "namespace": "6kFkqD9R"}, "ext": {"jqC89u2b": {}, "RRIwCgXp": {}, "uDdiHraf": {}}, "free": false}, "orderNo": "Pxtqn0XL", "origin": "GooglePlay", "overrideBundleItemQty": {"wrIWvYAT": 79, "gkDUhgoJ": 95, "3bfSxx1M": 38}, "quantity": 77, "region": "KCFTCyU2", "source": "ACHIEVEMENT", "startDate": "1976-08-07T00:00:00Z", "storeId": "fJr5af4s"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'j3IRcAwv' \
    --body '{"code": "ql2EPbS6", "language": "kMq_005", "region": "dZsQsBFV"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'MEtAe0Uh' \
    --body '{"itemId": "bQ51xfWn", "itemSku": "sZZvtCRA", "quantity": 9}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'LKdXYKZm' \
    --body '{"entitlementCollectionId": "rjYuiBgd", "entitlementOrigin": "System", "metadata": {"WuHYrXBp": {}, "Su2QafK8": {}, "pZyWwDxs": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "1v742YXT", "namespace": "LHSz8M72"}, "item": {"itemId": "H7NVBCfa", "itemName": "O8yiyIKN", "itemSku": "OCODI2It", "itemType": "UcYHOhFW"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "ajJQ4sXx", "namespace": "RkzjmuOX"}, "item": {"itemId": "hz0VX83x", "itemName": "rGvNnJVu", "itemSku": "WNGMGxOS", "itemType": "ISA7gpk6"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "9WpngFX8", "namespace": "xLdZhAKF"}, "item": {"itemId": "KW8Hv8Mn", "itemName": "i2Qxyd32", "itemSku": "4z32jPHK", "itemType": "X9KRXvtk"}, "quantity": 36, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "MSVmzG4l"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Pqi0RmQd' \
    --endTime 'uOMIfmgJ' \
    --limit '9' \
    --offset '87' \
    --productId '52WV4EUX' \
    --startTime 'wBdFSqYW' \
    --status 'REVOKE_FAILED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'lCnnc7hr' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'CYsEv5HN' \
    --endTime 'udD6Hss1' \
    --limit '86' \
    --offset '90' \
    --startTime 'U20902Gh' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'PENzT7eO' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "qpX_yg", "productId": "7kBcptki", "region": "POEbwN1y", "transactionId": "V7UmOOem", "type": "OCULUS"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'ZTzRsdvp' \
    --namespace $AB_NAMESPACE \
    --userId 'aCIyif0h' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'BxWrh91e' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '11kRKdno' \
    --body '{"orderId": "Es77YYJU"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EWH9NxLc' \
    --activeOnly 'true' \
    --groupId 'jrQuxC3U' \
    --limit '76' \
    --offset '17' \
    --platform 'STADIA' \
    --productId 'gqstYb6N' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'VOlpHqQf' \
    --groupId 'V4JKtRlS' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId '4Vp0kJwE' \
    --productId 'TNaFAiaK' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'HZkiQO2C' \
    --activeOnly 'true' \
    --groupId 'FqyMoiF6' \
    --limit '8' \
    --offset '5' \
    --platform 'STEAM' \
    --productId 'XqJHrJ67' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'usc6IUm4' \
    --namespace $AB_NAMESPACE \
    --userId 'Xq0G451D' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id '3uzgcC0y' \
    --namespace $AB_NAMESPACE \
    --userId 'Jkd6sz0H' \
    --limit '20' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'VQc83gb6' \
    --namespace $AB_NAMESPACE \
    --userId '2oPVmqs5' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id '3XVmY9Nm' \
    --namespace $AB_NAMESPACE \
    --userId 'xNZ30yGO' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id '5lxeMkly' \
    --namespace $AB_NAMESPACE \
    --userId 'd2A5iYd5' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tAPZgUoh' \
    --discounted 'false' \
    --itemId 'g3RVOBGr' \
    --limit '66' \
    --offset '12' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ozUyFzFq' \
    --body '{"currencyCode": "wEGzZRMM", "currencyNamespace": "jc2I6nyA", "discountCodes": ["VqstYPN5", "Q71VZX9V", "gzl2fK7V"], "discountedPrice": 9, "entitlementPlatform": "Epic", "ext": {"pXOWX9M8": {}, "G3c1Hnja": {}, "Phresf00": {}}, "itemId": "Z2TxoUZu", "language": "xG6vw8mc", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 0, "quantity": 38, "region": "7dOm9w7R", "returnUrl": "0K1w6khY", "sandbox": true, "sectionId": "NIROsWfu"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '61o49htV' \
    --itemId '3nkIxCji' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0pYQ2bhK' \
    --userId '6vBAieWy' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'Bx78ee1u' \
    --userId 'YMM5tmgY' \
    --body '{"status": "FULFILLED", "statusReason": "oWff5w8E"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Rlvx8qb2' \
    --userId 'rDrxooLx' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '8Fz7KU7J' \
    --userId 'a7aQCTYp' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'L4Z5poeE' \
    --userId '6GpjwdKl' \
    --body '{"additionalData": {"cardSummary": "G6DELgWr"}, "authorisedTime": "1978-11-15T00:00:00Z", "chargebackReversedTime": "1987-09-05T00:00:00Z", "chargebackTime": "1989-08-31T00:00:00Z", "chargedTime": "1995-03-17T00:00:00Z", "createdTime": "1998-06-16T00:00:00Z", "currency": {"currencyCode": "E86Gr5dp", "currencySymbol": "YWlWjc0M", "currencyType": "VIRTUAL", "decimals": 13, "namespace": "CSner65k"}, "customParameters": {"oS2176Ve": {}, "qa3jR8Zd": {}, "F3k6xyi9": {}}, "extOrderNo": "Z0S0HrFu", "extTxId": "ThAbH0WE", "extUserId": "EmXx8J7x", "issuedAt": "1976-09-06T00:00:00Z", "metadata": {"t5TXRXOM": "D61WOBXV", "hRivbeXk": "8ofWbmV0", "JFOaDTJM": "jlQiagQg"}, "namespace": "jE07zDoe", "nonceStr": "OIkkjOXv", "paymentData": {"discountAmount": 100, "discountCode": "GipSQ0eL", "subtotalPrice": 97, "tax": 36, "totalPrice": 48}, "paymentMethod": "FKZKaMP2", "paymentMethodFee": 19, "paymentOrderNo": "bvEB3aAI", "paymentProvider": "ADYEN", "paymentProviderFee": 90, "paymentStationUrl": "tRHundgy", "price": 10, "refundedTime": "1983-08-16T00:00:00Z", "salesTax": 93, "sandbox": false, "sku": "to8kmyZm", "status": "DELETED", "statusReason": "49rtqhsu", "subscriptionId": "kR0Y8E6c", "subtotalPrice": 5, "targetNamespace": "hjUD5g2C", "targetUserId": "LrJ2McNy", "tax": 88, "totalPrice": 85, "totalTax": 22, "txEndTime": "1992-07-15T00:00:00Z", "type": "OPj47uoF", "userId": "hzHqEFU1", "vat": 28}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'k0Ge4Weu' \
    --userId 'QkYJjHVK' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ujcB95Bw' \
    --body '{"currencyCode": "P3GLs7ks", "currencyNamespace": "5NsGMVIF", "customParameters": {"RuLqKxlt": {}, "5vHBCQ99": {}, "zNye6K5n": {}}, "description": "SMVSETxm", "extOrderNo": "VjKMzRxo", "extUserId": "rhjNmohf", "itemType": "INGAMEITEM", "language": "WEaN_FSMz_QN", "metadata": {"u1qrVXBe": "dPwTOqu2", "XssAulTW": "TDgGosCj", "dYvAR1jK": "KufdV6Vm"}, "notifyUrl": "d3kNdFxs", "omitNotification": false, "platform": "Kv8LSvn2", "price": 31, "recurringPaymentOrderNo": "JVFNx2Gf", "region": "ZRJj0qEk", "returnUrl": "rtfzyyNb", "sandbox": false, "sku": "HUvJD1iv", "subscriptionId": "f99M78jQ", "title": "IYfbeBZC"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KaKAXmJf' \
    --userId 'dbJDkVZi' \
    --body '{"description": "yZ1eKH8D"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'vIIKqQJE' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'en3hQM80' \
    --body '{"code": "DbKuwQc0", "orderNo": "9cRk635B"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'MlATnyVk' \
    --body '{"meta": {"LHhxzMkm": {}, "47U7aFG7": {}, "7KU5fbMB": {}}, "reason": "uHkKC4jh", "requestId": "WNX6XnFa", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "wKGkd0tz", "namespace": "Nole3q0N"}, "entitlement": {"entitlementId": "GVcAL6Cb"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "PU6TIOj2", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "PUVCyZJX", "namespace": "xmkBWEIi"}, "entitlement": {"entitlementId": "crl4olTk"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "MXAYLtRl", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 60, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "pebcqoJs", "namespace": "z85kjSte"}, "entitlement": {"entitlementId": "ivdwFH1w"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "kC86sfup", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 58, "type": "ITEM"}], "source": "ORDER", "transactionId": "Gefd0EUD"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '7Cvf6Jrt' \
    --body '{"gameSessionId": "2i86WwZE", "payload": {"ieCsDiz6": {}, "SMsM6mMr": {}, "cypb0flD": {}}, "scid": "WO5FmdSc", "sessionTemplateName": "Htfs4Vgy"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'PUFSSgX4' \
    --chargeStatus 'NEVER' \
    --itemId 'zrHQmPUa' \
    --limit '48' \
    --offset '36' \
    --sku 'oA77yfm1' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'QaiL2rzJ' \
    --excludeSystem 'true' \
    --limit '47' \
    --offset '54' \
    --subscriptionId 't3oRKbyF' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'gs6JpOEC' \
    --body '{"grantDays": 18, "itemId": "napiITG1", "language": "E5SqY1i1", "reason": "fVd66ILK", "region": "mjHU7QVJ", "source": "w9VVd6VA"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'D3kJEkLu' \
    --itemId 'PGe1YLO3' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PMyL1ezA' \
    --userId 'lmGyzfwm' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TYUI9A1v' \
    --userId 'f9lHG2iL' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6wzHspIC' \
    --userId 'cjC25NMA' \
    --force 'true' \
    --body '{"immediate": false, "reason": "C0jbNLj4"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ETZf9coi' \
    --userId 'coK4Te9K' \
    --body '{"grantDays": 80, "reason": "pdg1lEM9"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NpDNAHxE' \
    --userId 'IFQGZowa' \
    --excludeFree 'false' \
    --limit '86' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Zo6IsE7m' \
    --userId '6BgTQ6LN' \
    --body '{"additionalData": {"cardSummary": "8X4deG8E"}, "authorisedTime": "1981-08-14T00:00:00Z", "chargebackReversedTime": "1987-01-30T00:00:00Z", "chargebackTime": "1985-07-03T00:00:00Z", "chargedTime": "1986-06-21T00:00:00Z", "createdTime": "1997-11-14T00:00:00Z", "currency": {"currencyCode": "Wz0MfuRx", "currencySymbol": "DYvSTePE", "currencyType": "REAL", "decimals": 71, "namespace": "LKysDP8M"}, "customParameters": {"2b2QYvKU": {}, "LvE2cwiQ": {}, "jm58i3XU": {}}, "extOrderNo": "VKLt4cY7", "extTxId": "veJJ8XSw", "extUserId": "lpsEmnJp", "issuedAt": "1998-10-23T00:00:00Z", "metadata": {"HopzTxVe": "nN9MWU0v", "Y5uwxqMS": "fIFJ8IEd", "FBOkJXp9": "44rp1FYp"}, "namespace": "DEi1nYWR", "nonceStr": "2D5ASDs3", "paymentData": {"discountAmount": 59, "discountCode": "XE77BDBp", "subtotalPrice": 64, "tax": 73, "totalPrice": 16}, "paymentMethod": "Q9zJOhw3", "paymentMethodFee": 95, "paymentOrderNo": "YjBbZcpM", "paymentProvider": "WXPAY", "paymentProviderFee": 82, "paymentStationUrl": "5s9dgcXx", "price": 63, "refundedTime": "1971-03-04T00:00:00Z", "salesTax": 12, "sandbox": false, "sku": "QzOr7aUb", "status": "CHARGEBACK", "statusReason": "07nfDM7t", "subscriptionId": "bvY6g74A", "subtotalPrice": 32, "targetNamespace": "cTuAP5qQ", "targetUserId": "HsfLyVWN", "tax": 75, "totalPrice": 44, "totalTax": 78, "txEndTime": "1986-04-20T00:00:00Z", "type": "D8rao4ZN", "userId": "E3a9I86M", "vat": 65}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'ShLE7vlh' \
    --namespace $AB_NAMESPACE \
    --userId 'EB8xaWSZ' \
    --body '{"count": 21, "orderNo": "1cfDR32i"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'KLt0vnyL' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '3sqb8waR' \
    --namespace $AB_NAMESPACE \
    --userId 'qUWIrbBC' \
    --body '{"allowOverdraft": false, "amount": 9, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"fjSh8WvR": {}, "N9ajfGHo": {}, "HtDrGmsX": {}}, "reason": "RB43TAeJ"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'jmwqrTbx' \
    --namespace $AB_NAMESPACE \
    --userId 'Cxhl88mE' \
    --limit '89' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'g6pkt5Un' \
    --namespace $AB_NAMESPACE \
    --userId '6S2ceqnE' \
    --request '{"amount": 41, "debitBalanceSource": "TRADE", "metadata": {"4k1hdhWf": {}, "Q0KxUKvs": {}, "KBVdFwTd": {}}, "reason": "im0TzZan", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'hUmWN6Nj' \
    --namespace $AB_NAMESPACE \
    --userId 'HxtB7HZ5' \
    --body '{"amount": 58, "expireAt": "1993-06-17T00:00:00Z", "metadata": {"1Mm03yYH": {}, "DhEgg6Gm": {}, "eqf3vpAU": {}}, "origin": "Steam", "reason": "QMZJQwGH", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'DZ1zHw54' \
    --namespace $AB_NAMESPACE \
    --userId 'w9tENXy4' \
    --request '{"amount": 19, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"sMcWlcJh": {}, "a7zrQH8G": {}, "bhESKkot": {}}, "reason": "4A9Xiivr", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Ydy7qRfx' \
    --namespace $AB_NAMESPACE \
    --userId 'WV0pb47Z' \
    --body '{"amount": 54, "metadata": {"kfuoOLEx": {}, "vuZbpbk0": {}, "1GOuiWFh": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 335 'PayWithUserWallet' test.out

#- 336 GetUserWallet
eval_tap 0 336 'GetUserWallet # SKIP deprecated' test.out

#- 337 DebitUserWallet
eval_tap 0 337 'DebitUserWallet # SKIP deprecated' test.out

#- 338 DisableUserWallet
eval_tap 0 338 'DisableUserWallet # SKIP deprecated' test.out

#- 339 EnableUserWallet
eval_tap 0 339 'EnableUserWallet # SKIP deprecated' test.out

#- 340 ListUserWalletTransactions
eval_tap 0 340 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 341 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'jXb0PziQ' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'rqbExcsx' \
    --body '{"displayOrder": 30, "localizations": {"fPIx5vgV": {"description": "HW7CNOHX", "localExt": {"MMKfPcyd": {}, "GN4fYmXN": {}, "K3qmsJZd": {}}, "longDescription": "yn1xkySz", "title": "ZHnRA56j"}, "L1YIraRj": {"description": "UrJhQnqv", "localExt": {"Du9ol6B7": {}, "EpSYDEsN": {}, "wJpEPT3g": {}}, "longDescription": "dSPkob16", "title": "5r1pi5iu"}, "qeNKY5Cn": {"description": "z6xOxesE", "localExt": {"uavp9eI5": {}, "6hQGMVbD": {}, "AsypTsp5": {}}, "longDescription": "fP9F2n5Q", "title": "WCHtgAET"}}, "name": "WKyelDLI"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'KCMmXC5N' \
    --storeId 'kfRTcTw1' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '7bGnNNCM' \
    --storeId 'bVOeVR9e' \
    --body '{"displayOrder": 51, "localizations": {"4DdxL1Hg": {"description": "bQncYNNn", "localExt": {"I5AkDN9q": {}, "FYTJXZ6F": {}, "DDex0IKa": {}}, "longDescription": "fo8bhckF", "title": "SdCzXlDB"}, "RtPvQm52": {"description": "ojJvI07G", "localExt": {"q8JKJiiQ": {}, "sjqX4TLB": {}, "zfsnqcZu": {}}, "longDescription": "JFWmqEqI", "title": "6BPeaHxU"}, "7PckVFlm": {"description": "9H43qC6U", "localExt": {"6x6Ar5Y0": {}, "ighoQKbf": {}, "axJbm3px": {}}, "longDescription": "iA85yejh", "title": "SFoMbsCC"}}, "name": "poIoCDdU"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'hxWhES6p' \
    --storeId 'QhJMw0Ru' \
    > test.out 2>&1
eval_tap $? 345 'DeleteView' test.out

#- 346 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'GetWalletConfig' test.out

#- 347 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 35, "expireAt": "1974-06-19T00:00:00Z", "metadata": {"6ma3tKJ6": {}, "7jYaClYV": {}, "zqs4cYKB": {}}, "origin": "Playstation", "reason": "iUBflEvY", "source": "IAP"}, "currencyCode": "2SXZyB92", "userIds": ["8Hq2vhKW", "GyLKJdpv", "W6CVmPxP"]}, {"creditRequest": {"amount": 51, "expireAt": "1992-06-06T00:00:00Z", "metadata": {"Chrfp8gi": {}, "z26XgfCP": {}, "cEBXTqei": {}}, "origin": "GooglePlay", "reason": "4waN9QB2", "source": "REWARD"}, "currencyCode": "MquSLCwl", "userIds": ["r8QpGGhK", "Iy0JC87h", "cNdeN0Vh"]}, {"creditRequest": {"amount": 98, "expireAt": "1974-11-25T00:00:00Z", "metadata": {"9ozSdNil": {}, "N35VnPDg": {}, "2SaWvWoT": {}}, "origin": "Oculus", "reason": "VOFDijTg", "source": "REFERRAL_BONUS"}, "currencyCode": "7kIaKwbK", "userIds": ["O4u2LrGG", "2qxbj9GK", "8hzFmHEG"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "Ujb24vm9", "request": {"allowOverdraft": true, "amount": 57, "balanceOrigin": "Epic", "balanceSource": "IAP_REVOCATION", "metadata": {"DB3rtM5M": {}, "mG94WrBy": {}, "sF1IOZCJ": {}}, "reason": "5Rv7Zn1J"}, "userIds": ["EpenZU7e", "7I3wdAuD", "QppQ6YLD"]}, {"currencyCode": "Z5um2E0p", "request": {"allowOverdraft": true, "amount": 82, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"nW2hAJwZ": {}, "ZE5eG9XV": {}, "JuqDNjqM": {}}, "reason": "Tlyw3q8W"}, "userIds": ["gnafxw1R", "IFqFqMHn", "9i39fSdw"]}, {"currencyCode": "3K9EnHhw", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"lSFXVXlB": {}, "uPVzcJzS": {}, "hsuKGYPB": {}}, "reason": "RRNSOmpa"}, "userIds": ["RmSaU0G0", "RspvFGEs", "XkVB8vZJ"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'G2rPh5w4' \
    --end 'GqW3IkGY' \
    --start 'iO0wGJvr' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["3dIVv1FU", "wWDXK78U", "QaSvcEkj"], "apiKey": "VrWUM0V1", "authoriseAsCapture": true, "blockedPaymentMethods": ["N0NWWWOj", "QIqojZKh", "Nxs2NBC8"], "clientKey": "Y5T8oo9c", "dropInSettings": "Wh4Fx9F1", "liveEndpointUrlPrefix": "a0T2L1vs", "merchantAccount": "FuMwGc3A", "notificationHmacKey": "DwWCzBz0", "notificationPassword": "MZjSAPHa", "notificationUsername": "lBOuzDVu", "returnUrl": "ZouFH0lg", "settings": "dtjs0id7"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "kKYALbPX", "privateKey": "yGeH8IRA", "publicKey": "uF7VPvbz", "returnUrl": "k6xbORwG"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "PMF96u3A", "secretKey": "UutqOrjd"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'TCiqdcRm' \
    --region 'dOl56laJ' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "qoa5H9nK", "webhookSecretKey": "Xn8zsb5R"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "CMaqeVwu", "clientSecret": "QKqfhoSZ", "returnUrl": "aI6vrro2", "webHookId": "3t3EqfzE"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["oFNcI84E", "RX5leXyj", "7uTl6vqO"], "publishableKey": "RayM2r65", "secretKey": "1Gx5nFsS", "webhookSecret": "zIKvry7T"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "I553K9VV", "key": "2nfPyDmF", "mchid": "VmxGieBZ", "returnUrl": "nE7PUFKj"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "dBfnhdVd", "flowCompletionUrl": "sVd9aAAt", "merchantId": 49, "projectId": 68, "projectSecretKey": "2matSn8W"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '54TEKDx3' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'e8d5dWke' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["OdJZcSuq", "xQAmKfYm", "UQEvz9vm"], "apiKey": "w87wefQs", "authoriseAsCapture": true, "blockedPaymentMethods": ["sCAdWa4i", "TN5oodfH", "q8d8CZb2"], "clientKey": "syQ39qfD", "dropInSettings": "NMovDHxX", "liveEndpointUrlPrefix": "BDJZCCPI", "merchantAccount": "oFgI2pWe", "notificationHmacKey": "HqiZ1Nx6", "notificationPassword": "UsX6VwrB", "notificationUsername": "CqCVji81", "returnUrl": "X0lbt3j6", "settings": "uxU893uO"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'Qmls8p0K' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'aE6ulvzr' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "tpFZoqGh", "privateKey": "0iK93bLJ", "publicKey": "aIhIZ6nS", "returnUrl": "bMLUWhDt"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'KFDSOtEo' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'sLL7opgf' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "F6GU5mm7", "secretKey": "kt44e5lW"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'CWBb4mQ3' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'GSTewWoH' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "pWEKTvHk", "webhookSecretKey": "HfYV5vKg"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id '64qgRjP4' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'OisuIvEQ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "PU4xSZvg", "clientSecret": "wQZeG2Ti", "returnUrl": "jMZ3DI4G", "webHookId": "cB01TBZX"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'U8UBwOQb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'AyUtvIo6' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["2JmOfi2F", "hLiJgn29", "TyL9ZQHR"], "publishableKey": "d21VS8g5", "secretKey": "D4Mevh1C", "webhookSecret": "UOdVStIu"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'FhdeUt7a' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'dgVJi2cc' \
    --validate 'true' \
    --body '{"appId": "kQTeRLIo", "key": "obgUYAXG", "mchid": "5KLqh8uk", "returnUrl": "LmHbfvpk"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'aksluRcD' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'REJqRVk4' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '9PGeKVAq' \
    --validate 'true' \
    --body '{"apiKey": "m25NjGaj", "flowCompletionUrl": "nMppTcLc", "merchantId": 7, "projectId": 65, "projectSecretKey": "rlifJDJ2"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'BRaHQelJ' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'FgZUZjmn' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '31' \
    --namespace 'sUy5Fv5E' \
    --offset '62' \
    --region 'XnlajNcV' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "igdWVqzM", "region": "tqelE7x8", "sandboxTaxJarApiToken": "mTAFL5Hh", "specials": ["XSOLLA", "NEONPAY", "WALLET"], "taxJarApiToken": "SAa4w1vR", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'zKziIUGe' \
    --region '2O4QX5lI' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'r1EUIjNW' \
    --body '{"aggregate": "CHECKOUT", "namespace": "KcytSfe2", "region": "BDvxU9qW", "sandboxTaxJarApiToken": "Tps1R0Pg", "specials": ["NEONPAY", "PAYPAL", "WALLET"], "taxJarApiToken": "e4Gk1zIK", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'LamBxCKC' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "4ipB8ZVe", "taxJarApiToken": "aRsyIL0V", "taxJarEnabled": false, "taxJarProductCodesMapping": {"NgIr2AkF": "hctjc8BK", "cLXb8bZJ": "XqNkgqJt", "omvwe2vN": "P2R940oP"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'AYe4NZrp' \
    --end '4gAAm9De' \
    --start '3AvbBNin' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '5YoeBPNC' \
    --storeId 'GQ42G0kj' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ZLPXHi6c' \
    --storeId 'iEN0IPIC' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '4it03at7' \
    --namespace $AB_NAMESPACE \
    --language '1MVsoERf' \
    --storeId '2ZkhVjSB' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'gDTseyXK' \
    --namespace $AB_NAMESPACE \
    --language 'WFo7vzbB' \
    --storeId 'a5wFNQOH' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Ly5d9m6k' \
    --namespace $AB_NAMESPACE \
    --language 'jMTkgCwF' \
    --storeId 'OKEHDCHW' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetDescendantCategories' test.out

#- 396 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 396 'PublicListCurrencies' test.out

#- 397 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 397 'GeDLCDurableRewardShortMap' test.out

#- 398 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 398 'GetAppleConfigVersion' test.out

#- 399 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '8pWunzA0' \
    --region 'lMjJlKeJ' \
    --storeId 'pDZHxYpI' \
    --appId 'iYUHfj78' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'ZjcOEeUQ' \
    --categoryPath 'nc7OHJkN' \
    --features '0b9wB6V2' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --language 'NmDr5jVh' \
    --limit '88' \
    --offset '30' \
    --region 'xsryyHx0' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "name:desc"]' \
    --storeId 'sXNjJMvi' \
    --tags '7ZgLhAKW' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'ZsbukGHp' \
    --region 'sPdutRJa' \
    --storeId 'pcNlozyo' \
    --sku 'RV6nvvXG' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'W246PFyB' \
    --storeId 'BeKHbiEF' \
    --itemIds '1yvHz38D' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'P7Mg4Vgz' \
    --region 'WcyAwPKx' \
    --storeId 'KVXxrtIK' \
    --itemIds 'MaC5Zzqr' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Wx8OJk6e", "KwyfWCqM", "kGT3Z1e9"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'CODE' \
    --limit '1' \
    --offset '32' \
    --region 'ubaAayBC' \
    --storeId 'Ue5HREQs' \
    --keyword 'By36rF2i' \
    --language 'feuKPKPY' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'njR5GhLf' \
    --namespace $AB_NAMESPACE \
    --language 'rWEaa0n9' \
    --region '209TW75V' \
    --storeId '8x69WEQn' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'BhlwdZEU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'qE4HKgUO' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'FYoak0Ob' \
    --populateBundle 'true' \
    --region 'cy3Wd1Mc' \
    --storeId 'kmC1ArSP' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "UKy2KyF8", "successUrl": "264SabgL"}, "paymentOrderNo": "wky1OH7K", "paymentProvider": "CHECKOUT", "returnUrl": "Jr9ZCq5R", "ui": "0rUshdly", "zipCode": "23Ht3noT"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1th6STaH' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ioaOvQ0d' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wzcp2YLw' \
    --paymentProvider 'XSOLLA' \
    --zipCode '4a0MD0ve' \
    --body '{"token": "FbFZektZ"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IWEoo43L' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'XW0bzL7X' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'sJ8joQVZ' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'EXfGzxhQ' \
    --foreinginvoice 'dXUakK6m' \
    --invoiceId 'gX1mODLC' \
    --payload 'ckxMssoI' \
    --redirectResult 'gWxNiHB2' \
    --resultCode '299MnWIN' \
    --sessionId 'BCj6SM3d' \
    --status 'nTdKEbrT' \
    --token 'TnmIwzW0' \
    --type 'RQaL3XoX' \
    --userId 'PeVJOXvw' \
    --orderNo 'FMnJyz01' \
    --paymentOrderNo 'HEvJkq0O' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'JgardJ5q' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'YsuLA7IR' \
    --paymentOrderNo '5VZNKtAP' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'VZW0qeoo' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'lWT2GIQG' \
    --limit '99' \
    --offset '92' \
    --sortBy '["namespace:asc", "namespace", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'HS5hIkQi' \
    > test.out 2>&1
eval_tap $? 422 'GetReward1' test.out

#- 423 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 423 'PublicListStores' test.out

#- 424 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["5YTE5bzB", "36FTvpnS", "WXKHwsoK"]' \
    --itemIds '["o9WI1kSo", "qqYHSArW", "JAtL6Ans"]' \
    --skus '["D8wWZ5CO", "2nxqiCza", "uDFOei0j"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'ibwePIme' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'MbDv8ga6' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'yuntbZRg' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["ghXok5Jj", "2gV4DE0G", "JmK126gY"]' \
    --itemIds '["NMV1pAuw", "fipOPC3V", "L0D21a13"]' \
    --skus '["E2b9zC8q", "lhl3xGBF", "3F1cqJKQ"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "RlRp0IOZ", "language": "wS-AvAP", "region": "tRX5acHi"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '1sGepBno' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'YzoPCwpW' \
    --body '{"epicGamesJwtToken": "bCWG86Rc"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Gh4Zsygb' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'B6h6hsyQ' \
    --body '{"serviceLabel": 76}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'olFSxeiI' \
    --body '{"serviceLabels": [32, 90, 20]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LjROerql' \
    --body '{"appId": "zbsddmDW", "steamId": "X0KyBExJ"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UAKMpuz7' \
    --body '{"xstsToken": "XjC1s84O"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'oulqdbVS' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'm6iD9lxX' \
    --features '["Rkq5HucY", "kqSCbUz6", "r2Xu9X3F"]' \
    --itemId '["mkJ4apu5", "IRqHr544", "WUv4IZrq"]' \
    --limit '47' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'iL3bLQhA' \
    --appId '1CuLCl71' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SVqyMhZz' \
    --limit '27' \
    --offset '54' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'l6R1l0Y0' \
    --availablePlatformOnly 'false' \
    --ids '["D06dwNEd", "YOuhU3xe", "0nW6rWw3"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Zyui5F8m' \
    --endDate '453h7TPR' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '45' \
    --offset '37' \
    --startDate 'R7BKQqM6' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'wnFda9Uw' \
    --appIds '["wnT0ekrz", "pzVk00ou", "CBteeVWc"]' \
    --itemIds '["82Wu2AsJ", "OrVwzNQq", "Bly0MCFF"]' \
    --skus '["SP6ocKPf", "dGpuOr97", "kIS3q7IL"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Htx0UUwo' \
    --appId '6GtvtST7' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'pd4IkHbr' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '5Gs0mdSK' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8LjBThW2' \
    --ids '["x7Ke4yOM", "Jfft5Rqa", "gS8Y8eD3"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'wKwkI4qk' \
    --entitlementClazz 'CODE' \
    --sku 'MwGa5XG8' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'zzeTdX34' \
    --namespace $AB_NAMESPACE \
    --userId 'fcW4sNWH' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '5gb8Mllr' \
    --namespace $AB_NAMESPACE \
    --userId 't31oILdx' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["LVXG3HRS", "nXZ14fTp", "ZNmvjQub"], "requestId": "5Qoh14bs", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'szMN50bN' \
    --namespace $AB_NAMESPACE \
    --userId 'GPemk9pt' \
    --body '{"requestId": "becImOKJ", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'xibX469J' \
    --namespace $AB_NAMESPACE \
    --userId 'dRUDNVCa' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 65}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'xlQp2yEl' \
    --namespace $AB_NAMESPACE \
    --userId 'QWCTFVtm' \
    --body '{"entitlementId": "Ti3GUBxF", "metadata": {"operationSource": "INVENTORY"}, "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ICMo1yOo' \
    --body '{"code": "NsWXEJ3X", "language": "RO_dDJd", "region": "s2FuLdcD"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'PfJlKTgj' \
    --body '{"excludeOldTransactions": true, "language": "FAR-862", "productId": "KlHpFqn0", "receiptData": "RJP5UJlG", "region": "IEpjP14y", "transactionId": "UQ649gGT"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '5tbqS0k4' \
    --body '{"epicGamesJwtToken": "LWu8dcXO"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zkSWAcvk' \
    --body '{"autoAck": true, "autoConsume": true, "language": "fQG_JFvp_255", "orderId": "S8qGk2JA", "packageName": "5VhxG9JW", "productId": "iZQ0Qd1t", "purchaseTime": 23, "purchaseToken": "ZYF58e6l", "region": "N988koDS", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'VOOnYSLx' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'OB0Y6BNk' \
    --body '{"currencyCode": "SQnTDvGC", "price": 0.8088767193429328, "productId": "KfMpwU1s", "serviceLabel": 25}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Gmt7nkWk' \
    --body '{"currencyCode": "JbJAlNnR", "price": 0.6381830851014634, "productId": "peLmBIX5", "serviceLabels": [21, 100, 29]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Hh2OqWIW' \
    --body '{"appId": "hMUpxI3d", "currencyCode": "CPXlR9KK", "language": "NDab_XTZa", "price": 0.6221426493492241, "productId": "ZW9ROefT", "region": "YgZccDxW", "steamId": "1oUXjIZi"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'j5FSSU1t' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'yEBopwhq' \
    --body '{"orderId": "bN4pJach"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'ya6Kq0tZ' \
    --activeOnly 'false' \
    --groupId 'Ba1KWmC5' \
    --limit '50' \
    --offset '31' \
    --productId 'gcMSX3UW' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'aSKFTK8m' \
    --body '{"gameId": "B4ePNZNd", "language": "wl-yuqQ", "region": "X5EmgpBc"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gd6aGtNA' \
    --body '{"currencyCode": "qJTwK4YF", "price": 0.4115400877818698, "productId": "rz8iootL", "xstsToken": "SgCg9fKF"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'eNCurI55' \
    --discounted 'false' \
    --itemId 'ZN9r8lCw' \
    --limit '63' \
    --offset '38' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '8Pvi4zLZ' \
    --body '{"currencyCode": "lhkK6pp7", "discountCodes": ["xPe3jbUp", "uIVKFkUI", "tc7kOQWt"], "discountedPrice": 17, "ext": {"p2OC2Wgr": {}, "qcBmpEMc": {}, "93kYEj5z": {}}, "itemId": "WK1MN4sE", "language": "Uv_RNng-oC", "price": 3, "quantity": 81, "region": "cuoqcXDV", "returnUrl": "KiREYuvI", "sectionId": "pVRHWQQQ"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'AF5aZlJY' \
    --body '{"currencyCode": "MSxISnGj", "discountCodes": ["ALycApaj", "o8Qd7c4L", "qTdasL0V"], "discountedPrice": 78, "itemId": "Tu2Xo9Wa", "price": 3, "quantity": 58}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UKUVma6q' \
    --userId 'Rn2arGbV' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'SjgrD5uZ' \
    --userId 'DDNBzwqu' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'YNMsRL3N' \
    --userId 'oCR16hPu' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '2YJ4fDGP' \
    --userId 'lIqwWXqf' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '83ydPTlN' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'H3kOgCjj' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'Dzh4fcrw' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '7SvHYq8h' \
    --autoCalcEstimatedPrice 'false' \
    --language 'MXMrw7R4' \
    --region 'YHe97n2P' \
    --storeId 'eu9TLT2k' \
    --viewId 'nyxJIsPR' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'j3wpvgPQ' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 't6ngE4ms' \
    --limit '31' \
    --offset '14' \
    --sku 'v7d1VDfg' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '76FHG0P3' \
    --body '{"currencyCode": "bGRVmXzI", "itemId": "RdvCdqyW", "language": "aD_HHpE-hw", "region": "pJEKjlfs", "returnUrl": "nTIQiS6P", "source": "3G6K77UM"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wG8DAIaV' \
    --itemId 'ZjHyf2Vn' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GAAzakfz' \
    --userId 'TxMaGNca' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sn1ujaFg' \
    --userId '4mu3fAOs' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6usIRX0W' \
    --userId 'xEZ3qQzn' \
    --body '{"immediate": false, "reason": "ruyWwV6E"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BfUxZGO5' \
    --userId 'dmTx1qpv' \
    --excludeFree 'true' \
    --limit '8' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'wxLLen3b' \
    --language '3RyoyYG1' \
    --storeId 'nR2zjq9E' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'hgPBkwDa' \
    --namespace $AB_NAMESPACE \
    --userId 'AQCHSEXo' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'REKtWEi4' \
    --namespace $AB_NAMESPACE \
    --userId 'duxD4KKb' \
    --limit '36' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'pTPDNEfv' \
    --limit '15' \
    --offset '27' \
    --startTime 'UWOPNcME' \
    --state 'REVOKE_FAILED' \
    --transactionId 'dMJkaX8f' \
    --userId 'OESVm4fT' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'iiDyqJNP' \
    --baseAppId '29vY1IQv' \
    --categoryPath '33fMM9gN' \
    --features 'yR9yx75y' \
    --includeSubCategoryItem 'true' \
    --itemName 'DHRRH7TZ' \
    --itemStatus 'ACTIVE' \
    --itemType '["SUBSCRIPTION", "APP", "INGAMEITEM"]' \
    --limit '82' \
    --offset '99' \
    --region 'h8DxeGyz' \
    --sectionExclusive 'false' \
    --sortBy '["name", "createdAt:desc", "name:asc"]' \
    --storeId 'Tp13JcXM' \
    --tags 'Uv0C0RMj' \
    --targetNamespace 'pgW3igI1' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'WNNRqtNi' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '7Rk3YVCR' \
    --body '{"itemIds": ["GWuvFnyc", "ZaY453Mz", "EOj2bP7c"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'DIXmXG7p' \
    --body '{"entitlementCollectionId": "INzK0ooB", "entitlementOrigin": "Epic", "metadata": {"eevajfgT": {}, "zMn0piNQ": {}, "4u6y3V11": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "0FFSclWI", "namespace": "uHBChhNn"}, "item": {"itemId": "Vw5SUI64", "itemName": "lBV6BODt", "itemSku": "dCl1tn9R", "itemType": "keu7xXFo"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "w6H78nFC", "namespace": "0zPOr7Ku"}, "item": {"itemId": "oIBcGiOX", "itemName": "Nqc0zZaz", "itemSku": "jiZTPcSy", "itemType": "LT5zNIuj"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "3lZQyZUz", "namespace": "k0ERoX4J"}, "item": {"itemId": "NAKL0C83", "itemName": "DsGmGizd", "itemSku": "n3HJxVJP", "itemType": "yq0xetl6"}, "quantity": 100, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "OIvKkuv6"}' \
    > test.out 2>&1
eval_tap $? 492 'FulfillRewardsV2' test.out

#- 493 FulfillItems
eval_tap 0 493 'FulfillItems # SKIP deprecated' test.out

#- 494 RetryFulfillItems
eval_tap 0 494 'RetryFulfillItems # SKIP deprecated' test.out

#- 495 RevokeItems
eval_tap 0 495 'RevokeItems # SKIP deprecated' test.out

#- 496 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'o94Z5i7J' \
    --body '{"transactionId": "x8qcBZhq"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'rQsFaktL' \
    --userId 'LKPJ0GHN' \
    --body '{"items": [{"duration": 9, "endDate": "1989-12-09T00:00:00Z", "entitlementCollectionId": "1a47IhvK", "entitlementOrigin": "GooglePlay", "itemId": "OxkeLp1g", "itemSku": "99lNZBqT", "language": "Cz0AFIo5", "metadata": {"3zFM5Vd1": {}, "djg38GMn": {}, "AtzAjsd7": {}}, "orderNo": "epSjkvnP", "origin": "Xbox", "quantity": 85, "region": "RuuBZSFO", "source": "OTHER", "startDate": "1996-01-05T00:00:00Z", "storeId": "cogzRB2r"}, {"duration": 88, "endDate": "1977-06-10T00:00:00Z", "entitlementCollectionId": "FP5NF5nq", "entitlementOrigin": "IOS", "itemId": "3Vex0MTU", "itemSku": "1Fs0zH0Y", "language": "4yMbmw8q", "metadata": {"a0xYvoAw": {}, "8G3Tmxa7": {}, "VcYBhG9B": {}}, "orderNo": "gepY7CIf", "origin": "Twitch", "quantity": 44, "region": "uqVVHAjA", "source": "REDEEM_CODE", "startDate": "1978-09-01T00:00:00Z", "storeId": "Ckok9DZ7"}, {"duration": 84, "endDate": "1996-03-18T00:00:00Z", "entitlementCollectionId": "h9iS6l2E", "entitlementOrigin": "GooglePlay", "itemId": "Pk4iuZc6", "itemSku": "duTMvlMe", "language": "pQLgnEUB", "metadata": {"TpHUW0TE": {}, "Fkr2E3Qr": {}, "rmZL6rZH": {}}, "orderNo": "yeN967Dj", "origin": "Steam", "quantity": 64, "region": "njfryiFX", "source": "SELL_BACK", "startDate": "1991-07-27T00:00:00Z", "storeId": "VBXFBwVF"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'vV8Ihczb' \
    --userId '2hprAwQl' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '4OBtQzxs' \
    --userId 'DGIGk2mF' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE