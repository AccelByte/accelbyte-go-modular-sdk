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
echo "1..478"

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
    --id 'MsqfCi6H' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'gVcvcThq' \
    --body '{"grantDays": "tcbThItP"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'b7Sso24q' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'ShucejnV' \
    --body '{"grantDays": "jXBMa3ux"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "8xF7xMxX", "dryRun": false, "fulfillmentUrl": "xAx03xiq", "itemType": "INGAMEITEM", "purchaseConditionUrl": "awypSOHD"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'WfYV1Skh' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'CevdHE8m' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'nHw4Ybq1' \
    --body '{"clazz": "mp0Tlywp", "dryRun": true, "fulfillmentUrl": "XVOJllxH", "purchaseConditionUrl": "EyJyNfaq"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'g8pan7vK' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'IaHAd1Tb' \
    --offset '37' \
    --tag 'Z7cUpwIG' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WQM7Na5B", "discountConfig": {"categories": [{"categoryPath": "0KZ7m62M", "includeSubCategories": true}, {"categoryPath": "EOjiiZZc", "includeSubCategories": true}, {"categoryPath": "Jx9FfYyB", "includeSubCategories": true}], "currencyCode": "G5wcCVDx", "currencyNamespace": "JjyrMkrj", "discountAmount": 6, "discountPercentage": 47, "discountType": "AMOUNT", "items": [{"itemId": "nOjNBgaK", "itemName": "p5qkrkVl"}, {"itemId": "gLEPNFJl", "itemName": "T5CedX36"}, {"itemId": "7ZOldDBq", "itemName": "gbKusjTJ"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 74, "itemId": "9EnjueHZ", "itemName": "jfDKFGYv", "quantity": 27}, {"extraSubscriptionDays": 12, "itemId": "pxlw7yG9", "itemName": "B14yCejZ", "quantity": 75}, {"extraSubscriptionDays": 84, "itemId": "RKSuRUVz", "itemName": "bLI8hRlL", "quantity": 28}], "maxRedeemCountPerCampaignPerUser": 67, "maxRedeemCountPerCode": 56, "maxRedeemCountPerCodePerUser": 12, "maxSaleCount": 99, "name": "lJJcou9O", "redeemEnd": "1988-04-29T00:00:00Z", "redeemStart": "1986-10-06T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["8qKCeqQ6", "jwqBFzzY", "gBwNoFmr"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'RrduCmOx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'Hk92T68v' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8GkIDclZ", "discountConfig": {"categories": [{"categoryPath": "BPQtsgKJ", "includeSubCategories": true}, {"categoryPath": "Ty8cxlFi", "includeSubCategories": true}, {"categoryPath": "hCGe0nQ6", "includeSubCategories": false}], "currencyCode": "DYZlp8fn", "currencyNamespace": "yHN9jbRN", "discountAmount": 30, "discountPercentage": 34, "discountType": "PERCENTAGE", "items": [{"itemId": "UFbvgoy7", "itemName": "eD9pMral"}, {"itemId": "AeLAXJnB", "itemName": "3fmznWP4"}, {"itemId": "vQSthhUO", "itemName": "TMBJUL4e"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 70, "itemId": "gIdxipMg", "itemName": "MwS1MTc2", "quantity": 11}, {"extraSubscriptionDays": 37, "itemId": "5W0FfOba", "itemName": "ZnEkZSDf", "quantity": 24}, {"extraSubscriptionDays": 56, "itemId": "HDPwM5rL", "itemName": "poONFkoK", "quantity": 16}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 89, "maxSaleCount": 29, "name": "grEcDD8d", "redeemEnd": "1996-11-03T00:00:00Z", "redeemStart": "1977-02-06T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["ohqimbsm", "vXC7pBvV", "TixIUQTC"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'mdYBv4LA' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "RfhpHANs", "oldName": "vtw9kqng"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'FYYnogOo' \
    --namespace $AB_NAMESPACE \
    --batchName 'm1YVkmDB' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '2WFAJQAc' \
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
    --body '{"enableInventoryCheck": true}' \
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
    --body '{"appConfig": {"appName": "pOlnpAXD"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "WNZ7wDv6"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "nHPXbsrM"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "KAb0mvzV"}, "extendType": "CUSTOM"}' \
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
    --storeId 'HbS3ARZS' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'QLMQPmBL' \
    --body '{"categoryPath": "tKScLDw0", "localizationDisplayNames": {"y6YrOmII": "6VAka8MJ", "GKudUqS0": "gmFqvn5D", "DI2l2Qq1": "iBG3wLlG"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'goJJ3ZoC' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'zmSuDglz' \
    --namespace $AB_NAMESPACE \
    --storeId 'DUMhGxg8' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'tCvxUhBN' \
    --namespace $AB_NAMESPACE \
    --storeId 'IynD7wAJ' \
    --body '{"localizationDisplayNames": {"FnP62sRs": "8aJmMZKS", "Cmr7icSE": "gDEjzDZk", "GPbiKKFL": "zcn03tNe"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '0KsvTB9z' \
    --namespace $AB_NAMESPACE \
    --storeId '5IAuIZbW' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'lcrvHnBH' \
    --namespace $AB_NAMESPACE \
    --storeId 'ilGnvgyl' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'EfZQwTbe' \
    --namespace $AB_NAMESPACE \
    --storeId 'T17D0u73' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'ugo6lHFj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'Rt6JLqtA' \
    --batchNo '[72, 74, 58]' \
    --code 'aMSGWqhv' \
    --limit '42' \
    --offset '33' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'iSWOTIv5' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "XTtObPfZ", "codeValue": "k7Kp1d3S", "quantity": 15}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'pz6mrzqn' \
    --namespace $AB_NAMESPACE \
    --batchName 'VQUp0t6U' \
    --batchNo '[42, 25, 39]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'ls0jGred' \
    --namespace $AB_NAMESPACE \
    --batchName '1ojhQ9Ie' \
    --batchNo '[16, 47, 20]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'iEA5dzg5' \
    --namespace $AB_NAMESPACE \
    --batchName 'L3NpDyKF' \
    --batchNo '[14, 82, 12]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'uI5hHXIC' \
    --namespace $AB_NAMESPACE \
    --code 'WcGI5RdD' \
    --limit '55' \
    --offset '30' \
    --userId 'cro4p606' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'e6KuVCOK' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'LtNh4TDh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'oRepEKjK' \
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
    --body '{"currencyCode": "cVN6aqSa", "currencySymbol": "NHODE1hF", "currencyType": "VIRTUAL", "decimals": 40, "localizationDescriptions": {"nPQEPR3c": "g0Z1mcR4", "AG3SP87X": "xhYj6rsK", "wqBzRwnT": "J4QWUc26"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'kMoegnQ8' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"FrhlbkDt": "VCqkFxVP", "JS9iJt9n": "Yd4fQMaO", "Gp18wd6Z": "QagLCVMd"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'JiLXgx8l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ZMApGHHq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'It6UrpdY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfig' test.out

#- 58 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "8u9ureOw", "rewards": [{"currency": {"currencyCode": "OU5Rbtsl", "namespace": "GA3cxaUH"}, "item": {"itemId": "IGqfTqY4", "itemName": "BOSR6CXi", "itemSku": "zFBRdoR1", "itemType": "IFU4I86U"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "7ha3XUw7", "namespace": "txsny5Lp"}, "item": {"itemId": "RAeCHiIf", "itemName": "s90Ec6Im", "itemSku": "7RpjXToe", "itemType": "XmjKajGF"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "rvIJPUU4", "namespace": "c9jhKb81"}, "item": {"itemId": "WgcrKbNk", "itemName": "w0k5vY2b", "itemSku": "br6jB2xc", "itemType": "zTNx0aBz"}, "quantity": 42, "type": "ITEM"}]}, {"id": "lsB4g87x", "rewards": [{"currency": {"currencyCode": "SQ5F4dtg", "namespace": "GoqSNhKx"}, "item": {"itemId": "LflFI3Nb", "itemName": "FspYZVQO", "itemSku": "VmvgU0ND", "itemType": "jtYGKc0T"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "H83SPkRM", "namespace": "ab7kaKER"}, "item": {"itemId": "GJXtbPyE", "itemName": "mpnwUR83", "itemSku": "uV3owcSB", "itemType": "ifZQcyyn"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "FZGbkl3L", "namespace": "Xo5eEHKZ"}, "item": {"itemId": "a7EokFOC", "itemName": "WhWSNoT1", "itemSku": "4FfCDrfd", "itemType": "WKEwTluT"}, "quantity": 50, "type": "CURRENCY"}]}, {"id": "5wzTQIZu", "rewards": [{"currency": {"currencyCode": "BuEEIXMJ", "namespace": "yUqbefbd"}, "item": {"itemId": "HIQasoqq", "itemName": "W6pqFhxi", "itemSku": "fA6TZ2rF", "itemType": "EozZOcjR"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "6livPbSm", "namespace": "t6vc3kb4"}, "item": {"itemId": "vvECMINS", "itemName": "MHYDCbsK", "itemSku": "lmzmunko", "itemType": "B3vqUJeL"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "Tah8DEnq", "namespace": "UzIzKi15"}, "item": {"itemId": "d4jdXBZR", "itemName": "astzG1OA", "itemSku": "ODUCL9FK", "itemType": "XtRHKSDX"}, "quantity": 33, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateDLCItemConfig' test.out

#- 59 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteDLCItemConfig' test.out

#- 60 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetPlatformDLCConfig' test.out

#- 61 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"n1IupKDv": "C6CVPaqV", "COdwcMtN": "ByFuSYWH", "NIBx9mN2": "mysV5wQU"}}, {"platform": "OCULUS", "platformDlcIdMap": {"BINBeWhK": "RAQXc1PH", "B11ItwZL": "CZA6iKmp", "ZMtCfyOm": "OZMjFRqK"}}, {"platform": "STEAM", "platformDlcIdMap": {"Deed6ZKB": "7O9MRPKf", "ucRjJO8e": "LzyFPdJN", "5JNzXVfc": "ioazk7ar"}}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'D0vvkuIH' \
    --itemId '["0tpIGhsN", "IBe6gjOE", "2RXTfZYP"]' \
    --limit '71' \
    --offset '68' \
    --origin 'GooglePlay' \
    --userId 'T97ElIav' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["RT8F7dBi", "Q1AXSVfm", "GL4vFQLH"]' \
    --limit '10' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements' test.out

#- 65 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'EnableEntitlementOriginFeature' test.out

#- 66 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "rkWlL4hq", "endDate": "1976-03-22T00:00:00Z", "grantedCode": "vfpLmadZ", "itemId": "Bcqg1MDr", "itemNamespace": "zrDGjdbD", "language": "rr-Vl", "metadata": {"Pq8FXaNB": {}, "zj6RmKXR": {}, "WWcC95qD": {}}, "origin": "Nintendo", "quantity": 53, "region": "4GbFGAd2", "source": "REDEEM_CODE", "startDate": "1992-03-07T00:00:00Z", "storeId": "BmeCprGE"}, {"collectionId": "GQ79Jg3J", "endDate": "1993-01-18T00:00:00Z", "grantedCode": "fRWjVkNu", "itemId": "mU0ImoLe", "itemNamespace": "e6uPRIpA", "language": "xk-bD", "metadata": {"SBXvVwHa": {}, "i0oR3M6h": {}, "0HjpKyYy": {}}, "origin": "System", "quantity": 13, "region": "Uh0L4AEl", "source": "REFERRAL_BONUS", "startDate": "1975-04-26T00:00:00Z", "storeId": "GYTaE64B"}, {"collectionId": "CtpKxEQS", "endDate": "1986-02-27T00:00:00Z", "grantedCode": "OFNzMr4Y", "itemId": "cIslK4YN", "itemNamespace": "ChSCO9gL", "language": "Ok-Cx", "metadata": {"OsJuAqFa": {}, "dKOEdSqS": {}, "JNIEhrZ2": {}}, "origin": "Oculus", "quantity": 37, "region": "rq9E9mAR", "source": "GIFT", "startDate": "1997-02-14T00:00:00Z", "storeId": "966rPR70"}], "userIds": ["yedmZQBe", "ShpE0tAL", "BredTJYo"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["SuWFWXct", "zHvN2V9h", "NUNxT2NQ"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '87r4JBLt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '94' \
    --status 'SUCCESS' \
    --userId 'WNPbYZIE' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '3DVt6FjG' \
    --eventType 'REFUND' \
    --externalOrderId 'QAXXPXq1' \
    --limit '44' \
    --offset '11' \
    --startTime 'jBrcPUHG' \
    --status 'INIT' \
    --userId 's4WJL7Ve' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "MOlKi50l", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 74, "clientTransactionId": "hy0bsseX"}, {"amountConsumed": 32, "clientTransactionId": "ed6CEdtt"}, {"amountConsumed": 80, "clientTransactionId": "Ipfg3GxO"}], "entitlementId": "MKk3436z", "usageCount": 56}, {"clientTransaction": [{"amountConsumed": 94, "clientTransactionId": "jhygwwCx"}, {"amountConsumed": 92, "clientTransactionId": "4ykHnRvl"}, {"amountConsumed": 36, "clientTransactionId": "tSoRoilY"}], "entitlementId": "XtwJFKfp", "usageCount": 47}, {"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "cL4lmAgJ"}, {"amountConsumed": 29, "clientTransactionId": "r5j9cdsS"}, {"amountConsumed": 53, "clientTransactionId": "abDleHRs"}], "entitlementId": "qgx9gvh5", "usageCount": 94}], "purpose": "qJJDRgfs"}, "originalTitleName": "eFPi08v2", "paymentProductSKU": "ETLOE8L4", "purchaseDate": "1mVYgoQo", "sourceOrderItemId": "NmlZhNWR", "titleName": "gRmF2PbO"}, "eventDomain": "9XxRAJYl", "eventSource": "BDuhYSQl", "eventType": "LH3Aap13", "eventVersion": 54, "id": "CCiEKwBg", "timestamp": "56cPvXyB"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetAppleIAPConfig' test.out

#- 74 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 32, "bundleId": "rZ7XCwNY", "issuerId": "0UzA9BAW", "keyId": "fZgOblvg", "password": "qEXLq7fj", "version": "V1"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateAppleIAPConfig' test.out

#- 75 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteAppleIAPConfig' test.out

#- 76 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 76 'UpdateAppleP8File' test.out

#- 77 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetEpicGamesIAPConfig' test.out

#- 78 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "bNcrM8LU"}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateEpicGamesIAPConfig' test.out

#- 79 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteEpicGamesIAPConfig' test.out

#- 80 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetGoogleIAPConfig' test.out

#- 81 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "w6BSo2Ey", "notificationTokenAudience": "Q1fMdHoV", "notificationTokenEmail": "qKdVz3tz", "packageName": "ckfVcb27", "serviceAccountId": "d6PBS4Ry"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateGoogleIAPConfig' test.out

#- 82 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteGoogleIAPConfig' test.out

#- 83 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 83 'UpdateGoogleP12File' test.out

#- 84 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'GetIAPItemConfig' test.out

#- 85 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "gwmwbxQW", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"WkKgT4y1": "lLitTSRR", "teJxuk39": "6NcnFYT0", "Nj4brqSF": "4jnjzbbR"}}, {"itemIdentity": "FzxVDttd", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"w65o6NCH": "C246vGRT", "jIbKd6J7": "UPAIZld8", "2BODG0Ed": "eFlA2cT1"}}, {"itemIdentity": "6vDoUWhv", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ua5FWaAR": "ZIkIwTAt", "G3j030CN": "dMKzx7Bv", "VpqkRbJl": "jOwCGIIk"}}]}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateIAPItemConfig' test.out

#- 86 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'DeleteIAPItemConfig' test.out

#- 87 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetOculusIAPConfig' test.out

#- 88 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "SUPwCPvv", "appSecret": "wDKAJpl5"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateOculusIAPConfig' test.out

#- 89 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'DeleteOculusIAPConfig' test.out

#- 90 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetPlayStationIAPConfig' test.out

#- 91 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "rue2nvOY", "backOfficeServerClientSecret": "isnqWtiz", "enableStreamJob": false, "environment": "CISI95am", "streamName": "Onxu3c7s", "streamPartnerName": "uFGjecT7"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdatePlaystationIAPConfig' test.out

#- 92 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeletePlaystationIAPConfig' test.out

#- 93 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'ValidateExistedPlaystationIAPConfig' test.out

#- 94 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "VziNRQgZ", "backOfficeServerClientSecret": "7h1RCRnI", "enableStreamJob": false, "environment": "rVaIiwX8", "streamName": "G33e6pCn", "streamPartnerName": "S6ehWHvX"}' \
    > test.out 2>&1
eval_tap $? 94 'ValidatePlaystationIAPConfig' test.out

#- 95 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetSteamIAPConfig' test.out

#- 96 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "3BQgKrtN", "publisherAuthenticationKey": "SMswGm6I"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateSteamIAPConfig' test.out

#- 97 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'DeleteSteamIAPConfig' test.out

#- 98 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'GetTwitchIAPConfig' test.out

#- 99 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "kYzqmnp3", "clientSecret": "hS4a2SVi", "organizationId": "CJ29i7gf"}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateTwitchIAPConfig' test.out

#- 100 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'DeleteTwitchIAPConfig' test.out

#- 101 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'GetXblIAPConfig' test.out

#- 102 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "RV1tEgni"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateXblIAPConfig' test.out

#- 103 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'DeleteXblAPConfig' test.out

#- 104 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'iqqvcpBD' \
    > test.out 2>&1
eval_tap $? 104 'UpdateXblBPCertFile' test.out

#- 105 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'H7nLymdn' \
    --externalId 'jBnficIv' \
    --limit '25' \
    --offset '46' \
    --source 'TWITCH' \
    --startDate 'F7jKB98R' \
    --status 'WARN' \
    --type 'fH88da7T' \
    > test.out 2>&1
eval_tap $? 105 'QueryThirdPartyNotifications' test.out

#- 106 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'SAbxMZD3' \
    --limit '61' \
    --offset '79' \
    --platform 'XBOX' \
    --productId 'Zl6Un7Hl' \
    --userId 'G3pj7Y5W' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartySubscription' test.out

#- 107 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'adfsgfkn' \
    --feature 'z0nfCqo2' \
    --itemId 'AqgW34i4' \
    --itemType 'LOOTBOX' \
    --startTime 'YzN49fuT' \
    > test.out 2>&1
eval_tap $? 107 'DownloadInvoiceDetails' test.out

#- 108 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'QJkCG03e' \
    --feature '7OzModkj' \
    --itemId 'AHc8jdJo' \
    --itemType 'SUBSCRIPTION' \
    --startTime 'kG1abaVw' \
    > test.out 2>&1
eval_tap $? 108 'GenerateInvoiceSummary' test.out

#- 109 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '5ucF6F5p' \
    --body '{"categoryPath": "b3H0dMMJ", "targetItemId": "rRJKr1gB", "targetNamespace": "WOuBOSoO"}' \
    > test.out 2>&1
eval_tap $? 109 'SyncInGameItem' test.out

#- 110 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'LpXsbL8R' \
    --body '{"appId": "jfkiHjkR", "appType": "GAME", "baseAppId": "2dmKbBC3", "boothName": "708mOSLV", "categoryPath": "jhf4Mur5", "clazz": "VHp09sbM", "displayOrder": 41, "entitlementType": "CONSUMABLE", "ext": {"jEoo2CnY": {}, "j7iEZZw5": {}, "2vmCRrL5": {}}, "features": ["yUdUjagc", "DJbudECp", "VspVndwQ"], "flexible": false, "images": [{"as": "rixbYYSm", "caption": "LgKUR7eA", "height": 46, "imageUrl": "54RkC6Mn", "smallImageUrl": "3skM16im", "width": 26}, {"as": "XpiQJy2B", "caption": "FiWyAOGi", "height": 33, "imageUrl": "hnnkOqE4", "smallImageUrl": "yJM9cDml", "width": 44}, {"as": "aDjDFDw6", "caption": "P2KRMGWf", "height": 68, "imageUrl": "qjh8wMJz", "smallImageUrl": "FS0O65ve", "width": 67}], "inventoryConfig": {"customAttributes": {"u2cIWETy": {}, "eFmZt6At": {}, "MQnJC55x": {}}, "serverCustomAttributes": {"ZdtZ4jbJ": {}, "CDGfnS6E": {}, "3u9hMSQ9": {}}, "slotUsed": 75}, "itemIds": ["UVLSILO4", "plpSVBmn", "IG1fumtq"], "itemQty": {"D1iRJui8": 84, "rlgGPdac": 61, "pA43Vwsy": 73}, "itemType": "SEASON", "listable": true, "localizations": {"yPmdfYLN": {"description": "tmfkO7Qm", "localExt": {"pfLHz5Ae": {}, "J5Dzygmi": {}, "4v1HSk3F": {}}, "longDescription": "4oCH13Wf", "title": "DoRb8bWH"}, "vgplrbWW": {"description": "Hh2Ui5L1", "localExt": {"Y18Ro8uy": {}, "3iZSflPM": {}, "T7NZyYwI": {}}, "longDescription": "jLWoIdoN", "title": "asnexgz5"}, "6NSxLT7D": {"description": "0F5myXaJ", "localExt": {"bAmMgC7u": {}, "uTAPy339": {}, "rKjHRsVl": {}}, "longDescription": "slUG9yQf", "title": "kLRFV10W"}}, "lootBoxConfig": {"rewardCount": 99, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 14, "endDate": "1979-04-20T00:00:00Z", "itemId": "90U4cpsv", "itemSku": "qmPUvwTU", "itemType": "57tlnO8M"}, {"count": 27, "duration": 10, "endDate": "1995-05-13T00:00:00Z", "itemId": "V5EiGcg8", "itemSku": "Y8Q7KJKH", "itemType": "dMBXRt5O"}, {"count": 12, "duration": 54, "endDate": "1985-06-13T00:00:00Z", "itemId": "9MG5iKYT", "itemSku": "f1v7VtxL", "itemType": "E8kzGMG1"}], "name": "2UsqXGDp", "odds": 0.4873584334699469, "type": "PROBABILITY_GROUP", "weight": 7}, {"lootBoxItems": [{"count": 94, "duration": 46, "endDate": "1974-10-22T00:00:00Z", "itemId": "RJdjUpkP", "itemSku": "0VsdTUTS", "itemType": "pf4ZwaW1"}, {"count": 85, "duration": 13, "endDate": "1983-04-27T00:00:00Z", "itemId": "6NP9EqS7", "itemSku": "iMP31WF9", "itemType": "ahUdBKf1"}, {"count": 45, "duration": 13, "endDate": "1989-01-08T00:00:00Z", "itemId": "MjdThvO2", "itemSku": "Hc9LdQ7N", "itemType": "mibouncG"}], "name": "OT1kkhWn", "odds": 0.9792611291704014, "type": "PROBABILITY_GROUP", "weight": 19}, {"lootBoxItems": [{"count": 41, "duration": 39, "endDate": "1982-04-09T00:00:00Z", "itemId": "wpvVwg0J", "itemSku": "cpIk1aNj", "itemType": "ETL23bIc"}, {"count": 34, "duration": 16, "endDate": "1991-05-09T00:00:00Z", "itemId": "uPV7YYBX", "itemSku": "1frKEnqP", "itemType": "RNQQgbEA"}, {"count": 65, "duration": 44, "endDate": "1990-12-03T00:00:00Z", "itemId": "t00YHg47", "itemSku": "QBx1khqG", "itemType": "7zHQV6lm"}], "name": "gvLXCMVn", "odds": 0.27785579970116137, "type": "REWARD_GROUP", "weight": 18}], "rollFunction": "DEFAULT"}, "maxCount": 85, "maxCountPerUser": 14, "name": "ywmzQSid", "optionBoxConfig": {"boxItems": [{"count": 12, "duration": 77, "endDate": "1989-04-15T00:00:00Z", "itemId": "hscnypnb", "itemSku": "aEdDrp4r", "itemType": "LN9HML4b"}, {"count": 41, "duration": 2, "endDate": "1995-09-15T00:00:00Z", "itemId": "xUTHjUz7", "itemSku": "x1R3q9oE", "itemType": "J9ZCMbx5"}, {"count": 15, "duration": 29, "endDate": "1992-07-02T00:00:00Z", "itemId": "2dSQ4FOZ", "itemSku": "5Nag9UUb", "itemType": "RLdZQWQA"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 74, "fixedTrialCycles": 40, "graceDays": 87}, "regionData": {"PVOvcjZ3": [{"currencyCode": "EFZKTSZ6", "currencyNamespace": "mAVPE688", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1976-03-25T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1989-04-04T00:00:00Z", "expireAt": "1980-08-07T00:00:00Z", "price": 87, "purchaseAt": "1982-10-08T00:00:00Z", "trialPrice": 17}, {"currencyCode": "dRykl1ZS", "currencyNamespace": "ORYzaZVo", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1972-12-27T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1991-09-23T00:00:00Z", "expireAt": "1997-10-25T00:00:00Z", "price": 14, "purchaseAt": "1972-04-22T00:00:00Z", "trialPrice": 86}, {"currencyCode": "4B7mh1og", "currencyNamespace": "1SP6VqBI", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1974-12-07T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1986-06-17T00:00:00Z", "expireAt": "1999-11-11T00:00:00Z", "price": 64, "purchaseAt": "1998-10-29T00:00:00Z", "trialPrice": 57}], "Dbyn6QeA": [{"currencyCode": "AbvA5AHq", "currencyNamespace": "ZJGbuZ2q", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1981-11-27T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1982-12-17T00:00:00Z", "expireAt": "1985-11-16T00:00:00Z", "price": 78, "purchaseAt": "1991-06-13T00:00:00Z", "trialPrice": 29}, {"currencyCode": "vrygCXmT", "currencyNamespace": "YzomqLfU", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1988-07-27T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1996-06-21T00:00:00Z", "expireAt": "1995-08-26T00:00:00Z", "price": 58, "purchaseAt": "1977-03-12T00:00:00Z", "trialPrice": 94}, {"currencyCode": "dlrZcpRH", "currencyNamespace": "5BRDM8U7", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1992-10-27T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1972-01-12T00:00:00Z", "expireAt": "1973-02-07T00:00:00Z", "price": 46, "purchaseAt": "1987-03-06T00:00:00Z", "trialPrice": 72}], "wTPkEr4i": [{"currencyCode": "ajogG63o", "currencyNamespace": "VrgeHure", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1993-06-24T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1978-04-27T00:00:00Z", "expireAt": "1997-04-11T00:00:00Z", "price": 76, "purchaseAt": "1995-09-23T00:00:00Z", "trialPrice": 64}, {"currencyCode": "3qErHQeE", "currencyNamespace": "AdPZ6tmA", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1978-04-25T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1991-11-24T00:00:00Z", "expireAt": "1978-11-15T00:00:00Z", "price": 67, "purchaseAt": "1993-04-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "jtoZlkpI", "currencyNamespace": "5cxHy73u", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1993-03-30T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1987-02-28T00:00:00Z", "expireAt": "1980-09-03T00:00:00Z", "price": 8, "purchaseAt": "1986-11-06T00:00:00Z", "trialPrice": 95}]}, "saleConfig": {"currencyCode": "M4DNOMmA", "price": 42}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "vUfplRtd", "stackable": false, "status": "INACTIVE", "tags": ["3vSelynX", "HulE8QhA", "2B1hTsRF"], "targetCurrencyCode": "NTgaOt8l", "targetNamespace": "LrgsUKWR", "thumbnailUrl": "eWJzv6hc", "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 110 'CreateItem' test.out

#- 111 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'HnEV7OMR' \
    --appId 'TqWjS6fX' \
    > test.out 2>&1
eval_tap $? 111 'GetItemByAppId' test.out

#- 112 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'uToCkFg6' \
    --baseAppId 'I8JSLsSM' \
    --categoryPath 'Blpizg3H' \
    --features 'SeZuGOlF' \
    --includeSubCategoryItem 'true' \
    --itemType 'INGAMEITEM' \
    --limit '81' \
    --offset '55' \
    --region 'iOfPtyt8' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "name:desc"]' \
    --storeId 'l9xWeZXr' \
    --tags 'AK48koK8' \
    --targetNamespace '06yycXOj' \
    > test.out 2>&1
eval_tap $? 112 'QueryItems' test.out

#- 113 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["eMH85vju", "fTefleUf", "USv1DqCi"]' \
    > test.out 2>&1
eval_tap $? 113 'ListBasicItemsByFeatures' test.out

#- 114 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'BgtjYh3V' \
    --itemIds 'r4EC5an7' \
    > test.out 2>&1
eval_tap $? 114 'GetItems' test.out

#- 115 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'EJ1xiZXx' \
    --sku 'kexqD42s' \
    > test.out 2>&1
eval_tap $? 115 'GetItemBySku' test.out

#- 116 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'ECnwfpad' \
    --populateBundle 'false' \
    --region 'T5VsQoq1' \
    --storeId '5EIIWQdA' \
    --sku 'SUQaO8fL' \
    > test.out 2>&1
eval_tap $? 116 'GetLocaleItemBySku' test.out

#- 117 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'kgGBsZu3' \
    --region 'rflfuPHt' \
    --storeId 'wArYoCow' \
    --itemIds 'a0yKhknx' \
    --userId 'q4kG9MLD' \
    > test.out 2>&1
eval_tap $? 117 'GetEstimatedPrice' test.out

#- 118 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'w6aEFSkF' \
    --sku 'pnLXbQMk' \
    > test.out 2>&1
eval_tap $? 118 'GetItemIdBySku' test.out

#- 119 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["T1bfdbb9", "jDsFpIh6", "fCrnG0lb"]' \
    --storeId 'CCLeTzp0' \
    > test.out 2>&1
eval_tap $? 119 'GetBulkItemIdBySkus' test.out

#- 120 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '86cHa2zC' \
    --region 'v3chzj6h' \
    --storeId 'f5QZCDUF' \
    --itemIds 'uLcCAzQo' \
    > test.out 2>&1
eval_tap $? 120 'BulkGetLocaleItems' test.out

#- 121 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetAvailablePredicateTypes' test.out

#- 122 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'cLy8s5vJ' \
    --userId 'XYZjXLew' \
    --body '{"itemIds": ["UpEUN3o9", "sVHzPk4j", "6EQda57w"]}' \
    > test.out 2>&1
eval_tap $? 122 'ValidateItemPurchaseCondition' test.out

#- 123 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'qGwvDrAX' \
    --body '{"changes": [{"itemIdentities": ["QWWPRXE1", "ZRrwmZKO", "m8B3PEIQ"], "itemIdentityType": "ITEM_ID", "regionData": {"hKHIR7wN": [{"currencyCode": "wnwJsQLJ", "currencyNamespace": "BO5ffxib", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1974-09-21T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1981-10-08T00:00:00Z", "discountedPrice": 100, "expireAt": "1981-01-27T00:00:00Z", "price": 6, "purchaseAt": "1983-10-17T00:00:00Z", "trialPrice": 89}, {"currencyCode": "XiYh6AWv", "currencyNamespace": "Sy0wZ1Pf", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1984-02-25T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1988-02-10T00:00:00Z", "discountedPrice": 53, "expireAt": "1983-12-27T00:00:00Z", "price": 44, "purchaseAt": "1996-02-09T00:00:00Z", "trialPrice": 80}, {"currencyCode": "IdeD4ERJ", "currencyNamespace": "g1RYgzY0", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1991-05-31T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-04-26T00:00:00Z", "discountedPrice": 96, "expireAt": "1999-01-27T00:00:00Z", "price": 80, "purchaseAt": "1984-06-21T00:00:00Z", "trialPrice": 27}], "BoeiHcyc": [{"currencyCode": "ZtOOV8SN", "currencyNamespace": "eSpfIw9n", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1973-01-13T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1999-07-05T00:00:00Z", "discountedPrice": 100, "expireAt": "1994-05-17T00:00:00Z", "price": 65, "purchaseAt": "1981-07-07T00:00:00Z", "trialPrice": 95}, {"currencyCode": "ratUzPj5", "currencyNamespace": "xIVo6k3r", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1998-06-16T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1993-07-01T00:00:00Z", "discountedPrice": 94, "expireAt": "1984-01-14T00:00:00Z", "price": 29, "purchaseAt": "1999-10-04T00:00:00Z", "trialPrice": 65}, {"currencyCode": "69prEdio", "currencyNamespace": "NU3dciQA", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1993-12-08T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1972-08-22T00:00:00Z", "discountedPrice": 40, "expireAt": "1995-03-16T00:00:00Z", "price": 47, "purchaseAt": "1993-02-08T00:00:00Z", "trialPrice": 99}], "zPrgvrSd": [{"currencyCode": "Rjny5XVy", "currencyNamespace": "QgbO5JLS", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1976-08-05T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-11-02T00:00:00Z", "discountedPrice": 92, "expireAt": "1986-12-25T00:00:00Z", "price": 41, "purchaseAt": "1981-06-22T00:00:00Z", "trialPrice": 100}, {"currencyCode": "iKVi5t0S", "currencyNamespace": "5OQvx3rL", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1973-09-25T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1998-11-28T00:00:00Z", "discountedPrice": 46, "expireAt": "1985-08-20T00:00:00Z", "price": 73, "purchaseAt": "1997-09-13T00:00:00Z", "trialPrice": 53}, {"currencyCode": "lNIclRxD", "currencyNamespace": "zkLnsCHD", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1989-09-21T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1976-08-26T00:00:00Z", "discountedPrice": 5, "expireAt": "1992-03-16T00:00:00Z", "price": 9, "purchaseAt": "1972-11-24T00:00:00Z", "trialPrice": 38}]}}, {"itemIdentities": ["seZNIf12", "VgqsERNq", "j9bmONFv"], "itemIdentityType": "ITEM_SKU", "regionData": {"fUE61DEm": [{"currencyCode": "2yHsov6X", "currencyNamespace": "E7A1kx0V", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1985-07-05T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1988-11-06T00:00:00Z", "discountedPrice": 70, "expireAt": "1988-05-07T00:00:00Z", "price": 74, "purchaseAt": "1998-12-26T00:00:00Z", "trialPrice": 90}, {"currencyCode": "r7gGuYgM", "currencyNamespace": "9EHRpbrg", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1992-03-26T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1973-01-01T00:00:00Z", "discountedPrice": 70, "expireAt": "1972-12-19T00:00:00Z", "price": 40, "purchaseAt": "1979-07-11T00:00:00Z", "trialPrice": 93}, {"currencyCode": "Y9SSzUO5", "currencyNamespace": "RRnoM9sI", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1979-10-21T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1975-03-28T00:00:00Z", "discountedPrice": 4, "expireAt": "1998-07-05T00:00:00Z", "price": 49, "purchaseAt": "1990-04-18T00:00:00Z", "trialPrice": 61}], "dwYxrvGa": [{"currencyCode": "qLVVzbrt", "currencyNamespace": "AqwT70FH", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1990-06-21T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1983-11-29T00:00:00Z", "discountedPrice": 11, "expireAt": "1971-07-21T00:00:00Z", "price": 45, "purchaseAt": "1985-07-28T00:00:00Z", "trialPrice": 33}, {"currencyCode": "HtJ4L2X9", "currencyNamespace": "Sz0TxsWQ", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1998-01-12T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1985-08-10T00:00:00Z", "discountedPrice": 39, "expireAt": "1987-03-30T00:00:00Z", "price": 90, "purchaseAt": "1978-10-21T00:00:00Z", "trialPrice": 63}, {"currencyCode": "PdNcP6Ur", "currencyNamespace": "rb3fBdbQ", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1991-07-05T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1986-04-05T00:00:00Z", "discountedPrice": 30, "expireAt": "1971-11-19T00:00:00Z", "price": 67, "purchaseAt": "1994-03-01T00:00:00Z", "trialPrice": 82}], "cmohy5JG": [{"currencyCode": "dZO4VGhG", "currencyNamespace": "dmMMGHGp", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1984-04-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1982-11-07T00:00:00Z", "discountedPrice": 92, "expireAt": "1990-05-14T00:00:00Z", "price": 66, "purchaseAt": "1990-03-11T00:00:00Z", "trialPrice": 26}, {"currencyCode": "J0ZBHyMd", "currencyNamespace": "bzYKRyZ8", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1977-03-27T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1981-10-02T00:00:00Z", "discountedPrice": 26, "expireAt": "1985-11-07T00:00:00Z", "price": 30, "purchaseAt": "1983-02-06T00:00:00Z", "trialPrice": 20}, {"currencyCode": "47GWp5HX", "currencyNamespace": "r6GeqZGS", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1992-05-12T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1993-02-06T00:00:00Z", "discountedPrice": 78, "expireAt": "1979-03-23T00:00:00Z", "price": 1, "purchaseAt": "1975-10-17T00:00:00Z", "trialPrice": 59}]}}, {"itemIdentities": ["aATVUpJt", "tjWDxjHf", "p69FeBfz"], "itemIdentityType": "ITEM_SKU", "regionData": {"KMCJ4xTf": [{"currencyCode": "rzD4EuO8", "currencyNamespace": "VEgHbZqP", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1986-06-07T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1998-01-21T00:00:00Z", "discountedPrice": 30, "expireAt": "1983-02-22T00:00:00Z", "price": 43, "purchaseAt": "1977-03-30T00:00:00Z", "trialPrice": 88}, {"currencyCode": "E09LWPHc", "currencyNamespace": "SE36jbeU", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1992-02-23T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1976-02-11T00:00:00Z", "discountedPrice": 100, "expireAt": "1983-09-02T00:00:00Z", "price": 8, "purchaseAt": "1978-05-06T00:00:00Z", "trialPrice": 83}, {"currencyCode": "w7vodqCb", "currencyNamespace": "mO4wl2dT", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1983-06-05T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1977-09-17T00:00:00Z", "discountedPrice": 5, "expireAt": "1981-04-07T00:00:00Z", "price": 61, "purchaseAt": "1995-02-23T00:00:00Z", "trialPrice": 59}], "cnW81T3e": [{"currencyCode": "N7syzfZP", "currencyNamespace": "eF2v2lvz", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1983-01-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1992-07-07T00:00:00Z", "discountedPrice": 49, "expireAt": "1975-02-19T00:00:00Z", "price": 42, "purchaseAt": "1973-04-08T00:00:00Z", "trialPrice": 82}, {"currencyCode": "9sidNSIX", "currencyNamespace": "3R2kJBil", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1980-11-26T00:00:00Z", "discountedPrice": 85, "expireAt": "1972-05-26T00:00:00Z", "price": 39, "purchaseAt": "1998-04-13T00:00:00Z", "trialPrice": 90}, {"currencyCode": "P6FJoSN8", "currencyNamespace": "OqEaULWx", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1992-03-26T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1984-09-19T00:00:00Z", "discountedPrice": 100, "expireAt": "1979-11-06T00:00:00Z", "price": 57, "purchaseAt": "1996-01-19T00:00:00Z", "trialPrice": 14}], "5i0fpxSj": [{"currencyCode": "BEVKkGUY", "currencyNamespace": "9puhNoIw", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1996-01-30T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1989-08-16T00:00:00Z", "discountedPrice": 18, "expireAt": "1984-12-30T00:00:00Z", "price": 57, "purchaseAt": "1989-05-19T00:00:00Z", "trialPrice": 81}, {"currencyCode": "dvBRhGsp", "currencyNamespace": "SjuIjFaC", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1999-02-24T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1975-07-06T00:00:00Z", "discountedPrice": 48, "expireAt": "1978-04-16T00:00:00Z", "price": 23, "purchaseAt": "1990-11-04T00:00:00Z", "trialPrice": 67}, {"currencyCode": "MwXIZxQU", "currencyNamespace": "8aCmiUUK", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1987-05-17T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1995-03-17T00:00:00Z", "discountedPrice": 0, "expireAt": "1991-03-23T00:00:00Z", "price": 9, "purchaseAt": "1982-03-19T00:00:00Z", "trialPrice": 73}]}}]}' \
    > test.out 2>&1
eval_tap $? 123 'BulkUpdateRegionData' test.out

#- 124 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'CODE' \
    --limit '14' \
    --offset '72' \
    --sortBy 'mvnZcDCz' \
    --storeId 'L7ZXr8OJ' \
    --keyword 'dRSu6q8b' \
    --language '8lijy75W' \
    > test.out 2>&1
eval_tap $? 124 'SearchItems' test.out

#- 125 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '97' \
    --offset '82' \
    --sortBy '["updatedAt", "name"]' \
    --storeId 'k6H8hant' \
    > test.out 2>&1
eval_tap $? 125 'QueryUncategorizedItems' test.out

#- 126 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'mqkneKQJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'pyVWFypx' \
    > test.out 2>&1
eval_tap $? 126 'GetItem' test.out

#- 127 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'mCtkIR0H' \
    --namespace $AB_NAMESPACE \
    --storeId 'vq1RR1ck' \
    --body '{"appId": "Rm1bpEQh", "appType": "DEMO", "baseAppId": "pw6x3L18", "boothName": "dPRapSjn", "categoryPath": "DftPGnQj", "clazz": "3cTm8UVy", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"Z0ZhQrVg": {}, "BayoU2kF": {}, "7OMem1Mw": {}}, "features": ["oO1KQnsm", "q92O1iQW", "rC6lAvS8"], "flexible": false, "images": [{"as": "Hr2iD081", "caption": "dVLq1ofF", "height": 77, "imageUrl": "BeyRHjQJ", "smallImageUrl": "YaWu3H99", "width": 42}, {"as": "nRuHiNBp", "caption": "kl0nnE5e", "height": 26, "imageUrl": "eQPtwLx2", "smallImageUrl": "fC2PL7Ki", "width": 98}, {"as": "SnzHsZdE", "caption": "wkfmGqwY", "height": 95, "imageUrl": "YHR9b1jx", "smallImageUrl": "32CKrsav", "width": 32}], "inventoryConfig": {"customAttributes": {"9D6fM0fR": {}, "H6uJtHK4": {}, "Ck6wAL87": {}}, "serverCustomAttributes": {"Z2UaQ5nQ": {}, "3O6mYZGy": {}, "Rg11jyMn": {}}, "slotUsed": 70}, "itemIds": ["Rip5kMfW", "FK6fXtGc", "uEuNek7w"], "itemQty": {"0FZXiN0s": 27, "592ORWDR": 38, "bkXvxFls": 68}, "itemType": "BUNDLE", "listable": false, "localizations": {"9HNHcCpG": {"description": "axutw6vO", "localExt": {"Ig2cgShG": {}, "TOBjSTK9": {}, "4AoctrGl": {}}, "longDescription": "CfBpPf12", "title": "LVhxViN6"}, "yKyydGaf": {"description": "U8IIicU7", "localExt": {"a3439WRS": {}, "V1MXKRha": {}, "9ow6JBs7": {}}, "longDescription": "vcLeTnZj", "title": "7VNTzDl3"}, "iF41Coc5": {"description": "oorrADp5", "localExt": {"YyVV53fk": {}, "n2uacccu": {}, "NNvYfXMf": {}}, "longDescription": "JNeDiOSP", "title": "QbKDnck1"}}, "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 27, "duration": 44, "endDate": "1984-03-16T00:00:00Z", "itemId": "lHtv1BQS", "itemSku": "Fw2i0VgZ", "itemType": "a0QZvGf7"}, {"count": 47, "duration": 1, "endDate": "1995-04-05T00:00:00Z", "itemId": "xPldGfmV", "itemSku": "wtf9Coim", "itemType": "5IBHt0QQ"}, {"count": 85, "duration": 39, "endDate": "1977-04-10T00:00:00Z", "itemId": "E2tfu9gS", "itemSku": "GhqTPRwp", "itemType": "PZGnAYaD"}], "name": "UpY1T3BK", "odds": 0.9863271434321796, "type": "REWARD_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 41, "duration": 51, "endDate": "1990-09-21T00:00:00Z", "itemId": "lTEvK8o9", "itemSku": "n49lhGeA", "itemType": "IKtBTJC9"}, {"count": 44, "duration": 87, "endDate": "1987-11-17T00:00:00Z", "itemId": "D7h61Dez", "itemSku": "YBr7NRDd", "itemType": "KJE0hTJO"}, {"count": 26, "duration": 25, "endDate": "1977-07-25T00:00:00Z", "itemId": "VfKDSksQ", "itemSku": "MEBCUkVy", "itemType": "Ex5pEmhh"}], "name": "4GxJnUzK", "odds": 0.07375054898740596, "type": "REWARD", "weight": 56}, {"lootBoxItems": [{"count": 54, "duration": 23, "endDate": "1974-05-23T00:00:00Z", "itemId": "DM6yBoY3", "itemSku": "SLdQg8i7", "itemType": "npc0Ed7y"}, {"count": 34, "duration": 23, "endDate": "1979-06-20T00:00:00Z", "itemId": "aUccxU9b", "itemSku": "Sdm4mlgx", "itemType": "XIG4C907"}, {"count": 33, "duration": 58, "endDate": "1992-12-01T00:00:00Z", "itemId": "1Y4lm1tW", "itemSku": "w2C4OEKZ", "itemType": "ROBYiX2j"}], "name": "2fLH3975", "odds": 0.4838452226687555, "type": "REWARD_GROUP", "weight": 31}], "rollFunction": "CUSTOM"}, "maxCount": 28, "maxCountPerUser": 50, "name": "INRcmIX6", "optionBoxConfig": {"boxItems": [{"count": 74, "duration": 16, "endDate": "1982-10-04T00:00:00Z", "itemId": "qVOIqEsk", "itemSku": "WRAFoWCV", "itemType": "KYYT7FLg"}, {"count": 61, "duration": 87, "endDate": "1994-08-20T00:00:00Z", "itemId": "VEFUUXuI", "itemSku": "6eqQ2Cpt", "itemType": "qNmr2pob"}, {"count": 62, "duration": 42, "endDate": "1996-03-06T00:00:00Z", "itemId": "cnqlCZ9W", "itemSku": "AKdnqPFH", "itemType": "qm9l0dum"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 12, "fixedTrialCycles": 3, "graceDays": 94}, "regionData": {"YCMCM60z": [{"currencyCode": "S7FsIOk4", "currencyNamespace": "pgTmZPTn", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1985-05-11T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1978-02-03T00:00:00Z", "expireAt": "1977-08-15T00:00:00Z", "price": 97, "purchaseAt": "1982-01-12T00:00:00Z", "trialPrice": 44}, {"currencyCode": "b7Xsxyis", "currencyNamespace": "lNwr2Xs9", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1987-03-17T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1972-06-12T00:00:00Z", "expireAt": "1987-04-26T00:00:00Z", "price": 47, "purchaseAt": "1976-05-04T00:00:00Z", "trialPrice": 69}, {"currencyCode": "fsjfEliG", "currencyNamespace": "7TMOqGQC", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1986-12-31T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1980-02-25T00:00:00Z", "expireAt": "1987-02-22T00:00:00Z", "price": 25, "purchaseAt": "1983-01-30T00:00:00Z", "trialPrice": 85}], "WxTmTiCq": [{"currencyCode": "tez20txy", "currencyNamespace": "qcw7BtR5", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1986-04-20T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1991-04-18T00:00:00Z", "expireAt": "1971-01-13T00:00:00Z", "price": 70, "purchaseAt": "1998-04-06T00:00:00Z", "trialPrice": 85}, {"currencyCode": "KugSPTaw", "currencyNamespace": "ffSZhbaw", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1982-05-13T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1992-06-13T00:00:00Z", "expireAt": "1995-09-21T00:00:00Z", "price": 74, "purchaseAt": "1974-02-21T00:00:00Z", "trialPrice": 81}, {"currencyCode": "1HHvKq36", "currencyNamespace": "NLf47MQB", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1979-12-21T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-10-13T00:00:00Z", "expireAt": "1981-09-05T00:00:00Z", "price": 72, "purchaseAt": "1984-11-13T00:00:00Z", "trialPrice": 72}], "YlnO3qvW": [{"currencyCode": "wGWJ6679", "currencyNamespace": "iJ20p6k4", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1974-08-28T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1971-01-27T00:00:00Z", "expireAt": "1995-05-18T00:00:00Z", "price": 52, "purchaseAt": "1981-02-10T00:00:00Z", "trialPrice": 79}, {"currencyCode": "ugtpN30K", "currencyNamespace": "JRVAgCWA", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1980-03-31T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1989-07-06T00:00:00Z", "expireAt": "1996-08-28T00:00:00Z", "price": 10, "purchaseAt": "1975-08-11T00:00:00Z", "trialPrice": 82}, {"currencyCode": "fTjSbKSW", "currencyNamespace": "9RgiLiSu", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1988-10-12T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1984-06-02T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 84, "purchaseAt": "1997-07-04T00:00:00Z", "trialPrice": 38}]}, "saleConfig": {"currencyCode": "lHMLXTYl", "price": 7}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "vrhDWBpr", "stackable": true, "status": "ACTIVE", "tags": ["bBU0rhaw", "9af2kPas", "5tP2T2Ep"], "targetCurrencyCode": "BMDfGtzW", "targetNamespace": "NOSrfAAC", "thumbnailUrl": "LKwe2hyI", "useCount": 70}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateItem' test.out

#- 128 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'uK6BHkMy' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'ODEYlLSd' \
    > test.out 2>&1
eval_tap $? 128 'DeleteItem' test.out

#- 129 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'MPsjFEgP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 31, "orderNo": "B5vQUEFC"}' \
    > test.out 2>&1
eval_tap $? 129 'AcquireItem' test.out

#- 130 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'nHyEh6OF' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'I84JVxWR' \
    > test.out 2>&1
eval_tap $? 130 'GetApp' test.out

#- 131 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'BZC1Tq6A' \
    --namespace $AB_NAMESPACE \
    --storeId '9kTWEiC9' \
    --body '{"carousel": [{"alt": "fiJGJsGS", "previewUrl": "RXsJ56pM", "thumbnailUrl": "EigqHR57", "type": "image", "url": "30JIsi69", "videoSource": "youtube"}, {"alt": "egHYNVsP", "previewUrl": "LFXJGSac", "thumbnailUrl": "0InYnwzG", "type": "video", "url": "XZcAa6lN", "videoSource": "vimeo"}, {"alt": "O27yDoCb", "previewUrl": "LI3iUeYH", "thumbnailUrl": "7Lnn3CSh", "type": "image", "url": "LgRDo6w7", "videoSource": "generic"}], "developer": "8bqsteER", "forumUrl": "JSBQIIQA", "genres": ["FreeToPlay", "MassivelyMultiplayer", "Racing"], "localizations": {"IAE1EEm2": {"announcement": "XmjoMCfi", "slogan": "kQfxO6Wh"}, "DthyVgTZ": {"announcement": "G729rYdy", "slogan": "NtmzPbTL"}, "GsVwj6j2": {"announcement": "F9zUPekC", "slogan": "0KpwLeAr"}}, "platformRequirements": {"sR2M2XRh": [{"additionals": "pyPsH6Hb", "directXVersion": "1VFFeR87", "diskSpace": "wCJHqLHN", "graphics": "WZ1sJGgn", "label": "EDN2Pdbv", "osVersion": "etp1OiFO", "processor": "hrEkbbwK", "ram": "jtERsEgu", "soundCard": "ee4P3lYL"}, {"additionals": "YGhsCT41", "directXVersion": "FOxmyjXL", "diskSpace": "W4O4CUG0", "graphics": "u20TmkhS", "label": "q8QE3n79", "osVersion": "vStn68VF", "processor": "xLV9uM7K", "ram": "RjH2R1ZL", "soundCard": "ngAFtupA"}, {"additionals": "zJXTylIG", "directXVersion": "Svi0t2cK", "diskSpace": "W7k7Mh8s", "graphics": "p5CxAj9P", "label": "eP8xbmo1", "osVersion": "aNnRjGjh", "processor": "8iwYZdEL", "ram": "nnmgAKxt", "soundCard": "U8fx7WjJ"}], "N1Eq7mK1": [{"additionals": "48CfMFov", "directXVersion": "mjl6NK5E", "diskSpace": "lv6Zrj7Q", "graphics": "wQgMzUEM", "label": "fIJRDtE3", "osVersion": "6Ga2diz6", "processor": "C2865dTu", "ram": "WV3ZS91Q", "soundCard": "ECH8E6KZ"}, {"additionals": "zzmzHvaN", "directXVersion": "Utq1s8PE", "diskSpace": "N3TAWNRD", "graphics": "HpsTYFGG", "label": "zJefAaZx", "osVersion": "dIvtz05X", "processor": "GJ96YG3r", "ram": "1rnz6gpg", "soundCard": "PFPHzKPM"}, {"additionals": "0iHnuZhB", "directXVersion": "QoCHxmKW", "diskSpace": "RtbGMZfE", "graphics": "xzTGske5", "label": "HTEAt0BL", "osVersion": "UCGbButS", "processor": "l3B7Ecpb", "ram": "O9dShkKv", "soundCard": "u21LD0pa"}], "7Vj5kreI": [{"additionals": "Q6QAJRdj", "directXVersion": "SMqXH4S4", "diskSpace": "zY9mJUdU", "graphics": "fOVJyl2N", "label": "nvNW9U76", "osVersion": "0m3YA96V", "processor": "rSqlqYE6", "ram": "1qoXACP2", "soundCard": "dhU5sLAB"}, {"additionals": "ZmPkAVgZ", "directXVersion": "XEvjQWjL", "diskSpace": "B6H9zqfR", "graphics": "8QVlL45L", "label": "zKtEEbpq", "osVersion": "eVBnMrlA", "processor": "9ARs8Nyk", "ram": "fizEhuAh", "soundCard": "NAFsjidF"}, {"additionals": "nFRjnm1J", "directXVersion": "EV1mDqVE", "diskSpace": "YUQN7jNZ", "graphics": "Ii4lUSlP", "label": "h3Xm3Cls", "osVersion": "fhttjhYi", "processor": "69iYCG8l", "ram": "sFqO0zQl", "soundCard": "JGnz8Fei"}]}, "platforms": ["Android", "Android", "IOS"], "players": ["MMO", "Single", "CrossPlatformMulti"], "primaryGenre": "Adventure", "publisher": "zFhQBVkj", "releaseDate": "1975-03-10T00:00:00Z", "websiteUrl": "e1Cyza0A"}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateApp' test.out

#- 132 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'PQvxFbzY' \
    --namespace $AB_NAMESPACE \
    --storeId 'JBapi3bs' \
    > test.out 2>&1
eval_tap $? 132 'DisableItem' test.out

#- 133 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'wJyHat3l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'GetItemDynamicData' test.out

#- 134 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'pSgcqltW' \
    --namespace $AB_NAMESPACE \
    --storeId 'cKWxY9lW' \
    > test.out 2>&1
eval_tap $? 134 'EnableItem' test.out

#- 135 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'NuiNDpVJ' \
    --itemId '7RHmezLp' \
    --namespace $AB_NAMESPACE \
    --storeId 'tw0scTFZ' \
    > test.out 2>&1
eval_tap $? 135 'FeatureItem' test.out

#- 136 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Fmv3dw7a' \
    --itemId 'wQdLdEKm' \
    --namespace $AB_NAMESPACE \
    --storeId 'MyBOVpve' \
    > test.out 2>&1
eval_tap $? 136 'DefeatureItem' test.out

#- 137 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'oqWRxKkN' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'sn4dNo8U' \
    --populateBundle 'false' \
    --region 'KCiv74d1' \
    --storeId 'Pm6uKRCE' \
    > test.out 2>&1
eval_tap $? 137 'GetLocaleItem' test.out

#- 138 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'EMz9fVvP' \
    --namespace $AB_NAMESPACE \
    --storeId 'npRCKZtR' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 79, "code": "sTHxTsTp", "comparison": "isLessThanOrEqual", "name": "rSNj2Brr", "predicateType": "SeasonPassPredicate", "value": "N10MCPAQ", "values": ["rJi5tHyT", "yYvQ53fD", "M9XfA8Dy"]}, {"anyOf": 12, "code": "pFqBlCQd", "comparison": "isGreaterThanOrEqual", "name": "DU4GYiFz", "predicateType": "SeasonTierPredicate", "value": "QUeMerxI", "values": ["lGwkP4KZ", "h6y15BR0", "XZv5HZkL"]}, {"anyOf": 26, "code": "2gSOOTZn", "comparison": "isGreaterThan", "name": "9ZAzjwwQ", "predicateType": "SeasonPassPredicate", "value": "fPXo5IEF", "values": ["2FqUEnvw", "4U7ZxZ6E", "7a8HqW8e"]}]}, {"operator": "and", "predicates": [{"anyOf": 50, "code": "X42nasCd", "comparison": "isGreaterThan", "name": "Iw9PhINU", "predicateType": "SeasonTierPredicate", "value": "yFU2AS2w", "values": ["jpupX9Yq", "cgdxeUVm", "c10wTvZ1"]}, {"anyOf": 90, "code": "gOq7XNYn", "comparison": "isGreaterThanOrEqual", "name": "32mCnY5H", "predicateType": "SeasonPassPredicate", "value": "qOwxl17l", "values": ["zHvGrwZg", "A3Z3WiQA", "YHFB2sQo"]}, {"anyOf": 91, "code": "F6jKEmbE", "comparison": "excludes", "name": "ySZq6JhO", "predicateType": "EntitlementPredicate", "value": "zPIkwGzL", "values": ["UfhHqg8k", "6xKyeDYp", "lFGtoTGM"]}]}, {"operator": "and", "predicates": [{"anyOf": 19, "code": "XWjLljtl", "comparison": "isLessThan", "name": "uVjW2iVC", "predicateType": "SeasonPassPredicate", "value": "bUz6g7qG", "values": ["Y29jxaqj", "2G5eh0De", "PyJcFrkd"]}, {"anyOf": 42, "code": "JnayuNI3", "comparison": "isGreaterThan", "name": "tn48wYe1", "predicateType": "SeasonPassPredicate", "value": "frTTYr3F", "values": ["vGkrRDlG", "wZi7rlpj", "zeJb0bPt"]}, {"anyOf": 22, "code": "TDIbDVFg", "comparison": "is", "name": "pswyKbAJ", "predicateType": "EntitlementPredicate", "value": "rHxo8aYi", "values": ["TaFtoTSd", "50lvywwe", "UGvcCN0B"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateItemPurchaseCondition' test.out

#- 139 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '4c36rP59' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "YP1BqnNO"}' \
    > test.out 2>&1
eval_tap $? 139 'ReturnItem' test.out

#- 140 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'NIndP3wV' \
    --offset '21' \
    --tag 'jNE5MK9l' \
    > test.out 2>&1
eval_tap $? 140 'QueryKeyGroups' test.out

#- 141 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zW3E4dYJ", "name": "88GY9MAv", "status": "INACTIVE", "tags": ["sTEjGwO6", "pmU1DWUG", "V44LOQY5"]}' \
    > test.out 2>&1
eval_tap $? 141 'CreateKeyGroup' test.out

#- 142 GetKeyGroupByBoothName
eval_tap 0 142 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 143 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'hF4GGZu0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'GetKeyGroup' test.out

#- 144 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'FLpJnYoZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0dohzzAV", "name": "T8zlsOQJ", "status": "INACTIVE", "tags": ["riSCZoCk", "Kv3DgIe4", "I4KmspxG"]}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateKeyGroup' test.out

#- 145 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'pkLyRFMJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroupDynamic' test.out

#- 146 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZsViiX8p' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '12' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 146 'ListKeys' test.out

#- 147 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'hAfPyznf' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'UploadKeys' test.out

#- 148 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '5OWkxdxb' \
    --limit '90' \
    --offset '88' \
    --orderNos '["YqzZlIQN", "TWyx7eIu", "DUd4Nv35"]' \
    --sortBy 'RREksjw6' \
    --startTime 'Bcfhn4nP' \
    --status 'CHARGEBACK_REVERSED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 148 'QueryOrders' test.out

#- 149 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetOrderStatistics' test.out

#- 150 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'plnlyyFY' \
    > test.out 2>&1
eval_tap $? 150 'GetOrder' test.out

#- 151 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5MsirSFK' \
    --body '{"description": "WHXid3iM"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundOrder' test.out

#- 152 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 152 'GetPaymentCallbackConfig' test.out

#- 153 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "PP6GZrsX", "privateKey": "LH70rAd1"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdatePaymentCallbackConfig' test.out

#- 154 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'GetPaymentMerchantConfig' test.out

#- 155 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["31Xt69tr", "VLejSURe", "51Z1Y3Wn"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePaymentDomainWhitelistConfig' test.out

#- 156 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'uSLFoDDc' \
    --externalId 'gVsxzaMd' \
    --limit '9' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'vJwbXNjK' \
    --offset '98' \
    --paymentOrderNo 'GeO0mquh' \
    --startDate 'qx8ihWFw' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 156 'QueryPaymentNotifications' test.out

#- 157 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'PvEy0JVC' \
    --limit '13' \
    --offset '27' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 157 'QueryPaymentOrders' test.out

#- 158 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "RqkyD2Dh", "currencyNamespace": "AupMoIcS", "customParameters": {"A7bc7czT": {}, "1IlLmv4s": {}, "NQl3JKWI": {}}, "description": "X0fsnb7I", "extOrderNo": "ueXbx0dJ", "extUserId": "aStRIfod", "itemType": "COINS", "language": "ww-Ol", "metadata": {"cOn4APMt": "31h7JmBd", "FixQJhp4": "35gF5c8n", "9hlkP6tZ": "sOylRp8l"}, "notifyUrl": "nUE4VIJh", "omitNotification": false, "platform": "vM8iSGLW", "price": 10, "recurringPaymentOrderNo": "9ouopuQH", "region": "Jhf7zg3g", "returnUrl": "eNj6sFmn", "sandbox": false, "sku": "c4dVsj1Y", "subscriptionId": "CRxAAAq4", "targetNamespace": "S5dZ9zIL", "targetUserId": "wFahBEdU", "title": "G3jEcXiY"}' \
    > test.out 2>&1
eval_tap $? 158 'CreatePaymentOrderByDedicated' test.out

#- 159 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'jnIkCyMj' \
    > test.out 2>&1
eval_tap $? 159 'ListExtOrderNoByExtTxId' test.out

#- 160 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'i4Nnz4Vr' \
    > test.out 2>&1
eval_tap $? 160 'GetPaymentOrder' test.out

#- 161 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yUjmFuE4' \
    --body '{"extTxId": "JDfyCfU8", "paymentMethod": "LArmlKE5", "paymentProvider": "NEONPAY"}' \
    > test.out 2>&1
eval_tap $? 161 'ChargePaymentOrder' test.out

#- 162 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8YrToCVv' \
    --body '{"description": "MjWoyVdQ"}' \
    > test.out 2>&1
eval_tap $? 162 'RefundPaymentOrderByDedicated' test.out

#- 163 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'DAAHMEx9' \
    --body '{"amount": 9, "currencyCode": "Uj9Gbd8u", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 61, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 163 'SimulatePaymentOrderNotification' test.out

#- 164 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KCHc29gh' \
    > test.out 2>&1
eval_tap $? 164 'GetPaymentOrderChargeStatus' test.out

#- 165 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'nPtvg7AK' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "gbXZTTu8", "serviceLabel": 82}' \
    > test.out 2>&1
eval_tap $? 165 'GetPsnEntitlementOwnership' test.out

#- 166 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'Qf9MmGRs' \
    --body '{"delegationToken": "NtQ5Lyhc", "sandboxId": "z5JVAN7Q"}' \
    > test.out 2>&1
eval_tap $? 166 'GetXboxEntitlementOwnership' test.out

#- 167 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 167 'GetPlatformEntitlementConfig' test.out

#- 168 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedPlatformOrigins": ["System", "Other", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 168 'UpdatePlatformEntitlementConfig' test.out

#- 169 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformWalletConfig' test.out

#- 170 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Twitch", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformWalletConfig' test.out

#- 171 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 171 'ResetPlatformWalletConfig' test.out

#- 172 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 172 'GetRevocationConfig' test.out

#- 173 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateRevocationConfig' test.out

#- 174 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 174 'DeleteRevocationConfig' test.out

#- 175 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 't9SbXtj3' \
    --limit '18' \
    --offset '2' \
    --source 'DLC' \
    --startTime 'ArQiBkEm' \
    --status 'FAIL' \
    --transactionId '0u46W3kr' \
    --userId 'kmboRIPD' \
    > test.out 2>&1
eval_tap $? 175 'QueryRevocationHistories' test.out

#- 176 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'GetRevocationPluginConfig' test.out

#- 177 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "xC57ZZvu"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "fKCpQjl2"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 177 'UpdateRevocationPluginConfig' test.out

#- 178 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'DeleteRevocationPluginConfig' test.out

#- 179 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 179 'UploadRevocationPluginConfigCert' test.out

#- 180 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Lz3BbeTB", "eventTopic": "wE1MDWJc", "maxAwarded": 39, "maxAwardedPerUser": 12, "namespaceExpression": "qePZ1uqW", "rewardCode": "NBBnWSWx", "rewardConditions": [{"condition": "ZqCS95Cp", "conditionName": "mI5wtTrU", "eventName": "Psmz5X8m", "rewardItems": [{"duration": 53, "endDate": "1987-09-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4vRiIuVd", "quantity": 43, "sku": "9KWMG45N"}, {"duration": 2, "endDate": "1999-11-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "23URja7c", "quantity": 70, "sku": "j2CbA211"}, {"duration": 37, "endDate": "1973-04-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pOZhEpKf", "quantity": 43, "sku": "Z3JNwjwg"}]}, {"condition": "qIyQlBSa", "conditionName": "j1OFKlcR", "eventName": "DbQ3n1Xw", "rewardItems": [{"duration": 55, "endDate": "1971-03-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sEumKBo1", "quantity": 47, "sku": "cclO2ihF"}, {"duration": 87, "endDate": "1984-07-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VPWe0Ife", "quantity": 3, "sku": "o82X44d8"}, {"duration": 45, "endDate": "1971-06-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "U0yz9f6e", "quantity": 36, "sku": "FF7Z5AhM"}]}, {"condition": "MhRCJ1E0", "conditionName": "1AhcPD1u", "eventName": "kcMyQUpi", "rewardItems": [{"duration": 81, "endDate": "1993-01-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bxzkkxPm", "quantity": 95, "sku": "ENchFxV2"}, {"duration": 46, "endDate": "1977-12-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "W6aCQBk6", "quantity": 12, "sku": "cR4jf3mp"}, {"duration": 42, "endDate": "1988-06-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "N4tEbfi1", "quantity": 69, "sku": "NBQB3m26"}]}], "userIdExpression": "ozyCj5RF"}' \
    > test.out 2>&1
eval_tap $? 180 'CreateReward' test.out

#- 181 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'WNRaVANp' \
    --limit '99' \
    --offset '92' \
    --sortBy '["rewardCode", "namespace"]' \
    > test.out 2>&1
eval_tap $? 181 'QueryRewards' test.out

#- 182 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'ExportRewards' test.out

#- 183 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 183 'ImportRewards' test.out

#- 184 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'YvRemZtv' \
    > test.out 2>&1
eval_tap $? 184 'GetReward' test.out

#- 185 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'CVA2gMJI' \
    --body '{"description": "Nrw8UmWl", "eventTopic": "icgf1EcV", "maxAwarded": 86, "maxAwardedPerUser": 21, "namespaceExpression": "1yV9v2aP", "rewardCode": "GBPOcGNF", "rewardConditions": [{"condition": "UKSRrkO5", "conditionName": "Dx2bBnvW", "eventName": "vWTWoZVw", "rewardItems": [{"duration": 10, "endDate": "1990-10-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hT16Mb99", "quantity": 36, "sku": "D4tcFlvT"}, {"duration": 73, "endDate": "1980-10-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2RhndftY", "quantity": 84, "sku": "VoZpxEmU"}, {"duration": 98, "endDate": "1983-06-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "B3W9G0kb", "quantity": 75, "sku": "EEo8pmOA"}]}, {"condition": "sQyY7DB8", "conditionName": "cFMpSblv", "eventName": "MyxiToJo", "rewardItems": [{"duration": 18, "endDate": "1999-11-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ViiCgzLO", "quantity": 1, "sku": "xAfsUO8p"}, {"duration": 69, "endDate": "1979-06-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7tojkJ5A", "quantity": 61, "sku": "O6O1eiVe"}, {"duration": 26, "endDate": "1985-07-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wuyzFdDq", "quantity": 23, "sku": "oTF7NyA5"}]}, {"condition": "U9BFuQmz", "conditionName": "Vl9HiE9i", "eventName": "CHrJ8dDG", "rewardItems": [{"duration": 66, "endDate": "1988-04-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sGsre6Nl", "quantity": 28, "sku": "L5msjDW8"}, {"duration": 85, "endDate": "1995-07-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "il2YUr2A", "quantity": 85, "sku": "mNkUDR7X"}, {"duration": 38, "endDate": "1990-03-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "fi6DqLC2", "quantity": 1, "sku": "HPUm35SB"}]}], "userIdExpression": "AZ2a7LrL"}' \
    > test.out 2>&1
eval_tap $? 185 'UpdateReward' test.out

#- 186 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'U5ILN9fj' \
    > test.out 2>&1
eval_tap $? 186 'DeleteReward' test.out

#- 187 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'TyvuCnaZ' \
    --body '{"payload": {"WHJRWUC9": {}, "JkUlFakH": {}, "fIaTBQGN": {}}}' \
    > test.out 2>&1
eval_tap $? 187 'CheckEventCondition' test.out

#- 188 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'RgnAY4rC' \
    --body '{"conditionName": "IMiVRmYk", "userId": "23IIEGtM"}' \
    > test.out 2>&1
eval_tap $? 188 'DeleteRewardConditionRecord' test.out

#- 189 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'tIpmuoLL' \
    --limit '96' \
    --offset '7' \
    --start 'Fjon03eS' \
    --storeId 'YWoH06aO' \
    --viewId 'vOhfcAnB' \
    > test.out 2>&1
eval_tap $? 189 'QuerySections' test.out

#- 190 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'BKyOeXpe' \
    --body '{"active": true, "displayOrder": 69, "endDate": "1972-05-29T00:00:00Z", "ext": {"lGBAkM7x": {}, "EtGCBcox": {}, "LsKLJGJt": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 58, "itemCount": 42, "rule": "SEQUENCE"}, "items": [{"id": "1Kdg3hqa", "sku": "UsiQGtvH"}, {"id": "ZyYXzEVt", "sku": "8DFtdJSq"}, {"id": "R8Gj7FLp", "sku": "rK8GBrHl"}], "localizations": {"7RY46LZv": {"description": "cMHf3rHX", "localExt": {"v4TEHJOW": {}, "KF1aaUib": {}, "lFjf1H1T": {}}, "longDescription": "jgXApnTg", "title": "sa8WBSX4"}, "V02DiJVI": {"description": "epIFipHr", "localExt": {"bVk6JLi2": {}, "Gb0TrnUa": {}, "fdr4i0YP": {}}, "longDescription": "z6aOOS0z", "title": "rZNscTGA"}, "EzECCdRi": {"description": "U9c0aZP2", "localExt": {"6ljqtwbo": {}, "9kCTU2Pj": {}, "p0ivXJ5J": {}}, "longDescription": "v5swaGDF", "title": "fDo5xvdJ"}}, "name": "g7959wXD", "rotationType": "CUSTOM", "startDate": "1999-07-15T00:00:00Z", "viewId": "Uks75jPz"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateSection' test.out

#- 191 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'UGs0Lu3g' \
    > test.out 2>&1
eval_tap $? 191 'PurgeExpiredSection' test.out

#- 192 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CVMCnp5W' \
    --storeId 'VHrs6GER' \
    > test.out 2>&1
eval_tap $? 192 'GetSection' test.out

#- 193 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'zvvF3TXt' \
    --storeId 'zAM6OVcE' \
    --body '{"active": true, "displayOrder": 23, "endDate": "1992-01-18T00:00:00Z", "ext": {"D4G1InId": {}, "dSWX0ttT": {}, "h6LQoaJV": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 72, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "NXLH78TO", "sku": "5dKj7RGa"}, {"id": "bDhPwn37", "sku": "YmeLHwXX"}, {"id": "uD5JcRL4", "sku": "IOozMCOi"}], "localizations": {"TA5hHtPi": {"description": "FVrpMdfF", "localExt": {"WpCD3B7Q": {}, "oul27rRV": {}, "EwIyxzb6": {}}, "longDescription": "VpLZ5VEl", "title": "pdOScpJl"}, "MbqW9zGv": {"description": "lplhuWaG", "localExt": {"eNqWVymP": {}, "tdOYrrIE": {}, "kyhzgnXc": {}}, "longDescription": "NWWilABy", "title": "0qimgAn4"}, "wErbnxbT": {"description": "iXvu9hox", "localExt": {"QIXznOK9": {}, "GSzFs9mB": {}, "uJhqslFk": {}}, "longDescription": "pWQnHIkE", "title": "fl70N9QC"}}, "name": "kw82Lchb", "rotationType": "FIXED_PERIOD", "startDate": "1996-06-30T00:00:00Z", "viewId": "vDt9RQgl"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateSection' test.out

#- 194 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '1XSvie5Y' \
    --storeId 'WCHvRI5m' \
    > test.out 2>&1
eval_tap $? 194 'DeleteSection' test.out

#- 195 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'ListStores' test.out

#- 196 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "ROFrI1DF", "defaultRegion": "qdQVXts3", "description": "mlp7KJl4", "supportedLanguages": ["DcGLYlhd", "M5Ma39iw", "cutItGHt"], "supportedRegions": ["Y6u4Pd0X", "FOJwYYYs", "8i6dznbp"], "title": "V9NRBisj"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateStore' test.out

#- 197 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 197 'GetCatalogDefinition' test.out

#- 198 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'DownloadCSVTemplates' test.out

#- 199 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["a8K6t6gQ", "pGM0vQYg", "5Dkgm5aX"], "idsToBeExported": ["cNmqXcn3", "wAjBlhNk", "D2LQ0CBy"], "storeId": "x9mHJCol"}' \
    > test.out 2>&1
eval_tap $? 199 'ExportStoreByCSV' test.out

#- 200 ImportStore
eval_tap 0 200 'ImportStore # SKIP deprecated' test.out

#- 201 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 201 'GetPublishedStore' test.out

#- 202 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'DeletePublishedStore' test.out

#- 203 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStoreBackup' test.out

#- 204 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'RollbackPublishedStore' test.out

#- 205 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'A50B3tkA' \
    > test.out 2>&1
eval_tap $? 205 'GetStore' test.out

#- 206 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cS26ruAq' \
    --body '{"defaultLanguage": "yiVaU1a2", "defaultRegion": "VGoch3d2", "description": "L6j71XAp", "supportedLanguages": ["W91kVa0x", "s1eBhJEK", "KfLkRZyT"], "supportedRegions": ["mVfqtqla", "bUSBsfV5", "PERJwSUh"], "title": "veyRqbx2"}' \
    > test.out 2>&1
eval_tap $? 206 'UpdateStore' test.out

#- 207 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'bE4hbk0X' \
    > test.out 2>&1
eval_tap $? 207 'DeleteStore' test.out

#- 208 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'dq41rPOF' \
    --action 'DELETE' \
    --itemSku 'UWwnNZMs' \
    --itemType 'SEASON' \
    --limit '19' \
    --offset '34' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'sxMHmM6f' \
    --updatedAtStart 'dDYEbn5f' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryChanges' test.out

#- 209 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'GIusg0WK' \
    > test.out 2>&1
eval_tap $? 209 'PublishAll' test.out

#- 210 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'ZJG9uRxM' \
    > test.out 2>&1
eval_tap $? 210 'PublishSelected' test.out

#- 211 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'w3Uvjm6o' \
    > test.out 2>&1
eval_tap $? 211 'SelectAllRecords' test.out

#- 212 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '1zkWgx7h' \
    --action 'UPDATE' \
    --itemSku 'WL4uscqL' \
    --itemType 'CODE' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'f2NFCoxu' \
    --updatedAtStart 'Mi9FzKNW' \
    > test.out 2>&1
eval_tap $? 212 'SelectAllRecordsByCriteria' test.out

#- 213 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'OJ6KxK0u' \
    --action 'UPDATE' \
    --itemSku 'MxLlNEn6' \
    --itemType 'EXTENSION' \
    --type 'STORE' \
    --updatedAtEnd 'UygfowwB' \
    --updatedAtStart 'L0M3DlTM' \
    > test.out 2>&1
eval_tap $? 213 'GetStatistic' test.out

#- 214 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'V303EhEZ' \
    > test.out 2>&1
eval_tap $? 214 'UnselectAllRecords' test.out

#- 215 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '5A43QDue' \
    --namespace $AB_NAMESPACE \
    --storeId 'kLWvO5Qb' \
    > test.out 2>&1
eval_tap $? 215 'SelectRecord' test.out

#- 216 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'BhoGROao' \
    --namespace $AB_NAMESPACE \
    --storeId 'MeTsjBqt' \
    > test.out 2>&1
eval_tap $? 216 'UnselectRecord' test.out

#- 217 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '40rCtHZB' \
    --targetStoreId '7BV2M5W0' \
    > test.out 2>&1
eval_tap $? 217 'CloneStore' test.out

#- 218 ExportStore
eval_tap 0 218 'ExportStore # SKIP deprecated' test.out

#- 219 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '5gkw7xDz' \
    --end 'nJKcs7s0' \
    --limit '38' \
    --offset '43' \
    --sortBy 'jlTYcldb' \
    --start 'ulyPLmfw' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 219 'QueryImportHistory' test.out

#- 220 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId '3diDFFhd' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'BJOEpgtB' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 220 'ImportStoreByCSV' test.out

#- 221 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'qYvTOkAx' \
    --limit '62' \
    --offset '74' \
    --sku 'hUjRzGRK' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    --userId 'Ac7uDgnQ' \
    > test.out 2>&1
eval_tap $? 221 'QuerySubscriptions' test.out

#- 222 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'csKTafCH' \
    > test.out 2>&1
eval_tap $? 222 'RecurringChargeSubscription' test.out

#- 223 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fri5isT4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 223 'GetTicketDynamic' test.out

#- 224 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ulkKp0kj' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "28AedJMU"}' \
    > test.out 2>&1
eval_tap $? 224 'DecreaseTicketSale' test.out

#- 225 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'sgr6OfRh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketBoothID' test.out

#- 226 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '90oNl9TT' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 63, "orderNo": "3zznjaj0"}' \
    > test.out 2>&1
eval_tap $? 226 'IncreaseTicketSale' test.out

#- 227 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 44, "currencyCode": "DVYDOTRk", "expireAt": "1988-03-21T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "CNfYO4yN", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "C4VUcFPx", "entitlementOrigin": "Nintendo", "itemIdentity": "qZG6f8nS", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "Uc2joIyo"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 96, "currencyCode": "gxBYkIon", "expireAt": "1992-11-02T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "AyNA31W0", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 17, "entitlementCollectionId": "Ick0wJoM", "entitlementOrigin": "Twitch", "itemIdentity": "1lmdbnxy", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "IGUAgJc4"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 94, "currencyCode": "n1l9ggJN", "expireAt": "1971-03-14T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "1OnDOaFB", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "GS2b6Q7M", "entitlementOrigin": "Playstation", "itemIdentity": "AwaBHvh6", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "MuleTz0b"}, "type": "CREDIT_WALLET"}], "userId": "8GGoP07m"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 72, "currencyCode": "uEhAlY40", "expireAt": "1976-08-17T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "kCI8rLrm", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "UruyzyoA", "entitlementOrigin": "Twitch", "itemIdentity": "YoGbWPFd", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "8MjqPSAz"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 18, "currencyCode": "Z263FmqW", "expireAt": "1973-02-19T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "RXtlZvKd", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "a9JcHy0o", "entitlementOrigin": "Oculus", "itemIdentity": "yASmp8n1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "ZsEQUBtz"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 10, "currencyCode": "7GyzIc2G", "expireAt": "1978-12-18T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "7GZovtvG", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "R79MZYoB", "entitlementOrigin": "Twitch", "itemIdentity": "JdnXv3fr", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 63, "entitlementId": "jOwOyrQq"}, "type": "CREDIT_WALLET"}], "userId": "muIvWq5r"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 35, "currencyCode": "a530PCXr", "expireAt": "1997-10-18T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "vP5m4KYY", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 86, "entitlementCollectionId": "xa53BFUi", "entitlementOrigin": "Playstation", "itemIdentity": "P8W0UcGq", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "QgSU77QO"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 87, "currencyCode": "Y2Cf8efk", "expireAt": "1994-08-30T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "BWnKTbfv", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "baq7Z9Vm", "entitlementOrigin": "Twitch", "itemIdentity": "YcEJYYsF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "AAhJl6Mj"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 28, "currencyCode": "EbDS8tGE", "expireAt": "1982-12-13T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "stmGOGO1", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "3MGvgne4", "entitlementOrigin": "Oculus", "itemIdentity": "e9hWPvEA", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "jTeP1Czi"}, "type": "CREDIT_WALLET"}], "userId": "mxndLj39"}], "metadata": {"47mkBHC3": {}, "mlmVjHUG": {}, "rqgWZ26C": {}}, "needPreCheck": false, "transactionId": "BFqxNqXv", "type": "HwSCawri"}' \
    > test.out 2>&1
eval_tap $? 227 'Commit' test.out

#- 228 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '99' \
    --status 'FAILED' \
    --type 'Ewo6HQ8R' \
    --userId '2GODR5Cb' \
    > test.out 2>&1
eval_tap $? 228 'GetTradeHistoryByCriteria' test.out

#- 229 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'UAa7v18J' \
    > test.out 2>&1
eval_tap $? 229 'GetTradeHistoryByTransactionId' test.out

#- 230 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'aHz6jxkw' \
    --body '{"achievements": [{"id": "gbbVfden", "value": 71}, {"id": "sSduPmLz", "value": 17}, {"id": "9eBE32b4", "value": 78}], "steamUserId": "3hr8ACeB"}' \
    > test.out 2>&1
eval_tap $? 230 'UnlockSteamUserAchievement' test.out

#- 231 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'lXOLmNYD' \
    --xboxUserId 'ylfHe3V1' \
    > test.out 2>&1
eval_tap $? 231 'GetXblUserAchievements' test.out

#- 232 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Z9xZsiOR' \
    --body '{"achievements": [{"id": "DL8jCZmg", "percentComplete": 87}, {"id": "poRUBRmd", "percentComplete": 27}, {"id": "hXebUIrd", "percentComplete": 42}], "serviceConfigId": "L7cHgpOD", "titleId": "9Cz1AuVn", "xboxUserId": "0RopeCws"}' \
    > test.out 2>&1
eval_tap $? 232 'UpdateXblUserAchievement' test.out

#- 233 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'kSfantoj' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizeCampaign' test.out

#- 234 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'lxH8cOsr' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeEntitlement' test.out

#- 235 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '00NLSgjv' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeFulfillment' test.out

#- 236 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'OSIco5ik' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeIntegration' test.out

#- 237 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'bw2D7Gd3' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeOrder' test.out

#- 238 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '4BVtC9Q3' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizePayment' test.out

#- 239 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '0OUYrY75' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeRevocation' test.out

#- 240 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'tQzQe9ir' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizeSubscription' test.out

#- 241 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'YlTESTNp' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeWallet' test.out

#- 242 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Vbru4IE8' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 242 'GetUserDLCByPlatform' test.out

#- 243 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '5dEaxtlh' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 243 'GetUserDLC' test.out

#- 244 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vtO6MmBy' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --collectionId 'vshnQrOB' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'mI6opiBt' \
    --features '["K1UPjwVM", "h6ZPEFo1", "1kQFQnFZ"]' \
    --fuzzyMatchName 'true' \
    --itemId '["RZdDyUQF", "6Y3fYS7q", "iUOW6X23"]' \
    --limit '61' \
    --offset '69' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserEntitlements' test.out

#- 245 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kwQ9yQTT' \
    --body '[{"collectionId": "rU6wQf0j", "endDate": "1997-02-23T00:00:00Z", "grantedCode": "3rhsiJm7", "itemId": "xC2qkHs4", "itemNamespace": "d5PvkbJ0", "language": "vkM-629", "metadata": {"e4aM9d9R": {}, "oYMgB0gB": {}, "8KXfMRn3": {}}, "origin": "Other", "quantity": 66, "region": "A8tf9BbS", "source": "REDEEM_CODE", "startDate": "1989-06-08T00:00:00Z", "storeId": "sb8Z48FA"}, {"collectionId": "F3mi2xoi", "endDate": "1976-08-08T00:00:00Z", "grantedCode": "WNWVLtUx", "itemId": "s839vPMc", "itemNamespace": "il8azl9B", "language": "sXI_213", "metadata": {"DdeWNB93": {}, "Dc2JYVUy": {}, "3u0E9nZJ": {}}, "origin": "GooglePlay", "quantity": 27, "region": "lJlTuQRH", "source": "PURCHASE", "startDate": "1989-11-29T00:00:00Z", "storeId": "T9LBiraK"}, {"collectionId": "SAAYtSdC", "endDate": "1983-02-25T00:00:00Z", "grantedCode": "ffKhpuiw", "itemId": "cXMHvYg2", "itemNamespace": "2I1hGYEf", "language": "Azj_Aghj", "metadata": {"kXO3UafX": {}, "WHWAq72E": {}, "mfgaELYX": {}}, "origin": "System", "quantity": 4, "region": "fOwlihnM", "source": "PURCHASE", "startDate": "1995-01-14T00:00:00Z", "storeId": "2zPolrIZ"}]' \
    > test.out 2>&1
eval_tap $? 245 'GrantUserEntitlement' test.out

#- 246 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'HYcPdQkA' \
    --activeOnly 'true' \
    --appId 'hZWSuyix' \
    > test.out 2>&1
eval_tap $? 246 'GetUserAppEntitlementByAppId' test.out

#- 247 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'p443tngm' \
    --activeOnly 'true' \
    --limit '7' \
    --offset '17' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserEntitlementsByAppType' test.out

#- 248 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'ADqsIeFP' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'y6X6DoNf' \
    --itemId 'Mc3sQDZZ' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementByItemId' test.out

#- 249 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'pAG7zWO7' \
    --ids '["LT2kWtvi", "9PFw6G8i", "doQD9xng"]' \
    --platform 'pC7By4jn' \
    > test.out 2>&1
eval_tap $? 249 'GetUserActiveEntitlementsByItemIds' test.out

#- 250 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'NEceVkV5' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'tWjJ6VEx' \
    --sku 'qUTpkoyo' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementBySku' test.out

#- 251 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'GKsqbfCD' \
    --appIds '["N24Mhojm", "JEESoQu1", "qnIh0jjd"]' \
    --itemIds '["RHi9lHq1", "YiR1HjRn", "E04dCv87"]' \
    --platform 'L5n8vRHk' \
    --skus '["JkrEPMfw", "qp4VvTpa", "QfgidU7P"]' \
    > test.out 2>&1
eval_tap $? 251 'ExistsAnyUserActiveEntitlement' test.out

#- 252 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'dAUAvufK' \
    --platform 'lWdQZZeS' \
    --itemIds '["DEL4qR4u", "oux7uHk4", "xPyGoInO"]' \
    > test.out 2>&1
eval_tap $? 252 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 253 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'xUaUsUxj' \
    --appId 'D3UCqE00' \
    > test.out 2>&1
eval_tap $? 253 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 254 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wXY83R0x' \
    --entitlementClazz 'APP' \
    --platform 'E5D41ErZ' \
    --itemId 'Fkd6TMlF' \
    > test.out 2>&1
eval_tap $? 254 'GetUserEntitlementOwnershipByItemId' test.out

#- 255 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'gTG1Jr5P' \
    --ids '["kddyNq1n", "vf8PTn5o", "zkRqrGxz"]' \
    --platform 'yxMCVLG0' \
    > test.out 2>&1
eval_tap $? 255 'GetUserEntitlementOwnershipByItemIds' test.out

#- 256 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'wa9sAQl0' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'g4F4mEXu' \
    --sku 'GctRFaR0' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementOwnershipBySku' test.out

#- 257 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'nkXQyn8K' \
    > test.out 2>&1
eval_tap $? 257 'RevokeAllEntitlements' test.out

#- 258 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9EZ7paT9' \
    --entitlementIds 'Ba0l9Zy2' \
    > test.out 2>&1
eval_tap $? 258 'RevokeUserEntitlements' test.out

#- 259 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'zJYbVH05' \
    --namespace $AB_NAMESPACE \
    --userId 'CzoA9Rhj' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlement' test.out

#- 260 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '00hMFB8F' \
    --namespace $AB_NAMESPACE \
    --userId 'SFHARDy5' \
    --body '{"collectionId": "VI2oDsG6", "endDate": "1982-05-18T00:00:00Z", "nullFieldList": ["tbirBvs8", "zVdtk3UR", "8JQ7JbVa"], "origin": "GooglePlay", "reason": "n1Rp2Bm2", "startDate": "1998-04-12T00:00:00Z", "status": "INACTIVE", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 260 'UpdateUserEntitlement' test.out

#- 261 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '45FQbsI6' \
    --namespace $AB_NAMESPACE \
    --userId 'iVz1OyO9' \
    --body '{"metadata": {"zlqLPJHm": {}, "ib2byw73": {}, "iIgpLDli": {}}, "options": ["VixuQIn3", "kQtmr6Jw", "ikH0GjSG"], "platform": "CI3qANsO", "requestId": "1o2bU95S", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 261 'ConsumeUserEntitlement' test.out

#- 262 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'P1KSM5QF' \
    --namespace $AB_NAMESPACE \
    --userId 'G7F0Mqyl' \
    > test.out 2>&1
eval_tap $? 262 'DisableUserEntitlement' test.out

#- 263 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '4JFIHP6x' \
    --namespace $AB_NAMESPACE \
    --userId 'Ox1YyXiq' \
    > test.out 2>&1
eval_tap $? 263 'EnableUserEntitlement' test.out

#- 264 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'g8gXKf5V' \
    --namespace $AB_NAMESPACE \
    --userId 'SBlgcJAb' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementHistories' test.out

#- 265 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'YtNkGbil' \
    --namespace $AB_NAMESPACE \
    --userId 'vvoKyxe8' \
    --body '{"metadata": {"iIe7GpEK": {}, "yNhqwOlu": {}, "ZFBNzvBO": {}}}' \
    > test.out 2>&1
eval_tap $? 265 'RevokeUserEntitlement' test.out

#- 266 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '9wQQuP08' \
    --namespace $AB_NAMESPACE \
    --userId 'enAK0qpJ' \
    --body '{"reason": "1P3BWpIT", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 266 'RevokeUserEntitlementByUseCount' test.out

#- 267 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'bwqJhLJc' \
    --namespace $AB_NAMESPACE \
    --userId 'Fkm11XFS' \
    --quantity '31' \
    > test.out 2>&1
eval_tap $? 267 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 268 RevokeUseCount
eval_tap 0 268 'RevokeUseCount # SKIP deprecated' test.out

#- 269 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'TI8K4mmV' \
    --namespace $AB_NAMESPACE \
    --userId 'f0KLaKWl' \
    --body '{"platform": "ZaahzhuY", "requestId": "p3VqoC6n", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 269 'SellUserEntitlement' test.out

#- 270 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'vkmQ1eLt' \
    --body '{"duration": 92, "endDate": "1981-05-23T00:00:00Z", "entitlementCollectionId": "vSevCwPB", "entitlementOrigin": "Twitch", "itemId": "oMcKKPT3", "itemSku": "TBcI95e3", "language": "8p0OwYWq", "metadata": {"36vPIXpa": {}, "nFXWUtgF": {}, "uHclHuvG": {}}, "order": {"currency": {"currencyCode": "vc9XKtpK", "currencySymbol": "8siUUryH", "currencyType": "REAL", "decimals": 78, "namespace": "DQQz029X"}, "ext": {"tBwQ7axk": {}, "DRp9cx3c": {}, "Q4WXFk4w": {}}, "free": false}, "orderNo": "PSPERuBC", "origin": "System", "overrideBundleItemQty": {"MgjhgavZ": 8, "yVQFLeKb": 71, "YwwXjxlL": 3}, "quantity": 87, "region": "Xea8b4Hw", "source": "IAP", "startDate": "1972-08-23T00:00:00Z", "storeId": "jFAlO70Y"}' \
    > test.out 2>&1
eval_tap $? 270 'FulfillItem' test.out

#- 271 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'rMhba9iP' \
    --body '{"code": "JlRdcECe", "language": "zSiL", "region": "7apFYe72"}' \
    > test.out 2>&1
eval_tap $? 271 'RedeemCode' test.out

#- 272 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '5SSFx82v' \
    --body '{"itemId": "d066ysIu", "itemSku": "nIA8EIcH", "quantity": 88}' \
    > test.out 2>&1
eval_tap $? 272 'PreCheckFulfillItem' test.out

#- 273 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AcZtvv97' \
    --body '{"entitlementCollectionId": "fHKM4Nkl", "entitlementOrigin": "Oculus", "metadata": {"ivPUvM9M": {}, "EAriJIP4": {}, "aj5bVXJC": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "QdnS5CAZ", "namespace": "MFgMty4t"}, "item": {"itemId": "hoRBgVMU", "itemName": "qr35QvP5", "itemSku": "iMVNpXTb", "itemType": "9sFw4Cpu"}, "quantity": 56, "type": "ITEM"}, {"currency": {"currencyCode": "Cry9MYTc", "namespace": "uQvbEDYW"}, "item": {"itemId": "koF6rrHG", "itemName": "rlkq5TRI", "itemSku": "1cdvNJDd", "itemType": "Uev3AFZK"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "8gFBVy63", "namespace": "45QlfY8u"}, "item": {"itemId": "rTexh049", "itemName": "rKL2YNFV", "itemSku": "5r12Luot", "itemType": "ayx9e5jQ"}, "quantity": 60, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "VogBr345"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillRewards' test.out

#- 274 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'V5hFDyV3' \
    --endTime '3Te3R26U' \
    --limit '97' \
    --offset '63' \
    --productId 'fvYIvIxM' \
    --startTime 'HkggVclj' \
    --status 'FAILED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 274 'QueryUserIAPOrders' test.out

#- 275 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'n70tllLE' \
    > test.out 2>&1
eval_tap $? 275 'QueryAllUserIAPOrders' test.out

#- 276 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'amRew5MC' \
    --endTime 'qyHqcv4f' \
    --limit '68' \
    --offset '83' \
    --startTime 'cL9wOXtQ' \
    --status 'SUCCESS' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 276 'QueryUserIAPConsumeHistory' test.out

#- 277 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'wK8cd2e5' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "tnag", "productId": "cJdga4yC", "region": "5O0RTuJn", "transactionId": "YOfubKdB", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 277 'MockFulfillIAPItem' test.out

#- 278 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId '23kCNRPZ' \
    --activeOnly 'false' \
    --groupId '3A27JmoL' \
    --limit '17' \
    --offset '46' \
    --platform 'GOOGLE' \
    --productId 'yGDJTtXr' \
    > test.out 2>&1
eval_tap $? 278 'QueryUserThirdPartySubscription' test.out

#- 279 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'tMqSGlJw' \
    --groupId 'dnUSb9tg' \
    > test.out 2>&1
eval_tap $? 279 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 280 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId '591a0T67' \
    --productId '5xf0UXsV' \
    > test.out 2>&1
eval_tap $? 280 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 281 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'O0MjWAAu' \
    --activeOnly 'false' \
    --groupId 'qiYb1Pzd' \
    --limit '2' \
    --offset '66' \
    --platform 'STEAM' \
    --productId 'rUDvwjUK' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 282 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'lpjQ1J5Q' \
    --namespace $AB_NAMESPACE \
    --userId '5sn4v8cE' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartySubscriptionDetails' test.out

#- 283 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'XsZXYPWK' \
    --namespace $AB_NAMESPACE \
    --userId 'ZZ8O6kW5' \
    --limit '93' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 283 'GetSubscriptionHistory' test.out

#- 284 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'vrhOHYSv' \
    --namespace $AB_NAMESPACE \
    --userId 'GVePeFr5' \
    > test.out 2>&1
eval_tap $? 284 'SyncSubscriptionTransaction' test.out

#- 285 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'guZ8YM28' \
    --namespace $AB_NAMESPACE \
    --userId 'wrQaRAas' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartyUserSubscriptionDetails' test.out

#- 286 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'bKwCpAAr' \
    --namespace $AB_NAMESPACE \
    --userId 'aePTsVvB' \
    > test.out 2>&1
eval_tap $? 286 'SyncSubscription' test.out

#- 287 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'jK59BOss' \
    --discounted 'false' \
    --itemId 'SFwXCLfH' \
    --limit '62' \
    --offset '90' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserOrders' test.out

#- 288 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '7GtS7HfF' \
    --body '{"currencyCode": "GMhKIRSw", "currencyNamespace": "R2BlHIzb", "discountCodes": ["yQuokB1K", "FX37fXsx", "1HhNvVs8"], "discountedPrice": 49, "entitlementPlatform": "Oculus", "ext": {"3pNWetSp": {}, "g3SrNHq7": {}, "ZgO3rnbS": {}}, "itemId": "Bll3tKz7", "language": "rftr9xVP", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 41, "quantity": 7, "region": "3NyZX8Id", "returnUrl": "jBTBw72j", "sandbox": true, "sectionId": "G3fQhxMP"}' \
    > test.out 2>&1
eval_tap $? 288 'AdminCreateUserOrder' test.out

#- 289 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'emfGE06N' \
    --itemId '8smZna2w' \
    > test.out 2>&1
eval_tap $? 289 'CountOfPurchasedItem' test.out

#- 290 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iLbUTWkJ' \
    --userId 'Hf5TbShp' \
    > test.out 2>&1
eval_tap $? 290 'GetUserOrder' test.out

#- 291 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 't5vCTwxd' \
    --userId 'EnFHfDoK' \
    --body '{"status": "REFUNDED", "statusReason": "ylhsj1w7"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdateUserOrderStatus' test.out

#- 292 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yHG3C3D8' \
    --userId 'xgYbGkdp' \
    > test.out 2>&1
eval_tap $? 292 'FulfillUserOrder' test.out

#- 293 GetUserOrderGrant
eval_tap 0 293 'GetUserOrderGrant # SKIP deprecated' test.out

#- 294 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'nuMa2cXW' \
    --userId 'CNYExZhH' \
    > test.out 2>&1
eval_tap $? 294 'GetUserOrderHistories' test.out

#- 295 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'XYmzDTnx' \
    --userId 'intjEq1C' \
    --body '{"additionalData": {"cardSummary": "B67vbE09"}, "authorisedTime": "1999-11-15T00:00:00Z", "chargebackReversedTime": "1987-01-25T00:00:00Z", "chargebackTime": "1977-11-30T00:00:00Z", "chargedTime": "1994-12-29T00:00:00Z", "createdTime": "1990-09-10T00:00:00Z", "currency": {"currencyCode": "XZP49NyA", "currencySymbol": "ryzFUFtE", "currencyType": "REAL", "decimals": 47, "namespace": "3xjki8oA"}, "customParameters": {"v1ss41XI": {}, "e3Q2gFvo": {}, "SQ24BgAT": {}}, "extOrderNo": "REB9lp0m", "extTxId": "Qeobjp7E", "extUserId": "HV4IJeGo", "issuedAt": "1997-06-08T00:00:00Z", "metadata": {"eK8mg9Qt": "5OsI1BRT", "FqslfBf6": "XfPPfb8H", "R5IASwhs": "8UGk8Mul"}, "namespace": "0kzWWr05", "nonceStr": "1nLkq4eE", "paymentData": {"discountAmount": 62, "discountCode": "WOW55Pni", "subtotalPrice": 29, "tax": 19, "totalPrice": 85}, "paymentMethod": "IsaZlCLA", "paymentMethodFee": 93, "paymentOrderNo": "kfh7Mudd", "paymentProvider": "WXPAY", "paymentProviderFee": 65, "paymentStationUrl": "9c06lgL9", "price": 20, "refundedTime": "1974-05-16T00:00:00Z", "salesTax": 98, "sandbox": true, "sku": "vu8JHUqm", "status": "REFUND_FAILED", "statusReason": "19vSY24D", "subscriptionId": "5xn72Na0", "subtotalPrice": 61, "targetNamespace": "1SUkquwU", "targetUserId": "9IH9OgvM", "tax": 13, "totalPrice": 38, "totalTax": 1, "txEndTime": "1972-12-09T00:00:00Z", "type": "hGNrwl0v", "userId": "V9pPkdQ8", "vat": 28}' \
    > test.out 2>&1
eval_tap $? 295 'ProcessUserOrderNotification' test.out

#- 296 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'KCPUOjz7' \
    --userId 'zHVKuccJ' \
    > test.out 2>&1
eval_tap $? 296 'DownloadUserOrderReceipt' test.out

#- 297 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'rjVYKPfj' \
    --body '{"currencyCode": "IMNv1zhf", "currencyNamespace": "Py6WJp1g", "customParameters": {"xONOsgXc": {}, "JpfwBQjy": {}, "VdJtz2yC": {}}, "description": "SjIgyZJ6", "extOrderNo": "iM7qqPaQ", "extUserId": "nGJN0uNs", "itemType": "LOOTBOX", "language": "Ec-Zbas-279", "metadata": {"hWF8kDSs": "eeC9wnLo", "OG4gbIhW": "DXjVohtd", "hSdanPK7": "vkaJKb3A"}, "notifyUrl": "aTW0oCVs", "omitNotification": true, "platform": "x2EjD3cB", "price": 33, "recurringPaymentOrderNo": "YXvcbVsK", "region": "LKiJM6mC", "returnUrl": "mXGiMuqj", "sandbox": false, "sku": "OO1tvY5t", "subscriptionId": "Wjyj8xyh", "title": "vtSiDEXD"}' \
    > test.out 2>&1
eval_tap $? 297 'CreateUserPaymentOrder' test.out

#- 298 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mQdTlnDr' \
    --userId '3BuHRLiP' \
    --body '{"description": "RS8xtODJ"}' \
    > test.out 2>&1
eval_tap $? 298 'RefundUserPaymentOrder' test.out

#- 299 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'evxPPaaj' \
    > test.out 2>&1
eval_tap $? 299 'GetUserPlatformAccountClosureHistories' test.out

#- 300 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'Y4zoMcfz' \
    --body '{"code": "AhXF7cxo", "orderNo": "O6ctJOZe"}' \
    > test.out 2>&1
eval_tap $? 300 'ApplyUserRedemption' test.out

#- 301 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'sL4VyjVw' \
    --body '{"meta": {"jsVGL9Pv": {}, "QI0Fq0ec": {}, "wxlkivGu": {}}, "reason": "vjqTBYUV", "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "IxvbTUbb", "namespace": "MejneJof"}, "entitlement": {"entitlementId": "q6Ajhsvq"}, "item": {"entitlementOrigin": "System", "itemIdentity": "XKVv9RLe", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 50, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "IC5w2Y6c", "namespace": "Lcka9iyP"}, "entitlement": {"entitlementId": "Dc5mywnH"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "HpyioROb", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 68, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "ukaMjL9K", "namespace": "hpY1ytiE"}, "entitlement": {"entitlementId": "xUDZkvAD"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "yYXtEIfu", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 25, "type": "CURRENCY"}], "source": "DLC", "transactionId": "WCzpvSiU"}' \
    > test.out 2>&1
eval_tap $? 301 'DoRevocation' test.out

#- 302 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'kZhqUx19' \
    --body '{"gameSessionId": "IX6VmxPq", "payload": {"lHImY6MW": {}, "s0LCq65h": {}, "rGjwltOa": {}}, "scid": "627L08LV", "sessionTemplateName": "qjRntsH8"}' \
    > test.out 2>&1
eval_tap $? 302 'RegisterXblSessions' test.out

#- 303 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'YaHsyqVe' \
    --chargeStatus 'NEVER' \
    --itemId 'NxfBMFSl' \
    --limit '23' \
    --offset '70' \
    --sku 'H2Ih7CGx' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserSubscriptions' test.out

#- 304 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'K3TzPaXC' \
    --excludeSystem 'false' \
    --limit '44' \
    --offset '52' \
    --subscriptionId 'Lz9XYGxp' \
    > test.out 2>&1
eval_tap $? 304 'GetUserSubscriptionActivities' test.out

#- 305 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'RPalJ7US' \
    --body '{"grantDays": 97, "itemId": "xkiEWoVQ", "language": "IhVYCDgl", "reason": "bv7ZTVXW", "region": "qvsrAoI9", "source": "yoUx6Lf1"}' \
    > test.out 2>&1
eval_tap $? 305 'PlatformSubscribeSubscription' test.out

#- 306 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'w8HqFCqf' \
    --itemId 'pDk1Pia9' \
    > test.out 2>&1
eval_tap $? 306 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 307 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bzH1aH67' \
    --userId 'BXKXHEQR' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscription' test.out

#- 308 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ruBrAheK' \
    --userId 'zcBUx7kR' \
    > test.out 2>&1
eval_tap $? 308 'DeleteUserSubscription' test.out

#- 309 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0Psqy84b' \
    --userId 'b7Q27WyQ' \
    --force 'true' \
    --body '{"immediate": true, "reason": "dMGTxm9U"}' \
    > test.out 2>&1
eval_tap $? 309 'CancelSubscription' test.out

#- 310 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Qmvxryxy' \
    --userId 'C9Cvhf91' \
    --body '{"grantDays": 3, "reason": "37dWDAyy"}' \
    > test.out 2>&1
eval_tap $? 310 'GrantDaysToSubscription' test.out

#- 311 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ai8UAgjf' \
    --userId 'kUihPKqY' \
    --excludeFree 'true' \
    --limit '15' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 311 'GetUserSubscriptionBillingHistories' test.out

#- 312 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EFjS49o7' \
    --userId 'tRc9IcS0' \
    --body '{"additionalData": {"cardSummary": "ap3cI9iW"}, "authorisedTime": "1979-11-25T00:00:00Z", "chargebackReversedTime": "1977-11-07T00:00:00Z", "chargebackTime": "1991-07-12T00:00:00Z", "chargedTime": "1971-12-17T00:00:00Z", "createdTime": "1976-04-22T00:00:00Z", "currency": {"currencyCode": "rxSk2JcX", "currencySymbol": "v8omJPYD", "currencyType": "VIRTUAL", "decimals": 80, "namespace": "IowrDfiZ"}, "customParameters": {"6Dt39CU3": {}, "LChcvjni": {}, "9TtnAzK3": {}}, "extOrderNo": "EF5Eyjzr", "extTxId": "S2yuuDj9", "extUserId": "4386tYHC", "issuedAt": "1979-09-03T00:00:00Z", "metadata": {"2j0NZ9VN": "pRQkzlsq", "x2O2K41k": "bTCUNqt2", "O5tYsrD4": "YgsmfVru"}, "namespace": "Rxpaufaf", "nonceStr": "SDLiJywz", "paymentData": {"discountAmount": 59, "discountCode": "NvoRimLF", "subtotalPrice": 52, "tax": 74, "totalPrice": 3}, "paymentMethod": "a2G3nHHF", "paymentMethodFee": 29, "paymentOrderNo": "oMErlZbd", "paymentProvider": "PAYPAL", "paymentProviderFee": 35, "paymentStationUrl": "vIoo50U8", "price": 59, "refundedTime": "1995-06-10T00:00:00Z", "salesTax": 60, "sandbox": true, "sku": "SQgWcFrw", "status": "AUTHORISED", "statusReason": "5mG7Rni0", "subscriptionId": "oriFr0hI", "subtotalPrice": 26, "targetNamespace": "YW045OAL", "targetUserId": "pz2h5uqL", "tax": 73, "totalPrice": 16, "totalTax": 54, "txEndTime": "1998-06-27T00:00:00Z", "type": "Fm9QIn8P", "userId": "pLD5F6Sf", "vat": 42}' \
    > test.out 2>&1
eval_tap $? 312 'ProcessUserSubscriptionNotification' test.out

#- 313 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'CAzNnyYv' \
    --namespace $AB_NAMESPACE \
    --userId 'apyrIiVA' \
    --body '{"count": 72, "orderNo": "SjBgnlht"}' \
    > test.out 2>&1
eval_tap $? 313 'AcquireUserTicket' test.out

#- 314 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'VDO5UY2g' \
    > test.out 2>&1
eval_tap $? 314 'QueryUserCurrencyWallets' test.out

#- 315 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'lNA4kaqs' \
    --namespace $AB_NAMESPACE \
    --userId 'oQkvtWSF' \
    --body '{"allowOverdraft": true, "amount": 74, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"JUigwMnK": {}, "95GLnxga": {}, "xIQlO0Ar": {}}, "reason": "GOrn1JOb"}' \
    > test.out 2>&1
eval_tap $? 315 'DebitUserWalletByCurrencyCode' test.out

#- 316 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'RRplm52Z' \
    --namespace $AB_NAMESPACE \
    --userId 'W4fXFDRl' \
    --limit '59' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 316 'ListUserCurrencyTransactions' test.out

#- 317 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'YHxiKzFX' \
    --namespace $AB_NAMESPACE \
    --userId 'Ja7jPF7p' \
    --request '{"amount": 11, "debitBalanceSource": "TRADE", "metadata": {"JPwhdZw2": {}, "4pUoFM87": {}, "vYY2qWC5": {}}, "reason": "IBiphtEx", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 317 'CheckBalance' test.out

#- 318 CheckWallet
eval_tap 0 318 'CheckWallet # SKIP deprecated' test.out

#- 319 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'EuESZHpy' \
    --namespace $AB_NAMESPACE \
    --userId '0l104UiY' \
    --body '{"amount": 80, "expireAt": "1973-08-31T00:00:00Z", "metadata": {"6skwNYlG": {}, "I4cZAr9F": {}, "gD7BzuQR": {}}, "origin": "Xbox", "reason": "mFVg7ZvZ", "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 319 'CreditUserWallet' test.out

#- 320 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'wMswxSrH' \
    --namespace $AB_NAMESPACE \
    --userId 'd8XNPKXb' \
    --request '{"amount": 19, "debitBalanceSource": "EXPIRATION", "metadata": {"4FtTvmpG": {}, "1AXtMMyk": {}, "n8YHeriX": {}}, "reason": "kphP7mMk", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 320 'DebitByWalletPlatform' test.out

#- 321 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'DiDeYgy8' \
    --namespace $AB_NAMESPACE \
    --userId 'SAWx49Z5' \
    --body '{"amount": 2, "metadata": {"6K5HiAPh": {}, "TSsazQ4r": {}, "lrpoQ6Oe": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 321 'PayWithUserWallet' test.out

#- 322 GetUserWallet
eval_tap 0 322 'GetUserWallet # SKIP deprecated' test.out

#- 323 DebitUserWallet
eval_tap 0 323 'DebitUserWallet # SKIP deprecated' test.out

#- 324 DisableUserWallet
eval_tap 0 324 'DisableUserWallet # SKIP deprecated' test.out

#- 325 EnableUserWallet
eval_tap 0 325 'EnableUserWallet # SKIP deprecated' test.out

#- 326 ListUserWalletTransactions
eval_tap 0 326 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 327 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'PYCliNVw' \
    > test.out 2>&1
eval_tap $? 327 'ListViews' test.out

#- 328 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'fhifX7Vo' \
    --body '{"displayOrder": 51, "localizations": {"P6BBb3xq": {"description": "5sToHhtF", "localExt": {"jEKEafEf": {}, "xcEKvYUZ": {}, "dyFRSq6O": {}}, "longDescription": "UsECV2YT", "title": "rdHQTwYk"}, "m8nNLSRY": {"description": "DLTza9oO", "localExt": {"UwBjcKmC": {}, "HucovAjd": {}, "IG2w2TA1": {}}, "longDescription": "KXe3vP0K", "title": "XicopyAK"}, "dNGPtQ2F": {"description": "VyuSSNDM", "localExt": {"aopGviWk": {}, "nudpjE4B": {}, "OpUc0Lp7": {}}, "longDescription": "UqvYqLC4", "title": "rWHMcCL7"}}, "name": "Pclpy25k"}' \
    > test.out 2>&1
eval_tap $? 328 'CreateView' test.out

#- 329 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'HfPYj3MG' \
    --storeId 'CY7SeKLN' \
    > test.out 2>&1
eval_tap $? 329 'GetView' test.out

#- 330 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'X7o8dhUr' \
    --storeId 'lqQEZpm1' \
    --body '{"displayOrder": 87, "localizations": {"y08RjgQR": {"description": "23mpNxKE", "localExt": {"DgLudztG": {}, "09hZTHDi": {}, "DuXDgzgQ": {}}, "longDescription": "gWVFJyoh", "title": "bKFNukMN"}, "DgcbE70y": {"description": "CYK1lqsw", "localExt": {"SMRGMWOc": {}, "vzJhN9SR": {}, "aPaDfVCU": {}}, "longDescription": "dKWhaH6M", "title": "6UTgcQaL"}, "WcCDPPjG": {"description": "UzQsqja8", "localExt": {"BIvDZ7DL": {}, "xPQAdK8u": {}, "Mnjze6ew": {}}, "longDescription": "SZeLtQYB", "title": "GG5Dz0hM"}}, "name": "sXBZ1gz4"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateView' test.out

#- 331 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '8jjBtb5k' \
    --storeId 'DGQRMHMB' \
    > test.out 2>&1
eval_tap $? 331 'DeleteView' test.out

#- 332 QueryWallets
eval_tap 0 332 'QueryWallets # SKIP deprecated' test.out

#- 333 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 35, "expireAt": "1985-05-22T00:00:00Z", "metadata": {"bs6yV2HV": {}, "I86qgj0g": {}, "lRbjDDYH": {}}, "origin": "Nintendo", "reason": "1bwIxMjW", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "d6dnOeKp", "userIds": ["qQeqVTMy", "HYT0XJRP", "j3ymaUcW"]}, {"creditRequest": {"amount": 28, "expireAt": "1992-07-19T00:00:00Z", "metadata": {"iVgBG9p8": {}, "Aj6BwQeg": {}, "45d8SYKj": {}}, "origin": "Playstation", "reason": "dtH32cs5", "source": "OTHER"}, "currencyCode": "yJ6sRpxE", "userIds": ["UUoxWW5n", "gwRr9a9b", "nTPD1r5y"]}, {"creditRequest": {"amount": 19, "expireAt": "1971-05-04T00:00:00Z", "metadata": {"Ctu209TA": {}, "Qdg6SRc4": {}, "mNr7q8xD": {}}, "origin": "Epic", "reason": "Y4DxIyuk", "source": "GIFT"}, "currencyCode": "5fJ66jB7", "userIds": ["lP9pMqsS", "1XxZSRm7", "oMGl1O34"]}]' \
    > test.out 2>&1
eval_tap $? 333 'BulkCredit' test.out

#- 334 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "YkPkZjsS", "request": {"allowOverdraft": false, "amount": 95, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"fGthsn3U": {}, "Ck5v74bQ": {}, "WfUJLPnB": {}}, "reason": "fN1Xo0ZT"}, "userIds": ["F6RfFWDI", "VvgGI31F", "Z8XjEJ04"]}, {"currencyCode": "AbQCFwFl", "request": {"allowOverdraft": false, "amount": 30, "balanceOrigin": "GooglePlay", "balanceSource": "OTHER", "metadata": {"1wJzCQbQ": {}, "1K9dN3BE": {}, "nKSiZVa0": {}}, "reason": "Bo8H4wf7"}, "userIds": ["cPaXQuKk", "s2pLUowe", "mWgVXRLg"]}, {"currencyCode": "9Vme6Ywz", "request": {"allowOverdraft": false, "amount": 12, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"UpWOPheP": {}, "n2H9jf1U": {}, "Kbx5Cqiv": {}}, "reason": "3wFblW2S"}, "userIds": ["FIqYlQ4D", "u0zxxbsf", "8gWA9wxz"]}]' \
    > test.out 2>&1
eval_tap $? 334 'BulkDebit' test.out

#- 335 GetWallet
eval_tap 0 335 'GetWallet # SKIP deprecated' test.out

#- 336 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'KV3nktq7' \
    --end 'us71rSdJ' \
    --start 'hx5lHgYZ' \
    > test.out 2>&1
eval_tap $? 336 'SyncOrders' test.out

#- 337 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["RKzJwkkE", "Q3ar2IiD", "n4Ra3J3l"], "apiKey": "TWxcZxcZ", "authoriseAsCapture": true, "blockedPaymentMethods": ["BkvGz0bY", "a1dFJDan", "HbfvFB5g"], "clientKey": "nKQuu9Gq", "dropInSettings": "C4jxKcNN", "liveEndpointUrlPrefix": "XmhRX5U9", "merchantAccount": "ng25ddxQ", "notificationHmacKey": "P8bcoB64", "notificationPassword": "PyUgo5ZL", "notificationUsername": "IO5Rtspm", "returnUrl": "h0xDFQie", "settings": "Gac4xbeE"}' \
    > test.out 2>&1
eval_tap $? 337 'TestAdyenConfig' test.out

#- 338 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "lbeK3EoF", "privateKey": "5bEViZYg", "publicKey": "TpQpxX7M", "returnUrl": "7Kxq4Md2"}' \
    > test.out 2>&1
eval_tap $? 338 'TestAliPayConfig' test.out

#- 339 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "yDei3EHO", "secretKey": "IpUMEp9F"}' \
    > test.out 2>&1
eval_tap $? 339 'TestCheckoutConfig' test.out

#- 340 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'B7FUXKTt' \
    --region 'eFw8Mt7F' \
    > test.out 2>&1
eval_tap $? 340 'DebugMatchedPaymentMerchantConfig' test.out

#- 341 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "c5LZxbYY", "webhookSecretKey": "iMihBFmE"}' \
    > test.out 2>&1
eval_tap $? 341 'TestNeonPayConfig' test.out

#- 342 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "htiDWNhV", "clientSecret": "dVMEQu5s", "returnUrl": "EdFQZ8BG", "webHookId": "sbH5NPvI"}' \
    > test.out 2>&1
eval_tap $? 342 'TestPayPalConfig' test.out

#- 343 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["j161hhhY", "c6N81YIQ", "Mzd2scM1"], "publishableKey": "tOZcAvod", "secretKey": "L7bvJe0B", "webhookSecret": "1VTVrJjC"}' \
    > test.out 2>&1
eval_tap $? 343 'TestStripeConfig' test.out

#- 344 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "KuYfpopj", "key": "i5XkHnNZ", "mchid": "2saccOLU", "returnUrl": "8LdkPT1V"}' \
    > test.out 2>&1
eval_tap $? 344 'TestWxPayConfig' test.out

#- 345 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "erFntISN", "flowCompletionUrl": "RscgHEnn", "merchantId": 9, "projectId": 37, "projectSecretKey": "kbrx3cFV"}' \
    > test.out 2>&1
eval_tap $? 345 'TestXsollaConfig' test.out

#- 346 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '2iGryief' \
    > test.out 2>&1
eval_tap $? 346 'GetPaymentMerchantConfig1' test.out

#- 347 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'lmwCIM34' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["kfbSHNHX", "GmuGs7Va", "aGOkbTzv"], "apiKey": "uT4WUU9u", "authoriseAsCapture": false, "blockedPaymentMethods": ["tORspcsI", "nStIpptK", "xQ39FNT6"], "clientKey": "CnND0Brx", "dropInSettings": "OLh54YWi", "liveEndpointUrlPrefix": "dhBrrngM", "merchantAccount": "clLozWuI", "notificationHmacKey": "bUHjMzdk", "notificationPassword": "VWaxApVp", "notificationUsername": "uUh2KqK7", "returnUrl": "K6sXIlUG", "settings": "CyeAKdcs"}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateAdyenConfig' test.out

#- 348 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '5NJKhqbT' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 348 'TestAdyenConfigById' test.out

#- 349 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'uh5qegBj' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "dwCwRUCl", "privateKey": "dVqPJiIN", "publicKey": "owu3gu7A", "returnUrl": "2jvRKTLd"}' \
    > test.out 2>&1
eval_tap $? 349 'UpdateAliPayConfig' test.out

#- 350 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'x2wCRffi' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 350 'TestAliPayConfigById' test.out

#- 351 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'g3aXE74S' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "sAKiJNW5", "secretKey": "pGOtv5dq"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateCheckoutConfig' test.out

#- 352 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'uI2oAaCt' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 352 'TestCheckoutConfigById' test.out

#- 353 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'WrY6g0sW' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "U5FYs2eh", "webhookSecretKey": "WGjdNA7p"}' \
    > test.out 2>&1
eval_tap $? 353 'UpdateNeonPayConfig' test.out

#- 354 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id '92AtGu5z' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 354 'TestNeonPayConfigById' test.out

#- 355 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'eo9jYtbk' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "9Jc8vjCS", "clientSecret": "ka9F0XQ9", "returnUrl": "miCSYNTv", "webHookId": "onHavNuP"}' \
    > test.out 2>&1
eval_tap $? 355 'UpdatePayPalConfig' test.out

#- 356 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '1Ro71vIB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfigById' test.out

#- 357 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'ETk7HZUu' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["c5Swwka0", "iRzueOhd", "MciFNxvR"], "publishableKey": "lOKvUZQx", "secretKey": "K0KOM1K5", "webhookSecret": "WLkuskar"}' \
    > test.out 2>&1
eval_tap $? 357 'UpdateStripeConfig' test.out

#- 358 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'dG9wI98b' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 358 'TestStripeConfigById' test.out

#- 359 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ukDAL8D1' \
    --validate 'false' \
    --body '{"appId": "FQ69t9oV", "key": "TV2JY7Hi", "mchid": "n72FlRZa", "returnUrl": "A5h2AUgA"}' \
    > test.out 2>&1
eval_tap $? 359 'UpdateWxPayConfig' test.out

#- 360 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'EkH3BYLt' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 360 'UpdateWxPayConfigCert' test.out

#- 361 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'nyQzBnyy' \
    > test.out 2>&1
eval_tap $? 361 'TestWxPayConfigById' test.out

#- 362 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'bFKZAE9V' \
    --validate 'false' \
    --body '{"apiKey": "c8sJGqYC", "flowCompletionUrl": "sSchu0yb", "merchantId": 87, "projectId": 15, "projectSecretKey": "voTe0TIP"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateXsollaConfig' test.out

#- 363 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'tfCL8ITS' \
    > test.out 2>&1
eval_tap $? 363 'TestXsollaConfigById' test.out

#- 364 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'AgjaaErv' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 364 'UpdateXsollaUIConfig' test.out

#- 365 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '52' \
    --namespace 'tqvzVisZ' \
    --offset '58' \
    --region 'zjkWwYEx' \
    > test.out 2>&1
eval_tap $? 365 'QueryPaymentProviderConfig' test.out

#- 366 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "fWoOWYFO", "region": "GMG7E96H", "sandboxTaxJarApiToken": "6oNXBnlD", "specials": ["XSOLLA", "WXPAY", "PAYPAL"], "taxJarApiToken": "cX7W5itV", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 366 'CreatePaymentProviderConfig' test.out

#- 367 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 367 'GetAggregatePaymentProviders' test.out

#- 368 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '66nxFxjE' \
    --region 'PFQp3Q9W' \
    > test.out 2>&1
eval_tap $? 368 'DebugMatchedPaymentProviderConfig' test.out

#- 369 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 369 'GetSpecialPaymentProviders' test.out

#- 370 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'B23mbdWU' \
    --body '{"aggregate": "XSOLLA", "namespace": "dVgKaCvP", "region": "1ZLRNbr2", "sandboxTaxJarApiToken": "YnFiMpj0", "specials": ["XSOLLA", "PAYPAL", "STRIPE"], "taxJarApiToken": "jjuJDa3X", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 370 'UpdatePaymentProviderConfig' test.out

#- 371 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'CA8YYZdU' \
    > test.out 2>&1
eval_tap $? 371 'DeletePaymentProviderConfig' test.out

#- 372 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 372 'GetPaymentTaxConfig' test.out

#- 373 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Gf2e4oTe", "taxJarApiToken": "HErJo3Iz", "taxJarEnabled": false, "taxJarProductCodesMapping": {"t553ad5U": "1Wi7Jw9l", "xkMvBrzN": "7jJtUGJj", "hREYPcox": "Cg6dNvuW"}}' \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentTaxConfig' test.out

#- 374 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'KNhKsEoE' \
    --end '5KJ1uQfN' \
    --start 'P7mek4uO' \
    > test.out 2>&1
eval_tap $? 374 'SyncPaymentOrders' test.out

#- 375 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'bxmBG51m' \
    --storeId '2mhyx0hZ' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetRootCategories' test.out

#- 376 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'KYmLo4rZ' \
    --storeId 'MrLqR2kT' \
    > test.out 2>&1
eval_tap $? 376 'DownloadCategories' test.out

#- 377 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'YwHXqXWl' \
    --namespace $AB_NAMESPACE \
    --language 'dP5sWekd' \
    --storeId 'vgwYijHC' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetCategory' test.out

#- 378 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'b1ah5tRP' \
    --namespace $AB_NAMESPACE \
    --language 'XDQ0Yapn' \
    --storeId 'Vvb6BtMW' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetChildCategories' test.out

#- 379 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'Yel0Zs44' \
    --namespace $AB_NAMESPACE \
    --language 'MAqh9euY' \
    --storeId 'eMzL8kCA' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetDescendantCategories' test.out

#- 380 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 380 'PublicListCurrencies' test.out

#- 381 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 381 'GeDLCDurableRewardShortMap' test.out

#- 382 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 382 'GetAppleConfigVersion' test.out

#- 383 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 383 'GetIAPItemMapping' test.out

#- 384 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'SRbFrXc7' \
    --region 'OVSTGA36' \
    --storeId 'tfvHczLM' \
    --appId '0xf3xLgD' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetItemByAppId' test.out

#- 385 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'GRjiI2PN' \
    --categoryPath 'B7Kv64lJ' \
    --features 'qDsRdboD' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --language 'LEMxCpR2' \
    --limit '11' \
    --offset '77' \
    --region 'fPxrN1Wc' \
    --sortBy '["name:asc", "name", "createdAt"]' \
    --storeId 'vV8yoTn7' \
    --tags '27fSvFTQ' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryItems' test.out

#- 386 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'd6mO78GJ' \
    --region 'EWJYsH4J' \
    --storeId 'Sb7jfqyx' \
    --sku 'G6c3IUeT' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetItemBySku' test.out

#- 387 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'VQJW3OFD' \
    --storeId 'hPQySbyf' \
    --itemIds 'rNSio13g' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEstimatedPrice' test.out

#- 388 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'cwdOHlBj' \
    --region 'QZxyXbmi' \
    --storeId 'mgIsYAg6' \
    --itemIds '8JfzBp4z' \
    > test.out 2>&1
eval_tap $? 388 'PublicBulkGetItems' test.out

#- 389 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Ft9oH0V9", "4Z98pERO", "ZaaxpzLp"]}' \
    > test.out 2>&1
eval_tap $? 389 'PublicValidateItemPurchaseCondition' test.out

#- 390 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'BUNDLE' \
    --limit '13' \
    --offset '29' \
    --region 'WIl0ztK1' \
    --storeId 'cMuLPcyg' \
    --keyword 'fcL8NUNK' \
    --language 'yASqDizV' \
    > test.out 2>&1
eval_tap $? 390 'PublicSearchItems' test.out

#- 391 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '4UMJoiWs' \
    --namespace $AB_NAMESPACE \
    --language 'ZRE5DcJ0' \
    --region 'KTn32taJ' \
    --storeId 'lfadrsrc' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetApp' test.out

#- 392 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'KOCIjo8Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicGetItemDynamicData' test.out

#- 393 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '846h0A6Y' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'fPZENHgT' \
    --populateBundle 'false' \
    --region '35BDF6cj' \
    --storeId 'iKGH2UZT' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetItem' test.out

#- 394 GetPaymentCustomization
eval_tap 0 394 'GetPaymentCustomization # SKIP deprecated' test.out

#- 395 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "gJDLfAy3", "successUrl": "ZwF2MB2G"}, "paymentOrderNo": "pIcNC3wp", "paymentProvider": "NEONPAY", "returnUrl": "6KJDTuwI", "ui": "T7MinceZ", "zipCode": "WPZ2HvXx"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetPaymentUrl' test.out

#- 396 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1EOEUWWg' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetPaymentMethods' test.out

#- 397 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jOKcaAL4' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUnpaidPaymentOrder' test.out

#- 398 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eGGPWGOV' \
    --paymentProvider 'ADYEN' \
    --zipCode 'pYZwE5qb' \
    --body '{"token": "BkPpLZ2Y"}' \
    > test.out 2>&1
eval_tap $? 398 'Pay' test.out

#- 399 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZtvKhOTR' \
    > test.out 2>&1
eval_tap $? 399 'PublicCheckPaymentOrderPaidStatus' test.out

#- 400 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'XSOLLA' \
    --region '3YY4Hfgp' \
    > test.out 2>&1
eval_tap $? 400 'GetPaymentPublicConfig' test.out

#- 401 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'WyJQ4j3B' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetQRCode' test.out

#- 402 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'fJ23hFDW' \
    --foreinginvoice 'qc3NSNVI' \
    --invoiceId 'tIwC7rLf' \
    --payload 'PkuxBsGV' \
    --redirectResult 'pxjtx3c6' \
    --resultCode 'lqDlVaKJ' \
    --sessionId 'swQp4cmN' \
    --status 'VKHMwvCQ' \
    --token 'CnJGutjI' \
    --type '0rOEjC0t' \
    --userId 'fBCiz561' \
    --orderNo 'AIUJshVt' \
    --paymentOrderNo 'qsZJyzl3' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'ReMFOXc0' \
    > test.out 2>&1
eval_tap $? 402 'PublicNormalizePaymentReturnUrl' test.out

#- 403 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'nU9Rqy4i' \
    --paymentOrderNo '5putITpC' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentTaxValue' test.out

#- 404 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'UMAEbWxS' \
    > test.out 2>&1
eval_tap $? 404 'GetRewardByCode' test.out

#- 405 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'mu47HZ5g' \
    --limit '78' \
    --offset '65' \
    --sortBy '["namespace:desc", "rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 405 'QueryRewards1' test.out

#- 406 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'DEOBIRZ9' \
    > test.out 2>&1
eval_tap $? 406 'GetReward1' test.out

#- 407 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 407 'PublicListStores' test.out

#- 408 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["vmBHshsx", "Ed3JWBGK", "DQIKXpTf"]' \
    --itemIds '["OhZ9a8KG", "LcPo7ZhK", "nAbdFLJc"]' \
    --skus '["RzcTHor4", "GUnLRmAb", "cxNskvqJ"]' \
    > test.out 2>&1
eval_tap $? 408 'PublicExistsAnyMyActiveEntitlement' test.out

#- 409 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'tgoO5zFJ' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 410 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'O0Wx1ISj' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 411 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '8Pl9q74e' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 412 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["HGYNxplI", "MpB7wPbL", "9y9Gm0Si"]' \
    --itemIds '["pOC0E8Xd", "cj1hBA9B", "Lbr5WdNK"]' \
    --skus '["Lrwfu8C9", "odRlOOly", "DsHPlMqK"]' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEntitlementOwnershipToken' test.out

#- 413 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "iKu9PuGc", "language": "xAl-014", "region": "iQFjW4ag"}' \
    > test.out 2>&1
eval_tap $? 413 'SyncTwitchDropsEntitlement' test.out

#- 414 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '4tIecTsW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyWallet' test.out

#- 415 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uheeNH8g' \
    --body '{"epicGamesJwtToken": "KJDipnBL"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGameDLC' test.out

#- 416 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'GuWm0Bnc' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusDLC' test.out

#- 417 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UrwEm1EN' \
    --body '{"serviceLabel": 38}' \
    > test.out 2>&1
eval_tap $? 417 'PublicSyncPsnDlcInventory' test.out

#- 418 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Dil66SfL' \
    --body '{"serviceLabels": [62, 26, 14]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 419 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '3knGEWA6' \
    --body '{"appId": "4HHzCRsu", "steamId": "qoOVSqob"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamDLC' test.out

#- 420 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'nRUrsiWc' \
    --body '{"xstsToken": "aIAKiriR"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncXboxDLC' test.out

#- 421 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'uB9ZFeQf' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'D96tUEyU' \
    --features '["4PXRtvdA", "boUPYqba", "rL89NE65"]' \
    --itemId '["NMFUfjcM", "XmsWymDN", "6xS2vbVP"]' \
    --limit '67' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 421 'PublicQueryUserEntitlements' test.out

#- 422 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1kt2kWBP' \
    --appId 'niIfBNsS' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUserAppEntitlementByAppId' test.out

#- 423 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '3IlK3qjH' \
    --limit '91' \
    --offset '31' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserEntitlementsByAppType' test.out

#- 424 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'za4YueMZ' \
    --availablePlatformOnly 'true' \
    --ids '["I5ZomKEt", "sjXc0aMA", "oFZvVDqO"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserEntitlementsByIds' test.out

#- 425 PublicGetUserEntitlementByItemId
eval_tap 0 425 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 426 PublicGetUserEntitlementBySku
eval_tap 0 426 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 427 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'LyT4TVr2' \
    --endDate 'dT0RxGzb' \
    --entitlementClazz 'APP' \
    --limit '70' \
    --offset '95' \
    --startDate 'prQy1KyQ' \
    > test.out 2>&1
eval_tap $? 427 'PublicUserEntitlementHistory' test.out

#- 428 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'v5lbRecg' \
    --appIds '["d86antMS", "SKw5oU1s", "TI9ch4mh"]' \
    --itemIds '["6j9fFhG5", "oDyshRF6", "0xn2QhFn"]' \
    --skus '["GvkkTR7s", "605XJDDI", "7vgbDPv2"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicExistsAnyUserActiveEntitlement' test.out

#- 429 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ShyF4CW4' \
    --appId 'k503SGtP' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 430 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tsjQRaK9' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '03QSK78P' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 431 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0ywF8GlH' \
    --ids '["Rwg7XAjX", "sj4H27k2", "GIbrvGpq"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 432 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'dy5LxKF4' \
    --entitlementClazz 'CODE' \
    --sku 'O6EqhCm3' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 433 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'wX8NS4Aj' \
    --namespace $AB_NAMESPACE \
    --userId 'pDozg1Tg' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlement' test.out

#- 434 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'X2QzjJeM' \
    --namespace $AB_NAMESPACE \
    --userId 'vODE1pg9' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["xdXptXeq", "o33h44KG", "fCMm0Es0"], "requestId": "JBNxAqAR", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 434 'PublicConsumeUserEntitlement' test.out

#- 435 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'e910MXl9' \
    --namespace $AB_NAMESPACE \
    --userId 'OaK0Qaat' \
    --body '{"requestId": "OwqUJ5xc", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 435 'PublicSellUserEntitlement' test.out

#- 436 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'E9skgWfz' \
    --namespace $AB_NAMESPACE \
    --userId 'qttXfgtn' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 436 'PublicSplitUserEntitlement' test.out

#- 437 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '6ontlkyJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ZvsId3Kt' \
    --body '{"entitlementId": "IvBk1SSc", "metadata": {"operationSource": "INVENTORY"}, "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 437 'PublicTransferUserEntitlement' test.out

#- 438 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '079El5Xj' \
    --body '{"code": "kmra0nHI", "language": "dhc_348", "region": "404RNEsm"}' \
    > test.out 2>&1
eval_tap $? 438 'PublicRedeemCode' test.out

#- 439 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'NNl8kdgh' \
    --body '{"excludeOldTransactions": false, "language": "Wmwy_yeSj-uA", "productId": "hNIw00iK", "receiptData": "xB8F01bP", "region": "8zM9GEFx", "transactionId": "ffo8RDnM"}' \
    > test.out 2>&1
eval_tap $? 439 'PublicFulfillAppleIAPItem' test.out

#- 440 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'R1Sdt5FM' \
    --body '{"epicGamesJwtToken": "iJPBy63D"}' \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGamesInventory' test.out

#- 441 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'SyKTFGiF' \
    --body '{"autoAck": true, "autoConsume": true, "language": "XuYD_olYm_051", "orderId": "9btGNqwh", "packageName": "hvPRsZQd", "productId": "eEKE3dt9", "purchaseTime": 35, "purchaseToken": "hMjR6J64", "region": "jFTdyTSl", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 441 'PublicFulfillGoogleIAPItem' test.out

#- 442 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'f7Zh2gYa' \
    > test.out 2>&1
eval_tap $? 442 'SyncOculusConsumableEntitlements' test.out

#- 443 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'GCK5kaZs' \
    --body '{"currencyCode": "bR9k57t0", "price": 0.7762063309134342, "productId": "omi3LYxv", "serviceLabel": 27}' \
    > test.out 2>&1
eval_tap $? 443 'PublicReconcilePlayStationStore' test.out

#- 444 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'mPIqfoos' \
    --body '{"currencyCode": "aoXpSd2o", "price": 0.23738031895553657, "productId": "8tQA4saz", "serviceLabels": [18, 59, 37]}' \
    > test.out 2>&1
eval_tap $? 444 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 445 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QrIqnEuP' \
    --body '{"appId": "gokuGBgq", "currencyCode": "gDDGXCh0", "language": "Kb-BGAy-Gb", "price": 0.9346270683951352, "productId": "YdBpzrjK", "region": "uKepiq9B", "steamId": "LVuEBeC1"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncSteamInventory' test.out

#- 446 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'XM5riAC5' \
    --activeOnly 'true' \
    --groupId 'cvB2pIDM' \
    --limit '42' \
    --offset '48' \
    --productId 'J3toPmKU' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserThirdPartySubscription' test.out

#- 447 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'QHpfMd3N' \
    --body '{"gameId": "BPBJK3DO", "language": "SWyk", "region": "2ViBlcXN"}' \
    > test.out 2>&1
eval_tap $? 447 'SyncTwitchDropsEntitlement1' test.out

#- 448 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'YwQKX7r3' \
    --body '{"currencyCode": "QQEgAEPe", "price": 0.9039670781905502, "productId": "syGdnyas", "xstsToken": "CFB4rIRj"}' \
    > test.out 2>&1
eval_tap $? 448 'SyncXboxInventory' test.out

#- 449 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Zu9zHaBs' \
    --discounted 'true' \
    --itemId 'IkKdGOHZ' \
    --limit '60' \
    --offset '75' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserOrders' test.out

#- 450 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'yPV395Sh' \
    --body '{"currencyCode": "rwTJmvUq", "discountCodes": ["OhYWQ1Yk", "DGuTGxvK", "vGt6oXVS"], "discountedPrice": 12, "ext": {"jKH3kLpG": {}, "NpPrZ7yS": {}, "Ko85zeoW": {}}, "itemId": "uQvNbUyN", "language": "ATbJ-jeOC", "price": 71, "quantity": 28, "region": "xeBumuTF", "returnUrl": "QANEsmAO", "sectionId": "BB7klok4"}' \
    > test.out 2>&1
eval_tap $? 450 'PublicCreateUserOrder' test.out

#- 451 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'VmVSFvJ9' \
    --body '{"currencyCode": "Vo17UEqb", "discountCodes": ["Nd1bKhAj", "vbijQDaM", "r9KyKP36"], "discountedPrice": 97, "itemId": "nq6kiXjb", "price": 59, "quantity": 80}' \
    > test.out 2>&1
eval_tap $? 451 'PublicPreviewOrderPrice' test.out

#- 452 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'DQDKu0Vb' \
    --userId '2cpGIZza' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserOrder' test.out

#- 453 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'j4iENQSf' \
    --userId 'popE5Xm1' \
    > test.out 2>&1
eval_tap $? 453 'PublicCancelUserOrder' test.out

#- 454 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'XBtPsVvu' \
    --userId 'OUB20taT' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserOrderHistories' test.out

#- 455 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ek0x3Tv1' \
    --userId 'urCr1xC7' \
    > test.out 2>&1
eval_tap $? 455 'PublicDownloadUserOrderReceipt' test.out

#- 456 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'UhxSqBMy' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetPaymentAccounts' test.out

#- 457 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'VvDSBrLK' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '9pY064mm' \
    > test.out 2>&1
eval_tap $? 457 'PublicDeletePaymentAccount' test.out

#- 458 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'qP0t3eDu' \
    --autoCalcEstimatedPrice 'true' \
    --language 'ak97oZuj' \
    --region '5gBV5Yr2' \
    --storeId 'HkZ3CwUJ' \
    --viewId 'sxQGXyT2' \
    > test.out 2>&1
eval_tap $? 458 'PublicListActiveSections' test.out

#- 459 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Kn7gn3fL' \
    --chargeStatus 'SETUP' \
    --itemId 'k54FEyBb' \
    --limit '67' \
    --offset '62' \
    --sku 'WbHGZPjD' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 459 'PublicQueryUserSubscriptions' test.out

#- 460 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'aoi0mxds' \
    --body '{"currencyCode": "7hTElsPq", "itemId": "rx0GuF88", "language": "Cd", "region": "XAVwQwLS", "returnUrl": "SPGo8NYk", "source": "OBkAaXNk"}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSubscribeSubscription' test.out

#- 461 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '8IP7w1Y5' \
    --itemId 'qABYFCfy' \
    > test.out 2>&1
eval_tap $? 461 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 462 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6X7zHCRf' \
    --userId 'knvJYPce' \
    > test.out 2>&1
eval_tap $? 462 'PublicGetUserSubscription' test.out

#- 463 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'edUyd1kx' \
    --userId 'LZpQjWat' \
    > test.out 2>&1
eval_tap $? 463 'PublicChangeSubscriptionBillingAccount' test.out

#- 464 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yxvLCbR7' \
    --userId 'JWw3ovqE' \
    --body '{"immediate": true, "reason": "5AdWoaY9"}' \
    > test.out 2>&1
eval_tap $? 464 'PublicCancelSubscription' test.out

#- 465 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'aGwCO8FP' \
    --userId 'm47py0VQ' \
    --excludeFree 'false' \
    --limit '50' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscriptionBillingHistories' test.out

#- 466 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'F5TXCurD' \
    --language '9zjgEmzp' \
    --storeId 'AN1g6wrG' \
    > test.out 2>&1
eval_tap $? 466 'PublicListViews' test.out

#- 467 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'M6k3CF4k' \
    --namespace $AB_NAMESPACE \
    --userId '7teDRdmG' \
    > test.out 2>&1
eval_tap $? 467 'PublicGetWallet' test.out

#- 468 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ObyWzhNP' \
    --namespace $AB_NAMESPACE \
    --userId 'fB2Afq6y' \
    --limit '19' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 468 'PublicListUserWalletTransactions' test.out

#- 469 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 469 'PublicGetMyDLCContent' test.out

#- 470 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'rV7nquTZ' \
    --limit '11' \
    --offset '66' \
    --startTime 'e5dcwg65' \
    --state 'FULFILLED' \
    --transactionId 'Qej8APZS' \
    --userId 'hra6v03b' \
    > test.out 2>&1
eval_tap $? 470 'QueryFulfillments' test.out

#- 471 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'KQsJ7Rzi' \
    --baseAppId '68DaWZlr' \
    --categoryPath 'Fyt2DCq3' \
    --features '7JuzoQCa' \
    --includeSubCategoryItem 'false' \
    --itemName 'Sp9Uu8xT' \
    --itemStatus 'INACTIVE' \
    --itemType '["BUNDLE", "OPTIONBOX", "APP"]' \
    --limit '67' \
    --offset '98' \
    --region 'qflsdJyy' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt", "name", "name:asc"]' \
    --storeId 'V3jMEDJ6' \
    --tags 'YIUokqU3' \
    --targetNamespace 'AVdL78nH' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 471 'QueryItemsV2' test.out

#- 472 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'FMKWdDxr' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 472 'ImportStore1' test.out

#- 473 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'nOceaE8m' \
    --body '{"itemIds": ["uZzEVlqY", "t6bOvdXf", "L3n1fg48"]}' \
    > test.out 2>&1
eval_tap $? 473 'ExportStore1' test.out

#- 474 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ecwi1N0C' \
    --body '{"entitlementCollectionId": "Fg97FrNr", "entitlementOrigin": "Steam", "metadata": {"81mfJiiK": {}, "pu6RtaXC": {}, "3ncqhGTY": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "j34Lm70w", "namespace": "M1t5YcDX"}, "item": {"itemId": "7qRD0YDV", "itemName": "q1LmS6e6", "itemSku": "Xv4pBDbo", "itemType": "cGaVoCB6"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "BAfG7AxR", "namespace": "SNZkxOhr"}, "item": {"itemId": "ge8Y1JAq", "itemName": "KzjuTe83", "itemSku": "WwReyEUs", "itemType": "29GsDgwI"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "hYbuYscm", "namespace": "FpmXAAD9"}, "item": {"itemId": "v2qAUkDV", "itemName": "mNMlywtL", "itemSku": "IYFzcttJ", "itemType": "VwpQgyCk"}, "quantity": 95, "type": "ITEM"}], "source": "DLC", "transactionId": "Zb1QZbUi"}' \
    > test.out 2>&1
eval_tap $? 474 'FulfillRewardsV2' test.out

#- 475 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'R6HeU1f2' \
    --userId '58qhqRXl' \
    --body '{"items": [{"duration": 37, "endDate": "1988-07-29T00:00:00Z", "entitlementCollectionId": "vc6iSleu", "entitlementOrigin": "GooglePlay", "itemId": "2IKwRSQr", "itemSku": "QSJbXetG", "language": "h3L4Py92", "metadata": {"OnFYGYta": {}, "GZU4L07s": {}, "KQJHUGSX": {}}, "orderNo": "kd92Li40", "origin": "Playstation", "quantity": 12, "region": "x179Wypv", "source": "GIFT", "startDate": "1995-09-11T00:00:00Z", "storeId": "CAAz0yti"}, {"duration": 83, "endDate": "1992-06-26T00:00:00Z", "entitlementCollectionId": "hoUSI9Ft", "entitlementOrigin": "Twitch", "itemId": "PXOXMIal", "itemSku": "cbO38nRg", "language": "1nIXEieR", "metadata": {"EKUB9OQ3": {}, "H4K2ZoM8": {}, "PGMKGgLr": {}}, "orderNo": "eyyWndqw", "origin": "Oculus", "quantity": 40, "region": "pRgQ9Drk", "source": "OTHER", "startDate": "1994-03-16T00:00:00Z", "storeId": "r7Cd0ePg"}, {"duration": 13, "endDate": "1989-09-21T00:00:00Z", "entitlementCollectionId": "dpwMstaF", "entitlementOrigin": "Other", "itemId": "C41vQeJN", "itemSku": "WRaFankb", "language": "OV5lF9qE", "metadata": {"u0V1IeON": {}, "zzFeDAEd": {}, "dptNMPdq": {}}, "orderNo": "mvUKesEw", "origin": "System", "quantity": 29, "region": "bQrZCYGx", "source": "SELL_BACK", "startDate": "1979-07-15T00:00:00Z", "storeId": "lLz0M5A2"}]}' \
    > test.out 2>&1
eval_tap $? 475 'FulfillItems' test.out

#- 476 RetryFulfillItems
samples/cli/sample-apps Platform retryFulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'f9I4C7ns' \
    --userId 'IbXrBRXd' \
    > test.out 2>&1
eval_tap $? 476 'RetryFulfillItems' test.out

#- 477 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'XtWivIZg' \
    --userId 'EaDnzTCl' \
    > test.out 2>&1
eval_tap $? 477 'RevokeItems' test.out

#- 478 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'DLjlvAOO' \
    --body '{"transactionId": "NLaP3Tsy"}' \
    > test.out 2>&1
eval_tap $? 478 'V2PublicFulfillAppleIAPItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE