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
echo "1..509"

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
    --id '9ctu5bGa' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'gq4HQhZo' \
    --body '{"grantDays": "IQAJLXyt"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'MNSwCXad' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'j4945CXs' \
    --body '{"grantDays": "c1NXzL9w"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "IKntDGHr", "dryRun": false, "fulfillmentUrl": "mrhT2QUI", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "qprhYMU1"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'NXgiei6h' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'QYTiJRVD' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'RUHx0oSv' \
    --body '{"clazz": "C9inv19t", "dryRun": false, "fulfillmentUrl": "i7CeCv3a", "purchaseConditionUrl": "k8TA3eoi"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'A1SqtdnU' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'Q56ZavAz' \
    --offset '34' \
    --tag 'eaJDYFtM' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0DCo4dIX", "discountConfig": {"categories": [{"categoryPath": "lG7iBEcy", "includeSubCategories": false}, {"categoryPath": "oMbZTSuy", "includeSubCategories": true}, {"categoryPath": "UitFtOoA", "includeSubCategories": true}], "currencyCode": "5995nfG5", "currencyNamespace": "eQQOfrjs", "discountAmount": 56, "discountPercentage": 6, "discountType": "AMOUNT", "items": [{"itemId": "EKSvyFLH", "itemName": "vlEWjIhc"}, {"itemId": "e4tfcbrY", "itemName": "u6WFCUOE"}, {"itemId": "0li2fUdz", "itemName": "S98Sw9lt"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 82, "itemId": "xbm8E5pM", "itemName": "EyaxmS3V", "quantity": 7}, {"extraSubscriptionDays": 12, "itemId": "pykWzfrd", "itemName": "fsA9YBpI", "quantity": 88}, {"extraSubscriptionDays": 8, "itemId": "jCArNVfo", "itemName": "A9SDDx2v", "quantity": 15}], "maxRedeemCountPerCampaignPerUser": 99, "maxRedeemCountPerCode": 19, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 52, "name": "ETBAjiBB", "redeemEnd": "1996-12-14T00:00:00Z", "redeemStart": "1998-11-24T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["W8YsNM6G", "yQ6bdqlf", "7exLZxSW"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '2l6qN4iA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'Vcklqz7r' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ufSBi6tQ", "discountConfig": {"categories": [{"categoryPath": "yWLgSAP9", "includeSubCategories": false}, {"categoryPath": "YNZ5nJfq", "includeSubCategories": true}, {"categoryPath": "NY3ttXSy", "includeSubCategories": true}], "currencyCode": "iQboYT95", "currencyNamespace": "KwPmzljg", "discountAmount": 76, "discountPercentage": 42, "discountType": "PERCENTAGE", "items": [{"itemId": "TVWx2yKN", "itemName": "EcpRWNdc"}, {"itemId": "vgH4A7Vf", "itemName": "KUyX7sJO"}, {"itemId": "JmN2qmfo", "itemName": "13ub5lLY"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 5, "itemId": "9gbT1rCh", "itemName": "HXPuXaCi", "quantity": 31}, {"extraSubscriptionDays": 70, "itemId": "YPSLMcsl", "itemName": "jxc31ptV", "quantity": 12}, {"extraSubscriptionDays": 50, "itemId": "3dqC2xfN", "itemName": "4IAuCFHr", "quantity": 13}], "maxRedeemCountPerCampaignPerUser": 38, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 25, "maxSaleCount": 75, "name": "nLH21vg9", "redeemEnd": "1979-07-19T00:00:00Z", "redeemStart": "1999-03-11T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["OiEmNPjk", "IjoilTBW", "0MCMmS34"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'cXuYp0vt' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "xeNyTppc", "oldName": "HGq1a13g"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'WYeLZJMQ' \
    --namespace $AB_NAMESPACE \
    --batchName 'GeTaxOX2' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'zPDwrMPY' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["DLC", "CAMPAIGN"]}' \
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
    --body '{"appConfig": {"appName": "8kcA4TDi"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ks53T3ie"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "ispdi3cn"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "m2Mj9Ejj"}, "extendType": "CUSTOM"}' \
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
    --storeId 'gqKV7RWL' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'c9lzyrUL' \
    --body '{"categoryPath": "EU5Py0J0", "localizationDisplayNames": {"6IPFh62x": "EFWGkIUD", "XWEvSnaW": "eRuahdVw", "KljzyphA": "kWqHCX83"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'k7Jxq0vE' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'xsaCNhLA' \
    --namespace $AB_NAMESPACE \
    --storeId 'TvOQkQmD' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'nwP8DXoR' \
    --namespace $AB_NAMESPACE \
    --storeId '6LQ0eVQA' \
    --body '{"localizationDisplayNames": {"2GbuZOqw": "Go6Y0GuE", "1eS1mNbn": "YdD1NSL8", "642TaU31": "dXqa8DwS"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Bznac6VL' \
    --namespace $AB_NAMESPACE \
    --storeId '0zvzFWsr' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'z5LxJ3s3' \
    --namespace $AB_NAMESPACE \
    --storeId '77nCW1is' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '4trMM56Z' \
    --namespace $AB_NAMESPACE \
    --storeId 'KxdgfrvT' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'oSYSRgmL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'HMT4bHfW' \
    --batchNo '[8, 27, 50]' \
    --code 'osmstyIL' \
    --limit '88' \
    --offset '14' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'KJE70Nck' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "gVWXKd4i", "codeValue": "wviN56gl", "quantity": 42}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'qpfO6ti6' \
    --namespace $AB_NAMESPACE \
    --batchName 'ZTT1jtlv' \
    --batchNo '[17, 15, 11]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'sPHQ8tSr' \
    --namespace $AB_NAMESPACE \
    --batchName 'eOC3rFL5' \
    --batchNo '[93, 78, 42]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'F5Ivv2VO' \
    --namespace $AB_NAMESPACE \
    --batchName 'rGjqXfUx' \
    --batchNo '[12, 8, 61]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'PnrodfUL' \
    --namespace $AB_NAMESPACE \
    --code '64c41eiO' \
    --limit '37' \
    --offset '81' \
    --userId 'PnB0ISUc' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'AyFSYEEE' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'WrQ1qPTW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'vgxDcDqO' \
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
    --body '{"currencyCode": "tXKHxpXe", "currencySymbol": "xOpZAqik", "currencyType": "REAL", "decimals": 97, "localizationDescriptions": {"70XtFpZZ": "lj8F5F0U", "kzNyeWef": "DFzhjoFn", "QTgPFbet": "NgvwKpRi"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '4ZldnsY9' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"UbPyhEY0": "wUX5A8Mw", "twdyjLJK": "369W3czl", "aTQ6xIZw": "QoYWtXEG"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'UY1t5bM1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'iNsxfRNK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '03qVhLH4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'gnKdRFeZ' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'AoYaPFfh' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "dzQpxfzN", "rewards": [{"currency": {"currencyCode": "1oEjIkUd", "namespace": "8SuADtUS"}, "item": {"itemId": "AeuK6nc7", "itemName": "jlRa8Of4", "itemSku": "SbPPvEun", "itemType": "uEnBiSwo"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "xrJAMUoW", "namespace": "OME2I4y6"}, "item": {"itemId": "XScXr5pM", "itemName": "H84y8Hmo", "itemSku": "pDuBp6Za", "itemType": "FcQ0eGH8"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "E1ePkhbj", "namespace": "93kXYXlf"}, "item": {"itemId": "CZMJll5w", "itemName": "z1xqLKf0", "itemSku": "7k8HRwL3", "itemType": "Tcb8dTQQ"}, "quantity": 29, "type": "ITEM"}], "rvn": 57}, {"autoUpdate": false, "enableRevocation": false, "id": "t6hKkmnM", "rewards": [{"currency": {"currencyCode": "g9t2XmII", "namespace": "Lr44GNt5"}, "item": {"itemId": "8IoqOUeP", "itemName": "Q8RNZpwN", "itemSku": "IJxiZNn7", "itemType": "wyr9cupD"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "wfq5L21I", "namespace": "iwBFBk3C"}, "item": {"itemId": "JtZfAafr", "itemName": "6CBIHjRm", "itemSku": "7kYOjBEB", "itemType": "wFr10VOZ"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "m2cOrTLj", "namespace": "FdQIBTP5"}, "item": {"itemId": "fHBm9U9e", "itemName": "CATQBqoS", "itemSku": "f5t1AlHV", "itemType": "E2BdH4Oh"}, "quantity": 26, "type": "CURRENCY"}], "rvn": 75}, {"autoUpdate": false, "enableRevocation": false, "id": "5Loj6c9h", "rewards": [{"currency": {"currencyCode": "olFjFtQf", "namespace": "nX04k6bo"}, "item": {"itemId": "uUgK8iNV", "itemName": "Iqs9v8rA", "itemSku": "lcMHXaBn", "itemType": "yzCLrC0g"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "ju9bMpxO", "namespace": "QnXYiMWb"}, "item": {"itemId": "12cc3v0C", "itemName": "nOmacxvJ", "itemSku": "kzFKajgv", "itemType": "2CctTD05"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "DoHdVCm1", "namespace": "kRADfJNC"}, "item": {"itemId": "lYqHskFG", "itemName": "xTowsAwI", "itemSku": "QF7cVxOt", "itemType": "7jT25tx5"}, "quantity": 49, "type": "CURRENCY"}], "rvn": 14}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"XkRtYX8d": "KrcQuHcV", "WpEWgbn3": "p5lwvPM5", "vgxCxpL9": "7ig40U05"}}, {"platform": "STEAM", "platformDlcIdMap": {"ykqxXEmg": "GL6eGXtP", "HkordHox": "HC2iUPWY", "vpsYJ9Pd": "reI2Wgjs"}}, {"platform": "OCULUS", "platformDlcIdMap": {"XJ3F2uSf": "v6fg0rxa", "uLu6fPdK": "HbMpLe3Q", "o9BR5Rn3": "kTGZjdQ7"}}]}' \
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
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'APP' \
    --entitlementName 's744Jfwi' \
    --itemId '["F3ZWFlGG", "lb1n7VHz", "KqSFTvjs"]' \
    --limit '77' \
    --offset '80' \
    --origin 'System' \
    --userId 'OH5heUQn' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["a8wpi6n9", "moerYxFN", "NiOzA3Md"]' \
    --limit '1' \
    --offset '62' \
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
    --body '{"entitlementGrantList": [{"collectionId": "1V5NskRL", "endDate": "1991-09-11T00:00:00Z", "grantedCode": "BYNyV5o5", "itemId": "KDmZMqST", "itemNamespace": "ivF6Vkp0", "language": "ufrG_653", "metadata": {"oQl9AAFP": {}, "qJi9yJPg": {}, "xXWmmNdn": {}}, "origin": "Nintendo", "quantity": 8, "region": "B2AEKCQm", "source": "ACHIEVEMENT", "startDate": "1995-11-21T00:00:00Z", "storeId": "PWxZm7K3"}, {"collectionId": "DDXL6nJk", "endDate": "1993-02-12T00:00:00Z", "grantedCode": "4Yhhe7mn", "itemId": "11KltTrS", "itemNamespace": "H21Fo7xY", "language": "PG-uVdR_UH", "metadata": {"yCY5wWXN": {}, "bKXU9fzU": {}, "VRDWJzjO": {}}, "origin": "Nintendo", "quantity": 19, "region": "pRnCNRx7", "source": "PURCHASE", "startDate": "1998-05-31T00:00:00Z", "storeId": "2a0QViaQ"}, {"collectionId": "r6qP0ffA", "endDate": "1979-08-13T00:00:00Z", "grantedCode": "QHg6Mmux", "itemId": "NzdJJfMg", "itemNamespace": "acw5QZia", "language": "Wehe_NDSB_888", "metadata": {"kUl4lTJf": {}, "vgdL8loM": {}, "GFyfutAg": {}}, "origin": "System", "quantity": 68, "region": "CvTmnJvK", "source": "GIFT", "startDate": "1998-03-29T00:00:00Z", "storeId": "WcnwODmI"}], "userIds": ["hfYAj5pu", "d1j2IdLg", "J0EXToM4"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["h3MDu2FY", "g6XxFImK", "LJmHKO1q"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'iHgiJXkz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '15' \
    --status 'SUCCESS' \
    --userId 'pe9ENHqw' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'PVKHl74e' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'EUXGBqfz' \
    --limit '84' \
    --offset '65' \
    --startTime 'Rj0KgVd5' \
    --status 'INIT' \
    --userId '0keW6DwU' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "y5xLLS9i", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 68, "clientTransactionId": "xwd1lOts"}, {"amountConsumed": 18, "clientTransactionId": "9BLamJwJ"}, {"amountConsumed": 70, "clientTransactionId": "u7IFDVUa"}], "entitlementId": "sT2bjVrG", "usageCount": 34}, {"clientTransaction": [{"amountConsumed": 35, "clientTransactionId": "yE3MyrQo"}, {"amountConsumed": 34, "clientTransactionId": "Tv1MUdcZ"}, {"amountConsumed": 37, "clientTransactionId": "d8xAlw7X"}], "entitlementId": "yuBk9dsu", "usageCount": 42}, {"clientTransaction": [{"amountConsumed": 67, "clientTransactionId": "JPzEhqni"}, {"amountConsumed": 8, "clientTransactionId": "8UID3anv"}, {"amountConsumed": 31, "clientTransactionId": "2DiX9nN3"}], "entitlementId": "3O19M5iO", "usageCount": 38}], "purpose": "rlDU8Bwo"}, "originalTitleName": "pYupEKvO", "paymentProductSKU": "VCeTUnkD", "purchaseDate": "S0xi1fE8", "sourceOrderItemId": "zBqUv66f", "titleName": "MKZRA05m"}, "eventDomain": "khiqDZa6", "eventSource": "z8pZ0UDz", "eventType": "3Z9SmFi2", "eventVersion": 72, "id": "XX38efWk", "timestamp": "qfoAf3Sr"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "9SItLX9P", "eventState": "jZhcERcJ", "lineItemId": "WB3AlciI", "orderId": "oneCw1Bj", "productId": "U18Y4fKq", "productType": "eTqKFbUn", "purchasedDate": "XeMhoI4V", "sandboxId": "BPqEHnYX", "skuId": "lafCKcuH", "subscriptionData": {"consumedDurationInDays": 9, "dateTime": "LHt2qAfV", "durationInDays": 76, "recurrenceId": "mHhsMZtE"}}, "datacontenttype": "IN4JkYg8", "id": "cIaYibfV", "source": "YV7T78Eb", "specVersion": "4xv16g4T", "subject": "QryCyJ6f", "time": "b5Y76IaV", "traceparent": "BGhyGyCW", "type": "vY0n5Jsw"}' \
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
    --body '{"appAppleId": 43, "bundleId": "1uS9SLzg", "issuerId": "nulHgRJU", "keyId": "Ndm7IS7r", "password": "2edSGXua", "version": "V2"}' \
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
    --body '{"sandboxId": "JTO9ttcQ"}' \
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
    --body '{"applicationName": "LUudLFpu", "notificationTokenAudience": "OJs8fxQq", "notificationTokenEmail": "3HVxlqsv", "packageName": "czKklesc", "serviceAccountId": "rBRlZIba"}' \
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
    --body '{"data": [{"itemIdentity": "4jc9F6t0", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"02WPFNAo": "w1bhmrZ9", "aQQPB1tV": "t5bZbI3T", "3zfkXmLL": "tGmshh8r"}}, {"itemIdentity": "K6rgkcQH", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ETR8zV7i": "zFtmVVZs", "Hm4nVx07": "jcPqMzx8", "qTJpNcRF": "JCN1Y29J"}}, {"itemIdentity": "J0JqRGJw", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"2KHb3gny": "M2frxAvR", "Ju6V3U9I": "ROAveFEd", "OFaPUJ7B": "5ZEmorwp"}}]}' \
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
    --body '{"appId": "nYTetZaN", "appSecret": "JdF2pHZm", "webhookVerifyToken": "287usSWu"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 ListOculusSubscriptionGroups
samples/cli/sample-apps Platform listOculusSubscriptionGroups \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'ListOculusSubscriptionGroups' test.out

#- 94 CreateOculusSubscriptionGroup
samples/cli/sample-apps Platform createOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"sku": "yROjLbl2"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'MPwhS4Ta' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'CisEIlg3' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "49pQE1JQ", "sku": "uFEHrMB0"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'MojYYyL9' \
    > test.out 2>&1
eval_tap $? 98 'DeleteOculusSubscriptionTier' test.out

#- 99 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'GetPlayStationIAPConfig' test.out

#- 100 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "M71KxPr1", "backOfficeServerClientSecret": "VALf0GQH", "enableStreamJob": true, "environment": "szSeFcCi", "streamName": "sPRLCaZU", "streamPartnerName": "vYIjqHjl"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdatePlaystationIAPConfig' test.out

#- 101 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'DeletePlaystationIAPConfig' test.out

#- 102 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'ValidateExistedPlaystationIAPConfig' test.out

#- 103 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "5XKl0LGs", "backOfficeServerClientSecret": "dU0CUXCh", "enableStreamJob": false, "environment": "d7blbxZv", "streamName": "aqyrEsrD", "streamPartnerName": "mmswWrJJ"}' \
    > test.out 2>&1
eval_tap $? 103 'ValidatePlaystationIAPConfig' test.out

#- 104 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'GetSteamIAPConfig' test.out

#- 105 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "KRTPp0jz", "env": "SANDBOX", "publisherAuthenticationKey": "hbCsZnmw", "syncMode": "TRANSACTION"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateSteamIAPConfig' test.out

#- 106 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 106 'DeleteSteamIAPConfig' test.out

#- 107 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetTwitchIAPConfig' test.out

#- 108 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "pP6smpF6", "clientSecret": "zAUBb2qK", "organizationId": "A909ebHh"}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateTwitchIAPConfig' test.out

#- 109 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 109 'DeleteTwitchIAPConfig' test.out

#- 110 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetXblIAPConfig' test.out

#- 111 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": true, "entraAppClientId": "MbHzgqDr", "entraAppClientSecret": "ZW4Ur6jo", "entraTenantId": "DxblREHk", "relyingPartyCert": "d13S5u3o"}' \
    > test.out 2>&1
eval_tap $? 111 'UpdateXblIAPConfig' test.out

#- 112 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'DeleteXblAPConfig' test.out

#- 113 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'oRfqYRMP' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '6yvuXnIy' \
    --externalId '3n56Ij04' \
    --limit '46' \
    --offset '92' \
    --source 'STEAM' \
    --startDate 'h0bmLiZt' \
    --status 'IGNORED' \
    --type '1AYkExz5' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '49' \
    --orderId 'DkOIN8lw' \
    --steamId '5rGJG4cn' \
    > test.out 2>&1
eval_tap $? 115 'QueryAbnormalTransactions' test.out

#- 116 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetSteamJobInfo' test.out

#- 117 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "LIVE", "lastTime": "1974-10-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'P4ftxu87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '75' \
    --orderId 'dlePlGek' \
    --processStatus 'ERROR' \
    --steamId 'HrvFeKNZ' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'w7qUelUq' \
    --limit '64' \
    --offset '54' \
    --platform 'XBOX' \
    --productId 'DvPsUtNK' \
    --userId 'BYQEASnk' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'dLQNXrZM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'arossJgB' \
    --feature 'GnVfng9d' \
    --itemId 'QpDRrH17' \
    --itemType 'SUBSCRIPTION' \
    --startTime 'AH56M6Ni' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'c7Xu8y91' \
    --feature 'j2J3PX1Y' \
    --itemId 'S9IwAHwq' \
    --itemType 'LOOTBOX' \
    --startTime 'BCGAW30O' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'GHxUyr6s' \
    --body '{"categoryPath": "TBAsNRBg", "targetItemId": "iILZVI9P", "targetNamespace": "TORtXP2p"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'o88jZ0KQ' \
    --body '{"appId": "LuZi1j7F", "appType": "SOFTWARE", "baseAppId": "RNXS3BqS", "boothName": "1CxbJAF4", "categoryPath": "YEvLljZF", "clazz": "weS2o0HA", "displayOrder": 84, "entitlementType": "DURABLE", "ext": {"K9eRPlp5": {}, "3q82v0hD": {}, "nKfdj47N": {}}, "features": ["MH69H7mc", "a6ki455C", "2dg2IDSq"], "flexible": false, "images": [{"as": "6GtKYLvE", "caption": "ijSor1YQ", "height": 78, "imageUrl": "hSrkVS0I", "smallImageUrl": "Bh6XAKhC", "width": 13}, {"as": "e2WV5x6x", "caption": "sChNe3AK", "height": 90, "imageUrl": "wuTRvDTk", "smallImageUrl": "K889vWPi", "width": 53}, {"as": "kD4y3zcM", "caption": "nzAmvYNT", "height": 91, "imageUrl": "INMMH7o2", "smallImageUrl": "ALmvyaIu", "width": 5}], "inventoryConfig": {"customAttributes": {"WxDJcv1z": {}, "xojYQgpc": {}, "CAj4gLIz": {}}, "serverCustomAttributes": {"fI8gCinN": {}, "HS9e4irP": {}, "p6d78pb9": {}}, "slotUsed": 24}, "itemId": "pZvSM4Ov", "itemIds": ["u4qTQFhQ", "lEpMODP5", "wNugjPZY"], "itemQty": {"jsYqGmGH": 21, "wkUBDUH0": 63, "fHhOyu02": 32}, "itemType": "CODE", "listable": true, "localizations": {"5P3qaMj2": {"description": "z19znPMt", "localExt": {"ZVfE7JEx": {}, "dbXlgUuB": {}, "Ie1p48Fm": {}}, "longDescription": "uznHYS8X", "title": "qnvG0hVO"}, "2SBeWIJx": {"description": "qfFAxKP7", "localExt": {"hRT9OrWY": {}, "yU6H6aUj": {}, "xpi31xBY": {}}, "longDescription": "1kfdsp7Q", "title": "mqXmvuOj"}, "WKZJhJyE": {"description": "cMAxKtUQ", "localExt": {"fKRYEFR1": {}, "10JRK7LV": {}, "kxado3d9": {}}, "longDescription": "sN1npxiq", "title": "zeR0zCuu"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 26, "duration": 92, "endDate": "1980-11-15T00:00:00Z", "itemId": "4yljDyIG", "itemSku": "HvVgsgGP", "itemType": "fOp0cCQ6"}, {"count": 91, "duration": 6, "endDate": "1975-07-08T00:00:00Z", "itemId": "Y8DSsrAT", "itemSku": "ihbTGdfq", "itemType": "pikc1cc0"}, {"count": 93, "duration": 53, "endDate": "1974-07-07T00:00:00Z", "itemId": "1tZY6Ldd", "itemSku": "7Crdlu7n", "itemType": "4O1sJFLH"}], "name": "iQcTobIm", "odds": 0.6437803268036085, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 14, "duration": 43, "endDate": "1977-04-28T00:00:00Z", "itemId": "jn4XZXb3", "itemSku": "jLS0YsZ1", "itemType": "zYJfhNd3"}, {"count": 26, "duration": 31, "endDate": "1999-01-17T00:00:00Z", "itemId": "wMgG2Yz9", "itemSku": "NdccZrTr", "itemType": "0L93S5ly"}, {"count": 30, "duration": 81, "endDate": "1971-12-17T00:00:00Z", "itemId": "QexSKhjd", "itemSku": "UfiIcMei", "itemType": "HgnJ64I8"}], "name": "fL9vBfVs", "odds": 0.45443301774557343, "type": "PROBABILITY_GROUP", "weight": 6}, {"lootBoxItems": [{"count": 32, "duration": 17, "endDate": "1984-05-25T00:00:00Z", "itemId": "UuOVLNvz", "itemSku": "MpSiIrBw", "itemType": "2eWOOzc7"}, {"count": 37, "duration": 78, "endDate": "1983-06-28T00:00:00Z", "itemId": "V6Fbjc83", "itemSku": "DRWMCARD", "itemType": "pnQd0Q4B"}, {"count": 56, "duration": 99, "endDate": "1988-04-13T00:00:00Z", "itemId": "P1UtL54I", "itemSku": "FmT7Enmi", "itemType": "krDlZnG3"}], "name": "1maU5S59", "odds": 0.11662213377770014, "type": "REWARD_GROUP", "weight": 4}], "rollFunction": "DEFAULT"}, "maxCount": 93, "maxCountPerUser": 15, "name": "I1B71Qjp", "optionBoxConfig": {"boxItems": [{"count": 77, "duration": 21, "endDate": "1996-04-19T00:00:00Z", "itemId": "ATsNOZeW", "itemSku": "lqkppZia", "itemType": "EzHH8ppP"}, {"count": 43, "duration": 10, "endDate": "1989-05-31T00:00:00Z", "itemId": "VzmH7ltx", "itemSku": "EfuWGPel", "itemType": "1KJBXPyj"}, {"count": 11, "duration": 15, "endDate": "1980-01-06T00:00:00Z", "itemId": "8gWEOgSb", "itemSku": "8ExgFCV8", "itemType": "dIB3KxHc"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 77, "fixedTrialCycles": 93, "graceDays": 65}, "regionData": {"041WxRlG": [{"currencyCode": "ZpiXIWuD", "currencyNamespace": "GSQKdHWl", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1992-03-25T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1978-03-27T00:00:00Z", "expireAt": "1990-04-20T00:00:00Z", "price": 83, "purchaseAt": "1988-11-28T00:00:00Z", "trialPrice": 48}, {"currencyCode": "djFLOIKA", "currencyNamespace": "6b1qbqsJ", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1980-08-16T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1985-09-13T00:00:00Z", "expireAt": "1994-04-14T00:00:00Z", "price": 18, "purchaseAt": "1998-01-15T00:00:00Z", "trialPrice": 3}, {"currencyCode": "CSiL54j5", "currencyNamespace": "Ulalw6BD", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1972-02-25T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1999-11-28T00:00:00Z", "expireAt": "1985-01-03T00:00:00Z", "price": 56, "purchaseAt": "1991-01-19T00:00:00Z", "trialPrice": 27}], "TX23NTl9": [{"currencyCode": "nJGbTaSk", "currencyNamespace": "jJwCSreX", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1975-10-13T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1983-03-28T00:00:00Z", "expireAt": "1982-06-24T00:00:00Z", "price": 23, "purchaseAt": "1999-05-26T00:00:00Z", "trialPrice": 31}, {"currencyCode": "hF7321um", "currencyNamespace": "AypkMVSm", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1979-09-02T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1972-03-28T00:00:00Z", "expireAt": "1975-04-25T00:00:00Z", "price": 3, "purchaseAt": "1989-07-28T00:00:00Z", "trialPrice": 79}, {"currencyCode": "s1Vgx2mB", "currencyNamespace": "SsK66dQ2", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1971-09-03T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1979-01-30T00:00:00Z", "expireAt": "1991-07-07T00:00:00Z", "price": 94, "purchaseAt": "1971-09-23T00:00:00Z", "trialPrice": 60}], "pRSPW40V": [{"currencyCode": "dUz48P6j", "currencyNamespace": "dP7lrH4D", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1997-07-04T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1980-04-15T00:00:00Z", "expireAt": "1975-02-24T00:00:00Z", "price": 89, "purchaseAt": "1977-02-05T00:00:00Z", "trialPrice": 0}, {"currencyCode": "jXhKfV7Y", "currencyNamespace": "0cB4IRj4", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1991-03-26T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1991-04-27T00:00:00Z", "expireAt": "1976-03-02T00:00:00Z", "price": 68, "purchaseAt": "1980-01-28T00:00:00Z", "trialPrice": 4}, {"currencyCode": "Jd69xbhU", "currencyNamespace": "wk0MxaI9", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1981-02-06T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1975-09-04T00:00:00Z", "expireAt": "1974-03-29T00:00:00Z", "price": 26, "purchaseAt": "1984-03-10T00:00:00Z", "trialPrice": 3}]}, "saleConfig": {"currencyCode": "twFxyUHP", "price": 75}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "bi9SXCEk", "stackable": true, "status": "ACTIVE", "tags": ["d7liwhJ2", "iivrIRhJ", "O5Yxe8wo"], "targetCurrencyCode": "vRMQAZPL", "targetNamespace": "GBhe7Y4g", "thumbnailUrl": "lT9USCAl", "useCount": 48}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '4ZWUq0kB' \
    --appId 'rN7xyfKk' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'q7j330j7' \
    --baseAppId 'gmxkYuRp' \
    --categoryPath 'fvvKMPOJ' \
    --features '3bGSsXv9' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --limit '99' \
    --offset '37' \
    --region 'D7iol1Bq' \
    --sortBy '["updatedAt", "displayOrder"]' \
    --storeId '4OYyZBdJ' \
    --tags '3oFGnZVX' \
    --targetNamespace 'hGVJevuO' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["Oo6cWDBK", "7xGr874x", "RL85NXEr"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'olqKK04V' \
    --itemIds 'wwndENIQ' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'gkTx87Xq' \
    --sku 'ByUbr7mT' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Wijus8GU' \
    --populateBundle 'true' \
    --region 'JrlLnIro' \
    --storeId 'TFy0Sa8J' \
    --sku '52FhUbZI' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'wzc1RrNG' \
    --region '4gDqPq0H' \
    --storeId 'RKkLgcda' \
    --itemIds 'Lgh1qWrt' \
    --userId '4GALnHgD' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'yhinmT1v' \
    --sku 'aQIU56CT' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["1WolEDoP", "2TZmYyZG", "MhYma977"]' \
    --storeId 'DGLy06Sj' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'UN8gdor8' \
    --region 'g9hXyu2r' \
    --storeId 'Btu4k6rL' \
    --itemIds 'oBtyyYQv' \
    > test.out 2>&1
eval_tap $? 135 'BulkGetLocaleItems' test.out

#- 136 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetAvailablePredicateTypes' test.out

#- 137 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'WJzs7HSi' \
    --userId 'Hy6yR3pC' \
    --body '{"itemIds": ["Add7I2RI", "vr4INHa5", "wlBKYPG3"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'gabvkTTh' \
    --body '{"changes": [{"itemIdentities": ["VD75wQxU", "Ye9ssV61", "9zOvuWrh"], "itemIdentityType": "ITEM_ID", "regionData": {"5PFeCH61": [{"currencyCode": "0JhKxpMd", "currencyNamespace": "UCXFsIfa", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1984-06-25T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1974-12-01T00:00:00Z", "discountedPrice": 51, "expireAt": "1985-03-12T00:00:00Z", "price": 17, "purchaseAt": "1992-02-12T00:00:00Z", "trialPrice": 74}, {"currencyCode": "vHoV1MT7", "currencyNamespace": "5NoKPkp3", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1991-05-25T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1987-01-30T00:00:00Z", "discountedPrice": 95, "expireAt": "1976-11-02T00:00:00Z", "price": 83, "purchaseAt": "1987-09-08T00:00:00Z", "trialPrice": 42}, {"currencyCode": "Nf5jOwt2", "currencyNamespace": "xsql4PFS", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1979-02-14T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1985-08-20T00:00:00Z", "discountedPrice": 39, "expireAt": "1975-09-09T00:00:00Z", "price": 40, "purchaseAt": "1974-03-12T00:00:00Z", "trialPrice": 63}], "s3XLWUoU": [{"currencyCode": "bTxVUIMz", "currencyNamespace": "1RmVM0D9", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1991-01-08T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1992-10-29T00:00:00Z", "discountedPrice": 88, "expireAt": "1980-10-06T00:00:00Z", "price": 74, "purchaseAt": "1980-07-20T00:00:00Z", "trialPrice": 67}, {"currencyCode": "inGuZZC5", "currencyNamespace": "F5ex7ukW", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1972-10-22T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1997-04-12T00:00:00Z", "discountedPrice": 84, "expireAt": "1980-01-13T00:00:00Z", "price": 48, "purchaseAt": "1993-12-18T00:00:00Z", "trialPrice": 60}, {"currencyCode": "icWQ2PF6", "currencyNamespace": "FBTgn9Nr", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1973-02-13T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1989-08-09T00:00:00Z", "discountedPrice": 84, "expireAt": "1972-09-01T00:00:00Z", "price": 62, "purchaseAt": "1993-06-10T00:00:00Z", "trialPrice": 63}], "BpHnnFOm": [{"currencyCode": "izTUFHAL", "currencyNamespace": "355iBEND", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1974-09-05T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-01-12T00:00:00Z", "discountedPrice": 71, "expireAt": "1981-01-27T00:00:00Z", "price": 5, "purchaseAt": "1973-11-26T00:00:00Z", "trialPrice": 72}, {"currencyCode": "7rjyjRi5", "currencyNamespace": "UMkMesnm", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1976-03-02T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-03-28T00:00:00Z", "discountedPrice": 18, "expireAt": "1972-11-18T00:00:00Z", "price": 8, "purchaseAt": "1975-03-30T00:00:00Z", "trialPrice": 24}, {"currencyCode": "W66CMVRf", "currencyNamespace": "B775tIQu", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1978-05-30T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1984-06-26T00:00:00Z", "discountedPrice": 75, "expireAt": "1984-06-03T00:00:00Z", "price": 51, "purchaseAt": "1974-07-17T00:00:00Z", "trialPrice": 100}]}}, {"itemIdentities": ["EyuWWk7p", "bmMbD9kj", "PTiBwhFS"], "itemIdentityType": "ITEM_SKU", "regionData": {"fIIkYRpF": [{"currencyCode": "lXpbm0rg", "currencyNamespace": "nyncWXgg", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1980-09-26T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1975-11-29T00:00:00Z", "discountedPrice": 46, "expireAt": "1974-03-24T00:00:00Z", "price": 34, "purchaseAt": "1989-07-23T00:00:00Z", "trialPrice": 81}, {"currencyCode": "FuFgTgSu", "currencyNamespace": "6CJu2Qh0", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1981-05-20T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1981-10-08T00:00:00Z", "discountedPrice": 30, "expireAt": "1999-07-12T00:00:00Z", "price": 94, "purchaseAt": "1978-07-17T00:00:00Z", "trialPrice": 13}, {"currencyCode": "8QU6IIha", "currencyNamespace": "S7QBKn46", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1996-04-22T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1995-02-25T00:00:00Z", "discountedPrice": 20, "expireAt": "1995-11-11T00:00:00Z", "price": 56, "purchaseAt": "1981-04-15T00:00:00Z", "trialPrice": 71}], "vgTjZXpe": [{"currencyCode": "a34P7pjw", "currencyNamespace": "dbTr2EM0", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1980-07-19T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-04-09T00:00:00Z", "discountedPrice": 84, "expireAt": "1974-01-15T00:00:00Z", "price": 87, "purchaseAt": "1981-05-17T00:00:00Z", "trialPrice": 12}, {"currencyCode": "XrtWmBnv", "currencyNamespace": "e379uhJl", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1974-09-08T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1990-07-14T00:00:00Z", "discountedPrice": 93, "expireAt": "1972-06-16T00:00:00Z", "price": 42, "purchaseAt": "1992-08-15T00:00:00Z", "trialPrice": 100}, {"currencyCode": "NCL7SKBO", "currencyNamespace": "gEcX4GPI", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1982-03-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1996-12-13T00:00:00Z", "discountedPrice": 44, "expireAt": "1997-12-11T00:00:00Z", "price": 19, "purchaseAt": "1992-05-20T00:00:00Z", "trialPrice": 40}], "e7FkszuN": [{"currencyCode": "2ZofhL4Z", "currencyNamespace": "nPS7VNk6", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1993-11-26T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1984-07-11T00:00:00Z", "discountedPrice": 18, "expireAt": "1982-02-15T00:00:00Z", "price": 71, "purchaseAt": "1977-04-19T00:00:00Z", "trialPrice": 73}, {"currencyCode": "H3U3GUce", "currencyNamespace": "lK0v0Nkt", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1994-12-16T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1989-01-22T00:00:00Z", "discountedPrice": 63, "expireAt": "1980-01-13T00:00:00Z", "price": 98, "purchaseAt": "1995-02-16T00:00:00Z", "trialPrice": 61}, {"currencyCode": "KO4WtXkl", "currencyNamespace": "7nmWFgrL", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1973-10-11T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1980-01-26T00:00:00Z", "discountedPrice": 90, "expireAt": "1995-10-08T00:00:00Z", "price": 61, "purchaseAt": "1997-01-01T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["1vinLTY8", "ezeGrxjr", "znLBjhe8"], "itemIdentityType": "ITEM_ID", "regionData": {"69edlxau": [{"currencyCode": "szwLRLOg", "currencyNamespace": "NXvO1zRq", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1990-04-15T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1990-09-27T00:00:00Z", "discountedPrice": 16, "expireAt": "1991-02-06T00:00:00Z", "price": 27, "purchaseAt": "1991-05-25T00:00:00Z", "trialPrice": 45}, {"currencyCode": "ZgTmulTb", "currencyNamespace": "TsqPbRjk", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1972-07-30T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1983-08-22T00:00:00Z", "discountedPrice": 80, "expireAt": "1998-11-30T00:00:00Z", "price": 59, "purchaseAt": "1978-11-07T00:00:00Z", "trialPrice": 99}, {"currencyCode": "axCabLx7", "currencyNamespace": "3SgeV518", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1974-07-27T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1974-01-31T00:00:00Z", "discountedPrice": 19, "expireAt": "1985-08-09T00:00:00Z", "price": 30, "purchaseAt": "1972-09-07T00:00:00Z", "trialPrice": 39}], "2HB9mpTP": [{"currencyCode": "uZ5uGwRB", "currencyNamespace": "EAFCw6fG", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1981-01-26T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1991-01-14T00:00:00Z", "discountedPrice": 28, "expireAt": "1997-11-05T00:00:00Z", "price": 77, "purchaseAt": "1987-10-06T00:00:00Z", "trialPrice": 69}, {"currencyCode": "4WfwZkTn", "currencyNamespace": "gY88et7f", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1983-09-15T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1976-11-01T00:00:00Z", "discountedPrice": 9, "expireAt": "1989-01-17T00:00:00Z", "price": 19, "purchaseAt": "1991-06-22T00:00:00Z", "trialPrice": 47}, {"currencyCode": "HhGtV37f", "currencyNamespace": "apq3b9Jg", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1977-06-27T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1988-10-24T00:00:00Z", "discountedPrice": 89, "expireAt": "1988-01-11T00:00:00Z", "price": 69, "purchaseAt": "1997-10-11T00:00:00Z", "trialPrice": 56}], "T8Obldko": [{"currencyCode": "wYR9chOE", "currencyNamespace": "pBwmxD9Y", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1986-12-07T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1998-02-19T00:00:00Z", "discountedPrice": 76, "expireAt": "1981-03-31T00:00:00Z", "price": 72, "purchaseAt": "1973-10-28T00:00:00Z", "trialPrice": 72}, {"currencyCode": "WOzqOf34", "currencyNamespace": "ukOprPpx", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1986-04-03T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1984-09-25T00:00:00Z", "discountedPrice": 41, "expireAt": "1974-03-08T00:00:00Z", "price": 7, "purchaseAt": "1974-04-02T00:00:00Z", "trialPrice": 56}, {"currencyCode": "Wf0Wvdwk", "currencyNamespace": "cTwslJ8z", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1971-03-28T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1991-06-30T00:00:00Z", "discountedPrice": 46, "expireAt": "1971-06-19T00:00:00Z", "price": 66, "purchaseAt": "1991-06-21T00:00:00Z", "trialPrice": 81}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'COINS' \
    --limit '60' \
    --offset '35' \
    --sortBy '857NXo1c' \
    --storeId '6RNoGsIy' \
    --keyword '5OVs4ywf' \
    --language 'kz6STW6g' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '23' \
    --offset '35' \
    --sortBy '["updatedAt", "name:desc", "displayOrder"]' \
    --storeId 'Qn2xmJoY' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'pmwMujci' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qam6ktKg' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'gp3ps32t' \
    --namespace $AB_NAMESPACE \
    --storeId 'xt8s5QbP' \
    --body '{"appId": "JFLg785B", "appType": "GAME", "baseAppId": "276tWyCw", "boothName": "RLzsrJ9i", "categoryPath": "MjrhOoki", "clazz": "S4R2sjPA", "displayOrder": 5, "entitlementType": "DURABLE", "ext": {"WmfXs6sR": {}, "HR9WoBZe": {}, "4lSL9iFM": {}}, "features": ["pXZTIhce", "YiBZ4w9k", "GE5uxRWd"], "flexible": false, "images": [{"as": "G3ncVlhb", "caption": "WX2cpYTI", "height": 87, "imageUrl": "bBwJTQwU", "smallImageUrl": "kQ8ubnlO", "width": 79}, {"as": "1KyBpM8I", "caption": "pVj0VB7i", "height": 14, "imageUrl": "tLrBf8WF", "smallImageUrl": "y7ucH5t1", "width": 20}, {"as": "ZHMtEZhn", "caption": "LmxqrnIf", "height": 13, "imageUrl": "iR6TmApj", "smallImageUrl": "x3wegHJk", "width": 91}], "inventoryConfig": {"customAttributes": {"PWTvgtnm": {}, "eJYFSjHj": {}, "ly7MSpeF": {}}, "serverCustomAttributes": {"GzD6sxBl": {}, "D3XUPQue": {}, "WKhZ2qTy": {}}, "slotUsed": 3}, "itemIds": ["P2Cj8XiT", "cBfyQBCF", "2oPfW9uk"], "itemQty": {"EmxamHi3": 14, "1ymNIETZ": 41, "XcfdpjWO": 23}, "itemType": "APP", "listable": false, "localizations": {"x86NWNum": {"description": "LwXjQnRc", "localExt": {"DJEQVupw": {}, "CQpuTArj": {}, "HjCqcbv4": {}}, "longDescription": "QoBQC3Vx", "title": "QP8yrTOu"}, "kYC8BgTZ": {"description": "AxENySWr", "localExt": {"HRZRAlhf": {}, "6jo1BCE7": {}, "n7E4rhTj": {}}, "longDescription": "cgXog9BQ", "title": "lYqyshWp"}, "FBmvpOlz": {"description": "FkjSYkv3", "localExt": {"TXyf5nqc": {}, "lnmJtjEz": {}, "sMtGNR64": {}}, "longDescription": "hHJH4HrR", "title": "lieMoE0o"}}, "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 29, "duration": 2, "endDate": "1979-01-03T00:00:00Z", "itemId": "4YzU01TY", "itemSku": "pBPeZ8zB", "itemType": "gA27HQ5Y"}, {"count": 93, "duration": 31, "endDate": "1986-04-01T00:00:00Z", "itemId": "33bhcahL", "itemSku": "jGlF24tv", "itemType": "oJjyMmPd"}, {"count": 64, "duration": 34, "endDate": "1995-05-16T00:00:00Z", "itemId": "vno1NdMH", "itemSku": "Mc6lnmGM", "itemType": "U7W54XgH"}], "name": "nvqjFL0x", "odds": 0.08407943888234526, "type": "REWARD", "weight": 34}, {"lootBoxItems": [{"count": 51, "duration": 78, "endDate": "1972-11-18T00:00:00Z", "itemId": "azZKTAAi", "itemSku": "G0pn2ny6", "itemType": "cYO0yoVA"}, {"count": 31, "duration": 33, "endDate": "1998-12-17T00:00:00Z", "itemId": "LUoWACaW", "itemSku": "i3rMDi9F", "itemType": "GLsER6s7"}, {"count": 24, "duration": 10, "endDate": "1988-03-20T00:00:00Z", "itemId": "lvGUhjL0", "itemSku": "w5Xiyj6t", "itemType": "np7Ndod7"}], "name": "XLut7HC1", "odds": 0.6653351112548637, "type": "REWARD_GROUP", "weight": 67}, {"lootBoxItems": [{"count": 15, "duration": 37, "endDate": "1980-08-25T00:00:00Z", "itemId": "pvmnC7hW", "itemSku": "7TSpbdwN", "itemType": "8t4S8xlk"}, {"count": 82, "duration": 11, "endDate": "1981-07-08T00:00:00Z", "itemId": "bQpzQ8Bd", "itemSku": "MPB65yal", "itemType": "UpAv3SRT"}, {"count": 91, "duration": 67, "endDate": "1978-06-10T00:00:00Z", "itemId": "nI4vEf5N", "itemSku": "xq3zYxGV", "itemType": "AFT0vUR3"}], "name": "BNqswoSx", "odds": 0.5597563542256051, "type": "REWARD_GROUP", "weight": 35}], "rollFunction": "CUSTOM"}, "maxCount": 93, "maxCountPerUser": 4, "name": "z4y1PjyS", "optionBoxConfig": {"boxItems": [{"count": 81, "duration": 3, "endDate": "1992-10-01T00:00:00Z", "itemId": "mMWbThzS", "itemSku": "ENbGgWc6", "itemType": "MbulBtle"}, {"count": 0, "duration": 10, "endDate": "1982-08-14T00:00:00Z", "itemId": "nUW77feD", "itemSku": "4PPFwbMq", "itemType": "mYOtu6je"}, {"count": 8, "duration": 98, "endDate": "1991-07-15T00:00:00Z", "itemId": "AziHYBdS", "itemSku": "ldemxdSp", "itemType": "zqRAtJJl"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 61, "graceDays": 39}, "regionData": {"GUM490c2": [{"currencyCode": "NCP7NGG6", "currencyNamespace": "Agb0eGUq", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1973-05-10T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1986-05-23T00:00:00Z", "expireAt": "1971-05-25T00:00:00Z", "price": 59, "purchaseAt": "1991-08-21T00:00:00Z", "trialPrice": 37}, {"currencyCode": "eook1XOa", "currencyNamespace": "iHr3br2A", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1999-01-15T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1983-10-07T00:00:00Z", "expireAt": "1978-01-19T00:00:00Z", "price": 45, "purchaseAt": "1989-08-30T00:00:00Z", "trialPrice": 53}, {"currencyCode": "k5BS4vp5", "currencyNamespace": "2keH9Afu", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1997-01-24T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1971-07-24T00:00:00Z", "expireAt": "1976-08-15T00:00:00Z", "price": 91, "purchaseAt": "1988-09-05T00:00:00Z", "trialPrice": 70}], "GTeG2U6p": [{"currencyCode": "X23wA4C7", "currencyNamespace": "kRZ89cgD", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1976-04-07T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1980-07-27T00:00:00Z", "expireAt": "1993-06-03T00:00:00Z", "price": 66, "purchaseAt": "1977-04-21T00:00:00Z", "trialPrice": 66}, {"currencyCode": "I5CPKWHc", "currencyNamespace": "1Sv2LaFl", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1973-10-25T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1972-03-20T00:00:00Z", "expireAt": "1990-05-27T00:00:00Z", "price": 74, "purchaseAt": "1998-09-02T00:00:00Z", "trialPrice": 84}, {"currencyCode": "rDrsYc8g", "currencyNamespace": "oDVQp0RH", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1990-05-10T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1993-09-05T00:00:00Z", "expireAt": "1973-04-14T00:00:00Z", "price": 45, "purchaseAt": "1979-05-10T00:00:00Z", "trialPrice": 80}], "YS1DYUal": [{"currencyCode": "FKGh1piy", "currencyNamespace": "GphCXqWF", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1974-05-25T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1999-02-10T00:00:00Z", "expireAt": "1976-10-16T00:00:00Z", "price": 44, "purchaseAt": "1980-11-06T00:00:00Z", "trialPrice": 2}, {"currencyCode": "Vik0SF2P", "currencyNamespace": "TBZlaY0p", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1994-12-15T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1976-09-21T00:00:00Z", "expireAt": "1978-10-20T00:00:00Z", "price": 69, "purchaseAt": "1994-03-15T00:00:00Z", "trialPrice": 80}, {"currencyCode": "yz8eZkUm", "currencyNamespace": "7JfTcGwm", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1990-05-04T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1991-10-04T00:00:00Z", "expireAt": "1986-07-07T00:00:00Z", "price": 57, "purchaseAt": "1981-06-09T00:00:00Z", "trialPrice": 29}]}, "saleConfig": {"currencyCode": "FZyWVUxp", "price": 3}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "ZT44WfBB", "stackable": false, "status": "ACTIVE", "tags": ["NKxIf254", "yisp0UFN", "LC5Tv5Ka"], "targetCurrencyCode": "sIExEAa1", "targetNamespace": "P03qYOoH", "thumbnailUrl": "VF5yVSyy", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'fOAiinji' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "IAP", "CATALOG"]' \
    --force 'false' \
    --storeId 'JASJJhpP' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'hcqW5cBV' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 7, "orderNo": "7rBI86et"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'TDa9L6FY' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ytVT81Uy' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'PackDv6c' \
    --namespace $AB_NAMESPACE \
    --storeId 'tub0fUL9' \
    --body '{"carousel": [{"alt": "75v6m22U", "previewUrl": "TB3cKRsi", "thumbnailUrl": "9BugPzqk", "type": "video", "url": "CiSLuG01", "videoSource": "generic"}, {"alt": "5EirygHk", "previewUrl": "ulaobUbY", "thumbnailUrl": "1FbBUERr", "type": "video", "url": "FwWiCwiM", "videoSource": "generic"}, {"alt": "0yjem2nI", "previewUrl": "xH20CZq0", "thumbnailUrl": "Rmz2LhMo", "type": "video", "url": "T9es4MhU", "videoSource": "generic"}], "developer": "fhEM90k8", "forumUrl": "6WpFELUx", "genres": ["FreeToPlay", "Racing", "RPG"], "localizations": {"dIBLcoqE": {"announcement": "tUKDQh1F", "slogan": "42eXnZpX"}, "6gF06bDM": {"announcement": "RPYb6zLW", "slogan": "jEzSIXOX"}, "TOgYn5Rq": {"announcement": "v4tJRMiQ", "slogan": "LjrjT0OZ"}}, "platformRequirements": {"kKkAhMCb": [{"additionals": "yRNWBrZb", "directXVersion": "deO99BZL", "diskSpace": "SNBDeUBM", "graphics": "H4ZMIWAb", "label": "hmnhSWRi", "osVersion": "echn5cp9", "processor": "M85FEJUS", "ram": "lrssBnZ7", "soundCard": "UOWfOZ7D"}, {"additionals": "mkuhNymV", "directXVersion": "wIHzEJCa", "diskSpace": "fHdWRw8o", "graphics": "E3zT6o5a", "label": "1alYmqI3", "osVersion": "ppkCKO91", "processor": "DSeFQOp7", "ram": "idKZlboH", "soundCard": "xe1FZZXY"}, {"additionals": "Tig3hJxr", "directXVersion": "ZUTCTM6L", "diskSpace": "YRsyGGw6", "graphics": "mv7T68wh", "label": "ihTHJ4i3", "osVersion": "PTGaUBWw", "processor": "h0GZSyph", "ram": "S6fXv4Ms", "soundCard": "wjzLjXhs"}], "kKob62hm": [{"additionals": "DHzCdJVA", "directXVersion": "ojaYZlcw", "diskSpace": "DXjiK2v3", "graphics": "qiOTryl7", "label": "yhMfuVxJ", "osVersion": "y0JONIaJ", "processor": "F0LoVw9u", "ram": "RVUw04k9", "soundCard": "9aM7anCO"}, {"additionals": "STYljoBh", "directXVersion": "8hVNgHeI", "diskSpace": "D1OCqQHM", "graphics": "VscHPfnt", "label": "7s8lmlj5", "osVersion": "Iozn8RFm", "processor": "v89xcAwy", "ram": "lf4K2huz", "soundCard": "VjnwgoWD"}, {"additionals": "K7RsIL3I", "directXVersion": "DYddgWaB", "diskSpace": "RahMtghT", "graphics": "nouqbo6N", "label": "j9Wzj2J2", "osVersion": "U4VrPhdk", "processor": "3Xl3lRmh", "ram": "c5fM6461", "soundCard": "NjTLjMRS"}], "zpcSsjXH": [{"additionals": "dVZ0RJak", "directXVersion": "SFZBlx2B", "diskSpace": "FBTYXkV7", "graphics": "BRXrXkig", "label": "PNBaiLTh", "osVersion": "7A3H3oes", "processor": "c91OZMJO", "ram": "i2c7uoki", "soundCard": "FCSa2O9s"}, {"additionals": "lfz4MTEq", "directXVersion": "yNUzlDGU", "diskSpace": "vgrwGQkB", "graphics": "3aydn371", "label": "GgC73nez", "osVersion": "YdIyjkQn", "processor": "ZaXvjSYH", "ram": "iz2NmZOx", "soundCard": "0DrfISm7"}, {"additionals": "7VvrBpTI", "directXVersion": "JDJM8Wy2", "diskSpace": "EhRlYN09", "graphics": "h7KE5jP4", "label": "A0ee1APG", "osVersion": "skBWs0Bl", "processor": "0TICnJlu", "ram": "KeqTlKJ3", "soundCard": "u5mmDDCF"}]}, "platforms": ["MacOS", "Android", "MacOS"], "players": ["Coop", "Multi", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "hsGjStku", "releaseDate": "1991-01-20T00:00:00Z", "websiteUrl": "HCDo9QO6"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'vz8EoBcl' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z3jzfZKU' \
    --body '{"featuresToCheck": ["IAP", "ENTITLEMENT"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'iDGk1Gvg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'VQCAQEcV' \
    --namespace $AB_NAMESPACE \
    --storeId 'zGpR3xel' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '82SzbJqJ' \
    --itemId 'xwEU52P5' \
    --namespace $AB_NAMESPACE \
    --storeId 'UF7F3dZ6' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '9fcU4eve' \
    --itemId 'tQAHeBln' \
    --namespace $AB_NAMESPACE \
    --storeId 'VeVuhj9u' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'YaeR3i9u' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'aniRuKvU' \
    --populateBundle 'true' \
    --region 'khPGdSGU' \
    --storeId 'bCPXXWO4' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'Jl3ERcRT' \
    --namespace $AB_NAMESPACE \
    --storeId 'lqyaB3qR' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "code": "UezUCVi3", "comparison": "is", "name": "k3BjWnOP", "predicateType": "SeasonPassPredicate", "value": "hRF3XMkJ", "values": ["UQjIBkCd", "YkpGqpbi", "2iZ9FFT3"]}, {"anyOf": 60, "code": "4zgNm6Os", "comparison": "includes", "name": "D0AagBKv", "predicateType": "SeasonTierPredicate", "value": "3Gs1cLxZ", "values": ["iKJhfZZO", "24JDEdbE", "jwbomDgG"]}, {"anyOf": 7, "code": "KE06b5xh", "comparison": "is", "name": "0LBEu0G3", "predicateType": "SeasonTierPredicate", "value": "CLcYCiSr", "values": ["1puwhMCd", "lpJFLHCR", "pVCQxpU5"]}]}, {"operator": "and", "predicates": [{"anyOf": 64, "code": "DnhHSDNb", "comparison": "isGreaterThan", "name": "wmUVPAfp", "predicateType": "SeasonPassPredicate", "value": "zhUf3W0N", "values": ["vCxAd8Nk", "xmdBVun6", "QHbFQnA4"]}, {"anyOf": 42, "code": "rm9S3W7t", "comparison": "isGreaterThan", "name": "bG5wu0JU", "predicateType": "SeasonTierPredicate", "value": "XkKiwD8x", "values": ["xDCKojEX", "hpDgEQE1", "c4iD64xL"]}, {"anyOf": 13, "code": "KeUCPZQH", "comparison": "excludes", "name": "UEb9HWIM", "predicateType": "SeasonPassPredicate", "value": "HsXclSll", "values": ["WtWMkpbc", "QouYqFka", "4ndqIadZ"]}]}, {"operator": "and", "predicates": [{"anyOf": 77, "code": "ec1eLktw", "comparison": "isLessThan", "name": "GVwWvNfj", "predicateType": "SeasonPassPredicate", "value": "19Narwn2", "values": ["uVZxXTqv", "VRw9DDfz", "ZyvdNHRl"]}, {"anyOf": 50, "code": "HE1blNDX", "comparison": "isGreaterThanOrEqual", "name": "6mbnOMVT", "predicateType": "StatisticCodePredicate", "value": "3Iiopnvj", "values": ["YzoyHU6P", "1h2L4cYk", "TOizTptX"]}, {"anyOf": 47, "code": "am3GWTLr", "comparison": "isGreaterThanOrEqual", "name": "H4x8yVsy", "predicateType": "EntitlementPredicate", "value": "E2zsRQOG", "values": ["2f6kUEHq", "Kpg7SeqX", "quOpwJrp"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId '7132qCQX' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "IAP", "CATALOG"]' \
    --storeId 'gi8sziMK' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'OxCM0tuV' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "N9Gaf5gl"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --name 'AwuqHGTt' \
    --offset '51' \
    --tag 'uidsyV86' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "22FzN34U", "name": "jiciACVu", "status": "INACTIVE", "tags": ["0j0NwH3m", "1ngX2hvY", "xQq4o2Um"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'ScsB1cJ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '9Tvszagk' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "f49qxMmR", "name": "EPndOJ8r", "status": "INACTIVE", "tags": ["YyQ8GXqD", "mp1gAZBp", "w5UJbjrS"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'AuOQRAvl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'miKGaZcq' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '83' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'vh1nPpy6' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'TgVcTzbP' \
    --limit '24' \
    --offset '36' \
    --orderNos '["kDPsHMIL", "ssoERkrl", "nDQefdGr"]' \
    --sortBy 'SLiz5IJ3' \
    --startTime 'QjiYph6P' \
    --status 'CHARGED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 164 'QueryOrders' test.out

#- 165 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'GetOrderStatistics' test.out

#- 166 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xMUquDxP' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Es7JDzv7' \
    --body '{"description": "ZlTf7wyA"}' \
    > test.out 2>&1
eval_tap $? 167 'RefundOrder' test.out

#- 168 GetPaymentCallbackConfig
eval_tap 0 168 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 169 UpdatePaymentCallbackConfig
eval_tap 0 169 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 170 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentMerchantConfig' test.out

#- 171 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["xvxrrau3", "nMRBI39b", "TWaj44B4"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '5CqbBRYu' \
    --externalId 'gz0ncHrO' \
    --limit '67' \
    --notificationSource 'STRIPE' \
    --notificationType 'LQLRgCLT' \
    --offset '31' \
    --paymentOrderNo 'o0wZIjvM' \
    --startDate 'ILLgK9T8' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'GVKfP8Mp' \
    --limit '59' \
    --offset '65' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "jH95jC7t", "currencyNamespace": "LWOfvjbf", "customParameters": {"A58wwr8Q": {}, "sdRWL9pt": {}, "IWajTbW9": {}}, "description": "0vLmHKMW", "extOrderNo": "U7mZ4M5U", "extUserId": "Ef6XTWIJ", "itemType": "COINS", "language": "HT-UR", "metadata": {"GDHF3i9r": "cyWnnwKJ", "R24HhjV6": "kaOS3c7n", "9I6ZkOeE": "j7Vtisx2"}, "notifyUrl": "AiibWMkc", "omitNotification": true, "platform": "vwAEW95p", "price": 85, "recurringPaymentOrderNo": "0YmSPqcr", "region": "p4CgsyQX", "returnUrl": "jEpbNQXW", "sandbox": true, "sku": "5AZQSM07", "subscriptionId": "zmwyFDOp", "targetNamespace": "8x3NUBIo", "targetUserId": "ESOb6tpb", "title": "ZbcScj2c"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'DQ8sW0Ct' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oO3xVWsg' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'IvN3DKt8' \
    --body '{"extTxId": "YsKVlf5D", "paymentMethod": "wjuMLQQN", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0rMoxkiA' \
    --body '{"description": "yW250aq0"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Vwl8BR9C' \
    --body '{"amount": 16, "currencyCode": "us9IhAl2", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 98, "vat": 93}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'QVZnI1mc' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'MAspUFlT' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "5w9xkKMC", "serviceLabel": 66}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'rxRXdXwP' \
    --body '{"delegationToken": "RLcD9L5G", "sandboxId": "7WlkgGHM"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Twitch", "System", "System"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["System", "Epic", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 187 'ResetPlatformWalletConfig' test.out

#- 188 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'GetRevocationConfig' test.out

#- 189 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 189 'UpdateRevocationConfig' test.out

#- 190 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'DeleteRevocationConfig' test.out

#- 191 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime '7xXbtRiv' \
    --limit '17' \
    --offset '62' \
    --source 'DLC' \
    --startTime 'z3Qr4cNv' \
    --status 'FAIL' \
    --transactionId 'kfwthg14' \
    --userId 'R6rNRAuY' \
    > test.out 2>&1
eval_tap $? 191 'QueryRevocationHistories' test.out

#- 192 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetRevocationPluginConfig' test.out

#- 193 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "3cBmLrJK"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "92XWUVRb"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCertV2
samples/cli/sample-apps Platform uploadRevocationPluginConfigCertV2 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCertV2' test.out

#- 196 UploadRevocationPluginConfigCert
eval_tap 0 196 'UploadRevocationPluginConfigCert # SKIP deprecated' test.out

#- 197 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fMSftNyS", "eventTopic": "tNnJXcXq", "maxAwarded": 80, "maxAwardedPerUser": 60, "namespaceExpression": "Ijc3HHrY", "rewardCode": "z55KiQhQ", "rewardConditions": [{"condition": "ST872cSN", "conditionName": "XgjPgRKx", "eventName": "vcSc0YHS", "rewardItems": [{"duration": 66, "endDate": "1985-07-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "icw9n0Eb", "quantity": 5, "sku": "ENGsXH7W"}, {"duration": 37, "endDate": "1985-05-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "08kFzOTq", "quantity": 39, "sku": "17YSstv1"}, {"duration": 21, "endDate": "1991-02-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sqAcGln8", "quantity": 60, "sku": "CfKeOdEh"}]}, {"condition": "rS4wEEjD", "conditionName": "WAp2dZdf", "eventName": "yn496oOG", "rewardItems": [{"duration": 77, "endDate": "1977-04-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CflmxSB0", "quantity": 63, "sku": "yqU2236u"}, {"duration": 72, "endDate": "1980-12-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SfrTgSqV", "quantity": 0, "sku": "IRzCbeSH"}, {"duration": 25, "endDate": "1977-08-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "POSFRN6Y", "quantity": 28, "sku": "3CZTF4HL"}]}, {"condition": "FwxUs8vk", "conditionName": "aH3Enq3h", "eventName": "ptjRZoQQ", "rewardItems": [{"duration": 15, "endDate": "1987-10-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oDNCbnTe", "quantity": 20, "sku": "SCcCXS5i"}, {"duration": 43, "endDate": "1994-06-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TnwjqWxn", "quantity": 63, "sku": "80k8nHHX"}, {"duration": 41, "endDate": "1976-11-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4cH0Hilk", "quantity": 52, "sku": "tssOi7fx"}]}], "userIdExpression": "ee6LU4So"}' \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'dLdLH8K0' \
    --limit '42' \
    --offset '20' \
    --sortBy '["rewardCode:desc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 198 'QueryRewards' test.out

#- 199 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'ExportRewards' test.out

#- 200 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 200 'ImportRewards' test.out

#- 201 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'VSPWFjTP' \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ZPI8WoFV' \
    --body '{"description": "rrqZgNUX", "eventTopic": "V1Ft1P1T", "maxAwarded": 48, "maxAwardedPerUser": 37, "namespaceExpression": "HkYYRlIx", "rewardCode": "CCZ8hMeY", "rewardConditions": [{"condition": "aeXLg2JR", "conditionName": "Uhbpdrn5", "eventName": "csHnYsNn", "rewardItems": [{"duration": 30, "endDate": "1991-10-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XYkzurTr", "quantity": 52, "sku": "I5M6x0SP"}, {"duration": 50, "endDate": "1990-08-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ss1AyLBl", "quantity": 73, "sku": "eHqE0Pcr"}, {"duration": 36, "endDate": "1994-06-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OYtEPEPg", "quantity": 86, "sku": "xwZgdJKX"}]}, {"condition": "brZbkUOs", "conditionName": "jw2qyTOl", "eventName": "ssYZeg5m", "rewardItems": [{"duration": 85, "endDate": "1993-09-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LZer8j3c", "quantity": 47, "sku": "0wwLOLG3"}, {"duration": 35, "endDate": "1979-01-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "N0l6npNZ", "quantity": 96, "sku": "1YAp20TQ"}, {"duration": 75, "endDate": "1996-08-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VOAM48sG", "quantity": 11, "sku": "k17kwO7Y"}]}, {"condition": "4Yn4T3YX", "conditionName": "Z32nFDxB", "eventName": "Wl1qAC6d", "rewardItems": [{"duration": 32, "endDate": "1988-12-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5x97eHkk", "quantity": 55, "sku": "snAbktA3"}, {"duration": 9, "endDate": "1989-05-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UaxCCcyd", "quantity": 47, "sku": "p1lf4974"}, {"duration": 19, "endDate": "1978-06-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UKZk52NE", "quantity": 90, "sku": "qTNd7M1x"}]}], "userIdExpression": "5nMnrn4B"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'SeWH6Rcw' \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'knwbZSvS' \
    --body '{"payload": {"MSwfDz5d": {}, "TMRBEca5": {}, "L7ETFTjG": {}}}' \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '9xPXB9XD' \
    --body '{"conditionName": "DpMLm05x", "userId": "B0vIg9Ef"}' \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'cU9KSGFy' \
    --limit '75' \
    --offset '77' \
    --start 'ncqZhKf6' \
    --storeId '8XsUpc68' \
    --viewId 'Eyq3Rlek' \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'aqFzmP0H' \
    --body '{"active": true, "displayOrder": 30, "endDate": "1992-08-21T00:00:00Z", "ext": {"UmOlEgtV": {}, "rKtn8Pqx": {}, "YAPBinNm": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 63, "itemCount": 70, "rule": "SEQUENCE"}, "items": [{"id": "Me77XA0X", "sku": "n2PDLsz7"}, {"id": "NQpeaPqu", "sku": "DeaD99uy"}, {"id": "Ack5jWa7", "sku": "TjxXtDwO"}], "localizations": {"stla70Xj": {"description": "7NPL2038", "localExt": {"Eq50K8kb": {}, "dnB0r7qT": {}, "h3XZByvS": {}}, "longDescription": "oyioJL2b", "title": "SmjJBr04"}, "XgbwUg8l": {"description": "gtkCIpMR", "localExt": {"oiiH89PR": {}, "bxWlhCCq": {}, "Yufe9bz8": {}}, "longDescription": "9FAEDfhQ", "title": "ZJwKOWNR"}, "LSxKOmuB": {"description": "MKpduDdB", "localExt": {"WNBIxFBi": {}, "ZXtpgKgq": {}, "RhOt7TWZ": {}}, "longDescription": "toI6pScU", "title": "tNBEiFsO"}}, "name": "VJJ5itmg", "rotationType": "FIXED_PERIOD", "startDate": "1980-02-29T00:00:00Z", "viewId": "aDtPTMmB"}' \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'gmOMZNBB' \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2qqgoR7e' \
    --storeId '6pA9FbiC' \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'eVBPR2fS' \
    --storeId 'TUBxaHaD' \
    --body '{"active": false, "displayOrder": 29, "endDate": "1977-05-13T00:00:00Z", "ext": {"JWXllWK3": {}, "z4NGvWCj": {}, "3nA66kYH": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 25, "itemCount": 39, "rule": "LOOP"}, "items": [{"id": "G0mu7Jzw", "sku": "ASLZxy3r"}, {"id": "dTt894jL", "sku": "WQWtaoSN"}, {"id": "v2GBlysS", "sku": "iFirF6cV"}], "localizations": {"yrFapJge": {"description": "yBjborMQ", "localExt": {"19rr2I8s": {}, "CkCOvfsb": {}, "NixaVDZi": {}}, "longDescription": "v9NZmhJ1", "title": "CDRTotG0"}, "tUgo7m7u": {"description": "tPpq2SmF", "localExt": {"gpg4Prga": {}, "G4M6IC8m": {}, "DjRXdw6x": {}}, "longDescription": "warZ1u4j", "title": "HotsTihR"}, "EEc4EyKg": {"description": "ZvhywkG9", "localExt": {"ou4XOr6y": {}, "JbFYLAML": {}, "7qWkHqPd": {}}, "longDescription": "JhWmmWE9", "title": "zL1oUifw"}}, "name": "5dIJEf2D", "rotationType": "NONE", "startDate": "1974-01-21T00:00:00Z", "viewId": "yGZFnKnh"}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'yYx4Fpr3' \
    --storeId '7bQSzN9D' \
    > test.out 2>&1
eval_tap $? 211 'DeleteSection' test.out

#- 212 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'ListStores' test.out

#- 213 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "O8Ohy50B", "defaultRegion": "Pk0oJsUN", "description": "XuM4f4VE", "supportedLanguages": ["EXstrD9s", "iHxzpAP0", "M5hPXhjc"], "supportedRegions": ["e6FUPqKu", "dM38VvYx", "NR8qEZY7"], "title": "zmkv4DLm"}' \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'ITEM' \
    > test.out 2>&1
eval_tap $? 214 'GetCatalogDefinition' test.out

#- 215 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 215 'DownloadCSVTemplates' test.out

#- 216 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["OvrT7WkY", "oQd8ZUO1", "d3tUSggx"], "idsToBeExported": ["Wv0Ojoa9", "3LgkGmah", "XgEAEsGR"], "storeId": "kQnYteqj"}' \
    > test.out 2>&1
eval_tap $? 216 'ExportStoreByCSV' test.out

#- 217 ImportStore
eval_tap 0 217 'ImportStore # SKIP deprecated' test.out

#- 218 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'GetPublishedStore' test.out

#- 219 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 219 'DeletePublishedStore' test.out

#- 220 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetPublishedStoreBackup' test.out

#- 221 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 221 'RollbackPublishedStore' test.out

#- 222 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YLQx8FwS' \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'boR6hisC' \
    --body '{"defaultLanguage": "EbZHlADY", "defaultRegion": "xbMyZ9t9", "description": "gf7C1LEG", "supportedLanguages": ["4IcxQnIW", "pz90XG93", "u79FGS56"], "supportedRegions": ["0HIq5hqT", "8K7hDfLY", "asAx4I97"], "title": "XzTGtS2c"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'VBFnIAx8' \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'G0udcE3b' \
    --action 'CREATE' \
    --itemSku 'JgHB7yB0' \
    --itemType 'APP' \
    --limit '49' \
    --offset '14' \
    --selected 'false' \
    --sortBy '["createdAt:desc", "updatedAt:desc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'KuISjBKL' \
    --updatedAtStart 'uuxBoInV' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'JWsJaosk' \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'DiZ2QE7R' \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'd1O8KEhS' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'RDUhtlPi' \
    --action 'DELETE' \
    --itemSku 'UcUQIewh' \
    --itemType 'COINS' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd 'JPGSjdzZ' \
    --updatedAtStart '3Mx9zi4r' \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'YnGMInzG' \
    --action 'UPDATE' \
    --itemSku 'T88ST5Mg' \
    --itemType 'LOOTBOX' \
    --type 'CATEGORY' \
    --updatedAtEnd 'NBtVjWiI' \
    --updatedAtStart 'y9SWqJMs' \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Xk0CHqeN' \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'swulfDtS' \
    --namespace $AB_NAMESPACE \
    --storeId 'H2pGNvCA' \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'lHFMHu7u' \
    --namespace $AB_NAMESPACE \
    --storeId '6HGuNI6A' \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'RFa1OVD7' \
    --targetStoreId 'Q0cPfXnm' \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'lyvzfIZg' \
    --end '6a4pNRZs' \
    --limit '33' \
    --offset '20' \
    --sortBy 'U7bwD2V5' \
    --start 'OFjWkW2N' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Dpbjgj4r' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'PiJPzOoD' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'MP7ILJxC' \
    --limit '19' \
    --offset '96' \
    --sku 'ZTpYoaPD' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'Fgk872gA' \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Djn1Fmcf' \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'LOo52sl6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'MkKRZ8no' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "jg4kfDRT"}' \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '1JdT04KG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'S5dgXS3n' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "orderNo": "EU5lME6W"}' \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 20, "currencyCode": "6rhbJAKl", "expireAt": "1981-08-10T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "Z4kFYtl7", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "X0EBKBDS", "entitlementOrigin": "Epic", "itemIdentity": "EnTvy3k3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "MRgG2QZg"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 46, "currencyCode": "xa2EsPrd", "expireAt": "1983-01-01T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "eH7qByqo", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "RZBRLcki", "entitlementOrigin": "Nintendo", "itemIdentity": "RBs6gV40", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "l8q97wx6"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 98, "currencyCode": "q0IOtomY", "expireAt": "1975-12-13T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "2du72wrc", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "nUjZdKLW", "entitlementOrigin": "GooglePlay", "itemIdentity": "WmIBRoyr", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "c1PqPPDG"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "6Q8W8T1y"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 28, "currencyCode": "1GMW2oMV", "expireAt": "1991-07-30T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "fPpXid0W", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "vN8ZERKJ", "entitlementOrigin": "Twitch", "itemIdentity": "TAjnRpjX", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "ZcWYv4dw"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 55, "currencyCode": "R2iILXv5", "expireAt": "1979-10-03T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "iaPtJEQv", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "UiIiIMzm", "entitlementOrigin": "Steam", "itemIdentity": "cTaR5QZf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "wf4rEgnp"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 53, "currencyCode": "kftJRN1m", "expireAt": "1982-07-18T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "bAzQEt84", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "xnsvi3Ts", "entitlementOrigin": "Xbox", "itemIdentity": "ajpFmOst", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 17, "entitlementId": "udZbeQkd"}, "type": "DEBIT_WALLET"}], "userId": "9ZkD8ljr"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 40, "currencyCode": "VLaO2HQq", "expireAt": "1975-04-04T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "Etue1QSx", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "WGbu1Gi9", "entitlementOrigin": "System", "itemIdentity": "O36rPccU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "SvXzi3L7"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 92, "currencyCode": "e5FdD5pq", "expireAt": "1993-04-17T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "nzq0SeO7", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "ezNx2mV9", "entitlementOrigin": "Steam", "itemIdentity": "LLEKAWCH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "a2h47scq"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 22, "currencyCode": "KJjX0mvl", "expireAt": "1991-07-10T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "cobS2A4K", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "s8ieahbR", "entitlementOrigin": "Twitch", "itemIdentity": "XwFhDnAt", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "FjwPFesw"}, "type": "DEBIT_WALLET"}], "userId": "lz12qy4N"}], "metadata": {"0SduaVqc": {}, "DNs2nsja": {}, "fof6GtPE": {}}, "needPreCheck": false, "transactionId": "q4YVY5Z3", "type": "PNhSMZeP"}' \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '28' \
    --status 'INIT' \
    --type '6aA27EBr' \
    --userId 'PoAQcMLS' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'gDQKjF2b' \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'PhzNOHSv' \
    --body '{"achievements": [{"id": "R2ISS8VP", "value": 29}, {"id": "oHRbxqP4", "value": 79}, {"id": "weYuHyvn", "value": 10}], "steamUserId": "LUhUT6uo"}' \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'u2vhraRe' \
    --xboxUserId '79Rse7DF' \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'PC8MhZ1w' \
    --body '{"achievements": [{"id": "TzkiIbX6", "percentComplete": 81}, {"id": "ZlTZv2YN", "percentComplete": 85}, {"id": "eOD3pGKN", "percentComplete": 87}], "serviceConfigId": "fmw7isQo", "titleId": "KTJ093X4", "xboxUserId": "NxuuJ7y1"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'p8bJyecP' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YoWzbHUe' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Kdbxrsap' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'UpE4mGwd' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'K6Vxvd2Z' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'tkXsJ1QU' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '02fmCHTz' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0jak7viD' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '4nwSbLE2' \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'EVcfUU5X' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uxKcvSdG' \
    --includeAllNamespaces 'false' \
    --status 'REVOKE_FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vEdf2laT' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId 'ZJzCSMLG' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'tKbavVTo' \
    --features '["UjInHTKm", "psFLnk1j", "87YC6WSD"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'true' \
    --itemId '["h5Hzttzp", "T8BEaofx", "VHbkNgwz"]' \
    --limit '51' \
    --offset '10' \
    --origin 'IOS' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'BmPqNUln' \
    --body '[{"collectionId": "nkBAxZfr", "endDate": "1976-01-10T00:00:00Z", "grantedCode": "AamNtSA3", "itemId": "ovViwdi6", "itemNamespace": "3b6G3wdE", "language": "Dc-wzdO", "metadata": {"x9ThJfHz": {}, "QcwTTtl3": {}, "lE5jBaf8": {}}, "origin": "Xbox", "quantity": 62, "region": "HDXx2YCF", "source": "REWARD", "startDate": "1974-03-29T00:00:00Z", "storeId": "51nvIHrN"}, {"collectionId": "M1OkoR7z", "endDate": "1971-05-15T00:00:00Z", "grantedCode": "SmXLg5hm", "itemId": "sguWb6pb", "itemNamespace": "LE3HvbOo", "language": "On", "metadata": {"W17gUWYe": {}, "aZw8uovB": {}, "i6Pu3CMz": {}}, "origin": "Nintendo", "quantity": 3, "region": "CYDVDwsq", "source": "OTHER", "startDate": "1998-11-12T00:00:00Z", "storeId": "UNY5XzS2"}, {"collectionId": "DGXaIlgw", "endDate": "1979-11-08T00:00:00Z", "grantedCode": "thhHF6uq", "itemId": "CD6B6rTz", "itemNamespace": "MrsrIPOs", "language": "zSe_vSbD_HR", "metadata": {"skE5GxtR": {}, "lVOQcyKc": {}, "w01C6UI5": {}}, "origin": "Steam", "quantity": 25, "region": "SrzINpI5", "source": "OTHER", "startDate": "1994-02-16T00:00:00Z", "storeId": "ldciqwx1"}]' \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'QPlK8Hqs' \
    --activeOnly 'false' \
    --appId 'iYspGMLb' \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'WvSDFgrV' \
    --activeOnly 'true' \
    --limit '0' \
    --offset '64' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '5wafY5Zy' \
    --ids '["3FkHiCL8", "sgOUCrhj", "uzJrqQlR"]' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'uf2t9Znm' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'iVSLoSym' \
    --itemId 'Tgz7jsKr' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vzSyLNCB' \
    --ids '["60eYdusd", "wSdbhbGK", "TgYLiCB2"]' \
    --platform 'n5nNoc0C' \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'DrtIu0pN' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'jYPXWs8p' \
    --sku 'SsOqgYgd' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'COTBeg0A' \
    --appIds '["k4OVFzty", "dnxHLG3Q", "XwAkCjgh"]' \
    --itemIds '["F6C5WMxR", "iNWrWnoZ", "QnLbBCe8"]' \
    --platform '4QPhxZvV' \
    --skus '["Q4i4TZNf", "JSMbG2ih", "B3FCYIFq"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rlroEFdK' \
    --platform '7e1zHXgs' \
    --itemIds '["vHsWimDX", "0acxxJMz", "nPHK0v8E"]' \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'yxpzZyv5' \
    --appId 'wOLFD7UM' \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'deqy62JZ' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'tglzVx2r' \
    --itemId 'jp1eDyjJ' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Ixgn8dFa' \
    --ids '["41UlBXTl", "fsNtWIi7", "9Kcjpchf"]' \
    --platform 'WHNJzYqU' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'POAGi5fQ' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'cjaaSTtL' \
    --sku '6t9aRnyd' \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'sL3LPCr7' \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'zoLpdpIF' \
    --entitlementIds 'ZfyXfpnE' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Ym3XBvvC' \
    --namespace $AB_NAMESPACE \
    --userId 'W2SKo0hv' \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Oe1EihQc' \
    --namespace $AB_NAMESPACE \
    --userId 'bOdACghD' \
    --body '{"collectionId": "ZBDmbuNH", "endDate": "1988-04-29T00:00:00Z", "nullFieldList": ["Tt5WCsaA", "YREBU6vR", "jRA3Hoc7"], "origin": "Epic", "reason": "aTUV0elQ", "startDate": "1985-11-15T00:00:00Z", "status": "INACTIVE", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'TajULTPl' \
    --namespace $AB_NAMESPACE \
    --userId 'vZqiJfgy' \
    --body '{"metadata": {"c9xoYnLb": {}, "Zs79OvUF": {}, "tO7gMHlj": {}}, "options": ["QgS4uodz", "OOzzcIJV", "AHQT15qC"], "platform": "fmzqqaFH", "requestId": "g6yYMhO7", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '9EQ5aAYM' \
    --namespace $AB_NAMESPACE \
    --userId 'oiLi4Jzw' \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'u6yasc1W' \
    --namespace $AB_NAMESPACE \
    --userId 'zghuXifx' \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'Nag6FKMk' \
    --namespace $AB_NAMESPACE \
    --userId 'iTHPaH90' \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '9Gte1DUi' \
    --namespace $AB_NAMESPACE \
    --userId 'SI4y08kB' \
    --body '{"metadata": {"u8Fma706": {}, "bZPGohie": {}, "Iy62xXjP": {}}}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'jWNFC4Tn' \
    --namespace $AB_NAMESPACE \
    --userId 'rgWsNmMB' \
    --body '{"reason": "WOq3GFNx", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'jSZoBEAL' \
    --namespace $AB_NAMESPACE \
    --userId 'LWzQpmoe' \
    --quantity '58' \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'oUY1ZQDe' \
    --namespace $AB_NAMESPACE \
    --userId 'CgHkXVsh' \
    --body '{"platform": "jlw4YCqi", "requestId": "fLVobLwJ", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '1QGzTCMm' \
    --body '{"duration": 82, "endDate": "1986-09-16T00:00:00Z", "entitlementCollectionId": "44j0dnqa", "entitlementOrigin": "Epic", "itemId": "obQCO4s7", "itemSku": "ROs7Zbai", "language": "v7ZEN1KS", "metadata": {"S1PKnYE5": {}, "wbQ8tWZv": {}, "LExwBvEc": {}}, "order": {"currency": {"currencyCode": "msNEMBS3", "currencySymbol": "4iPuShg4", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "eicd4tlf"}, "ext": {"pSCrfl4P": {}, "myQYh5JR": {}, "KRrJBJ4z": {}}, "free": false}, "orderNo": "HS7rTSnN", "origin": "Other", "overrideBundleItemQty": {"LvnDF3Dd": 89, "041WATkW": 2, "OT1DxYZT": 50}, "quantity": 91, "region": "iy4RRlVb", "source": "ORDER_REVOCATION", "startDate": "1982-12-07T00:00:00Z", "storeId": "J2CBwF41"}' \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Ie7qASfV' \
    --body '{"code": "71yvGajA", "language": "VGCY_Uzto-jl", "region": "iL22tQO0"}' \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'QEmVT2uk' \
    --body '{"itemId": "1I7IX37g", "itemSku": "vKAa1TXR", "quantity": 0}' \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '2hgiUfYE' \
    --body '{"entitlementCollectionId": "OhguQeZr", "entitlementOrigin": "Oculus", "metadata": {"IoTZ4Pn1": {}, "ThqJQ0i4": {}, "CuQDccUC": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "b3gzQETX", "namespace": "9W59EMW9"}, "item": {"itemId": "OLTW8gz9", "itemName": "qnzjrQ5x", "itemSku": "uWJdifDn", "itemType": "cDwxcy68"}, "quantity": 9, "type": "ITEM"}, {"currency": {"currencyCode": "y7cvYGDo", "namespace": "3Z8hxD0A"}, "item": {"itemId": "qS9lKlMc", "itemName": "EDHGAyII", "itemSku": "QPFFT3q0", "itemType": "jaxyh7DD"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "TDcCCpT0", "namespace": "xlrlqvmu"}, "item": {"itemId": "MNzaNs23", "itemName": "C9u0Ocgk", "itemSku": "RJElrBCP", "itemType": "ES7j14lN"}, "quantity": 23, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "W2p7hVEV"}' \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SfFEwKFA' \
    --endTime 'ELFrwORj' \
    --limit '62' \
    --offset '34' \
    --productId 'AjyNOrEQ' \
    --startTime 'O8fxPLhs' \
    --status 'REVOKED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '52Jgs6Mx' \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'KvjQlhZ0' \
    --endTime 'HJP2txIo' \
    --limit '61' \
    --offset '76' \
    --startTime 'fsMcuQO1' \
    --status 'PENDING' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'vOwavbx9' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "eLIJ_jsXH", "productId": "AYjQ2Gv9", "region": "ki7C1G2r", "transactionId": "Z3qT51UG", "type": "OCULUS"}' \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'd81mu4ZB' \
    --body '{"skus": ["Pwf1USWr", "ltyvCmKj", "Mw7JF1wL"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'adXZyaui' \
    --namespace $AB_NAMESPACE \
    --userId '9bzqdryO' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'vSipFfMd' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'A9rSWbYN' \
    --body '{"orderId": "7CsqZdqW"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jkuSpzpW' \
    --activeOnly 'false' \
    --groupId 'OiAtXUEr' \
    --limit '87' \
    --offset '91' \
    --platform 'TWITCH' \
    --productId '4UAG9SQB' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'ylJHGS9H' \
    --groupId 'ij7fB1ON' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'BaLNhot7' \
    --productId '9TXu6A0T' \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'EhHIa1Js' \
    --activeOnly 'false' \
    --groupId 'D3FihUuG' \
    --limit '46' \
    --offset '85' \
    --platform 'PLAYSTATION' \
    --productId 'jlozAq0E' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'tTmuWbIC' \
    --namespace $AB_NAMESPACE \
    --userId 'op2vejAQ' \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'jPjVELa5' \
    --namespace $AB_NAMESPACE \
    --userId 'QY0BiO0S' \
    --limit '93' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'hBj0BJff' \
    --namespace $AB_NAMESPACE \
    --userId 'sRVsAklR' \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'Jjbzx56J' \
    --namespace $AB_NAMESPACE \
    --userId 'bt7htFXm' \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'NhIh8WOf' \
    --namespace $AB_NAMESPACE \
    --userId 'sMAeRPeV' \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'rLYrUnjM' \
    --discounted 'true' \
    --itemId 'V7YCdRST' \
    --limit '11' \
    --offset '38' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 309 'QueryUserOrders' test.out

#- 310 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'JgS8EGrs' \
    --body '{"currencyCode": "7c8SOT9E", "currencyNamespace": "dSz8OQ3p", "discountCodes": ["mOob179j", "f6koqB8j", "8Gjy43we"], "discountedPrice": 82, "entitlementPlatform": "GooglePlay", "ext": {"Jb5EK1gB": {}, "HnWGTmaF": {}, "QBmFRBhu": {}}, "itemId": "th2TRQWp", "language": "9b3WRJIa", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 68, "quantity": 77, "region": "FmAGZGLP", "returnUrl": "6Ii3F6EM", "sandbox": true, "sectionId": "V3jqx2ri"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminCreateUserOrder' test.out

#- 311 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'Z4Sp4RCL' \
    --itemId 'dnzieZLJ' \
    > test.out 2>&1
eval_tap $? 311 'CountOfPurchasedItem' test.out

#- 312 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8Vu5tHMb' \
    --userId 'jmPnvd50' \
    > test.out 2>&1
eval_tap $? 312 'GetUserOrder' test.out

#- 313 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'HJeKs4b2' \
    --userId 'T48PEsws' \
    --body '{"status": "INIT", "statusReason": "MHR1h8xV"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateUserOrderStatus' test.out

#- 314 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'kmgAUL0o' \
    --userId 'uwuu97PU' \
    > test.out 2>&1
eval_tap $? 314 'FulfillUserOrder' test.out

#- 315 GetUserOrderGrant
eval_tap 0 315 'GetUserOrderGrant # SKIP deprecated' test.out

#- 316 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'shD5q78B' \
    --userId 'GyDHnbz6' \
    > test.out 2>&1
eval_tap $? 316 'GetUserOrderHistories' test.out

#- 317 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '44yLhE3P' \
    --userId 'AaeVkt46' \
    --body '{"additionalData": {"cardSummary": "TM1EqFPI"}, "authorisedTime": "1974-07-05T00:00:00Z", "chargebackReversedTime": "1990-08-29T00:00:00Z", "chargebackTime": "1974-07-06T00:00:00Z", "chargedTime": "1980-08-20T00:00:00Z", "createdTime": "1971-12-25T00:00:00Z", "currency": {"currencyCode": "gy5uClBN", "currencySymbol": "dKZCSWG8", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "iPNzG1DK"}, "customParameters": {"ye2phsjB": {}, "TEWRKKcP": {}, "2UozBTyN": {}}, "extOrderNo": "n9LKfIVw", "extTxId": "KyR2622g", "extUserId": "ezOPvEN3", "issuedAt": "1997-05-13T00:00:00Z", "metadata": {"HIFPbWgY": "CfR89IZx", "cEgxewlO": "QZXZOB3q", "VwmAQ9Q4": "GcbFS5OF"}, "namespace": "iWBHfd63", "nonceStr": "XjCXynmG", "paymentData": {"discountAmount": 2, "discountCode": "NJQSJWfB", "subtotalPrice": 76, "tax": 4, "totalPrice": 43}, "paymentMethod": "zW4Emg20", "paymentMethodFee": 83, "paymentOrderNo": "VU5wcyOy", "paymentProvider": "NEONPAY", "paymentProviderFee": 61, "paymentStationUrl": "ombRpLr3", "price": 22, "refundedTime": "1992-07-16T00:00:00Z", "salesTax": 7, "sandbox": true, "sku": "eRbRsuir", "status": "CHARGEBACK_REVERSED", "statusReason": "lO3XCj1q", "subscriptionId": "IvzgWxAz", "subtotalPrice": 32, "targetNamespace": "wxUg9V8v", "targetUserId": "BYhEn6Zp", "tax": 89, "totalPrice": 5, "totalTax": 49, "txEndTime": "1999-03-16T00:00:00Z", "type": "unthTQpN", "userId": "Jman46Tm", "vat": 11}' \
    > test.out 2>&1
eval_tap $? 317 'ProcessUserOrderNotification' test.out

#- 318 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '62pjfUXF' \
    --userId 'oUfbkMGp' \
    > test.out 2>&1
eval_tap $? 318 'DownloadUserOrderReceipt' test.out

#- 319 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '0T6dLLxj' \
    --body '{"currencyCode": "1R6Uwsrj", "currencyNamespace": "hqfH9Afm", "customParameters": {"RO7L9EgI": {}, "sdCH4juH": {}, "D0MMnyz3": {}}, "description": "fE5KQBjO", "extOrderNo": "qOYkJoLh", "extUserId": "gnYl95Vj", "itemType": "INGAMEITEM", "language": "BThv-BB", "metadata": {"5ScfKUJV": "V48AIQ4D", "Jhu17peL": "UTIYoyvf", "0kow72bp": "3DLNg6pt"}, "notifyUrl": "k3djWp0a", "omitNotification": true, "platform": "In9HE6dS", "price": 30, "recurringPaymentOrderNo": "rqGW0noU", "region": "5upaVCyX", "returnUrl": "BNSDriff", "sandbox": true, "sku": "DCNAfF8u", "subscriptionId": "5bVZoPvc", "title": "rMPRMtxI"}' \
    > test.out 2>&1
eval_tap $? 319 'CreateUserPaymentOrder' test.out

#- 320 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'X4lIka5T' \
    --userId 'GHBNZ8Kp' \
    --body '{"description": "sM3WDiS4"}' \
    > test.out 2>&1
eval_tap $? 320 'RefundUserPaymentOrder' test.out

#- 321 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'kg9OPKJS' \
    > test.out 2>&1
eval_tap $? 321 'GetUserPlatformAccountClosureHistories' test.out

#- 322 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'yFNLj8Ys' \
    --body '{"code": "a9ZvVXeN", "orderNo": "m5ri5mnW"}' \
    > test.out 2>&1
eval_tap $? 322 'ApplyUserRedemption' test.out

#- 323 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6p11hFmq' \
    --body '{"meta": {"smDUQIuI": {}, "5Gbbz9HD": {}, "aOOjNrxm": {}}, "reason": "0hgkOt0i", "requestId": "rrf1xjaJ", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "hsgHS67b", "namespace": "61Vto0ew"}, "entitlement": {"entitlementId": "0ze1lCl6"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "B4Q4UlYu", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "8nlmxrJZ", "namespace": "Lhztw66i"}, "entitlement": {"entitlementId": "Uch2vU4X"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "NPzhqecV", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 23, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "ZFtSreI1", "namespace": "jq8UQpyJ"}, "entitlement": {"entitlementId": "1LAGHfmW"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "S951yxgk", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 49, "type": "ITEM"}], "source": "ORDER", "transactionId": "XTWDD45r"}' \
    > test.out 2>&1
eval_tap $? 323 'DoRevocation' test.out

#- 324 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '2vVVDuPl' \
    --body '{"gameSessionId": "HTcCIZTc", "payload": {"kUapUJUI": {}, "NjEO409X": {}, "KguEKhdS": {}}, "scid": "s6QqN9JT", "sessionTemplateName": "FN1s84w4"}' \
    > test.out 2>&1
eval_tap $? 324 'RegisterXblSessions' test.out

#- 325 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'tQrMVowZ' \
    --chargeStatus 'CHARGED' \
    --itemId 'oV8Od0fi' \
    --limit '38' \
    --offset '22' \
    --sku 'SHf9G1nP' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 325 'QueryUserSubscriptions' test.out

#- 326 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Nkwh2Ejc' \
    --excludeSystem 'true' \
    --limit '19' \
    --offset '66' \
    --subscriptionId 'LUnDpank' \
    > test.out 2>&1
eval_tap $? 326 'GetUserSubscriptionActivities' test.out

#- 327 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'QU8FOg1U' \
    --body '{"grantDays": 25, "itemId": "5Gyod5k0", "language": "tKtRMsBn", "reason": "Xz4hl0Dp", "region": "3STO9Wgk", "source": "afoVL02O"}' \
    > test.out 2>&1
eval_tap $? 327 'PlatformSubscribeSubscription' test.out

#- 328 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MQfWa9pE' \
    --itemId 'ts5olrNn' \
    > test.out 2>&1
eval_tap $? 328 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 329 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'c2LL82Ur' \
    --userId '5LCReczh' \
    > test.out 2>&1
eval_tap $? 329 'GetUserSubscription' test.out

#- 330 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DR7jrkkm' \
    --userId 'lkrlWdAY' \
    > test.out 2>&1
eval_tap $? 330 'DeleteUserSubscription' test.out

#- 331 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LrEJXn2d' \
    --userId 'dLQzaHDW' \
    --force 'false' \
    --body '{"immediate": true, "reason": "BvwtuKD6"}' \
    > test.out 2>&1
eval_tap $? 331 'CancelSubscription' test.out

#- 332 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cYeohWIQ' \
    --userId '4mRXSDBp' \
    --body '{"grantDays": 58, "reason": "mvA3peEC"}' \
    > test.out 2>&1
eval_tap $? 332 'GrantDaysToSubscription' test.out

#- 333 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OyUrDixq' \
    --userId '9spdMLlJ' \
    --excludeFree 'false' \
    --limit '82' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 333 'GetUserSubscriptionBillingHistories' test.out

#- 334 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fzi56TZ7' \
    --userId '90RvWh6d' \
    --body '{"additionalData": {"cardSummary": "zDfTYyaz"}, "authorisedTime": "1982-10-03T00:00:00Z", "chargebackReversedTime": "1992-09-16T00:00:00Z", "chargebackTime": "1996-05-31T00:00:00Z", "chargedTime": "1976-03-05T00:00:00Z", "createdTime": "1994-02-21T00:00:00Z", "currency": {"currencyCode": "N9DYpYpq", "currencySymbol": "W2njO4JZ", "currencyType": "REAL", "decimals": 48, "namespace": "v9uRCtdT"}, "customParameters": {"WPA9m31x": {}, "5PFTj9jl": {}, "vm0gSQuY": {}}, "extOrderNo": "GIotPg7S", "extTxId": "xstFRkm2", "extUserId": "OMoM3enq", "issuedAt": "1997-03-27T00:00:00Z", "metadata": {"WgDq17vQ": "rGmnnkAa", "wf1bEH2b": "AwUNjmKF", "qbIynEDK": "1XFKuydD"}, "namespace": "uLVogTbg", "nonceStr": "2g2OyHcJ", "paymentData": {"discountAmount": 54, "discountCode": "W5D4Koiy", "subtotalPrice": 83, "tax": 42, "totalPrice": 85}, "paymentMethod": "k1eaKLsb", "paymentMethodFee": 94, "paymentOrderNo": "fPSgEGUQ", "paymentProvider": "STRIPE", "paymentProviderFee": 93, "paymentStationUrl": "55ZuwIWS", "price": 89, "refundedTime": "1992-08-02T00:00:00Z", "salesTax": 42, "sandbox": true, "sku": "HQKwgIJp", "status": "AUTHORISE_FAILED", "statusReason": "035qAKqC", "subscriptionId": "S3Y9Vc2I", "subtotalPrice": 63, "targetNamespace": "5FIrqopw", "targetUserId": "TXf6q2S5", "tax": 85, "totalPrice": 21, "totalTax": 85, "txEndTime": "1979-10-20T00:00:00Z", "type": "fhQeZeHs", "userId": "OAhdBhOo", "vat": 91}' \
    > test.out 2>&1
eval_tap $? 334 'ProcessUserSubscriptionNotification' test.out

#- 335 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'OP8uVBXp' \
    --namespace $AB_NAMESPACE \
    --userId 'ACs9yPJE' \
    --body '{"count": 95, "orderNo": "j6VFhpso"}' \
    > test.out 2>&1
eval_tap $? 335 'AcquireUserTicket' test.out

#- 336 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'EAkPG9t1' \
    > test.out 2>&1
eval_tap $? 336 'QueryUserCurrencyWallets' test.out

#- 337 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'iUM5Rvcl' \
    --namespace $AB_NAMESPACE \
    --userId 'AUZbrd02' \
    --body '{"allowOverdraft": true, "amount": 20, "balanceOrigin": "System", "balanceSource": "EXPIRATION", "metadata": {"h1pz6q79": {}, "qbToWa7V": {}, "eY8spNj8": {}}, "reason": "E9qyri8V"}' \
    > test.out 2>&1
eval_tap $? 337 'DebitUserWalletByCurrencyCode' test.out

#- 338 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '1GTNsn6s' \
    --namespace $AB_NAMESPACE \
    --userId '3jgItvwr' \
    --limit '58' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 338 'ListUserCurrencyTransactions' test.out

#- 339 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'A1pREf9b' \
    --namespace $AB_NAMESPACE \
    --userId 'lHqQmqBg' \
    --request '{"amount": 53, "debitBalanceSource": "OTHER", "metadata": {"p0MSARZg": {}, "VG8mUXdJ": {}, "3kqvNvju": {}}, "reason": "jxhvcXrQ", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 339 'CheckBalance' test.out

#- 340 CheckWallet
eval_tap 0 340 'CheckWallet # SKIP deprecated' test.out

#- 341 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'E5gLX82l' \
    --namespace $AB_NAMESPACE \
    --userId 'K7jj2l05' \
    --body '{"amount": 14, "expireAt": "1979-09-01T00:00:00Z", "metadata": {"xiQzlySG": {}, "JKHlXw6I": {}, "rNvDlOCD": {}}, "origin": "Other", "reason": "71CzeYYs", "source": "TRADE"}' \
    > test.out 2>&1
eval_tap $? 341 'CreditUserWallet' test.out

#- 342 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'iH31jl02' \
    --namespace $AB_NAMESPACE \
    --userId 'gpOqtAYX' \
    --request '{"amount": 83, "debitBalanceSource": "PAYMENT", "metadata": {"pXKqayxy": {}, "ESougqBX": {}, "BQdCzGK0": {}}, "reason": "e0Y3sJTx", "walletPlatform": "Epic"}' \
    > test.out 2>&1
eval_tap $? 342 'DebitByWalletPlatform' test.out

#- 343 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'I7dGSMht' \
    --namespace $AB_NAMESPACE \
    --userId 'UUFvGjZl' \
    --body '{"amount": 15, "metadata": {"7vlVG13F": {}, "W756p3RX": {}, "u4SP1VNa": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 343 'PayWithUserWallet' test.out

#- 344 GetUserWallet
eval_tap 0 344 'GetUserWallet # SKIP deprecated' test.out

#- 345 DebitUserWallet
eval_tap 0 345 'DebitUserWallet # SKIP deprecated' test.out

#- 346 DisableUserWallet
eval_tap 0 346 'DisableUserWallet # SKIP deprecated' test.out

#- 347 EnableUserWallet
eval_tap 0 347 'EnableUserWallet # SKIP deprecated' test.out

#- 348 ListUserWalletTransactions
eval_tap 0 348 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 349 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'LfsRJ1Tw' \
    > test.out 2>&1
eval_tap $? 349 'ListViews' test.out

#- 350 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'LTnBWvAP' \
    --body '{"displayOrder": 59, "localizations": {"YaxHOOKu": {"description": "lRE7Oek6", "localExt": {"7e8S5YpY": {}, "fbFkymn3": {}, "Zk9R8Ss5": {}}, "longDescription": "1sVTUKtA", "title": "F7fDVqeb"}, "TBrEIJAu": {"description": "vYqKKdx1", "localExt": {"dL1ZFZii": {}, "lUgn1q99": {}, "Ili2EbIc": {}}, "longDescription": "LAInFNdC", "title": "tpdc73VI"}, "jOhFomef": {"description": "JmcEKfQn", "localExt": {"ila5TS4Q": {}, "tllSVzOG": {}, "Jjg3C6n5": {}}, "longDescription": "BJjCXQT1", "title": "9MUpxFJg"}}, "name": "UgLrmzlM"}' \
    > test.out 2>&1
eval_tap $? 350 'CreateView' test.out

#- 351 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '98XKBBCP' \
    --storeId 'UKLStRX9' \
    > test.out 2>&1
eval_tap $? 351 'GetView' test.out

#- 352 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '2scGPE2s' \
    --storeId 'tHL0jZ6E' \
    --body '{"displayOrder": 73, "localizations": {"l2Yv7NuS": {"description": "D4hOg5KH", "localExt": {"nSibp0E8": {}, "CG8nsphN": {}, "3lVJFuhL": {}}, "longDescription": "ghuYlX5u", "title": "fjCuFF1c"}, "VjgLqjxo": {"description": "aFPYG6XT", "localExt": {"EYy1RDoW": {}, "pn75fpoA": {}, "jXL7XlhO": {}}, "longDescription": "4qNkgu5a", "title": "El8GXDSK"}, "rCw2hawl": {"description": "6xxAS1GT", "localExt": {"2bXiYK9U": {}, "hbS7iJ6d": {}, "gpAkazLL": {}}, "longDescription": "Yj3DfAT7", "title": "XZLHqiEt"}}, "name": "LNFR75EZ"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateView' test.out

#- 353 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '0NiT2fEk' \
    --storeId 'FhrDU9LX' \
    > test.out 2>&1
eval_tap $? 353 'DeleteView' test.out

#- 354 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'GetWalletConfig' test.out

#- 355 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 355 'UpdateWalletConfig' test.out

#- 356 QueryWallets
eval_tap 0 356 'QueryWallets # SKIP deprecated' test.out

#- 357 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 61, "expireAt": "1974-06-28T00:00:00Z", "metadata": {"55za8OrA": {}, "Qy9VarV6": {}, "yKGmRFG6": {}}, "origin": "Xbox", "reason": "SAbGbkMl", "source": "REDEEM_CODE"}, "currencyCode": "QgwwSHLe", "userIds": ["YRFKsWLq", "m1cpVEQn", "dcb984sZ"]}, {"creditRequest": {"amount": 82, "expireAt": "1981-11-22T00:00:00Z", "metadata": {"YUIUc9JW": {}, "sR9a4I9e": {}, "dAjiWLD1": {}}, "origin": "Xbox", "reason": "hEPAoElO", "source": "REFERRAL_BONUS"}, "currencyCode": "jMIOeYV9", "userIds": ["ViSvV8xP", "yE13p8CK", "k2pdG9Xo"]}, {"creditRequest": {"amount": 73, "expireAt": "1993-06-28T00:00:00Z", "metadata": {"LOJuIaP0": {}, "BTlyypIk": {}, "RDMKywiR": {}}, "origin": "IOS", "reason": "gJpTGXxM", "source": "DLC"}, "currencyCode": "8FgxfduJ", "userIds": ["zjaipBQw", "P5k5HdFj", "oMuf3qx8"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkCredit' test.out

#- 358 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "PHKu8OJ3", "request": {"allowOverdraft": true, "amount": 84, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"nZpyovBn": {}, "sYGdguu9": {}, "bwRqKjGm": {}}, "reason": "MRanUotz"}, "userIds": ["qhHgQ76W", "E1MphL7o", "2zhVeduE"]}, {"currencyCode": "htCoMTt2", "request": {"allowOverdraft": true, "amount": 73, "balanceOrigin": "System", "balanceSource": "TRADE", "metadata": {"7qIaobnd": {}, "a1fZMI2V": {}, "8qE2BcQG": {}}, "reason": "08aPnG3O"}, "userIds": ["NtZmedjT", "eDZmzK2X", "SSuieeS1"]}, {"currencyCode": "6UYBKWcP", "request": {"allowOverdraft": false, "amount": 29, "balanceOrigin": "GooglePlay", "balanceSource": "DLC_REVOCATION", "metadata": {"EvDS12uz": {}, "NAvgb0i7": {}, "OHvApL20": {}}, "reason": "v0wvubzD"}, "userIds": ["1WyNHGWS", "PQLl2uBv", "wP5eR2M8"]}]' \
    > test.out 2>&1
eval_tap $? 358 'BulkDebit' test.out

#- 359 GetWallet
eval_tap 0 359 'GetWallet # SKIP deprecated' test.out

#- 360 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'O6h2oxGQ' \
    --end 'Nbv0Xn4B' \
    --start 'HLi0CpNa' \
    > test.out 2>&1
eval_tap $? 360 'SyncOrders' test.out

#- 361 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["reoy6t0p", "1ZUM0ZLK", "kGr6jgIk"], "apiKey": "kE8uRHyt", "authoriseAsCapture": false, "blockedPaymentMethods": ["956Rs7KQ", "DOkf8qE3", "11EGZRrm"], "clientKey": "Y1Ah3TW9", "dropInSettings": "GoUWEqCl", "liveEndpointUrlPrefix": "xxu38uGQ", "merchantAccount": "ACtVlcok", "notificationHmacKey": "7nGwW7dL", "notificationPassword": "RmVX2xHd", "notificationUsername": "mTljfRbq", "returnUrl": "c8nYGSfr", "settings": "5P6x4FHC"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAdyenConfig' test.out

#- 362 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "ntaImwrE", "privateKey": "3t8gVyXZ", "publicKey": "RRJnbFDg", "returnUrl": "DckIejAm"}' \
    > test.out 2>&1
eval_tap $? 362 'TestAliPayConfig' test.out

#- 363 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "A4aIuOYf", "secretKey": "EFS3SWO8"}' \
    > test.out 2>&1
eval_tap $? 363 'TestCheckoutConfig' test.out

#- 364 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '73H7RSGW' \
    --region 'eh9SViNh' \
    > test.out 2>&1
eval_tap $? 364 'DebugMatchedPaymentMerchantConfig' test.out

#- 365 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "srTW898U", "webhookSecretKey": "il1SL9BC"}' \
    > test.out 2>&1
eval_tap $? 365 'TestNeonPayConfig' test.out

#- 366 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "L3hgf5jJ", "clientSecret": "UlWUVwpB", "returnUrl": "8zo51ell", "webHookId": "BIXIEgb5"}' \
    > test.out 2>&1
eval_tap $? 366 'TestPayPalConfig' test.out

#- 367 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["FtPQTIiH", "fL7nB9gp", "6FWcePMT"], "publishableKey": "YZQtd0ts", "secretKey": "PcLxdI5e", "webhookSecret": "FBhCLexy"}' \
    > test.out 2>&1
eval_tap $? 367 'TestStripeConfig' test.out

#- 368 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "Wx8P9tKz", "key": "18amCHh3", "mchid": "voL1Me1r", "returnUrl": "eM7pHk2m"}' \
    > test.out 2>&1
eval_tap $? 368 'TestWxPayConfig' test.out

#- 369 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ooExbGxd", "flowCompletionUrl": "7iuEYmSo", "merchantId": 75, "projectId": 40, "projectSecretKey": "0ehIfdCh"}' \
    > test.out 2>&1
eval_tap $? 369 'TestXsollaConfig' test.out

#- 370 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id '78295klg' \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentMerchantConfig1' test.out

#- 371 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'fY8yWFDQ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["wPYAGgkQ", "3MALJTkK", "FRGPt8zt"], "apiKey": "lI58ISuP", "authoriseAsCapture": false, "blockedPaymentMethods": ["RrDTSWzZ", "s94usbgY", "eqGQRcnk"], "clientKey": "dvtqd6ti", "dropInSettings": "tVhED64b", "liveEndpointUrlPrefix": "7I4YtH0U", "merchantAccount": "NYJJ8A8F", "notificationHmacKey": "IdQG9bnL", "notificationPassword": "LDVcSoj5", "notificationUsername": "GWNGuw9z", "returnUrl": "01fjVmBk", "settings": "WOb24PBg"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdateAdyenConfig' test.out

#- 372 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'mvL4ZBSi' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestAdyenConfigById' test.out

#- 373 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Sh5Wwa2y' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "1cW8xEFb", "privateKey": "vzHb9AwC", "publicKey": "KmWewkG6", "returnUrl": "6NQprL97"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateAliPayConfig' test.out

#- 374 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '5ks4ECzS' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 374 'TestAliPayConfigById' test.out

#- 375 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'sXgsBrT6' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "WUi29Flb", "secretKey": "PSsG1ds6"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateCheckoutConfig' test.out

#- 376 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'UCxoB1r1' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 376 'TestCheckoutConfigById' test.out

#- 377 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'asgu9OSM' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"apiKey": "s8sawhRo", "webhookSecretKey": "N59uPOzQ"}' \
    > test.out 2>&1
eval_tap $? 377 'UpdateNeonPayConfig' test.out

#- 378 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'LxDbE0E1' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 378 'TestNeonPayConfigById' test.out

#- 379 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '1vyvJj3h' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "7md2Km6r", "clientSecret": "HaBtGPHD", "returnUrl": "0OiQIKMV", "webHookId": "kD2gNKEt"}' \
    > test.out 2>&1
eval_tap $? 379 'UpdatePayPalConfig' test.out

#- 380 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'bRoUOt2b' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 380 'TestPayPalConfigById' test.out

#- 381 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'fd3Vm9hv' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["AWLen5T3", "OIk2pwi4", "adGukJu8"], "publishableKey": "WM0b8nxj", "secretKey": "joTL6E6a", "webhookSecret": "6LY2ICPb"}' \
    > test.out 2>&1
eval_tap $? 381 'UpdateStripeConfig' test.out

#- 382 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'jtWzEReI' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 382 'TestStripeConfigById' test.out

#- 383 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'TbrVKjoq' \
    --validate 'false' \
    --body '{"appId": "htvwjcDz", "key": "1KZovJ77", "mchid": "iqgvyklC", "returnUrl": "NzQPHlRc"}' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfig' test.out

#- 384 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'QEfKhaXS' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfigCert' test.out

#- 385 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'uY2UnNEP' \
    > test.out 2>&1
eval_tap $? 385 'TestWxPayConfigById' test.out

#- 386 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'SP4FjJs2' \
    --validate 'true' \
    --body '{"apiKey": "O6devGnL", "flowCompletionUrl": "s9hrrBad", "merchantId": 67, "projectId": 57, "projectSecretKey": "2L6SiAca"}' \
    > test.out 2>&1
eval_tap $? 386 'UpdateXsollaConfig' test.out

#- 387 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'HlGTQ2xA' \
    > test.out 2>&1
eval_tap $? 387 'TestXsollaConfigById' test.out

#- 388 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'IGRwYG18' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 388 'UpdateXsollaUIConfig' test.out

#- 389 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '55' \
    --namespace '6w4Tq8Re' \
    --offset '20' \
    --region 'txS8kizz' \
    > test.out 2>&1
eval_tap $? 389 'QueryPaymentProviderConfig' test.out

#- 390 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "wlH29OXv", "region": "VjQxAYMS", "sandboxTaxJarApiToken": "PZQvOzuk", "specials": ["ALIPAY", "WALLET", "PAYPAL"], "taxJarApiToken": "I3no0VwV", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 390 'CreatePaymentProviderConfig' test.out

#- 391 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 391 'GetAggregatePaymentProviders' test.out

#- 392 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'xU9riHfi' \
    --region '7zgaOxtX' \
    > test.out 2>&1
eval_tap $? 392 'DebugMatchedPaymentProviderConfig' test.out

#- 393 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 393 'GetSpecialPaymentProviders' test.out

#- 394 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'mese3c5X' \
    --body '{"aggregate": "STRIPE", "namespace": "wP7s1HuM", "region": "uqDFJVlZ", "sandboxTaxJarApiToken": "inQtG68X", "specials": ["NEONPAY", "ADYEN", "WALLET"], "taxJarApiToken": "rq4nmgEO", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 394 'UpdatePaymentProviderConfig' test.out

#- 395 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'URNHntqE' \
    > test.out 2>&1
eval_tap $? 395 'DeletePaymentProviderConfig' test.out

#- 396 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 396 'GetPaymentTaxConfig' test.out

#- 397 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "CeLdxg8j", "taxJarApiToken": "XTbF1CVY", "taxJarEnabled": true, "taxJarProductCodesMapping": {"qknMjfHC": "j6MBGekO", "uLThe3u4": "qyrh7YQg", "0gwp8Z6h": "gtf3JZqE"}}' \
    > test.out 2>&1
eval_tap $? 397 'UpdatePaymentTaxConfig' test.out

#- 398 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'iXnqB8W5' \
    --end 'q3uUEog8' \
    --start 'hQOAqxfj' \
    > test.out 2>&1
eval_tap $? 398 'SyncPaymentOrders' test.out

#- 399 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'AeZhMJaQ' \
    --storeId 'Maj7BBh2' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetRootCategories' test.out

#- 400 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'f1JtQLZi' \
    --storeId 'bap7XBNK' \
    > test.out 2>&1
eval_tap $? 400 'DownloadCategories' test.out

#- 401 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'FlEdsKQP' \
    --namespace $AB_NAMESPACE \
    --language 'mvDgiGqi' \
    --storeId 'hEYXJ1Ls' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetCategory' test.out

#- 402 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'b76ZNhmr' \
    --namespace $AB_NAMESPACE \
    --language 'fLSwLMWP' \
    --storeId 'ziBRfMPX' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetChildCategories' test.out

#- 403 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'euplUyOW' \
    --namespace $AB_NAMESPACE \
    --language 'b2AwN3UA' \
    --storeId 'x0rmd8ZW' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetDescendantCategories' test.out

#- 404 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 404 'PublicListCurrencies' test.out

#- 405 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 405 'GeDLCDurableRewardShortMap' test.out

#- 406 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'GetAppleConfigVersion' test.out

#- 407 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 407 'GetIAPItemMapping' test.out

#- 408 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'B0dSPjit' \
    --region 'g5VY2WXA' \
    --storeId 'NuS79trJ' \
    --appId 'riAzozq0' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemByAppId' test.out

#- 409 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId '0fbXFnd1' \
    --categoryPath 'GvZrm4iK' \
    --features 'nMxP9V5U' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --language 'jSail249' \
    --limit '24' \
    --offset '44' \
    --region 'uvS2caCV' \
    --sortBy '["name:asc", "createdAt:asc"]' \
    --storeId 'zgsu7NgR' \
    --tags 'lKclLyIk' \
    > test.out 2>&1
eval_tap $? 409 'PublicQueryItems' test.out

#- 410 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'qtbEPQyG' \
    --region 'Dzfr5AOX' \
    --storeId '4OqYsxUl' \
    --sku 'r0OUqi05' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetItemBySku' test.out

#- 411 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'FbYSvBuX' \
    --storeId '1cJnsXAG' \
    --itemIds 'DtNLJ84J' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetEstimatedPrice' test.out

#- 412 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'byuxwGi5' \
    --region 'TsWkr4nd' \
    --storeId 'ueLgyAXF' \
    --itemIds '704qORY4' \
    > test.out 2>&1
eval_tap $? 412 'PublicBulkGetItems' test.out

#- 413 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["b7bsZDMV", "HfdzDuYj", "1vcDQ3Yx"]}' \
    > test.out 2>&1
eval_tap $? 413 'PublicValidateItemPurchaseCondition' test.out

#- 414 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'COINS' \
    --limit '53' \
    --offset '15' \
    --region 'bpwXrv6C' \
    --storeId 'pzSRKiWE' \
    --keyword 'eJt20sCT' \
    --language 'cjz7Hi6V' \
    > test.out 2>&1
eval_tap $? 414 'PublicSearchItems' test.out

#- 415 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'G0VuD0xB' \
    --namespace $AB_NAMESPACE \
    --language 'WWWRZvcW' \
    --region '1SAYuIOL' \
    --storeId 'PfI37Dmk' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetApp' test.out

#- 416 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '517X5Kln' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItemDynamicData' test.out

#- 417 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'dsJ7c2Bn' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'WkQ8cRBE' \
    --populateBundle 'false' \
    --region 'oJJ6m0HQ' \
    --storeId 'xxc1vzzn' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItem' test.out

#- 418 GetPaymentCustomization
eval_tap 0 418 'GetPaymentCustomization # SKIP deprecated' test.out

#- 419 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "7yrsTjLh", "successUrl": "sgq5UTe7"}, "paymentOrderNo": "eKO6yvpk", "paymentProvider": "NEONPAY", "returnUrl": "7sl2VXfc", "ui": "9vzYZGIf", "zipCode": "PrSwwa1j"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentUrl' test.out

#- 420 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'I3IzbM7H' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentMethods' test.out

#- 421 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'arlD8qpW' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetUnpaidPaymentOrder' test.out

#- 422 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KPmY7CEi' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'cWwu1ORd' \
    --body '{"token": "ceTEpi4B"}' \
    > test.out 2>&1
eval_tap $? 422 'Pay' test.out

#- 423 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ME3pXMAh' \
    > test.out 2>&1
eval_tap $? 423 'PublicCheckPaymentOrderPaidStatus' test.out

#- 424 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'CHECKOUT' \
    --region 'SggrI4eg' \
    > test.out 2>&1
eval_tap $? 424 'GetPaymentPublicConfig' test.out

#- 425 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'YnAnEIbj' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetQRCode' test.out

#- 426 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'lvP5cvL4' \
    --foreinginvoice 'gY9oF3wu' \
    --invoiceId 'mfh1IS0h' \
    --payload 'fcp1Ndaq' \
    --redirectResult 'dO2dTp7x' \
    --resultCode 'yvjC1ua8' \
    --sessionId 'aBNPTUcA' \
    --status 'Tncsnbub' \
    --token 'uQvVqnQm' \
    --type 'FN1qW4cO' \
    --userId 's1JiJwRM' \
    --orderNo 'JmWcHNmq' \
    --paymentOrderNo '3FHk6Kyv' \
    --paymentProvider 'ADYEN' \
    --returnUrl '6KqaR9Cj' \
    > test.out 2>&1
eval_tap $? 426 'PublicNormalizePaymentReturnUrl' test.out

#- 427 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'xBsH0jiu' \
    --paymentOrderNo 'C00bfcOC' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 427 'GetPaymentTaxValue' test.out

#- 428 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'pxxKlDFv' \
    > test.out 2>&1
eval_tap $? 428 'GetRewardByCode' test.out

#- 429 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'y1ygaVbU' \
    --limit '59' \
    --offset '12' \
    --sortBy '["rewardCode:desc", "rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 429 'QueryRewards1' test.out

#- 430 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'HO7KRcsr' \
    > test.out 2>&1
eval_tap $? 430 'GetReward1' test.out

#- 431 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicListStores' test.out

#- 432 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["pCerTucs", "fC3eZFJg", "va884QND"]' \
    --itemIds '["Xu1kz6AE", "Eh03TqzR", "ts7xSrEC"]' \
    --skus '["AFNLu8u2", "mTecyRye", "eTDwKnRx"]' \
    > test.out 2>&1
eval_tap $? 432 'PublicExistsAnyMyActiveEntitlement' test.out

#- 433 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'vMwNWHHU' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 434 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'sjwDizHD' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 435 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'Oe6Tcx7X' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 436 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["Lgs6knpj", "13CvPsrA", "YagCBul3"]' \
    --itemIds '["VB2xAk4z", "fqy0iJvE", "9Da4LMuU"]' \
    --skus '["0sbDdGEs", "0kiAbEcU", "qGqKck1u"]' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetEntitlementOwnershipToken' test.out

#- 437 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "eOH7RhZZ", "language": "uJOJ", "region": "BNHUJbC0"}' \
    > test.out 2>&1
eval_tap $? 437 'SyncTwitchDropsEntitlement' test.out

#- 438 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'E5jQpu2m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 438 'PublicGetMyWallet' test.out

#- 439 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ic6RIDIJ' \
    --body '{"epicGamesJwtToken": "wG4rCF6S"}' \
    > test.out 2>&1
eval_tap $? 439 'SyncEpicGameDLC' test.out

#- 440 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ey1VcQ96' \
    > test.out 2>&1
eval_tap $? 440 'SyncOculusDLC' test.out

#- 441 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'cLshfZ5D' \
    --body '{"serviceLabel": 99}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventory' test.out

#- 442 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Z0B5ZUNi' \
    --body '{"serviceLabels": [0, 74, 64]}' \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 443 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Tf5yhiCo' \
    --body '{"appId": "0CGw1Y8A", "steamId": "bAOt1mFc"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncSteamDLC' test.out

#- 444 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UxI8CpPF' \
    --body '{"xstsToken": "zHIhWd6y"}' \
    > test.out 2>&1
eval_tap $? 444 'SyncXboxDLC' test.out

#- 445 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RDFH3JjG' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '9mpICidt' \
    --features '["gKg5MEP0", "hLgGbFcd", "inphhYHZ"]' \
    --itemId '["LqUDvaCK", "gbBGTQvf", "vUaFhe0f"]' \
    --limit '3' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 445 'PublicQueryUserEntitlements' test.out

#- 446 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'jt4VzULk' \
    --appId 'Wchz0Ak8' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserAppEntitlementByAppId' test.out

#- 447 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'CRTRLe8g' \
    --limit '28' \
    --offset '3' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 447 'PublicQueryUserEntitlementsByAppType' test.out

#- 448 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'fHvANG1S' \
    --availablePlatformOnly 'false' \
    --ids '["h3r7xN2w", "AubglFRt", "f6VsJp3R"]' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementsByIds' test.out

#- 449 PublicGetUserEntitlementByItemId
eval_tap 0 449 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 450 PublicGetUserEntitlementBySku
eval_tap 0 450 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 451 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'RWYbqKls' \
    --endDate 'eSeiKFff' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '86' \
    --offset '76' \
    --startDate 'DNb3RtOz' \
    > test.out 2>&1
eval_tap $? 451 'PublicUserEntitlementHistory' test.out

#- 452 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'OH9nHL25' \
    --appIds '["V0gAaRvL", "HBMOawX3", "dwI5EtXo"]' \
    --itemIds '["0VgATjZY", "7r162IRN", "aA5VjHYt"]' \
    --skus '["4nrVJmCf", "9ke9afq0", "VzfJpA5Z"]' \
    > test.out 2>&1
eval_tap $? 452 'PublicExistsAnyUserActiveEntitlement' test.out

#- 453 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'euxT0frw' \
    --appId 'xPsUCO7v' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'xlkL2uCw' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId '2hTYtZRs' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'mEfp9o2o' \
    --ids '["uZ4d4stc", "9qWNC6xB", "oAaiZJJP"]' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 456 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ZH4Sphgu' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'oA1TK6t1' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 457 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'tFIeL03x' \
    --namespace $AB_NAMESPACE \
    --userId 'ZxTgsYAF' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlement' test.out

#- 458 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'IdHbCF1C' \
    --namespace $AB_NAMESPACE \
    --userId 'smUQf77i' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["D7rcEceH", "GSIfx1zg", "7s3eFf2M"], "requestId": "g6XwNkX0", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 458 'PublicConsumeUserEntitlement' test.out

#- 459 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'KwloZZqC' \
    --namespace $AB_NAMESPACE \
    --userId 'inTy0NHi' \
    --body '{"requestId": "tkypstX4", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSellUserEntitlement' test.out

#- 460 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'ODHsKm1l' \
    --namespace $AB_NAMESPACE \
    --userId 'gcFJOdIn' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 52}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSplitUserEntitlement' test.out

#- 461 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'nF7jddH3' \
    --namespace $AB_NAMESPACE \
    --userId '59MjLMYl' \
    --body '{"entitlementId": "5WJn5DT9", "metadata": {"operationSource": "INVENTORY"}, "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 461 'PublicTransferUserEntitlement' test.out

#- 462 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'opSlhHWn' \
    --body '{"code": "FCotk4bu", "language": "nUdV-Cd", "region": "YLGQ6NFi"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicRedeemCode' test.out

#- 463 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'imzskyQA' \
    --body '{"excludeOldTransactions": true, "language": "VHR_fzIA", "productId": "IpKWFTiq", "receiptData": "3sxSduJE", "region": "7r41zSjA", "transactionId": "SWdLVoCs"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicFulfillAppleIAPItem' test.out

#- 464 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'aR57HISt' \
    --body '{"epicGamesJwtToken": "j9821QZG"}' \
    > test.out 2>&1
eval_tap $? 464 'SyncEpicGamesInventory' test.out

#- 465 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'xCskryjA' \
    --body '{"autoAck": true, "autoConsume": false, "language": "Izak", "orderId": "2eTC79IW", "packageName": "W4K3zSDC", "productId": "Y5Wrd7SG", "purchaseTime": 1, "purchaseToken": "5lRN2eRz", "region": "utL8T8PM", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 465 'PublicFulfillGoogleIAPItem' test.out

#- 466 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'qskERKYC' \
    --body '{"skus": ["LuxoD77W", "XQCAvLZa", "IozgsUqi"]}' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusSubscriptions' test.out

#- 467 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '5raoBWPD' \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusConsumableEntitlements' test.out

#- 468 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'YVWUdJW7' \
    --body '{"currencyCode": "i6dl0hjh", "price": 0.007459388053434268, "productId": "yGS076fZ", "serviceLabel": 20}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStore' test.out

#- 469 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '9UFMK5vV' \
    --body '{"currencyCode": "0QjobT1l", "price": 0.9429469465806004, "productId": "YtsIerOk", "serviceLabels": [17, 42, 23]}' \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 470 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '2Pe2ZTkA' \
    --body '{"appId": "w3xtNIWg", "currencyCode": "k3AEMHpS", "language": "zEu_nI", "price": 0.5249529365239834, "productId": "4LYkOVxY", "region": "gw4Z447s", "steamId": "jQvW6n2G"}' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamInventory' test.out

#- 471 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'LaTZ8wt1' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamAbnormalTransaction' test.out

#- 472 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '0HskN1i1' \
    --body '{"orderId": "iyVJ6cYe"}' \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamIAPByTransaction' test.out

#- 473 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId '49Xb3mMJ' \
    --activeOnly 'false' \
    --groupId 'RZC8sVj3' \
    --limit '92' \
    --offset '70' \
    --productId '9WK8hC3J' \
    > test.out 2>&1
eval_tap $? 473 'PublicQueryUserThirdPartySubscription' test.out

#- 474 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'c5b1MgYC' \
    --body '{"gameId": "I72TQjc0", "language": "cjj-hu", "region": "cYxajrYA"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncTwitchDropsEntitlement1' test.out

#- 475 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'olw6xLof' \
    --body '{"currencyCode": "FCNmEmDZ", "price": 0.8038929432283731, "productId": "H4lwqedS", "xstsToken": "eOh5KrHK"}' \
    > test.out 2>&1
eval_tap $? 475 'SyncXboxInventory' test.out

#- 476 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pYOlyHsX' \
    --discounted 'false' \
    --itemId 'FnauIa2h' \
    --limit '20' \
    --offset '22' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 476 'PublicQueryUserOrders' test.out

#- 477 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '156Bj0Mp' \
    --body '{"currencyCode": "ro0Sgy7r", "discountCodes": ["eCzRhKqC", "Lb22WnJL", "CGrAiAzQ"], "discountedPrice": 38, "ext": {"2wYNYI2h": {}, "A2oVElq8": {}, "aIBfOzkV": {}}, "itemId": "JF9x5x6O", "language": "pyyz-fQwQ-042", "price": 96, "quantity": 1, "region": "T00JqPN9", "returnUrl": "CuV7ipok", "sectionId": "KgePm5iS"}' \
    > test.out 2>&1
eval_tap $? 477 'PublicCreateUserOrder' test.out

#- 478 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'TGKTamBA' \
    --body '{"currencyCode": "juX8gzIA", "discountCodes": ["AAJ5wrZi", "gncUOh6l", "Xx9mSSvK"], "discountedPrice": 51, "itemId": "ikAwYJh8", "price": 15, "quantity": 96}' \
    > test.out 2>&1
eval_tap $? 478 'PublicPreviewOrderPrice' test.out

#- 479 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tLcJz9Kh' \
    --userId 'LUAIMT7a' \
    > test.out 2>&1
eval_tap $? 479 'PublicGetUserOrder' test.out

#- 480 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'j8rv3zeg' \
    --userId 'Hhe7a5pZ' \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelUserOrder' test.out

#- 481 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Hs3Bb23b' \
    --userId 'Jq4J7AAB' \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserOrderHistories' test.out

#- 482 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'tfBqQ7Zf' \
    --userId 'L0IgIH60' \
    > test.out 2>&1
eval_tap $? 482 'PublicDownloadUserOrderReceipt' test.out

#- 483 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '1ZYACDAu' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetPaymentAccounts' test.out

#- 484 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'hW4IqIs3' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'NMlvT5RG' \
    > test.out 2>&1
eval_tap $? 484 'PublicDeletePaymentAccount' test.out

#- 485 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'j9XgHrnr' \
    --autoCalcEstimatedPrice 'false' \
    --language 'twgCA7Pt' \
    --region 'fH5EKzYO' \
    --storeId 'x149usXr' \
    --viewId 't5aTLTRI' \
    > test.out 2>&1
eval_tap $? 485 'PublicListActiveSections' test.out

#- 486 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'YgTtdfKI' \
    --chargeStatus 'SETUP' \
    --itemId 'PU8QvDJV' \
    --limit '53' \
    --offset '35' \
    --sku 'Gq5511FQ' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 486 'PublicQueryUserSubscriptions' test.out

#- 487 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Ym768lOD' \
    --body '{"currencyCode": "K3epuoln", "itemId": "o34KiLbL", "language": "UXi-cx", "region": "OQLRI5Qo", "returnUrl": "j54sVuE9", "source": "4G8M55VV"}' \
    > test.out 2>&1
eval_tap $? 487 'PublicSubscribeSubscription' test.out

#- 488 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'OdluAn5z' \
    --itemId '6AszwUzb' \
    > test.out 2>&1
eval_tap $? 488 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 489 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jaq2U1nP' \
    --userId 'pFAndnMx' \
    > test.out 2>&1
eval_tap $? 489 'PublicGetUserSubscription' test.out

#- 490 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'o88thB1s' \
    --userId 'JH5PZOVG' \
    > test.out 2>&1
eval_tap $? 490 'PublicChangeSubscriptionBillingAccount' test.out

#- 491 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ma1b9Yn0' \
    --userId 'nqdVCTHv' \
    --body '{"immediate": false, "reason": "Xrp2uOZj"}' \
    > test.out 2>&1
eval_tap $? 491 'PublicCancelSubscription' test.out

#- 492 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'keEhzM0b' \
    --userId 'FELxJojw' \
    --excludeFree 'false' \
    --limit '43' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 492 'PublicGetUserSubscriptionBillingHistories' test.out

#- 493 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'oz8MhACK' \
    --language 'MmlgcWur' \
    --storeId 'K7PTcz45' \
    > test.out 2>&1
eval_tap $? 493 'PublicListViews' test.out

#- 494 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'ziXN8XFx' \
    --namespace $AB_NAMESPACE \
    --userId 'or64BLek' \
    > test.out 2>&1
eval_tap $? 494 'PublicGetWallet' test.out

#- 495 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'iW6z9ZRG' \
    --namespace $AB_NAMESPACE \
    --userId 'ryZpeEjt' \
    --limit '39' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 495 'PublicListUserWalletTransactions' test.out

#- 496 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 496 'PublicGetMyDLCContent' test.out

#- 497 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'UtLunObM' \
    --limit '5' \
    --offset '17' \
    --startTime 'r4EEtoAN' \
    --state 'REVOKED' \
    --transactionId '28xPoCxM' \
    --userId 'B2eBqWsd' \
    > test.out 2>&1
eval_tap $? 497 'QueryFulfillments' test.out

#- 498 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'R0DDBxB2' \
    --baseAppId 'Zxz33BAV' \
    --categoryPath 'BvoNkpGW' \
    --features 'KpQ4yvNB' \
    --includeSubCategoryItem 'true' \
    --itemName 'm2gUamwQ' \
    --itemStatus 'ACTIVE' \
    --itemType '["EXTENSION", "SEASON", "BUNDLE"]' \
    --limit '35' \
    --offset '41' \
    --region 'X6Ww8mzA' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder:asc", "updatedAt:desc", "updatedAt:asc"]' \
    --storeId 'YAzP3xi9' \
    --tags 'onOb6YzK' \
    --targetNamespace '3EyiZmA6' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 498 'QueryItemsV2' test.out

#- 499 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'ORo1MTK3' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 499 'ImportStore1' test.out

#- 500 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Zv4kgOTb' \
    --body '{"itemIds": ["jxggTwW2", "n0FMVXP1", "nAsXbOgG"]}' \
    > test.out 2>&1
eval_tap $? 500 'ExportStore1' test.out

#- 501 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'iwB9sZ06' \
    --body '{"entitlementCollectionId": "lby6ocad", "entitlementOrigin": "Twitch", "metadata": {"8Weqr8Mf": {}, "Djytdsm9": {}, "b8Y5DbKL": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "LqSr0XZ0", "namespace": "jVFzb7xV"}, "item": {"itemId": "UIYnOgV8", "itemName": "9DhSGPx5", "itemSku": "zNGLWhzf", "itemType": "r1Qvr5oH"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "UtNJxJM1", "namespace": "EnKEckNt"}, "item": {"itemId": "mvyIRPDk", "itemName": "fUpc9HKV", "itemSku": "SszNbBhB", "itemType": "jK6H5BA7"}, "quantity": 47, "type": "ITEM"}, {"currency": {"currencyCode": "8NFImhFw", "namespace": "kFjMVlGv"}, "item": {"itemId": "m9fiFjDk", "itemName": "whvsih2y", "itemSku": "KOHA8YUA", "itemType": "qqHY5tZX"}, "quantity": 81, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "ajHpxZMb"}' \
    > test.out 2>&1
eval_tap $? 501 'FulfillRewardsV2' test.out

#- 502 FulfillItems
eval_tap 0 502 'FulfillItems # SKIP deprecated' test.out

#- 503 RetryFulfillItems
eval_tap 0 503 'RetryFulfillItems # SKIP deprecated' test.out

#- 504 RevokeItems
eval_tap 0 504 'RevokeItems # SKIP deprecated' test.out

#- 505 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Sktr0A4H' \
    --body '{"transactionId": "iotD56P7"}' \
    > test.out 2>&1
eval_tap $? 505 'V2PublicFulfillAppleIAPItem' test.out

#- 506 BulkFulfillItemsV3
samples/cli/sample-apps Platform bulkFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tN5hUR2i' \
    --body '[{"items": [{"duration": 9, "endDate": "1976-09-03T00:00:00Z", "entitlementCollectionId": "uSjEnN5L", "entitlementOrigin": "Other", "itemId": "hVDR9uFH", "itemSku": "AXnf1Irq", "language": "Ke98u4oj", "metadata": {"rDzLiGNF": {}, "MKnrUucD": {}, "dOrsEEoA": {}}, "orderNo": "UXPmXjk9", "origin": "Oculus", "quantity": 91, "region": "PCrQ9XlO", "source": "PAYMENT", "startDate": "1988-11-23T00:00:00Z", "storeId": "ATmJ2WuA"}, {"duration": 25, "endDate": "1981-03-06T00:00:00Z", "entitlementCollectionId": "AQVhD5Mr", "entitlementOrigin": "Steam", "itemId": "NTaQ8Eig", "itemSku": "Zp7kFXNW", "language": "ogdXn18a", "metadata": {"iIMQ9x7d": {}, "m6KwzBrH": {}, "oRJNp107": {}}, "orderNo": "EmOYytz1", "origin": "IOS", "quantity": 66, "region": "HsVpeVnM", "source": "REFERRAL_BONUS", "startDate": "1999-04-29T00:00:00Z", "storeId": "7I877bL6"}, {"duration": 20, "endDate": "1984-08-23T00:00:00Z", "entitlementCollectionId": "qoXcD1li", "entitlementOrigin": "IOS", "itemId": "rDJCFhCi", "itemSku": "8ifjRhr9", "language": "72IR6JjL", "metadata": {"wq2t19UY": {}, "ilaa8YGr": {}, "WksdDT60": {}}, "orderNo": "sfcfiZ1N", "origin": "System", "quantity": 35, "region": "0MrwU1BL", "source": "PAYMENT", "startDate": "1988-03-22T00:00:00Z", "storeId": "z6x8Ljsl"}], "transactionId": "2J7KCOAe"}, {"items": [{"duration": 36, "endDate": "1974-07-17T00:00:00Z", "entitlementCollectionId": "spEkRSln", "entitlementOrigin": "Epic", "itemId": "fUIxC9wu", "itemSku": "9IJ44VgI", "language": "x6LKwFrp", "metadata": {"P1PAbSDR": {}, "VV9Ma4gO": {}, "ZqoDSP5V": {}}, "orderNo": "H9nMQD91", "origin": "Playstation", "quantity": 70, "region": "Kf2IOWm7", "source": "REWARD", "startDate": "1977-11-04T00:00:00Z", "storeId": "Dq2Q4sPX"}, {"duration": 24, "endDate": "1973-11-15T00:00:00Z", "entitlementCollectionId": "bs3jCpjB", "entitlementOrigin": "GooglePlay", "itemId": "Iiel9KRk", "itemSku": "p5lZEZ6T", "language": "pkzCHbYK", "metadata": {"nOk9yQA9": {}, "j5ltaEUE": {}, "jDMxcTyL": {}}, "orderNo": "a89OkSwQ", "origin": "Oculus", "quantity": 27, "region": "S08IoqQq", "source": "PURCHASE", "startDate": "1975-06-06T00:00:00Z", "storeId": "pfLaqZCp"}, {"duration": 92, "endDate": "1991-10-25T00:00:00Z", "entitlementCollectionId": "SU9vnh5d", "entitlementOrigin": "Steam", "itemId": "bmsN3aMD", "itemSku": "jq18p98a", "language": "EUhH0qed", "metadata": {"bk9bHz1G": {}, "EMZJZQWy": {}, "lJ6AffAB": {}}, "orderNo": "yxeUeFYS", "origin": "Twitch", "quantity": 2, "region": "uWy0IxQr", "source": "SELL_BACK", "startDate": "1973-05-22T00:00:00Z", "storeId": "ybFHccnB"}], "transactionId": "bjK8LU9I"}, {"items": [{"duration": 63, "endDate": "1999-01-14T00:00:00Z", "entitlementCollectionId": "mZfgYWAZ", "entitlementOrigin": "Oculus", "itemId": "cYV94vku", "itemSku": "U0GBmKW1", "language": "E4EFgdiy", "metadata": {"pJxbQ303": {}, "mtLuPucZ": {}, "lgOwzJsX": {}}, "orderNo": "QjY5kjVb", "origin": "System", "quantity": 27, "region": "NLfOJXbA", "source": "EXPIRATION", "startDate": "1986-10-23T00:00:00Z", "storeId": "PdkUFt5c"}, {"duration": 21, "endDate": "1976-03-05T00:00:00Z", "entitlementCollectionId": "PxX3LWLv", "entitlementOrigin": "Oculus", "itemId": "TC3brXPv", "itemSku": "7Sxha9lv", "language": "R763KTlg", "metadata": {"oMusy62J": {}, "NpuIQQif": {}, "YcZOSnZO": {}}, "orderNo": "zfHt8tGX", "origin": "Other", "quantity": 13, "region": "hIV7M41h", "source": "GIFT", "startDate": "1994-09-17T00:00:00Z", "storeId": "Oy8r4wNp"}, {"duration": 15, "endDate": "1997-06-29T00:00:00Z", "entitlementCollectionId": "bCQO5eUj", "entitlementOrigin": "System", "itemId": "auj0f29S", "itemSku": "qtu1cKEt", "language": "eEhUntOl", "metadata": {"kDbrdNQi": {}, "Syyt7soK": {}, "tMh8Sd5M": {}}, "orderNo": "DmvsIB9U", "origin": "Twitch", "quantity": 49, "region": "tyTMsCBP", "source": "IAP", "startDate": "1993-06-16T00:00:00Z", "storeId": "DGVWOp9U"}], "transactionId": "y1Ah357u"}]' \
    > test.out 2>&1
eval_tap $? 506 'BulkFulfillItemsV3' test.out

#- 507 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 't1tODZ3I' \
    --userId 'SqPyRYbT' \
    --body '{"items": [{"duration": 19, "endDate": "1996-05-03T00:00:00Z", "entitlementCollectionId": "Op6bhml6", "entitlementOrigin": "Nintendo", "itemId": "9lSOsnRa", "itemSku": "s9p7P2Fn", "language": "QL70BGXN", "metadata": {"NY4X2Qf5": {}, "dgFtSToh": {}, "7wD9598O": {}}, "orderNo": "BY4MYGW9", "origin": "Epic", "quantity": 38, "region": "Y99Nix0D", "source": "ORDER_REVOCATION", "startDate": "1991-06-23T00:00:00Z", "storeId": "42eFqukw"}, {"duration": 21, "endDate": "1996-07-10T00:00:00Z", "entitlementCollectionId": "Ix0Kcw2O", "entitlementOrigin": "GooglePlay", "itemId": "amvjIp5h", "itemSku": "lXZ9ZBLN", "language": "0hcTz0M3", "metadata": {"hO61e9PA": {}, "8RCgL0KT": {}, "f8nluj8D": {}}, "orderNo": "Vh1dxdN0", "origin": "Xbox", "quantity": 62, "region": "zh2yENzu", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1981-01-19T00:00:00Z", "storeId": "0QnMrJTF"}, {"duration": 47, "endDate": "1976-01-31T00:00:00Z", "entitlementCollectionId": "9tgYG2LX", "entitlementOrigin": "Other", "itemId": "RU4ICzGV", "itemSku": "m28aLLj7", "language": "qvM7fKhL", "metadata": {"o7pFr2kj": {}, "SyG8yc35": {}, "o6cV62tJ": {}}, "orderNo": "ni4QSqn3", "origin": "Other", "quantity": 42, "region": "Msyyt4uk", "source": "DLC", "startDate": "1973-10-12T00:00:00Z", "storeId": "vTOCf1dJ"}]}' \
    > test.out 2>&1
eval_tap $? 507 'FulfillItemsV3' test.out

#- 508 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'czigzzgm' \
    --userId '6hvjR4qN' \
    > test.out 2>&1
eval_tap $? 508 'RetryFulfillItemsV3' test.out

#- 509 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '2o8nvZ3W' \
    --userId 'HACl7xaU' \
    > test.out 2>&1
eval_tap $? 509 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE