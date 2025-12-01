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
echo "1..507"

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
    --id 'oncn0rTV' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'bckwKxcd' \
    --body '{"grantDays": "f34RLTNi"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'BoE6Hd3I' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'KNdr6CBX' \
    --body '{"grantDays": "gwqnUUHl"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "r62sm6RJ", "dryRun": true, "fulfillmentUrl": "fk9jBHI5", "itemType": "LOOTBOX", "purchaseConditionUrl": "vSaaEoZy"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'GpyLgFuq' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'sPQX1eMa' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'aS0MjOqA' \
    --body '{"clazz": "TzhEvBqz", "dryRun": false, "fulfillmentUrl": "tp7iiRW7", "purchaseConditionUrl": "oHhTyqci"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Nr3rihgO' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'ql5Hndkm' \
    --offset '86' \
    --tag 'tecPVsp8' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "06NL2LcU", "discountConfig": {"categories": [{"categoryPath": "BfjqMLfx", "includeSubCategories": false}, {"categoryPath": "UzdCONmA", "includeSubCategories": true}, {"categoryPath": "2HXYqBBa", "includeSubCategories": true}], "currencyCode": "1zX1TDGr", "currencyNamespace": "jlJWEa64", "discountAmount": 90, "discountPercentage": 66, "discountType": "PERCENTAGE", "items": [{"itemId": "AJTefn2E", "itemName": "JpU0KUQ6"}, {"itemId": "rm7sytW8", "itemName": "eZ2WOcxC"}, {"itemId": "DaryWgw0", "itemName": "U6RzAbsN"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 36, "itemId": "Zg2cOCxN", "itemName": "kXSOe1tb", "quantity": 70}, {"extraSubscriptionDays": 52, "itemId": "qFZ0406P", "itemName": "0Lr76gUb", "quantity": 75}, {"extraSubscriptionDays": 9, "itemId": "5YxzlrUB", "itemName": "QUMvbGUO", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 65, "maxRedeemCountPerCode": 22, "maxRedeemCountPerCodePerUser": 46, "maxSaleCount": 98, "name": "oLTly0aN", "redeemEnd": "1991-01-01T00:00:00Z", "redeemStart": "1979-08-01T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["CJJoK84v", "tHhuG7lO", "2Ec7oWyP"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'hyiBZ7kq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'ySNYoeUE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "751X74b6", "discountConfig": {"categories": [{"categoryPath": "zx9rnyfk", "includeSubCategories": true}, {"categoryPath": "Ng6nE25f", "includeSubCategories": false}, {"categoryPath": "9BAen6qe", "includeSubCategories": true}], "currencyCode": "Yc36qiRY", "currencyNamespace": "NoAGScNs", "discountAmount": 35, "discountPercentage": 18, "discountType": "PERCENTAGE", "items": [{"itemId": "pBfFs9Q9", "itemName": "zP3nq6iz"}, {"itemId": "n4aD6AiB", "itemName": "mw6K2KXT"}, {"itemId": "ZrLvrMZB", "itemName": "0V8lIFmu"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 13, "itemId": "mi2SytBw", "itemName": "Suujtexl", "quantity": 93}, {"extraSubscriptionDays": 9, "itemId": "gKzRMR4o", "itemName": "F9OigHfb", "quantity": 96}, {"extraSubscriptionDays": 66, "itemId": "Nnyz7a0P", "itemName": "ak1dVjRG", "quantity": 10}], "maxRedeemCountPerCampaignPerUser": 96, "maxRedeemCountPerCode": 42, "maxRedeemCountPerCodePerUser": 15, "maxSaleCount": 17, "name": "0cYF7BAq", "redeemEnd": "1983-11-11T00:00:00Z", "redeemStart": "1972-01-06T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["9Wv8jJzT", "K7ZZuVOT", "WkerfHni"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'JobIjj9T' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "t31zkqq1", "oldName": "cRNuNEBE"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'x18d3yhx' \
    --namespace $AB_NAMESPACE \
    --batchName 'MFxjfnsV' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'W6Cvctxc' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["REWARD", "CAMPAIGN", "CATALOG"]}' \
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
    --body '{"appConfig": {"appName": "bG9TDiZS"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "1f9BDBnM"}, "extendType": "APP"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "pnJHXwfh"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "pSqlwyX3"}, "extendType": "APP"}' \
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
    --storeId 'ORcQwja0' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'HUgtZb0V' \
    --body '{"categoryPath": "XpicA7P4", "localizationDisplayNames": {"EI92QkOV": "SHCgzMVi", "xw96E8nY": "FZtZFoyp", "sdh1BCOp": "w1o5aaMK"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'lkKo48EW' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'vLDQOjaf' \
    --namespace $AB_NAMESPACE \
    --storeId 'EVZ1Raci' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Ghg4gTUg' \
    --namespace $AB_NAMESPACE \
    --storeId 'dAka5I6g' \
    --body '{"localizationDisplayNames": {"HYd1nYyv": "kyWKsMrk", "IyQPwTkF": "ZSasNPYh", "hN1uhO8Z": "WI07jlU8"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'gqtThoMZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'imHilBJh' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'KNAsM4Av' \
    --namespace $AB_NAMESPACE \
    --storeId 'Id0jSh9O' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'BT8dG2Fp' \
    --namespace $AB_NAMESPACE \
    --storeId 'hAsiErE0' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'BVeLRpjy' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName '14oFf2qX' \
    --batchNo '[81, 31, 61]' \
    --code 'loxpq2RU' \
    --limit '1' \
    --offset '46' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'olfr8JQ5' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "iEG0ejNU", "codeValue": "tsxzcBeZ", "quantity": 14}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'ctSiUKK4' \
    --namespace $AB_NAMESPACE \
    --batchName 'DROSmNM4' \
    --batchNo '[21, 65, 95]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'v4c7IPQm' \
    --namespace $AB_NAMESPACE \
    --batchName 'HfMEgU88' \
    --batchNo '[49, 89, 68]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'gEQwaDRA' \
    --namespace $AB_NAMESPACE \
    --batchName '65n0BU0s' \
    --batchNo '[26, 67, 61]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'pZb3ry8O' \
    --namespace $AB_NAMESPACE \
    --code 'd2f8Gsah' \
    --limit '10' \
    --offset '57' \
    --userId 'Q2sP0RGD' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '6uhhRqbg' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'Gh4JSwWv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'oSvym6Tb' \
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
    --body '{"currencyCode": "4t9HdjBR", "currencySymbol": "1z4SIX4C", "currencyType": "VIRTUAL", "decimals": 61, "localizationDescriptions": {"NtOhOfMr": "6WcgzUBs", "ZNbUY0h6": "XNCzQv72", "ezi1JYbl": "z2BDjmvo"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Uiu4agde' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"i3WviqQH": "QBycBm64", "PnSreN7f": "MTpdUFPR", "aBENGLDX": "G4OSBgOh"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'e8ncjB3N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'kjbukaC2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'NF2dEvpP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'xh2pKvBw' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id '3Y8pWkuY' \
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
    --body '{"data": [{"autoUpdate": false, "enableRevocation": true, "id": "OTHftbf3", "rewards": [{"currency": {"currencyCode": "vNEoZzWR", "namespace": "EJowqdHJ"}, "item": {"itemId": "oyLYuE1S", "itemName": "ZmIQEPlx", "itemSku": "TxYNvBv4", "itemType": "S77fgEPQ"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "zu5D6Nao", "namespace": "m2jFQPgF"}, "item": {"itemId": "WXm9VuPQ", "itemName": "iAZjE18E", "itemSku": "ultC5aH4", "itemType": "L36qmuOT"}, "quantity": 17, "type": "ITEM"}, {"currency": {"currencyCode": "wKaYd8i2", "namespace": "mZrsbIvn"}, "item": {"itemId": "UYt4CnWC", "itemName": "Ut4Zjs39", "itemSku": "J2fw1A7k", "itemType": "pRzcRqNo"}, "quantity": 89, "type": "CURRENCY"}], "rvn": 23}, {"autoUpdate": false, "enableRevocation": true, "id": "cBNG7U50", "rewards": [{"currency": {"currencyCode": "pGteaanH", "namespace": "2vX9SxRE"}, "item": {"itemId": "debqpDfU", "itemName": "EYbGX2B8", "itemSku": "xdEb3cqs", "itemType": "VBIF5y2a"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "VxiChUXF", "namespace": "R4ZsjegW"}, "item": {"itemId": "hoAK9XMB", "itemName": "9mRsyhif", "itemSku": "jSMzN9bC", "itemType": "5bBkU0s7"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "L0lHvnmD", "namespace": "iCwmUn0Y"}, "item": {"itemId": "EQAmTRWq", "itemName": "4yz5vlwS", "itemSku": "3mdIVmX9", "itemType": "6anFSbad"}, "quantity": 63, "type": "ITEM"}], "rvn": 67}, {"autoUpdate": true, "enableRevocation": false, "id": "qmexxeLs", "rewards": [{"currency": {"currencyCode": "YLDNVcjg", "namespace": "GUdpcFq8"}, "item": {"itemId": "xBtJihDQ", "itemName": "R4QC9B9F", "itemSku": "KYVlq30Q", "itemType": "I0DodE07"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "L9AHOI2E", "namespace": "rNBhOp3e"}, "item": {"itemId": "N8YYPXVG", "itemName": "Usg7tYIW", "itemSku": "sJhCx7Nc", "itemType": "gSjZxIZx"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "Lc2FpMPQ", "namespace": "uzTDTeld"}, "item": {"itemId": "lmewaoJf", "itemName": "AyEin7cn", "itemSku": "AvVHkX1l", "itemType": "o2Da0Bej"}, "quantity": 25, "type": "ITEM"}], "rvn": 79}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"veQr7IVN": "gI1ykAm5", "dPjNku3O": "D99gBoIQ", "SFvEKPdq": "QEo1SHiI"}}, {"platform": "OCULUS", "platformDlcIdMap": {"9ENBhPdr": "rx7xt3cq", "EhbiqQRp": "SDceWqCA", "MuJWwuSk": "TUovLr52"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"ddgny2JC": "2uUSpBGZ", "81q4mc9t": "H9wqMWOl", "AMiMgKg6": "j2AxuK78"}}]}' \
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
    --entitlementClazz 'CODE' \
    --entitlementName 'xfXA265J' \
    --itemId '["Hrsx2d02", "TnNqtgyX", "SEGMTPRU"]' \
    --limit '10' \
    --offset '92' \
    --origin 'Epic' \
    --userId 'FDve0usP' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["PT0oHI7j", "izhnetK5", "aGBLoaVk"]' \
    --limit '14' \
    --offset '35' \
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
    --body '{"entitlementGrantList": [{"collectionId": "RqKzkZZQ", "endDate": "1979-03-17T00:00:00Z", "grantedCode": "NmObjttZ", "itemId": "xHg5W2DL", "itemNamespace": "d85IkvDn", "language": "Acps-697", "metadata": {"rAG9VYqT": {}, "ojYfqLfy": {}, "ifLnWRmI": {}}, "origin": "Epic", "quantity": 31, "region": "yM1n090m", "source": "OTHER", "startDate": "1976-11-28T00:00:00Z", "storeId": "6YyfyU7u"}, {"collectionId": "UuricU4N", "endDate": "1985-05-06T00:00:00Z", "grantedCode": "Ovm3JwUI", "itemId": "eph67g4i", "itemNamespace": "ESUWSNTe", "language": "BQMH", "metadata": {"jtQXTZOq": {}, "FrdVLwN9": {}, "pUGOBbCa": {}}, "origin": "IOS", "quantity": 40, "region": "JQCyGahW", "source": "REWARD", "startDate": "1973-11-05T00:00:00Z", "storeId": "cdoChyOy"}, {"collectionId": "mOnDwnS3", "endDate": "1982-12-16T00:00:00Z", "grantedCode": "DBPrPCa3", "itemId": "uX86Pfb3", "itemNamespace": "GdzWJm7Z", "language": "BmQ-eX", "metadata": {"vWA4cVW7": {}, "0nzmlBtf": {}, "KgZdMPck": {}}, "origin": "IOS", "quantity": 56, "region": "smrG5HfB", "source": "OTHER", "startDate": "1988-01-05T00:00:00Z", "storeId": "XDYhY1U2"}], "userIds": ["37QkDc2e", "NoSbDEVS", "LMAjlPXZ"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["j0HQuzc8", "q0F8XHDs", "Qizxez9u"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'aLblL9F7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '40' \
    --status 'FAIL' \
    --userId 'c71EITEe' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'ZJo0Y4pH' \
    --eventType 'REVOKED' \
    --externalOrderId 'E5GGJsuV' \
    --limit '52' \
    --offset '47' \
    --startTime 'E3ROJ4Lj' \
    --status 'FAIL' \
    --userId '1MLXcNEv' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "wZw5UD8u", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 96, "clientTransactionId": "5nCObqPz"}, {"amountConsumed": 19, "clientTransactionId": "D5TJ59LQ"}, {"amountConsumed": 20, "clientTransactionId": "FQErlsmC"}], "entitlementId": "WGFwR3mD", "usageCount": 71}, {"clientTransaction": [{"amountConsumed": 32, "clientTransactionId": "LBQJ17cb"}, {"amountConsumed": 15, "clientTransactionId": "RTMOCUE8"}, {"amountConsumed": 39, "clientTransactionId": "aeX96mvY"}], "entitlementId": "2Cxu128m", "usageCount": 29}, {"clientTransaction": [{"amountConsumed": 50, "clientTransactionId": "R30ffePz"}, {"amountConsumed": 44, "clientTransactionId": "LzwW58c6"}, {"amountConsumed": 78, "clientTransactionId": "DxE4U85c"}], "entitlementId": "1Xh0G6QG", "usageCount": 74}], "purpose": "ydlpYz2c"}, "originalTitleName": "JUzaeayR", "paymentProductSKU": "x615EC41", "purchaseDate": "LSvHnZa3", "sourceOrderItemId": "h67pRDTy", "titleName": "HMlhcPhm"}, "eventDomain": "3Ntd7C3W", "eventSource": "89iJhtu1", "eventType": "fkeXzeRE", "eventVersion": 16, "id": "XmF809Ql", "timestamp": "LZUbxBX7"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "UiyKcMTy", "eventState": "kGyYArOX", "lineItemId": "qZT6ZnBj", "orderId": "ZbWGW1xu", "productId": "HGZ3CUqQ", "productType": "VrauW1qB", "purchasedDate": "hPPT6aDz", "sandboxId": "3vohauQZ", "skuId": "yajibIau", "subscriptionData": {"consumedDurationInDays": 80, "dateTime": "JxkYTVH3", "durationInDays": 15, "recurrenceId": "a2Dga4v3"}}, "datacontenttype": "5cXnNuG0", "id": "7veJn1MK", "source": "QtzmskT7", "specVersion": "76ZJvIxc", "subject": "CmZjmzRp", "time": "dRhGWmON", "traceparent": "NG6ClILl", "type": "auPF5UO5"}' \
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
    --body '{"appAppleId": 77, "bundleId": "5TqSCDsq", "issuerId": "AWHaMu5m", "keyId": "FW7o7hZB", "password": "1dW10WPK", "version": "V1"}' \
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
    --body '{"sandboxId": "SJWvTbbI"}' \
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
    --body '{"applicationName": "LXkaUyY2", "notificationTokenAudience": "GAy7KEQG", "notificationTokenEmail": "tsIwGKds", "packageName": "XngPNzLy", "serviceAccountId": "mlbyuZDP"}' \
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
    --body '{"data": [{"itemIdentity": "PKfOsp7d", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"RZG3Hrso": "ZdI4K7o5", "tBmJ3JUH": "UOFmjQ0y", "iQe8w8He": "1NtSiyVZ"}}, {"itemIdentity": "VcpoeEEx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"11YMIg2G": "fXlvALjk", "ZITFTr82": "p2Q7TuOk", "i2XOnBCC": "N89oZbqO"}}, {"itemIdentity": "pUdsn6nH", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"TzkFW2dg": "nGg8Dybz", "bSvZtV7a": "1diyHVs1", "D1JiNLou": "q1NbRCRD"}}]}' \
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
    --body '{"appId": "6MdiFnJg", "appSecret": "PYy9tBda", "webhookVerifyToken": "oxhzZtbZ"}' \
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
    --body '{"sku": "66Op5VBg"}' \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --sku 'oiVo9ktL' \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace $AB_NAMESPACE \
    --sku 'n7lO52rJ' \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace $AB_NAMESPACE \
    --body '{"groupSku": "GLAJYaPj", "sku": "VbuzMcTv"}' \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace $AB_NAMESPACE \
    --sku 'EvTL0r6C' \
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
    --body '{"backOfficeServerClientId": "KVQS1Fet", "backOfficeServerClientSecret": "zbJGiQ8k", "enableStreamJob": true, "environment": "lev7rsrw", "streamName": "BaO6ev31", "streamPartnerName": "aPGgAl9y"}' \
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
    --body '{"backOfficeServerClientId": "4PSLuoSI", "backOfficeServerClientSecret": "A0Ou4LWz", "enableStreamJob": true, "environment": "fr6wSMDQ", "streamName": "mypSHOpT", "streamPartnerName": "N9YAX8OZ"}' \
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
    --body '{"appId": "GqbILwZN", "env": "LIVE", "publisherAuthenticationKey": "Mn264Sjb", "syncMode": "INVENTORY"}' \
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
    --body '{"clientId": "0mHTW5IO", "clientSecret": "8ZXhefvr", "organizationId": "F7SJQoP4"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "hZ7ae0WK", "entraAppClientSecret": "d4XLYyCl", "entraTenantId": "9PgSW4Of", "relyingPartyCert": "oQiLZ9eT"}' \
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
    --password 'af0NZQh1' \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'tU3uie3c' \
    --externalId 'JP9IGwJQ' \
    --limit '7' \
    --offset '1' \
    --source 'STADIA' \
    --startDate 'gpxtVwj9' \
    --status 'WARN' \
    --type '5YOenMvr' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '78' \
    --orderId 'N9fytLaa' \
    --steamId 'oFlBzMhI' \
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
    --body '{"env": "LIVE", "lastTime": "1993-11-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo '8vxTJbFB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '74' \
    --orderId 'kT4QyF6B' \
    --processStatus 'IGNORED' \
    --steamId '3dbcQPeF' \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId '6lqLi8aj' \
    --limit '24' \
    --offset '31' \
    --platform 'GOOGLE' \
    --productId 'CzcF8Tai' \
    --userId 'gWn9dydJ' \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'EkTTM6O8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'ofn4fwM8' \
    --feature 'ilQp2itY' \
    --itemId 'IOFLmAE8' \
    --itemType 'BUNDLE' \
    --startTime '20A3H6mN' \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'efwWJO9a' \
    --feature 'S9z8sGJq' \
    --itemId 'N6eswHRj' \
    --itemType 'LOOTBOX' \
    --startTime 'fuSuiJqw' \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Zf0HfQcq' \
    --body '{"categoryPath": "R7iAKz5H", "targetItemId": "XtR2LVua", "targetNamespace": "z1LxKUuk"}' \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'AvnovNDC' \
    --body '{"appId": "wL341acR", "appType": "DLC", "baseAppId": "ZPUHei9X", "boothName": "HR3YJO5V", "categoryPath": "SZwmKv2p", "clazz": "iKfuK23G", "displayOrder": 6, "entitlementType": "DURABLE", "ext": {"Qv9vdujR": {}, "Z3VkvifO": {}, "bCa9DRLk": {}}, "features": ["HcNh9kAp", "haazhwSl", "kgWBR1xL"], "flexible": true, "images": [{"as": "AtrJ0dTq", "caption": "rB06PnS4", "height": 32, "imageUrl": "ypyH9CWF", "smallImageUrl": "OjYSG3nH", "width": 96}, {"as": "b9gOleNs", "caption": "NoCFnfCm", "height": 4, "imageUrl": "TD9IQ65X", "smallImageUrl": "NZ3Bem6E", "width": 23}, {"as": "SYYub8ol", "caption": "8iGsmQmD", "height": 25, "imageUrl": "X7fEnJv9", "smallImageUrl": "IMOA0GGk", "width": 24}], "inventoryConfig": {"customAttributes": {"99OL2TwJ": {}, "oRqJNb6x": {}, "gyi7jNxe": {}}, "serverCustomAttributes": {"NcvMASG9": {}, "7gfGVV64": {}, "meVtZsl2": {}}, "slotUsed": 17}, "itemId": "Zk0oF5iA", "itemIds": ["u2qsRLFY", "8HMwCZuC", "9IsYWtCP"], "itemQty": {"phxox2i4": 39, "LKuZOcAK": 86, "hOBjrJk9": 80}, "itemType": "CODE", "listable": false, "localizations": {"0w0lmgd7": {"description": "MV1gPAmA", "localExt": {"Tj6uQtPr": {}, "ICNEb7VN": {}, "57Sj9TwV": {}}, "longDescription": "C0drCyjR", "title": "yQuoJlPY"}, "OPctNJbZ": {"description": "JlUzhfaf", "localExt": {"SOIzFnZB": {}, "EstvVFw0": {}, "hSmB4tVW": {}}, "longDescription": "Y62xgdXv", "title": "CBK75jQr"}, "WrN0YeIx": {"description": "rF3FtrMV", "localExt": {"jhJWWAf5": {}, "oSkJ3wxX": {}, "w0tpD6K1": {}}, "longDescription": "K2Za6lKp", "title": "TPWAwGGI"}}, "lootBoxConfig": {"rewardCount": 86, "rewards": [{"lootBoxItems": [{"count": 72, "duration": 1, "endDate": "1998-05-29T00:00:00Z", "itemId": "s8ERMBR2", "itemSku": "fWj3bMoF", "itemType": "IIE7gGlj"}, {"count": 74, "duration": 83, "endDate": "1978-07-22T00:00:00Z", "itemId": "fK8QcAIk", "itemSku": "u7j3ywNV", "itemType": "ewkllLOS"}, {"count": 67, "duration": 5, "endDate": "1993-08-24T00:00:00Z", "itemId": "2ZnidHAm", "itemSku": "cm4Iv4Qt", "itemType": "V5boV0e6"}], "name": "sshDCI6s", "odds": 0.6881631403113774, "type": "REWARD_GROUP", "weight": 6}, {"lootBoxItems": [{"count": 36, "duration": 90, "endDate": "1977-10-19T00:00:00Z", "itemId": "xPZMXnAO", "itemSku": "ObJQ4hlY", "itemType": "S7eeARM3"}, {"count": 40, "duration": 45, "endDate": "1990-01-10T00:00:00Z", "itemId": "HNmaHhEY", "itemSku": "3l2blIjv", "itemType": "zF57RcfA"}, {"count": 6, "duration": 32, "endDate": "1984-12-21T00:00:00Z", "itemId": "7z5EBqrG", "itemSku": "D5wEyh4z", "itemType": "ix4mFf5H"}], "name": "8PyXr6JK", "odds": 0.5221591877558365, "type": "PROBABILITY_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 59, "duration": 58, "endDate": "1981-05-11T00:00:00Z", "itemId": "3MmLGoD0", "itemSku": "CZQqyGs0", "itemType": "Ax8mUvgT"}, {"count": 83, "duration": 69, "endDate": "1995-03-03T00:00:00Z", "itemId": "KSxL8Jql", "itemSku": "4AbnAD11", "itemType": "D53owZqh"}, {"count": 36, "duration": 17, "endDate": "1986-06-29T00:00:00Z", "itemId": "WZlMrjWv", "itemSku": "F1meYo0u", "itemType": "NpsHh4F5"}], "name": "r3oAE8UT", "odds": 0.34184417551880575, "type": "REWARD", "weight": 31}], "rollFunction": "DEFAULT"}, "maxCount": 5, "maxCountPerUser": 7, "name": "zjm1ryXB", "optionBoxConfig": {"boxItems": [{"count": 6, "duration": 45, "endDate": "1984-02-28T00:00:00Z", "itemId": "wCrs7IV4", "itemSku": "hzfnHlE5", "itemType": "Z47YoNrl"}, {"count": 15, "duration": 8, "endDate": "1975-06-28T00:00:00Z", "itemId": "jqXiplnO", "itemSku": "fsyLYGWL", "itemType": "SMFoUnu1"}, {"count": 39, "duration": 29, "endDate": "1975-07-27T00:00:00Z", "itemId": "xqbeT6ii", "itemSku": "1nwkq55A", "itemType": "Qhz3nin9"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 98, "fixedTrialCycles": 45, "graceDays": 39}, "regionData": {"Jx7n5SUM": [{"currencyCode": "GxtPxAzY", "currencyNamespace": "ybCjUMHX", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1982-11-02T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1984-12-05T00:00:00Z", "expireAt": "1977-09-12T00:00:00Z", "price": 9, "purchaseAt": "1973-08-22T00:00:00Z", "trialPrice": 34}, {"currencyCode": "1SSlMDAH", "currencyNamespace": "rxrJ6Flh", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1972-09-14T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1979-03-15T00:00:00Z", "expireAt": "1994-05-08T00:00:00Z", "price": 44, "purchaseAt": "1976-03-25T00:00:00Z", "trialPrice": 27}, {"currencyCode": "3ikCWY3P", "currencyNamespace": "v4IiQf6w", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1991-07-15T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1994-02-25T00:00:00Z", "expireAt": "1977-05-04T00:00:00Z", "price": 25, "purchaseAt": "1980-12-01T00:00:00Z", "trialPrice": 65}], "v4CFVwcI": [{"currencyCode": "YfX1gbvF", "currencyNamespace": "o8zBH2g1", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1996-04-03T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1983-04-09T00:00:00Z", "expireAt": "1987-09-25T00:00:00Z", "price": 64, "purchaseAt": "1999-01-02T00:00:00Z", "trialPrice": 35}, {"currencyCode": "p7F8ok1f", "currencyNamespace": "krrJaq5u", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1995-06-09T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1982-05-24T00:00:00Z", "expireAt": "1972-11-17T00:00:00Z", "price": 2, "purchaseAt": "1985-03-06T00:00:00Z", "trialPrice": 81}, {"currencyCode": "3qgk0TH5", "currencyNamespace": "XJbdU6uE", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1978-11-25T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-10-26T00:00:00Z", "expireAt": "1981-04-08T00:00:00Z", "price": 39, "purchaseAt": "1973-08-05T00:00:00Z", "trialPrice": 68}], "Cld63mnn": [{"currencyCode": "KcKkwfVB", "currencyNamespace": "obJ8XIl3", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1975-01-12T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1971-08-07T00:00:00Z", "expireAt": "1971-08-03T00:00:00Z", "price": 15, "purchaseAt": "1982-05-10T00:00:00Z", "trialPrice": 7}, {"currencyCode": "RU8cFODM", "currencyNamespace": "BQGTaPQx", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1998-11-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1982-05-10T00:00:00Z", "expireAt": "1982-07-15T00:00:00Z", "price": 13, "purchaseAt": "1996-08-30T00:00:00Z", "trialPrice": 63}, {"currencyCode": "f9ADS0HU", "currencyNamespace": "pCgTv0fY", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1990-02-18T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1979-10-14T00:00:00Z", "expireAt": "1977-10-04T00:00:00Z", "price": 78, "purchaseAt": "1991-07-28T00:00:00Z", "trialPrice": 64}]}, "saleConfig": {"currencyCode": "CAGkTyoK", "price": 92}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "180XrR25", "stackable": false, "status": "ACTIVE", "tags": ["UfUIyOlI", "lNgPfUgQ", "P9uC2KSs"], "targetCurrencyCode": "pc1lyRPR", "targetNamespace": "BTKrs8SW", "thumbnailUrl": "lS08OFhm", "useCount": 94}' \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'YUCNDpY6' \
    --appId '9szLRbfe' \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'Gl97qSsw' \
    --baseAppId 'wvF7BtmL' \
    --categoryPath 'OvTVrNhb' \
    --features '5knMRtmS' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '92' \
    --offset '30' \
    --region 'aHhKg7W2' \
    --sortBy '["displayOrder:asc", "displayOrder:desc", "name:asc"]' \
    --storeId '4FBTZ5k8' \
    --tags 'M3Pxn4OG' \
    --targetNamespace 'mCS4qTGy' \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["gDBJat4Q", "0ftsGVjc", "apxK2kN7"]' \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'krzkjg2z' \
    --itemIds 'mW3DIKE5' \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '7fQsCJmf' \
    --sku '1wm5huDq' \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Nlw0jit7' \
    --populateBundle 'false' \
    --region 'BrkrVVse' \
    --storeId 'd6SunGmZ' \
    --sku 'WnhU4dZZ' \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'nV8SAedQ' \
    --region 'XQX6vb1j' \
    --storeId 'bfmSSabI' \
    --itemIds 'jPpIb6Dz' \
    --userId 'edtlRgaJ' \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'oPmsY08G' \
    --sku 'ALh3RqZp' \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["H3McyFxE", "0SkmtzvB", "vRKMN3wO"]' \
    --storeId 'JfEhm4NW' \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'JLeNqBIQ' \
    --region 'Oz0JSMIr' \
    --storeId 'zHsr7QHf' \
    --itemIds 'XUroNm4z' \
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
    --platform '3suOO2Pf' \
    --userId 'eKipkuDS' \
    --body '{"itemIds": ["2wSdAHzw", "RxRlRrA0", "XE18TLut"]}' \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Txd4VSHU' \
    --body '{"changes": [{"itemIdentities": ["kv4pvems", "ZvpFSgPR", "RPLiKy5u"], "itemIdentityType": "ITEM_SKU", "regionData": {"MnXwsFFk": [{"currencyCode": "vklzrygc", "currencyNamespace": "P3luK6XB", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1986-11-04T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1982-07-17T00:00:00Z", "discountedPrice": 91, "expireAt": "1997-01-01T00:00:00Z", "price": 7, "purchaseAt": "1990-04-26T00:00:00Z", "trialPrice": 33}, {"currencyCode": "tcjETVSh", "currencyNamespace": "7WFI9tOK", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1997-11-06T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1982-07-11T00:00:00Z", "discountedPrice": 99, "expireAt": "1977-10-26T00:00:00Z", "price": 96, "purchaseAt": "1974-10-06T00:00:00Z", "trialPrice": 1}, {"currencyCode": "jhsBFUda", "currencyNamespace": "Iw5oFD6C", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1987-07-11T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1988-12-18T00:00:00Z", "discountedPrice": 28, "expireAt": "1980-02-09T00:00:00Z", "price": 53, "purchaseAt": "1982-12-17T00:00:00Z", "trialPrice": 66}], "owfmYlj0": [{"currencyCode": "Btv5iLfW", "currencyNamespace": "80WBkUey", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1973-12-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1971-10-05T00:00:00Z", "discountedPrice": 18, "expireAt": "1984-07-31T00:00:00Z", "price": 19, "purchaseAt": "1989-12-24T00:00:00Z", "trialPrice": 24}, {"currencyCode": "OZ0xyP7z", "currencyNamespace": "QlwgvENS", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1985-09-30T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1995-08-02T00:00:00Z", "discountedPrice": 3, "expireAt": "1988-09-10T00:00:00Z", "price": 84, "purchaseAt": "1988-10-19T00:00:00Z", "trialPrice": 35}, {"currencyCode": "bmwSq3ms", "currencyNamespace": "p38en84X", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1988-06-10T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1992-04-28T00:00:00Z", "discountedPrice": 3, "expireAt": "1984-01-19T00:00:00Z", "price": 65, "purchaseAt": "1997-04-05T00:00:00Z", "trialPrice": 7}], "FRPxDYAo": [{"currencyCode": "TDxhFPDC", "currencyNamespace": "jplaR3Ai", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1987-05-21T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1973-08-12T00:00:00Z", "discountedPrice": 37, "expireAt": "1992-11-04T00:00:00Z", "price": 14, "purchaseAt": "1974-07-31T00:00:00Z", "trialPrice": 66}, {"currencyCode": "Kv0ArT5V", "currencyNamespace": "F8EEhELD", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1991-11-26T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1989-08-16T00:00:00Z", "discountedPrice": 9, "expireAt": "1997-02-20T00:00:00Z", "price": 51, "purchaseAt": "1973-02-12T00:00:00Z", "trialPrice": 49}, {"currencyCode": "TmBd8DJW", "currencyNamespace": "EIcdm0bS", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1974-02-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1975-05-11T00:00:00Z", "discountedPrice": 94, "expireAt": "1977-11-11T00:00:00Z", "price": 10, "purchaseAt": "1974-07-11T00:00:00Z", "trialPrice": 32}]}}, {"itemIdentities": ["4XxuADDo", "DbkS2W6S", "85ppVdwl"], "itemIdentityType": "ITEM_SKU", "regionData": {"8gqGfAGO": [{"currencyCode": "NrnbgxZL", "currencyNamespace": "RicBTHy8", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1993-02-22T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1987-04-15T00:00:00Z", "discountedPrice": 38, "expireAt": "1987-05-31T00:00:00Z", "price": 44, "purchaseAt": "1991-02-14T00:00:00Z", "trialPrice": 51}, {"currencyCode": "oq5R8u11", "currencyNamespace": "hls0sty8", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1981-05-24T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1989-07-02T00:00:00Z", "discountedPrice": 75, "expireAt": "1974-03-06T00:00:00Z", "price": 79, "purchaseAt": "1989-11-09T00:00:00Z", "trialPrice": 51}, {"currencyCode": "NJdH59Xc", "currencyNamespace": "27IWPQ6l", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1996-09-10T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-09-23T00:00:00Z", "discountedPrice": 43, "expireAt": "1998-08-27T00:00:00Z", "price": 95, "purchaseAt": "1994-12-31T00:00:00Z", "trialPrice": 85}], "GZDBC5yi": [{"currencyCode": "CthND9se", "currencyNamespace": "igEXDhD9", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1990-02-15T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1974-01-15T00:00:00Z", "discountedPrice": 100, "expireAt": "1991-12-20T00:00:00Z", "price": 100, "purchaseAt": "1973-04-24T00:00:00Z", "trialPrice": 58}, {"currencyCode": "DNvayjz2", "currencyNamespace": "8OHWvFik", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1981-01-26T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1994-06-14T00:00:00Z", "discountedPrice": 12, "expireAt": "1978-05-18T00:00:00Z", "price": 63, "purchaseAt": "1976-09-13T00:00:00Z", "trialPrice": 20}, {"currencyCode": "wdDCldMO", "currencyNamespace": "FRrBFaxi", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1979-07-24T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1975-11-27T00:00:00Z", "discountedPrice": 97, "expireAt": "1987-10-31T00:00:00Z", "price": 73, "purchaseAt": "1986-04-25T00:00:00Z", "trialPrice": 38}], "FZUdAiT3": [{"currencyCode": "nTVprYEF", "currencyNamespace": "n1hXEyoJ", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1996-04-10T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1978-07-08T00:00:00Z", "discountedPrice": 15, "expireAt": "1990-07-05T00:00:00Z", "price": 5, "purchaseAt": "1994-12-23T00:00:00Z", "trialPrice": 25}, {"currencyCode": "Q29BdEZq", "currencyNamespace": "n1A0TrGy", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1977-09-20T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-07-09T00:00:00Z", "discountedPrice": 60, "expireAt": "1992-01-27T00:00:00Z", "price": 54, "purchaseAt": "1990-04-25T00:00:00Z", "trialPrice": 70}, {"currencyCode": "1ATocPh7", "currencyNamespace": "DXpRv7j0", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1983-05-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1975-01-18T00:00:00Z", "discountedPrice": 60, "expireAt": "1979-05-14T00:00:00Z", "price": 68, "purchaseAt": "1975-05-03T00:00:00Z", "trialPrice": 43}]}}, {"itemIdentities": ["gUNbQqTo", "K5eSNxX9", "bCMDQESs"], "itemIdentityType": "ITEM_ID", "regionData": {"LLfLnoOw": [{"currencyCode": "VcWsa93x", "currencyNamespace": "VvMiAded", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1971-03-18T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-11-28T00:00:00Z", "discountedPrice": 96, "expireAt": "1976-11-26T00:00:00Z", "price": 46, "purchaseAt": "1992-03-26T00:00:00Z", "trialPrice": 42}, {"currencyCode": "whCFrU2t", "currencyNamespace": "mAiiNtMV", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1982-12-10T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1988-12-27T00:00:00Z", "discountedPrice": 88, "expireAt": "1994-09-26T00:00:00Z", "price": 98, "purchaseAt": "1988-05-04T00:00:00Z", "trialPrice": 14}, {"currencyCode": "kDv4MC42", "currencyNamespace": "1RL60yxg", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1994-12-13T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1985-02-28T00:00:00Z", "discountedPrice": 53, "expireAt": "1976-08-13T00:00:00Z", "price": 22, "purchaseAt": "1972-10-07T00:00:00Z", "trialPrice": 33}], "pcY6hLfZ": [{"currencyCode": "C075YXLq", "currencyNamespace": "ny9Y8vz3", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1991-09-25T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-04-28T00:00:00Z", "discountedPrice": 97, "expireAt": "1973-03-09T00:00:00Z", "price": 2, "purchaseAt": "1999-01-19T00:00:00Z", "trialPrice": 65}, {"currencyCode": "fmnlnAeB", "currencyNamespace": "A4OB1AD8", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1998-08-21T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1981-02-04T00:00:00Z", "discountedPrice": 85, "expireAt": "1972-05-04T00:00:00Z", "price": 12, "purchaseAt": "1989-02-10T00:00:00Z", "trialPrice": 67}, {"currencyCode": "hzvb6Wjn", "currencyNamespace": "t4BiKVnA", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1979-10-17T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1997-02-04T00:00:00Z", "discountedPrice": 3, "expireAt": "1997-01-14T00:00:00Z", "price": 63, "purchaseAt": "1971-07-30T00:00:00Z", "trialPrice": 59}], "Z3pwaYYv": [{"currencyCode": "JWKu0uCY", "currencyNamespace": "R0haD3Qr", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1988-07-19T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1977-04-06T00:00:00Z", "discountedPrice": 100, "expireAt": "1997-01-10T00:00:00Z", "price": 44, "purchaseAt": "1988-02-28T00:00:00Z", "trialPrice": 100}, {"currencyCode": "1HZ1UYJK", "currencyNamespace": "4ByOXQvh", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1983-11-29T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1989-12-20T00:00:00Z", "discountedPrice": 25, "expireAt": "1982-08-16T00:00:00Z", "price": 25, "purchaseAt": "1987-07-10T00:00:00Z", "trialPrice": 3}, {"currencyCode": "JVbNbEne", "currencyNamespace": "eUuGJqx2", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1979-08-31T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1994-07-23T00:00:00Z", "discountedPrice": 32, "expireAt": "1996-10-24T00:00:00Z", "price": 11, "purchaseAt": "1983-08-11T00:00:00Z", "trialPrice": 13}]}}]}' \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'LOOTBOX' \
    --limit '94' \
    --offset '10' \
    --sortBy 'tKEyrpia' \
    --storeId 'Cqo7Y96X' \
    --keyword 'fyLr9Rsg' \
    --language '1JnP9YcP' \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '35' \
    --offset '37' \
    --sortBy '["displayOrder:desc", "updatedAt", "name:asc"]' \
    --storeId '8K2sSDMH' \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'w00ZCHgX' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'eYut1Tzw' \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '98R23Hx9' \
    --namespace $AB_NAMESPACE \
    --storeId 'm5UVtbB0' \
    --body '{"appId": "tX4OyPn3", "appType": "DEMO", "baseAppId": "f9F7auS8", "boothName": "tD6dHCex", "categoryPath": "87KX1DNg", "clazz": "9EVHFjvF", "displayOrder": 11, "entitlementType": "DURABLE", "ext": {"kNDBpMx1": {}, "bDzEXnoT": {}, "7d99vddU": {}}, "features": ["qOLUAPde", "0YH3kvPO", "sCmrzELJ"], "flexible": true, "images": [{"as": "PPQ8JNFn", "caption": "zf3zrVsC", "height": 69, "imageUrl": "hIP0dZuF", "smallImageUrl": "LQ00hi4e", "width": 45}, {"as": "udbvGlI4", "caption": "L3mMiFdF", "height": 29, "imageUrl": "yCwMKzOy", "smallImageUrl": "aFPf10EN", "width": 60}, {"as": "x6d0Q1Hj", "caption": "bt3qEP1W", "height": 12, "imageUrl": "weSUjrY6", "smallImageUrl": "sdY9RIf4", "width": 70}], "inventoryConfig": {"customAttributes": {"Zz3bBGlF": {}, "9FJBQyYl": {}, "kCp5H0KO": {}}, "serverCustomAttributes": {"90jiuyA2": {}, "GvUaRdF3": {}, "xnh7RdWr": {}}, "slotUsed": 59}, "itemIds": ["tkhuuWEy", "92jZD9MY", "cPTTP2x7"], "itemQty": {"ZBxlYghF": 53, "JFC5OX1H": 45, "p0hjqD8v": 4}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"YQQPEZfP": {"description": "Al12ZC3s", "localExt": {"pQKvhZ2J": {}, "7ST3zmqj": {}, "COnfp2aR": {}}, "longDescription": "bW3cVEdo", "title": "TF2nzt3r"}, "AgcfeWdw": {"description": "WYCq06dD", "localExt": {"7xsQeocI": {}, "7RtorTVu": {}, "NarQXG3F": {}}, "longDescription": "4oXqBOxM", "title": "4wqqoCdt"}, "vrsqu5BB": {"description": "sp6t9MjE", "localExt": {"QauojUvN": {}, "UT1X3A0t": {}, "8FhLPiWE": {}}, "longDescription": "2gGfxx4X", "title": "aFU84ctP"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 24, "duration": 73, "endDate": "1984-05-27T00:00:00Z", "itemId": "giysHcsQ", "itemSku": "h0K4y7Ul", "itemType": "U60JhLEw"}, {"count": 89, "duration": 74, "endDate": "1992-02-12T00:00:00Z", "itemId": "Je34Uq1D", "itemSku": "jZXT4kW7", "itemType": "3w8NvT6B"}, {"count": 76, "duration": 16, "endDate": "1980-03-27T00:00:00Z", "itemId": "AOZK3hNx", "itemSku": "1kEEM1W4", "itemType": "Zj2Ry20q"}], "name": "TI9m8xPD", "odds": 0.22197973603748566, "type": "REWARD", "weight": 22}, {"lootBoxItems": [{"count": 2, "duration": 10, "endDate": "1984-02-09T00:00:00Z", "itemId": "gDVeu96D", "itemSku": "kotFe7NM", "itemType": "h1ZXnbVd"}, {"count": 21, "duration": 99, "endDate": "1997-10-25T00:00:00Z", "itemId": "Sx16dGbk", "itemSku": "pt41vXke", "itemType": "Z3qngzza"}, {"count": 96, "duration": 1, "endDate": "1990-05-26T00:00:00Z", "itemId": "GyHKbMi2", "itemSku": "ygFLHRvi", "itemType": "39MtsVb6"}], "name": "kqPD6Gtu", "odds": 0.34918323761042214, "type": "PROBABILITY_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 54, "duration": 44, "endDate": "1981-06-28T00:00:00Z", "itemId": "I60Jd0Bv", "itemSku": "NogPDrzk", "itemType": "S6CI2FIX"}, {"count": 85, "duration": 34, "endDate": "1978-02-13T00:00:00Z", "itemId": "cMWZMA2s", "itemSku": "DQfPjaLb", "itemType": "Gw9wszvC"}, {"count": 5, "duration": 5, "endDate": "1997-09-25T00:00:00Z", "itemId": "hWLF17uG", "itemSku": "xoN17uHz", "itemType": "HKfJuII5"}], "name": "bRtuYQLW", "odds": 0.7123665037823916, "type": "REWARD", "weight": 38}], "rollFunction": "DEFAULT"}, "maxCount": 39, "maxCountPerUser": 69, "name": "WYHxS02Z", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 53, "endDate": "1986-09-19T00:00:00Z", "itemId": "alcjltwG", "itemSku": "MQFmoKyk", "itemType": "rxn9zuk0"}, {"count": 82, "duration": 86, "endDate": "1998-09-28T00:00:00Z", "itemId": "lTPWIvSu", "itemSku": "6fC4oX4X", "itemType": "Pv6T7WiH"}, {"count": 32, "duration": 82, "endDate": "1997-08-18T00:00:00Z", "itemId": "ktcxh6pH", "itemSku": "MkOirq4T", "itemType": "w82MVerS"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 99, "fixedTrialCycles": 100, "graceDays": 11}, "regionData": {"FHr9BJfV": [{"currencyCode": "0rKmhg3e", "currencyNamespace": "7UCaPjVq", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1979-03-09T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-06-02T00:00:00Z", "expireAt": "1971-03-08T00:00:00Z", "price": 99, "purchaseAt": "1987-07-06T00:00:00Z", "trialPrice": 90}, {"currencyCode": "3OqKnXSA", "currencyNamespace": "fINWZwVp", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1988-11-24T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1975-07-23T00:00:00Z", "expireAt": "1989-07-24T00:00:00Z", "price": 18, "purchaseAt": "1990-04-10T00:00:00Z", "trialPrice": 53}, {"currencyCode": "bLaUIkTO", "currencyNamespace": "rnXRBfKC", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1980-08-17T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1971-07-26T00:00:00Z", "expireAt": "1999-07-17T00:00:00Z", "price": 73, "purchaseAt": "1975-01-04T00:00:00Z", "trialPrice": 51}], "3pjEsNnm": [{"currencyCode": "RSpOsmZV", "currencyNamespace": "rTGWF4mO", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1975-10-03T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1973-11-15T00:00:00Z", "expireAt": "1986-06-25T00:00:00Z", "price": 80, "purchaseAt": "1989-08-11T00:00:00Z", "trialPrice": 2}, {"currencyCode": "S2eXMOCf", "currencyNamespace": "RYAyLPGB", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1997-11-07T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1991-10-02T00:00:00Z", "expireAt": "1992-07-09T00:00:00Z", "price": 75, "purchaseAt": "1989-08-03T00:00:00Z", "trialPrice": 46}, {"currencyCode": "frnm7jTa", "currencyNamespace": "32NgyTEx", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1993-12-01T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1986-11-20T00:00:00Z", "expireAt": "1998-04-27T00:00:00Z", "price": 63, "purchaseAt": "1975-09-14T00:00:00Z", "trialPrice": 33}], "o9iIdW92": [{"currencyCode": "jEHgNVbf", "currencyNamespace": "PR5COFqK", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1989-07-15T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1989-12-26T00:00:00Z", "expireAt": "1981-12-20T00:00:00Z", "price": 57, "purchaseAt": "1982-01-06T00:00:00Z", "trialPrice": 30}, {"currencyCode": "mo867Nte", "currencyNamespace": "jiGmjwmH", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1999-02-19T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1974-05-11T00:00:00Z", "expireAt": "1988-02-16T00:00:00Z", "price": 27, "purchaseAt": "1971-12-15T00:00:00Z", "trialPrice": 25}, {"currencyCode": "JKCjYzqT", "currencyNamespace": "09r6mlkm", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1983-01-25T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1984-02-22T00:00:00Z", "expireAt": "1995-09-18T00:00:00Z", "price": 1, "purchaseAt": "1980-03-17T00:00:00Z", "trialPrice": 90}]}, "saleConfig": {"currencyCode": "CzeLvEeu", "price": 43}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "6u1zmPct", "stackable": true, "status": "ACTIVE", "tags": ["k033BRs0", "ygB7gi9x", "pD7c6Al9"], "targetCurrencyCode": "50VMktAV", "targetNamespace": "J2f0tOLY", "thumbnailUrl": "G9kMNBZT", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Mew1a34H' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "REWARD", "CAMPAIGN"]' \
    --force 'false' \
    --storeId 'NqQ4nfwL' \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'Rh8IuBWx' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 44, "orderNo": "fOpLIj5h"}' \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'otIflHsc' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '83nQ3EYj' \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '9bArd8TN' \
    --namespace $AB_NAMESPACE \
    --storeId 'eiSvnqkT' \
    --body '{"carousel": [{"alt": "7QASksfU", "previewUrl": "4MrVuvwS", "thumbnailUrl": "vyQ1f9oo", "type": "video", "url": "pAoMOjgi", "videoSource": "vimeo"}, {"alt": "U8jzG5Fa", "previewUrl": "elJ0j2xj", "thumbnailUrl": "WwUk7JXA", "type": "video", "url": "JDmpBWL9", "videoSource": "vimeo"}, {"alt": "IXcOaVcJ", "previewUrl": "kE9z46Ut", "thumbnailUrl": "K3Pkx0Nt", "type": "video", "url": "uhPOifYH", "videoSource": "youtube"}], "developer": "tBhipKll", "forumUrl": "JBtOXRbp", "genres": ["Strategy", "Sports", "Adventure"], "localizations": {"bY1wpAFa": {"announcement": "nT5Tm2th", "slogan": "csGHv1s6"}, "dVbTwxXw": {"announcement": "mD7XECoc", "slogan": "6CprzABs"}, "0UWJLb6g": {"announcement": "BnfGvOaG", "slogan": "gJ9cTNuS"}}, "platformRequirements": {"bQjDsgc3": [{"additionals": "R0yAADE4", "directXVersion": "nbN126fD", "diskSpace": "eN5XVF3l", "graphics": "0isu6XY0", "label": "J2aNE32P", "osVersion": "6sVOsHtv", "processor": "rzsQoDvW", "ram": "qikqwUY5", "soundCard": "vswAedOV"}, {"additionals": "uXUukOTB", "directXVersion": "m2svCB8c", "diskSpace": "Y4JBvWP9", "graphics": "tiNGvXZD", "label": "gYBsXarW", "osVersion": "1P1WwByr", "processor": "wOaJeFRv", "ram": "TfUtV1Ea", "soundCard": "j0bl90XJ"}, {"additionals": "BboiGVIG", "directXVersion": "tyqwpuy4", "diskSpace": "uc4J6PAJ", "graphics": "L6IBvSFK", "label": "HIMnRVGq", "osVersion": "CLqMYtho", "processor": "ABb6YhGG", "ram": "S7p4JGdt", "soundCard": "TgoSRP9S"}], "rLy79cUf": [{"additionals": "UDv6G5pi", "directXVersion": "7j7xRkWt", "diskSpace": "Ysz6eSta", "graphics": "FW3BaxJx", "label": "P5Qc3ZOE", "osVersion": "x8E5nIJ5", "processor": "G39RELQn", "ram": "rafwR8RF", "soundCard": "3Gjv9Dyv"}, {"additionals": "xi5AXja6", "directXVersion": "Pf3GXXwX", "diskSpace": "ScslzIpL", "graphics": "NVf4264W", "label": "LTQUDUoL", "osVersion": "v00hkduX", "processor": "mlcQWlth", "ram": "78o271w8", "soundCard": "96aA9xoZ"}, {"additionals": "aTGcIcFg", "directXVersion": "XRRihGy1", "diskSpace": "SVwTkgM5", "graphics": "vNvlim7Z", "label": "KhWxq9ea", "osVersion": "VQf8C5Ro", "processor": "liQkKqeP", "ram": "wnB706zk", "soundCard": "dVVEliAm"}], "GGCaxyEH": [{"additionals": "LRZWyXRj", "directXVersion": "fAFlM5L7", "diskSpace": "ZSORPf0v", "graphics": "4IC7SJJe", "label": "Oo8u9wJ2", "osVersion": "modChIE7", "processor": "ql1YxIEc", "ram": "2bRXUPQw", "soundCard": "Ltw018Mk"}, {"additionals": "9vViehCg", "directXVersion": "OmLMG7g1", "diskSpace": "FZYHACiE", "graphics": "LbQ7t0Tw", "label": "NoKLO34A", "osVersion": "HWmY1N3K", "processor": "JZRHqfzz", "ram": "zhywv51c", "soundCard": "GQo8x1L7"}, {"additionals": "FGx7GBOV", "directXVersion": "16txBzLv", "diskSpace": "t3xdvpBi", "graphics": "b0YcHNDS", "label": "aQMzS8yJ", "osVersion": "7eEmmSf0", "processor": "ai4UefMi", "ram": "S4NBLVp1", "soundCard": "p1xqN2JF"}]}, "platforms": ["Linux", "Linux", "MacOS"], "players": ["CrossPlatformMulti", "MMO", "MMO"], "primaryGenre": "Indie", "publisher": "hKKrjX2q", "releaseDate": "1996-04-17T00:00:00Z", "websiteUrl": "VHhRQ3w4"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'ZDWPsz33' \
    --namespace $AB_NAMESPACE \
    --storeId 'BHdeAqmp' \
    --body '{"featuresToCheck": ["IAP", "DLC", "ENTITLEMENT"]}' \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'qEfxDm1S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'cxX2zva3' \
    --namespace $AB_NAMESPACE \
    --storeId 'RKR9S7C9' \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'HnTBIyT3' \
    --itemId 'k5O0fZ6f' \
    --namespace $AB_NAMESPACE \
    --storeId '5CElQhNY' \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'jKSgfJeL' \
    --itemId 'G2376510' \
    --namespace $AB_NAMESPACE \
    --storeId 'Lg8ywHW9' \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'w5pz3oY6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'HRLrT7V9' \
    --populateBundle 'true' \
    --region 'lUE6zVAj' \
    --storeId 'YaFj7JDx' \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'HuYntYeY' \
    --namespace $AB_NAMESPACE \
    --storeId 'wp2LQ6Yn' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 55, "code": "JYGYeVev", "comparison": "isGreaterThan", "name": "pouSFVMy", "predicateType": "SeasonTierPredicate", "value": "9CdhXXGY", "values": ["y5Y4Tgcz", "trMqCd7A", "waVDGs7x"]}, {"anyOf": 33, "code": "EOzt0rll", "comparison": "isGreaterThan", "name": "2Le4jTNZ", "predicateType": "SeasonPassPredicate", "value": "fchtj7OG", "values": ["hGMd5cNK", "6eMCs8iy", "N5Flyv9v"]}, {"anyOf": 46, "code": "hDSat4uw", "comparison": "includes", "name": "oR2nxaqz", "predicateType": "StatisticCodePredicate", "value": "1E0CVcK6", "values": ["yv1emwk6", "SxB3gG4R", "TTv9pxCQ"]}]}, {"operator": "and", "predicates": [{"anyOf": 6, "code": "9NlQCgl6", "comparison": "isLessThanOrEqual", "name": "rfylmQ4u", "predicateType": "SeasonPassPredicate", "value": "gipiFu83", "values": ["rOl2aOyR", "obuVTcag", "bpLpTujR"]}, {"anyOf": 65, "code": "xulVSxRE", "comparison": "excludes", "name": "ZUqoZz42", "predicateType": "SeasonPassPredicate", "value": "wGriJnAr", "values": ["JPVLJSFR", "NtQprvyK", "0Hm0XIpu"]}, {"anyOf": 93, "code": "82JnaGiZ", "comparison": "isGreaterThanOrEqual", "name": "4W0RMJwf", "predicateType": "StatisticCodePredicate", "value": "gI8DMRZ9", "values": ["bzQL0WJe", "4nXf1aL9", "frXl28Xi"]}]}, {"operator": "or", "predicates": [{"anyOf": 64, "code": "MerPidkP", "comparison": "isGreaterThan", "name": "ltvg73jR", "predicateType": "StatisticCodePredicate", "value": "7CrXBjwS", "values": ["eHjXZW61", "mE6oX4eL", "6cds1PAA"]}, {"anyOf": 39, "code": "Rzvt03hi", "comparison": "isGreaterThan", "name": "KyuOj9SM", "predicateType": "SeasonTierPredicate", "value": "DExcMwwJ", "values": ["0yIpHhDC", "taKi7C7e", "KaftchP7"]}, {"anyOf": 97, "code": "zmvrq4Lp", "comparison": "isGreaterThanOrEqual", "name": "4vlaqf9Y", "predicateType": "StatisticCodePredicate", "value": "KJ5QL8rV", "values": ["nMFwM9ts", "YWLKJowe", "taVc61TY"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'mTAXBY7p' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "DLC", "DLC"]' \
    --storeId 'yqiwTVsp' \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '1vQvcLFZ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "CrhwA2g3"}' \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name '4Fva4gwp' \
    --offset '64' \
    --tag 'IRw3bXSH' \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IhblrXRd", "name": "f2IIW9RZ", "status": "INACTIVE", "tags": ["f2UdVZD2", "jTlpcgIS", "mChPG7KG"]}' \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '4syGzQLA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'ZNqdtLHE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4PgpdyO8", "name": "brBkEauS", "status": "ACTIVE", "tags": ["k2CUCwut", "ciZ6YP7Q", "E86iqIEi"]}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'IonNkAn9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'tkxUli8m' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '16' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ZesR0UX0' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '0QFHUHwp' \
    --limit '71' \
    --offset '55' \
    --orderNos '["T2xMobQC", "seUpjpIn", "ZLcFmmOt"]' \
    --sortBy 'me0ePkI6' \
    --startTime 'pcdZWrpv' \
    --status 'REFUND_FAILED' \
    --withTotal 'false' \
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
    --orderNo 'peXfipgl' \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GNjk7xFB' \
    --body '{"description": "vgkCSzgE"}' \
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
    --body '{"domains": ["xPZ37JOu", "N4XGvdd3", "tfxbkXnJ"]}' \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'IMgXxSFP' \
    --externalId 'GlGqKNSJ' \
    --limit '13' \
    --notificationSource 'STRIPE' \
    --notificationType 'k6389u34' \
    --offset '8' \
    --paymentOrderNo 'I51y38EY' \
    --startDate 'Qszn7bZW' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'M0m52lfD' \
    --limit '91' \
    --offset '30' \
    --status 'AUTHORISED' \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "qF0Fs8I7", "currencyNamespace": "bBNnWV5V", "customParameters": {"EdwBSxC6": {}, "wp1nrsXR": {}, "vmZMW1yW": {}}, "description": "KaEStPy8", "extOrderNo": "5mSpdKJa", "extUserId": "nKeL0177", "itemType": "COINS", "language": "tVIi_DnDT", "metadata": {"5ygzLznX": "foQBeP4Z", "QLGEBqt2": "XLQzPWok", "EJx7zeA8": "PHtZaHKi"}, "notifyUrl": "h8nxv6x2", "omitNotification": true, "platform": "rLD3YUmP", "price": 12, "recurringPaymentOrderNo": "6EaKqLjI", "region": "ecAvHdzM", "returnUrl": "CBT1B9Ap", "sandbox": false, "sku": "dDRZMkPQ", "subscriptionId": "WFhfBJZP", "targetNamespace": "UtPe8WuD", "targetUserId": "LgTLfVD1", "title": "YuHDelvg"}' \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'a56m53jZ' \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0X0bLOAo' \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BH9pDhSb' \
    --body '{"extTxId": "wT8eBQ5o", "paymentMethod": "ajHTmxjE", "paymentProvider": "ADYEN"}' \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4VCNnt6F' \
    --body '{"description": "1sCzZKT6"}' \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cqWvN8NF' \
    --body '{"amount": 99, "currencyCode": "p6hgpdVK", "notifyType": "CHARGE", "paymentProvider": "PAYPAL", "salesTax": 60, "vat": 57}' \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'octJnQCh' \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'QlEghiVv' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "mKOyC5kl", "serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'fOtCwrty' \
    --body '{"delegationToken": "buWQsquF", "sandboxId": "e5r8YbP0"}' \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["Nintendo", "Xbox", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["Nintendo", "Twitch", "Twitch"]}' \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'FvWbNzNO' \
    --limit '63' \
    --offset '12' \
    --source 'DLC' \
    --startTime 'll0PycmO' \
    --status 'SUCCESS' \
    --transactionId 'ejyCwJkr' \
    --userId 'LCoWlDhw' \
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
    --body '{"appConfig": {"appName": "mgcj5RhZ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "lCE5juWo"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCert' test.out

#- 196 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "idQ6yijW", "eventTopic": "1CGQ7qLj", "maxAwarded": 20, "maxAwardedPerUser": 99, "namespaceExpression": "BhsSube5", "rewardCode": "aisEiMfh", "rewardConditions": [{"condition": "rUPPu5qA", "conditionName": "au3nl7YJ", "eventName": "0OJiVrJt", "rewardItems": [{"duration": 75, "endDate": "1980-05-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5elEDBTi", "quantity": 80, "sku": "pouafSxj"}, {"duration": 100, "endDate": "1999-08-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "p5A64I4z", "quantity": 38, "sku": "Nn24oxGM"}, {"duration": 85, "endDate": "1979-12-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iRWT3gRf", "quantity": 56, "sku": "Xt4Gg2Ce"}]}, {"condition": "CmgPnDKO", "conditionName": "VvwdZgw6", "eventName": "Ok6vYllJ", "rewardItems": [{"duration": 98, "endDate": "1988-12-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "09kZg68L", "quantity": 46, "sku": "9wzSvnHK"}, {"duration": 27, "endDate": "1988-01-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aDSO2wAq", "quantity": 29, "sku": "XMlRl8he"}, {"duration": 19, "endDate": "1992-12-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "n2JiEZcu", "quantity": 16, "sku": "zkVWKqep"}]}, {"condition": "b7plVYhE", "conditionName": "vtJmsHXs", "eventName": "T3LJvYpj", "rewardItems": [{"duration": 78, "endDate": "1973-05-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2NenLuFn", "quantity": 65, "sku": "yHznQddh"}, {"duration": 26, "endDate": "1988-04-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IekcIHeP", "quantity": 14, "sku": "S3aRqq8c"}, {"duration": 36, "endDate": "1977-06-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TSiJZptQ", "quantity": 31, "sku": "fgLT2t0o"}]}], "userIdExpression": "zPUfxeK5"}' \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'OwXaVdBv' \
    --limit '14' \
    --offset '29' \
    --sortBy '["rewardCode", "namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 197 'QueryRewards' test.out

#- 198 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'ExportRewards' test.out

#- 199 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 199 'ImportRewards' test.out

#- 200 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '3ScAI6MP' \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'pQdNWy3h' \
    --body '{"description": "fGSsHT1y", "eventTopic": "ZR3VCqYr", "maxAwarded": 96, "maxAwardedPerUser": 21, "namespaceExpression": "6CHAsVoe", "rewardCode": "qA2TpusG", "rewardConditions": [{"condition": "xa6f604E", "conditionName": "vPMPPBhI", "eventName": "569hmSw7", "rewardItems": [{"duration": 70, "endDate": "1991-12-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UiwTrWkn", "quantity": 12, "sku": "Et9kat2D"}, {"duration": 60, "endDate": "1992-05-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kkRKgUVT", "quantity": 94, "sku": "jr4NOUOx"}, {"duration": 96, "endDate": "1990-04-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aBYscezg", "quantity": 89, "sku": "ioirmkig"}]}, {"condition": "de09ggg9", "conditionName": "fZlhy37T", "eventName": "7Wyek3tX", "rewardItems": [{"duration": 96, "endDate": "1971-12-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VHGgyen8", "quantity": 72, "sku": "hxQQVIdp"}, {"duration": 79, "endDate": "1999-08-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4AaeaTV4", "quantity": 22, "sku": "ahpE5f9X"}, {"duration": 18, "endDate": "1978-10-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "xiWpI0si", "quantity": 63, "sku": "Nr0Afkgm"}]}, {"condition": "swvTkHrO", "conditionName": "AkWd1EhY", "eventName": "RvH9JzTA", "rewardItems": [{"duration": 60, "endDate": "1999-01-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pJ6XTo0c", "quantity": 39, "sku": "Mz6cgudb"}, {"duration": 12, "endDate": "1983-05-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lqwycMHG", "quantity": 45, "sku": "oAuRisJw"}, {"duration": 35, "endDate": "1992-11-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wKUKygsc", "quantity": 77, "sku": "SqcO9tgc"}]}], "userIdExpression": "kCI9Tuxu"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'xFlUrdUb' \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '2so7ZQaI' \
    --body '{"payload": {"BwXnXd5m": {}, "nEkIFmFh": {}, "GnEN8m42": {}}}' \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '6YCpzgnY' \
    --body '{"conditionName": "hHNxbnHG", "userId": "bmQiynM3"}' \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '0bQaNYY7' \
    --limit '40' \
    --offset '60' \
    --start 'ifJkaoh3' \
    --storeId 'hjLh7fwG' \
    --viewId '1O3ENLCE' \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'gNwIK9NE' \
    --body '{"active": true, "displayOrder": 70, "endDate": "1986-07-23T00:00:00Z", "ext": {"RQPM5i8g": {}, "l3XEJFLX": {}, "v57Q1dgg": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 26, "itemCount": 12, "rule": "LOOP"}, "items": [{"id": "JtrEZNYw", "sku": "qpiheUpO"}, {"id": "hKNLoPSA", "sku": "DSk3EJZK"}, {"id": "ws6b1dvp", "sku": "X45Iv1VC"}], "localizations": {"JyQuQaoV": {"description": "wiWe0Rox", "localExt": {"AgqSoB83": {}, "T4m2VXGE": {}, "FwKPE0fS": {}}, "longDescription": "58huKm1u", "title": "OJr1aCmQ"}, "JiP91RY7": {"description": "7hotiP7J", "localExt": {"IyQXt0ON": {}, "HWdwfw00": {}, "qObWU8D5": {}}, "longDescription": "QGyZ7CvO", "title": "aRUmSniR"}, "cdAHd4CD": {"description": "eVoCVWA4", "localExt": {"6B1tIgaZ": {}, "qWkfv8mi": {}, "g7KcpqNV": {}}, "longDescription": "qJGVjLdY", "title": "ukA6axYJ"}}, "name": "ipeFLOOr", "rotationType": "CUSTOM", "startDate": "1980-07-14T00:00:00Z", "viewId": "YtjGSSPM"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ePyzN79Z' \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'A8iHay0Z' \
    --storeId 'YXqBSICs' \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'DJ3NxwD8' \
    --storeId 'PP5EXGtq' \
    --body '{"active": true, "displayOrder": 75, "endDate": "1988-04-04T00:00:00Z", "ext": {"ZulBnQFo": {}, "WgW8e6rQ": {}, "HR8GDEN5": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 99, "itemCount": 5, "rule": "LOOP"}, "items": [{"id": "jEScnrvl", "sku": "Nh7GWOxR"}, {"id": "6detteU7", "sku": "DBQf6ptO"}, {"id": "eP8sHz5k", "sku": "TzD3UnDz"}], "localizations": {"raqd296L": {"description": "faWatDdo", "localExt": {"DkKmDC28": {}, "xGLtLIBH": {}, "NJVjn7R5": {}}, "longDescription": "ywabhYCJ", "title": "r2VlKIBY"}, "LfMnAW9F": {"description": "j6gZ7nfE", "localExt": {"mbGjin6C": {}, "cAqCEfOu": {}, "YQR2IoBK": {}}, "longDescription": "ycm4IDQY", "title": "1Cd8K0Ru"}, "D0SlOK7t": {"description": "3ibxFePr", "localExt": {"tCMkXxM3": {}, "85kDd6vh": {}, "Zqfn5t9J": {}}, "longDescription": "D9Z4Dz7z", "title": "FnYUwsoO"}}, "name": "pbQdBaU1", "rotationType": "FIXED_PERIOD", "startDate": "1997-08-28T00:00:00Z", "viewId": "xCM2Dkzp"}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'X8PmQlmR' \
    --storeId '4wb1sVrG' \
    > test.out 2>&1
eval_tap $? 210 'DeleteSection' test.out

#- 211 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'ListStores' test.out

#- 212 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "YUU6HAze", "defaultRegion": "L0crCk5r", "description": "5kd46t6k", "supportedLanguages": ["fDJBvjZp", "1gKcPU9j", "MuwlmFEV"], "supportedRegions": ["odOpP2MR", "bPITk1IY", "PaatgDEw"], "title": "7176BG1S"}' \
    > test.out 2>&1
eval_tap $? 212 'CreateStore' test.out

#- 213 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'ITEM' \
    > test.out 2>&1
eval_tap $? 213 'GetCatalogDefinition' test.out

#- 214 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'DownloadCSVTemplates' test.out

#- 215 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["LjTjyxri", "sXNXgfUu", "gBKMqjUu"], "idsToBeExported": ["H3BJBOcV", "LND1uqTu", "wR0yyOaM"], "storeId": "zkQxmGcB"}' \
    > test.out 2>&1
eval_tap $? 215 'ExportStoreByCSV' test.out

#- 216 ImportStore
eval_tap 0 216 'ImportStore # SKIP deprecated' test.out

#- 217 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 217 'GetPublishedStore' test.out

#- 218 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'DeletePublishedStore' test.out

#- 219 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 219 'GetPublishedStoreBackup' test.out

#- 220 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'RollbackPublishedStore' test.out

#- 221 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'XglKssLd' \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '4O1HDC98' \
    --body '{"defaultLanguage": "IGww7lJ4", "defaultRegion": "IeEWVxQl", "description": "3JNZRlqi", "supportedLanguages": ["ly18BTfw", "8nRrMKIq", "F8Sno4xv"], "supportedRegions": ["WfEzNcBG", "OK82lh2s", "x1S9o2Ws"], "title": "V52CHilM"}' \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'QBnzRmec' \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'ugmZurke' \
    --action 'CREATE' \
    --itemSku 'EFlspVrC' \
    --itemType 'APP' \
    --limit '78' \
    --offset '49' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt:desc", "updatedAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd '8I2YRGZI' \
    --updatedAtStart '4NIYPl3B' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'Geumhcdd' \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'kiaduZ94' \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'lHaoHU40' \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'uEl81ZiS' \
    --action 'DELETE' \
    --itemSku 'L4xEHseQ' \
    --itemType 'SUBSCRIPTION' \
    --selected 'false' \
    --type 'SECTION' \
    --updatedAtEnd '5koQi5gF' \
    --updatedAtStart 'A4U2ewnY' \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'h8LYxUgz' \
    --action 'DELETE' \
    --itemSku '14hYXUj4' \
    --itemType 'EXTENSION' \
    --type 'VIEW' \
    --updatedAtEnd 'MXm72aO6' \
    --updatedAtStart 'tdwhVP5O' \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'H7lV3jGM' \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '5ER24YdS' \
    --namespace $AB_NAMESPACE \
    --storeId 'JE1fKvmR' \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'cFMaJRlb' \
    --namespace $AB_NAMESPACE \
    --storeId 'N6WJg50b' \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '7C0x6SoM' \
    --targetStoreId '22Y6JN68' \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'FoIciglj' \
    --end 'zc5OddH1' \
    --limit '69' \
    --offset '14' \
    --sortBy 'QDNoA8hm' \
    --start 'q798D1jR' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'GU63PtBP' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'CqTZ8xSS' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'npHynsbn' \
    --limit '23' \
    --offset '16' \
    --sku '3Av4oZ4H' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId '2QZsO1OB' \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gte371Du' \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '95Iv8O9c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'qlQsw0oU' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "mQj79uI8"}' \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'hBOvYGJ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'lalq7Vue' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 48, "orderNo": "R4UMP2wx"}' \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 58, "currencyCode": "1iFAQCcx", "expireAt": "1977-05-11T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "12b7P602", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "XLjpPZyg", "entitlementOrigin": "Other", "itemIdentity": "7J5AmADF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "6afFaOyx"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 35, "currencyCode": "mFxiGGtC", "expireAt": "1979-10-25T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "pRlvDHT8", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "povnIKcT", "entitlementOrigin": "Playstation", "itemIdentity": "lsgnvMYQ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "Q3txUjHi"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 85, "currencyCode": "EmssgFN8", "expireAt": "1974-10-30T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "tClZe4uc", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "NZ4Dv8Nl", "entitlementOrigin": "Other", "itemIdentity": "vM911Ijz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "cNYolZYT"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "WCQ0KegF"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 59, "currencyCode": "c5vXGZe8", "expireAt": "1971-09-13T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "N6GLmTeV", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "1bZwtgU2", "entitlementOrigin": "System", "itemIdentity": "m5yoSoMC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "n3ypYFSj"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 96, "currencyCode": "74mJT1NU", "expireAt": "1983-12-02T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "npN6WzCc", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "7UmHlF1H", "entitlementOrigin": "Oculus", "itemIdentity": "42p0RSvG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "sMQ8Gyjh"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 25, "currencyCode": "ANMJbmC8", "expireAt": "1988-03-26T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "zIu5SFIR", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "W2tClRqc", "entitlementOrigin": "Epic", "itemIdentity": "MijiTTnH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 75, "entitlementId": "vnjz4GvT"}, "type": "CREDIT_WALLET"}], "userId": "UNTp03Ex"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 93, "currencyCode": "uyZ3o7LR", "expireAt": "1989-06-16T00:00:00Z"}, "debitPayload": {"count": 9, "currencyCode": "7pbwb3Hy", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "lCZ4NFpG", "entitlementOrigin": "Oculus", "itemIdentity": "uEDH0Ah8", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "8nRlVLuC"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 29, "currencyCode": "AWUt4nm7", "expireAt": "1979-10-24T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "DerP5Bbz", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "U2OJXset", "entitlementOrigin": "Twitch", "itemIdentity": "nAPmmzbf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 15, "entitlementId": "krlnrPYT"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 56, "currencyCode": "mxq9hF86", "expireAt": "1981-02-14T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "c8GyPWIz", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "6dcpwqpN", "entitlementOrigin": "Steam", "itemIdentity": "NXNDnFgH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "hTnOcklR"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "6C1qqF4G"}], "metadata": {"QiVMbvCF": {}, "omxbVliX": {}, "wDAq315u": {}}, "needPreCheck": false, "transactionId": "243lrwAf", "type": "ZmWe9QWA"}' \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '40' \
    --status 'INIT' \
    --type 'zzyQPqA4' \
    --userId 'SCHj8inY' \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'KmUUFEBH' \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'v3JzlXc4' \
    --body '{"achievements": [{"id": "ia6oMARc", "value": 36}, {"id": "k4t3whNg", "value": 31}, {"id": "TLPjtV43", "value": 48}], "steamUserId": "Foi1xxYt"}' \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Si1GAYDQ' \
    --xboxUserId 'BJFLNG16' \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'EckMj4el' \
    --body '{"achievements": [{"id": "VNTnhwU4", "percentComplete": 29}, {"id": "6pWfqywr", "percentComplete": 77}, {"id": "UJI9o9qo", "percentComplete": 3}], "serviceConfigId": "aQvXXPCH", "titleId": "dmVqp2ag", "xboxUserId": "AJ6PwzGH"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Myu4N1gQ' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'BemkyxNi' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'SfxSG22w' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'IjYugmMo' \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'K4VoBkTp' \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'hsMuiZsT' \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'km2asqDD' \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ilAYGgzd' \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'GBHsi32J' \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'RhCmgax8' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'jlVo5wOt' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '6HegizHT' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId 'fJfTd0Nb' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'VxQzoAbs' \
    --features '["kt17wI2e", "diWBtcyD", "OXrqMIEV"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["WD5yyxDc", "XlmKZOJN", "RJkWFHT3"]' \
    --limit '25' \
    --offset '28' \
    --origin 'Epic' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'HopriHVw' \
    --body '[{"collectionId": "aGeICepE", "endDate": "1998-01-08T00:00:00Z", "grantedCode": "ipZSQMD6", "itemId": "3rbBihzp", "itemNamespace": "1v7pESbh", "language": "QXSr_364", "metadata": {"DDUbfbyH": {}, "VAs4WPT9": {}, "IBSyQGHG": {}}, "origin": "Twitch", "quantity": 99, "region": "LHAEq24n", "source": "REDEEM_CODE", "startDate": "1995-05-11T00:00:00Z", "storeId": "A4m5MlPF"}, {"collectionId": "y7OxNgpo", "endDate": "1973-05-04T00:00:00Z", "grantedCode": "bONfKEYY", "itemId": "w258nc0l", "itemNamespace": "Jvd3Cnjf", "language": "FQwZ_YhEV", "metadata": {"VmReVnsR": {}, "o6yiKZ85": {}, "nKWsMehP": {}}, "origin": "GooglePlay", "quantity": 38, "region": "qSgjBk8h", "source": "GIFT", "startDate": "1999-12-19T00:00:00Z", "storeId": "0aZ5m18B"}, {"collectionId": "479RqfeR", "endDate": "1974-10-20T00:00:00Z", "grantedCode": "bDmLYdz8", "itemId": "xdahK4BI", "itemNamespace": "idWylo08", "language": "jx-bMzY-yd", "metadata": {"Y6HzaT4D": {}, "CktEISEt": {}, "Z7OBLMLZ": {}}, "origin": "Other", "quantity": 41, "region": "ZwxIEURe", "source": "IAP", "startDate": "1983-08-26T00:00:00Z", "storeId": "MNuP9wPe"}]' \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'FEvJ5jMI' \
    --activeOnly 'false' \
    --appId 'N7BHIhtw' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'VsmV98ZE' \
    --activeOnly 'false' \
    --limit '4' \
    --offset '29' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'RLoalUxm' \
    --ids '["tB0OF0PF", "N3jaHsL0", "VbjAW80V"]' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nBHahoUw' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '7hpMgYGc' \
    --itemId '1ytKivqI' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'o12s4dG8' \
    --ids '["BUakUKdd", "ga0Kw3pt", "kzIDjavM"]' \
    --platform 'kBZOrS9J' \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'NSCt0ZB1' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'Nv1A7EDE' \
    --sku 'B2EbgMyD' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gdx2aZtz' \
    --appIds '["Fsubclaw", "ajtB3DJD", "V9hcEfV4"]' \
    --itemIds '["TkLqJsIJ", "cvR4xXnN", "vTanqfLP"]' \
    --platform 'WQPEGgx9' \
    --skus '["26kInG4p", "KpEtxkyp", "KJbbS9x4"]' \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '6sdEsF1p' \
    --platform '738OCvOi' \
    --itemIds '["zLU65zcT", "Xb7eufFh", "p3mWfIVE"]' \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'b8APy2P5' \
    --appId 'uLhomChl' \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'bRmNhKZv' \
    --entitlementClazz 'MEDIA' \
    --platform 'EpM82J6j' \
    --itemId 'ETB6K9Ud' \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'zGouSbP1' \
    --ids '["sgdW2fej", "QyiIDgA4", "DTQA1Qgf"]' \
    --platform 'aWQiqzTt' \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'WqoCoJjN' \
    --entitlementClazz 'MEDIA' \
    --platform 'JJhfde3e' \
    --sku 'ImfcuCoH' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Ge8jYvZR' \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'OzI5ESBG' \
    --entitlementIds 'PcsrhAMe' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '2tBSpcoU' \
    --namespace $AB_NAMESPACE \
    --userId 'IeEbSk2N' \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Sm3KlrsT' \
    --namespace $AB_NAMESPACE \
    --userId 'm9tCBeGJ' \
    --body '{"collectionId": "1Fu2Dw4O", "endDate": "1986-07-13T00:00:00Z", "nullFieldList": ["8vh0J6Ql", "GXfZYdi0", "obWERcwr"], "origin": "System", "reason": "CG2Vwd6u", "startDate": "1971-11-04T00:00:00Z", "status": "SOLD", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'eZmKHKj4' \
    --namespace $AB_NAMESPACE \
    --userId 'kAVoZpsK' \
    --body '{"metadata": {"VKFyRJzR": {}, "5b76Dzq2": {}, "xtmLwFrd": {}}, "options": ["Wt2kHtZ6", "Tak62chM", "iYXaifrN"], "platform": "rU9jTFBo", "requestId": "yE566o6U", "useCount": 50}' \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'PFSHNgZC' \
    --namespace $AB_NAMESPACE \
    --userId 'OxW7xQED' \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'NbktIV8q' \
    --namespace $AB_NAMESPACE \
    --userId '1w4gLEOn' \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'JvHNJYmW' \
    --namespace $AB_NAMESPACE \
    --userId '2Qjamirw' \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'RJY7yFDk' \
    --namespace $AB_NAMESPACE \
    --userId 'K0Hd6bek' \
    --body '{"metadata": {"RwKw3znA": {}, "pNfn7O4x": {}, "f6rlGRhf": {}}}' \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'gPVW3Eh3' \
    --namespace $AB_NAMESPACE \
    --userId '8zvlysz8' \
    --body '{"reason": "4SbLOAYD", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'kSco1wum' \
    --namespace $AB_NAMESPACE \
    --userId 'oV7QJdDQ' \
    --quantity '9' \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'd93Nmscb' \
    --namespace $AB_NAMESPACE \
    --userId 'uC8KezAv' \
    --body '{"platform": "UvAqRyhz", "requestId": "l3gcddrV", "useCount": 77}' \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'l78gNFdg' \
    --body '{"duration": 67, "endDate": "1981-07-26T00:00:00Z", "entitlementCollectionId": "HY1NWS78", "entitlementOrigin": "GooglePlay", "itemId": "m1k1W8yO", "itemSku": "ScestPQV", "language": "61Qa0FQ7", "metadata": {"78Z89acO": {}, "9PJ1xVwv": {}, "TAWHaprw": {}}, "order": {"currency": {"currencyCode": "fWSNW4xY", "currencySymbol": "AHBwgkaP", "currencyType": "REAL", "decimals": 70, "namespace": "iDmGo27E"}, "ext": {"2PPLGMTa": {}, "UMh03Udz": {}, "6SanBQeD": {}}, "free": false}, "orderNo": "ieLOkCPk", "origin": "GooglePlay", "overrideBundleItemQty": {"80gHUx9w": 81, "7xAWuaDV": 22, "H6yahKY1": 61}, "quantity": 74, "region": "v9vKYYn3", "source": "OTHER", "startDate": "1985-06-09T00:00:00Z", "storeId": "qgO2jkH9"}' \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'HPB9gkTi' \
    --body '{"code": "o4tKg4jh", "language": "GN_GKkX_Qr", "region": "dKKTiPwl"}' \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'iSf36kFx' \
    --body '{"itemId": "nXIvjUIi", "itemSku": "w2OeeAdI", "quantity": 28}' \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ABhRczQl' \
    --body '{"entitlementCollectionId": "3xuZfza6", "entitlementOrigin": "GooglePlay", "metadata": {"FIF19UCH": {}, "r6kCcQYK": {}, "yP5QvKaa": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "r9VhuHXT", "namespace": "KKm4ffIA"}, "item": {"itemId": "MghHmFEP", "itemName": "raBsSnnu", "itemSku": "YB2IMJIZ", "itemType": "hE7DWszl"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "5gUcyjGE", "namespace": "mEld4Xt3"}, "item": {"itemId": "OWPlw7eS", "itemName": "C8xwzE2W", "itemSku": "GVNB5jn5", "itemType": "b5MyRX0s"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "jooi6Iqz", "namespace": "MUrToaHL"}, "item": {"itemId": "H8qCR6o5", "itemName": "DeY0tyZv", "itemSku": "XL4ncamh", "itemType": "KdhFaDof"}, "quantity": 52, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "Zu1ciQ7m"}' \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'kNfmrCCM' \
    --endTime '6PN240SJ' \
    --limit '19' \
    --offset '11' \
    --productId 'kop2WOoY' \
    --startTime 'q8jEaVhD' \
    --status 'PARTIAL_REVOKED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5QpUlp3m' \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'JyMaiIVU' \
    --endTime '9jYOk79Q' \
    --limit '99' \
    --offset '76' \
    --startTime 'mwdesyin' \
    --status 'FAIL' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'JEX3wXPj' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Xa-exPr", "productId": "asaM4yr6", "region": "QNry5rCu", "transactionId": "yTmAIej4", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '9bCOOWur' \
    --body '{"skus": ["ZjVqK16V", "zvgx02XR", "aXbYduyv"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'QQhHakRO' \
    --namespace $AB_NAMESPACE \
    --userId 'UUN0ggJ2' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'gkTZZofX' \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'DA6kVqhU' \
    --body '{"orderId": "yFPMt53d"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId '1pdW6Pyn' \
    --activeOnly 'true' \
    --groupId 'HMaJpMyA' \
    --limit '36' \
    --offset '32' \
    --platform 'XBOX' \
    --productId 'ruaiodpN' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId 'xhuFjO06' \
    --groupId 'opV7JUI8' \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId 'EfkOJsRs' \
    --productId 'UhIjY8kK' \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'DiewZ1fA' \
    --activeOnly 'true' \
    --groupId 'laPF63m4' \
    --limit '5' \
    --offset '99' \
    --platform 'OCULUS' \
    --productId 'h42vMIvo' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'pgNJpJYp' \
    --namespace $AB_NAMESPACE \
    --userId 'MsuFbsLE' \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'jtjNLeCl' \
    --namespace $AB_NAMESPACE \
    --userId 'xa2VoZcG' \
    --limit '2' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'sGP2lAWg' \
    --namespace $AB_NAMESPACE \
    --userId 'MBuhdeqM' \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'VFm9NuTx' \
    --namespace $AB_NAMESPACE \
    --userId 'S9Y71DYt' \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'Il8u3LQP' \
    --namespace $AB_NAMESPACE \
    --userId 'lL3N8T0W' \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'XDxJOctI' \
    --discounted 'false' \
    --itemId 'd7VQbUGZ' \
    --limit '57' \
    --offset '61' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'MXgoIjR4' \
    --body '{"currencyCode": "LdWVtAID", "currencyNamespace": "CmveB8iS", "discountCodes": ["bqj4IQka", "Jaezq5If", "9sn2uBDd"], "discountedPrice": 37, "entitlementPlatform": "IOS", "ext": {"C4nN5hs0": {}, "qIAItskn": {}, "3ehXZMsj": {}}, "itemId": "IrprE8gL", "language": "imy7nLcN", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 28, "quantity": 41, "region": "VOYQJhOj", "returnUrl": "JKyvycPr", "sandbox": true, "sectionId": "NGQDpw23"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'r1s21G0y' \
    --itemId 'uvmtT4fV' \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jFXLeeQW' \
    --userId 'j4kEeFbr' \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '7F1BHn2n' \
    --userId 'wqgNqZj6' \
    --body '{"status": "REFUND_FAILED", "statusReason": "2i2OOxQk"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3mVR6OAZ' \
    --userId 'TGR5vDa4' \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'fN77IBnO' \
    --userId 'weTADZFY' \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'EiUOfjMy' \
    --userId 'a8k0cnS5' \
    --body '{"additionalData": {"cardSummary": "ToxrKqQu"}, "authorisedTime": "1977-01-15T00:00:00Z", "chargebackReversedTime": "1996-09-05T00:00:00Z", "chargebackTime": "1985-01-30T00:00:00Z", "chargedTime": "1979-04-12T00:00:00Z", "createdTime": "1996-11-12T00:00:00Z", "currency": {"currencyCode": "j9UrkdlB", "currencySymbol": "Miv6Iet9", "currencyType": "REAL", "decimals": 68, "namespace": "8OW3s1SH"}, "customParameters": {"bHAYRx8L": {}, "mhdKmVPa": {}, "wHlS8t2e": {}}, "extOrderNo": "P7IJx1bI", "extTxId": "BhS90jXk", "extUserId": "ggLLK0BL", "issuedAt": "1984-03-18T00:00:00Z", "metadata": {"GpZiO0Ur": "bS4UBETO", "hnjL6sb7": "NjU4LujI", "Gjaqa82W": "J6A2BB78"}, "namespace": "2pRTNyJ7", "nonceStr": "6UpfzoZG", "paymentData": {"discountAmount": 13, "discountCode": "vxCNfXi9", "subtotalPrice": 0, "tax": 6, "totalPrice": 15}, "paymentMethod": "MrwZf53Z", "paymentMethodFee": 48, "paymentOrderNo": "Af9h7gp4", "paymentProvider": "ALIPAY", "paymentProviderFee": 32, "paymentStationUrl": "Ac6wnF1d", "price": 81, "refundedTime": "1993-12-11T00:00:00Z", "salesTax": 61, "sandbox": true, "sku": "G0GXIDJN", "status": "CHARGE_FAILED", "statusReason": "ypevpyl0", "subscriptionId": "yDp3mtzI", "subtotalPrice": 98, "targetNamespace": "YfRMuaGO", "targetUserId": "uHXq5mPc", "tax": 56, "totalPrice": 74, "totalTax": 8, "txEndTime": "1992-10-05T00:00:00Z", "type": "AhkOBCp3", "userId": "Z5EaS3PX", "vat": 79}' \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Rg6Sgx0x' \
    --userId '4XOYNU2s' \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ogaMtIPE' \
    --body '{"currencyCode": "SpzxxuFQ", "currencyNamespace": "FcKQVyfs", "customParameters": {"0Fme34FB": {}, "u4MovaEb": {}, "K1C2J9dL": {}}, "description": "UE2O5AXg", "extOrderNo": "asLGYW9M", "extUserId": "IuIdv03B", "itemType": "INGAMEITEM", "language": "kqz-vmnJ", "metadata": {"MlFyLko1": "7xXWAsRY", "JHa9Tb49": "nS29aE52", "ti4Ugnot": "aV8LEd6e"}, "notifyUrl": "uDczkxI7", "omitNotification": false, "platform": "fjCHSK7T", "price": 30, "recurringPaymentOrderNo": "WIkBGuWE", "region": "cadOJahs", "returnUrl": "Juqddylr", "sandbox": true, "sku": "epg1Caxo", "subscriptionId": "cvGJRE4k", "title": "o6HqOcaA"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pvTyHJ4L' \
    --userId 'WFfWGewT' \
    --body '{"description": "4bTYf9Ru"}' \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'WVYNsPtK' \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'mt9L97KJ' \
    --body '{"code": "AlyEtYCX", "orderNo": "xbqIoSkY"}' \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'EtSG8q5u' \
    --body '{"meta": {"IaVQmIuR": {}, "V97gCJ4u": {}, "n6mmwBIi": {}}, "reason": "U2tiQlzh", "requestId": "hk05pI4N", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "HhlJBhZB", "namespace": "E4neSfeD"}, "entitlement": {"entitlementId": "VwwYroRV"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "dA0eKQ2Q", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 100, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "rLe2jl9s", "namespace": "Vhoe8xki"}, "entitlement": {"entitlementId": "SqtkPd3k"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "ZyDQpezj", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 73, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "UzkZlOXB", "namespace": "JuhjVkYw"}, "entitlement": {"entitlementId": "nyJus54p"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "bwcI47Dh", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 75, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "Alam3aqV"}' \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '2GHRSi8e' \
    --body '{"gameSessionId": "p7VlRzm2", "payload": {"VkG3nRpP": {}, "W1grsltJ": {}, "26OZqDJw": {}}, "scid": "xf96EJDg", "sessionTemplateName": "0WMDig2P"}' \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'XbVqKcbf' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'ZjpkSkNj' \
    --limit '42' \
    --offset '69' \
    --sku 's2Eij2iT' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'uMdDs7Ep' \
    --excludeSystem 'true' \
    --limit '91' \
    --offset '82' \
    --subscriptionId 'aCyKChNZ' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'G8XDAUkV' \
    --body '{"grantDays": 90, "itemId": "QCJXcSg7", "language": "owgP0D7t", "reason": "PK7gbhi3", "region": "rszroB4D", "source": "GHUVljob"}' \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '78R0dkNX' \
    --itemId 'BFYogA6F' \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1xR63PCS' \
    --userId 'uGZitAZe' \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1MsGGel8' \
    --userId 'BpjTDg8V' \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zxldKsQS' \
    --userId 'q6s7vMLg' \
    --force 'false' \
    --body '{"immediate": false, "reason": "X62GMsTi"}' \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yHQiNrKm' \
    --userId 'hG8QdBhT' \
    --body '{"grantDays": 14, "reason": "vh7SDuJH"}' \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'X6LLBsoO' \
    --userId 'FJ8d0RzQ' \
    --excludeFree 'true' \
    --limit '4' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tHomUdaG' \
    --userId '7nNW7VVn' \
    --body '{"additionalData": {"cardSummary": "Fu94yAAj"}, "authorisedTime": "1992-01-10T00:00:00Z", "chargebackReversedTime": "1983-06-17T00:00:00Z", "chargebackTime": "1979-11-27T00:00:00Z", "chargedTime": "1998-12-20T00:00:00Z", "createdTime": "1977-05-02T00:00:00Z", "currency": {"currencyCode": "kV5jriBZ", "currencySymbol": "hBSMMgPG", "currencyType": "REAL", "decimals": 88, "namespace": "lQ64iPul"}, "customParameters": {"NjfHBqk3": {}, "wca3f6hb": {}, "4YYxVVOe": {}}, "extOrderNo": "6h1avBCm", "extTxId": "JObAbZz2", "extUserId": "waWRzSoD", "issuedAt": "1978-10-05T00:00:00Z", "metadata": {"6wyyduI5": "39GL14kQ", "SYQOO8kB": "vkTqELr7", "8TMVC56e": "1sT2mBuO"}, "namespace": "FW96XdU6", "nonceStr": "5ARlHUdd", "paymentData": {"discountAmount": 36, "discountCode": "JigHZEm4", "subtotalPrice": 71, "tax": 78, "totalPrice": 40}, "paymentMethod": "C1vo7OUh", "paymentMethodFee": 36, "paymentOrderNo": "tZTpEfM3", "paymentProvider": "WXPAY", "paymentProviderFee": 81, "paymentStationUrl": "gGL8e3hf", "price": 36, "refundedTime": "1997-03-08T00:00:00Z", "salesTax": 57, "sandbox": false, "sku": "LgPtFix0", "status": "DELETED", "statusReason": "qw6tahAH", "subscriptionId": "5cSltmsq", "subtotalPrice": 55, "targetNamespace": "lB5jMIXn", "targetUserId": "rO6A2Upt", "tax": 34, "totalPrice": 43, "totalTax": 54, "txEndTime": "1999-03-05T00:00:00Z", "type": "K4jne3Ly", "userId": "q22zaAr0", "vat": 8}' \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '4QnBmFU7' \
    --namespace $AB_NAMESPACE \
    --userId 'GdIEXPQo' \
    --body '{"count": 38, "orderNo": "fmeMXrAb"}' \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '7kXjtEAT' \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'mDtrfjFw' \
    --namespace $AB_NAMESPACE \
    --userId 'v38ECsvU' \
    --body '{"allowOverdraft": true, "amount": 3, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"hevczlhf": {}, "GBqyrveW": {}, "xJlME2Jd": {}}, "reason": "4wvbHAjS"}' \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'GdBrUCBM' \
    --namespace $AB_NAMESPACE \
    --userId 'tj4SKzC3' \
    --limit '16' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '6W6VpMGk' \
    --namespace $AB_NAMESPACE \
    --userId 'B8oqlWpQ' \
    --request '{"amount": 94, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"8A90Z1RY": {}, "M33pZAXl": {}, "Z5yRxSf5": {}}, "reason": "jHc8VfZm", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'A7OUKsjO' \
    --namespace $AB_NAMESPACE \
    --userId 'h69I37c4' \
    --body '{"amount": 19, "expireAt": "1987-04-07T00:00:00Z", "metadata": {"pOw8AJQZ": {}, "1tEsleLw": {}, "tvXcmbtL": {}}, "origin": "Other", "reason": "olUz5ynr", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'UjXrqetk' \
    --namespace $AB_NAMESPACE \
    --userId 'GSgud4Gy' \
    --request '{"amount": 69, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"1lYHAc5l": {}, "qPSUH7gG": {}, "wOn2MdVa": {}}, "reason": "TrIoDoVp", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'zp4ypIyZ' \
    --namespace $AB_NAMESPACE \
    --userId '6YTXfhkM' \
    --body '{"amount": 78, "metadata": {"RtuFvWdA": {}, "udq4eC45": {}, "7uGv37Iq": {}}, "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 342 'PayWithUserWallet' test.out

#- 343 GetUserWallet
eval_tap 0 343 'GetUserWallet # SKIP deprecated' test.out

#- 344 DebitUserWallet
eval_tap 0 344 'DebitUserWallet # SKIP deprecated' test.out

#- 345 DisableUserWallet
eval_tap 0 345 'DisableUserWallet # SKIP deprecated' test.out

#- 346 EnableUserWallet
eval_tap 0 346 'EnableUserWallet # SKIP deprecated' test.out

#- 347 ListUserWalletTransactions
eval_tap 0 347 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 348 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'lRNQV8nq' \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '5I9KALlO' \
    --body '{"displayOrder": 100, "localizations": {"ON4cDaMj": {"description": "9932c8Iw", "localExt": {"xXTIOHH4": {}, "A9SKGtOX": {}, "K1gp2lgm": {}}, "longDescription": "ZAkGchnl", "title": "4HU1qBaN"}, "YeqTeicc": {"description": "IdHo4M0W", "localExt": {"FafRmhzt": {}, "CEvXzaNV": {}, "ItfpaL0d": {}}, "longDescription": "aNkGo1UK", "title": "IhAow7I7"}, "u8qNKyRN": {"description": "tJHfefNC", "localExt": {"7WTC3KW2": {}, "ADI3t36b": {}, "65a6x5iJ": {}}, "longDescription": "JPnq4kWe", "title": "FronvpBq"}}, "name": "q8PCymMK"}' \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'cFBUehSS' \
    --storeId 'cbqSEYE4' \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'DTvxo7wy' \
    --storeId 'DDqNeI4N' \
    --body '{"displayOrder": 0, "localizations": {"uFk8VN0y": {"description": "6HGfXBZx", "localExt": {"Hfr3cw8l": {}, "vHdIw1xs": {}, "UWf9kKje": {}}, "longDescription": "Ee480OKY", "title": "iZ8vzN8s"}, "05xoBbjz": {"description": "WyRHhFKm", "localExt": {"mLU6EXHf": {}, "osWEfNRy": {}, "5x0siZsU": {}}, "longDescription": "ClBz9UJe", "title": "dF9Uu5Fp"}, "7PGexe3e": {"description": "jA0Im9ql", "localExt": {"haT9ttJg": {}, "1xx2xpnW": {}, "LazBhebW": {}}, "longDescription": "omn2Dvd5", "title": "ZPPOrrTn"}}, "name": "3Miaasrx"}' \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'zDKcIIQT' \
    --storeId 'vL5tYkyx' \
    > test.out 2>&1
eval_tap $? 352 'DeleteView' test.out

#- 353 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'GetWalletConfig' test.out

#- 354 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateWalletConfig' test.out

#- 355 QueryWallets
eval_tap 0 355 'QueryWallets # SKIP deprecated' test.out

#- 356 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 21, "expireAt": "1996-04-23T00:00:00Z", "metadata": {"HiA1RfBQ": {}, "viButT7Q": {}, "JkJOpFm6": {}}, "origin": "Other", "reason": "TKNop5Y4", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "tPXv5dIL", "userIds": ["tQGkTCcC", "6QNPd0ht", "nwMbnHou"]}, {"creditRequest": {"amount": 93, "expireAt": "1998-05-11T00:00:00Z", "metadata": {"Ct4i4CkG": {}, "R6AtkxYK": {}, "HNXxZEfL": {}}, "origin": "GooglePlay", "reason": "2sCgGNic", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "dMcT0bjW", "userIds": ["UsJRifPo", "rRxXM9WN", "DPA29tW9"]}, {"creditRequest": {"amount": 68, "expireAt": "1995-01-15T00:00:00Z", "metadata": {"AQ9QLH86": {}, "1vLGoUrr": {}, "rbuXvZeE": {}}, "origin": "Twitch", "reason": "hv0ArYmA", "source": "REFERRAL_BONUS"}, "currencyCode": "uXwoNTq1", "userIds": ["IERM6pku", "vtmVL1sS", "86jdBVWR"]}]' \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "NEa7QwqM", "request": {"allowOverdraft": false, "amount": 99, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"IfjmDNxf": {}, "tgsBWs3N": {}, "59vOTpxv": {}}, "reason": "GCbdP2oo"}, "userIds": ["ARTr60BH", "5BOwY3Nf", "9Uf2ZFdB"]}, {"currencyCode": "c1S2CHys", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"mwxIH2Px": {}, "om5qNz7F": {}, "JvmHyB61": {}}, "reason": "WHgfE7IA"}, "userIds": ["3tbXKpiA", "4DP5QIgy", "Egxj4PRW"]}, {"currencyCode": "hT85wep4", "request": {"allowOverdraft": false, "amount": 15, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"uBoMBFDy": {}, "mI95jOqe": {}, "Ngs5cOkO": {}}, "reason": "A2Q41wc6"}, "userIds": ["wHSAU1bu", "q3dmUFog", "3wX8SSpE"]}]' \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'MWoTgvYm' \
    --end 'xyx1J5tC' \
    --start 'vMm6woY7' \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["c3LEPS4J", "frsSZEzX", "q8Bbrpnd"], "apiKey": "sKAZupHu", "authoriseAsCapture": true, "blockedPaymentMethods": ["xVUsBCdq", "sH8ahzdY", "kjUlHJiM"], "clientKey": "qI2WQw3x", "dropInSettings": "UHZ9dsuQ", "liveEndpointUrlPrefix": "VwIvWx8y", "merchantAccount": "rxnNSE4x", "notificationHmacKey": "EANSRe5n", "notificationPassword": "6sxE0syZ", "notificationUsername": "Y0C2BbIr", "returnUrl": "zPtWFENY", "settings": "qFLbwyxR"}' \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "NACAJe2a", "privateKey": "QnjgxbT7", "publicKey": "A6YNjBHB", "returnUrl": "vCkBOLrG"}' \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "OJFPRyTK", "secretKey": "Yn4DuASf"}' \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'GWWD1Qrq' \
    --region 'yh8XcPnZ' \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "ExefwoQw", "webhookSecretKey": "uj0epyka"}' \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "pMCXU7Q9", "clientSecret": "B2Te3zGG", "returnUrl": "ATlpBGOO", "webHookId": "xJMZ6se6"}' \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["FVCopSkf", "1QXctVZe", "aqyKRdcd"], "publishableKey": "NBRZclkQ", "secretKey": "4rHxDz22", "webhookSecret": "AtEMHCMm"}' \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "XKXbccZy", "key": "fkbmACxd", "mchid": "jdo4azVU", "returnUrl": "jGq0apnr"}' \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "dsAvsusd", "flowCompletionUrl": "RFK6Gt6b", "merchantId": 36, "projectId": 50, "projectSecretKey": "2AdU7szL"}' \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'UeMivqLl' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'J95kvM6w' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["H8hSNNrF", "RsPs9Z08", "h055wiFr"], "apiKey": "NvB6SftX", "authoriseAsCapture": false, "blockedPaymentMethods": ["TZEPG3cJ", "yrB2AFgX", "WYRYLgaB"], "clientKey": "VDH602Km", "dropInSettings": "wWWSsLgu", "liveEndpointUrlPrefix": "Y2dUlQqT", "merchantAccount": "cmlDhEFe", "notificationHmacKey": "RorZv7it", "notificationPassword": "yw6IqIlE", "notificationUsername": "W13AY5G6", "returnUrl": "QYGRdNuW", "settings": "Sv3xYDxL"}' \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'chr6qbYZ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Vd9S3lI3' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "vlYOMS3Y", "privateKey": "6TPkpTw6", "publicKey": "hvIS12WB", "returnUrl": "WMbfL5OX"}' \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'jwLfRA2b' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'KfaYEpMY' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "5wNyjYNN", "secretKey": "M68dlhTN"}' \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Wf2hyMfI' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'Mm9ob78n' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"apiKey": "qhldBsiX", "webhookSecretKey": "ZAJfptng"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id '4ImdIsYk' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'mRdFo1yP' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "E8g7lOnR", "clientSecret": "hLxemzvE", "returnUrl": "zhxmJfB1", "webHookId": "oPYygDWE"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'e4IMMpUU' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'ljb8iGji' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["enzEh1Ug", "Ok0LtIp7", "O2czWvB2"], "publishableKey": "4BewYFGJ", "secretKey": "dWb6kwZp", "webhookSecret": "G0UbEBCF"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'U4jWo2KL' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '8zQDIOm1' \
    --validate 'true' \
    --body '{"appId": "YhrjXWFE", "key": "ud8V8o9e", "mchid": "lZPM61uz", "returnUrl": "NHNqetLO"}' \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'Ff7k9v83' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '1dgH8l8Q' \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'KTiciLC6' \
    --validate 'true' \
    --body '{"apiKey": "km6xfSV3", "flowCompletionUrl": "JLQ99YIX", "merchantId": 92, "projectId": 66, "projectSecretKey": "3h9ayc0D"}' \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ZhfGnhn0' \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'CRe4Tnk1' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '66' \
    --namespace 'sCSFouT8' \
    --offset '67' \
    --region 'NpdU7OXm' \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "QNA48SFG", "region": "vnycPthK", "sandboxTaxJarApiToken": "SVpaHaah", "specials": ["XSOLLA", "ADYEN", "PAYPAL"], "taxJarApiToken": "oy7iwvvq", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'PyhpGj1j' \
    --region '1PyVz0Bw' \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '4K17QOWx' \
    --body '{"aggregate": "NEONPAY", "namespace": "G5eT3wOY", "region": "cDQDICXL", "sandboxTaxJarApiToken": "oR9Eq6j0", "specials": ["WALLET", "NEONPAY", "WXPAY"], "taxJarApiToken": "vwYNkNcm", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'NoQd4abC' \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "dlH97UnS", "taxJarApiToken": "A9OeoiPZ", "taxJarEnabled": false, "taxJarProductCodesMapping": {"TPUE6j0L": "xBdOXJig", "ugSpGzrx": "7oeKzu59", "q8XqAUqc": "HqJATvkG"}}' \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'VmhGWKIe' \
    --end 'pzRmmTAg' \
    --start 'q806flbT' \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'XyJE8T6g' \
    --storeId 'cAAbeIhR' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'oaVplNAR' \
    --storeId '2mtNpaVF' \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'QUBLNczq' \
    --namespace $AB_NAMESPACE \
    --language '9hinUkNp' \
    --storeId 'b2I98lwM' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'fKuEXyQE' \
    --namespace $AB_NAMESPACE \
    --language 'GTQzBMHH' \
    --storeId '2JEuaoLQ' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '69giqjW8' \
    --namespace $AB_NAMESPACE \
    --language 'oCRbn91O' \
    --storeId 'BaPQEEpY' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetDescendantCategories' test.out

#- 403 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 403 'PublicListCurrencies' test.out

#- 404 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 404 'GeDLCDurableRewardShortMap' test.out

#- 405 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 405 'GetAppleConfigVersion' test.out

#- 406 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 406 'GetIAPItemMapping' test.out

#- 407 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'OwACQXjy' \
    --region 'QQKyyVGn' \
    --storeId 'Wqup3KoH' \
    --appId 'ubPXxkF4' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'Tfcvi6Qe' \
    --categoryPath 'CoK7Fuk4' \
    --features 'J4DgucLc' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --language 's3Hbxlhc' \
    --limit '53' \
    --offset '68' \
    --region 'rAnVLrz6' \
    --sortBy '["displayOrder:asc", "createdAt:asc", "updatedAt:desc"]' \
    --storeId '7dDNRsDU' \
    --tags '4CCHJWAc' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'kyYOdZbY' \
    --region 'e5wsYONw' \
    --storeId 'jKAa2Pwc' \
    --sku 'HB9B8uub' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'aRGVlO9w' \
    --storeId 'yMwnuVXF' \
    --itemIds 'tDgVcFhL' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'StyYmNka' \
    --region 'ILnPgv4M' \
    --storeId 'HttOg2qs' \
    --itemIds '3cVhY1y1' \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["DcIt5HkU", "U2Rw5PbW", "tGT8keu3"]}' \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '62' \
    --offset '15' \
    --region 'JybpRO7a' \
    --storeId 'TDd4ST2O' \
    --keyword 'gkacv4kM' \
    --language 'iJELrK0E' \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'WWnkhAx2' \
    --namespace $AB_NAMESPACE \
    --language 'm8haoSkB' \
    --region '2iRNBb7N' \
    --storeId '5WpCcYjH' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'pXqmOl2y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'qVP8UvA3' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'pW9S8O6H' \
    --populateBundle 'false' \
    --region 'O610pZiS' \
    --storeId '5qPKdUD0' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "pIeZW51p", "successUrl": "ts384ciO"}, "paymentOrderNo": "OloxV4NN", "paymentProvider": "CHECKOUT", "returnUrl": "iuAolRvJ", "ui": "3pzjELg7", "zipCode": "Q0dF2jK9"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Udb5BTLT' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '37okyFhE' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '9od62E3u' \
    --paymentProvider 'NEONPAY' \
    --zipCode '8zfMUyE8' \
    --body '{"token": "2Yc8Cq9A"}' \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ITmGLjcP' \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'hn9sDBxJ' \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'zcyDBSFQ' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '9gIs0oH9' \
    --foreinginvoice '7dK2dnCr' \
    --invoiceId 'mAMR2ZKF' \
    --payload 'QamTvDu7' \
    --redirectResult 'tJkkvPMZ' \
    --resultCode 'cyIoKwaF' \
    --sessionId 'O5BRb8Cl' \
    --status 'mE5PEDvD' \
    --token 'UpSZVapu' \
    --type '7tz7RvxZ' \
    --userId 'zBlOwKrS' \
    --orderNo 'fNNjE41J' \
    --paymentOrderNo 'p0bMNxkO' \
    --paymentProvider 'STRIPE' \
    --returnUrl 'qDkXZQQN' \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '6ag9CfRe' \
    --paymentOrderNo 'uEiT0xxg' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '0LNdxYHB' \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '7g30P5dG' \
    --limit '1' \
    --offset '14' \
    --sortBy '["rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'hOeTZtHe' \
    > test.out 2>&1
eval_tap $? 429 'GetReward1' test.out

#- 430 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicListStores' test.out

#- 431 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["UtYQWujk", "YRuj22Az", "6SxFSaD3"]' \
    --itemIds '["W5lEV7oc", "dDX1bpx1", "OpoXe3NA"]' \
    --skus '["V49O8MKj", "Enmvih3r", "7v56S50N"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'wYaUpuKA' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'Y6DB4MCs' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku '9dsvCu5B' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["e3dBYoTt", "YSfGW6v7", "eXsUZJzL"]' \
    --itemIds '["EO75reht", "gy1sMBJR", "8OkPyL7x"]' \
    --skus '["fcTLk65E", "QnFHC0tG", "LunK1plM"]' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "IXzmqeu4", "language": "idqH", "region": "6xvOTVuC"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'c1DsTRSn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'pC2rN6Wq' \
    --body '{"epicGamesJwtToken": "dQFE1wkb"}' \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'aLq9TcU3' \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'pfrPo70v' \
    --body '{"serviceLabel": 29}' \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'MK8kIt3f' \
    --body '{"serviceLabels": [65, 52, 15]}' \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'x2wgFumv' \
    --body '{"appId": "FdTrJWdU", "steamId": "pQgVXxvI"}' \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'k59a0yqC' \
    --body '{"xstsToken": "U4pFPnCV"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NXRK2j2h' \
    --appType 'DEMO' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'eHgxDMqd' \
    --features '["QvRUGPAW", "o1ALjUH2", "GDaSlME2"]' \
    --itemId '["4Wn6bXDo", "TEHOgcdi", "SZPbJW5O"]' \
    --limit '55' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'UFm5YP2b' \
    --appId 'akGLGwAA' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'GIUZOoD4' \
    --limit '39' \
    --offset '64' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'tr5Ej3M3' \
    --availablePlatformOnly 'false' \
    --ids '["KfxxSppk", "d7RJxNDW", "Uxq8WhU9"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId '3GKJTEE3' \
    --endDate 'sD6iAU5i' \
    --entitlementClazz 'APP' \
    --limit '28' \
    --offset '46' \
    --startDate 'FeicTBlo' \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'n6aqeYGU' \
    --appIds '["zmxuAb0U", "PZgP4RzZ", "4vEhyroG"]' \
    --itemIds '["XCwmwiLN", "GFoxMd7l", "BRdq5KyB"]' \
    --skus '["llU49wli", "oUg4RaNL", "JZM5NtIF"]' \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'cYHmpHRp' \
    --appId 'Laelb3BK' \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'T7MaM6LF' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'njzsamaH' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '1LN7ovXQ' \
    --ids '["Oc5o5mGp", "GonzVpfq", "lICzkKbp"]' \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Ufsglliv' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '8snn2l7K' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ERdXRVkE' \
    --namespace $AB_NAMESPACE \
    --userId 'HbmJo0yO' \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'tmNs1aGI' \
    --namespace $AB_NAMESPACE \
    --userId 'QLbv4wJY' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["K0sZ4XcQ", "v0OUIgxl", "acWX9L2j"], "requestId": "a58a6fi3", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'fwT6BVMH' \
    --namespace $AB_NAMESPACE \
    --userId 'tYG0Q2hq' \
    --body '{"requestId": "S5uKMczC", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '0luTnARN' \
    --namespace $AB_NAMESPACE \
    --userId 'EBEy0Zn5' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'DG8Po2ev' \
    --namespace $AB_NAMESPACE \
    --userId 'OneWJf9z' \
    --body '{"entitlementId": "SfkkBLjX", "metadata": {"operationSource": "INVENTORY"}, "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'odggY2Vv' \
    --body '{"code": "UU2hqcgp", "language": "FmAi_NeIg", "region": "WpBQNlNB"}' \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WsJUZOID' \
    --body '{"excludeOldTransactions": false, "language": "uHP", "productId": "M7BjtgS6", "receiptData": "WLOWygg2", "region": "ReaqY6aE", "transactionId": "11cD177i"}' \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'epX88pVK' \
    --body '{"epicGamesJwtToken": "m4dY2Q7b"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'z6jHbjbJ' \
    --body '{"autoAck": true, "autoConsume": true, "language": "et-615", "orderId": "1K2xTflK", "packageName": "YOQE5diT", "productId": "PSaO0yaY", "purchaseTime": 47, "purchaseToken": "wvckY7JN", "region": "8nOzODwV", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'SP8Wt2sp' \
    --body '{"skus": ["YlqzaAqA", "mKGCHRpw", "iViYCyTh"]}' \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'bV82JNcG' \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'WDXBdLLJ' \
    --body '{"currencyCode": "bd9OuOhJ", "price": 0.4382278980415424, "productId": "X4wbVZjg", "serviceLabel": 48}' \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'N4ZicQ4a' \
    --body '{"currencyCode": "3eoBnNQW", "price": 0.10166857144229702, "productId": "QCa5bqr1", "serviceLabels": [82, 91, 71]}' \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '5Dp5BuLI' \
    --body '{"appId": "YmZgQ137", "currencyCode": "ADSCHLZQ", "language": "Jp_GJVx", "price": 0.04330674206549401, "productId": "AkXiwvCq", "region": "UxRLeUi6", "steamId": "p8vX1nTl"}' \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'wItSQOhT' \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'qsYbZUQH' \
    --body '{"orderId": "gOYPJ5fs"}' \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'cZMnchv5' \
    --activeOnly 'true' \
    --groupId '6XSsZzvf' \
    --limit '56' \
    --offset '39' \
    --productId 'h2MFxbwB' \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'VD5LHKdR' \
    --body '{"gameId": "H7HhBakL", "language": "ILLk", "region": "7Tmc7DX7"}' \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'SG9mKitI' \
    --body '{"currencyCode": "EVqQoN3l", "price": 0.4519063775822749, "productId": "3EnGQoWX", "xstsToken": "YbDuZzU0"}' \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nOomxlaB' \
    --discounted 'false' \
    --itemId 'MnrNKS8f' \
    --limit '62' \
    --offset '4' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Olor2876' \
    --body '{"currencyCode": "0I4B8YRa", "discountCodes": ["um9BhSfd", "waRIqkVq", "SNodVjdb"], "discountedPrice": 85, "ext": {"vJwoTUWJ": {}, "rOjgnkS9": {}, "IDnIOo4w": {}}, "itemId": "Xklu2Jj1", "language": "dNG", "price": 15, "quantity": 21, "region": "9qeJVdOM", "returnUrl": "oI113KMl", "sectionId": "U6Wvic2E"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '0yiOuwvJ' \
    --body '{"currencyCode": "vlgtGhZ8", "discountCodes": ["QC9cKVUX", "hR0gvRgL", "gibnc5Yx"], "discountedPrice": 91, "itemId": "83vBTl38", "price": 11, "quantity": 94}' \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lb6mLUVh' \
    --userId 'TkJKbmgC' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vgYza1lQ' \
    --userId '7jOOp5zk' \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'pcTtLY8n' \
    --userId 'nG3tNz6Y' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'WSqxZOD1' \
    --userId 'illZP6P1' \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'ZxXzns8C' \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'mTUjUhaY' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'Km4sg3tF' \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'IibMsD4y' \
    --autoCalcEstimatedPrice 'true' \
    --language '9X3tfWYB' \
    --region 'NUTX8Cgw' \
    --storeId 'G2LgAb4t' \
    --viewId 'yTVitNst' \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'MM2FsDsJ' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'HPjXlgB4' \
    --limit '76' \
    --offset '31' \
    --sku 'NXn1x1lQ' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2mB5puo4' \
    --body '{"currencyCode": "PLv9jV7O", "itemId": "oWcuoolW", "language": "GbrQ_308", "region": "eMxHaNVS", "returnUrl": "C8rnqOiP", "source": "MxyiiAIt"}' \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '7L5aYUWE' \
    --itemId '2K86st6n' \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'M61gMLbT' \
    --userId '9VtoCB23' \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7D1gD5d5' \
    --userId '2Rsstj7G' \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vPqkVSLY' \
    --userId 'lwzTPSXQ' \
    --body '{"immediate": true, "reason": "Br5wf5PQ"}' \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GYOrkUgk' \
    --userId 'ZzoDiqw8' \
    --excludeFree 'true' \
    --limit '37' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'xif6TiHb' \
    --language 'mMOXIlAe' \
    --storeId '60S5sWCm' \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'Nj3Efma0' \
    --namespace $AB_NAMESPACE \
    --userId 'NfyhyJEI' \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'rvlgX6n2' \
    --namespace $AB_NAMESPACE \
    --userId 'XZFe7EoZ' \
    --limit '29' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 494 'PublicListUserWalletTransactions' test.out

#- 495 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 495 'PublicGetMyDLCContent' test.out

#- 496 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'aCyjKj09' \
    --limit '91' \
    --offset '96' \
    --startTime 'pOFNQXbC' \
    --state 'FULFILL_FAILED' \
    --transactionId 'YtTibYp6' \
    --userId 'Erjyo2Iq' \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'nV3f0qZn' \
    --baseAppId 'XNcirlf3' \
    --categoryPath 'yOp1NA2C' \
    --features 'Bdhs3Cwc' \
    --includeSubCategoryItem 'true' \
    --itemName 'BbKbECfu' \
    --itemStatus 'ACTIVE' \
    --itemType '["SEASON", "OPTIONBOX", "EXTENSION"]' \
    --limit '96' \
    --offset '79' \
    --region 'FErr1inh' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:asc", "createdAt:desc", "updatedAt:asc"]' \
    --storeId 'orwcxv8e' \
    --tags 'MfixGCEa' \
    --targetNamespace 'GQ5vitnt' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'wCep55R8' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'KwPxMqgb' \
    --body '{"itemIds": ["3GslsQFm", "DJl51OzL", "Jp7OalEi"]}' \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Du1vBQZ9' \
    --body '{"entitlementCollectionId": "kQlJQqnu", "entitlementOrigin": "Nintendo", "metadata": {"L7R5Yt9A": {}, "VrJsiOlA": {}, "Zkux6RJB": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "aTAMsJsb", "namespace": "Ru0WyePu"}, "item": {"itemId": "5Tqde7Cu", "itemName": "gAkt12an", "itemSku": "f6Qr0RfN", "itemType": "yrImPrMR"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "RRfqOl1M", "namespace": "APSRuV6n"}, "item": {"itemId": "D97mkFOj", "itemName": "1d1PZn0d", "itemSku": "cBh62Xy9", "itemType": "1yCfWOjc"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "OnR85mPP", "namespace": "Sp1XtRdA"}, "item": {"itemId": "Gg9dtHvB", "itemName": "TkkdZ9iG", "itemSku": "G8BmukoX", "itemType": "rVFiAXEG"}, "quantity": 80, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "PZDd48o2"}' \
    > test.out 2>&1
eval_tap $? 500 'FulfillRewardsV2' test.out

#- 501 FulfillItems
eval_tap 0 501 'FulfillItems # SKIP deprecated' test.out

#- 502 RetryFulfillItems
eval_tap 0 502 'RetryFulfillItems # SKIP deprecated' test.out

#- 503 RevokeItems
eval_tap 0 503 'RevokeItems # SKIP deprecated' test.out

#- 504 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'royfyCuy' \
    --body '{"transactionId": "pNJS9dXf"}' \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'Df7wadcE' \
    --userId 'sOzvLkMR' \
    --body '{"items": [{"duration": 48, "endDate": "1984-11-08T00:00:00Z", "entitlementCollectionId": "8TLzuuNG", "entitlementOrigin": "Playstation", "itemId": "UsxnSXjW", "itemSku": "9bEAPnrT", "language": "tcHFUtOq", "metadata": {"L5RJO5V3": {}, "YUJyTOWv": {}, "bLrDf6Gi": {}}, "orderNo": "FErTfxCJ", "origin": "Epic", "quantity": 40, "region": "vL7nZLvi", "source": "ORDER_REVOCATION", "startDate": "1980-05-27T00:00:00Z", "storeId": "PHTc5kOA"}, {"duration": 54, "endDate": "1994-02-13T00:00:00Z", "entitlementCollectionId": "PVo1ycC5", "entitlementOrigin": "Twitch", "itemId": "9uE9BuwQ", "itemSku": "eOrNumOr", "language": "Rhlr5jzz", "metadata": {"g7XX4tno": {}, "TdG7Gxr1": {}, "GxvOaUeD": {}}, "orderNo": "mxJbBNXZ", "origin": "Twitch", "quantity": 71, "region": "TNcwTeBK", "source": "IAP", "startDate": "1995-08-31T00:00:00Z", "storeId": "Fbjm4ayE"}, {"duration": 99, "endDate": "1993-04-02T00:00:00Z", "entitlementCollectionId": "fXPaedW0", "entitlementOrigin": "System", "itemId": "arazPk52", "itemSku": "B6VvXYTT", "language": "UYhkCRwe", "metadata": {"PE5nuFs5": {}, "yKVTrNTZ": {}, "sTpcyO42": {}}, "orderNo": "8KpShGx4", "origin": "IOS", "quantity": 62, "region": "7aUYuV77", "source": "EXPIRATION", "startDate": "1972-09-17T00:00:00Z", "storeId": "jTbe84Or"}]}' \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'G2ov8uBs' \
    --userId 'LZxClbnc' \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'mPQo68Jm' \
    --userId '6e3gAN7U' \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE