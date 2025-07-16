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
    --id 'v19r0S8H' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'LubQ7hwU' \
    --body '{"grantDays": "aLzydpcJ"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'JjeA6OQu' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'Mx9Zt7dA' \
    --body '{"grantDays": "NPyQADIg"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "KPIq1uN8", "dryRun": true, "fulfillmentUrl": "CT3FCyEd", "itemType": "COINS", "purchaseConditionUrl": "6IP0x2tW"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'S2iE4y2Q' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'YGFx5NPR' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'uBf2cW2z' \
    --body '{"clazz": "9dtgxq96", "dryRun": true, "fulfillmentUrl": "Ayzselaj", "purchaseConditionUrl": "l92M32mN"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'GMG01avs' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'vt6MFuWD' \
    --offset '7' \
    --tag 'YD6UeBqB' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p1aZ6j7m", "discountConfig": {"categories": [{"categoryPath": "j2b6aQFz", "includeSubCategories": true}, {"categoryPath": "tF8tDsiR", "includeSubCategories": false}, {"categoryPath": "CC9xHEE9", "includeSubCategories": true}], "currencyCode": "bAFR6VkS", "currencyNamespace": "PoojKNjl", "discountAmount": 12, "discountPercentage": 86, "discountType": "PERCENTAGE", "items": [{"itemId": "Kx91BD9e", "itemName": "GoaYlY6V"}, {"itemId": "DptCy5Yf", "itemName": "T7pz45Ww"}, {"itemId": "jIv2KZqu", "itemName": "H3Al9SWh"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 28, "itemId": "CgsjDrA8", "itemName": "H26rxoTw", "quantity": 53}, {"extraSubscriptionDays": 39, "itemId": "dEBG39hi", "itemName": "KNGTRrAT", "quantity": 5}, {"extraSubscriptionDays": 78, "itemId": "Rxpi6cjG", "itemName": "DI7TKZYt", "quantity": 28}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 24, "maxRedeemCountPerCodePerUser": 5, "maxSaleCount": 41, "name": "y4EsHfr9", "redeemEnd": "1976-09-09T00:00:00Z", "redeemStart": "1976-08-23T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["ZzZ5Khs3", "tatIGGGH", "qVCcgt8b"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'iyrMfK7V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'loq1FNrc' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QbOfhKFo", "discountConfig": {"categories": [{"categoryPath": "xwxuvyZN", "includeSubCategories": true}, {"categoryPath": "ImPHXzcd", "includeSubCategories": false}, {"categoryPath": "Y92PjmIS", "includeSubCategories": true}], "currencyCode": "DtIghXWK", "currencyNamespace": "Dev0Icbw", "discountAmount": 13, "discountPercentage": 1, "discountType": "PERCENTAGE", "items": [{"itemId": "F4tBPl5H", "itemName": "m83INzzW"}, {"itemId": "XXMyCRwB", "itemName": "IxdrmMVe"}, {"itemId": "NXa1AZR0", "itemName": "4gNj7R44"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 10, "itemId": "E5TWV46b", "itemName": "sUpkVu1U", "quantity": 73}, {"extraSubscriptionDays": 33, "itemId": "PHm0MB4B", "itemName": "yXlfGsCt", "quantity": 18}, {"extraSubscriptionDays": 50, "itemId": "O3QfpDXI", "itemName": "8FKUPAw2", "quantity": 13}], "maxRedeemCountPerCampaignPerUser": 75, "maxRedeemCountPerCode": 23, "maxRedeemCountPerCodePerUser": 64, "maxSaleCount": 76, "name": "RozRXnAQ", "redeemEnd": "1990-03-19T00:00:00Z", "redeemStart": "1999-07-21T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["UolOBpQz", "EwwKldHC", "9VR0MJfS"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId '1mHaGggR' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "9ihcEtMo", "oldName": "nvq2JtLi"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'Un158Jg1' \
    --namespace $AB_NAMESPACE \
    --batchName 'an2P67tc' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'gLJu5pIF' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["IAP", "DLC"]}' \
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
    --body '{"appConfig": {"appName": "xZlwi8Qa"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "puwwxZDX"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "NRrkCKUA"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "gsvywyXF"}, "extendType": "CUSTOM"}' \
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
    --storeId 'O7cj2i9L' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ourK5cNj' \
    --body '{"categoryPath": "ELffcftw", "localizationDisplayNames": {"DOc7zOwQ": "o6dMsAnH", "fq8e6SpO": "estohw7k", "7baWn57q": "GK7JLj9E"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'LN4ICHVM' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'ibgK9NFg' \
    --namespace $AB_NAMESPACE \
    --storeId 'Y1VWgy0r' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Qpa62UYw' \
    --namespace $AB_NAMESPACE \
    --storeId 'auRY5OOl' \
    --body '{"localizationDisplayNames": {"LVw6alPp": "AZDmvqB2", "UlfjZSn1": "aNo5XETA", "j0wgq3pa": "UPBBZTFc"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'vl04nVS8' \
    --namespace $AB_NAMESPACE \
    --storeId 'WEK8WaTj' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'z5qu1vm0' \
    --namespace $AB_NAMESPACE \
    --storeId 'nNnDrjew' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '4WWosO7m' \
    --namespace $AB_NAMESPACE \
    --storeId 'hFTfdEGZ' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '2W8UVcrG' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'YvBiLXkp' \
    --batchNo '[51, 12, 12]' \
    --code 'N0SvDg8p' \
    --limit '45' \
    --offset '41' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'I8KSraFu' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "DaTV6NWF", "codeValue": "fcIsBz5D", "quantity": 61}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'JSIWbiXv' \
    --namespace $AB_NAMESPACE \
    --batchName 'sVM8dnx2' \
    --batchNo '[68, 84, 52]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '3BuRpELU' \
    --namespace $AB_NAMESPACE \
    --batchName 'm0zRTM4J' \
    --batchNo '[56, 23, 75]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'SOtTCEQG' \
    --namespace $AB_NAMESPACE \
    --batchName 'OlVKTx0H' \
    --batchNo '[27, 61, 10]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'mlkxDQko' \
    --namespace $AB_NAMESPACE \
    --code '507gqrX6' \
    --limit '57' \
    --offset '63' \
    --userId 'AGnAGDvQ' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'SYiD5cR8' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'C4Xp2A7U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'EitPIP1v' \
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
    --body '{"currencyCode": "kWJ7tNOu", "currencySymbol": "rR6rwBhI", "currencyType": "REAL", "decimals": 0, "localizationDescriptions": {"mTx8w44p": "0w11QCfG", "tLglf0aa": "lFOKL308", "KnEkIVF9": "fmUtzUWi"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'FY7LFwZs' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"VkolV6hU": "hnOKKDqe", "AAXh9WL6": "AHuSFkL9", "kkN44ADY": "0303Cjdx"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'QtxgdB3U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'n2ij2Pcc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'Jf3928w4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId 'FkKyGThv' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'FlUMnzNm' \
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
    --body '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "CWCJ4Ohc", "rewards": [{"currency": {"currencyCode": "nb2630FB", "namespace": "eRyzjDFD"}, "item": {"itemId": "4dYomQaz", "itemName": "sHvwdFZM", "itemSku": "ocd7poUS", "itemType": "Q4HQJ0rk"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "7So3tP4M", "namespace": "CfeadTOq"}, "item": {"itemId": "M7Vd227N", "itemName": "U2y5dnED", "itemSku": "cqU7ckAd", "itemType": "ycy6XS54"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "OPX4dDEi", "namespace": "cPg6iUXr"}, "item": {"itemId": "QrtcXx1C", "itemName": "R4Eui1Jq", "itemSku": "AZLyrlYk", "itemType": "IaQBE7Jb"}, "quantity": 68, "type": "CURRENCY"}], "rvn": 78}, {"autoUpdate": false, "enableRevocation": false, "id": "uVX1FFSz", "rewards": [{"currency": {"currencyCode": "H0TaCnCD", "namespace": "VRTaYyca"}, "item": {"itemId": "ioGs0xz5", "itemName": "XMRVV6IQ", "itemSku": "duit2Iyl", "itemType": "skyAs6uS"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "zur6HM4t", "namespace": "IKsKrY82"}, "item": {"itemId": "XVeOOIZe", "itemName": "gLKdu7Yb", "itemSku": "P9PFXdBQ", "itemType": "Xq5MzawX"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "InrnUqi6", "namespace": "RzBgRW04"}, "item": {"itemId": "ZNhoyArU", "itemName": "Y7GgDGUb", "itemSku": "qkN2oS6B", "itemType": "jjWVk6G7"}, "quantity": 49, "type": "ITEM"}], "rvn": 36}, {"autoUpdate": true, "enableRevocation": false, "id": "5F8AiqE1", "rewards": [{"currency": {"currencyCode": "RpbMWsbO", "namespace": "36h7RhBG"}, "item": {"itemId": "4TxD9OaW", "itemName": "SceJVCNW", "itemSku": "TRmUUbum", "itemType": "fY7DKSYu"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"currencyCode": "ypCiJB7b", "namespace": "qBvGZNgB"}, "item": {"itemId": "fFCQizP6", "itemName": "aWX8ZzTW", "itemSku": "iRNwznSm", "itemType": "uAQZVChX"}, "quantity": 17, "type": "ITEM"}, {"currency": {"currencyCode": "MXzFhrvO", "namespace": "i7sZDCbK"}, "item": {"itemId": "sC7S6arY", "itemName": "3cMDcV22", "itemSku": "8bahvXDy", "itemType": "wVGNdllO"}, "quantity": 64, "type": "CURRENCY"}], "rvn": 73}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"sWQRGIDy": "jwYRJlSl", "rpZVrjPD": "6QYjDln4", "SsXEOnGP": "AC5aot6r"}}, {"platform": "OCULUS", "platformDlcIdMap": {"EULFlcXo": "MgQuZqmr", "VVPjuFlZ": "z3qAygXi", "TZRthlk8": "ZSAcpi2F"}}, {"platform": "STEAM", "platformDlcIdMap": {"RdPr4wql": "6cuj0HUK", "sdYUUx0A": "mNftNPU1", "OVaE3cDQ": "gQQw6CD2"}}]}' \
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
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'r1a39dRu' \
    --itemId '["8FKAAygH", "aSWhWB07", "Hcb4FOOs"]' \
    --limit '90' \
    --offset '85' \
    --origin 'Xbox' \
    --userId 'rsnpinQw' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["kPjkNjh4", "Zw4oXWlB", "oprwdSzh"]' \
    --limit '23' \
    --offset '14' \
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
    --body '{"entitlementGrantList": [{"collectionId": "fxQnVfPc", "endDate": "1972-02-22T00:00:00Z", "grantedCode": "s3ksaa5I", "itemId": "J2L7oWio", "itemNamespace": "Ws3KGnX5", "language": "le_fdXm-876", "metadata": {"j9kWlD1R": {}, "Uf76209j": {}, "1Q1NgfOi": {}}, "origin": "Twitch", "quantity": 80, "region": "Wb5rGHXp", "source": "GIFT", "startDate": "1987-11-27T00:00:00Z", "storeId": "FAS17SWK"}, {"collectionId": "anHb8szV", "endDate": "1989-10-10T00:00:00Z", "grantedCode": "shsNuo0R", "itemId": "mZnv1TB5", "itemNamespace": "jdoOrQpr", "language": "Vi_lsrV_Fu", "metadata": {"Ol0rLMul": {}, "QQkBDjYO": {}, "AFiHsC3y": {}}, "origin": "Playstation", "quantity": 56, "region": "hBtfnoXa", "source": "ACHIEVEMENT", "startDate": "1989-12-31T00:00:00Z", "storeId": "LLbTnJla"}, {"collectionId": "Op7Ib5AR", "endDate": "1998-06-04T00:00:00Z", "grantedCode": "QbSRSVst", "itemId": "DFez4enp", "itemNamespace": "CuW6S4tO", "language": "DyEu-ePEs-920", "metadata": {"4eQ5NIEU": {}, "AJtI0fyM": {}, "1nRkaX5o": {}}, "origin": "Playstation", "quantity": 45, "region": "1GSBU8U6", "source": "REDEEM_CODE", "startDate": "1978-12-25T00:00:00Z", "storeId": "Rm2VmUbG"}], "userIds": ["oNYdMtR0", "gD4ngsEs", "kDrIEMRS"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["wnMmTBcK", "pUlnoL3A", "0EFMdiof"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'fLr2J4c4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '48' \
    --status 'FAIL' \
    --userId 'y5XSNHhi' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'D9cC2vWq' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'ORlKeNb4' \
    --limit '6' \
    --offset '80' \
    --startTime 'no8XUjBQ' \
    --status 'INIT' \
    --userId '7eXwD6qw' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "yvc0HipE", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 78, "clientTransactionId": "v19izOpl"}, {"amountConsumed": 50, "clientTransactionId": "BGTOLFiw"}, {"amountConsumed": 62, "clientTransactionId": "rZTEd7zl"}], "entitlementId": "yBiwMZqB", "usageCount": 81}, {"clientTransaction": [{"amountConsumed": 48, "clientTransactionId": "4sGt3V9w"}, {"amountConsumed": 17, "clientTransactionId": "oBFb51tS"}, {"amountConsumed": 92, "clientTransactionId": "w1K1uTKg"}], "entitlementId": "kGYX91q6", "usageCount": 58}, {"clientTransaction": [{"amountConsumed": 46, "clientTransactionId": "GgWSynTT"}, {"amountConsumed": 6, "clientTransactionId": "YWfBmxtM"}, {"amountConsumed": 75, "clientTransactionId": "mSVXEDyZ"}], "entitlementId": "MeM7wpHP", "usageCount": 38}], "purpose": "RcUG5otF"}, "originalTitleName": "SB6yztKn", "paymentProductSKU": "Ijgg2bsk", "purchaseDate": "3l33zly4", "sourceOrderItemId": "pelyMtvO", "titleName": "1ou3PMri"}, "eventDomain": "hqlj7wKT", "eventSource": "LTReBS36", "eventType": "YsuBzeLM", "eventVersion": 42, "id": "CQvAMcaB", "timestamp": "lpJlz00m"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "JgnBXHbz", "eventState": "9DLaAgCb", "lineItemId": "zEPm5WcA", "orderId": "R5wfT6zn", "productId": "Qb86l65o", "productType": "HONoR8Dk", "purchasedDate": "RlDKGkJd", "sandboxId": "fCpKiqDM", "skuId": "zeu2OzPN", "subscriptionData": {"consumedDurationInDays": 48, "dateTime": "s4IuLved", "durationInDays": 80, "recurrenceId": "32n4hvxc"}}, "datacontenttype": "xjaSqKO5", "id": "Df228Vjy", "source": "qWmhSgcc", "specVersion": "12N7rGJP", "subject": "LvE5Xsh9", "time": "nsRW1Pra", "traceparent": "36Db3Vpr", "type": "NSySWnFg"}' \
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
    --body '{"appAppleId": 39, "bundleId": "9qpG03ar", "issuerId": "uY6sr3WT", "keyId": "emaobZ0p", "password": "7WfkhKyl", "version": "V2"}' \
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
    --body '{"sandboxId": "ftBlJrXW"}' \
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
    --body '{"applicationName": "BaxqJ97y", "notificationTokenAudience": "rHoWgrFB", "notificationTokenEmail": "owlnc0UG", "packageName": "Y7GHtKfH", "serviceAccountId": "AV5BEm36"}' \
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
    --body '{"data": [{"itemIdentity": "1XarEkuH", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"B4TIzNPx": "1cVNATI9", "2iRMV37Y": "RHS0lX41", "lsyHDYLH": "ip8lyImj"}}, {"itemIdentity": "i0orEPZf", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"F55Ej0Kq": "Sh6XW2fj", "ANs7EbvS": "NHJLPvPY", "zayPRfEw": "NVztU86u"}}, {"itemIdentity": "MykA2w5d", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"acgl5tv0": "y69TGjpH", "Zvk9vE9l": "A8zQ4p3p", "b5Rqic22": "NHpvHBC1"}}]}' \
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
    --body '{"appId": "YTnqNsop", "appSecret": "MYsnO6Ej"}' \
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
    --body '{"backOfficeServerClientId": "T5mCxNp3", "backOfficeServerClientSecret": "y9d75XVT", "enableStreamJob": false, "environment": "zl7sO0oP", "streamName": "3Ln8OYhE", "streamPartnerName": "BVwrJ4vL"}' \
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
    --body '{"backOfficeServerClientId": "sHLuu0p2", "backOfficeServerClientSecret": "uRkcB6VF", "enableStreamJob": true, "environment": "hFJQ2ydW", "streamName": "J6PYe32X", "streamPartnerName": "r0lYT4bd"}' \
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
    --body '{"appId": "AthQVC06", "env": "LIVE", "publisherAuthenticationKey": "0AdHJEux", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "OXvNlQyg", "clientSecret": "jq4dx8q5", "organizationId": "xGa4X7oz"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "tFxZnhgf", "entraAppClientSecret": "i6wEIcWb", "entraTenantId": "pc23fRa0", "relyingPartyCert": "BZ6V2kP8"}' \
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
    --password 'AKzge5A1' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'xbWslfaL' \
    --externalId 'naa6W67m' \
    --limit '92' \
    --offset '1' \
    --source 'OCULUS' \
    --startDate 'wfyn0Qfs' \
    --status 'IGNORED' \
    --type 'OzVyf0Ku' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '98' \
    --orderId 'KqsjdCI2' \
    --steamId 'bIkMow57' \
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
    --body '{"env": "LIVE", "lastTime": "1992-11-16T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'b4rIwCV3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '21' \
    --orderId 'I6dWWPbB' \
    --processStatus 'ERROR' \
    --steamId '23Dz8nqz' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId '1K3A1lou' \
    --limit '87' \
    --offset '89' \
    --platform 'PLAYSTATION' \
    --productId '0wCYSCZA' \
    --userId 'mNSIUzzX' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'FYBS0KyK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'EGdUF14P' \
    --feature 'NUJkCETu' \
    --itemId 'ngiTxfOP' \
    --itemType 'APP' \
    --startTime '2uIU2i02' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'hRBnrsKu' \
    --feature 'TQhdzlH6' \
    --itemId '5MK50lSf' \
    --itemType 'MEDIA' \
    --startTime 'pySfOYdE' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'N7khHtop' \
    --body '{"categoryPath": "Xiw3S1cq", "targetItemId": "2lDUECaT", "targetNamespace": "ZZDuJ51T"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'FP4p4C31' \
    --body '{"appId": "ou1GGo8P", "appType": "GAME", "baseAppId": "z275Ryv2", "boothName": "cI4DYL4j", "categoryPath": "w8c0VV2l", "clazz": "Ggm3fo9Q", "displayOrder": 31, "entitlementType": "DURABLE", "ext": {"ew0pCkmE": {}, "AsZ6dYCO": {}, "6t6j3cic": {}}, "features": ["shOuEi2n", "SOnoRU0B", "pri4dF9k"], "flexible": true, "images": [{"as": "cP72ubLO", "caption": "YFtzB41y", "height": 14, "imageUrl": "QKqgyU9O", "smallImageUrl": "6wL7pW4i", "width": 76}, {"as": "SVgpfxsk", "caption": "rIL7L08E", "height": 51, "imageUrl": "2lrwI29K", "smallImageUrl": "NeM66xP1", "width": 3}, {"as": "CzbGGuie", "caption": "Lhj0dbDk", "height": 30, "imageUrl": "F8UcwXLk", "smallImageUrl": "gRFcErSS", "width": 34}], "inventoryConfig": {"customAttributes": {"33UUgp6w": {}, "voQKlItI": {}, "mbs6FLpz": {}}, "serverCustomAttributes": {"TSOakYda": {}, "UHDvacxR": {}, "kAsZFa3M": {}}, "slotUsed": 41}, "itemIds": ["lIWle61U", "tstK7Vro", "PP5qpw0j"], "itemQty": {"SOp1skAJ": 4, "o0UPC7Mk": 10, "YCZnfrVG": 2}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"6r2YyOau": {"description": "GTPmvVvh", "localExt": {"FZb5cr6J": {}, "wuPC2sGr": {}, "gTVJFyBo": {}}, "longDescription": "pq77YHcU", "title": "TVkCJEzt"}, "qtO87zwN": {"description": "DRkym8YE", "localExt": {"0ANxK128": {}, "w4fB8vYm": {}, "WQYtZHU2": {}}, "longDescription": "V73Yh5Nt", "title": "dPKFrRd2"}, "tHCD1I3f": {"description": "3JEOQHjY", "localExt": {"3aJJcpxr": {}, "OuQMGIDc": {}, "s2OrhE55": {}}, "longDescription": "qVEnva6N", "title": "7XgiuewD"}}, "lootBoxConfig": {"rewardCount": 21, "rewards": [{"lootBoxItems": [{"count": 15, "duration": 91, "endDate": "1984-03-02T00:00:00Z", "itemId": "W9XcOeeX", "itemSku": "ANXio5Yz", "itemType": "wZjAcfFP"}, {"count": 15, "duration": 4, "endDate": "1971-11-02T00:00:00Z", "itemId": "XGVTqTqu", "itemSku": "WNqNpLlH", "itemType": "fXvD1UxE"}, {"count": 78, "duration": 75, "endDate": "1978-08-04T00:00:00Z", "itemId": "1q4HGYqY", "itemSku": "gJ8y6naR", "itemType": "dI5U5LZE"}], "name": "OhE4wdQW", "odds": 0.8884076342550857, "type": "REWARD", "weight": 61}, {"lootBoxItems": [{"count": 45, "duration": 65, "endDate": "1991-04-25T00:00:00Z", "itemId": "QvvdhERB", "itemSku": "yLPjpdpG", "itemType": "tXAM22Mt"}, {"count": 79, "duration": 36, "endDate": "1982-08-16T00:00:00Z", "itemId": "xatN4kjF", "itemSku": "TuFED1xu", "itemType": "7m6RyRlt"}, {"count": 91, "duration": 83, "endDate": "1974-12-29T00:00:00Z", "itemId": "nxwSgNUu", "itemSku": "NlOuYQZD", "itemType": "c31IZ3Es"}], "name": "7FZmkPf8", "odds": 0.17153521200026978, "type": "PROBABILITY_GROUP", "weight": 3}, {"lootBoxItems": [{"count": 51, "duration": 65, "endDate": "1977-01-19T00:00:00Z", "itemId": "LJ0qrzlM", "itemSku": "LcMXuTWc", "itemType": "6QZNsPYg"}, {"count": 46, "duration": 99, "endDate": "1985-01-17T00:00:00Z", "itemId": "jYWbCbiU", "itemSku": "AGAlQ9Hi", "itemType": "Nb47FJY7"}, {"count": 38, "duration": 57, "endDate": "1982-11-28T00:00:00Z", "itemId": "Iu9KjyG3", "itemSku": "NpEXV4YO", "itemType": "F7Mmxou0"}], "name": "CCGMYauj", "odds": 0.15610663601805685, "type": "REWARD_GROUP", "weight": 74}], "rollFunction": "CUSTOM"}, "maxCount": 84, "maxCountPerUser": 36, "name": "Q2EEfSdl", "optionBoxConfig": {"boxItems": [{"count": 33, "duration": 61, "endDate": "1978-09-02T00:00:00Z", "itemId": "yQKLtasR", "itemSku": "euiUGwts", "itemType": "FUfbBc2I"}, {"count": 35, "duration": 75, "endDate": "1983-03-03T00:00:00Z", "itemId": "e4KZRfUD", "itemSku": "sWvubCfk", "itemType": "GrbnsTub"}, {"count": 40, "duration": 60, "endDate": "1993-05-27T00:00:00Z", "itemId": "5hvUroVZ", "itemSku": "NTVrF3nx", "itemType": "EArQTHTY"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 56, "graceDays": 2}, "regionData": {"DI1zfUuB": [{"currencyCode": "8OA09WXs", "currencyNamespace": "yvL6ALi8", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1983-03-03T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1999-06-03T00:00:00Z", "expireAt": "1979-01-25T00:00:00Z", "price": 66, "purchaseAt": "1996-11-19T00:00:00Z", "trialPrice": 13}, {"currencyCode": "GZOekmFD", "currencyNamespace": "YelJUrOl", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1985-08-02T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1993-11-06T00:00:00Z", "expireAt": "1984-12-03T00:00:00Z", "price": 34, "purchaseAt": "1988-01-31T00:00:00Z", "trialPrice": 25}, {"currencyCode": "mbXOrwYu", "currencyNamespace": "797UuEqN", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1977-08-30T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1994-10-21T00:00:00Z", "expireAt": "1989-08-01T00:00:00Z", "price": 44, "purchaseAt": "1991-01-10T00:00:00Z", "trialPrice": 36}], "yZzNiSvJ": [{"currencyCode": "5zF7re6F", "currencyNamespace": "FHXr5PHt", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1988-07-29T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1979-01-22T00:00:00Z", "expireAt": "1990-06-30T00:00:00Z", "price": 93, "purchaseAt": "1991-02-18T00:00:00Z", "trialPrice": 77}, {"currencyCode": "sizYcYP7", "currencyNamespace": "cODt9HcO", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1987-02-14T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-01-18T00:00:00Z", "expireAt": "1987-05-21T00:00:00Z", "price": 72, "purchaseAt": "1989-08-06T00:00:00Z", "trialPrice": 19}, {"currencyCode": "0A3NGbjU", "currencyNamespace": "UQX1xMrO", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1980-08-22T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1974-07-29T00:00:00Z", "expireAt": "1987-05-07T00:00:00Z", "price": 24, "purchaseAt": "1995-12-16T00:00:00Z", "trialPrice": 75}], "4N7RmbHn": [{"currencyCode": "TNRsosKo", "currencyNamespace": "5NFCqtXI", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1977-02-28T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1971-09-14T00:00:00Z", "expireAt": "1998-02-04T00:00:00Z", "price": 99, "purchaseAt": "1995-07-18T00:00:00Z", "trialPrice": 96}, {"currencyCode": "yhdlFtaG", "currencyNamespace": "nwvaGUGq", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1977-05-12T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1971-08-07T00:00:00Z", "expireAt": "1992-06-05T00:00:00Z", "price": 42, "purchaseAt": "1976-04-13T00:00:00Z", "trialPrice": 71}, {"currencyCode": "DvfOAqwA", "currencyNamespace": "0L9pFPja", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1981-09-28T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1971-05-27T00:00:00Z", "expireAt": "1992-01-23T00:00:00Z", "price": 63, "purchaseAt": "1999-07-19T00:00:00Z", "trialPrice": 14}]}, "saleConfig": {"currencyCode": "G65zYWt9", "price": 64}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "5UYzp4oh", "stackable": false, "status": "ACTIVE", "tags": ["jQsSNnoN", "ontXeHGN", "J8Q4dO7j"], "targetCurrencyCode": "7Ay3w0zc", "targetNamespace": "ZpiNs4uY", "thumbnailUrl": "5Z3HOrxe", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'dfIVRV77' \
    --appId 'w1ntLdVW' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'xY0pUwLT' \
    --baseAppId 'fGwiUJZJ' \
    --categoryPath 'td4GeJeo' \
    --features 'L6taA8De' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --limit '44' \
    --offset '95' \
    --region 'Q3nJFVKl' \
    --sortBy '["updatedAt", "name", "name:asc"]' \
    --storeId '6XP9JxHj' \
    --tags 'OZMv5UhK' \
    --targetNamespace 'T39K0N1s' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["jVGpxyBT", "EWtEnwKH", "NplIQIWb"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'eAEBcW60' \
    --itemIds 'gToo5TtL' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '2BNAVbH2' \
    --sku 'YurflxYN' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'KuNP5ZKA' \
    --populateBundle 'true' \
    --region 'JXsu5PZK' \
    --storeId 'iKXPj6bu' \
    --sku 'SZJ2IKpP' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'Mf6QsX3E' \
    --region 'hB9YCIJH' \
    --storeId 'zv5NiPV9' \
    --itemIds 'PRbfmItb' \
    --userId 'uxS1wDYx' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'LpKD9y3x' \
    --sku 'c0j5iF3Q' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["w23RgHsi", "eVsZJvYc", "MvtktxCX"]' \
    --storeId 'iJaA5e4F' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'RSSXJGba' \
    --region '4igWs83K' \
    --storeId 'DxTSbnKi' \
    --itemIds 'jKglOR2X' \
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
    --platform 'YW2EG1ry' \
    --userId 'Tb5x31Kw' \
    --body '{"itemIds": ["E54PX2zm", "RCayXxRg", "cvxA3Ka0"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'sGonWuVd' \
    --body '{"changes": [{"itemIdentities": ["CEdzVNQI", "dKZYh7Nk", "5NmBfszu"], "itemIdentityType": "ITEM_ID", "regionData": {"NZLE2OP1": [{"currencyCode": "CERsu1rD", "currencyNamespace": "uoJMXewA", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1989-10-06T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1985-11-09T00:00:00Z", "discountedPrice": 6, "expireAt": "1979-09-04T00:00:00Z", "price": 97, "purchaseAt": "1991-05-19T00:00:00Z", "trialPrice": 36}, {"currencyCode": "nVm57kPV", "currencyNamespace": "bN16qiNG", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1976-04-27T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-11-03T00:00:00Z", "discountedPrice": 72, "expireAt": "1988-05-09T00:00:00Z", "price": 26, "purchaseAt": "1976-03-13T00:00:00Z", "trialPrice": 54}, {"currencyCode": "97DRVG9K", "currencyNamespace": "oSJw22Vt", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1993-09-02T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1990-12-30T00:00:00Z", "discountedPrice": 98, "expireAt": "1978-07-03T00:00:00Z", "price": 84, "purchaseAt": "1971-07-12T00:00:00Z", "trialPrice": 58}], "uMq4iFHH": [{"currencyCode": "8zvYOf4C", "currencyNamespace": "hdXJSv97", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1994-08-11T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1981-07-29T00:00:00Z", "discountedPrice": 82, "expireAt": "1985-08-02T00:00:00Z", "price": 37, "purchaseAt": "1993-05-05T00:00:00Z", "trialPrice": 0}, {"currencyCode": "3J1CWW4e", "currencyNamespace": "yA5BOya1", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1991-11-26T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1990-12-28T00:00:00Z", "discountedPrice": 82, "expireAt": "1998-09-13T00:00:00Z", "price": 80, "purchaseAt": "1999-03-22T00:00:00Z", "trialPrice": 54}, {"currencyCode": "hbX8BJ34", "currencyNamespace": "7MuXffRm", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1992-06-16T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1999-10-30T00:00:00Z", "discountedPrice": 44, "expireAt": "1973-06-11T00:00:00Z", "price": 51, "purchaseAt": "1972-04-24T00:00:00Z", "trialPrice": 4}], "PlCabEuP": [{"currencyCode": "BlxgJbu5", "currencyNamespace": "28vk0VXR", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1972-08-06T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1976-06-12T00:00:00Z", "discountedPrice": 39, "expireAt": "1984-08-16T00:00:00Z", "price": 8, "purchaseAt": "1978-05-03T00:00:00Z", "trialPrice": 98}, {"currencyCode": "FCsywFrn", "currencyNamespace": "tvWoqkTV", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1993-12-26T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1980-09-01T00:00:00Z", "discountedPrice": 66, "expireAt": "1981-02-17T00:00:00Z", "price": 4, "purchaseAt": "1980-09-19T00:00:00Z", "trialPrice": 99}, {"currencyCode": "o6maQ4cr", "currencyNamespace": "S0aqrAUc", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1996-01-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1985-08-10T00:00:00Z", "discountedPrice": 67, "expireAt": "1988-01-08T00:00:00Z", "price": 77, "purchaseAt": "1988-03-11T00:00:00Z", "trialPrice": 27}]}}, {"itemIdentities": ["q2W7X0iU", "UJLmBGwX", "ddfplAwQ"], "itemIdentityType": "ITEM_ID", "regionData": {"G1YX0vxd": [{"currencyCode": "V45ZQwh3", "currencyNamespace": "YGzefnF0", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1992-03-10T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1987-02-08T00:00:00Z", "discountedPrice": 90, "expireAt": "1975-12-28T00:00:00Z", "price": 41, "purchaseAt": "1976-02-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "4XpqdsS2", "currencyNamespace": "U7BVLk0n", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1977-07-10T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1987-06-14T00:00:00Z", "discountedPrice": 45, "expireAt": "1971-02-27T00:00:00Z", "price": 65, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 6}, {"currencyCode": "GtT8E4Qs", "currencyNamespace": "iVibP2i7", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1987-08-08T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1980-07-15T00:00:00Z", "discountedPrice": 18, "expireAt": "1994-06-22T00:00:00Z", "price": 1, "purchaseAt": "1980-01-22T00:00:00Z", "trialPrice": 0}], "TMmJrNYk": [{"currencyCode": "Ic8s59xq", "currencyNamespace": "pcz23wSC", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1993-09-08T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1977-01-22T00:00:00Z", "discountedPrice": 13, "expireAt": "1991-07-20T00:00:00Z", "price": 48, "purchaseAt": "1989-10-26T00:00:00Z", "trialPrice": 78}, {"currencyCode": "LMFaADMg", "currencyNamespace": "4kQdU61g", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1982-08-14T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1981-06-10T00:00:00Z", "discountedPrice": 25, "expireAt": "1994-12-04T00:00:00Z", "price": 67, "purchaseAt": "1982-12-30T00:00:00Z", "trialPrice": 53}, {"currencyCode": "VFkyDa1s", "currencyNamespace": "0uQIOUkn", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1980-03-21T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-09-24T00:00:00Z", "discountedPrice": 68, "expireAt": "1998-03-08T00:00:00Z", "price": 36, "purchaseAt": "1978-02-21T00:00:00Z", "trialPrice": 67}], "bGEx526s": [{"currencyCode": "c5m0F0sc", "currencyNamespace": "8BKExNA3", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1973-01-02T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1987-03-06T00:00:00Z", "discountedPrice": 12, "expireAt": "1972-03-26T00:00:00Z", "price": 60, "purchaseAt": "1994-05-03T00:00:00Z", "trialPrice": 52}, {"currencyCode": "2xJSV205", "currencyNamespace": "Px7nrRgL", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1972-01-30T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1986-01-17T00:00:00Z", "discountedPrice": 23, "expireAt": "1978-01-27T00:00:00Z", "price": 64, "purchaseAt": "1979-03-25T00:00:00Z", "trialPrice": 94}, {"currencyCode": "eNXzqDdz", "currencyNamespace": "xn7iLUTn", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1974-05-26T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1990-09-17T00:00:00Z", "discountedPrice": 45, "expireAt": "1978-03-25T00:00:00Z", "price": 14, "purchaseAt": "1979-08-22T00:00:00Z", "trialPrice": 33}]}}, {"itemIdentities": ["tdDUq5di", "XW2cnzQF", "KadHU5Tk"], "itemIdentityType": "ITEM_SKU", "regionData": {"1g4mAuZ2": [{"currencyCode": "jmabOa2D", "currencyNamespace": "bh2PN4Mk", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1989-11-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1999-04-25T00:00:00Z", "discountedPrice": 51, "expireAt": "1979-05-07T00:00:00Z", "price": 52, "purchaseAt": "1989-09-27T00:00:00Z", "trialPrice": 80}, {"currencyCode": "meKKr2Um", "currencyNamespace": "yNwlWY69", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1991-03-01T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1986-02-10T00:00:00Z", "discountedPrice": 39, "expireAt": "1984-05-08T00:00:00Z", "price": 9, "purchaseAt": "1999-03-17T00:00:00Z", "trialPrice": 37}, {"currencyCode": "j8NAbx0O", "currencyNamespace": "sP50rGvZ", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1988-08-13T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1997-02-18T00:00:00Z", "discountedPrice": 52, "expireAt": "1980-10-15T00:00:00Z", "price": 35, "purchaseAt": "1984-10-07T00:00:00Z", "trialPrice": 52}], "OamnW252": [{"currencyCode": "b07NfjDO", "currencyNamespace": "tH3J3Rkw", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1995-06-14T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1975-08-24T00:00:00Z", "discountedPrice": 43, "expireAt": "1971-07-31T00:00:00Z", "price": 74, "purchaseAt": "1976-11-23T00:00:00Z", "trialPrice": 74}, {"currencyCode": "61Qnp5kI", "currencyNamespace": "QwV4hy5v", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1974-11-11T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1972-08-18T00:00:00Z", "discountedPrice": 24, "expireAt": "1995-12-12T00:00:00Z", "price": 70, "purchaseAt": "1975-06-03T00:00:00Z", "trialPrice": 44}, {"currencyCode": "QDxzQexR", "currencyNamespace": "gDnVzMnz", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1993-12-23T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1983-01-19T00:00:00Z", "discountedPrice": 22, "expireAt": "1998-02-04T00:00:00Z", "price": 92, "purchaseAt": "1985-08-28T00:00:00Z", "trialPrice": 94}], "lPDz7iFd": [{"currencyCode": "T9N9tIFT", "currencyNamespace": "OhibKU2R", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1979-01-30T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1989-10-20T00:00:00Z", "discountedPrice": 84, "expireAt": "1972-07-02T00:00:00Z", "price": 35, "purchaseAt": "1975-03-18T00:00:00Z", "trialPrice": 59}, {"currencyCode": "UYBw4LtL", "currencyNamespace": "4vD9KJjx", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1981-08-19T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1982-12-04T00:00:00Z", "discountedPrice": 45, "expireAt": "1979-06-22T00:00:00Z", "price": 55, "purchaseAt": "1971-07-16T00:00:00Z", "trialPrice": 23}, {"currencyCode": "nEJpVoya", "currencyNamespace": "WEghjD3F", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1987-07-27T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1984-11-27T00:00:00Z", "discountedPrice": 68, "expireAt": "1975-04-20T00:00:00Z", "price": 81, "purchaseAt": "1975-09-20T00:00:00Z", "trialPrice": 59}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SEASON' \
    --limit '25' \
    --offset '16' \
    --sortBy '1gAxdbl1' \
    --storeId 'jkHVj8V1' \
    --keyword '5OMufPuB' \
    --language 'KoIbmNvr' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '32' \
    --offset '2' \
    --sortBy '["updatedAt:desc", "displayOrder:asc"]' \
    --storeId 'y2vhFyKu' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'BJ4NXN7U' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qlLyS23e' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '58tDe358' \
    --namespace $AB_NAMESPACE \
    --storeId 'jhLugMEI' \
    --body '{"appId": "xwv5mVR2", "appType": "SOFTWARE", "baseAppId": "KYb1HdrJ", "boothName": "kbeyZS3P", "categoryPath": "mNhspYK5", "clazz": "mSW0axdG", "displayOrder": 41, "entitlementType": "CONSUMABLE", "ext": {"3OqkzwbD": {}, "bSUOGHcJ": {}, "65tHs8Ub": {}}, "features": ["UFGflk4f", "M0QlchRN", "4F6SISn2"], "flexible": true, "images": [{"as": "OrTXbDbG", "caption": "Iiw3FLKb", "height": 93, "imageUrl": "CQpzIls5", "smallImageUrl": "EDHj0V4d", "width": 34}, {"as": "lM1yY9t0", "caption": "1beXK1ys", "height": 73, "imageUrl": "gXf1aoNJ", "smallImageUrl": "WEYCgEDU", "width": 80}, {"as": "PUFDr7Rv", "caption": "B0AGEHoJ", "height": 25, "imageUrl": "0mynyVmC", "smallImageUrl": "Ih4HTaCa", "width": 28}], "inventoryConfig": {"customAttributes": {"ordNiLvk": {}, "uRCDyCgX": {}, "z56aGuV0": {}}, "serverCustomAttributes": {"fFYPVlFg": {}, "fgK6UiY8": {}, "w0G7jPIk": {}}, "slotUsed": 9}, "itemIds": ["strH23p7", "PqJWH49u", "ZDTnsa6Y"], "itemQty": {"QICLodav": 34, "3gAlaUXi": 62, "mSu7HRbB": 37}, "itemType": "BUNDLE", "listable": false, "localizations": {"n4xn5ujp": {"description": "gB50vWJv", "localExt": {"D4Oa0ZRo": {}, "AFXLH0Jn": {}, "zByTTStA": {}}, "longDescription": "2i6Cr9Gz", "title": "C5S3aDgJ"}, "BTeNxVTE": {"description": "lo5hBjBy", "localExt": {"U3kyik9q": {}, "sSdN0Lpk": {}, "ZmOP3CRX": {}}, "longDescription": "YX8SSxl3", "title": "YiiC9zAw"}, "LEuwMfUR": {"description": "mo4ZloQr", "localExt": {"hMPpG5LS": {}, "Q62m8UhE": {}, "J78p7Tcp": {}}, "longDescription": "HOcS2QHx", "title": "QseFgceY"}}, "lootBoxConfig": {"rewardCount": 71, "rewards": [{"lootBoxItems": [{"count": 14, "duration": 99, "endDate": "1984-06-01T00:00:00Z", "itemId": "zIE1tfh2", "itemSku": "Zv0XO24E", "itemType": "EDHsmUHm"}, {"count": 43, "duration": 35, "endDate": "1978-11-21T00:00:00Z", "itemId": "UTlWHteP", "itemSku": "r4wsi9H8", "itemType": "Z8NKW5SX"}, {"count": 51, "duration": 26, "endDate": "1974-09-17T00:00:00Z", "itemId": "LkIx9EDq", "itemSku": "H1DRU1oU", "itemType": "ZAa8gDpM"}], "name": "4HPYsNw8", "odds": 0.48668130404889154, "type": "REWARD_GROUP", "weight": 8}, {"lootBoxItems": [{"count": 69, "duration": 27, "endDate": "1984-08-23T00:00:00Z", "itemId": "PMYcsrYk", "itemSku": "6pDh0I8Q", "itemType": "rDrYo51L"}, {"count": 57, "duration": 30, "endDate": "1990-05-09T00:00:00Z", "itemId": "p02jfmZ6", "itemSku": "bp4wUKv1", "itemType": "DOPa1rhU"}, {"count": 72, "duration": 0, "endDate": "1999-01-13T00:00:00Z", "itemId": "SsKu3lOt", "itemSku": "kLqPiwnX", "itemType": "TQV7g7Mp"}], "name": "bC4ZBiQK", "odds": 0.4832025743117151, "type": "REWARD_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 22, "duration": 54, "endDate": "1996-08-11T00:00:00Z", "itemId": "iRNtSzle", "itemSku": "uQVW33Fk", "itemType": "t7GyQLWL"}, {"count": 84, "duration": 97, "endDate": "1978-05-21T00:00:00Z", "itemId": "ftAr1j1Z", "itemSku": "3nplumyL", "itemType": "v6I2MFYX"}, {"count": 64, "duration": 99, "endDate": "1981-07-31T00:00:00Z", "itemId": "m65zyvvE", "itemSku": "F8R3kubs", "itemType": "09hcf1Bu"}], "name": "Vp9NMmvP", "odds": 0.0025055268289169152, "type": "REWARD", "weight": 62}], "rollFunction": "CUSTOM"}, "maxCount": 19, "maxCountPerUser": 30, "name": "qfG5Go0u", "optionBoxConfig": {"boxItems": [{"count": 51, "duration": 58, "endDate": "1972-10-08T00:00:00Z", "itemId": "5vHQ23iX", "itemSku": "FBVj175j", "itemType": "HBq62Rar"}, {"count": 83, "duration": 20, "endDate": "1990-05-21T00:00:00Z", "itemId": "9uzOjUNe", "itemSku": "wBkiZj8t", "itemType": "an3gG2iA"}, {"count": 58, "duration": 19, "endDate": "1991-05-06T00:00:00Z", "itemId": "MUs6lk51", "itemSku": "MA23z6Ny", "itemType": "ZjWaZ7EY"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 62, "fixedTrialCycles": 42, "graceDays": 53}, "regionData": {"QtlNND7e": [{"currencyCode": "p2ogMNBJ", "currencyNamespace": "OzMS1DDJ", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1991-06-17T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1999-07-05T00:00:00Z", "expireAt": "1988-06-01T00:00:00Z", "price": 39, "purchaseAt": "1987-06-11T00:00:00Z", "trialPrice": 90}, {"currencyCode": "rqrFcCgs", "currencyNamespace": "y0i7Bgfk", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1996-10-27T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1985-09-15T00:00:00Z", "expireAt": "1996-10-20T00:00:00Z", "price": 79, "purchaseAt": "1980-05-18T00:00:00Z", "trialPrice": 51}, {"currencyCode": "Ih8MdQrE", "currencyNamespace": "ZYLovYw4", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1988-04-03T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1988-10-09T00:00:00Z", "expireAt": "1977-12-18T00:00:00Z", "price": 52, "purchaseAt": "1995-09-22T00:00:00Z", "trialPrice": 43}], "tf1BEuc2": [{"currencyCode": "Mf112XzV", "currencyNamespace": "nQpMNOqd", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1989-12-01T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1990-04-04T00:00:00Z", "expireAt": "1982-10-02T00:00:00Z", "price": 41, "purchaseAt": "1981-08-19T00:00:00Z", "trialPrice": 38}, {"currencyCode": "fWVI9OjH", "currencyNamespace": "PJSclDYM", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1971-01-19T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1996-05-14T00:00:00Z", "expireAt": "1993-04-17T00:00:00Z", "price": 26, "purchaseAt": "1974-05-01T00:00:00Z", "trialPrice": 33}, {"currencyCode": "8RTGuy1c", "currencyNamespace": "W5xmNVvW", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1979-01-01T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1982-03-09T00:00:00Z", "expireAt": "1978-06-09T00:00:00Z", "price": 41, "purchaseAt": "1994-01-10T00:00:00Z", "trialPrice": 58}], "wyJaFUmQ": [{"currencyCode": "64h8r8q7", "currencyNamespace": "GhZh9iYb", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1985-05-22T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1996-12-26T00:00:00Z", "expireAt": "1984-10-18T00:00:00Z", "price": 96, "purchaseAt": "1979-04-17T00:00:00Z", "trialPrice": 59}, {"currencyCode": "96s1wDeI", "currencyNamespace": "Mvzu7mE2", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1973-01-10T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1971-11-27T00:00:00Z", "expireAt": "1980-11-15T00:00:00Z", "price": 5, "purchaseAt": "1986-01-13T00:00:00Z", "trialPrice": 37}, {"currencyCode": "L7xamPjx", "currencyNamespace": "q0ZLDz0V", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1991-06-10T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1997-07-04T00:00:00Z", "expireAt": "1990-08-27T00:00:00Z", "price": 37, "purchaseAt": "1975-11-07T00:00:00Z", "trialPrice": 44}]}, "saleConfig": {"currencyCode": "kSl1dRmd", "price": 30}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "0vWJZOmH", "stackable": true, "status": "ACTIVE", "tags": ["8TjAKdyi", "rQkVL2b3", "VQAVLgQd"], "targetCurrencyCode": "6H11oFFJ", "targetNamespace": "u6aSfPhH", "thumbnailUrl": "18X5cOdi", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'cYaZzviw' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "CAMPAIGN", "IAP"]' \
    --force 'false' \
    --storeId 'xTIohctU' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'YLhUbb2P' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 25, "orderNo": "YJYGq0cd"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'fpXNEsQD' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'nKvd699O' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'GEq5Cg9g' \
    --namespace $AB_NAMESPACE \
    --storeId 'c9Da4yZT' \
    --body '{"carousel": [{"alt": "JnqmzcbV", "previewUrl": "GP88lXgL", "thumbnailUrl": "Tpu90I8y", "type": "video", "url": "oUXZGXZ7", "videoSource": "vimeo"}, {"alt": "sPrY9gkL", "previewUrl": "Oet0UJps", "thumbnailUrl": "vkHXxpYB", "type": "video", "url": "ddFOd7WV", "videoSource": "vimeo"}, {"alt": "EuvSueav", "previewUrl": "H4uOyNvW", "thumbnailUrl": "zmQiqSfn", "type": "image", "url": "zne7HAME", "videoSource": "generic"}], "developer": "2zXl8YRx", "forumUrl": "2FSzOZhH", "genres": ["Adventure", "Action", "FreeToPlay"], "localizations": {"BJLd5qfz": {"announcement": "W8tBK14Y", "slogan": "UBWvjPgs"}, "lXq1txzP": {"announcement": "ydJRsppU", "slogan": "NTOBFvr5"}, "TmSsmh9w": {"announcement": "a5vuuqVv", "slogan": "T6VsuPSt"}}, "platformRequirements": {"YK7MvlYZ": [{"additionals": "2tQ0yvoR", "directXVersion": "hnPmRnFZ", "diskSpace": "YkD6rHdL", "graphics": "ZOGuHLiu", "label": "yAUagfC5", "osVersion": "PZlWCYNp", "processor": "apzPBNFn", "ram": "Rk7STqkX", "soundCard": "9WEykpqN"}, {"additionals": "PuGOBz5R", "directXVersion": "Wz7xDgVh", "diskSpace": "4xNJHo5i", "graphics": "Oe0V9bwO", "label": "mKxpgmqF", "osVersion": "jhwRpeiW", "processor": "64V1dZ6T", "ram": "GPFqJwuE", "soundCard": "Z5Fhwdo7"}, {"additionals": "zaugbPnc", "directXVersion": "0YVGreHu", "diskSpace": "xMAxUb3L", "graphics": "YgzpWRwS", "label": "tnlzq7eU", "osVersion": "s1yJtRa3", "processor": "dujTpw9I", "ram": "IhRph7Rq", "soundCard": "dyb7gAi7"}], "B8umjFQO": [{"additionals": "YmLLd2EG", "directXVersion": "U8JBnGBH", "diskSpace": "9R72gJ87", "graphics": "pNvj7Xbp", "label": "KSVQz2Wj", "osVersion": "4snNKeeQ", "processor": "ALOf7A1s", "ram": "sZvr9AnT", "soundCard": "5yy9QPrG"}, {"additionals": "kGwxanyD", "directXVersion": "CP8jLwhp", "diskSpace": "nKoEUbRa", "graphics": "acvIGaRU", "label": "FCqGfm4R", "osVersion": "aImq4ouB", "processor": "mZQqXO8r", "ram": "qec45zBW", "soundCard": "UX39OSXp"}, {"additionals": "xsndPStg", "directXVersion": "q2V1S7PS", "diskSpace": "vBqJg5dB", "graphics": "mWWcGIcx", "label": "EYFWPYFe", "osVersion": "DRCDUSeN", "processor": "CUcZjBok", "ram": "Pvtt2Bro", "soundCard": "t9nKN5Pu"}], "Bq0IvjDi": [{"additionals": "5dRs2oEX", "directXVersion": "QZXqwMSs", "diskSpace": "jysGmfPL", "graphics": "41OGPbeS", "label": "OA1Mee2I", "osVersion": "yiEcgNra", "processor": "YT1F7ovf", "ram": "I3ly7j3J", "soundCard": "JNYVdTsR"}, {"additionals": "g4gFp0w0", "directXVersion": "KKQ6GB9V", "diskSpace": "9GtCygqd", "graphics": "jL3E4x82", "label": "YyWOKF25", "osVersion": "WjNOhhSt", "processor": "IcqSBnGf", "ram": "9QEKhk2I", "soundCard": "xTmrCiKl"}, {"additionals": "s0wQ44bF", "directXVersion": "7RHAFTlo", "diskSpace": "zYYtOWM3", "graphics": "jTisqRRy", "label": "sf7v22xK", "osVersion": "p10AswwG", "processor": "dJ0GMvR0", "ram": "X2z7jhc2", "soundCard": "rlbyyXXf"}]}, "platforms": ["Windows", "IOS", "MacOS"], "players": ["Coop", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "Casual", "publisher": "QA5pzZt9", "releaseDate": "1973-05-16T00:00:00Z", "websiteUrl": "0zZG1Kwk"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'rgAr5GuN' \
    --namespace $AB_NAMESPACE \
    --storeId 'RxHWS9Wv' \
    --body '{"featuresToCheck": ["IAP", "ENTITLEMENT", "CATALOG"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'fcIqUKEP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'XrvXxe62' \
    --namespace $AB_NAMESPACE \
    --storeId '93Wm4VEx' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '2pxwwyRM' \
    --itemId 'yXLLF5ho' \
    --namespace $AB_NAMESPACE \
    --storeId 'KG4Hgsg8' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'AQZykapl' \
    --itemId 'iQQnFGtC' \
    --namespace $AB_NAMESPACE \
    --storeId 'BbrfENQb' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'pGHZWhsR' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'MmVScrFl' \
    --populateBundle 'true' \
    --region '6ahEXDx4' \
    --storeId '0EC4v1TX' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'rjCsDkMM' \
    --namespace $AB_NAMESPACE \
    --storeId '24yOxhUp' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 53, "code": "o0tmPMWi", "comparison": "isGreaterThan", "name": "whYCrnkH", "predicateType": "SeasonPassPredicate", "value": "vE7PLDzh", "values": ["A0Gx0TNU", "tO6mjhKw", "1FfCr6od"]}, {"anyOf": 66, "code": "4D6duaHT", "comparison": "isGreaterThan", "name": "W1XCBKLU", "predicateType": "EntitlementPredicate", "value": "90hsn4sq", "values": ["naRs6h97", "EnSIJA7O", "VXpqIUSy"]}, {"anyOf": 37, "code": "YnLXA7qG", "comparison": "isGreaterThan", "name": "hVgzDP2O", "predicateType": "EntitlementPredicate", "value": "PGPslZvp", "values": ["r6ZH9Rz9", "7hTaBTZz", "jYi57Nz1"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "code": "7xBCxDGX", "comparison": "is", "name": "FVTJV5En", "predicateType": "EntitlementPredicate", "value": "96aPHvu0", "values": ["QM3QtmCH", "8dSDTg0X", "yXgabiAF"]}, {"anyOf": 63, "code": "SY5Js8ai", "comparison": "isLessThanOrEqual", "name": "qTAvSxK6", "predicateType": "SeasonPassPredicate", "value": "0GFlAUN3", "values": ["jGQLmpew", "aXUTJvq7", "auHq5oX3"]}, {"anyOf": 62, "code": "VrVXabl1", "comparison": "is", "name": "OIPnQL4f", "predicateType": "SeasonPassPredicate", "value": "A6O9lrtJ", "values": ["yqMLgp5x", "mjFzvSzg", "JFsCYIZP"]}]}, {"operator": "or", "predicates": [{"anyOf": 56, "code": "iOGyaXK3", "comparison": "includes", "name": "zYrWiFw9", "predicateType": "StatisticCodePredicate", "value": "PG1qNH8f", "values": ["x7ckMGS9", "Nch5twZx", "1MqNZXoi"]}, {"anyOf": 91, "code": "b2w0dv6o", "comparison": "isLessThanOrEqual", "name": "oVey4dMe", "predicateType": "EntitlementPredicate", "value": "0f1kozra", "values": ["FGqJRrL8", "StwXsCVV", "uy2RMft4"]}, {"anyOf": 91, "code": "dSbwYvBd", "comparison": "isLessThanOrEqual", "name": "NwfQT7M2", "predicateType": "SeasonPassPredicate", "value": "nJYiVSEu", "values": ["UyypsfY8", "hzrjq3En", "kRGfaHCy"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'MVcPNxxH' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "IAP", "DLC"]' \
    --storeId 'vFbcAVUE' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'vkSWvlYr' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "HrITwwze"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'ELq9tq1I' \
    --offset '6' \
    --tag 'MHp3HMFa' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DTrFtKYX", "name": "AJONcTBu", "status": "ACTIVE", "tags": ["wOQZOFBF", "xchjR5p9", "xwlbZTIi"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '7orX6WSa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'EgStRluk' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QhbYKa3T", "name": "B7xBToEd", "status": "INACTIVE", "tags": ["InWVfdaN", "a6Oahbrp", "VjNDUt1T"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'yfnjsmpp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ZTLXANHu' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '59' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '3pZnxGpo' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'HmaxDqPP' \
    --limit '56' \
    --offset '37' \
    --orderNos '["hDTReQI6", "XQqojarI", "ou1UqjYj"]' \
    --sortBy 'ho0cV8Zi' \
    --startTime 'pGL6NmPU' \
    --status 'FULFILLED' \
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
    --orderNo '7ESLnkFw' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hZzwEWFy' \
    --body '{"description": "EIQSghje"}' \
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
    --body '{"domains": ["3nWBWntg", "S7sRoJ3W", "LqbXGM1O"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Ng8xgDIg' \
    --externalId '0eR9K9c6' \
    --limit '75' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'ZJt4XM3u' \
    --offset '9' \
    --paymentOrderNo 'bUWfwn14' \
    --startDate 'Y4vMMWMo' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'BRTYIvEz' \
    --limit '98' \
    --offset '75' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "aYcBcJHG", "currencyNamespace": "uNuNWEMr", "customParameters": {"K9SFFXb8": {}, "zEDBaduB": {}, "bi4jcW6F": {}}, "description": "7hT20ngf", "extOrderNo": "0vfUENNK", "extUserId": "5HEbwYQC", "itemType": "CODE", "language": "ke-cYyr_331", "metadata": {"3Qz2ZBZZ": "ARAOjOOD", "LpnxYmIk": "J4qmEu96", "lewNQeGS": "DeDsj6Rv"}, "notifyUrl": "7Xhow8dL", "omitNotification": false, "platform": "JkWGiQnE", "price": 3, "recurringPaymentOrderNo": "jUrzLlHc", "region": "VZleoYtj", "returnUrl": "3GVuSMIv", "sandbox": true, "sku": "Zu3tdeOp", "subscriptionId": "fgaRwGgc", "targetNamespace": "o5nMoGjh", "targetUserId": "36OGAYeB", "title": "JJ1IVDVs"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'lxYvlc5J' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aYsAWNwd' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'C556L2qs' \
    --body '{"extTxId": "FY96Q2Wl", "paymentMethod": "alk96jS3", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WAFRl3vE' \
    --body '{"description": "Wq1VGaiv"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RPC60cPy' \
    --body '{"amount": 41, "currencyCode": "KILSut3n", "notifyType": "CHARGE", "paymentProvider": "NEONPAY", "salesTax": 97, "vat": 40}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NtqdLXZo' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'HDOQDgIE' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "H2UNIRy3", "serviceLabel": 70}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku '4iNL5Rpl' \
    --body '{"delegationToken": "KCVrHPK9", "sandboxId": "gak85Xmf"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedPlatformOrigins": ["System", "Xbox", "Oculus"]}' \
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
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["IOS", "Other", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'm1DJn9DB' \
    --limit '56' \
    --offset '29' \
    --source 'OTHER' \
    --startTime 'FM8jXxsl' \
    --status 'SUCCESS' \
    --transactionId 'rTkVvjvm' \
    --userId 'YtYa7eVD' \
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
    --body '{"appConfig": {"appName": "Mc1RQFbg"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "c3JYVyIP"}, "extendType": "APP"}' \
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
    --body '{"description": "vTiNynnX", "eventTopic": "f1L4wDXl", "maxAwarded": 73, "maxAwardedPerUser": 47, "namespaceExpression": "YuMIYhun", "rewardCode": "hT3naEle", "rewardConditions": [{"condition": "vrUFzLDW", "conditionName": "f2t1KoI1", "eventName": "LuuKntJ9", "rewardItems": [{"duration": 45, "endDate": "1991-01-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4AxG5yTd", "quantity": 25, "sku": "oGfQZd6u"}, {"duration": 9, "endDate": "1985-06-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cHCrH1ZJ", "quantity": 83, "sku": "CzHvWfQw"}, {"duration": 85, "endDate": "1972-01-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "M0LftAhv", "quantity": 16, "sku": "psZA6QOC"}]}, {"condition": "jTEMMnAj", "conditionName": "RuKOcqBK", "eventName": "0JoYPgLc", "rewardItems": [{"duration": 9, "endDate": "1980-10-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wdCsFzMs", "quantity": 79, "sku": "uCoTllYs"}, {"duration": 0, "endDate": "1999-06-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "30GER9ci", "quantity": 46, "sku": "FspABGLP"}, {"duration": 43, "endDate": "1985-03-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LIqgoN7a", "quantity": 55, "sku": "o5QDbxYi"}]}, {"condition": "0RgcGK7b", "conditionName": "x4f6lc24", "eventName": "7EOpx2tq", "rewardItems": [{"duration": 62, "endDate": "1992-01-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gLjrlRDI", "quantity": 62, "sku": "Sp2pYr5C"}, {"duration": 22, "endDate": "1995-02-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Unf5tZD5", "quantity": 65, "sku": "OyvxCw4Q"}, {"duration": 71, "endDate": "1990-11-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "T9LUZENE", "quantity": 75, "sku": "MVZvMdiF"}]}], "userIdExpression": "lCR3LnAk"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'm2DoEb2H' \
    --limit '62' \
    --offset '79' \
    --sortBy '["namespace", "namespace:desc"]' \
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
    --rewardId 'Ge7wNgcy' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wLorZ84u' \
    --body '{"description": "uuDwNPBh", "eventTopic": "pZKvRpEt", "maxAwarded": 2, "maxAwardedPerUser": 75, "namespaceExpression": "2CXXDVAA", "rewardCode": "ZOdsupYW", "rewardConditions": [{"condition": "UbCAJbGB", "conditionName": "AOXxg6MM", "eventName": "utJABuTg", "rewardItems": [{"duration": 27, "endDate": "1980-03-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wp7pFND3", "quantity": 39, "sku": "Hvp8ArKv"}, {"duration": 28, "endDate": "1983-01-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MYhzsJfH", "quantity": 67, "sku": "crBQob0O"}, {"duration": 38, "endDate": "1994-09-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6ivVdbx0", "quantity": 45, "sku": "7ExnMuSN"}]}, {"condition": "IZN2b6VQ", "conditionName": "GW5sZSfL", "eventName": "magvnZo0", "rewardItems": [{"duration": 24, "endDate": "1995-03-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "TudD1HbJ", "quantity": 43, "sku": "8h6rx2gW"}, {"duration": 58, "endDate": "1986-06-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tS4OaD7h", "quantity": 25, "sku": "NwBRHJtN"}, {"duration": 85, "endDate": "1995-02-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wsOuGtNC", "quantity": 1, "sku": "0X9xLMjW"}]}, {"condition": "Gmb80AEp", "conditionName": "3BJ3WbZr", "eventName": "cgarKRH6", "rewardItems": [{"duration": 19, "endDate": "1980-07-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TBFbeCYl", "quantity": 54, "sku": "CydXDaFR"}, {"duration": 39, "endDate": "1994-02-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "O5Mrr22r", "quantity": 69, "sku": "nzBIPLX3"}, {"duration": 16, "endDate": "1992-02-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UIOQqqL4", "quantity": 40, "sku": "fbUsCXvQ"}]}], "userIdExpression": "ELcVfhrp"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '1bwmu3sL' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '7f8k5PHf' \
    --body '{"payload": {"2uofAbkO": {}, "kCbp1Prp": {}, "a52jSV9R": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'MLqxQrJ1' \
    --body '{"conditionName": "F0DN18Bu", "userId": "S1OwWg95"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'OwTzLmEe' \
    --limit '32' \
    --offset '86' \
    --start '3ZT8rmuy' \
    --storeId 'JyAjjV2D' \
    --viewId 'q9ssq3pQ' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'AVwfxHLi' \
    --body '{"active": false, "displayOrder": 48, "endDate": "1994-09-10T00:00:00Z", "ext": {"CRmh5l4E": {}, "Z8GExpdH": {}, "YWWLDxMa": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 81, "itemCount": 75, "rule": "SEQUENCE"}, "items": [{"id": "cpiI6BQj", "sku": "NsSg2QJs"}, {"id": "s4WABhPM", "sku": "I3JZvvfI"}, {"id": "X9JnUjL0", "sku": "w0Am5fy8"}], "localizations": {"mYpjPVRW": {"description": "ZzueBwUk", "localExt": {"I44wprpN": {}, "tEDnPHfe": {}, "Klrb3wS5": {}}, "longDescription": "IRAFVz1c", "title": "TrQjjmfC"}, "wXzN5VKI": {"description": "UAsQmvy7", "localExt": {"sd8ngqiA": {}, "sIi7SuCW": {}, "XOauAOYG": {}}, "longDescription": "QcFszIte", "title": "DzQNTelF"}, "j0J4LOIb": {"description": "ntaIAApn", "localExt": {"i6ARrRx6": {}, "QOybg6WR": {}, "WZb1psYm": {}}, "longDescription": "1xJxCpqt", "title": "7sHR2Jok"}}, "name": "L0S6RhMQ", "rotationType": "CUSTOM", "startDate": "1976-05-17T00:00:00Z", "viewId": "amqzca68"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'aw8qTzxR' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'RQJUzP9M' \
    --storeId 'LMeWjlgS' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '4cnLaIs6' \
    --storeId 'qxNwZJ8d' \
    --body '{"active": false, "displayOrder": 15, "endDate": "1974-03-10T00:00:00Z", "ext": {"0ZFB2IGw": {}, "P7F1Im9o": {}, "SvLIqSf1": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 14, "itemCount": 54, "rule": "SEQUENCE"}, "items": [{"id": "jTStBYrF", "sku": "wuci5gPN"}, {"id": "ck7KFzen", "sku": "m4fLQt1T"}, {"id": "MbO3LlIR", "sku": "OPq3aig5"}], "localizations": {"UyKO9tIt": {"description": "YhvZUifF", "localExt": {"kTzUOLme": {}, "CWDo6KGU": {}, "EZazRJ54": {}}, "longDescription": "oNuc0DR3", "title": "03DCsyQa"}, "LIRTKbuf": {"description": "rmJmwVgO", "localExt": {"emqbhjSn": {}, "EmRg4JDt": {}, "yw0JVnoZ": {}}, "longDescription": "WA0zpSeR", "title": "H7VICmcg"}, "c8WtPvdB": {"description": "wo90BrCK", "localExt": {"fcot4Hih": {}, "nDiJ2vMf": {}, "pdyVNMss": {}}, "longDescription": "5jk4LH07", "title": "wvQHzFgz"}}, "name": "FvxaF7xy", "rotationType": "FIXED_PERIOD", "startDate": "1972-12-23T00:00:00Z", "viewId": "zZ9J6Fbg"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'GUMDmgD6' \
    --storeId 'MlwYaVoh' \
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
    --body '{"defaultLanguage": "RepT3Bqh", "defaultRegion": "orOOGWom", "description": "nzh2Zr1N", "supportedLanguages": ["WAMdEBgU", "vcS6EfMD", "nq5v69nt"], "supportedRegions": ["YM15mSqn", "uDX9SzVT", "nSQpidid"], "title": "TfHUiwWS"}' \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
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
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["3aoA6bYU", "5zsR5up5", "XjVvtIyH"], "idsToBeExported": ["52aGkNsg", "qYGTaEcL", "7MGsrIkT"], "storeId": "U1o8eajb"}' \
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
    --storeId 'djK4xCLe' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Aqzdx13P' \
    --body '{"defaultLanguage": "7F51inl5", "defaultRegion": "agenacV3", "description": "oQI3IGTC", "supportedLanguages": ["xnJRdIaq", "7JMgLfWI", "snGDAQ9s"], "supportedRegions": ["wNIha7pK", "0Y9s9cjy", "1dFe2iqD"], "title": "XbJiRM84"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Tz8Z81f0' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'yhsdZwe9' \
    --action 'UPDATE' \
    --itemSku '9W0WIVid' \
    --itemType 'APP' \
    --limit '33' \
    --offset '6' \
    --selected 'false' \
    --sortBy '["updatedAt:desc", "createdAt:asc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'lPQisNf6' \
    --updatedAtStart 'HMGQcSoM' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '4yLa2gc2' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '5LpK5PaM' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'qq1GwouD' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'nvfnSfvM' \
    --action 'CREATE' \
    --itemSku 'O3BVq1iO' \
    --itemType 'SUBSCRIPTION' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'L0ERMqQH' \
    --updatedAtStart 'Dh0tzZuP' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '5kwCYjKD' \
    --action 'CREATE' \
    --itemSku '5baVtFET' \
    --itemType 'COINS' \
    --type 'SECTION' \
    --updatedAtEnd 'ytD08EuX' \
    --updatedAtStart '31rY2E7W' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'mrSx3c1N' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'whIrgu2E' \
    --namespace $AB_NAMESPACE \
    --storeId 'SfZOxEaa' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'wkgmuzRn' \
    --namespace $AB_NAMESPACE \
    --storeId 'MmxN7muO' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'N01EUdcu' \
    --targetStoreId 'aYvgDi4a' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'xp6ltDk7' \
    --end 'gsjz5KT7' \
    --limit '20' \
    --offset '23' \
    --sortBy 'YVrFrerV' \
    --start 'Sqd9xJJv' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Il9WFD7p' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'Ckvbks0Z' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'u1nrYBd2' \
    --limit '70' \
    --offset '42' \
    --sku 'JuMu2TSo' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    --userId 'V7ZCT4TG' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yIKxdCJX' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'nwesNzUm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'QV7AFVUl' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "zYt4RVtS"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'OaVRJ1Bw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'ngUWSsFi' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 6, "orderNo": "3NhI5XP8"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 2, "currencyCode": "oKF0aRmV", "expireAt": "1981-10-14T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "oSZePA8R", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "G4IN6VCr", "entitlementOrigin": "Xbox", "itemIdentity": "F1rrwvX3", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 64, "entitlementId": "OqhjyMlg"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 9, "currencyCode": "4Ju3CpTF", "expireAt": "1978-06-23T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "wmn9nWWR", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 76, "entitlementCollectionId": "gvdWnIQI", "entitlementOrigin": "Steam", "itemIdentity": "xCpu0EnR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "rdBdi3RM"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 18, "currencyCode": "gU2LOOFZ", "expireAt": "1986-04-21T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "RVHr3ndG", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "WBbNP4Wf", "entitlementOrigin": "Nintendo", "itemIdentity": "uEeBiidB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "rX91j442"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "eNjBrFMg"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 99, "currencyCode": "R1fJIzpb", "expireAt": "1995-10-05T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "RVXEfi2h", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "9PfDQHnU", "entitlementOrigin": "GooglePlay", "itemIdentity": "KQNtt8V1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 24, "entitlementId": "0tDm2Xdq"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 92, "currencyCode": "Zu9h7yvx", "expireAt": "1982-07-30T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "LtsKigoj", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "5xqBnSqc", "entitlementOrigin": "IOS", "itemIdentity": "9SNi0Sk3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "WiN6RLxZ"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 81, "currencyCode": "32RkS1L3", "expireAt": "1993-09-04T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "xu18bvqY", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "qzot5Gr3", "entitlementOrigin": "Other", "itemIdentity": "tzZ7vSBC", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "53QSTZiU"}, "type": "CREDIT_WALLET"}], "userId": "DspOydfu"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 28, "currencyCode": "G4Ry2UKh", "expireAt": "1987-03-05T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "QiJ2lNE6", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 6, "entitlementCollectionId": "OJuOXb6b", "entitlementOrigin": "Steam", "itemIdentity": "JSiY5jzV", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 21, "entitlementId": "sczv8ET0"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 25, "currencyCode": "h5egI3ej", "expireAt": "1983-12-07T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "Gnzla7Lb", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 57, "entitlementCollectionId": "EcofeGfk", "entitlementOrigin": "Twitch", "itemIdentity": "oEpE6l4C", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 20, "entitlementId": "gfY73UjC"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 7, "currencyCode": "PFNvxjkY", "expireAt": "1996-09-22T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "ced4ce3j", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 12, "entitlementCollectionId": "8D10q8AS", "entitlementOrigin": "IOS", "itemIdentity": "ttFyt2Zw", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "XaLqEReg"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "6hCmMki1"}], "metadata": {"VGsmHh1N": {}, "HLRNJU9C": {}, "P3BzSUC7": {}}, "needPreCheck": true, "transactionId": "l4T1ivVn", "type": "xnz4o8Ra"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '18' \
    --status 'SUCCESS' \
    --type 'E4Q6Je4T' \
    --userId '65kutPqO' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'IUgZCsQB' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'q16lQOtm' \
    --body '{"achievements": [{"id": "cYFlseIh", "value": 11}, {"id": "NyH6pGwT", "value": 4}, {"id": "oS7FLHkc", "value": 76}], "steamUserId": "G7UrSELi"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'GigTicrb' \
    --xboxUserId 'yIyS5QSb' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WRRdxDoK' \
    --body '{"achievements": [{"id": "RJsBnfS4", "percentComplete": 77}, {"id": "PPUSOJsD", "percentComplete": 72}, {"id": "eNFe7vLU", "percentComplete": 29}], "serviceConfigId": "eCHik2is", "titleId": "dmK5WjQj", "xboxUserId": "2FPkPK9D"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Q17t4XWe' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5Og8appF' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'E2VJ1cj0' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'fFZqHJVf' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KtgdhiII' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'kUCavbrZ' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '5OjLaMpn' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SaQtI1h9' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'V9AmsdpZ' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '16WBZV9f' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tI4uEv8D' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'qg94TNHu' \
    --activeOnly 'true' \
    --appType 'GAME' \
    --collectionId '7Gm5Bzsd' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'qdoFd2GI' \
    --features '["fX9zgCzZ", "8SS0RwMA", "U6OL4u0C"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["dqFw1DPn", "cn82uduh", "yxFC5gAj"]' \
    --limit '29' \
    --offset '23' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Nx8NPnfq' \
    --body '[{"collectionId": "6IHFww50", "endDate": "1987-04-13T00:00:00Z", "grantedCode": "p9QVp5nY", "itemId": "z0sFw1Fp", "itemNamespace": "6ZqoKuTB", "language": "JBv_930", "metadata": {"lTrD1Cqx": {}, "hEOIAuTx": {}, "RTQBwljv": {}}, "origin": "Xbox", "quantity": 42, "region": "KhFOssbr", "source": "GIFT", "startDate": "1973-05-16T00:00:00Z", "storeId": "VkuEXRa1"}, {"collectionId": "Q1iisEjI", "endDate": "1988-04-30T00:00:00Z", "grantedCode": "XFKI27Qq", "itemId": "WwrlFAai", "itemNamespace": "vLdu9Z2O", "language": "oL", "metadata": {"eR9mFrI4": {}, "6GYOtKox": {}, "KevKqEsJ": {}}, "origin": "Playstation", "quantity": 75, "region": "43njbkSj", "source": "ACHIEVEMENT", "startDate": "1993-01-28T00:00:00Z", "storeId": "HHbtf727"}, {"collectionId": "SLRAQpqD", "endDate": "1981-03-16T00:00:00Z", "grantedCode": "zN5Gh97T", "itemId": "VysXhuEF", "itemNamespace": "E8qn1zB4", "language": "faw", "metadata": {"AC6NanpT": {}, "UbVUKcWA": {}, "xGIUbjT8": {}}, "origin": "Oculus", "quantity": 86, "region": "zgomzhZs", "source": "REFERRAL_BONUS", "startDate": "1980-04-04T00:00:00Z", "storeId": "SXAQoNwG"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'FMqR3ERB' \
    --activeOnly 'false' \
    --appId 'UzE9MQGf' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'uKQ8swH9' \
    --activeOnly 'true' \
    --limit '81' \
    --offset '11' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'VIA6zxbc' \
    --ids '["q8HYKyXq", "SLlJ9FGU", "rVfUYbQ3"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '5cguvYOm' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --platform 'CDKkUYgm' \
    --itemId 'DYHjHA2l' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'PjfAcL6J' \
    --ids '["KyrjrAom", "LvCeGxDw", "OTWPnQHU"]' \
    --platform 'hLPsmSfC' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'BMlnM0dF' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'TVmRwwL2' \
    --sku 'Z7328ybd' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'CulplX5J' \
    --appIds '["kGhlm53M", "d87GFimp", "v51TWokw"]' \
    --itemIds '["LdbEJ67V", "n1PmZ6ft", "dxvPE9Gr"]' \
    --platform 'sKpPPYiL' \
    --skus '["cwhSFiYg", "RGf990FN", "E4If3N4C"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '5RHhbtPE' \
    --platform '6mTD7to1' \
    --itemIds '["FM3VWWHh", "SCs5oC24", "WWvGd3UL"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'DKUxlxWE' \
    --appId 'BL0Oq4M0' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '8Q84rIQX' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'TUtw9ZlM' \
    --itemId 'TN9UJdQb' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '2w7FDnKY' \
    --ids '["JLCsSEhi", "LgdqJXmb", "2clW9K0J"]' \
    --platform '3lpizatS' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gt2k9A9M' \
    --entitlementClazz 'MEDIA' \
    --platform '1e4VEgsT' \
    --sku '0POUT87G' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'UcnYZwxo' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'U1bcEgjd' \
    --entitlementIds '2MkpjeLu' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'aYpVyb8i' \
    --namespace $AB_NAMESPACE \
    --userId 'MhNfiDep' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '5krjgMzz' \
    --namespace $AB_NAMESPACE \
    --userId 'bF4zTNcE' \
    --body '{"collectionId": "MqBHEwFC", "endDate": "1979-07-24T00:00:00Z", "nullFieldList": ["GOQ4HOhQ", "ZIim5x51", "tnZe80qs"], "origin": "Other", "reason": "QluVWtQY", "startDate": "1972-04-03T00:00:00Z", "status": "ACTIVE", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'qCn8D2DB' \
    --namespace $AB_NAMESPACE \
    --userId 'i2SIEYSf' \
    --body '{"metadata": {"9ZJ6jbcV": {}, "roIu0MA0": {}, "szz2srVb": {}}, "options": ["VEDZdJgI", "ITv189wg", "o4E1tKT3"], "platform": "pGGyQ7ws", "requestId": "aWPlTOt9", "useCount": 29}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'WohTewd4' \
    --namespace $AB_NAMESPACE \
    --userId 'C4Ab4Y0e' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '1PhiB8MM' \
    --namespace $AB_NAMESPACE \
    --userId 'FYfw2ErH' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'LyYAVYxd' \
    --namespace $AB_NAMESPACE \
    --userId 'sPlnSJqr' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 's0isEdbN' \
    --namespace $AB_NAMESPACE \
    --userId '3vqZn9kb' \
    --body '{"metadata": {"ihdDrf0z": {}, "dL0ecJCF": {}, "dCG0AKsm": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'BZ2LIMR4' \
    --namespace $AB_NAMESPACE \
    --userId '7T7ibHNA' \
    --body '{"reason": "WnJncVOm", "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'CIIBSPmS' \
    --namespace $AB_NAMESPACE \
    --userId 'bozWbNQf' \
    --quantity '21' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '9SVepY6v' \
    --namespace $AB_NAMESPACE \
    --userId '5WrOlpdN' \
    --body '{"platform": "jhPo9KkX", "requestId": "iOeepEce", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'NeMNGV0Y' \
    --body '{"duration": 96, "endDate": "1994-12-02T00:00:00Z", "entitlementCollectionId": "c1Ne4srt", "entitlementOrigin": "Other", "itemId": "SUSdQ9T7", "itemSku": "cgQWtjPw", "language": "JmiJyPBl", "metadata": {"lu1UXGHK": {}, "HpvGAsvf": {}, "q8rdvSMK": {}}, "order": {"currency": {"currencyCode": "9kWYQ0FD", "currencySymbol": "FLOTrdTU", "currencyType": "REAL", "decimals": 63, "namespace": "X8qaRQR2"}, "ext": {"DIFWVAJR": {}, "qEZy6vrR": {}, "sZbQXajk": {}}, "free": false}, "orderNo": "HMOrejQB", "origin": "Nintendo", "overrideBundleItemQty": {"4ID2MYXm": 32, "Ia1j7Umd": 89, "wyXW3ixi": 100}, "quantity": 28, "region": "pl5Am4nR", "source": "SELL_BACK", "startDate": "1979-05-02T00:00:00Z", "storeId": "UG79RyDB"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Ve4e2bQ5' \
    --body '{"code": "6VFNdYz1", "language": "giA-UmAm-447", "region": "w1sQ03uk"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'htXtWX5Q' \
    --body '{"itemId": "CmemNaqj", "itemSku": "OB11KHgR", "quantity": 56}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ElvXuwIi' \
    --body '{"entitlementCollectionId": "oiLFFPm1", "entitlementOrigin": "Epic", "metadata": {"AajV9Ek1": {}, "Ff7mPjhi": {}, "BFCkVXtX": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "MM6NpUGi", "namespace": "9kVAoPgn"}, "item": {"itemId": "nrIP9Jxx", "itemName": "CgSoeiG4", "itemSku": "MYsumOtT", "itemType": "8Ol1rPiT"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "QTf9xtbA", "namespace": "bpHDLOHX"}, "item": {"itemId": "3Fv7eHBA", "itemName": "uQCOwbsu", "itemSku": "p5zltf1m", "itemType": "5Y7XUTXv"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "WTLAMpiI", "namespace": "XzbfIPwN"}, "item": {"itemId": "X2pX1aVV", "itemName": "fdiIiVZL", "itemSku": "cdWVOMqC", "itemType": "aSt5DZm5"}, "quantity": 11, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "npOU3uoK"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FaunRuO6' \
    --endTime '2WpUgHRr' \
    --limit '5' \
    --offset '33' \
    --productId 'y7zNjVEr' \
    --startTime 'OfrQC7j2' \
    --status 'PARTIAL_REVOKED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'GUzd4TkM' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'MXPJmN3I' \
    --endTime 'VtU3uzow' \
    --limit '45' \
    --offset '33' \
    --startTime 'mivgYbPR' \
    --status 'SUCCESS' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'JQGd4m4v' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Vio", "productId": "cvPf6MnH", "region": "UxlTh9az", "transactionId": "b6tmMzIe", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'oyBfryEG' \
    --namespace $AB_NAMESPACE \
    --userId 'AkvpLHNl' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'JUMANuTp' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '8niiGlkP' \
    --body '{"orderId": "tjJk1rJi"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'nQLjqTGy' \
    --activeOnly 'false' \
    --groupId '86Rc2QA6' \
    --limit '66' \
    --offset '30' \
    --platform 'STEAM' \
    --productId 'dIz6a0Tz' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'VgIF4nZ0' \
    --groupId 'MyqTJQdK' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'cBgRJJLe' \
    --productId 'Ti5zutuE' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId '025iorCv' \
    --activeOnly 'true' \
    --groupId '1lFlsou1' \
    --limit '29' \
    --offset '62' \
    --platform 'OCULUS' \
    --productId 'Hbfmu9YQ' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'Si9KW8ky' \
    --namespace $AB_NAMESPACE \
    --userId '3GhzpwAB' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'LYIkjQMq' \
    --namespace $AB_NAMESPACE \
    --userId 'y201aBcC' \
    --limit '37' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'cxCOv5Bm' \
    --namespace $AB_NAMESPACE \
    --userId 'eYPbQU5i' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'ORKTlBeG' \
    --namespace $AB_NAMESPACE \
    --userId 'oQqSDBYW' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'zvLubVvG' \
    --namespace $AB_NAMESPACE \
    --userId 'z40Kkz5a' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'jkwcbDs3' \
    --discounted 'false' \
    --itemId 'wdupkCpk' \
    --limit '17' \
    --offset '61' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'YLkKRUBk' \
    --body '{"currencyCode": "8wzi0Ngd", "currencyNamespace": "TTHMuMWa", "discountCodes": ["9E27ieg5", "s8mMMzYv", "UpUB01wI"], "discountedPrice": 32, "entitlementPlatform": "IOS", "ext": {"aceY7OZf": {}, "VJNumzNt": {}, "TTTHlCkw": {}}, "itemId": "VNdyjPqa", "language": "p6YLDVkg", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 38, "quantity": 51, "region": "L1c5C9u3", "returnUrl": "L4lbNDVi", "sandbox": false, "sectionId": "R6147lRX"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'CpKPVMh8' \
    --itemId 'EcKTqRtw' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8ecJm8o4' \
    --userId 'lJXtVLg5' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '8WMhbOBr' \
    --userId 'lrdRIOHt' \
    --body '{"status": "CHARGEBACK", "statusReason": "QLMdTkJA"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'cJVgU8An' \
    --userId 'q9PCeJdV' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'FYeL0aKw' \
    --userId 'W669WE5V' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'aJnFZlA6' \
    --userId 'qIi0ebx0' \
    --body '{"additionalData": {"cardSummary": "UpCP1mSP"}, "authorisedTime": "1982-09-23T00:00:00Z", "chargebackReversedTime": "1997-01-28T00:00:00Z", "chargebackTime": "1978-05-22T00:00:00Z", "chargedTime": "1996-05-09T00:00:00Z", "createdTime": "1988-04-02T00:00:00Z", "currency": {"currencyCode": "zMSosrAD", "currencySymbol": "u9XvzYgg", "currencyType": "REAL", "decimals": 88, "namespace": "4i4QIKkf"}, "customParameters": {"j89CD6Cd": {}, "L9TNiIv0": {}, "IydJf9TX": {}}, "extOrderNo": "im48c30v", "extTxId": "r1JrwL0l", "extUserId": "gof0qcv5", "issuedAt": "1971-01-11T00:00:00Z", "metadata": {"zm14JeTm": "423HGeVZ", "U7zcniQL": "bPRCXoqd", "BadAg4Wv": "xBIoNRpN"}, "namespace": "kmfofde2", "nonceStr": "v1OdO3DD", "paymentData": {"discountAmount": 35, "discountCode": "2gU5joUZ", "subtotalPrice": 35, "tax": 1, "totalPrice": 85}, "paymentMethod": "nXJUfKt1", "paymentMethodFee": 2, "paymentOrderNo": "FdHYuSt9", "paymentProvider": "WALLET", "paymentProviderFee": 33, "paymentStationUrl": "z8NXBUKa", "price": 45, "refundedTime": "1978-10-16T00:00:00Z", "salesTax": 40, "sandbox": false, "sku": "m7HtxLfu", "status": "REFUNDING", "statusReason": "uqNBR5Td", "subscriptionId": "c6dZsqkY", "subtotalPrice": 4, "targetNamespace": "1HkPf6qk", "targetUserId": "RQ8DPTGs", "tax": 7, "totalPrice": 16, "totalTax": 2, "txEndTime": "1985-05-12T00:00:00Z", "type": "tLdAGCoq", "userId": "ru6SjWIT", "vat": 97}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'O6P1Myxm' \
    --userId 'QGbknXLR' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'z8AlRdvW' \
    --body '{"currencyCode": "OhimGaVS", "currencyNamespace": "DCefP2lM", "customParameters": {"DQGCNdap": {}, "vpg7vjuL": {}, "T8q0WSiU": {}}, "description": "ms7TY3p5", "extOrderNo": "IpzM6QF8", "extUserId": "la8rJPgI", "itemType": "SEASON", "language": "iRyH-929", "metadata": {"xyBHr8cU": "3cYtG1p6", "DKmOr4DZ": "CEonrW0Y", "F8eOrD3Z": "nmRlvTjW"}, "notifyUrl": "Ue9HiaPu", "omitNotification": false, "platform": "D8jEz47d", "price": 46, "recurringPaymentOrderNo": "brHdnaTR", "region": "T3KEiIUn", "returnUrl": "KpMd4Z2O", "sandbox": true, "sku": "tl6sMoHp", "subscriptionId": "BhIsJTV2", "title": "wYXhlROq"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lPY0RYaF' \
    --userId 'FIJhEv2k' \
    --body '{"description": "ijPzNelJ"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'an4f8ZyD' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '9GIjXjdS' \
    --body '{"code": "tOymcH46", "orderNo": "D8jyJjAB"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'LwqwIW5n' \
    --body '{"meta": {"mNVMFOho": {}, "iGm4s3Gi": {}, "ZqJ0JpJQ": {}}, "reason": "YpuDCjzp", "requestId": "4V8ateca", "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "zcsMXnX5", "namespace": "GZCO5ux4"}, "entitlement": {"entitlementId": "8WNo348G"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "YeIqai88", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 2, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "System", "currencyCode": "fJWdRgg4", "namespace": "yK6jLxTA"}, "entitlement": {"entitlementId": "DPfwSFED"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "DdjGqRbO", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 53, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "hSTewUpk", "namespace": "E6IgctyM"}, "entitlement": {"entitlementId": "OLG8kmZx"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "jb34NkbG", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 89, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "iWlNHtBU"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'SH75F3ot' \
    --body '{"gameSessionId": "XwuVTn2z", "payload": {"kWmzooo8": {}, "pESJr6c1": {}, "gBrDtD9Y": {}}, "scid": "UgT41sxZ", "sessionTemplateName": "0tqpg8RN"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'E5XFXB8U' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'NQOnjGQs' \
    --limit '41' \
    --offset '99' \
    --sku 'Dl6u6kdF' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '0z5AARnC' \
    --excludeSystem 'true' \
    --limit '64' \
    --offset '46' \
    --subscriptionId 'CJ8OajQZ' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'P15wciHy' \
    --body '{"grantDays": 62, "itemId": "a5X8NhIU", "language": "kw0ELm6u", "reason": "J8qaFFx9", "region": "2YbIsT3H", "source": "UEGG18Dq"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'FtWwuEVY' \
    --itemId '6NuXJl3P' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VDuiZE2Y' \
    --userId 'HY7GhKbn' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Zbaex2Qg' \
    --userId 'jRXKjwez' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'd61CNZ6X' \
    --userId 'iMB50kci' \
    --force 'true' \
    --body '{"immediate": false, "reason": "zUkpwCyO"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wiIFL6Mi' \
    --userId 'Pox97Kfu' \
    --body '{"grantDays": 24, "reason": "IkxSd5j0"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ql7IF9wT' \
    --userId 'o4tXC37T' \
    --excludeFree 'false' \
    --limit '36' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JKpylaom' \
    --userId 'plNzjUc8' \
    --body '{"additionalData": {"cardSummary": "U6jzugUb"}, "authorisedTime": "1984-07-16T00:00:00Z", "chargebackReversedTime": "1989-05-29T00:00:00Z", "chargebackTime": "1986-03-15T00:00:00Z", "chargedTime": "1978-12-24T00:00:00Z", "createdTime": "1985-05-24T00:00:00Z", "currency": {"currencyCode": "VN2t6B96", "currencySymbol": "TfH61Up7", "currencyType": "VIRTUAL", "decimals": 97, "namespace": "SM1BvMPF"}, "customParameters": {"zR6RSGQ5": {}, "BVF7bMbf": {}, "1LFcKfZk": {}}, "extOrderNo": "gOkVAxDK", "extTxId": "NRirCbjI", "extUserId": "SvBXMG7M", "issuedAt": "1973-06-04T00:00:00Z", "metadata": {"LcIKJ6mt": "wFY95nNA", "AYih0r9u": "DXJPyusw", "bPuY3WIF": "itrTNsoI"}, "namespace": "bYf45sks", "nonceStr": "jcLAAHYI", "paymentData": {"discountAmount": 63, "discountCode": "FkFLDRgs", "subtotalPrice": 54, "tax": 19, "totalPrice": 49}, "paymentMethod": "7EMvTseq", "paymentMethodFee": 77, "paymentOrderNo": "nYGKGqYe", "paymentProvider": "ADYEN", "paymentProviderFee": 93, "paymentStationUrl": "mirBZJBG", "price": 59, "refundedTime": "1972-04-09T00:00:00Z", "salesTax": 75, "sandbox": false, "sku": "tyy1R3q6", "status": "INIT", "statusReason": "DacPKBzj", "subscriptionId": "MGNb3FWH", "subtotalPrice": 28, "targetNamespace": "6VoHCJam", "targetUserId": "Wb7S9hzH", "tax": 1, "totalPrice": 78, "totalTax": 78, "txEndTime": "1990-07-14T00:00:00Z", "type": "BbgXyBwn", "userId": "f0W0wUXg", "vat": 19}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '0nUuzyYQ' \
    --namespace $AB_NAMESPACE \
    --userId '2wqizM6j' \
    --body '{"count": 78, "orderNo": "Al8rH4Gu"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'aLgHWvd1' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'ar5oTxYH' \
    --namespace $AB_NAMESPACE \
    --userId 'fLq6hAoq' \
    --body '{"allowOverdraft": true, "amount": 48, "balanceOrigin": "System", "balanceSource": "IAP_REVOCATION", "metadata": {"qprElqW7": {}, "gWKjvU4k": {}, "8SITKia8": {}}, "reason": "k1HMgmcO"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'EVi3buv2' \
    --namespace $AB_NAMESPACE \
    --userId 'J0fk6uYO' \
    --limit '71' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'wEJrUNVi' \
    --namespace $AB_NAMESPACE \
    --userId 'SjAYNhVg' \
    --request '{"amount": 95, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"ToXOhasZ": {}, "DvWN9rcG": {}, "D127loL6": {}}, "reason": "oTDJF3Ji", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'oypA1u5U' \
    --namespace $AB_NAMESPACE \
    --userId 'bDW42kdF' \
    --body '{"amount": 30, "expireAt": "1976-04-14T00:00:00Z", "metadata": {"tfyd9Rho": {}, "eJHTJern": {}, "uxkSx7Lf": {}}, "origin": "Twitch", "reason": "tPxa8iH3", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'bgUQIFIa' \
    --namespace $AB_NAMESPACE \
    --userId 'QiFaowRq' \
    --request '{"amount": 92, "debitBalanceSource": "OTHER", "metadata": {"lBvTJpwy": {}, "5HjdowB4": {}, "D3BezVAF": {}}, "reason": "GkgNqjX9", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'w1daTsOq' \
    --namespace $AB_NAMESPACE \
    --userId 'cgR4T3gE' \
    --body '{"amount": 76, "metadata": {"DQXB8MnI": {}, "6gSMzlBW": {}, "gB4b1TSu": {}}, "walletPlatform": "Playstation"}' \
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
    --storeId 'qHhO5EFT' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'S1NssyYQ' \
    --body '{"displayOrder": 59, "localizations": {"VPqRk11M": {"description": "L5BdYrMm", "localExt": {"eCPzonHw": {}, "Fqr2m8ee": {}, "BTKh9r0d": {}}, "longDescription": "TuXuy3y8", "title": "rVRWGGss"}, "aIw6eEUO": {"description": "6n8UuvfR", "localExt": {"mAOw0qX3": {}, "lYuWCXGP": {}, "VYu3iDym": {}}, "longDescription": "AeUOKqul", "title": "98xdwdVP"}, "hImReBUW": {"description": "N1zi8EzR", "localExt": {"jh61Bd1Q": {}, "YOi8x5E9": {}, "krSP0asQ": {}}, "longDescription": "cTGtIq5A", "title": "JVQRWYr2"}}, "name": "xRVXtUbV"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'V8dcuqwj' \
    --storeId 'Ri8U7R5C' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '5ecgKyfj' \
    --storeId 'ntBVgIWX' \
    --body '{"displayOrder": 15, "localizations": {"KGmLEl6b": {"description": "tLIL3s72", "localExt": {"Habau02L": {}, "k72xX21O": {}, "VfVszRYt": {}}, "longDescription": "z81bBYLz", "title": "dWuKJCUC"}, "vAIwM8uU": {"description": "FQinB7JB", "localExt": {"2PC14gpR": {}, "vNwMoQbC": {}, "T54hho7k": {}}, "longDescription": "Em4Txcqr", "title": "AlEM0E4F"}, "P4mbc7E1": {"description": "OloeCSAk", "localExt": {"JVRiJTQJ": {}, "aNb1BsXQ": {}, "r7plTB2v": {}}, "longDescription": "54SWAOc7", "title": "gCBY5tPZ"}}, "name": "rIUfDlR9"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'iiZPPdtz' \
    --storeId 'wtPYXlCt' \
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
    --body '[{"creditRequest": {"amount": 52, "expireAt": "1975-07-01T00:00:00Z", "metadata": {"72wvDfWE": {}, "dcPDvihe": {}, "1BUz95gq": {}}, "origin": "Twitch", "reason": "auEXmJAt", "source": "TRADE"}, "currencyCode": "MF9dNpQb", "userIds": ["U5hBqc6p", "h6gIben6", "g80Ctib5"]}, {"creditRequest": {"amount": 85, "expireAt": "1991-05-08T00:00:00Z", "metadata": {"QGtswJOV": {}, "zj3L33wt": {}, "j9W2jFlZ": {}}, "origin": "Twitch", "reason": "22bxaU3V", "source": "REWARD"}, "currencyCode": "kSDb05DU", "userIds": ["yRu5Cm8D", "0IU2jRkZ", "mRTWPp5h"]}, {"creditRequest": {"amount": 25, "expireAt": "1996-03-19T00:00:00Z", "metadata": {"uxz2tErz": {}, "kDvEqhBj": {}, "asozKhGK": {}}, "origin": "Steam", "reason": "3issKBGH", "source": "TRADE"}, "currencyCode": "cxgXgsgs", "userIds": ["zOYyYkFQ", "0fqU9B8G", "Uz3xZjwq"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "NcImYCPC", "request": {"allowOverdraft": true, "amount": 77, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"6edpzUuA": {}, "ZUJ2FvC6": {}, "5zXG7pKG": {}}, "reason": "oK7nlvbP"}, "userIds": ["WNP5Ihcg", "zCOzIWZe", "SperuUTa"]}, {"currencyCode": "YKVp13nN", "request": {"allowOverdraft": false, "amount": 52, "balanceOrigin": "GooglePlay", "balanceSource": "PAYMENT", "metadata": {"ckKSwEYa": {}, "MTDNgbEW": {}, "1QMVRfpE": {}}, "reason": "2BnjAEia"}, "userIds": ["Ws4dYTX7", "HQ19ehqL", "5ZaQ9adM"]}, {"currencyCode": "1tZ7KRnK", "request": {"allowOverdraft": true, "amount": 37, "balanceOrigin": "Twitch", "balanceSource": "TRADE", "metadata": {"wpINpNIN": {}, "3XGb82yL": {}, "eaoFOPQQ": {}}, "reason": "eS467zGX"}, "userIds": ["VOdWXQyg", "Sy9KTyLf", "reF5nCNO"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'ppcHso3k' \
    --end 'aE9mNgur' \
    --start 'exAocorn' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["UiUE7WUa", "W0fzHjTc", "82WhIuVJ"], "apiKey": "PLUoDgxe", "authoriseAsCapture": true, "blockedPaymentMethods": ["e9X0XLno", "NdmiDTt0", "wKKtQYsZ"], "clientKey": "jQ9Ydmte", "dropInSettings": "o2QY1ww2", "liveEndpointUrlPrefix": "APWFsuIH", "merchantAccount": "IwgJV0RB", "notificationHmacKey": "2ERg4vN6", "notificationPassword": "bkuJoDrM", "notificationUsername": "3iNlgV8H", "returnUrl": "XoyfzOk8", "settings": "ZdZhIZJr"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "fsQklOud", "privateKey": "pUL7Nrzm", "publicKey": "gJSZJP1V", "returnUrl": "b0RADexL"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "KOLavQ2Y", "secretKey": "D218YqGc"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'lLJ0U3pH' \
    --region 'fIZN4Kxj' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "lsDg3OxG", "webhookSecretKey": "oDIzZPtc"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "D3K2GcXF", "clientSecret": "tgTcYKSQ", "returnUrl": "kwoajOX8", "webHookId": "ZzXE7QGD"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["PqPwtmju", "BerxwVa7", "5ZQTYHTm"], "publishableKey": "euo3p76d", "secretKey": "AMfvCbVq", "webhookSecret": "IjwvMJxT"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "bCt1uAYA", "key": "pLXy181o", "mchid": "n1I1vv88", "returnUrl": "1veTnqRE"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "hI5SgXyu", "flowCompletionUrl": "DHC0TicG", "merchantId": 11, "projectId": 54, "projectSecretKey": "UszqbZgD"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'zyD498F1' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'TGwPiG8J' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["1onkC97d", "rC0Lk2Ym", "sgR1ESCy"], "apiKey": "5tf4gw5Z", "authoriseAsCapture": false, "blockedPaymentMethods": ["9w9d81iW", "VM2VqYS5", "SiJm8yJC"], "clientKey": "l7W74Jlj", "dropInSettings": "wEww6ILY", "liveEndpointUrlPrefix": "TMFcnrHk", "merchantAccount": "73TPO1G0", "notificationHmacKey": "r50WNtkH", "notificationPassword": "7jetri0Z", "notificationUsername": "VTw3Gs6v", "returnUrl": "zYpxs25p", "settings": "28jPUDVu"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'cwkCTHHI' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'FjrfsDlu' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "15npu0HA", "privateKey": "aWlZiYhG", "publicKey": "GTxfX9Fg", "returnUrl": "JdZO5Vun"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'mFjQSFSa' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'YMlZAshA' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "N0i6pcJj", "secretKey": "J3HnxHzA"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'bWfz8s2y' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'o6kYcEZy' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "WdiYp6AJ", "webhookSecretKey": "qO2B7mtD"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id '9n7LYV9L' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CbDSlJwk' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "Yi9DTnGF", "clientSecret": "dwaj6LsO", "returnUrl": "5pq6tGzl", "webHookId": "0S12dQ32"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'P8SNLTls' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '8aHowAzA' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["kQRvoKz4", "FtN9QhjO", "GTwt0mbK"], "publishableKey": "9wjCJxQz", "secretKey": "0rNrAa1k", "webhookSecret": "xW4cKNRi"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '1reL6Itd' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'zCzVLZWs' \
    --validate 'false' \
    --body '{"appId": "E3eIu82w", "key": "f3fvEpKy", "mchid": "5R8G8jUv", "returnUrl": "Vz0vlpyE"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'UvNyqoG2' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'VuSVyoVj' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '9HhxdHoH' \
    --validate 'false' \
    --body '{"apiKey": "uo5DJEU8", "flowCompletionUrl": "3H4vOGXe", "merchantId": 56, "projectId": 85, "projectSecretKey": "67nXKlCS"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'pudBj3mp' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'zZpMVoJW' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '6' \
    --namespace 'ITYhSpra' \
    --offset '70' \
    --region '54GuT4YY' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "CaMeDH6s", "region": "K0GJB34T", "sandboxTaxJarApiToken": "qEhwWpyb", "specials": ["XSOLLA", "WALLET", "WXPAY"], "taxJarApiToken": "wwiMc4gI", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'X2IjniB7' \
    --region 'U7AIZYkp' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'jKECm7aO' \
    --body '{"aggregate": "XSOLLA", "namespace": "adlZNaW1", "region": "VPRp9Hh7", "sandboxTaxJarApiToken": "SuzN0jJd", "specials": ["WALLET", "ALIPAY", "ALIPAY"], "taxJarApiToken": "AeIuoeYJ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'GENSeHzy' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "NHP7kmXw", "taxJarApiToken": "j24ks547", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ajtqR6Cw": "0JUEMcU8", "ySVb65bu": "YC06vP1I", "wer0YEqW": "R60oqnZb"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'UPTuyiQF' \
    --end 'fNrWw08K' \
    --start 'MktU9Ha7' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '4Opoin7c' \
    --storeId 'YRYSVx9j' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'qQEHXNRs' \
    --storeId 'eIPUNjJ5' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'P9S9DtQb' \
    --namespace $AB_NAMESPACE \
    --language '3H65vi5u' \
    --storeId '0iwGvflu' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'l7ohX49U' \
    --namespace $AB_NAMESPACE \
    --language 'PfzeTBi5' \
    --storeId 'EB9WxRot' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'rWc40rNM' \
    --namespace $AB_NAMESPACE \
    --language 'tSkQrosP' \
    --storeId 'D1Zx9fqG' \
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
    --dlcType 'OCULUS' \
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
    --platform 'STEAM' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'sFEBRcpo' \
    --region 'dsMZbh9N' \
    --storeId 'NwwKBbFy' \
    --appId 'sLMIcXGw' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'xXW4V2aP' \
    --categoryPath 'BQhrct7I' \
    --features 'xYx1S2BP' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'Rbc7vUwl' \
    --limit '9' \
    --offset '93' \
    --region 'MQXNC2Zc' \
    --sortBy '["createdAt:desc", "displayOrder", "createdAt"]' \
    --storeId 'neUZ2GZK' \
    --tags 'Ek3hW1GM' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'gFwei2SK' \
    --region '6dxAIGeu' \
    --storeId 'UOUGYsjj' \
    --sku 'Y2rsxrh0' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'KH680AGr' \
    --storeId 'sM6dqdhn' \
    --itemIds 'mCAPC19F' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'xwTlxlYs' \
    --region 'Njhl2rVh' \
    --storeId 'RLguulfr' \
    --itemIds 'pcSywy7C' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["2TBusSDR", "Dz9VWLSU", "f46hTdFP"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'BUNDLE' \
    --limit '0' \
    --offset '79' \
    --region 'HnsSgYGw' \
    --storeId 'HzqPnjup' \
    --keyword 'McunBLvy' \
    --language 'TgeAV6LN' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'sbktoeYC' \
    --namespace $AB_NAMESPACE \
    --language '1xpdCj9q' \
    --region 'AjcAehm3' \
    --storeId 'KhaB3Sl9' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'ipfTq3bu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'dZLMGWgP' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '2kwHocAB' \
    --populateBundle 'true' \
    --region 'Vb903zFE' \
    --storeId '2aCk7N1f' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "Uq8pX4vT", "successUrl": "LzKXyaJi"}, "paymentOrderNo": "G5HSj22j", "paymentProvider": "ADYEN", "returnUrl": "aJH6ct68", "ui": "yNlloMlp", "zipCode": "MMD2hFkt"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uW1kPRb8' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'e1Bg4pP0' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NOhckLtY' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'RipRv883' \
    --body '{"token": "NGEpsU2i"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WlUgw9dG' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'NEONPAY' \
    --region 'toJclldO' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'BCcsZ5xC' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '7gvw9e1q' \
    --foreinginvoice 'WX3tDL1r' \
    --invoiceId 'k8mHSbDu' \
    --payload 'Veg6B4Lt' \
    --redirectResult '87plm2Uf' \
    --resultCode 'bD0Sjq1T' \
    --sessionId 'xohONYEX' \
    --status 'JLhp1ZZa' \
    --token 'q3HjHol5' \
    --type 'G850C04z' \
    --userId 'HPe1GRE6' \
    --orderNo '0PPd8nse' \
    --paymentOrderNo 'f8zxgZA5' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 's5iErInJ' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'e7Z2bCWg' \
    --paymentOrderNo 'JlpZqr4F' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'y7VnGe9d' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Zk5I7ObT' \
    --limit '53' \
    --offset '33' \
    --sortBy '["rewardCode:asc", "rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'OxdDpC1f' \
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
    --appIds '["yFqb2GHD", "0HYbEnQj", "x8eXldtn"]' \
    --itemIds '["ODbRsdOa", "yer4dKUW", "eQrUzC3C"]' \
    --skus '["DyA9IiIV", "Rwkh6mJC", "LIHz1d7v"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'IDZcBKim' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'zHy6v3vN' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'tBuP279o' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["6igPnXXZ", "tjQSpnWs", "NULL4JQ0"]' \
    --itemIds '["Dbk88eLD", "4Doi9tIj", "JNSThJfm"]' \
    --skus '["I3lojObn", "zuQo23jz", "AKWF8iDE"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "H3ou5qc2", "language": "wPC-771", "region": "PLUnZgib"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'OMgyHM6P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'R5fu8y7h' \
    --body '{"epicGamesJwtToken": "W1cWU0kr"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'RClVzhQe' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'sMhPuZ4Y' \
    --body '{"serviceLabel": 89}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'bvO3b4BS' \
    --body '{"serviceLabels": [7, 15, 87]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KgCKwdXc' \
    --body '{"appId": "Bx6HArNB", "steamId": "sLwWmzqg"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JdOiFtOW' \
    --body '{"xstsToken": "sjJVmg7E"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'VU0EKuQA' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'g0SyCVRQ' \
    --features '["pCaOSRMh", "gwqVva4w", "8SDNJoPb"]' \
    --itemId '["VpyVtLvr", "xShW2CLr", "wM4XONlA"]' \
    --limit '58' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'V9McW95I' \
    --appId 'kZ1Xesut' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '6flUAAOQ' \
    --limit '51' \
    --offset '22' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '2nHsbyo6' \
    --availablePlatformOnly 'false' \
    --ids '["J02RHgyc", "xOZTiZbl", "1h2GGtAN"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ZN0gYWhv' \
    --endDate 'kqZLMSTv' \
    --entitlementClazz 'APP' \
    --limit '27' \
    --offset '3' \
    --startDate '07XobOui' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'EH6xIsfP' \
    --appIds '["jT2GPuIQ", "sJM5Rbx5", "SpiHcQGa"]' \
    --itemIds '["GiHROdTe", "4OkVjudE", "2VcHK4ej"]' \
    --skus '["CvrzsUWm", "hWSrTAGC", "cTPkk27v"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZqtuA4B7' \
    --appId '5YA9iHRd' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'x1HXfOd1' \
    --entitlementClazz 'APP' \
    --itemId 'uwTcWZRf' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bsi1hvRV' \
    --ids '["PJVYTHy9", "8cMjWy5M", "n2J5GGdj"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'AHpSSera' \
    --entitlementClazz 'CODE' \
    --sku 'z2dCtmhp' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'hlEugE8u' \
    --namespace $AB_NAMESPACE \
    --userId '6iNR2s5H' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '4jGUaQSK' \
    --namespace $AB_NAMESPACE \
    --userId 'tnXLXhFG' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["plj28SXG", "zS0odqv0", "lTzVVpaw"], "requestId": "JzC0W6kq", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'dMweIuCB' \
    --namespace $AB_NAMESPACE \
    --userId 'WUAM9l3C' \
    --body '{"requestId": "vy5CDlTb", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'I9qJcOvG' \
    --namespace $AB_NAMESPACE \
    --userId 'id3yLnvQ' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 21}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'bpPXAH7m' \
    --namespace $AB_NAMESPACE \
    --userId 'XbsLQsfN' \
    --body '{"entitlementId": "jQ15p4Xi", "metadata": {"operationSource": "INVENTORY"}, "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'TBtHGcCD' \
    --body '{"code": "CvCRTfow", "language": "fDI_Jkca", "region": "qCdOIis9"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'QsPEknOT' \
    --body '{"excludeOldTransactions": true, "language": "pNgy-185", "productId": "0fxcflyp", "receiptData": "BExGVwaZ", "region": "Q2Y7yXK9", "transactionId": "gP3SVYor"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'VYcZUBzb' \
    --body '{"epicGamesJwtToken": "ht5UVJmD"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5rxZCLWr' \
    --body '{"autoAck": false, "autoConsume": false, "language": "RYNf", "orderId": "XysDl2ir", "packageName": "x5okOBqQ", "productId": "zCaEatAQ", "purchaseTime": 13, "purchaseToken": "f5klhMRK", "region": "3rVrz6rr", "subscriptionPurchase": false}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'DZWVNvMa' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'LG3YDmE0' \
    --body '{"currencyCode": "HiitTgx9", "price": 0.77767631047426, "productId": "JjTXUm40", "serviceLabel": 93}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'uOIKnBlj' \
    --body '{"currencyCode": "vOZWtgEw", "price": 0.11933954395465862, "productId": "NR9PRqo8", "serviceLabels": [1, 34, 66]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'pG7VlLTa' \
    --body '{"appId": "GrsGfbsv", "currencyCode": "t7WrpJPC", "language": "MgsR_zoGZ-Ja", "price": 0.29483186689586527, "productId": "JjyZ2Uwg", "region": "RIvj28vS", "steamId": "SvTnBhiS"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ohV3UG1D' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'NdQMmsnx' \
    --body '{"orderId": "dFanf6I5"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'HMdE3T1e' \
    --activeOnly 'true' \
    --groupId '1OvNymlO' \
    --limit '15' \
    --offset '60' \
    --productId 'rG5nmOvz' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '8Z2E7avy' \
    --body '{"gameId": "uQ1ZyHX6", "language": "FPb", "region": "2I7AC0g0"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'h3WWd5jH' \
    --body '{"currencyCode": "Vtmh2hdz", "price": 0.5297480677858263, "productId": "juaZYSJF", "xstsToken": "ETyUNuj4"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'G4veLvPA' \
    --discounted 'false' \
    --itemId 'Dp58o6RS' \
    --limit '59' \
    --offset '12' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '3PMc5cWd' \
    --body '{"currencyCode": "yjGcoSTr", "discountCodes": ["WpN4aZYv", "I7OgulV4", "pHK2M1wD"], "discountedPrice": 2, "ext": {"dC0KyuDi": {}, "kvfbNDWw": {}, "fdEsEarj": {}}, "itemId": "SOOLlA3c", "language": "DAlu-Ys", "price": 98, "quantity": 23, "region": "hDFpgvL3", "returnUrl": "QlcNzMBu", "sectionId": "UJDtYTAA"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '7xew1vQk' \
    --body '{"currencyCode": "K2uLgeHs", "discountCodes": ["gHPqsYmN", "eOk4TjBX", "16zHHFwU"], "discountedPrice": 22, "itemId": "KxHMuVFK", "price": 30, "quantity": 5}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'G8L7liDb' \
    --userId 'iRdzDHaa' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ez5e82sv' \
    --userId 'JxBwkLkD' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'WK7qZD5e' \
    --userId 'y9j1fxdx' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '3S3i8UAe' \
    --userId 'DKtwwRFn' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Z7lB2lL0' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'dUa2C15B' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'gaZXRCTI' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'KdlHDyYX' \
    --autoCalcEstimatedPrice 'true' \
    --language 'zflNt9Wn' \
    --region 'VmxOCnXt' \
    --storeId 'JZcUzftg' \
    --viewId 'jx7EJVMo' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'r6X2XPtW' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 's0nCytBY' \
    --limit '4' \
    --offset '13' \
    --sku 'SraORzyF' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Xbg9Whkz' \
    --body '{"currencyCode": "UoTdaRPe", "itemId": "OwIaXQFn", "language": "myDl_GF", "region": "nEEuze6c", "returnUrl": "fZDGaQgN", "source": "DetKWR1m"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PSPu2eyx' \
    --itemId 'wVyMcOp0' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T22zAeZr' \
    --userId 'trSJGXZ3' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4Nr3CrxQ' \
    --userId 'mPS0lvrA' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QoepU2NW' \
    --userId 'djVcv7TG' \
    --body '{"immediate": false, "reason": "JrW2tsPO"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cKvG2ntE' \
    --userId 'JNmMsGpy' \
    --excludeFree 'true' \
    --limit '94' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'zmq1JUrP' \
    --language 'W4MHMk1t' \
    --storeId 'FtPnoiKv' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'SS3RD4F0' \
    --namespace $AB_NAMESPACE \
    --userId 'seJJcZLJ' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'tJA0WlHu' \
    --namespace $AB_NAMESPACE \
    --userId 'LdGecdGJ' \
    --limit '88' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'a0nhQUdb' \
    --limit '0' \
    --offset '60' \
    --startTime 'KPr1Vm3J' \
    --state 'REVOKED' \
    --transactionId 'xauS4Fxg' \
    --userId '7H0YdlsE' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'GAdQtLz7' \
    --baseAppId 'uS15A8oD' \
    --categoryPath '9Sd7i8ZF' \
    --features 'BzXSpQUO' \
    --includeSubCategoryItem 'false' \
    --itemName 'd9QQP3NC' \
    --itemStatus 'INACTIVE' \
    --itemType '["LOOTBOX", "APP", "MEDIA"]' \
    --limit '27' \
    --offset '94' \
    --region 'i16vaZpE' \
    --sectionExclusive 'true' \
    --sortBy '["name:desc", "displayOrder", "createdAt"]' \
    --storeId '2c50omUs' \
    --tags 'BcnCO4el' \
    --targetNamespace 'MeK5tAJY' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'YiMuE0ck' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'FojeHXFY' \
    --body '{"itemIds": ["Nfn4Yobl", "CK4Rjebj", "3ApPXKHG"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'VhvzK5vj' \
    --body '{"entitlementCollectionId": "XPH7OxH6", "entitlementOrigin": "Twitch", "metadata": {"PNFAXWAg": {}, "BAzSIiVp": {}, "XspUaISo": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "gxbNUYsP", "namespace": "nu6JYbFt"}, "item": {"itemId": "jMyWgVRv", "itemName": "8Ws30LZ8", "itemSku": "8ubzKNcQ", "itemType": "cPnKTQjp"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "ly0XyHvw", "namespace": "llBaTynZ"}, "item": {"itemId": "6zj4vA2D", "itemName": "p87rJIdK", "itemSku": "jnYtW6Fo", "itemType": "NcR7Z0RQ"}, "quantity": 29, "type": "ITEM"}, {"currency": {"currencyCode": "BGdgdIuv", "namespace": "8GCXn1zu"}, "item": {"itemId": "LgE3Cywq", "itemName": "6nLa3wdw", "itemSku": "hJcmutOg", "itemType": "WXPEKyQB"}, "quantity": 10, "type": "ITEM"}], "source": "ACHIEVEMENT", "transactionId": "qbJoqn9N"}' \
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
    --userId 'vz0H5Xas' \
    --body '{"transactionId": "VJitqEOe"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'Z4bhLGMp' \
    --userId 'CusnU89t' \
    --body '{"items": [{"duration": 29, "endDate": "1971-10-26T00:00:00Z", "entitlementCollectionId": "oDnvkWRW", "entitlementOrigin": "Xbox", "itemId": "eiTAyqzX", "itemSku": "k00yKdHI", "language": "89peSDeL", "metadata": {"7H08ruv3": {}, "Xhcd23RD": {}, "LDPPWWCD": {}}, "orderNo": "JafRPh26", "origin": "System", "quantity": 88, "region": "QLk2qDE2", "source": "DLC", "startDate": "1985-05-20T00:00:00Z", "storeId": "1kiE88x0"}, {"duration": 70, "endDate": "1994-09-21T00:00:00Z", "entitlementCollectionId": "4RUlcCCP", "entitlementOrigin": "Oculus", "itemId": "C9UdQqC1", "itemSku": "s0TcCKkD", "language": "fml0m3mE", "metadata": {"B5zZYlMk": {}, "21qe64ZJ": {}, "AUTowcB3": {}}, "orderNo": "BXJIsUFB", "origin": "Nintendo", "quantity": 33, "region": "Nx7qtWuW", "source": "OTHER", "startDate": "1984-10-24T00:00:00Z", "storeId": "qFASjjnc"}, {"duration": 99, "endDate": "1975-06-15T00:00:00Z", "entitlementCollectionId": "CAlausk6", "entitlementOrigin": "Other", "itemId": "jMgnrZq8", "itemSku": "5WI0V5Gr", "language": "6Fv5PuUd", "metadata": {"RDDk2z9b": {}, "bCv9tZTw": {}, "k2vXwTtv": {}}, "orderNo": "7wEsRm6Z", "origin": "Nintendo", "quantity": 10, "region": "yJ4OgYPS", "source": "PAYMENT", "startDate": "1995-09-24T00:00:00Z", "storeId": "93NPW83U"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'HkYgvrun' \
    --userId 'h4mp9SAG' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'PqGwG4x2' \
    --userId 'iv5eKGIt' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE