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
echo "1..486"

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
    --id 'FaYT6rUz' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'Zwmkjuje' \
    --body '{"grantDays": "bVu20hBj"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '2GYdKLQM' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'VnJTBMVX' \
    --body '{"grantDays": "QCyzJXeL"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "qFIrEfdI", "dryRun": true, "fulfillmentUrl": "ezfBoVBi", "itemType": "CODE", "purchaseConditionUrl": "ZvHPb1Xz"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'STWGRApf' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'wb6B8XjJ' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '8Z1clLt0' \
    --body '{"clazz": "IJ3LtYxu", "dryRun": false, "fulfillmentUrl": "7GSxFUpr", "purchaseConditionUrl": "FKnHkzJE"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'QYlRkBc0' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name 'lWp1AaZH' \
    --offset '32' \
    --tag 'nputR4Ex' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "npxBipRZ", "discountConfig": {"categories": [{"categoryPath": "MAtX3Rro", "includeSubCategories": true}, {"categoryPath": "kQgJdJMw", "includeSubCategories": false}, {"categoryPath": "ARjSx2TH", "includeSubCategories": true}], "currencyCode": "7q00wo1g", "currencyNamespace": "MOQ5kJ72", "discountAmount": 37, "discountPercentage": 25, "discountType": "PERCENTAGE", "items": [{"itemId": "4rpQE0M8", "itemName": "BgHR8JoK"}, {"itemId": "gWIAp41E", "itemName": "vQnieRoW"}, {"itemId": "wklDGU6y", "itemName": "B3NXxCAH"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 14, "itemId": "bbCucOm5", "itemName": "v6mfkMCc", "quantity": 52}, {"extraSubscriptionDays": 32, "itemId": "b9nzIOUG", "itemName": "3WFlUXuP", "quantity": 16}, {"extraSubscriptionDays": 33, "itemId": "xOHcfLj1", "itemName": "FP8oVral", "quantity": 40}], "maxRedeemCountPerCampaignPerUser": 35, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 88, "maxSaleCount": 68, "name": "mbvW00nW", "redeemEnd": "1983-10-11T00:00:00Z", "redeemStart": "1994-05-22T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["mkHKNfWJ", "GGAIpQzW", "oP6Sx8Qm"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'EPfCfIhU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'giKyh9Iw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SQTnQMV4", "discountConfig": {"categories": [{"categoryPath": "UnX50OpO", "includeSubCategories": false}, {"categoryPath": "tP7bY62Y", "includeSubCategories": false}, {"categoryPath": "CBaujLzi", "includeSubCategories": false}], "currencyCode": "YAuo3Toh", "currencyNamespace": "q6NYYfgj", "discountAmount": 90, "discountPercentage": 98, "discountType": "PERCENTAGE", "items": [{"itemId": "QNfrR9Sp", "itemName": "Nl18UsOy"}, {"itemId": "pcq3asuS", "itemName": "nM6xmT3P"}, {"itemId": "ye0s6QQR", "itemName": "8HVyVwMt"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 100, "itemId": "Sdra7NvB", "itemName": "POCcBOe6", "quantity": 90}, {"extraSubscriptionDays": 58, "itemId": "SP3CsEL8", "itemName": "5cffRf6K", "quantity": 37}, {"extraSubscriptionDays": 90, "itemId": "BfrRKm7C", "itemName": "1BQq35UL", "quantity": 9}], "maxRedeemCountPerCampaignPerUser": 13, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 79, "maxSaleCount": 69, "name": "vNDYTxs4", "redeemEnd": "1976-05-04T00:00:00Z", "redeemStart": "1989-05-30T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["5pVQpdcS", "Sm6bRNiD", "p5F8xusz"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'KBvVdivF' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "107220ZX", "oldName": "XXCoZfcy"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'EJh6WKoA' \
    --namespace $AB_NAMESPACE \
    --batchName 'ppBDlq1Q' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'aY4eKzJd' \
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
    --body '{"appConfig": {"appName": "B6gY69gu"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "oAogJ9MA"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "N2fQow2v"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "n4W6fd2E"}, "extendType": "CUSTOM"}' \
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
    --storeId 'wepj2tA7' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'O3pjsRDr' \
    --body '{"categoryPath": "Hi2MGZPJ", "localizationDisplayNames": {"CXjjXyQr": "WwERpzbo", "5FshJ8CD": "YMBhnl4j", "hryWFNUS": "6L3jNbe6"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'ol7aDTgT' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'aciAW79s' \
    --namespace $AB_NAMESPACE \
    --storeId 'A9MzTofX' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'yx8JUJ1F' \
    --namespace $AB_NAMESPACE \
    --storeId '98HertzE' \
    --body '{"localizationDisplayNames": {"aWgNlmxg": "vMJbTsXe", "27jwOs0l": "QBjHzHek", "Z0or2wiH": "mywiqD7S"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'bzPmKi0R' \
    --namespace $AB_NAMESPACE \
    --storeId 'uTEi7JMg' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '3FySFyks' \
    --namespace $AB_NAMESPACE \
    --storeId 'LUTfASzU' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'SeQXSM01' \
    --namespace $AB_NAMESPACE \
    --storeId 'IfNsp4mW' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'RDzlpYyu' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'RbDB0Uyz' \
    --batchNo '[83, 41, 42]' \
    --code 'Xc9ZoGgM' \
    --limit '10' \
    --offset '66' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'VY4Lxcws' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "mb2la9et", "codeValue": "aI8PBsV8", "quantity": 91}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'P6h7mzDc' \
    --namespace $AB_NAMESPACE \
    --batchName 'nPEf7rNS' \
    --batchNo '[65, 10, 10]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'uGSGMsGM' \
    --namespace $AB_NAMESPACE \
    --batchName 'ePUrkEHp' \
    --batchNo '[58, 34, 33]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'e8fFqH72' \
    --namespace $AB_NAMESPACE \
    --batchName 'kwKiJr1p' \
    --batchNo '[36, 29, 48]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'yjJwVB5g' \
    --namespace $AB_NAMESPACE \
    --code 'xuHI7vvL' \
    --limit '98' \
    --offset '99' \
    --userId 'F6bOZNra' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'SdzWuwDs' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'y0whEUNg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'QN2Cn5AX' \
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
    --body '{"currencyCode": "aN75ZkUb", "currencySymbol": "M3Gfd19Z", "currencyType": "VIRTUAL", "decimals": 72, "localizationDescriptions": {"mA9dPa5S": "YkpsLxDo", "eRMZ0X9w": "7L7xGCnQ", "XYcq0a4k": "BP2NwsYb"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Fwn6jSqx' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"II0Lp2r7": "jV0tElOU", "gaMSYvMf": "2auySI81", "ZRSorKbG": "98Mba4sR"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'C54QIbLM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ynyHgDil' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'uctH6wo3' \
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
    --body '{"data": [{"id": "ovqVv8cj", "rewards": [{"currency": {"currencyCode": "Blup76cV", "namespace": "ce2CVhKW"}, "item": {"itemId": "ThNHfTcP", "itemName": "dQHgXWQC", "itemSku": "QITKTc0Q", "itemType": "RbBJZH1I"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "H0OLPALU", "namespace": "UlrFew7C"}, "item": {"itemId": "chGizBKU", "itemName": "tTxeUcWo", "itemSku": "coz9KMYI", "itemType": "vdmmTPAw"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "exhElGSs", "namespace": "ds3IesPZ"}, "item": {"itemId": "LX28mLxR", "itemName": "p0hVMsUa", "itemSku": "Vu7UiMNv", "itemType": "2M8xbOzn"}, "quantity": 100, "type": "ITEM"}]}, {"id": "BPuvNbEf", "rewards": [{"currency": {"currencyCode": "1T8UYvm4", "namespace": "7SZOJUQx"}, "item": {"itemId": "yIXkW5nf", "itemName": "U7ECkf1V", "itemSku": "JuDoXmrF", "itemType": "b9wv0ChI"}, "quantity": 42, "type": "ITEM"}, {"currency": {"currencyCode": "xHFGmNcE", "namespace": "3NJv3Hir"}, "item": {"itemId": "3gXFhJR1", "itemName": "EpJ8BzYH", "itemSku": "WQBix6Hv", "itemType": "sqaH54BO"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "PVrU0aE5", "namespace": "tPCq1ump"}, "item": {"itemId": "ZLudj7sP", "itemName": "EzGIJu75", "itemSku": "d5I8PedN", "itemType": "4JPkQ4mS"}, "quantity": 76, "type": "ITEM"}]}, {"id": "UyI4NOBz", "rewards": [{"currency": {"currencyCode": "Is2xVuS4", "namespace": "m9gllFyZ"}, "item": {"itemId": "9AWVSAuT", "itemName": "cxiMFv9f", "itemSku": "7a7LYyqQ", "itemType": "u86AphEm"}, "quantity": 9, "type": "ITEM"}, {"currency": {"currencyCode": "qVMhI61G", "namespace": "7bk3hiRs"}, "item": {"itemId": "PZUuGNhk", "itemName": "BlhPiX9C", "itemSku": "rmDL788s", "itemType": "h0vQRwZc"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "QlSdkrlp", "namespace": "892cpTzK"}, "item": {"itemId": "M0TeJFuR", "itemName": "wYZw8kPA", "itemSku": "lIkLt9cy", "itemType": "6PDzQf0L"}, "quantity": 59, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"3oJNjogp": "twddgP7g", "sWBymSAF": "lj7uemDt", "6iw2UXrv": "7JaIH7p4"}}, {"platform": "STEAM", "platformDlcIdMap": {"HUvJ8ON4": "oNNnaeJ8", "eYZQpkks": "QGxVgj1j", "UJ7XIps5": "N5G6z2v6"}}, {"platform": "STEAM", "platformDlcIdMap": {"mHMJ7FHh": "DxsBoXl9", "S7bR8Ddg": "KRtmjb12", "egClFV6l": "8rUp46NM"}}]}' \
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
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '7816OHk3' \
    --itemId '["fOtt0DOV", "A8hFHaeQ", "2COTdFEP"]' \
    --limit '11' \
    --offset '16' \
    --origin 'Playstation' \
    --userId 'uz3xM9h3' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["fiPqmNlS", "w5RvxlGr", "Hvf7CAMm"]' \
    --limit '3' \
    --offset '43' \
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
    --body '{"entitlementGrantList": [{"collectionId": "0cmtTIEP", "endDate": "1998-06-18T00:00:00Z", "grantedCode": "fff2TfoI", "itemId": "lgPSVaBg", "itemNamespace": "xWlYeBla", "language": "Nm-pOJI", "metadata": {"MX00hBqR": {}, "nr9EhDC8": {}, "F7o0YxOl": {}}, "origin": "Playstation", "quantity": 55, "region": "AZkvNkTj", "source": "ACHIEVEMENT", "startDate": "1974-01-27T00:00:00Z", "storeId": "ZJpzg8tJ"}, {"collectionId": "YsDxyCEK", "endDate": "1995-11-23T00:00:00Z", "grantedCode": "xmx8VfIk", "itemId": "mSZtFR2m", "itemNamespace": "n0aGEhCP", "language": "Srf-bDmp", "metadata": {"l2mFmu2v": {}, "VA38mOne": {}, "lP004bgx": {}}, "origin": "Playstation", "quantity": 37, "region": "zqyQu1yL", "source": "PROMOTION", "startDate": "1979-07-19T00:00:00Z", "storeId": "X9o8rPcL"}, {"collectionId": "aKqGzTnv", "endDate": "1983-06-09T00:00:00Z", "grantedCode": "pZZWD7CA", "itemId": "M3A5PEkR", "itemNamespace": "FdGcaOOk", "language": "JQhZ", "metadata": {"mKDf6PRS": {}, "1WYt5vK3": {}, "VrPtE8x8": {}}, "origin": "IOS", "quantity": 54, "region": "3qo4XWBH", "source": "REWARD", "startDate": "1972-06-28T00:00:00Z", "storeId": "PfqluSHQ"}], "userIds": ["Csz8ZrhL", "mdNTvgmr", "d0IhVD7K"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["2Zj8u4iv", "T4CwEaSO", "rPpqFsRK"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'efvTrrUi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '1' \
    --status 'SUCCESS' \
    --userId 'Qg6RDy4x' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'mkpQ1aQj' \
    --eventType 'OTHER' \
    --externalOrderId '7IJimFKO' \
    --limit '56' \
    --offset '14' \
    --startTime '0X8b3sFG' \
    --status 'FAIL' \
    --userId 'EnVLI2dZ' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "jRyLGOi9", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 100, "clientTransactionId": "aHWGDDuU"}, {"amountConsumed": 53, "clientTransactionId": "AbRU4Pin"}, {"amountConsumed": 9, "clientTransactionId": "F66vNTJU"}], "entitlementId": "gX6nvEH9", "usageCount": 43}, {"clientTransaction": [{"amountConsumed": 37, "clientTransactionId": "FoqvPxBU"}, {"amountConsumed": 10, "clientTransactionId": "OofxxoZQ"}, {"amountConsumed": 10, "clientTransactionId": "U3eei38e"}], "entitlementId": "7bLs3oJq", "usageCount": 94}, {"clientTransaction": [{"amountConsumed": 69, "clientTransactionId": "5vO5TWKq"}, {"amountConsumed": 85, "clientTransactionId": "kG6sGUlg"}, {"amountConsumed": 52, "clientTransactionId": "ct8m5xRE"}], "entitlementId": "UVVNk6oe", "usageCount": 63}], "purpose": "PP7YZDJj"}, "originalTitleName": "XN34bJ4f", "paymentProductSKU": "YHHiQhRB", "purchaseDate": "1kGib53a", "sourceOrderItemId": "xZLyh8JV", "titleName": "tFfFEEhK"}, "eventDomain": "73LNwwvP", "eventSource": "D5gMV4N8", "eventType": "xmY1UBlA", "eventVersion": 86, "id": "ngWiH1AT", "timestamp": "YfpzWtUK"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "51x0Bp7A", "eventState": "T9lvxopJ", "lineItemId": "RhBvXSfn", "orderId": "iLZp2TIM", "productId": "5tUSFEna", "productType": "LTr2v8G8", "purchasedDate": "gbZPCIpA", "sandboxId": "mlCg577f", "skuId": "Nj85apA8", "subscriptionData": {"consumedDurationInDays": 72, "dateTime": "5wTQ6tbv", "durationInDays": 63, "recurrenceId": "sCRUNjQZ"}}, "datacontenttype": "tnQ2fZXg", "id": "nlvu5kOt", "source": "VSSCgxFE", "specVersion": "jakYeYCe", "subject": "5zIaTm7h", "time": "NOD3OTNU", "traceparent": "MOS3PGuG", "type": "Tbob7XcW"}' \
    > test.out 2>&1
eval_tap $? 73 'MockXblClawbackEvent' test.out

#- 74 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetAppleIAPConfig' test.out

#- 75 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 33, "bundleId": "LZqbEOm2", "issuerId": "RUlRgokL", "keyId": "GZ3Y9g3P", "password": "P7LkIKyD", "version": "V1"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateAppleIAPConfig' test.out

#- 76 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteAppleIAPConfig' test.out

#- 77 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleP8File' test.out

#- 78 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetEpicGamesIAPConfig' test.out

#- 79 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "9jD5NjCg"}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateEpicGamesIAPConfig' test.out

#- 80 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'DeleteEpicGamesIAPConfig' test.out

#- 81 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetGoogleIAPConfig' test.out

#- 82 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "zELipoHy", "notificationTokenAudience": "6O16Rfgl", "notificationTokenEmail": "2jk7auuR", "packageName": "Nhi0ZcdP", "serviceAccountId": "ydxf2mD9"}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleIAPConfig' test.out

#- 83 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteGoogleIAPConfig' test.out

#- 84 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleP12File' test.out

#- 85 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetIAPItemConfig' test.out

#- 86 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "HqUSX7FO", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"e2EBa8Qo": "aRuUDmG4", "m6Qg4P3S": "3A9EphKx", "N43POala": "4lTrBSgr"}}, {"itemIdentity": "VylPdDM3", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"fADdZg7I": "Xe7MLaHv", "HqhsJ9Go": "XtX1L81X", "U6g0OeSF": "0e6dtHHs"}}, {"itemIdentity": "QM1Lue7g", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"r1yrfe47": "h8XcRFAx", "YoX8jhlV": "andB9xZa", "nRxDcNZe": "14a69H1A"}}]}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateIAPItemConfig' test.out

#- 87 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeleteIAPItemConfig' test.out

#- 88 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetOculusIAPConfig' test.out

#- 89 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "xzYX2zGC", "appSecret": "wvKSnQi9"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateOculusIAPConfig' test.out

#- 90 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteOculusIAPConfig' test.out

#- 91 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetPlayStationIAPConfig' test.out

#- 92 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "FnScUgEj", "backOfficeServerClientSecret": "BDtqq7BE", "enableStreamJob": false, "environment": "95gG32c8", "streamName": "FbTcMu6i", "streamPartnerName": "U6QiBBC4"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdatePlaystationIAPConfig' test.out

#- 93 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeletePlaystationIAPConfig' test.out

#- 94 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'ValidateExistedPlaystationIAPConfig' test.out

#- 95 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "vaSixxsk", "backOfficeServerClientSecret": "DRoKlUZo", "enableStreamJob": true, "environment": "ZKZ5YlZR", "streamName": "MpRUuvYo", "streamPartnerName": "Uy9gpACP"}' \
    > test.out 2>&1
eval_tap $? 95 'ValidatePlaystationIAPConfig' test.out

#- 96 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetSteamIAPConfig' test.out

#- 97 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "kRkhAMzi", "publisherAuthenticationKey": "3UxKi0b7"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateSteamIAPConfig' test.out

#- 98 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteSteamIAPConfig' test.out

#- 99 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'GetTwitchIAPConfig' test.out

#- 100 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "ywu57HlD", "clientSecret": "UKgtJnKF", "organizationId": "D2qVFpxe"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateTwitchIAPConfig' test.out

#- 101 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'DeleteTwitchIAPConfig' test.out

#- 102 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'GetXblIAPConfig' test.out

#- 103 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": false, "entraAppClientId": "6i3Oiqgg", "entraAppClientSecret": "3br0Anh0", "entraTenantId": "eQUaYbKa", "relyingPartyCert": "v1LOwRNn"}' \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblIAPConfig' test.out

#- 104 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'DeleteXblAPConfig' test.out

#- 105 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'qYypHvsP' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'uSnBpt6T' \
    --externalId 'Ij3yHJar' \
    --limit '98' \
    --offset '32' \
    --source 'STEAM' \
    --startDate 'oRxniC8y' \
    --status 'PROCESSED' \
    --type 'KfhIMMQd' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'RoJMAOXU' \
    --limit '12' \
    --offset '43' \
    --platform 'OCULUS' \
    --productId 'YBEuyIXb' \
    --userId 'fhAYeEIU' \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'ggPuuXEW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'pFVcubka' \
    --feature 'rXsEnfB6' \
    --itemId 'N6no5sEv' \
    --itemType 'BUNDLE' \
    --startTime 'tOQf3X1H' \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'mCi8SMFD' \
    --feature 'SdF1TW8o' \
    --itemId '26KVDUxY' \
    --itemType 'MEDIA' \
    --startTime 'Hend0Xyd' \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'TYm6aR4R' \
    --body '{"categoryPath": "lhozs1ao", "targetItemId": "oXURMtP0", "targetNamespace": "6BOVld3k"}' \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'iuwDpCRI' \
    --body '{"appId": "MwGdSpmQ", "appType": "GAME", "baseAppId": "HuDLaBM7", "boothName": "svXVhT88", "categoryPath": "d4u4GmcL", "clazz": "vdNo7QaS", "displayOrder": 43, "entitlementType": "DURABLE", "ext": {"e78C7SGI": {}, "15ueEVrr": {}, "CsJ0CJfR": {}}, "features": ["OuoC0208", "YVZRJrty", "uCl0lMXF"], "flexible": true, "images": [{"as": "4gH09MPA", "caption": "ok0If0ba", "height": 12, "imageUrl": "yuiHhRpW", "smallImageUrl": "ZFbjZamp", "width": 98}, {"as": "QCqjDCGE", "caption": "7A41ZToT", "height": 62, "imageUrl": "7ylCgrZv", "smallImageUrl": "FYXc0Qum", "width": 53}, {"as": "AJaCgk1d", "caption": "UYOXJX7P", "height": 28, "imageUrl": "Q6qNCh8o", "smallImageUrl": "QW4uyd6C", "width": 27}], "inventoryConfig": {"customAttributes": {"OASICwB7": {}, "34VbTiHn": {}, "AeMiVU3z": {}}, "serverCustomAttributes": {"12Lo9pNa": {}, "qF6YO4mH": {}, "dqOyEG6q": {}}, "slotUsed": 67}, "itemIds": ["cdpv8lxG", "B9Ljme6L", "pdn4AUqm"], "itemQty": {"lNgdd9rv": 40, "OmCNkbWc": 63, "kCmpkhqY": 81}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"jipglYvW": {"description": "v5y53QtB", "localExt": {"FSPClEnU": {}, "8FxtfQyj": {}, "a2P1rDWw": {}}, "longDescription": "C9IiBUUP", "title": "M4DzTCot"}, "Pz2mxuDf": {"description": "ZiNyeThq", "localExt": {"ubbRjNLh": {}, "EB0X2IaL": {}, "6nGUa3Qn": {}}, "longDescription": "QDfkW1qB", "title": "AZqDz9f4"}, "tUHmRjYs": {"description": "xJSyPbFb", "localExt": {"4ItVdNs6": {}, "1bWJ0uzu": {}, "utkYfNNQ": {}}, "longDescription": "GB0euMvv", "title": "qhvNBzsL"}}, "lootBoxConfig": {"rewardCount": 69, "rewards": [{"lootBoxItems": [{"count": 51, "duration": 36, "endDate": "1986-04-21T00:00:00Z", "itemId": "XG6ZnfjI", "itemSku": "Ln1KXddy", "itemType": "wpIc1iUw"}, {"count": 2, "duration": 52, "endDate": "1987-01-13T00:00:00Z", "itemId": "StWCX5ZW", "itemSku": "FSwyYsg1", "itemType": "CpE3y4cI"}, {"count": 81, "duration": 81, "endDate": "1976-06-28T00:00:00Z", "itemId": "a6NEOySy", "itemSku": "poI7wEFE", "itemType": "S5oeQBqL"}], "name": "cfi4hdZC", "odds": 0.5936420566268378, "type": "REWARD_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 16, "duration": 85, "endDate": "1985-07-08T00:00:00Z", "itemId": "V1Qr0pGK", "itemSku": "KamdRCSI", "itemType": "WlsPdQjY"}, {"count": 84, "duration": 61, "endDate": "1979-03-06T00:00:00Z", "itemId": "V4666ItV", "itemSku": "zDCRbwLs", "itemType": "PI8AVi8B"}, {"count": 94, "duration": 91, "endDate": "1989-08-01T00:00:00Z", "itemId": "V8WAve82", "itemSku": "IDDZJcvg", "itemType": "Pgek5JKu"}], "name": "udR7FLmE", "odds": 0.6973572730528655, "type": "REWARD", "weight": 13}, {"lootBoxItems": [{"count": 3, "duration": 96, "endDate": "1972-04-25T00:00:00Z", "itemId": "4Ds1N6zi", "itemSku": "5PLfipyv", "itemType": "XUqVXA2n"}, {"count": 80, "duration": 39, "endDate": "1980-11-30T00:00:00Z", "itemId": "Pe8LrN6T", "itemSku": "AqRXqR90", "itemType": "vmsZqTaI"}, {"count": 54, "duration": 3, "endDate": "1994-09-23T00:00:00Z", "itemId": "iDTv1wp0", "itemSku": "oKNmWbpi", "itemType": "bZtfZK9A"}], "name": "R92uPoat", "odds": 0.15869786372040295, "type": "REWARD", "weight": 47}], "rollFunction": "DEFAULT"}, "maxCount": 39, "maxCountPerUser": 8, "name": "zMQ4SAz6", "optionBoxConfig": {"boxItems": [{"count": 1, "duration": 64, "endDate": "1980-04-29T00:00:00Z", "itemId": "KJrRX5Jw", "itemSku": "BM3YEune", "itemType": "46Uy31OF"}, {"count": 55, "duration": 84, "endDate": "1976-08-09T00:00:00Z", "itemId": "hF765DXw", "itemSku": "FprrU7v2", "itemType": "IWyBOyOj"}, {"count": 77, "duration": 30, "endDate": "1984-11-30T00:00:00Z", "itemId": "uPT7MDOX", "itemSku": "Gfo1C7hT", "itemType": "9D65gbFA"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 67, "fixedTrialCycles": 27, "graceDays": 12}, "regionData": {"kbWLwDPu": [{"currencyCode": "GXCMccbc", "currencyNamespace": "3Li6T3fG", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1981-12-08T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1985-07-19T00:00:00Z", "expireAt": "1990-01-12T00:00:00Z", "price": 30, "purchaseAt": "1975-12-25T00:00:00Z", "trialPrice": 65}, {"currencyCode": "DzkKWFg2", "currencyNamespace": "Lq81ZKWJ", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1999-03-17T00:00:00Z", "expireAt": "1979-01-05T00:00:00Z", "price": 38, "purchaseAt": "1973-07-01T00:00:00Z", "trialPrice": 18}, {"currencyCode": "rYdUfqbz", "currencyNamespace": "v0IFhEPm", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1985-11-12T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1993-08-12T00:00:00Z", "expireAt": "1985-05-09T00:00:00Z", "price": 39, "purchaseAt": "1980-10-05T00:00:00Z", "trialPrice": 62}], "gaktANN9": [{"currencyCode": "SjY43PZg", "currencyNamespace": "e7UqejdZ", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1990-03-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1990-03-20T00:00:00Z", "expireAt": "1995-07-15T00:00:00Z", "price": 5, "purchaseAt": "1990-09-12T00:00:00Z", "trialPrice": 28}, {"currencyCode": "YXyNimAz", "currencyNamespace": "Gp9UAOc1", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1997-12-13T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1985-06-05T00:00:00Z", "expireAt": "1993-11-27T00:00:00Z", "price": 70, "purchaseAt": "1998-10-24T00:00:00Z", "trialPrice": 9}, {"currencyCode": "aCndLG5b", "currencyNamespace": "ytD0zKY7", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1991-11-26T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1985-04-22T00:00:00Z", "expireAt": "1985-04-07T00:00:00Z", "price": 78, "purchaseAt": "1974-10-02T00:00:00Z", "trialPrice": 11}], "Jt4IOl7K": [{"currencyCode": "xMKGVY9s", "currencyNamespace": "UqgbUtKV", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1988-11-24T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1999-01-12T00:00:00Z", "expireAt": "1999-08-12T00:00:00Z", "price": 36, "purchaseAt": "1994-09-29T00:00:00Z", "trialPrice": 5}, {"currencyCode": "sPgDIcma", "currencyNamespace": "ARfyu90b", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1992-11-29T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1979-04-04T00:00:00Z", "expireAt": "1972-05-29T00:00:00Z", "price": 36, "purchaseAt": "1971-06-08T00:00:00Z", "trialPrice": 36}, {"currencyCode": "wxPe6ukh", "currencyNamespace": "iJjkOLpx", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1977-04-04T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1997-02-25T00:00:00Z", "expireAt": "1985-12-03T00:00:00Z", "price": 73, "purchaseAt": "1992-06-16T00:00:00Z", "trialPrice": 76}]}, "saleConfig": {"currencyCode": "9m6uytaC", "price": 30}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "RBNL1y85", "stackable": true, "status": "ACTIVE", "tags": ["ecPGqnJn", "Zp0VsdWz", "KYC6DYNB"], "targetCurrencyCode": "5jxIenWE", "targetNamespace": "kR6rkbam", "thumbnailUrl": "OKyPsAAf", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0GNw2f5t' \
    --appId 'pe9Oe752' \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate '8bOA5EmH' \
    --baseAppId 'P2cc1slR' \
    --categoryPath 'rj6AkFec' \
    --features 'R83i1ESw' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --limit '61' \
    --offset '19' \
    --region 'j14h9mvu' \
    --sortBy '["displayOrder", "updatedAt:asc"]' \
    --storeId 'c7PKsGgF' \
    --tags 'NBTbSFLy' \
    --targetNamespace 'vN7ewsut' \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["AlD1pOcm", "z29sqvdZ", "odDsR8iO"]' \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'zXhU2qQw' \
    --itemIds '752vPJgt' \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'TBMkqXqS' \
    --sku 'BFlBgshL' \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'HYHxvdJA' \
    --populateBundle 'false' \
    --region 'eLd2k3el' \
    --storeId 'kbRX48VP' \
    --sku 'pCVLj1io' \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'JYcAjcV9' \
    --region 'LzU3so9g' \
    --storeId 'ICGjZLPq' \
    --itemIds 'EjMWJrIz' \
    --userId 'KGJKxOPF' \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5AouOqfW' \
    --sku 'HXIxfbN8' \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["u6RAg4pt", "7yziyPFd", "9e6XgV8z"]' \
    --storeId '82uHX47o' \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'XnBOcDcC' \
    --region '9oqC2ZE9' \
    --storeId 'WpyZL4V6' \
    --itemIds 'X8X39WG3' \
    > test.out 2>&1
eval_tap $? 122 'BulkGetLocaleItems' test.out

#- 123 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetAvailablePredicateTypes' test.out

#- 124 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'W9xS2ruI' \
    --userId 'gQo4NrUt' \
    --body '{"itemIds": ["r7AFt0jh", "2uGITALR", "YxOYDM9W"]}' \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'mvIpPv2P' \
    --body '{"changes": [{"itemIdentities": ["Oog4UXI3", "QZHFQNdM", "oYK3Mo5X"], "itemIdentityType": "ITEM_ID", "regionData": {"AzVGV1AI": [{"currencyCode": "Ah2ny9qr", "currencyNamespace": "UgC7VmOL", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1973-01-06T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1995-12-08T00:00:00Z", "discountedPrice": 71, "expireAt": "1996-09-23T00:00:00Z", "price": 86, "purchaseAt": "1971-07-11T00:00:00Z", "trialPrice": 42}, {"currencyCode": "gR4jAdiB", "currencyNamespace": "eyQK3rcR", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1987-04-13T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1974-08-15T00:00:00Z", "discountedPrice": 29, "expireAt": "1982-10-24T00:00:00Z", "price": 41, "purchaseAt": "1972-12-14T00:00:00Z", "trialPrice": 84}, {"currencyCode": "IyhovPcA", "currencyNamespace": "oNxegWXm", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1998-04-27T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1994-03-04T00:00:00Z", "discountedPrice": 57, "expireAt": "1977-10-07T00:00:00Z", "price": 99, "purchaseAt": "1989-12-27T00:00:00Z", "trialPrice": 22}], "XSCVixcm": [{"currencyCode": "iSjGJHWP", "currencyNamespace": "skKNeTF5", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1982-03-08T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1990-11-10T00:00:00Z", "discountedPrice": 33, "expireAt": "1975-09-30T00:00:00Z", "price": 61, "purchaseAt": "1980-02-01T00:00:00Z", "trialPrice": 38}, {"currencyCode": "fL9p0Y0I", "currencyNamespace": "0UllrtHQ", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1992-12-03T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1998-12-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1985-03-08T00:00:00Z", "price": 13, "purchaseAt": "1990-04-29T00:00:00Z", "trialPrice": 29}, {"currencyCode": "Ooap03Ny", "currencyNamespace": "Bw5DSCUc", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1992-10-01T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1990-02-18T00:00:00Z", "discountedPrice": 98, "expireAt": "1985-04-15T00:00:00Z", "price": 28, "purchaseAt": "1980-09-08T00:00:00Z", "trialPrice": 20}], "YPjigGBA": [{"currencyCode": "aCPtJTTx", "currencyNamespace": "CFqce0nB", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1977-10-12T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1998-02-11T00:00:00Z", "discountedPrice": 13, "expireAt": "1997-06-27T00:00:00Z", "price": 69, "purchaseAt": "1994-01-22T00:00:00Z", "trialPrice": 8}, {"currencyCode": "BUa0v5mm", "currencyNamespace": "sTul1bWZ", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1992-08-14T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1976-05-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1990-10-02T00:00:00Z", "price": 41, "purchaseAt": "1995-08-05T00:00:00Z", "trialPrice": 35}, {"currencyCode": "6mQFJB5t", "currencyNamespace": "dQkQ0Wy6", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1971-02-14T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1979-06-25T00:00:00Z", "discountedPrice": 17, "expireAt": "1997-07-11T00:00:00Z", "price": 85, "purchaseAt": "1983-07-28T00:00:00Z", "trialPrice": 4}]}}, {"itemIdentities": ["my9wfOyW", "tJznebfc", "WKHtlET0"], "itemIdentityType": "ITEM_ID", "regionData": {"JhusiwQO": [{"currencyCode": "fEXcncTh", "currencyNamespace": "MjOI14dn", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1998-02-20T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1974-04-30T00:00:00Z", "discountedPrice": 14, "expireAt": "1991-09-08T00:00:00Z", "price": 38, "purchaseAt": "1987-06-18T00:00:00Z", "trialPrice": 63}, {"currencyCode": "tjS71ooQ", "currencyNamespace": "qYy2MZui", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1984-08-26T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1987-03-23T00:00:00Z", "discountedPrice": 22, "expireAt": "1985-03-22T00:00:00Z", "price": 60, "purchaseAt": "1986-07-06T00:00:00Z", "trialPrice": 48}, {"currencyCode": "MDrke4sc", "currencyNamespace": "LR1pt6KM", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1987-03-01T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1978-03-01T00:00:00Z", "discountedPrice": 38, "expireAt": "1984-08-09T00:00:00Z", "price": 40, "purchaseAt": "1972-06-12T00:00:00Z", "trialPrice": 58}], "sKmWpJOk": [{"currencyCode": "ETjRJdh5", "currencyNamespace": "zqoXboJb", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1972-03-11T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1992-06-17T00:00:00Z", "discountedPrice": 8, "expireAt": "1981-08-23T00:00:00Z", "price": 93, "purchaseAt": "1972-03-07T00:00:00Z", "trialPrice": 47}, {"currencyCode": "E9jSGyjT", "currencyNamespace": "r2cDMJ8M", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1998-03-24T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1980-09-12T00:00:00Z", "discountedPrice": 13, "expireAt": "1994-07-20T00:00:00Z", "price": 29, "purchaseAt": "1996-08-18T00:00:00Z", "trialPrice": 59}, {"currencyCode": "lbOVqpvD", "currencyNamespace": "csbg2vBC", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1981-01-18T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1994-04-25T00:00:00Z", "discountedPrice": 82, "expireAt": "1971-08-26T00:00:00Z", "price": 59, "purchaseAt": "1984-10-07T00:00:00Z", "trialPrice": 38}], "DLnDQkaM": [{"currencyCode": "xICHVyeH", "currencyNamespace": "RGlmQGvC", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1997-09-16T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-01-17T00:00:00Z", "discountedPrice": 41, "expireAt": "1995-01-30T00:00:00Z", "price": 22, "purchaseAt": "1997-07-21T00:00:00Z", "trialPrice": 44}, {"currencyCode": "3Ox0jF5s", "currencyNamespace": "WfwVQxYM", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1987-04-18T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1996-05-04T00:00:00Z", "discountedPrice": 8, "expireAt": "1986-05-31T00:00:00Z", "price": 48, "purchaseAt": "1979-07-15T00:00:00Z", "trialPrice": 75}, {"currencyCode": "qJZCwjIp", "currencyNamespace": "b0GXTvg8", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1985-03-24T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1983-04-20T00:00:00Z", "discountedPrice": 16, "expireAt": "1986-04-02T00:00:00Z", "price": 75, "purchaseAt": "1981-02-08T00:00:00Z", "trialPrice": 64}]}}, {"itemIdentities": ["gdti3VuU", "7T5Jgt1e", "Ig02QJAz"], "itemIdentityType": "ITEM_SKU", "regionData": {"UsLzD6ro": [{"currencyCode": "DkEeQz1F", "currencyNamespace": "t801RSEX", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1987-03-27T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1987-12-07T00:00:00Z", "discountedPrice": 33, "expireAt": "1974-01-24T00:00:00Z", "price": 69, "purchaseAt": "1986-06-15T00:00:00Z", "trialPrice": 76}, {"currencyCode": "yYekD1ae", "currencyNamespace": "2kUsG4N0", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1980-07-18T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1976-02-13T00:00:00Z", "discountedPrice": 67, "expireAt": "1996-05-04T00:00:00Z", "price": 90, "purchaseAt": "1973-03-14T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ovLGBSWp", "currencyNamespace": "uLm9hlbZ", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1984-05-25T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1976-10-15T00:00:00Z", "discountedPrice": 77, "expireAt": "1988-10-17T00:00:00Z", "price": 77, "purchaseAt": "1971-09-23T00:00:00Z", "trialPrice": 86}], "M9SQeEej": [{"currencyCode": "2JJ2M9lC", "currencyNamespace": "YwX4vpSv", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1973-04-16T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1985-07-03T00:00:00Z", "discountedPrice": 60, "expireAt": "1997-04-09T00:00:00Z", "price": 96, "purchaseAt": "1983-10-15T00:00:00Z", "trialPrice": 36}, {"currencyCode": "CS0nYA6F", "currencyNamespace": "0ug05C4k", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1998-06-19T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1993-02-09T00:00:00Z", "discountedPrice": 94, "expireAt": "1993-04-05T00:00:00Z", "price": 19, "purchaseAt": "1984-01-17T00:00:00Z", "trialPrice": 98}, {"currencyCode": "d7BjN8VO", "currencyNamespace": "1ohvahBj", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1977-01-08T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1981-08-24T00:00:00Z", "discountedPrice": 61, "expireAt": "1999-08-11T00:00:00Z", "price": 90, "purchaseAt": "1981-02-18T00:00:00Z", "trialPrice": 31}], "aRRVqYkh": [{"currencyCode": "HQUCgxjc", "currencyNamespace": "4xvqwYaQ", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1983-04-30T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1974-02-07T00:00:00Z", "discountedPrice": 44, "expireAt": "1994-11-09T00:00:00Z", "price": 73, "purchaseAt": "1991-05-01T00:00:00Z", "trialPrice": 72}, {"currencyCode": "EhDgD1Es", "currencyNamespace": "rDlH2N1L", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1977-07-05T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1996-01-06T00:00:00Z", "discountedPrice": 58, "expireAt": "1995-07-15T00:00:00Z", "price": 36, "purchaseAt": "1995-08-25T00:00:00Z", "trialPrice": 24}, {"currencyCode": "7UYXBtCb", "currencyNamespace": "ytVXU8TB", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1972-04-23T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1998-06-04T00:00:00Z", "discountedPrice": 32, "expireAt": "1996-03-08T00:00:00Z", "price": 91, "purchaseAt": "1989-07-30T00:00:00Z", "trialPrice": 57}]}}]}' \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'CODE' \
    --limit '77' \
    --offset '52' \
    --sortBy 'Yfh1YAIM' \
    --storeId 'uK5P8ghM' \
    --keyword 'uI2eBxKb' \
    --language '0V4Re8Rf' \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '68' \
    --offset '69' \
    --sortBy '["createdAt:asc", "displayOrder:desc"]' \
    --storeId 'd0PCCs1b' \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'ReUxbN09' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'KNRqAGMp' \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'mgygcDq0' \
    --namespace $AB_NAMESPACE \
    --storeId 'nfqlltDO' \
    --body '{"appId": "LADFeHsM", "appType": "GAME", "baseAppId": "0s5upOOS", "boothName": "KaNkxlFb", "categoryPath": "HIJZCaG0", "clazz": "To61Tjd6", "displayOrder": 66, "entitlementType": "DURABLE", "ext": {"NF4Ztbq5": {}, "JRpRVTDn": {}, "MuHdizE9": {}}, "features": ["xdfZ7I2s", "263XzLL8", "eF1fjb8Y"], "flexible": true, "images": [{"as": "CowQyqGU", "caption": "WunDzrz7", "height": 27, "imageUrl": "ALQElcQ5", "smallImageUrl": "9rxuTVK7", "width": 39}, {"as": "Q1NGq2uQ", "caption": "4bOeiB45", "height": 71, "imageUrl": "HuYSZfRS", "smallImageUrl": "NhMqApi2", "width": 65}, {"as": "rZZeXkwG", "caption": "SUZ2YqAp", "height": 90, "imageUrl": "kGFmXG5i", "smallImageUrl": "oViCWMrX", "width": 40}], "inventoryConfig": {"customAttributes": {"l9Q5TIf1": {}, "qrNlJnHx": {}, "jX7idm4o": {}}, "serverCustomAttributes": {"B2PvFnZA": {}, "MIqBo5jg": {}, "hFylzNv2": {}}, "slotUsed": 76}, "itemIds": ["E3vg6y5Y", "Z6vnAgyg", "MSHt88s4"], "itemQty": {"usxvaln2": 32, "camQXrtb": 40, "zENmRfqF": 95}, "itemType": "APP", "listable": true, "localizations": {"FtVfGyme": {"description": "jYYXIBmZ", "localExt": {"OWc5IFda": {}, "1eC6Al0I": {}, "ZLEzZOqQ": {}}, "longDescription": "WDkKPFaM", "title": "ifZVd2qx"}, "zKyEAyoM": {"description": "3Kp5sZ3C", "localExt": {"Jsb1vQoV": {}, "OCzmm1DV": {}, "k3ITsAqS": {}}, "longDescription": "KICY0gME", "title": "RyvoLa56"}, "aF8qurCT": {"description": "Unl8h4Ly", "localExt": {"ZvzN4Ix3": {}, "DTxorPW5": {}, "ARMgxPUN": {}}, "longDescription": "YvLyUF2a", "title": "MCwWDSk2"}}, "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 6, "duration": 35, "endDate": "1978-11-20T00:00:00Z", "itemId": "a1REtQ70", "itemSku": "kKoEH5kH", "itemType": "4nj37v1d"}, {"count": 20, "duration": 43, "endDate": "1975-04-14T00:00:00Z", "itemId": "GOyGvJJX", "itemSku": "SbZkCRYZ", "itemType": "T4pVoA12"}, {"count": 20, "duration": 81, "endDate": "1977-12-27T00:00:00Z", "itemId": "6bus8g2R", "itemSku": "8tFFXGNO", "itemType": "u3zAiSJG"}], "name": "u4R08gX4", "odds": 0.14698796992041918, "type": "REWARD", "weight": 79}, {"lootBoxItems": [{"count": 88, "duration": 89, "endDate": "1999-10-25T00:00:00Z", "itemId": "DmF7P5Hg", "itemSku": "B0bwmr8M", "itemType": "BdFHGsyv"}, {"count": 67, "duration": 22, "endDate": "1976-01-11T00:00:00Z", "itemId": "V1BxMiCZ", "itemSku": "j2yzI2bh", "itemType": "qDobPBGH"}, {"count": 93, "duration": 25, "endDate": "1972-02-14T00:00:00Z", "itemId": "BHr8bIsj", "itemSku": "cTi5y8rN", "itemType": "mYlQR3bR"}], "name": "eE6GSU00", "odds": 0.7175265847922527, "type": "REWARD_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 48, "duration": 4, "endDate": "1979-06-11T00:00:00Z", "itemId": "Ln2PVI3r", "itemSku": "hzJvLT5G", "itemType": "oXjrUsBq"}, {"count": 100, "duration": 59, "endDate": "1974-01-14T00:00:00Z", "itemId": "TRByKLeQ", "itemSku": "hSRPQNQc", "itemType": "X6ckdmz7"}, {"count": 1, "duration": 48, "endDate": "1971-08-14T00:00:00Z", "itemId": "UGub7OtM", "itemSku": "mEIXH0jG", "itemType": "grzHZoiM"}], "name": "KtC9Xkpm", "odds": 0.290116398757143, "type": "PROBABILITY_GROUP", "weight": 19}], "rollFunction": "DEFAULT"}, "maxCount": 66, "maxCountPerUser": 36, "name": "LWZLkuWO", "optionBoxConfig": {"boxItems": [{"count": 49, "duration": 2, "endDate": "1992-02-25T00:00:00Z", "itemId": "cr3md8rE", "itemSku": "WgvkivtY", "itemType": "IxmVy8NJ"}, {"count": 52, "duration": 47, "endDate": "1994-12-07T00:00:00Z", "itemId": "J9KveO7Y", "itemSku": "kTHpsZ58", "itemType": "ry7wAICF"}, {"count": 39, "duration": 56, "endDate": "1978-07-08T00:00:00Z", "itemId": "o5yyRe6z", "itemSku": "UpMMKY3x", "itemType": "8kyfy6JF"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 69, "fixedTrialCycles": 44, "graceDays": 72}, "regionData": {"YazQhQvr": [{"currencyCode": "51QXUZP7", "currencyNamespace": "yumIm4bq", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1991-12-25T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1978-12-04T00:00:00Z", "expireAt": "1985-12-07T00:00:00Z", "price": 53, "purchaseAt": "1995-12-08T00:00:00Z", "trialPrice": 76}, {"currencyCode": "VeMeWpcE", "currencyNamespace": "3H3Vee6n", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1991-05-31T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1999-04-14T00:00:00Z", "expireAt": "1999-03-30T00:00:00Z", "price": 60, "purchaseAt": "1988-03-12T00:00:00Z", "trialPrice": 100}, {"currencyCode": "B0573rHh", "currencyNamespace": "9YPDwXyg", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1986-02-09T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1982-02-08T00:00:00Z", "expireAt": "1974-10-28T00:00:00Z", "price": 31, "purchaseAt": "1985-09-11T00:00:00Z", "trialPrice": 80}], "J2cHJeGY": [{"currencyCode": "jty34WLW", "currencyNamespace": "8SocoWD8", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1979-03-29T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1977-06-30T00:00:00Z", "expireAt": "1983-12-21T00:00:00Z", "price": 87, "purchaseAt": "1995-01-20T00:00:00Z", "trialPrice": 18}, {"currencyCode": "C09U9Uim", "currencyNamespace": "KnMKtuEa", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1999-06-04T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1998-01-05T00:00:00Z", "expireAt": "1995-10-15T00:00:00Z", "price": 84, "purchaseAt": "1976-08-15T00:00:00Z", "trialPrice": 81}, {"currencyCode": "ainTnlDC", "currencyNamespace": "SC8ME11R", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1978-07-05T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1987-08-23T00:00:00Z", "expireAt": "1990-04-18T00:00:00Z", "price": 51, "purchaseAt": "1979-03-22T00:00:00Z", "trialPrice": 27}], "UXwEopNj": [{"currencyCode": "z6vXtMjr", "currencyNamespace": "kOHpsY3o", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1980-12-02T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1980-10-16T00:00:00Z", "expireAt": "1994-09-08T00:00:00Z", "price": 64, "purchaseAt": "1986-06-15T00:00:00Z", "trialPrice": 64}, {"currencyCode": "HN6qzU58", "currencyNamespace": "mgvzx7UE", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1980-09-15T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1997-09-21T00:00:00Z", "expireAt": "1971-08-26T00:00:00Z", "price": 62, "purchaseAt": "1974-04-09T00:00:00Z", "trialPrice": 70}, {"currencyCode": "GG1gmJOQ", "currencyNamespace": "8fCGeUg5", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1976-04-01T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1994-03-17T00:00:00Z", "expireAt": "1984-07-24T00:00:00Z", "price": 43, "purchaseAt": "1972-09-11T00:00:00Z", "trialPrice": 94}]}, "saleConfig": {"currencyCode": "Ni20KHcg", "price": 19}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "Ren2BAB6", "stackable": true, "status": "INACTIVE", "tags": ["CPcMLiWH", "BfAAu0v8", "rwnu7FcO"], "targetCurrencyCode": "gaJTg6ch", "targetNamespace": "NctUDhMk", "thumbnailUrl": "cOcaYbiY", "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'pcepbaXc' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'ysqKL3bc' \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'smXE5VCh' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17, "orderNo": "0vt7CEdc"}' \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'DZfxLQ7p' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'PGQvalJA' \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'NKWuOdcu' \
    --namespace $AB_NAMESPACE \
    --storeId '2rF3fDMd' \
    --body '{"carousel": [{"alt": "T1jyWEdH", "previewUrl": "aAGxI62v", "thumbnailUrl": "kkUR0BGY", "type": "video", "url": "JX540HOK", "videoSource": "youtube"}, {"alt": "iIUJMsk0", "previewUrl": "iB49RyKL", "thumbnailUrl": "hJUQEux0", "type": "image", "url": "PUSu73cX", "videoSource": "vimeo"}, {"alt": "A3jproWU", "previewUrl": "k35aHyYf", "thumbnailUrl": "qUmLEZf0", "type": "video", "url": "jRza32J3", "videoSource": "generic"}], "developer": "xdlDaVqd", "forumUrl": "PIhqEDTZ", "genres": ["Adventure", "RPG", "RPG"], "localizations": {"zkixrarA": {"announcement": "S9sLiaRf", "slogan": "goOd8pln"}, "AKRaVVNH": {"announcement": "mDfH4NDq", "slogan": "WoT6WZZd"}, "XpcbVnFk": {"announcement": "mg7odtcf", "slogan": "cWwQssIy"}}, "platformRequirements": {"P0OO7K2u": [{"additionals": "sUYeVNCH", "directXVersion": "df0Q3bXb", "diskSpace": "FvLY8554", "graphics": "emT5YOno", "label": "piHcBBK4", "osVersion": "j0xNGNmf", "processor": "Pl58Uy0Q", "ram": "Tn9Vhec2", "soundCard": "gfeUoYti"}, {"additionals": "F2tjHeAB", "directXVersion": "pV68NyMP", "diskSpace": "id1D0XkW", "graphics": "xnGleDjJ", "label": "XS8Y5xnf", "osVersion": "hVQYc2wN", "processor": "L00HdM8g", "ram": "wWXIGSDx", "soundCard": "O9URuM9E"}, {"additionals": "SER8zAEO", "directXVersion": "oUuDtflJ", "diskSpace": "XER0QWQy", "graphics": "V8iD4mC5", "label": "A2CZ4QJA", "osVersion": "o9Ekfal9", "processor": "0IJqCa0A", "ram": "piY5ZYrI", "soundCard": "MxPwE0Ly"}], "6QyMD3lC": [{"additionals": "tTJlE7Jh", "directXVersion": "et4TKV5k", "diskSpace": "1qD4YMlb", "graphics": "a3zchgcz", "label": "hEMcymj1", "osVersion": "jZjv130i", "processor": "HrqbLZdx", "ram": "y0uvNEJq", "soundCard": "1BrlIDb1"}, {"additionals": "NSltVnde", "directXVersion": "OzXMhugh", "diskSpace": "oWwGAqGA", "graphics": "Z7DiDy19", "label": "qiBne3kT", "osVersion": "IHvN3Q6H", "processor": "bkSAOC7q", "ram": "lCF6hWwp", "soundCard": "Rnu5I8cN"}, {"additionals": "O7agL772", "directXVersion": "g4bCeizE", "diskSpace": "ScZWNUq9", "graphics": "QsHw29Ba", "label": "dUcIfnPB", "osVersion": "gXwu7iQt", "processor": "ohAQR47e", "ram": "qkClHUmm", "soundCard": "etjbXmF5"}], "Fo5YhurK": [{"additionals": "fGSya5wa", "directXVersion": "LyKdwMIy", "diskSpace": "bvTGBpOQ", "graphics": "s69NV1eh", "label": "oWqu3vXP", "osVersion": "K6QEnRYA", "processor": "Z1IcF1zs", "ram": "0U11CqBk", "soundCard": "WyCGtYup"}, {"additionals": "0qvZzUkj", "directXVersion": "1RwksRae", "diskSpace": "ju4HaoVs", "graphics": "R03Hml7D", "label": "ih0i0yOJ", "osVersion": "zFy4deKU", "processor": "XOiNNZ2a", "ram": "tIBUF9Nv", "soundCard": "lCXOWsh8"}, {"additionals": "BM3tjw2e", "directXVersion": "IGtNuMmf", "diskSpace": "4th8hrXB", "graphics": "BSXOx6F4", "label": "HtBiU04i", "osVersion": "tcK1aRBR", "processor": "l5jexok3", "ram": "ewWNfPuE", "soundCard": "KvrWH250"}]}, "platforms": ["IOS", "Windows", "IOS"], "players": ["Single", "Single", "CrossPlatformMulti"], "primaryGenre": "Adventure", "publisher": "YpqwbEbM", "releaseDate": "1988-06-05T00:00:00Z", "websiteUrl": "AOIJSXEh"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '9mR4GdT3' \
    --namespace $AB_NAMESPACE \
    --storeId 'uMYoNN3k' \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'QOaTT3bm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'vr0Ah5Ge' \
    --namespace $AB_NAMESPACE \
    --storeId 'gtHkCaGT' \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'NrCPMhPu' \
    --itemId 'IjhA0yRL' \
    --namespace $AB_NAMESPACE \
    --storeId 'pXlDOU99' \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'keZqbYhv' \
    --itemId 'wq7Bui8L' \
    --namespace $AB_NAMESPACE \
    --storeId 'EXuIxz6g' \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'vUnGmols' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Ecg7Acky' \
    --populateBundle 'false' \
    --region '8ikvngfX' \
    --storeId 'MyZiXHCV' \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'WAYyHuYb' \
    --namespace $AB_NAMESPACE \
    --storeId 'RbBE2Igi' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 61, "code": "qB71SVNh", "comparison": "isLessThanOrEqual", "name": "pG5RHz7J", "predicateType": "StatisticCodePredicate", "value": "bGKJdvJB", "values": ["YhQixsKm", "IHphWn0a", "IPjoerUZ"]}, {"anyOf": 97, "code": "YxKEoCg7", "comparison": "isGreaterThanOrEqual", "name": "8ufkc8Jh", "predicateType": "StatisticCodePredicate", "value": "ewAWZZZK", "values": ["KdPTCJJO", "LN4v8yk9", "PVreXVsV"]}, {"anyOf": 36, "code": "4BscOPxh", "comparison": "includes", "name": "1KmZYlSZ", "predicateType": "StatisticCodePredicate", "value": "BTr5VXcB", "values": ["AmFmpPyM", "5WLV1OJk", "6JtXpjMb"]}]}, {"operator": "or", "predicates": [{"anyOf": 98, "code": "t8UgJTbo", "comparison": "isLessThan", "name": "EaYx5wCU", "predicateType": "EntitlementPredicate", "value": "Jw83B80h", "values": ["zUk9l6Qw", "491rEfcE", "vtl3l10s"]}, {"anyOf": 90, "code": "isAbcH2Q", "comparison": "isNot", "name": "9txvAm7J", "predicateType": "SeasonPassPredicate", "value": "WX1Aalqo", "values": ["QpP5aPGY", "B5f4E93l", "hu2wCNAc"]}, {"anyOf": 25, "code": "vJ9m527A", "comparison": "isLessThan", "name": "0Ixb7quZ", "predicateType": "SeasonPassPredicate", "value": "x4TaosKD", "values": ["NaDEqWEs", "tvF6N2L9", "cXGyuyr1"]}]}, {"operator": "and", "predicates": [{"anyOf": 86, "code": "VX9Tzh8p", "comparison": "includes", "name": "BiPtAw1y", "predicateType": "SeasonTierPredicate", "value": "3tMvPkrX", "values": ["Xcl5c2tI", "zv0jhURk", "MzYag22n"]}, {"anyOf": 89, "code": "DwveZSuU", "comparison": "is", "name": "QnH0CVfA", "predicateType": "StatisticCodePredicate", "value": "h9mgdP57", "values": ["rvLFQQAu", "hc9HJgYR", "oXDMK1h7"]}, {"anyOf": 25, "code": "rDKEEoEU", "comparison": "isGreaterThanOrEqual", "name": "06GRC5RR", "predicateType": "SeasonPassPredicate", "value": "D4NkqPJ6", "values": ["cqhBv5w5", "L4IIimjh", "iGfJePAE"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'F1ssgScm' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "i2YM3359"}' \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --name 'EArG5AKv' \
    --offset '12' \
    --tag 'MRXcSJSU' \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Id4fZFWM", "name": "jAOwGbTz", "status": "INACTIVE", "tags": ["Mlbkfdtk", "LX79Ldzh", "92WGVO2H"]}' \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'G5Y3kjP2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'tXL52w3s' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "aux7K7Xk", "name": "QRd3jm8o", "status": "INACTIVE", "tags": ["VnrYcJM1", "SHVrXK8o", "84hMYkOt"]}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '5I55ystP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZdxztEkY' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '53' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'XUw6yGJM' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'zuF3mbAk' \
    --limit '51' \
    --offset '81' \
    --orderNos '["VNr8Z1ro", "eTsLpLaL", "KUEUqMwC"]' \
    --sortBy 'n9AK2Lob' \
    --startTime 'WVk4NUjg' \
    --status 'CLOSED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 150 'QueryOrders' test.out

#- 151 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetOrderStatistics' test.out

#- 152 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0JLGCNae' \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'nCll0J7s' \
    --body '{"description": "TEXwoXD7"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
eval_tap 0 154 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 155 UpdatePaymentCallbackConfig
eval_tap 0 155 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 156 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["KvOe8LaG", "qB6PAerO", "p2wgtf7p"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'S2tS6iv2' \
    --externalId 'oAPRvafH' \
    --limit '17' \
    --notificationSource 'NEONPAY' \
    --notificationType 'yEePUpjQ' \
    --offset '94' \
    --paymentOrderNo 'eOKVIv4h' \
    --startDate 'BoUEArJ5' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'DqWxi4x9' \
    --limit '63' \
    --offset '50' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "sPkg26Uf", "currencyNamespace": "gAOmE188", "customParameters": {"wMsHtJdO": {}, "6EwoQnYH": {}, "LKxsE0HD": {}}, "description": "VbEK9xW4", "extOrderNo": "4ma9qimQ", "extUserId": "4jM21WLh", "itemType": "CODE", "language": "JBi_tugK_271", "metadata": {"XWcTFWrf": "cfZnTbkc", "3XT8BHlI": "l1lr3z5g", "ZyjMQfIj": "Ixm4yhea"}, "notifyUrl": "Kd9mHQbJ", "omitNotification": true, "platform": "S5j93CCn", "price": 66, "recurringPaymentOrderNo": "8I6iRoD3", "region": "0W8GV0nW", "returnUrl": "8OEB8vV2", "sandbox": false, "sku": "5C2yd1Dd", "subscriptionId": "KMvcfubu", "targetNamespace": "z4k2GLKk", "targetUserId": "mAfJ6Lyq", "title": "cFdg6JvC"}' \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'UTZfUa1S' \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9x1uYHjH' \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uxGPy0Wy' \
    --body '{"extTxId": "FaBAY8Em", "paymentMethod": "N4LpC3JL", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WwZwxuOg' \
    --body '{"description": "OJdAwPlW"}' \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5Krcq3ce' \
    --body '{"amount": 25, "currencyCode": "UuMtc4uc", "notifyType": "CHARGE", "paymentProvider": "NEONPAY", "salesTax": 39, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kC57kvao' \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'cKM2dnDS' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "X0iUF0yq", "serviceLabel": 90}' \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'L3j87bMt' \
    --body '{"delegationToken": "pQB5f6QX", "sandboxId": "QmfXyOol"}' \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Epic", "Twitch", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "GooglePlay", "Other"]}' \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 173 'ResetPlatformWalletConfig' test.out

#- 174 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 174 'GetRevocationConfig' test.out

#- 175 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 175 'UpdateRevocationConfig' test.out

#- 176 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'DeleteRevocationConfig' test.out

#- 177 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'a73P1AEi' \
    --limit '44' \
    --offset '2' \
    --source 'ORDER' \
    --startTime 'CYbdry38' \
    --status 'SUCCESS' \
    --transactionId 'MFMTrRDl' \
    --userId 'ghkHkmh0' \
    > test.out 2>&1
eval_tap $? 177 'QueryRevocationHistories' test.out

#- 178 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetRevocationPluginConfig' test.out

#- 179 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "sm5mLmxn"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "CEqrxvly"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 179 'UpdateRevocationPluginConfig' test.out

#- 180 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'DeleteRevocationPluginConfig' test.out

#- 181 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 181 'UploadRevocationPluginConfigCert' test.out

#- 182 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wG456H4F", "eventTopic": "RaJufoLI", "maxAwarded": 95, "maxAwardedPerUser": 11, "namespaceExpression": "ehVyUVJU", "rewardCode": "p1s2uhIh", "rewardConditions": [{"condition": "2YcFQ67p", "conditionName": "PzYyiSJR", "eventName": "TBQKLHQM", "rewardItems": [{"duration": 81, "endDate": "1986-08-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sns4rBtn", "quantity": 39, "sku": "izmKDyY4"}, {"duration": 65, "endDate": "1979-12-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CqJWXIY1", "quantity": 82, "sku": "ktCVt80i"}, {"duration": 90, "endDate": "1973-10-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3EMiA7QN", "quantity": 28, "sku": "tiku1U2H"}]}, {"condition": "WluYLxo9", "conditionName": "jA40qxii", "eventName": "X0pr4TcY", "rewardItems": [{"duration": 10, "endDate": "1977-04-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GXI21hdx", "quantity": 72, "sku": "Ln66LaM5"}, {"duration": 24, "endDate": "1999-08-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Gkkhu8oZ", "quantity": 3, "sku": "tKNUtQGi"}, {"duration": 21, "endDate": "1980-12-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AZlaJ5xv", "quantity": 74, "sku": "dJ6EqaFB"}]}, {"condition": "oOMuWKke", "conditionName": "jnFSYuZH", "eventName": "bBqPLBLc", "rewardItems": [{"duration": 28, "endDate": "1983-02-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Dk256hyc", "quantity": 30, "sku": "2dvsPndT"}, {"duration": 30, "endDate": "1986-03-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "26AJQiP0", "quantity": 50, "sku": "vtQv1XYL"}, {"duration": 59, "endDate": "1988-12-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xswAyn7S", "quantity": 86, "sku": "iCMoPnvQ"}]}], "userIdExpression": "TaV0VO8b"}' \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '2wSECqLd' \
    --limit '52' \
    --offset '57' \
    --sortBy '["namespace:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 183 'QueryRewards' test.out

#- 184 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'ExportRewards' test.out

#- 185 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'BBpcHQM9' \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'YhLSsp3g' \
    --body '{"description": "57uC66VA", "eventTopic": "gtx2LMIn", "maxAwarded": 16, "maxAwardedPerUser": 25, "namespaceExpression": "wBRQRZRq", "rewardCode": "gSM1bCIa", "rewardConditions": [{"condition": "VRs8nwrI", "conditionName": "nQSKcXnl", "eventName": "7dh8zPmJ", "rewardItems": [{"duration": 24, "endDate": "1976-12-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "75H5Y2OR", "quantity": 75, "sku": "ZShsJ0Zx"}, {"duration": 34, "endDate": "1984-09-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "P9KbSNDj", "quantity": 54, "sku": "neow0yAC"}, {"duration": 63, "endDate": "1983-10-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0dO51qVF", "quantity": 24, "sku": "J1uYtNnP"}]}, {"condition": "ycpqt0wo", "conditionName": "M7Yo7OWv", "eventName": "zkSJr1l1", "rewardItems": [{"duration": 84, "endDate": "1993-02-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OMHRWc9n", "quantity": 62, "sku": "PLZFfJVZ"}, {"duration": 30, "endDate": "1984-04-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0Zj4yOWy", "quantity": 7, "sku": "kqiclOxc"}, {"duration": 3, "endDate": "1983-10-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3gkSSzGM", "quantity": 23, "sku": "hGwq7l7O"}]}, {"condition": "RcQKjxuc", "conditionName": "r18Utr3g", "eventName": "U8w0YCYc", "rewardItems": [{"duration": 32, "endDate": "1990-06-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2RBauVLP", "quantity": 97, "sku": "fEcUQ9Lh"}, {"duration": 13, "endDate": "1998-10-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Ey8r7rO2", "quantity": 73, "sku": "6bixGOqz"}, {"duration": 78, "endDate": "1985-01-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0io6lpKY", "quantity": 31, "sku": "ZLnwPNCX"}]}], "userIdExpression": "icX8SkvT"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'pv1vHhp8' \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'FGslP4s0' \
    --body '{"payload": {"dhxL4Glj": {}, "5WAHlbVB": {}, "Vj2wwgsw": {}}}' \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'fkhBdVCb' \
    --body '{"conditionName": "VtO67RJK", "userId": "2kvkEqIr"}' \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'y1ULXOiu' \
    --limit '45' \
    --offset '28' \
    --start '8IiAgsFf' \
    --storeId 'VOchoqri' \
    --viewId '3hcw8dFr' \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'EtlSspyo' \
    --body '{"active": true, "displayOrder": 30, "endDate": "1976-05-14T00:00:00Z", "ext": {"YJbhSYTg": {}, "fpdzmnbZ": {}, "0SGD0tMG": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 42, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "aqj9Hs0J", "sku": "ZUgSCOBk"}, {"id": "82f9YUDC", "sku": "tlYedKGF"}, {"id": "gIieJYUq", "sku": "xQXPN9hi"}], "localizations": {"i2XUekCB": {"description": "r8uhclMt", "localExt": {"u3I9BGUo": {}, "C7w6waQd": {}, "i4mmdb4H": {}}, "longDescription": "Ezh2ipPa", "title": "JYyo0qT9"}, "RorIPwup": {"description": "KTvFyZTj", "localExt": {"gpFnfp0j": {}, "PoGVMRr4": {}, "RBAOkll8": {}}, "longDescription": "IY7yoaeC", "title": "TS3IeSH6"}, "OuBwnEa8": {"description": "pI55eipn", "localExt": {"bo6fHrBg": {}, "ICF9Xwm9": {}, "GK4IwLg9": {}}, "longDescription": "idTCTHAF", "title": "Xs6SI79G"}}, "name": "4jx3l3iF", "rotationType": "FIXED_PERIOD", "startDate": "1991-07-23T00:00:00Z", "viewId": "Dh6h0bWz"}' \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'wFwUbOEl' \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'aP3BTuHs' \
    --storeId 'srfdjTk8' \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'DqS3fmEt' \
    --storeId 'xIaToHp7' \
    --body '{"active": false, "displayOrder": 39, "endDate": "1972-03-12T00:00:00Z", "ext": {"EVtQOpZI": {}, "p5PXLpG8": {}, "v4Lhkgr0": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 93, "itemCount": 89, "rule": "SEQUENCE"}, "items": [{"id": "Y20vp3HK", "sku": "Bn0xigPV"}, {"id": "GThkWPtX", "sku": "zZKLSOkg"}, {"id": "DNw3AmsH", "sku": "yXDbxCT6"}], "localizations": {"rHCBNsDq": {"description": "oPvywNw0", "localExt": {"s1wpXZeW": {}, "vHHNSvEl": {}, "NHSWkjAJ": {}}, "longDescription": "J5Dos8Hj", "title": "dbNRwEAz"}, "YjrMS5o5": {"description": "93Nq6owe", "localExt": {"KRuGqN9g": {}, "Wvut95e2": {}, "7lELFN5P": {}}, "longDescription": "JhuNqBPo", "title": "Xb7yToN5"}, "7fIDJCtG": {"description": "Ot62ANgj", "localExt": {"6oEHDIlW": {}, "P03ikn7s": {}, "znkq5imz": {}}, "longDescription": "g1J6ymlg", "title": "0WsynMfC"}}, "name": "8sGvxsd0", "rotationType": "FIXED_PERIOD", "startDate": "1992-12-26T00:00:00Z", "viewId": "znXIJGhs"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ztfhfbzK' \
    --storeId 'USTaJfCf' \
    > test.out 2>&1
eval_tap $? 196 'DeleteSection' test.out

#- 197 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'ListStores' test.out

#- 198 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "oYvUaPpM", "defaultRegion": "1C62wAO9", "description": "0Tmcqk3v", "supportedLanguages": ["uruo3pBx", "bTgJew8l", "ti2ZszzN"], "supportedRegions": ["cwmgIlSS", "jHXsUiJ1", "lllb0G24"], "title": "IPz9J8HJ"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'CATEGORY' \
    > test.out 2>&1
eval_tap $? 199 'GetCatalogDefinition' test.out

#- 200 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'DownloadCSVTemplates' test.out

#- 201 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["lYge7w90", "6YJw8LB8", "GDqerrch"], "idsToBeExported": ["2SX5HbHZ", "lVVGIDqc", "ijvSMR0s"], "storeId": "MfNvujjK"}' \
    > test.out 2>&1
eval_tap $? 201 'ExportStoreByCSV' test.out

#- 202 ImportStore
eval_tap 0 202 'ImportStore # SKIP deprecated' test.out

#- 203 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStore' test.out

#- 204 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'DeletePublishedStore' test.out

#- 205 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'GetPublishedStoreBackup' test.out

#- 206 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 206 'RollbackPublishedStore' test.out

#- 207 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'HW9mKIBA' \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'hLcUZMa3' \
    --body '{"defaultLanguage": "pI94TpQu", "defaultRegion": "TC66LglY", "description": "wln9w4ER", "supportedLanguages": ["7qnAJgQD", "YMymWIZg", "Ii8BXUZ4"], "supportedRegions": ["hLwXpWjp", "TYCr6g2b", "WHDIimoB"], "title": "hzpJz1dD"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'V0qHRXYB' \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'UwWqbFXB' \
    --action 'DELETE' \
    --itemSku '7xVJHpbB' \
    --itemType 'APP' \
    --limit '67' \
    --offset '67' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'gRsuVTg0' \
    --updatedAtStart 'FxS816rz' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'gDHwLPYc' \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'DHGVShSC' \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '6txHnV4a' \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'YtqrGC83' \
    --action 'UPDATE' \
    --itemSku 'Rar7jDS4' \
    --itemType 'CODE' \
    --selected 'true' \
    --type 'SECTION' \
    --updatedAtEnd 'tW9ntWYK' \
    --updatedAtStart 'UDdFDrjM' \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'Re5QCKSt' \
    --action 'UPDATE' \
    --itemSku 'um7yZLbB' \
    --itemType 'MEDIA' \
    --type 'STORE' \
    --updatedAtEnd '7wItX0RI' \
    --updatedAtStart 'lP476eH8' \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'z3Kdrc3D' \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'luadyxfd' \
    --namespace $AB_NAMESPACE \
    --storeId '2QYjhxzN' \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '2t5GyOei' \
    --namespace $AB_NAMESPACE \
    --storeId '09vUH8Ad' \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'O61EJZd6' \
    --targetStoreId 'wnNHKEn2' \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'RMfXv8rM' \
    --end 'juorxAa7' \
    --limit '61' \
    --offset '46' \
    --sortBy 'h2lUMfIr' \
    --start 'Fs29Gbzw' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'yv4Y8aKY' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'c8dd0oDC' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'kXCsNIWw' \
    --limit '99' \
    --offset '63' \
    --sku 'kGEiRf0J' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'vRdXOH3Y' \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fcVWSbcv' \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '4majcliX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'JnaPrLgx' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "hJRvSUTk"}' \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'yOdZuvQ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '26w7jPB5' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 50, "orderNo": "b09MfmTL"}' \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 54, "currencyCode": "zjKvDGSS", "expireAt": "1985-04-23T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "fkiAG7tu", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "YN02M2di", "entitlementOrigin": "Xbox", "itemIdentity": "7X8wt5j7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "zDvnN5vW"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 45, "currencyCode": "9JZqiRxM", "expireAt": "1979-11-30T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "WAL9FVrv", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "r59QRW6g", "entitlementOrigin": "Other", "itemIdentity": "snqiGkfH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "Ir10jQC2"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 50, "currencyCode": "P9uUIsLP", "expireAt": "1991-10-25T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "DHYIb2T8", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "JFDyKOzk", "entitlementOrigin": "Nintendo", "itemIdentity": "MZPXKdme", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "t7N7ZNJD"}, "type": "CREDIT_WALLET"}], "userId": "Wzm3WJs3"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 15, "currencyCode": "A17WUyHg", "expireAt": "1992-11-02T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "qf8TPcNF", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "ar30ZJcI", "entitlementOrigin": "Epic", "itemIdentity": "eX6Z7QaC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "FcwAaNZM"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 77, "currencyCode": "xq7dD0HN", "expireAt": "1987-03-09T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "x5bGH893", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 58, "entitlementCollectionId": "mg24jY85", "entitlementOrigin": "Epic", "itemIdentity": "LPDSPhTt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "162B51QY"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 54, "currencyCode": "wSc9ED94", "expireAt": "1998-10-22T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "5ckTWa42", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "xF4WUyAm", "entitlementOrigin": "IOS", "itemIdentity": "GiisG4OQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "K0ArvEGj"}, "type": "FULFILL_ITEM"}], "userId": "bcXNjfn3"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 38, "currencyCode": "9OIjcv2N", "expireAt": "1983-04-17T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "dcyN1cPh", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 18, "entitlementCollectionId": "j4pmUZjw", "entitlementOrigin": "Oculus", "itemIdentity": "2jcpoiM9", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "3fDaUzs8"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 81, "currencyCode": "AoFDrHqU", "expireAt": "1996-07-10T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "QAqPcuyF", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "1yuQQ2DL", "entitlementOrigin": "Playstation", "itemIdentity": "dFaRAita", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "NBPfnIAK"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 54, "currencyCode": "o8EhLghB", "expireAt": "1984-07-14T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "RohliSAT", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "LCeRXtnC", "entitlementOrigin": "Playstation", "itemIdentity": "XkpekP57", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "9pvaA6ig"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "0OBXsHaM"}], "metadata": {"7NJLhgLN": {}, "aX4DiZup": {}, "vMinTOBP": {}}, "needPreCheck": true, "transactionId": "XoTTLpxc", "type": "jgiYhdqF"}' \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '26' \
    --status 'FAILED' \
    --type 'AoQFxhya' \
    --userId 'CkNZ79fr' \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'pMUHQVgn' \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XvQdNaIp' \
    --body '{"achievements": [{"id": "9g1HVHbW", "value": 13}, {"id": "u22lAG4k", "value": 54}, {"id": "XKDibFKs", "value": 29}], "steamUserId": "leeKi2oJ"}' \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'KTT7zwiG' \
    --xboxUserId 'lEz0alIT' \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'azp6Htcl' \
    --body '{"achievements": [{"id": "1HZjzypF", "percentComplete": 21}, {"id": "ZXvXx9W7", "percentComplete": 45}, {"id": "3XTtkpIK", "percentComplete": 61}], "serviceConfigId": "qjZ7CNAa", "titleId": "V0nLezQ2", "xboxUserId": "qfYnsymF"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'p66GqY6B' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rViUhfIu' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'BBpo8WRT' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Ql8OXwaM' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vFCo2UM2' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'sdJaNLTe' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Cbzsf1At' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '5z92S76T' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Puz9XPAw' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'k7tOxXZn' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PrmzcMhz' \
    --includeAllNamespaces 'true' \
    --status 'REVOKED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ttagvTeB' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --collectionId 'jjtHqa5p' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'fZoJxnPS' \
    --features '["rReabuhQ", "YcMhsrTm", "av4S8nSk"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["oOBLkvIS", "JOgo9GrP", "w6TbScct"]' \
    --limit '21' \
    --offset '90' \
    --origin 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'd5BlMs4i' \
    --body '[{"collectionId": "BeObFBKs", "endDate": "1973-05-05T00:00:00Z", "grantedCode": "3DuL5NQk", "itemId": "YQMnDBKN", "itemNamespace": "cvqTqru1", "language": "ePjz-SdKO_Sp", "metadata": {"B0lTmk0Z": {}, "qv7UJCv1": {}, "m8iW2UZT": {}}, "origin": "Nintendo", "quantity": 30, "region": "8KaAutxc", "source": "REDEEM_CODE", "startDate": "1995-06-20T00:00:00Z", "storeId": "TUmqgo4D"}, {"collectionId": "y3HQYD6y", "endDate": "1979-07-01T00:00:00Z", "grantedCode": "WZkGKHrN", "itemId": "51f2BYxo", "itemNamespace": "KBLoOemZ", "language": "SZnK", "metadata": {"mHcAmUyU": {}, "rXmQIUJ5": {}, "AzAJdOjq": {}}, "origin": "Playstation", "quantity": 44, "region": "GD9l0JPr", "source": "ACHIEVEMENT", "startDate": "1984-02-26T00:00:00Z", "storeId": "IddRwTa6"}, {"collectionId": "sRGSDHLz", "endDate": "1972-01-27T00:00:00Z", "grantedCode": "cZZ4ysyv", "itemId": "3hQpGmho", "itemNamespace": "TimIWCf0", "language": "RXN", "metadata": {"gtC8jGh9": {}, "lej7cglA": {}, "Ks9GN0AN": {}}, "origin": "Oculus", "quantity": 42, "region": "uV3el38X", "source": "PURCHASE", "startDate": "1973-12-20T00:00:00Z", "storeId": "pKNJomhO"}]' \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'LPNWwjyK' \
    --activeOnly 'true' \
    --appId 'eDBmjyzA' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'oxTpYwCX' \
    --activeOnly 'false' \
    --limit '90' \
    --offset '89' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'bWRej8AX' \
    --ids '["DxYSCUnv", "x7XDm4g6", "l5rKNZVv"]' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '8NlTt5Y1' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --platform 'x3eYH2Yc' \
    --itemId 'XqnGvRz7' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'LFkaKgV8' \
    --ids '["USuMlxzV", "anRhEEXC", "wamszHHQ"]' \
    --platform 'pnKJ9XvE' \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'F9FTZVei' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'TleP6jJp' \
    --sku 'i2rgUiZI' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '1lRT5cPK' \
    --appIds '["DAHoIRkK", "Wo5WJyxR", "436JYDbn"]' \
    --itemIds '["Y72IkHsg", "rLRVRLX2", "6p9uFer7"]' \
    --platform '2YVvUTQw' \
    --skus '["6RPyb9Bu", "pJpE5eWq", "dyb1NqAL"]' \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8L5bQTuB' \
    --platform 'gkSQ7TwL' \
    --itemIds '["BgasvVBr", "181eUUDR", "sictCQDI"]' \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'tZqrtcf5' \
    --appId 'wE3piugz' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'FdD1pZei' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'sG1yWIrn' \
    --itemId 'm6jUfzPc' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'demOErb3' \
    --ids '["C5KJmmLn", "on25xJnv", "tImpc0lW"]' \
    --platform 'YNR2LWK2' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'GulbdUIu' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'srhv5Btt' \
    --sku 'a0vf2dtv' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'uvkjhJT6' \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DJunYEHV' \
    --entitlementIds 'hsV7CJ4I' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '7YpfLZ8X' \
    --namespace $AB_NAMESPACE \
    --userId '5NcwhQDU' \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Gxi7Vndm' \
    --namespace $AB_NAMESPACE \
    --userId 'oOpYRNFr' \
    --body '{"collectionId": "1oP88jzR", "endDate": "1979-01-24T00:00:00Z", "nullFieldList": ["4BWg7Wau", "Eg5lZnqg", "Jb7vBN8f"], "origin": "Playstation", "reason": "N6JlLgT9", "startDate": "1973-09-05T00:00:00Z", "status": "SOLD", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '7hUL3NJx' \
    --namespace $AB_NAMESPACE \
    --userId 'AVLBNX0p' \
    --body '{"metadata": {"VRjBX3XE": {}, "sixUyi0z": {}, "hMcQNLCV": {}}, "options": ["RMgZziTv", "D9xkN0VK", "qpDPgkxB"], "platform": "LTMcWRNS", "requestId": "B8Tgz3FT", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'HRZqe34M' \
    --namespace $AB_NAMESPACE \
    --userId 'bhqoEKDw' \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'CFi3h8zG' \
    --namespace $AB_NAMESPACE \
    --userId 'amCghSTR' \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'qF9g1bbw' \
    --namespace $AB_NAMESPACE \
    --userId 'WbTir0pp' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'GXKGc6E8' \
    --namespace $AB_NAMESPACE \
    --userId '1GHEqCUG' \
    --body '{"metadata": {"w4Iwqt79": {}, "gq3qKRTU": {}, "ugDvQr2W": {}}}' \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'csK7IJXH' \
    --namespace $AB_NAMESPACE \
    --userId '7V5qnKvL' \
    --body '{"reason": "RjhVidIu", "useCount": 2}' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'y05tdVAV' \
    --namespace $AB_NAMESPACE \
    --userId 'RsALWPb9' \
    --quantity '11' \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'puHZw4lu' \
    --namespace $AB_NAMESPACE \
    --userId 'LVwQa63I' \
    --body '{"platform": "dikeTpPk", "requestId": "ts8twZBi", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'UZVJEL0I' \
    --body '{"duration": 83, "endDate": "1988-03-09T00:00:00Z", "entitlementCollectionId": "vm4kURa8", "entitlementOrigin": "Nintendo", "itemId": "nXhdYC9c", "itemSku": "7GtlMx2k", "language": "BeBmZFzW", "metadata": {"eJ7sQRhv": {}, "zwHD4MuO": {}, "L7030F8r": {}}, "order": {"currency": {"currencyCode": "x4dRXLey", "currencySymbol": "HUPLeZaZ", "currencyType": "VIRTUAL", "decimals": 63, "namespace": "hyXuTVK3"}, "ext": {"8WmX4C1l": {}, "hPmkjWLq": {}, "f3uVb2Hx": {}}, "free": false}, "orderNo": "JkFLWyTn", "origin": "Epic", "overrideBundleItemQty": {"174qEuED": 20, "RN29An2n": 34, "351apuBO": 39}, "quantity": 48, "region": "sAWcUweM", "source": "PAYMENT", "startDate": "1984-05-21T00:00:00Z", "storeId": "zTp3into"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Za4iFhx9' \
    --body '{"code": "at3FYl6Y", "language": "hBF-evhK", "region": "hiNpZENQ"}' \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 't8ZlWqYJ' \
    --body '{"itemId": "aXxTAkfQ", "itemSku": "2F8Fal8g", "quantity": 72}' \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'oUwGX58g' \
    --body '{"entitlementCollectionId": "EuNBeIS9", "entitlementOrigin": "IOS", "metadata": {"yMbFl160": {}, "k5AWY3Wj": {}, "BjwAM8Xc": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "Gca6ob85", "namespace": "oMrKYBbO"}, "item": {"itemId": "SjwRyJQy", "itemName": "jfDtUrqU", "itemSku": "5Erz0bph", "itemType": "MQBfWoUB"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "IlEOLsOd", "namespace": "QqcVAjQG"}, "item": {"itemId": "6L619IJy", "itemName": "GLMF11uG", "itemSku": "HxVjZu3j", "itemType": "WwCAcXg6"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "fmpAAIs2", "namespace": "9D32kuWL"}, "item": {"itemId": "D3EtCw72", "itemName": "YMtKZqgH", "itemSku": "DX3H31NJ", "itemType": "CCh5e2FG"}, "quantity": 72, "type": "ITEM"}], "source": "REDEEM_CODE", "transactionId": "5rfLnraB"}' \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tjMQ4Vyb' \
    --endTime 'Bjv5U5Qp' \
    --limit '97' \
    --offset '12' \
    --productId 'tZMF7uzj' \
    --startTime 'DxAXJG6F' \
    --status 'REVOKED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'q6p9AkxL' \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'oYRwbYfr' \
    --endTime 'Kzp1cTJ7' \
    --limit '53' \
    --offset '51' \
    --startTime '9JhtVF2K' \
    --status 'PENDING' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'JjNNtHSc' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "ZRpg", "productId": "oMSfnthc", "region": "ObgMevFu", "transactionId": "dtGo9ff2", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'TNsyq7P5' \
    --activeOnly 'true' \
    --groupId 'kqAePpjO' \
    --limit '6' \
    --offset '11' \
    --platform 'STEAM' \
    --productId 'KCY3kGcY' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'GoPYCEms' \
    --groupId 'lDHbAFso' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    --userId '4f3Y6UMM' \
    --productId '9CXdWFmD' \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'aUkVrwol' \
    --activeOnly 'true' \
    --groupId 'U623ofZr' \
    --limit '40' \
    --offset '8' \
    --platform 'XBOX' \
    --productId 'tOULLKdC' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'UyU3UQlI' \
    --namespace $AB_NAMESPACE \
    --userId 'zfg7ZK48' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'jWU3Jh7c' \
    --namespace $AB_NAMESPACE \
    --userId 'nJOFLq1Y' \
    --limit '35' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'JyPq3CVj' \
    --namespace $AB_NAMESPACE \
    --userId 'Y4KqqSlk' \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'V60vuyMS' \
    --namespace $AB_NAMESPACE \
    --userId '9qHW6QLv' \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'g2nleIGh' \
    --namespace $AB_NAMESPACE \
    --userId '2S4UYTzk' \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Fpnw1mvB' \
    --discounted 'true' \
    --itemId 'PGHJ2tfj' \
    --limit '46' \
    --offset '26' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ajy5JPcT' \
    --body '{"currencyCode": "iCzZeqCA", "currencyNamespace": "nmke6K2k", "discountCodes": ["66NvSgWd", "9ZhAsgtv", "RFsCcp66"], "discountedPrice": 66, "entitlementPlatform": "Oculus", "ext": {"GbsidslC": {}, "XRjH5DWY": {}, "Uc8MIb7Y": {}}, "itemId": "qSgMnleq", "language": "zRI3Pw1B", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 99, "quantity": 82, "region": "wRlj64CB", "returnUrl": "7xAlDwTK", "sandbox": true, "sectionId": "0aajMpdM"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'IePV9HQl' \
    --itemId 'vSczAWef' \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'j30Zx7qW' \
    --userId 'dnIp8G5Y' \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'xO4ECgqd' \
    --userId 'F4SdtGCq' \
    --body '{"status": "REFUNDED", "statusReason": "EF6FPSTZ"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KQmZNiL0' \
    --userId '3PkYxFWr' \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'RalsCIQY' \
    --userId 'mTt4dZqO' \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '8avuJQBq' \
    --userId '4fwxuJIg' \
    --body '{"additionalData": {"cardSummary": "pmMBi7bE"}, "authorisedTime": "1997-08-24T00:00:00Z", "chargebackReversedTime": "1991-05-05T00:00:00Z", "chargebackTime": "1994-09-25T00:00:00Z", "chargedTime": "1975-04-11T00:00:00Z", "createdTime": "1981-10-07T00:00:00Z", "currency": {"currencyCode": "MavMgQKx", "currencySymbol": "m0GcGIHU", "currencyType": "VIRTUAL", "decimals": 84, "namespace": "OsmWkKNQ"}, "customParameters": {"CXZdWAaj": {}, "D17xI0gh": {}, "Mt1v9zxp": {}}, "extOrderNo": "JxyYoSE1", "extTxId": "G7Rfzt1n", "extUserId": "tgmeds7C", "issuedAt": "1973-11-28T00:00:00Z", "metadata": {"K08oqp5u": "YsE78lzB", "iuF4lJlw": "lQ4WoYMr", "lfFF71Zh": "RuydyR7G"}, "namespace": "HT4PIVFm", "nonceStr": "ka5Fv0K4", "paymentData": {"discountAmount": 20, "discountCode": "Illpv2H9", "subtotalPrice": 25, "tax": 75, "totalPrice": 67}, "paymentMethod": "BGj5dHvn", "paymentMethodFee": 45, "paymentOrderNo": "d0ynkBCY", "paymentProvider": "STRIPE", "paymentProviderFee": 47, "paymentStationUrl": "xEEroJ8v", "price": 10, "refundedTime": "1972-11-11T00:00:00Z", "salesTax": 40, "sandbox": true, "sku": "U9iGPU0W", "status": "REFUND_FAILED", "statusReason": "zhn3adHE", "subscriptionId": "QvAFEM5l", "subtotalPrice": 11, "targetNamespace": "j110Uisa", "targetUserId": "8n7m1PDd", "tax": 60, "totalPrice": 48, "totalTax": 24, "txEndTime": "1974-11-27T00:00:00Z", "type": "CjFKm40Q", "userId": "zBVlNMlS", "vat": 6}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'sQSLKJfz' \
    --userId 'NuOodL7y' \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '69uYthCy' \
    --body '{"currencyCode": "LDnq8mTh", "currencyNamespace": "FGjAuNIU", "customParameters": {"JtDnLyF1": {}, "8PdVS4lu": {}, "tkY7SZKX": {}}, "description": "3WUwgyCO", "extOrderNo": "h3uYPzRn", "extUserId": "E9eIo6pC", "itemType": "SUBSCRIPTION", "language": "Mx", "metadata": {"wgZL4ad4": "TbR4cfSs", "1fZP9naj": "trn6cJkc", "0OTOcUHp": "usZWoSYX"}, "notifyUrl": "lHOZNLD7", "omitNotification": false, "platform": "N5kvWAYH", "price": 65, "recurringPaymentOrderNo": "qfx13l6D", "region": "wPfqAQ3b", "returnUrl": "Ti2QmABO", "sandbox": false, "sku": "CoBlSR1f", "subscriptionId": "GnJpuwTP", "title": "Z6bb0e2H"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '95TrAAWM' \
    --userId 'iqCF2Ho8' \
    --body '{"description": "89IXomM9"}' \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'fi1UWAlY' \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'fc9W12Th' \
    --body '{"code": "yyL89qqc", "orderNo": "jJJ1sZFg"}' \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'aVk8vWe5' \
    --body '{"meta": {"rQeJ3ndm": {}, "6b5oZ5b9": {}, "31SL04wZ": {}}, "reason": "R5Rc5NQ8", "requestId": "EAM0OHAm", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "qGDSVaCg", "namespace": "Bw8kWxsb"}, "entitlement": {"entitlementId": "u0frUDMm"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "HwDuHMFU", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "0EH9s7Z4", "namespace": "Ec2JWFqp"}, "entitlement": {"entitlementId": "DjFnaqBO"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "yteC7uGi", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "SbugeZlN", "namespace": "D1DLQTog"}, "entitlement": {"entitlementId": "bm2OmZPv"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "SPsjst6X", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 90, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "55qEPWR3"}' \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'VlcXagxN' \
    --body '{"gameSessionId": "6gB03Rn3", "payload": {"FHenAdru": {}, "vOziBWtt": {}, "kBqpsJVD": {}}, "scid": "onjHClAS", "sessionTemplateName": "aBUNUp9O"}' \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Kf52x053' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'IoYYWNoT' \
    --limit '17' \
    --offset '72' \
    --sku 'leAnUE8b' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'DZjA04YT' \
    --excludeSystem 'true' \
    --limit '58' \
    --offset '85' \
    --subscriptionId 'fvNg16fY' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'NUWFNgRe' \
    --body '{"grantDays": 32, "itemId": "RHxhRDbN", "language": "GCxYl4qh", "reason": "LXxiVn3w", "region": "MA8Ty9jA", "source": "CofTTbti"}' \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nvuTEeTT' \
    --itemId 'enOu9kQ1' \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'p7iicmsU' \
    --userId 'Zwa7ckLc' \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rNf5p8YI' \
    --userId 'mKNM25C6' \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'aGTlGhfD' \
    --userId 'od0KPgxQ' \
    --force 'true' \
    --body '{"immediate": true, "reason": "Zn6TcKUn"}' \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Cgu1MenI' \
    --userId '7xfEFd6g' \
    --body '{"grantDays": 54, "reason": "1fim2lJO"}' \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PU0GeLhm' \
    --userId 'xMPNXiVg' \
    --excludeFree 'false' \
    --limit '89' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ttDbPnxo' \
    --userId 'FDAe6kB9' \
    --body '{"additionalData": {"cardSummary": "afXfOp7g"}, "authorisedTime": "1997-06-29T00:00:00Z", "chargebackReversedTime": "1993-07-05T00:00:00Z", "chargebackTime": "1979-06-30T00:00:00Z", "chargedTime": "1984-03-25T00:00:00Z", "createdTime": "1978-07-18T00:00:00Z", "currency": {"currencyCode": "Kx13ivYM", "currencySymbol": "XNrSZkgZ", "currencyType": "VIRTUAL", "decimals": 71, "namespace": "rCqgCjGj"}, "customParameters": {"Q924ORYH": {}, "taZDcApl": {}, "Bmb577a5": {}}, "extOrderNo": "EdsJW9uP", "extTxId": "MpQ2eHg3", "extUserId": "LmFg3Rv8", "issuedAt": "1983-06-22T00:00:00Z", "metadata": {"xVuzHvl6": "VFWWym08", "WvokiVc0": "rAKUFG6j", "28908p7X": "ymyJLDrq"}, "namespace": "w8aG11yi", "nonceStr": "P8MSyx4R", "paymentData": {"discountAmount": 99, "discountCode": "zBFd1ZAA", "subtotalPrice": 0, "tax": 90, "totalPrice": 54}, "paymentMethod": "5PUlpTJq", "paymentMethodFee": 25, "paymentOrderNo": "xJAGVGaq", "paymentProvider": "WALLET", "paymentProviderFee": 3, "paymentStationUrl": "UG5sxlVV", "price": 32, "refundedTime": "1981-08-08T00:00:00Z", "salesTax": 35, "sandbox": true, "sku": "mRXvw5Mv", "status": "REFUNDED", "statusReason": "gUPkbmAt", "subscriptionId": "mvUv1Fa6", "subtotalPrice": 63, "targetNamespace": "5jnIYmS6", "targetUserId": "6pAsTdFw", "tax": 15, "totalPrice": 82, "totalTax": 29, "txEndTime": "1986-06-13T00:00:00Z", "type": "XPFwNQH3", "userId": "F9d3Mvkd", "vat": 45}' \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'aJ7wEwxE' \
    --namespace $AB_NAMESPACE \
    --userId '65W6pI1Y' \
    --body '{"count": 51, "orderNo": "JIgx7tE2"}' \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'TtyJC8Iq' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'trmle1GZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Wl6t0mAd' \
    --body '{"allowOverdraft": true, "amount": 9, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"4Wd3LcAq": {}, "YN4iatev": {}, "oy7IkmXu": {}}, "reason": "zZwnJAee"}' \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'tBC45slt' \
    --namespace $AB_NAMESPACE \
    --userId 'bnmoCRi6' \
    --limit '94' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'dQsRGFiF' \
    --namespace $AB_NAMESPACE \
    --userId 'IkPhIAxo' \
    --request '{"amount": 16, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"65vwwDWZ": {}, "J83xlopr": {}, "RnWhM28O": {}}, "reason": "jjlYarao", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '1ET8lnxm' \
    --namespace $AB_NAMESPACE \
    --userId 'GwTrXiq8' \
    --body '{"amount": 60, "expireAt": "1980-06-29T00:00:00Z", "metadata": {"A33U0lOW": {}, "ODteBnPN": {}, "hycba443": {}}, "origin": "System", "reason": "hDeO7nVU", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'wlJVQ7T7' \
    --namespace $AB_NAMESPACE \
    --userId '27yo7xc3' \
    --request '{"amount": 99, "debitBalanceSource": "PAYMENT", "metadata": {"X8DQwjEO": {}, "RKPQS00O": {}, "mWaFe8U8": {}}, "reason": "f6uUdDkC", "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '992vmo5t' \
    --namespace $AB_NAMESPACE \
    --userId '62XTGJxZ' \
    --body '{"amount": 12, "metadata": {"ryrvJIT0": {}, "1E4aWq5v": {}, "nQgDVHNb": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 324 'PayWithUserWallet' test.out

#- 325 GetUserWallet
eval_tap 0 325 'GetUserWallet # SKIP deprecated' test.out

#- 326 DebitUserWallet
eval_tap 0 326 'DebitUserWallet # SKIP deprecated' test.out

#- 327 DisableUserWallet
eval_tap 0 327 'DisableUserWallet # SKIP deprecated' test.out

#- 328 EnableUserWallet
eval_tap 0 328 'EnableUserWallet # SKIP deprecated' test.out

#- 329 ListUserWalletTransactions
eval_tap 0 329 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 330 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '30LAOinU' \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'm2nEV74F' \
    --body '{"displayOrder": 26, "localizations": {"Y9TYswlK": {"description": "8aQRJsT0", "localExt": {"1ILDdZa7": {}, "nzXymfCq": {}, "vLqOJu1o": {}}, "longDescription": "Sj2DUqVA", "title": "ijF18LTH"}, "yrE2bDrD": {"description": "d5B5xcoK", "localExt": {"yo8ow9vL": {}, "LgUYMyOW": {}, "8lQlLcD4": {}}, "longDescription": "3ENS4wH2", "title": "x5YZchFJ"}, "Ueb0rJYQ": {"description": "8xB4wBAP", "localExt": {"Hc8yMWDk": {}, "TEWfEPNQ": {}, "fUpm4Yiu": {}}, "longDescription": "EYkvEgVF", "title": "lHahGF8S"}}, "name": "YEzv0tW9"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'RoK12mV5' \
    --storeId 'sZXrAtqk' \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '9E5hVjy9' \
    --storeId '597Dx0AN' \
    --body '{"displayOrder": 94, "localizations": {"ieJdE4qX": {"description": "XNcjefZ0", "localExt": {"EGr15GcA": {}, "sXBhOX3r": {}, "120kaWAa": {}}, "longDescription": "U2HjMBrw", "title": "8G7yuMJG"}, "yUHTghoL": {"description": "AVoWvU5d", "localExt": {"7yD056bz": {}, "sEcGpwN6": {}, "kipfv1nn": {}}, "longDescription": "rcd4ZuCX", "title": "dt3omlPh"}, "3emqINoR": {"description": "QTDprK1x", "localExt": {"CIOmDG5N": {}, "OpDWAA4a": {}, "DCpdyzxP": {}}, "longDescription": "dAW8SgNH", "title": "HZEpvjpx"}}, "name": "i7Bihz5N"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'hxSC8DFv' \
    --storeId '2tlUvMFa' \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'GetWalletConfig' test.out

#- 336 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWalletConfig' test.out

#- 337 QueryWallets
eval_tap 0 337 'QueryWallets # SKIP deprecated' test.out

#- 338 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 35, "expireAt": "1981-06-11T00:00:00Z", "metadata": {"YknIfgcm": {}, "yrFP6gDy": {}, "WwjrP1kr": {}}, "origin": "Steam", "reason": "ml3VCSUw", "source": "SELL_BACK"}, "currencyCode": "pJquydBN", "userIds": ["N5GsiToh", "CNbBkEFC", "tCfAO7Fp"]}, {"creditRequest": {"amount": 38, "expireAt": "1989-07-15T00:00:00Z", "metadata": {"kZx11NYq": {}, "5M9X5I98": {}, "5ov1UrIb": {}}, "origin": "Twitch", "reason": "vLcR897w", "source": "PROMOTION"}, "currencyCode": "rx5w47R2", "userIds": ["9CmwN8P1", "IMMn4Jya", "8WQwHHmM"]}, {"creditRequest": {"amount": 10, "expireAt": "1979-08-08T00:00:00Z", "metadata": {"GZ7UNebO": {}, "CNFgBbVo": {}, "RNJjbLGs": {}}, "origin": "Playstation", "reason": "705c6L9K", "source": "REFUND"}, "currencyCode": "HhidkUZo", "userIds": ["It6xdsBh", "zx99tMrY", "2jxp8Rn1"]}]' \
    > test.out 2>&1
eval_tap $? 338 'BulkCredit' test.out

#- 339 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "x6KKqt0s", "request": {"allowOverdraft": true, "amount": 97, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"OBo6JIU2": {}, "V8HB0SDt": {}, "XqC0SlrR": {}}, "reason": "lfyLl7d3"}, "userIds": ["5NZ0nPQY", "BUlqDwee", "FsOAYzPC"]}, {"currencyCode": "wfugxYNe", "request": {"allowOverdraft": true, "amount": 85, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"Vz8tMzar": {}, "iuRbDVcR": {}, "Pfw2w6MG": {}}, "reason": "WsnBMPbG"}, "userIds": ["15Sh1NHW", "xm58GGWJ", "HBN7lTZz"]}, {"currencyCode": "N33Nv4i9", "request": {"allowOverdraft": false, "amount": 51, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"jKhLTwfJ": {}, "7BysS02Z": {}, "rgaaY5jW": {}}, "reason": "WYuE9N6A"}, "userIds": ["rAKm2E1Q", "TRMUpNXA", "iUHr2p88"]}]' \
    > test.out 2>&1
eval_tap $? 339 'BulkDebit' test.out

#- 340 GetWallet
eval_tap 0 340 'GetWallet # SKIP deprecated' test.out

#- 341 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'X5dYjoBi' \
    --end 'ViB5hQrW' \
    --start 'a38TNI48' \
    > test.out 2>&1
eval_tap $? 341 'SyncOrders' test.out

#- 342 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["ildyfviS", "nfLDJczf", "oRk2gW5c"], "apiKey": "hcPCPILF", "authoriseAsCapture": true, "blockedPaymentMethods": ["c2n0RNp7", "k6rqSff1", "xr35uvC6"], "clientKey": "DU5Wl1Uw", "dropInSettings": "OMiHyplR", "liveEndpointUrlPrefix": "A2trFine", "merchantAccount": "mBuf8Qo0", "notificationHmacKey": "poWVuWik", "notificationPassword": "czZAp0By", "notificationUsername": "3PSMinDl", "returnUrl": "iOUkZdWE", "settings": "lLcbFkBj"}' \
    > test.out 2>&1
eval_tap $? 342 'TestAdyenConfig' test.out

#- 343 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "GAatGxqT", "privateKey": "EOqjPGIS", "publicKey": "zTETfwzm", "returnUrl": "tersPP4m"}' \
    > test.out 2>&1
eval_tap $? 343 'TestAliPayConfig' test.out

#- 344 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "Fr6vcg8D", "secretKey": "F4TEAyx6"}' \
    > test.out 2>&1
eval_tap $? 344 'TestCheckoutConfig' test.out

#- 345 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'd4s82Yid' \
    --region 'LjMf7MEI' \
    > test.out 2>&1
eval_tap $? 345 'DebugMatchedPaymentMerchantConfig' test.out

#- 346 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "3PqPMazg", "webhookSecretKey": "Xw7r3zMS"}' \
    > test.out 2>&1
eval_tap $? 346 'TestNeonPayConfig' test.out

#- 347 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "khKVnZ87", "clientSecret": "f48ARbqW", "returnUrl": "EFtCsFSN", "webHookId": "YkGwlmSY"}' \
    > test.out 2>&1
eval_tap $? 347 'TestPayPalConfig' test.out

#- 348 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["l69Mmk4K", "CkX73bcB", "WWE8adcG"], "publishableKey": "K4bvAHeF", "secretKey": "ZIPxEYNf", "webhookSecret": "a1vkZZgj"}' \
    > test.out 2>&1
eval_tap $? 348 'TestStripeConfig' test.out

#- 349 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "OzzoIvRr", "key": "DsXUgah6", "mchid": "kO6GK3ku", "returnUrl": "uQWolowe"}' \
    > test.out 2>&1
eval_tap $? 349 'TestWxPayConfig' test.out

#- 350 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "GPrvWL1Z", "flowCompletionUrl": "bTii1zpw", "merchantId": 7, "projectId": 3, "projectSecretKey": "4h88xXzk"}' \
    > test.out 2>&1
eval_tap $? 350 'TestXsollaConfig' test.out

#- 351 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'xqISl7zZ' \
    > test.out 2>&1
eval_tap $? 351 'GetPaymentMerchantConfig1' test.out

#- 352 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'sHjNZKpF' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["ajaKzuuO", "1BvmirNu", "TMgoir8H"], "apiKey": "KxdUF5iB", "authoriseAsCapture": false, "blockedPaymentMethods": ["wwMf145F", "sDDUNQcB", "LdSOfoJ6"], "clientKey": "ky8Wn267", "dropInSettings": "hjYdwMJs", "liveEndpointUrlPrefix": "7FGXyOUD", "merchantAccount": "Kr3O3mvO", "notificationHmacKey": "Qtv3Fthj", "notificationPassword": "c5UIMBtV", "notificationUsername": "VbdH2kLU", "returnUrl": "hCn3EzIh", "settings": "2yF3VJrN"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateAdyenConfig' test.out

#- 353 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'gYnqxd99' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfigById' test.out

#- 354 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'XuVKdfCh' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "pCAj7Pmc", "privateKey": "Uf0dBdtc", "publicKey": "CsxGzIQm", "returnUrl": "TiTze89u"}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateAliPayConfig' test.out

#- 355 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'BRjlmQfQ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 355 'TestAliPayConfigById' test.out

#- 356 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'c2Dg1Pcu' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "smopPZM6", "secretKey": "3vWGOxP7"}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateCheckoutConfig' test.out

#- 357 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'zvzjpNsE' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 357 'TestCheckoutConfigById' test.out

#- 358 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'LTai1Ss3' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "NCzus0JH", "webhookSecretKey": "Lj8Cwyju"}' \
    > test.out 2>&1
eval_tap $? 358 'UpdateNeonPayConfig' test.out

#- 359 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'kKmvLrJh' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 359 'TestNeonPayConfigById' test.out

#- 360 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'IU5sUHdC' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "ljc9G9Iw", "clientSecret": "U1wFurqo", "returnUrl": "qiZUERfq", "webHookId": "G757ieGM"}' \
    > test.out 2>&1
eval_tap $? 360 'UpdatePayPalConfig' test.out

#- 361 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '7EPpvGp2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 361 'TestPayPalConfigById' test.out

#- 362 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'EeYgT5QU' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["zpmPiczJ", "gt8DLLLT", "E9i2k0Iu"], "publishableKey": "MMBZxnYL", "secretKey": "NHXPO1IH", "webhookSecret": "okhSUmMf"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateStripeConfig' test.out

#- 363 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'WFlbwSyb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 363 'TestStripeConfigById' test.out

#- 364 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'TTFugVuF' \
    --validate 'false' \
    --body '{"appId": "AMf1nPQm", "key": "AaUEfWOM", "mchid": "4tD3az5b", "returnUrl": "v8MFEe0F"}' \
    > test.out 2>&1
eval_tap $? 364 'UpdateWxPayConfig' test.out

#- 365 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'QvLEhlPe' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 365 'UpdateWxPayConfigCert' test.out

#- 366 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'oeIJFNtR' \
    > test.out 2>&1
eval_tap $? 366 'TestWxPayConfigById' test.out

#- 367 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'uKfMapKH' \
    --validate 'true' \
    --body '{"apiKey": "bZ8MX6kR", "flowCompletionUrl": "52mRVsmv", "merchantId": 96, "projectId": 10, "projectSecretKey": "BRUzF4yu"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaConfig' test.out

#- 368 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ARvpX1Aw' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfigById' test.out

#- 369 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'SeAIKnZd' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateXsollaUIConfig' test.out

#- 370 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '10' \
    --namespace 'bCnWzkh1' \
    --offset '44' \
    --region '3GeD4IEv' \
    > test.out 2>&1
eval_tap $? 370 'QueryPaymentProviderConfig' test.out

#- 371 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "Yb6X96H2", "region": "WvYpX39O", "sandboxTaxJarApiToken": "4ruIABN5", "specials": ["CHECKOUT", "ALIPAY", "NEONPAY"], "taxJarApiToken": "ATWHG2up", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 371 'CreatePaymentProviderConfig' test.out

#- 372 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 372 'GetAggregatePaymentProviders' test.out

#- 373 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'hSsBKo1B' \
    --region 'nJqCCtH8' \
    > test.out 2>&1
eval_tap $? 373 'DebugMatchedPaymentProviderConfig' test.out

#- 374 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 374 'GetSpecialPaymentProviders' test.out

#- 375 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'jQkTs09t' \
    --body '{"aggregate": "ADYEN", "namespace": "cs4whAV9", "region": "D2iolB6x", "sandboxTaxJarApiToken": "uQdBtzEo", "specials": ["ADYEN", "XSOLLA", "CHECKOUT"], "taxJarApiToken": "ZymT0dOX", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 375 'UpdatePaymentProviderConfig' test.out

#- 376 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'plqMYRxr' \
    > test.out 2>&1
eval_tap $? 376 'DeletePaymentProviderConfig' test.out

#- 377 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 377 'GetPaymentTaxConfig' test.out

#- 378 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "DKZjsyTR", "taxJarApiToken": "mgKoTTjy", "taxJarEnabled": true, "taxJarProductCodesMapping": {"aOtPakUs": "EZQt7d78", "vMpGrRaE": "Zl3RTeyF", "mYXkvxx6": "IJGRttTX"}}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePaymentTaxConfig' test.out

#- 379 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'SgUPz87t' \
    --end 'gWOGImuj' \
    --start 'EXjF6MaI' \
    > test.out 2>&1
eval_tap $? 379 'SyncPaymentOrders' test.out

#- 380 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'WIbrlN27' \
    --storeId 'PdUcMT1G' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetRootCategories' test.out

#- 381 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 't5P4u1wu' \
    --storeId '0a1UbKOo' \
    > test.out 2>&1
eval_tap $? 381 'DownloadCategories' test.out

#- 382 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 's1h0RQmb' \
    --namespace $AB_NAMESPACE \
    --language 'a5cV1Fi6' \
    --storeId 't7zhmsAb' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetCategory' test.out

#- 383 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'sJWBIglf' \
    --namespace $AB_NAMESPACE \
    --language '3wPiKBfr' \
    --storeId '823bcupl' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetChildCategories' test.out

#- 384 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'B8BcHDoy' \
    --namespace $AB_NAMESPACE \
    --language 'dJ9l2Uy7' \
    --storeId 'gfTovuPh' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetDescendantCategories' test.out

#- 385 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 385 'PublicListCurrencies' test.out

#- 386 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 386 'GeDLCDurableRewardShortMap' test.out

#- 387 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 387 'GetAppleConfigVersion' test.out

#- 388 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 388 'GetIAPItemMapping' test.out

#- 389 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '1pJr57wg' \
    --region 'ROzwyFdZ' \
    --storeId 'Ws597FqC' \
    --appId 'Xz00yVoS' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemByAppId' test.out

#- 390 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'py5IeDPO' \
    --categoryPath '0zgm7RCb' \
    --features 'andL85PS' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --language 'uVxUUYt0' \
    --limit '44' \
    --offset '37' \
    --region 'vGdK2QAm' \
    --sortBy '["createdAt", "name:desc", "displayOrder:desc"]' \
    --storeId 'WDPvyDh8' \
    --tags 'u9hM1xj0' \
    > test.out 2>&1
eval_tap $? 390 'PublicQueryItems' test.out

#- 391 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '9UXYokTJ' \
    --region 'XMCsJF0Z' \
    --storeId 'XvgGddVE' \
    --sku 'lkh3YwbE' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetItemBySku' test.out

#- 392 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'v0iDNXeR' \
    --storeId 'wdRPPWlw' \
    --itemIds 'GlNZKicP' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetEstimatedPrice' test.out

#- 393 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '0flY8IYt' \
    --region 'JMFrvPzz' \
    --storeId 'pNvPBloY' \
    --itemIds 'fuUOR2Qw' \
    > test.out 2>&1
eval_tap $? 393 'PublicBulkGetItems' test.out

#- 394 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["QihWcjaM", "6rGrCfBe", "oFEiY0Ju"]}' \
    > test.out 2>&1
eval_tap $? 394 'PublicValidateItemPurchaseCondition' test.out

#- 395 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'LOOTBOX' \
    --limit '67' \
    --offset '17' \
    --region '6K5nRZq6' \
    --storeId 'dBT0BnGG' \
    --keyword 'Zj2mJHVj' \
    --language '2ZU6JFbV' \
    > test.out 2>&1
eval_tap $? 395 'PublicSearchItems' test.out

#- 396 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId '6CqHJpOH' \
    --namespace $AB_NAMESPACE \
    --language 'mofI8Wfo' \
    --region 'unQt20j8' \
    --storeId 'xn4VGJNu' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetApp' test.out

#- 397 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'NHm3cHbt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 397 'PublicGetItemDynamicData' test.out

#- 398 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'qSauh7V2' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'UitpgWM2' \
    --populateBundle 'true' \
    --region 'FuymwOZX' \
    --storeId 'Z3R0tzoZ' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItem' test.out

#- 399 GetPaymentCustomization
eval_tap 0 399 'GetPaymentCustomization # SKIP deprecated' test.out

#- 400 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "2aoStRe2", "successUrl": "teUKYFpe"}, "paymentOrderNo": "BAF6zhTD", "paymentProvider": "WALLET", "returnUrl": "VI4KUqQF", "ui": "dlpv69z4", "zipCode": "XMRpbasl"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentUrl' test.out

#- 401 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mNoQM7Ap' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetPaymentMethods' test.out

#- 402 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dviL7qm3' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUnpaidPaymentOrder' test.out

#- 403 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xT3rDAfU' \
    --paymentProvider 'STRIPE' \
    --zipCode '3y0OzIiq' \
    --body '{"token": "GTZquB4A"}' \
    > test.out 2>&1
eval_tap $? 403 'Pay' test.out

#- 404 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'tNZEDIim' \
    > test.out 2>&1
eval_tap $? 404 'PublicCheckPaymentOrderPaidStatus' test.out

#- 405 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'eWkiMdR8' \
    > test.out 2>&1
eval_tap $? 405 'GetPaymentPublicConfig' test.out

#- 406 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'cMbvb500' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetQRCode' test.out

#- 407 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'H29qUnkC' \
    --foreinginvoice 'gu9Ozrra' \
    --invoiceId 'i60eRS4R' \
    --payload 'yan6zteJ' \
    --redirectResult 'wJi3BbqF' \
    --resultCode '2dT0aECs' \
    --sessionId 'QKb4tD8W' \
    --status 'yLxcgQqa' \
    --token 'EZqNv5Kj' \
    --type '69M4KEqk' \
    --userId 'prAwWZmV' \
    --orderNo 'aX1VmAF6' \
    --paymentOrderNo 'wGtXl4Ih' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'I9eOPzWs' \
    > test.out 2>&1
eval_tap $? 407 'PublicNormalizePaymentReturnUrl' test.out

#- 408 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'j8ypTugW' \
    --paymentOrderNo 'z08rbccv' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 408 'GetPaymentTaxValue' test.out

#- 409 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'FO93VDZg' \
    > test.out 2>&1
eval_tap $? 409 'GetRewardByCode' test.out

#- 410 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '7bID9FFc' \
    --limit '1' \
    --offset '8' \
    --sortBy '["namespace:desc", "rewardCode", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 410 'QueryRewards1' test.out

#- 411 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Hrgy1fTU' \
    > test.out 2>&1
eval_tap $? 411 'GetReward1' test.out

#- 412 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 412 'PublicListStores' test.out

#- 413 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["yWAcUk2Q", "DQFAHPbd", "3xUvtb0Y"]' \
    --itemIds '["KrPxiZow", "7438S8XA", "HWIiuRxX"]' \
    --skus '["X9TEARkH", "EDWEG1hl", "IJf1wLcS"]' \
    > test.out 2>&1
eval_tap $? 413 'PublicExistsAnyMyActiveEntitlement' test.out

#- 414 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'WctB57dl' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 415 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'oBeFcLrK' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 416 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'lDlzcUYY' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 417 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["stlqGbU9", "aydL8179", "SYstJTLx"]' \
    --itemIds '["dPguWaNy", "KNA4uCfa", "CMD9FXCg"]' \
    --skus '["NRdatBbx", "OsTylb4S", "s7FDfrvk"]' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetEntitlementOwnershipToken' test.out

#- 418 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "f08giTer", "language": "QIu_aw", "region": "sN56oQx1"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncTwitchDropsEntitlement' test.out

#- 419 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'MxZAdpkV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 419 'PublicGetMyWallet' test.out

#- 420 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '8qzrp4qi' \
    --body '{"epicGamesJwtToken": "SNJQgivd"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncEpicGameDLC' test.out

#- 421 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'llt8V59P' \
    > test.out 2>&1
eval_tap $? 421 'SyncOculusDLC' test.out

#- 422 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'y786KLlG' \
    --body '{"serviceLabel": 18}' \
    > test.out 2>&1
eval_tap $? 422 'PublicSyncPsnDlcInventory' test.out

#- 423 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Mp5NCDrb' \
    --body '{"serviceLabels": [64, 24, 70]}' \
    > test.out 2>&1
eval_tap $? 423 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 424 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'NLohyYcq' \
    --body '{"appId": "E2a9mBxz", "steamId": "8ftXgFAd"}' \
    > test.out 2>&1
eval_tap $? 424 'SyncSteamDLC' test.out

#- 425 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'C0cYNBxk' \
    --body '{"xstsToken": "5NXe2Gur"}' \
    > test.out 2>&1
eval_tap $? 425 'SyncXboxDLC' test.out

#- 426 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'OV06YbaW' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'Tki6hinN' \
    --features '["vr0gGwI6", "FL8k91yV", "NVOH3ulC"]' \
    --itemId '["x6EMA0aM", "Rzh99UIK", "yRa235B3"]' \
    --limit '56' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlements' test.out

#- 427 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'IjimOHrQ' \
    --appId 'Gbke9LJI' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserAppEntitlementByAppId' test.out

#- 428 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'QuDaHONg' \
    --limit '60' \
    --offset '45' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 428 'PublicQueryUserEntitlementsByAppType' test.out

#- 429 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'Q3kql5xP' \
    --availablePlatformOnly 'true' \
    --ids '["SJYKM6UY", "WzB3oFHw", "16C9dWOF"]' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserEntitlementsByIds' test.out

#- 430 PublicGetUserEntitlementByItemId
eval_tap 0 430 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 431 PublicGetUserEntitlementBySku
eval_tap 0 431 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 432 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'YXqAQevu' \
    --endDate 'MHqliEi1' \
    --entitlementClazz 'ENTITLEMENT' \
    --limit '62' \
    --offset '93' \
    --startDate 'ChTYeY9i' \
    > test.out 2>&1
eval_tap $? 432 'PublicUserEntitlementHistory' test.out

#- 433 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Q5H2Tdvx' \
    --appIds '["Rc2TVhnb", "KmKgQxI2", "gXCvZcRR"]' \
    --itemIds '["kcbEyJGx", "lokNbOWj", "ceUaewz1"]' \
    --skus '["IysWCJOG", "YOXXqfFH", "BNi2bcEK"]' \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyUserActiveEntitlement' test.out

#- 434 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PnN7luBM' \
    --appId 'KdgyUoMZ' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'osAXn2h3' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'L3Zw6q7s' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 436 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'pV4nojGa' \
    --ids '["aukkCddz", "4BNIfFdO", "ebzwz66J"]' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 437 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'oYOvaL4e' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'f9jg2euu' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 438 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'TYkCMTNP' \
    --namespace $AB_NAMESPACE \
    --userId 'Cx97zTqK' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlement' test.out

#- 439 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'YpZXqTNC' \
    --namespace $AB_NAMESPACE \
    --userId 'uZOd21Gf' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["EB3qCOoK", "isuTiNVO", "eR7n7BY6"], "requestId": "c70MvkYI", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 439 'PublicConsumeUserEntitlement' test.out

#- 440 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'nLXFiluM' \
    --namespace $AB_NAMESPACE \
    --userId 'FZ1KSyri' \
    --body '{"requestId": "Dcp1c0xH", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSellUserEntitlement' test.out

#- 441 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'XyCB2xjj' \
    --namespace $AB_NAMESPACE \
    --userId 'z4vzbIck' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSplitUserEntitlement' test.out

#- 442 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'uiLLVa1q' \
    --namespace $AB_NAMESPACE \
    --userId 'p2jNMfeJ' \
    --body '{"entitlementId": "4YHOFnGY", "metadata": {"operationSource": "INVENTORY"}, "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 442 'PublicTransferUserEntitlement' test.out

#- 443 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'phegXGd2' \
    --body '{"code": "84bECdnL", "language": "sK", "region": "Nm9Telt6"}' \
    > test.out 2>&1
eval_tap $? 443 'PublicRedeemCode' test.out

#- 444 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xhO14zde' \
    --body '{"excludeOldTransactions": false, "language": "CY", "productId": "ETob8YHd", "receiptData": "bMnBPCGx", "region": "9fyC0f10", "transactionId": "LdS1MWOW"}' \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillAppleIAPItem' test.out

#- 445 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'oyy0iY9e' \
    --body '{"epicGamesJwtToken": "oZrV7Bpr"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncEpicGamesInventory' test.out

#- 446 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'n2oe22gK' \
    --body '{"autoAck": true, "autoConsume": false, "language": "Hulz_Hf", "orderId": "yxBLUWgG", "packageName": "g5WVLz1k", "productId": "Ou2j3099", "purchaseTime": 22, "purchaseToken": "FjEuAjsn", "region": "ZJiVCsPa", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 446 'PublicFulfillGoogleIAPItem' test.out

#- 447 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'U7UJ6e2p' \
    > test.out 2>&1
eval_tap $? 447 'SyncOculusConsumableEntitlements' test.out

#- 448 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'UMYOv43r' \
    --body '{"currencyCode": "1vlbebad", "price": 0.117464164730813, "productId": "nxbtBjEW", "serviceLabel": 86}' \
    > test.out 2>&1
eval_tap $? 448 'PublicReconcilePlayStationStore' test.out

#- 449 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'tp46kXMk' \
    --body '{"currencyCode": "zrAEWg8L", "price": 0.4448083081690126, "productId": "1y3QjY2C", "serviceLabels": [89, 36, 14]}' \
    > test.out 2>&1
eval_tap $? 449 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 450 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'WyTzLhP3' \
    --body '{"appId": "vCkY4aYg", "currencyCode": "mNzqwZm6", "language": "mix", "price": 0.14703881092984195, "productId": "EMwWuAn2", "region": "FL893KGL", "steamId": "NzTy6WtM"}' \
    > test.out 2>&1
eval_tap $? 450 'SyncSteamInventory' test.out

#- 451 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    --userId 'H8awJfY6' \
    --activeOnly 'false' \
    --groupId 'gFrHZ8UD' \
    --limit '99' \
    --offset '100' \
    --productId 'H4jw3rw7' \
    > test.out 2>&1
eval_tap $? 451 'PublicQueryUserThirdPartySubscription' test.out

#- 452 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'jktGZwXD' \
    --body '{"gameId": "2ZeRAtgB", "language": "yYh", "region": "TPV5j30O"}' \
    > test.out 2>&1
eval_tap $? 452 'SyncTwitchDropsEntitlement1' test.out

#- 453 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'bZ7RxFji' \
    --body '{"currencyCode": "EbSaN999", "price": 0.8264236143119412, "productId": "DP3fxgoH", "xstsToken": "0qvUAo8i"}' \
    > test.out 2>&1
eval_tap $? 453 'SyncXboxInventory' test.out

#- 454 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '2zxYwJlB' \
    --discounted 'true' \
    --itemId 'dYsHMWcM' \
    --limit '96' \
    --offset '30' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 454 'PublicQueryUserOrders' test.out

#- 455 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dwIXMBUR' \
    --body '{"currencyCode": "5BvtCfuw", "discountCodes": ["CmOO7r3b", "QegIR3en", "WB0UkJk3"], "discountedPrice": 64, "ext": {"k7vO0sV2": {}, "bTV16Uj3": {}, "rAzHbWSe": {}}, "itemId": "QgS5HA0p", "language": "Nyam-mG", "price": 25, "quantity": 32, "region": "JAWjSt2d", "returnUrl": "mODxlFjh", "sectionId": "i9mR3m3P"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicCreateUserOrder' test.out

#- 456 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'ZBN96q7K' \
    --body '{"currencyCode": "O2NfwsHj", "discountCodes": ["rJfnYWL7", "llyOQlyo", "yOHsjpkc"], "discountedPrice": 56, "itemId": "ps3w1gFa", "price": 96, "quantity": 78}' \
    > test.out 2>&1
eval_tap $? 456 'PublicPreviewOrderPrice' test.out

#- 457 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'F4ARJqkR' \
    --userId 'X9cr6frZ' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrder' test.out

#- 458 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'EnEX0udi' \
    --userId 'hYJmYKpl' \
    > test.out 2>&1
eval_tap $? 458 'PublicCancelUserOrder' test.out

#- 459 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'JIFs89JS' \
    --userId 'L7KjaOxG' \
    > test.out 2>&1
eval_tap $? 459 'PublicGetUserOrderHistories' test.out

#- 460 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'SLfgTdRA' \
    --userId 'KosQQhGE' \
    > test.out 2>&1
eval_tap $? 460 'PublicDownloadUserOrderReceipt' test.out

#- 461 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'y2RfYUhv' \
    > test.out 2>&1
eval_tap $? 461 'PublicGetPaymentAccounts' test.out

#- 462 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'hMtaO65W' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'Bv758fv6' \
    > test.out 2>&1
eval_tap $? 462 'PublicDeletePaymentAccount' test.out

#- 463 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '97YhLLaL' \
    --autoCalcEstimatedPrice 'false' \
    --language 'bxeeijqT' \
    --region 'cGi1FoQ1' \
    --storeId 'H7hjQtTu' \
    --viewId 'Pdy5iKIs' \
    > test.out 2>&1
eval_tap $? 463 'PublicListActiveSections' test.out

#- 464 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'jotB1jAe' \
    --chargeStatus 'SETUP' \
    --itemId 'RPLonHf3' \
    --limit '95' \
    --offset '25' \
    --sku 'yBcWwzXS' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserSubscriptions' test.out

#- 465 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'y5k7BNVz' \
    --body '{"currencyCode": "IHGU2D7G", "itemId": "5jd9wFbn", "language": "YvTQ-QJyw", "region": "mxJ2OliY", "returnUrl": "GC4wIS77", "source": "aRUp1vCg"}' \
    > test.out 2>&1
eval_tap $? 465 'PublicSubscribeSubscription' test.out

#- 466 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HrkEuD7E' \
    --itemId 'xXaNyyqv' \
    > test.out 2>&1
eval_tap $? 466 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 467 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Gp9bWzh6' \
    --userId 'Wj7M9oH3' \
    > test.out 2>&1
eval_tap $? 467 'PublicGetUserSubscription' test.out

#- 468 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UGQThN7O' \
    --userId 'bgbrx9rl' \
    > test.out 2>&1
eval_tap $? 468 'PublicChangeSubscriptionBillingAccount' test.out

#- 469 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'no47kNQc' \
    --userId '1KxA4XdY' \
    --body '{"immediate": true, "reason": "XohAM3H4"}' \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelSubscription' test.out

#- 470 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'R2Ybgh01' \
    --userId 'bZp7qPrO' \
    --excludeFree 'false' \
    --limit '76' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserSubscriptionBillingHistories' test.out

#- 471 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'j9hnWiWP' \
    --language 'KXln7mij' \
    --storeId '7uDReA19' \
    > test.out 2>&1
eval_tap $? 471 'PublicListViews' test.out

#- 472 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'M51UPxls' \
    --namespace $AB_NAMESPACE \
    --userId 'xnZ2gqS0' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetWallet' test.out

#- 473 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ZgLqM9bO' \
    --namespace $AB_NAMESPACE \
    --userId 'gYb78Wx7' \
    --limit '15' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 473 'PublicListUserWalletTransactions' test.out

#- 474 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetMyDLCContent' test.out

#- 475 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'bjBdgCes' \
    --limit '16' \
    --offset '0' \
    --startTime 'JEbOo0WZ' \
    --state 'FULFILL_FAILED' \
    --transactionId 'dOLdZS3k' \
    --userId 'rNQ3dni7' \
    > test.out 2>&1
eval_tap $? 475 'QueryFulfillments' test.out

#- 476 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'BmWb6nFo' \
    --baseAppId 'Isp03Kri' \
    --categoryPath 'OFC1B2CX' \
    --features 'CD8fhOVB' \
    --includeSubCategoryItem 'false' \
    --itemName 'ZalboOvr' \
    --itemStatus 'INACTIVE' \
    --itemType '["EXTENSION", "OPTIONBOX", "COINS"]' \
    --limit '39' \
    --offset '32' \
    --region 'Tz4KQOOh' \
    --sectionExclusive 'false' \
    --sortBy '["name:desc", "displayOrder"]' \
    --storeId 'L3BanBfT' \
    --tags '9GQKKKIY' \
    --targetNamespace 'Gl8Tsfoi' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 476 'QueryItemsV2' test.out

#- 477 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'meXRsqff' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 477 'ImportStore1' test.out

#- 478 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'CS5VUKCG' \
    --body '{"itemIds": ["wQD8BYF9", "i7daIxnu", "E02W6DMw"]}' \
    > test.out 2>&1
eval_tap $? 478 'ExportStore1' test.out

#- 479 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'L7ZYz6Qw' \
    --body '{"entitlementCollectionId": "HKzyDmKe", "entitlementOrigin": "Xbox", "metadata": {"E1KiMd3V": {}, "JEzQD3pt": {}, "6A7yNNHV": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "GvF9iB6Z", "namespace": "S6ppbNi0"}, "item": {"itemId": "CllIpJmD", "itemName": "xFpuf7ds", "itemSku": "JdOcmvZ5", "itemType": "3II0q8OS"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "MKcU091q", "namespace": "Q5dHa9qZ"}, "item": {"itemId": "LJ8HNCtM", "itemName": "WgduixIJ", "itemSku": "91fiv3fX", "itemType": "xHZvrtLE"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "sDHHZx84", "namespace": "a7y8wYI4"}, "item": {"itemId": "F7TCszCZ", "itemName": "zfrtDxUj", "itemSku": "RQWpK1pt", "itemType": "O3tzg0U4"}, "quantity": 26, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "s5oTuC60"}' \
    > test.out 2>&1
eval_tap $? 479 'FulfillRewardsV2' test.out

#- 480 FulfillItems
eval_tap 0 480 'FulfillItems # SKIP deprecated' test.out

#- 481 RetryFulfillItems
eval_tap 0 481 'RetryFulfillItems # SKIP deprecated' test.out

#- 482 RevokeItems
eval_tap 0 482 'RevokeItems # SKIP deprecated' test.out

#- 483 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'KdXZGWLN' \
    --body '{"transactionId": "MfKNk3Ll"}' \
    > test.out 2>&1
eval_tap $? 483 'V2PublicFulfillAppleIAPItem' test.out

#- 484 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'ZBdzL1E4' \
    --userId 'jh6d4Gdz' \
    --body '{"items": [{"duration": 59, "endDate": "1991-08-18T00:00:00Z", "entitlementCollectionId": "Z1KwPrn7", "entitlementOrigin": "GooglePlay", "itemId": "hHqBvUtG", "itemSku": "wxDO74KN", "language": "ClvVmKBG", "metadata": {"Hqhx2up2": {}, "3CiJ7B2E": {}, "qx69l43E": {}}, "orderNo": "d6bsG4H2", "origin": "Oculus", "quantity": 81, "region": "2LXJNjMl", "source": "OTHER", "startDate": "1978-06-20T00:00:00Z", "storeId": "Cwp0EudG"}, {"duration": 50, "endDate": "1978-02-28T00:00:00Z", "entitlementCollectionId": "EhMcHVlp", "entitlementOrigin": "Oculus", "itemId": "IuVSIX7K", "itemSku": "tKVx19TV", "language": "Lo2m238d", "metadata": {"wZrPXcve": {}, "ZsxerRuU": {}, "vXltRIu2": {}}, "orderNo": "U8H6l0qR", "origin": "GooglePlay", "quantity": 46, "region": "0WBVQcem", "source": "ACHIEVEMENT", "startDate": "1996-04-07T00:00:00Z", "storeId": "Is4wPTEC"}, {"duration": 37, "endDate": "1976-05-11T00:00:00Z", "entitlementCollectionId": "8hUPuing", "entitlementOrigin": "System", "itemId": "EMdFQA2o", "itemSku": "eVdNpWwn", "language": "l9KI2ZSD", "metadata": {"b1T5yJ5P": {}, "kggfFFJf": {}, "xr8GCLP3": {}}, "orderNo": "Ol5sG02Z", "origin": "Nintendo", "quantity": 37, "region": "JYmMSAq2", "source": "DLC", "startDate": "1995-05-13T00:00:00Z", "storeId": "FmbB716R"}]}' \
    > test.out 2>&1
eval_tap $? 484 'FulfillItemsV3' test.out

#- 485 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'PMaS7afU' \
    --userId 'y30lK3KK' \
    > test.out 2>&1
eval_tap $? 485 'RetryFulfillItemsV3' test.out

#- 486 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'GI2pkwRv' \
    --userId 'kpPaBYUs' \
    > test.out 2>&1
eval_tap $? 486 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE