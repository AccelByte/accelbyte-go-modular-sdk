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
    --id '70BRQ5e3' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'vIiBOMSZ' \
    --body '{"grantDays": "R0PkZzFT"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '6TKlUjHG' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'nn2S4YjB' \
    --body '{"grantDays": "U4f9GmxE"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "OlKy39uw", "dryRun": false, "fulfillmentUrl": "j7mNFguJ", "itemType": "BUNDLE", "purchaseConditionUrl": "apf7fknr"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'dPUPf5P6' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'MQPb8ilc' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'PDp8wGFM' \
    --body '{"clazz": "aaYZMZYR", "dryRun": true, "fulfillmentUrl": "u6sWMcWK", "purchaseConditionUrl": "ofIaZF8L"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'E6g4wPcC' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'ScT0pZrF' \
    --offset '22' \
    --tag 'Wn42BBKZ' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZM4XWTOB", "discountConfig": {"categories": [{"categoryPath": "7UBelRhd", "includeSubCategories": true}, {"categoryPath": "uvQ4bmE1", "includeSubCategories": true}, {"categoryPath": "9BwonHcE", "includeSubCategories": false}], "currencyCode": "gnO7twj9", "currencyNamespace": "5H5Dz08B", "discountAmount": 27, "discountPercentage": 48, "discountType": "AMOUNT", "items": [{"itemId": "J62GFJIz", "itemName": "g8syMIOX"}, {"itemId": "Dc4X9dNl", "itemName": "xK1aIwIW"}, {"itemId": "6S92Mwmh", "itemName": "oxrdBEpi"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 96, "itemId": "Ju37feUm", "itemName": "ESVhiMrs", "quantity": 96}, {"extraSubscriptionDays": 74, "itemId": "QJi6UJio", "itemName": "Bz1QNrYU", "quantity": 64}, {"extraSubscriptionDays": 93, "itemId": "GrqrFRPC", "itemName": "muPs65d0", "quantity": 69}], "maxRedeemCountPerCampaignPerUser": 8, "maxRedeemCountPerCode": 33, "maxRedeemCountPerCodePerUser": 93, "maxSaleCount": 57, "name": "yrne3tCp", "redeemEnd": "1994-11-02T00:00:00Z", "redeemStart": "1982-05-25T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["5uexy2NT", "YjorAXih", "E0MpiptA"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'w06bfZwt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'aJz1Oo84' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jv66fNDc", "discountConfig": {"categories": [{"categoryPath": "fvyDEkaS", "includeSubCategories": false}, {"categoryPath": "aoSVLijk", "includeSubCategories": false}, {"categoryPath": "9C7kKlLY", "includeSubCategories": false}], "currencyCode": "m7rdHobJ", "currencyNamespace": "dSqyrqiH", "discountAmount": 51, "discountPercentage": 9, "discountType": "PERCENTAGE", "items": [{"itemId": "WwQeLibz", "itemName": "r3dldgJi"}, {"itemId": "J7RKcKr2", "itemName": "4CBbQBZG"}, {"itemId": "Rd4RMgNT", "itemName": "plh46WH4"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 14, "itemId": "GTfdqblt", "itemName": "GOOPEwgf", "quantity": 85}, {"extraSubscriptionDays": 88, "itemId": "hKfzI7bd", "itemName": "e0kl08u9", "quantity": 21}, {"extraSubscriptionDays": 52, "itemId": "bjP8ipOG", "itemName": "PdNUWs4p", "quantity": 66}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 94, "name": "eKuyBPfz", "redeemEnd": "1976-11-27T00:00:00Z", "redeemStart": "1977-02-14T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["oe8BCYYz", "x8UV7D66", "UJdk5egj"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'qYA3BOPX' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "3jUxkNYF", "oldName": "o0yNxJNu"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'el5f7m5R' \
    --namespace $AB_NAMESPACE \
    --batchName 'N7Jmjx63' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '7BswgaSx' \
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
    --body '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["CATALOG", "CAMPAIGN"]}' \
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
    --body '{"appConfig": {"appName": "tsKJYkso"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "0VcxlSlb"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "KCuxCjtt"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "2spdeihQ"}, "extendType": "CUSTOM"}' \
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
    --storeId '7PIkC3LE' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'tvEIv3uY' \
    --body '{"categoryPath": "UDJjSHVn", "localizationDisplayNames": {"W6R4JhNe": "BMukP7h2", "NcBvBJak": "ONGQoDio", "Yvk6CG8v": "pK3wIxpw"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'vDCxazrF' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'onwFJ9FA' \
    --namespace $AB_NAMESPACE \
    --storeId 'cjIn3zhN' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'IUSnAQDP' \
    --namespace $AB_NAMESPACE \
    --storeId 'seJqHlO9' \
    --body '{"localizationDisplayNames": {"EAIFOolX": "HGfWxMKu", "L5uxtZLm": "zvS6mbyu", "awXDRGbu": "WVOdPpDD"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'p5btUToK' \
    --namespace $AB_NAMESPACE \
    --storeId 'nMiv5FLT' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'wJAhj3zF' \
    --namespace $AB_NAMESPACE \
    --storeId 'FG0GFJA9' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'SSmk9FhN' \
    --namespace $AB_NAMESPACE \
    --storeId 'MGzCRO1u' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '1gWMj3ze' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'gmO86boy' \
    --batchNo '[81, 30, 19]' \
    --code 'M7bvtQcd' \
    --limit '91' \
    --offset '56' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Z1KBS0t4' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "tnFWpQuR", "codeValue": "wh47TyOE", "quantity": 40}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'NhC7IYuI' \
    --namespace $AB_NAMESPACE \
    --batchName 'ncnjJR5X' \
    --batchNo '[69, 60, 98]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'LCTHTH6V' \
    --namespace $AB_NAMESPACE \
    --batchName 'MnFoez7a' \
    --batchNo '[2, 93, 19]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'FzjtXWzx' \
    --namespace $AB_NAMESPACE \
    --batchName 'O5sB7t0G' \
    --batchNo '[0, 50, 1]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'uWxUe5M1' \
    --namespace $AB_NAMESPACE \
    --code 'eGVjKdFT' \
    --limit '16' \
    --offset '97' \
    --userId 'iERabFwP' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '48L6fUhz' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '8v76QEic' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'fKMuHtsG' \
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
    --body '{"currencyCode": "SWWF3bRH", "currencySymbol": "d2tVH9QN", "currencyType": "VIRTUAL", "decimals": 28, "localizationDescriptions": {"5pZVBoGI": "bghCANXX", "iYXipAOw": "wa0otmmc", "PCHg7Ox3": "dMptUFJi"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'GbifmH1s' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"lEsk25dq": "yd17oKNO", "fWWaW4AI": "PreA4xgo", "63xC1E05": "ELuMzF59"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'nLyWz2t7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'LeBfgEyO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'PU3Xo56e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace $AB_NAMESPACE \
    --dlcId '2rziFfyO' \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id '0uuvL9mR' \
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
    --body '{"data": [{"autoUpdate": false, "enableRevocation": false, "id": "UYWlsQxu", "rewards": [{"currency": {"currencyCode": "Cwa6fos2", "namespace": "D3l0QzZ9"}, "item": {"itemId": "iSnljYuC", "itemName": "LAvKomJ6", "itemSku": "4sS0rphD", "itemType": "5oFasJlt"}, "quantity": 47, "type": "ITEM"}, {"currency": {"currencyCode": "g9mNGUhR", "namespace": "ieRqdcal"}, "item": {"itemId": "nsMHQyBP", "itemName": "XhRpWBgY", "itemSku": "uHFQlE5l", "itemType": "B7kEDUNn"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "a7OCWnny", "namespace": "JAiWnhuz"}, "item": {"itemId": "SJxDFzch", "itemName": "IybzjviM", "itemSku": "WpSj2Lsu", "itemType": "pOP3sGeg"}, "quantity": 34, "type": "CURRENCY"}], "rvn": 99}, {"autoUpdate": false, "enableRevocation": true, "id": "08SX8i9S", "rewards": [{"currency": {"currencyCode": "9NVCC0cx", "namespace": "SMvwi9V8"}, "item": {"itemId": "CmamTlZx", "itemName": "osna7Pos", "itemSku": "alEoDpu7", "itemType": "urv7UIMi"}, "quantity": 21, "type": "CURRENCY"}, {"currency": {"currencyCode": "rCNRrYmQ", "namespace": "OEMuKigO"}, "item": {"itemId": "oKAXYsrn", "itemName": "NIWQY62P", "itemSku": "PBLtd9IJ", "itemType": "baNjms1B"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "dH6DV62B", "namespace": "t6Rc2LWk"}, "item": {"itemId": "7lZMbQp5", "itemName": "tLS29slx", "itemSku": "UXY5hOuy", "itemType": "bECZA2CL"}, "quantity": 63, "type": "ITEM"}], "rvn": 16}, {"autoUpdate": true, "enableRevocation": true, "id": "5W0UnTux", "rewards": [{"currency": {"currencyCode": "JkdBQSys", "namespace": "FoJOQu4g"}, "item": {"itemId": "Nf3cjuWx", "itemName": "2T8slgs2", "itemSku": "WY5t45If", "itemType": "iz1GfvFb"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "I3xYRKSR", "namespace": "PwiWwgZz"}, "item": {"itemId": "W3BvWWzk", "itemName": "66MLMJ8O", "itemSku": "2ylS0Gey", "itemType": "XZbAYEMT"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "3QJA0mRO", "namespace": "6NcKIKrX"}, "item": {"itemId": "2JQ2OORD", "itemName": "VZgAE7C7", "itemSku": "9SsIKyMf", "itemType": "OwrUJS9d"}, "quantity": 90, "type": "CURRENCY"}], "rvn": 86}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"P6womaOF": "SICvoK3U", "hKaP9kwX": "4iwD1TbC", "9bsQYG2j": "976rprMx"}}, {"platform": "OCULUS", "platformDlcIdMap": {"e4eR1d7M": "Ix3g5VTs", "pD6XDkdw": "CwQ8tbe4", "fpXPTyCo": "pV3fTK5n"}}, {"platform": "OCULUS", "platformDlcIdMap": {"O002ZIWX": "IcwypziG", "Itk0f4r7": "TWC4PweW", "w99MtDmV": "92dciM4Q"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'sDzRfewZ' \
    --itemId '["leBW1Cbm", "8edMaTJ3", "VlGwMG66"]' \
    --limit '47' \
    --offset '1' \
    --origin 'Other' \
    --userId 'tOBOTUto' \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements1' test.out

#- 66 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["UhhQyBTJ", "vyxpPTHs", "LGjG0JVh"]' \
    --limit '48' \
    --offset '93' \
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
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 68 'GetEntitlementConfigInfo' test.out

#- 69 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "CeQ31prl", "endDate": "1994-06-10T00:00:00Z", "grantedCode": "HkNQBxMA", "itemId": "hmXbwZRr", "itemNamespace": "rusdwJzR", "language": "CK", "metadata": {"F3NDVo2T": {}, "UAzj1fE4": {}, "4MOxdcgS": {}}, "origin": "IOS", "quantity": 2, "region": "4p8SYpVf", "source": "GIFT", "startDate": "1990-04-22T00:00:00Z", "storeId": "N6qmXNJc"}, {"collectionId": "09RxdWQj", "endDate": "1975-04-10T00:00:00Z", "grantedCode": "NfUOz5GK", "itemId": "vFBYABj5", "itemNamespace": "tB9PAHwo", "language": "yvw", "metadata": {"WCnReo4e": {}, "CFclJri5": {}, "nJI64Em9": {}}, "origin": "Nintendo", "quantity": 78, "region": "0fBDPt6s", "source": "OTHER", "startDate": "1977-09-13T00:00:00Z", "storeId": "RP1ybJFk"}, {"collectionId": "KccW548w", "endDate": "1983-08-10T00:00:00Z", "grantedCode": "GmFakUUs", "itemId": "GUarDgC2", "itemNamespace": "ruEYrtA3", "language": "NYu-PZMI", "metadata": {"1kAHt46b": {}, "TrOdiGPp": {}, "tqkVexWL": {}}, "origin": "Oculus", "quantity": 50, "region": "zICoijqt", "source": "REDEEM_CODE", "startDate": "1990-11-28T00:00:00Z", "storeId": "QcDOlto0"}], "userIds": ["nIqs9Lxf", "fasDRKVG", "YBJAFFxb"]}' \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["uk81nGyK", "byrLhBCh", "ZLIglsu2"]' \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'aMQM588m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetEntitlement' test.out

#- 72 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '73' \
    --status 'SUCCESS' \
    --userId 'pKQEM1It' \
    > test.out 2>&1
eval_tap $? 72 'QueryFulfillmentHistories' test.out

#- 73 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'FT55zJJG' \
    --eventType 'REFUND' \
    --externalOrderId '4kN3ilgv' \
    --limit '44' \
    --offset '38' \
    --startTime 'fjsBNkZQ' \
    --status 'SUCCESS' \
    --userId 'FqY5hjEh' \
    > test.out 2>&1
eval_tap $? 73 'QueryIAPClawbackHistory' test.out

#- 74 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "wWsezIdL", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 33, "clientTransactionId": "F9XxIzyT"}, {"amountConsumed": 67, "clientTransactionId": "fHunr7w9"}, {"amountConsumed": 44, "clientTransactionId": "rfqhgobc"}], "entitlementId": "4a1tAAas", "usageCount": 21}, {"clientTransaction": [{"amountConsumed": 3, "clientTransactionId": "wcBxUNNf"}, {"amountConsumed": 48, "clientTransactionId": "6UYW1WSm"}, {"amountConsumed": 43, "clientTransactionId": "7LbmXpa8"}], "entitlementId": "NLycuv6F", "usageCount": 83}, {"clientTransaction": [{"amountConsumed": 2, "clientTransactionId": "2cVcXfG0"}, {"amountConsumed": 29, "clientTransactionId": "UG851a0L"}, {"amountConsumed": 50, "clientTransactionId": "jX8NJifX"}], "entitlementId": "YMWe1vf9", "usageCount": 36}], "purpose": "X53CtTQm"}, "originalTitleName": "oHWuFkkb", "paymentProductSKU": "41kXmKfc", "purchaseDate": "RG5eawXZ", "sourceOrderItemId": "oHbIFeXK", "titleName": "bC3YDh3a"}, "eventDomain": "ziSdK5i8", "eventSource": "T8WZfkQm", "eventType": "8mxDJilG", "eventVersion": 78, "id": "Ct4e2A9u", "timestamp": "TIYpA4Lo"}' \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "rmxqzmQe", "eventState": "wTsK3dhr", "lineItemId": "o5JC0WVW", "orderId": "HBsaJ97h", "productId": "Um2Cj5NS", "productType": "qAY1W6hF", "purchasedDate": "pQiDzYxz", "sandboxId": "W5SQRMeY", "skuId": "AvAke0lw", "subscriptionData": {"consumedDurationInDays": 87, "dateTime": "hUmjNEtf", "durationInDays": 2, "recurrenceId": "ons8bn6F"}}, "datacontenttype": "SgGyg5op", "id": "2pcx4oeQ", "source": "MjXFutuA", "specVersion": "Vo7YSbAc", "subject": "RrVsVztO", "time": "Ib1lySyM", "traceparent": "uyBMN71R", "type": "zSOi6coy"}' \
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
    --body '{"appAppleId": 5, "bundleId": "FQxUPGbF", "issuerId": "FJeoRAox", "keyId": "7ZYDswYD", "password": "1jxXZ3Wf", "version": "V1"}' \
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
    --body '{"sandboxId": "mLIuixFq"}' \
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
    --body '{"applicationName": "f5CYuLIa", "notificationTokenAudience": "TP6FhNjh", "notificationTokenEmail": "ukd62sy6", "packageName": "PLzUNhf4", "serviceAccountId": "B4wfsn3q"}' \
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
    --body '{"data": [{"itemIdentity": "bq9GoPyK", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ftNgXisD": "ADcWGkbg", "rfyqyyk5": "fZPHZLMb", "Ly0kcENH": "1hPeMZqP"}}, {"itemIdentity": "Fg2k3lxI", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YNfnSpjv": "2Gb0XBJ3", "4Ic4lgAR": "0UDuKLcj", "N8yKMpjv": "krqqh2DQ"}}, {"itemIdentity": "DP1KnXza", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"H9hm0VIx": "mBIYUQFd", "Pythzqrd": "NwWAnAIw", "iIVr4LA5": "LzgafmzP"}}]}' \
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
    --body '{"appId": "Tlez7e2Z", "appSecret": "pShZG2bM"}' \
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
    --body '{"backOfficeServerClientId": "8TZwRpmy", "backOfficeServerClientSecret": "Opryvuvd", "enableStreamJob": true, "environment": "bcEM2vZ2", "streamName": "o09O04TD", "streamPartnerName": "v96mcOTI"}' \
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
    --body '{"backOfficeServerClientId": "byNVYbPs", "backOfficeServerClientSecret": "tHQeqNOn", "enableStreamJob": true, "environment": "gltWOpwR", "streamName": "Bm1pNPiy", "streamPartnerName": "SiRSHImo"}' \
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
    --body '{"appId": "Jsnr5UCm", "env": "LIVE", "publisherAuthenticationKey": "SfvMaHvW", "syncMode": "INVENTORY"}' \
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
    --body '{"clientId": "ZtNojRBv", "clientSecret": "aTurCfy9", "organizationId": "RemXwv82"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "P6T4xbkv", "entraAppClientSecret": "U76o7HuH", "entraTenantId": "5gB9PpUh", "relyingPartyCert": "4oeH1AwN"}' \
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
    --password 'DEKDw9a6' \
    > test.out 2>&1
eval_tap $? 107 'UpdateXblBPCertFile' test.out

#- 108 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Ji1LiASQ' \
    --externalId 'byRlbn75' \
    --limit '7' \
    --offset '60' \
    --source 'PLAYSTATION' \
    --startDate '7iI9xFXm' \
    --status 'WARN' \
    --type 'lHnImo7z' \
    > test.out 2>&1
eval_tap $? 108 'QueryThirdPartyNotifications' test.out

#- 109 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '2' \
    --orderId 'HM5vTm1G' \
    --steamId 'L6XC4bIp' \
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
    --body '{"env": "SANDBOX", "lastTime": "1996-09-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo '5r1NPOuX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminRefundIAPOrder' test.out

#- 113 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '93' \
    --orderId 'hpdOW1UQ' \
    --processStatus 'IGNORED' \
    --steamId '3gpA2Io5' \
    > test.out 2>&1
eval_tap $? 113 'QuerySteamReportHistories' test.out

#- 114 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'w0K1Epkm' \
    --limit '33' \
    --offset '4' \
    --platform 'OCULUS' \
    --productId '7yYehTkN' \
    --userId 'BAT1z3h4' \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartySubscription' test.out

#- 115 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'YUe7JYTS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'NE3QeYZ5' \
    --feature '7NQJkD96' \
    --itemId '5kodDLuf' \
    --itemType 'APP' \
    --startTime 'VGT1Lmli' \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime '0vtoES46' \
    --feature 'yCB7wL7N' \
    --itemId 'rbxalBK4' \
    --itemType 'SUBSCRIPTION' \
    --startTime 'Hj4ertEt' \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'pV7cCvnz' \
    --body '{"categoryPath": "Qrttrfo1", "targetItemId": "Myd6VFcE", "targetNamespace": "rjXGnxqa"}' \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'lPkelPjK' \
    --body '{"appId": "CpwmhLDv", "appType": "DLC", "baseAppId": "iKm2E2Qw", "boothName": "ra72a4sm", "categoryPath": "a1Ghapag", "clazz": "vSlJeJum", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"WCatH8lU": {}, "6PgWWfMd": {}, "HFfmzAop": {}}, "features": ["widCbjPO", "QzKhERLy", "PGA4S75W"], "flexible": false, "images": [{"as": "G6ruiY1D", "caption": "M9NgRngs", "height": 48, "imageUrl": "xVsd1mCe", "smallImageUrl": "GNpXJu3p", "width": 28}, {"as": "ijSezhYz", "caption": "TSLbJX4b", "height": 96, "imageUrl": "vQmkWfFc", "smallImageUrl": "DEOQuCcK", "width": 73}, {"as": "O60eBg3W", "caption": "u2l501Yf", "height": 63, "imageUrl": "FpB0d4Py", "smallImageUrl": "5DgywbfF", "width": 45}], "inventoryConfig": {"customAttributes": {"enNv4hJa": {}, "paf018EE": {}, "bqtaP1ku": {}}, "serverCustomAttributes": {"1Yvn0iTA": {}, "o9BLM4Kn": {}, "o8dqq5rK": {}}, "slotUsed": 100}, "itemIds": ["AFCaVjis", "LBqdOk1D", "Xw2OMoZw"], "itemQty": {"JPi2vg5Z": 92, "qIM02JyF": 19, "1VaSFode": 26}, "itemType": "EXTENSION", "listable": false, "localizations": {"SxlEBtZS": {"description": "rZ2nePkw", "localExt": {"qDwXD7MA": {}, "4IkbUxfs": {}, "10g31cQ7": {}}, "longDescription": "HnMX1K4d", "title": "atQLPqN1"}, "xtrDCOUk": {"description": "dr0HzBc1", "localExt": {"m0f44lv8": {}, "LQwvPGbn": {}, "eiXuRXrG": {}}, "longDescription": "UCZJDFd9", "title": "WoFBXIxr"}, "uoqzSFCU": {"description": "1TDIIUzz", "localExt": {"ONYiG2Iq": {}, "MyYPF0XN": {}, "srL7IEQf": {}}, "longDescription": "3IJjkQUU", "title": "HZl0RwQB"}}, "lootBoxConfig": {"rewardCount": 43, "rewards": [{"lootBoxItems": [{"count": 20, "duration": 65, "endDate": "1985-11-14T00:00:00Z", "itemId": "O7ZkpeGV", "itemSku": "NZM89nhl", "itemType": "Vq9D3LsR"}, {"count": 90, "duration": 75, "endDate": "1993-06-23T00:00:00Z", "itemId": "Pj5Asjau", "itemSku": "k06n9gJl", "itemType": "WdeXqykN"}, {"count": 52, "duration": 51, "endDate": "1980-12-08T00:00:00Z", "itemId": "Cf9CHPHt", "itemSku": "uVrs3xl9", "itemType": "qqNyyf8T"}], "name": "puUISTNm", "odds": 0.5820436716569738, "type": "REWARD_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 35, "duration": 67, "endDate": "1975-11-01T00:00:00Z", "itemId": "U1wzDFKw", "itemSku": "uonWIOI5", "itemType": "3T0qfWXi"}, {"count": 68, "duration": 13, "endDate": "1978-12-10T00:00:00Z", "itemId": "gfrbIEaY", "itemSku": "gVHCBUKT", "itemType": "wQM1Gb55"}, {"count": 97, "duration": 53, "endDate": "1988-11-19T00:00:00Z", "itemId": "yV5o2iQL", "itemSku": "HhGmvrV5", "itemType": "qxGT8poO"}], "name": "9xyLXHfU", "odds": 0.35851792761240087, "type": "REWARD", "weight": 3}, {"lootBoxItems": [{"count": 14, "duration": 67, "endDate": "1993-03-23T00:00:00Z", "itemId": "TrqiyHy4", "itemSku": "xlKS4S5s", "itemType": "BauGtv6O"}, {"count": 76, "duration": 83, "endDate": "1994-06-10T00:00:00Z", "itemId": "tWZevyFk", "itemSku": "peTnKsZu", "itemType": "CJxoHg97"}, {"count": 68, "duration": 96, "endDate": "1990-07-27T00:00:00Z", "itemId": "ghxwbgdm", "itemSku": "YzgsuB1A", "itemType": "vyNkURBh"}], "name": "dwsAZFCt", "odds": 0.36404001884533976, "type": "REWARD_GROUP", "weight": 50}], "rollFunction": "CUSTOM"}, "maxCount": 33, "maxCountPerUser": 88, "name": "oP0E3RRR", "optionBoxConfig": {"boxItems": [{"count": 70, "duration": 90, "endDate": "1977-10-26T00:00:00Z", "itemId": "8erPNmWZ", "itemSku": "pkg7KrOF", "itemType": "qaSiRNhd"}, {"count": 15, "duration": 72, "endDate": "1991-12-01T00:00:00Z", "itemId": "JSCmW898", "itemSku": "VJAGpQxq", "itemType": "HJebj9h2"}, {"count": 14, "duration": 87, "endDate": "1997-06-24T00:00:00Z", "itemId": "Pd0Y6E6D", "itemSku": "1nyTU3Ij", "itemType": "C6vkrr5i"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 75, "fixedTrialCycles": 7, "graceDays": 77}, "regionData": {"87h6vJyS": [{"currencyCode": "ZVk3Gi9V", "currencyNamespace": "ixO5zMtO", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1990-07-10T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1996-09-19T00:00:00Z", "expireAt": "1978-03-14T00:00:00Z", "price": 98, "purchaseAt": "1979-07-31T00:00:00Z", "trialPrice": 100}, {"currencyCode": "JjPmcL5S", "currencyNamespace": "8pgIVUwn", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1986-02-12T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1991-05-01T00:00:00Z", "expireAt": "1993-06-30T00:00:00Z", "price": 40, "purchaseAt": "1988-08-28T00:00:00Z", "trialPrice": 35}, {"currencyCode": "pyuyEs7q", "currencyNamespace": "PvvRiZJr", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1986-03-28T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1976-05-09T00:00:00Z", "expireAt": "1984-08-24T00:00:00Z", "price": 20, "purchaseAt": "1998-12-03T00:00:00Z", "trialPrice": 98}], "l77jTSzT": [{"currencyCode": "yS2VzHJq", "currencyNamespace": "oVusopEh", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1989-01-10T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1979-12-20T00:00:00Z", "expireAt": "1986-11-11T00:00:00Z", "price": 89, "purchaseAt": "1974-07-06T00:00:00Z", "trialPrice": 92}, {"currencyCode": "5MWF9Yor", "currencyNamespace": "05cM2k94", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1971-06-23T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1971-06-02T00:00:00Z", "expireAt": "1995-05-31T00:00:00Z", "price": 81, "purchaseAt": "1992-09-03T00:00:00Z", "trialPrice": 6}, {"currencyCode": "TSryE4kU", "currencyNamespace": "IHVfEXQF", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1997-10-17T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1999-06-20T00:00:00Z", "expireAt": "1994-07-31T00:00:00Z", "price": 65, "purchaseAt": "1993-11-10T00:00:00Z", "trialPrice": 31}], "1twMYr0A": [{"currencyCode": "YOzSxUrA", "currencyNamespace": "AvYHNyFf", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1985-05-31T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1977-10-16T00:00:00Z", "expireAt": "1989-07-25T00:00:00Z", "price": 1, "purchaseAt": "1990-05-06T00:00:00Z", "trialPrice": 19}, {"currencyCode": "kItHJhZL", "currencyNamespace": "YjEjbMfj", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1992-01-28T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1994-09-24T00:00:00Z", "expireAt": "1988-12-23T00:00:00Z", "price": 24, "purchaseAt": "1987-08-30T00:00:00Z", "trialPrice": 21}, {"currencyCode": "0hIY1pLN", "currencyNamespace": "z7nTp0i4", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1978-02-10T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1997-04-15T00:00:00Z", "expireAt": "1996-01-26T00:00:00Z", "price": 55, "purchaseAt": "1980-05-21T00:00:00Z", "trialPrice": 16}]}, "saleConfig": {"currencyCode": "WGgCSAjb", "price": 14}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "YqgO0c1G", "stackable": false, "status": "ACTIVE", "tags": ["PprNVg2A", "UBY37ywo", "NIcsnlUY"], "targetCurrencyCode": "HT5Yvtj3", "targetNamespace": "0g4vyi0t", "thumbnailUrl": "qGO5OcV9", "useCount": 63}' \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'yQu6qafR' \
    --appId 'wQAPK8vT' \
    > test.out 2>&1
eval_tap $? 120 'GetItemByAppId' test.out

#- 121 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate '8iZ6Dgqs' \
    --baseAppId '8Uir1Qtz' \
    --categoryPath 'MR8J7nUD' \
    --features 'TeR6vjoq' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --limit '61' \
    --offset '41' \
    --region 'klj92txk' \
    --sortBy '["displayOrder", "name:asc", "name:desc"]' \
    --storeId 'LGYZezpq' \
    --tags 'Y56mgsK6' \
    --targetNamespace 'ZNqOngvH' \
    > test.out 2>&1
eval_tap $? 121 'QueryItems' test.out

#- 122 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["nUxll53X", "99vl7Osf", "buOK0ZvQ"]' \
    > test.out 2>&1
eval_tap $? 122 'ListBasicItemsByFeatures' test.out

#- 123 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'kkjOTofv' \
    --itemIds 'M0YE25t6' \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '5yP4hABQ' \
    --sku 'ham7Iy4N' \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'CBP0eEAD' \
    --populateBundle 'false' \
    --region 'I4NLlCkG' \
    --storeId 'hIhsq4eC' \
    --sku 'dPzgbBMa' \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'wOo8Bst3' \
    --region '9YMLutkp' \
    --storeId 'WOzq8FIy' \
    --itemIds 'n7wp3Rqw' \
    --userId 'h7FGZb4X' \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'hjh2KJ1D' \
    --sku 'BKu1Vy7o' \
    > test.out 2>&1
eval_tap $? 127 'GetItemIdBySku' test.out

#- 128 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["CYZd4reH", "gIFKFake", "ehNWI2sg"]' \
    --storeId 'RddFhDAC' \
    > test.out 2>&1
eval_tap $? 128 'GetBulkItemIdBySkus' test.out

#- 129 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'gfRXgg3k' \
    --region 'EmCSyPP2' \
    --storeId 'SyEVz8cf' \
    --itemIds 'wpOoPkPj' \
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
    --platform 'cRGYoQWi' \
    --userId 'Nyvo2HaO' \
    --body '{"itemIds": ["InnpV3kY", "0lAUuS34", "FBLIWYXg"]}' \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '3ZkC3HtZ' \
    --body '{"changes": [{"itemIdentities": ["kdQdmjvC", "S3gNeGeK", "6n755VPR"], "itemIdentityType": "ITEM_SKU", "regionData": {"rpjQkjVM": [{"currencyCode": "g0iULVZn", "currencyNamespace": "1eEHGiYm", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1974-01-14T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1973-04-14T00:00:00Z", "discountedPrice": 40, "expireAt": "1982-07-27T00:00:00Z", "price": 45, "purchaseAt": "1983-07-29T00:00:00Z", "trialPrice": 57}, {"currencyCode": "NfJKFu8s", "currencyNamespace": "4qDqxcWn", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1989-03-03T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1991-06-23T00:00:00Z", "discountedPrice": 73, "expireAt": "1982-01-03T00:00:00Z", "price": 48, "purchaseAt": "1985-04-12T00:00:00Z", "trialPrice": 88}, {"currencyCode": "sRbXzVIy", "currencyNamespace": "OcQ6gtrW", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1991-11-13T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1984-02-21T00:00:00Z", "discountedPrice": 23, "expireAt": "1990-12-17T00:00:00Z", "price": 75, "purchaseAt": "1983-09-01T00:00:00Z", "trialPrice": 2}], "l1Er80QV": [{"currencyCode": "uoOgOzmp", "currencyNamespace": "gv8daXi3", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1977-09-19T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1990-09-05T00:00:00Z", "discountedPrice": 65, "expireAt": "1998-10-09T00:00:00Z", "price": 1, "purchaseAt": "1979-03-02T00:00:00Z", "trialPrice": 22}, {"currencyCode": "Y7yGVOfQ", "currencyNamespace": "HSw3n3ng", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1973-09-26T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1993-06-01T00:00:00Z", "discountedPrice": 79, "expireAt": "1978-07-14T00:00:00Z", "price": 20, "purchaseAt": "1984-02-23T00:00:00Z", "trialPrice": 13}, {"currencyCode": "FMqYMzMT", "currencyNamespace": "JxZL8kxR", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1987-07-19T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-09-29T00:00:00Z", "discountedPrice": 19, "expireAt": "1994-01-19T00:00:00Z", "price": 35, "purchaseAt": "1992-04-15T00:00:00Z", "trialPrice": 42}], "5SosTtHK": [{"currencyCode": "ON0Xuwl0", "currencyNamespace": "4K2p8UIT", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1977-01-08T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1973-03-11T00:00:00Z", "discountedPrice": 100, "expireAt": "1972-07-01T00:00:00Z", "price": 59, "purchaseAt": "1973-12-30T00:00:00Z", "trialPrice": 9}, {"currencyCode": "7t0L8FZN", "currencyNamespace": "UlFknSIO", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1984-10-21T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1993-01-01T00:00:00Z", "discountedPrice": 2, "expireAt": "1988-10-11T00:00:00Z", "price": 35, "purchaseAt": "1976-11-24T00:00:00Z", "trialPrice": 6}, {"currencyCode": "XuniHLrc", "currencyNamespace": "E8PA9QfB", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1981-02-18T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1979-12-15T00:00:00Z", "discountedPrice": 19, "expireAt": "1999-10-21T00:00:00Z", "price": 81, "purchaseAt": "1987-02-05T00:00:00Z", "trialPrice": 85}]}}, {"itemIdentities": ["ybToPU49", "iEns0cP1", "I9S1t1Yg"], "itemIdentityType": "ITEM_SKU", "regionData": {"enStez0Y": [{"currencyCode": "xgYDAe84", "currencyNamespace": "S9HWcVAG", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1988-05-30T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1992-07-09T00:00:00Z", "discountedPrice": 70, "expireAt": "1998-11-03T00:00:00Z", "price": 25, "purchaseAt": "1994-02-14T00:00:00Z", "trialPrice": 6}, {"currencyCode": "NwpLKsGf", "currencyNamespace": "utLsRuKl", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1987-02-02T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1979-04-02T00:00:00Z", "discountedPrice": 59, "expireAt": "1992-05-10T00:00:00Z", "price": 32, "purchaseAt": "1996-03-31T00:00:00Z", "trialPrice": 55}, {"currencyCode": "pGcQB2AW", "currencyNamespace": "WvibgNy5", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1980-12-10T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1976-12-21T00:00:00Z", "discountedPrice": 76, "expireAt": "1975-04-08T00:00:00Z", "price": 42, "purchaseAt": "1985-02-09T00:00:00Z", "trialPrice": 41}], "EC7spE8M": [{"currencyCode": "eE4Yfu7b", "currencyNamespace": "GKI1QvsN", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1996-07-14T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1994-04-28T00:00:00Z", "discountedPrice": 73, "expireAt": "1991-10-27T00:00:00Z", "price": 43, "purchaseAt": "1983-11-30T00:00:00Z", "trialPrice": 91}, {"currencyCode": "OPERm7cl", "currencyNamespace": "l07Nylw5", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1996-02-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1991-06-08T00:00:00Z", "discountedPrice": 7, "expireAt": "1990-10-18T00:00:00Z", "price": 2, "purchaseAt": "1984-01-14T00:00:00Z", "trialPrice": 36}, {"currencyCode": "CTiWn2n9", "currencyNamespace": "Zslz0JOC", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1998-09-15T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1971-01-29T00:00:00Z", "discountedPrice": 99, "expireAt": "1980-07-26T00:00:00Z", "price": 20, "purchaseAt": "1972-05-04T00:00:00Z", "trialPrice": 64}], "9tlLFgWH": [{"currencyCode": "ILhBLrzd", "currencyNamespace": "x00GlpXH", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1977-03-28T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1978-07-12T00:00:00Z", "discountedPrice": 9, "expireAt": "1982-03-22T00:00:00Z", "price": 27, "purchaseAt": "1988-10-23T00:00:00Z", "trialPrice": 60}, {"currencyCode": "xjJhE519", "currencyNamespace": "iuTKR221", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1986-10-07T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1980-10-10T00:00:00Z", "discountedPrice": 3, "expireAt": "1977-11-10T00:00:00Z", "price": 45, "purchaseAt": "1980-03-02T00:00:00Z", "trialPrice": 40}, {"currencyCode": "gCieVCuK", "currencyNamespace": "CRGELFwy", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1983-03-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1984-03-30T00:00:00Z", "discountedPrice": 25, "expireAt": "1972-07-11T00:00:00Z", "price": 77, "purchaseAt": "1997-07-11T00:00:00Z", "trialPrice": 25}]}}, {"itemIdentities": ["atTMTqWR", "bKlVebqF", "uMfAlSsL"], "itemIdentityType": "ITEM_SKU", "regionData": {"BBYqSydC": [{"currencyCode": "kPIfFcEm", "currencyNamespace": "FvW3GNrN", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1981-11-23T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1976-01-22T00:00:00Z", "discountedPrice": 5, "expireAt": "1982-09-02T00:00:00Z", "price": 72, "purchaseAt": "1993-04-07T00:00:00Z", "trialPrice": 7}, {"currencyCode": "iB1926t1", "currencyNamespace": "f2vrSVfe", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1979-12-11T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1989-05-13T00:00:00Z", "discountedPrice": 72, "expireAt": "1974-08-08T00:00:00Z", "price": 22, "purchaseAt": "1996-11-03T00:00:00Z", "trialPrice": 41}, {"currencyCode": "51Sp0jlX", "currencyNamespace": "vwqElSvK", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1993-08-31T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1990-03-20T00:00:00Z", "discountedPrice": 45, "expireAt": "1978-02-06T00:00:00Z", "price": 78, "purchaseAt": "1986-06-25T00:00:00Z", "trialPrice": 52}], "lN30E3SM": [{"currencyCode": "zoEkL0KI", "currencyNamespace": "sQQL04yX", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1994-04-16T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1972-09-30T00:00:00Z", "discountedPrice": 91, "expireAt": "1982-03-11T00:00:00Z", "price": 70, "purchaseAt": "1995-08-13T00:00:00Z", "trialPrice": 59}, {"currencyCode": "7pPgnYYM", "currencyNamespace": "9uW2XONm", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1989-07-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1981-10-21T00:00:00Z", "discountedPrice": 97, "expireAt": "1993-06-12T00:00:00Z", "price": 18, "purchaseAt": "1982-07-21T00:00:00Z", "trialPrice": 24}, {"currencyCode": "RT9GNuEd", "currencyNamespace": "oxlU06rL", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1989-12-21T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1972-03-23T00:00:00Z", "discountedPrice": 21, "expireAt": "1987-04-17T00:00:00Z", "price": 51, "purchaseAt": "1983-02-21T00:00:00Z", "trialPrice": 17}], "teBNoK5y": [{"currencyCode": "HSjCBudr", "currencyNamespace": "o8pz9TQU", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1982-04-13T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1993-05-26T00:00:00Z", "discountedPrice": 15, "expireAt": "1999-04-27T00:00:00Z", "price": 58, "purchaseAt": "1987-08-08T00:00:00Z", "trialPrice": 28}, {"currencyCode": "0F5FWshx", "currencyNamespace": "OR0RHY3o", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1977-06-16T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1990-10-20T00:00:00Z", "discountedPrice": 61, "expireAt": "1989-05-04T00:00:00Z", "price": 50, "purchaseAt": "1976-05-16T00:00:00Z", "trialPrice": 100}, {"currencyCode": "kQJ8GEbh", "currencyNamespace": "QTIhyVrF", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1973-09-02T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1971-08-04T00:00:00Z", "discountedPrice": 50, "expireAt": "1980-10-04T00:00:00Z", "price": 6, "purchaseAt": "1986-02-13T00:00:00Z", "trialPrice": 58}]}}]}' \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '75' \
    --offset '34' \
    --sortBy 'cwaK600h' \
    --storeId 'ttVMu7rL' \
    --keyword 'zu72IjMW' \
    --language 'iHtPH3Fi' \
    > test.out 2>&1
eval_tap $? 133 'SearchItems' test.out

#- 134 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '7' \
    --offset '25' \
    --sortBy '["createdAt:desc", "createdAt", "updatedAt:desc"]' \
    --storeId '14oXAOfL' \
    > test.out 2>&1
eval_tap $? 134 'QueryUncategorizedItems' test.out

#- 135 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'hewwQdqK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qESDeX5J' \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'l3Go8KaD' \
    --namespace $AB_NAMESPACE \
    --storeId 'wTUa79JS' \
    --body '{"appId": "GfMgbiGV", "appType": "DEMO", "baseAppId": "mO0FnT00", "boothName": "WR0OlboG", "categoryPath": "HvTgFmvn", "clazz": "k2mE6U9C", "displayOrder": 5, "entitlementType": "CONSUMABLE", "ext": {"YewZch3Y": {}, "6wKdldDw": {}, "Fy2GyEJ9": {}}, "features": ["spxApr8t", "PHnKTilV", "x192U0Fa"], "flexible": true, "images": [{"as": "PYxVMyVw", "caption": "s70D8frb", "height": 84, "imageUrl": "lsXxnCwn", "smallImageUrl": "pzk5Qfm3", "width": 91}, {"as": "pcg2GfSN", "caption": "MiSQdGOe", "height": 30, "imageUrl": "MqkD3ezP", "smallImageUrl": "EZEYitsx", "width": 90}, {"as": "oYQeYV8S", "caption": "ejImhIUv", "height": 84, "imageUrl": "wD195u1z", "smallImageUrl": "G1rPVtYv", "width": 6}], "inventoryConfig": {"customAttributes": {"u72llxbC": {}, "5DGbALB1": {}, "ZAZzfM3N": {}}, "serverCustomAttributes": {"PyCb9rSC": {}, "Aopi3PHl": {}, "fZYVXgWK": {}}, "slotUsed": 40}, "itemIds": ["9h3CsAiJ", "jMbbQFDX", "qK0cbaEX"], "itemQty": {"P8q8oV5x": 80, "MWUzJyFL": 95, "4sKKoeGd": 35}, "itemType": "LOOTBOX", "listable": true, "localizations": {"yQS3QtQi": {"description": "TF5zLubu", "localExt": {"w0bG0tYa": {}, "hk1PZNPx": {}, "DBIa0ii3": {}}, "longDescription": "DMwecDKt", "title": "EwSsnjIK"}, "i7RtViw6": {"description": "MFNJyCiW", "localExt": {"JtMlI5KO": {}, "ZPe3P1vu": {}, "LpmOQhG7": {}}, "longDescription": "ROFQBohC", "title": "ElLOHTVF"}, "e9gcBRDK": {"description": "NeN4ZnVD", "localExt": {"0YNt0YfT": {}, "t6RD3jKD": {}, "he4hiKn5": {}}, "longDescription": "VYLjL6u1", "title": "5L47cYX7"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 52, "duration": 20, "endDate": "1988-04-02T00:00:00Z", "itemId": "pvaRCz86", "itemSku": "oE7SFv0i", "itemType": "nZIcryg7"}, {"count": 11, "duration": 75, "endDate": "1986-06-03T00:00:00Z", "itemId": "UBeeTIVA", "itemSku": "bDXMVuBc", "itemType": "MlAC6eR0"}, {"count": 92, "duration": 83, "endDate": "1973-11-25T00:00:00Z", "itemId": "2JaalUll", "itemSku": "TEHrEbmD", "itemType": "SlIOnTBq"}], "name": "w0QnLrmd", "odds": 0.809462514424744, "type": "REWARD", "weight": 100}, {"lootBoxItems": [{"count": 73, "duration": 11, "endDate": "1995-04-20T00:00:00Z", "itemId": "WA73OkSa", "itemSku": "ggMtgCZW", "itemType": "DUXg8IcF"}, {"count": 8, "duration": 10, "endDate": "1976-06-02T00:00:00Z", "itemId": "2naLwXRi", "itemSku": "M0EQXMFJ", "itemType": "wG7rDZEr"}, {"count": 77, "duration": 0, "endDate": "1983-07-26T00:00:00Z", "itemId": "dbdaOMLW", "itemSku": "SCSSqYPG", "itemType": "cZRj6XMJ"}], "name": "ywJtK9ez", "odds": 0.758295712822189, "type": "REWARD_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 65, "duration": 25, "endDate": "1992-01-13T00:00:00Z", "itemId": "hf3AgWRe", "itemSku": "dZk32hjj", "itemType": "YETzfN2L"}, {"count": 74, "duration": 53, "endDate": "1989-09-18T00:00:00Z", "itemId": "F6VvdkX6", "itemSku": "INvVHT1r", "itemType": "SmnnT9pO"}, {"count": 14, "duration": 12, "endDate": "1995-03-06T00:00:00Z", "itemId": "bpGJ7nLt", "itemSku": "wGBjFnFt", "itemType": "OvslVmm1"}], "name": "6yVVmitE", "odds": 0.04553196951445948, "type": "REWARD_GROUP", "weight": 60}], "rollFunction": "CUSTOM"}, "maxCount": 55, "maxCountPerUser": 22, "name": "ukYSmsFw", "optionBoxConfig": {"boxItems": [{"count": 39, "duration": 90, "endDate": "1998-06-03T00:00:00Z", "itemId": "xOdEjkW6", "itemSku": "Iygdyvu6", "itemType": "p2ZsdwbZ"}, {"count": 67, "duration": 48, "endDate": "1984-04-26T00:00:00Z", "itemId": "2pxk17Ic", "itemSku": "ONy9uaRa", "itemType": "6EVNnqyN"}, {"count": 43, "duration": 77, "endDate": "1974-06-17T00:00:00Z", "itemId": "IF9dYwh9", "itemSku": "R9EuAdwj", "itemType": "i1BJEOC2"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 12, "fixedTrialCycles": 6, "graceDays": 29}, "regionData": {"2XmP9RY8": [{"currencyCode": "wK0jI9eN", "currencyNamespace": "C0Ca2ZNX", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1995-05-18T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1992-09-19T00:00:00Z", "expireAt": "1983-06-08T00:00:00Z", "price": 15, "purchaseAt": "1978-06-06T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Kcwj7BSc", "currencyNamespace": "IwkTgxqI", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1979-10-27T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1996-02-06T00:00:00Z", "expireAt": "1986-12-19T00:00:00Z", "price": 63, "purchaseAt": "1987-01-23T00:00:00Z", "trialPrice": 4}, {"currencyCode": "dEcdKOUY", "currencyNamespace": "pU0D1kj5", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1995-05-27T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1998-05-06T00:00:00Z", "expireAt": "1995-03-27T00:00:00Z", "price": 62, "purchaseAt": "1987-02-02T00:00:00Z", "trialPrice": 82}], "RMKEuVvX": [{"currencyCode": "Obios1ee", "currencyNamespace": "j78WRyxY", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1988-02-19T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1978-09-21T00:00:00Z", "expireAt": "1992-02-09T00:00:00Z", "price": 81, "purchaseAt": "1977-10-06T00:00:00Z", "trialPrice": 33}, {"currencyCode": "2Ze0v7EW", "currencyNamespace": "MaiN1il9", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1979-11-10T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-08-11T00:00:00Z", "expireAt": "1977-12-12T00:00:00Z", "price": 18, "purchaseAt": "1985-01-24T00:00:00Z", "trialPrice": 80}, {"currencyCode": "ZsyNP6Nq", "currencyNamespace": "zzoinCDp", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1979-07-10T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1974-07-09T00:00:00Z", "expireAt": "1981-10-21T00:00:00Z", "price": 16, "purchaseAt": "1981-04-28T00:00:00Z", "trialPrice": 17}], "LAp2VTbi": [{"currencyCode": "XgwHESGi", "currencyNamespace": "yl5wj81z", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1977-10-27T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1991-09-13T00:00:00Z", "expireAt": "1993-12-31T00:00:00Z", "price": 100, "purchaseAt": "1986-02-16T00:00:00Z", "trialPrice": 61}, {"currencyCode": "LA2v4S2A", "currencyNamespace": "jcFDgy9F", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1996-10-23T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1988-08-16T00:00:00Z", "expireAt": "1993-10-22T00:00:00Z", "price": 44, "purchaseAt": "1989-11-14T00:00:00Z", "trialPrice": 18}, {"currencyCode": "TP9UoGk6", "currencyNamespace": "7tKrxalT", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1984-08-31T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1986-12-05T00:00:00Z", "expireAt": "1994-01-17T00:00:00Z", "price": 16, "purchaseAt": "1981-12-31T00:00:00Z", "trialPrice": 48}]}, "saleConfig": {"currencyCode": "b6SQoCEp", "price": 64}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "yKMVH03u", "stackable": false, "status": "ACTIVE", "tags": ["2KxC2XxG", "p2S16Qzb", "FLkql4bn"], "targetCurrencyCode": "7SLHLJw8", "targetNamespace": "1e50py1c", "thumbnailUrl": "Mug7WM16", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'HTllr2k4' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "IAP", "IAP"]' \
    --force 'false' \
    --storeId '6OGsMwTd' \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'nGsHWQoM' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 68, "orderNo": "42w7XZrj"}' \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'RgAImPp6' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wV5YJPcD' \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '0oEjtU01' \
    --namespace $AB_NAMESPACE \
    --storeId '09HPfNG2' \
    --body '{"carousel": [{"alt": "Y33A0S1L", "previewUrl": "8Ah4tjXC", "thumbnailUrl": "3mPrWRu7", "type": "image", "url": "GaGnCAm6", "videoSource": "generic"}, {"alt": "PEfq2x9b", "previewUrl": "ONROr0EJ", "thumbnailUrl": "1ceUwO6I", "type": "video", "url": "4iHBmmm9", "videoSource": "generic"}, {"alt": "W9xhxjSy", "previewUrl": "S4Rl5WSj", "thumbnailUrl": "tJ19vsCA", "type": "image", "url": "0kjE1g3r", "videoSource": "vimeo"}], "developer": "L1Z7INOn", "forumUrl": "51Sjx5pF", "genres": ["FreeToPlay", "Strategy", "Adventure"], "localizations": {"Gjm802eg": {"announcement": "KToIMH7s", "slogan": "wg0A172e"}, "DdyIE6Id": {"announcement": "F1JIN7gl", "slogan": "hICvu3Nf"}, "pxhoFdbW": {"announcement": "XnHhmsiR", "slogan": "tOUUNLP9"}}, "platformRequirements": {"pzMzVxUy": [{"additionals": "nb7ZBgpI", "directXVersion": "vHTTxjAC", "diskSpace": "6gsXYe5q", "graphics": "3OVb8LOq", "label": "5UGStNOo", "osVersion": "AA2oTdaq", "processor": "sqCEUCk4", "ram": "WciABc6v", "soundCard": "CvgeasUr"}, {"additionals": "4RhqFC0t", "directXVersion": "2EHF6wMN", "diskSpace": "fwCWkt9O", "graphics": "pWmRftK9", "label": "WjJZZU6R", "osVersion": "rGSLxOAn", "processor": "o2fW675d", "ram": "iAAd4IYY", "soundCard": "8oGgcoAG"}, {"additionals": "BNmSbe7n", "directXVersion": "CUcjVbTr", "diskSpace": "In0wdiGL", "graphics": "MPy3RvlJ", "label": "SpA7xbM9", "osVersion": "oikBAwOF", "processor": "LT6451Eg", "ram": "qm1W4JLo", "soundCard": "EJFc3yFy"}], "yVnmawBx": [{"additionals": "FR3SYwti", "directXVersion": "sYxXVDU7", "diskSpace": "Zi4B95ii", "graphics": "0eXOON2B", "label": "xKkEyBjl", "osVersion": "1mcmZaK9", "processor": "VHGDTiI8", "ram": "DSRHEJOy", "soundCard": "wbrlAAze"}, {"additionals": "iTX8vsvr", "directXVersion": "c6mMUC2u", "diskSpace": "H2rJqunA", "graphics": "SbxiS3Lq", "label": "fjyn6soU", "osVersion": "ydxmmoSN", "processor": "RvWW3zp7", "ram": "OhAcVaod", "soundCard": "TT2yJ1P2"}, {"additionals": "zJdGa61s", "directXVersion": "5tmwCzpa", "diskSpace": "2y1NABWj", "graphics": "1zrNKZlV", "label": "KaTqDmSC", "osVersion": "GA3bImyj", "processor": "mjw4sbya", "ram": "1BrIu0aC", "soundCard": "8ie8RF4z"}], "kf70jHsJ": [{"additionals": "ZcutQPQj", "directXVersion": "DCMeHtJs", "diskSpace": "AK9SdHBg", "graphics": "yM6zZdbu", "label": "SUHcCY7K", "osVersion": "TgbUsgub", "processor": "XR1pJ6CY", "ram": "XoF2wHbg", "soundCard": "OBCUofST"}, {"additionals": "xBkQcy6p", "directXVersion": "U0dj1K1X", "diskSpace": "B9dKvrF6", "graphics": "wHPDzBIb", "label": "rstWl7NV", "osVersion": "Pnw9g2jG", "processor": "trnLxlVc", "ram": "JK75944T", "soundCard": "dZNafPWM"}, {"additionals": "YBD2E6pb", "directXVersion": "z8atmbIB", "diskSpace": "72venswf", "graphics": "l0n9tFZa", "label": "Zfhin3kl", "osVersion": "uVczgQkm", "processor": "2EBe8Voo", "ram": "OgEneiYn", "soundCard": "NEssfD7v"}]}, "platforms": ["IOS", "MacOS", "MacOS"], "players": ["MMO", "LocalCoop", "CrossPlatformMulti"], "primaryGenre": "Strategy", "publisher": "v8DSs93L", "releaseDate": "1995-07-22T00:00:00Z", "websiteUrl": "GjscKIDj"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId '5olgl3h6' \
    --namespace $AB_NAMESPACE \
    --storeId 'dw5cqMC3' \
    --body '{"featuresToCheck": ["IAP", "CATALOG", "DLC"]}' \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'qR31MRyH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Q7bzfbXS' \
    --namespace $AB_NAMESPACE \
    --storeId 'QVUYyq0R' \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'WkgtbsSn' \
    --itemId '9ZznIeNz' \
    --namespace $AB_NAMESPACE \
    --storeId '9Y88o7h6' \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'sVelE4GW' \
    --itemId 'aRvgbvmM' \
    --namespace $AB_NAMESPACE \
    --storeId '0jtgCJ0p' \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'f3R12j7q' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'FS67WgnO' \
    --populateBundle 'true' \
    --region 'oWQKRw7j' \
    --storeId 'QjkTjFIy' \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'KaoX6axM' \
    --namespace $AB_NAMESPACE \
    --storeId '7fLQbzzT' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 32, "code": "LdxrlV1o", "comparison": "isLessThanOrEqual", "name": "VibrE0C7", "predicateType": "SeasonPassPredicate", "value": "OUhtc5dy", "values": ["m7TWdOsX", "dr7Ep2Fs", "aUF0Rmyh"]}, {"anyOf": 16, "code": "LzUd0LUR", "comparison": "excludes", "name": "WpZMUqbw", "predicateType": "EntitlementPredicate", "value": "lIe6M2V3", "values": ["2mpI8dOn", "tbji8LoF", "EFfGp2ed"]}, {"anyOf": 83, "code": "AfEA0XkB", "comparison": "isLessThanOrEqual", "name": "5jpVDvuj", "predicateType": "SeasonPassPredicate", "value": "EOb5Bnoh", "values": ["ZfQtoMBy", "AB4pG7xo", "G4EVsz7S"]}]}, {"operator": "and", "predicates": [{"anyOf": 33, "code": "ZqrEM0A7", "comparison": "is", "name": "gEL6HGVB", "predicateType": "EntitlementPredicate", "value": "6iu5CaKP", "values": ["HK3XvSs0", "zVe7bg7H", "7CrDeDl4"]}, {"anyOf": 0, "code": "XBsMwfLP", "comparison": "isGreaterThanOrEqual", "name": "HvXJhdBa", "predicateType": "EntitlementPredicate", "value": "mYyi9U7z", "values": ["toqvLiRR", "q7qv2YfH", "OVlYpz6S"]}, {"anyOf": 36, "code": "xcCKy0ET", "comparison": "isLessThanOrEqual", "name": "2t5zc6Hm", "predicateType": "SeasonPassPredicate", "value": "5tsKu1hp", "values": ["n3lUshOE", "EnHxXDxs", "fbaQCedl"]}]}, {"operator": "or", "predicates": [{"anyOf": 92, "code": "BjedqLDj", "comparison": "isLessThanOrEqual", "name": "W4PQLqXQ", "predicateType": "SeasonTierPredicate", "value": "8nenxUdf", "values": ["EDcKjGh3", "Z3SSNrWI", "kFox8Lkn"]}, {"anyOf": 45, "code": "rnujn8AL", "comparison": "includes", "name": "Ajz8m4vb", "predicateType": "SeasonTierPredicate", "value": "BwagbC2f", "values": ["2OOjnPfA", "fqPknMl6", "BYn7V6NH"]}, {"anyOf": 76, "code": "Z3IOgJpb", "comparison": "is", "name": "3ZrFUI3h", "predicateType": "SeasonTierPredicate", "value": "BEcEie4d", "values": ["TJgS42nL", "NRCYo3p4", "eXfUHGdz"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'm2oJskEJ' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["CAMPAIGN", "CATALOG", "ENTITLEMENT"]' \
    --storeId 'EWeS0JG8' \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'W9ly8eWf' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "oiqA4U6r"}' \
    > test.out 2>&1
eval_tap $? 149 'ReturnItem' test.out

#- 150 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --name 'yUxYnGhK' \
    --offset '29' \
    --tag '4VRyFr8I' \
    > test.out 2>&1
eval_tap $? 150 'QueryKeyGroups' test.out

#- 151 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Uxh2Z71s", "name": "tdYJaP3r", "status": "ACTIVE", "tags": ["UqA2GwpV", "dN0D23nG", "UNAMDX5X"]}' \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '24gfXH9u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'N5kGl2P5' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kMI1LzOW", "name": "SoaQhxwA", "status": "ACTIVE", "tags": ["OzAK43h5", "tTPpueAq", "Zn9zUlxL"]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'ijtZdduO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'no4YovUf' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '97' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Dqej7H7o' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 157 'UploadKeys' test.out

#- 158 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'PJeNE4hJ' \
    --limit '36' \
    --offset '83' \
    --orderNos '["b6sU9yxV", "yHSV437h", "vRm2ZRW6"]' \
    --sortBy 'SmnUL0SS' \
    --startTime 'eruqS0El' \
    --status 'REFUNDED' \
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
    --orderNo 'NR7CVYVO' \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6qV3nJXG' \
    --body '{"description": "KM0IQfpo"}' \
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
    --body '{"domains": ["exBmOOyn", "Dr38ZKD3", "4op8cOvb"]}' \
    > test.out 2>&1
eval_tap $? 165 'UpdatePaymentDomainWhitelistConfig' test.out

#- 166 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'MoqMdywM' \
    --externalId 'qzR8E0Kp' \
    --limit '57' \
    --notificationSource 'STRIPE' \
    --notificationType 'my8nldr1' \
    --offset '58' \
    --paymentOrderNo '6TuTSDCT' \
    --startDate 'WdmfHVqy' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 166 'QueryPaymentNotifications' test.out

#- 167 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'jkPZONaJ' \
    --limit '31' \
    --offset '28' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 167 'QueryPaymentOrders' test.out

#- 168 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "rCfKP7Ie", "currencyNamespace": "UCMjzz2D", "customParameters": {"0L4kmro6": {}, "B1R8H2CU": {}, "pHdHW1Ld": {}}, "description": "YYfFNPA2", "extOrderNo": "OQj3EGZZ", "extUserId": "dhwFOv05", "itemType": "BUNDLE", "language": "tu-Hd", "metadata": {"IF4BKNsn": "acxuPw8w", "eiEi9MB5": "Ymf4QO0d", "giA7EmSC": "uMhSP9sN"}, "notifyUrl": "aWdRePAo", "omitNotification": true, "platform": "LFpPWunu", "price": 52, "recurringPaymentOrderNo": "6FzB0QQJ", "region": "ZPDRbpbs", "returnUrl": "NJKBixcA", "sandbox": true, "sku": "vJs11FLs", "subscriptionId": "R0sAQ0He", "targetNamespace": "nnujcp0Z", "targetUserId": "BZ8MB7fE", "title": "wyjdCcY9"}' \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '1iPyOSYp' \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Nq5xb4Rw' \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1ZceXsXG' \
    --body '{"extTxId": "jWmUIKdF", "paymentMethod": "WcFlcMQR", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zwHi1bAy' \
    --body '{"description": "cmKP8Ule"}' \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5SoiLmx1' \
    --body '{"amount": 15, "currencyCode": "287LLtXz", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 6, "vat": 75}' \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'U5rMdC0p' \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'IB2lynJ7' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "IusAROT7", "serviceLabel": 64}' \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'zhNJkIHT' \
    --body '{"delegationToken": "5ELBdWGG", "sandboxId": "L8xbxJ67"}' \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedPlatformOrigins": ["Playstation", "Playstation", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Steam", "Playstation", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'JHW2Lsvy' \
    --limit '93' \
    --offset '92' \
    --source 'IAP' \
    --startTime '9toG6iQj' \
    --status 'SUCCESS' \
    --transactionId 'A1bLT1ZH' \
    --userId '1pS8m6B1' \
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
    --body '{"appConfig": {"appName": "gxnqNb9S"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "qKbXbijV"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "nxVnw2NB", "eventTopic": "deMLGu5x", "maxAwarded": 49, "maxAwardedPerUser": 46, "namespaceExpression": "4PJmM6LN", "rewardCode": "wG2sD5og", "rewardConditions": [{"condition": "AFw0Y88D", "conditionName": "MnutWJ9w", "eventName": "Fp1zEkiq", "rewardItems": [{"duration": 50, "endDate": "1989-09-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IShw7ZkE", "quantity": 3, "sku": "901ytbIZ"}, {"duration": 94, "endDate": "1984-02-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XmN0QsOk", "quantity": 44, "sku": "IGK8mA9Y"}, {"duration": 10, "endDate": "1986-01-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "oZh3EmLV", "quantity": 89, "sku": "iC7j9IuH"}]}, {"condition": "3DkANVgR", "conditionName": "Z42N4K3p", "eventName": "T2xCPyBy", "rewardItems": [{"duration": 78, "endDate": "1972-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "GVmtFZFt", "quantity": 62, "sku": "L3ZwjdWc"}, {"duration": 49, "endDate": "1979-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "M6sIkKMS", "quantity": 73, "sku": "vJaa3sWE"}, {"duration": 80, "endDate": "1980-05-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sSu1CAen", "quantity": 24, "sku": "8W66prfh"}]}, {"condition": "2I5P2iCq", "conditionName": "mTaoUk83", "eventName": "lybZ69jW", "rewardItems": [{"duration": 98, "endDate": "1996-10-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7WSz1cub", "quantity": 11, "sku": "n5Lhb7Ch"}, {"duration": 37, "endDate": "1988-06-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RKYn4yAD", "quantity": 74, "sku": "jfMaKj5M"}, {"duration": 93, "endDate": "1983-11-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3qe9faUQ", "quantity": 24, "sku": "z9aKNfsA"}]}], "userIdExpression": "xuz5KeIK"}' \
    > test.out 2>&1
eval_tap $? 190 'CreateReward' test.out

#- 191 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '8ja855B3' \
    --limit '57' \
    --offset '66' \
    --sortBy '["rewardCode:desc", "rewardCode", "namespace:asc"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Q7SDH1Sz' \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'bvTXZA8j' \
    --body '{"description": "rs70HsTz", "eventTopic": "fl014PD8", "maxAwarded": 73, "maxAwardedPerUser": 38, "namespaceExpression": "q8vGef1Z", "rewardCode": "JA6rFlJA", "rewardConditions": [{"condition": "ZHCZWOet", "conditionName": "E6phKM2r", "eventName": "mDJNEWP4", "rewardItems": [{"duration": 71, "endDate": "1989-12-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tXt7FUii", "quantity": 72, "sku": "56VHOBIU"}, {"duration": 60, "endDate": "1987-04-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZWndbAkw", "quantity": 83, "sku": "qm6dOF3r"}, {"duration": 46, "endDate": "1990-04-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "IMjQkZBa", "quantity": 97, "sku": "CnyNun9q"}]}, {"condition": "LrKyCIAH", "conditionName": "uvr5XqDv", "eventName": "d5yRpiuX", "rewardItems": [{"duration": 66, "endDate": "1979-06-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "D6muglZy", "quantity": 99, "sku": "e0POFh4z"}, {"duration": 97, "endDate": "1978-01-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wbkGd4qF", "quantity": 71, "sku": "kEgGagdO"}, {"duration": 29, "endDate": "1986-01-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "wc7r0wwm", "quantity": 35, "sku": "sELTP5lu"}]}, {"condition": "Dpfrwzju", "conditionName": "GXaGBkGS", "eventName": "MgpAxm2q", "rewardItems": [{"duration": 16, "endDate": "1972-10-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "pU6nNRxC", "quantity": 9, "sku": "HEgHWcEs"}, {"duration": 99, "endDate": "1993-07-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JiygQZ66", "quantity": 77, "sku": "scsi8IIi"}, {"duration": 56, "endDate": "1978-03-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JfoOF4NM", "quantity": 87, "sku": "VBv4eryd"}]}], "userIdExpression": "ZyRtDmeG"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'KYRgc10E' \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '8v48kfyZ' \
    --body '{"payload": {"qHF1i728": {}, "ZXrauvKR": {}, "OvAvcpnh": {}}}' \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'UizfGYrD' \
    --body '{"conditionName": "X087zskz", "userId": "mM459GcQ"}' \
    > test.out 2>&1
eval_tap $? 198 'DeleteRewardConditionRecord' test.out

#- 199 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '6aTStBnh' \
    --limit '64' \
    --offset '33' \
    --start 'L76xqCxI' \
    --storeId 'LF0WRyWz' \
    --viewId 'rzof5yyz' \
    > test.out 2>&1
eval_tap $? 199 'QuerySections' test.out

#- 200 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ilb5ZMxm' \
    --body '{"active": false, "displayOrder": 30, "endDate": "1972-05-06T00:00:00Z", "ext": {"fip09qNY": {}, "qKIk6n3I": {}, "gFrQUKjM": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 94, "itemCount": 97, "rule": "SEQUENCE"}, "items": [{"id": "iMT53K3d", "sku": "2XbzD5w2"}, {"id": "kKcZNy6c", "sku": "mCctvCHQ"}, {"id": "Hex8rN8M", "sku": "nb2MPVPB"}], "localizations": {"O48FE6AJ": {"description": "zSP45zXz", "localExt": {"9Tk3XyaC": {}, "jq2jjDKV": {}, "r1osiFCj": {}}, "longDescription": "FlDbSpNf", "title": "NHzOWDDK"}, "4mSGuduE": {"description": "NMNrqgJM", "localExt": {"CNxF8LeN": {}, "R37WJXJK": {}, "an7IZBFk": {}}, "longDescription": "DRkvtsXD", "title": "A9CzUVfh"}, "2TPKvP29": {"description": "vSVrovyE", "localExt": {"o0zt1Hen": {}, "C3IPzAMX": {}, "jfQIzCxI": {}}, "longDescription": "zXEOk3cn", "title": "zefFv2kI"}}, "name": "P3Ok8Ebr", "rotationType": "CUSTOM", "startDate": "1996-10-03T00:00:00Z", "viewId": "IcrPG8U0"}' \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '9ubtcN6A' \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '5PA1y94d' \
    --storeId '0ZBv5Z3T' \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'iEAdoZZz' \
    --storeId 'g0FoTciK' \
    --body '{"active": false, "displayOrder": 17, "endDate": "1996-07-29T00:00:00Z", "ext": {"PrepMQQG": {}, "Ut7kr7M0": {}, "jEEL2Gpz": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 89, "itemCount": 42, "rule": "SEQUENCE"}, "items": [{"id": "JCman4kf", "sku": "rdQqOtK6"}, {"id": "ofyIvFDy", "sku": "aRqepQKp"}, {"id": "SVnQmLLf", "sku": "JuUBMg84"}], "localizations": {"ttzpSdb6": {"description": "LyclZgG8", "localExt": {"wiwZPLkh": {}, "dyJ7zsME": {}, "Ls8C6PK4": {}}, "longDescription": "6PR6P3ao", "title": "3C2WPYed"}, "jzX8MxxY": {"description": "YXnBHMhv", "localExt": {"IIcEhWWv": {}, "bM4cHjB5": {}, "FYNMuH8x": {}}, "longDescription": "bMlKwHXr", "title": "MF9eH10m"}, "VGg7Qo81": {"description": "etDC1ygC", "localExt": {"MMBli4bZ": {}, "Dc8mFOzi": {}, "5Kn9RMIO": {}}, "longDescription": "URhlRiJG", "title": "cC5p89fh"}}, "name": "kmSblw3H", "rotationType": "FIXED_PERIOD", "startDate": "1972-01-29T00:00:00Z", "viewId": "zdeGqAp8"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'wYFuh3R7' \
    --storeId 'CjlHDTuG' \
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
    --body '{"defaultLanguage": "qL2mgVku", "defaultRegion": "H43FbQhs", "description": "iYwgOTEd", "supportedLanguages": ["ILe6OXyb", "isAZM6g9", "96h6scBU"], "supportedRegions": ["q9fiM13p", "ATtIa7Pf", "IvxvHbxC"], "title": "4OneDhzE"}' \
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
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["jHBySmju", "xeJw5vWF", "a9aNfh7q"], "idsToBeExported": ["OZgTNXew", "mvvcESeB", "yD2kdZDr"], "storeId": "fmvBJXDM"}' \
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
    --storeId 'MaWa0EnB' \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'X2dcjkt1' \
    --body '{"defaultLanguage": "Jz5oM8Tx", "defaultRegion": "Kxns2bVE", "description": "HbZCNFzX", "supportedLanguages": ["HZwOCiJN", "7HKP3nxm", "pCz1jmpQ"], "supportedRegions": ["z42CNdbU", "vwzboaGn", "zxAbKHYf"], "title": "70PmVwo4"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '9QsJES88' \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'vPq46m3a' \
    --action 'DELETE' \
    --itemSku 'UTHuhCta' \
    --itemType 'SUBSCRIPTION' \
    --limit '85' \
    --offset '50' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:asc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'mayBzDEU' \
    --updatedAtStart 'jadfd0XU' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'FeYsEWTT' \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'aoiP8OaV' \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'CGwQ0uHg' \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'IkorF96h' \
    --action 'DELETE' \
    --itemSku 'c04a9004' \
    --itemType 'COINS' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'cOW3WnHU' \
    --updatedAtStart 'YXrkQtwT' \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'x2C3xKLC' \
    --action 'CREATE' \
    --itemSku 'Q0VybxaA' \
    --itemType 'SUBSCRIPTION' \
    --type 'ITEM' \
    --updatedAtEnd 'VfuMkWPl' \
    --updatedAtStart '2DhHUdzy' \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'j6sA5Ffb' \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'lKsHhyWZ' \
    --namespace $AB_NAMESPACE \
    --storeId '1kQeBd6z' \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'Rg9hWuzj' \
    --namespace $AB_NAMESPACE \
    --storeId 'TEEVNdUg' \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fNlPBrnw' \
    --targetStoreId 'DHVRSARI' \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'VYy2KiCJ' \
    --end 'ZlyG97Bo' \
    --limit '22' \
    --offset '92' \
    --sortBy 'y0BMHhtc' \
    --start 'wL7dRfXL' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'FA5kXnFl' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'LpdBBWtP' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 230 'ImportStoreByCSV' test.out

#- 231 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId '781IqlmH' \
    --limit '42' \
    --offset '63' \
    --sku 'm5FQrAV3' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'ahB8Yf9I' \
    > test.out 2>&1
eval_tap $? 231 'QuerySubscriptions' test.out

#- 232 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RodJPIO7' \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'KnUuJbB4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'bck31Oec' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "AmdGSZVj"}' \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'Vjg1viyz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'KFLoPhn0' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 41, "orderNo": "YK7DAX3u"}' \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 18, "currencyCode": "jPnKM6lX", "expireAt": "1983-01-09T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "N7qXqhEK", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 82, "entitlementCollectionId": "7s17YltJ", "entitlementOrigin": "Oculus", "itemIdentity": "I81qEmrS", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "6ttmLFNN"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 57, "currencyCode": "qny0QPYy", "expireAt": "1979-12-03T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "BwPqIZyS", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 35, "entitlementCollectionId": "D76zYeR9", "entitlementOrigin": "Other", "itemIdentity": "JvbLauIV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "LmcEOMSA"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 92, "currencyCode": "eUFOZV8M", "expireAt": "1995-08-19T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "ChilJpgG", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 40, "entitlementCollectionId": "RaeGy74o", "entitlementOrigin": "Other", "itemIdentity": "0SuG6jyX", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "UgK6IaBE"}, "type": "CREDIT_WALLET"}], "userId": "2mJgdMYo"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 59, "currencyCode": "bLDzpZnL", "expireAt": "1991-10-14T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "ABM6gXY7", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "PzALkcaK", "entitlementOrigin": "Xbox", "itemIdentity": "i4fWU0Xk", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "VtpCx0Lm"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 54, "currencyCode": "CvnbcjCJ", "expireAt": "1973-03-13T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "iBoAUMoP", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "SQ157miV", "entitlementOrigin": "Xbox", "itemIdentity": "J8OzjaPN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "rDo3xudM"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 29, "currencyCode": "XnVXUlOW", "expireAt": "1977-06-30T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "yGqBD1Fh", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "B2ZqDBva", "entitlementOrigin": "Other", "itemIdentity": "RgQbuK4F", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "2IJAtcI8"}, "type": "DEBIT_WALLET"}], "userId": "rVVx8ZkM"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 64, "currencyCode": "Bgc2wZAH", "expireAt": "1971-04-30T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "LW06LDHh", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "skYdnIBU", "entitlementOrigin": "Oculus", "itemIdentity": "mhzwrxRT", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "fAB3Ez39"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 50, "currencyCode": "SGplfRxc", "expireAt": "1996-01-17T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "iYADeILZ", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 3, "entitlementCollectionId": "qCuArpUR", "entitlementOrigin": "Nintendo", "itemIdentity": "t7olWwhO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "pw4Mlj9D"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 1, "currencyCode": "ZzxhOil8", "expireAt": "1977-12-09T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "mWQ14MH4", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "Vrnobubw", "entitlementOrigin": "Nintendo", "itemIdentity": "6hzCsUPK", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "fKYiMPfF"}, "type": "DEBIT_WALLET"}], "userId": "jRv8Gmfm"}], "metadata": {"h5RDPmF2": {}, "WnfUxisM": {}, "hsl4IOYf": {}}, "needPreCheck": true, "transactionId": "s2MQ5SDz", "type": "WBIge1t5"}' \
    > test.out 2>&1
eval_tap $? 237 'Commit' test.out

#- 238 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '96' \
    --status 'SUCCESS' \
    --type 'snbg3QnW' \
    --userId 'AeDj71gU' \
    > test.out 2>&1
eval_tap $? 238 'GetTradeHistoryByCriteria' test.out

#- 239 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'v1q5S7m5' \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mZ63Bikj' \
    --body '{"achievements": [{"id": "vItkOgvZ", "value": 90}, {"id": "b5CRckl0", "value": 8}, {"id": "gDUl0IRX", "value": 35}], "steamUserId": "QmBHyewk"}' \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'w487IImG' \
    --xboxUserId 'LfAniaux' \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7JoxzEdP' \
    --body '{"achievements": [{"id": "cX5J7W7v", "percentComplete": 11}, {"id": "t8N22Txa", "percentComplete": 9}, {"id": "MZyExHn6", "percentComplete": 1}], "serviceConfigId": "b6v1Ex3M", "titleId": "sBvYcNBs", "xboxUserId": "CJowoHVk"}' \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'krPzf3ME' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'fZxoYoxL' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'XNmCzMi6' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '6AjGkwwA' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'o0p7lhyr' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '27N19r0A' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'RoZblRDg' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'hbrZ8wIP' \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '7HhP3OwZ' \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'f3MZ3LKt' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lCpIa22k' \
    --includeAllNamespaces 'true' \
    --status 'FULFILLED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'cEay4tHO' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --collectionId 'SP4h8uG4' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'YCOxXaZb' \
    --features '["mjUq8ER8", "pnyPxxbh", "RaJP5Dsy"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'false' \
    --itemId '["cpBrpVpR", "IYeVBniz", "a1naJT6x"]' \
    --limit '68' \
    --offset '22' \
    --origin 'Xbox' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'D0NrPXlr' \
    --body '[{"collectionId": "3UDT5YKx", "endDate": "1990-03-29T00:00:00Z", "grantedCode": "ozn4A9uB", "itemId": "5rIqpva6", "itemNamespace": "bEX6nTvA", "language": "Xf_TpSY", "metadata": {"VMBanl1g": {}, "0w1EgLZJ": {}, "LoZtBzer": {}}, "origin": "Xbox", "quantity": 64, "region": "XUIFm8xS", "source": "GIFT", "startDate": "1977-01-11T00:00:00Z", "storeId": "rxQr1O0M"}, {"collectionId": "DnFRLzNj", "endDate": "1998-04-25T00:00:00Z", "grantedCode": "3UHgr4f8", "itemId": "FSB42vpR", "itemNamespace": "lPipnoWA", "language": "iBE", "metadata": {"Ue3s84z9": {}, "os6ACBLj": {}, "bGXl5H8O": {}}, "origin": "Playstation", "quantity": 87, "region": "8xs4cfHw", "source": "REFERRAL_BONUS", "startDate": "1991-09-16T00:00:00Z", "storeId": "vWah4z37"}, {"collectionId": "xyQ4cIXz", "endDate": "1992-05-21T00:00:00Z", "grantedCode": "C9331xpK", "itemId": "0kF5rr7A", "itemNamespace": "aX73zQnL", "language": "Am-018", "metadata": {"i33Z10OW": {}, "8J4DKGPu": {}, "7fffBmYd": {}}, "origin": "Nintendo", "quantity": 99, "region": "si9V88bC", "source": "REWARD", "startDate": "1982-11-19T00:00:00Z", "storeId": "5OdjK3ed"}]' \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'yImQFAJl' \
    --activeOnly 'true' \
    --appId 'lPyG5KLI' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'EVx0k8Zf' \
    --activeOnly 'true' \
    --limit '89' \
    --offset '79' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'MYAr7gYu' \
    --ids '["SfF8PgJT", "3UD12JwG", "1DXkPlYH"]' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'VbgUBxsG' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'iGHXFmVB' \
    --itemId '06MxDS1F' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'hja6uOaY' \
    --ids '["N5a2at28", "JKT9SRe3", "OldaX4ya"]' \
    --platform 'HUjejcCt' \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'FllwPOiw' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform '9yitQVwc' \
    --sku 'x8aErlay' \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gpdcWkUC' \
    --appIds '["uX4fJ3fu", "TgScQOnD", "sWpDhmMG"]' \
    --itemIds '["lwlC3zAD", "e2Twq2hY", "45EYI4BI"]' \
    --platform 'd8v6bpOL' \
    --skus '["LGBCTTeP", "wbVe81GJ", "1eCfnpMm"]' \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lXmZFXid' \
    --platform '0cDfMA9u' \
    --itemIds '["uHuGUt84", "bQiXA8Qb", "bi0mC4W0"]' \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6n84v4Ny' \
    --appId 'thFdvCvb' \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'B2Ei3JwT' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'eRTrvQWE' \
    --itemId 'J3cRSkeu' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'nE9KmvSD' \
    --ids '["gpD5a6ZW", "7eOgayrU", "eaShtoy4"]' \
    --platform 'YAuKzmxM' \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'w6FVUTs1' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'vqvwndJs' \
    --sku 'MyR0bxz4' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'AqjLQiQz' \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pLiQT56C' \
    --entitlementIds 'P8SUQceR' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'PAhtwbeV' \
    --namespace $AB_NAMESPACE \
    --userId 'P7SZL4uF' \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'tIVD3Rzq' \
    --namespace $AB_NAMESPACE \
    --userId '0AS7pJVY' \
    --body '{"collectionId": "lvJBVy8P", "endDate": "1998-06-02T00:00:00Z", "nullFieldList": ["uaR62S3a", "ZpuMqgQ7", "9KIqxkQz"], "origin": "Other", "reason": "8QnaYkVS", "startDate": "1998-08-12T00:00:00Z", "status": "ACTIVE", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'KwIOMxw7' \
    --namespace $AB_NAMESPACE \
    --userId 'WZz2qfK6' \
    --body '{"metadata": {"4qNKS7OO": {}, "jUWiUCNd": {}, "46L9c79B": {}}, "options": ["AqPIpxUa", "0DM8xSxk", "jXGCfnWy"], "platform": "1v6LFyoM", "requestId": "DtFffUTe", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'tbuSb8A5' \
    --namespace $AB_NAMESPACE \
    --userId '2Rk0iTwq' \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '8sFvLIFh' \
    --namespace $AB_NAMESPACE \
    --userId 'TBWP2FqH' \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'RWTj68sN' \
    --namespace $AB_NAMESPACE \
    --userId 'BL62MNxw' \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '26J5GNyy' \
    --namespace $AB_NAMESPACE \
    --userId '1sREm81s' \
    --body '{"metadata": {"x8KmHbAg": {}, "qxDi2Aqg": {}, "dcBv70Gx": {}}}' \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'eTrK6rkI' \
    --namespace $AB_NAMESPACE \
    --userId 'x4RlTKPU' \
    --body '{"reason": "P2VoGEIH", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'A7LuSCvS' \
    --namespace $AB_NAMESPACE \
    --userId '2TuIJxQU' \
    --quantity '30' \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'HGimsdbB' \
    --namespace $AB_NAMESPACE \
    --userId 'GoKwWvsh' \
    --body '{"platform": "FoZJAI5F", "requestId": "HsNXyLBF", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '6Ame75qu' \
    --body '{"duration": 95, "endDate": "1975-05-26T00:00:00Z", "entitlementCollectionId": "6igaNf6g", "entitlementOrigin": "Other", "itemId": "ha4scbsP", "itemSku": "N9IapGnX", "language": "2LE5RWqu", "metadata": {"aHek2rG6": {}, "ScAMGCgk": {}, "RGPUpXLK": {}}, "order": {"currency": {"currencyCode": "hA2zYPVa", "currencySymbol": "QDo99uC5", "currencyType": "VIRTUAL", "decimals": 35, "namespace": "5NX13d2h"}, "ext": {"M7TPCukX": {}, "QKkI3Kt5": {}, "1RIslUIN": {}}, "free": false}, "orderNo": "0dFCUOt2", "origin": "Steam", "overrideBundleItemQty": {"l4QGdHrp": 26, "wZcZ52tX": 81, "DcdaLwvf": 4}, "quantity": 96, "region": "mv5LdV1s", "source": "ACHIEVEMENT", "startDate": "1975-05-06T00:00:00Z", "storeId": "zJzpvez3"}' \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '8A9sFs11' \
    --body '{"code": "xN24kf7i", "language": "Ey", "region": "J2036geh"}' \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '9PPT8pme' \
    --body '{"itemId": "2x476FJa", "itemSku": "YUzWRyVW", "quantity": 8}' \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ycx53K1s' \
    --body '{"entitlementCollectionId": "0SX5aQ4Q", "entitlementOrigin": "GooglePlay", "metadata": {"k1cxYUXa": {}, "ixU0BjV0": {}, "4AEMMifq": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "L5sHtXAJ", "namespace": "0AInlzDG"}, "item": {"itemId": "unqo2IS5", "itemName": "V9mud5FD", "itemSku": "tEr8FlJT", "itemType": "u26kbG4O"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"currencyCode": "1xqMa5JM", "namespace": "fMzs890p"}, "item": {"itemId": "Z5Nbrdzo", "itemName": "qn3h3Sc7", "itemSku": "o02ZL7b6", "itemType": "9RSqdxkq"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "kWZI6DY1", "namespace": "LthaXQrY"}, "item": {"itemId": "8W43HdvE", "itemName": "Y2ykwJtC", "itemSku": "ujKrrTwB", "itemType": "GeQv7laG"}, "quantity": 48, "type": "ITEM"}], "source": "OTHER", "transactionId": "TD5CTYiC"}' \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'rWAGMcMm' \
    --endTime 'zfiy60fN' \
    --limit '36' \
    --offset '79' \
    --productId 'r7gmcLvh' \
    --startTime 'gSYlReAy' \
    --status 'REVOKE_FAILED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'TALFoQEb' \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '98G4aZAY' \
    --endTime 'LsYyE94v' \
    --limit '68' \
    --offset '60' \
    --startTime 'VghgEeCk' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zujs8pnc' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "FeFM", "productId": "86hldOTP", "region": "eOZJHXvb", "transactionId": "7iY1bj0c", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'vUFAxhSY' \
    --namespace $AB_NAMESPACE \
    --userId 'E9q4aF5J' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'Hme5KYys' \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '3vu574jY' \
    --body '{"orderId": "UCnbKk8J"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oDEPDkR8' \
    --activeOnly 'false' \
    --groupId 'WudkfcWL' \
    --limit '14' \
    --offset '24' \
    --platform 'STEAM' \
    --productId 'BeNpJwwx' \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'mgj9gd0Y' \
    --groupId 'RqRJzezp' \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'QjqXKgPI' \
    --productId 'fxyKVCMK' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'v3DL8PeF' \
    --activeOnly 'true' \
    --groupId 'wFoEHc0g' \
    --limit '78' \
    --offset '13' \
    --platform 'OCULUS' \
    --productId 'KneF2Wbe' \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'VcHdAlDf' \
    --namespace $AB_NAMESPACE \
    --userId '0hr7yoUS' \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'EaeyF7IZ' \
    --namespace $AB_NAMESPACE \
    --userId '5dNiq3cP' \
    --limit '93' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'rhNWzwMc' \
    --namespace $AB_NAMESPACE \
    --userId '4fVIV7Tq' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'LI4DrpfQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Kqg3F0Y2' \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id '5XfiVOrD' \
    --namespace $AB_NAMESPACE \
    --userId 'sIAqw0if' \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'BGK3eUka' \
    --discounted 'true' \
    --itemId 'OgwUEzqR' \
    --limit '87' \
    --offset '100' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'NELw7wkR' \
    --body '{"currencyCode": "52bcne33", "currencyNamespace": "62PND9e7", "discountCodes": ["iLC24r6s", "n7WvfUQu", "8YBXdjaQ"], "discountedPrice": 7, "entitlementPlatform": "Oculus", "ext": {"toXH903D": {}, "ujz8iPNU": {}, "1UATQTVS": {}}, "itemId": "onoqHB0M", "language": "Ngij7h9M", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 83, "quantity": 24, "region": "wHQVwPlV", "returnUrl": "QYmmjMNU", "sandbox": false, "sectionId": "SPfjo6bJ"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'qoO0UDat' \
    --itemId 'avxYQd5B' \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 's4pb9mdC' \
    --userId 'wkDicmPr' \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'Wn4b2lFB' \
    --userId 'mAi0z0LZ' \
    --body '{"status": "DELETED", "statusReason": "jo6CTgUq"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ilBCyYMF' \
    --userId 'jpOPS8w0' \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Vrfshlwx' \
    --userId 'VHjHM847' \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'YRRmQoCu' \
    --userId 'H0AePw4D' \
    --body '{"additionalData": {"cardSummary": "Z04yYw5p"}, "authorisedTime": "1992-04-01T00:00:00Z", "chargebackReversedTime": "1995-06-06T00:00:00Z", "chargebackTime": "1976-06-11T00:00:00Z", "chargedTime": "1981-04-21T00:00:00Z", "createdTime": "1989-11-18T00:00:00Z", "currency": {"currencyCode": "wrItJwpC", "currencySymbol": "kH6XstNo", "currencyType": "REAL", "decimals": 21, "namespace": "ceo30XmL"}, "customParameters": {"F6h93p2Z": {}, "x00i9nLE": {}, "XiClbYZa": {}}, "extOrderNo": "5ZubHEx9", "extTxId": "N6waRXbt", "extUserId": "pd5FlFgX", "issuedAt": "1994-06-24T00:00:00Z", "metadata": {"5Ngi8tsG": "h5QLsx6j", "DO0kpOkk": "6g3XmfW3", "ggWFeIAL": "3z8QSitQ"}, "namespace": "Gw6VVATF", "nonceStr": "Y1n1Ob4w", "paymentData": {"discountAmount": 85, "discountCode": "R8oGZRUV", "subtotalPrice": 100, "tax": 94, "totalPrice": 2}, "paymentMethod": "luAdHy7o", "paymentMethodFee": 57, "paymentOrderNo": "He0anxzf", "paymentProvider": "WALLET", "paymentProviderFee": 95, "paymentStationUrl": "yD8eRaSX", "price": 95, "refundedTime": "1995-02-16T00:00:00Z", "salesTax": 94, "sandbox": true, "sku": "fu3b5Lav", "status": "CHARGEBACK_REVERSED", "statusReason": "nPN7mMEv", "subscriptionId": "KaZ0GF7H", "subtotalPrice": 66, "targetNamespace": "oBXNa2J9", "targetUserId": "vdO3Sxh8", "tax": 72, "totalPrice": 36, "totalTax": 58, "txEndTime": "1984-02-28T00:00:00Z", "type": "UjoYbrHv", "userId": "BLIkwh9x", "vat": 72}' \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '2D9sj0XK' \
    --userId 'JXvtEB1v' \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'wHM6NVXM' \
    --body '{"currencyCode": "Enfb0DLq", "currencyNamespace": "nl15I9Cz", "customParameters": {"DkTFjjfh": {}, "eReHtpxN": {}, "mT0Sn8Sn": {}}, "description": "xUsJyqL9", "extOrderNo": "xrhDHvv6", "extUserId": "LFNMN3dC", "itemType": "EXTENSION", "language": "zxiH-XfWy_uk", "metadata": {"y2pLA0Xa": "8ymoaeGF", "cRIhDOFz": "sOoAsCf2", "C4E4LpER": "G5RJnXJK"}, "notifyUrl": "32Zl8xKY", "omitNotification": false, "platform": "lfXs6Wky", "price": 70, "recurringPaymentOrderNo": "iLQ989Ko", "region": "vrn8ckAU", "returnUrl": "Mz0Ywf8g", "sandbox": true, "sku": "4VrSKVmO", "subscriptionId": "k39QFY48", "title": "Sxz1lp2M"}' \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'axlyc7s1' \
    --userId 'fnL6iP3j' \
    --body '{"description": "Z93hF7Yc"}' \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId '91yEAHYq' \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'DV6P4AUC' \
    --body '{"code": "25KkDKCN", "orderNo": "Fn1LlepO"}' \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '4PODtIu4' \
    --body '{"meta": {"JwkZY3QD": {}, "Yc72q2Qr": {}, "YO25EdD3": {}}, "reason": "cPDi0Ipu", "requestId": "vS37ZOMj", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "SwJkroYr", "namespace": "mNS0v43U"}, "entitlement": {"entitlementId": "BQaxmDuA"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "iwV9aKB3", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 69, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "rVskNvD1", "namespace": "NRYQ1K3U"}, "entitlement": {"entitlementId": "fbiPB7Cz"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "kX1CFKfr", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "ih8Iz3OS", "namespace": "Uq5gUOHE"}, "entitlement": {"entitlementId": "z8Py4crx"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "r5AZW9fd", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 68, "type": "ITEM"}], "source": "ORDER", "transactionId": "yGTiMpIl"}' \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '7d1IzuSk' \
    --body '{"gameSessionId": "0o9Asry6", "payload": {"yeLnaH98": {}, "yQHfWyRa": {}, "ZzZdpfJI": {}}, "scid": "5vELG8m3", "sessionTemplateName": "LVlhfKxR"}' \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'mupjaEOg' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'o5BkMgyt' \
    --limit '75' \
    --offset '42' \
    --sku 'UgWsmPfi' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'oGA95nqc' \
    --excludeSystem 'false' \
    --limit '3' \
    --offset '76' \
    --subscriptionId 'hQpbtLpT' \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ELbuEZt6' \
    --body '{"grantDays": 6, "itemId": "IjCk4emc", "language": "yyuQvbuE", "reason": "QXinlxBH", "region": "VJOdPvPE", "source": "hvSGR3y7"}' \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hW0GcQyf' \
    --itemId 'DTS4dIPE' \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'auqGhFnP' \
    --userId 'UKnBrDlU' \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MsHnSDsW' \
    --userId 'fyhvXCGr' \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'k3QwSum2' \
    --userId 'npnEo1Mx' \
    --force 'true' \
    --body '{"immediate": false, "reason": "MuQbx2RP"}' \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7cCLgilF' \
    --userId 'xZ7GUx3j' \
    --body '{"grantDays": 51, "reason": "68Y9d8rm"}' \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WVcR6I3R' \
    --userId 'myu19zyD' \
    --excludeFree 'false' \
    --limit '62' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0IMM9GLS' \
    --userId 'NHUzoGYK' \
    --body '{"additionalData": {"cardSummary": "ohGhhPwH"}, "authorisedTime": "1984-08-20T00:00:00Z", "chargebackReversedTime": "1991-08-31T00:00:00Z", "chargebackTime": "1974-01-19T00:00:00Z", "chargedTime": "1993-02-28T00:00:00Z", "createdTime": "1992-09-16T00:00:00Z", "currency": {"currencyCode": "FPygPoJ0", "currencySymbol": "LZulscwa", "currencyType": "VIRTUAL", "decimals": 60, "namespace": "HZfnREho"}, "customParameters": {"NZi5f234": {}, "aHlSq6aI": {}, "wnz17URH": {}}, "extOrderNo": "SUoHxckC", "extTxId": "7uuKdZ18", "extUserId": "y08PH39S", "issuedAt": "1975-12-01T00:00:00Z", "metadata": {"SKJO5yQC": "oXtyboj3", "uDEHgoI2": "TZGjhO3R", "Hf2tWrvs": "97gXTEEP"}, "namespace": "86biqVj4", "nonceStr": "x53LCaWG", "paymentData": {"discountAmount": 8, "discountCode": "DE9sDmOf", "subtotalPrice": 84, "tax": 71, "totalPrice": 46}, "paymentMethod": "HL8Pp1KE", "paymentMethodFee": 30, "paymentOrderNo": "QdVJFLco", "paymentProvider": "ADYEN", "paymentProviderFee": 37, "paymentStationUrl": "06xTQoET", "price": 46, "refundedTime": "1987-05-07T00:00:00Z", "salesTax": 65, "sandbox": true, "sku": "MdhRknkA", "status": "AUTHORISED", "statusReason": "eoI5ZR7D", "subscriptionId": "Cht10t4V", "subtotalPrice": 30, "targetNamespace": "rbS3Ok16", "targetUserId": "SeNrOipJ", "tax": 71, "totalPrice": 6, "totalTax": 58, "txEndTime": "1984-07-07T00:00:00Z", "type": "LOpki2mn", "userId": "iVVAD9VP", "vat": 19}' \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'zbWclp7X' \
    --namespace $AB_NAMESPACE \
    --userId 'dfdSY6bB' \
    --body '{"count": 9, "orderNo": "CYjjHqTE"}' \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '1IjjniMf' \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'QKQhvAyv' \
    --namespace $AB_NAMESPACE \
    --userId 'cxqEv105' \
    --body '{"allowOverdraft": false, "amount": 75, "balanceOrigin": "Oculus", "balanceSource": "ORDER_REVOCATION", "metadata": {"TmY38eNp": {}, "ACgZpL7b": {}, "FEed635v": {}}, "reason": "US38a4yi"}' \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'N83E2dpn' \
    --namespace $AB_NAMESPACE \
    --userId '1Zc8AOrT' \
    --limit '85' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '21aCjJro' \
    --namespace $AB_NAMESPACE \
    --userId 'VBfKVhiM' \
    --request '{"amount": 81, "debitBalanceSource": "TRADE", "metadata": {"ktwaKroz": {}, "xKHWaBZU": {}, "U3W8GKpx": {}}, "reason": "0rj25saU", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'DZZ52Bwg' \
    --namespace $AB_NAMESPACE \
    --userId 'AXqEeKoo' \
    --body '{"amount": 75, "expireAt": "1995-09-01T00:00:00Z", "metadata": {"f7nOghjN": {}, "OBa3AYwn": {}, "y2kPAcwO": {}}, "origin": "GooglePlay", "reason": "bkpShklK", "source": "PURCHASE"}' \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'pe1ka7D8' \
    --namespace $AB_NAMESPACE \
    --userId '6oCpG1Ea' \
    --request '{"amount": 26, "debitBalanceSource": "EXPIRATION", "metadata": {"84yFODRR": {}, "6mzKX40g": {}, "ANuJF2lH": {}}, "reason": "KY7ioc55", "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'btE6mLaz' \
    --namespace $AB_NAMESPACE \
    --userId 'v1uMWqPr' \
    --body '{"amount": 32, "metadata": {"caMqyn9G": {}, "w7Q7ay0h": {}, "1ocvZPEa": {}}, "walletPlatform": "Playstation"}' \
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
    --storeId 'Rn5ETnm4' \
    > test.out 2>&1
eval_tap $? 341 'ListViews' test.out

#- 342 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'PsQB0zal' \
    --body '{"displayOrder": 33, "localizations": {"SEP0VbKU": {"description": "shEOUfRO", "localExt": {"dLLOvhFe": {}, "TNl5VYKk": {}, "R3KrQXOM": {}}, "longDescription": "Ewcx5YQf", "title": "5s8kAnyJ"}, "DKObESi6": {"description": "kPHstvkA", "localExt": {"aQHxIr9x": {}, "PknHasmj": {}, "tYLAxIdL": {}}, "longDescription": "miu5Krwg", "title": "HtZGDpgB"}, "O2sqDZaS": {"description": "4jX1g6Bp", "localExt": {"1Mw3RBOw": {}, "Ores1mRn": {}, "A8g4OdB0": {}}, "longDescription": "HMjiMIk9", "title": "o2mpNQjN"}}, "name": "9XbrGWSx"}' \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'NxaU3Lmk' \
    --storeId 'SisdlI3H' \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Tn2OpvRN' \
    --storeId 'Z2upPVql' \
    --body '{"displayOrder": 86, "localizations": {"Jb9QLtMK": {"description": "cp1tz1w5", "localExt": {"PJQeIqLd": {}, "2FrUKYLt": {}, "dVRwS58g": {}}, "longDescription": "6BTC7XuH", "title": "1gDqWVfJ"}, "cKO9lMsw": {"description": "WkOhpq00", "localExt": {"SkFloFj3": {}, "Jt3N6J8j": {}, "K6grlGhv": {}}, "longDescription": "L0FUtC0F", "title": "Iii0lBEr"}, "wigNYVhd": {"description": "OkGSyum3", "localExt": {"BMBV1u3t": {}, "s5cnjmKE": {}, "uttkZ7Wg": {}}, "longDescription": "kcONSN35", "title": "jadlQ9Nq"}}, "name": "2LX1fDaE"}' \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'g0um6WuP' \
    --storeId 'GZFE539j' \
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
    --body '[{"creditRequest": {"amount": 63, "expireAt": "1974-07-02T00:00:00Z", "metadata": {"APMOvdMr": {}, "pFTyBQ92": {}, "0wHLco0X": {}}, "origin": "Epic", "reason": "TIwRmLNr", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "5EJORnR8", "userIds": ["4GJ0KOm7", "tkBnZMxj", "1pXovsqs"]}, {"creditRequest": {"amount": 88, "expireAt": "1994-08-28T00:00:00Z", "metadata": {"71T0qEpV": {}, "JXam8lu1": {}, "5LEU4M1d": {}}, "origin": "Twitch", "reason": "ylZmkqBv", "source": "REWARD"}, "currencyCode": "jvJZFKVs", "userIds": ["OFfXFJlK", "yBO467kw", "UMtg6Vbn"]}, {"creditRequest": {"amount": 80, "expireAt": "1977-12-07T00:00:00Z", "metadata": {"kZsDRCxD": {}, "28MDkQyz": {}, "16X5oo6U": {}}, "origin": "Twitch", "reason": "quuhewen", "source": "REFERRAL_BONUS"}, "currencyCode": "4NPkx1RF", "userIds": ["bBazKMT9", "DslDaDsQ", "h7rBs38y"]}]' \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "aI4ybQhO", "request": {"allowOverdraft": false, "amount": 64, "balanceOrigin": "Nintendo", "balanceSource": "EXPIRATION", "metadata": {"gOYMYAuw": {}, "a33IiSO5": {}, "IJz9es37": {}}, "reason": "xyLcx3ue"}, "userIds": ["snX6iMWz", "2f52qEDm", "obzOKz6H"]}, {"currencyCode": "7IDBTw4P", "request": {"allowOverdraft": true, "amount": 44, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"LBWVB3Ey": {}, "0rXog6IE": {}, "U9YSUDcq": {}}, "reason": "whSeOUcY"}, "userIds": ["Yj9JftAz", "SCJraBAb", "L7pdnxnA"]}, {"currencyCode": "dmvrpwLy", "request": {"allowOverdraft": true, "amount": 91, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"eHqkediL": {}, "bjOiLRiW": {}, "vttGCTrj": {}}, "reason": "aIShGFCL"}, "userIds": ["Ocd0GYjO", "yNSx5FGo", "tRqPfPLP"]}]' \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '4qIy8fdF' \
    --end 'G8SCf7dX' \
    --start 'Q605QzAZ' \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["LD7EC5Ko", "UQAFOp8w", "Z75tZEI0"], "apiKey": "ZkFSPsxv", "authoriseAsCapture": false, "blockedPaymentMethods": ["42J7Ux4a", "6kZgngik", "YIlV3ZTy"], "clientKey": "3LGXAC6m", "dropInSettings": "uUHumZ83", "liveEndpointUrlPrefix": "cfGZ3men", "merchantAccount": "At8M6rrc", "notificationHmacKey": "ccPSlZAQ", "notificationPassword": "bHhNZ7Sv", "notificationUsername": "KwYofHxM", "returnUrl": "B5SoscEz", "settings": "6Cu1SVMk"}' \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "KLkqRH9K", "privateKey": "EPDKQ4W8", "publicKey": "fiohkbaJ", "returnUrl": "uzUUwofe"}' \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "9J5JOzVa", "secretKey": "J8sZQepP"}' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfig' test.out

#- 356 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'lUr5T3rb' \
    --region 'WvKz6chW' \
    > test.out 2>&1
eval_tap $? 356 'DebugMatchedPaymentMerchantConfig' test.out

#- 357 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'false' \
    --body '{"apiKey": "Uh1PjMFH", "webhookSecretKey": "PNyUzCaM"}' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "6BM0xeEh", "clientSecret": "Kigtpbm7", "returnUrl": "rNXoby6l", "webHookId": "1YG3K8Zr"}' \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["kvwO83gM", "DaZtbRo7", "VDU9uRNY"], "publishableKey": "DJMNhzFe", "secretKey": "fu7UmLFu", "webhookSecret": "C4h4A1Sd"}' \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "kcejw1GL", "key": "mM22olrB", "mchid": "dSFqeZji", "returnUrl": "gIxwcJT9"}' \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "faOJcljw", "flowCompletionUrl": "upTFRpsh", "merchantId": 63, "projectId": 38, "projectSecretKey": "PJUhkGVg"}' \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'rM5I3amO' \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'zJaUK98S' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["PVBGs0u9", "kpxXZpqE", "bbrG25Lg"], "apiKey": "NtDa6K8i", "authoriseAsCapture": false, "blockedPaymentMethods": ["hw4SoRkR", "0VqUHQzO", "7bWPbw2N"], "clientKey": "KaERrjZD", "dropInSettings": "MYkNiAPK", "liveEndpointUrlPrefix": "RxYqRjUB", "merchantAccount": "vWi0d8T6", "notificationHmacKey": "gDO3eewD", "notificationPassword": "ZFYORgP9", "notificationUsername": "C4W9opsf", "returnUrl": "qgB1X0uY", "settings": "DqsItXC2"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'tWlGOnlD' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '9v2z9Yrk' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "Msg8JjUC", "privateKey": "AM3IEyIP", "publicKey": "hvU4Jo5T", "returnUrl": "lPyUDWKa"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'HBUuH0oP' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'URImMcue' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "hqNbxF3W", "secretKey": "ERbQGssO"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Ut8x8g83' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'dFAjmuK4' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"apiKey": "tGXslkgN", "webhookSecretKey": "qS9NeE2A"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'XhILtDTm' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '2g1UEtOW' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "twLNCBBN", "clientSecret": "YRsjskUF", "returnUrl": "BvvQSnQ1", "webHookId": "f97LLWg0"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Ve4HrgfL' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '32eDEN8l' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["BAzg6hld", "TbPVRENB", "wHytvaMB"], "publishableKey": "ZtfzG1gC", "secretKey": "3M7TE1CB", "webhookSecret": "AB3G9vo6"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '6mPE8vd6' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '14wkyloG' \
    --validate 'false' \
    --body '{"appId": "kXQDi6Up", "key": "RrXVtVOx", "mchid": "V27eVRit", "returnUrl": "au6xTUsf"}' \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'ZqB3Gtux' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'LrqGiYeC' \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'J8qNjsIU' \
    --validate 'true' \
    --body '{"apiKey": "D3VG8wFf", "flowCompletionUrl": "7SeykZCs", "merchantId": 63, "projectId": 37, "projectSecretKey": "7zcuicai"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'QCAmzNqH' \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'R14tYUP6' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 380 'UpdateXsollaUIConfig' test.out

#- 381 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '63' \
    --namespace 'gDVi7riL' \
    --offset '36' \
    --region 'aPTHLxRj' \
    > test.out 2>&1
eval_tap $? 381 'QueryPaymentProviderConfig' test.out

#- 382 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "CHECKOUT", "namespace": "0HSNTp0n", "region": "n0I0KCXx", "sandboxTaxJarApiToken": "g7h7MHol", "specials": ["ADYEN", "ADYEN", "NEONPAY"], "taxJarApiToken": "1Jvl7bUv", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 382 'CreatePaymentProviderConfig' test.out

#- 383 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetAggregatePaymentProviders' test.out

#- 384 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'cFMyjOYh' \
    --region 'Cudla8xG' \
    > test.out 2>&1
eval_tap $? 384 'DebugMatchedPaymentProviderConfig' test.out

#- 385 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 385 'GetSpecialPaymentProviders' test.out

#- 386 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'kuZyKYKr' \
    --body '{"aggregate": "STRIPE", "namespace": "J0m2pQYT", "region": "NnZu8eTS", "sandboxTaxJarApiToken": "iJkEBgF6", "specials": ["WXPAY", "WALLET", "XSOLLA"], "taxJarApiToken": "ryU3UoxP", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'NAGtb6Lc' \
    > test.out 2>&1
eval_tap $? 387 'DeletePaymentProviderConfig' test.out

#- 388 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 388 'GetPaymentTaxConfig' test.out

#- 389 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "idWC6u0h", "taxJarApiToken": "R5v3uShU", "taxJarEnabled": true, "taxJarProductCodesMapping": {"IOspkudh": "JEOEYGzL", "9oOQ0C41": "9hcReDy1", "S9YXjdU9": "LoANe5qr"}}' \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'eiiPJw1N' \
    --end 'Fc7aP3bC' \
    --start 'XvbN0Rxe' \
    > test.out 2>&1
eval_tap $? 390 'SyncPaymentOrders' test.out

#- 391 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'shtsriLC' \
    --storeId 'pxj0zeac' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetRootCategories' test.out

#- 392 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '8wiGEN3M' \
    --storeId 'UN5l5EfB' \
    > test.out 2>&1
eval_tap $? 392 'DownloadCategories' test.out

#- 393 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'Df5HvKiB' \
    --namespace $AB_NAMESPACE \
    --language '4ezMr7C8' \
    --storeId 'ozgBXIrO' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'YVQI5jem' \
    --namespace $AB_NAMESPACE \
    --language 'TjUc3kLP' \
    --storeId '03hq6ZTd' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'B6BYIRcJ' \
    --namespace $AB_NAMESPACE \
    --language 'chIyFclo' \
    --storeId '9RopbrJX' \
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
    --dlcType 'XBOX' \
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
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 399 'GetIAPItemMapping' test.out

#- 400 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '9NFwY59T' \
    --region 'htWasDrU' \
    --storeId 'O8QuM7ni' \
    --appId 'iaNxFPjZ' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemByAppId' test.out

#- 401 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId '67QNJoqe' \
    --categoryPath '3zFNIFCS' \
    --features 'HB2k5VQ5' \
    --includeSubCategoryItem 'false' \
    --itemType 'INGAMEITEM' \
    --language 'LxVkTCJT' \
    --limit '56' \
    --offset '54' \
    --region 'tTBZ77ob' \
    --sortBy '["displayOrder:asc", "displayOrder", "name:desc"]' \
    --storeId 'OJKvk6HW' \
    --tags 'o0WcbrRG' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryItems' test.out

#- 402 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'A4ivg8HP' \
    --region 'NE1TEwpl' \
    --storeId 'paAarFZL' \
    --sku 'gNsMYWVF' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'ojsBYfGK' \
    --storeId 'dwKkaaot' \
    --itemIds 'h0gCBp0Z' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'mpzMOoss' \
    --region 'K5RsHJAN' \
    --storeId 'IwlgTS2M' \
    --itemIds 'hc9UUoRT' \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["pppbcPcZ", "QsmAzArp", "VY3HUd1i"]}' \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SEASON' \
    --limit '69' \
    --offset '12' \
    --region 'atjC4ci0' \
    --storeId 'iAY2Hvac' \
    --keyword '53jZTNSQ' \
    --language 'q2oahYuO' \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'gZOepQH4' \
    --namespace $AB_NAMESPACE \
    --language 'BaUPAcMY' \
    --region 'MWieUFCv' \
    --storeId 'nyJHhfLc' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'fjiNm4ri' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'rhWySYLV' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'ZBK5LdVY' \
    --populateBundle 'true' \
    --region 'Mpx6Xgdv' \
    --storeId 'VRIRRyYH' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "ipFSk4ON", "successUrl": "YXEn6pzT"}, "paymentOrderNo": "tczrpgtg", "paymentProvider": "XSOLLA", "returnUrl": "iq07Q1tq", "ui": "cXZ9TdgW", "zipCode": "rqYPSqpg"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'K18u9iGl' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'I1Cxs1xi' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LOdGJzgk' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'Shjc3fV1' \
    --body '{"token": "Kfqb9TxE"}' \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VZmtuUzn' \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'ALIPAY' \
    --region 'IV5X6pdu' \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'wELEOU0z' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'GxFQU7Eo' \
    --foreinginvoice 'hnkrli5D' \
    --invoiceId 'TFBs0gcU' \
    --payload 'pUnUiIeC' \
    --redirectResult 'vmMDUZVx' \
    --resultCode 'P9eJ8MIX' \
    --sessionId 'DthAcjMH' \
    --status 'PfFoixXv' \
    --token 'IV6ggGTi' \
    --type 'Sw3jnMxv' \
    --userId '26JCFbBL' \
    --orderNo 'DaW20w65' \
    --paymentOrderNo 'o9WLTdfz' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'Gs7rM5X4' \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'owdQWEe7' \
    --paymentOrderNo 'Ec21iklP' \
    --paymentProvider 'NEONPAY' \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'ZiK39Co5' \
    > test.out 2>&1
eval_tap $? 420 'GetRewardByCode' test.out

#- 421 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'FMru5C5P' \
    --limit '23' \
    --offset '36' \
    --sortBy '["rewardCode", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 421 'QueryRewards1' test.out

#- 422 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '2tA5ZwEA' \
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
    --appIds '["ucvyBZSl", "MxRRITtf", "0RRQ7YZW"]' \
    --itemIds '["Q051DiCk", "ts9NnuxU", "9qIVldgY"]' \
    --skus '["nZsqzGkR", "mtDArJ4K", "VZH6MAwP"]' \
    > test.out 2>&1
eval_tap $? 424 'PublicExistsAnyMyActiveEntitlement' test.out

#- 425 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '4rxPsu5N' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'iWpr8FkS' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku '4SJgi3Qf' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 428 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["9jxFSpdg", "RNRgVnFH", "ZveeQrsr"]' \
    --itemIds '["UnvhgDYb", "qFg9yh0Y", "WJsSZLjC"]' \
    --skus '["gV6CvS1Z", "wUJLdDY0", "WMnIUAaF"]' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetEntitlementOwnershipToken' test.out

#- 429 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "muno7EKQ", "language": "fT-Kk", "region": "gr8sprGj"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '0B96fRpx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HEnuqbZ6' \
    --body '{"epicGamesJwtToken": "rLO2d1HL"}' \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ygeBYwps' \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'fn1mDO9N' \
    --body '{"serviceLabel": 79}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '3S3W3hdg' \
    --body '{"serviceLabels": [41, 50, 37]}' \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LDFTOaID' \
    --body '{"appId": "5APkOYaV", "steamId": "GHqwI4qV"}' \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '7NvaaJaR' \
    --body '{"xstsToken": "YL7c9FWB"}' \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Wqk8JgTw' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'rKV3TTG1' \
    --features '["sJV9odxI", "7r01mLDu", "BYfqJ6tT"]' \
    --itemId '["RMW9flNn", "tC1djlKI", "bexPzAEc"]' \
    --limit '65' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Mh3WMuyj' \
    --appId 'O867LDZJ' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'wjjEiK41' \
    --limit '55' \
    --offset '100' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '3LEmeAAf' \
    --availablePlatformOnly 'true' \
    --ids '["tZ1ucNRv", "6P9JTbL5", "H8gRGSIC"]' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'PMUdsihT' \
    --endDate 'hcD5iAKJ' \
    --entitlementClazz 'OPTIONBOX' \
    --limit '22' \
    --offset '50' \
    --startDate 'Uc0kFM4z' \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'G4g1Drqs' \
    --appIds '["tOWVmb0j", "1X159lCz", "UHCo29pF"]' \
    --itemIds '["rNjWRPUr", "yUxS723t", "CgDpvPzt"]' \
    --skus '["ZTVlS8MK", "8oYT87E3", "hvYp1mfy"]' \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'mxuMj1Pc' \
    --appId 'EH9pj7oH' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'qqUX7BQS' \
    --entitlementClazz 'APP' \
    --itemId '3HKr9FND' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8lZbRmo1' \
    --ids '["ywHRG54x", "nDDE54tE", "cRRQOEfH"]' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'DHrPt8U7' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'Ck3dgMmO' \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'lI8JjBeG' \
    --namespace $AB_NAMESPACE \
    --userId 'Mt7YNTZA' \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'ROvVIalB' \
    --namespace $AB_NAMESPACE \
    --userId 'XJW2Ecfn' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["PrPbp7jt", "48sdiSFM", "ExUSCiLA"], "requestId": "sJpyf2sp", "useCount": 76}' \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'zBfEHkzc' \
    --namespace $AB_NAMESPACE \
    --userId '6o7v3PlA' \
    --body '{"requestId": "UQSo659Z", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'FXL8CK6q' \
    --namespace $AB_NAMESPACE \
    --userId 'C8gGfSjl' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'ufM7k9IU' \
    --namespace $AB_NAMESPACE \
    --userId 'fu0ymtZE' \
    --body '{"entitlementId": "YMiFWbEl", "metadata": {"operationSource": "INVENTORY"}, "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'kgwhnG39' \
    --body '{"code": "ZtJr6UDm", "language": "BTtz-lXQn_292", "region": "GYTX3CQT"}' \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'lGk0CiDh' \
    --body '{"excludeOldTransactions": true, "language": "GY_VZVQ-964", "productId": "ulkPzglG", "receiptData": "DDrmpdzp", "region": "Fs6221Lm", "transactionId": "9ZpCWo94"}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'p6yripuL' \
    --body '{"epicGamesJwtToken": "sJN4jZlG"}' \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '30AIZ9hG' \
    --body '{"autoAck": true, "autoConsume": false, "language": "GJI-iIeJ", "orderId": "5OedGYH1", "packageName": "ArmNivih", "productId": "CjGzvRAN", "purchaseTime": 4, "purchaseToken": "i0ajV2a3", "region": "YXYn8UVN", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '1OdQDDNw' \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '1TwvmwSI' \
    --body '{"currencyCode": "JoVZu0uP", "price": 0.7285379906326169, "productId": "kJOAZmjQ", "serviceLabel": 29}' \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'WojNDFmv' \
    --body '{"currencyCode": "celmMsQP", "price": 0.6511611108997906, "productId": "RoIp5BQZ", "serviceLabels": [9, 3, 70]}' \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'YdmLpWs3' \
    --body '{"appId": "xrhLGaqD", "currencyCode": "JrzX03W0", "language": "Kgp-TeJk-141", "price": 0.600450182690053, "productId": "wtflhDWF", "region": "RcyJ9o3U", "steamId": "96TUlciP"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'KpePi4LI' \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'aOYNWzGV' \
    --body '{"orderId": "xb5uboPq"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    --userId 'Af7W6hLO' \
    --activeOnly 'true' \
    --groupId '1ZcBuUSN' \
    --limit '5' \
    --offset '9' \
    --productId 'lOWomxqE' \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '6qzzFEf6' \
    --body '{"gameId": "z4DR96OJ", "language": "yB-pjGE-793", "region": "kzSeNcxP"}' \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'HDm0RSIz' \
    --body '{"currencyCode": "K5c5I64D", "price": 0.3038576396309133, "productId": "5JOXe7JK", "xstsToken": "pZlV7o7r"}' \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'p4gFQr4c' \
    --discounted 'true' \
    --itemId '3Ram4RUF' \
    --limit '16' \
    --offset '28' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QU69qj4P' \
    --body '{"currencyCode": "HegKwsT7", "discountCodes": ["WWmZsjKQ", "aYfeVP3O", "nbB8LRZn"], "discountedPrice": 59, "ext": {"AxOuOcAh": {}, "nz0wmFCS": {}, "58NWQ86z": {}}, "itemId": "mvEjerys", "language": "Yh_LfZM", "price": 61, "quantity": 65, "region": "77OQBR0x", "returnUrl": "XH3apcrr", "sectionId": "yHwEu7mZ"}' \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId '3rzOwRlU' \
    --body '{"currencyCode": "h7DUi2tk", "discountCodes": ["zR6hV1bi", "E7gigxOu", "l5qSJKNa"], "discountedPrice": 39, "itemId": "mwmr5i2L", "price": 66, "quantity": 100}' \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mQ3KVbUU' \
    --userId 'MDXfKtKv' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qi1ZxnpK' \
    --userId 'QHapBWDd' \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'KfyqH3f3' \
    --userId 'zq5cZsI0' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'gz4ImnZ7' \
    --userId '2aYyDSUL' \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'wOKPpXGX' \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'dqEARp5Q' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'PL43KQum' \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'e6nlnRyL' \
    --autoCalcEstimatedPrice 'true' \
    --language 'p1w5c40M' \
    --region 'PjFTkjUM' \
    --storeId 'l67C3Wmr' \
    --viewId 'x7R89tJz' \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'dV4qKbx0' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'muCMmwid' \
    --limit '25' \
    --offset '45' \
    --sku 'b258lgZB' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'ldoP5iiJ' \
    --body '{"currencyCode": "9rVQy3En", "itemId": "nUOHVixo", "language": "MQ", "region": "x8FYhaTy", "returnUrl": "UJow4GXP", "source": "JcLBwowl"}' \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PIH3YRRU' \
    --itemId 'uNfKopkq' \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RpPGKHGQ' \
    --userId 'p0qbugJU' \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ew9b9Vf6' \
    --userId 'mFmqm2Oy' \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uqhseaqC' \
    --userId 'PyWXiJty' \
    --body '{"immediate": false, "reason": "49p67Iqc"}' \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EYU1gcJA' \
    --userId 'qdWgQiO9' \
    --excludeFree 'true' \
    --limit '54' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'XE6nZCPI' \
    --language 'vSKhdWT0' \
    --storeId 'zTW3XrbG' \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '5lLz64Qv' \
    --namespace $AB_NAMESPACE \
    --userId 'VkgxZI12' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '4nw5BX40' \
    --namespace $AB_NAMESPACE \
    --userId 'gpXXvz7p' \
    --limit '79' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'false' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 487 'PublicGetMyDLCContent' test.out

#- 488 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'AfqVmpn9' \
    --limit '56' \
    --offset '50' \
    --startTime 'UOPvTFgI' \
    --state 'FULFILLED' \
    --transactionId 'YDt8kLAF' \
    --userId 'QAnzUzlf' \
    > test.out 2>&1
eval_tap $? 488 'QueryFulfillments' test.out

#- 489 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate '6TygzWdX' \
    --baseAppId 'LWwjLBmC' \
    --categoryPath 'kEuke0Nf' \
    --features 'p7rTi3Pz' \
    --includeSubCategoryItem 'true' \
    --itemName 'knlDmuLl' \
    --itemStatus 'INACTIVE' \
    --itemType '["APP", "INGAMEITEM", "COINS"]' \
    --limit '54' \
    --offset '50' \
    --region 'rGfOatAd' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt:asc", "displayOrder:desc"]' \
    --storeId 'm9dcSlhz' \
    --tags 'oroECAW2' \
    --targetNamespace 'eSKT5TFd' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 489 'QueryItemsV2' test.out

#- 490 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'pNhhnv0M' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 490 'ImportStore1' test.out

#- 491 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Ax7eHaz8' \
    --body '{"itemIds": ["n7ltuSG2", "ftTBz3RV", "S1EyNWN1"]}' \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'qAAhLjaN' \
    --body '{"entitlementCollectionId": "docuT6NJ", "entitlementOrigin": "System", "metadata": {"A330lWQy": {}, "AYpBlYB0": {}, "aN6MGdB0": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "MRI6V515", "namespace": "ZKSIOahY"}, "item": {"itemId": "JU1NAgcg", "itemName": "Aufa3D2D", "itemSku": "KjOOlVnd", "itemType": "xES3AnBl"}, "quantity": 96, "type": "ITEM"}, {"currency": {"currencyCode": "HKzPUJCB", "namespace": "TjgS5Exv"}, "item": {"itemId": "hj4CdYbX", "itemName": "MiHjmuBD", "itemSku": "8YaEk4Mq", "itemType": "rIIRUR4s"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "6T5Y3109", "namespace": "DlN5f5bp"}, "item": {"itemId": "R4kp1whS", "itemName": "Nz6ubM1e", "itemSku": "NosDeVe1", "itemType": "wQCOLMiq"}, "quantity": 95, "type": "ITEM"}], "source": "EXPIRATION", "transactionId": "oBmGotkr"}' \
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
    --userId 'vXnrQSNK' \
    --body '{"transactionId": "PHiMikcZ"}' \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'BpMhfFjS' \
    --userId '03NzTPqy' \
    --body '{"items": [{"duration": 76, "endDate": "1991-04-10T00:00:00Z", "entitlementCollectionId": "g7HotMiI", "entitlementOrigin": "GooglePlay", "itemId": "h7oq71P2", "itemSku": "BiPtqv8T", "language": "GB1367eR", "metadata": {"e0Ek1s4x": {}, "zMn8mmEw": {}, "1LlBx0RE": {}}, "orderNo": "gGhOLMTd", "origin": "Twitch", "quantity": 27, "region": "XSD5HByb", "source": "SELL_BACK", "startDate": "1984-06-05T00:00:00Z", "storeId": "Y3nY2t4C"}, {"duration": 46, "endDate": "1975-10-15T00:00:00Z", "entitlementCollectionId": "uiX4vCaw", "entitlementOrigin": "GooglePlay", "itemId": "LsyoMSha", "itemSku": "z272gRH7", "language": "m4vtL8Rg", "metadata": {"MfNBBXHR": {}, "TwEbtPpb": {}, "k5hpf1yV": {}}, "orderNo": "X2ddh0LH", "origin": "Epic", "quantity": 13, "region": "Zh7uh8oW", "source": "REDEEM_CODE", "startDate": "1971-06-21T00:00:00Z", "storeId": "qBwksgiV"}, {"duration": 76, "endDate": "1995-05-07T00:00:00Z", "entitlementCollectionId": "Yvjrd1Io", "entitlementOrigin": "GooglePlay", "itemId": "SECH38Fq", "itemSku": "0ZDrO1tJ", "language": "dPs0uubg", "metadata": {"gMvavj1m": {}, "KRI2r0qG": {}, "AqZ9pZQm": {}}, "orderNo": "okXLTuck", "origin": "Xbox", "quantity": 16, "region": "JFqaiH6z", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1986-11-23T00:00:00Z", "storeId": "5fqdK8hc"}]}' \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'sjzPaR1m' \
    --userId 'YQPpiKjR' \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'Ex4YB8Ov' \
    --userId 'NvcsCw10' \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE