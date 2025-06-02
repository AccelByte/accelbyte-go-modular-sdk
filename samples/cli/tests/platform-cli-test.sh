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
    --id 'upklojnp' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '0zesTaLa' \
    --body '{"grantDays": "dxYKN2CI"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'ib6UYNsg' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'GTOXR8HP' \
    --body '{"grantDays": "6H1TnYg7"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "QDoFNRu4", "dryRun": true, "fulfillmentUrl": "yBkcjSnz", "itemType": "SEASON", "purchaseConditionUrl": "LxCB0SAu"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz '6ttoUq5y' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Om38Hh3t' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'R0ZSBmgW' \
    --body '{"clazz": "mVLtWoiu", "dryRun": true, "fulfillmentUrl": "wNFXPqTw", "purchaseConditionUrl": "PpPz3CtF"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Wn1SRnzN' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --name 'iXcN9zuj' \
    --offset '47' \
    --tag 'uT2o6Tqn' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xLo9cGcg", "discountConfig": {"categories": [{"categoryPath": "Hx5glOOm", "includeSubCategories": false}, {"categoryPath": "ufLasDn2", "includeSubCategories": true}, {"categoryPath": "nfhaPhrG", "includeSubCategories": true}], "currencyCode": "eXjM4iZ9", "currencyNamespace": "xRp5S0YO", "discountAmount": 97, "discountPercentage": 55, "discountType": "PERCENTAGE", "items": [{"itemId": "mLbjAYQ8", "itemName": "HbkQwv6W"}, {"itemId": "HDocZIdQ", "itemName": "iVTBIUjv"}, {"itemId": "0AiecJ7z", "itemName": "8fQ9IfyC"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 32, "itemId": "BYKfd18G", "itemName": "AlFnbyaR", "quantity": 62}, {"extraSubscriptionDays": 60, "itemId": "SzQGpSxu", "itemName": "dh2c4djE", "quantity": 45}, {"extraSubscriptionDays": 35, "itemId": "fmOnEDQ1", "itemName": "xlY2ctoW", "quantity": 99}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 87, "name": "wM0cGW7U", "redeemEnd": "1990-11-02T00:00:00Z", "redeemStart": "1973-03-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["3ouGUmJa", "CYzRHeQO", "IiCGyKNr"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '6LQqnHvG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '8qirznqB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "T3Ayeiu0", "discountConfig": {"categories": [{"categoryPath": "4j8PyfMU", "includeSubCategories": true}, {"categoryPath": "mXrr3W0q", "includeSubCategories": true}, {"categoryPath": "6dP7ys8n", "includeSubCategories": false}], "currencyCode": "ZLYS2rwL", "currencyNamespace": "jn3NKBHj", "discountAmount": 66, "discountPercentage": 65, "discountType": "AMOUNT", "items": [{"itemId": "T0KnLJAw", "itemName": "JNZSaf1b"}, {"itemId": "CpRH3iri", "itemName": "wPvrPWat"}, {"itemId": "nfe43NPz", "itemName": "izvPoVTK"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 20, "itemId": "bysjBNPN", "itemName": "WBoaWA4P", "quantity": 67}, {"extraSubscriptionDays": 86, "itemId": "O1QDDhYB", "itemName": "YiGJN3AM", "quantity": 63}, {"extraSubscriptionDays": 8, "itemId": "YprW0KB3", "itemName": "QSyNqd7g", "quantity": 53}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 47, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 20, "name": "YyFkZeSW", "redeemEnd": "1981-09-16T00:00:00Z", "redeemStart": "1994-02-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["tTfOiRDN", "82qoZ6QA", "DAHqExCH"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'EAJdyCMc' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "zrh75dIQ", "oldName": "psZOa6Zx"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'ei70arD7' \
    --namespace $AB_NAMESPACE \
    --batchName 'VJPPpFrf' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'ktussZDI' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["REWARD", "IAP", "DLC"]}' \
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
    --body '{"appConfig": {"appName": "fwYGZGLn"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "MzPnkmBa"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "Fcji8ryV"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "WBJ3757b"}, "extendType": "APP"}' \
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
    --storeId 'fQeibj7k' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'qYlyoafn' \
    --body '{"categoryPath": "5V39ITOC", "localizationDisplayNames": {"wKU7lRWL": "dLz1o4X7", "2rWLDXBK": "tCoh7mZq", "f256o9XL": "PgWa3U31"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'Aho1CPov' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'Uou6CDn4' \
    --namespace $AB_NAMESPACE \
    --storeId 'qJqGe5LQ' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'oQnETWt4' \
    --namespace $AB_NAMESPACE \
    --storeId 'Hx52N8Xo' \
    --body '{"localizationDisplayNames": {"1sFyo5Dm": "lX9XDYW1", "qcrtXyYB": "7JcmSxwC", "MxIGFFOe": "y2oha4wp"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '8TZ5wNOp' \
    --namespace $AB_NAMESPACE \
    --storeId 'mtvCeTO8' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'TY0TQeDc' \
    --namespace $AB_NAMESPACE \
    --storeId 'yXQYZLBi' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '8vsSrmWD' \
    --namespace $AB_NAMESPACE \
    --storeId '4m72cjNu' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'djG59Td4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'CwoW8GZR' \
    --batchNo '[72, 32, 53]' \
    --code 'oCoTMWgp' \
    --limit '40' \
    --offset '50' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'MXWQljRc' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "7bqyN7re", "codeValue": "0i06QRSs", "quantity": 100}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ecjMCK2K' \
    --namespace $AB_NAMESPACE \
    --batchName 'DHjjaXjC' \
    --batchNo '[82, 98, 12]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '4Nbx2M5P' \
    --namespace $AB_NAMESPACE \
    --batchName 'ISfntxj9' \
    --batchNo '[61, 60, 24]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'ZG1GYzc5' \
    --namespace $AB_NAMESPACE \
    --batchName '2ZPWZ3Kz' \
    --batchNo '[80, 72, 17]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'oO2OdcmY' \
    --namespace $AB_NAMESPACE \
    --code 'BVA8DXiY' \
    --limit '12' \
    --offset '22' \
    --userId 'qZSAEgZJ' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'qiOkXmWW' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'rtW2qPVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'J2bFqS3q' \
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
    --body '{"currencyCode": "5Imwt56h", "currencySymbol": "xQQbdKz2", "currencyType": "VIRTUAL", "decimals": 30, "localizationDescriptions": {"XJ9zGnO7": "HU2Pzx1A", "3HaMYS6J": "3Kb7ne2y", "Usvxw5OJ": "rkrMHiFn"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Xn7C4Yhy' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"X6W6F23I": "byK3DRGs", "Ploj5LUa": "rpjqLdmN", "jB2Jl0wV": "AdXrxxG9"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'wM4H2p67' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'GQ4c963u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'CUhmFsMh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'nVcuXLNP' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'FXxLnzK9' \
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
    --body '{"data": [{"autoUpdate": true, "id": "FxXyQt63", "rewards": [{"currency": {"currencyCode": "T86ydh1J", "namespace": "QcUf8cJk"}, "item": {"itemId": "PvlOQRNK", "itemName": "iSepdwaN", "itemSku": "1LIdSnNK", "itemType": "2sJRg9Rj"}, "quantity": 24, "type": "ITEM"}, {"currency": {"currencyCode": "zt78bIWp", "namespace": "dcuAZVlL"}, "item": {"itemId": "dil6YD3p", "itemName": "9RINIaPy", "itemSku": "2psYo7d1", "itemType": "SnGnCOYq"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "Bi4lZ2zX", "namespace": "2QNLBZ3i"}, "item": {"itemId": "drUVJE3a", "itemName": "K32504QQ", "itemSku": "6odGZeZG", "itemType": "t2Qt6wG1"}, "quantity": 53, "type": "CURRENCY"}], "rvn": 64}, {"autoUpdate": true, "id": "5AlcdpYs", "rewards": [{"currency": {"currencyCode": "JO9B993m", "namespace": "wcXowh1J"}, "item": {"itemId": "DG9que0s", "itemName": "uPFg11yf", "itemSku": "AQzlVdCb", "itemType": "JQJnaEZS"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "dCE9zI7N", "namespace": "iwbbWKus"}, "item": {"itemId": "q1RRJI54", "itemName": "7iDHsNt4", "itemSku": "A0T1pk1z", "itemType": "XE7nzjjP"}, "quantity": 23, "type": "ITEM"}, {"currency": {"currencyCode": "fNyDSylY", "namespace": "nbt6C9aO"}, "item": {"itemId": "2buUhvXx", "itemName": "swzgKQyJ", "itemSku": "NnOcLADW", "itemType": "8tRwUwDr"}, "quantity": 45, "type": "CURRENCY"}], "rvn": 1}, {"autoUpdate": true, "id": "bxSNrYm0", "rewards": [{"currency": {"currencyCode": "Q9aTIgS5", "namespace": "GWVAdbSD"}, "item": {"itemId": "YgikObms", "itemName": "X6KCe2jT", "itemSku": "Uk34Lc3E", "itemType": "HyhzrfEh"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "GYwdYr3p", "namespace": "WnodjmGG"}, "item": {"itemId": "EOeFmtqs", "itemName": "K32o3AUF", "itemSku": "qv9vmdXz", "itemType": "jn689XyZ"}, "quantity": 5, "type": "ITEM"}, {"currency": {"currencyCode": "ICHfzQ4g", "namespace": "V4ldMcaM"}, "item": {"itemId": "5pq7GDsF", "itemName": "F3Yx5fOp", "itemSku": "fkz7oiQL", "itemType": "cCrA4H3T"}, "quantity": 84, "type": "CURRENCY"}], "rvn": 52}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"NuRDQozK": "JK8QvBZr", "5GHvbwKm": "Aq5JXP0F", "9y1NPz52": "2cBZXohd"}}, {"platform": "OCULUS", "platformDlcIdMap": {"E7lpZW9J": "anUV87KO", "MnWs6VCu": "cFPYz8O4", "PSSfw7Nn": "piMnI3Cz"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"N2lXxTX1": "ZiMrBvvU", "asl6kkDQ": "494sVmHH", "VGvScD14": "XLZBNd6i"}}]}' \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName '494eLmHh' \
    --itemId '["zmpDKCxu", "M2JrPqSD", "mSsrLiFn"]' \
    --limit '11' \
    --offset '46' \
    --origin 'Nintendo' \
    --userId 'ZQH8HlNj' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["KiWufHAV", "Q84YUpYr", "sSwIYmll"]' \
    --limit '12' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlements' test.out

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
    --body '{"entitlementGrantList": [{"collectionId": "JgmKDu47", "endDate": "1999-11-25T00:00:00Z", "grantedCode": "sBzTTXjs", "itemId": "0SGeXfRy", "itemNamespace": "gVkg3mGF", "language": "YtST_BJiU", "metadata": {"gEkWqGkF": {}, "DzZNNKjR": {}, "tcc8k5yb": {}}, "origin": "Playstation", "quantity": 80, "region": "A6UXr8Yu", "source": "OTHER", "startDate": "1982-03-13T00:00:00Z", "storeId": "ku8jNoo2"}, {"collectionId": "3IpPVsR2", "endDate": "1984-09-03T00:00:00Z", "grantedCode": "TerYRXXf", "itemId": "q12CJfO3", "itemNamespace": "WxeEpRb9", "language": "dr_jisI", "metadata": {"UrXTU5Am": {}, "s585iG5k": {}, "fh1Sc14r": {}}, "origin": "Twitch", "quantity": 21, "region": "dnMfBjhx", "source": "REWARD", "startDate": "1997-10-18T00:00:00Z", "storeId": "AqDzFW7o"}, {"collectionId": "tdUu0jGG", "endDate": "1994-07-28T00:00:00Z", "grantedCode": "MHz5GslW", "itemId": "gqyyc7Jy", "itemNamespace": "y5SiO2Hh", "language": "QOKi-dEHH", "metadata": {"G97skN4x": {}, "QgIzJuqt": {}, "AtZxICF5": {}}, "origin": "IOS", "quantity": 15, "region": "oxJ09gt0", "source": "OTHER", "startDate": "1981-10-20T00:00:00Z", "storeId": "QNaueFzt"}], "userIds": ["0EBkj1GE", "LbeoNEON", "j1zsGvUY"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["LP3G2ebv", "h5fugauH", "jOxPlAOp"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'dlHzbZBU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '7' \
    --status 'FAIL' \
    --userId 'MWrYvrtV' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'DkADGaV4' \
    --eventType 'REVOKED' \
    --externalOrderId 'BhLdpUHs' \
    --limit '16' \
    --offset '87' \
    --startTime 'U04yi1lD' \
    --status 'IGNORED' \
    --userId 'I5llYqgt' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "qdvFwnqP", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 76, "clientTransactionId": "nmW0qbL5"}, {"amountConsumed": 42, "clientTransactionId": "ILFlgLNz"}, {"amountConsumed": 8, "clientTransactionId": "bks8XGpY"}], "entitlementId": "0uSc3Z3V", "usageCount": 50}, {"clientTransaction": [{"amountConsumed": 65, "clientTransactionId": "dAVK1TBa"}, {"amountConsumed": 100, "clientTransactionId": "fJGpIDm1"}, {"amountConsumed": 52, "clientTransactionId": "5ahqLxpl"}], "entitlementId": "Z8jJd4ZR", "usageCount": 56}, {"clientTransaction": [{"amountConsumed": 52, "clientTransactionId": "jZYfFPTw"}, {"amountConsumed": 91, "clientTransactionId": "0IEoiXib"}, {"amountConsumed": 22, "clientTransactionId": "2KZaVFDH"}], "entitlementId": "1UADuAGh", "usageCount": 100}], "purpose": "ibgzrQgX"}, "originalTitleName": "bgggQMKJ", "paymentProductSKU": "pODIwsfp", "purchaseDate": "tk7hvU4z", "sourceOrderItemId": "JNDm2j4M", "titleName": "Vw6ivM6Q"}, "eventDomain": "1cf7Wt6M", "eventSource": "wqtdojGh", "eventType": "myvCDUv8", "eventVersion": 65, "id": "tvG2SQer", "timestamp": "bhTb4k9K"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "N4KSp7ki", "eventState": "tOtVpnnD", "lineItemId": "ULqIohdI", "orderId": "DXP3EbTT", "productId": "3r0TYM5P", "productType": "ChROtibh", "purchasedDate": "RfBWwMMq", "sandboxId": "MR6y2Jcw", "skuId": "4biW85zj", "subscriptionData": {"consumedDurationInDays": 56, "dateTime": "EXOXbq7e", "durationInDays": 57, "recurrenceId": "f17zjnA1"}}, "datacontenttype": "9pr4VWHo", "id": "Sw3nN7fO", "source": "8cl5jQOL", "specVersion": "3SfNSEwa", "subject": "l82HLD6j", "time": "4CDyAjnE", "traceparent": "tYijW6S0", "type": "nF3LIj42"}' \
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
    --body '{"appAppleId": 69, "bundleId": "USrc8MVO", "issuerId": "uSPs0CdG", "keyId": "tzQshPcJ", "password": "EBWjBuwX", "version": "V2"}' \
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
    --body '{"sandboxId": "2MMtVH6w"}' \
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
    --body '{"applicationName": "q0MUOG2U", "notificationTokenAudience": "ZKJt5pO4", "notificationTokenEmail": "6O1VyXeg", "packageName": "SLfllx2C", "serviceAccountId": "Byfhbsg9"}' \
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
    --body '{"data": [{"itemIdentity": "C8Em4Xre", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"CuAaqmrF": "DRQnzMoK", "LIHlWcrD": "vYh6DGsZ", "o5BrPiGg": "oVGazi4V"}}, {"itemIdentity": "VzowToFD", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"5olDzvnX": "bWzdC4LW", "9zFshoWO": "4uKNL0re", "HadJMzFm": "RPuGosEF"}}, {"itemIdentity": "pCpW2MYJ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fhlttu5Z": "aVHrBNYY", "KzpHf1xh": "VpPjFzai", "U5Pdz9CK": "iI3tOQuT"}}]}' \
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
    --body '{"appId": "Rbj5JHBz", "appSecret": "O35Ewllf"}' \
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
    --body '{"backOfficeServerClientId": "SRFBzjqb", "backOfficeServerClientSecret": "egEn3Dfp", "enableStreamJob": true, "environment": "VRiZccbt", "streamName": "TUThTT6w", "streamPartnerName": "0ycmOLzf"}' \
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
    --body '{"backOfficeServerClientId": "QPI8jKPO", "backOfficeServerClientSecret": "Vrv5dbGV", "enableStreamJob": false, "environment": "fenY3jJ1", "streamName": "umCiGT2G", "streamPartnerName": "3Nz3DjJc"}' \
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
    --body '{"appId": "6ihqkb4b", "env": "LIVE", "publisherAuthenticationKey": "1A7P8Z7g", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "T0yaGT9O", "clientSecret": "jga8QlDg", "organizationId": "HmcVl546"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "0VFfUwif", "entraAppClientSecret": "x4e3jg0v", "entraTenantId": "kXifTWu2", "relyingPartyCert": "iifigXcV"}' \
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
    --password 'm1CEBM7h' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'BfRa3Hf9' \
    --externalId 'UnJBiAQs' \
    --limit '18' \
    --offset '35' \
    --source 'EPICGAMES' \
    --startDate 'VF02jazn' \
    --status 'PROCESSED' \
    --type 'LjH2I5DT' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '26' \
    --orderId '0MVzr80E' \
    --steamId 'a5r61r3A' \
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
    --body '{"env": "SANDBOX", "lastTime": "1995-03-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo '4MrspOfk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '45' \
    --orderId 'HXXyAORx' \
    --processStatus 'PROCESSED' \
    --steamId 'fp3Iq7FD' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'V3WcBb5Q' \
    --limit '74' \
    --offset '32' \
    --platform 'PLAYSTATION' \
    --productId 'Nm5qnfVH' \
    --userId 'vJK8XCSh' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'E3HHWqc3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'pJ1HQZ2o' \
    --feature 'QJEjXpLa' \
    --itemId '2M6pjUDB' \
    --itemType 'EXTENSION' \
    --startTime 'OzYvfc8C' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'V3zuKnz2' \
    --feature 'qNLyzs55' \
    --itemId '3kfFyhU9' \
    --itemType 'INGAMEITEM' \
    --startTime 'YHwvXUnZ' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'MnJW64QA' \
    --body '{"categoryPath": "8ftOKQXW", "targetItemId": "pWyBMXdt", "targetNamespace": "e9X2H9JN"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Fj1mM8dP' \
    --body '{"appId": "J9rXDvPk", "appType": "DEMO", "baseAppId": "BULxXCJo", "boothName": "oAE6WkqU", "categoryPath": "YHAAOVxH", "clazz": "Fgl3jTAH", "displayOrder": 21, "entitlementType": "CONSUMABLE", "ext": {"zxBa4GBf": {}, "sulpiYN8": {}, "fOpFHp3v": {}}, "features": ["r1OTedqQ", "heWeaBU6", "F88Q1Qf1"], "flexible": false, "images": [{"as": "rGNtK4RN", "caption": "ArErXrn9", "height": 76, "imageUrl": "USCa1Yf1", "smallImageUrl": "AjGBeVFK", "width": 29}, {"as": "gx8mr2zv", "caption": "1lmoYX1m", "height": 78, "imageUrl": "kWsNCSuX", "smallImageUrl": "Xzj75PaE", "width": 41}, {"as": "3rPOVkKs", "caption": "V6xuRgAh", "height": 53, "imageUrl": "JxylLz0G", "smallImageUrl": "cbUqxGuZ", "width": 89}], "inventoryConfig": {"customAttributes": {"UIfmL8Bm": {}, "6GHblT19": {}, "jitpcxyA": {}}, "serverCustomAttributes": {"qGhKiAwc": {}, "6HlAOlC9": {}, "BE1JgCzz": {}}, "slotUsed": 45}, "itemIds": ["7i9XUBIJ", "CY0GyNCb", "uzxUHkAl"], "itemQty": {"LHT5H1AJ": 98, "4jZYdUwE": 82, "RCfJkU7J": 33}, "itemType": "EXTENSION", "listable": true, "localizations": {"GJp5igLQ": {"description": "gYIPERWI", "localExt": {"udKA1fIY": {}, "RGiWmR1U": {}, "Yz6fD2Zq": {}}, "longDescription": "pNCMXtos", "title": "vKgEb2yG"}, "V8yg96Gx": {"description": "mltf3cCD", "localExt": {"6TbvxvDG": {}, "iZsfrI1C": {}, "mHKZu8TW": {}}, "longDescription": "CJR03GZe", "title": "CkBlDVBh"}, "JYnqeSsX": {"description": "0d8aS3kL", "localExt": {"ZczAeKpS": {}, "TjiTMfP9": {}, "lkpvkQS5": {}}, "longDescription": "p5jjFUTh", "title": "4H2XQ27i"}}, "lootBoxConfig": {"rewardCount": 42, "rewards": [{"lootBoxItems": [{"count": 70, "duration": 9, "endDate": "1983-08-08T00:00:00Z", "itemId": "wZrBsyKy", "itemSku": "MaRhgs3J", "itemType": "FsRDdnxC"}, {"count": 2, "duration": 94, "endDate": "1995-10-20T00:00:00Z", "itemId": "Cr0YMKtv", "itemSku": "qJftfdBA", "itemType": "TRcHiXws"}, {"count": 11, "duration": 53, "endDate": "1977-11-13T00:00:00Z", "itemId": "XzbHdAK0", "itemSku": "cMh5yX0h", "itemType": "qYLCo37C"}], "name": "AekKLyXe", "odds": 0.15804105597266827, "type": "REWARD_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 44, "duration": 12, "endDate": "1996-12-06T00:00:00Z", "itemId": "E9kGjT9h", "itemSku": "lwconNb8", "itemType": "muRk8QTo"}, {"count": 92, "duration": 78, "endDate": "1983-10-18T00:00:00Z", "itemId": "oSbNdJjE", "itemSku": "fw6r87EN", "itemType": "keNT9sqt"}, {"count": 84, "duration": 45, "endDate": "1996-05-20T00:00:00Z", "itemId": "Dn7CyRd8", "itemSku": "7rwXBN4B", "itemType": "uGP32oEq"}], "name": "LCnkRvA7", "odds": 0.9365497871956309, "type": "PROBABILITY_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 31, "duration": 69, "endDate": "1997-06-22T00:00:00Z", "itemId": "BDVQiu1L", "itemSku": "be08Q8qc", "itemType": "2LzZJBrx"}, {"count": 0, "duration": 49, "endDate": "1992-05-28T00:00:00Z", "itemId": "KeBTWthZ", "itemSku": "IBW2FnzL", "itemType": "nrK9O3NI"}, {"count": 24, "duration": 22, "endDate": "1987-12-20T00:00:00Z", "itemId": "3fR7GloG", "itemSku": "YEnpL2vq", "itemType": "vICMGtsv"}], "name": "aYCSopOh", "odds": 0.06361949754594631, "type": "REWARD", "weight": 21}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 67, "name": "iV4RJrQo", "optionBoxConfig": {"boxItems": [{"count": 15, "duration": 1, "endDate": "1985-04-24T00:00:00Z", "itemId": "eufZ8uR3", "itemSku": "Wli0WzgP", "itemType": "5w6ZGOCS"}, {"count": 75, "duration": 50, "endDate": "1997-01-03T00:00:00Z", "itemId": "6i9yaj1a", "itemSku": "cO6LfyBU", "itemType": "toKvDj17"}, {"count": 76, "duration": 47, "endDate": "1980-02-03T00:00:00Z", "itemId": "mKviLiCJ", "itemSku": "o9nGb20k", "itemType": "AduKg7zz"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 10, "fixedTrialCycles": 14, "graceDays": 40}, "regionData": {"BK2isBlI": [{"currencyCode": "bKNA4zzb", "currencyNamespace": "Gpuo9KMh", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1994-07-18T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1983-11-04T00:00:00Z", "expireAt": "1976-07-01T00:00:00Z", "price": 56, "purchaseAt": "1994-10-18T00:00:00Z", "trialPrice": 61}, {"currencyCode": "T6eDKou5", "currencyNamespace": "eHHqEgsD", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1995-11-07T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1999-02-20T00:00:00Z", "expireAt": "1972-02-26T00:00:00Z", "price": 56, "purchaseAt": "1978-04-06T00:00:00Z", "trialPrice": 84}, {"currencyCode": "FFDq13qI", "currencyNamespace": "gfLcpFGK", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1974-09-29T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1977-09-01T00:00:00Z", "expireAt": "1978-01-22T00:00:00Z", "price": 68, "purchaseAt": "1986-03-21T00:00:00Z", "trialPrice": 79}], "yGbD7Q8R": [{"currencyCode": "JB6MWg1B", "currencyNamespace": "CNhWlZwI", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1980-02-04T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1973-05-26T00:00:00Z", "expireAt": "1980-11-11T00:00:00Z", "price": 29, "purchaseAt": "1995-01-04T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Z1YqUYzs", "currencyNamespace": "BjOcTnCP", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1983-11-20T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1977-07-24T00:00:00Z", "expireAt": "1972-08-18T00:00:00Z", "price": 61, "purchaseAt": "1999-07-31T00:00:00Z", "trialPrice": 13}, {"currencyCode": "MBXhfa3U", "currencyNamespace": "EP0UBqi2", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1981-02-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1976-12-06T00:00:00Z", "expireAt": "1973-10-14T00:00:00Z", "price": 67, "purchaseAt": "1985-01-11T00:00:00Z", "trialPrice": 65}], "ChdBYkye": [{"currencyCode": "0uncwQkK", "currencyNamespace": "L7lMs13D", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1980-12-04T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1990-09-03T00:00:00Z", "expireAt": "1992-02-21T00:00:00Z", "price": 75, "purchaseAt": "1992-07-19T00:00:00Z", "trialPrice": 25}, {"currencyCode": "WZ3jF1A1", "currencyNamespace": "MDrj9YBu", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1986-11-10T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1980-09-18T00:00:00Z", "expireAt": "1999-03-06T00:00:00Z", "price": 27, "purchaseAt": "1976-05-11T00:00:00Z", "trialPrice": 93}, {"currencyCode": "jS7chUNJ", "currencyNamespace": "cE9jXFsi", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1972-03-31T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1996-11-20T00:00:00Z", "expireAt": "1974-09-03T00:00:00Z", "price": 19, "purchaseAt": "1997-05-13T00:00:00Z", "trialPrice": 58}]}, "saleConfig": {"currencyCode": "uGe09Z2c", "price": 24}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "GuJ2CH6N", "stackable": false, "status": "INACTIVE", "tags": ["a1GO5qTm", "VyXh78DQ", "wMuLt67M"], "targetCurrencyCode": "nsh7omM9", "targetNamespace": "mvZ29JMG", "thumbnailUrl": "j6KgKlVW", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '7s24OpPy' \
    --appId 'SENeKpjY' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate '3g4XcoIG' \
    --baseAppId 'o5BgP3T9' \
    --categoryPath '1QcrQIaz' \
    --features 'Nr8kpZzW' \
    --includeSubCategoryItem 'false' \
    --itemType 'LOOTBOX' \
    --limit '85' \
    --offset '91' \
    --region 'SIEZE2jJ' \
    --sortBy '["updatedAt:asc", "name:asc", "name:desc"]' \
    --storeId '38YapRe3' \
    --tags 'qdGBjRUX' \
    --targetNamespace 'JJBZ13Bi' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["hDGDqvQy", "NJKDt0k4", "uMwrS6TR"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'r4Bxg2Dp' \
    --itemIds 'RSYbShz5' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'tIPK08TK' \
    --sku 'JE8IGgBS' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'n8gWCvCK' \
    --populateBundle 'false' \
    --region '99H92bBr' \
    --storeId 'd6NfGYMl' \
    --sku 'bPVnEY94' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'Iv6WpTKj' \
    --region 'JRQeag88' \
    --storeId 'Uf65H2VJ' \
    --itemIds 'dsCjJbBb' \
    --userId '3T6Mz8ko' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2BCn6eTJ' \
    --sku '9Mqywxrx' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["DqSFz6Nk", "BETCt4zz", "x6UFhar2"]' \
    --storeId 'Qkz7OpJx' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'KQJqaMsG' \
    --region 'z4ohbUAp' \
    --storeId 'mBTwCvfe' \
    --itemIds 'aTszR46b' \
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
    --platform 'lnhqLlkH' \
    --userId 'M9riAWMd' \
    --body '{"itemIds": ["UV3i0Bfg", "XTzfzOhy", "RgkboK5Z"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'YqnvY5ij' \
    --body '{"changes": [{"itemIdentities": ["5PtmFJeZ", "xtSJi91n", "NnU2Yug1"], "itemIdentityType": "ITEM_SKU", "regionData": {"ZN8iCh0E": [{"currencyCode": "cNWiH9DX", "currencyNamespace": "lgTkZFxO", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1979-05-01T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1984-08-23T00:00:00Z", "discountedPrice": 85, "expireAt": "1994-10-20T00:00:00Z", "price": 24, "purchaseAt": "1994-06-30T00:00:00Z", "trialPrice": 33}, {"currencyCode": "XVapM002", "currencyNamespace": "Ic32dd0X", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1994-02-08T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1982-07-14T00:00:00Z", "discountedPrice": 92, "expireAt": "1972-11-14T00:00:00Z", "price": 48, "purchaseAt": "1986-09-15T00:00:00Z", "trialPrice": 34}, {"currencyCode": "hiHkh00F", "currencyNamespace": "TGEKJhSL", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1987-06-10T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1978-05-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1988-03-21T00:00:00Z", "price": 36, "purchaseAt": "1977-05-25T00:00:00Z", "trialPrice": 62}], "Bbylk8Kk": [{"currencyCode": "xRTL4Zx3", "currencyNamespace": "y23hu4xG", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1985-05-08T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1996-09-29T00:00:00Z", "discountedPrice": 30, "expireAt": "1985-03-13T00:00:00Z", "price": 49, "purchaseAt": "1979-12-27T00:00:00Z", "trialPrice": 27}, {"currencyCode": "u7A4KpE5", "currencyNamespace": "hhAU9gIE", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1985-03-07T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1971-04-19T00:00:00Z", "discountedPrice": 49, "expireAt": "1993-02-16T00:00:00Z", "price": 4, "purchaseAt": "1980-04-08T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Po8xZ2ph", "currencyNamespace": "sXX4Wmfk", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1974-02-04T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1978-01-18T00:00:00Z", "discountedPrice": 86, "expireAt": "1998-01-03T00:00:00Z", "price": 12, "purchaseAt": "1979-06-05T00:00:00Z", "trialPrice": 24}], "0homltVz": [{"currencyCode": "R7SCS1RT", "currencyNamespace": "u1QHbjgw", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1983-08-19T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1989-04-07T00:00:00Z", "discountedPrice": 42, "expireAt": "1995-04-02T00:00:00Z", "price": 81, "purchaseAt": "1990-11-19T00:00:00Z", "trialPrice": 36}, {"currencyCode": "wLvIbDcR", "currencyNamespace": "gbw0L7mf", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1993-01-06T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1990-11-02T00:00:00Z", "discountedPrice": 85, "expireAt": "1990-04-09T00:00:00Z", "price": 3, "purchaseAt": "1982-07-09T00:00:00Z", "trialPrice": 10}, {"currencyCode": "v4B87PAR", "currencyNamespace": "nQVqwr1u", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1980-08-27T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1974-08-22T00:00:00Z", "discountedPrice": 77, "expireAt": "1983-08-28T00:00:00Z", "price": 20, "purchaseAt": "1990-05-17T00:00:00Z", "trialPrice": 16}]}}, {"itemIdentities": ["U1Z81sKD", "bmV4G66q", "QMcy4LWB"], "itemIdentityType": "ITEM_ID", "regionData": {"fATyLQW9": [{"currencyCode": "P9sd2sZf", "currencyNamespace": "0SDn2JKN", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1975-05-22T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1974-10-23T00:00:00Z", "discountedPrice": 2, "expireAt": "1993-02-24T00:00:00Z", "price": 15, "purchaseAt": "1972-12-06T00:00:00Z", "trialPrice": 28}, {"currencyCode": "Oo3VOm3Q", "currencyNamespace": "agOMfs06", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1971-04-21T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1996-05-01T00:00:00Z", "discountedPrice": 60, "expireAt": "1971-06-27T00:00:00Z", "price": 17, "purchaseAt": "1978-12-16T00:00:00Z", "trialPrice": 45}, {"currencyCode": "O6FlV7Dy", "currencyNamespace": "lZwSLWGY", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1985-08-24T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1980-12-11T00:00:00Z", "discountedPrice": 17, "expireAt": "1985-08-21T00:00:00Z", "price": 78, "purchaseAt": "1993-07-29T00:00:00Z", "trialPrice": 83}], "Q1o6rzWz": [{"currencyCode": "wyIJjFMY", "currencyNamespace": "kwN5Aboe", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1974-04-27T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1987-11-17T00:00:00Z", "discountedPrice": 61, "expireAt": "1999-08-26T00:00:00Z", "price": 8, "purchaseAt": "1978-02-07T00:00:00Z", "trialPrice": 38}, {"currencyCode": "UrbWig7G", "currencyNamespace": "zTCi4clW", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1990-12-22T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1975-06-03T00:00:00Z", "discountedPrice": 13, "expireAt": "1993-08-20T00:00:00Z", "price": 19, "purchaseAt": "1980-09-10T00:00:00Z", "trialPrice": 84}, {"currencyCode": "eAyPyMdJ", "currencyNamespace": "4nrBKo8M", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1973-12-11T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1986-07-23T00:00:00Z", "discountedPrice": 62, "expireAt": "1978-05-18T00:00:00Z", "price": 38, "purchaseAt": "1986-04-23T00:00:00Z", "trialPrice": 30}], "Anz7BV7a": [{"currencyCode": "ozyGOPz0", "currencyNamespace": "O8JwMmjM", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1980-03-22T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1978-04-20T00:00:00Z", "discountedPrice": 87, "expireAt": "1999-06-15T00:00:00Z", "price": 56, "purchaseAt": "1999-04-03T00:00:00Z", "trialPrice": 74}, {"currencyCode": "aLNRi9II", "currencyNamespace": "h0zisjz8", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1982-07-01T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1977-08-06T00:00:00Z", "discountedPrice": 93, "expireAt": "1977-12-31T00:00:00Z", "price": 33, "purchaseAt": "1977-10-03T00:00:00Z", "trialPrice": 79}, {"currencyCode": "JUCapJHe", "currencyNamespace": "UIgaaL5G", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1988-04-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1972-04-18T00:00:00Z", "discountedPrice": 5, "expireAt": "1988-01-13T00:00:00Z", "price": 24, "purchaseAt": "1978-05-19T00:00:00Z", "trialPrice": 86}]}}, {"itemIdentities": ["x72HXWQ7", "9vdm9dG6", "xtRyQ5PV"], "itemIdentityType": "ITEM_ID", "regionData": {"KNSFyBTg": [{"currencyCode": "xJQReKS9", "currencyNamespace": "qkzYz31p", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1976-02-08T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1979-03-31T00:00:00Z", "discountedPrice": 4, "expireAt": "1986-10-16T00:00:00Z", "price": 82, "purchaseAt": "1991-07-11T00:00:00Z", "trialPrice": 76}, {"currencyCode": "iiKnybq3", "currencyNamespace": "lYgXTE4Z", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1981-12-22T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1981-03-04T00:00:00Z", "discountedPrice": 67, "expireAt": "1977-10-26T00:00:00Z", "price": 83, "purchaseAt": "1974-07-18T00:00:00Z", "trialPrice": 89}, {"currencyCode": "59hYLvxg", "currencyNamespace": "wACYCYKe", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1974-07-12T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1985-07-02T00:00:00Z", "discountedPrice": 74, "expireAt": "1976-04-23T00:00:00Z", "price": 99, "purchaseAt": "1985-10-24T00:00:00Z", "trialPrice": 22}], "72k4Ej7o": [{"currencyCode": "NES8jb4M", "currencyNamespace": "olznfhs3", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1991-11-26T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1993-11-16T00:00:00Z", "discountedPrice": 24, "expireAt": "1974-06-29T00:00:00Z", "price": 58, "purchaseAt": "1980-01-14T00:00:00Z", "trialPrice": 18}, {"currencyCode": "fLqQuzIc", "currencyNamespace": "6N0XQ09R", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1991-03-30T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1984-01-03T00:00:00Z", "discountedPrice": 47, "expireAt": "1994-04-26T00:00:00Z", "price": 33, "purchaseAt": "1986-08-08T00:00:00Z", "trialPrice": 8}, {"currencyCode": "qTsLGPUA", "currencyNamespace": "WBwtPYvf", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1986-10-06T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1983-05-10T00:00:00Z", "discountedPrice": 0, "expireAt": "1982-10-29T00:00:00Z", "price": 84, "purchaseAt": "1986-08-13T00:00:00Z", "trialPrice": 57}], "xDc2Yxvn": [{"currencyCode": "dpu2oSXe", "currencyNamespace": "oInXs3zh", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1991-01-26T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1975-04-28T00:00:00Z", "discountedPrice": 26, "expireAt": "1988-07-24T00:00:00Z", "price": 95, "purchaseAt": "1973-03-09T00:00:00Z", "trialPrice": 50}, {"currencyCode": "VdsGC2Hm", "currencyNamespace": "oygUXnUP", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1982-03-22T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1972-11-15T00:00:00Z", "discountedPrice": 32, "expireAt": "1980-05-15T00:00:00Z", "price": 92, "purchaseAt": "1986-09-08T00:00:00Z", "trialPrice": 41}, {"currencyCode": "NmvmRNsY", "currencyNamespace": "e7iBmMjq", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1998-02-03T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1988-08-31T00:00:00Z", "discountedPrice": 54, "expireAt": "1994-04-08T00:00:00Z", "price": 87, "purchaseAt": "1977-04-30T00:00:00Z", "trialPrice": 78}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'BUNDLE' \
    --limit '99' \
    --offset '3' \
    --sortBy '5wtGEPrx' \
    --storeId 'sGc9h434' \
    --keyword 'MV29Aabn' \
    --language 'jd4fvC8B' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '86' \
    --offset '42' \
    --sortBy '["createdAt:desc", "displayOrder:asc", "name:desc"]' \
    --storeId '1Urxf4ts' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'NEdx0zw9' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'M0dtoURb' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'PRYBkXu4' \
    --namespace $AB_NAMESPACE \
    --storeId 'KO1NWN6t' \
    --body '{"appId": "HC27eKxR", "appType": "SOFTWARE", "baseAppId": "P6i3M4M8", "boothName": "WbFAu01I", "categoryPath": "jgWHtzFC", "clazz": "9mr1ZCIF", "displayOrder": 31, "entitlementType": "CONSUMABLE", "ext": {"bFkAd3H5": {}, "O2WQOGyt": {}, "gNANP3KT": {}}, "features": ["9lknC2si", "iJp2G3fA", "bBkCIuTX"], "flexible": false, "images": [{"as": "KZgDcjv3", "caption": "sP25PBrp", "height": 57, "imageUrl": "WZgX939M", "smallImageUrl": "BQb50oHZ", "width": 56}, {"as": "2c3f8pje", "caption": "EVihHw7L", "height": 34, "imageUrl": "JYZ2bhOz", "smallImageUrl": "5lBHYuF2", "width": 23}, {"as": "WoYuXZDu", "caption": "8Pm0j3Xs", "height": 40, "imageUrl": "XxAQFKjL", "smallImageUrl": "nDGDeUko", "width": 86}], "inventoryConfig": {"customAttributes": {"AQ0C4voD": {}, "XAN4U9f9": {}, "fKhEq0Ix": {}}, "serverCustomAttributes": {"xbk1Uy1u": {}, "SNRQemzY": {}, "gd28zw2Y": {}}, "slotUsed": 6}, "itemIds": ["LzcPgef3", "Cf1WBTvb", "itdalaEt"], "itemQty": {"VIYX9g8C": 90, "fqfM3WEF": 60, "anY5Hx72": 89}, "itemType": "MEDIA", "listable": true, "localizations": {"bgKe5Jua": {"description": "4m8KwMBE", "localExt": {"NJx9uxmH": {}, "nGbyaz1d": {}, "wR5zIdH2": {}}, "longDescription": "LcnsOdlj", "title": "rYsV716I"}, "EV6dmNMh": {"description": "2F8nQ98F", "localExt": {"W2T3QpXM": {}, "ma0JApbR": {}, "tXf1REwt": {}}, "longDescription": "RkxIvYR7", "title": "IkCPuFvA"}, "wOmOl7b7": {"description": "TayhuJTf", "localExt": {"9cBL3G02": {}, "CpspBbMa": {}, "6WdUhRCY": {}}, "longDescription": "yBSdD1i5", "title": "EdyC6LUl"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 93, "duration": 21, "endDate": "1989-11-05T00:00:00Z", "itemId": "6R0eHxi7", "itemSku": "ppspcsLJ", "itemType": "RUmdp7mC"}, {"count": 87, "duration": 48, "endDate": "1971-09-08T00:00:00Z", "itemId": "LmUfOtPx", "itemSku": "PDx5k8aY", "itemType": "SrtCrNXX"}, {"count": 34, "duration": 77, "endDate": "1974-05-29T00:00:00Z", "itemId": "svsCkhAy", "itemSku": "InCeL9wd", "itemType": "1xj9fEwq"}], "name": "LzCiaGYa", "odds": 0.2364888663058009, "type": "PROBABILITY_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 88, "duration": 45, "endDate": "1979-07-19T00:00:00Z", "itemId": "zka6visC", "itemSku": "6X8qkr4i", "itemType": "C7P4FARb"}, {"count": 90, "duration": 2, "endDate": "1992-05-28T00:00:00Z", "itemId": "p8k7tWuG", "itemSku": "ekDEpvNf", "itemType": "cD2hrpKD"}, {"count": 95, "duration": 29, "endDate": "1978-06-30T00:00:00Z", "itemId": "bXIfzIyY", "itemSku": "l7v0iTQG", "itemType": "iegIFEOy"}], "name": "S0kJzkys", "odds": 0.4408836348679501, "type": "PROBABILITY_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 15, "duration": 70, "endDate": "1992-10-03T00:00:00Z", "itemId": "K3yF9FWq", "itemSku": "hj2X266M", "itemType": "cTLuItSw"}, {"count": 6, "duration": 96, "endDate": "1990-08-14T00:00:00Z", "itemId": "FYDMQCyt", "itemSku": "fGN3x41l", "itemType": "pDuVWIii"}, {"count": 52, "duration": 9, "endDate": "1995-02-11T00:00:00Z", "itemId": "RftXpf0U", "itemSku": "NIrW0xGf", "itemType": "ivHUsdYB"}], "name": "awGqaRAP", "odds": 0.988801956395321, "type": "REWARD_GROUP", "weight": 80}], "rollFunction": "CUSTOM"}, "maxCount": 87, "maxCountPerUser": 88, "name": "ErhkQQ9O", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 69, "endDate": "1972-07-23T00:00:00Z", "itemId": "uJAHAAx8", "itemSku": "fRJYKcwe", "itemType": "HICAVu6h"}, {"count": 58, "duration": 18, "endDate": "1988-11-07T00:00:00Z", "itemId": "dIeUjAEs", "itemSku": "0eBI0SAy", "itemType": "oAsdpvNJ"}, {"count": 53, "duration": 33, "endDate": "1975-01-06T00:00:00Z", "itemId": "wiT2Q3rz", "itemSku": "cDDN4sOr", "itemType": "meLGNmkf"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 37, "fixedTrialCycles": 17, "graceDays": 91}, "regionData": {"kq0sdwAH": [{"currencyCode": "9Oyxdp5E", "currencyNamespace": "5QlFxQzV", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1992-05-07T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1981-10-27T00:00:00Z", "expireAt": "1988-10-31T00:00:00Z", "price": 49, "purchaseAt": "1997-02-01T00:00:00Z", "trialPrice": 19}, {"currencyCode": "vFX7fAWQ", "currencyNamespace": "9rNqwkxd", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1989-12-19T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1977-10-20T00:00:00Z", "expireAt": "1993-02-04T00:00:00Z", "price": 41, "purchaseAt": "1993-09-13T00:00:00Z", "trialPrice": 91}, {"currencyCode": "B1aGUVoI", "currencyNamespace": "az9uEkhg", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1980-09-06T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1976-01-17T00:00:00Z", "expireAt": "1988-04-24T00:00:00Z", "price": 70, "purchaseAt": "1975-04-23T00:00:00Z", "trialPrice": 84}], "e784CXGm": [{"currencyCode": "Ka3rIvpF", "currencyNamespace": "JI1hqjLl", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1976-02-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1981-05-23T00:00:00Z", "expireAt": "1981-07-05T00:00:00Z", "price": 67, "purchaseAt": "1977-02-24T00:00:00Z", "trialPrice": 11}, {"currencyCode": "4NimeBCT", "currencyNamespace": "TVIsaRbx", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1988-08-22T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1999-09-08T00:00:00Z", "expireAt": "1979-10-13T00:00:00Z", "price": 9, "purchaseAt": "1973-10-05T00:00:00Z", "trialPrice": 12}, {"currencyCode": "ftpB6vNe", "currencyNamespace": "S7oMqRIR", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1974-01-25T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1994-08-27T00:00:00Z", "expireAt": "1978-01-08T00:00:00Z", "price": 92, "purchaseAt": "1988-01-10T00:00:00Z", "trialPrice": 13}], "WBIyZe4w": [{"currencyCode": "IzjJN0DG", "currencyNamespace": "lV4tNF6u", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1991-06-08T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1985-07-03T00:00:00Z", "expireAt": "1984-01-27T00:00:00Z", "price": 81, "purchaseAt": "1992-01-10T00:00:00Z", "trialPrice": 85}, {"currencyCode": "vengjs6r", "currencyNamespace": "sRne8rI5", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1991-09-03T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1989-11-21T00:00:00Z", "expireAt": "1993-06-15T00:00:00Z", "price": 39, "purchaseAt": "1990-03-10T00:00:00Z", "trialPrice": 51}, {"currencyCode": "AJLkr6wT", "currencyNamespace": "NhK0Zs2B", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1974-02-02T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1977-02-05T00:00:00Z", "expireAt": "1971-04-12T00:00:00Z", "price": 31, "purchaseAt": "1981-03-25T00:00:00Z", "trialPrice": 38}]}, "saleConfig": {"currencyCode": "zKbz8Dtz", "price": 22}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "EeoF35YA", "stackable": false, "status": "INACTIVE", "tags": ["kGgOllkQ", "Lh0uvaGx", "54fV7FrS"], "targetCurrencyCode": "4Qz5x3Iz", "targetNamespace": "aDANCyEN", "thumbnailUrl": "8rXnDkiw", "useCount": 95}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'jEU2MSXa' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["IAP", "IAP", "CAMPAIGN"]' \
    --force 'false' \
    --storeId 'J3itI38R' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'juLuGwv9' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 24, "orderNo": "Dr1EacRr"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'QccBtBEZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'W09VxAXG' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'es79vbBv' \
    --namespace $AB_NAMESPACE \
    --storeId 'TXJRzqNN' \
    --body '{"carousel": [{"alt": "qmqN8bFO", "previewUrl": "jMvvRRBY", "thumbnailUrl": "waMj9n8J", "type": "video", "url": "xAdsU300", "videoSource": "vimeo"}, {"alt": "oGp7fg9x", "previewUrl": "tX1G56Lj", "thumbnailUrl": "ORHjN89n", "type": "image", "url": "rCuVeeBR", "videoSource": "youtube"}, {"alt": "Ohl5qclI", "previewUrl": "FZhqL20i", "thumbnailUrl": "0l3BYsda", "type": "image", "url": "cLYL5i9q", "videoSource": "youtube"}], "developer": "J2pi77c5", "forumUrl": "c0rUzIHS", "genres": ["Strategy", "Adventure", "Casual"], "localizations": {"R4Q3d41D": {"announcement": "P0c9EECc", "slogan": "QIpq5yBO"}, "mcCC1gcU": {"announcement": "Wgy7Pf6E", "slogan": "iHqJ3kPg"}, "T3Cek76z": {"announcement": "UYebAVbd", "slogan": "bX2u9KK8"}}, "platformRequirements": {"7ziw9Gcn": [{"additionals": "9z22Qjz2", "directXVersion": "rF5x1D6F", "diskSpace": "SWXf5KJq", "graphics": "Wcppms7c", "label": "bNCeDZJ7", "osVersion": "D3zwFmRG", "processor": "D53XqPOh", "ram": "gHIoSs1G", "soundCard": "OeAOx49B"}, {"additionals": "94sqPfAg", "directXVersion": "qbkU7uwN", "diskSpace": "gA1KW7c6", "graphics": "qXCCOwFq", "label": "tTnXXWYm", "osVersion": "gkM2gKa2", "processor": "SIbXTsb0", "ram": "8Ugp8llG", "soundCard": "ejpv5sCU"}, {"additionals": "P408igiK", "directXVersion": "7RW7ydPM", "diskSpace": "jbKKoAwz", "graphics": "0ahSlGyq", "label": "LKADsmmj", "osVersion": "Sg9s0Xno", "processor": "ZaxtXddT", "ram": "QN4i9qIi", "soundCard": "D0bPrEyY"}], "G2uYjpco": [{"additionals": "eOXzIACi", "directXVersion": "4sHGenVB", "diskSpace": "4mjFtzyG", "graphics": "lMN2rIia", "label": "lVClG5IZ", "osVersion": "sBs13uX3", "processor": "rTKj8xSE", "ram": "ziLz6VlS", "soundCard": "bdpcV7ng"}, {"additionals": "F3VFvYHo", "directXVersion": "G0UntE4n", "diskSpace": "uLr5iXvg", "graphics": "4WSVAglc", "label": "sCQlzowk", "osVersion": "fhDk7Dnm", "processor": "viLQVyJv", "ram": "RdRzrHGH", "soundCard": "RUTKhGnM"}, {"additionals": "YH33G7xM", "directXVersion": "4nv4oYro", "diskSpace": "hoA6XaR4", "graphics": "n1LEQWU8", "label": "ZlVKX1Mo", "osVersion": "CdOcT4V2", "processor": "rz4iXCKd", "ram": "syol01VR", "soundCard": "jDmVAbPY"}], "MoTAq5u8": [{"additionals": "lq5tTxVr", "directXVersion": "bs7uKiUQ", "diskSpace": "QsVllFgx", "graphics": "htjilODs", "label": "BD0gQjgD", "osVersion": "g5UAeXzr", "processor": "txA2pcnr", "ram": "Zt6JwHft", "soundCard": "hZXFemeE"}, {"additionals": "01auYDIw", "directXVersion": "Nx2COqk7", "diskSpace": "qOWDj3p4", "graphics": "8VXUmU8l", "label": "ZeN4t9EQ", "osVersion": "aW9q5JaX", "processor": "RGRAcmFc", "ram": "5K4SmfcA", "soundCard": "G5dQRwI6"}, {"additionals": "4Jk7DkKP", "directXVersion": "1xaogIo2", "diskSpace": "tG3Nklbo", "graphics": "ED0fWCHj", "label": "5UWt7PuA", "osVersion": "PXwTXWWx", "processor": "ZH605BHx", "ram": "oGOguOpQ", "soundCard": "73Yb0tdU"}]}, "platforms": ["IOS", "MacOS", "Linux"], "players": ["LocalCoop", "Multi", "CrossPlatformMulti"], "primaryGenre": "Indie", "publisher": "zXk60XLe", "releaseDate": "1973-12-19T00:00:00Z", "websiteUrl": "8INbcJD8"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '55g5Eb60' \
    --namespace $AB_NAMESPACE \
    --storeId 'Sbnfx7rf' \
    --body '{"featuresToCheck": ["IAP", "CATALOG"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'njQk5X2Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'tLmhYyPb' \
    --namespace $AB_NAMESPACE \
    --storeId 'hL3DIr5r' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'U8X3KYe1' \
    --itemId 'oHTVVTrC' \
    --namespace $AB_NAMESPACE \
    --storeId 'OIQcnRo2' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'IHNPNGr9' \
    --itemId 'ROceDOzY' \
    --namespace $AB_NAMESPACE \
    --storeId 'UUCeaBxP' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'K3KtYf5R' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'gm5yHDlz' \
    --populateBundle 'true' \
    --region 'DpgZmBQ3' \
    --storeId 'IgEOxtUk' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'G7g5SN2H' \
    --namespace $AB_NAMESPACE \
    --storeId 'JTEiRt0p' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 82, "code": "amRdcLcF", "comparison": "isLessThanOrEqual", "name": "kEC0NwkV", "predicateType": "SeasonTierPredicate", "value": "QAHDeNCW", "values": ["lGtOOeO6", "T1xMwkXE", "fAi6cAbN"]}, {"anyOf": 93, "code": "qWvvXZ41", "comparison": "isGreaterThanOrEqual", "name": "laYX7B97", "predicateType": "EntitlementPredicate", "value": "IH3apZt9", "values": ["DX0p76bD", "NXK4e7Dd", "1gw6H80k"]}, {"anyOf": 2, "code": "SCEwIAcq", "comparison": "isGreaterThan", "name": "sr8wtbEF", "predicateType": "StatisticCodePredicate", "value": "7uAXbLO8", "values": ["6EktqgUl", "jNYGG0QY", "9Mer4whp"]}]}, {"operator": "and", "predicates": [{"anyOf": 80, "code": "Unbxva4x", "comparison": "includes", "name": "pJF5T7xt", "predicateType": "EntitlementPredicate", "value": "Qxfazfcp", "values": ["U0P4QTZZ", "CEyNGmj2", "wby3oqhO"]}, {"anyOf": 20, "code": "kU4MUhJn", "comparison": "isGreaterThanOrEqual", "name": "2AZRa61J", "predicateType": "EntitlementPredicate", "value": "Ffgd9KQS", "values": ["P2ZqeeYR", "eWWVBpCz", "JkTV64PU"]}, {"anyOf": 1, "code": "YZiDCjDW", "comparison": "includes", "name": "HsxOZdbQ", "predicateType": "StatisticCodePredicate", "value": "rKy6koHJ", "values": ["QhUG79Lo", "3eQp2tH6", "NmociGZq"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "code": "5C7wgKoj", "comparison": "isGreaterThan", "name": "8YFBi5za", "predicateType": "SeasonPassPredicate", "value": "M25VLApl", "values": ["YPP6KNCG", "5CGN5gFZ", "WVu347j7"]}, {"anyOf": 66, "code": "4ddf0b08", "comparison": "isGreaterThanOrEqual", "name": "8bDubsD2", "predicateType": "SeasonPassPredicate", "value": "BzoDeYBV", "values": ["VyHnOF9d", "41uKJGiz", "FmrvLkW6"]}, {"anyOf": 84, "code": "4pNUgz6P", "comparison": "isLessThanOrEqual", "name": "hY6nUmcB", "predicateType": "EntitlementPredicate", "value": "6oKlwDXY", "values": ["Q244XgxU", "K00qrHWH", "j7IaFuYL"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'KuUrtEjK' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "ENTITLEMENT", "CAMPAIGN"]' \
    --storeId 'x4rvoUyy' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'Iv19LbaG' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "orvpjnNB"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'J9KFUAly' \
    --offset '40' \
    --tag 'GLzSoZC8' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Q8kVBQ3S", "name": "Ji5yZugg", "status": "INACTIVE", "tags": ["SSXmhbJH", "m9Fm0dE7", "6ngxbdxA"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'GLjA8z2X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'WRIILix4' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "tRJhhBOr", "name": "2HvTbvOB", "status": "ACTIVE", "tags": ["y7pr9tlX", "QrwB92qe", "LAbRiKVW"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'vHduKOz3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'XLaqwMT0' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '18' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '1xiESkyx' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '9RvliTl3' \
    --limit '43' \
    --offset '36' \
    --orderNos '["bRVnYuIL", "K5KYUA7g", "WGPY6a2k"]' \
    --sortBy 'AONBjBOQ' \
    --startTime 'sQ6r8ZeH' \
    --status 'REFUNDED' \
    --withTotal 'true' \
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
    --orderNo 'Z947QZLZ' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'p7EBR8oc' \
    --body '{"description": "wrT6SU51"}' \
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
    --body '{"domains": ["b2VcdTCY", "ewMXy4Pf", "iZIM5K8D"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'cylcT2eT' \
    --externalId 'p54y5Nky' \
    --limit '90' \
    --notificationSource 'STRIPE' \
    --notificationType 'k0eMKTi9' \
    --offset '54' \
    --paymentOrderNo 'rXQCjDUa' \
    --startDate 'C2InGKCZ' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'YRLVet7J' \
    --limit '91' \
    --offset '9' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Bs8Pvuen", "currencyNamespace": "CSCT8Lk5", "customParameters": {"x4aDHSmQ": {}, "Po69QNKb": {}, "TvAsa8cK": {}}, "description": "SUaYgQMO", "extOrderNo": "dXrXa3yb", "extUserId": "GVzNwFy9", "itemType": "EXTENSION", "language": "NuaA", "metadata": {"iHCY5w4s": "KGSDuua7", "JaKMKfke": "rdB54Kq1", "uYhZ6d55": "KBmgcVoP"}, "notifyUrl": "w0NoqWYi", "omitNotification": false, "platform": "QEbYfr0M", "price": 7, "recurringPaymentOrderNo": "pacPQGet", "region": "gDsLhNe8", "returnUrl": "cxUih61r", "sandbox": true, "sku": "1P2ezJDC", "subscriptionId": "E5HZI7oF", "targetNamespace": "0UmrOAEH", "targetUserId": "xVHkx9Mf", "title": "jMi71Ldl"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '4GIkdw88' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vc9HB4ve' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xtzZKE8T' \
    --body '{"extTxId": "YOooBpjl", "paymentMethod": "aOnfIM71", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SLLeXPME' \
    --body '{"description": "MrbwFjrT"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MozaoJ1d' \
    --body '{"amount": 93, "currencyCode": "S2slFkMQ", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 76, "vat": 79}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FKz54YNt' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'UBBSmknG' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "IHpZMIHz", "serviceLabel": 93}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'Anj4XBCn' \
    --body '{"delegationToken": "H7YyUDYy", "sandboxId": "U6GmbGjq"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "Xbox", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Playstation", "System", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'WqS98O8F' \
    --limit '19' \
    --offset '95' \
    --source 'DLC' \
    --startTime 'usBFjCM6' \
    --status 'SUCCESS' \
    --transactionId 'aKlNwqv3' \
    --userId 'SAaFiFv1' \
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
    --body '{"appConfig": {"appName": "Jr12YsLa"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "IWf9JkNu"}, "extendType": "APP"}' \
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
    --body '{"description": "N6lVCDcy", "eventTopic": "2hhFd2aI", "maxAwarded": 45, "maxAwardedPerUser": 27, "namespaceExpression": "Klqs8xnY", "rewardCode": "vJsDEj74", "rewardConditions": [{"condition": "etPWg6YE", "conditionName": "ijnxDTMl", "eventName": "fnQQEWaY", "rewardItems": [{"duration": 8, "endDate": "1983-01-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "z7FVUvSb", "quantity": 10, "sku": "2qKwImkx"}, {"duration": 23, "endDate": "1975-04-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0YxWDKu1", "quantity": 78, "sku": "jBGaspXp"}, {"duration": 16, "endDate": "1971-07-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "u4ioVh3L", "quantity": 92, "sku": "qSll991V"}]}, {"condition": "16L6AO4i", "conditionName": "b7ctRLVf", "eventName": "6cQn9lXv", "rewardItems": [{"duration": 68, "endDate": "1990-10-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Dj3TFxzT", "quantity": 44, "sku": "9o49qptz"}, {"duration": 11, "endDate": "1985-10-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QKRbFjsW", "quantity": 82, "sku": "ExtHunxs"}, {"duration": 40, "endDate": "1974-08-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JTqIsLEH", "quantity": 45, "sku": "FPJqv92S"}]}, {"condition": "4WcUEbCh", "conditionName": "AtFDCqxp", "eventName": "u7Ifrc8s", "rewardItems": [{"duration": 73, "endDate": "1977-03-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dTRs9bwZ", "quantity": 52, "sku": "CG5G3nsh"}, {"duration": 7, "endDate": "1997-11-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zGKV0bVP", "quantity": 37, "sku": "QigQIpkX"}, {"duration": 90, "endDate": "1978-01-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wNDkLyCC", "quantity": 27, "sku": "SpXU6Gmp"}]}], "userIdExpression": "cnGTH3LT"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'I2AySQrf' \
    --limit '82' \
    --offset '43' \
    --sortBy '["rewardCode", "rewardCode:desc", "namespace:asc"]' \
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
    --rewardId 'fWiyaSsC' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'nPbubera' \
    --body '{"description": "qs23Q0Mv", "eventTopic": "xpEP5lhy", "maxAwarded": 85, "maxAwardedPerUser": 12, "namespaceExpression": "hMITNoTK", "rewardCode": "s9kriuGM", "rewardConditions": [{"condition": "cAt9MEzb", "conditionName": "z1dNjJHR", "eventName": "lMDhrDYW", "rewardItems": [{"duration": 45, "endDate": "1985-11-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Nc05Vtdi", "quantity": 46, "sku": "ZURNGdTd"}, {"duration": 95, "endDate": "1993-09-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "raMbMZ1z", "quantity": 30, "sku": "B5kZI41q"}, {"duration": 79, "endDate": "1991-11-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XRkD20rS", "quantity": 60, "sku": "aotporFY"}]}, {"condition": "ieukdrd6", "conditionName": "ROPGW9EV", "eventName": "pqsuy7bX", "rewardItems": [{"duration": 89, "endDate": "1991-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6bcNcfNA", "quantity": 19, "sku": "1eZDBXGf"}, {"duration": 10, "endDate": "1996-10-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6PEiwaEA", "quantity": 22, "sku": "UmD2gMme"}, {"duration": 31, "endDate": "1992-05-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CqhfX0MH", "quantity": 98, "sku": "Ly7K9ORd"}]}, {"condition": "VHJKzqB0", "conditionName": "CQpASTDI", "eventName": "OXPz1cis", "rewardItems": [{"duration": 90, "endDate": "1998-06-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yhCGOSpT", "quantity": 5, "sku": "s8EWVyq1"}, {"duration": 85, "endDate": "1993-02-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kU4S79UO", "quantity": 79, "sku": "2RBWDBso"}, {"duration": 61, "endDate": "1996-06-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gehifYO9", "quantity": 97, "sku": "nYpE8FVJ"}]}], "userIdExpression": "0a2AAbsn"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '0SxO6AwV' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'Vljl2TYd' \
    --body '{"payload": {"j1uRijUN": {}, "0b7TBH13": {}, "cSv83CUj": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'iH5NlXAm' \
    --body '{"conditionName": "D8EoPyQM", "userId": "LPqIaCY0"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'QOObCKpE' \
    --limit '50' \
    --offset '51' \
    --start 'zLzlskzm' \
    --storeId 'HZ0tAWL6' \
    --viewId '5ANpmuZm' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'vg29DmPL' \
    --body '{"active": true, "displayOrder": 64, "endDate": "1973-02-19T00:00:00Z", "ext": {"NhNgb1eh": {}, "xfXtImjy": {}, "AND8DNCN": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 61, "itemCount": 93, "rule": "SEQUENCE"}, "items": [{"id": "Pn9djyrG", "sku": "Le0eiqmb"}, {"id": "xzn01NOp", "sku": "ko6YOLAG"}, {"id": "KZUUgGhE", "sku": "STvJJ1WN"}], "localizations": {"S5zzEyGe": {"description": "euiHrHbw", "localExt": {"TkbVkuJy": {}, "eFvcuAuG": {}, "pPKyhuiK": {}}, "longDescription": "41436pI8", "title": "4ptG2ovY"}, "hLiIRnGL": {"description": "SwXkfXsi", "localExt": {"AQkNEZRV": {}, "eyhxJXLH": {}, "YEy6zncV": {}}, "longDescription": "LbCHy4K2", "title": "EaTwztCy"}, "qRfoFA4B": {"description": "jGEnsyTT", "localExt": {"V30Nd7Zf": {}, "TZtKSW4X": {}, "HJg5n5oF": {}}, "longDescription": "13dDoNHE", "title": "mcFrknPC"}}, "name": "qpgFoPdc", "rotationType": "CUSTOM", "startDate": "1976-03-23T00:00:00Z", "viewId": "faixn6Y1"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'd7UDWnyv' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'YRKTEJPN' \
    --storeId 'ZWAuOP7Z' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xJDyohPT' \
    --storeId 'jfyQTDwx' \
    --body '{"active": true, "displayOrder": 30, "endDate": "1974-06-05T00:00:00Z", "ext": {"Hxmxfdmm": {}, "HlymCT2I": {}, "jf26m2hG": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 56, "itemCount": 10, "rule": "SEQUENCE"}, "items": [{"id": "AxkkKmks", "sku": "oa48ope9"}, {"id": "0Q2BtN72", "sku": "CvRAGa8c"}, {"id": "kg9KBzEc", "sku": "fPCwfiwX"}], "localizations": {"J99BuDce": {"description": "CyBOxNIu", "localExt": {"iiZdo6UG": {}, "2rTXpabt": {}, "9DUyIPI6": {}}, "longDescription": "w1tQ7s15", "title": "E6jbAarb"}, "JO3K8rMI": {"description": "gttAyFSr", "localExt": {"26wSPHzH": {}, "UyZ7RGXh": {}, "retTTDuA": {}}, "longDescription": "A9M6usOZ", "title": "jMNryFkJ"}, "hBxJdbWa": {"description": "yFNZVbjT", "localExt": {"MrjNNwhC": {}, "nkLZvhgk": {}, "JAKXGYrb": {}}, "longDescription": "Yoq6kHda", "title": "EPKcijz3"}}, "name": "t6xBATzf", "rotationType": "FIXED_PERIOD", "startDate": "1972-04-15T00:00:00Z", "viewId": "1iRAOr2B"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SWXtleDr' \
    --storeId 'U9SVDbNN' \
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
    --body '{"defaultLanguage": "NdfuqILq", "defaultRegion": "GTmAbj2I", "description": "A5AXNLoZ", "supportedLanguages": ["ufOYDCn7", "YfJSv00T", "ZbrVq0Hc"], "supportedRegions": ["ACjICNBq", "jpNGsoXE", "07Arwj5E"], "title": "GtwzaSAh"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
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
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["okNILmFL", "8ZCIYINQ", "syzbka3q"], "idsToBeExported": ["JJGU6kAb", "OcrYJmYg", "T0L3XiKP"], "storeId": "6gJWW7fl"}' \
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
    --storeId 'cmTV3noT' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'WVGNorMx' \
    --body '{"defaultLanguage": "IuO0idTc", "defaultRegion": "Fe1Fx2IK", "description": "dUWkmvWu", "supportedLanguages": ["gmQ1sI1o", "gHrkjO2c", "7LyeUHcp"], "supportedRegions": ["j4arQ0HW", "4SnEsJ8X", "LRYpINHE"], "title": "JJZsYuQW"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Od1mIRhK' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'sogJNoGz' \
    --action 'DELETE' \
    --itemSku 'U2InLIKv' \
    --itemType 'EXTENSION' \
    --limit '23' \
    --offset '8' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "updatedAt", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'jq6jrdjC' \
    --updatedAtStart 'vqjWsx70' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'eIHNq5GP' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'FegKFDdW' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'ClzVxoki' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'WqiuIvn2' \
    --action 'CREATE' \
    --itemSku 'GG1vFoKY' \
    --itemType 'EXTENSION' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'M4MKVLEV' \
    --updatedAtStart 'hAiz5WoF' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'q1hpdxJC' \
    --action 'UPDATE' \
    --itemSku 'CEq0V6V6' \
    --itemType 'APP' \
    --type 'VIEW' \
    --updatedAtEnd 'RLo2Vw4h' \
    --updatedAtStart '90ezyt11' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'mqQYXTFT' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'vY9JbXEY' \
    --namespace $AB_NAMESPACE \
    --storeId 'wqgkp4We' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'pcijn6BZ' \
    --namespace $AB_NAMESPACE \
    --storeId '9DXPuNgz' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'gwjDDJNU' \
    --targetStoreId 'YDEApxxp' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'sFCKsol2' \
    --end 'LJ9kJN4m' \
    --limit '14' \
    --offset '22' \
    --sortBy 'GNAa9SjX' \
    --start 'TLv6DOkn' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'EPA0ztY4' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '1LzPKS70' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'gzwiHAey' \
    --limit '45' \
    --offset '8' \
    --sku 'f1pr4Qn8' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'MQgOwHwq' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8WD09jkJ' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'I1RXXxQm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ilZRxiE3' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "of424pmp"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '5moe1W5o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'onhzehIy' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58, "orderNo": "RhrI8mlX"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 20, "currencyCode": "maPqh0CQ", "expireAt": "1993-02-09T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "HvJQ6QAk", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "bxSCCDHu", "entitlementOrigin": "Twitch", "itemIdentity": "8g3HnYPp", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 63, "entitlementId": "9HTeVoyF"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 35, "currencyCode": "PdC0ByRa", "expireAt": "1993-10-22T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "M0qpyEiU", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "Ba99KhAR", "entitlementOrigin": "Steam", "itemIdentity": "EJHMrlIP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "5ECoSbF7"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 41, "currencyCode": "Yju8GlcI", "expireAt": "1981-08-06T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "QzwzOQ4T", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "2g67Y0Kt", "entitlementOrigin": "Steam", "itemIdentity": "gsXPxcrw", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "PVyl3Y7A"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "2d7oyVtu"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 54, "currencyCode": "BopGaffN", "expireAt": "1971-06-11T00:00:00Z"}, "debitPayload": {"count": 73, "currencyCode": "aAFvvAu1", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "nLmo8ZxS", "entitlementOrigin": "Epic", "itemIdentity": "zGw4cXsH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "OV1L1QyI"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 74, "currencyCode": "NwPYxnJP", "expireAt": "1990-08-30T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "vk5EDXYc", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "GqAcULG5", "entitlementOrigin": "IOS", "itemIdentity": "MvN4wHFW", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "dH7S7NCR"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 23, "currencyCode": "GRojUIT8", "expireAt": "1973-12-22T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "W5TAuABr", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 0, "entitlementCollectionId": "RUR7TJ6R", "entitlementOrigin": "Twitch", "itemIdentity": "iig2Xom6", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "xaYvkKGP"}, "type": "FULFILL_ITEM"}], "userId": "we9x6grW"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 76, "currencyCode": "HRnttV4r", "expireAt": "1985-03-08T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "EmGlvoRm", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "AnNVkRjR", "entitlementOrigin": "Nintendo", "itemIdentity": "4GD9eGhy", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "jhdowUoF"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 47, "currencyCode": "RW3SK2N1", "expireAt": "1993-02-26T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "wz1u6XBW", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 8, "entitlementCollectionId": "YHuE9Poh", "entitlementOrigin": "Oculus", "itemIdentity": "KljGMt5m", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "SQMZ7wmS"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 13, "currencyCode": "MfD9MRwm", "expireAt": "1986-08-26T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "ydicjuks", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "JrrKvIKs", "entitlementOrigin": "Xbox", "itemIdentity": "o06OzvPt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "kOGK8w8s"}, "type": "FULFILL_ITEM"}], "userId": "m4MxyeOJ"}], "metadata": {"2yETtcBq": {}, "stDzCR8a": {}, "H63o7uCB": {}}, "needPreCheck": false, "transactionId": "VUGHSiV5", "type": "wn9OxvTl"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '80' \
    --status 'INIT' \
    --type 'Zi8R8E2E' \
    --userId 'BrobwLnn' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'rjJj01Xt' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '5REkTZI4' \
    --body '{"achievements": [{"id": "FG979UyV", "value": 73}, {"id": "ZmoCEIrX", "value": 13}, {"id": "9oHHt991", "value": 40}], "steamUserId": "QTzcPDKl"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'AqivqC4T' \
    --xboxUserId 'QwazifEI' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'dRrjTT2f' \
    --body '{"achievements": [{"id": "bi2jMeXl", "percentComplete": 8}, {"id": "gTDUuwp5", "percentComplete": 56}, {"id": "zsNQOKaT", "percentComplete": 76}], "serviceConfigId": "uv8iiExA", "titleId": "5kFzOy33", "xboxUserId": "fXUeU1xZ"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '3aGLaRoe' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'B6rlxCbN' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'VNjc6LPn' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Iz05DbAB' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ahGb1HaO' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'KWIA9CmF' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'aCzmW2w3' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3G8CHc45' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'IEVXjII9' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'BTHqEfuU' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KhfV2Dql' \
    --includeAllNamespaces 'false' \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '4TLHZjmn' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --collectionId 'TcfE29fe' \
    --entitlementClazz 'APP' \
    --entitlementName 'gVK6zeEu' \
    --features '["P2qyocGp", "8oQTO2Rv", "ImLZVzug"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["EN2hEaLT", "LUbVadwz", "PmFr5LVL"]' \
    --limit '91' \
    --offset '48' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aKHXevpJ' \
    --body '[{"collectionId": "SgYRcMVH", "endDate": "1980-08-30T00:00:00Z", "grantedCode": "GYFeXpIV", "itemId": "ddeVoXo9", "itemNamespace": "aIgQrXyI", "language": "pz_409", "metadata": {"d6iySfOw": {}, "LPh7MnYu": {}, "SDvSq0rd": {}}, "origin": "Xbox", "quantity": 18, "region": "5jAGi4do", "source": "PURCHASE", "startDate": "1999-01-28T00:00:00Z", "storeId": "x4DPcyFq"}, {"collectionId": "dEIwTWRk", "endDate": "1992-01-04T00:00:00Z", "grantedCode": "9DA1Q2ed", "itemId": "X5yKYosD", "itemNamespace": "lHoaKN4I", "language": "SkVJ", "metadata": {"zqjgmlDc": {}, "7O89rglT": {}, "orhqOPDT": {}}, "origin": "Twitch", "quantity": 15, "region": "XsVKnwYt", "source": "IAP", "startDate": "1997-11-15T00:00:00Z", "storeId": "0eHcADvc"}, {"collectionId": "f5sh1R3s", "endDate": "1991-10-07T00:00:00Z", "grantedCode": "JL79nGzv", "itemId": "kUOT1dyc", "itemNamespace": "PlL10BfH", "language": "ukSQ_sI", "metadata": {"lHIyDjld": {}, "dbeZZnm1": {}, "znLzEZhO": {}}, "origin": "Twitch", "quantity": 71, "region": "6KodfGdY", "source": "REFERRAL_BONUS", "startDate": "1979-07-05T00:00:00Z", "storeId": "LLMcdvag"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'kCvlYld0' \
    --activeOnly 'true' \
    --appId '0IEGrurT' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '9BTJ6GN8' \
    --activeOnly 'false' \
    --limit '41' \
    --offset '22' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'laMuSo9W' \
    --ids '["xmvGypEt", "0UXT5NRH", "PIVuMLvK"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'kY734c9y' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform 'QrnT6eST' \
    --itemId 'UbBi1QeB' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'EOy861wa' \
    --ids '["8qRs2Y2r", "uTDyCbQP", "edaZBlCN"]' \
    --platform 'oZhZSMB1' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '5vmu8p3H' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --platform 'Ng5edjW3' \
    --sku 'lEPJwliO' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'u9pV1UPx' \
    --appIds '["P28Ost0p", "oFJ5lugO", "OoUmrq65"]' \
    --itemIds '["qZ79o514", "yPZRFcPp", "Qk0BKU1T"]' \
    --platform 'vJJeBWwn' \
    --skus '["o36W1hZ6", "BafwQKsY", "IfGNJk39"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'D2SDjguQ' \
    --platform 'zkvo4ihe' \
    --itemIds '["OPpzDu74", "8GjIK1Kc", "MJ8LXWHr"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Nvg2QoUk' \
    --appId 'cVU1TAYd' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'xsEonNqo' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'xfkJgP4x' \
    --itemId 'lyqZxtgD' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'muIa1GEr' \
    --ids '["Rskvsxih", "JPJW6ogl", "8vco0DVU"]' \
    --platform 'R25mPbiJ' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '4oe53GZk' \
    --entitlementClazz 'CODE' \
    --platform 'nGad5B0q' \
    --sku 'IOv5Sk8O' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'w9haJQ11' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HgWicpKS' \
    --entitlementIds '8oX5t7yw' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'p7LhQnvb' \
    --namespace $AB_NAMESPACE \
    --userId 'M52Ivh4E' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '1Sk3WEPE' \
    --namespace $AB_NAMESPACE \
    --userId 'SatIfIbW' \
    --body '{"collectionId": "VcEFCcfc", "endDate": "1996-07-27T00:00:00Z", "nullFieldList": ["mDXvviQp", "1K35x0Od", "BvIXdCNP"], "origin": "Nintendo", "reason": "rhQU8bPx", "startDate": "1985-01-09T00:00:00Z", "status": "CONSUMED", "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'muj8JaCm' \
    --namespace $AB_NAMESPACE \
    --userId 'BYGk7ksQ' \
    --body '{"metadata": {"VbbkG115": {}, "cKFLWDYk": {}, "X1ggkWsK": {}}, "options": ["DRWRL6XB", "flgBTCTd", "KXG3nuPs"], "platform": "0Py9gHDa", "requestId": "UfhKvOfi", "useCount": 67}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'cs4s2CNj' \
    --namespace $AB_NAMESPACE \
    --userId 'vKIAwJPZ' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'lZnSy4BM' \
    --namespace $AB_NAMESPACE \
    --userId 'W7he41zw' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'UfdvBGl2' \
    --namespace $AB_NAMESPACE \
    --userId 'sUprPfKz' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'UhkX4our' \
    --namespace $AB_NAMESPACE \
    --userId '2yCjKE1E' \
    --body '{"metadata": {"AzU7GtS4": {}, "tJmDqXZF": {}, "mJznPyGq": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'hH5hPNfJ' \
    --namespace $AB_NAMESPACE \
    --userId 'WbLfpWN8' \
    --body '{"reason": "10b2Fsro", "useCount": 71}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId '5VhkwXwC' \
    --namespace $AB_NAMESPACE \
    --userId 'dUKjMuZn' \
    --quantity '58' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'jdsC6YWl' \
    --namespace $AB_NAMESPACE \
    --userId 'kPhCxBUJ' \
    --body '{"platform": "xhSLNgUn", "requestId": "gZvc3Yms", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'oF4qjtqp' \
    --body '{"duration": 91, "endDate": "1978-05-17T00:00:00Z", "entitlementCollectionId": "APjAgfB7", "entitlementOrigin": "GooglePlay", "itemId": "dzRvXxZh", "itemSku": "4SkBpkqq", "language": "jaK6wif4", "metadata": {"lYdoUJvU": {}, "sZXdr9gB": {}, "QBdpYVdg": {}}, "order": {"currency": {"currencyCode": "iKxKVSoI", "currencySymbol": "ZWXIXPev", "currencyType": "VIRTUAL", "decimals": 36, "namespace": "ZwrP9rvM"}, "ext": {"UAFrNUof": {}, "7O96PXBv": {}, "wTGlyMku": {}}, "free": true}, "orderNo": "XW7n0ASg", "origin": "Playstation", "overrideBundleItemQty": {"oqLBCmlC": 17, "lkEwzQQT": 44, "pOGXW0EM": 25}, "quantity": 7, "region": "9bRj0unZ", "source": "DLC", "startDate": "1996-11-21T00:00:00Z", "storeId": "i7lZalxF"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '9PKNUgNY' \
    --body '{"code": "JgRPvGkG", "language": "bTl_MDaL", "region": "sWhEzlt7"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'v08AN51T' \
    --body '{"itemId": "6b35ft4Y", "itemSku": "5oYknEJ9", "quantity": 59}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'EpgohzXK' \
    --body '{"entitlementCollectionId": "X4mGxfDJ", "entitlementOrigin": "Steam", "metadata": {"0NCplDr8": {}, "KVU1sXe1": {}, "1mLZpSF6": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "zbwEwfly", "namespace": "MycqD4JD"}, "item": {"itemId": "heM53s9z", "itemName": "2dakla0R", "itemSku": "k5lcxR1l", "itemType": "rHSSr8Qp"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "dttK43A6", "namespace": "ZYPXfQDr"}, "item": {"itemId": "ZiDOTHvA", "itemName": "hPR0iidb", "itemSku": "tySMEz4y", "itemType": "PMYNuQHN"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "b2uM9tfq", "namespace": "wbK5Ce3G"}, "item": {"itemId": "GARHe5j3", "itemName": "1nKasjaS", "itemSku": "TK0yhFhy", "itemType": "cjR1yR3J"}, "quantity": 37, "type": "ITEM"}], "source": "REWARD", "transactionId": "AYpnIh1E"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wkbOFutV' \
    --endTime 'jL2dhYvQ' \
    --limit '75' \
    --offset '64' \
    --productId 'xWrjjntz' \
    --startTime 'KjmQBHMk' \
    --status 'FAILED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'dLS6sWuv' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'gsbGfSez' \
    --endTime 'TKkqfjam' \
    --limit '75' \
    --offset '35' \
    --startTime 'dobwEGjz' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'nU6ATUl2' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "KSF", "productId": "mv9SEqj7", "region": "d0qztP7U", "transactionId": "IPRzpECy", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo '1TADQHRB' \
    --namespace $AB_NAMESPACE \
    --userId 'Blw9i9QM' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId '3HgaSv1l' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'fy8ysFGJ' \
    --body '{"orderId": "3t7JOoCi"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 't82GxJXy' \
    --activeOnly 'false' \
    --groupId 'jvBQKIqL' \
    --limit '26' \
    --offset '27' \
    --platform 'XBOX' \
    --productId 'D7cfZgWm' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId 'HtMxU82w' \
    --groupId 'jyAcr21i' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'HX1nlvPE' \
    --productId 'mkubohil' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'C6DPS1r7' \
    --activeOnly 'false' \
    --groupId 'rYfwGcED' \
    --limit '98' \
    --offset '72' \
    --platform 'XBOX' \
    --productId 'SEkS23kt' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'iPIymfMl' \
    --namespace $AB_NAMESPACE \
    --userId 'ADqOub5e' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'tHhoh0qe' \
    --namespace $AB_NAMESPACE \
    --userId 'FiZmTPJu' \
    --limit '17' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id '3hYGT6kZ' \
    --namespace $AB_NAMESPACE \
    --userId '21heA5JA' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'Wnf6GCTz' \
    --namespace $AB_NAMESPACE \
    --userId 'eMXG58uv' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'BKrIQGZ3' \
    --namespace $AB_NAMESPACE \
    --userId 'iCRHHJqY' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'XNcQD6tE' \
    --discounted 'true' \
    --itemId 'XcAUrVxC' \
    --limit '62' \
    --offset '52' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vbvNon2w' \
    --body '{"currencyCode": "7yelOUe6", "currencyNamespace": "9466pMCV", "discountCodes": ["xGUHwCwX", "Z7dMnBAS", "k5FUPU9S"], "discountedPrice": 50, "entitlementPlatform": "Epic", "ext": {"NKPJ5abR": {}, "S6Fq6eIO": {}, "u851uwZ1": {}}, "itemId": "nrkWR9Dj", "language": "04f32bzM", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 53, "quantity": 21, "region": "pgOGHHwE", "returnUrl": "WblWo9Xo", "sandbox": true, "sectionId": "S7SESRlO"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'tNWwhOSb' \
    --itemId 'JPhyBgH2' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CJpI4nIQ' \
    --userId 'YO1X7uuy' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'IZYtIatc' \
    --userId 'FJOcnM9z' \
    --body '{"status": "CLOSED", "statusReason": "OTNSPbYu"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'OzyqWnaS' \
    --userId 'gHJp632f' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '9EpYSYe7' \
    --userId 'k5VmkO7S' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'hkz72s4Z' \
    --userId 'rDTIVbhs' \
    --body '{"additionalData": {"cardSummary": "Jy4DgnhA"}, "authorisedTime": "1988-05-05T00:00:00Z", "chargebackReversedTime": "1975-10-18T00:00:00Z", "chargebackTime": "1984-02-10T00:00:00Z", "chargedTime": "1987-06-07T00:00:00Z", "createdTime": "1980-05-03T00:00:00Z", "currency": {"currencyCode": "blF1GIKM", "currencySymbol": "5GLc7Asj", "currencyType": "REAL", "decimals": 23, "namespace": "5bMwl9Iq"}, "customParameters": {"NNdzVSkd": {}, "AQYSDLS3": {}, "coTBXmz0": {}}, "extOrderNo": "gjZWOQBf", "extTxId": "JNjBJDlb", "extUserId": "dnu0Qbf3", "issuedAt": "1999-01-22T00:00:00Z", "metadata": {"8DnAZtx8": "JmZZCqXy", "bFI3F6rs": "xzsVKS6T", "7v8tJM19": "3dwCviNo"}, "namespace": "5GqUYkbq", "nonceStr": "mtACVicu", "paymentData": {"discountAmount": 6, "discountCode": "JlrlxUCS", "subtotalPrice": 39, "tax": 72, "totalPrice": 46}, "paymentMethod": "m4Cyd9Pe", "paymentMethodFee": 100, "paymentOrderNo": "jtT8RPPx", "paymentProvider": "STRIPE", "paymentProviderFee": 30, "paymentStationUrl": "C3MwvuiK", "price": 100, "refundedTime": "1989-06-21T00:00:00Z", "salesTax": 42, "sandbox": false, "sku": "KIsnJBlq", "status": "AUTHORISED", "statusReason": "1CKc22C1", "subscriptionId": "QRkpFCk5", "subtotalPrice": 74, "targetNamespace": "y7F7VNj7", "targetUserId": "rIHBxrs3", "tax": 91, "totalPrice": 39, "totalTax": 61, "txEndTime": "1995-09-13T00:00:00Z", "type": "mzZgyJsJ", "userId": "LehJxKMn", "vat": 25}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'OugDrlgn' \
    --userId 'fAKHpWFH' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'SliJtYiU' \
    --body '{"currencyCode": "mFWrGS7P", "currencyNamespace": "jAPOTF1e", "customParameters": {"iM9f0Jgq": {}, "aXPVQE6K": {}, "AdctuukK": {}}, "description": "b5FTh897", "extOrderNo": "xIQMmAOO", "extUserId": "FoQS1ifm", "itemType": "INGAMEITEM", "language": "iN_utdt_918", "metadata": {"uiWsqyK7": "9UtZIY20", "umsM6qkR": "emSnZgji", "Qdom9BvC": "iqZYkODT"}, "notifyUrl": "yeLAcMJ7", "omitNotification": true, "platform": "Cu7BairD", "price": 73, "recurringPaymentOrderNo": "3tu3gF42", "region": "JcQfttCa", "returnUrl": "3848j5cH", "sandbox": true, "sku": "FtTleA9i", "subscriptionId": "E4ZGx0Bu", "title": "E6W8decu"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jjsbzpmm' \
    --userId 'FaAdAmKx' \
    --body '{"description": "aPT20ELJ"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'oME0ON8a' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'fP7pjRMR' \
    --body '{"code": "mS8B4eUB", "orderNo": "aEUTsEsd"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'nvAQBStZ' \
    --body '{"meta": {"KCfPhM6h": {}, "erCP01zx": {}, "NBU1iZxO": {}}, "reason": "23QGCCFX", "requestId": "UDjip6wd", "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "gZCRZ6xY", "namespace": "F1laHevL"}, "entitlement": {"entitlementId": "SZMnnADT"}, "item": {"entitlementOrigin": "System", "itemIdentity": "sSIBDLsM", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 54, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "XXtPTs5s", "namespace": "vhein2eA"}, "entitlement": {"entitlementId": "GnPgSgHB"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "uH2FsLnR", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "wJRRbuTC", "namespace": "ZKKbLyoW"}, "entitlement": {"entitlementId": "AbUedMJG"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "ABmZVQp5", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 72, "type": "CURRENCY"}], "source": "DLC", "transactionId": "ZXHrRT9Y"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'Q9FcakJ4' \
    --body '{"gameSessionId": "cHUuADWb", "payload": {"Qiw1eb7t": {}, "EvDkKKjM": {}, "fzMHsJvb": {}}, "scid": "RFqeR0LE", "sessionTemplateName": "1fl7C4bj"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Sv1bEvhd' \
    --chargeStatus 'SETUP' \
    --itemId '0RsU1XkD' \
    --limit '38' \
    --offset '79' \
    --sku 'tiltA9Cu' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'tPb4yz87' \
    --excludeSystem 'true' \
    --limit '68' \
    --offset '21' \
    --subscriptionId 'MgzEoVYA' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'lntFRCGN' \
    --body '{"grantDays": 92, "itemId": "kzYyyYG3", "language": "OcUib5HP", "reason": "XnqcT315", "region": "RnS3fwiU", "source": "P9yI5GBe"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'qf1XXYbx' \
    --itemId 'tN6n4ZtF' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ASmFkSei' \
    --userId 'jLvhCX9Y' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KBKmoGZl' \
    --userId 'K3qL34Lf' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6qWURHJQ' \
    --userId 'OYQrx6Kj' \
    --force 'false' \
    --body '{"immediate": true, "reason": "t7s3e7Bg"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QnF75nWz' \
    --userId 'hfMGwcZ3' \
    --body '{"grantDays": 38, "reason": "suyvV6hw"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xhCw8JlQ' \
    --userId 'x99zVZKo' \
    --excludeFree 'true' \
    --limit '74' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HLVBEr0y' \
    --userId 'ijZzJL5U' \
    --body '{"additionalData": {"cardSummary": "wXfnbW2m"}, "authorisedTime": "1995-10-03T00:00:00Z", "chargebackReversedTime": "1981-03-10T00:00:00Z", "chargebackTime": "1985-11-05T00:00:00Z", "chargedTime": "1992-12-26T00:00:00Z", "createdTime": "1993-06-22T00:00:00Z", "currency": {"currencyCode": "pbxUkmDH", "currencySymbol": "HuMEO2PT", "currencyType": "VIRTUAL", "decimals": 6, "namespace": "aQBs0w3R"}, "customParameters": {"iEoKfAA9": {}, "CFqCAcjD": {}, "d1oYUzL9": {}}, "extOrderNo": "jWCr4SBc", "extTxId": "3Hseutzc", "extUserId": "DTpCi0un", "issuedAt": "1984-06-29T00:00:00Z", "metadata": {"nA0rBs1d": "yz6yFPp9", "uKrLUHgI": "JN2cJK4k", "XZw2N0hc": "ASHsqjWd"}, "namespace": "3DFkHhLB", "nonceStr": "gB8B9hRo", "paymentData": {"discountAmount": 77, "discountCode": "DjJ9Efur", "subtotalPrice": 41, "tax": 7, "totalPrice": 83}, "paymentMethod": "cpP1l2ga", "paymentMethodFee": 96, "paymentOrderNo": "xsZXrmXb", "paymentProvider": "CHECKOUT", "paymentProviderFee": 85, "paymentStationUrl": "HDkwP9r8", "price": 9, "refundedTime": "1983-07-11T00:00:00Z", "salesTax": 77, "sandbox": true, "sku": "7EcMXs21", "status": "REFUNDING", "statusReason": "LISltC9O", "subscriptionId": "fDaut2Lc", "subtotalPrice": 4, "targetNamespace": "HRjJff3r", "targetUserId": "AT7VfumT", "tax": 20, "totalPrice": 22, "totalTax": 14, "txEndTime": "1992-07-19T00:00:00Z", "type": "81lEW9Zt", "userId": "XZ23xbyM", "vat": 24}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Ij57NuYB' \
    --namespace $AB_NAMESPACE \
    --userId 'vUHOo55T' \
    --body '{"count": 23, "orderNo": "4qtbLdFm"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Xec82vpB' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'TJ9TDWOE' \
    --namespace $AB_NAMESPACE \
    --userId 'Wxl9D5Co' \
    --body '{"allowOverdraft": false, "amount": 33, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"vHiJiYgo": {}, "QkU6qkD1": {}, "sViIN0H9": {}}, "reason": "FxBa4JCS"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'ezt9PYqt' \
    --namespace $AB_NAMESPACE \
    --userId 'SzVqUeXT' \
    --limit '42' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'kI9b1OOf' \
    --namespace $AB_NAMESPACE \
    --userId 'rkZGrBLW' \
    --request '{"amount": 22, "debitBalanceSource": "OTHER", "metadata": {"IZPm3qOI": {}, "8FlYp2Nd": {}, "tFKCrsFV": {}}, "reason": "xMuaWdzy", "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'CQOBUFPj' \
    --namespace $AB_NAMESPACE \
    --userId 'U6SfVAJP' \
    --body '{"amount": 16, "expireAt": "1997-02-02T00:00:00Z", "metadata": {"Pt6sfGiX": {}, "JXlmeDl6": {}, "E8uKzzuv": {}}, "origin": "Steam", "reason": "f4fu03LB", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'BSoqCFE9' \
    --namespace $AB_NAMESPACE \
    --userId 'NFWyZfay' \
    --request '{"amount": 29, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"PFJEYnYH": {}, "NkgqnUUi": {}, "ayg2fgbB": {}}, "reason": "GG1AVTgF", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'oUXjGC38' \
    --namespace $AB_NAMESPACE \
    --userId 's7xI9Oap' \
    --body '{"amount": 19, "metadata": {"yGJg8bvE": {}, "4SZDm9Mb": {}, "o7zynYZr": {}}, "walletPlatform": "GooglePlay"}' \
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
    --storeId 'sAnYYt4J' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'J3I5uQGb' \
    --body '{"displayOrder": 36, "localizations": {"W7XRHVe3": {"description": "vF5XIrHU", "localExt": {"n7YpEMPh": {}, "dvMBU1iq": {}, "M0kcBZ6M": {}}, "longDescription": "H1NgdPqF", "title": "GutZ2xPs"}, "JiFJ6VVb": {"description": "j3p2AWwm", "localExt": {"W6yrELAZ": {}, "XYshsxIF": {}, "gMM0i7It": {}}, "longDescription": "9SoVoxsc", "title": "pwJGuRZQ"}, "EOcurlT4": {"description": "6qiK3qbO", "localExt": {"7sykWE3I": {}, "mJpewPyq": {}, "7lgxkav4": {}}, "longDescription": "msK8dyzL", "title": "V7NPYFqh"}}, "name": "5z1UETUc"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'MB4zU6QX' \
    --storeId 'IjXwGfOK' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'QtWxz4vl' \
    --storeId 'wiZ4gsxC' \
    --body '{"displayOrder": 27, "localizations": {"PZTTwVwy": {"description": "RSmhhUmI", "localExt": {"VlOGhqAN": {}, "xR1HXXSa": {}, "CX0R2Syr": {}}, "longDescription": "r8Nl2svk", "title": "HY8gh7ca"}, "XrzY7sKj": {"description": "53TtB8Wn", "localExt": {"WkhlHELg": {}, "c6n7WtBZ": {}, "MIlqYV5M": {}}, "longDescription": "8TkROmPn", "title": "9FBroROr"}, "6nUkJIxN": {"description": "Cb62EZgH", "localExt": {"ii5eyfOK": {}, "TWAKgXfd": {}, "XDytyLDz": {}}, "longDescription": "TjlsdqtB", "title": "gEn9uIpj"}}, "name": "M46QD8Z3"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'WdDaoUb9' \
    --storeId 'jgsu83ab' \
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
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 88, "expireAt": "1998-09-08T00:00:00Z", "metadata": {"DC8onHvF": {}, "OhnDTuLh": {}, "0lkTn62C": {}}, "origin": "Xbox", "reason": "J7z56FSl", "source": "REWARD"}, "currencyCode": "9pHYWXJr", "userIds": ["cHe1W1MO", "a1a5q6XG", "yLkuid6Z"]}, {"creditRequest": {"amount": 56, "expireAt": "1998-04-23T00:00:00Z", "metadata": {"EGV4urLU": {}, "mIWulBI8": {}, "FROWiQQB": {}}, "origin": "Twitch", "reason": "Yf9piN3V", "source": "OTHER"}, "currencyCode": "K4eWpJVK", "userIds": ["jd731p1w", "BQYJ1iIZ", "dtGpZ475"]}, {"creditRequest": {"amount": 100, "expireAt": "1984-04-14T00:00:00Z", "metadata": {"qj1NbMFm": {}, "48BVUMrU": {}, "wdAhqSlO": {}}, "origin": "GooglePlay", "reason": "GtRMK4MZ", "source": "PROMOTION"}, "currencyCode": "GnaaSG3m", "userIds": ["8E38aYoH", "4zNk7xgu", "ElLGdoAI"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ws3QWYA3", "request": {"allowOverdraft": false, "amount": 70, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"wfcUPKj5": {}, "ZV8vAlGe": {}, "UBBO06wb": {}}, "reason": "bjYHlw1u"}, "userIds": ["LWzXMYcp", "Thnz2Gec", "QT1aGCn2"]}, {"currencyCode": "iniEJ2CE", "request": {"allowOverdraft": true, "amount": 3, "balanceOrigin": "Twitch", "balanceSource": "PAYMENT", "metadata": {"u6OFvI4h": {}, "RwO0ekJw": {}, "6EHiazZP": {}}, "reason": "lsKxAB5s"}, "userIds": ["pGmpbJqU", "iyQ7TzRl", "wuYBulQZ"]}, {"currencyCode": "064vhcja", "request": {"allowOverdraft": true, "amount": 86, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"7KQwQC7b": {}, "idrnFiGF": {}, "7lL9WSLP": {}}, "reason": "4QaxHkkU"}, "userIds": ["Uo5Ypnq1", "lnTT9dMb", "bSDEVm56"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'q5Dkj5vy' \
    --end 'OMbcwNHD' \
    --start '9UYRlR3b' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["oLXiRckn", "EftQ85NK", "CpBp4Fdd"], "apiKey": "tUKhMyNP", "authoriseAsCapture": true, "blockedPaymentMethods": ["bkNP18jr", "xspHr5QA", "HBXuHJVF"], "clientKey": "NIYNngUN", "dropInSettings": "5XgfuYgB", "liveEndpointUrlPrefix": "WQkOkDfL", "merchantAccount": "NZyG3nbX", "notificationHmacKey": "05ehrORX", "notificationPassword": "I8rklyGz", "notificationUsername": "1zPfbOq5", "returnUrl": "ibsHnWdl", "settings": "wZwwWdZp"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "BNwX5OjZ", "privateKey": "aBPMGrLA", "publicKey": "LIV84Kyd", "returnUrl": "4fW96qry"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "YLP85py8", "secretKey": "EQ2dMP8w"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'gfmPpBT5' \
    --region 'o8vyxxUe' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "nLbjZPvL", "webhookSecretKey": "BmCdOCFQ"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "MgtzXKkR", "clientSecret": "pMXDOYxg", "returnUrl": "jV1Ek3TW", "webHookId": "0sF2XXQ2"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["rbyWIKug", "rnZSHynK", "Q7NCuauA"], "publishableKey": "r66F4h6Z", "secretKey": "n8gTo3dl", "webhookSecret": "dCgLkVJ3"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "cLflSoIb", "key": "U71pj1s2", "mchid": "hOYYZmgE", "returnUrl": "EyYBe7CZ"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "66gOEuhG", "flowCompletionUrl": "K3QplT9R", "merchantId": 23, "projectId": 88, "projectSecretKey": "Z0LjCXAy"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'YD7bIv1u' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'PwX0d3fi' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["TdDJcB6g", "UFFhlbVW", "1O0EJSko"], "apiKey": "I0I3TeCU", "authoriseAsCapture": false, "blockedPaymentMethods": ["apC32pJ5", "GLMjD4LY", "y0XoyNnG"], "clientKey": "ptw48pjj", "dropInSettings": "QaIN0MII", "liveEndpointUrlPrefix": "OXQnwb9L", "merchantAccount": "zB8IhwYk", "notificationHmacKey": "AKmQ0IvG", "notificationPassword": "tLlXA5Cu", "notificationUsername": "YGJtjOKD", "returnUrl": "OX10pdIr", "settings": "YEdQTHrD"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '6u8ijxMe' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'TeiUUFf6' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "F6j1qpQ7", "privateKey": "MvNPhsI9", "publicKey": "FsoFZGlW", "returnUrl": "uJuDxAXx"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'NHbW6MoC' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'fzri7bcR' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "hqbRe3Ls", "secretKey": "Uj4wjn3a"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Cw1oR9zz' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'IYfl0uwq' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "ho7WZYvg", "webhookSecretKey": "DtRGiHh3"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'NNDCAgie' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '3YOMI44j' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "zlDR2Qey", "clientSecret": "d07MAl7v", "returnUrl": "PjlIuK9Y", "webHookId": "q8tstcWO"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '5fUM0txA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '3kPPjJd8' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["0VGAhd3W", "BnrjBv42", "6zUDtjRK"], "publishableKey": "zXv8V4Vh", "secretKey": "FQGDKaqn", "webhookSecret": "MN5Tabqp"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '7qHobxeV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'hXhGq2xR' \
    --validate 'false' \
    --body '{"appId": "DpiLcDm0", "key": "bscKpdrl", "mchid": "ak1jwX6R", "returnUrl": "7VM72yQe"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'uugDpdXe' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'wJOuEM5W' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'n3toXaTE' \
    --validate 'true' \
    --body '{"apiKey": "GLBuMxmz", "flowCompletionUrl": "Xmej0Fmv", "merchantId": 78, "projectId": 98, "projectSecretKey": "D624Rtbc"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'zV0s1MqQ' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '49lGP0SW' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '70' \
    --namespace 'R78wA5YR' \
    --offset '13' \
    --region 'THcEvpn3' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "STRIPE", "namespace": "HcDqjaAG", "region": "ZqrxwTd0", "sandboxTaxJarApiToken": "VP1zQ64U", "specials": ["CHECKOUT", "ALIPAY", "CHECKOUT"], "taxJarApiToken": "XFrpI5HX", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'uPdcz9k5' \
    --region 'K8zTrTBq' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '5NwJQdIo' \
    --body '{"aggregate": "XSOLLA", "namespace": "tCRKwJmA", "region": "fLEPyVSI", "sandboxTaxJarApiToken": "BIQfvz7n", "specials": ["ALIPAY", "ADYEN", "WALLET"], "taxJarApiToken": "uI7acUZK", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'K6CQ3C9W' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "bL8fdgob", "taxJarApiToken": "F5i7hzX9", "taxJarEnabled": true, "taxJarProductCodesMapping": {"bbgelxf6": "H56XVH3G", "tQpI4D5L": "HvjIXzq7", "MeVE9UTV": "47TSQGGL"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '7KpO85pd' \
    --end 'JpBenKmB' \
    --start 'ARknnazr' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'e6sR5quH' \
    --storeId 'V5EJojFi' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'TNJV7iwf' \
    --storeId 'rACL5dmP' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'h6yeD1cI' \
    --namespace $AB_NAMESPACE \
    --language 'Q3PkCRl5' \
    --storeId 'ZVUdBvHG' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'sxIVKDct' \
    --namespace $AB_NAMESPACE \
    --language 'DYXlCXGC' \
    --storeId '6uWOnSmf' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '86b9Vd7r' \
    --namespace $AB_NAMESPACE \
    --language 'dx4L8X3p' \
    --storeId 'JFGNIlfb' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetDescendantCategories' test.out

#- 396 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
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
    --platform 'OCULUS' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'ZEd74e7A' \
    --region 'Sw6zD6fu' \
    --storeId 'qtCe0fFM' \
    --appId 'MDYaAVGB' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'a6zDLPug' \
    --categoryPath 'CoRqwgfB' \
    --features 'PFPycL8a' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --language '6gQvRpa2' \
    --limit '8' \
    --offset '50' \
    --region 'sXeLTWqk' \
    --sortBy '["createdAt:desc", "updatedAt", "createdAt:asc"]' \
    --storeId 'wmKRJRzD' \
    --tags 'ZAI5NeyA' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'trFk4iKc' \
    --region 'vnry0JHD' \
    --storeId 'bgZLIKpO' \
    --sku '5dfNeCjV' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'jj3mnT9v' \
    --storeId 'EJPExtvI' \
    --itemIds 'EiJmHXOQ' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'XBfzQBz5' \
    --region 'H3LeMhmX' \
    --storeId 'r3HG2Iix' \
    --itemIds 'sN26t0CC' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["0YGQYO9o", "CavO7E8V", "TQEOAORF"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'APP' \
    --limit '1' \
    --offset '63' \
    --region 'IiyNHF8v' \
    --storeId 'kLMMO5De' \
    --keyword 'O3rMTTzT' \
    --language '4J7jEIUT' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'a1RkDWx0' \
    --namespace $AB_NAMESPACE \
    --language 'ZZjzqZwY' \
    --region 'dydDW4Ek' \
    --storeId 'SQrY9Otf' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'hqkpwXF8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'mDuBy5xD' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'dKtOEV6y' \
    --populateBundle 'true' \
    --region 'vXPLJx2l' \
    --storeId 'zDHpOosC' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "V6o4HAKy", "successUrl": "Pg1Pf5DD"}, "paymentOrderNo": "7y9y4zVf", "paymentProvider": "NEONPAY", "returnUrl": "Hi3IsTl0", "ui": "siIKN7DK", "zipCode": "k3bVFTxC"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GeWq2kDL' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RSAd2cRu' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'b6H4voda' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'MNEULRpF' \
    --body '{"token": "EmucdTFx"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2iPt9I7W' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'OAoaXIcI' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '2VtWO0vp' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'Ka5u411u' \
    --foreinginvoice '2LxmgRxP' \
    --invoiceId 'jQnVGRvM' \
    --payload 'uTp46w6L' \
    --redirectResult 'jNI4Lxbp' \
    --resultCode 'v8QeI4u3' \
    --sessionId 'cCtXQ5SL' \
    --status 'FOoDE5Fx' \
    --token 'agedf6WB' \
    --type 'yhhHuLau' \
    --userId 'A5X8218C' \
    --orderNo '5bZ03K37' \
    --paymentOrderNo 'UBV50QVM' \
    --paymentProvider 'STRIPE' \
    --returnUrl 't6KDr6hB' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'LVKisACT' \
    --paymentOrderNo 'HMjiLwzu' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '8d1MIFOZ' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'MJ5BQLg6' \
    --limit '22' \
    --offset '71' \
    --sortBy '["rewardCode", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '0U4y1Qt5' \
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
    --appIds '["LYpOSziF", "I999FoFF", "U50q2cqY"]' \
    --itemIds '["8eYBEisK", "VVH76s88", "Nyw3KCYS"]' \
    --skus '["pQqUrLDy", "9COZfmD2", "SynpWn6f"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'p9wU0U5i' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'rFL6jpE6' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'sS7uSfCX' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["vObly9Gg", "UoF54Bp2", "xmrlitnt"]' \
    --itemIds '["BfGPmpp0", "WMzwY3Lv", "Fq8mRNfa"]' \
    --skus '["1hC9ibOP", "25HRCQk3", "RZfeGOrB"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "7nl1asOL", "language": "DaD_bsYw", "region": "wgACyhd7"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'NYCm87lP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TWw8pZv0' \
    --body '{"epicGamesJwtToken": "kDAj9yUa"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'UhO505Gh' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ixlAeJaM' \
    --body '{"serviceLabel": 1}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'TLiTZhNt' \
    --body '{"serviceLabels": [51, 37, 7]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Wgk0gviH' \
    --body '{"appId": "cReFPg9i", "steamId": "yEd6OzUq"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Iiox3BO9' \
    --body '{"xstsToken": "IkcAq7hZ"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'IgCJZHK9' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'hnkbRzXF' \
    --features '["u5ngYDeL", "J6ONtZKE", "Xl5zW6Dp"]' \
    --itemId '["OLsJhLBb", "o8JeUndg", "1wHxOfoj"]' \
    --limit '98' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dFvg7Vwx' \
    --appId 'AImCjgvi' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'vk6bCdCv' \
    --limit '82' \
    --offset '16' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'K3RVyjy8' \
    --availablePlatformOnly 'false' \
    --ids '["k5WePKTz", "hSL8bZbG", "LYI9TwOf"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'jSkKyick' \
    --endDate 'oMngCAsy' \
    --entitlementClazz 'CODE' \
    --limit '65' \
    --offset '94' \
    --startDate 'clHGCP1o' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'sAJRIcAM' \
    --appIds '["rwTFOaBv", "I0thF1or", "fPrjzqMY"]' \
    --itemIds '["GrKyb72i", "JCw9OAbv", "AQM7BpSj"]' \
    --skus '["RabfOB6D", "kn4Cn4oC", "wkrznoG2"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5QXr0Map' \
    --appId '3ViNpzOp' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'X9wopaTl' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'm1NRYUTg' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '2lP9L7Ux' \
    --ids '["SOBz4UgA", "Hj4Ct99M", "c1oe8fsn"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'GSgGtt2a' \
    --entitlementClazz 'CODE' \
    --sku 'RhjcvZaK' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'L0kaJy4T' \
    --namespace $AB_NAMESPACE \
    --userId 'v632znD6' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'mUMPxcn3' \
    --namespace $AB_NAMESPACE \
    --userId 'XwGDqhsr' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["Hc51BMyA", "jJxgcvm6", "Hi8KrQRI"], "requestId": "agJ1KIuL", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'mtjbqXUD' \
    --namespace $AB_NAMESPACE \
    --userId 'tTb7UIfm' \
    --body '{"requestId": "5KlylY2q", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'CB5q2G4D' \
    --namespace $AB_NAMESPACE \
    --userId 'YY7dkMCu' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'CWpsks2C' \
    --namespace $AB_NAMESPACE \
    --userId 'Gle1SBEo' \
    --body '{"entitlementId": "mSRy5HNA", "metadata": {"operationSource": "INVENTORY"}, "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'n2upcmuT' \
    --body '{"code": "5ONhimFH", "language": "XY-SpUp_uX", "region": "7nEXmSMV"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'gwf9v2Iz' \
    --body '{"excludeOldTransactions": true, "language": "JOjK-uUOO", "productId": "unX58KRJ", "receiptData": "ZCJc4aZb", "region": "FrgB3rWG", "transactionId": "6aXuQRLY"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Xg8dsIsa' \
    --body '{"epicGamesJwtToken": "fyuFbpny"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'MIZjGqv5' \
    --body '{"autoAck": false, "autoConsume": false, "language": "Og_pt", "orderId": "MLKO84zM", "packageName": "t8b2EpQM", "productId": "PXrH7Ap6", "purchaseTime": 91, "purchaseToken": "CYNZCxVi", "region": "uiKdhZ8J", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ENecJG1Y' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'yAJO8Yfn' \
    --body '{"currencyCode": "XJvcYcHv", "price": 0.3299384507809725, "productId": "YT4x0egI", "serviceLabel": 40}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'PLvZPy5Z' \
    --body '{"currencyCode": "abpaPpTM", "price": 0.21058992281630984, "productId": "VoAN3qHJ", "serviceLabels": [100, 2, 50]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'EBfu1joK' \
    --body '{"appId": "p4ZUJ5KE", "currencyCode": "qa75y2vy", "language": "sV_140", "price": 0.9649505159192854, "productId": "8WotDjHw", "region": "EFZm2aWk", "steamId": "Ce1bpjcK"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'PeFoW9aG' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'fwUbcpgg' \
    --body '{"orderId": "Z4V4UJ2X"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'penlULEL' \
    --activeOnly 'true' \
    --groupId 'Snpx0mDp' \
    --limit '21' \
    --offset '53' \
    --productId '0FMZFtSV' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 't7988PaC' \
    --body '{"gameId": "PxCVqEVf", "language": "bDMK-MPkz-Vx", "region": "k9BSfc4x"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '9JlrqBpm' \
    --body '{"currencyCode": "2tsMgl6J", "price": 0.31650586107269496, "productId": "oxwIg0pn", "xstsToken": "gUrKdAWN"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mNwswGkr' \
    --discounted 'true' \
    --itemId 'XVZgoBv1' \
    --limit '96' \
    --offset '43' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ARkragIx' \
    --body '{"currencyCode": "X0Z9WXVU", "discountCodes": ["xMLRQdN7", "WXsHcVjU", "VffvbqN5"], "discountedPrice": 58, "ext": {"6DBCrB30": {}, "NFpdld3t": {}, "i4L9A2bW": {}}, "itemId": "kQbTpuwm", "language": "HE", "price": 9, "quantity": 92, "region": "rdeZG1bZ", "returnUrl": "jApbye66", "sectionId": "C2f3Ul6p"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'iSgSpQWf' \
    --body '{"currencyCode": "yH7xuHPz", "discountCodes": ["f5WIDIj7", "afMATSGG", "hhus6QCo"], "discountedPrice": 27, "itemId": "jSC5SodC", "price": 95, "quantity": 79}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'DojpJriP' \
    --userId 'I7yDtYul' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KdUdjShS' \
    --userId 'Be22F7QS' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'mMEkniYj' \
    --userId 'SJJ5knMr' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Aaad547X' \
    --userId 'OCkti4hb' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Nr9EObbY' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'nuDgQBYY' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'PZhpPgAG' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '3pdLZxKB' \
    --autoCalcEstimatedPrice 'false' \
    --language 'gR19D2EQ' \
    --region 'ZZbhphgn' \
    --storeId 'mBC2vVQi' \
    --viewId 'UbDXUuMu' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '2SGZNIJM' \
    --chargeStatus 'CHARGED' \
    --itemId 'w1kebUoZ' \
    --limit '13' \
    --offset '63' \
    --sku 'MRWtpm2j' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'v5E8cf7g' \
    --body '{"currencyCode": "x6x5VoGh", "itemId": "hgmejMx0", "language": "iM_UrPo-667", "region": "vXCkynVu", "returnUrl": "3bGDO0vU", "source": "BtoR1zj4"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HEGPKG3h' \
    --itemId 'HxorQbkv' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fqmVVwMg' \
    --userId 'FNPYETfM' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Wg8W2swe' \
    --userId 'eyUUTPds' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xwklPoUw' \
    --userId 'pJRa7hUj' \
    --body '{"immediate": false, "reason": "lDbPmB5I"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SB5Q7l1a' \
    --userId 'Wv6YLpjy' \
    --excludeFree 'true' \
    --limit '51' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'DyGo8Zgv' \
    --language 'mtgR7fE4' \
    --storeId 'aVbXwqse' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'bE8qzQ8y' \
    --namespace $AB_NAMESPACE \
    --userId 'fXhzVk4X' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '6Wwnre3Q' \
    --namespace $AB_NAMESPACE \
    --userId '9oy5Zolx' \
    --limit '34' \
    --offset '67' \
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
    --endTime 'ne8dytHt' \
    --limit '13' \
    --offset '46' \
    --startTime 'BmB9YIku' \
    --state 'FULFILL_FAILED' \
    --transactionId '5vboafrf' \
    --userId 'dT0R7Hl0' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'L9l2LjgJ' \
    --baseAppId '2D7hBhSK' \
    --categoryPath 'RdrSwvet' \
    --features 'SBGHhBxB' \
    --includeSubCategoryItem 'false' \
    --itemName '0fo8OfkO' \
    --itemStatus 'INACTIVE' \
    --itemType '["APP", "COINS", "BUNDLE"]' \
    --limit '34' \
    --offset '30' \
    --region 'mRuRLuaV' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "name:asc", "name"]' \
    --storeId 'k8MxVXC5' \
    --tags '2GcSnzen' \
    --targetNamespace 'AMd7r7z1' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'VehbuAI6' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'kIYD17lj' \
    --body '{"itemIds": ["t6qiVRHj", "UvYB4Uce", "Rehh0eZB"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'qmOOImfp' \
    --body '{"entitlementCollectionId": "GRHWulHT", "entitlementOrigin": "System", "metadata": {"rpgWu4pS": {}, "tZEj5IDK": {}, "JUo0VB9Q": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "snhoiKFw", "namespace": "Dt45NmOZ"}, "item": {"itemId": "4fzWQkLh", "itemName": "B0laXlPx", "itemSku": "1SMyO74R", "itemType": "lcyNxEAS"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "qZQ3o4Ob", "namespace": "mVLCotl3"}, "item": {"itemId": "PE9FX0M6", "itemName": "4o9bA0wK", "itemSku": "wdOUDprk", "itemType": "GJWyZsb9"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "LnSkZ01w", "namespace": "iE3fB3TA"}, "item": {"itemId": "uJqKjudE", "itemName": "RyJSDrd8", "itemSku": "5PQYogn4", "itemType": "kRYwpazY"}, "quantity": 0, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "mGm0utTh"}' \
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
    --userId 'hGM00fPm' \
    --body '{"transactionId": "bf3pv8fL"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'zXvUJkWQ' \
    --userId 'tBwwGoxX' \
    --body '{"items": [{"duration": 8, "endDate": "1982-12-22T00:00:00Z", "entitlementCollectionId": "7FadfhB6", "entitlementOrigin": "Twitch", "itemId": "YVTeDUgc", "itemSku": "N824SRAH", "language": "myNb5I16", "metadata": {"wZVNgbBt": {}, "QUAkfHXp": {}, "jbmH67Ri": {}}, "orderNo": "pHIJBvAP", "origin": "Other", "quantity": 79, "region": "mdQGhBdx", "source": "ACHIEVEMENT", "startDate": "1998-06-18T00:00:00Z", "storeId": "IwxyAdXi"}, {"duration": 31, "endDate": "1988-09-16T00:00:00Z", "entitlementCollectionId": "tKbkew3K", "entitlementOrigin": "System", "itemId": "i90yBMtr", "itemSku": "sBqx2FlP", "language": "fBLxJjNl", "metadata": {"Q2sJN3zg": {}, "PhfLrupR": {}, "NV8N4r9U": {}}, "orderNo": "IlTpBSc5", "origin": "IOS", "quantity": 34, "region": "v4keWomR", "source": "CONSUME_ENTITLEMENT", "startDate": "1994-08-28T00:00:00Z", "storeId": "DjPjkiJT"}, {"duration": 96, "endDate": "1993-08-15T00:00:00Z", "entitlementCollectionId": "ktmUVhgW", "entitlementOrigin": "System", "itemId": "xBjxYyIy", "itemSku": "Bo3ARJG6", "language": "ZP8JdVKo", "metadata": {"u8stR3sQ": {}, "NGaQPtnI": {}, "lhrcuIWy": {}}, "orderNo": "SAetzElH", "origin": "Nintendo", "quantity": 34, "region": "IywIqTTs", "source": "ACHIEVEMENT", "startDate": "1974-06-01T00:00:00Z", "storeId": "lr5VVtn2"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId '8cTzoWiY' \
    --userId '73rMSEoB' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'cCzdI5VJ' \
    --userId 'JU0mIUF4' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE