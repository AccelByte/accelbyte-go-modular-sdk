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
echo "1..462"

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
    --id 'TjmEv97r' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'dyFV06YH' \
    --body '{"grantDays": "jLNh5ahE"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'u1jZjGB2' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'O74zR5sv' \
    --body '{"grantDays": "mFip5dee"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "19Wjg1IF", "dryRun": true, "fulfillmentUrl": "eCkbkWlP", "itemType": "APP", "purchaseConditionUrl": "lvpqwQlT"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'Jbtzf9UV' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'vdeYiWHq' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'UJKkPIBR' \
    --body '{"clazz": "xA7Ut71W", "dryRun": false, "fulfillmentUrl": "eyAExWma", "purchaseConditionUrl": "lAMBKOfv"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'l1265gid' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --name 'tKBFdgbs' \
    --offset '17' \
    --tag 'QuR40UvA' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fgFd85jr", "discountConfig": {"categories": [{"categoryPath": "5GfRH8LE", "includeSubCategories": true}, {"categoryPath": "OWrfF1D1", "includeSubCategories": true}, {"categoryPath": "3beZ2NBH", "includeSubCategories": true}], "currencyCode": "oL4mWCWm", "currencyNamespace": "UYoFXKmO", "discountAmount": 43, "discountPercentage": 67, "discountType": "AMOUNT", "items": [{"itemId": "hGmwGkrM", "itemName": "0qtEKzys"}, {"itemId": "vHGgvx6A", "itemName": "Y2jOvo85"}, {"itemId": "K7iSUH3X", "itemName": "FnkP1tff"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 0, "itemId": "YCUBncR4", "itemName": "wh9w98bb", "quantity": 60}, {"extraSubscriptionDays": 1, "itemId": "2vrhVqSx", "itemName": "F2ziCnt9", "quantity": 99}, {"extraSubscriptionDays": 97, "itemId": "5T8IIzHL", "itemName": "PF5XSI4F", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 78, "maxSaleCount": 91, "name": "W5b3L93e", "redeemEnd": "1987-10-19T00:00:00Z", "redeemStart": "1979-10-26T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["3Xr71ils", "9rgbMxuR", "J08OQGRC"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'jImJtIl8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'c12VzAQt' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zjlybPtk", "discountConfig": {"categories": [{"categoryPath": "WvDEhB1T", "includeSubCategories": false}, {"categoryPath": "mOl4YH6H", "includeSubCategories": false}, {"categoryPath": "cqWJAh7o", "includeSubCategories": true}], "currencyCode": "CrgZy8hy", "currencyNamespace": "BKdB1zbA", "discountAmount": 66, "discountPercentage": 25, "discountType": "PERCENTAGE", "items": [{"itemId": "faFWb6Qe", "itemName": "EH4ez581"}, {"itemId": "PqxANbua", "itemName": "wNAWVz3P"}, {"itemId": "KMsdC4Dj", "itemName": "JfUuAagM"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 94, "itemId": "BdQD4FYq", "itemName": "8Z5NjI9V", "quantity": 42}, {"extraSubscriptionDays": 37, "itemId": "aiboFgtU", "itemName": "B8YGGHba", "quantity": 63}, {"extraSubscriptionDays": 3, "itemId": "qvScgSRM", "itemName": "OcvfmoHA", "quantity": 70}], "maxRedeemCountPerCampaignPerUser": 96, "maxRedeemCountPerCode": 34, "maxRedeemCountPerCodePerUser": 97, "maxSaleCount": 43, "name": "YobUA1Ug", "redeemEnd": "1975-05-25T00:00:00Z", "redeemStart": "1989-05-20T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["92Mvb8RX", "8wsjcBEl", "F5aswWai"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'mSHWPcT9' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "DqLyQ8Ob", "oldName": "SksnbwKo"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId '1ZdFpZ3Z' \
    --namespace $AB_NAMESPACE \
    --batchName 'tb2oulYn' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'PjB13HoR' \
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
    --body '{"enableInventoryCheck": false}' \
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
    --body '{"appConfig": {"appName": "701T0cxW"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "ikejZZg3"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "7sRe76u3"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Vw53brCk"}, "extendType": "APP"}' \
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
    --storeId 'TwKdLnQQ' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'J7JtYD8E' \
    --body '{"categoryPath": "5s8eaM4i", "localizationDisplayNames": {"HyKOq6pD": "Rfb42ntD", "XmDalZQp": "1uAPlm4k", "7kBvasce": "6T6pVBSc"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'Lgw1bPQX' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'EsmMyEPM' \
    --namespace $AB_NAMESPACE \
    --storeId 'x8okokWI' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'hl1SfYDD' \
    --namespace $AB_NAMESPACE \
    --storeId 'PCAwzyXp' \
    --body '{"localizationDisplayNames": {"HsC2bUqC": "DhuviaQN", "SbvsRT3c": "g0q88Zf2", "1FeSVWW9": "XAsodSB8"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'GQtsi3wD' \
    --namespace $AB_NAMESPACE \
    --storeId 'FNeBSsJJ' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'GxxiYZtF' \
    --namespace $AB_NAMESPACE \
    --storeId 'NJm9YEO7' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'ZT3ClLRu' \
    --namespace $AB_NAMESPACE \
    --storeId 'tvMHxhgy' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Dvs0BttH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName '97HzYUyS' \
    --batchNo '[9, 43, 11]' \
    --code 'teYXhTkl' \
    --limit '33' \
    --offset '43' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '3V4ekfSO' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "Azyweazt", "codeValue": "8r13BiSj", "quantity": 80}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'z2gAVYyS' \
    --namespace $AB_NAMESPACE \
    --batchName 'slNmZb88' \
    --batchNo '[20, 19, 67]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'EiZPbvW7' \
    --namespace $AB_NAMESPACE \
    --batchName 'aztt0lw8' \
    --batchNo '[75, 5, 86]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'rpWRRHeC' \
    --namespace $AB_NAMESPACE \
    --batchName 'TDzXhkGy' \
    --batchNo '[76, 17, 86]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'zlsPmFPL' \
    --namespace $AB_NAMESPACE \
    --code 'IoycsYLy' \
    --limit '91' \
    --offset '37' \
    --userId 'YOhUhm4a' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'cffM9Ea7' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ZfCbbwnH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'bQvhXe8j' \
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
    --body '{"currencyCode": "Iaq2G0NU", "currencySymbol": "FB30tCYm", "currencyType": "VIRTUAL", "decimals": 74, "localizationDescriptions": {"KO1Z3lTE": "lEDxKMsM", "MetbJXBA": "v3AYbW0a", "uQbBAn3P": "8bCq3zd9"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'NsaLGVHr' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"ChUEuzvL": "GIdpuHDk", "anXWtSGr": "ZbqOcHS9", "Z0jIXRe5": "sdvwZsa1"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'b62h6ipd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'Vq0N6Y9f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '5LLD7Ps0' \
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
    --body '{"data": [{"id": "kNL7sKga", "rewards": [{"currency": {"currencyCode": "8ridFZX3", "namespace": "vzUf6uYF"}, "item": {"itemId": "fQJUXYVV", "itemName": "RPOSP62o", "itemSku": "qz1dOjID", "itemType": "JoGkOXXb"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "mb1JLlLi", "namespace": "HYMQaKlP"}, "item": {"itemId": "vEfz8tEL", "itemName": "jhNlSJhj", "itemSku": "7ncKmoKL", "itemType": "6KDDhCVL"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "GxdzgorI", "namespace": "Yrxnq5sk"}, "item": {"itemId": "Xlj1MNkn", "itemName": "3yN1fzwG", "itemSku": "ZdzxDfjm", "itemType": "XtCsp0XN"}, "quantity": 49, "type": "ITEM"}]}, {"id": "9WAPeQys", "rewards": [{"currency": {"currencyCode": "VoiBU3xs", "namespace": "49fQ4SyP"}, "item": {"itemId": "JBXpTJNt", "itemName": "Y5EaOzUa", "itemSku": "5j9csYxh", "itemType": "qaQ2xi8B"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "sxLVlPZI", "namespace": "qAApLnov"}, "item": {"itemId": "Ch8GRqQh", "itemName": "Ovjo5vln", "itemSku": "nmWFq76k", "itemType": "OZPORQiQ"}, "quantity": 44, "type": "CURRENCY"}, {"currency": {"currencyCode": "UqkMs9Vj", "namespace": "zh80KG2Z"}, "item": {"itemId": "o4GvT2tw", "itemName": "02p3kjn8", "itemSku": "zeA4torq", "itemType": "q0KYWGWJ"}, "quantity": 29, "type": "CURRENCY"}]}, {"id": "x5GZVFbq", "rewards": [{"currency": {"currencyCode": "qi2qbSnz", "namespace": "yvgFM7ZV"}, "item": {"itemId": "W40hq2Tp", "itemName": "izheN8WN", "itemSku": "exDpXYtF", "itemType": "C1O3BpoT"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "fy0p7R4K", "namespace": "0ZFK5dQz"}, "item": {"itemId": "qRoHBZxj", "itemName": "UZfJhUpz", "itemSku": "UVQl7jQ9", "itemType": "zlFRPkFK"}, "quantity": 77, "type": "ITEM"}, {"currency": {"currencyCode": "FExY6rvF", "namespace": "tgnGOTZl"}, "item": {"itemId": "RcJ4SDfx", "itemName": "qXyzgWPb", "itemSku": "tRlFshEs", "itemType": "8iBJDPM7"}, "quantity": 31, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"t5m13Vnu": "puiFAsKu", "SLqbbg7h": "0eBTRuI7", "mjlmNmBa": "gc1IE1Rt"}}, {"platform": "XBOX", "platformDlcIdMap": {"G2vryfqQ": "3Zh23Pr1", "fdtKCUCn": "VBvIXi8K", "eiQY6Cs5": "aojyL0o6"}}, {"platform": "PSN", "platformDlcIdMap": {"VMyAZj63": "EKece0gj", "AFmYaOzL": "5wvLCQfl", "3Zgw70eB": "5jnQ08zW"}}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'OupsoF4n' \
    --itemId '["p5h69hxt", "HZvttKFz", "5XoepuNK"]' \
    --limit '28' \
    --offset '36' \
    --origin 'Playstation' \
    --userId '3QhayozO' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements' test.out

#- 64 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["CegTpykX", "NKovZcrs", "5GcaaRYB"]' \
    --limit '4' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements1' test.out

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
    --body '{"entitlementGrantList": [{"collectionId": "OxqgY6r6", "endDate": "1980-04-24T00:00:00Z", "grantedCode": "FUrZobsH", "itemId": "DLk1AF8i", "itemNamespace": "HPqL4h8Z", "language": "wmu", "metadata": {"h5A8Vqoz": {}, "LFDDGtT9": {}, "s1dv736L": {}}, "origin": "Playstation", "quantity": 96, "region": "seReEsLA", "source": "REDEEM_CODE", "startDate": "1988-03-17T00:00:00Z", "storeId": "NxwAUlCi"}, {"collectionId": "iZXLtGms", "endDate": "1982-03-05T00:00:00Z", "grantedCode": "WtG3dSQu", "itemId": "8Dvcc7Pt", "itemNamespace": "WsowzMZ9", "language": "sAW-LHam_BF", "metadata": {"t4a2zeGI": {}, "EzguGAeh": {}, "8e71P7PB": {}}, "origin": "Epic", "quantity": 64, "region": "77MdrNho", "source": "PURCHASE", "startDate": "1979-04-01T00:00:00Z", "storeId": "7h5dsBY1"}, {"collectionId": "AoJ2dkDn", "endDate": "1973-08-14T00:00:00Z", "grantedCode": "7tYydezX", "itemId": "mHGPuvoc", "itemNamespace": "iCgTfrH6", "language": "Mbu-BNmX_175", "metadata": {"Q3OIiHMQ": {}, "yd7ElFup": {}, "Lcg0LEN3": {}}, "origin": "Xbox", "quantity": 55, "region": "tmX2L7Zw", "source": "PURCHASE", "startDate": "1975-08-01T00:00:00Z", "storeId": "qSvzlzKs"}], "userIds": ["GFM2A3S0", "7meadLPR", "wDuF3y1f"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["eUGhcATG", "tf0lisXl", "0ixjk9St"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'VR2W3L2T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '55' \
    --status 'FAIL' \
    --userId '2wO1LoYi' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'xG5f3i9a' \
    --eventType 'REFUND' \
    --externalOrderId 'WN6zkvLW' \
    --limit '50' \
    --offset '70' \
    --startTime 'd71GGsGY' \
    --status 'FAIL' \
    --userId '8fc2W6IR' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "zigDTj41", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 59, "clientTransactionId": "aiYTz5Tq"}, {"amountConsumed": 61, "clientTransactionId": "NviRXX8I"}, {"amountConsumed": 27, "clientTransactionId": "RxuULtVX"}], "entitlementId": "zjYtSnwu", "usageCount": 78}, {"clientTransaction": [{"amountConsumed": 100, "clientTransactionId": "RWGzTvqB"}, {"amountConsumed": 78, "clientTransactionId": "RrHPSohZ"}, {"amountConsumed": 41, "clientTransactionId": "pXvvenwH"}], "entitlementId": "qCuPTJVH", "usageCount": 51}, {"clientTransaction": [{"amountConsumed": 40, "clientTransactionId": "Cie95fHk"}, {"amountConsumed": 67, "clientTransactionId": "Vpg2nzMk"}, {"amountConsumed": 83, "clientTransactionId": "2NpxzC5t"}], "entitlementId": "G4k44zQz", "usageCount": 65}], "purpose": "Wxtio4UN"}, "originalTitleName": "PprC2kYg", "paymentProductSKU": "rfbp3qa2", "purchaseDate": "tJf8MCO4", "sourceOrderItemId": "z8hJiAzP", "titleName": "0BzQWs55"}, "eventDomain": "jfXvJxpS", "eventSource": "BfoAXIqY", "eventType": "Sxq1fiu3", "eventVersion": 14, "id": "9uA4QP9s", "timestamp": "ydp3YNNi"}' \
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
    --body '{"bundleId": "SaXt0iCa", "password": "b7hMUetq"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateAppleIAPConfig' test.out

#- 75 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteAppleIAPConfig' test.out

#- 76 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetEpicGamesIAPConfig' test.out

#- 77 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "PUKVEl7X"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateEpicGamesIAPConfig' test.out

#- 78 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteEpicGamesIAPConfig' test.out

#- 79 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetGoogleIAPConfig' test.out

#- 80 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "CvPhGSuP", "serviceAccountId": "sWbkMkfj"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateGoogleIAPConfig' test.out

#- 81 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteGoogleIAPConfig' test.out

#- 82 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleP12File' test.out

#- 83 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetIAPItemConfig' test.out

#- 84 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "h1OTUwht", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"bwu0IWDN": "qe16zlcV", "ctNnCJXD": "d5hLOq1g", "LbSkoICh": "ec3SYXRY"}}, {"itemIdentity": "0wF7AAOR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"qYNnjRtV": "vAnpUvFt", "IZf2QmCa": "WxvyGgC0", "8duy5UBr": "hBhx3cdX"}}, {"itemIdentity": "lbK21vxs", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"clc8FBiD": "BwqujIvC", "g0PmU3no": "mKeSRhiY", "vJxIAQ3m": "jfSY6ufX"}}]}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateIAPItemConfig' test.out

#- 85 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeleteIAPItemConfig' test.out

#- 86 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'GetOculusIAPConfig' test.out

#- 87 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "2ouKLzv1", "appSecret": "aSY7KQNs"}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateOculusIAPConfig' test.out

#- 88 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'DeleteOculusIAPConfig' test.out

#- 89 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'GetPlayStationIAPConfig' test.out

#- 90 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "ZFW6q47i", "backOfficeServerClientSecret": "TXmOwczZ", "enableStreamJob": true, "environment": "ymJIpkq8", "streamName": "pVcVaA25", "streamPartnerName": "G6YYl53E"}' \
    > test.out 2>&1
eval_tap $? 90 'UpdatePlaystationIAPConfig' test.out

#- 91 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'DeletePlaystationIAPConfig' test.out

#- 92 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'ValidateExistedPlaystationIAPConfig' test.out

#- 93 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "DNP9dgy0", "backOfficeServerClientSecret": "hq5hkGsu", "enableStreamJob": false, "environment": "S4QeD7iW", "streamName": "ufA7PaWP", "streamPartnerName": "wJcyJ4lI"}' \
    > test.out 2>&1
eval_tap $? 93 'ValidatePlaystationIAPConfig' test.out

#- 94 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetSteamIAPConfig' test.out

#- 95 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "4JclSUW0", "publisherAuthenticationKey": "TMdrPIii"}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateSteamIAPConfig' test.out

#- 96 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'DeleteSteamIAPConfig' test.out

#- 97 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 97 'GetTwitchIAPConfig' test.out

#- 98 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "yPO9qC73", "clientSecret": "Yhvk6vbJ", "organizationId": "42NfQf5w"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateTwitchIAPConfig' test.out

#- 99 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'DeleteTwitchIAPConfig' test.out

#- 100 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'GetXblIAPConfig' test.out

#- 101 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "AqPXzHPZ"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateXblIAPConfig' test.out

#- 102 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'DeleteXblAPConfig' test.out

#- 103 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password '4gavfaeE' \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblBPCertFile' test.out

#- 104 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'BWbJ3Qzx' \
    --feature '2d0NCGF1' \
    --itemId '8HMpbDkF' \
    --itemType 'INGAMEITEM' \
    --startTime 'bB4F3TyJ' \
    > test.out 2>&1
eval_tap $? 104 'DownloadInvoiceDetails' test.out

#- 105 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime '5IycusYI' \
    --feature 'Rxg9yX5s' \
    --itemId 'FxuCdMSg' \
    --itemType 'APP' \
    --startTime 't1lJlRmv' \
    > test.out 2>&1
eval_tap $? 105 'GenerateInvoiceSummary' test.out

#- 106 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'aNdqYA38' \
    --body '{"categoryPath": "yDIez8hP", "targetItemId": "k5q37MzJ", "targetNamespace": "9mJwZUEE"}' \
    > test.out 2>&1
eval_tap $? 106 'SyncInGameItem' test.out

#- 107 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'q4ZZoJ7G' \
    --body '{"appId": "EAnuV9ir", "appType": "DEMO", "baseAppId": "XI1M98Si", "boothName": "8PsvZLbS", "categoryPath": "yuuitQp8", "clazz": "MGjuS9o6", "displayOrder": 56, "entitlementType": "CONSUMABLE", "ext": {"SkXW8fov": {}, "cdG5XAFS": {}, "2rptE3YY": {}}, "features": ["TB1xWH3p", "iBXndu89", "hdGMjpeo"], "flexible": false, "images": [{"as": "u6GhrkRv", "caption": "MoZKIsnk", "height": 22, "imageUrl": "hwLTCgku", "smallImageUrl": "wrTPS5ay", "width": 40}, {"as": "xtVWbTdS", "caption": "Fkpl1KLQ", "height": 90, "imageUrl": "W4XhCUit", "smallImageUrl": "nDeyNaJO", "width": 27}, {"as": "t0nEK3D7", "caption": "ut5LrZGF", "height": 39, "imageUrl": "EapSaBys", "smallImageUrl": "fNcPDcyz", "width": 81}], "inventoryConfig": {"customAttributes": {"34LoHedB": {}, "vhJmF1Mn": {}, "ZopCxwWQ": {}}, "serverCustomAttributes": {"mgb8dB0c": {}, "rLbTt23k": {}, "hWPYnI2t": {}}, "slotUsed": 92}, "itemIds": ["DPXgasKy", "odpoehGp", "V3iELgTl"], "itemQty": {"nfY0YbNs": 81, "gCUZJFuT": 38, "ADkwuVP9": 28}, "itemType": "MEDIA", "listable": false, "localizations": {"JkcgzlLH": {"description": "huDIBR6o", "localExt": {"XIXJSnhi": {}, "fk88NZKh": {}, "BIeXJoRu": {}}, "longDescription": "msM4HZ0H", "title": "yYYBwZ0G"}, "21IbpqjG": {"description": "VJWJkpNs", "localExt": {"nxOsF10T": {}, "Ea5zHAz6": {}, "OblS3mtX": {}}, "longDescription": "i67t9F0D", "title": "6A7HAFYM"}, "njlG0TMD": {"description": "Ubg6QDeg", "localExt": {"NuwZQo9M": {}, "chnwtjdo": {}, "wg6xX8Of": {}}, "longDescription": "OxZjgir3", "title": "xUrZ4iHb"}}, "lootBoxConfig": {"rewardCount": 19, "rewards": [{"lootBoxItems": [{"count": 9, "duration": 6, "endDate": "1972-01-27T00:00:00Z", "itemId": "GWRVV3uA", "itemSku": "wSf4STfj", "itemType": "CKmUXFQr"}, {"count": 44, "duration": 77, "endDate": "1979-12-14T00:00:00Z", "itemId": "93MriPGL", "itemSku": "tPN9VEZT", "itemType": "bA71F4z9"}, {"count": 23, "duration": 15, "endDate": "1993-04-04T00:00:00Z", "itemId": "ig7BiBWC", "itemSku": "8CZI5bLz", "itemType": "pjyoyg7c"}], "name": "LD51nSa9", "odds": 0.1381653676206024, "type": "PROBABILITY_GROUP", "weight": 38}, {"lootBoxItems": [{"count": 27, "duration": 12, "endDate": "1986-04-13T00:00:00Z", "itemId": "AftXJiAj", "itemSku": "aYNnbxff", "itemType": "XMAmRCSO"}, {"count": 81, "duration": 10, "endDate": "1972-03-29T00:00:00Z", "itemId": "Z6nfcxLA", "itemSku": "omfR7Vlt", "itemType": "Ku8UaERw"}, {"count": 9, "duration": 63, "endDate": "1979-06-20T00:00:00Z", "itemId": "xS8FMsMS", "itemSku": "Vf0BcZFz", "itemType": "WgaNI4CL"}], "name": "7JLqyMRe", "odds": 0.10166580626325716, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 61, "duration": 70, "endDate": "1993-07-20T00:00:00Z", "itemId": "Vp6hKsEq", "itemSku": "XzLJIq46", "itemType": "DFYzVNgN"}, {"count": 78, "duration": 98, "endDate": "1989-07-28T00:00:00Z", "itemId": "ey6yRQO7", "itemSku": "WkElFk3c", "itemType": "q2QPkQ5U"}, {"count": 60, "duration": 86, "endDate": "1992-12-01T00:00:00Z", "itemId": "lhnUQayL", "itemSku": "OvEJtq7i", "itemType": "sOYocoTw"}], "name": "mKO5SzON", "odds": 0.8370937471897798, "type": "REWARD", "weight": 81}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 14, "name": "hOZzk2th", "optionBoxConfig": {"boxItems": [{"count": 71, "duration": 71, "endDate": "1994-05-14T00:00:00Z", "itemId": "YsAGUIvZ", "itemSku": "aJo7G5hk", "itemType": "m10HavFt"}, {"count": 80, "duration": 95, "endDate": "1975-01-20T00:00:00Z", "itemId": "xo8qwhXL", "itemSku": "uUVdV10C", "itemType": "uy361Bzi"}, {"count": 51, "duration": 55, "endDate": "1972-12-25T00:00:00Z", "itemId": "LK048066", "itemSku": "F4Xkrs0P", "itemType": "2LPCuPgD"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 81, "fixedTrialCycles": 16, "graceDays": 86}, "regionData": {"gHTcs8tC": [{"currencyCode": "FxKy6drQ", "currencyNamespace": "oEbWmKRJ", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1979-12-29T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1997-01-17T00:00:00Z", "expireAt": "1974-04-02T00:00:00Z", "price": 35, "purchaseAt": "1984-01-30T00:00:00Z", "trialPrice": 43}, {"currencyCode": "v7rlL99z", "currencyNamespace": "yx1b3fjR", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1974-03-31T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-05-19T00:00:00Z", "expireAt": "1987-07-10T00:00:00Z", "price": 1, "purchaseAt": "1982-02-03T00:00:00Z", "trialPrice": 54}, {"currencyCode": "Ci1cc1JG", "currencyNamespace": "oK5FRVS8", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1978-05-12T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1998-08-07T00:00:00Z", "expireAt": "1998-10-19T00:00:00Z", "price": 94, "purchaseAt": "1992-03-30T00:00:00Z", "trialPrice": 4}], "9C5wqnzQ": [{"currencyCode": "2WcBHTmz", "currencyNamespace": "Ht3VMSUn", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1974-11-22T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1976-02-01T00:00:00Z", "expireAt": "1997-12-21T00:00:00Z", "price": 27, "purchaseAt": "1980-11-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "1Y4r2HfT", "currencyNamespace": "Je3MtoS0", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1992-05-05T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1984-02-04T00:00:00Z", "expireAt": "1977-09-26T00:00:00Z", "price": 70, "purchaseAt": "1999-02-21T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Xsp6l232", "currencyNamespace": "zls0jp25", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1994-08-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1971-04-10T00:00:00Z", "expireAt": "1989-04-26T00:00:00Z", "price": 39, "purchaseAt": "1976-11-08T00:00:00Z", "trialPrice": 93}], "kzpiwvIG": [{"currencyCode": "xJqcUCiZ", "currencyNamespace": "JPu2A1Jc", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1972-12-29T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1995-05-13T00:00:00Z", "expireAt": "1999-01-03T00:00:00Z", "price": 21, "purchaseAt": "1981-04-24T00:00:00Z", "trialPrice": 80}, {"currencyCode": "VqYhDBEZ", "currencyNamespace": "Gv46Ta7i", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1997-06-17T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1997-03-11T00:00:00Z", "expireAt": "1986-11-16T00:00:00Z", "price": 73, "purchaseAt": "1979-06-06T00:00:00Z", "trialPrice": 27}, {"currencyCode": "T1rxbCvd", "currencyNamespace": "KosWAHh6", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1998-12-29T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-08-09T00:00:00Z", "expireAt": "1982-08-27T00:00:00Z", "price": 47, "purchaseAt": "1995-11-24T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "OWdsUNL1", "price": 56}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "KH0yrlHc", "stackable": false, "status": "ACTIVE", "tags": ["6zNbBLoi", "1hQjZzJe", "Tyd2xcCj"], "targetCurrencyCode": "B7UEU8Vt", "targetNamespace": "FWaA4UdA", "thumbnailUrl": "uDlgGddg", "useCount": 68}' \
    > test.out 2>&1
eval_tap $? 107 'CreateItem' test.out

#- 108 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'SJUjVRYx' \
    --appId 'POPkKaC4' \
    > test.out 2>&1
eval_tap $? 108 'GetItemByAppId' test.out

#- 109 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'w6bVP5lP' \
    --baseAppId '1cLexQjS' \
    --categoryPath 'DH91kItq' \
    --features 'ufbV72cA' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --limit '80' \
    --offset '18' \
    --region 'XXaI8HF5' \
    --sortBy '["name:asc", "displayOrder", "createdAt:desc"]' \
    --storeId 'gNGd6elc' \
    --tags 'B7sE5X3j' \
    --targetNamespace 'c8zZgE0C' \
    > test.out 2>&1
eval_tap $? 109 'QueryItems' test.out

#- 110 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Lah0uCDC", "NrKud73b", "a9Nkb7zM"]' \
    > test.out 2>&1
eval_tap $? 110 'ListBasicItemsByFeatures' test.out

#- 111 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'wpUHDRoo' \
    --itemIds '5YsXL6WD' \
    > test.out 2>&1
eval_tap $? 111 'GetItems' test.out

#- 112 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '9Fl9XEEF' \
    --sku 'EN3mhgdH' \
    > test.out 2>&1
eval_tap $? 112 'GetItemBySku' test.out

#- 113 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'WUmDhl67' \
    --populateBundle 'false' \
    --region 'czWasIQg' \
    --storeId 'X43SbuDG' \
    --sku 'GSkjkUYv' \
    > test.out 2>&1
eval_tap $? 113 'GetLocaleItemBySku' test.out

#- 114 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'YTvdZSG5' \
    --region '4rPoWZJ2' \
    --storeId 'wSbL2orG' \
    --itemIds 'cY2dwAcR' \
    --userId 'PEyMxpBg' \
    > test.out 2>&1
eval_tap $? 114 'GetEstimatedPrice' test.out

#- 115 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'AZlecNlP' \
    --sku 'tZjMQTIM' \
    > test.out 2>&1
eval_tap $? 115 'GetItemIdBySku' test.out

#- 116 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["TAUf5P2s", "geC3H7BD", "0ooOReSl"]' \
    --storeId 'KRzpe0HX' \
    > test.out 2>&1
eval_tap $? 116 'GetBulkItemIdBySkus' test.out

#- 117 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '0xVJOhil' \
    --region 'hZedjQXE' \
    --storeId 'xcFpW8gB' \
    --itemIds 'NV9N7JxZ' \
    > test.out 2>&1
eval_tap $? 117 'BulkGetLocaleItems' test.out

#- 118 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'GetAvailablePredicateTypes' test.out

#- 119 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'zuRsxLBw' \
    --userId 'frUH9YKY' \
    --body '{"itemIds": ["JP0ycu3P", "khBoLTz9", "1tomwxKe"]}' \
    > test.out 2>&1
eval_tap $? 119 'ValidateItemPurchaseCondition' test.out

#- 120 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Q7AI0zwJ' \
    --body '{"changes": [{"itemIdentities": ["hw52I3XU", "BWvpAXjf", "owKO4gxX"], "itemIdentityType": "ITEM_SKU", "regionData": {"6ialPrMT": [{"currencyCode": "8ICZv4N0", "currencyNamespace": "GPenS0Gp", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1996-04-13T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1983-07-11T00:00:00Z", "discountedPrice": 90, "expireAt": "1973-04-17T00:00:00Z", "price": 51, "purchaseAt": "1992-05-24T00:00:00Z", "trialPrice": 63}, {"currencyCode": "7DlSD1iD", "currencyNamespace": "nkbL0Hid", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1991-02-18T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1994-04-20T00:00:00Z", "discountedPrice": 11, "expireAt": "1972-12-13T00:00:00Z", "price": 95, "purchaseAt": "1972-08-24T00:00:00Z", "trialPrice": 62}, {"currencyCode": "NswSKPJg", "currencyNamespace": "pebM7ykd", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1984-06-30T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1992-03-23T00:00:00Z", "discountedPrice": 81, "expireAt": "1974-11-30T00:00:00Z", "price": 29, "purchaseAt": "1993-01-01T00:00:00Z", "trialPrice": 18}], "VtjDnNxw": [{"currencyCode": "bRpLtB2Y", "currencyNamespace": "72TM7RH8", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1989-04-23T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1973-11-05T00:00:00Z", "discountedPrice": 79, "expireAt": "1992-09-06T00:00:00Z", "price": 20, "purchaseAt": "1981-08-28T00:00:00Z", "trialPrice": 6}, {"currencyCode": "7rURGK8C", "currencyNamespace": "Ecw4GJex", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1997-01-21T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1997-02-13T00:00:00Z", "discountedPrice": 29, "expireAt": "1988-06-19T00:00:00Z", "price": 9, "purchaseAt": "1981-02-15T00:00:00Z", "trialPrice": 18}, {"currencyCode": "WN5N5pna", "currencyNamespace": "t234zKIi", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1984-08-21T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1983-04-13T00:00:00Z", "discountedPrice": 75, "expireAt": "1977-06-08T00:00:00Z", "price": 19, "purchaseAt": "1989-06-24T00:00:00Z", "trialPrice": 71}], "OjzKlGhE": [{"currencyCode": "KgCgz87Z", "currencyNamespace": "FNLibqHN", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1995-11-29T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1999-02-15T00:00:00Z", "discountedPrice": 33, "expireAt": "1990-07-08T00:00:00Z", "price": 81, "purchaseAt": "1986-03-14T00:00:00Z", "trialPrice": 77}, {"currencyCode": "nJlz7KUV", "currencyNamespace": "EVzaUav8", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1971-07-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1971-12-09T00:00:00Z", "discountedPrice": 83, "expireAt": "1977-03-07T00:00:00Z", "price": 89, "purchaseAt": "1986-07-08T00:00:00Z", "trialPrice": 29}, {"currencyCode": "L8G2sBgG", "currencyNamespace": "052S05Mz", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1985-06-15T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1985-07-22T00:00:00Z", "discountedPrice": 17, "expireAt": "1986-02-07T00:00:00Z", "price": 57, "purchaseAt": "1982-06-11T00:00:00Z", "trialPrice": 54}]}}, {"itemIdentities": ["YzDX5yjn", "EZpMMlyY", "Euwcck5c"], "itemIdentityType": "ITEM_ID", "regionData": {"QnZnRGVs": [{"currencyCode": "eFP8tmMG", "currencyNamespace": "URuuUrQO", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1975-06-03T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1992-05-05T00:00:00Z", "discountedPrice": 64, "expireAt": "1993-07-16T00:00:00Z", "price": 3, "purchaseAt": "1983-02-11T00:00:00Z", "trialPrice": 27}, {"currencyCode": "Yav70qvP", "currencyNamespace": "vaSb1DcL", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1992-04-11T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1973-06-23T00:00:00Z", "discountedPrice": 80, "expireAt": "1974-08-24T00:00:00Z", "price": 11, "purchaseAt": "1973-05-08T00:00:00Z", "trialPrice": 37}, {"currencyCode": "4Dy7fMo8", "currencyNamespace": "y665dD2K", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1998-02-24T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1992-01-15T00:00:00Z", "discountedPrice": 31, "expireAt": "1989-04-02T00:00:00Z", "price": 67, "purchaseAt": "1981-08-28T00:00:00Z", "trialPrice": 95}], "ShIw95Cv": [{"currencyCode": "jMaBGdTc", "currencyNamespace": "9H1MrUEg", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1980-03-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1982-08-10T00:00:00Z", "discountedPrice": 69, "expireAt": "1987-11-16T00:00:00Z", "price": 65, "purchaseAt": "1984-10-09T00:00:00Z", "trialPrice": 1}, {"currencyCode": "rdp6MU5q", "currencyNamespace": "0dIhptvW", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1990-06-27T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1980-02-14T00:00:00Z", "discountedPrice": 25, "expireAt": "1974-01-05T00:00:00Z", "price": 76, "purchaseAt": "1972-08-25T00:00:00Z", "trialPrice": 64}, {"currencyCode": "WatUn99P", "currencyNamespace": "Bn5Y3TYC", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1997-08-01T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1974-10-19T00:00:00Z", "discountedPrice": 69, "expireAt": "1974-05-09T00:00:00Z", "price": 44, "purchaseAt": "1983-05-07T00:00:00Z", "trialPrice": 20}], "O4g0zNFy": [{"currencyCode": "LHtnySGN", "currencyNamespace": "m72rvIsI", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1995-03-26T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1973-07-17T00:00:00Z", "discountedPrice": 88, "expireAt": "1973-03-06T00:00:00Z", "price": 97, "purchaseAt": "1977-09-03T00:00:00Z", "trialPrice": 91}, {"currencyCode": "fGGTKMKK", "currencyNamespace": "9Lq8OxkR", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1990-12-20T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1971-05-10T00:00:00Z", "discountedPrice": 36, "expireAt": "1997-07-27T00:00:00Z", "price": 42, "purchaseAt": "1985-09-16T00:00:00Z", "trialPrice": 50}, {"currencyCode": "kfMYQpNT", "currencyNamespace": "QN6Zf04U", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1979-03-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-01-12T00:00:00Z", "discountedPrice": 22, "expireAt": "1982-01-02T00:00:00Z", "price": 99, "purchaseAt": "1996-09-19T00:00:00Z", "trialPrice": 27}]}}, {"itemIdentities": ["N5jrMlVz", "utucAmtt", "MeF0ZRWl"], "itemIdentityType": "ITEM_SKU", "regionData": {"V7gt1BZH": [{"currencyCode": "zvPPF26M", "currencyNamespace": "ffAaZ0FH", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1994-08-04T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-12-02T00:00:00Z", "discountedPrice": 14, "expireAt": "1974-11-05T00:00:00Z", "price": 50, "purchaseAt": "1999-08-09T00:00:00Z", "trialPrice": 94}, {"currencyCode": "O2IglXlH", "currencyNamespace": "IzXJ7wQT", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1985-04-15T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1983-06-15T00:00:00Z", "discountedPrice": 21, "expireAt": "1990-01-17T00:00:00Z", "price": 1, "purchaseAt": "1999-04-29T00:00:00Z", "trialPrice": 53}, {"currencyCode": "nB8ttBV1", "currencyNamespace": "mRtBtb6z", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1986-01-31T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1987-10-28T00:00:00Z", "discountedPrice": 38, "expireAt": "1981-04-16T00:00:00Z", "price": 66, "purchaseAt": "1997-09-15T00:00:00Z", "trialPrice": 99}], "wtOSqWM5": [{"currencyCode": "DtC7lbE6", "currencyNamespace": "zz1BBtTi", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1976-08-02T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1996-09-25T00:00:00Z", "discountedPrice": 70, "expireAt": "1993-06-16T00:00:00Z", "price": 78, "purchaseAt": "1983-05-20T00:00:00Z", "trialPrice": 77}, {"currencyCode": "VWvC1Ydx", "currencyNamespace": "nLm2pDXK", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1972-11-06T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1976-11-22T00:00:00Z", "discountedPrice": 20, "expireAt": "1993-07-29T00:00:00Z", "price": 16, "purchaseAt": "1974-12-25T00:00:00Z", "trialPrice": 67}, {"currencyCode": "wEWN0onA", "currencyNamespace": "z59JXbZJ", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1987-10-26T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1994-03-21T00:00:00Z", "discountedPrice": 11, "expireAt": "1994-10-16T00:00:00Z", "price": 51, "purchaseAt": "1981-09-12T00:00:00Z", "trialPrice": 48}], "oUxsKNgX": [{"currencyCode": "uH3GATcC", "currencyNamespace": "N8gaikP3", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1975-03-14T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1983-03-16T00:00:00Z", "discountedPrice": 87, "expireAt": "1991-11-26T00:00:00Z", "price": 48, "purchaseAt": "1999-02-05T00:00:00Z", "trialPrice": 32}, {"currencyCode": "QIhqQImB", "currencyNamespace": "wFYDwY5f", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1987-02-28T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1991-09-30T00:00:00Z", "discountedPrice": 86, "expireAt": "1975-01-15T00:00:00Z", "price": 43, "purchaseAt": "1999-10-14T00:00:00Z", "trialPrice": 37}, {"currencyCode": "mfIJZbVi", "currencyNamespace": "K05TcYut", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1977-03-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1984-11-06T00:00:00Z", "discountedPrice": 84, "expireAt": "1997-05-30T00:00:00Z", "price": 71, "purchaseAt": "1999-01-30T00:00:00Z", "trialPrice": 10}]}}]}' \
    > test.out 2>&1
eval_tap $? 120 'BulkUpdateRegionData' test.out

#- 121 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'LOOTBOX' \
    --limit '67' \
    --offset '60' \
    --sortBy 'hOTFWrpW' \
    --storeId 'fSZO7duk' \
    --keyword 'j5zsBsBF' \
    --language 'CG8OFXr5' \
    > test.out 2>&1
eval_tap $? 121 'SearchItems' test.out

#- 122 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '62' \
    --offset '91' \
    --sortBy '["updatedAt:asc", "name:asc", "createdAt:asc"]' \
    --storeId 'zQ0FElBN' \
    > test.out 2>&1
eval_tap $? 122 'QueryUncategorizedItems' test.out

#- 123 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'tB7lMIHL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'OBNFS5ak' \
    > test.out 2>&1
eval_tap $? 123 'GetItem' test.out

#- 124 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'pBbgDZzq' \
    --namespace $AB_NAMESPACE \
    --storeId 'l6M3L7V4' \
    --body '{"appId": "nnXKpTAb", "appType": "SOFTWARE", "baseAppId": "rQV6A59W", "boothName": "Zef4ffS9", "categoryPath": "JmvqqH1q", "clazz": "0UfqKiN0", "displayOrder": 86, "entitlementType": "CONSUMABLE", "ext": {"ntAL80Sy": {}, "ZmEyWMX4": {}, "ZXnAI3vS": {}}, "features": ["VykYBB30", "ANZCpUBK", "PfwyBWCz"], "flexible": false, "images": [{"as": "kyalWcko", "caption": "wGbsceGA", "height": 18, "imageUrl": "mLgCVaaQ", "smallImageUrl": "rB3jgfJc", "width": 97}, {"as": "ITyKeNqB", "caption": "wGFyRvlO", "height": 1, "imageUrl": "fIw3EAW6", "smallImageUrl": "2sGFK5kb", "width": 98}, {"as": "voYe6Iny", "caption": "s8n7YddC", "height": 4, "imageUrl": "woOzcF8A", "smallImageUrl": "8LjtRNCD", "width": 50}], "inventoryConfig": {"customAttributes": {"vzua6Moz": {}, "kS6tAD3D": {}, "2Z1lSthj": {}}, "serverCustomAttributes": {"CchRC6Yf": {}, "UNdUlQeE": {}, "sN0h3NpT": {}}, "slotUsed": 50}, "itemIds": ["VGK79tIF", "T5ehpRIN", "kJhJBUJn"], "itemQty": {"xWzkGs9U": 52, "LQSaNs7X": 79, "5IBJpSWl": 69}, "itemType": "LOOTBOX", "listable": true, "localizations": {"RGmMREh9": {"description": "7yqk3eA2", "localExt": {"DbvRCRQB": {}, "Fn8Lxoqf": {}, "zDJylsDr": {}}, "longDescription": "Xgtvdzml", "title": "kGJWj4ij"}, "j3UECxF5": {"description": "MDp2UIUJ", "localExt": {"bsFZg0eH": {}, "oPUocVwe": {}, "8zSJv9QX": {}}, "longDescription": "L88ZV088", "title": "pcT75pfr"}, "xRRpHcyw": {"description": "Jh8xON3T", "localExt": {"MnDkt58G": {}, "lwYV3w24": {}, "3PHARtSl": {}}, "longDescription": "p4OEm0qe", "title": "NKYOVKK5"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 83, "duration": 89, "endDate": "1985-03-27T00:00:00Z", "itemId": "YOA3bzDB", "itemSku": "6PCXq13i", "itemType": "cEwLjGh9"}, {"count": 16, "duration": 50, "endDate": "1973-04-30T00:00:00Z", "itemId": "oJ6ueGmu", "itemSku": "MUL4B34I", "itemType": "LZdYYtrY"}, {"count": 64, "duration": 100, "endDate": "1981-08-21T00:00:00Z", "itemId": "7lx5KKPh", "itemSku": "JIGR4EhC", "itemType": "DYiBd0pL"}], "name": "bGj6Hric", "odds": 0.9928194250374245, "type": "REWARD", "weight": 33}, {"lootBoxItems": [{"count": 75, "duration": 64, "endDate": "1982-04-28T00:00:00Z", "itemId": "QHSSbW2X", "itemSku": "HyHx8KB0", "itemType": "faMki1nK"}, {"count": 83, "duration": 99, "endDate": "1978-04-03T00:00:00Z", "itemId": "7flbsNM4", "itemSku": "xYuyRkDE", "itemType": "ilqaCLg2"}, {"count": 91, "duration": 58, "endDate": "1994-05-30T00:00:00Z", "itemId": "ngAWbRWr", "itemSku": "OUBPU4OS", "itemType": "iFbHbruy"}], "name": "bBMgBN9y", "odds": 0.475046896178863, "type": "PROBABILITY_GROUP", "weight": 12}, {"lootBoxItems": [{"count": 88, "duration": 36, "endDate": "1996-08-30T00:00:00Z", "itemId": "TbEXjmbB", "itemSku": "k8P7zsHI", "itemType": "AFrSwcuV"}, {"count": 62, "duration": 58, "endDate": "1972-06-11T00:00:00Z", "itemId": "psYjeutg", "itemSku": "abOzI4j9", "itemType": "YFnmAal1"}, {"count": 43, "duration": 11, "endDate": "1991-09-30T00:00:00Z", "itemId": "bweLMipg", "itemSku": "mNK19h0i", "itemType": "suLo0EF9"}], "name": "gynrS2UZ", "odds": 0.5501666108762976, "type": "REWARD", "weight": 15}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 44, "name": "BjInZein", "optionBoxConfig": {"boxItems": [{"count": 71, "duration": 22, "endDate": "1972-12-24T00:00:00Z", "itemId": "lvxuMtAT", "itemSku": "d8eMOrL5", "itemType": "uDCzhJAA"}, {"count": 66, "duration": 0, "endDate": "1984-09-19T00:00:00Z", "itemId": "zHPwCMEp", "itemSku": "CJh60wys", "itemType": "oqtNUCj8"}, {"count": 12, "duration": 78, "endDate": "1974-03-03T00:00:00Z", "itemId": "wnQq6WlT", "itemSku": "hqLbaw8t", "itemType": "YWLgyayr"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 55, "fixedTrialCycles": 76, "graceDays": 19}, "regionData": {"MWFzuGV9": [{"currencyCode": "ZVYTUcn5", "currencyNamespace": "UIS6zZEw", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1992-07-17T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1995-07-09T00:00:00Z", "expireAt": "1998-09-12T00:00:00Z", "price": 80, "purchaseAt": "1978-09-11T00:00:00Z", "trialPrice": 45}, {"currencyCode": "7sWwKDyn", "currencyNamespace": "djqUeWml", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1976-11-04T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1986-12-17T00:00:00Z", "expireAt": "1991-11-15T00:00:00Z", "price": 36, "purchaseAt": "1986-12-17T00:00:00Z", "trialPrice": 5}, {"currencyCode": "9RhR4xok", "currencyNamespace": "DXJla4Xq", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1991-03-09T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1986-10-30T00:00:00Z", "expireAt": "1985-02-19T00:00:00Z", "price": 75, "purchaseAt": "1981-01-09T00:00:00Z", "trialPrice": 7}], "7lQdsLVS": [{"currencyCode": "hCeyT8gw", "currencyNamespace": "y1wHgdbu", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1989-09-20T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1993-07-10T00:00:00Z", "expireAt": "1986-09-01T00:00:00Z", "price": 70, "purchaseAt": "1977-10-17T00:00:00Z", "trialPrice": 79}, {"currencyCode": "AKFzF87s", "currencyNamespace": "Cr5EdFxj", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1984-07-06T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-10-17T00:00:00Z", "expireAt": "1992-10-12T00:00:00Z", "price": 60, "purchaseAt": "1998-02-03T00:00:00Z", "trialPrice": 13}, {"currencyCode": "hZ79G54h", "currencyNamespace": "OkWJHV7m", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1975-11-21T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1971-12-15T00:00:00Z", "expireAt": "1992-03-22T00:00:00Z", "price": 96, "purchaseAt": "1995-08-16T00:00:00Z", "trialPrice": 75}], "Cmq2AMb7": [{"currencyCode": "2Qr5Mqz8", "currencyNamespace": "S278cUER", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1995-11-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1990-05-30T00:00:00Z", "expireAt": "1991-04-11T00:00:00Z", "price": 86, "purchaseAt": "1981-06-19T00:00:00Z", "trialPrice": 42}, {"currencyCode": "ZQG7IZJO", "currencyNamespace": "TsrIOJGu", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1988-12-24T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1976-03-09T00:00:00Z", "expireAt": "1988-11-22T00:00:00Z", "price": 84, "purchaseAt": "1975-03-23T00:00:00Z", "trialPrice": 24}, {"currencyCode": "rxXAyzcY", "currencyNamespace": "waMagFJw", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1974-12-08T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1987-06-12T00:00:00Z", "expireAt": "1987-09-29T00:00:00Z", "price": 78, "purchaseAt": "1996-10-03T00:00:00Z", "trialPrice": 43}]}, "saleConfig": {"currencyCode": "gO3HsHmM", "price": 6}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "qnyfupRI", "stackable": false, "status": "INACTIVE", "tags": ["khrRioS1", "PVmILUL5", "k0j6H8Yd"], "targetCurrencyCode": "v2Khl6D1", "targetNamespace": "JjxqLX03", "thumbnailUrl": "HMbCruka", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItem' test.out

#- 125 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'nBPwtsoW' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'cjrwDo0w' \
    > test.out 2>&1
eval_tap $? 125 'DeleteItem' test.out

#- 126 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'S029pSME' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 97, "orderNo": "MdfobDdF"}' \
    > test.out 2>&1
eval_tap $? 126 'AcquireItem' test.out

#- 127 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'zg1bZdjF' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'CcgdxQMz' \
    > test.out 2>&1
eval_tap $? 127 'GetApp' test.out

#- 128 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'L04W0eKN' \
    --namespace $AB_NAMESPACE \
    --storeId 'DWJvLZGI' \
    --body '{"carousel": [{"alt": "HL6iUX78", "previewUrl": "D4wfpVPL", "thumbnailUrl": "DZ7KfpPi", "type": "video", "url": "qo6Oq966", "videoSource": "vimeo"}, {"alt": "InKpNG38", "previewUrl": "iUg1PcTo", "thumbnailUrl": "SFj2aEcj", "type": "image", "url": "oCYFdQhW", "videoSource": "generic"}, {"alt": "rcaUkWXi", "previewUrl": "Yxkwkw5R", "thumbnailUrl": "6B6nm9CW", "type": "image", "url": "8CPtRJve", "videoSource": "generic"}], "developer": "oRfW5aDJ", "forumUrl": "jwJ0bFpX", "genres": ["Sports", "Sports", "Racing"], "localizations": {"Gjmo4JOM": {"announcement": "IvdQ9921", "slogan": "PxU1HpNb"}, "cLmTy9Uh": {"announcement": "CSN1wSB1", "slogan": "JxaIzHgr"}, "KMFEVear": {"announcement": "I8AD5tMa", "slogan": "IQE9CONE"}}, "platformRequirements": {"V5gCUFmJ": [{"additionals": "wPalRUjw", "directXVersion": "HC2tgtGu", "diskSpace": "ROTEQR6G", "graphics": "hJCAnu0V", "label": "aPiaNEzO", "osVersion": "hqM3jHPW", "processor": "3yegquta", "ram": "SepWM9ds", "soundCard": "cSV0heE9"}, {"additionals": "3R74PdCR", "directXVersion": "9Lz6pNi7", "diskSpace": "3CiH2guh", "graphics": "8ZY3RoQy", "label": "OlDqSl9b", "osVersion": "hCqhNqJn", "processor": "lmZ9ZiGQ", "ram": "oHKWHRuv", "soundCard": "tADtAf9x"}, {"additionals": "qpyTS455", "directXVersion": "Qftv6jO0", "diskSpace": "Er5CIdyT", "graphics": "PK8wBv0e", "label": "umGQLtMJ", "osVersion": "MEYXfLeA", "processor": "cnWZcrbs", "ram": "3rwZ5z6X", "soundCard": "t7FtUFQM"}], "BaVKgueP": [{"additionals": "e5kjfpiQ", "directXVersion": "hzcEuesk", "diskSpace": "ZXkiOpvr", "graphics": "GTCijwMt", "label": "aFkfqx3s", "osVersion": "YxrjvNB6", "processor": "Sm31sOI5", "ram": "VexZNebe", "soundCard": "8T1eXNcv"}, {"additionals": "hpeho8HJ", "directXVersion": "DlXlSvrD", "diskSpace": "zm01IT80", "graphics": "hQq9qeST", "label": "LUIfUfax", "osVersion": "JbZ16Hez", "processor": "JJaDt1ma", "ram": "qOhTVtuZ", "soundCard": "YoNqNnMv"}, {"additionals": "lyIMUF9T", "directXVersion": "co9g76Rg", "diskSpace": "pPVi51Y6", "graphics": "cQxVYUjy", "label": "0BCJnAKN", "osVersion": "X8tJcXbA", "processor": "HDoPqs94", "ram": "658VLntn", "soundCard": "UkVm7Isi"}], "K1cxhwGA": [{"additionals": "QwJbf1MB", "directXVersion": "lrgYO3xl", "diskSpace": "UXw6kLSO", "graphics": "C31fhabt", "label": "mf4DCDUW", "osVersion": "HY2G7VwD", "processor": "Ut3Xgpl7", "ram": "UARwZTwh", "soundCard": "u0wqltYP"}, {"additionals": "xs2etifd", "directXVersion": "CaTnrvsl", "diskSpace": "23JIHtSS", "graphics": "d3c6YQjR", "label": "2ogOfogO", "osVersion": "ftEmsdIW", "processor": "bEbV7qVY", "ram": "eJKiEB5Q", "soundCard": "p2VJTaPY"}, {"additionals": "c8zJqqbh", "directXVersion": "vvWGyeSI", "diskSpace": "uUHGqMSW", "graphics": "WbwFTl8g", "label": "Jn75q8Jy", "osVersion": "hi44aBKf", "processor": "dklE11o9", "ram": "v3BTEbJq", "soundCard": "2l3QPUow"}]}, "platforms": ["Windows", "Android", "IOS"], "players": ["LocalCoop", "MMO", "CrossPlatformMulti"], "primaryGenre": "Casual", "publisher": "dSgtsBtz", "releaseDate": "1997-05-11T00:00:00Z", "websiteUrl": "iwBz53WG"}' \
    > test.out 2>&1
eval_tap $? 128 'UpdateApp' test.out

#- 129 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'Lr6kFEZ8' \
    --namespace $AB_NAMESPACE \
    --storeId '8LhaUxzq' \
    > test.out 2>&1
eval_tap $? 129 'DisableItem' test.out

#- 130 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'BE3mAE70' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'GetItemDynamicData' test.out

#- 131 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'BqmCoN1C' \
    --namespace $AB_NAMESPACE \
    --storeId 'h81I6Jxo' \
    > test.out 2>&1
eval_tap $? 131 'EnableItem' test.out

#- 132 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'nIAWLw0U' \
    --itemId 'WXBZF097' \
    --namespace $AB_NAMESPACE \
    --storeId '3C3tTumR' \
    > test.out 2>&1
eval_tap $? 132 'FeatureItem' test.out

#- 133 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'oC4MtKdi' \
    --itemId 'ZpXiWQGS' \
    --namespace $AB_NAMESPACE \
    --storeId 'bb6TIOWs' \
    > test.out 2>&1
eval_tap $? 133 'DefeatureItem' test.out

#- 134 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'qSEk6GgN' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '0sxac5Gg' \
    --populateBundle 'true' \
    --region 'h7VnHv6g' \
    --storeId '68bPOuxA' \
    > test.out 2>&1
eval_tap $? 134 'GetLocaleItem' test.out

#- 135 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'gyuk621V' \
    --namespace $AB_NAMESPACE \
    --storeId 'uYRVlib3' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 6, "code": "DmhLrxoN", "comparison": "isLessThanOrEqual", "name": "YTDMTbBz", "predicateType": "EntitlementPredicate", "value": "E6zsevsL", "values": ["lHsy9bS4", "iAWhEJaz", "8qPqV7D8"]}, {"anyOf": 7, "code": "nTWCGaCg", "comparison": "isNot", "name": "ZFV3Sztf", "predicateType": "SeasonTierPredicate", "value": "2QpKg7eb", "values": ["yWEZYwoc", "hpn7COWR", "x2apd9Ax"]}, {"anyOf": 34, "code": "HxMLpJ0H", "comparison": "isLessThan", "name": "gmm6aHNZ", "predicateType": "StatisticCodePredicate", "value": "aFXT0q7t", "values": ["qR8hY2Bw", "nu5EjgFG", "UL7QkM8p"]}]}, {"operator": "and", "predicates": [{"anyOf": 51, "code": "eVE4oMUJ", "comparison": "excludes", "name": "HX96Bl6O", "predicateType": "SeasonTierPredicate", "value": "DZHUCeEL", "values": ["fxy6WygX", "8uD5fB0Q", "wVM2u8bK"]}, {"anyOf": 22, "code": "A1uQY9qs", "comparison": "isLessThanOrEqual", "name": "ebC2Evj0", "predicateType": "StatisticCodePredicate", "value": "e9re8B4e", "values": ["bMpzLHl0", "3kgaEjl3", "muNiOhOh"]}, {"anyOf": 26, "code": "e6oFx81F", "comparison": "isLessThan", "name": "wRR4KgM8", "predicateType": "SeasonPassPredicate", "value": "BzhVKcKf", "values": ["KDULv0wU", "wG2xskqA", "vAwqNsso"]}]}, {"operator": "and", "predicates": [{"anyOf": 3, "code": "GfWcJRoX", "comparison": "excludes", "name": "27YzIcj6", "predicateType": "SeasonPassPredicate", "value": "BxFzRUbE", "values": ["fI0db4LZ", "plrr8xs3", "1qqILQLX"]}, {"anyOf": 6, "code": "OeZ9aCsN", "comparison": "isNot", "name": "10t1j7Qk", "predicateType": "SeasonTierPredicate", "value": "V71R5VOG", "values": ["tZ5znL9C", "YkFN4yUL", "ckZE2vFu"]}, {"anyOf": 4, "code": "0Z3MvDlP", "comparison": "isNot", "name": "hpyhvf5s", "predicateType": "StatisticCodePredicate", "value": "aI3rVhRi", "values": ["CAu8GMef", "AxsNyxbY", "7o29qOl8"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateItemPurchaseCondition' test.out

#- 136 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'N2xKMels' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "hmsaUVaZ"}' \
    > test.out 2>&1
eval_tap $? 136 'ReturnItem' test.out

#- 137 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --name 'RdAuVjZO' \
    --offset '25' \
    --tag 'REI8w2rx' \
    > test.out 2>&1
eval_tap $? 137 'QueryKeyGroups' test.out

#- 138 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "U7FeMInA", "name": "eVainSzB", "status": "INACTIVE", "tags": ["9ahgFToa", "fuK05NHz", "nbHO6CsS"]}' \
    > test.out 2>&1
eval_tap $? 138 'CreateKeyGroup' test.out

#- 139 GetKeyGroupByBoothName
eval_tap 0 139 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 140 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'YTBksnnc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetKeyGroup' test.out

#- 141 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'xmxh4E9z' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "X64fcBM0", "name": "a4a2qi5W", "status": "INACTIVE", "tags": ["m9xYKeUi", "Yos8HM4M", "CN6q7cUN"]}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateKeyGroup' test.out

#- 142 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'C8burMFS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetKeyGroupDynamic' test.out

#- 143 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'nMUWZpQ0' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '67' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 143 'ListKeys' test.out

#- 144 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'TTIUl6hr' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 144 'UploadKeys' test.out

#- 145 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'kVL6E1as' \
    --limit '21' \
    --offset '28' \
    --orderNos '["b1YC6hde", "l2iFFRoC", "LqF8of3S"]' \
    --sortBy 'IWoXQ9tM' \
    --startTime 'sAeCI5Cp' \
    --status 'REFUND_FAILED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 145 'QueryOrders' test.out

#- 146 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 146 'GetOrderStatistics' test.out

#- 147 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'oLZIyMXX' \
    > test.out 2>&1
eval_tap $? 147 'GetOrder' test.out

#- 148 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'z4T4VH3h' \
    --body '{"description": "7wySAlOR"}' \
    > test.out 2>&1
eval_tap $? 148 'RefundOrder' test.out

#- 149 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentCallbackConfig' test.out

#- 150 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "eN1SRHR2", "privateKey": "olCbM09u"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePaymentCallbackConfig' test.out

#- 151 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentMerchantConfig' test.out

#- 152 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["BzzuiSME", "gC1Cw5dL", "6rMPXmXb"]}' \
    > test.out 2>&1
eval_tap $? 152 'UpdatePaymentDomainWhitelistConfig' test.out

#- 153 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'wgvV6pxj' \
    --externalId 'cnqtvMmw' \
    --limit '34' \
    --notificationSource 'ALIPAY' \
    --notificationType 'NcTzA1Hs' \
    --offset '35' \
    --paymentOrderNo 'zoymrDxE' \
    --startDate 'xWwcXwd1' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 153 'QueryPaymentNotifications' test.out

#- 154 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'ED5QOxJE' \
    --limit '99' \
    --offset '11' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 154 'QueryPaymentOrders' test.out

#- 155 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "k2XZrALU", "currencyNamespace": "qnZq03Pw", "customParameters": {"5f0TO65W": {}, "GYb3b1Ic": {}, "zZOzZZoJ": {}}, "description": "Rs0k8Usy", "extOrderNo": "6su9Z8hx", "extUserId": "OTim1ffo", "itemType": "SUBSCRIPTION", "language": "FJ-KK", "metadata": {"pOSY2sh7": "BwDidGQS", "yhSrfXbX": "HnkubN8M", "Yin0Eb4b": "wK05eCYA"}, "notifyUrl": "aOYgrfWh", "omitNotification": false, "platform": "Iby52DIv", "price": 15, "recurringPaymentOrderNo": "MWWnWxRg", "region": "6YapTVcK", "returnUrl": "6X9Vrctf", "sandbox": true, "sku": "f98taeor", "subscriptionId": "mkN8eurG", "targetNamespace": "K5IZ0hSg", "targetUserId": "tZgflVSq", "title": "Z322pdIL"}' \
    > test.out 2>&1
eval_tap $? 155 'CreatePaymentOrderByDedicated' test.out

#- 156 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'dlzY2m85' \
    > test.out 2>&1
eval_tap $? 156 'ListExtOrderNoByExtTxId' test.out

#- 157 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'R0GoLLzM' \
    > test.out 2>&1
eval_tap $? 157 'GetPaymentOrder' test.out

#- 158 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cOFxMpub' \
    --body '{"extTxId": "DFqatKGq", "paymentMethod": "aDQX9RcT", "paymentProvider": "NEONPAY"}' \
    > test.out 2>&1
eval_tap $? 158 'ChargePaymentOrder' test.out

#- 159 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'o5XqfTFy' \
    --body '{"description": "4OE6QIAB"}' \
    > test.out 2>&1
eval_tap $? 159 'RefundPaymentOrderByDedicated' test.out

#- 160 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HKPOTLvZ' \
    --body '{"amount": 96, "currencyCode": "e4WajcC5", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 63, "vat": 45}' \
    > test.out 2>&1
eval_tap $? 160 'SimulatePaymentOrderNotification' test.out

#- 161 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4iIWzE7X' \
    > test.out 2>&1
eval_tap $? 161 'GetPaymentOrderChargeStatus' test.out

#- 162 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'dCOK2pE3' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "dVqIkyP1", "serviceLabel": 66}' \
    > test.out 2>&1
eval_tap $? 162 'GetPsnEntitlementOwnership' test.out

#- 163 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'CGxwpcTH' \
    --body '{"delegationToken": "60RRUG8u", "sandboxId": "qAMyXzCH"}' \
    > test.out 2>&1
eval_tap $? 163 'GetXboxEntitlementOwnership' test.out

#- 164 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 164 'GetPlatformEntitlementConfig' test.out

#- 165 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedPlatformOrigins": ["Twitch", "GooglePlay", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePlatformEntitlementConfig' test.out

#- 166 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 166 'GetPlatformWalletConfig' test.out

#- 167 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Nintendo", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 167 'UpdatePlatformWalletConfig' test.out

#- 168 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 168 'ResetPlatformWalletConfig' test.out

#- 169 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 169 'GetRevocationConfig' test.out

#- 170 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateRevocationConfig' test.out

#- 171 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'DeleteRevocationConfig' test.out

#- 172 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'kpC4GKPC' \
    --limit '47' \
    --offset '100' \
    --source 'OTHER' \
    --startTime 'lgiKodzU' \
    --status 'SUCCESS' \
    --transactionId 'PZ96VXe0' \
    --userId 'diLfoV8o' \
    > test.out 2>&1
eval_tap $? 172 'QueryRevocationHistories' test.out

#- 173 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 173 'GetRevocationPluginConfig' test.out

#- 174 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "iwyalpt7"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "AsUj8nSn"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateRevocationPluginConfig' test.out

#- 175 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 175 'DeleteRevocationPluginConfig' test.out

#- 176 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 176 'UploadRevocationPluginConfigCert' test.out

#- 177 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FIeqNA4X", "eventTopic": "nwYi5gkl", "maxAwarded": 76, "maxAwardedPerUser": 59, "namespaceExpression": "AjwLvmDr", "rewardCode": "t9DHhxCX", "rewardConditions": [{"condition": "BK8Nr4aw", "conditionName": "b34JMSJB", "eventName": "fTWm1UFR", "rewardItems": [{"duration": 54, "endDate": "1990-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Xc26WK2E", "quantity": 84, "sku": "blZMxtG7"}, {"duration": 87, "endDate": "1979-09-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SGmFZvI7", "quantity": 92, "sku": "IY9RD2cs"}, {"duration": 30, "endDate": "1984-05-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "S6qNiX3N", "quantity": 89, "sku": "ZKXu4J05"}]}, {"condition": "AEr1OtGk", "conditionName": "A9BfhSQW", "eventName": "fpZDE6Pf", "rewardItems": [{"duration": 95, "endDate": "1982-05-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wClTyDRL", "quantity": 37, "sku": "Mh3Nzfpw"}, {"duration": 35, "endDate": "1977-10-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PvapliDy", "quantity": 74, "sku": "Z9EYS8Hk"}, {"duration": 40, "endDate": "1997-08-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "J2hACpz5", "quantity": 19, "sku": "lJTqrVeg"}]}, {"condition": "ETsShskV", "conditionName": "OMtERG1l", "eventName": "wk8UjGtv", "rewardItems": [{"duration": 88, "endDate": "1971-05-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZzevqCfm", "quantity": 59, "sku": "qaQoSUqj"}, {"duration": 71, "endDate": "1976-04-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LYWomlsH", "quantity": 24, "sku": "533IknBU"}, {"duration": 24, "endDate": "1985-01-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cP6G31kp", "quantity": 17, "sku": "aSF5Vzzp"}]}], "userIdExpression": "gmBFldT4"}' \
    > test.out 2>&1
eval_tap $? 177 'CreateReward' test.out

#- 178 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'cxLoqI70' \
    --limit '97' \
    --offset '85' \
    --sortBy '["namespace", "rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 178 'QueryRewards' test.out

#- 179 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'ExportRewards' test.out

#- 180 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 180 'ImportRewards' test.out

#- 181 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'uRJTvb6U' \
    > test.out 2>&1
eval_tap $? 181 'GetReward' test.out

#- 182 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '2TqAQHe4' \
    --body '{"description": "eymCZCMD", "eventTopic": "ziTWXmuk", "maxAwarded": 64, "maxAwardedPerUser": 100, "namespaceExpression": "oQkJL8F6", "rewardCode": "OzgC99Ew", "rewardConditions": [{"condition": "LmvA4yno", "conditionName": "B5GQWx0d", "eventName": "eBtIjCVF", "rewardItems": [{"duration": 16, "endDate": "1994-04-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KDQs8gws", "quantity": 10, "sku": "O8nBhb5q"}, {"duration": 43, "endDate": "1989-10-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dOfJ7ooc", "quantity": 70, "sku": "NmwIWybh"}, {"duration": 21, "endDate": "1984-05-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zQWqlq1X", "quantity": 85, "sku": "H7BVvyhs"}]}, {"condition": "5BCvQiB3", "conditionName": "eiQhblIb", "eventName": "f3DIGwCy", "rewardItems": [{"duration": 40, "endDate": "1997-06-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0uLHJvAd", "quantity": 22, "sku": "j3A8TvRP"}, {"duration": 23, "endDate": "1988-08-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RkcHqYbY", "quantity": 20, "sku": "N6Bq9dR1"}, {"duration": 65, "endDate": "1971-01-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "39DVMVq8", "quantity": 38, "sku": "TV8hs6eD"}]}, {"condition": "5EbfHLtv", "conditionName": "z9U5736b", "eventName": "wT76UGMJ", "rewardItems": [{"duration": 19, "endDate": "1979-10-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uLpnPXad", "quantity": 9, "sku": "UCZD8REW"}, {"duration": 71, "endDate": "1971-02-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nazUIj4L", "quantity": 31, "sku": "nIqHh0m2"}, {"duration": 32, "endDate": "1989-03-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JTEK9D36", "quantity": 0, "sku": "OBiHzjB3"}]}], "userIdExpression": "NNvoaDfQ"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateReward' test.out

#- 183 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '5MXBx7Py' \
    > test.out 2>&1
eval_tap $? 183 'DeleteReward' test.out

#- 184 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '1bC85qVF' \
    --body '{"payload": {"eAPSDcba": {}, "QBgClXt8": {}, "gaUOebuq": {}}}' \
    > test.out 2>&1
eval_tap $? 184 'CheckEventCondition' test.out

#- 185 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'oXaDmgHf' \
    --body '{"conditionName": "o27Ixnyz", "userId": "lyclDaea"}' \
    > test.out 2>&1
eval_tap $? 185 'DeleteRewardConditionRecord' test.out

#- 186 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'GfFLsVcs' \
    --limit '52' \
    --offset '87' \
    --start 'XWYdbss0' \
    --storeId 'v7DN4fmA' \
    --viewId 'EctPfWjL' \
    > test.out 2>&1
eval_tap $? 186 'QuerySections' test.out

#- 187 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '3v4kLcD3' \
    --body '{"active": true, "displayOrder": 66, "endDate": "1981-04-28T00:00:00Z", "ext": {"G07dmYNd": {}, "BiasNOxu": {}, "3zDTqbKj": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 46, "itemCount": 19, "rule": "SEQUENCE"}, "items": [{"id": "bQTUoaBy", "sku": "irkxpPkZ"}, {"id": "z7kHI5P5", "sku": "j6otVapW"}, {"id": "OObgpts8", "sku": "pGgk9ZjM"}], "localizations": {"Gd68JMAS": {"description": "k5z3EwOh", "localExt": {"IehIkqo1": {}, "aTe4LYuN": {}, "ZNgc7Y7g": {}}, "longDescription": "dqyJJXm8", "title": "U9BgKZig"}, "Yu3p82jS": {"description": "OPVInpfF", "localExt": {"kb5meAee": {}, "bLQRPgyG": {}, "X1uPDnIl": {}}, "longDescription": "zosg5Pd0", "title": "KIwkDPQf"}, "LfgWpBOT": {"description": "nh3LgTNe", "localExt": {"2B5cQE7R": {}, "hVQchtOt": {}, "SRTzUAMa": {}}, "longDescription": "eODkosB3", "title": "AfS4H5nv"}}, "name": "UilF3IJl", "rotationType": "NONE", "startDate": "1973-03-04T00:00:00Z", "viewId": "jFeyksCd"}' \
    > test.out 2>&1
eval_tap $? 187 'CreateSection' test.out

#- 188 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'l9ReIzyr' \
    > test.out 2>&1
eval_tap $? 188 'PurgeExpiredSection' test.out

#- 189 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'HrcFYaVE' \
    --storeId 'VIt86Zp1' \
    > test.out 2>&1
eval_tap $? 189 'GetSection' test.out

#- 190 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'yWx1alF3' \
    --storeId 'PMd4c6Jf' \
    --body '{"active": false, "displayOrder": 32, "endDate": "1996-11-05T00:00:00Z", "ext": {"XflarxBM": {}, "v2kIySpv": {}, "o0HwMP3h": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 58, "itemCount": 44, "rule": "SEQUENCE"}, "items": [{"id": "SmNwlqRh", "sku": "XZoNobFk"}, {"id": "BXttrIsk", "sku": "YYUbFBq9"}, {"id": "r4TFCMBa", "sku": "ozHEreVH"}], "localizations": {"vPgL2dT0": {"description": "gH829Qyg", "localExt": {"LdaYTFqP": {}, "66fhefCb": {}, "wMgnxIzH": {}}, "longDescription": "pyUBUmqX", "title": "iRamUqfm"}, "NskoS5Da": {"description": "r1GYXXE5", "localExt": {"rYAA1cu3": {}, "VSjjTPiQ": {}, "PwSx1jNf": {}}, "longDescription": "g56MwHk1", "title": "6BG7pnah"}, "eroxQkZW": {"description": "P6hgnuY6", "localExt": {"78EW0y0f": {}, "4Y0kCIJ1": {}, "txPED2VO": {}}, "longDescription": "iN6UDBDk", "title": "VLKRqG3T"}}, "name": "QkNKnleX", "rotationType": "CUSTOM", "startDate": "1971-10-13T00:00:00Z", "viewId": "nnoUD371"}' \
    > test.out 2>&1
eval_tap $? 190 'UpdateSection' test.out

#- 191 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'pecfky4f' \
    --storeId 'l3liHHT7' \
    > test.out 2>&1
eval_tap $? 191 'DeleteSection' test.out

#- 192 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'ListStores' test.out

#- 193 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "iARTE8Oy", "defaultRegion": "h9yxc4yM", "description": "gKQITe2D", "supportedLanguages": ["klo0OFx3", "9CM4IUks", "0EZjzoh8"], "supportedRegions": ["6BfAU4Fm", "tegwoBtZ", "Bkqfu9RG"], "title": "C8oOP7o6"}' \
    > test.out 2>&1
eval_tap $? 193 'CreateStore' test.out

#- 194 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 194 'GetCatalogDefinition' test.out

#- 195 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 195 'DownloadCSVTemplates' test.out

#- 196 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["r5cbbKhW", "EX9SzqQI", "scX7pGSO"], "idsToBeExported": ["vud1q3EZ", "PonUV0PZ", "Vn0YVHgr"], "storeId": "9kenLRyc"}' \
    > test.out 2>&1
eval_tap $? 196 'ExportStoreByCSV' test.out

#- 197 ImportStore
eval_tap 0 197 'ImportStore # SKIP deprecated' test.out

#- 198 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 198 'GetPublishedStore' test.out

#- 199 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'DeletePublishedStore' test.out

#- 200 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'GetPublishedStoreBackup' test.out

#- 201 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 201 'RollbackPublishedStore' test.out

#- 202 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'EjcFJDrv' \
    > test.out 2>&1
eval_tap $? 202 'GetStore' test.out

#- 203 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '2aht74op' \
    --body '{"defaultLanguage": "ws26J7py", "defaultRegion": "ACo6ErtO", "description": "IhRbtclz", "supportedLanguages": ["MICkLtyK", "8J757BJb", "Byjku77u"], "supportedRegions": ["C2NxdFur", "8KQaW1O2", "Y3yDvui8"], "title": "thgveMOz"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateStore' test.out

#- 204 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Ce3MG1lM' \
    > test.out 2>&1
eval_tap $? 204 'DeleteStore' test.out

#- 205 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '5HOf2D1l' \
    --action 'DELETE' \
    --itemSku 'zdyCNqYo' \
    --itemType 'BUNDLE' \
    --limit '68' \
    --offset '30' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "updatedAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd '2JKgZA7T' \
    --updatedAtStart 'fFBVlnSk' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 205 'QueryChanges' test.out

#- 206 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'TkyToNUW' \
    > test.out 2>&1
eval_tap $? 206 'PublishAll' test.out

#- 207 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'aAxEsBa9' \
    > test.out 2>&1
eval_tap $? 207 'PublishSelected' test.out

#- 208 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'yWyMOifZ' \
    > test.out 2>&1
eval_tap $? 208 'SelectAllRecords' test.out

#- 209 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'NDyu1spE' \
    --action 'UPDATE' \
    --itemSku 'AEPMj8ZK' \
    --itemType 'BUNDLE' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd 'Ebls3OwG' \
    --updatedAtStart 'reIjrYKj' \
    > test.out 2>&1
eval_tap $? 209 'SelectAllRecordsByCriteria' test.out

#- 210 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'QSGvuzy7' \
    --action 'UPDATE' \
    --itemSku 'i0IsYds1' \
    --itemType 'CODE' \
    --type 'SECTION' \
    --updatedAtEnd 'fdEUzPqi' \
    --updatedAtStart 'LgSSZ6Gf' \
    > test.out 2>&1
eval_tap $? 210 'GetStatistic' test.out

#- 211 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '5mOxeT8k' \
    > test.out 2>&1
eval_tap $? 211 'UnselectAllRecords' test.out

#- 212 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'QRWeG1DC' \
    --namespace $AB_NAMESPACE \
    --storeId '5ZtkmjSi' \
    > test.out 2>&1
eval_tap $? 212 'SelectRecord' test.out

#- 213 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'UU2QpTxu' \
    --namespace $AB_NAMESPACE \
    --storeId '2RWq2tvf' \
    > test.out 2>&1
eval_tap $? 213 'UnselectRecord' test.out

#- 214 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'lZn8QwAq' \
    --targetStoreId 'mTpfPTz8' \
    > test.out 2>&1
eval_tap $? 214 'CloneStore' test.out

#- 215 ExportStore
eval_tap 0 215 'ExportStore # SKIP deprecated' test.out

#- 216 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'gn4arjrt' \
    --end 'DlWZVUgY' \
    --limit '19' \
    --offset '69' \
    --sortBy 'qUbjRFIk' \
    --start 'oG7S8ULK' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 216 'QueryImportHistory' test.out

#- 217 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Bt6ePtEr' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '0jgbSKV0' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 217 'ImportStoreByCSV' test.out

#- 218 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'SXMAS71T' \
    --limit '1' \
    --offset '19' \
    --sku 'EHn8cAN9' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId '0niQZS7g' \
    > test.out 2>&1
eval_tap $? 218 'QuerySubscriptions' test.out

#- 219 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NPteE08h' \
    > test.out 2>&1
eval_tap $? 219 'RecurringChargeSubscription' test.out

#- 220 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'b4WAAc4s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 220 'GetTicketDynamic' test.out

#- 221 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'RMJFXIz4' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "VQJDkynq"}' \
    > test.out 2>&1
eval_tap $? 221 'DecreaseTicketSale' test.out

#- 222 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '4xbojGCS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 222 'GetTicketBoothID' test.out

#- 223 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'DCSmKbvU' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 84, "orderNo": "0TRav8bR"}' \
    > test.out 2>&1
eval_tap $? 223 'IncreaseTicketSale' test.out

#- 224 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 30, "currencyCode": "HiQrmhb9", "expireAt": "1999-09-15T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "EZJUFx71", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "qDemnuIO", "entitlementOrigin": "Oculus", "itemIdentity": "Ps4xxNEk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "CcdRsmcM"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 13, "currencyCode": "Og4diF9U", "expireAt": "1983-12-03T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "l3lpGA5N", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "6iseYBZ6", "entitlementOrigin": "Epic", "itemIdentity": "ZQLdGFpE", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "32VO0hPJ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 52, "currencyCode": "P4immqrj", "expireAt": "1995-06-19T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "TTYoPNEx", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 45, "entitlementCollectionId": "pvW7IgqL", "entitlementOrigin": "Xbox", "itemIdentity": "IRuNPhaL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "8yTmCLDX"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "d1I1C8Vw"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 95, "currencyCode": "A3AXq8c9", "expireAt": "1983-10-07T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "ARV7SsDK", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "DjmKH0Rb", "entitlementOrigin": "Other", "itemIdentity": "hUMRMIkg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "hJXQL5wU"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 50, "currencyCode": "bJS5F1qJ", "expireAt": "1971-07-29T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "FAE2UEAr", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "DhyJ0kad", "entitlementOrigin": "Steam", "itemIdentity": "hYA7Ky6b", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "MaVpOgxW"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 85, "currencyCode": "FNy0G1LR", "expireAt": "1981-12-12T00:00:00Z"}, "debitPayload": {"count": 5, "currencyCode": "r6s5GOEq", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "5broXeKy", "entitlementOrigin": "Playstation", "itemIdentity": "PHssjhsY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "ojrLZTkY"}, "type": "CREDIT_WALLET"}], "userId": "gNa4VmV5"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 43, "currencyCode": "DeZxK3ZQ", "expireAt": "1992-01-21T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "S9F6i04l", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 37, "entitlementCollectionId": "UhCSrs0r", "entitlementOrigin": "Steam", "itemIdentity": "g6sctQrX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "iEVtuWf3"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 99, "currencyCode": "SYKdTk83", "expireAt": "1983-01-13T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "u0OQU93y", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 82, "entitlementCollectionId": "Uhb3Yt5L", "entitlementOrigin": "Nintendo", "itemIdentity": "iPCJl33s", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "5HVnaAqq"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 88, "currencyCode": "1ece1m5b", "expireAt": "1973-12-15T00:00:00Z"}, "debitPayload": {"count": 1, "currencyCode": "UfBjtj06", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "OinEaZ00", "entitlementOrigin": "Other", "itemIdentity": "NuvbfkEJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "wx74wxlm"}, "type": "DEBIT_WALLET"}], "userId": "DlkkV95G"}], "metadata": {"tfScnDEv": {}, "BQkRSVeY": {}, "4ncgLVZK": {}}, "needPreCheck": true, "transactionId": "GqAYqQeA", "type": "9gi9ibZD"}' \
    > test.out 2>&1
eval_tap $? 224 'Commit' test.out

#- 225 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '24' \
    --status 'INIT' \
    --type 'FjoYHbO8' \
    --userId 'DQeXh1kT' \
    > test.out 2>&1
eval_tap $? 225 'GetTradeHistoryByCriteria' test.out

#- 226 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'D2009HrU' \
    > test.out 2>&1
eval_tap $? 226 'GetTradeHistoryByTransactionId' test.out

#- 227 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'l77yJ25y' \
    --body '{"achievements": [{"id": "4LCdsADR", "value": 79}, {"id": "yyDw0xgM", "value": 56}, {"id": "RKhu8KbE", "value": 45}], "steamUserId": "O0gK2Y9k"}' \
    > test.out 2>&1
eval_tap $? 227 'UnlockSteamUserAchievement' test.out

#- 228 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ezPVv8yf' \
    --xboxUserId 'wSrJ1imY' \
    > test.out 2>&1
eval_tap $? 228 'GetXblUserAchievements' test.out

#- 229 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'pSwX05Ex' \
    --body '{"achievements": [{"id": "qXSBG7jz", "percentComplete": 27}, {"id": "KFGUvkS6", "percentComplete": 41}, {"id": "7tsOLGtF", "percentComplete": 98}], "serviceConfigId": "uS8X7Ea0", "titleId": "GcyYM7Qi", "xboxUserId": "x2RZwV1e"}' \
    > test.out 2>&1
eval_tap $? 229 'UpdateXblUserAchievement' test.out

#- 230 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'aXsvPOOH' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeCampaign' test.out

#- 231 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hfbkkfOU' \
    > test.out 2>&1
eval_tap $? 231 'AnonymizeEntitlement' test.out

#- 232 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Skbzk0EB' \
    > test.out 2>&1
eval_tap $? 232 'AnonymizeFulfillment' test.out

#- 233 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'kvZ58emx' \
    > test.out 2>&1
eval_tap $? 233 'AnonymizeIntegration' test.out

#- 234 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '4lgYcRtW' \
    > test.out 2>&1
eval_tap $? 234 'AnonymizeOrder' test.out

#- 235 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '11OXWtRw' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizePayment' test.out

#- 236 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '52mrgQnp' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeRevocation' test.out

#- 237 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jYadLWpo' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeSubscription' test.out

#- 238 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'Kdp9YgG3' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeWallet' test.out

#- 239 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'yyIZqeic' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 239 'GetUserDLCByPlatform' test.out

#- 240 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'WciksXwx' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 240 'GetUserDLC' test.out

#- 241 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LYe4F1qa' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId 'g5dFc3Ec' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'dJVYJcen' \
    --features '["dNvJy5Np", "vBZUd8Oa", "w5yWWJ7r"]' \
    --fuzzyMatchName 'false' \
    --itemId '["pgM3Kur7", "0VG5w4pb", "9mc7Cxgh"]' \
    --limit '25' \
    --offset '10' \
    --origin 'Steam' \
    > test.out 2>&1
eval_tap $? 241 'QueryUserEntitlements' test.out

#- 242 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'RL7SRk1F' \
    --body '[{"collectionId": "uwdIohJJ", "endDate": "1987-05-03T00:00:00Z", "grantedCode": "MGRzt5CO", "itemId": "snbNi3me", "itemNamespace": "z0ALA1g8", "language": "LdI-LVFZ_084", "metadata": {"dFTXCeQa": {}, "kuc5uwKR": {}, "38gZzosU": {}}, "origin": "Twitch", "quantity": 17, "region": "5ZDrB97E", "source": "IAP", "startDate": "1995-05-22T00:00:00Z", "storeId": "hAGomsT6"}, {"collectionId": "S8uzV3LS", "endDate": "1989-07-19T00:00:00Z", "grantedCode": "s0nbs5Mf", "itemId": "8H7yisgr", "itemNamespace": "BFeQ9JEn", "language": "dXaH-EV", "metadata": {"J9HIc5RX": {}, "yz7KuFmB": {}, "rjga4tiO": {}}, "origin": "System", "quantity": 68, "region": "8pYOflrz", "source": "OTHER", "startDate": "1989-05-30T00:00:00Z", "storeId": "ckeXHX9P"}, {"collectionId": "gc4tUUak", "endDate": "1986-02-19T00:00:00Z", "grantedCode": "yuIPKyhI", "itemId": "aEWzIzrt", "itemNamespace": "CbQhR4x7", "language": "gU_UjFQ_ov", "metadata": {"tmIdMT3N": {}, "cIdNCBPl": {}, "IJGIdtb7": {}}, "origin": "IOS", "quantity": 8, "region": "K0ixIJce", "source": "PROMOTION", "startDate": "1976-07-26T00:00:00Z", "storeId": "0ItUFEHQ"}]' \
    > test.out 2>&1
eval_tap $? 242 'GrantUserEntitlement' test.out

#- 243 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Y861P5Gc' \
    --activeOnly 'false' \
    --appId 'ZP5Te7DC' \
    > test.out 2>&1
eval_tap $? 243 'GetUserAppEntitlementByAppId' test.out

#- 244 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'eXT1w4fH' \
    --activeOnly 'true' \
    --limit '75' \
    --offset '25' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserEntitlementsByAppType' test.out

#- 245 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'e4DpyXj0' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'lMNV2zQJ' \
    --itemId 'd4uJl9jD' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementByItemId' test.out

#- 246 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'akiEcHxD' \
    --ids '["fakD0E3x", "R99GAkQb", "unaLGxt0"]' \
    --platform '6shKMhkx' \
    > test.out 2>&1
eval_tap $? 246 'GetUserActiveEntitlementsByItemIds' test.out

#- 247 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'WoKQjsm0' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --platform '7rH08PpL' \
    --sku 'tWzYD32L' \
    > test.out 2>&1
eval_tap $? 247 'GetUserEntitlementBySku' test.out

#- 248 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ybuw9hOs' \
    --appIds '["KSTG1bcZ", "YKgp3HEE", "40A8KHWQ"]' \
    --itemIds '["X44I3nAX", "AacAOR7i", "me6v0DFd"]' \
    --platform 'iTPIrBj9' \
    --skus '["CHJfcbxA", "5oDeutAC", "gJPyfzDO"]' \
    > test.out 2>&1
eval_tap $? 248 'ExistsAnyUserActiveEntitlement' test.out

#- 249 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'MeVBFnRX' \
    --platform 'KebBcFff' \
    --itemIds '["PD2esT8O", "YpACIuct", "XUGAjCmp"]' \
    > test.out 2>&1
eval_tap $? 249 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 250 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'fHHqf0Eq' \
    --appId 'GGwQxfwC' \
    > test.out 2>&1
eval_tap $? 250 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 251 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rqWKuyuu' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'hc4Y6QF4' \
    --itemId 'y7BfEiAS' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementOwnershipByItemId' test.out

#- 252 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9pd0BPI5' \
    --ids '["bnSsLpqT", "AfOIA3De", "2stBCDYL"]' \
    --platform '2chUUxPE' \
    > test.out 2>&1
eval_tap $? 252 'GetUserEntitlementOwnershipByItemIds' test.out

#- 253 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'NIZy3DQo' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '6y8E9ljw' \
    --sku 'pPWjI9Ad' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementOwnershipBySku' test.out

#- 254 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9IkmPzeV' \
    > test.out 2>&1
eval_tap $? 254 'RevokeAllEntitlements' test.out

#- 255 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '3sXGYeBC' \
    --entitlementIds 'FbWaxXoW' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlements' test.out

#- 256 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'hxc0Ktnz' \
    --namespace $AB_NAMESPACE \
    --userId 'CwwTOlOj' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlement' test.out

#- 257 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Iz2xp5BW' \
    --namespace $AB_NAMESPACE \
    --userId 'D3md7HBi' \
    --body '{"collectionId": "pJkFgDyS", "endDate": "1974-07-21T00:00:00Z", "nullFieldList": ["kXN20sE8", "fFa4vNnr", "Hn652QpK"], "origin": "Steam", "reason": "V6mLIhy7", "startDate": "1972-07-13T00:00:00Z", "status": "REVOKED", "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 257 'UpdateUserEntitlement' test.out

#- 258 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '9ZbUJAcQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Y9vIwtkm' \
    --body '{"metadata": {"KbvVYvwu": {}, "lOi0u9Sw": {}, "lQILMN16": {}}, "options": ["7vwjva9h", "XEAdDLg5", "5Cz14RYe"], "platform": "vsAADc7M", "requestId": "PVBuWhxO", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 258 'ConsumeUserEntitlement' test.out

#- 259 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'Msolsy3i' \
    --namespace $AB_NAMESPACE \
    --userId 'YVQoLyxS' \
    > test.out 2>&1
eval_tap $? 259 'DisableUserEntitlement' test.out

#- 260 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'BprmsChm' \
    --namespace $AB_NAMESPACE \
    --userId 'VpBPtgtF' \
    > test.out 2>&1
eval_tap $? 260 'EnableUserEntitlement' test.out

#- 261 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'iGTm8X7N' \
    --namespace $AB_NAMESPACE \
    --userId 'paGcWnBt' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementHistories' test.out

#- 262 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'QA4wLPFY' \
    --namespace $AB_NAMESPACE \
    --userId 'h1Je78GU' \
    --body '{"metadata": {"EjkDMkLi": {}, "vCT4Ehpf": {}, "sWAxxw9U": {}}}' \
    > test.out 2>&1
eval_tap $? 262 'RevokeUserEntitlement' test.out

#- 263 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '5TzCuZPy' \
    --namespace $AB_NAMESPACE \
    --userId 'GMPUdPA1' \
    --body '{"reason": "PT7mIO2s", "useCount": 66}' \
    > test.out 2>&1
eval_tap $? 263 'RevokeUserEntitlementByUseCount' test.out

#- 264 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId '5yYPTT77' \
    --namespace $AB_NAMESPACE \
    --userId 'CSI0w7cV' \
    --quantity '90' \
    > test.out 2>&1
eval_tap $? 264 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 265 RevokeUseCount
eval_tap 0 265 'RevokeUseCount # SKIP deprecated' test.out

#- 266 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'DQ5TXxdo' \
    --namespace $AB_NAMESPACE \
    --userId 'GNQJnWYj' \
    --body '{"platform": "4g1zUXy1", "requestId": "V5bpcbOQ", "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 266 'SellUserEntitlement' test.out

#- 267 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'QuBPhrtw' \
    --body '{"duration": 5, "endDate": "1985-04-15T00:00:00Z", "entitlementCollectionId": "dtopIo4V", "entitlementOrigin": "Steam", "itemId": "27qp0b9h", "itemSku": "mSyvl9Vw", "language": "BVtWKuVd", "metadata": {"ywmEup0F": {}, "x53N73KL": {}, "BIt8nKLi": {}}, "order": {"currency": {"currencyCode": "WTi3IVkn", "currencySymbol": "0WI03KpJ", "currencyType": "REAL", "decimals": 63, "namespace": "hLTsLlCe"}, "ext": {"vhu4ga2E": {}, "8W8RSeR8": {}, "005QAvuF": {}}, "free": false}, "orderNo": "1s7GxoMN", "origin": "Oculus", "overrideBundleItemQty": {"PD8z9Qyc": 64, "NwPeU7Vn": 23, "VLOP1Yzh": 72}, "quantity": 67, "region": "Em9kcQoQ", "source": "PROMOTION", "startDate": "1980-08-17T00:00:00Z", "storeId": "hoK8hkHX"}' \
    > test.out 2>&1
eval_tap $? 267 'FulfillItem' test.out

#- 268 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'aWKH69JR' \
    --body '{"code": "gcbpK7Mv", "language": "RBLI_bCUx_gU", "region": "LGc8VIae"}' \
    > test.out 2>&1
eval_tap $? 268 'RedeemCode' test.out

#- 269 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '0UPsARGo' \
    --body '{"itemId": "qTfOiJ4G", "itemSku": "y2SA2Sp5", "quantity": 29}' \
    > test.out 2>&1
eval_tap $? 269 'PreCheckFulfillItem' test.out

#- 270 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'R8yzz3C6' \
    --body '{"entitlementCollectionId": "1XoziFRt", "entitlementOrigin": "Oculus", "metadata": {"UjMIAcsC": {}, "h2wZ747C": {}, "l5LGvSTR": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "616MzpAU", "namespace": "Lr51H7cc"}, "item": {"itemId": "Km7NmUls", "itemName": "zV80jRJc", "itemSku": "PCibu28r", "itemType": "VMsP7smj"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "39D66vXd", "namespace": "cdStdtaD"}, "item": {"itemId": "l67QEfTG", "itemName": "3n7NstN7", "itemSku": "L8G2QPO6", "itemType": "B4BrkOQ6"}, "quantity": 22, "type": "ITEM"}, {"currency": {"currencyCode": "iRQsQ9Oz", "namespace": "p8EAkDs6"}, "item": {"itemId": "FKYB2Htg", "itemName": "Hu7YFVLn", "itemSku": "YC3nKZPt", "itemType": "v2xUD2t0"}, "quantity": 92, "type": "ITEM"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "Jp9QSolm"}' \
    > test.out 2>&1
eval_tap $? 270 'FulfillRewards' test.out

#- 271 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xsfA04w3' \
    --endTime 'DLBV9w51' \
    --limit '17' \
    --offset '60' \
    --productId 'ZO5jfayl' \
    --startTime 'Ldv0joU3' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 271 'QueryUserIAPOrders' test.out

#- 272 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mRuImahP' \
    > test.out 2>&1
eval_tap $? 272 'QueryAllUserIAPOrders' test.out

#- 273 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'lXuGm9Pk' \
    --endTime '3SuFJjiJ' \
    --limit '58' \
    --offset '92' \
    --startTime 'KDCIpSuH' \
    --status 'PENDING' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserIAPConsumeHistory' test.out

#- 274 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'CFaOwudp' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "dc_OEit-ND", "productId": "8FfUKbci", "region": "Cs4V44gf", "transactionId": "Q4LzKL9E", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 274 'MockFulfillIAPItem' test.out

#- 275 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wbAS2Zdc' \
    --discounted 'false' \
    --itemId 'WbTQlnCm' \
    --limit '22' \
    --offset '3' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 275 'QueryUserOrders' test.out

#- 276 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '63fZRkIC' \
    --body '{"currencyCode": "Frp1wSCi", "currencyNamespace": "LOTjZBAI", "discountCodes": ["8nHKcgHm", "MZwomk9G", "LPAIAkKa"], "discountedPrice": 78, "entitlementPlatform": "Epic", "ext": {"HwOTpqjf": {}, "IiecDfEp": {}, "EtSbCsGv": {}}, "itemId": "NyqFSe9c", "language": "CIxPq1jL", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 10, "quantity": 93, "region": "TPwKZwA1", "returnUrl": "ptSffbcR", "sandbox": true, "sectionId": "WjY33Mi3"}' \
    > test.out 2>&1
eval_tap $? 276 'AdminCreateUserOrder' test.out

#- 277 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'jBTqU7MA' \
    --itemId 'xZKXAF36' \
    > test.out 2>&1
eval_tap $? 277 'CountOfPurchasedItem' test.out

#- 278 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'y88XC1pH' \
    --userId 'TAvyjSPW' \
    > test.out 2>&1
eval_tap $? 278 'GetUserOrder' test.out

#- 279 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'ggfAxZyX' \
    --userId 'aeTtO5KM' \
    --body '{"status": "CHARGEBACK", "statusReason": "5262hyWL"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateUserOrderStatus' test.out

#- 280 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KzcGz1t5' \
    --userId 'cZnG0Bon' \
    > test.out 2>&1
eval_tap $? 280 'FulfillUserOrder' test.out

#- 281 GetUserOrderGrant
eval_tap 0 281 'GetUserOrderGrant # SKIP deprecated' test.out

#- 282 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Dx5aWqEb' \
    --userId 'DCvjnz5L' \
    > test.out 2>&1
eval_tap $? 282 'GetUserOrderHistories' test.out

#- 283 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'IVSSG6SE' \
    --userId 'pe2mNvUk' \
    --body '{"additionalData": {"cardSummary": "fnFaemm0"}, "authorisedTime": "1980-11-22T00:00:00Z", "chargebackReversedTime": "1995-03-14T00:00:00Z", "chargebackTime": "1998-08-01T00:00:00Z", "chargedTime": "1992-04-08T00:00:00Z", "createdTime": "1978-10-29T00:00:00Z", "currency": {"currencyCode": "7v8OE2Nz", "currencySymbol": "vMaksuRg", "currencyType": "REAL", "decimals": 1, "namespace": "oWhMAFSv"}, "customParameters": {"h5v3ct4D": {}, "0EtD9nXT": {}, "0L8sYeLI": {}}, "extOrderNo": "KSin3ItB", "extTxId": "WyA8zN62", "extUserId": "SpDRn53z", "issuedAt": "1987-12-18T00:00:00Z", "metadata": {"EM8Qyshe": "IO7QCDD3", "7Zu012TR": "N8ceCZ3Z", "ohShJziG": "rhyDEgS5"}, "namespace": "I7L4EsaI", "nonceStr": "VP5dDiFI", "paymentData": {"discountAmount": 44, "discountCode": "y6kHsbGn", "subtotalPrice": 27, "tax": 51, "totalPrice": 47}, "paymentMethod": "T08oOEX7", "paymentMethodFee": 37, "paymentOrderNo": "oQYzrRjP", "paymentProvider": "XSOLLA", "paymentProviderFee": 14, "paymentStationUrl": "EiNGNryb", "price": 35, "refundedTime": "1981-06-12T00:00:00Z", "salesTax": 50, "sandbox": false, "sku": "aIOyPcC1", "status": "DELETED", "statusReason": "nw5YBhgB", "subscriptionId": "rArrGXPS", "subtotalPrice": 71, "targetNamespace": "aKi6RQEv", "targetUserId": "qv32jM8k", "tax": 71, "totalPrice": 16, "totalTax": 79, "txEndTime": "1976-12-04T00:00:00Z", "type": "A2yW1OMN", "userId": "ly4A8wEd", "vat": 21}' \
    > test.out 2>&1
eval_tap $? 283 'ProcessUserOrderNotification' test.out

#- 284 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '4wn3NWk9' \
    --userId 'EgnHCJQY' \
    > test.out 2>&1
eval_tap $? 284 'DownloadUserOrderReceipt' test.out

#- 285 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'XS5PYibK' \
    --body '{"currencyCode": "op58NrhG", "currencyNamespace": "wqOvQOaK", "customParameters": {"ZLyLtvpw": {}, "oZVFu9sd": {}, "oATKs0oA": {}}, "description": "oqRcVTHB", "extOrderNo": "KFQQXCCV", "extUserId": "xdfT9zhZ", "itemType": "OPTIONBOX", "language": "iio-CCqW", "metadata": {"rHFdb32f": "ya8XeYT1", "0QDJCnyy": "63SBAYFg", "NOYCLqlB": "IiTqvqgK"}, "notifyUrl": "cJQvcDrv", "omitNotification": false, "platform": "C56BhXyr", "price": 36, "recurringPaymentOrderNo": "iiQJMMDE", "region": "RIOl9cwF", "returnUrl": "qRtz7eCF", "sandbox": true, "sku": "wZftHa9s", "subscriptionId": "J7sAvbjd", "title": "gvPIcB6O"}' \
    > test.out 2>&1
eval_tap $? 285 'CreateUserPaymentOrder' test.out

#- 286 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VnMCc5gg' \
    --userId 'nsE4s9FC' \
    --body '{"description": "3FimW1V5"}' \
    > test.out 2>&1
eval_tap $? 286 'RefundUserPaymentOrder' test.out

#- 287 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'BoSrEZTd' \
    > test.out 2>&1
eval_tap $? 287 'GetUserPlatformAccountClosureHistories' test.out

#- 288 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'yNRp0SKI' \
    --body '{"code": "WGN6bMPa", "orderNo": "mC7iwYOg"}' \
    > test.out 2>&1
eval_tap $? 288 'ApplyUserRedemption' test.out

#- 289 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'p1qjfUVc' \
    --body '{"meta": {"QbMxLXUa": {}, "NqTsxIqG": {}, "bMaTiKu1": {}}, "reason": "66l4wm9d", "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "N1jmXnX1", "namespace": "vW7Amxuc"}, "entitlement": {"entitlementId": "BnnWIzRI"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "PkgdqL07", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 46, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Az4gEJ8Y", "namespace": "IyEpO5Ry"}, "entitlement": {"entitlementId": "vCsSSWYv"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "nWThQN3q", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 23, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "tkRcIJvB", "namespace": "zBV5XDCd"}, "entitlement": {"entitlementId": "f8C77chX"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "gCjhNJyH", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 3, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "VWN5L1Xc"}' \
    > test.out 2>&1
eval_tap $? 289 'DoRevocation' test.out

#- 290 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'XSFr7BJn' \
    --body '{"gameSessionId": "EOwekdbk", "payload": {"nzxynFCG": {}, "D56QehTO": {}, "v48gwGej": {}}, "scid": "yzRQuJdS", "sessionTemplateName": "F3QIRWcj"}' \
    > test.out 2>&1
eval_tap $? 290 'RegisterXblSessions' test.out

#- 291 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'PGoKQ3ij' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'm5OGEVmj' \
    --limit '26' \
    --offset '63' \
    --sku 'jiE9L4uv' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 291 'QueryUserSubscriptions' test.out

#- 292 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'EaOfSwih' \
    --excludeSystem 'false' \
    --limit '4' \
    --offset '74' \
    --subscriptionId 'C6rdPEb8' \
    > test.out 2>&1
eval_tap $? 292 'GetUserSubscriptionActivities' test.out

#- 293 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '324nCMdr' \
    --body '{"grantDays": 96, "itemId": "cLRdBOLY", "language": "KBv0HXXZ", "reason": "7WojMHyg", "region": "GWCUwYo0", "source": "x7YsWCtf"}' \
    > test.out 2>&1
eval_tap $? 293 'PlatformSubscribeSubscription' test.out

#- 294 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UmXxhfxR' \
    --itemId 'Y2yCrAlk' \
    > test.out 2>&1
eval_tap $? 294 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 295 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8NAnRjlw' \
    --userId 'UPMQbFJm' \
    > test.out 2>&1
eval_tap $? 295 'GetUserSubscription' test.out

#- 296 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '08d0dkXb' \
    --userId '0pTFHcWj' \
    > test.out 2>&1
eval_tap $? 296 'DeleteUserSubscription' test.out

#- 297 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YdyfFYlZ' \
    --userId 'gXGA0dgU' \
    --force 'true' \
    --body '{"immediate": false, "reason": "RqZn6KTo"}' \
    > test.out 2>&1
eval_tap $? 297 'CancelSubscription' test.out

#- 298 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FarQEYj6' \
    --userId 'e52lHWKa' \
    --body '{"grantDays": 17, "reason": "lqrP0xlh"}' \
    > test.out 2>&1
eval_tap $? 298 'GrantDaysToSubscription' test.out

#- 299 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QCM8tajf' \
    --userId '1MlQbuJc' \
    --excludeFree 'false' \
    --limit '10' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 299 'GetUserSubscriptionBillingHistories' test.out

#- 300 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QWO8ylcu' \
    --userId 'ov1JQ5TF' \
    --body '{"additionalData": {"cardSummary": "j394R2n8"}, "authorisedTime": "1996-08-11T00:00:00Z", "chargebackReversedTime": "1998-08-25T00:00:00Z", "chargebackTime": "1977-07-20T00:00:00Z", "chargedTime": "1979-09-06T00:00:00Z", "createdTime": "1977-10-09T00:00:00Z", "currency": {"currencyCode": "AVaLvulL", "currencySymbol": "jAVp6oiO", "currencyType": "REAL", "decimals": 94, "namespace": "bh5pxplp"}, "customParameters": {"7KOtUsMh": {}, "OHlQbAlX": {}, "8FH3DTZH": {}}, "extOrderNo": "w7m8Kxm7", "extTxId": "PEmhAGmq", "extUserId": "wd3mEV7K", "issuedAt": "1987-10-31T00:00:00Z", "metadata": {"ZQfoatyL": "8fPZju34", "LuxU0iWa": "yXBo7vVA", "h66POeT4": "bqgYQbbO"}, "namespace": "XZCs4d3I", "nonceStr": "HRku6n1S", "paymentData": {"discountAmount": 20, "discountCode": "xGL5K58L", "subtotalPrice": 12, "tax": 42, "totalPrice": 96}, "paymentMethod": "tAnGHU3F", "paymentMethodFee": 34, "paymentOrderNo": "4zaXHCsE", "paymentProvider": "NEONPAY", "paymentProviderFee": 71, "paymentStationUrl": "Qcykc8RQ", "price": 11, "refundedTime": "1976-03-14T00:00:00Z", "salesTax": 7, "sandbox": false, "sku": "OZJghLoE", "status": "CHARGEBACK_REVERSED", "statusReason": "7u68iJ7k", "subscriptionId": "isDkSuP4", "subtotalPrice": 89, "targetNamespace": "RuUzkrlk", "targetUserId": "slvnU6wC", "tax": 9, "totalPrice": 15, "totalTax": 45, "txEndTime": "1999-04-16T00:00:00Z", "type": "mU8fPbOh", "userId": "XYQGIBFx", "vat": 80}' \
    > test.out 2>&1
eval_tap $? 300 'ProcessUserSubscriptionNotification' test.out

#- 301 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'mSbkdkgq' \
    --namespace $AB_NAMESPACE \
    --userId 'Z0jrtuKS' \
    --body '{"count": 100, "orderNo": "itrAC7hJ"}' \
    > test.out 2>&1
eval_tap $? 301 'AcquireUserTicket' test.out

#- 302 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'DCG3CSeK' \
    > test.out 2>&1
eval_tap $? 302 'QueryUserCurrencyWallets' test.out

#- 303 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'sIEyF7wy' \
    --namespace $AB_NAMESPACE \
    --userId 'KHFGuX2u' \
    --body '{"allowOverdraft": true, "amount": 79, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"zElyHBaj": {}, "nwoyAOpZ": {}, "Agb1e2to": {}}, "reason": "QYoW0xA6"}' \
    > test.out 2>&1
eval_tap $? 303 'DebitUserWalletByCurrencyCode' test.out

#- 304 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '04R9SFho' \
    --namespace $AB_NAMESPACE \
    --userId '8EEqCckf' \
    --limit '71' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 304 'ListUserCurrencyTransactions' test.out

#- 305 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'xpe58yKd' \
    --namespace $AB_NAMESPACE \
    --userId 'LVS5eRrG' \
    --request '{"amount": 4, "debitBalanceSource": "TRADE", "metadata": {"FpqiQLKb": {}, "1VrauaRh": {}, "43FZ0v3a": {}}, "reason": "gW4Jq8Wr", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 305 'CheckBalance' test.out

#- 306 CheckWallet
eval_tap 0 306 'CheckWallet # SKIP deprecated' test.out

#- 307 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'qjgtAgE9' \
    --namespace $AB_NAMESPACE \
    --userId '62LAVSNZ' \
    --body '{"amount": 22, "expireAt": "1984-12-10T00:00:00Z", "metadata": {"ZYMD8fnG": {}, "jRyJlfFm": {}, "gKbBYkKH": {}}, "origin": "Nintendo", "reason": "ScbrdQzZ", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 307 'CreditUserWallet' test.out

#- 308 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'oXyXXkkM' \
    --namespace $AB_NAMESPACE \
    --userId 'hLeu2UfG' \
    --request '{"amount": 22, "debitBalanceSource": "EXPIRATION", "metadata": {"5VqLyZgX": {}, "r96iBWLH": {}, "jp2gJHKU": {}}, "reason": "WMGz9GWW", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 308 'DebitByWalletPlatform' test.out

#- 309 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'JDDgBTGn' \
    --namespace $AB_NAMESPACE \
    --userId 'zGcxPPxK' \
    --body '{"amount": 52, "metadata": {"rvgUahcW": {}, "qQETTo5i": {}, "pCSgDxLp": {}}, "walletPlatform": "Steam"}' \
    > test.out 2>&1
eval_tap $? 309 'PayWithUserWallet' test.out

#- 310 GetUserWallet
eval_tap 0 310 'GetUserWallet # SKIP deprecated' test.out

#- 311 DebitUserWallet
eval_tap 0 311 'DebitUserWallet # SKIP deprecated' test.out

#- 312 DisableUserWallet
eval_tap 0 312 'DisableUserWallet # SKIP deprecated' test.out

#- 313 EnableUserWallet
eval_tap 0 313 'EnableUserWallet # SKIP deprecated' test.out

#- 314 ListUserWalletTransactions
eval_tap 0 314 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 315 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'mDj9xc9G' \
    > test.out 2>&1
eval_tap $? 315 'ListViews' test.out

#- 316 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'TPEwoF9k' \
    --body '{"displayOrder": 93, "localizations": {"HL8BZ1vD": {"description": "6LOoGD1R", "localExt": {"1Lu2NH7i": {}, "i5wzRNcB": {}, "8XVPxeHo": {}}, "longDescription": "dElezijI", "title": "U6dEOBBA"}, "e9OsFkFA": {"description": "ccqyooXQ", "localExt": {"n4aBB0S4": {}, "Y0eERkNr": {}, "8RW8X7Jf": {}}, "longDescription": "KlsrxeAD", "title": "1aHMYD83"}, "klNeNdGA": {"description": "HlB8ae0P", "localExt": {"mlocmENi": {}, "fSeWdEhR": {}, "1N0SV5qQ": {}}, "longDescription": "lRyzLf1t", "title": "AUD8zMWX"}}, "name": "n4gIWMxx"}' \
    > test.out 2>&1
eval_tap $? 316 'CreateView' test.out

#- 317 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'BH5QWqp1' \
    --storeId 'xwosgNPW' \
    > test.out 2>&1
eval_tap $? 317 'GetView' test.out

#- 318 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '3E5cW4bi' \
    --storeId 'H8hJ5BCK' \
    --body '{"displayOrder": 7, "localizations": {"uZ0bo7XH": {"description": "zdKoZ8ZC", "localExt": {"TO0pvnOu": {}, "hGrFdyoC": {}, "Wgm3rd67": {}}, "longDescription": "HAHgKiBC", "title": "kw8WQCEN"}, "nA87MfvT": {"description": "IbuBY29V", "localExt": {"DwdGVwAs": {}, "RHlfAPE8": {}, "SMlumGeV": {}}, "longDescription": "I5hlzMzM", "title": "3alryeV9"}, "MxFld18m": {"description": "VIpV9uRb", "localExt": {"SVqfDzdI": {}, "Cd2mkNOo": {}, "GFNdy2Bx": {}}, "longDescription": "49iou7ik", "title": "WscdssS0"}}, "name": "NeHgh3Ue"}' \
    > test.out 2>&1
eval_tap $? 318 'UpdateView' test.out

#- 319 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '3wcDpiVQ' \
    --storeId 'IIw7f6TE' \
    > test.out 2>&1
eval_tap $? 319 'DeleteView' test.out

#- 320 QueryWallets
eval_tap 0 320 'QueryWallets # SKIP deprecated' test.out

#- 321 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 83, "expireAt": "1997-02-22T00:00:00Z", "metadata": {"CXxYTHiR": {}, "9lPOIeX0": {}, "oeKwf6FL": {}}, "origin": "Twitch", "reason": "UFINyMZe", "source": "REFUND"}, "currencyCode": "pcfx9ElK", "userIds": ["Vrk9NfNv", "Ir2RkJqo", "Skz5DkJg"]}, {"creditRequest": {"amount": 38, "expireAt": "1977-11-30T00:00:00Z", "metadata": {"TTWE6qeb": {}, "2ZVAptM5": {}, "NFAoYy4x": {}}, "origin": "Oculus", "reason": "1ubl0Yc7", "source": "ACHIEVEMENT"}, "currencyCode": "R8zgV3j5", "userIds": ["KpKJYsu7", "SlGzvNcV", "twi2YpYR"]}, {"creditRequest": {"amount": 4, "expireAt": "1971-02-10T00:00:00Z", "metadata": {"FupcatvF": {}, "kwfGxl4r": {}, "2HWHjBzg": {}}, "origin": "Playstation", "reason": "XcUJoMGW", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "eyXI9Lk8", "userIds": ["hN9QQ8aN", "Oa7HqJBj", "lfsu3Wjb"]}]' \
    > test.out 2>&1
eval_tap $? 321 'BulkCredit' test.out

#- 322 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "3uifF2do", "request": {"allowOverdraft": false, "amount": 25, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"roywLnkh": {}, "n2rHY0z5": {}, "lsaIUzCj": {}}, "reason": "WnJ8Y8PW"}, "userIds": ["VQPVmUpT", "dURI4LQI", "XVL7NzI3"]}, {"currencyCode": "xuHTbBjo", "request": {"allowOverdraft": false, "amount": 3, "balanceOrigin": "IOS", "balanceSource": "EXPIRATION", "metadata": {"fB9bGGbE": {}, "nt1rBRHY": {}, "F5OObeZ1": {}}, "reason": "wq30zr27"}, "userIds": ["9y2wdDvl", "M4jQ3KwK", "flb9mNie"]}, {"currencyCode": "gOv734Wp", "request": {"allowOverdraft": false, "amount": 84, "balanceOrigin": "IOS", "balanceSource": "PAYMENT", "metadata": {"SRlgYRyC": {}, "sDrxKk6Q": {}, "6NrpZdE3": {}}, "reason": "2kO9OXnJ"}, "userIds": ["QCueAduq", "gV0IlgYM", "c0F4e2Xu"]}]' \
    > test.out 2>&1
eval_tap $? 322 'BulkDebit' test.out

#- 323 GetWallet
eval_tap 0 323 'GetWallet # SKIP deprecated' test.out

#- 324 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '7G4PpvzF' \
    --end '96dhdB7C' \
    --start 'oqDyd4jx' \
    > test.out 2>&1
eval_tap $? 324 'SyncOrders' test.out

#- 325 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["Oh3xq13W", "K4K253Ed", "mBRpyDtt"], "apiKey": "qejjAKjX", "authoriseAsCapture": false, "blockedPaymentMethods": ["681VmHtr", "m94OlIwb", "g8Ymm7N4"], "clientKey": "4vgOFO2h", "dropInSettings": "310Onche", "liveEndpointUrlPrefix": "eCTh1As4", "merchantAccount": "ZC70VzCd", "notificationHmacKey": "lhgrcNoo", "notificationPassword": "jHhdwuUn", "notificationUsername": "RSvZBxK1", "returnUrl": "ChijpFqI", "settings": "LImY5jZg"}' \
    > test.out 2>&1
eval_tap $? 325 'TestAdyenConfig' test.out

#- 326 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "TKKqcvnc", "privateKey": "YN2PGn1r", "publicKey": "pYU03wHy", "returnUrl": "XTW3u2Jr"}' \
    > test.out 2>&1
eval_tap $? 326 'TestAliPayConfig' test.out

#- 327 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "YvZCXPoN", "secretKey": "jtDWZxrC"}' \
    > test.out 2>&1
eval_tap $? 327 'TestCheckoutConfig' test.out

#- 328 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'jfamzYIi' \
    --region 'pxR1kT4r' \
    > test.out 2>&1
eval_tap $? 328 'DebugMatchedPaymentMerchantConfig' test.out

#- 329 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "gJbifwCw", "webhookSecretKey": "gC38Aghj"}' \
    > test.out 2>&1
eval_tap $? 329 'TestNeonPayConfig' test.out

#- 330 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "f4JdZsBb", "clientSecret": "sIm92OXl", "returnUrl": "ZKn9HFGf", "webHookId": "71JN7Vv5"}' \
    > test.out 2>&1
eval_tap $? 330 'TestPayPalConfig' test.out

#- 331 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["wMjKe14o", "loiQEOUb", "TsCF95TN"], "publishableKey": "BUnkWQyH", "secretKey": "VeKs5SG8", "webhookSecret": "3RBdL1Od"}' \
    > test.out 2>&1
eval_tap $? 331 'TestStripeConfig' test.out

#- 332 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "rTdwjdkm", "key": "hVSTKM3u", "mchid": "Gdzml2Ll", "returnUrl": "rWYRNdK3"}' \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfig' test.out

#- 333 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "gf0LBCta", "flowCompletionUrl": "COdgyAZj", "merchantId": 70, "projectId": 23, "projectSecretKey": "yQk2vmr8"}' \
    > test.out 2>&1
eval_tap $? 333 'TestXsollaConfig' test.out

#- 334 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'VWMcOZii' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentMerchantConfig1' test.out

#- 335 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '3JMFoKL8' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["8GVYaeHo", "TpKkZkRP", "mr7Utdiw"], "apiKey": "DPCfRAg0", "authoriseAsCapture": true, "blockedPaymentMethods": ["vQaNhwY3", "OSMPLByq", "AQclgicE"], "clientKey": "gyUl9rEV", "dropInSettings": "jl2XlMLM", "liveEndpointUrlPrefix": "HpiFvJPm", "merchantAccount": "sG3YMbAm", "notificationHmacKey": "PkR97UsL", "notificationPassword": "BMcbeTUy", "notificationUsername": "7ciifQRq", "returnUrl": "u1y88irU", "settings": "KGO0SHoK"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateAdyenConfig' test.out

#- 336 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '9fmaKAJP' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 336 'TestAdyenConfigById' test.out

#- 337 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'CB8syUHB' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "qQHJObly", "privateKey": "ZN9Owko3", "publicKey": "VpS8zWDf", "returnUrl": "H8x0JOUS"}' \
    > test.out 2>&1
eval_tap $? 337 'UpdateAliPayConfig' test.out

#- 338 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'oU7lTzQb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 338 'TestAliPayConfigById' test.out

#- 339 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'txQYd0Zn' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "5sERga6l", "secretKey": "CKODOp0a"}' \
    > test.out 2>&1
eval_tap $? 339 'UpdateCheckoutConfig' test.out

#- 340 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'B2S7KKxW' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 340 'TestCheckoutConfigById' test.out

#- 341 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id '6bXL4Y2I' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"apiKey": "gg3jnoB1", "webhookSecretKey": "bKSBRjvL"}' \
    > test.out 2>&1
eval_tap $? 341 'UpdateNeonPayConfig' test.out

#- 342 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'UUANpDtJ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 342 'TestNeonPayConfigById' test.out

#- 343 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '4x4wHZHr' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "tzPyEVQg", "clientSecret": "7IhOg0qc", "returnUrl": "xlaHYQsj", "webHookId": "uQS7kg1A"}' \
    > test.out 2>&1
eval_tap $? 343 'UpdatePayPalConfig' test.out

#- 344 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 't1CXALV8' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 344 'TestPayPalConfigById' test.out

#- 345 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'fuPVZ4X4' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["v7MSctRa", "hXUdZYEP", "yMVVqBmK"], "publishableKey": "rc2mJAQh", "secretKey": "PQKnEXoS", "webhookSecret": "SiHdS856"}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateStripeConfig' test.out

#- 346 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'xaKdRjkk' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfigById' test.out

#- 347 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ja7yQBZG' \
    --validate 'true' \
    --body '{"appId": "qyEjpXWC", "key": "e70c10A4", "mchid": "RUQo7yev", "returnUrl": "sOWDmKhw"}' \
    > test.out 2>&1
eval_tap $? 347 'UpdateWxPayConfig' test.out

#- 348 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'Y9JJKxky' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 348 'UpdateWxPayConfigCert' test.out

#- 349 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '6xokRknw' \
    > test.out 2>&1
eval_tap $? 349 'TestWxPayConfigById' test.out

#- 350 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '0l0mFqcs' \
    --validate 'false' \
    --body '{"apiKey": "2WvCGWBB", "flowCompletionUrl": "z24gw0QO", "merchantId": 69, "projectId": 25, "projectSecretKey": "JaHQaYXZ"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateXsollaConfig' test.out

#- 351 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'Yv974chV' \
    > test.out 2>&1
eval_tap $? 351 'TestXsollaConfigById' test.out

#- 352 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'UYWqarca' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateXsollaUIConfig' test.out

#- 353 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '84' \
    --namespace 'c1JIl9ib' \
    --offset '12' \
    --region 'vcUPoCeB' \
    > test.out 2>&1
eval_tap $? 353 'QueryPaymentProviderConfig' test.out

#- 354 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "cHZRqDqa", "region": "ozxYzxEu", "sandboxTaxJarApiToken": "pXRYle7H", "specials": ["NEONPAY", "STRIPE", "CHECKOUT"], "taxJarApiToken": "izqO7DN9", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 354 'CreatePaymentProviderConfig' test.out

#- 355 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 355 'GetAggregatePaymentProviders' test.out

#- 356 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'mcowhmkN' \
    --region 'tZcLIM0r' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentProviderConfig' test.out

#- 357 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 357 'GetSpecialPaymentProviders' test.out

#- 358 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Xm8GnR0l' \
    --body '{"aggregate": "XSOLLA", "namespace": "wzQIPwkG", "region": "DokNCuKF", "sandboxTaxJarApiToken": "0aFJmLZe", "specials": ["ADYEN", "NEONPAY", "PAYPAL"], "taxJarApiToken": "1jKTkvV8", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 358 'UpdatePaymentProviderConfig' test.out

#- 359 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'YjzYx2a5' \
    > test.out 2>&1
eval_tap $? 359 'DeletePaymentProviderConfig' test.out

#- 360 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentTaxConfig' test.out

#- 361 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "esbKwhbL", "taxJarApiToken": "aI3usyGW", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Zh0iNM08": "cwpjl5fi", "Ta0x80GT": "90145x9s", "i3Obwb8s": "mYvtMqqT"}}' \
    > test.out 2>&1
eval_tap $? 361 'UpdatePaymentTaxConfig' test.out

#- 362 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '7HvzSvoa' \
    --end 'EF9GH42Z' \
    --start 'OwuiDguX' \
    > test.out 2>&1
eval_tap $? 362 'SyncPaymentOrders' test.out

#- 363 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'udmAg4O9' \
    --storeId '6RTK4GsD' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetRootCategories' test.out

#- 364 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'HsBn0rEN' \
    --storeId 'tc744awn' \
    > test.out 2>&1
eval_tap $? 364 'DownloadCategories' test.out

#- 365 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'ogzXLvSe' \
    --namespace $AB_NAMESPACE \
    --language 'xO1NmpQB' \
    --storeId 'XAUpCD3P' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetCategory' test.out

#- 366 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'ClinYm83' \
    --namespace $AB_NAMESPACE \
    --language 'JFkCq41E' \
    --storeId 'jrXNo7OR' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetChildCategories' test.out

#- 367 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '1F4FOCZV' \
    --namespace $AB_NAMESPACE \
    --language 'JjvtVgRp' \
    --storeId 'EG103DsY' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetDescendantCategories' test.out

#- 368 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 368 'PublicListCurrencies' test.out

#- 369 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 369 'GeDLCDurableRewardShortMap' test.out

#- 370 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 370 'GetIAPItemMapping' test.out

#- 371 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'g4xWb0iU' \
    --region '3ABYR50u' \
    --storeId 'HzOPTlL9' \
    --appId '1ouSQL1v' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetItemByAppId' test.out

#- 372 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'k22nWW1g' \
    --categoryPath 'tVdCDXBW' \
    --features 'kK75heZ5' \
    --includeSubCategoryItem 'false' \
    --itemType 'BUNDLE' \
    --language 'OopNAlHG' \
    --limit '43' \
    --offset '41' \
    --region '8uHixJB2' \
    --sortBy '["displayOrder", "name:desc"]' \
    --storeId 'BOTn6aIM' \
    --tags '5RLvxJ6y' \
    > test.out 2>&1
eval_tap $? 372 'PublicQueryItems' test.out

#- 373 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'XSWFKyce' \
    --region 'FNZAqPwA' \
    --storeId 'FIz5xEUE' \
    --sku '06HhK2iC' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetItemBySku' test.out

#- 374 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'w476kXB9' \
    --storeId 'uCCWGhUI' \
    --itemIds 'fPxbGb8h' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetEstimatedPrice' test.out

#- 375 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'A8K6xsGL' \
    --region 'IvckZsOt' \
    --storeId 'dRlqYKRz' \
    --itemIds 'SCg2BVlc' \
    > test.out 2>&1
eval_tap $? 375 'PublicBulkGetItems' test.out

#- 376 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["lU0Lfadd", "xcaNQdIx", "7xyOxKNU"]}' \
    > test.out 2>&1
eval_tap $? 376 'PublicValidateItemPurchaseCondition' test.out

#- 377 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '64' \
    --offset '3' \
    --region '7mXMKAPV' \
    --storeId 'MtJIKsVc' \
    --keyword 'R6vjCVpP' \
    --language 'tFfgjzMk' \
    > test.out 2>&1
eval_tap $? 377 'PublicSearchItems' test.out

#- 378 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'fepyhV4s' \
    --namespace $AB_NAMESPACE \
    --language 'k7Jc2qYf' \
    --region 'RMEXAs4x' \
    --storeId 'MyqAOiPw' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetApp' test.out

#- 379 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'c51tnCsP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 379 'PublicGetItemDynamicData' test.out

#- 380 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'GLe1YKqe' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'WqxQnrdA' \
    --populateBundle 'true' \
    --region '4ezvicJU' \
    --storeId 'oleSQrgT' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetItem' test.out

#- 381 GetPaymentCustomization
eval_tap 0 381 'GetPaymentCustomization # SKIP deprecated' test.out

#- 382 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "hiTBsFFA", "successUrl": "CJmWVq4o"}, "paymentOrderNo": "Mz4pJWMM", "paymentProvider": "WXPAY", "returnUrl": "9tFx7iJp", "ui": "NSKppARf", "zipCode": "JDkZGltv"}' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentUrl' test.out

#- 383 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SOSlFXx8' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetPaymentMethods' test.out

#- 384 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'prUwDXyk' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUnpaidPaymentOrder' test.out

#- 385 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xJpYUIaF' \
    --paymentProvider 'WALLET' \
    --zipCode 'TeINOuvs' \
    --body '{"token": "KRcu8tGp"}' \
    > test.out 2>&1
eval_tap $? 385 'Pay' test.out

#- 386 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0w6FPOsS' \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckPaymentOrderPaidStatus' test.out

#- 387 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ADYEN' \
    --region 'PPyXXj23' \
    > test.out 2>&1
eval_tap $? 387 'GetPaymentPublicConfig' test.out

#- 388 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'oLvR83wB' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetQRCode' test.out

#- 389 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'WPC0J2ZT' \
    --foreinginvoice '7vTxj60p' \
    --invoiceId 'mgNQc4Q9' \
    --payload 'xEiDYfwq' \
    --redirectResult 'aS8pjNPi' \
    --resultCode 'Sa49XlEK' \
    --sessionId '6f1ufmKf' \
    --status 'yiVcAxgk' \
    --token 'glDGfizM' \
    --type 'jAJe09v6' \
    --userId 'QmEBoZW9' \
    --orderNo 'yFpNF8Mf' \
    --paymentOrderNo 'FIzHRBbi' \
    --paymentProvider 'ADYEN' \
    --returnUrl '6BelgnjJ' \
    > test.out 2>&1
eval_tap $? 389 'PublicNormalizePaymentReturnUrl' test.out

#- 390 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '4kDKla3C' \
    --paymentOrderNo 'NuIs1wVR' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 390 'GetPaymentTaxValue' test.out

#- 391 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'wY3ChKis' \
    > test.out 2>&1
eval_tap $? 391 'GetRewardByCode' test.out

#- 392 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'A7xpm8CJ' \
    --limit '11' \
    --offset '23' \
    --sortBy '["rewardCode", "namespace"]' \
    > test.out 2>&1
eval_tap $? 392 'QueryRewards1' test.out

#- 393 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '3jS07vEL' \
    > test.out 2>&1
eval_tap $? 393 'GetReward1' test.out

#- 394 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 394 'PublicListStores' test.out

#- 395 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["1jpEdxp4", "5TsmvhBu", "gmhmEuNM"]' \
    --itemIds '["2sq2Akus", "t30FQaX9", "X0xqsS9W"]' \
    --skus '["Bs2syVmw", "LQ3n4cXR", "IRSWRz31"]' \
    > test.out 2>&1
eval_tap $? 395 'PublicExistsAnyMyActiveEntitlement' test.out

#- 396 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'ITyulH5X' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 397 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'Fw6wrbT1' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 398 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku 'lLYGS4sK' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 399 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["hjfjYQtm", "jgkyAzZg", "9uaCaGix"]' \
    --itemIds '["x4kgASgy", "duXgsSvg", "OragR8NY"]' \
    --skus '["9v2mcSSi", "9dsdc0yn", "oUsF3KZs"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetEntitlementOwnershipToken' test.out

#- 400 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "KhXdiHFe", "language": "sPq-pqvs_yH", "region": "RzvCaVTy"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncTwitchDropsEntitlement' test.out

#- 401 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '2hFVncvM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 401 'PublicGetMyWallet' test.out

#- 402 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PYSFi8Wv' \
    --body '{"epicGamesJwtToken": "3JdRcTXk"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncEpicGameDLC' test.out

#- 403 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fjR2Cg8H' \
    > test.out 2>&1
eval_tap $? 403 'SyncOculusDLC' test.out

#- 404 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '0nlZ5wQg' \
    --body '{"serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSyncPsnDlcInventory' test.out

#- 405 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'ib9rcWu5' \
    --body '{"serviceLabels": [66, 37, 39]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 406 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '8lQaDuRN' \
    --body '{"appId": "6Jj1jCJg", "steamId": "sFtexweS"}' \
    > test.out 2>&1
eval_tap $? 406 'SyncSteamDLC' test.out

#- 407 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'USxocJ97' \
    --body '{"xstsToken": "awUn908Y"}' \
    > test.out 2>&1
eval_tap $? 407 'SyncXboxDLC' test.out

#- 408 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'GcO8xq0q' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName '6qhxRE8u' \
    --features '["sGReH2qX", "jVJuu3pb", "D36TMZrA"]' \
    --itemId '["p7fxNjGS", "TC1zP1wE", "nwc2WXmq"]' \
    --limit '48' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryUserEntitlements' test.out

#- 409 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dI9VZkzH' \
    --appId 'H28t66iY' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserAppEntitlementByAppId' test.out

#- 410 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'XRPXs48I' \
    --limit '47' \
    --offset '31' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserEntitlementsByAppType' test.out

#- 411 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'NqofmDSD' \
    --availablePlatformOnly 'true' \
    --ids '["W6vIyySx", "FOFzUdDY", "Z13mHYS1"]' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUserEntitlementsByIds' test.out

#- 412 PublicGetUserEntitlementByItemId
eval_tap 0 412 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 413 PublicGetUserEntitlementBySku
eval_tap 0 413 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 414 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'bb7rpGwn' \
    --endDate 'jFGMOXhA' \
    --entitlementClazz 'APP' \
    --limit '23' \
    --offset '4' \
    --startDate 'sQxnTbe0' \
    > test.out 2>&1
eval_tap $? 414 'PublicUserEntitlementHistory' test.out

#- 415 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'qxT9T8qb' \
    --appIds '["gKTgStJj", "o0ONQqLb", "svb8XYE0"]' \
    --itemIds '["nNKf3EGg", "xiJHJrMq", "fQmpno8n"]' \
    --skus '["XPVbRw5z", "6CNoX82N", "EZArjBlZ"]' \
    > test.out 2>&1
eval_tap $? 415 'PublicExistsAnyUserActiveEntitlement' test.out

#- 416 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XgjfHWhX' \
    --appId 'xB06YE5Y' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 417 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tldxEbs3' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'JL1hs4dd' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 418 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'AdhwbEHy' \
    --ids '["dshEhJaZ", "wmUEq2Sv", "iLLLdaBd"]' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 419 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uNEy2hJf' \
    --entitlementClazz 'APP' \
    --sku 'Q5KZwtc6' \
    > test.out 2>&1
eval_tap $? 419 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 420 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'XjlCoeb7' \
    --namespace $AB_NAMESPACE \
    --userId 'rKaQwYlS' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserEntitlement' test.out

#- 421 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'j5JNDkkJ' \
    --namespace $AB_NAMESPACE \
    --userId 'DzitoSlj' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["yptI2aAm", "fsMwKuZm", "Wecxd7bK"], "requestId": "RFhwAUrt", "useCount": 96}' \
    > test.out 2>&1
eval_tap $? 421 'PublicConsumeUserEntitlement' test.out

#- 422 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'tMWMd2Ue' \
    --namespace $AB_NAMESPACE \
    --userId 'jNLkgiNw' \
    --body '{"requestId": "GVZFpvhS", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 422 'PublicSellUserEntitlement' test.out

#- 423 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'Gxw9Zbut' \
    --namespace $AB_NAMESPACE \
    --userId 'll6rnavV' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 423 'PublicSplitUserEntitlement' test.out

#- 424 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'GGpzHTX7' \
    --namespace $AB_NAMESPACE \
    --userId 'rlcfBrLO' \
    --body '{"entitlementId": "QbTuN0UY", "metadata": {"operationSource": "INVENTORY"}, "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 424 'PublicTransferUserEntitlement' test.out

#- 425 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'jmIoDXLK' \
    --body '{"code": "HGk04kEV", "language": "dL_WsHF_PB", "region": "5lm5NNrM"}' \
    > test.out 2>&1
eval_tap $? 425 'PublicRedeemCode' test.out

#- 426 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'RcZuTOYU' \
    --body '{"excludeOldTransactions": false, "language": "nK-kACL_VX", "productId": "Kc19IJoX", "receiptData": "Yc3u4icN", "region": "xnEm35s5", "transactionId": "jHCiSSqs"}' \
    > test.out 2>&1
eval_tap $? 426 'PublicFulfillAppleIAPItem' test.out

#- 427 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Ww4hkKkR' \
    --body '{"epicGamesJwtToken": "0RI30cCS"}' \
    > test.out 2>&1
eval_tap $? 427 'SyncEpicGamesInventory' test.out

#- 428 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'V0DFJDzY' \
    --body '{"autoAck": false, "language": "GSh", "orderId": "FKkSVKl2", "packageName": "dVk0fwWk", "productId": "rphn5Xzw", "purchaseTime": 27, "purchaseToken": "xdDoWGfz", "region": "KaYlv7i1"}' \
    > test.out 2>&1
eval_tap $? 428 'PublicFulfillGoogleIAPItem' test.out

#- 429 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'UioMIzU3' \
    > test.out 2>&1
eval_tap $? 429 'SyncOculusConsumableEntitlements' test.out

#- 430 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'iOCV1XyG' \
    --body '{"currencyCode": "EhzTpDWN", "price": 0.9527197224040564, "productId": "6cn8xhI8", "serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 430 'PublicReconcilePlayStationStore' test.out

#- 431 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'plQDrrbp' \
    --body '{"currencyCode": "FIEJDnLj", "price": 0.5739988236276157, "productId": "m9FlFxHM", "serviceLabels": [98, 100, 36]}' \
    > test.out 2>&1
eval_tap $? 431 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 432 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '8DeQj7hf' \
    --body '{"appId": "bWLj8ZdZ", "currencyCode": "qC75Lw6h", "language": "Fb-151", "price": 0.6531109021195348, "productId": "xV6Ioj9D", "region": "IBMWBmyc", "steamId": "XLNR5aHU"}' \
    > test.out 2>&1
eval_tap $? 432 'SyncSteamInventory' test.out

#- 433 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'og6pRXZs' \
    --body '{"gameId": "8G4iPhlc", "language": "pfsg_vc", "region": "N37f8ofV"}' \
    > test.out 2>&1
eval_tap $? 433 'SyncTwitchDropsEntitlement1' test.out

#- 434 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QuW8W8vV' \
    --body '{"currencyCode": "sWzEuYYf", "price": 0.6544332727272328, "productId": "ScY6pdTv", "xstsToken": "vbnjeQ8V"}' \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxInventory' test.out

#- 435 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'bS2Ro1qJ' \
    --discounted 'true' \
    --itemId 'hDEaJE7X' \
    --limit '28' \
    --offset '10' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserOrders' test.out

#- 436 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Lashc3ML' \
    --body '{"currencyCode": "WtHF49tK", "discountCodes": ["tqf4FZyw", "T0kQYdLt", "KJZVkooF"], "discountedPrice": 44, "ext": {"gcRDcfUd": {}, "ftmA8zH7": {}, "owoGA7Kf": {}}, "itemId": "GKbIWHjA", "language": "vxdE-057", "price": 65, "quantity": 93, "region": "c1JuVSrn", "returnUrl": "2dawPKBi", "sectionId": "a1B1h5KC"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCreateUserOrder' test.out

#- 437 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '2Z7s3R4x' \
    --body '{"currencyCode": "WWlIVtY4", "discountCodes": ["uMMvjcYb", "QLUGLa8O", "WSEUK4mV"], "discountedPrice": 26, "itemId": "b2zDAOAZ", "price": 36, "quantity": 41}' \
    > test.out 2>&1
eval_tap $? 437 'PublicPreviewOrderPrice' test.out

#- 438 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0Gg2vSDc' \
    --userId 'mPgfXrNt' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserOrder' test.out

#- 439 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rBazEfai' \
    --userId 'Bs5iXvrE' \
    > test.out 2>&1
eval_tap $? 439 'PublicCancelUserOrder' test.out

#- 440 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'z0aYusPV' \
    --userId 'KPkIcE9f' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserOrderHistories' test.out

#- 441 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '1bGKYIMo' \
    --userId 'ekt4kFex' \
    > test.out 2>&1
eval_tap $? 441 'PublicDownloadUserOrderReceipt' test.out

#- 442 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'q9hvDVJq' \
    > test.out 2>&1
eval_tap $? 442 'PublicGetPaymentAccounts' test.out

#- 443 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'Gu6mGrp9' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'A9DA4UFy' \
    > test.out 2>&1
eval_tap $? 443 'PublicDeletePaymentAccount' test.out

#- 444 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '5uv6MBsC' \
    --autoCalcEstimatedPrice 'false' \
    --language 'mcLDxbgO' \
    --region 'TzYRHtkZ' \
    --storeId 'KJC08X6W' \
    --viewId 'V9A7CIOG' \
    > test.out 2>&1
eval_tap $? 444 'PublicListActiveSections' test.out

#- 445 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'wqiUvaDr' \
    --chargeStatus 'SETUP' \
    --itemId 'lkKqk91N' \
    --limit '95' \
    --offset '27' \
    --sku 'gKLKGZcg' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 445 'PublicQueryUserSubscriptions' test.out

#- 446 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'lUagr8mY' \
    --body '{"currencyCode": "CC6iA7HL", "itemId": "pKtudXdl", "language": "XDO_LP", "region": "8m99xwXu", "returnUrl": "gWw3yffO", "source": "3TyiecGZ"}' \
    > test.out 2>&1
eval_tap $? 446 'PublicSubscribeSubscription' test.out

#- 447 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'lxqIGh6k' \
    --itemId 'Yjj7SBK0' \
    > test.out 2>&1
eval_tap $? 447 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 448 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WLPDQ8Eb' \
    --userId 'CPRZmaKF' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserSubscription' test.out

#- 449 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0NypdoOu' \
    --userId '1zYeLqWW' \
    > test.out 2>&1
eval_tap $? 449 'PublicChangeSubscriptionBillingAccount' test.out

#- 450 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uhMtsoMI' \
    --userId 'JvoSZg7m' \
    --body '{"immediate": false, "reason": "DeUAEkDE"}' \
    > test.out 2>&1
eval_tap $? 450 'PublicCancelSubscription' test.out

#- 451 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ovBTo8b5' \
    --userId 'AbTdLlHu' \
    --excludeFree 'false' \
    --limit '84' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 451 'PublicGetUserSubscriptionBillingHistories' test.out

#- 452 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'rK5rAjvM' \
    --language 'gcfZENkM' \
    --storeId 'JwCrONWW' \
    > test.out 2>&1
eval_tap $? 452 'PublicListViews' test.out

#- 453 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '0K7vqhMJ' \
    --namespace $AB_NAMESPACE \
    --userId '3UDoiUPB' \
    > test.out 2>&1
eval_tap $? 453 'PublicGetWallet' test.out

#- 454 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'MKkKUfML' \
    --namespace $AB_NAMESPACE \
    --userId 'g8UNN9P5' \
    --limit '27' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 454 'PublicListUserWalletTransactions' test.out

#- 455 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetMyDLCContent' test.out

#- 456 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'BibsiGvA' \
    --limit '70' \
    --offset '37' \
    --startTime 'Iy6QQMZg' \
    --state 'FULFILLED' \
    --transactionId 'bWFT2Xnz' \
    --userId 'Le8Om0SP' \
    > test.out 2>&1
eval_tap $? 456 'QueryFulfillments' test.out

#- 457 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'q7VWbSR7' \
    --baseAppId 'PWGQC9Pz' \
    --categoryPath 'd1RqXWoP' \
    --features 'XLgbZL8c' \
    --includeSubCategoryItem 'false' \
    --itemName '7N5m7lOP' \
    --itemStatus 'INACTIVE' \
    --itemType '["EXTENSION", "COINS", "APP"]' \
    --limit '65' \
    --offset '98' \
    --region 'M84cxaGF' \
    --sectionExclusive 'false' \
    --sortBy '["name", "createdAt:asc", "createdAt:desc"]' \
    --storeId 's6lNKYky' \
    --tags 'BJqFiTZp' \
    --targetNamespace 'tKYwYmt8' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 457 'QueryItemsV2' test.out

#- 458 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'HBKT3s5R' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 458 'ImportStore1' test.out

#- 459 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'hNYUZE11' \
    --body '{"itemIds": ["NRhTrZ5w", "3AHCoU8C", "Zdrqzywt"]}' \
    > test.out 2>&1
eval_tap $? 459 'ExportStore1' test.out

#- 460 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'EDy8eIek' \
    --body '{"entitlementCollectionId": "m1LpxI4H", "entitlementOrigin": "Steam", "metadata": {"OLrOEbb4": {}, "dHfogGEL": {}, "vVavBrH0": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "ux5cjldq", "namespace": "yAIHg4G8"}, "item": {"itemId": "RdY7OkIv", "itemName": "yRZdVWIO", "itemSku": "aRBUafcj", "itemType": "8OAGl3yi"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "bB6A01a3", "namespace": "8R1B37XC"}, "item": {"itemId": "6BgZA4We", "itemName": "vwb7vJsy", "itemSku": "GU1NVc9O", "itemType": "aMym0WRk"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "fysERuJi", "namespace": "q6AmUFB4"}, "item": {"itemId": "RSjLKHvu", "itemName": "POBuSbQB", "itemSku": "wamlLNxN", "itemType": "ztDMZwdq"}, "quantity": 49, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "zAqfa4w3"}' \
    > test.out 2>&1
eval_tap $? 460 'FulfillRewardsV2' test.out

#- 461 FulfillItems
samples/cli/sample-apps Platform fulfillItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'FrCuWOyr' \
    --userId 'xeML26B6' \
    --body '{"items": [{"duration": 94, "endDate": "1980-10-04T00:00:00Z", "entitlementCollectionId": "aPjus5SK", "entitlementOrigin": "GooglePlay", "itemId": "ttGTa3Aq", "itemSku": "kCbOcXax", "language": "fMbIN46m", "metadata": {"McnB6Z8O": {}, "6UQwiLFP": {}, "hoUyH1zI": {}}, "orderNo": "0a3lDgbJ", "origin": "Other", "quantity": 22, "region": "TiwRqggD", "source": "PURCHASE", "startDate": "1973-04-07T00:00:00Z", "storeId": "zYSQxrFi"}, {"duration": 75, "endDate": "1988-12-09T00:00:00Z", "entitlementCollectionId": "E1znKUsn", "entitlementOrigin": "Twitch", "itemId": "CSrnlCMH", "itemSku": "iiRuB2c3", "language": "cZZfq15C", "metadata": {"aezK8Lph": {}, "SRBLEjk1": {}, "sIcGMMJ5": {}}, "orderNo": "cABu31MS", "origin": "Playstation", "quantity": 63, "region": "ej5mgwuu", "source": "EXPIRATION", "startDate": "1991-11-28T00:00:00Z", "storeId": "Ft0igmrQ"}, {"duration": 21, "endDate": "1982-12-01T00:00:00Z", "entitlementCollectionId": "aPhitW3y", "entitlementOrigin": "System", "itemId": "uaPwXTVu", "itemSku": "jA63PFMn", "language": "2iLOywt8", "metadata": {"UxsSSQcB": {}, "3YZLrBYH": {}, "qWaRnlRn": {}}, "orderNo": "cMmF4ddz", "origin": "Nintendo", "quantity": 11, "region": "UJr7D2sn", "source": "REFERRAL_BONUS", "startDate": "1975-06-19T00:00:00Z", "storeId": "5dVrkDmj"}]}' \
    > test.out 2>&1
eval_tap $? 461 'FulfillItems' test.out

#- 462 RevokeItems
samples/cli/sample-apps Platform revokeItems \
    --namespace $AB_NAMESPACE \
    --transactionId 'XI1pZtPu' \
    --userId 'xwqwvC26' \
    > test.out 2>&1
eval_tap $? 462 'RevokeItems' test.out


rm -f "tmp.dat"

exit $EXIT_CODE