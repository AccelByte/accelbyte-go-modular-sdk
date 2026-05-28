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
echo "1..510"

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
    --id 'kzg1miJ9' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'dAnesS66' \
    --body '{"grantDays": "LNoNBJeY"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'r8J4I5kS' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'J9zC0Zh0' \
    --body '{"grantDays": "XevYwvIa"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "WQboqQni", "dryRun": true, "fulfillmentUrl": "dFedm5Fp", "itemType": "MEDIA", "purchaseConditionUrl": "4YXubX8z"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'SWB50uLi' \
    --itemType 'INGAMEITEM' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'qwbfZYzc' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'nGxw2wZk' \
    --body '{"clazz": "wbDt3KXD", "dryRun": false, "fulfillmentUrl": "28KPWRUN", "purchaseConditionUrl": "uR4tvKQc"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'SjV6aHqx' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'XrZDaBw7' \
    --offset '86' \
    --tag 'ELku9mzF' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "m3qtEAru", "discountConfig": {"categories": [{"categoryPath": "UrEpVukv", "includeSubCategories": false}, {"categoryPath": "fx9ZC3LI", "includeSubCategories": true}, {"categoryPath": "ZhbJ7cPe", "includeSubCategories": true}], "currencyCode": "ChrOuvyH", "currencyNamespace": "cOfyagt6", "discountAmount": 35, "discountPercentage": 36, "discountType": "PERCENTAGE", "items": [{"itemId": "EMmo4C7T", "itemName": "FZ206fhs"}, {"itemId": "UFU6KfIh", "itemName": "36niArmc"}, {"itemId": "IqLcOm29", "itemName": "niDUs9P9"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 78, "itemId": "voCiibQx", "itemName": "xIPu72fB", "quantity": 7}, {"extraSubscriptionDays": 60, "itemId": "OPOXbo2V", "itemName": "FIDlsc7j", "quantity": 73}, {"extraSubscriptionDays": 43, "itemId": "AYRB22n9", "itemName": "IoqTNwkC", "quantity": 67}], "maxRedeemCountPerCampaignPerUser": 28, "maxRedeemCountPerCode": 73, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 93, "name": "fwObw61y", "redeemEnd": "1992-06-17T00:00:00Z", "redeemStart": "1978-05-24T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["7hLWXinc", "k2DNLZ0P", "e1H9TbPU"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'ZQY0GTq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'Gnl12ueh' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6q1L6T9U", "discountConfig": {"categories": [{"categoryPath": "ss3kvPJ2", "includeSubCategories": false}, {"categoryPath": "GTAigfNp", "includeSubCategories": false}, {"categoryPath": "FseeAvet", "includeSubCategories": true}], "currencyCode": "ZWYFcZhU", "currencyNamespace": "BC3waWnk", "discountAmount": 92, "discountPercentage": 45, "discountType": "PERCENTAGE", "items": [{"itemId": "DuCdfrKq", "itemName": "UIsb19BP"}, {"itemId": "mlks0Ldd", "itemName": "1ZZbNB68"}, {"itemId": "zjBCyHVq", "itemName": "KAFXGzOL"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 29, "itemId": "UMjEi4Yi", "itemName": "5lyPyLgJ", "quantity": 97}, {"extraSubscriptionDays": 5, "itemId": "ehISEqxg", "itemName": "g5wbhLCy", "quantity": 51}, {"extraSubscriptionDays": 94, "itemId": "AmeyGDpi", "itemName": "rK3seVb4", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 89, "name": "WPfvfh0k", "redeemEnd": "1974-08-16T00:00:00Z", "redeemStart": "1974-12-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["gSMwLPXS", "QjJ9Js0c", "PWenCGNg"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'muaAjeXW' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "cElSiAkx", "oldName": "hFcAFzV4"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'uGYUSpjx' \
    --namespace $AB_NAMESPACE \
    --batchName 'oKMmzf89' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'L00FE7JL' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["ENTITLEMENT", "CAMPAIGN", "IAP"]}' \
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
    --body '{"appConfig": {"appName": "l9Y1xSMa"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "e5UkMu1m"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "4vPWpXn1"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "rRl9IvtA"}, "extendType": "CUSTOM"}' \
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
    --storeId 'MhDpS2wX' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ejlLMLai' \
    --body '{"categoryPath": "UHIE7AFQ", "localizationDisplayNames": {"Yne8V8py": "0YCEFG9H", "mwjTnrHv": "e14lz9PA", "faj8kcfz": "UVwodOMe"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'TQGHuZeC' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'M6VAHFVw' \
    --namespace $AB_NAMESPACE \
    --storeId 'oqWIrVNd' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'lgLP3vfo' \
    --namespace $AB_NAMESPACE \
    --storeId 'Nm0Q8h1s' \
    --body '{"localizationDisplayNames": {"LQH4YO1L": "gBNp6dGQ", "dcN8BWbb": "KRDK1GWg", "8tpDgfMo": "TyMQRu4D"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'n4TSNl6L' \
    --namespace $AB_NAMESPACE \
    --storeId 'mj7RDPOx' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'R1jzczju' \
    --namespace $AB_NAMESPACE \
    --storeId 'wM455BX9' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'ymgqz5vt' \
    --namespace $AB_NAMESPACE \
    --storeId 'sxbuNHJH' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'hlCOiUrN' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchName 'y7n2kOdd' \
    --batchNo '[31, 29, 70]' \
    --code 'IsxXDrxG' \
    --limit '94' \
    --offset '81' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '1AwbD1g3' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "Qm7qJ1Cb", "codeValue": "pD2PK4lO", "quantity": 88}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'HJp5SQro' \
    --namespace $AB_NAMESPACE \
    --batchName 'PzFuPyB3' \
    --batchNo '[94, 84, 7]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'c2ydBlj8' \
    --namespace $AB_NAMESPACE \
    --batchName 'd7ebpHTQ' \
    --batchNo '[75, 47, 61]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'ynELfusX' \
    --namespace $AB_NAMESPACE \
    --batchName '2ncyzAQZ' \
    --batchNo '[54, 71, 51]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'ZcJMk0xU' \
    --namespace $AB_NAMESPACE \
    --code 'KBYfYzl3' \
    --limit '95' \
    --offset '47' \
    --userId 'ClU8YPcj' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '0Yv0V7GO' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ZcTCf7iX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'mTOz2sxA' \
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
    --body '{"currencyCode": "wP6mhcrQ", "currencySymbol": "5TW9kEq9", "currencyType": "REAL", "decimals": 52, "localizationDescriptions": {"jNq8w0Qa": "kBTe4R1N", "7GGL8yj7": "IoGxCzCC", "KnWp784G": "3O0Ge40L"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'DEMvYMAV' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"RoBvY0so": "pKdcCmcs", "IC9jwZAD": "xYJyzw2Y", "8pHrIJyq": "zoq6Eolw"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'DU4QByMG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'MVisYi3A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'guBQ3Tja' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'V9jRaNKB' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id '5tSHIoam' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": true, "id": "bTxK2bDH", "rewards": [{"currency": {"currencyCode": "bBWJtukY", "namespace": "oddgMgpo"}, "item": {"itemId": "c4cpAaZg", "itemName": "ax5gFBwh", "itemSku": "yRoYz0ah", "itemType": "o7juyFlY"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "9InfGxkL", "namespace": "ttOoU3hP"}, "item": {"itemId": "eqVSYpcU", "itemName": "ROtCkD0h", "itemSku": "OTE6sjgO", "itemType": "ubxOdfcQ"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "0HrtvFbR", "namespace": "E1fkb6A6"}, "item": {"itemId": "7KYH5Lgy", "itemName": "u2qgvIWC", "itemSku": "n5fmpoe3", "itemType": "vqXPcRul"}, "quantity": 16, "type": "CURRENCY"}], "rvn": 1}, {"autoUpdate": false, "enableRevocation": false, "id": "etA7dPeS", "rewards": [{"currency": {"currencyCode": "A7fCmgW6", "namespace": "FvrRkalN"}, "item": {"itemId": "Yz1S73nJ", "itemName": "vFP1KZFm", "itemSku": "kEdam8dm", "itemType": "8mNVf9qe"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "AhX1m0Wr", "namespace": "aS4VGdsO"}, "item": {"itemId": "0ELrmpNL", "itemName": "6oRvcb60", "itemSku": "qxXPTV1w", "itemType": "0ZgqglMd"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "WvHAP72b", "namespace": "lmGKQZ2G"}, "item": {"itemId": "FVdA14k9", "itemName": "jIT32SF6", "itemSku": "DyW1X4C1", "itemType": "eYD4qD06"}, "quantity": 38, "type": "ITEM"}], "rvn": 34}, {"autoUpdate": false, "enableRevocation": true, "id": "Q7OKpd0n", "rewards": [{"currency": {"currencyCode": "uzugzZ9x", "namespace": "5wngEQz0"}, "item": {"itemId": "bDBLZphf", "itemName": "LaLBGUUW", "itemSku": "uWPfW2Ug", "itemType": "xvJ62yH8"}, "quantity": 82, "type": "CURRENCY"}, {"currency": {"currencyCode": "vEFR0MY5", "namespace": "ohrSE8IP"}, "item": {"itemId": "yafGchFK", "itemName": "OhEOtO4D", "itemSku": "6zlF6Nga", "itemType": "ZjmVFzCb"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "JZvr04sc", "namespace": "kIojOuPD"}, "item": {"itemId": "cGZMsPBV", "itemName": "xMwyVNYC", "itemSku": "FCoiFUZy", "itemType": "oOlGpj34"}, "quantity": 97, "type": "ITEM"}], "rvn": 79}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"3ACHsMaZ": "W9bOO6Eb", "gCvF61fu": "R3lfcKcK", "6qH6OPo3": "K1JX0A53"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"XMWSoDUL": "kGMIqTTL", "E4dKBmrh": "yYdROj1m", "Atcnr7av": "mEqQLs5Y"}}, {"platform": "XBOX", "platformDlcIdMap": {"wZibRHgK": "akwfyEcT", "9YohXjsu": "0VXM2Oxq", "QnjtUdwM": "wbfdxtFL"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'c0sh5Qfp' \
    --itemId '["N2qj7JH3", "RJqxteUF", "BE7S2kBP"]' \
    --limit '28' \
    --offset '48' \
    --origin 'System' \
    --userId '9nJOstUV' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["ZuFW9krV", "JCELGKBB", "5V3KIDj5"]' \
    --limit '71' \
    --offset '49' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "rWM20LSk", "endDate": "1976-10-21T00:00:00Z", "grantedCode": "KOeE82Gz", "itemId": "DIXiIC7J", "itemNamespace": "4UjWyFD4", "language": "GPUk-knSb", "metadata": {"VNqJcnCv": {}, "nA60W5ME": {}, "T8uoM40K": {}}, "origin": "Steam", "quantity": 41, "region": "OYVhNBpi", "source": "REFERRAL_BONUS", "startDate": "1993-06-16T00:00:00Z", "storeId": "7q8aQO5J"}, {"collectionId": "wE3e4AeJ", "endDate": "1988-02-06T00:00:00Z", "grantedCode": "L3XeQ4yl", "itemId": "s2VJsMud", "itemNamespace": "OCyHsoPQ", "language": "vk-ghLf-NV", "metadata": {"dVukQPP0": {}, "E264ehhE": {}, "Wfqc2PK4": {}}, "origin": "System", "quantity": 89, "region": "eikUBnTC", "source": "IAP", "startDate": "1984-03-22T00:00:00Z", "storeId": "j12GzV2g"}, {"collectionId": "Q7AfGl3N", "endDate": "1996-07-17T00:00:00Z", "grantedCode": "mvRndfOM", "itemId": "r5LWFZMn", "itemNamespace": "mgtCGKqa", "language": "qQs-582", "metadata": {"s5ibi9hj": {}, "sCgTnGbn": {}, "XdqrRbXf": {}}, "origin": "Steam", "quantity": 35, "region": "jUzZHNKH", "source": "IAP", "startDate": "1983-07-27T00:00:00Z", "storeId": "XIhaUDXd"}], "userIds": ["9g9nxBG2", "7myRa4V4", "lsh8wzkJ"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["qgvcLtA0", "gdQCbgYK", "DfdYAO68"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'RxiXe13a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '21' \
    --status 'FAIL' \
    --userId 'ekuKsuoF' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'j3X0mSHo' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'M1TX6VFp' \
    --limit '74' \
    --offset '21' \
    --startTime 'HVM0CEZL' \
    --status 'FAIL' \
    --userId 'jySHtyrl' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "f7Ws6VXa", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 35, "clientTransactionId": "XdGlNE4d"}, {"amountConsumed": 98, "clientTransactionId": "nSJXfzdD"}, {"amountConsumed": 11, "clientTransactionId": "djy0eMiz"}], "entitlementId": "OsALOxDI", "usageCount": 76}, {"clientTransaction": [{"amountConsumed": 41, "clientTransactionId": "WRuxzwhR"}, {"amountConsumed": 71, "clientTransactionId": "I8FXXHh2"}, {"amountConsumed": 96, "clientTransactionId": "13VOATHw"}], "entitlementId": "bm8moKAz", "usageCount": 76}, {"clientTransaction": [{"amountConsumed": 84, "clientTransactionId": "DdIuktMz"}, {"amountConsumed": 61, "clientTransactionId": "tkuS6J9w"}, {"amountConsumed": 99, "clientTransactionId": "2YLWbxda"}], "entitlementId": "oc6GPXrB", "usageCount": 25}], "purpose": "28dokoqX"}, "originalTitleName": "xGucqi9q", "paymentProductSKU": "F3JXe1av", "purchaseDate": "fu1jAojb", "sourceOrderItemId": "vt4zwObi", "titleName": "UBl1H5B2"}, "eventDomain": "jlzirsfv", "eventSource": "imrQb1og", "eventType": "9UTVC67l", "eventVersion": 33, "id": "12pQa6Ah", "timestamp": "vIZ4khQl"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "Q70cGNnS", "eventState": "AGDQKros", "lineItemId": "ZioTKDim", "orderId": "DpqoRYqS", "productId": "wi59Evp8", "productType": "JzAN5Wvh", "purchasedDate": "9shohbTy", "sandboxId": "FHWMZzJF", "skuId": "nJ3qAUQB", "subscriptionData": {"consumedDurationInDays": 80, "dateTime": "iWBaZ2Fz", "durationInDays": 43, "recurrenceId": "X3KL8veB"}}, "datacontenttype": "GvaEHsa6", "id": "J3hc2xjF", "source": "RuMGLC9W", "specVersion": "OzHVtevy", "subject": "gYWwOYJ1", "time": "poCF2ZYm", "traceparent": "uxjo08gG", "type": "Ug318Mbr"}' \
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
    --body '{"appAppleId": 36, "bundleId": "roQEcjkB", "issuerId": "xi3Ln54u", "keyId": "GweimGcd", "password": "mbmj2fcq", "version": "V2"}' \
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
    --body '{"sandboxId": "4aTLWWVH"}' \
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
    --body '{"applicationName": "xHP6oHxs", "notificationTokenAudience": "b0WyFiJQ", "notificationTokenEmail": "cboiO6On", "packageName": "MM6PuN2K", "serviceAccountId": "HDWyTTak"}' \
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
    --body '{"data": [{"itemIdentity": "edTGxuVE", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"khnfSogC": "Yq7VsL6U", "9u37et9T": "or3v7sQ7", "LeyjIVTO": "xfDP4FJf"}}, {"itemIdentity": "SKALpDdE", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"9sdWPPj2": "xBiGG7Wj", "7zbSLr4H": "Gi4RcenU", "OFl9FRdZ": "ifxY0qNk"}}, {"itemIdentity": "RdoxjcuS", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"euZyYWc3": "fZumwo1X", "eBBgEXrp": "x4d4viya", "0UFQC75u": "ih4Z3KYs"}}]}' \
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
    --body '{"appId": "CebYzrap", "appSecret": "F2kWoeDD", "webhookVerifyToken": "257dhHqZ"}' \
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
    --body '{"sku": "dBBTrRX8"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'kizOAYM2' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'F3GZErFp' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "OFAvM27p", "sku": "PIWMxgZk"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku '4SgjIJz9' \
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
    --body '{"backOfficeServerClientId": "ibSyQIU2", "backOfficeServerClientSecret": "Jjff1pj2", "enableStreamJob": false, "environment": "xApvvm9U", "streamName": "DNdxoHb4", "streamPartnerName": "vB29sxvF"}' \
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
    --body '{"backOfficeServerClientId": "S52NsvwW", "backOfficeServerClientSecret": "Zh8kexvX", "enableStreamJob": true, "environment": "yZrtXvBw", "streamName": "BYpHhuPd", "streamPartnerName": "AjUd3Aud"}' \
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
    --body '{"appId": "fJLOctmR", "env": "LIVE", "publisherAuthenticationKey": "Z9mX76ff", "syncMode": "INVENTORY"}' \
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
    --body '{"clientId": "SCMOfylv", "clientSecret": "JlG3N6Pv", "organizationId": "41TYjZqB"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "ilzBbnmL", "entraAppClientSecret": "ZExUmOyG", "entraTenantId": "Tp4N5m9V", "relyingPartyCert": "6Lh1B5Rq"}' \
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
    --password 'URORvKiL' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'OsoELpjO' \
    --externalId 'mJWCMvlb' \
    --limit '40' \
    --offset '79' \
    --source 'OCULUS' \
    --startDate '30skgPgP' \
    --status 'IGNORED' \
    --type 'FIqDakiX' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '27' \
    --orderId 'AOx0iw4D' \
    --steamId 'YK3ka2f3' \
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
    --body '{"env": "LIVE", "lastTime": "1994-11-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'W3DoTxqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '2' \
    --orderId 'f2h3C1rN' \
    --processStatus 'PROCESSED' \
    --steamId 'SIR08OPh' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'G3aIMKMx' \
    --limit '100' \
    --offset '86' \
    --platform 'PLAYSTATION' \
    --productId 'jp9eZg7e' \
    --userId '3dsqDNL6' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'L0EMeX0k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'rjKBgad4' \
    --feature 'xPiKwsSA' \
    --itemId 'PLfZVocj' \
    --itemType 'MEDIA' \
    --startTime '04LaAK1E' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime '2lx6r2V5' \
    --feature 'qZAoWFl1' \
    --itemId '0SaQoNa2' \
    --itemType 'SEASON' \
    --startTime 'AzxWgC5I' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'c3sMCm9A' \
    --body '{"categoryPath": "eMuW7K4o", "targetItemId": "iqYrsuqg", "targetNamespace": "teYAqfRE"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'NiEZl7Fe' \
    --body '{"appId": "ZC7It3vM", "appType": "GAME", "baseAppId": "4pfWh0O4", "boothName": "uIZ7dMcl", "categoryPath": "qxU35tGd", "clazz": "757A6SVz", "displayOrder": 98, "entitlementType": "DURABLE", "ext": {"y3vtXk7z": {}, "JwyYIq9K": {}, "ODmQNNkO": {}}, "features": ["sMEBeVJc", "zpfthexx", "qJ7n59X4"], "flexible": false, "images": [{"as": "dMv5jrMn", "caption": "EzLOZx9q", "height": 63, "imageUrl": "TqWlqagj", "smallImageUrl": "7hTeoW6n", "width": 72}, {"as": "kN201Go9", "caption": "FAYzkM1Z", "height": 61, "imageUrl": "UaFVQt2K", "smallImageUrl": "dOZ8M8Wi", "width": 4}, {"as": "iHOGNS5h", "caption": "JdLSDBD9", "height": 16, "imageUrl": "bC7bzZWX", "smallImageUrl": "9UOwu9CL", "width": 17}], "inventoryConfig": {"customAttributes": {"iSW5R2wh": {}, "eFbW1Bo8": {}, "RHQ08V3N": {}}, "serverCustomAttributes": {"YkWPuIIp": {}, "yjl78B0W": {}, "i4XZPJ7e": {}}, "slotUsed": 55}, "itemId": "fADXBINH", "itemIds": ["6qtoLLoq", "1RVIz9n0", "99jWtETB"], "itemQty": {"YvHDTAq7": 22, "gm1STfZ3": 41, "Fhp9toLV": 55}, "itemType": "COINS", "listable": true, "localizations": {"3xtnmXk0": {"description": "CyPx4ZMb", "localExt": {"NQgtG20n": {}, "qEceYzr0": {}, "nkLkUiDp": {}}, "longDescription": "NLFHfaRW", "title": "lCmbnMhJ"}, "PeqDgvJa": {"description": "QX2tX2pY", "localExt": {"qJ3ge4tQ": {}, "TIybfklL": {}, "HePCYYoT": {}}, "longDescription": "vsWXNasR", "title": "JUyMK3Pv"}, "Gq2lkSHt": {"description": "yS8M7WbL", "localExt": {"ZNEtBRMi": {}, "R8kjc9Bv": {}, "DUT0JPyr": {}}, "longDescription": "EKH2ksTd", "title": "vUQljFCs"}}, "lootBoxConfig": {"rewardCount": 70, "rewards": [{"lootBoxItems": [{"count": 92, "duration": 92, "endDate": "1973-02-17T00:00:00Z", "itemId": "0yj4McvQ", "itemSku": "lu7LFIHv", "itemType": "YM8Ezqfq"}, {"count": 78, "duration": 40, "endDate": "1984-06-22T00:00:00Z", "itemId": "M4j9e6Va", "itemSku": "imSqP4bO", "itemType": "7eDL0WaV"}, {"count": 53, "duration": 57, "endDate": "1976-10-08T00:00:00Z", "itemId": "Xioz5fqz", "itemSku": "yYlKI87G", "itemType": "g0EI8dz9"}], "name": "VMFgEZNE", "odds": 0.015730911544481363, "type": "REWARD_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 13, "duration": 61, "endDate": "1982-09-27T00:00:00Z", "itemId": "qj9iFEcF", "itemSku": "7xpQ6spP", "itemType": "0fHoxol6"}, {"count": 60, "duration": 72, "endDate": "1974-11-29T00:00:00Z", "itemId": "AQu0d5rV", "itemSku": "i7IS9mbA", "itemType": "maQCyCfv"}, {"count": 77, "duration": 100, "endDate": "1986-02-16T00:00:00Z", "itemId": "B65LNTCd", "itemSku": "tjfWZ7Bn", "itemType": "gdkf5x6X"}], "name": "snxsUxxi", "odds": 0.8087125365571527, "type": "REWARD_GROUP", "weight": 14}, {"lootBoxItems": [{"count": 84, "duration": 45, "endDate": "1982-07-19T00:00:00Z", "itemId": "LKFqzwk0", "itemSku": "13jeS0pK", "itemType": "DuMGJUBh"}, {"count": 67, "duration": 8, "endDate": "1973-01-31T00:00:00Z", "itemId": "rmsB5w43", "itemSku": "N4jMkbyr", "itemType": "tK11WFz1"}, {"count": 27, "duration": 64, "endDate": "1979-06-24T00:00:00Z", "itemId": "CSJhhxev", "itemSku": "ut3XqpdH", "itemType": "eHjM0zSc"}], "name": "72cbUFWs", "odds": 0.13220821062693588, "type": "PROBABILITY_GROUP", "weight": 43}], "rollFunction": "DEFAULT"}, "maxCount": 82, "maxCountPerUser": 34, "name": "izRK9drx", "optionBoxConfig": {"boxItems": [{"count": 39, "duration": 16, "endDate": "1977-09-15T00:00:00Z", "itemId": "kUG9d29W", "itemSku": "xrSx9Exg", "itemType": "7TqVXFw5"}, {"count": 27, "duration": 25, "endDate": "1986-04-21T00:00:00Z", "itemId": "lGYsnX2H", "itemSku": "7r4g7X4J", "itemType": "GtqQTC9l"}, {"count": 99, "duration": 21, "endDate": "1977-01-17T00:00:00Z", "itemId": "CBvqOWy1", "itemSku": "TZWR1xKF", "itemType": "NNBzh9v7"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 54, "fixedTrialCycles": 53, "graceDays": 80}, "regionData": {"AKAQqZq4": [{"currencyCode": "LOigL0VA", "currencyNamespace": "X2vG2Hhb", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1984-05-02T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1994-03-22T00:00:00Z", "expireAt": "1978-02-23T00:00:00Z", "price": 2, "purchaseAt": "1984-11-12T00:00:00Z", "trialPrice": 15}, {"currencyCode": "TF1C4aEE", "currencyNamespace": "XKyITJna", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1995-06-05T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1977-07-24T00:00:00Z", "expireAt": "1988-03-06T00:00:00Z", "price": 87, "purchaseAt": "1990-02-05T00:00:00Z", "trialPrice": 46}, {"currencyCode": "2eQEVu9b", "currencyNamespace": "fxq93bzY", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1986-10-13T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1994-05-07T00:00:00Z", "expireAt": "1982-07-30T00:00:00Z", "price": 44, "purchaseAt": "1985-04-29T00:00:00Z", "trialPrice": 90}], "y2LR8YFe": [{"currencyCode": "SEx4mFdH", "currencyNamespace": "NbfEpGzK", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1974-09-22T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1977-03-16T00:00:00Z", "expireAt": "1993-03-20T00:00:00Z", "price": 69, "purchaseAt": "1986-07-07T00:00:00Z", "trialPrice": 4}, {"currencyCode": "LZ0b1jEs", "currencyNamespace": "d1VkdcAo", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1973-06-27T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1981-09-16T00:00:00Z", "expireAt": "1993-09-19T00:00:00Z", "price": 27, "purchaseAt": "1975-06-19T00:00:00Z", "trialPrice": 8}, {"currencyCode": "Kegxb4FP", "currencyNamespace": "HJpjug7j", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1977-05-25T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1985-08-30T00:00:00Z", "expireAt": "1987-09-04T00:00:00Z", "price": 2, "purchaseAt": "1987-04-10T00:00:00Z", "trialPrice": 51}], "HUCKWhfe": [{"currencyCode": "T7UICohM", "currencyNamespace": "KQgDgaPf", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-01-02T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1996-03-04T00:00:00Z", "expireAt": "1992-10-31T00:00:00Z", "price": 37, "purchaseAt": "1977-01-06T00:00:00Z", "trialPrice": 14}, {"currencyCode": "SYYLzee5", "currencyNamespace": "6TyS1qHF", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1993-05-24T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1997-01-29T00:00:00Z", "expireAt": "1983-09-20T00:00:00Z", "price": 65, "purchaseAt": "1972-06-05T00:00:00Z", "trialPrice": 53}, {"currencyCode": "wFaxV8SO", "currencyNamespace": "23TQCwUL", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1997-10-17T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1998-02-12T00:00:00Z", "expireAt": "1991-09-18T00:00:00Z", "price": 16, "purchaseAt": "1972-12-08T00:00:00Z", "trialPrice": 1}]}, "saleConfig": {"currencyCode": "du4M0dKR", "price": 83}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "pj4AcSAp", "stackable": false, "status": "INACTIVE", "tags": ["PgExbPK4", "9Q3OTWax", "af2lSoU0"], "targetCurrencyCode": "JMPtn8Dj", "targetNamespace": "ALGEPNra", "thumbnailUrl": "Q3iDb5eO", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'rAVfoJOR' \
    --appId '3nX5XS1e' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'IZVihXFF' \
    --baseAppId 'zsRDAGG7' \
    --categoryPath 'CIbTqV7Z' \
    --features 'DM6dUeUE' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --limit '9' \
    --offset '11' \
    --region 'gad3vLtD' \
    --sortBy '["displayOrder:desc", "name:desc", "displayOrder:asc"]' \
    --storeId 'pt94ZrEL' \
    --tags 'YmqqeOT5' \
    --targetNamespace '5hVLqEMW' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["tR4PA0LY", "xJs7mx5T", "uoWhHcxu"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'vZuHzBU0' \
    --itemIds 'y3v1W7DM' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '8ShKrHNW' \
    --sku '0Sbc6bgU' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'V8ZVucZ9' \
    --populateBundle 'false' \
    --region 'Q7U6G8XQ' \
    --storeId 'JRAPdZjm' \
    --sku 'VYLyoLOY' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '59dvASmG' \
    --region 'Lqaf0Fcq' \
    --storeId 'k0YuAZUm' \
    --itemIds 'uKBVx7Rg' \
    --userId '0tjsLFyE' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'mhQgnCVY' \
    --sku '92Z7jlFM' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["8eBhV1Ov", "CW6Vt9JM", "E8jIv6Ck"]' \
    --storeId 'ESrj6nEG' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'CBbyndFs' \
    --region '2pdY4tsR' \
    --storeId 'MnBWr0SV' \
    --itemIds 'KkQXvBlE' \
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
    --platform 'BOZqCwVx' \
    --userId 'cetFDiuP' \
    --body '{"itemIds": ["xrXszz05", "2IS7VmiS", "gvfW3YRl"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'tVbYq6EP' \
    --body '{"changes": [{"itemIdentities": ["jcxz3amo", "KII4Jx0A", "b5qMyfIT"], "itemIdentityType": "ITEM_ID", "regionData": {"NUSqqV7q": [{"currencyCode": "pdcl3PKr", "currencyNamespace": "Em0HIDMh", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1985-04-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1992-04-18T00:00:00Z", "discountedPrice": 41, "expireAt": "1995-01-01T00:00:00Z", "price": 6, "purchaseAt": "1979-09-03T00:00:00Z", "trialPrice": 59}, {"currencyCode": "ErQLaIYG", "currencyNamespace": "LtgtTz36", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1973-05-01T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1996-06-22T00:00:00Z", "discountedPrice": 20, "expireAt": "1998-03-08T00:00:00Z", "price": 43, "purchaseAt": "1980-01-22T00:00:00Z", "trialPrice": 38}, {"currencyCode": "dzEVHHaj", "currencyNamespace": "XuDIAaOj", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1975-05-13T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1986-04-06T00:00:00Z", "discountedPrice": 83, "expireAt": "1991-01-22T00:00:00Z", "price": 60, "purchaseAt": "1978-05-01T00:00:00Z", "trialPrice": 27}], "HFQtLCSE": [{"currencyCode": "9mBVKg7Z", "currencyNamespace": "hoPcvXXF", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1989-06-29T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1986-10-23T00:00:00Z", "discountedPrice": 91, "expireAt": "1978-03-26T00:00:00Z", "price": 11, "purchaseAt": "1998-10-19T00:00:00Z", "trialPrice": 5}, {"currencyCode": "IAigiT1D", "currencyNamespace": "DVVqH0Uj", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1993-03-07T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1979-07-23T00:00:00Z", "discountedPrice": 21, "expireAt": "1991-01-03T00:00:00Z", "price": 53, "purchaseAt": "1983-03-28T00:00:00Z", "trialPrice": 21}, {"currencyCode": "E8HVX051", "currencyNamespace": "fBqRV9XE", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1996-08-29T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1992-08-07T00:00:00Z", "discountedPrice": 88, "expireAt": "1984-07-02T00:00:00Z", "price": 91, "purchaseAt": "1995-05-20T00:00:00Z", "trialPrice": 79}], "eLh4LmRs": [{"currencyCode": "UBJErgIQ", "currencyNamespace": "06034xF6", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1981-02-15T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1973-10-14T00:00:00Z", "discountedPrice": 17, "expireAt": "1994-06-22T00:00:00Z", "price": 14, "purchaseAt": "1974-09-16T00:00:00Z", "trialPrice": 23}, {"currencyCode": "w54VWTHi", "currencyNamespace": "SYo552OV", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1975-11-23T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1984-06-29T00:00:00Z", "discountedPrice": 55, "expireAt": "1974-07-29T00:00:00Z", "price": 87, "purchaseAt": "1990-02-25T00:00:00Z", "trialPrice": 33}, {"currencyCode": "Fdzs9xeA", "currencyNamespace": "a3BlIu49", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1993-09-30T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1980-11-08T00:00:00Z", "discountedPrice": 55, "expireAt": "1972-04-22T00:00:00Z", "price": 47, "purchaseAt": "1976-06-11T00:00:00Z", "trialPrice": 90}]}}, {"itemIdentities": ["b63RhMuZ", "ZuiVoxIB", "8qtUnRnp"], "itemIdentityType": "ITEM_SKU", "regionData": {"oPazb3Bt": [{"currencyCode": "kE3GxVYG", "currencyNamespace": "8ugVtegh", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1981-01-01T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1981-04-13T00:00:00Z", "discountedPrice": 58, "expireAt": "1989-10-14T00:00:00Z", "price": 4, "purchaseAt": "1974-10-15T00:00:00Z", "trialPrice": 60}, {"currencyCode": "InJOw1Gf", "currencyNamespace": "I5vAfbs1", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1981-11-29T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1981-11-20T00:00:00Z", "discountedPrice": 17, "expireAt": "1979-06-15T00:00:00Z", "price": 32, "purchaseAt": "1984-04-18T00:00:00Z", "trialPrice": 89}, {"currencyCode": "kXuZgZxv", "currencyNamespace": "BWTqQBOw", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1993-10-27T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1980-10-28T00:00:00Z", "discountedPrice": 80, "expireAt": "1981-09-27T00:00:00Z", "price": 74, "purchaseAt": "1973-01-19T00:00:00Z", "trialPrice": 73}], "IUYnefCg": [{"currencyCode": "lU2HWV2I", "currencyNamespace": "sqsV9k4n", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1983-01-28T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1978-04-23T00:00:00Z", "discountedPrice": 66, "expireAt": "1972-09-28T00:00:00Z", "price": 58, "purchaseAt": "1986-10-17T00:00:00Z", "trialPrice": 81}, {"currencyCode": "uHbN9T5m", "currencyNamespace": "eIUarnIK", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1992-10-27T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1991-01-25T00:00:00Z", "discountedPrice": 48, "expireAt": "1993-07-22T00:00:00Z", "price": 61, "purchaseAt": "1995-08-04T00:00:00Z", "trialPrice": 85}, {"currencyCode": "vbpuGKWZ", "currencyNamespace": "gob7CnRK", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1981-01-20T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1986-05-20T00:00:00Z", "discountedPrice": 28, "expireAt": "1974-11-11T00:00:00Z", "price": 90, "purchaseAt": "1988-02-14T00:00:00Z", "trialPrice": 18}], "vKSTR2bU": [{"currencyCode": "s3OR2YLN", "currencyNamespace": "kcaZ1nxE", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1979-08-03T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1975-12-02T00:00:00Z", "discountedPrice": 99, "expireAt": "1998-10-13T00:00:00Z", "price": 66, "purchaseAt": "1971-03-25T00:00:00Z", "trialPrice": 59}, {"currencyCode": "4PbFDCcM", "currencyNamespace": "1bWMMMmh", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1997-03-28T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1986-06-01T00:00:00Z", "discountedPrice": 90, "expireAt": "1973-05-15T00:00:00Z", "price": 8, "purchaseAt": "1986-07-05T00:00:00Z", "trialPrice": 13}, {"currencyCode": "8zF8XadC", "currencyNamespace": "OiMpPZvX", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1983-08-12T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1991-10-31T00:00:00Z", "discountedPrice": 23, "expireAt": "1987-09-18T00:00:00Z", "price": 22, "purchaseAt": "1978-05-31T00:00:00Z", "trialPrice": 40}]}}, {"itemIdentities": ["mmTYXMAO", "ikwdZyCK", "VkASuN0E"], "itemIdentityType": "ITEM_ID", "regionData": {"7UWUb9u7": [{"currencyCode": "KNJ8kUEm", "currencyNamespace": "DdTaD3qu", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1996-04-21T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-09-22T00:00:00Z", "discountedPrice": 19, "expireAt": "1996-01-21T00:00:00Z", "price": 94, "purchaseAt": "1995-10-05T00:00:00Z", "trialPrice": 96}, {"currencyCode": "CdFxPRiA", "currencyNamespace": "sqaCcQW1", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1985-01-11T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-05-31T00:00:00Z", "discountedPrice": 80, "expireAt": "1972-10-11T00:00:00Z", "price": 71, "purchaseAt": "1982-07-27T00:00:00Z", "trialPrice": 22}, {"currencyCode": "2cKFByYQ", "currencyNamespace": "kHlbo9Jj", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1991-12-13T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1982-12-01T00:00:00Z", "discountedPrice": 57, "expireAt": "1996-11-03T00:00:00Z", "price": 8, "purchaseAt": "1991-06-04T00:00:00Z", "trialPrice": 37}], "pFy11IBU": [{"currencyCode": "A23y2F3d", "currencyNamespace": "ppyNzVw8", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1989-03-31T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1991-04-07T00:00:00Z", "discountedPrice": 6, "expireAt": "1977-02-15T00:00:00Z", "price": 39, "purchaseAt": "1978-09-04T00:00:00Z", "trialPrice": 86}, {"currencyCode": "IvrIGUNx", "currencyNamespace": "RV70MIkq", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1992-03-06T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1994-07-17T00:00:00Z", "discountedPrice": 44, "expireAt": "1995-10-15T00:00:00Z", "price": 56, "purchaseAt": "1979-12-09T00:00:00Z", "trialPrice": 51}, {"currencyCode": "SWYNHMRd", "currencyNamespace": "hIrIEYC0", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1973-05-21T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1971-03-12T00:00:00Z", "discountedPrice": 42, "expireAt": "1994-07-20T00:00:00Z", "price": 47, "purchaseAt": "1993-06-07T00:00:00Z", "trialPrice": 77}], "8i8Ik6n6": [{"currencyCode": "4UeXbkIR", "currencyNamespace": "cqTspJ4j", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1978-10-18T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1998-11-01T00:00:00Z", "discountedPrice": 2, "expireAt": "1988-12-17T00:00:00Z", "price": 38, "purchaseAt": "1977-06-25T00:00:00Z", "trialPrice": 73}, {"currencyCode": "IJTnelTq", "currencyNamespace": "X0BnmQO5", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1999-01-15T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1990-09-18T00:00:00Z", "discountedPrice": 10, "expireAt": "1999-02-11T00:00:00Z", "price": 11, "purchaseAt": "1993-12-31T00:00:00Z", "trialPrice": 9}, {"currencyCode": "nzSQekVe", "currencyNamespace": "LFgvMIVM", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1981-12-22T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1975-10-24T00:00:00Z", "discountedPrice": 59, "expireAt": "1998-02-16T00:00:00Z", "price": 69, "purchaseAt": "1994-10-07T00:00:00Z", "trialPrice": 30}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'EXTENSION' \
    --limit '3' \
    --offset '6' \
    --sortBy 'FHomX8J8' \
    --storeId 'QIm9Tv5d' \
    --keyword 'ToRbpWZi' \
    --language 'MOZih32F' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '53' \
    --offset '27' \
    --sortBy '["updatedAt", "updatedAt:desc", "createdAt:asc"]' \
    --storeId 'QrcE6G9t' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'suE0QQAR' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'oQFRg3vV' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '0XMdoekA' \
    --namespace $AB_NAMESPACE \
    --storeId 'BOWIovIj' \
    --body '{"appId": "7EUqc3cn", "appType": "DLC", "baseAppId": "QZpyPZgu", "boothName": "W9opVwEp", "categoryPath": "umHApG7K", "clazz": "5z9p2b8m", "displayOrder": 54, "entitlementType": "CONSUMABLE", "ext": {"k0WhsBPk": {}, "vkziBrTQ": {}, "9YAqmyc1": {}}, "features": ["ktMI5Szl", "ZOCNOMCc", "ZQCyNpix"], "flexible": false, "images": [{"as": "Q5YCTF8e", "caption": "U2jMAf7l", "height": 42, "imageUrl": "996ojeG2", "smallImageUrl": "x40iEhz3", "width": 65}, {"as": "jkcFaRps", "caption": "j0glRLdo", "height": 35, "imageUrl": "0NimuVYH", "smallImageUrl": "atQJaA0q", "width": 72}, {"as": "cc5XcORZ", "caption": "T2vJVLio", "height": 17, "imageUrl": "c6qZCaMK", "smallImageUrl": "W1529b6I", "width": 24}], "inventoryConfig": {"customAttributes": {"tjznHyVf": {}, "DGkMEnSB": {}, "1R0lGoyB": {}}, "serverCustomAttributes": {"UChpotDL": {}, "C7DnlXzD": {}, "I8MUKHnB": {}}, "slotUsed": 31}, "itemIds": ["Hdiite6j", "DONTyzUo", "YcbpjDpW"], "itemQty": {"sJdoSnWG": 92, "rjYw9uC2": 73, "Uuuub3nG": 85}, "itemType": "CODE", "listable": true, "localizations": {"fmZ1zJuk": {"description": "WJklggyb", "localExt": {"vTXos2nQ": {}, "cxVvoMjh": {}, "9sIizlsM": {}}, "longDescription": "mgD8GtHH", "title": "LpwFtHt1"}, "iqssUuSp": {"description": "tCmKWKhT", "localExt": {"4OivBcOd": {}, "e9MSdOo7": {}, "Yjm2WodT": {}}, "longDescription": "3eEsGCAP", "title": "eL6zjHva"}, "1DNgIDJ0": {"description": "EXqdewTB", "localExt": {"GEBtNJwm": {}, "FZLtVFzc": {}, "aq9Lv3sp": {}}, "longDescription": "eWlj7Ax1", "title": "B8l87nnD"}}, "lootBoxConfig": {"rewardCount": 73, "rewards": [{"lootBoxItems": [{"count": 99, "duration": 92, "endDate": "1980-04-10T00:00:00Z", "itemId": "BRmEhdoy", "itemSku": "Vm2ifmT4", "itemType": "G8VndPgC"}, {"count": 5, "duration": 21, "endDate": "1976-10-28T00:00:00Z", "itemId": "Q7AciTOW", "itemSku": "Qv23Rq1N", "itemType": "cxFuOwUp"}, {"count": 86, "duration": 23, "endDate": "1994-04-28T00:00:00Z", "itemId": "a0xw7kCs", "itemSku": "ZCbRZ8TR", "itemType": "Vp3x20ol"}], "name": "SlXnHVs7", "odds": 0.9808460978833045, "type": "PROBABILITY_GROUP", "weight": 76}, {"lootBoxItems": [{"count": 33, "duration": 33, "endDate": "1992-05-06T00:00:00Z", "itemId": "uWsonoMZ", "itemSku": "ZFXe1aJw", "itemType": "YqgASNtM"}, {"count": 36, "duration": 74, "endDate": "1980-09-28T00:00:00Z", "itemId": "IX1xeZkm", "itemSku": "4bYH5QWQ", "itemType": "VvIpoZgZ"}, {"count": 7, "duration": 4, "endDate": "1999-09-11T00:00:00Z", "itemId": "0r1nNSTk", "itemSku": "Lyjg4okb", "itemType": "UlBvecAX"}], "name": "7vEZREr1", "odds": 0.8122448098240587, "type": "PROBABILITY_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 75, "duration": 69, "endDate": "1985-12-01T00:00:00Z", "itemId": "Koxi70YL", "itemSku": "IqJxiy67", "itemType": "NygAYNrf"}, {"count": 90, "duration": 100, "endDate": "1997-05-06T00:00:00Z", "itemId": "lvuSDVRd", "itemSku": "ntVTgRnB", "itemType": "MHWEfIuX"}, {"count": 65, "duration": 68, "endDate": "1979-08-17T00:00:00Z", "itemId": "5LCYm76b", "itemSku": "30zNxa7F", "itemType": "d7HTOpNl"}], "name": "ry2spM6w", "odds": 0.8416777709675164, "type": "REWARD_GROUP", "weight": 74}], "rollFunction": "CUSTOM"}, "maxCount": 15, "maxCountPerUser": 21, "name": "0nVF8j65", "optionBoxConfig": {"boxItems": [{"count": 63, "duration": 80, "endDate": "1972-07-16T00:00:00Z", "itemId": "dVyqDoH8", "itemSku": "4s96JvKt", "itemType": "QEYCu8PG"}, {"count": 22, "duration": 80, "endDate": "1972-01-29T00:00:00Z", "itemId": "Os8B36JP", "itemSku": "gbsXNj2A", "itemType": "ikPae4Eo"}, {"count": 66, "duration": 14, "endDate": "1972-06-06T00:00:00Z", "itemId": "r62HkYLb", "itemSku": "lFoUKKIn", "itemType": "btjRc272"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 49, "fixedTrialCycles": 100, "graceDays": 34}, "regionData": {"yGewqS5r": [{"currencyCode": "nMP2ugvA", "currencyNamespace": "cHAR6pSX", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1977-06-13T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1976-02-08T00:00:00Z", "expireAt": "1986-02-28T00:00:00Z", "price": 21, "purchaseAt": "1971-01-25T00:00:00Z", "trialPrice": 65}, {"currencyCode": "GfOtJo54", "currencyNamespace": "79LZa5Fj", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1992-05-11T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1996-04-09T00:00:00Z", "expireAt": "1982-06-01T00:00:00Z", "price": 41, "purchaseAt": "1987-05-17T00:00:00Z", "trialPrice": 70}, {"currencyCode": "i8Fnty2b", "currencyNamespace": "8G2nFhJI", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1990-01-29T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1990-11-23T00:00:00Z", "expireAt": "1994-08-06T00:00:00Z", "price": 54, "purchaseAt": "1974-07-22T00:00:00Z", "trialPrice": 73}], "LgFOecPk": [{"currencyCode": "UddBjKjh", "currencyNamespace": "fPldJNlE", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1990-07-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1980-06-21T00:00:00Z", "expireAt": "1991-06-28T00:00:00Z", "price": 58, "purchaseAt": "1971-06-22T00:00:00Z", "trialPrice": 44}, {"currencyCode": "BDnT6G45", "currencyNamespace": "v3gBm3gp", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1989-07-16T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1973-12-25T00:00:00Z", "expireAt": "1973-07-27T00:00:00Z", "price": 28, "purchaseAt": "1987-12-09T00:00:00Z", "trialPrice": 43}, {"currencyCode": "QMBCD2bm", "currencyNamespace": "P0m6ATvH", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1983-12-23T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1998-11-22T00:00:00Z", "expireAt": "1979-05-18T00:00:00Z", "price": 60, "purchaseAt": "1974-05-10T00:00:00Z", "trialPrice": 74}], "vqs9f4nu": [{"currencyCode": "jZqVukPC", "currencyNamespace": "1nKw5Cre", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1972-01-01T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1973-12-14T00:00:00Z", "expireAt": "1982-05-16T00:00:00Z", "price": 41, "purchaseAt": "1998-08-17T00:00:00Z", "trialPrice": 19}, {"currencyCode": "ofSrEhsg", "currencyNamespace": "R83qNegh", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1984-04-10T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1981-03-14T00:00:00Z", "expireAt": "1986-04-19T00:00:00Z", "price": 23, "purchaseAt": "1982-02-15T00:00:00Z", "trialPrice": 34}, {"currencyCode": "6q359gFX", "currencyNamespace": "Zdi4cPup", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1988-01-31T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1995-08-31T00:00:00Z", "expireAt": "1983-10-07T00:00:00Z", "price": 39, "purchaseAt": "1991-06-10T00:00:00Z", "trialPrice": 73}]}, "saleConfig": {"currencyCode": "9hV6CPXx", "price": 46}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "dSRwkccj", "stackable": true, "status": "ACTIVE", "tags": ["VGXRmkzN", "h2YIIWI8", "G4DGLyhE"], "targetCurrencyCode": "mlC39xr5", "targetNamespace": "ORGQ3Ww1", "thumbnailUrl": "RhP96feg", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'exe6II5e' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "DLC", "ENTITLEMENT"]' \
    --force 'false' \
    --storeId '1CM1LnhE' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '25hdMNom' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 60, "orderNo": "D399rQMx"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'hGbohxO6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qM3kc6SZ' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'r77g0Ctw' \
    --namespace $AB_NAMESPACE \
    --storeId 'wFVxEw3c' \
    --body '{"carousel": [{"alt": "9rNU4Mz0", "previewUrl": "GSF3yg8F", "thumbnailUrl": "3z6HxiyF", "type": "video", "url": "yrccmoiU", "videoSource": "vimeo"}, {"alt": "OBfn8kLv", "previewUrl": "sQWgO545", "thumbnailUrl": "Qj8VS9xI", "type": "image", "url": "BgaTf50G", "videoSource": "vimeo"}, {"alt": "SKcikaq3", "previewUrl": "KSfX7rwW", "thumbnailUrl": "XTcgPCd2", "type": "image", "url": "DFFWupj3", "videoSource": "generic"}], "developer": "ZXEOkVjq", "forumUrl": "Ph0B2Ntk", "genres": ["Racing", "Racing", "Indie"], "localizations": {"LeUWqjf7": {"announcement": "dK688nQM", "slogan": "PGO9nLLN"}, "UI3awegi": {"announcement": "EOELg1xJ", "slogan": "dUBwcpeI"}, "OSBDxiCN": {"announcement": "LWMZTFfh", "slogan": "L9lHyG2Z"}}, "platformRequirements": {"z3Xsm1rs": [{"additionals": "JymyWPns", "directXVersion": "WXJlHvl2", "diskSpace": "CYdFiEVh", "graphics": "OC9LimLa", "label": "qOoW3lUw", "osVersion": "mLzV2uUj", "processor": "jNlaOIGi", "ram": "i6VR04Ia", "soundCard": "jQMk937w"}, {"additionals": "bDMELBcB", "directXVersion": "q4mnriZq", "diskSpace": "4uQ1ayTM", "graphics": "2bIapeGS", "label": "tpV8D3NM", "osVersion": "bZS8xTUB", "processor": "UA8l6bYI", "ram": "j3xeE2hX", "soundCard": "K4nirLsy"}, {"additionals": "r6a7sTi3", "directXVersion": "p8CQiLcR", "diskSpace": "fXBIviGB", "graphics": "zjvEXINp", "label": "JPNlyEoo", "osVersion": "tgVagB38", "processor": "ItDEGR9X", "ram": "7Ru3OnET", "soundCard": "AoceoqCS"}], "hlEZaqYz": [{"additionals": "kdeNQu95", "directXVersion": "i5sAGUIO", "diskSpace": "piHOm7Hf", "graphics": "DebxpGBJ", "label": "8rToMWtG", "osVersion": "9YrjcfnQ", "processor": "buL8dKv1", "ram": "CK90Vg4B", "soundCard": "VR2hSwsO"}, {"additionals": "RLhdqeOO", "directXVersion": "yDN8SQZj", "diskSpace": "l2YveMgz", "graphics": "M07Fjajm", "label": "BBC331jB", "osVersion": "8jIG55tD", "processor": "ULR36NxX", "ram": "0s8XJXEU", "soundCard": "ZFewN0gp"}, {"additionals": "OujflTCu", "directXVersion": "15Gd62j9", "diskSpace": "paGQbvBF", "graphics": "exaj7m7e", "label": "Oja6f7SZ", "osVersion": "W5umCKtp", "processor": "AB4ctSmA", "ram": "uL4hDlTv", "soundCard": "47tuM6IP"}], "3QTxzcWJ": [{"additionals": "4RcFOxBu", "directXVersion": "qud1P5yU", "diskSpace": "BqP2fN98", "graphics": "XxEGnphX", "label": "kRd1iPTb", "osVersion": "Zurj03ns", "processor": "fMZ6pJd1", "ram": "T2oB7un5", "soundCard": "eCem9aZm"}, {"additionals": "elAR157P", "directXVersion": "0zEVP1QM", "diskSpace": "aRx8FBlS", "graphics": "iu7XnKw0", "label": "7b3tgGoi", "osVersion": "sEMhhzHt", "processor": "QiUyqXYi", "ram": "ZF7x85Gu", "soundCard": "b6JfM7vk"}, {"additionals": "7aiANH2u", "directXVersion": "laMBm7Wo", "diskSpace": "rrMqjJvM", "graphics": "xBUTDKaO", "label": "TVDSOUSf", "osVersion": "Vg8dMvgX", "processor": "WF15AmDS", "ram": "IeeufeQF", "soundCard": "2uskVta8"}]}, "platforms": ["Android", "Android", "Windows"], "players": ["Single", "Multi", "MMO"], "primaryGenre": "Sports", "publisher": "LI1e96eh", "releaseDate": "1978-05-31T00:00:00Z", "websiteUrl": "luV8M7Uw"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'Jt6vbqbf' \
    --namespace $AB_NAMESPACE \
    --storeId 'VqAJuVuL' \
    --body '{"featuresToCheck": ["IAP", "DLC"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'kl4f4rgx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'zofBaqy5' \
    --namespace $AB_NAMESPACE \
    --storeId 'MBffeMCo' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'jcUn9RC5' \
    --itemId 'STC0Nq4v' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZKyMak4r' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'EKZTJO8k' \
    --itemId 'iiFCPnd4' \
    --namespace $AB_NAMESPACE \
    --storeId 'sGyFzvkC' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'mLXp9xbL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'FYWlRl1h' \
    --populateBundle 'false' \
    --region '7Ol2W12j' \
    --storeId '7BCSnnpR' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'ThaW6MBi' \
    --namespace $AB_NAMESPACE \
    --storeId 'YJ3XdrnK' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 55, "code": "zaKm3LSQ", "comparison": "excludes", "name": "1PT0fxaV", "predicateType": "SeasonPassPredicate", "value": "YqOvWMuX", "values": ["XSdAMkme", "4OMTgIFx", "GTmnEQLu"]}, {"anyOf": 28, "code": "coKaMzC1", "comparison": "is", "name": "OsReBtRk", "predicateType": "SeasonTierPredicate", "value": "ZQElbucm", "values": ["Vn5jGhbx", "WSpgIkRk", "XiJYh2VU"]}, {"anyOf": 2, "code": "Betd1zTX", "comparison": "isGreaterThan", "name": "6bD7IcBU", "predicateType": "StatisticCodePredicate", "value": "XLdc2FFz", "values": ["KizCCm9n", "JuRkz3nI", "aqOkdhI3"]}]}, {"operator": "and", "predicates": [{"anyOf": 65, "code": "DxK1luyX", "comparison": "includes", "name": "SeMasygC", "predicateType": "SeasonTierPredicate", "value": "fwL0fc3E", "values": ["HjKli9hc", "3oegFprg", "0SMo5IcF"]}, {"anyOf": 15, "code": "0rZrk9lg", "comparison": "includes", "name": "GwOMinLp", "predicateType": "StatisticCodePredicate", "value": "tsgCCGBA", "values": ["GhSROc8B", "duHwZitp", "iDrC814E"]}, {"anyOf": 52, "code": "IzSSLpXx", "comparison": "isGreaterThan", "name": "rJaqm0kd", "predicateType": "SeasonPassPredicate", "value": "0G0UNA7v", "values": ["47ke0cLo", "NzuyhL0n", "vaBmXIkp"]}]}, {"operator": "and", "predicates": [{"anyOf": 35, "code": "NcDMV7uu", "comparison": "isGreaterThanOrEqual", "name": "hZ3NyvWO", "predicateType": "SeasonTierPredicate", "value": "qTaFxdev", "values": ["w9mBXuvs", "EfKvMDp1", "SvnX9bl0"]}, {"anyOf": 55, "code": "ZuQHrnBS", "comparison": "is", "name": "7tEyfhVy", "predicateType": "SeasonPassPredicate", "value": "ab4b3bK9", "values": ["Ht2TI4LK", "IUgXuxx3", "GYanWgfW"]}, {"anyOf": 5, "code": "l23vKOfq", "comparison": "isNot", "name": "0u3rbUSA", "predicateType": "SeasonTierPredicate", "value": "F5j0iPFT", "values": ["oU0utlew", "ARoLYW9E", "igKO7gEp"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId '3Y572gjt' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "CATALOG", "ENTITLEMENT"]' \
    --storeId 'wA3pgk4u' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'BTk5qrDj' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "lD5VRn3f"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'AJIje4g1' \
    --offset '24' \
    --tag '6DDx1ceN' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MH7OlidI", "name": "GamhHs6A", "status": "INACTIVE", "tags": ["xG7Zq1CY", "HuhSMzoO", "gZvBrBEu"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'uNauoCwx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'c6ku8Y2Y' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Jni7mFxN", "name": "f4Yg42G1", "status": "ACTIVE", "tags": ["BPJF4Dk3", "U1y6hwB0", "N5U0Cixi"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Fm8TiYLz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '5db68BDw' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '30' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '6WZFk8V8' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'SwOAbjhx' \
    --limit '69' \
    --offset '7' \
    --orderNos '["WPzFKHNc", "kyVXt2sV", "pAF61v6R"]' \
    --sortBy 'xtfQWwW3' \
    --startTime 'QjfY5Ul8' \
    --status 'FULFILL_FAILED' \
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
    --orderNo 'cwIMtVcG' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'WBbrKDhT' \
    --body '{"description": "0cxg769V"}' \
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
    --body '{"domains": ["KNijWwWh", "wc7GwHjy", "FqLcBXqy"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'ISmrU3ZD' \
    --externalId 'DsjVAZjo' \
    --limit '12' \
    --notificationSource 'WXPAY' \
    --notificationType 'xaD4fyZ8' \
    --offset '83' \
    --paymentOrderNo 'bWkn0lsW' \
    --startDate 'rGM7kNAi' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '6yhNBSuJ' \
    --limit '78' \
    --offset '37' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BF46GUIj", "currencyNamespace": "cUyB1KL9", "customParameters": {"454Nf3EP": {}, "PBxVf03H": {}, "5VWT9eyo": {}}, "description": "GY3upF3A", "extOrderNo": "nflcgLDe", "extUserId": "UBizg7rz", "itemType": "BUNDLE", "language": "qdoj", "metadata": {"7zBOylvX": "MqmJbyJL", "EN4T5hvU": "2WkH0vFn", "JFPbnRIM": "thBjjuaC"}, "notifyUrl": "Q1iWzQq0", "omitNotification": false, "platform": "ReWsKt94", "price": 84, "recurringPaymentOrderNo": "tx5SokgD", "region": "QFukdWMz", "returnUrl": "ndDxtWRI", "sandbox": false, "sku": "zvrNhVTO", "subscriptionId": "yf4MjS5o", "targetNamespace": "zKczqINn", "targetUserId": "gkVfwMhp", "title": "v7JZ4z3U"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'gq7DkX6p' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y7Py7GvR' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TjXkbvxJ' \
    --body '{"extTxId": "HVpoIDih", "paymentMethod": "t83o8hLF", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'iaxK42t0' \
    --body '{"description": "YsYUYBcE"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rLDZav05' \
    --body '{"amount": 42, "currencyCode": "5X4aNITT", "notifyType": "REFUND", "paymentProvider": "NEONPAY", "salesTax": 58, "vat": 11}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'C0uMGhjo' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '4Y9fq2cm' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "miczpy5B", "serviceLabel": 91}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'BDG5zKEh' \
    --body '{"delegationToken": "K00H1tB7", "sandboxId": "PG89TIu2"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["Steam", "Epic", "Other"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["System", "System", "System"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'w1BhU2Lw' \
    --limit '26' \
    --offset '94' \
    --source 'IAP' \
    --startTime 'RsXRz1T9' \
    --status 'SUCCESS' \
    --transactionId 'pZViMo7j' \
    --userId 'nij0C1Kb' \
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
    --body '{"appConfig": {"appName": "achfuTHi"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "cpBFJ1aU"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "tW3GuG5O", "eventTopic": "PgM3sNNk", "maxAwarded": 51, "maxAwardedPerUser": 75, "namespaceExpression": "Vk4f4K5A", "rewardCode": "v0zdb4eO", "rewardConditions": [{"condition": "N1cQmKSD", "conditionName": "Tm5Vj2dI", "eventName": "lUWYBV7H", "rewardItems": [{"duration": 33, "endDate": "1996-06-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hOSlSnKw", "quantity": 69, "sku": "QgBGSUBl"}, {"duration": 9, "endDate": "1984-08-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0EPYKflk", "quantity": 55, "sku": "xUxPTBNG"}, {"duration": 80, "endDate": "1976-09-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LpC2RXqQ", "quantity": 100, "sku": "OzdthpmI"}]}, {"condition": "DnDzlA9M", "conditionName": "KNcwhc55", "eventName": "eH1Ump6c", "rewardItems": [{"duration": 66, "endDate": "1984-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uOtb3Z5J", "quantity": 35, "sku": "1tbnptqm"}, {"duration": 29, "endDate": "1987-10-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pM20k5TE", "quantity": 24, "sku": "QSoI8b96"}, {"duration": 87, "endDate": "1996-04-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yKHM9U35", "quantity": 54, "sku": "KMozVzpi"}]}, {"condition": "rK6DArKj", "conditionName": "h1M8oeGq", "eventName": "kAVE4ak5", "rewardItems": [{"duration": 94, "endDate": "1980-11-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Z5VURskG", "quantity": 10, "sku": "AhuFx22m"}, {"duration": 91, "endDate": "1989-12-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "d8jiQvM6", "quantity": 97, "sku": "CGuhOnWk"}, {"duration": 42, "endDate": "1976-03-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OdYCzp6Y", "quantity": 79, "sku": "mmaTXKPe"}]}], "userIdExpression": "rFHIyf1B"}' \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'JWXdD15g' \
    --limit '31' \
    --offset '96' \
    --sortBy '["rewardCode:asc", "namespace:asc"]' \
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
    --rewardId 'ABw29JXn' \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '2gOKawUt' \
    --body '{"description": "GsqhXnok", "eventTopic": "7P9q9UTp", "maxAwarded": 66, "maxAwardedPerUser": 49, "namespaceExpression": "epxAx6rX", "rewardCode": "gXeCaDQk", "rewardConditions": [{"condition": "YvgQhGyg", "conditionName": "YmVFEu7Q", "eventName": "vlZFN2b9", "rewardItems": [{"duration": 52, "endDate": "1973-09-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "s2ZyGCF1", "quantity": 99, "sku": "8X40zrOa"}, {"duration": 92, "endDate": "1996-12-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DHA768bb", "quantity": 12, "sku": "infs7Qr0"}, {"duration": 12, "endDate": "1986-09-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dM9CRXyk", "quantity": 64, "sku": "n4pnmgAf"}]}, {"condition": "wbcJU8Ua", "conditionName": "2NmzB7Ra", "eventName": "3nchtFlF", "rewardItems": [{"duration": 33, "endDate": "1974-05-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZfUwb0mE", "quantity": 57, "sku": "1QXXaihV"}, {"duration": 3, "endDate": "1990-01-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BlDHIr4q", "quantity": 91, "sku": "LZZkiv4z"}, {"duration": 83, "endDate": "1993-11-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "S1dswcqb", "quantity": 24, "sku": "322rMF0h"}]}, {"condition": "OKceHpDg", "conditionName": "u3CvoVdP", "eventName": "yn3aqeYY", "rewardItems": [{"duration": 74, "endDate": "1999-06-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "loyvLX9s", "quantity": 100, "sku": "TZ3VUtVw"}, {"duration": 43, "endDate": "1985-09-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "QdAfV3HR", "quantity": 38, "sku": "qn3QzgHg"}, {"duration": 54, "endDate": "1993-09-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qGDGmG1H", "quantity": 8, "sku": "TZaSbOGu"}]}], "userIdExpression": "vbPyJtvy"}' \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Dsi8PUn5' \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'mdMzDF6L' \
    --body '{"payload": {"wCcD2yk6": {}, "kdddt3N1": {}, "izrEoDcE": {}}}' \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'LpmueFe2' \
    --body '{"conditionName": "F76akjYr", "userId": "CF2Oe06k"}' \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'IbwSj2xx' \
    --limit '74' \
    --offset '55' \
    --start '4gXqeRs7' \
    --storeId 'c3YwZREH' \
    --viewId 'WQWaRHME' \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'NUUbTJjK' \
    --body '{"active": true, "displayOrder": 45, "endDate": "1972-06-08T00:00:00Z", "ext": {"oTSSHos1": {}, "CWoyOEuu": {}, "cWXpcsNg": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 66, "itemCount": 18, "rule": "LOOP"}, "items": [{"id": "lSYcEn82", "sku": "EFf3nOLR"}, {"id": "TG3mi2gV", "sku": "TYOnTkJR"}, {"id": "law2zUGY", "sku": "cT3XaDfa"}], "localizations": {"ITgQwyxn": {"description": "KjwfpClq", "localExt": {"NkZHq9d1": {}, "TAGBIqnx": {}, "goQaspp0": {}}, "longDescription": "P3qpfFJ9", "title": "k6UMN3xw"}, "3uph89xa": {"description": "z7ngWR4l", "localExt": {"ml8vT2NK": {}, "0ya7Dd2U": {}, "TG3mxh2f": {}}, "longDescription": "JgFALqov", "title": "LIOzLbbD"}, "TAEp8sJd": {"description": "gp12rUg9", "localExt": {"rzUPomtv": {}, "BP2d9SvQ": {}, "NRizCK3m": {}}, "longDescription": "MIWE6mSe", "title": "gOLQ3NWK"}}, "name": "mqJERFVT", "rotationType": "NONE", "startDate": "1990-03-02T00:00:00Z", "viewId": "HTOx8g3u"}' \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'y54MBr90' \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '8jkqZRNu' \
    --storeId 'BiU03NNu' \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '3XzNoFue' \
    --storeId 'cSxMd8Ni' \
    --body '{"active": true, "displayOrder": 10, "endDate": "1991-02-02T00:00:00Z", "ext": {"Ukv6tfIA": {}, "LEQzMpZK": {}, "f77V1dY3": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 43, "itemCount": 25, "rule": "LOOP"}, "items": [{"id": "6ggS5qHD", "sku": "IkwF6Rz2"}, {"id": "5VwaZj3l", "sku": "y9YdGazw"}, {"id": "VxdEM7s7", "sku": "JK9kJq6p"}], "localizations": {"NHCmim42": {"description": "ZONhSSg5", "localExt": {"Gu79Gcf7": {}, "nZMYAR5I": {}, "n8lli27m": {}}, "longDescription": "FTS9W9nn", "title": "JkQBcS7S"}, "ixw7ui7J": {"description": "4As7eAIs", "localExt": {"niU8xzq9": {}, "HZS0bOLb": {}, "px9iHnal": {}}, "longDescription": "SDDZYNXN", "title": "VwGmKNhb"}, "9j60cnJr": {"description": "dAex98GZ", "localExt": {"4G4HByLo": {}, "OksakYO8": {}, "cimjnpMe": {}}, "longDescription": "boV9u8vT", "title": "jHnAgf5i"}}, "name": "tCXwSuHQ", "rotationType": "FIXED_PERIOD", "startDate": "1989-03-12T00:00:00Z", "viewId": "cNFtx7o8"}' \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'NFliyHiC' \
    --storeId '0aPKrjHc' \
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
    --body '{"defaultLanguage": "YqM3l1ub", "defaultRegion": "bEItx3gF", "description": "1968tGbu", "supportedLanguages": ["bgfeAEtv", "KPHMnjnV", "vDg6Dojb"], "supportedRegions": ["mwCvbyOf", "y34LIERh", "wxqGqYlE"], "title": "mH7T6nTf"}' \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
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
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["AKDAA0CT", "zvnTophE", "TxcKMmaG"], "idsToBeExported": ["1Be7DEvZ", "sL1MyUFK", "9XQzwK20"], "storeId": "rsCYSWCQ"}' \
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
    --storeId 'WXYmZNGb' \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '0pEWflBS' \
    --body '{"defaultLanguage": "flsBxHAZ", "defaultRegion": "VsNHliij", "description": "qdA7OvIm", "supportedLanguages": ["uZXUH2S7", "xJaCJiuc", "eTQmjlDP"], "supportedRegions": ["jtNDDRzL", "6ebLKRLc", "3pMyONE5"], "title": "54bBq10D"}' \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'v8LbmmhH' \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'tGgfH4Xa' \
    --action 'DELETE' \
    --itemSku '24Q3Y3NH' \
    --itemType 'CODE' \
    --limit '31' \
    --offset '44' \
    --selected 'false' \
    --sortBy '["createdAt", "createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd '3paQWZi2' \
    --updatedAtStart 'a2J1MYth' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'uTq0u4pA' \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'lESbWYDp' \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'modjONoB' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'ImQMKOfX' \
    --action 'UPDATE' \
    --itemSku 'wx5dDxKO' \
    --itemType 'LOOTBOX' \
    --selected 'false' \
    --type 'ITEM' \
    --updatedAtEnd '5Oge5SRE' \
    --updatedAtStart 'zjJZm0Tk' \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'NxCejBQL' \
    --action 'DELETE' \
    --itemSku 'Ya2qJ2Wz' \
    --itemType 'EXTENSION' \
    --type 'SECTION' \
    --updatedAtEnd 'mdPRXQnk' \
    --updatedAtStart '8TAfbpC3' \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'cGDmXQgl' \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'RuFlXN47' \
    --namespace $AB_NAMESPACE \
    --storeId 'YvUn5BKd' \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'CcJZug6e' \
    --namespace $AB_NAMESPACE \
    --storeId '7rWzeAN2' \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'hnZJmXEA' \
    --targetStoreId 'YfIoND1Y' \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'HI8dudB8' \
    --end 'npA2H7ba' \
    --limit '71' \
    --offset '77' \
    --sortBy 'QG5a8Aew' \
    --start 'GPSi8gTU' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'kyihLHnE' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'rgG8Gagx' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'U8D0YmyC' \
    --limit '24' \
    --offset '47' \
    --sku 'OAXttuoW' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'Ifq9lVo4' \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lF4JA7K4' \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'nEYSEpjx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'CZ0qy5M0' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "J7i53mH1"}' \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'LUtx2rvt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'rseMBHGy' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 62, "orderNo": "jXaWv9gL"}' \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 25, "currencyCode": "psQjncN6", "expireAt": "1999-01-03T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "N6zx1uBy", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "AfWKVmTo", "entitlementOrigin": "Epic", "itemIdentity": "y5WoPvex", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 11, "entitlementId": "fTflRNPc"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 18, "currencyCode": "VDTceSo7", "expireAt": "1977-02-24T00:00:00Z"}, "debitPayload": {"count": 30, "currencyCode": "VTGUPskL", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "Onv2F5AQ", "entitlementOrigin": "Other", "itemIdentity": "LaQpHLy0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "aaTew18i"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 74, "currencyCode": "jOz8e3Mk", "expireAt": "1986-04-06T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "ob3Ehev2", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "eBA0InfW", "entitlementOrigin": "Nintendo", "itemIdentity": "ilTmr2Hj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "Yb3OX8fF"}, "type": "DEBIT_WALLET"}], "userId": "2RYMmDC1"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 39, "currencyCode": "KqS4b1AS", "expireAt": "1993-06-27T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "M1U5rq3y", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "9G4PsHBQ", "entitlementOrigin": "Other", "itemIdentity": "JNtNE4k3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 38, "entitlementId": "7NQvyl4n"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 53, "currencyCode": "sEj2Vyqv", "expireAt": "1975-09-15T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "Ljv0Ckbz", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "RoaVzhB1", "entitlementOrigin": "Xbox", "itemIdentity": "ZgcWEJKe", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "5fJOvmbH"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 63, "currencyCode": "uffO6gVL", "expireAt": "1995-05-13T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "yGH42yog", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "pIkU8h4k", "entitlementOrigin": "Epic", "itemIdentity": "rHaiQ784", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "HxV8nu8W"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "TRiG54tz"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 45, "currencyCode": "9sWw7Zvo", "expireAt": "1993-03-15T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "04Cj02vq", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "QJ2cI6ej", "entitlementOrigin": "Other", "itemIdentity": "9hH4GjFz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "26POw6O3"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 29, "currencyCode": "pfPar6QS", "expireAt": "1996-07-07T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "p1lAILk8", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "5GICiaG7", "entitlementOrigin": "Epic", "itemIdentity": "uQYtgbBq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "jOspvuAE"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 8, "currencyCode": "qzd5RMui", "expireAt": "1976-05-05T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "8q6FiGBj", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "StzRtLeY", "entitlementOrigin": "GooglePlay", "itemIdentity": "tA5X9um7", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 61, "entitlementId": "2CN4EOYN"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "MLWq9dii"}], "metadata": {"minQGH3q": {}, "nLX3g8xQ": {}, "oCEsLSfk": {}}, "needPreCheck": true, "transactionId": "xq3PsTvu", "type": "rHcImWh1"}' \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '82' \
    --status 'FAILED' \
    --type '9xzuYhwQ' \
    --userId '5C8nIOU5' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'm1GCaB24' \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6i5ut3kg' \
    --body '{"achievements": [{"id": "2PyIrNa3", "value": 96}, {"id": "BXcA1cab", "value": 41}, {"id": "c2GVOnKk", "value": 71}], "steamUserId": "LwMCmssx"}' \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'eIIZhNNI' \
    --xboxUserId 'NOj0gknM' \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WJUOV0KQ' \
    --body '{"achievements": [{"id": "6BWr9rcv", "percentComplete": 72}, {"id": "Fr2PHT6f", "percentComplete": 100}, {"id": "6JKmvmTo", "percentComplete": 81}], "serviceConfigId": "LpRMZJNF", "titleId": "1WS9C7JZ", "xboxUserId": "CtHJbViP"}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '1AY3jEcp' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Korm47gE' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'iJXJCyRc' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'W7I7WVV5' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HHXATSWu' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'PrFM3ZiP' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'u2Fy4Rcb' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'dFFanDVh' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'CpdwzfhW' \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'C1ibLinn' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '2yGSoUa9' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dSxYBaLL' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId 'M58BIcHh' \
    --entitlementClazz 'CODE' \
    --entitlementName 'z0SfyAYG' \
    --features '["LKVshX96", "f3RKochl", "9zpr4aoV"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'true' \
    --itemId '["t03N3qyY", "YxHawWbn", "5KIQ8MmO"]' \
    --limit '80' \
    --offset '25' \
    --origin 'Epic' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5jULlULX' \
    --body '[{"collectionId": "rDyLIxQI", "endDate": "1998-09-02T00:00:00Z", "grantedCode": "pWIkxZAB", "itemId": "q1Tycc9G", "itemNamespace": "SnhZCOmf", "language": "dU-771", "metadata": {"q5mDbzo5": {}, "KjW4fTLL": {}, "7nAVLbWG": {}}, "origin": "Playstation", "quantity": 63, "region": "j7Lo72mj", "source": "ACHIEVEMENT", "startDate": "1991-06-24T00:00:00Z", "storeId": "qJmJPw1y"}, {"collectionId": "3wU1fivs", "endDate": "1972-11-22T00:00:00Z", "grantedCode": "dSNSyAiN", "itemId": "LFG10yjP", "itemNamespace": "pdjREXiy", "language": "RFm-bWyS", "metadata": {"JqinJ0Fo": {}, "8m4UkwhX": {}, "tzya74Cw": {}}, "origin": "IOS", "quantity": 25, "region": "YI61fcJp", "source": "REWARD", "startDate": "1977-01-13T00:00:00Z", "storeId": "qwg0JRiW"}, {"collectionId": "T7fmBLkx", "endDate": "1975-07-07T00:00:00Z", "grantedCode": "aBk1zFx0", "itemId": "zPhWVHhS", "itemNamespace": "GEgxj3sY", "language": "dJa-jyzN-994", "metadata": {"Zzzsoh4M": {}, "oD8cwM6l": {}, "SKdKpni6": {}}, "origin": "Epic", "quantity": 40, "region": "08MYy6r2", "source": "OTHER", "startDate": "1988-07-24T00:00:00Z", "storeId": "Z4nOnBYh"}]' \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'kHFLes9g' \
    --activeOnly 'true' \
    --appId '9PSIsikY' \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '5NdYZB9r' \
    --activeOnly 'true' \
    --limit '17' \
    --offset '53' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'Xkjq6uv2' \
    --ids '["DYy3G2Ad", "f06r28nv", "funocB5n"]' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'z1wAtO4G' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'zBoP0oKy' \
    --itemId '7sivTNiQ' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'MZRSO6s6' \
    --ids '["4iZooGet", "xFILVgWQ", "XMIxaHA9"]' \
    --platform 'gqShSSX1' \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'a3laASI2' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'gi3a2p5S' \
    --sku 'jSuiahym' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'b2asBO2B' \
    --appIds '["aQU7DxXy", "ZtJTTwSm", "FIzd1QIz"]' \
    --itemIds '["nmFC7CPu", "8ssRpHGJ", "MrfPcabL"]' \
    --platform 'tA20OZV9' \
    --skus '["Bg9oPWo1", "CUp3M9us", "7WM1GFIN"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lisYdcCi' \
    --platform 'Eyfuqxom' \
    --itemIds '["F3x9KIIk", "UOt2mBtl", "fFhAaWuc"]' \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Y0Q9P4SE' \
    --appId 'rf1dhdAJ' \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SR20PKoM' \
    --entitlementClazz 'LOOTBOX' \
    --platform 't48e4fiW' \
    --itemId '7vsDhmci' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cLxXF7mo' \
    --ids '["XLOJhgxR", "NZPb4HwY", "k30kDakL"]' \
    --platform 'E8JpMZQ6' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VM53AnnR' \
    --entitlementClazz 'APP' \
    --platform 'zZhxuzoL' \
    --sku 'xU4CMsqE' \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'In5xPFj2' \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'vrtICFB5' \
    --entitlementIds 'e8tk08DM' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'SkQQV2OE' \
    --namespace $AB_NAMESPACE \
    --userId 'wb2QGoKb' \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'yr3eQN64' \
    --namespace $AB_NAMESPACE \
    --userId 'olsB5sKH' \
    --body '{"collectionId": "JGGxSwaN", "endDate": "1973-01-13T00:00:00Z", "nullFieldList": ["IujqLgSO", "5jYb0CkA", "5vogT0RV"], "origin": "Playstation", "reason": "ArFY0MO7", "startDate": "1980-11-29T00:00:00Z", "status": "CONSUMED", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'dHuLav3x' \
    --namespace $AB_NAMESPACE \
    --userId 'oX34Wwzb' \
    --body '{"metadata": {"Nlusjgm8": {}, "GpWQxs4G": {}, "y5MbjqLq": {}}, "options": ["onKKlzT6", "XpuJWygk", "NbOYXSQ8"], "platform": "QtWUYEBm", "requestId": "bOKAosxO", "useCount": 77}' \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'uFOXy3km' \
    --namespace $AB_NAMESPACE \
    --userId 'lGnUV20X' \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'juK5qrfk' \
    --namespace $AB_NAMESPACE \
    --userId '6zd3ns6m' \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'o1jMuxQL' \
    --namespace $AB_NAMESPACE \
    --userId '7rl94lPz' \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'PvODuu4Z' \
    --namespace $AB_NAMESPACE \
    --userId 'nkSNfSYJ' \
    --body '{"metadata": {"4CwY8anw": {}, "Vh0pxzbZ": {}, "lMdEFZjQ": {}}}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'SIVeGPUG' \
    --namespace $AB_NAMESPACE \
    --userId 'w2BKf9X4' \
    --body '{"reason": "r4dxbdfk", "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'C5HTtk1C' \
    --namespace $AB_NAMESPACE \
    --userId 'I3BliY78' \
    --quantity '81' \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'Kckia8XF' \
    --namespace $AB_NAMESPACE \
    --userId 'XsIEKHdh' \
    --body '{"platform": "emsX5IJR", "requestId": "5U5l0ekd", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'SbGy2UOF' \
    --body '{"duration": 71, "endDate": "1998-10-22T00:00:00Z", "entitlementCollectionId": "vrYuW84o", "entitlementOrigin": "GooglePlay", "itemId": "z9h9usOZ", "itemSku": "fDdEKn5w", "language": "kUPunUxj", "metadata": {"NxIJn33T": {}, "VnSru9t9": {}, "LrSzNJmo": {}}, "order": {"currency": {"currencyCode": "9h0K9N4O", "currencySymbol": "I6Rx0l9K", "currencyType": "REAL", "decimals": 38, "namespace": "pt2jrTgx"}, "ext": {"ENJTlnpW": {}, "DKhmt2RB": {}, "kWlvU7MU": {}}, "free": false}, "orderNo": "hIDKxaGz", "origin": "System", "overrideBundleItemQty": {"0uRtUYxN": 38, "a5maoeIl": 53, "a7bn80wQ": 76}, "quantity": 39, "region": "k58wtIO8", "source": "PURCHASE", "startDate": "1986-07-06T00:00:00Z", "storeId": "gO3a5XmN"}' \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'SkC064Ey' \
    --body '{"code": "SMTtw1W1", "language": "bAme", "region": "YvQMxXTs"}' \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'dRQcqTEb' \
    --body '{"itemId": "affj4YBP", "itemSku": "n8C48AuE", "quantity": 86}' \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'd8AmkU75' \
    --body '{"entitlementCollectionId": "U6Wr2dLJ", "entitlementOrigin": "Steam", "metadata": {"SkOqaaXq": {}, "7d3pfFyd": {}, "wsUKWOod": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "69dCsYbO", "namespace": "dsJTJiKp"}, "item": {"itemId": "o3PFcHeN", "itemName": "txPoco7H", "itemSku": "FKeInUrd", "itemType": "TigIMTXd"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "FvjP1lL0", "namespace": "6S53xEAF"}, "item": {"itemId": "MhmRVBvQ", "itemName": "r15ZtBol", "itemSku": "R02vRuMc", "itemType": "ws5bAJkO"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "cdbpFq7e", "namespace": "JPNj11gP"}, "item": {"itemId": "Rci1qyPR", "itemName": "Rib5Yqla", "itemSku": "ZAc86K15", "itemType": "yGAzr3xz"}, "quantity": 38, "type": "CURRENCY"}], "source": "IAP", "transactionId": "2qa2PgcS"}' \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'QBb9FTfd' \
    --endTime 'BTXtgtCz' \
    --limit '79' \
    --offset '14' \
    --productId 'dSZ4WQOZ' \
    --startTime 'bneP9RBU' \
    --status 'FULFILLED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'TnGbiJ63' \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'FohTJvAO' \
    --endTime 'WGKpPGM8' \
    --limit '57' \
    --offset '21' \
    --startTime '5O6LB1yc' \
    --status 'SUCCESS' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'tVjuvmJ5' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "CXOG-VmPy-157", "productId": "O7DSSX77", "region": "nti0eNvh", "transactionId": "UVxKPWQQ", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'au5sCrIT' \
    --body '{"skus": ["S0NQb3RT", "OFDzColM", "VWFcC39L"]}' \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'VW6IKL99' \
    --namespace $AB_NAMESPACE \
    --userId 'efXEEqb1' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'rtzxy6AZ' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'eZEoyENZ' \
    --body '{"orderId": "e3yJ44vO"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PCrYtXBt' \
    --activeOnly 'true' \
    --groupId '2y1eJ4cj' \
    --limit '35' \
    --offset '92' \
    --platform 'STADIA' \
    --productId 'S29FF8xd' \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'ipTXl6EY' \
    --groupId 'nUB54Szk' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    --userId 'POKQuzo9' \
    --productId 'V7tD3VDj' \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'TkEExLQe' \
    --activeOnly 'false' \
    --groupId 'R6uMGw8W' \
    --limit '74' \
    --offset '46' \
    --platform 'TWITCH' \
    --productId '17IBX8Iq' \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'eQsNCLKG' \
    --namespace $AB_NAMESPACE \
    --userId 'IL06P4Pc' \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id '8n0wrpif' \
    --namespace $AB_NAMESPACE \
    --userId '4sOLV8Cm' \
    --limit '56' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'lg838Kp2' \
    --namespace $AB_NAMESPACE \
    --userId 'uUu41qqF' \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'dZd4ctm1' \
    --namespace $AB_NAMESPACE \
    --userId 'x9bboSdY' \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id '1AH12yd5' \
    --namespace $AB_NAMESPACE \
    --userId 'coUtdDT3' \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 AdminSyncTwitchDropsEntitlement
samples/cli/sample-apps Platform adminSyncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Pl9O9EYE' \
    --body '{"gameId": "yDWJwfIQ", "language": "xdgS_WenX-lb", "region": "41v6ROto"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminSyncTwitchDropsEntitlement' test.out

#- 310 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WEHgAqff' \
    --discounted 'false' \
    --itemId 'DayDaAti' \
    --limit '84' \
    --offset '95' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 310 'QueryUserOrders' test.out

#- 311 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'llLdNEoW' \
    --body '{"currencyCode": "hqN7pvjW", "currencyNamespace": "8X4Cog3y", "discountCodes": ["ttn0Tf7m", "wAmLo2PT", "Xt27cFBh"], "discountedPrice": 81, "entitlementPlatform": "Other", "ext": {"YqueKJ0z": {}, "VVxeMtpM": {}, "YffTlEzp": {}}, "itemId": "NzcTvfvl", "language": "KgnaPySg", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 25, "quantity": 32, "region": "NfPMzPHT", "returnUrl": "lRe0sUZH", "sandbox": false, "sectionId": "MQcaPIY9"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserOrder' test.out

#- 312 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'uruFfZX5' \
    --itemId 'T6OseKkK' \
    > test.out 2>&1
eval_tap $? 312 'CountOfPurchasedItem' test.out

#- 313 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xwNJpUiL' \
    --userId '6htyEuMV' \
    > test.out 2>&1
eval_tap $? 313 'GetUserOrder' test.out

#- 314 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'iwSsBaHm' \
    --userId 'VEBrOqIv' \
    --body '{"status": "CLOSED", "statusReason": "DdLg0xuz"}' \
    > test.out 2>&1
eval_tap $? 314 'UpdateUserOrderStatus' test.out

#- 315 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'snH4hh45' \
    --userId 'Xw85xSp1' \
    > test.out 2>&1
eval_tap $? 315 'FulfillUserOrder' test.out

#- 316 GetUserOrderGrant
eval_tap 0 316 'GetUserOrderGrant # SKIP deprecated' test.out

#- 317 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'sObxsaH3' \
    --userId 'kK10XjXe' \
    > test.out 2>&1
eval_tap $? 317 'GetUserOrderHistories' test.out

#- 318 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'nYQ0XJUW' \
    --userId 'xD6asWYe' \
    --body '{"additionalData": {"cardSummary": "wdz3Tjiw"}, "authorisedTime": "1986-11-01T00:00:00Z", "chargebackReversedTime": "1986-12-08T00:00:00Z", "chargebackTime": "1999-11-20T00:00:00Z", "chargedTime": "1972-01-18T00:00:00Z", "createdTime": "1987-01-04T00:00:00Z", "currency": {"currencyCode": "BVVhweOd", "currencySymbol": "aad6USVo", "currencyType": "REAL", "decimals": 15, "namespace": "2Ny7jXO7"}, "customParameters": {"WVacv865": {}, "HH0iV1x6": {}, "pT5A0EmR": {}}, "extOrderNo": "6VIsB6LN", "extTxId": "VX5z647z", "extUserId": "DjWtOVuY", "issuedAt": "1996-01-17T00:00:00Z", "metadata": {"W7chDKAw": "Ezi86Asb", "wf3Zkqu1": "oOF2uH75", "PliCPNLX": "mZ4H83vf"}, "namespace": "peX6MggS", "nonceStr": "qSv8H1a1", "paymentData": {"discountAmount": 49, "discountCode": "gWBIqGg4", "subtotalPrice": 27, "tax": 57, "totalPrice": 93}, "paymentMethod": "lRUyjEow", "paymentMethodFee": 24, "paymentOrderNo": "XXy9m0bQ", "paymentProvider": "WXPAY", "paymentProviderFee": 20, "paymentStationUrl": "cEDroDza", "price": 90, "refundedTime": "1973-10-18T00:00:00Z", "salesTax": 81, "sandbox": true, "sku": "kZ354ylt", "status": "CHARGED", "statusReason": "A9HoAC0f", "subscriptionId": "5KhctUX3", "subtotalPrice": 70, "targetNamespace": "2dJHQJrB", "targetUserId": "FxJCgpJz", "tax": 48, "totalPrice": 22, "totalTax": 74, "txEndTime": "1972-09-17T00:00:00Z", "type": "WqXyApe7", "userId": "2KdMM5zZ", "vat": 26}' \
    > test.out 2>&1
eval_tap $? 318 'ProcessUserOrderNotification' test.out

#- 319 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'nDASkqk3' \
    --userId 'rhVUInLG' \
    > test.out 2>&1
eval_tap $? 319 'DownloadUserOrderReceipt' test.out

#- 320 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'p4fCB50M' \
    --body '{"currencyCode": "oSsiR0g4", "currencyNamespace": "jEwTOBFH", "customParameters": {"wUlWwpiq": {}, "nhNfkXPE": {}, "K6FZFDWh": {}}, "description": "9BV9KMvU", "extOrderNo": "7KxeMenZ", "extUserId": "gKCYl3im", "itemType": "SEASON", "language": "eGlg-gZVQ_qB", "metadata": {"7Q4zZcwf": "T3DmB3nh", "RosdolP3": "1cYhHrdr", "TfLuAR05": "3vk66YOD"}, "notifyUrl": "dqNtWqc7", "omitNotification": true, "platform": "TYLr4S0W", "price": 26, "recurringPaymentOrderNo": "RTfZYxwc", "region": "fQT3JAIz", "returnUrl": "IwdTJMKE", "sandbox": false, "sku": "mgfZVO5u", "subscriptionId": "QpQNa8j6", "title": "FRAn6WgM"}' \
    > test.out 2>&1
eval_tap $? 320 'CreateUserPaymentOrder' test.out

#- 321 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YpDlbd4F' \
    --userId 'SOUX9L73' \
    --body '{"description": "ioEAVgB3"}' \
    > test.out 2>&1
eval_tap $? 321 'RefundUserPaymentOrder' test.out

#- 322 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'K0xKV75j' \
    > test.out 2>&1
eval_tap $? 322 'GetUserPlatformAccountClosureHistories' test.out

#- 323 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '0LrylNyA' \
    --body '{"code": "IJd6a2jg", "orderNo": "tffNUM58"}' \
    > test.out 2>&1
eval_tap $? 323 'ApplyUserRedemption' test.out

#- 324 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Y1qlsJq7' \
    --body '{"meta": {"JZNXALEe": {}, "9sTU2rxZ": {}, "yNeOefnC": {}}, "reason": "JOhMdHEx", "requestId": "H7MlU5BV", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "PNhvZhJm", "namespace": "qxsgNanJ"}, "entitlement": {"entitlementId": "T9t0QO0U"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "bnQiXhT3", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 25, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "DVIChfcU", "namespace": "JY0LsY3W"}, "entitlement": {"entitlementId": "DR8G72WM"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "rAaBp8Yi", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 68, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "xdSuBHxp", "namespace": "6bqbR2Nc"}, "entitlement": {"entitlementId": "wtmgFoq5"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "8lmv9VfM", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 3, "type": "ITEM"}], "source": "IAP", "transactionId": "DbB65EkW"}' \
    > test.out 2>&1
eval_tap $? 324 'DoRevocation' test.out

#- 325 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'L4HApHFs' \
    --body '{"gameSessionId": "1DtRDMY6", "payload": {"kCThJ3j7": {}, "gSDQQP7Q": {}, "DhKjdWOb": {}}, "scid": "Sz872qgK", "sessionTemplateName": "pApTu1wh"}' \
    > test.out 2>&1
eval_tap $? 325 'RegisterXblSessions' test.out

#- 326 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'gBgfldFy' \
    --chargeStatus 'SETUP' \
    --itemId '0BrQIi8K' \
    --limit '15' \
    --offset '4' \
    --sku 'yYG4vcg9' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserSubscriptions' test.out

#- 327 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'oVblPL64' \
    --excludeSystem 'true' \
    --limit '73' \
    --offset '71' \
    --subscriptionId 'Z87UFadi' \
    > test.out 2>&1
eval_tap $? 327 'GetUserSubscriptionActivities' test.out

#- 328 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'znEMGpS1' \
    --body '{"grantDays": 70, "itemId": "qrPPkjgb", "language": "z8efNKMW", "reason": "65yJxOqK", "region": "RKea0Lhg", "source": "a9GUWbda"}' \
    > test.out 2>&1
eval_tap $? 328 'PlatformSubscribeSubscription' test.out

#- 329 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'l2pCBuVH' \
    --itemId 'WevYfKpy' \
    > test.out 2>&1
eval_tap $? 329 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 330 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'v3g6tSsL' \
    --userId 'VSPJIuNs' \
    > test.out 2>&1
eval_tap $? 330 'GetUserSubscription' test.out

#- 331 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rwHfbfOd' \
    --userId 'cTaEEfZ0' \
    > test.out 2>&1
eval_tap $? 331 'DeleteUserSubscription' test.out

#- 332 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DEWk3tvV' \
    --userId 'D3ffRSiM' \
    --force 'false' \
    --body '{"immediate": false, "reason": "yLaI22eb"}' \
    > test.out 2>&1
eval_tap $? 332 'CancelSubscription' test.out

#- 333 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PMSkJfJW' \
    --userId 'TsKlbqzH' \
    --body '{"grantDays": 42, "reason": "5DeE35rG"}' \
    > test.out 2>&1
eval_tap $? 333 'GrantDaysToSubscription' test.out

#- 334 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TRIGulvE' \
    --userId 'd9OcI5Pj' \
    --excludeFree 'true' \
    --limit '44' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 334 'GetUserSubscriptionBillingHistories' test.out

#- 335 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'o6nTi45V' \
    --userId 'wZ3MUtD9' \
    --body '{"additionalData": {"cardSummary": "PxsW4Q4t"}, "authorisedTime": "1994-04-28T00:00:00Z", "chargebackReversedTime": "1973-07-05T00:00:00Z", "chargebackTime": "1994-12-30T00:00:00Z", "chargedTime": "1997-09-07T00:00:00Z", "createdTime": "1999-09-27T00:00:00Z", "currency": {"currencyCode": "og5ul8e1", "currencySymbol": "isWQHQqw", "currencyType": "REAL", "decimals": 46, "namespace": "ntDL9vfs"}, "customParameters": {"MAPDHvMN": {}, "kop4P0XD": {}, "1ApREDQ2": {}}, "extOrderNo": "5aTWmT47", "extTxId": "SKc2eCro", "extUserId": "bkFuOl1E", "issuedAt": "1993-11-14T00:00:00Z", "metadata": {"Na4afblO": "mcRygJwf", "No68pckS": "xMXZVRrt", "IYM5YVhy": "YAT26Ul7"}, "namespace": "BHrwYm6o", "nonceStr": "LAOt3SrY", "paymentData": {"discountAmount": 13, "discountCode": "DG6D1sCc", "subtotalPrice": 40, "tax": 21, "totalPrice": 30}, "paymentMethod": "FrSuWQec", "paymentMethodFee": 4, "paymentOrderNo": "QBDmG7tx", "paymentProvider": "CHECKOUT", "paymentProviderFee": 54, "paymentStationUrl": "GsR7QH0K", "price": 67, "refundedTime": "1976-10-23T00:00:00Z", "salesTax": 79, "sandbox": true, "sku": "Wxp7qIQI", "status": "REQUEST_FOR_INFORMATION", "statusReason": "Fq63JxnD", "subscriptionId": "QIeJHEQt", "subtotalPrice": 31, "targetNamespace": "YBhrFLGZ", "targetUserId": "osY4Nms3", "tax": 27, "totalPrice": 100, "totalTax": 2, "txEndTime": "1976-10-25T00:00:00Z", "type": "k20SxxC4", "userId": "N65uDCAj", "vat": 72}' \
    > test.out 2>&1
eval_tap $? 335 'ProcessUserSubscriptionNotification' test.out

#- 336 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '8MH9wakZ' \
    --namespace $AB_NAMESPACE \
    --userId 'uo97GqMv' \
    --body '{"count": 43, "orderNo": "kwty2hXt"}' \
    > test.out 2>&1
eval_tap $? 336 'AcquireUserTicket' test.out

#- 337 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'a2cO7rnb' \
    > test.out 2>&1
eval_tap $? 337 'QueryUserCurrencyWallets' test.out

#- 338 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'rJ5B3EI5' \
    --namespace $AB_NAMESPACE \
    --userId 'vNkPTRcp' \
    --body '{"allowOverdraft": true, "amount": 42, "balanceOrigin": "System", "balanceSource": "TRADE", "metadata": {"lXHWKjDW": {}, "ZbK4fBp5": {}, "HaHjgC9M": {}}, "reason": "PiYmhUij"}' \
    > test.out 2>&1
eval_tap $? 338 'DebitUserWalletByCurrencyCode' test.out

#- 339 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'R1ROaQeI' \
    --namespace $AB_NAMESPACE \
    --userId 'uAv01H4X' \
    --limit '38' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 339 'ListUserCurrencyTransactions' test.out

#- 340 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '11LWLRXP' \
    --namespace $AB_NAMESPACE \
    --userId '1Jepbj8C' \
    --request '{"amount": 63, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"rQeTVErw": {}, "l8lqnhKQ": {}, "EagMzy5N": {}}, "reason": "OUq5EZWU", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 340 'CheckBalance' test.out

#- 341 CheckWallet
eval_tap 0 341 'CheckWallet # SKIP deprecated' test.out

#- 342 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'fP06FrMm' \
    --namespace $AB_NAMESPACE \
    --userId 'puIxg97l' \
    --body '{"amount": 66, "expireAt": "1992-01-09T00:00:00Z", "metadata": {"xXY0NsJ9": {}, "eYrIqS8F": {}, "RTotEeLh": {}}, "origin": "Xbox", "reason": "QZYD4m9R", "source": "CONSUME_ENTITLEMENT"}' \
    > test.out 2>&1
eval_tap $? 342 'CreditUserWallet' test.out

#- 343 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'svoQkj39' \
    --namespace $AB_NAMESPACE \
    --userId 'awskWPsc' \
    --request '{"amount": 26, "debitBalanceSource": "OTHER", "metadata": {"DhITcVLF": {}, "iglaXTzd": {}, "c71NfSGm": {}}, "reason": "gdCuB9p7", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 343 'DebitByWalletPlatform' test.out

#- 344 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'Vs6DBLtC' \
    --namespace $AB_NAMESPACE \
    --userId 'v9kZHeNF' \
    --body '{"amount": 96, "metadata": {"f9dpdF4k": {}, "6YZjoggn": {}, "h0tVFN4H": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 344 'PayWithUserWallet' test.out

#- 345 GetUserWallet
eval_tap 0 345 'GetUserWallet # SKIP deprecated' test.out

#- 346 DebitUserWallet
eval_tap 0 346 'DebitUserWallet # SKIP deprecated' test.out

#- 347 DisableUserWallet
eval_tap 0 347 'DisableUserWallet # SKIP deprecated' test.out

#- 348 EnableUserWallet
eval_tap 0 348 'EnableUserWallet # SKIP deprecated' test.out

#- 349 ListUserWalletTransactions
eval_tap 0 349 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 350 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'LeTAtB1y' \
    > test.out 2>&1
eval_tap $? 350 'ListViews' test.out

#- 351 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'QRtlC7uU' \
    --body '{"displayOrder": 60, "localizations": {"LfK6CaqD": {"description": "Krx1qEGx", "localExt": {"2CNQVEyo": {}, "Qqj8vH12": {}, "KkaW5n89": {}}, "longDescription": "xSmYzQk6", "title": "CI8ozvEJ"}, "NV11HVYg": {"description": "Ol8Jfp3Y", "localExt": {"LQrVeL1q": {}, "zav1GySP": {}, "3FFQeSCX": {}}, "longDescription": "1tVxCl6q", "title": "85MYEuiY"}, "lDmKK5de": {"description": "I2GQJtMa", "localExt": {"xfoqODmn": {}, "cox1l2rr": {}, "FBTjB9n9": {}}, "longDescription": "I3Cl4n4B", "title": "CmXLPysk"}}, "name": "ijd9jLFp"}' \
    > test.out 2>&1
eval_tap $? 351 'CreateView' test.out

#- 352 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'JeUT540D' \
    --storeId 'ADhT43pG' \
    > test.out 2>&1
eval_tap $? 352 'GetView' test.out

#- 353 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'xDAORGOX' \
    --storeId 'XmSpZRZZ' \
    --body '{"displayOrder": 76, "localizations": {"hpIooKNN": {"description": "wwVXJoUP", "localExt": {"1AW16sYa": {}, "GOXtTVH9": {}, "JLXbcOWn": {}}, "longDescription": "gV3h8NML", "title": "KG4rGrNn"}, "cwZk8BNu": {"description": "9J9Oscug", "localExt": {"SHW3PdEc": {}, "h4rPHfVS": {}, "zTAcOPyZ": {}}, "longDescription": "Wd5pzHy7", "title": "iWnnu7XO"}, "FGNGaeGg": {"description": "FoI2KHLo", "localExt": {"48EslGjZ": {}, "ffoNgFzA": {}, "zHShxTeL": {}}, "longDescription": "3CfvIC9O", "title": "HVlQKo29"}}, "name": "09GFRa3N"}' \
    > test.out 2>&1
eval_tap $? 353 'UpdateView' test.out

#- 354 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'cHm1PZVy' \
    --storeId 'xIG2iJNV' \
    > test.out 2>&1
eval_tap $? 354 'DeleteView' test.out

#- 355 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'GetWalletConfig' test.out

#- 356 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateWalletConfig' test.out

#- 357 QueryWallets
eval_tap 0 357 'QueryWallets # SKIP deprecated' test.out

#- 358 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 41, "expireAt": "1971-05-14T00:00:00Z", "metadata": {"w4HlRBYa": {}, "NqR1C1Ql": {}, "Hk7oZZyE": {}}, "origin": "Steam", "reason": "vmY12wx6", "source": "GIFT"}, "currencyCode": "f1nCITuo", "userIds": ["phTTQTuK", "30PK1CFj", "8Mstjzmg"]}, {"creditRequest": {"amount": 99, "expireAt": "1998-02-17T00:00:00Z", "metadata": {"v4tgnN50": {}, "eRq6z2wZ": {}, "Jsa2W1mJ": {}}, "origin": "Xbox", "reason": "WxvVxLi9", "source": "REFERRAL_BONUS"}, "currencyCode": "C4xU1onH", "userIds": ["hG1KHxxF", "DK74RwBk", "3IYSGMbg"]}, {"creditRequest": {"amount": 5, "expireAt": "1990-10-16T00:00:00Z", "metadata": {"sdyKqWlD": {}, "qKEa383c": {}, "zljQKFqg": {}}, "origin": "Twitch", "reason": "WIGMYuvq", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "Z1pjMVB6", "userIds": ["QyEuX3Yq", "9aSfr4po", "xtK63bxm"]}]' \
    > test.out 2>&1
eval_tap $? 358 'BulkCredit' test.out

#- 359 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ubIKMzNu", "request": {"allowOverdraft": true, "amount": 32, "balanceOrigin": "Oculus", "balanceSource": "DLC_REVOCATION", "metadata": {"bJF3PEwL": {}, "Opq3oToD": {}, "vV6D9gjW": {}}, "reason": "aFfjROdI"}, "userIds": ["MH5FNNQA", "o5mXhbEy", "RMhkcI47"]}, {"currencyCode": "nr9ywMTR", "request": {"allowOverdraft": false, "amount": 83, "balanceOrigin": "Xbox", "balanceSource": "OTHER", "metadata": {"CSuRJt19": {}, "RfdLNOcM": {}, "0479iW7U": {}}, "reason": "194vjR0p"}, "userIds": ["kH18s86x", "lbhIb6sG", "DfNc5eSk"]}, {"currencyCode": "dJJGspha", "request": {"allowOverdraft": true, "amount": 17, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"AMmPLIpc": {}, "c9k6Mr95": {}, "sM06v083": {}}, "reason": "R7YGFqIS"}, "userIds": ["EGNP30UP", "jPmBkCex", "jeroXE5j"]}]' \
    > test.out 2>&1
eval_tap $? 359 'BulkDebit' test.out

#- 360 GetWallet
eval_tap 0 360 'GetWallet # SKIP deprecated' test.out

#- 361 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'vi3eM7fp' \
    --end 'LrlyPeSo' \
    --start 'wGMwQ7vu' \
    > test.out 2>&1
eval_tap $? 361 'SyncOrders' test.out

#- 362 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["l4qR5TLz", "JwCOeFha", "YILwMMVd"], "apiKey": "C8PsYRwM", "authoriseAsCapture": false, "blockedPaymentMethods": ["SzumEFsB", "HAKq8a1n", "Ht0W2Upg"], "clientKey": "zNNQGGXk", "dropInSettings": "LPgsutMV", "liveEndpointUrlPrefix": "CZmupXge", "merchantAccount": "8EchPGmQ", "notificationHmacKey": "CdQR82pK", "notificationPassword": "PHLN047H", "notificationUsername": "pogPyYPH", "returnUrl": "pAUqkr3l", "settings": "JREc6EDw"}' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfig' test.out

#- 363 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "SELy85ij", "privateKey": "8x8ZJkzj", "publicKey": "msFYpV6u", "returnUrl": "UxqGhvde"}' \
    > test.out 2>&1
eval_tap $? 363 'TestAliPayConfig' test.out

#- 364 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "PfzmoJFG", "secretKey": "7lDsrGNC"}' \
    > test.out 2>&1
eval_tap $? 364 'TestCheckoutConfig' test.out

#- 365 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'nKoSyYmY' \
    --region 'dXSoxjz1' \
    > test.out 2>&1
eval_tap $? 365 'DebugMatchedPaymentMerchantConfig' test.out

#- 366 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "80Hqhqsc", "webhookSecretKey": "d3G8GTbc"}' \
    > test.out 2>&1
eval_tap $? 366 'TestNeonPayConfig' test.out

#- 367 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "ZQ7HCmTe", "clientSecret": "iakow39y", "returnUrl": "xT5kP7qZ", "webHookId": "yXkacoAa"}' \
    > test.out 2>&1
eval_tap $? 367 'TestPayPalConfig' test.out

#- 368 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["sCqn5Cnt", "ZJagaQ4k", "emhcAaB3"], "publishableKey": "7e9HFwaF", "secretKey": "oBckbqV6", "webhookSecret": "LLpDZJtn"}' \
    > test.out 2>&1
eval_tap $? 368 'TestStripeConfig' test.out

#- 369 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ivuUFJFa", "key": "Vm1RaknN", "mchid": "sJEolhJL", "returnUrl": "F130VRKF"}' \
    > test.out 2>&1
eval_tap $? 369 'TestWxPayConfig' test.out

#- 370 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Ca0NTUzX", "flowCompletionUrl": "XM6cRz9C", "merchantId": 47, "projectId": 67, "projectSecretKey": "jn01fZcU"}' \
    > test.out 2>&1
eval_tap $? 370 'TestXsollaConfig' test.out

#- 371 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'X2JLqcce' \
    > test.out 2>&1
eval_tap $? 371 'GetPaymentMerchantConfig1' test.out

#- 372 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'SSOhPGzf' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["QcKzUqG9", "ADS6cr03", "Khsi5S3S"], "apiKey": "TjRFKY8H", "authoriseAsCapture": true, "blockedPaymentMethods": ["2hLVtSqe", "sElpSWrX", "s2oOCeC1"], "clientKey": "Vdo9YoCc", "dropInSettings": "6YQcb2xJ", "liveEndpointUrlPrefix": "FbSdzNIe", "merchantAccount": "zsoSpt0g", "notificationHmacKey": "ei2V91SA", "notificationPassword": "mwWZ6x3T", "notificationUsername": "Qu9FUot9", "returnUrl": "2IhSIeua", "settings": "jnTFLgZG"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAdyenConfig' test.out

#- 373 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'AyRV6QJh' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 373 'TestAdyenConfigById' test.out

#- 374 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'uc0RgkYz' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "YyOf0wyS", "privateKey": "xyIdTc5x", "publicKey": "zE11Fyjq", "returnUrl": "uAKXEUlB"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateAliPayConfig' test.out

#- 375 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'PpOGe9Zx' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 375 'TestAliPayConfigById' test.out

#- 376 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'G3ZvLq0f' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "W8O5TJOI", "secretKey": "3PGN9Yl7"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateCheckoutConfig' test.out

#- 377 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '2IwORb8t' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 377 'TestCheckoutConfigById' test.out

#- 378 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'prj5F5Vx' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "B02eQfR2", "webhookSecretKey": "stMtSHyY"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateNeonPayConfig' test.out

#- 379 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'kg7rLcD9' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 379 'TestNeonPayConfigById' test.out

#- 380 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'GfvxAmhL' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "1qyRvE1C", "clientSecret": "58UJHfgx", "returnUrl": "323SNeOd", "webHookId": "L3QoQXAR"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdatePayPalConfig' test.out

#- 381 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'oRMEZfSa' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 381 'TestPayPalConfigById' test.out

#- 382 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'zHPoTFQu' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["hfvrzEKp", "ntmm9eO0", "3sdUqmqk"], "publishableKey": "Bjs9RXFF", "secretKey": "OxjvfkpN", "webhookSecret": "aCgRy5I9"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateStripeConfig' test.out

#- 383 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'b2rjLFJP' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 383 'TestStripeConfigById' test.out

#- 384 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'GD1vYjtL' \
    --validate 'true' \
    --body '{"appId": "DlPvOQBF", "key": "anEg7hXM", "mchid": "RXmuxs1q", "returnUrl": "eoSC05u4"}' \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfig' test.out

#- 385 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'MrbdO56s' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 385 'UpdateWxPayConfigCert' test.out

#- 386 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'B0eMu707' \
    > test.out 2>&1
eval_tap $? 386 'TestWxPayConfigById' test.out

#- 387 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Y7HID5kn' \
    --validate 'true' \
    --body '{"apiKey": "2gQ8SWXA", "flowCompletionUrl": "uKceuO2k", "merchantId": 70, "projectId": 6, "projectSecretKey": "rBQhULRX"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaConfig' test.out

#- 388 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'osZAu12E' \
    > test.out 2>&1
eval_tap $? 388 'TestXsollaConfigById' test.out

#- 389 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'sxeKi8wR' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 389 'UpdateXsollaUIConfig' test.out

#- 390 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '37' \
    --namespace 'HLbQ14eA' \
    --offset '77' \
    --region 'fkuSMvxj' \
    > test.out 2>&1
eval_tap $? 390 'QueryPaymentProviderConfig' test.out

#- 391 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "NEONPAY", "namespace": "ngx3yDVa", "region": "uOqtg7op", "sandboxTaxJarApiToken": "uUcYA90e", "specials": ["STRIPE", "CHECKOUT", "NEONPAY"], "taxJarApiToken": "DzBWCW0j", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 391 'CreatePaymentProviderConfig' test.out

#- 392 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetAggregatePaymentProviders' test.out

#- 393 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'izbYiuCM' \
    --region 'ewngHe2D' \
    > test.out 2>&1
eval_tap $? 393 'DebugMatchedPaymentProviderConfig' test.out

#- 394 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 394 'GetSpecialPaymentProviders' test.out

#- 395 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'nbUFBZrs' \
    --body '{"aggregate": "NEONPAY", "namespace": "QKCaCGtp", "region": "NBKgAqSR", "sandboxTaxJarApiToken": "2uUYajKK", "specials": ["CHECKOUT", "XSOLLA", "XSOLLA"], "taxJarApiToken": "ybyx3NiI", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 395 'UpdatePaymentProviderConfig' test.out

#- 396 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'Z0V7C3Gq' \
    > test.out 2>&1
eval_tap $? 396 'DeletePaymentProviderConfig' test.out

#- 397 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 397 'GetPaymentTaxConfig' test.out

#- 398 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "nV71nhZi", "taxJarApiToken": "YkVJGNdv", "taxJarEnabled": true, "taxJarProductCodesMapping": {"sWplewe3": "zHJ9MqiS", "6GKcWrKG": "1e5u47Z5", "PNqOOrka": "H7sl4lXU"}}' \
    > test.out 2>&1
eval_tap $? 398 'UpdatePaymentTaxConfig' test.out

#- 399 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'OURcDPfQ' \
    --end 'Qa4KpZTS' \
    --start 'm7lS02Jr' \
    > test.out 2>&1
eval_tap $? 399 'SyncPaymentOrders' test.out

#- 400 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'asmrZyWm' \
    --storeId 'BkvILtDI' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetRootCategories' test.out

#- 401 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'b7aPkvd2' \
    --storeId 'EDcgteKw' \
    > test.out 2>&1
eval_tap $? 401 'DownloadCategories' test.out

#- 402 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'so3qPTZZ' \
    --namespace $AB_NAMESPACE \
    --language 'eLV4CjR0' \
    --storeId 'GkYBiPxp' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetCategory' test.out

#- 403 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '2VmOg4S8' \
    --namespace $AB_NAMESPACE \
    --language 'Qx5pUn6e' \
    --storeId 'VGmyC3TR' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetChildCategories' test.out

#- 404 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'EPpNX7Is' \
    --namespace $AB_NAMESPACE \
    --language 'bKIDCMue' \
    --storeId 'Nie8cLZY' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetDescendantCategories' test.out

#- 405 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 405 'PublicListCurrencies' test.out

#- 406 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 406 'GeDLCDurableRewardShortMap' test.out

#- 407 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 407 'GetAppleConfigVersion' test.out

#- 408 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 408 'GetIAPItemMapping' test.out

#- 409 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '3ZGGElfT' \
    --region 'ccavYXDJ' \
    --storeId 'F5aDGZjB' \
    --appId '9U9O5Pia' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemByAppId' test.out

#- 410 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '9ryJOsjR' \
    --categoryPath 'Ne5NAdgg' \
    --features 'DR36chp0' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --language '7fpx5vXb' \
    --limit '41' \
    --offset '97' \
    --region 'giSC7W2p' \
    --sortBy '["name", "updatedAt:desc", "createdAt:desc"]' \
    --storeId '9Y8keDL9' \
    --tags 'YOn2F789' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryItems' test.out

#- 411 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'dTaC3ADb' \
    --region 'FY25XD09' \
    --storeId '8xY4u8tX' \
    --sku '7uB1vn4b' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetItemBySku' test.out

#- 412 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'fAJLcQL0' \
    --storeId 'eVlBygWp' \
    --itemIds 'fjSZCZ5H' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEstimatedPrice' test.out

#- 413 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'PSIPw8MP' \
    --region '0r5QlZKn' \
    --storeId 'zyMzoIGy' \
    --itemIds 'pZr9H0MF' \
    > test.out 2>&1
eval_tap $? 413 'PublicBulkGetItems' test.out

#- 414 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["d3v0BBEk", "XSPNk0mh", "nRj0pmjA"]}' \
    > test.out 2>&1
eval_tap $? 414 'PublicValidateItemPurchaseCondition' test.out

#- 415 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'EXTENSION' \
    --limit '65' \
    --offset '41' \
    --region 'VElKeSFG' \
    --storeId 'PW71B1nl' \
    --keyword 'aQCuIbH3' \
    --language '5kPBXQ2B' \
    > test.out 2>&1
eval_tap $? 415 'PublicSearchItems' test.out

#- 416 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'gLXEO6v8' \
    --namespace $AB_NAMESPACE \
    --language 'UG1kP0yu' \
    --region 'zPY137Y0' \
    --storeId 'dfJuLcsE' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetApp' test.out

#- 417 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'yMSA3WhW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItemDynamicData' test.out

#- 418 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '6XORP7tE' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'n9ob2wCE' \
    --populateBundle 'true' \
    --region 'ruO3JL3h' \
    --storeId 'uIOP3CrP' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetItem' test.out

#- 419 GetPaymentCustomization
eval_tap 0 419 'GetPaymentCustomization # SKIP deprecated' test.out

#- 420 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "tYELCryI", "successUrl": "QfJK4FP3"}, "paymentOrderNo": "jlanjH2y", "paymentProvider": "STRIPE", "returnUrl": "bRmOy2K5", "ui": "IcUxcild", "zipCode": "mIUnbrMn"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentUrl' test.out

#- 421 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Dg5B8BhO' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetPaymentMethods' test.out

#- 422 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dQ5xupo0' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUnpaidPaymentOrder' test.out

#- 423 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'D0ojzLCT' \
    --paymentProvider 'NEONPAY' \
    --zipCode 'mMS9N3kG' \
    --body '{"token": "90h2vFS3"}' \
    > test.out 2>&1
eval_tap $? 423 'Pay' test.out

#- 424 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'd7dkZy5R' \
    > test.out 2>&1
eval_tap $? 424 'PublicCheckPaymentOrderPaidStatus' test.out

#- 425 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'mjQSgxM5' \
    > test.out 2>&1
eval_tap $? 425 'GetPaymentPublicConfig' test.out

#- 426 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'XPwYdeeo' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetQRCode' test.out

#- 427 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'TrhimPvt' \
    --foreinginvoice 'EzC9wwpF' \
    --invoiceId 'l6tUiVQs' \
    --payload 'X0AxADF1' \
    --redirectResult 's0rS3zgW' \
    --resultCode 'sVNqjmCF' \
    --sessionId 'XbBPhZp4' \
    --status 'H3aTIDWz' \
    --token 'TrvToMPi' \
    --type 'X60RHHwq' \
    --userId 'sM1svET9' \
    --orderNo '6un5pzYt' \
    --paymentOrderNo 'n4e4b4iY' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'X2zswije' \
    > test.out 2>&1
eval_tap $? 427 'PublicNormalizePaymentReturnUrl' test.out

#- 428 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '2ZkJq19a' \
    --paymentOrderNo 'TrRc6cYA' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 428 'GetPaymentTaxValue' test.out

#- 429 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'xHc7fn2n' \
    > test.out 2>&1
eval_tap $? 429 'GetRewardByCode' test.out

#- 430 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'wWSn3dI8' \
    --limit '78' \
    --offset '78' \
    --sortBy '["rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 430 'QueryRewards1' test.out

#- 431 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'htNXAmGR' \
    > test.out 2>&1
eval_tap $? 431 'GetReward1' test.out

#- 432 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 432 'PublicListStores' test.out

#- 433 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["2AuwfeIx", "nE3i46qH", "Z6xjDf57"]' \
    --itemIds '["xaSIzFQE", "cMbskjo9", "BApPOrHq"]' \
    --skus '["w7W9iIaZ", "STThtBSd", "fBfdMcsu"]' \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyMyActiveEntitlement' test.out

#- 434 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '6VF6LhFz' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'y3iz5fHc' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 436 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku '5aPMGaxj' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 437 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["qyMMiS94", "HvwBvjJs", "WNZmPq8F"]' \
    --itemIds '["J6zQsge4", "LQBkUTqJ", "uI5GLsNo"]' \
    --skus '["sopwdJEy", "TYvOSNzd", "jAX7Y6hh"]' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetEntitlementOwnershipToken' test.out

#- 438 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "crIODYOJ", "language": "Lreb_JKuc", "region": "6jWoTyj0"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncTwitchDropsEntitlement' test.out

#- 439 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'vYRG9fjh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 439 'PublicGetMyWallet' test.out

#- 440 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ow9EL2wf' \
    --body '{"epicGamesJwtToken": "GMCzdwGh"}' \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGameDLC' test.out

#- 441 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'X7Nny5lr' \
    > test.out 2>&1
eval_tap $? 441 'SyncOculusDLC' test.out

#- 442 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gPipa46n' \
    --body '{"serviceLabel": 94}' \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventory' test.out

#- 443 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '0c1SfxaW' \
    --body '{"serviceLabels": [25, 27, 15]}' \
    > test.out 2>&1
eval_tap $? 443 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 444 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uoUrGpNd' \
    --body '{"appId": "vmGXhSMt", "steamId": "cwu15Qj1"}' \
    > test.out 2>&1
eval_tap $? 444 'SyncSteamDLC' test.out

#- 445 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '20WsHTWc' \
    --body '{"xstsToken": "LYKj4c1V"}' \
    > test.out 2>&1
eval_tap $? 445 'SyncXboxDLC' test.out

#- 446 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'qHOM1cIS' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'dGYpmOuN' \
    --features '["U2u3uktH", "hVtqEqep", "u141RGqp"]' \
    --itemId '["MPyJrlyF", "bxugeXMg", "mumYHPXp"]' \
    --limit '13' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlements' test.out

#- 447 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'COZJGk6V' \
    --appId 'TKB7NGBw' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserAppEntitlementByAppId' test.out

#- 448 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'FCq9xkWL' \
    --limit '78' \
    --offset '73' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 448 'PublicQueryUserEntitlementsByAppType' test.out

#- 449 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'LaEdnXCY' \
    --availablePlatformOnly 'false' \
    --ids '["gb5Z5cJ3", "ILU9bfwx", "HG2HAzjs"]' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlementsByIds' test.out

#- 450 PublicGetUserEntitlementByItemId
eval_tap 0 450 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 451 PublicGetUserEntitlementBySku
eval_tap 0 451 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 452 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'z2ZEMJcK' \
    --endDate 'THBPzARA' \
    --entitlementClazz 'MEDIA' \
    --limit '98' \
    --offset '53' \
    --startDate 'Ca1cvll5' \
    > test.out 2>&1
eval_tap $? 452 'PublicUserEntitlementHistory' test.out

#- 453 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Ccxqu8IR' \
    --appIds '["whBIACDT", "sSqvyLK8", "Y5RDlaVE"]' \
    --itemIds '["7cVVbTyo", "g8ocH4Xr", "bdblAn1d"]' \
    --skus '["Ti44YZbd", "HtqL2l6l", "vG2VAJE3"]' \
    > test.out 2>&1
eval_tap $? 453 'PublicExistsAnyUserActiveEntitlement' test.out

#- 454 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'mmY5apOx' \
    --appId 'z9L4zBSF' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JucNrfNg' \
    --entitlementClazz 'APP' \
    --itemId 'TzxMZeGs' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 456 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'l95Jvv22' \
    --ids '["5fmm0qpP", "O97pe9St", "29mW01rp"]' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 457 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'AlpYcdFi' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'tj018otz' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 458 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Cgl0F7VF' \
    --namespace $AB_NAMESPACE \
    --userId 'pmKPMnis' \
    > test.out 2>&1
eval_tap $? 458 'PublicGetUserEntitlement' test.out

#- 459 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'CBcDMzBC' \
    --namespace $AB_NAMESPACE \
    --userId '0VBXODMW' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["2yoqaML3", "OWSmIPGf", "pf7ZdTLS"], "requestId": "hIVwHKRA", "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 459 'PublicConsumeUserEntitlement' test.out

#- 460 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'FzI26Ypw' \
    --namespace $AB_NAMESPACE \
    --userId 'TlxQHdQU' \
    --body '{"requestId": "Rjq8QDGt", "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 460 'PublicSellUserEntitlement' test.out

#- 461 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'hN2gaeMO' \
    --namespace $AB_NAMESPACE \
    --userId 'sWbLMbP3' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 461 'PublicSplitUserEntitlement' test.out

#- 462 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'MLthVpRk' \
    --namespace $AB_NAMESPACE \
    --userId 'wBrAZABf' \
    --body '{"entitlementId": "EUkPdVaj", "metadata": {"operationSource": "INVENTORY"}, "useCount": 26}' \
    > test.out 2>&1
eval_tap $? 462 'PublicTransferUserEntitlement' test.out

#- 463 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'YlwrdGTH' \
    --body '{"code": "1tcMEpYv", "language": "pi_PcZW", "region": "hggVcOLy"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicRedeemCode' test.out

#- 464 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kQ6V5hiA' \
    --body '{"excludeOldTransactions": false, "language": "zND_788", "productId": "NmU9mdPu", "receiptData": "Efl29K4z", "region": "y7XfOQFh", "transactionId": "obLhb3IT"}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillAppleIAPItem' test.out

#- 465 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Wt9JUzAF' \
    --body '{"epicGamesJwtToken": "Qo649fAU"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncEpicGamesInventory' test.out

#- 466 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'yb7uZdSK' \
    --body '{"autoAck": true, "autoConsume": true, "language": "ugcE_OJjQ", "orderId": "82RQZR62", "packageName": "xsLVZbBV", "productId": "PVrWXvWX", "purchaseTime": 16, "purchaseToken": "CS6ob79i", "region": "4Lz2saEj", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 466 'PublicFulfillGoogleIAPItem' test.out

#- 467 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'OcEP83k9' \
    --body '{"skus": ["UPRrTGfL", "kJNX9wOk", "RNFt9KQy"]}' \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusSubscriptions' test.out

#- 468 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Nc9hq4nE' \
    > test.out 2>&1
eval_tap $? 468 'SyncOculusConsumableEntitlements' test.out

#- 469 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'mLNgo936' \
    --body '{"currencyCode": "pYCcPTpr", "price": 0.35009460042402385, "productId": "Mrmn5u43", "serviceLabel": 47}' \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStore' test.out

#- 470 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'q1wbA18D' \
    --body '{"currencyCode": "Z1CgZBMb", "price": 0.5552621314312053, "productId": "Q9yh5nWl", "serviceLabels": [18, 69, 30]}' \
    > test.out 2>&1
eval_tap $? 470 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 471 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'flcTJtcO' \
    --body '{"appId": "g5vkYaV3", "currencyCode": "hJaleo5Z", "language": "Qhfj_701", "price": 0.349443643175701, "productId": "Kkm7wzmD", "region": "qb7Q0PwA", "steamId": "kzFBKp0Q"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamInventory' test.out

#- 472 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ZzOtKi10' \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamAbnormalTransaction' test.out

#- 473 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ujAD4n9w' \
    --body '{"orderId": "MJdOPibT"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncSteamIAPByTransaction' test.out

#- 474 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId '81Gj2BXK' \
    --activeOnly 'false' \
    --groupId 'TDNkO4vw' \
    --limit '23' \
    --offset '56' \
    --productId 'XDiewj0f' \
    > test.out 2>&1
eval_tap $? 474 'PublicQueryUserThirdPartySubscription' test.out

#- 475 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'UM4zvn4B' \
    --body '{"gameId": "lVhPHJoM", "language": "dEdU", "region": "9IiQ07fJ"}' \
    > test.out 2>&1
eval_tap $? 475 'SyncTwitchDropsEntitlement1' test.out

#- 476 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'XGHzH94G' \
    --body '{"currencyCode": "RDZSZuT3", "price": 0.6117338656822419, "productId": "bwAKrYsx", "xstsToken": "c6WPGSKb"}' \
    > test.out 2>&1
eval_tap $? 476 'SyncXboxInventory' test.out

#- 477 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '7Vgle6N0' \
    --discounted 'false' \
    --itemId 'gY41dJ47' \
    --limit '71' \
    --offset '96' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserOrders' test.out

#- 478 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '6DgZhA4r' \
    --body '{"currencyCode": "NLraxMWU", "discountCodes": ["q9bPySbJ", "iecaft01", "WbXK5pQI"], "discountedPrice": 98, "ext": {"fhx477gZ": {}, "vf8aRlUV": {}, "hdI9Nifn": {}}, "itemId": "qjKahrIy", "language": "yeBl_ZCTw-784", "price": 31, "quantity": 63, "region": "6HpZgcnu", "returnUrl": "zFvWG9ih", "sectionId": "Zz28oX0V"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicCreateUserOrder' test.out

#- 479 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'QhLEvULN' \
    --body '{"currencyCode": "FtbtjiFL", "discountCodes": ["nxis6YR3", "92Zl1QXp", "ikBMaHfX"], "discountedPrice": 47, "itemId": "hCvXMb3S", "price": 22, "quantity": 15}' \
    > test.out 2>&1
eval_tap $? 479 'PublicPreviewOrderPrice' test.out

#- 480 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1SOugmjy' \
    --userId '5QTcRqQn' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrder' test.out

#- 481 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yviIOvSt' \
    --userId 'byiy85mL' \
    > test.out 2>&1
eval_tap $? 481 'PublicCancelUserOrder' test.out

#- 482 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'VycppWy9' \
    --userId '2whrroT5' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetUserOrderHistories' test.out

#- 483 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '1VvJdd0d' \
    --userId 'mnG27URS' \
    > test.out 2>&1
eval_tap $? 483 'PublicDownloadUserOrderReceipt' test.out

#- 484 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'wFcy5Nw2' \
    > test.out 2>&1
eval_tap $? 484 'PublicGetPaymentAccounts' test.out

#- 485 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'KxCmazYS' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '1oI81rxK' \
    > test.out 2>&1
eval_tap $? 485 'PublicDeletePaymentAccount' test.out

#- 486 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'V3P8mU7u' \
    --autoCalcEstimatedPrice 'true' \
    --language '0vHgkrG6' \
    --region 'WQ51AR35' \
    --storeId 'd5BsPSb3' \
    --viewId 'fsb1F6If' \
    > test.out 2>&1
eval_tap $? 486 'PublicListActiveSections' test.out

#- 487 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dJyUShv6' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '7E9kbl3c' \
    --limit '70' \
    --offset '21' \
    --sku 'l3J75cXa' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 487 'PublicQueryUserSubscriptions' test.out

#- 488 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'kSzoDiCU' \
    --body '{"currencyCode": "iW05AnS9", "itemId": "NF61w8yc", "language": "id_dDiE", "region": "e0saN6Gx", "returnUrl": "DBa0ICZc", "source": "OFManfAs"}' \
    > test.out 2>&1
eval_tap $? 488 'PublicSubscribeSubscription' test.out

#- 489 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WPxRvcrl' \
    --itemId 'IQOADqo1' \
    > test.out 2>&1
eval_tap $? 489 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 490 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xvrs7e80' \
    --userId '7TQr67hc' \
    > test.out 2>&1
eval_tap $? 490 'PublicGetUserSubscription' test.out

#- 491 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kSK2cx70' \
    --userId 'IfRtmyfT' \
    > test.out 2>&1
eval_tap $? 491 'PublicChangeSubscriptionBillingAccount' test.out

#- 492 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'K5sHyt5K' \
    --userId 'HStKrWn9' \
    --body '{"immediate": false, "reason": "cuG3FpdQ"}' \
    > test.out 2>&1
eval_tap $? 492 'PublicCancelSubscription' test.out

#- 493 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'azgJ9NG1' \
    --userId 'scnrwQ7C' \
    --excludeFree 'false' \
    --limit '57' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetUserSubscriptionBillingHistories' test.out

#- 494 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'u0EMqtW5' \
    --language 'RvTq1XEq' \
    --storeId '5Cc1EofC' \
    > test.out 2>&1
eval_tap $? 494 'PublicListViews' test.out

#- 495 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'eeGNgVWQ' \
    --namespace $AB_NAMESPACE \
    --userId 'I7R6JUns' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetWallet' test.out

#- 496 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'P07FCWRR' \
    --namespace $AB_NAMESPACE \
    --userId 'i9IC9EAS' \
    --limit '13' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 496 'PublicListUserWalletTransactions' test.out

#- 497 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 497 'PublicGetMyDLCContent' test.out

#- 498 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'lQwGLKxj' \
    --limit '17' \
    --offset '0' \
    --startTime 'Ww8uqVir' \
    --state 'FULFILL_FAILED' \
    --transactionId 'TvL17fyP' \
    --userId 'kpTNtviD' \
    > test.out 2>&1
eval_tap $? 498 'QueryFulfillments' test.out

#- 499 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'S7zey0cF' \
    --baseAppId 'g7yVTFhE' \
    --categoryPath '9ehtPGdm' \
    --features '3QJgGSLF' \
    --includeSubCategoryItem 'false' \
    --itemName 'YVgKJreD' \
    --itemStatus 'INACTIVE' \
    --itemType '["INGAMEITEM", "SEASON", "LOOTBOX"]' \
    --limit '55' \
    --offset '6' \
    --region '4O5CPmpP' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt", "name:desc", "createdAt:desc"]' \
    --storeId '4jHvxIx6' \
    --tags 'K9RwKnt6' \
    --targetNamespace '152awzGD' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 499 'QueryItemsV2' test.out

#- 500 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'wRZhw5am' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 500 'ImportStore1' test.out

#- 501 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'OhegLTL2' \
    --body '{"itemIds": ["TiQciWkS", "DBzFAMya", "S6x9fxST"]}' \
    > test.out 2>&1
eval_tap $? 501 'ExportStore1' test.out

#- 502 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fnBK3XxT' \
    --body '{"entitlementCollectionId": "lMXwphVt", "entitlementOrigin": "Other", "metadata": {"HEUev1ob": {}, "wqWYDhjp": {}, "OU3wzJW9": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "v2BACiYN", "namespace": "QnSBkjLt"}, "item": {"itemId": "Kmg33GBh", "itemName": "XkLmibtO", "itemSku": "9ZmsdZON", "itemType": "qGgCKJeR"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "u74dVLxx", "namespace": "oQRb4Vpv"}, "item": {"itemId": "xG1MAstU", "itemName": "BTqUcfwP", "itemSku": "RqNsqsiq", "itemType": "LAFJg480"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "5pj6kHMh", "namespace": "2ZXDIrJg"}, "item": {"itemId": "AqMm9dgQ", "itemName": "YHSydnDq", "itemSku": "U1nlc2wO", "itemType": "L7MSZfu1"}, "quantity": 83, "type": "CURRENCY"}], "source": "SELL_BACK", "transactionId": "cK9x3cvM"}' \
    > test.out 2>&1
eval_tap $? 502 'FulfillRewardsV2' test.out

#- 503 FulfillItems
eval_tap 0 503 'FulfillItems # SKIP deprecated' test.out

#- 504 RetryFulfillItems
eval_tap 0 504 'RetryFulfillItems # SKIP deprecated' test.out

#- 505 RevokeItems
eval_tap 0 505 'RevokeItems # SKIP deprecated' test.out

#- 506 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'jNflXDA1' \
    --body '{"transactionId": "KaUVQFnY"}' \
    > test.out 2>&1
eval_tap $? 506 'V2PublicFulfillAppleIAPItem' test.out

#- 507 BulkFulfillItemsV3
samples/cli/sample-apps Platform bulkFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2a2mnM13' \
    --body '[{"items": [{"duration": 15, "endDate": "1990-08-10T00:00:00Z", "entitlementCollectionId": "Yl97NRvg", "entitlementOrigin": "Epic", "itemId": "lcKUkCQe", "itemSku": "b1O2EZcj", "language": "r4uhsB4N", "metadata": {"mFVgrB64": {}, "a1FlHIki": {}, "QBJ5Dz6C": {}}, "orderNo": "SmlTzAeQ", "origin": "Xbox", "quantity": 39, "region": "Z4goiSSU", "source": "ORDER_REVOCATION", "startDate": "1991-11-17T00:00:00Z", "storeId": "7X7EngDT"}, {"duration": 27, "endDate": "1977-08-09T00:00:00Z", "entitlementCollectionId": "lT9Wmt7m", "entitlementOrigin": "Other", "itemId": "na60Up6Y", "itemSku": "JveYOCoi", "language": "EXva2Nmn", "metadata": {"WS3dKNha": {}, "5dVgf3PT": {}, "8MdeSdkv": {}}, "orderNo": "6qakIRwK", "origin": "IOS", "quantity": 46, "region": "DXsDEWjM", "source": "PURCHASE", "startDate": "1977-11-30T00:00:00Z", "storeId": "1nc7eM4g"}, {"duration": 79, "endDate": "1992-05-18T00:00:00Z", "entitlementCollectionId": "lmDyN8o0", "entitlementOrigin": "Other", "itemId": "VYrHTh2D", "itemSku": "Tr228Vxx", "language": "tuwDSk9a", "metadata": {"iySAZlYh": {}, "SSAe5tzs": {}, "EcIfMuWj": {}}, "orderNo": "EztdelRe", "origin": "Nintendo", "quantity": 45, "region": "LFvYklXn", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1980-09-17T00:00:00Z", "storeId": "trY7RD9x"}], "transactionId": "pbtNpa7Y"}, {"items": [{"duration": 96, "endDate": "1998-04-21T00:00:00Z", "entitlementCollectionId": "eWuZJ9wW", "entitlementOrigin": "GooglePlay", "itemId": "a1Sgy8E6", "itemSku": "z75zQiiI", "language": "dl6zPgbU", "metadata": {"TJiwY12r": {}, "NGNtUEem": {}, "vnUjyhhg": {}}, "orderNo": "WX7FnWtn", "origin": "Playstation", "quantity": 57, "region": "gcdT7j14", "source": "GIFT", "startDate": "1999-06-23T00:00:00Z", "storeId": "hZWe1DV1"}, {"duration": 53, "endDate": "1980-09-11T00:00:00Z", "entitlementCollectionId": "OMlEoFCb", "entitlementOrigin": "Epic", "itemId": "69pgs48c", "itemSku": "fTUaaL7y", "language": "vTE4qobZ", "metadata": {"UXiLQiBg": {}, "j2sTeyTs": {}, "xpF0RC11": {}}, "orderNo": "4CByzNwA", "origin": "IOS", "quantity": 87, "region": "F69xQQmH", "source": "REFERRAL_BONUS", "startDate": "1991-07-05T00:00:00Z", "storeId": "xZWo4Ogk"}, {"duration": 54, "endDate": "1971-06-03T00:00:00Z", "entitlementCollectionId": "NfsB4JaC", "entitlementOrigin": "Oculus", "itemId": "1dvmQOxr", "itemSku": "SaV0zU6q", "language": "DkEK3Pwy", "metadata": {"H1whhtST": {}, "1MYhWApB": {}, "zsu3PSxY": {}}, "orderNo": "eFrSchGr", "origin": "Oculus", "quantity": 27, "region": "p3jlMrgP", "source": "REFERRAL_BONUS", "startDate": "1981-05-30T00:00:00Z", "storeId": "2PYoA75B"}], "transactionId": "p2x1p5M5"}, {"items": [{"duration": 16, "endDate": "1973-05-12T00:00:00Z", "entitlementCollectionId": "U57vcPEN", "entitlementOrigin": "Twitch", "itemId": "KF3AOUTF", "itemSku": "cLZQUwgd", "language": "ezTIdD4e", "metadata": {"o0jSQEFl": {}, "0usSmsnd": {}, "23z7ERKP": {}}, "orderNo": "hexHh4ya", "origin": "System", "quantity": 97, "region": "e7rDjJWq", "source": "REDEEM_CODE", "startDate": "1975-11-16T00:00:00Z", "storeId": "paJ8V5sr"}, {"duration": 67, "endDate": "1982-03-14T00:00:00Z", "entitlementCollectionId": "Sfj1WBbR", "entitlementOrigin": "IOS", "itemId": "R3TGwqQB", "itemSku": "Ke6rWgp6", "language": "dyJSL5Dv", "metadata": {"8UtLR4kV": {}, "2pRlKQLQ": {}, "gKl8jcFS": {}}, "orderNo": "T0d8jg7F", "origin": "System", "quantity": 83, "region": "CPIrItOb", "source": "EXPIRATION", "startDate": "1972-04-03T00:00:00Z", "storeId": "WCPaD4Xy"}, {"duration": 72, "endDate": "1979-12-06T00:00:00Z", "entitlementCollectionId": "CLfW0rdr", "entitlementOrigin": "Oculus", "itemId": "73TNHbvD", "itemSku": "hKFesW2m", "language": "jICv9lD4", "metadata": {"t2TJ3CZE": {}, "pVFlit2U": {}, "gh5YNW7J": {}}, "orderNo": "cd69Bia6", "origin": "Twitch", "quantity": 65, "region": "orUgE9Xe", "source": "ORDER_REVOCATION", "startDate": "1980-04-11T00:00:00Z", "storeId": "g4VTeGRu"}], "transactionId": "BuFRO7GW"}]' \
    > test.out 2>&1
eval_tap $? 507 'BulkFulfillItemsV3' test.out

#- 508 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'UfEjUztO' \
    --userId 'cI41C24p' \
    --body '{"items": [{"duration": 63, "endDate": "1998-05-14T00:00:00Z", "entitlementCollectionId": "i6WhfiUD", "entitlementOrigin": "Oculus", "itemId": "MgU3LPsx", "itemSku": "lYNMSac0", "language": "LtuMoawq", "metadata": {"baFlvbZj": {}, "Okuyejzp": {}, "abCzd8WS": {}}, "orderNo": "jrLjwPAf", "origin": "Steam", "quantity": 65, "region": "SMX2c6bI", "source": "ACHIEVEMENT", "startDate": "1999-10-17T00:00:00Z", "storeId": "hrESATtY"}, {"duration": 5, "endDate": "1983-04-23T00:00:00Z", "entitlementCollectionId": "B76yYMPi", "entitlementOrigin": "Xbox", "itemId": "sLmWTSf1", "itemSku": "arOd6BmU", "language": "0s6lpPAC", "metadata": {"23T6Uz5A": {}, "1qfplczj": {}, "EkWxIspL": {}}, "orderNo": "41FPmcT3", "origin": "IOS", "quantity": 55, "region": "F8hs5YAV", "source": "REDEEM_CODE", "startDate": "1992-11-17T00:00:00Z", "storeId": "lOk84ahv"}, {"duration": 98, "endDate": "1974-12-09T00:00:00Z", "entitlementCollectionId": "FHXASM7N", "entitlementOrigin": "System", "itemId": "Y8ZNDAjQ", "itemSku": "PLkRdfd9", "language": "xOreI2B6", "metadata": {"qDaHQ8JP": {}, "dX7YGvHW": {}, "vwCv2aQS": {}}, "orderNo": "SL2IVSse", "origin": "Epic", "quantity": 40, "region": "EoOICpOj", "source": "PROMOTION", "startDate": "1990-12-03T00:00:00Z", "storeId": "nrvKq3LS"}]}' \
    > test.out 2>&1
eval_tap $? 508 'FulfillItemsV3' test.out

#- 509 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '6t3mCI4r' \
    --userId '6xZvD8io' \
    > test.out 2>&1
eval_tap $? 509 'RetryFulfillItemsV3' test.out

#- 510 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'IQYTAVpA' \
    --userId 'WUyso6x1' \
    > test.out 2>&1
eval_tap $? 510 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE