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
echo "1..481"

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
    --id 'qVnToEEX' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'JXFyHZwS' \
    --body '{"grantDays": "GvAtHTfH"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'o348QoYi' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'R4aMV1tN' \
    --body '{"grantDays": "zzxCaH7s"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "eJouMK6A", "dryRun": true, "fulfillmentUrl": "DA5nDKxR", "itemType": "INGAMEITEM", "purchaseConditionUrl": "y6AcFuy8"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'M63aJTuC' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '0odyIedt' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'zcFa9poE' \
    --body '{"clazz": "XXyFjN0i", "dryRun": true, "fulfillmentUrl": "Hh2k8UWs", "purchaseConditionUrl": "mDHcDt38"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '79cKqCP4' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --name 'QfTqQQOB' \
    --offset '90' \
    --tag 'P9Qo7ibx' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7zv9GKUo", "discountConfig": {"categories": [{"categoryPath": "tbXGwvxj", "includeSubCategories": false}, {"categoryPath": "FShRB5St", "includeSubCategories": true}, {"categoryPath": "wKeksCC3", "includeSubCategories": true}], "currencyCode": "DXgrj0uz", "currencyNamespace": "ohiTfPWG", "discountAmount": 74, "discountPercentage": 22, "discountType": "AMOUNT", "items": [{"itemId": "4UMOgi5I", "itemName": "M1XXmUet"}, {"itemId": "tVaaSDBw", "itemName": "RCCkvxfH"}, {"itemId": "BURLLFJK", "itemName": "czI2PhO1"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 91, "itemId": "7YoxE4Lr", "itemName": "lS9Uniol", "quantity": 83}, {"extraSubscriptionDays": 32, "itemId": "wgAN3sQT", "itemName": "njnUbzjR", "quantity": 27}, {"extraSubscriptionDays": 46, "itemId": "PWcuaYBT", "itemName": "Z8RLABdI", "quantity": 23}], "maxRedeemCountPerCampaignPerUser": 44, "maxRedeemCountPerCode": 88, "maxRedeemCountPerCodePerUser": 56, "maxSaleCount": 28, "name": "KfN51RsF", "redeemEnd": "1981-05-09T00:00:00Z", "redeemStart": "1987-04-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["cWnTmepq", "t7L3YAjT", "MN8auDJ8"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'TeNfSfiA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'bSTKLJwE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "xVqIIhpJ", "discountConfig": {"categories": [{"categoryPath": "GCig373i", "includeSubCategories": true}, {"categoryPath": "bk54LeYZ", "includeSubCategories": true}, {"categoryPath": "6i2bjaxh", "includeSubCategories": false}], "currencyCode": "8bByGagl", "currencyNamespace": "56cxlxZ2", "discountAmount": 26, "discountPercentage": 38, "discountType": "PERCENTAGE", "items": [{"itemId": "IUrnyWHT", "itemName": "WLYbW7bj"}, {"itemId": "XRZpH35y", "itemName": "rrkLx74o"}, {"itemId": "Qw5f0Oz6", "itemName": "H0O6e0Vj"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 66, "itemId": "d9E1uxCn", "itemName": "hesCH3vF", "quantity": 74}, {"extraSubscriptionDays": 8, "itemId": "qmtd30Qb", "itemName": "VAqBz6Px", "quantity": 76}, {"extraSubscriptionDays": 85, "itemId": "P4DIP7BR", "itemName": "aCIGcVPf", "quantity": 65}], "maxRedeemCountPerCampaignPerUser": 28, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 6, "maxSaleCount": 39, "name": "S8sD8Wew", "redeemEnd": "1998-12-14T00:00:00Z", "redeemStart": "1983-03-29T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["GqPXJdwk", "Cy6LgpUW", "d4l27KJw"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'D1MtORQA' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "oYEUX5Qz", "oldName": "AMsdqJYs"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'Bg5dzjko' \
    --namespace $AB_NAMESPACE \
    --batchName 'j7lJL90w' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'SasgUjpo' \
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
    --body '{"appConfig": {"appName": "r7eZz3bb"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "OWy06mVi"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "5F6GCExI"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "gu7vILbU"}, "extendType": "APP"}' \
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
    --storeId 'swEE2jkz' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'MQl8pYNl' \
    --body '{"categoryPath": "PSI23P34", "localizationDisplayNames": {"eCgAvOTN": "rs9Zv4F8", "dif91QDk": "pCVGP29v", "AW4caZg6": "1EQUnKuE"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'yxRLQF6T' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'nnLG2euR' \
    --namespace $AB_NAMESPACE \
    --storeId 'rx68jeZ3' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'C0xLtlFp' \
    --namespace $AB_NAMESPACE \
    --storeId 'nk1iONbG' \
    --body '{"localizationDisplayNames": {"e2sd4sdy": "WaBBIRDA", "8cjprCQn": "azpk8dFQ", "zP7NF3K8": "O0u8Ffb7"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'DC6HzsEp' \
    --namespace $AB_NAMESPACE \
    --storeId '4dskcfJa' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'QN9gJZQI' \
    --namespace $AB_NAMESPACE \
    --storeId 'p5CMxSv6' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'RGXT8Lkm' \
    --namespace $AB_NAMESPACE \
    --storeId 'eYm7BVmv' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'A5sJ7c7E' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName '9VyoJL3Q' \
    --batchNo '[28, 100, 26]' \
    --code '0HXH0V8p' \
    --limit '74' \
    --offset '21' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'SNvsUkvw' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "6URuZkNV", "codeValue": "Fiv9D80s", "quantity": 66}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'VI2y5SjH' \
    --namespace $AB_NAMESPACE \
    --batchName 'wJYaZtjv' \
    --batchNo '[31, 34, 53]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'k9ChgjKn' \
    --namespace $AB_NAMESPACE \
    --batchName 'fx9Q35di' \
    --batchNo '[69, 1, 18]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'lA0OxZ5n' \
    --namespace $AB_NAMESPACE \
    --batchName 'DAIDTGXE' \
    --batchNo '[88, 95, 84]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '0xgi9uOL' \
    --namespace $AB_NAMESPACE \
    --code 'fTd8Kqnw' \
    --limit '1' \
    --offset '88' \
    --userId 'AGkTEBEz' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'SLQGhJxm' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'OmNFY8VA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'RMi1g0n1' \
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
    --body '{"currencyCode": "MBAcV3vF", "currencySymbol": "4YFWB6BH", "currencyType": "REAL", "decimals": 41, "localizationDescriptions": {"PTLS8cRh": "Iacr2oll", "9uuQx41s": "FA2LI01H", "cK4R6187": "YyOfOf2r"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'OlnK2UKG' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"kYzkSrXt": "pxsTjAmb", "w9rzZWH9": "rXGTMg1k", "Rj0O2fey": "21G4LfNX"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'lY12hsnT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'HFzft6Q8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'JBnLDEVK' \
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
    --body '{"data": [{"id": "BQcsle5z", "rewards": [{"currency": {"currencyCode": "ifQzIF4x", "namespace": "XMZMRrKi"}, "item": {"itemId": "4urhbj8q", "itemName": "MvdRJGxk", "itemSku": "WcSRMyKd", "itemType": "WUcK04wH"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "3jChCBMn", "namespace": "kI3adPaJ"}, "item": {"itemId": "V42iDIPb", "itemName": "RifR2PXd", "itemSku": "rpbM6eT1", "itemType": "NWBbls83"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "8aaTO17o", "namespace": "fwIQnHBa"}, "item": {"itemId": "Am0llXyS", "itemName": "Rp3isA9S", "itemSku": "bsjk3cg4", "itemType": "pJCgUg6Q"}, "quantity": 4, "type": "CURRENCY"}]}, {"id": "UkNNmqES", "rewards": [{"currency": {"currencyCode": "xuGMK1Fv", "namespace": "A0iY8S5l"}, "item": {"itemId": "Xk8EgyRX", "itemName": "oDupyfbE", "itemSku": "K0PHHBlm", "itemType": "YHx3qCVz"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "n0REbGKl", "namespace": "yIvdgVPB"}, "item": {"itemId": "F1d59kxD", "itemName": "oR0qfTtJ", "itemSku": "JyuaQ4s1", "itemType": "AKLlplv8"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "T1mipoyT", "namespace": "dW89BRYG"}, "item": {"itemId": "8wirBIaO", "itemName": "B3nFmTpj", "itemSku": "NnaK7vhn", "itemType": "0BgtKy50"}, "quantity": 94, "type": "CURRENCY"}]}, {"id": "KlpiH0qC", "rewards": [{"currency": {"currencyCode": "2cnoRvgB", "namespace": "xN0TqWYi"}, "item": {"itemId": "D39P03qD", "itemName": "Zmraz7jZ", "itemSku": "vmxgiDzI", "itemType": "6SRwZc5D"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "iM6y4SVn", "namespace": "Ms1z3AHi"}, "item": {"itemId": "y0J1gbCa", "itemName": "xkmwgKps", "itemSku": "prIPTJLQ", "itemType": "8BZRwOZ7"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "MA9k2zsq", "namespace": "vgXtZp4K"}, "item": {"itemId": "kTeILjtA", "itemName": "lbEKefw4", "itemSku": "6Z5Qi17h", "itemType": "lEe3urTz"}, "quantity": 89, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"u3f2MtFt": "vaa9B9mw", "45pf0YdG": "eQsjqHQl", "nLjoXsmT": "NGipXQu4"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"2RrKOCDW": "qwsurYP1", "0CuXE3mT": "6wYZYO9a", "48skDbMn": "eDrHTtWd"}}, {"platform": "STEAM", "platformDlcIdMap": {"Y7VBshGn": "RZwRUvtG", "qtAlDTVL": "U2Ykhzvp", "vWtHWIAb": "QqSO3kgs"}}]}' \
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
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'sjuqK7hN' \
    --itemId '["0TB0XyoV", "IRvLTorq", "BEEFunLZ"]' \
    --limit '44' \
    --offset '30' \
    --origin 'Playstation' \
    --userId 'eHXEVIN2' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["VayfjBHj", "qeFo50FC", "1WHvoVXB"]' \
    --limit '17' \
    --offset '41' \
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
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "bHZS0JbG", "endDate": "1972-05-26T00:00:00Z", "grantedCode": "mbyYrrJ9", "itemId": "LfRs7d8q", "itemNamespace": "8uo1siGg", "language": "ftse_YHLp", "metadata": {"XNJzQE6k": {}, "WJdgSoDu": {}, "UCdNXb4r": {}}, "origin": "System", "quantity": 82, "region": "UgRqd4c0", "source": "PURCHASE", "startDate": "1993-12-29T00:00:00Z", "storeId": "gMWGZkba"}, {"collectionId": "g8XMNDQu", "endDate": "1996-05-12T00:00:00Z", "grantedCode": "FpEdMgji", "itemId": "nkUXvjVV", "itemNamespace": "vsCN8Tn3", "language": "qbdC-439", "metadata": {"XUxn3WKQ": {}, "ADI4b86t": {}, "3fvx2fXS": {}}, "origin": "Steam", "quantity": 72, "region": "Fzb71KQ2", "source": "REWARD", "startDate": "1999-02-09T00:00:00Z", "storeId": "jwXMDk4C"}, {"collectionId": "4UaFCQ70", "endDate": "1986-06-10T00:00:00Z", "grantedCode": "jDOZQsS3", "itemId": "fQAaSAiR", "itemNamespace": "1y8w2ylO", "language": "ueeC_suIi", "metadata": {"jlp5gXCc": {}, "KegPeV4V": {}, "n4zooRIP": {}}, "origin": "Steam", "quantity": 58, "region": "lacxzQ3M", "source": "REDEEM_CODE", "startDate": "1990-04-29T00:00:00Z", "storeId": "YxZM0HoY"}], "userIds": ["rkSUhSji", "Dnx4MowM", "okKX2iCX"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["643aiaVc", "D9EdOn5v", "AuoA6I9p"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'snNiEfM4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '32' \
    --status 'SUCCESS' \
    --userId 'SFLHfqsi' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'dZgw26o9' \
    --eventType 'REVOKED' \
    --externalOrderId 'Fa9d20OY' \
    --limit '62' \
    --offset '79' \
    --startTime 'SQQqOoMT' \
    --status 'FAIL' \
    --userId 'a3XO5HNZ' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "2IOT6ZKv", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 26, "clientTransactionId": "d5toyGe2"}, {"amountConsumed": 72, "clientTransactionId": "4uSK0rOI"}, {"amountConsumed": 22, "clientTransactionId": "fJHJwNn5"}], "entitlementId": "6DbaIgUy", "usageCount": 90}, {"clientTransaction": [{"amountConsumed": 0, "clientTransactionId": "Jf4V82bW"}, {"amountConsumed": 22, "clientTransactionId": "m9GB9qMh"}, {"amountConsumed": 88, "clientTransactionId": "MXAiIb5N"}], "entitlementId": "6yUMwWcD", "usageCount": 5}, {"clientTransaction": [{"amountConsumed": 57, "clientTransactionId": "qbiEj3rN"}, {"amountConsumed": 19, "clientTransactionId": "xeY61d5L"}, {"amountConsumed": 93, "clientTransactionId": "MJk6cv0J"}], "entitlementId": "Q35d7t7v", "usageCount": 97}], "purpose": "VpSqnzhm"}, "originalTitleName": "ZDjTFUoG", "paymentProductSKU": "Fc4dsUAu", "purchaseDate": "gmJdh73i", "sourceOrderItemId": "ViI5TOim", "titleName": "4WNJUV0A"}, "eventDomain": "8ooyV8KP", "eventSource": "zrGhhRM2", "eventType": "YduN87ch", "eventVersion": 1, "id": "mEz2ubRw", "timestamp": "pMtjdgLE"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "vQeHmXWP", "eventState": "2KYP5bsW", "lineItemId": "ZQU8Cxtg", "orderId": "v3pp2jwW", "productId": "GMJyEOkm", "productType": "XgzAshN6", "purchasedDate": "UPW2sSjz", "sandboxId": "M1AJvLz8", "skuId": "OC2moW3A", "subscriptionData": {"consumedDurationInDays": 52, "dateTime": "ZEw5e8zY", "durationInDays": 94, "recurrenceId": "MeRLPu5V"}}, "datacontenttype": "RvsL0XuP", "id": "RgL1F9RK", "source": "QLcJdpfU", "specVersion": "9IGjwSnZ", "subject": "vrXtLyhy", "time": "ENO4scYK", "traceparent": "6w7iiTgY", "type": "YyZ7OCue"}' \
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
    --body '{"appAppleId": 98, "bundleId": "ShjfEa96", "issuerId": "mwHoPP3b", "keyId": "sI1I7pW3", "password": "CbKXf0wG", "version": "V1"}' \
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
    --body '{"sandboxId": "sSrJ2G2U"}' \
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
    --body '{"applicationName": "FTcoRgur", "notificationTokenAudience": "LfAD2I4u", "notificationTokenEmail": "eesZeZKy", "packageName": "8inpJjXy", "serviceAccountId": "dEaa1uQX"}' \
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
    --body '{"data": [{"itemIdentity": "94cDWsMt", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"h03uaEIL": "1wOSOXHJ", "n4emai9P": "v5s2OsS2", "SPii58pA": "aFuERD4r"}}, {"itemIdentity": "FLKQA8X6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"tWDMshTN": "6qcxT8Fo", "VgtZ8Xlr": "b3JMuZkO", "XEGIOnSh": "WARGzVaK"}}, {"itemIdentity": "SDfsnzl5", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"MofYOHra": "VPySPUhq", "Js6CWCqX": "c2HHQzHK", "SmrG6Blc": "30jMPF42"}}]}' \
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
    --body '{"appId": "Gw1mh8kM", "appSecret": "Z7DX0wg6"}' \
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
    --body '{"backOfficeServerClientId": "Bw705En6", "backOfficeServerClientSecret": "hfmBenoF", "enableStreamJob": true, "environment": "KbfeCSUc", "streamName": "44LzK5tG", "streamPartnerName": "rXrUNd7r"}' \
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
    --body '{"backOfficeServerClientId": "N8xal6AJ", "backOfficeServerClientSecret": "N9IxDHy1", "enableStreamJob": false, "environment": "nJIIIEcD", "streamName": "zxcNWDU0", "streamPartnerName": "mgnGtbsX"}' \
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
    --body '{"appId": "DExQ0opA", "publisherAuthenticationKey": "uNnf4HQo"}' \
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
    --body '{"clientId": "nMmQhCWa", "clientSecret": "GSXQxbMM", "organizationId": "iv2uPVy6"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "bIsQJ4CE", "entraAppClientSecret": "3KN0XVyP", "entraTenantId": "N3QKu5Zq", "relyingPartyCert": "6o1GPnFk"}' \
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
    --password 'VVcF4Avh' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '1N5pRsRW' \
    --externalId 'hhFYZZOM' \
    --limit '79' \
    --offset '41' \
    --source 'STEAM' \
    --startDate 'GFLApHf3' \
    --status 'ERROR' \
    --type 'BZKXO0Lc' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'vXgRoix8' \
    --limit '23' \
    --offset '40' \
    --platform 'STEAM' \
    --productId 'djMEsG77' \
    --userId 'JYkqrYZr' \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'UwTWOi1E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'bwpHoavv' \
    --feature 'GoyuF3T9' \
    --itemId 'JGAGGZtW' \
    --itemType 'OPTIONBOX' \
    --startTime 'rWzlzDaR' \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'pzhbDgEB' \
    --feature 'rkpfzAlG' \
    --itemId 'GpeKdSdq' \
    --itemType 'COINS' \
    --startTime 'nN9TeEnR' \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XrzIL7nW' \
    --body '{"categoryPath": "qDtE5pht", "targetItemId": "vHVGixwO", "targetNamespace": "kgewuhw2"}' \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '6d1ghFuA' \
    --body '{"appId": "lnIdVmfc", "appType": "DLC", "baseAppId": "vYgGSu54", "boothName": "ffxBvCTs", "categoryPath": "MYMsSCkp", "clazz": "EIkYY2tj", "displayOrder": 64, "entitlementType": "CONSUMABLE", "ext": {"55kAoVDx": {}, "eBBMEU16": {}, "IRZJlzCX": {}}, "features": ["pQXWm8xo", "koVkgAW6", "sX6XPApq"], "flexible": true, "images": [{"as": "krO2kcK1", "caption": "sWWJiqQ4", "height": 29, "imageUrl": "Woy7yYXn", "smallImageUrl": "3Z4SZLza", "width": 93}, {"as": "UoTycld3", "caption": "GFapRKPu", "height": 28, "imageUrl": "1aIWLXP2", "smallImageUrl": "E4X4oOkj", "width": 43}, {"as": "qcuzN3Rl", "caption": "HVw04FKG", "height": 76, "imageUrl": "1jmrwLKj", "smallImageUrl": "SNUjqWWt", "width": 9}], "inventoryConfig": {"customAttributes": {"IkRiCEE1": {}, "QKCXabcO": {}, "agqNaZlJ": {}}, "serverCustomAttributes": {"P5T2Sfst": {}, "P34o88k2": {}, "oGlu2d59": {}}, "slotUsed": 91}, "itemIds": ["Rkiqs5uA", "a472F17E", "rhT6WyLG"], "itemQty": {"BaFqzfY3": 28, "jP1xRa90": 34, "kOq2dfpr": 57}, "itemType": "CODE", "listable": true, "localizations": {"sPxcSYN3": {"description": "ue2nDG2R", "localExt": {"R3pamvKw": {}, "bJb04Csn": {}, "nvxQYawt": {}}, "longDescription": "9nK21lJb", "title": "8LfEpmgp"}, "t2IcQoQ2": {"description": "FZMCGyjK", "localExt": {"gbmB77vX": {}, "38HptpAl": {}, "XPuxSCv7": {}}, "longDescription": "lqibRUH7", "title": "aLN6mWxs"}, "9njFgTRg": {"description": "Af8XGKJu", "localExt": {"3w9bVVPZ": {}, "ANMfhjwB": {}, "DJ4V7jBV": {}}, "longDescription": "IR3LS0Dk", "title": "X5dt7f8Z"}}, "lootBoxConfig": {"rewardCount": 92, "rewards": [{"lootBoxItems": [{"count": 34, "duration": 98, "endDate": "1987-05-24T00:00:00Z", "itemId": "9iYorp3e", "itemSku": "8TxlAbGB", "itemType": "sB6bjDW6"}, {"count": 64, "duration": 89, "endDate": "1972-08-03T00:00:00Z", "itemId": "RDVT0EwA", "itemSku": "VbirreBe", "itemType": "B0MiHlmV"}, {"count": 88, "duration": 8, "endDate": "1981-03-15T00:00:00Z", "itemId": "0Em656VE", "itemSku": "lbLno4Sy", "itemType": "21AtiYuS"}], "name": "6BmI9Bu0", "odds": 0.4688829799781974, "type": "PROBABILITY_GROUP", "weight": 34}, {"lootBoxItems": [{"count": 21, "duration": 14, "endDate": "1997-07-03T00:00:00Z", "itemId": "RR1LTTPv", "itemSku": "5tQwEf3m", "itemType": "Mid85tzP"}, {"count": 0, "duration": 64, "endDate": "1973-01-19T00:00:00Z", "itemId": "BaXuIBZg", "itemSku": "ZcpUnGOb", "itemType": "9p64KaTl"}, {"count": 37, "duration": 24, "endDate": "1996-11-16T00:00:00Z", "itemId": "te7rwkGD", "itemSku": "zD9hAYOv", "itemType": "3jtPsnIc"}], "name": "8WFPBIi4", "odds": 0.33098390850624704, "type": "REWARD_GROUP", "weight": 77}, {"lootBoxItems": [{"count": 50, "duration": 83, "endDate": "1971-03-17T00:00:00Z", "itemId": "1JDAIy1l", "itemSku": "ifcEnmXU", "itemType": "KMO3un1z"}, {"count": 86, "duration": 13, "endDate": "1986-01-05T00:00:00Z", "itemId": "vlUtup31", "itemSku": "vNRagORZ", "itemType": "GOpJZAA1"}, {"count": 10, "duration": 78, "endDate": "1994-10-07T00:00:00Z", "itemId": "dTWOfyBG", "itemSku": "8alcf8sp", "itemType": "xi9BZB7Z"}], "name": "1zbo7fT4", "odds": 0.4368136825344898, "type": "REWARD", "weight": 51}], "rollFunction": "DEFAULT"}, "maxCount": 92, "maxCountPerUser": 90, "name": "9odwhVc6", "optionBoxConfig": {"boxItems": [{"count": 83, "duration": 34, "endDate": "1988-11-23T00:00:00Z", "itemId": "vMn7p3vO", "itemSku": "U4GunxQd", "itemType": "1teNtWsD"}, {"count": 19, "duration": 87, "endDate": "1982-10-17T00:00:00Z", "itemId": "vSWWeDDZ", "itemSku": "pKI30JkM", "itemType": "9yYfcG0v"}, {"count": 87, "duration": 14, "endDate": "1975-06-08T00:00:00Z", "itemId": "Pv3GUl8w", "itemSku": "INVkk5Yr", "itemType": "lZJUPDlH"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 7, "fixedTrialCycles": 88, "graceDays": 53}, "regionData": {"xCMyFdmu": [{"currencyCode": "Wwlc63U7", "currencyNamespace": "J4N36yNI", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1977-05-18T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1984-09-06T00:00:00Z", "expireAt": "1994-02-25T00:00:00Z", "price": 14, "purchaseAt": "1994-02-16T00:00:00Z", "trialPrice": 98}, {"currencyCode": "EEev9Vnu", "currencyNamespace": "7UeXSKt6", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1978-12-19T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1976-03-14T00:00:00Z", "expireAt": "1976-10-29T00:00:00Z", "price": 44, "purchaseAt": "1980-10-23T00:00:00Z", "trialPrice": 36}, {"currencyCode": "Dh9Gmk2Y", "currencyNamespace": "TatSyoKQ", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1974-08-27T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1973-01-15T00:00:00Z", "expireAt": "1981-01-16T00:00:00Z", "price": 99, "purchaseAt": "1975-01-30T00:00:00Z", "trialPrice": 83}], "S157OA0x": [{"currencyCode": "Q1kptfy9", "currencyNamespace": "SGVA1lnk", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1976-01-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1997-06-19T00:00:00Z", "expireAt": "1981-09-24T00:00:00Z", "price": 11, "purchaseAt": "1986-01-23T00:00:00Z", "trialPrice": 69}, {"currencyCode": "vi7xZlAY", "currencyNamespace": "kkvJfd7g", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1978-10-12T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1972-07-18T00:00:00Z", "expireAt": "1987-01-20T00:00:00Z", "price": 37, "purchaseAt": "1994-12-06T00:00:00Z", "trialPrice": 18}, {"currencyCode": "ZEnXXNzW", "currencyNamespace": "M7OdFP2i", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1990-05-13T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1977-03-13T00:00:00Z", "expireAt": "1991-07-18T00:00:00Z", "price": 80, "purchaseAt": "1976-10-23T00:00:00Z", "trialPrice": 88}], "KM4EYLgP": [{"currencyCode": "YFziEBYj", "currencyNamespace": "SKQjMWdH", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1983-05-24T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1985-03-15T00:00:00Z", "expireAt": "1989-01-03T00:00:00Z", "price": 73, "purchaseAt": "1996-01-01T00:00:00Z", "trialPrice": 52}, {"currencyCode": "lsBqHhIZ", "currencyNamespace": "Ho7tHrMu", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1991-10-17T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1995-01-14T00:00:00Z", "expireAt": "1992-11-14T00:00:00Z", "price": 75, "purchaseAt": "1991-12-31T00:00:00Z", "trialPrice": 31}, {"currencyCode": "5dS5HqDz", "currencyNamespace": "q3qF4IjD", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1971-02-16T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1978-08-30T00:00:00Z", "expireAt": "1979-11-29T00:00:00Z", "price": 50, "purchaseAt": "1983-11-06T00:00:00Z", "trialPrice": 28}]}, "saleConfig": {"currencyCode": "c6taznYy", "price": 0}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "Oidn995F", "stackable": false, "status": "INACTIVE", "tags": ["jBxlFQu7", "AM5PSryf", "ZCMDT513"], "targetCurrencyCode": "V18Rg9uM", "targetNamespace": "C6LiMnB4", "thumbnailUrl": "ZCHi8FjQ", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'm29zj1ks' \
    --appId 'nLL0ohBA' \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'HChPkMUQ' \
    --baseAppId 'HYMkfu3Z' \
    --categoryPath 'kSHzbks3' \
    --features 'Zq76rcUU' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --limit '94' \
    --offset '89' \
    --region 'wkuiq6SV' \
    --sortBy '["updatedAt:desc", "displayOrder:asc", "displayOrder"]' \
    --storeId 'aYPNfRQP' \
    --tags 'pXO1BSDU' \
    --targetNamespace 'IZhyaBbT' \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["onY4pgzq", "5DklFHFy", "riH5SJyV"]' \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '8E80xtk8' \
    --itemIds 'glEkeW2a' \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ufMlTxof' \
    --sku 'SbHtmiHc' \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'bOicwPXa' \
    --populateBundle 'true' \
    --region '1IaTeAmM' \
    --storeId 'IRt3lQoI' \
    --sku 'hONiqPqz' \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'SzW3NeE6' \
    --region 'E95ExeTu' \
    --storeId 'MlTHXwcu' \
    --itemIds 'QHGamC56' \
    --userId 'm2WoEdBq' \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ZWdtsFT3' \
    --sku 'qUe8yTwW' \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["NZHoRTna", "gbQbBwS4", "UInoZl4f"]' \
    --storeId 'YJHKmz9J' \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'EkvNIT3J' \
    --region 'HFZ5rhqd' \
    --storeId 'LecDfCRW' \
    --itemIds 'LrqM5qtb' \
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
    --platform 'QRX0eFC9' \
    --userId 'K9i2jUni' \
    --body '{"itemIds": ["Qf9sKUoP", "XCK3At9g", "KJaiVpH3"]}' \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'qTRhnShq' \
    --body '{"changes": [{"itemIdentities": ["RVQBNidT", "tkumZpb9", "CK7ElKQF"], "itemIdentityType": "ITEM_SKU", "regionData": {"VkxbxsyI": [{"currencyCode": "jXD8FUou", "currencyNamespace": "hrUJWXdP", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1992-09-18T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1980-11-09T00:00:00Z", "discountedPrice": 92, "expireAt": "1991-02-10T00:00:00Z", "price": 84, "purchaseAt": "1996-10-15T00:00:00Z", "trialPrice": 46}, {"currencyCode": "rk2hTMSC", "currencyNamespace": "qEi0MEDp", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1999-06-18T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1986-06-17T00:00:00Z", "discountedPrice": 48, "expireAt": "1986-01-05T00:00:00Z", "price": 96, "purchaseAt": "1979-05-19T00:00:00Z", "trialPrice": 32}, {"currencyCode": "D3ylD87b", "currencyNamespace": "ICmOaNmy", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1979-07-06T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1989-04-15T00:00:00Z", "discountedPrice": 66, "expireAt": "1990-07-26T00:00:00Z", "price": 97, "purchaseAt": "1976-04-22T00:00:00Z", "trialPrice": 82}], "ne2SMDqP": [{"currencyCode": "eeyQICr6", "currencyNamespace": "CgDI8Dgz", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1982-07-08T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1987-06-04T00:00:00Z", "discountedPrice": 51, "expireAt": "1981-07-06T00:00:00Z", "price": 68, "purchaseAt": "1989-08-20T00:00:00Z", "trialPrice": 79}, {"currencyCode": "VQ8QRbH0", "currencyNamespace": "gPqlKCTk", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1978-04-26T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1990-09-19T00:00:00Z", "discountedPrice": 97, "expireAt": "1997-07-23T00:00:00Z", "price": 5, "purchaseAt": "1977-03-30T00:00:00Z", "trialPrice": 40}, {"currencyCode": "eo31pLjb", "currencyNamespace": "Q2dQLRm8", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1997-12-15T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1986-03-02T00:00:00Z", "discountedPrice": 41, "expireAt": "1981-09-09T00:00:00Z", "price": 25, "purchaseAt": "1994-08-03T00:00:00Z", "trialPrice": 2}], "3yzhfAm7": [{"currencyCode": "OsTjM5fL", "currencyNamespace": "PeIF7hd5", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1985-03-17T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1996-02-04T00:00:00Z", "discountedPrice": 31, "expireAt": "1979-03-21T00:00:00Z", "price": 26, "purchaseAt": "1995-08-06T00:00:00Z", "trialPrice": 50}, {"currencyCode": "vKa1tCDr", "currencyNamespace": "oBDF2oCE", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1985-06-14T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1980-03-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1995-07-01T00:00:00Z", "price": 73, "purchaseAt": "1999-03-04T00:00:00Z", "trialPrice": 92}, {"currencyCode": "VcpwuLwf", "currencyNamespace": "UhRTuu8Y", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1989-06-15T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1998-07-11T00:00:00Z", "discountedPrice": 23, "expireAt": "1979-02-28T00:00:00Z", "price": 10, "purchaseAt": "1995-02-28T00:00:00Z", "trialPrice": 39}]}}, {"itemIdentities": ["UwwglUaw", "jhx96vnu", "8SAzx7N6"], "itemIdentityType": "ITEM_ID", "regionData": {"1g221kob": [{"currencyCode": "IENGOS3F", "currencyNamespace": "eUuV7ccl", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1990-03-22T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1973-09-10T00:00:00Z", "discountedPrice": 87, "expireAt": "1980-09-19T00:00:00Z", "price": 71, "purchaseAt": "1974-04-10T00:00:00Z", "trialPrice": 40}, {"currencyCode": "0MqClqw8", "currencyNamespace": "OSLejDq9", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1996-02-29T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1978-01-12T00:00:00Z", "discountedPrice": 22, "expireAt": "1975-10-22T00:00:00Z", "price": 16, "purchaseAt": "1972-01-01T00:00:00Z", "trialPrice": 7}, {"currencyCode": "0ww8iN5P", "currencyNamespace": "QK6eBW4P", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1979-07-14T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1974-08-26T00:00:00Z", "discountedPrice": 21, "expireAt": "1992-04-11T00:00:00Z", "price": 38, "purchaseAt": "1987-07-12T00:00:00Z", "trialPrice": 93}], "ySTLi5Pr": [{"currencyCode": "N3HIQLRS", "currencyNamespace": "xPkkqskX", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1996-05-06T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1972-12-03T00:00:00Z", "discountedPrice": 58, "expireAt": "1973-07-17T00:00:00Z", "price": 39, "purchaseAt": "1998-02-14T00:00:00Z", "trialPrice": 54}, {"currencyCode": "C9xM25H6", "currencyNamespace": "cAmXo40E", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1975-12-19T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1989-11-16T00:00:00Z", "discountedPrice": 88, "expireAt": "1992-05-22T00:00:00Z", "price": 8, "purchaseAt": "1991-06-29T00:00:00Z", "trialPrice": 11}, {"currencyCode": "GbVbTK3n", "currencyNamespace": "lLCtg0M2", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1985-07-12T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1988-07-24T00:00:00Z", "discountedPrice": 86, "expireAt": "1991-11-23T00:00:00Z", "price": 57, "purchaseAt": "1975-10-30T00:00:00Z", "trialPrice": 32}], "XWuxPpZF": [{"currencyCode": "2Tv7noAp", "currencyNamespace": "FBxBQA5v", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1978-10-29T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1975-11-30T00:00:00Z", "discountedPrice": 43, "expireAt": "1995-11-28T00:00:00Z", "price": 70, "purchaseAt": "1971-10-01T00:00:00Z", "trialPrice": 44}, {"currencyCode": "mn2AAPk5", "currencyNamespace": "Ag45WyRR", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1979-11-30T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1971-09-30T00:00:00Z", "discountedPrice": 92, "expireAt": "1989-02-06T00:00:00Z", "price": 60, "purchaseAt": "1981-04-28T00:00:00Z", "trialPrice": 36}, {"currencyCode": "rC4ShImo", "currencyNamespace": "ORo4h8R4", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1984-05-15T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1991-12-18T00:00:00Z", "discountedPrice": 78, "expireAt": "1994-06-02T00:00:00Z", "price": 43, "purchaseAt": "1992-12-13T00:00:00Z", "trialPrice": 84}]}}, {"itemIdentities": ["cyoFn2p7", "iUt78eKT", "56eOOFWs"], "itemIdentityType": "ITEM_ID", "regionData": {"ErRMNtCr": [{"currencyCode": "esEHtsaD", "currencyNamespace": "XCTJdQFR", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1982-06-17T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1978-03-20T00:00:00Z", "discountedPrice": 11, "expireAt": "1981-07-08T00:00:00Z", "price": 56, "purchaseAt": "1989-07-15T00:00:00Z", "trialPrice": 49}, {"currencyCode": "6yWljq47", "currencyNamespace": "0H6sRU7x", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1980-09-10T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-01-03T00:00:00Z", "discountedPrice": 75, "expireAt": "1999-10-08T00:00:00Z", "price": 33, "purchaseAt": "1973-07-14T00:00:00Z", "trialPrice": 36}, {"currencyCode": "IJ01pFha", "currencyNamespace": "WrANoXJ7", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1981-09-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1987-04-29T00:00:00Z", "discountedPrice": 76, "expireAt": "1975-02-12T00:00:00Z", "price": 47, "purchaseAt": "1982-12-07T00:00:00Z", "trialPrice": 61}], "3CgzUL6O": [{"currencyCode": "Tz6xrgpi", "currencyNamespace": "CjH6rJHJ", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1989-07-20T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1973-06-07T00:00:00Z", "discountedPrice": 28, "expireAt": "1990-06-21T00:00:00Z", "price": 12, "purchaseAt": "1972-08-20T00:00:00Z", "trialPrice": 4}, {"currencyCode": "4RRgKzcX", "currencyNamespace": "KI7EX2PX", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1979-05-03T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1998-01-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-04-14T00:00:00Z", "price": 71, "purchaseAt": "1994-12-22T00:00:00Z", "trialPrice": 99}, {"currencyCode": "jUEhhqi3", "currencyNamespace": "7lnHfCIL", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1975-12-31T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1971-07-19T00:00:00Z", "discountedPrice": 19, "expireAt": "1988-04-08T00:00:00Z", "price": 41, "purchaseAt": "1973-07-17T00:00:00Z", "trialPrice": 79}], "dKlubJ3O": [{"currencyCode": "nQeE7JzW", "currencyNamespace": "QQR7VzJd", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1993-10-19T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1982-08-14T00:00:00Z", "discountedPrice": 44, "expireAt": "1991-07-02T00:00:00Z", "price": 28, "purchaseAt": "1982-09-22T00:00:00Z", "trialPrice": 53}, {"currencyCode": "Hm3cW1IQ", "currencyNamespace": "MXZbPdI1", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1974-07-28T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1989-05-09T00:00:00Z", "discountedPrice": 61, "expireAt": "1973-01-11T00:00:00Z", "price": 29, "purchaseAt": "1992-12-25T00:00:00Z", "trialPrice": 84}, {"currencyCode": "c2JfZvqC", "currencyNamespace": "wYJMKFHI", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1996-12-18T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1975-04-14T00:00:00Z", "discountedPrice": 10, "expireAt": "1983-12-11T00:00:00Z", "price": 40, "purchaseAt": "1997-01-12T00:00:00Z", "trialPrice": 51}]}}]}' \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'COINS' \
    --limit '58' \
    --offset '100' \
    --sortBy 'jcz4saaY' \
    --storeId 'HuDtNtrp' \
    --keyword 'En6trbxS' \
    --language 'VPeRWlRe' \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '30' \
    --offset '46' \
    --sortBy '["createdAt", "displayOrder:asc", "displayOrder"]' \
    --storeId 'cJeHgGMG' \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'KDhQzzLu' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '46fMXd1k' \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'inx4EdRa' \
    --namespace $AB_NAMESPACE \
    --storeId 'emWl0T34' \
    --body '{"appId": "7IfCwmNe", "appType": "DEMO", "baseAppId": "zh32crAv", "boothName": "sgfczgKz", "categoryPath": "k6oGpRdr", "clazz": "AZeI5CKq", "displayOrder": 72, "entitlementType": "CONSUMABLE", "ext": {"tngCkzQB": {}, "SqiZV0at": {}, "1Nxi6J2k": {}}, "features": ["WGg1bCgO", "x1iWSuk3", "yXpJLz5N"], "flexible": false, "images": [{"as": "vaMbaRU1", "caption": "IIaM612X", "height": 81, "imageUrl": "7Plm7zEd", "smallImageUrl": "NDEqqIyl", "width": 44}, {"as": "xANpljAL", "caption": "o8PbNX4u", "height": 92, "imageUrl": "TMRrmia0", "smallImageUrl": "ArCgBcDg", "width": 90}, {"as": "xKQywNj6", "caption": "iBiy2ZtX", "height": 70, "imageUrl": "LTnWqFYm", "smallImageUrl": "UuyltMui", "width": 18}], "inventoryConfig": {"customAttributes": {"uzl2IMy5": {}, "fcKPQruH": {}, "COw6utck": {}}, "serverCustomAttributes": {"O5G1Fn4f": {}, "yEY7ghaQ": {}, "aNrzU1j5": {}}, "slotUsed": 5}, "itemIds": ["hR6t1VeR", "YyTXGKlE", "sXSdvJPx"], "itemQty": {"oDAu5BlC": 43, "StDWSGQA": 95, "OgL91WQf": 47}, "itemType": "MEDIA", "listable": false, "localizations": {"VKcVaH5A": {"description": "U72GPxxS", "localExt": {"u9BmSSUa": {}, "RioKDWtu": {}, "1vsdUORS": {}}, "longDescription": "SCXmh1JI", "title": "CdnlW0SD"}, "lZKktdz9": {"description": "w7sdy6em", "localExt": {"GQZx5Bkq": {}, "LDZvvtNJ": {}, "scZzUaBg": {}}, "longDescription": "gm8sBriP", "title": "HWcydLfi"}, "2D9TzWS8": {"description": "6v0nACIz", "localExt": {"LiixYhyp": {}, "BsluDP2I": {}, "hdanOAX6": {}}, "longDescription": "D4egpOZO", "title": "nfmK1qOC"}}, "lootBoxConfig": {"rewardCount": 12, "rewards": [{"lootBoxItems": [{"count": 38, "duration": 33, "endDate": "1976-09-10T00:00:00Z", "itemId": "LXBc8AWj", "itemSku": "7QqDoUjW", "itemType": "KoQ81Qdm"}, {"count": 21, "duration": 38, "endDate": "1972-10-11T00:00:00Z", "itemId": "1JiwbvE4", "itemSku": "o5gBTpOE", "itemType": "jFiQpSF6"}, {"count": 41, "duration": 40, "endDate": "1982-07-05T00:00:00Z", "itemId": "GQlPqUJp", "itemSku": "7M7ncufn", "itemType": "O8fSnBaf"}], "name": "IcP5K6Be", "odds": 0.7265740192559313, "type": "REWARD", "weight": 87}, {"lootBoxItems": [{"count": 84, "duration": 40, "endDate": "1988-09-10T00:00:00Z", "itemId": "XS75Wsby", "itemSku": "2EDnpvmT", "itemType": "mFSkejdM"}, {"count": 87, "duration": 68, "endDate": "1999-05-17T00:00:00Z", "itemId": "C9udvGiX", "itemSku": "4z2pm0KV", "itemType": "uRXADzvP"}, {"count": 93, "duration": 44, "endDate": "1979-08-08T00:00:00Z", "itemId": "XaOS422K", "itemSku": "96EDVUUB", "itemType": "0kbGilPr"}], "name": "OvWCM7gL", "odds": 0.41962019090026415, "type": "PROBABILITY_GROUP", "weight": 80}, {"lootBoxItems": [{"count": 81, "duration": 89, "endDate": "1988-06-12T00:00:00Z", "itemId": "kKJWoOeF", "itemSku": "C3vIHfWC", "itemType": "IJU1pazw"}, {"count": 71, "duration": 93, "endDate": "1983-12-19T00:00:00Z", "itemId": "hkKiaTsO", "itemSku": "C6BauJTj", "itemType": "rFkCQVWC"}, {"count": 26, "duration": 30, "endDate": "1994-02-16T00:00:00Z", "itemId": "tPxuabhR", "itemSku": "gecSW68w", "itemType": "61HwsJpT"}], "name": "uxQKaKkq", "odds": 0.7926813250890827, "type": "REWARD_GROUP", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 59, "maxCountPerUser": 21, "name": "nLCM2Mtm", "optionBoxConfig": {"boxItems": [{"count": 83, "duration": 20, "endDate": "1997-06-17T00:00:00Z", "itemId": "Cx2Imr2q", "itemSku": "8BCwcUKu", "itemType": "TJNcnlC8"}, {"count": 81, "duration": 79, "endDate": "1992-07-06T00:00:00Z", "itemId": "IRkVVywr", "itemSku": "PoDmujzK", "itemType": "uxSR2Agl"}, {"count": 57, "duration": 64, "endDate": "1993-09-26T00:00:00Z", "itemId": "PflyfZf5", "itemSku": "AcoMOo81", "itemType": "hEMEOjKf"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 40, "fixedTrialCycles": 49, "graceDays": 40}, "regionData": {"obdVS1cG": [{"currencyCode": "OaeTQjkj", "currencyNamespace": "lXFA92li", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1995-10-18T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1995-11-08T00:00:00Z", "expireAt": "1977-07-06T00:00:00Z", "price": 82, "purchaseAt": "1979-07-26T00:00:00Z", "trialPrice": 46}, {"currencyCode": "kPArObf3", "currencyNamespace": "NlshbsMD", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1995-12-26T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1981-11-19T00:00:00Z", "expireAt": "1982-04-18T00:00:00Z", "price": 55, "purchaseAt": "1985-06-25T00:00:00Z", "trialPrice": 100}, {"currencyCode": "ddAK0fRl", "currencyNamespace": "n3CfzsRK", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1989-02-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1976-12-03T00:00:00Z", "expireAt": "1994-06-04T00:00:00Z", "price": 96, "purchaseAt": "1976-11-02T00:00:00Z", "trialPrice": 100}], "ZSQuIiJt": [{"currencyCode": "5xxqzdXN", "currencyNamespace": "5wHC9SoM", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1980-04-01T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1981-11-07T00:00:00Z", "expireAt": "1978-11-11T00:00:00Z", "price": 55, "purchaseAt": "1996-09-14T00:00:00Z", "trialPrice": 69}, {"currencyCode": "qM6epG19", "currencyNamespace": "AVqXziYx", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1980-09-10T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1999-12-25T00:00:00Z", "expireAt": "1999-12-09T00:00:00Z", "price": 8, "purchaseAt": "1974-06-06T00:00:00Z", "trialPrice": 10}, {"currencyCode": "Zd1mpKEo", "currencyNamespace": "BM0TK0K4", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1971-10-19T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1983-05-19T00:00:00Z", "expireAt": "1995-10-17T00:00:00Z", "price": 98, "purchaseAt": "1998-04-18T00:00:00Z", "trialPrice": 0}], "omogH50r": [{"currencyCode": "f22RRozL", "currencyNamespace": "gISkVKIA", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1998-07-26T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1974-05-28T00:00:00Z", "expireAt": "1986-06-21T00:00:00Z", "price": 0, "purchaseAt": "1985-08-12T00:00:00Z", "trialPrice": 72}, {"currencyCode": "0pjUfwM4", "currencyNamespace": "kNkHwm9t", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1974-04-26T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1972-09-21T00:00:00Z", "expireAt": "1976-06-08T00:00:00Z", "price": 12, "purchaseAt": "1977-06-28T00:00:00Z", "trialPrice": 44}, {"currencyCode": "4tk3n4m8", "currencyNamespace": "7CqJ4ljb", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1984-03-30T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1971-10-06T00:00:00Z", "expireAt": "1980-10-05T00:00:00Z", "price": 34, "purchaseAt": "1990-08-07T00:00:00Z", "trialPrice": 1}]}, "saleConfig": {"currencyCode": "QoiociVu", "price": 52}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "TqkjcNrJ", "stackable": true, "status": "ACTIVE", "tags": ["u9ooXVlZ", "lXeEN8p0", "17cU7Tei"], "targetCurrencyCode": "ZcviHePd", "targetNamespace": "kzlAL3yB", "thumbnailUrl": "wrAqyy1e", "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '3qBFqPBA' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'YgoEA40E' \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'sVP1QeFV' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 78, "orderNo": "uqC2I8J8"}' \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'VInfmAHb' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WyKk7zD7' \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '37ENzpe7' \
    --namespace $AB_NAMESPACE \
    --storeId '3FfS24ud' \
    --body '{"carousel": [{"alt": "aPpHz631", "previewUrl": "DpMJnjQv", "thumbnailUrl": "tmxv7LoJ", "type": "video", "url": "rgc8e2Yu", "videoSource": "youtube"}, {"alt": "fbNl9jkL", "previewUrl": "fgMeJZRX", "thumbnailUrl": "7snMl5dp", "type": "image", "url": "V4LpEygG", "videoSource": "generic"}, {"alt": "iICwg73F", "previewUrl": "303eyiKF", "thumbnailUrl": "uFKwe7Ls", "type": "image", "url": "5R2SuhAb", "videoSource": "generic"}], "developer": "lFu2VqJ2", "forumUrl": "BCSzh3Co", "genres": ["Action", "MassivelyMultiplayer", "Racing"], "localizations": {"IDTyFc0q": {"announcement": "DbuBa8Gx", "slogan": "Oatgwi2N"}, "nctxF6pu": {"announcement": "p9cLNwsT", "slogan": "weiBKKWj"}, "lYKNXkFI": {"announcement": "HChbkTY9", "slogan": "3ULuQfpg"}}, "platformRequirements": {"EOTY4QYg": [{"additionals": "1hUwOmXj", "directXVersion": "8fDZ3MpI", "diskSpace": "fb9YC8a5", "graphics": "ShJbUZfy", "label": "THuZvqYI", "osVersion": "76HH08MK", "processor": "mJNmyzkH", "ram": "5wW1mUKR", "soundCard": "5sKrYwUI"}, {"additionals": "baGfHM1v", "directXVersion": "BdUgGubj", "diskSpace": "gEJhCBqI", "graphics": "acvP9rgN", "label": "pqrIito6", "osVersion": "qI7kHTEN", "processor": "2Lhj9wg1", "ram": "gTCSWJYu", "soundCard": "8kY6d3jQ"}, {"additionals": "6pi58OUj", "directXVersion": "C1UzjdcN", "diskSpace": "IQOijeUG", "graphics": "9qD6dvms", "label": "2BGVftDS", "osVersion": "RniZXehT", "processor": "9gxS83ct", "ram": "Tyog4Cbi", "soundCard": "KCGAW0u5"}], "xKeo9yVB": [{"additionals": "P3z3zVOO", "directXVersion": "rhCu12P1", "diskSpace": "4REVctXX", "graphics": "GJlFFfgZ", "label": "s6od3zW5", "osVersion": "pMSVGsjS", "processor": "a3xhfuRz", "ram": "fy5wT5wI", "soundCard": "LzH0Sg51"}, {"additionals": "0EVhcbfH", "directXVersion": "quKkJ6p4", "diskSpace": "MiZvX5Xm", "graphics": "rnf88prB", "label": "qfhUZZ8d", "osVersion": "2MN8c90j", "processor": "0DZI4qaU", "ram": "G8GnkM08", "soundCard": "PrnMHoTY"}, {"additionals": "IWKaOm0b", "directXVersion": "77aWMXOm", "diskSpace": "mznkxhS5", "graphics": "7dmbEmaj", "label": "YldAsC21", "osVersion": "CoUgHfCq", "processor": "t0Y05NTy", "ram": "NrBChVNZ", "soundCard": "4cyrQuK7"}], "s66KYVtv": [{"additionals": "rhQKwsaR", "directXVersion": "RJUzfbKN", "diskSpace": "EuWJRhWt", "graphics": "tvrhadhx", "label": "9BAYMdbU", "osVersion": "oRGJVwoF", "processor": "rcmfZpQ2", "ram": "NV3cIpuk", "soundCard": "ewEUat2m"}, {"additionals": "EcrMFde9", "directXVersion": "f2etpG70", "diskSpace": "xZnv3I0Y", "graphics": "x1WuGPgX", "label": "FRiMrPvm", "osVersion": "ibz9jSWO", "processor": "8dUqWPwR", "ram": "JvDGpmjk", "soundCard": "51z7EsUy"}, {"additionals": "1Qx1eyB9", "directXVersion": "oIP8LFGP", "diskSpace": "UzvzoHZp", "graphics": "2MQgnx37", "label": "wfbHtqxP", "osVersion": "vkmJNwct", "processor": "fWZUjNbx", "ram": "3DEY6HgH", "soundCard": "171K4SUh"}]}, "platforms": ["Android", "MacOS", "Android"], "players": ["MMO", "Coop", "LocalCoop"], "primaryGenre": "Sports", "publisher": "qTEP2aGW", "releaseDate": "1979-04-19T00:00:00Z", "websiteUrl": "KrMu5Trz"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '9THEVNGn' \
    --namespace $AB_NAMESPACE \
    --storeId 'IU54H9k8' \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'foulFckW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'XfKhJnfz' \
    --namespace $AB_NAMESPACE \
    --storeId '2VZd176k' \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'hDCXv6Y0' \
    --itemId 'O8OYmEgQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'kL4WE0u9' \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'r9zhGd8c' \
    --itemId 'CYXLUkiO' \
    --namespace $AB_NAMESPACE \
    --storeId 'C56SiAFx' \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'LmKEI8Wd' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'i5EJaR0j' \
    --populateBundle 'true' \
    --region '9wEF21C5' \
    --storeId 'jjXAv3Cw' \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'ey72s4lc' \
    --namespace $AB_NAMESPACE \
    --storeId 'T2f4YS3u' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 98, "code": "943JQGfI", "comparison": "isGreaterThan", "name": "e282J3dB", "predicateType": "SeasonPassPredicate", "value": "wAh3NCwZ", "values": ["RwkM4Sog", "mnVzQrZ7", "SlJOHqCK"]}, {"anyOf": 53, "code": "lLpW6DlN", "comparison": "isLessThan", "name": "ePY2rdeL", "predicateType": "StatisticCodePredicate", "value": "gLDCtybI", "values": ["TZZmuU28", "jCdgFJfr", "9TeNa9BG"]}, {"anyOf": 24, "code": "heRoi1bd", "comparison": "isGreaterThanOrEqual", "name": "IKnZzWJ2", "predicateType": "StatisticCodePredicate", "value": "XsKS3fIy", "values": ["iMNOm2XM", "Slbu6pOV", "wLyO5ZoC"]}]}, {"operator": "or", "predicates": [{"anyOf": 28, "code": "ORiSMd57", "comparison": "excludes", "name": "oyR5q2Gg", "predicateType": "StatisticCodePredicate", "value": "sjtxzVcM", "values": ["fb91V9XV", "5tAeFyrW", "wcZzA5WT"]}, {"anyOf": 67, "code": "i2gSgl8y", "comparison": "excludes", "name": "LvvTCxMX", "predicateType": "EntitlementPredicate", "value": "pBzYG5nK", "values": ["6PFQr7vh", "i2991VaH", "l1YbUrdj"]}, {"anyOf": 35, "code": "fXFi0ZHe", "comparison": "excludes", "name": "1HlMP51Z", "predicateType": "SeasonPassPredicate", "value": "bEfJVaCo", "values": ["nN15V9Re", "Bnz7KZft", "TcAZZ24o"]}]}, {"operator": "or", "predicates": [{"anyOf": 45, "code": "Gvek7HpD", "comparison": "excludes", "name": "1DfDPhsO", "predicateType": "SeasonTierPredicate", "value": "rA61mTU3", "values": ["XVq4JtPZ", "exlSRpaO", "Z0UpZPPb"]}, {"anyOf": 21, "code": "1y6Pz9i3", "comparison": "isNot", "name": "PqWea67L", "predicateType": "SeasonTierPredicate", "value": "DSSeMzzE", "values": ["dYf45EZC", "FcMHMzNt", "gdBO1upz"]}, {"anyOf": 10, "code": "c38yH6ed", "comparison": "includes", "name": "mO2Wo17z", "predicateType": "SeasonPassPredicate", "value": "j8IqiuK9", "values": ["LsiDLn4l", "JcmGYTdZ", "1A8fTR1j"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'QaOepryB' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "C3LuGzYm"}' \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'xoHW0cuM' \
    --offset '7' \
    --tag '2TemnbFK' \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7OrOGl0B", "name": "BcP47eaP", "status": "INACTIVE", "tags": ["NvwfdHgp", "jZ1DuH87", "q8sYF5sN"]}' \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'xVTAR204' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'UNBSnT2a' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "f4wsv3yL", "name": "h9mTyjDw", "status": "INACTIVE", "tags": ["45FKMaRp", "7vLBiSAU", "S9FeNpgT"]}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'VXWrapvZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'sYcBvwRD' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '73' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '3tGSkN5H' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'B3E8uMVm' \
    --limit '71' \
    --offset '22' \
    --orderNos '["O3fNBKXA", "DQ3B3AY8", "UUcvSqRB"]' \
    --sortBy 'hZQp4Jtr' \
    --startTime 'AI1mLLpN' \
    --status 'CHARGEBACK' \
    --withTotal 'true' \
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
    --orderNo 'WCk3XOyE' \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HrkJxD34' \
    --body '{"description": "PcdlhvFX"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'GetPaymentCallbackConfig' test.out

#- 155 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "WqQOcfsf", "privateKey": "KOj6QIX3"}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePaymentCallbackConfig' test.out

#- 156 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["Z9iNoVVN", "vNm9dNtz", "bSWPGXfE"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'xwZ3BqGj' \
    --externalId 'x6SoL8YA' \
    --limit '35' \
    --notificationSource 'ALIPAY' \
    --notificationType 'm93xxl9m' \
    --offset '3' \
    --paymentOrderNo 'Pjb5NhMH' \
    --startDate '13EmqSqD' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'J2toOw4j' \
    --limit '42' \
    --offset '87' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "vkpkl6Fk", "currencyNamespace": "kDUI22UK", "customParameters": {"5xFhqCcY": {}, "ng9Ph30A": {}, "jD5UcwNT": {}}, "description": "zxJLo83D", "extOrderNo": "erHoGMcu", "extUserId": "9J0c5zrD", "itemType": "MEDIA", "language": "ZR", "metadata": {"5UAsRt3S": "ZlcIzgZh", "iwGMzvY9": "vuY7fPNM", "6FAZn64A": "wTj6BiA7"}, "notifyUrl": "lho8Vb4r", "omitNotification": true, "platform": "QzAnEl1W", "price": 99, "recurringPaymentOrderNo": "XCBzquSh", "region": "Aoh9Vcj5", "returnUrl": "LGmg2zZu", "sandbox": false, "sku": "q1SPEcSJ", "subscriptionId": "BcHJm7Kg", "targetNamespace": "V29AGG6B", "targetUserId": "e82QuIHs", "title": "RMXhtJpT"}' \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'IF2V4mrL' \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'B7EeiWoI' \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '40ENndoO' \
    --body '{"extTxId": "bbPGrToo", "paymentMethod": "Ec2MnABj", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kOkaQBQ4' \
    --body '{"description": "RSc1m4kZ"}' \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Zx0bfiR1' \
    --body '{"amount": 25, "currencyCode": "a0AEXjb3", "notifyType": "REFUND", "paymentProvider": "NEONPAY", "salesTax": 93, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Gb9DswkY' \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'yg146ZbT' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "RlizkeWp", "serviceLabel": 2}' \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'OJ5ODhqb' \
    --body '{"delegationToken": "lw2s5h0v", "sandboxId": "LW74YUuz"}' \
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
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["Other", "Steam", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "System", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'VSs0lNr6' \
    --limit '91' \
    --offset '78' \
    --source 'IAP' \
    --startTime '4bjJIele' \
    --status 'FAIL' \
    --transactionId 'xfL7hHEF' \
    --userId 'M78ImLkj' \
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
    --body '{"appConfig": {"appName": "bwt3SFGP"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "83xrwg5s"}, "extendType": "APP"}' \
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
    --body '{"description": "J29aNkdr", "eventTopic": "UohKcRg5", "maxAwarded": 69, "maxAwardedPerUser": 81, "namespaceExpression": "pDbt3hzY", "rewardCode": "3htdjou3", "rewardConditions": [{"condition": "JRQhjXxq", "conditionName": "ilZ1XrOU", "eventName": "7U30soaK", "rewardItems": [{"duration": 37, "endDate": "1981-03-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DFbw4Nj2", "quantity": 47, "sku": "h9UyrzDa"}, {"duration": 12, "endDate": "1992-07-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LAAjcwBr", "quantity": 1, "sku": "aXuUBn3C"}, {"duration": 26, "endDate": "1980-10-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IkUKSMO7", "quantity": 72, "sku": "l6Pb4qiU"}]}, {"condition": "HB1CJ5at", "conditionName": "yshUKYYn", "eventName": "sGwjYPhg", "rewardItems": [{"duration": 74, "endDate": "1976-11-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MVfCz61H", "quantity": 2, "sku": "ZdacmXb8"}, {"duration": 51, "endDate": "1992-05-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tqMMwqOm", "quantity": 47, "sku": "d5ZRiAoZ"}, {"duration": 4, "endDate": "1990-12-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bDVRBqz7", "quantity": 52, "sku": "EyxTM0YI"}]}, {"condition": "Cfktrdhd", "conditionName": "7i2oYnTN", "eventName": "EYcfr7t9", "rewardItems": [{"duration": 11, "endDate": "1977-04-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "a6amT3lb", "quantity": 51, "sku": "aLbwvau3"}, {"duration": 77, "endDate": "1982-10-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XYH6zFtU", "quantity": 75, "sku": "itTf4FPV"}, {"duration": 32, "endDate": "1990-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0Jvpru4s", "quantity": 9, "sku": "BK32e0e9"}]}], "userIdExpression": "3eQQps2e"}' \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'yrOmn9SJ' \
    --limit '87' \
    --offset '29' \
    --sortBy '["rewardCode:desc", "namespace:asc", "namespace"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'VynovQOF' \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wvHmazWH' \
    --body '{"description": "xw3f1392", "eventTopic": "IYwaB7lz", "maxAwarded": 6, "maxAwardedPerUser": 55, "namespaceExpression": "f7qMeohr", "rewardCode": "nzRSjsa6", "rewardConditions": [{"condition": "venu6Pin", "conditionName": "7tpVcjZh", "eventName": "Xum1TMyw", "rewardItems": [{"duration": 28, "endDate": "1972-01-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QbCwJNve", "quantity": 37, "sku": "tVAAmK9O"}, {"duration": 59, "endDate": "1978-12-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BE3UnyKT", "quantity": 5, "sku": "35gOurGN"}, {"duration": 44, "endDate": "1993-05-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7hfRXvMW", "quantity": 80, "sku": "b3S71j8P"}]}, {"condition": "LQ5jIKKL", "conditionName": "vIBz7CHd", "eventName": "2N3HAR58", "rewardItems": [{"duration": 95, "endDate": "1982-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Tdy3aahy", "quantity": 97, "sku": "3NMFg5uB"}, {"duration": 39, "endDate": "1981-05-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "g00ihVRD", "quantity": 72, "sku": "XnO1aLTg"}, {"duration": 60, "endDate": "1982-06-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oTVDaDiy", "quantity": 16, "sku": "t2c0MaP6"}]}, {"condition": "L1gdc2kG", "conditionName": "nBI44WJJ", "eventName": "EVd4riuo", "rewardItems": [{"duration": 69, "endDate": "1988-12-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6AK3Tlfm", "quantity": 31, "sku": "LbbV2AlW"}, {"duration": 21, "endDate": "1992-10-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HBkJdZcn", "quantity": 27, "sku": "g6MaOI3i"}, {"duration": 85, "endDate": "1981-10-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8GAQec5z", "quantity": 81, "sku": "mX0uO9ob"}]}], "userIdExpression": "6iisUx0P"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'yb8Un9PN' \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'QWIgr667' \
    --body '{"payload": {"aV2EizxV": {}, "iFZJGSEo": {}, "seGby7GO": {}}}' \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '9SpGrWrn' \
    --body '{"conditionName": "VR7uMFqI", "userId": "YJQKYEt6"}' \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'yZUJAF33' \
    --limit '43' \
    --offset '2' \
    --start 'ycC7wnE1' \
    --storeId '6M4vZ9eA' \
    --viewId 'utYfd17E' \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'TJyBbMl4' \
    --body '{"active": true, "displayOrder": 41, "endDate": "1996-06-24T00:00:00Z", "ext": {"YEurnOak": {}, "64w4vddw": {}, "j3W2tVzE": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 90, "itemCount": 53, "rule": "SEQUENCE"}, "items": [{"id": "4sSn476k", "sku": "mguweB9X"}, {"id": "ToRv80el", "sku": "4qOMsQL1"}, {"id": "Mm2ebLvJ", "sku": "5jWKUkgc"}], "localizations": {"AwobhxYS": {"description": "AFw7OZct", "localExt": {"ACKBTIsY": {}, "AFss6B6G": {}, "zbKwcqEm": {}}, "longDescription": "HOdSKEyi", "title": "xXQ1EZeU"}, "ztIhWNFE": {"description": "7YbmPkwn", "localExt": {"bhTOWpF7": {}, "ounwcEWM": {}, "IBRNlSW2": {}}, "longDescription": "3MaXm25F", "title": "5tQX9Tgt"}, "bwsYHHep": {"description": "yiTkOZe3", "localExt": {"MSah0Hqg": {}, "bKHd3UdS": {}, "uc98TvVY": {}}, "longDescription": "enB9pp2B", "title": "7sLqBUAu"}}, "name": "FfayWJtB", "rotationType": "NONE", "startDate": "1973-12-05T00:00:00Z", "viewId": "NArcNM6r"}' \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'HxGw82Mi' \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '5uaRCv4U' \
    --storeId 'RznRYueA' \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'qX6b1q1R' \
    --storeId 'GAh762SF' \
    --body '{"active": true, "displayOrder": 13, "endDate": "1978-02-14T00:00:00Z", "ext": {"dYnfK8sx": {}, "7Q7nOEnH": {}, "RNZW0r86": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 21, "itemCount": 99, "rule": "SEQUENCE"}, "items": [{"id": "4Zotj8JV", "sku": "NEnInbxt"}, {"id": "6CvGJrQX", "sku": "zVsRknVc"}, {"id": "phq9KO1B", "sku": "9YwvB2X4"}], "localizations": {"BHln8e0n": {"description": "zBcA9qH9", "localExt": {"bt3j0Zwi": {}, "cUmdj8Kd": {}, "dtTKh4DP": {}}, "longDescription": "tDyiA8O5", "title": "k23MIIF9"}, "7nDJDGIu": {"description": "LYIpGfKu", "localExt": {"daZb1tH9": {}, "1iQqws0r": {}, "OHhR3sFZ": {}}, "longDescription": "F57zAfW9", "title": "vu0cf7C0"}, "V9ZIie0S": {"description": "Ja8dOj3X", "localExt": {"KsiHGksB": {}, "k5sWHQNh": {}, "9SYI8kQr": {}}, "longDescription": "LCFv9vYP", "title": "xFADCYuI"}}, "name": "WYyxwCat", "rotationType": "NONE", "startDate": "1999-02-26T00:00:00Z", "viewId": "dKzt3P6V"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'L9YO261m' \
    --storeId 'h6qffKo5' \
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
    --body '{"defaultLanguage": "VrZSu8Bp", "defaultRegion": "UAmP3SOx", "description": "AeooNxYK", "supportedLanguages": ["AP17QN9l", "fc4uwsIA", "hpYCTW6P"], "supportedRegions": ["4fsAa9bK", "snA29aTV", "yCOyGZFe"], "title": "1zakbrSv"}' \
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
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["1zYccY9j", "FcuYv80Y", "vDsTwjwn"], "idsToBeExported": ["Rjrm1M2V", "dzPNjajU", "AVA830hv"], "storeId": "wbEeUxjd"}' \
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
    --storeId 'pLLyljN1' \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Qws96Smf' \
    --body '{"defaultLanguage": "XkFEAbqo", "defaultRegion": "5sR47xpB", "description": "RmSqYG9w", "supportedLanguages": ["iMKFyRmQ", "xGPFVcwM", "JpODby27"], "supportedRegions": ["QieqABvf", "l9dQGM8z", "4dQeVQOL"], "title": "IkRm8vWe"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ccy8GSK0' \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '06CH8inW' \
    --action 'CREATE' \
    --itemSku 'NKgyt6u5' \
    --itemType 'COINS' \
    --limit '11' \
    --offset '92' \
    --selected 'true' \
    --sortBy '["updatedAt:desc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'bBCrZeOq' \
    --updatedAtStart 'nPefcW8u' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'cDSk1BMx' \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'z3i5543L' \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '6zOaYUIq' \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'XPjtofxJ' \
    --action 'UPDATE' \
    --itemSku 'SeCdCyr7' \
    --itemType 'INGAMEITEM' \
    --selected 'false' \
    --type 'VIEW' \
    --updatedAtEnd 'R9XiXUBv' \
    --updatedAtStart 'c830IWmK' \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'VofcxqCX' \
    --action 'DELETE' \
    --itemSku 'r9jWdsrv' \
    --itemType 'BUNDLE' \
    --type 'STORE' \
    --updatedAtEnd 'KZkSm85a' \
    --updatedAtStart 'Ltj84APd' \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'KJqOwOXj' \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'ZGox6cb2' \
    --namespace $AB_NAMESPACE \
    --storeId 'j8A1chP0' \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'l8og9LNO' \
    --namespace $AB_NAMESPACE \
    --storeId 'aHerbHMu' \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'C6iiZFo7' \
    --targetStoreId 'cd4vYRKT' \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'gfkmfsvw' \
    --end 'ive3vv4g' \
    --limit '59' \
    --offset '11' \
    --sortBy 'ITAbGSvY' \
    --start 'JNJd3iwh' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId '914xHGNc' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'QtZkV5Sx' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'ei8dde5s' \
    --limit '29' \
    --offset '57' \
    --sku 'oroAN2Oq' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'mjFZpGoy' \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'os8ii0BG' \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '4wx84VZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'wzsfUzcV' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Eki3Il58"}' \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'wEhfT1Fi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '1zvB0Obr' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 51, "orderNo": "PqJJ6cAj"}' \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 0, "currencyCode": "gLqU1noQ", "expireAt": "1982-10-26T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "UUOgWe3u", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "qLscpy61", "entitlementOrigin": "Twitch", "itemIdentity": "dwQJBQOK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "pWlByuC0"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 3, "currencyCode": "CpdsK7TU", "expireAt": "1984-10-11T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "Q0vcHLbd", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "MRjXgqU9", "entitlementOrigin": "Other", "itemIdentity": "JH4jX0sV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "evcapiD1"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 45, "currencyCode": "DVkrx3wZ", "expireAt": "1998-01-12T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "57fvI9lT", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "DZGD5ftF", "entitlementOrigin": "Steam", "itemIdentity": "jgZi9l5L", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "kCjpkbR5"}, "type": "DEBIT_WALLET"}], "userId": "56KuiU6I"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 48, "currencyCode": "rbA3qygj", "expireAt": "1989-12-08T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "MVpf6hXU", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "774T1rCz", "entitlementOrigin": "IOS", "itemIdentity": "zzMFp6cX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "G1x0nyP1"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 14, "currencyCode": "RcrSJ29C", "expireAt": "1980-06-23T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "rGklq97L", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "3MlIfSqv", "entitlementOrigin": "Nintendo", "itemIdentity": "eYlYeTq1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "nJyUE7R8"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 39, "currencyCode": "BK0n0bby", "expireAt": "1984-07-23T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "WbE6yeNf", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 51, "entitlementCollectionId": "EEWSRuk9", "entitlementOrigin": "Playstation", "itemIdentity": "Dh94e6hV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "kBA6SyBl"}, "type": "FULFILL_ITEM"}], "userId": "OoJ0Qilu"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 96, "currencyCode": "T72FzMaS", "expireAt": "1983-04-12T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "8PM9yq43", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 79, "entitlementCollectionId": "bH9jgIK3", "entitlementOrigin": "Oculus", "itemIdentity": "NW3cDwsj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "WjSA4IH7"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 35, "currencyCode": "IlxtChMF", "expireAt": "1994-10-15T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "MrssEPGE", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "oUcvQiZk", "entitlementOrigin": "Nintendo", "itemIdentity": "mcHOpGfb", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "Ntio3AsZ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 57, "currencyCode": "fpFlpVV3", "expireAt": "1976-09-30T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "NHYCxwCi", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 40, "entitlementCollectionId": "MZv9Ki6a", "entitlementOrigin": "Steam", "itemIdentity": "jQUfJECa", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "cvHDpM8s"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "QNPnk6m9"}], "metadata": {"r7msLXfR": {}, "pAV2gd9s": {}, "gQWepyxu": {}}, "needPreCheck": true, "transactionId": "cFyM43wX", "type": "rzBTfpaf"}' \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '39' \
    --status 'SUCCESS' \
    --type 'Uofo1MOX' \
    --userId 'o9PpZnyu' \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'IjQFeqCb' \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'DrUac4LH' \
    --body '{"achievements": [{"id": "90qiNBG7", "value": 22}, {"id": "8lj1dJvm", "value": 32}, {"id": "dIK2YJWe", "value": 66}], "steamUserId": "TlCHevpx"}' \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'waG0FQ0h' \
    --xboxUserId 'iCgOKaEE' \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6OA5zO43' \
    --body '{"achievements": [{"id": "p0puOIqy", "percentComplete": 52}, {"id": "gfPw6vBt", "percentComplete": 76}, {"id": "5HkLSTf7", "percentComplete": 74}], "serviceConfigId": "hrNm3l8Z", "titleId": "xIPjyuEQ", "xboxUserId": "PzSkvH9L"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'WPl41ZTk' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'c91bRDol' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'xt5klzRN' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'a862Ug08' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FhRpaj3i' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '4r0tSYlZ' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'XBPr4GOe' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'kXk2WTXG' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'O44N4IHc' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '3GKWSZPv' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '1EpOV9uy' \
    --includeAllNamespaces 'false' \
    --status 'REVOKE_FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'aWgGU6WX' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --collectionId 'VbKi1y0F' \
    --entitlementClazz 'CODE' \
    --entitlementName '84mVQJ11' \
    --features '["uaD4eqf4", "A1T9L8x9", "otGgp7R7"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["DdCC5mxH", "eOq2INfr", "qObIfTZZ"]' \
    --limit '91' \
    --offset '85' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fggU8ytI' \
    --body '[{"collectionId": "r839GuoU", "endDate": "1979-03-01T00:00:00Z", "grantedCode": "H1FlLlpT", "itemId": "MuczC5ak", "itemNamespace": "dCv9Oreu", "language": "pWdX-761", "metadata": {"M6qCSCME": {}, "mf8eAAc9": {}, "Gp3WF4uh": {}}, "origin": "System", "quantity": 100, "region": "rjYV2BhQ", "source": "PURCHASE", "startDate": "1971-04-27T00:00:00Z", "storeId": "gAKVLPML"}, {"collectionId": "FBYVqvTH", "endDate": "1986-03-29T00:00:00Z", "grantedCode": "nX5pqisN", "itemId": "PObPOW92", "itemNamespace": "WU3Lvq9B", "language": "gL-bJMg-ZM", "metadata": {"kZSrC7ES": {}, "XfG3lGMg": {}, "D7RSLdGA": {}}, "origin": "GooglePlay", "quantity": 23, "region": "R5xbIC6w", "source": "ACHIEVEMENT", "startDate": "1993-04-12T00:00:00Z", "storeId": "GtKWhuKw"}, {"collectionId": "pNkBckxK", "endDate": "1993-03-26T00:00:00Z", "grantedCode": "NzlAQsiH", "itemId": "Di8hFQ8F", "itemNamespace": "DC36U3dm", "language": "ROkn_hDlH_530", "metadata": {"JUfC1MiX": {}, "9hAaYp4c": {}, "L1T5wOD1": {}}, "origin": "Playstation", "quantity": 100, "region": "xLNkQdRH", "source": "REWARD", "startDate": "1983-12-30T00:00:00Z", "storeId": "hk301f1U"}]' \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'c1u6Kq43' \
    --activeOnly 'false' \
    --appId 'xV2AXS4T' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'WsuN8U4r' \
    --activeOnly 'false' \
    --limit '70' \
    --offset '53' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '8o2q7EbY' \
    --ids '["Y8J3wlYU", "vavvW4Rg", "gBaVJZER"]' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YS8OzOPu' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'IEl2szT0' \
    --itemId '56zDuARQ' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SlIt0MEB' \
    --ids '["SeaXReLU", "vQ8NqfuF", "XnLQTYpf"]' \
    --platform 't6KXYm28' \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'SHNOgh0y' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'rhPAEIRu' \
    --sku 's9aB1fcW' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aiOasrqD' \
    --appIds '["2sXZtkeQ", "RxhR1yIu", "aldjnnBs"]' \
    --itemIds '["tOLyimxO", "upQqPEbE", "fg0TaZsN"]' \
    --platform 'rADgxUhv' \
    --skus '["5ez16ZFX", "pZ6aWHOO", "H3G87ebc"]' \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'XhE9aJqj' \
    --platform '1fzaJ5nI' \
    --itemIds '["SrJXIrHZ", "GKTYrBUh", "f0YpOTej"]' \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5nD9rHr3' \
    --appId 'GCBPJeIs' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'LK5cCUls' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'VDwmDbn7' \
    --itemId 'V4Q78eO1' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'eh48b92z' \
    --ids '["1np07s34", "lHnARjKG", "kCxpn24C"]' \
    --platform 'QiWJ6hHP' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'I3x5wrDK' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '300aNRux' \
    --sku 'OlVh4ovq' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hDA6VSZb' \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'I29yToTD' \
    --entitlementIds 'NmSAXjkR' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'Bbi2dWD0' \
    --namespace $AB_NAMESPACE \
    --userId 'A78fkIm2' \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'RLpMGMtu' \
    --namespace $AB_NAMESPACE \
    --userId 'HzzVoZsJ' \
    --body '{"collectionId": "iUp1lj1g", "endDate": "1981-06-21T00:00:00Z", "nullFieldList": ["9nbZLglA", "L6JJfLlE", "lgXxg4yI"], "origin": "Playstation", "reason": "eyz6TPbS", "startDate": "1988-01-30T00:00:00Z", "status": "SOLD", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '05GyRCLo' \
    --namespace $AB_NAMESPACE \
    --userId 'av2QtwER' \
    --body '{"metadata": {"pm5hrYDP": {}, "4VFRq9AB": {}, "AWQNBgP2": {}}, "options": ["6GZJ6NWZ", "Lugdxjun", "5EjLrBi4"], "platform": "o7qXj1YY", "requestId": "WTeB77Bk", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'nhCruAGp' \
    --namespace $AB_NAMESPACE \
    --userId '57dxoD6i' \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'DDvzphFa' \
    --namespace $AB_NAMESPACE \
    --userId 'YOHFVfl0' \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'dvuJXawQ' \
    --namespace $AB_NAMESPACE \
    --userId 'eRQj2R2k' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'JYIp3iRE' \
    --namespace $AB_NAMESPACE \
    --userId 'uLxU9R2v' \
    --body '{"metadata": {"lPkvPzsP": {}, "4N4Djuwa": {}, "m15Vu9Gv": {}}}' \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'ocTrAAPj' \
    --namespace $AB_NAMESPACE \
    --userId 'RkkrACZB' \
    --body '{"reason": "Ot9WGqOW", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'r5qJZVOs' \
    --namespace $AB_NAMESPACE \
    --userId 'It5plgxU' \
    --quantity '2' \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'ZrXXQVg7' \
    --namespace $AB_NAMESPACE \
    --userId 'MUJ9Fpse' \
    --body '{"platform": "25Aj0bvd", "requestId": "Jn72s2iA", "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Qtyv5xCn' \
    --body '{"duration": 73, "endDate": "1977-03-30T00:00:00Z", "entitlementCollectionId": "32krL51W", "entitlementOrigin": "Oculus", "itemId": "jqACQVSI", "itemSku": "3EPmkYgU", "language": "sTyYVAEA", "metadata": {"NM2yuTAe": {}, "cRmiqGEZ": {}, "nktWgkPv": {}}, "order": {"currency": {"currencyCode": "YBDu9uHt", "currencySymbol": "BHZPxmbJ", "currencyType": "VIRTUAL", "decimals": 30, "namespace": "uj9pStgG"}, "ext": {"xOBahcZQ": {}, "y3uiGIQV": {}, "qGC9HnsS": {}}, "free": false}, "orderNo": "g0XGN6zA", "origin": "Playstation", "overrideBundleItemQty": {"7kPD1AEM": 6, "tCVgeCai": 12, "IR0eUiMv": 84}, "quantity": 4, "region": "UjU30h6o", "source": "PURCHASE", "startDate": "1995-09-13T00:00:00Z", "storeId": "jZTL70d9"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'zuzvfk7D' \
    --body '{"code": "HV2wW1w3", "language": "TIT", "region": "sihbpK9A"}' \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '5QzT90Ma' \
    --body '{"itemId": "jSCGa99r", "itemSku": "aKR0iXRw", "quantity": 78}' \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'S1XutYeB' \
    --body '{"entitlementCollectionId": "w6juoHtd", "entitlementOrigin": "Epic", "metadata": {"DaTVxBIk": {}, "iPlqLMbu": {}, "Io0Hs6x5": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "iUOqcjjM", "namespace": "7H1PmTWZ"}, "item": {"itemId": "LvzxunjN", "itemName": "mZHi6g90", "itemSku": "OEJ05M4C", "itemType": "R3H9SqN7"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "W2PhV97a", "namespace": "plt27fbL"}, "item": {"itemId": "XGYOoVzy", "itemName": "98ZXfZrF", "itemSku": "vo8hOdDH", "itemType": "bpdhxjOw"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "x0VtnYBM", "namespace": "0uWomeYt"}, "item": {"itemId": "xx24LyHT", "itemName": "3wm4gn4G", "itemSku": "xh3emnLT", "itemType": "eA6P4BSt"}, "quantity": 96, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "s6ZhH4HY"}' \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Pm4KGiDU' \
    --endTime 'idMhhT8G' \
    --limit '20' \
    --offset '36' \
    --productId 'GMz5I9dL' \
    --startTime 'LWmTvebP' \
    --status 'REVOKED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'w7i4FT3g' \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'EESoUTAT' \
    --endTime 'sshpNzcf' \
    --limit '71' \
    --offset '35' \
    --startTime 'QMVYCL9Y' \
    --status 'PENDING' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Xzzw9jWI' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Ms-sz", "productId": "yc5hLnHL", "region": "7IBy6RFV", "transactionId": "cfYXxRsJ", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Drtz17nB' \
    --activeOnly 'false' \
    --groupId 'M5iC6fJm' \
    --limit '92' \
    --offset '17' \
    --platform 'APPLE' \
    --productId 'vwTBt9BC' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId '402Osbmt' \
    --groupId 'uC5yCCZg' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'VTrQNE8w' \
    --productId 'MQotoe3Y' \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'VLa8CszX' \
    --activeOnly 'true' \
    --groupId 'HNpsAYtJ' \
    --limit '73' \
    --offset '63' \
    --platform 'OCULUS' \
    --productId 'w6093RHH' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'eiGrSQYQ' \
    --namespace $AB_NAMESPACE \
    --userId 'DPuhx0y7' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'aL6ZOJiz' \
    --namespace $AB_NAMESPACE \
    --userId 'K1K9Hdwl' \
    --limit '4' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'nbMJ2wXx' \
    --namespace $AB_NAMESPACE \
    --userId 'SynzDrxQ' \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'bLygTVo9' \
    --namespace $AB_NAMESPACE \
    --userId 'WNiwyjXB' \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'tjw392P4' \
    --namespace $AB_NAMESPACE \
    --userId 'z3qar5rA' \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'gTN0xexy' \
    --discounted 'true' \
    --itemId 'Og0rOiFd' \
    --limit '58' \
    --offset '42' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'IxQ2vjEZ' \
    --body '{"currencyCode": "4VeVvNt9", "currencyNamespace": "EYaFL4YI", "discountCodes": ["4hkqQC72", "1GwJwJf6", "Y78rlgKl"], "discountedPrice": 87, "entitlementPlatform": "Playstation", "ext": {"kSiTehsj": {}, "LMK5HzXk": {}, "QYCiiqcK": {}}, "itemId": "KSpkD98F", "language": "8l67NNIx", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 96, "quantity": 30, "region": "DMKpKsQL", "returnUrl": "2xOSDedo", "sandbox": true, "sectionId": "zcy7kINx"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'ODMZJv9a' \
    --itemId '2tg2zuLU' \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'QHilGNle' \
    --userId 'Oscs8fAZ' \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'JwtPviSb' \
    --userId 'P2JkAkGM' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "vBBkxv5E"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qPKiQzsG' \
    --userId 'LR5wLDbW' \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'tdPO8MFm' \
    --userId 'E7ejkjTR' \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'DTBhcSuw' \
    --userId 'AtYqFRMs' \
    --body '{"additionalData": {"cardSummary": "9zUJvNoR"}, "authorisedTime": "1981-06-06T00:00:00Z", "chargebackReversedTime": "1991-01-23T00:00:00Z", "chargebackTime": "1985-08-23T00:00:00Z", "chargedTime": "1979-09-25T00:00:00Z", "createdTime": "1988-07-22T00:00:00Z", "currency": {"currencyCode": "3cL1PO8L", "currencySymbol": "V2vdFAUI", "currencyType": "VIRTUAL", "decimals": 92, "namespace": "N0o8xHBc"}, "customParameters": {"zBRUFcjh": {}, "I0MkEX2K": {}, "WQgiV9mN": {}}, "extOrderNo": "6naQzNgd", "extTxId": "lqeX8fkg", "extUserId": "xVrLVVMl", "issuedAt": "1991-08-03T00:00:00Z", "metadata": {"qcI13IFQ": "8RJoKtQ4", "NAPvfuGf": "H8DXbw28", "Hp4wsqPO": "kWK9x60b"}, "namespace": "MKr7jIwH", "nonceStr": "Pg4Db4gN", "paymentData": {"discountAmount": 27, "discountCode": "G3VJl7e4", "subtotalPrice": 17, "tax": 22, "totalPrice": 40}, "paymentMethod": "wXkZPpSH", "paymentMethodFee": 72, "paymentOrderNo": "FWtdD802", "paymentProvider": "CHECKOUT", "paymentProviderFee": 85, "paymentStationUrl": "WmUx4Ehm", "price": 64, "refundedTime": "1990-05-20T00:00:00Z", "salesTax": 0, "sandbox": false, "sku": "nqhumI3j", "status": "CHARGE_FAILED", "statusReason": "stmrjb3H", "subscriptionId": "LLf9EBKB", "subtotalPrice": 8, "targetNamespace": "b1ro7VCX", "targetUserId": "OQ72VU4v", "tax": 23, "totalPrice": 57, "totalTax": 70, "txEndTime": "1994-11-07T00:00:00Z", "type": "Qp1Obu3P", "userId": "Y89rb3E5", "vat": 35}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '4nw4Zzua' \
    --userId 'RN5WyAbB' \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'eUh2ap9w' \
    --body '{"currencyCode": "NSmuoijm", "currencyNamespace": "TpoJFhRU", "customParameters": {"tOepfoj9": {}, "yvnLhptP": {}, "2RIZCerq": {}}, "description": "QWGFpPJu", "extOrderNo": "I8V674G0", "extUserId": "1aurUsWw", "itemType": "EXTENSION", "language": "ibGL", "metadata": {"dNoWDhW4": "RMMLgbQ3", "meinefIl": "2OWcpWCD", "PERFME9M": "fOXOZkAr"}, "notifyUrl": "ZDm4Mz2u", "omitNotification": false, "platform": "eEvNQSwl", "price": 46, "recurringPaymentOrderNo": "phQ7Cd6y", "region": "619ByjxD", "returnUrl": "u7t1kAte", "sandbox": false, "sku": "xTT8O16D", "subscriptionId": "wVr9wv3j", "title": "JIn9z1gA"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jRsS2sZT' \
    --userId 'omi6rXsT' \
    --body '{"description": "SDJWhvmW"}' \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'jpQcfr9w' \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'lGwJ0OAc' \
    --body '{"code": "1B77ejFY", "orderNo": "y9A6DTDV"}' \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'QbrEh8Nb' \
    --body '{"meta": {"AC7R3xPl": {}, "GCoT2CWQ": {}, "4ZEpiSd1": {}}, "reason": "jqaP7ONo", "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "h1G9Nb4J", "namespace": "83OfSw9k"}, "entitlement": {"entitlementId": "ebgaydyr"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "QUbQ1MRT", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "DMabrA6J", "namespace": "Ck9L2ASb"}, "entitlement": {"entitlementId": "AZxqvuX4"}, "item": {"entitlementOrigin": "System", "itemIdentity": "jhMHpy9h", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "hDTVXERj", "namespace": "0vSC9s8g"}, "entitlement": {"entitlementId": "YTQJBr8q"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "MZQslzaR", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 24, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "VJJzoYnZ"}' \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '0aGp5gPN' \
    --body '{"gameSessionId": "YKBH8LiQ", "payload": {"xyeRU7EX": {}, "GgUYa9um": {}, "GrvYwEh8": {}}, "scid": "R4SSFqvo", "sessionTemplateName": "ZN7Afkoy"}' \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'FTrYbrhH' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '6WRb9WQI' \
    --limit '19' \
    --offset '83' \
    --sku 'v9vdGPJ9' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '9fK61DBh' \
    --excludeSystem 'true' \
    --limit '38' \
    --offset '25' \
    --subscriptionId 'sfQanbnM' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'vM8fcdMF' \
    --body '{"grantDays": 39, "itemId": "ubTjzHZN", "language": "92d5eBxa", "reason": "XRGp4unp", "region": "gOl1KrZb", "source": "AK2URZd8"}' \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'lvyKxF91' \
    --itemId 'LZggSSVD' \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TypCG8ml' \
    --userId 'Pv652ssE' \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '78hWrqAA' \
    --userId 'NT1dD2kX' \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'j4zAvb2y' \
    --userId '6cUlG5Rj' \
    --force 'false' \
    --body '{"immediate": false, "reason": "OAZXl1tR"}' \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6LKR3QHk' \
    --userId 'org9bBOq' \
    --body '{"grantDays": 75, "reason": "JTyEHWfd"}' \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zHBP9WcM' \
    --userId 'MpicijEP' \
    --excludeFree 'false' \
    --limit '82' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'msKyq336' \
    --userId 'DACLmPpd' \
    --body '{"additionalData": {"cardSummary": "5Y2JzjMd"}, "authorisedTime": "1998-02-16T00:00:00Z", "chargebackReversedTime": "1993-09-30T00:00:00Z", "chargebackTime": "1974-08-21T00:00:00Z", "chargedTime": "1984-08-26T00:00:00Z", "createdTime": "1998-07-16T00:00:00Z", "currency": {"currencyCode": "66vqW7JC", "currencySymbol": "HQdxm6qj", "currencyType": "REAL", "decimals": 41, "namespace": "7rrBo1lA"}, "customParameters": {"Inj4bqk3": {}, "yJsz1hQk": {}, "xEXJPUos": {}}, "extOrderNo": "w3rbsR6J", "extTxId": "BjPfW2Xj", "extUserId": "FBBAML6x", "issuedAt": "1976-03-17T00:00:00Z", "metadata": {"XGwxYciX": "WFvMqKqP", "yJfppwNQ": "QOiLQ2lD", "lWkdifWj": "DsEyzRhS"}, "namespace": "Dtc6vD45", "nonceStr": "kpocOpEH", "paymentData": {"discountAmount": 15, "discountCode": "UPxHJEXu", "subtotalPrice": 61, "tax": 23, "totalPrice": 21}, "paymentMethod": "WUhqR83y", "paymentMethodFee": 7, "paymentOrderNo": "Ubg52YLr", "paymentProvider": "NEONPAY", "paymentProviderFee": 73, "paymentStationUrl": "bpzx27Ei", "price": 68, "refundedTime": "1982-04-02T00:00:00Z", "salesTax": 29, "sandbox": true, "sku": "qksvmmfS", "status": "INIT", "statusReason": "DndRysSf", "subscriptionId": "E8njpkPQ", "subtotalPrice": 4, "targetNamespace": "qLYPGxqg", "targetUserId": "0UPNlsH8", "tax": 27, "totalPrice": 78, "totalTax": 63, "txEndTime": "1983-04-04T00:00:00Z", "type": "QQ26xkC6", "userId": "2citiRll", "vat": 37}' \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'TKxsHc6W' \
    --namespace $AB_NAMESPACE \
    --userId 'VxEfSeQG' \
    --body '{"count": 53, "orderNo": "2BP3K3ws"}' \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'IvNxd9hR' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'AprQv1hp' \
    --namespace $AB_NAMESPACE \
    --userId '09QFLLJ1' \
    --body '{"allowOverdraft": true, "amount": 24, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"dlG1WrKt": {}, "hhoGYiA0": {}, "ucRsYtyv": {}}, "reason": "FTInON6l"}' \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'JVkoTBog' \
    --namespace $AB_NAMESPACE \
    --userId 'ZJfDhVYN' \
    --limit '33' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'CBheuTK6' \
    --namespace $AB_NAMESPACE \
    --userId 'muItTv9f' \
    --request '{"amount": 82, "debitBalanceSource": "EXPIRATION", "metadata": {"AQtvVkLN": {}, "xJQtJRAC": {}, "lgeNRfZH": {}}, "reason": "KXzefEkq", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'd5uwY2y2' \
    --namespace $AB_NAMESPACE \
    --userId 'emQhiUCi' \
    --body '{"amount": 15, "expireAt": "1990-07-30T00:00:00Z", "metadata": {"gCftC8f5": {}, "PvoiRLSc": {}, "UOdvUwoO": {}}, "origin": "Epic", "reason": "3CjhKbxa", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'l3KydJWg' \
    --namespace $AB_NAMESPACE \
    --userId 'PomhbdmI' \
    --request '{"amount": 1, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"svGV3GcY": {}, "X7oKz7tI": {}, "QMkYl7vi": {}}, "reason": "8j475F4e", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'lEAYbzDk' \
    --namespace $AB_NAMESPACE \
    --userId 'ilifA6QL' \
    --body '{"amount": 32, "metadata": {"e13r3Lu7": {}, "5EAehUgQ": {}, "i9KFVilT": {}}, "walletPlatform": "Xbox"}' \
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
    --storeId '7n8g25m9' \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'UCpOeeyz' \
    --body '{"displayOrder": 64, "localizations": {"qCdxKw0H": {"description": "j9CxW3fE", "localExt": {"YZt3A2B0": {}, "zB0548Fn": {}, "CfowjRMT": {}}, "longDescription": "XT0OTv7A", "title": "1Hf34hOE"}, "kb9TUQR5": {"description": "1g6kGctm", "localExt": {"P8tXjYf4": {}, "uE4ipaso": {}, "H8P61jzN": {}}, "longDescription": "cZkbiH3g", "title": "25nWKE1h"}, "zD9KSt4n": {"description": "UJs63Ibe", "localExt": {"gLuAGUaB": {}, "0yaF9Taq": {}, "mcJOzX6r": {}}, "longDescription": "QZnWZ3Iy", "title": "yv29EZbS"}}, "name": "AT94Oe60"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'SOdqZctm' \
    --storeId 'nKzuMuGY' \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'P2HyJtpe' \
    --storeId 'Mn5tGP7r' \
    --body '{"displayOrder": 78, "localizations": {"0L7MSsvp": {"description": "TJnJehXu", "localExt": {"BRpEN8J1": {}, "tgLEaM7q": {}, "AGQDCNYB": {}}, "longDescription": "ct1zIij8", "title": "Ml9Jq747"}, "AO4tILXH": {"description": "FtAWClgW", "localExt": {"tTcv0QWc": {}, "qIVmLL36": {}, "kcn6Gx4G": {}}, "longDescription": "hvTSxXcQ", "title": "R0sevSJH"}, "j2NYm0qj": {"description": "3AJ7NXDw", "localExt": {"LMSaYHqO": {}, "Q7UE4Eu1": {}, "9f3GtHdO": {}}, "longDescription": "9ilLX9py", "title": "t9OUv1Nz"}}, "name": "uDuwvSUK"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'NMyMp2z7' \
    --storeId 'TdsVQFJK' \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 QueryWallets
eval_tap 0 335 'QueryWallets # SKIP deprecated' test.out

#- 336 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 12, "expireAt": "1998-04-14T00:00:00Z", "metadata": {"o7pge8l2": {}, "fRCACkYM": {}, "B1JBTaKG": {}}, "origin": "Epic", "reason": "RY3niQuE", "source": "PROMOTION"}, "currencyCode": "SHa1GzVJ", "userIds": ["B2BubZtK", "sp5uymWY", "PJvua7BY"]}, {"creditRequest": {"amount": 86, "expireAt": "1991-08-08T00:00:00Z", "metadata": {"6ZgtvCDd": {}, "Uv68CAcQ": {}, "881N3FqX": {}}, "origin": "Steam", "reason": "j5GcWGqy", "source": "OTHER"}, "currencyCode": "2LtwMBDV", "userIds": ["Is5dx5FV", "gDjmJeu7", "qnVDpJ6M"]}, {"creditRequest": {"amount": 81, "expireAt": "1978-11-02T00:00:00Z", "metadata": {"8UqxuRyW": {}, "ruKEQVPQ": {}, "ORNiHPd1": {}}, "origin": "IOS", "reason": "Q4VY3h3D", "source": "OTHER"}, "currencyCode": "Gf76lR0f", "userIds": ["efE9CCiZ", "rVrjpcX7", "TrBbqr5y"]}]' \
    > test.out 2>&1
eval_tap $? 336 'BulkCredit' test.out

#- 337 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "rxfsVBQx", "request": {"allowOverdraft": false, "amount": 74, "balanceOrigin": "Epic", "balanceSource": "OTHER", "metadata": {"PksKamKp": {}, "TrnrefEN": {}, "tQwMpyFJ": {}}, "reason": "kgWicRDD"}, "userIds": ["jTTwZqOQ", "HyyHbgBn", "J6WiH4Yc"]}, {"currencyCode": "NR5hlZB2", "request": {"allowOverdraft": true, "amount": 47, "balanceOrigin": "IOS", "balanceSource": "EXPIRATION", "metadata": {"gi66OWWG": {}, "Ep8e4lxX": {}, "pKJKDs9F": {}}, "reason": "RpIsgK3Z"}, "userIds": ["uK0RN3gw", "1TOdGfXH", "7IQcAbmf"]}, {"currencyCode": "cuKTBBMb", "request": {"allowOverdraft": false, "amount": 83, "balanceOrigin": "Oculus", "balanceSource": "TRADE", "metadata": {"NvHl2EhE": {}, "o8qBlCHr": {}, "WZI0mbrX": {}}, "reason": "oy5FHGWt"}, "userIds": ["lWup453T", "4uVHUgfb", "50rO3Szb"]}]' \
    > test.out 2>&1
eval_tap $? 337 'BulkDebit' test.out

#- 338 GetWallet
eval_tap 0 338 'GetWallet # SKIP deprecated' test.out

#- 339 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'WIlrIDZf' \
    --end 'pwKFpSZc' \
    --start 'DQAXXvel' \
    > test.out 2>&1
eval_tap $? 339 'SyncOrders' test.out

#- 340 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["EdCxgPdn", "B76J53c7", "sCmSFEJF"], "apiKey": "Gnsvl67C", "authoriseAsCapture": true, "blockedPaymentMethods": ["3IYLsCtg", "ueobivQR", "GtGgFu0t"], "clientKey": "zy7RE89L", "dropInSettings": "GZD60hjR", "liveEndpointUrlPrefix": "IfdgQDwK", "merchantAccount": "97DGJF8m", "notificationHmacKey": "TnT1MYpc", "notificationPassword": "Qr56geMA", "notificationUsername": "eebGteV2", "returnUrl": "OXvy0UkJ", "settings": "cHB2EjiR"}' \
    > test.out 2>&1
eval_tap $? 340 'TestAdyenConfig' test.out

#- 341 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "hUoMthGB", "privateKey": "9Fidu20u", "publicKey": "yCzKizPJ", "returnUrl": "aSrINNFA"}' \
    > test.out 2>&1
eval_tap $? 341 'TestAliPayConfig' test.out

#- 342 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "wgp1M6yC", "secretKey": "D8vMEyCk"}' \
    > test.out 2>&1
eval_tap $? 342 'TestCheckoutConfig' test.out

#- 343 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'AeGnbR6w' \
    --region 'ISebl8ML' \
    > test.out 2>&1
eval_tap $? 343 'DebugMatchedPaymentMerchantConfig' test.out

#- 344 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "sHFmzaTg", "webhookSecretKey": "PYfT2nOj"}' \
    > test.out 2>&1
eval_tap $? 344 'TestNeonPayConfig' test.out

#- 345 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "Y96OdTSw", "clientSecret": "5jyvNBVy", "returnUrl": "r1SoQw4R", "webHookId": "MxDQ29Nk"}' \
    > test.out 2>&1
eval_tap $? 345 'TestPayPalConfig' test.out

#- 346 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["cj7HAo5V", "8mJfn7i2", "7zRbcXR0"], "publishableKey": "FjypePuA", "secretKey": "VDxkiXys", "webhookSecret": "V6i4CSHK"}' \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfig' test.out

#- 347 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "es9yfw6U", "key": "IstFO4C9", "mchid": "4CFhiwWl", "returnUrl": "S4zgT5KX"}' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfig' test.out

#- 348 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ge4v50jL", "flowCompletionUrl": "OmrrUond", "merchantId": 80, "projectId": 6, "projectSecretKey": "4GM2SgUd"}' \
    > test.out 2>&1
eval_tap $? 348 'TestXsollaConfig' test.out

#- 349 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'QVIk1pbY' \
    > test.out 2>&1
eval_tap $? 349 'GetPaymentMerchantConfig1' test.out

#- 350 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'BRCcXR05' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["i4GBRJPO", "146LW5lC", "YopNxo1r"], "apiKey": "fP5GQlnn", "authoriseAsCapture": false, "blockedPaymentMethods": ["sDznf7R4", "wVepyTO8", "SSTYLvAM"], "clientKey": "ZSrLsC8O", "dropInSettings": "ZGu4McWO", "liveEndpointUrlPrefix": "kr3YeLkT", "merchantAccount": "3cGWa1jF", "notificationHmacKey": "iue2JXrv", "notificationPassword": "Y62Pe7ko", "notificationUsername": "K8B51Stx", "returnUrl": "0StjFQ4K", "settings": "JR0AFpBc"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateAdyenConfig' test.out

#- 351 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '3UUtpHIF' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfigById' test.out

#- 352 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'sIqbsTVx' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "TnVHCMME", "privateKey": "QiW1tS43", "publicKey": "OWxRIJ5q", "returnUrl": "93esoVPN"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateAliPayConfig' test.out

#- 353 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '2rl3oYQ7' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 353 'TestAliPayConfigById' test.out

#- 354 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '0mrkm10P' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "0y7oruHt", "secretKey": "X9oy4byi"}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateCheckoutConfig' test.out

#- 355 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'EeqOSYXT' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfigById' test.out

#- 356 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'krLCcMZF' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "2YIsOz4p", "webhookSecretKey": "FR0k3Q3Z"}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateNeonPayConfig' test.out

#- 357 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'Mk5iCqpS' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfigById' test.out

#- 358 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'dDoUeKKZ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "cwqBzVSZ", "clientSecret": "CtnrQysN", "returnUrl": "qMDOaXpq", "webHookId": "tseeLMqq"}' \
    > test.out 2>&1
eval_tap $? 358 'UpdatePayPalConfig' test.out

#- 359 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'u7D1F9As' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 359 'TestPayPalConfigById' test.out

#- 360 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'VVIAsf6O' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["pKIZTsbd", "nTk4Q3Sn", "pWVzATmf"], "publishableKey": "QNmJS3pc", "secretKey": "DVqrDvNG", "webhookSecret": "HQ5gQQvT"}' \
    > test.out 2>&1
eval_tap $? 360 'UpdateStripeConfig' test.out

#- 361 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'OO72QV9j' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 361 'TestStripeConfigById' test.out

#- 362 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'jJI6aK7B' \
    --validate 'true' \
    --body '{"appId": "hA6qk4KC", "key": "vTTbYZ77", "mchid": "4dQKaGAS", "returnUrl": "BtS8rVta"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateWxPayConfig' test.out

#- 363 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'qFsHINKr' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 363 'UpdateWxPayConfigCert' test.out

#- 364 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '4qFaEZok' \
    > test.out 2>&1
eval_tap $? 364 'TestWxPayConfigById' test.out

#- 365 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'ibsWpyWA' \
    --validate 'false' \
    --body '{"apiKey": "5z0g0LHc", "flowCompletionUrl": "p2u3iltt", "merchantId": 20, "projectId": 84, "projectSecretKey": "168CZKWT"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateXsollaConfig' test.out

#- 366 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '72STtf09' \
    > test.out 2>&1
eval_tap $? 366 'TestXsollaConfigById' test.out

#- 367 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'q3neL77r' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaUIConfig' test.out

#- 368 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '74' \
    --namespace 'Qab8CfkZ' \
    --offset '25' \
    --region 'k8PwvIaE' \
    > test.out 2>&1
eval_tap $? 368 'QueryPaymentProviderConfig' test.out

#- 369 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "CtV2ujeB", "region": "K8X5Oz3Q", "sandboxTaxJarApiToken": "IGjFhMaG", "specials": ["NEONPAY", "WALLET", "ALIPAY"], "taxJarApiToken": "XNNs5PCR", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 369 'CreatePaymentProviderConfig' test.out

#- 370 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 370 'GetAggregatePaymentProviders' test.out

#- 371 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'fCAdbZic' \
    --region 'A7oZ3e93' \
    > test.out 2>&1
eval_tap $? 371 'DebugMatchedPaymentProviderConfig' test.out

#- 372 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 372 'GetSpecialPaymentProviders' test.out

#- 373 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Nn3MRLwK' \
    --body '{"aggregate": "CHECKOUT", "namespace": "jywQuOiX", "region": "Mh8XbHBM", "sandboxTaxJarApiToken": "eruSXgxF", "specials": ["WALLET", "CHECKOUT", "ALIPAY"], "taxJarApiToken": "UhY5lOeG", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentProviderConfig' test.out

#- 374 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YXhrrcKQ' \
    > test.out 2>&1
eval_tap $? 374 'DeletePaymentProviderConfig' test.out

#- 375 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentTaxConfig' test.out

#- 376 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "eFxd8Eg1", "taxJarApiToken": "LNifbC1L", "taxJarEnabled": true, "taxJarProductCodesMapping": {"wT08P3Dm": "QfW5PkG5", "v5ldSjLk": "GR8RCsQV", "FPDxRcNt": "lYNCEoTD"}}' \
    > test.out 2>&1
eval_tap $? 376 'UpdatePaymentTaxConfig' test.out

#- 377 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'fxkrHClv' \
    --end 'v1r1VDAW' \
    --start 'CKrpz95Q' \
    > test.out 2>&1
eval_tap $? 377 'SyncPaymentOrders' test.out

#- 378 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'EeHei5LK' \
    --storeId 's6yKTPpp' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetRootCategories' test.out

#- 379 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'u2IFry5w' \
    --storeId 'WUm8hV66' \
    > test.out 2>&1
eval_tap $? 379 'DownloadCategories' test.out

#- 380 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'nOWj9fP6' \
    --namespace $AB_NAMESPACE \
    --language 'u5sr5CsM' \
    --storeId 'HPLYuVvx' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetCategory' test.out

#- 381 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'MPLLfBWz' \
    --namespace $AB_NAMESPACE \
    --language 'K4AC2IJn' \
    --storeId 'eVldojk5' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetChildCategories' test.out

#- 382 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'v5sCs7zV' \
    --namespace $AB_NAMESPACE \
    --language 'hBqyv4uN' \
    --storeId 'j7qOFuZV' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetDescendantCategories' test.out

#- 383 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 383 'PublicListCurrencies' test.out

#- 384 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'OCULUS' \
    > test.out 2>&1
eval_tap $? 384 'GeDLCDurableRewardShortMap' test.out

#- 385 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'GetAppleConfigVersion' test.out

#- 386 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 386 'GetIAPItemMapping' test.out

#- 387 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'KklynyNo' \
    --region 'p7iRNDoi' \
    --storeId 'dRENiSAX' \
    --appId '8EiSe1CJ' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetItemByAppId' test.out

#- 388 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId '1InEFGt0' \
    --categoryPath '62uEoH77' \
    --features 'PHSnpJHJ' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --language '18m2lCSp' \
    --limit '82' \
    --offset '35' \
    --region 'AMxMP9Nr' \
    --sortBy '["updatedAt", "updatedAt:desc", "createdAt"]' \
    --storeId 'RvUDdpOQ' \
    --tags 'YIZCLBnu' \
    > test.out 2>&1
eval_tap $? 388 'PublicQueryItems' test.out

#- 389 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language '8wh9Ntlt' \
    --region 'm1s5E79j' \
    --storeId '6Ar0P7je' \
    --sku 'XJ8oYicC' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemBySku' test.out

#- 390 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'ng4Qmdac' \
    --storeId 'FQvZGG24' \
    --itemIds 'ARbxkKag' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEstimatedPrice' test.out

#- 391 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'Xtlv3RPf' \
    --region '8YUB65Tn' \
    --storeId 'i8FSk1LL' \
    --itemIds 'NeWTGgTf' \
    > test.out 2>&1
eval_tap $? 391 'PublicBulkGetItems' test.out

#- 392 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["WrV5rSAl", "lIeZ46rK", "9gjiNSTl"]}' \
    > test.out 2>&1
eval_tap $? 392 'PublicValidateItemPurchaseCondition' test.out

#- 393 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'APP' \
    --limit '21' \
    --offset '2' \
    --region 'L8YvqPQJ' \
    --storeId 'hUKBaOLs' \
    --keyword 'K5UQbgUO' \
    --language 'AD1jQFbV' \
    > test.out 2>&1
eval_tap $? 393 'PublicSearchItems' test.out

#- 394 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Her3Tsqp' \
    --namespace $AB_NAMESPACE \
    --language 'NIGl80M7' \
    --region '0ijY3a7K' \
    --storeId 'LH2njMze' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetApp' test.out

#- 395 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'DeVCBoWY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 395 'PublicGetItemDynamicData' test.out

#- 396 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'V1kL7Jdh' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'vbkftz5G' \
    --populateBundle 'true' \
    --region 'Id8nIhGs' \
    --storeId 'zR9kWmDp' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetItem' test.out

#- 397 GetPaymentCustomization
eval_tap 0 397 'GetPaymentCustomization # SKIP deprecated' test.out

#- 398 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "wI14uzqH", "successUrl": "eGX5wN3y"}, "paymentOrderNo": "Lt0AxX06", "paymentProvider": "XSOLLA", "returnUrl": "r9QhzZrj", "ui": "g8vMI5zd", "zipCode": "0M9Y3zdn"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetPaymentUrl' test.out

#- 399 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4EtlfPHd' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetPaymentMethods' test.out

#- 400 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PdhoaCXv' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUnpaidPaymentOrder' test.out

#- 401 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'EtXkBwvT' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'C1PTbvUA' \
    --body '{"token": "pev2YkgM"}' \
    > test.out 2>&1
eval_tap $? 401 'Pay' test.out

#- 402 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jc1ISTHa' \
    > test.out 2>&1
eval_tap $? 402 'PublicCheckPaymentOrderPaidStatus' test.out

#- 403 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'XSOLLA' \
    --region 'V3UeHT4v' \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentPublicConfig' test.out

#- 404 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'kLuZJRlc' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetQRCode' test.out

#- 405 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'hCCxPWyC' \
    --foreinginvoice 'ibutFwol' \
    --invoiceId 'dHshMKhI' \
    --payload 'pncY7dnd' \
    --redirectResult 'xOLX5zW3' \
    --resultCode 'BFYlSN4Q' \
    --sessionId 'b3CtNEyx' \
    --status 'uuZqAOyx' \
    --token 'qeg6YmJJ' \
    --type '98XpUPvw' \
    --userId 'xf8sSPai' \
    --orderNo 'oC1JG50B' \
    --paymentOrderNo 'hhurtQn4' \
    --paymentProvider 'XSOLLA' \
    --returnUrl '4xMJP8iy' \
    > test.out 2>&1
eval_tap $? 405 'PublicNormalizePaymentReturnUrl' test.out

#- 406 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'mUittqpz' \
    --paymentOrderNo 'mvIieVqt' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 406 'GetPaymentTaxValue' test.out

#- 407 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'V0kvqAF2' \
    > test.out 2>&1
eval_tap $? 407 'GetRewardByCode' test.out

#- 408 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'h8qEyBWR' \
    --limit '96' \
    --offset '92' \
    --sortBy '["rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 408 'QueryRewards1' test.out

#- 409 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '8eKXJMxi' \
    > test.out 2>&1
eval_tap $? 409 'GetReward1' test.out

#- 410 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 410 'PublicListStores' test.out

#- 411 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["t0wd9nVB", "ncmiJCzB", "wE069ga7"]' \
    --itemIds '["mzmWIPAk", "0I2TZJrn", "wbwvv1y7"]' \
    --skus '["BoWdKI0E", "itDLIoAC", "q2xSOdbE"]' \
    > test.out 2>&1
eval_tap $? 411 'PublicExistsAnyMyActiveEntitlement' test.out

#- 412 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'JwfOeFjq' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 413 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --itemId 'M1W8WokR' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 414 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku '1GFWT1Ut' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 415 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["cd2v0Rq9", "GMLBmjOa", "xrx9r8gt"]' \
    --itemIds '["BRdk9mXC", "iHyHnxv9", "8fxtW7YU"]' \
    --skus '["Enm7GTU6", "kverORJo", "aZPNxtXz"]' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetEntitlementOwnershipToken' test.out

#- 416 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "M6phLCXQ", "language": "pFV_tbnH", "region": "N1O09Tjm"}' \
    > test.out 2>&1
eval_tap $? 416 'SyncTwitchDropsEntitlement' test.out

#- 417 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'ehruVDPy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetMyWallet' test.out

#- 418 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PtysEVmS' \
    --body '{"epicGamesJwtToken": "XAXDiqBT"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGameDLC' test.out

#- 419 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '6XPwg4Ew' \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusDLC' test.out

#- 420 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '6b6ncLmY' \
    --body '{"serviceLabel": 51}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSyncPsnDlcInventory' test.out

#- 421 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'A10gSQzx' \
    --body '{"serviceLabels": [10, 4, 79]}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 422 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '8ZXjvYkn' \
    --body '{"appId": "CUQMK405", "steamId": "kUD0lhY7"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamDLC' test.out

#- 423 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '7zLdDpAE' \
    --body '{"xstsToken": "K85YzHc6"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncXboxDLC' test.out

#- 424 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'g3Vj8HTK' \
    --appType 'GAME' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'CynlKjsK' \
    --features '["pXPtQGZE", "jF8WWrj6", "0X7GscIU"]' \
    --itemId '["PqWCOJL9", "L3Z845l6", "HduN6KQD"]' \
    --limit '49' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 424 'PublicQueryUserEntitlements' test.out

#- 425 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'kXnAgu6f' \
    --appId 'zvvxEwCF' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserAppEntitlementByAppId' test.out

#- 426 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'kziYR0aV' \
    --limit '88' \
    --offset '69' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlementsByAppType' test.out

#- 427 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'rldU4g1I' \
    --availablePlatformOnly 'false' \
    --ids '["HPozX8wO", "0wPuKJyU", "6cfNYo4X"]' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserEntitlementsByIds' test.out

#- 428 PublicGetUserEntitlementByItemId
eval_tap 0 428 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 429 PublicGetUserEntitlementBySku
eval_tap 0 429 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 430 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'jZERIQj0' \
    --endDate 'HblxcgO0' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '29' \
    --offset '15' \
    --startDate 'OvydRAh9' \
    > test.out 2>&1
eval_tap $? 430 'PublicUserEntitlementHistory' test.out

#- 431 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jPCiQYj8' \
    --appIds '["TuVwiWZX", "fhvuYjhw", "mMnYB6Yl"]' \
    --itemIds '["3SezxS9x", "iu6FTX04", "Fw6P2tJe"]' \
    --skus '["XM6nY87K", "VJFz3Ggp", "40eUlt9A"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyUserActiveEntitlement' test.out

#- 432 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JMyWRnYC' \
    --appId 'mN36mBoQ' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Ri1DJUfm' \
    --entitlementClazz 'APP' \
    --itemId 'MBnIQGtq' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 434 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'x0usCeY2' \
    --ids '["pi91vc13", "POtMO6zX", "xEDYRIUK"]' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 435 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'LziARLcX' \
    --entitlementClazz 'CODE' \
    --sku 'G847t55Z' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 436 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'TRdGtDoH' \
    --namespace $AB_NAMESPACE \
    --userId '71WUbjeh' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlement' test.out

#- 437 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'JbLNlwBv' \
    --namespace $AB_NAMESPACE \
    --userId 'Z1FEji9L' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["wepaNgYu", "3GZ6JEr9", "ofvrC8fx"], "requestId": "4JiBhOOl", "useCount": 69}' \
    > test.out 2>&1
eval_tap $? 437 'PublicConsumeUserEntitlement' test.out

#- 438 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'FbhB02Fp' \
    --namespace $AB_NAMESPACE \
    --userId 'YD9LWHrH' \
    --body '{"requestId": "qGYkZbfw", "useCount": 71}' \
    > test.out 2>&1
eval_tap $? 438 'PublicSellUserEntitlement' test.out

#- 439 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'IpvPN5eI' \
    --namespace $AB_NAMESPACE \
    --userId 'zeg2JRDW' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 439 'PublicSplitUserEntitlement' test.out

#- 440 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'XcxYu1kI' \
    --namespace $AB_NAMESPACE \
    --userId 'qYRC0ncr' \
    --body '{"entitlementId": "dH3HUZoU", "metadata": {"operationSource": "INVENTORY"}, "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 440 'PublicTransferUserEntitlement' test.out

#- 441 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'T5C7nBQq' \
    --body '{"code": "4fEbgwU1", "language": "dPzF-831", "region": "72cpkyuw"}' \
    > test.out 2>&1
eval_tap $? 441 'PublicRedeemCode' test.out

#- 442 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZDmPttw3' \
    --body '{"excludeOldTransactions": true, "language": "coD-DL", "productId": "lVG3uVtZ", "receiptData": "NU3Hs695", "region": "eHtmVhpm", "transactionId": "YfI2OP4U"}' \
    > test.out 2>&1
eval_tap $? 442 'PublicFulfillAppleIAPItem' test.out

#- 443 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'YIqD1uFb' \
    --body '{"epicGamesJwtToken": "54jfHMEv"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncEpicGamesInventory' test.out

#- 444 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '6yrRxqg3' \
    --body '{"autoAck": false, "autoConsume": true, "language": "PeQk-ODxD-118", "orderId": "P8eKppZ8", "packageName": "nkw4TRs3", "productId": "2asyPwj2", "purchaseTime": 39, "purchaseToken": "uEyjy4CI", "region": "Xdm89Syu", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillGoogleIAPItem' test.out

#- 445 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8JonJOI9' \
    > test.out 2>&1
eval_tap $? 445 'SyncOculusConsumableEntitlements' test.out

#- 446 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'FqIOnWd1' \
    --body '{"currencyCode": "kLHsnvS6", "price": 0.9841689125123065, "productId": "yklyjOTP", "serviceLabel": 69}' \
    > test.out 2>&1
eval_tap $? 446 'PublicReconcilePlayStationStore' test.out

#- 447 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'mm9Sccnz' \
    --body '{"currencyCode": "OujdxPo9", "price": 0.3989668179236495, "productId": "qFQ07XL3", "serviceLabels": [48, 1, 68]}' \
    > test.out 2>&1
eval_tap $? 447 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 448 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gPR7IVAG' \
    --body '{"appId": "LHyNtM3A", "currencyCode": "kmBCWs16", "language": "Bb-abhv_Fk", "price": 0.37433614371550494, "productId": "lHNQUoCM", "region": "LUhlWyVE", "steamId": "RfhsAXVi"}' \
    > test.out 2>&1
eval_tap $? 448 'SyncSteamInventory' test.out

#- 449 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    --userId '95pk3jCX' \
    --activeOnly 'false' \
    --groupId 'OXWV6Tpa' \
    --limit '63' \
    --offset '79' \
    --productId 'LKiLoM4J' \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserThirdPartySubscription' test.out

#- 450 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'sEigJXMl' \
    --body '{"gameId": "ZaC5FKAq", "language": "LaDa", "region": "s8DEmCJg"}' \
    > test.out 2>&1
eval_tap $? 450 'SyncTwitchDropsEntitlement1' test.out

#- 451 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xnImnhbk' \
    --body '{"currencyCode": "ho8zeFcD", "price": 0.6055322315342206, "productId": "BQsZDvT7", "xstsToken": "2I4Whz4c"}' \
    > test.out 2>&1
eval_tap $? 451 'SyncXboxInventory' test.out

#- 452 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '35ob43Jc' \
    --discounted 'false' \
    --itemId 'K44PPoq2' \
    --limit '6' \
    --offset '86' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 452 'PublicQueryUserOrders' test.out

#- 453 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wmUJNWfK' \
    --body '{"currencyCode": "xdQdSMRW", "discountCodes": ["LPq7IB1Q", "egTZARHF", "VqWzFTet"], "discountedPrice": 100, "ext": {"qYFwmElK": {}, "DRC0IwAi": {}, "h8kC33Qw": {}}, "itemId": "ZRHqNjEy", "language": "xV", "price": 31, "quantity": 23, "region": "X77LpRUc", "returnUrl": "DSTg5WVs", "sectionId": "GATKEEDB"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicCreateUserOrder' test.out

#- 454 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'DH8kXNN6' \
    --body '{"currencyCode": "kcGU9ca8", "discountCodes": ["eG2r6rxs", "SJRlyn9O", "oFjSOTeY"], "discountedPrice": 61, "itemId": "7qC2TChi", "price": 81, "quantity": 65}' \
    > test.out 2>&1
eval_tap $? 454 'PublicPreviewOrderPrice' test.out

#- 455 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qbyPD1De' \
    --userId 'jPsTZ4TQ' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserOrder' test.out

#- 456 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mdiVSyI6' \
    --userId 'Np1VlEOg' \
    > test.out 2>&1
eval_tap $? 456 'PublicCancelUserOrder' test.out

#- 457 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'lcHHoPff' \
    --userId 'P9YwWtwM' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrderHistories' test.out

#- 458 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'KslZXiF5' \
    --userId '0Y4TilOJ' \
    > test.out 2>&1
eval_tap $? 458 'PublicDownloadUserOrderReceipt' test.out

#- 459 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '33AHcJAT' \
    > test.out 2>&1
eval_tap $? 459 'PublicGetPaymentAccounts' test.out

#- 460 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'vSSBU5eQ' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'UTzsYsLM' \
    > test.out 2>&1
eval_tap $? 460 'PublicDeletePaymentAccount' test.out

#- 461 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'n4MDeU3J' \
    --autoCalcEstimatedPrice 'true' \
    --language '9wfhMmNe' \
    --region 'ixYV6Aml' \
    --storeId 'I97UVrSW' \
    --viewId 'TyhEleeV' \
    > test.out 2>&1
eval_tap $? 461 'PublicListActiveSections' test.out

#- 462 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'YW9c1iWH' \
    --chargeStatus 'CHARGED' \
    --itemId 'wW5PdClh' \
    --limit '73' \
    --offset '84' \
    --sku 'Eq5Jb9v5' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserSubscriptions' test.out

#- 463 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'uyWFk2Vg' \
    --body '{"currencyCode": "YSCeEY3Z", "itemId": "RJJZaY0N", "language": "Uu", "region": "6lIynmO7", "returnUrl": "htRuuF5p", "source": "7JBhKDAO"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicSubscribeSubscription' test.out

#- 464 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '04zqc4Nn' \
    --itemId '7eXs2MU0' \
    > test.out 2>&1
eval_tap $? 464 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 465 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '53rcse53' \
    --userId '4PfJuyEC' \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscription' test.out

#- 466 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jtNK6IRO' \
    --userId 'IqkKiyyw' \
    > test.out 2>&1
eval_tap $? 466 'PublicChangeSubscriptionBillingAccount' test.out

#- 467 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xeh2JYbH' \
    --userId 'Z7bVH4vQ' \
    --body '{"immediate": false, "reason": "7CD6wCKH"}' \
    > test.out 2>&1
eval_tap $? 467 'PublicCancelSubscription' test.out

#- 468 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UjRYmh6R' \
    --userId 'uRUUHawr' \
    --excludeFree 'false' \
    --limit '88' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserSubscriptionBillingHistories' test.out

#- 469 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'fzBbOJXv' \
    --language 'NEibhRRG' \
    --storeId 'K5vyFEzR' \
    > test.out 2>&1
eval_tap $? 469 'PublicListViews' test.out

#- 470 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'FveDFHD8' \
    --namespace $AB_NAMESPACE \
    --userId 'Nr4z7gyZ' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetWallet' test.out

#- 471 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'LF6VgTPy' \
    --namespace $AB_NAMESPACE \
    --userId 'BQvuXeuJ' \
    --limit '48' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 471 'PublicListUserWalletTransactions' test.out

#- 472 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetMyDLCContent' test.out

#- 473 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'Jspgtn2S' \
    --limit '99' \
    --offset '35' \
    --startTime 'FUsbKEuf' \
    --state 'REVOKE_FAILED' \
    --transactionId 'nwGJUiMQ' \
    --userId 'H3nv1GPG' \
    > test.out 2>&1
eval_tap $? 473 'QueryFulfillments' test.out

#- 474 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate '1WL0qDsj' \
    --baseAppId '5KJ4Jusu' \
    --categoryPath 'l2kfqSQe' \
    --features 't2dBEtNV' \
    --includeSubCategoryItem 'true' \
    --itemName 'nF0XlLSg' \
    --itemStatus 'ACTIVE' \
    --itemType '["EXTENSION", "CODE", "INGAMEITEM"]' \
    --limit '4' \
    --offset '74' \
    --region 'x8Wu5jJZ' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt", "name:desc", "name:asc"]' \
    --storeId 'yMQdayFN' \
    --tags 'kZch0l1d' \
    --targetNamespace 'LboxRFIh' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 474 'QueryItemsV2' test.out

#- 475 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '6ixdHwwH' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 475 'ImportStore1' test.out

#- 476 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '30WVvxSB' \
    --body '{"itemIds": ["ylrD6rSq", "K7BYSD3m", "Fuzxl0X2"]}' \
    > test.out 2>&1
eval_tap $? 476 'ExportStore1' test.out

#- 477 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'gYvBNRTc' \
    --body '{"entitlementCollectionId": "djaFx4K5", "entitlementOrigin": "Playstation", "metadata": {"Ave8vLzp": {}, "VpHsVdS0": {}, "SmSrOI4q": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "0qzviHsY", "namespace": "pn6KdOXZ"}, "item": {"itemId": "zhDsRHYX", "itemName": "gcGEDOAw", "itemSku": "E5pxIroa", "itemType": "kvXFNtfF"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "stuEjF5p", "namespace": "OqfoMuTL"}, "item": {"itemId": "WZVdP6xC", "itemName": "DhgKYLiN", "itemSku": "C65YXqVs", "itemType": "3cMrRptr"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "a5G0zQHz", "namespace": "llVDFiCv"}, "item": {"itemId": "WGVuocyB", "itemName": "O54LLd6j", "itemSku": "2tmxB1HN", "itemType": "uGfuiCoX"}, "quantity": 90, "type": "ITEM"}], "source": "DLC", "transactionId": "j8P2JvZx"}' \
    > test.out 2>&1
eval_tap $? 477 'FulfillRewardsV2' test.out

#- 478 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'Zs9VjCZy' \
    --userId 'tK2auoG7' \
    --body '{"items": [{"duration": 7, "endDate": "1992-02-02T00:00:00Z", "entitlementCollectionId": "65OJLZwR", "entitlementOrigin": "Nintendo", "itemId": "7rgOR8r6", "itemSku": "fKo3vMRe", "language": "lqWP56po", "metadata": {"VRyUnOzC": {}, "34sWdc7O": {}, "ia2Ud53v": {}}, "orderNo": "Etsqcrp6", "origin": "Oculus", "quantity": 29, "region": "UtduL2OV", "source": "PROMOTION", "startDate": "1991-06-21T00:00:00Z", "storeId": "NGb4tZrS"}, {"duration": 3, "endDate": "1998-05-30T00:00:00Z", "entitlementCollectionId": "BQj3nxP2", "entitlementOrigin": "IOS", "itemId": "LrO1HWjT", "itemSku": "wB6voSUZ", "language": "Or1rCXgb", "metadata": {"BhDrOBCV": {}, "n16r0ZjR": {}, "js3OepAb": {}}, "orderNo": "3ovqXYhp", "origin": "Other", "quantity": 50, "region": "zwwGnmZS", "source": "REDEEM_CODE", "startDate": "1978-02-09T00:00:00Z", "storeId": "2261iaPa"}, {"duration": 70, "endDate": "1981-07-07T00:00:00Z", "entitlementCollectionId": "KweRdIsU", "entitlementOrigin": "IOS", "itemId": "ZLGES48T", "itemSku": "XVEp1rCU", "language": "gPH9QxUD", "metadata": {"FeDNX2e7": {}, "9vQDCHXL": {}, "zxhbMPJP": {}}, "orderNo": "EIAl8ItQ", "origin": "Epic", "quantity": 92, "region": "Hl0a4Inb", "source": "EXPIRATION", "startDate": "1972-04-17T00:00:00Z", "storeId": "PRUsgIjn"}]}' \
    > test.out 2>&1
eval_tap $? 478 'FulfillItems' test.out

#- 479 RetryFulfillItems
samples/cli/sample-apps Platform retryFulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'cBoB7E99' \
    --userId 'KhWIIoGY' \
    > test.out 2>&1
eval_tap $? 479 'RetryFulfillItems' test.out

#- 480 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId '5NexKMI7' \
    --userId 'XguLuKTd' \
    > test.out 2>&1
eval_tap $? 480 'RevokeItems' test.out

#- 481 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'PY3o8tck' \
    --body '{"transactionId": "WXiimwO9"}' \
    > test.out 2>&1
eval_tap $? 481 'V2PublicFulfillAppleIAPItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE