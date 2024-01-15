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
echo "1..436"

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
    --id 'It759AsI' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'rt9y8sb5' \
    --body '{"grantDays": "OInHroVP"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'H9AQvtcM' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '95aB7kHU' \
    --body '{"grantDays": "CmtciJn5"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "ohpLXUWu", "dryRun": true, "fulfillmentUrl": "MX2sYIOe", "itemType": "BUNDLE", "purchaseConditionUrl": "Drxc7ahv"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'JaXPBxIB' \
    --itemType 'SEASON' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'kVxAS8dT' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'WTzqredl' \
    --body '{"clazz": "tx7NYvgJ", "dryRun": false, "fulfillmentUrl": "iCiEDZJL", "purchaseConditionUrl": "fBc72FOv"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '0XTSswGQ' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name 'v1914YpX' \
    --offset '75' \
    --tag 'On7y31jA' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rdadScZc", "items": [{"extraSubscriptionDays": 11, "itemId": "e4yBbuVq", "itemName": "vtiXvdwl", "quantity": 30}, {"extraSubscriptionDays": 95, "itemId": "JnpeZnRA", "itemName": "dhAOpc59", "quantity": 53}, {"extraSubscriptionDays": 30, "itemId": "m73VORM7", "itemName": "H9ROt1kI", "quantity": 82}], "maxRedeemCountPerCampaignPerUser": 20, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 76, "maxSaleCount": 94, "name": "Y6Aut64B", "redeemEnd": "1988-03-02T00:00:00Z", "redeemStart": "1983-06-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["TD5j6L12", "2jJ7vnOu", "ZZDRvTmi"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'oV2SHkq2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'KCM3QPOR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WsY05szh", "items": [{"extraSubscriptionDays": 64, "itemId": "R5mOHGDW", "itemName": "6wMaIdWF", "quantity": 47}, {"extraSubscriptionDays": 52, "itemId": "qB3RQB8l", "itemName": "kbgmTx2r", "quantity": 65}, {"extraSubscriptionDays": 58, "itemId": "aDQkmbFe", "itemName": "9ABT3U3S", "quantity": 47}], "maxRedeemCountPerCampaignPerUser": 62, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 76, "maxSaleCount": 22, "name": "ff5SFfTj", "redeemEnd": "1994-04-11T00:00:00Z", "redeemStart": "1982-01-22T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["4GBXp2YF", "d7YxxFE1", "WKz7kdxO"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'ixkHWSPc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetLootBoxPluginConfig' test.out

#- 19 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "vZWNQCcz"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "lTs2T4cG"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateLootBoxPluginConfig' test.out

#- 20 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteLootBoxPluginConfig' test.out

#- 21 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'UplodLootBoxPluginConfigCert' test.out

#- 22 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxGrpcInfo' test.out

#- 23 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetSectionPluginConfig' test.out

#- 24 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "2JNPv3ye"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "9e3AxTxU"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateSectionPluginConfig' test.out

#- 25 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'DeleteSectionPluginConfig' test.out

#- 26 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 26 'UploadSectionPluginConfigCert' test.out

#- 27 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'RWKds6Wh' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'yOA174nS' \
    --body '{"categoryPath": "kT1uRYpx", "localizationDisplayNames": {"VNQfXGbN": "tMYRy400", "2RCHSmDY": "dJBbt3sE", "rH2wC75A": "xbzJxtoL"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'gWH56FFy' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'lQfdn8Ch' \
    --namespace $AB_NAMESPACE \
    --storeId 'EYmi8WFG' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'tBq00FXC' \
    --namespace $AB_NAMESPACE \
    --storeId 'dClRhpoa' \
    --body '{"localizationDisplayNames": {"fuJLI2s2": "3oBZ6P9p", "sUAGPtL2": "ILnO1f3U", "0PsN9kzS": "z365IoKu"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'aug8dSvW' \
    --namespace $AB_NAMESPACE \
    --storeId '5BqDwlIn' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '4r6898eI' \
    --namespace $AB_NAMESPACE \
    --storeId 'usJhD2zH' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'sB73rKRS' \
    --namespace $AB_NAMESPACE \
    --storeId 'zHBPkZnE' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'PVkD6AiW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '88' \
    --code 'KWTvBeCo' \
    --limit '79' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'N70UuvxS' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 52}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'o8Oz86ML' \
    --namespace $AB_NAMESPACE \
    --batchNo '50' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'GZ6A4tnr' \
    --namespace $AB_NAMESPACE \
    --batchNo '59' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'NSb0UmJY' \
    --namespace $AB_NAMESPACE \
    --batchNo '10' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'QjAk7tNK' \
    --namespace $AB_NAMESPACE \
    --code 'iBJUq02r' \
    --limit '66' \
    --offset '17' \
    --userId 'R18CCaAN' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'o1ifAdwE' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'xyoMKHB1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Q6CvLyCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'EnableCode' test.out

#- 44 GetServicePluginConfig
eval_tap 0 44 'GetServicePluginConfig # SKIP deprecated' test.out

#- 45 UpdateServicePluginConfig
eval_tap 0 45 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 46 DeleteServicePluginConfig
eval_tap 0 46 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 47 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "XsOrACUe", "currencySymbol": "xY1ezqgC", "currencyType": "VIRTUAL", "decimals": 68, "localizationDescriptions": {"zznDFTlk": "719GpupV", "K9EkHpWj": "hVbNZM5a", "3dUygPJr": "U1uvuGAS"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'ANmyCc3X' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"t1bem8im": "n1hucBs2", "zvA1msEY": "jgGyculW", "wYKmPDw9": "oNNM9uba"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '7ybcUzKv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'ray9eKGD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '3bHQDWhV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencySummary' test.out

#- 53 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetDLCItemConfig' test.out

#- 54 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "fqhLpSYW", "rewards": [{"currency": {"currencyCode": "SSoZKq6h", "namespace": "5SmETjAr"}, "item": {"itemId": "TlOI6ayt", "itemSku": "8714SSUX", "itemType": "zv2SRYiv"}, "quantity": 96, "type": "ITEM"}, {"currency": {"currencyCode": "C1s4MKp5", "namespace": "tF2aYv9l"}, "item": {"itemId": "lsiLfOyP", "itemSku": "XH3mwtes", "itemType": "bNZTIMlv"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "ihMqUzs5", "namespace": "3BZ8YzYJ"}, "item": {"itemId": "onxfWVjX", "itemSku": "QU3oAmoK", "itemType": "3qqBZaKr"}, "quantity": 85, "type": "ITEM"}]}, {"id": "q9ONZ1AW", "rewards": [{"currency": {"currencyCode": "PHiFUJGt", "namespace": "ogowOdYD"}, "item": {"itemId": "NrCL5bSB", "itemSku": "Eu1LIYSo", "itemType": "3TxPJMqJ"}, "quantity": 13, "type": "CURRENCY"}, {"currency": {"currencyCode": "MVPDza7G", "namespace": "D4GtLqa7"}, "item": {"itemId": "HQMIbX0T", "itemSku": "G9tBLuK4", "itemType": "8acqgaOP"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "6dSMP9bE", "namespace": "LkRXpYl1"}, "item": {"itemId": "Zp5vfrpg", "itemSku": "x4tBLUf9", "itemType": "2NVjOL6T"}, "quantity": 38, "type": "ITEM"}]}, {"id": "LrRu8KaR", "rewards": [{"currency": {"currencyCode": "T39mX13O", "namespace": "jrlsKLPJ"}, "item": {"itemId": "4OrXv44C", "itemSku": "1F4i4tN8", "itemType": "jjFDoIr6"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "zaV9nxc9", "namespace": "In8zB0o5"}, "item": {"itemId": "N2azWFov", "itemSku": "BhuXbmiw", "itemType": "65F5Gbim"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "aE5cPZKa", "namespace": "5FBjWoai"}, "item": {"itemId": "O3zstmTw", "itemSku": "cG1glOCF", "itemType": "UaamfprN"}, "quantity": 62, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateDLCItemConfig' test.out

#- 55 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDLCItemConfig' test.out

#- 56 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetPlatformDLCConfig' test.out

#- 57 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"C2j8e47t": "S0Th73lz", "yoDicFlY": "jn2F3B74", "mNX2KMWV": "FZGTfREx"}}, {"platform": "STEAM", "platformDlcIdMap": {"88y8j80O": "RddaEtAe", "gSOqES78": "VqPlDHtk", "kFYqAMWg": "ivQN6yPe"}}, {"platform": "XBOX", "platformDlcIdMap": {"ahrG5Tz4": "WqmVgzzX", "pDHHPxfP": "jZd3chr2", "z6hGcWww": "zVXfaRdZ"}}]}' \
    > test.out 2>&1
eval_tap $? 57 'UpdatePlatformDLCConfig' test.out

#- 58 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeletePlatformDLCConfig' test.out

#- 59 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '2607QCKd' \
    --itemId '["ikW990ix", "yrsI5o1p", "fpL9SMhF"]' \
    --limit '3' \
    --offset '51' \
    --origin 'GooglePlay' \
    --userId 'bRlz32MH' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["MlnVsr4c", "ipqzSeRc", "qIv4A7RS"]' \
    --limit '10' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'EnableEntitlementOriginFeature' test.out

#- 62 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'false' \
    > test.out 2>&1
eval_tap $? 62 'GetEntitlementConfigInfo' test.out

#- 63 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1986-12-08T00:00:00Z", "grantedCode": "eqicKuOL", "itemId": "T4PtTosV", "itemNamespace": "65oVh4W1", "language": "jqdq_AZrI-760", "origin": "Steam", "quantity": 89, "region": "Ds9BmXQv", "source": "IAP", "startDate": "1982-01-10T00:00:00Z", "storeId": "olKhlInJ"}, {"endDate": "1995-01-18T00:00:00Z", "grantedCode": "ohpmlI7L", "itemId": "6U5KSXTZ", "itemNamespace": "vJFnh8po", "language": "mkUB-Fy", "origin": "Nintendo", "quantity": 34, "region": "qJO46HDh", "source": "GIFT", "startDate": "1976-07-11T00:00:00Z", "storeId": "Ps3pQ8Bj"}, {"endDate": "1994-01-22T00:00:00Z", "grantedCode": "lRcATfOa", "itemId": "WRRiGybH", "itemNamespace": "zHAnqtG7", "language": "Oun-fgvJ", "origin": "IOS", "quantity": 84, "region": "RGzsIaTs", "source": "PURCHASE", "startDate": "1986-10-24T00:00:00Z", "storeId": "2HivsL0G"}], "userIds": ["1Rzm0Bv8", "7oHPD16W", "nrG3gH2N"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["XYETDK8S", "yvNgX4oN", "iE5lLhBS"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '7P8ZH0z3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '24' \
    --status 'SUCCESS' \
    --userId '9dSejH95' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '1a6yLszo' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'cpd1JGOG' \
    --limit '55' \
    --offset '48' \
    --startTime 'veBsu0VQ' \
    --status 'IGNORED' \
    --userId 'kbwCEB9J' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "NhPzdJSu", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 90, "clientTransactionId": "2EOPKtnZ"}, {"amountConsumed": 29, "clientTransactionId": "Gdha12oR"}, {"amountConsumed": 53, "clientTransactionId": "ISJrBW92"}], "entitlementId": "BddkyK5E", "usageCount": 29}, {"clientTransaction": [{"amountConsumed": 82, "clientTransactionId": "UcCQMWus"}, {"amountConsumed": 64, "clientTransactionId": "04OaUPhU"}, {"amountConsumed": 17, "clientTransactionId": "JWnPpniR"}], "entitlementId": "OkzxxLZO", "usageCount": 49}, {"clientTransaction": [{"amountConsumed": 48, "clientTransactionId": "KcjWRdjg"}, {"amountConsumed": 40, "clientTransactionId": "HkLVvbM1"}, {"amountConsumed": 86, "clientTransactionId": "Y5mlAzgn"}], "entitlementId": "irwWDM6P", "usageCount": 10}], "purpose": "R8poIQmw"}, "originalTitleName": "0vQPLEsV", "paymentProductSKU": "LosfwDMi", "purchaseDate": "A9376C9a", "sourceOrderItemId": "GXqW529d", "titleName": "PWTbPb4H"}, "eventDomain": "dgVTdSGO", "eventSource": "exbM1FVV", "eventType": "8hhdjRPm", "eventVersion": 68, "id": "DCPhBQR8", "timestamp": "s0jJTgG4"}' \
    > test.out 2>&1
eval_tap $? 68 'MockPlayStationStreamEvent' test.out

#- 69 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetAppleIAPConfig' test.out

#- 70 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "xK21CDOb", "password": "A2lwlh8A"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateAppleIAPConfig' test.out

#- 71 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteAppleIAPConfig' test.out

#- 72 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetEpicGamesIAPConfig' test.out

#- 73 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "xFPOvfhI"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateEpicGamesIAPConfig' test.out

#- 74 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteEpicGamesIAPConfig' test.out

#- 75 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'GetGoogleIAPConfig' test.out

#- 76 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "SdENE6zv", "serviceAccountId": "Zt04nFgq"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleIAPConfig' test.out

#- 77 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGoogleIAPConfig' test.out

#- 78 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleP12File' test.out

#- 79 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetIAPItemConfig' test.out

#- 80 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "VVDaHeKZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fWkO5x9Z": "ZLd2GzJ4", "BcR482zv": "czTKfoiH", "V4TrePRx": "z3QnJVqs"}}, {"itemIdentity": "0BO6mBmx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"r39vh08r": "R0lQBE6K", "XEAibdwX": "1atQ8F6h", "cX5VeV0q": "cEQbaDzd"}}, {"itemIdentity": "J95JCsYF", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"J7JJj1J7": "dtcFyxc4", "PJKAqcoD": "Lrxgbks1", "7UlBAIuD": "FnGI1lBs"}}]}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateIAPItemConfig' test.out

#- 81 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteIAPItemConfig' test.out

#- 82 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetOculusIAPConfig' test.out

#- 83 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "Zut41tYD", "appSecret": "r3fAkMKo"}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateOculusIAPConfig' test.out

#- 84 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'DeleteOculusIAPConfig' test.out

#- 85 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetPlayStationIAPConfig' test.out

#- 86 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "msCmOFhs", "backOfficeServerClientSecret": "VKJEexy5", "enableStreamJob": true, "environment": "jBg8kgj1", "streamName": "TAqpo4sn", "streamPartnerName": "BTIfXDep"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdatePlaystationIAPConfig' test.out

#- 87 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeletePlaystationIAPConfig' test.out

#- 88 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'ValidateExistedPlaystationIAPConfig' test.out

#- 89 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "GWE3H3el", "backOfficeServerClientSecret": "DALdGhib", "enableStreamJob": false, "environment": "Lu0RUVqK", "streamName": "tEy36Bcy", "streamPartnerName": "FCJ6nNfo"}' \
    > test.out 2>&1
eval_tap $? 89 'ValidatePlaystationIAPConfig' test.out

#- 90 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'GetSteamIAPConfig' test.out

#- 91 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "q50dqvSs", "publisherAuthenticationKey": "Bw4gf6Lo"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateSteamIAPConfig' test.out

#- 92 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'DeleteSteamIAPConfig' test.out

#- 93 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetTwitchIAPConfig' test.out

#- 94 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "G520Ip4L", "clientSecret": "27bmK1h7", "organizationId": "5KpNwMwI"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateTwitchIAPConfig' test.out

#- 95 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'DeleteTwitchIAPConfig' test.out

#- 96 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetXblIAPConfig' test.out

#- 97 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "yMMExdZf"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblIAPConfig' test.out

#- 98 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteXblAPConfig' test.out

#- 99 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'aEJ5GuVT' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'QuFj1pJz' \
    --itemId 'siyRLLFG' \
    --itemType 'CODE' \
    --endTime 'Zz8qBRGn' \
    --startTime 'tOhjgSk2' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'R0oUExFZ' \
    --itemId 'tqK36jIk' \
    --itemType 'COINS' \
    --endTime 'l4HWky2q' \
    --startTime 'hMROcHEG' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId '7hoU6H0i' \
    --body '{"categoryPath": "LQKWUN3S", "targetItemId": "xXaSA9NY", "targetNamespace": "ImEHwuaz"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'sAHjXqb9' \
    --body '{"appId": "kUH8OGSR", "appType": "SOFTWARE", "baseAppId": "z7kifkJY", "boothName": "5DohThaU", "categoryPath": "iroj7edx", "clazz": "Cnjuh4mK", "displayOrder": 20, "entitlementType": "CONSUMABLE", "ext": {"YiQZJYno": {}, "28kzMYyy": {}, "WSTSCOtd": {}}, "features": ["LPlmosXA", "iZ76Na2Y", "N2LUhoUd"], "flexible": false, "images": [{"as": "9tx8aX6N", "caption": "EAf9TV7K", "height": 76, "imageUrl": "2YEQWm7Q", "smallImageUrl": "CYA3Q9x2", "width": 40}, {"as": "rPhi8Pk5", "caption": "I6zNQ8ar", "height": 8, "imageUrl": "NvGAGKM1", "smallImageUrl": "kotdsPF0", "width": 54}, {"as": "TSOtWgkK", "caption": "SE2gjLX8", "height": 68, "imageUrl": "TNvVh9lw", "smallImageUrl": "jjClEOIQ", "width": 3}], "itemIds": ["L0dxQ162", "UWRb4i3b", "bMNpTSPO"], "itemQty": {"Ys5rkxoj": 72, "7BRiksoV": 63, "7LhqIiN0": 42}, "itemType": "APP", "listable": false, "localizations": {"vHwAKV7D": {"description": "9ucrleAo", "localExt": {"zHJcQ3M1": {}, "AGLgfJjl": {}, "9MRAHx2I": {}}, "longDescription": "Q3mC9GTI", "title": "mlXFf5Kw"}, "0wVoZh2k": {"description": "lo2TnRf3", "localExt": {"zqKVbljE": {}, "0eQQcBK6": {}, "p8s4Hijk": {}}, "longDescription": "33jss8Ms", "title": "aEtpn0JC"}, "jkIdoVF1": {"description": "fFifEBgG", "localExt": {"hqJWlpBi": {}, "BxBi16or": {}, "JojXX0aF": {}}, "longDescription": "7x1bhgD7", "title": "2hflBfEk"}}, "lootBoxConfig": {"rewardCount": 21, "rewards": [{"lootBoxItems": [{"count": 69, "duration": 3, "endDate": "1977-10-02T00:00:00Z", "itemId": "aIxSLrck", "itemSku": "p092ypxp", "itemType": "sAoP1ZaH"}, {"count": 52, "duration": 1, "endDate": "1983-01-02T00:00:00Z", "itemId": "9Hxs3NrR", "itemSku": "TAt0RiyX", "itemType": "bt8smKoB"}, {"count": 28, "duration": 28, "endDate": "1998-02-09T00:00:00Z", "itemId": "p8vKhUFo", "itemSku": "92QEXgcS", "itemType": "SK6uft0A"}], "name": "3FpncYtX", "odds": 0.652701686620275, "type": "REWARD_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 18, "duration": 20, "endDate": "1982-12-01T00:00:00Z", "itemId": "Nssy40PV", "itemSku": "7gDcNByJ", "itemType": "pCHlF90C"}, {"count": 79, "duration": 48, "endDate": "1994-01-07T00:00:00Z", "itemId": "EwDHdBSA", "itemSku": "Ow785cap", "itemType": "1gvrXPRR"}, {"count": 90, "duration": 71, "endDate": "1978-01-02T00:00:00Z", "itemId": "keKJHQO5", "itemSku": "9aw07XGN", "itemType": "93Yv6F8e"}], "name": "B9BkQOb8", "odds": 0.41540922152525084, "type": "REWARD", "weight": 35}, {"lootBoxItems": [{"count": 58, "duration": 10, "endDate": "1978-05-13T00:00:00Z", "itemId": "b6q7BvcU", "itemSku": "Zpk4YcQV", "itemType": "Gu2mTXJB"}, {"count": 36, "duration": 30, "endDate": "1980-01-14T00:00:00Z", "itemId": "6TSK14rd", "itemSku": "ICOGHG6U", "itemType": "3zjjZVDf"}, {"count": 33, "duration": 99, "endDate": "1981-02-19T00:00:00Z", "itemId": "RYxc2Lsc", "itemSku": "eMVfLPMB", "itemType": "qyrPfp8l"}], "name": "JWqyD0n6", "odds": 0.20472205403065247, "type": "REWARD", "weight": 41}], "rollFunction": "DEFAULT"}, "maxCount": 68, "maxCountPerUser": 88, "name": "pSfYWTCg", "optionBoxConfig": {"boxItems": [{"count": 75, "duration": 86, "endDate": "1979-06-17T00:00:00Z", "itemId": "V1SPLJ9W", "itemSku": "uQQQ7gb3", "itemType": "FLDS3pjA"}, {"count": 1, "duration": 51, "endDate": "1985-01-15T00:00:00Z", "itemId": "w9T5QLM5", "itemSku": "tmA8k9w2", "itemType": "MjoKkHx2"}, {"count": 7, "duration": 49, "endDate": "1979-03-27T00:00:00Z", "itemId": "779fLpx7", "itemSku": "uYdcxxTu", "itemType": "vsU8pgCo"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 1, "fixedTrialCycles": 9, "graceDays": 49}, "regionData": {"4f4SkVb4": [{"currencyCode": "GnyJhgY7", "currencyNamespace": "F68j0ktd", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1989-05-03T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1980-05-17T00:00:00Z", "expireAt": "1996-04-19T00:00:00Z", "price": 80, "purchaseAt": "1975-04-19T00:00:00Z", "trialPrice": 19}, {"currencyCode": "c0YXUvYT", "currencyNamespace": "tfsv8Xn1", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1980-10-25T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1992-03-25T00:00:00Z", "expireAt": "1983-11-15T00:00:00Z", "price": 59, "purchaseAt": "1991-04-17T00:00:00Z", "trialPrice": 85}, {"currencyCode": "mmZnxZyO", "currencyNamespace": "fyxRmx4D", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1980-09-03T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1981-02-07T00:00:00Z", "expireAt": "1988-01-09T00:00:00Z", "price": 44, "purchaseAt": "1985-02-18T00:00:00Z", "trialPrice": 69}], "FhYuMSoL": [{"currencyCode": "l3yHACSj", "currencyNamespace": "qhLCxPFL", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1977-12-27T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1987-08-13T00:00:00Z", "expireAt": "1981-01-01T00:00:00Z", "price": 90, "purchaseAt": "1990-02-24T00:00:00Z", "trialPrice": 13}, {"currencyCode": "TDmIrtta", "currencyNamespace": "knz5PfuM", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1995-01-15T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1998-02-12T00:00:00Z", "expireAt": "1999-09-11T00:00:00Z", "price": 17, "purchaseAt": "1998-04-30T00:00:00Z", "trialPrice": 31}, {"currencyCode": "F9lnsNSt", "currencyNamespace": "gyd7RR55", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1973-07-04T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1987-05-24T00:00:00Z", "expireAt": "1971-11-05T00:00:00Z", "price": 30, "purchaseAt": "1981-03-04T00:00:00Z", "trialPrice": 12}], "k0JCZZQ1": [{"currencyCode": "VjLGE68j", "currencyNamespace": "79F4MEUH", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1972-05-15T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1975-09-28T00:00:00Z", "expireAt": "1991-03-27T00:00:00Z", "price": 94, "purchaseAt": "1993-04-20T00:00:00Z", "trialPrice": 76}, {"currencyCode": "F0yFYP3N", "currencyNamespace": "4DrRblns", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1990-11-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1979-11-12T00:00:00Z", "expireAt": "1990-09-08T00:00:00Z", "price": 55, "purchaseAt": "1980-02-10T00:00:00Z", "trialPrice": 63}, {"currencyCode": "lGBicAKY", "currencyNamespace": "VhPX71Cv", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1980-06-24T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1986-09-15T00:00:00Z", "expireAt": "1982-10-15T00:00:00Z", "price": 0, "purchaseAt": "1981-11-25T00:00:00Z", "trialPrice": 74}]}, "saleConfig": {"currencyCode": "KuqjN47q", "price": 73}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "FefRS4wK", "stackable": false, "status": "ACTIVE", "tags": ["axLTx4xF", "17duYSLZ", "wKKb9q2d"], "targetCurrencyCode": "8TBEa5JB", "targetNamespace": "NrKp0s7o", "thumbnailUrl": "zfUTie4N", "useCount": 92}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'RDAx87EW' \
    --appId 'l1D83JWb' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'CfwtmesR' \
    --baseAppId 'q5SNguR4' \
    --categoryPath 'os3ysqFc' \
    --features '9QLgCQE5' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '48' \
    --offset '45' \
    --region 'alliBI8i' \
    --sortBy '["createdAt:desc", "name:desc"]' \
    --storeId '3Z6tqPna' \
    --tags 'UkZtbEey' \
    --targetNamespace 'WPoMFj82' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["Eo7VvmCO", "Wrm53BpF", "qSxDqpsZ"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'LgD4PVUl' \
    --itemIds 'BLREMpKd' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'jvPkGPKH' \
    --sku 'in0KeJZb' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'FrQBLJQV' \
    --populateBundle 'false' \
    --region 'UiJm1Odx' \
    --storeId 'vA9YbraX' \
    --sku '8GqG94ug' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '2EO7wdfW' \
    --storeId 'NFvz6LsU' \
    --itemIds 'kyMcy5Li' \
    --userId 't7Bs8YPf' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '7vkVuKOP' \
    --sku 'IvyogctU' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["nddQzHBa", "2UpkK3ET", "xi9pJxSI"]' \
    --storeId 'XcnG36rn' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '2VF19fNo' \
    --region '5U8KQl6J' \
    --storeId 'MCnbHwMa' \
    --itemIds 'DJJ2GFpO' \
    > test.out 2>&1
eval_tap $? 113 'BulkGetLocaleItems' test.out

#- 114 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'GetAvailablePredicateTypes' test.out

#- 115 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'Pib36y86' \
    --body '{"itemIds": ["4JKEApN0", "VtHlYnUO", "URPbMuIr"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'ywjluCLM' \
    --body '{"changes": [{"itemIdentities": ["qC6cWZlb", "xzsYzSFY", "n5ItJ2LI"], "itemIdentityType": "ITEM_ID", "regionData": {"51lJo9e7": [{"currencyCode": "tYS3PXZZ", "currencyNamespace": "DotKL56p", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1995-10-14T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1984-05-12T00:00:00Z", "discountedPrice": 69, "expireAt": "1975-01-09T00:00:00Z", "price": 58, "purchaseAt": "1997-03-28T00:00:00Z", "trialPrice": 29}, {"currencyCode": "tWNKqfgT", "currencyNamespace": "tjAn0KXe", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1997-10-19T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1992-07-02T00:00:00Z", "discountedPrice": 7, "expireAt": "1980-01-23T00:00:00Z", "price": 92, "purchaseAt": "1977-08-12T00:00:00Z", "trialPrice": 69}, {"currencyCode": "Tjs6NVGP", "currencyNamespace": "TBYYZBMm", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1974-01-16T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1988-10-17T00:00:00Z", "discountedPrice": 51, "expireAt": "1989-08-13T00:00:00Z", "price": 28, "purchaseAt": "1977-04-12T00:00:00Z", "trialPrice": 54}], "VklPGC6b": [{"currencyCode": "3pMxs2gI", "currencyNamespace": "QktBreNL", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1973-11-08T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1998-03-19T00:00:00Z", "discountedPrice": 89, "expireAt": "1975-11-15T00:00:00Z", "price": 2, "purchaseAt": "1983-08-31T00:00:00Z", "trialPrice": 74}, {"currencyCode": "2BBKsx1m", "currencyNamespace": "9mKkt7bv", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1997-11-24T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1978-11-27T00:00:00Z", "discountedPrice": 61, "expireAt": "1971-07-04T00:00:00Z", "price": 16, "purchaseAt": "1997-02-21T00:00:00Z", "trialPrice": 8}, {"currencyCode": "E34r9Ctp", "currencyNamespace": "xl3J4nZv", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1993-01-25T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1973-11-03T00:00:00Z", "discountedPrice": 3, "expireAt": "1971-04-20T00:00:00Z", "price": 81, "purchaseAt": "1975-06-26T00:00:00Z", "trialPrice": 76}], "raFemekq": [{"currencyCode": "c60izHu9", "currencyNamespace": "itEWuYpS", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1995-04-16T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1972-01-06T00:00:00Z", "discountedPrice": 27, "expireAt": "1996-10-14T00:00:00Z", "price": 98, "purchaseAt": "1983-03-30T00:00:00Z", "trialPrice": 46}, {"currencyCode": "2FmWOBKA", "currencyNamespace": "3h72x0u9", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1996-04-25T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1997-09-11T00:00:00Z", "discountedPrice": 68, "expireAt": "1985-01-30T00:00:00Z", "price": 13, "purchaseAt": "1981-03-24T00:00:00Z", "trialPrice": 17}, {"currencyCode": "csgubjBs", "currencyNamespace": "Qu9WNAMh", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1988-12-08T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1973-12-06T00:00:00Z", "discountedPrice": 91, "expireAt": "1987-01-20T00:00:00Z", "price": 70, "purchaseAt": "1998-01-01T00:00:00Z", "trialPrice": 78}]}}, {"itemIdentities": ["m3U9YfVC", "HEl3mYbc", "ageirULx"], "itemIdentityType": "ITEM_ID", "regionData": {"jnLAqFeO": [{"currencyCode": "Yr3I12zf", "currencyNamespace": "f0JKFHdO", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1992-12-11T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1974-05-13T00:00:00Z", "discountedPrice": 13, "expireAt": "1973-10-26T00:00:00Z", "price": 32, "purchaseAt": "1990-07-09T00:00:00Z", "trialPrice": 40}, {"currencyCode": "cvIOuCdG", "currencyNamespace": "Gz86eOLE", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1979-09-04T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1977-06-11T00:00:00Z", "discountedPrice": 12, "expireAt": "1976-02-27T00:00:00Z", "price": 66, "purchaseAt": "1973-05-07T00:00:00Z", "trialPrice": 78}, {"currencyCode": "ki81al9l", "currencyNamespace": "NuYNNoU5", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1977-08-30T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1998-02-25T00:00:00Z", "discountedPrice": 82, "expireAt": "1997-11-22T00:00:00Z", "price": 70, "purchaseAt": "1977-06-02T00:00:00Z", "trialPrice": 5}], "DhAmKKFy": [{"currencyCode": "WoMYUpWN", "currencyNamespace": "94OSR4iI", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1997-05-20T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1979-03-17T00:00:00Z", "discountedPrice": 73, "expireAt": "1979-06-30T00:00:00Z", "price": 100, "purchaseAt": "1989-04-09T00:00:00Z", "trialPrice": 34}, {"currencyCode": "9yQcjIPE", "currencyNamespace": "BsF6RIbc", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1976-12-19T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1997-10-02T00:00:00Z", "discountedPrice": 27, "expireAt": "1979-08-10T00:00:00Z", "price": 69, "purchaseAt": "1980-07-11T00:00:00Z", "trialPrice": 92}, {"currencyCode": "pdKjZwZ6", "currencyNamespace": "ChsH0KbU", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1976-09-06T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1985-03-02T00:00:00Z", "discountedPrice": 52, "expireAt": "1998-12-13T00:00:00Z", "price": 17, "purchaseAt": "1998-06-22T00:00:00Z", "trialPrice": 63}], "EggQxFXE": [{"currencyCode": "WdF6Gqit", "currencyNamespace": "m0fiwJfl", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1978-03-10T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1996-08-05T00:00:00Z", "discountedPrice": 66, "expireAt": "1991-04-23T00:00:00Z", "price": 29, "purchaseAt": "1991-10-16T00:00:00Z", "trialPrice": 5}, {"currencyCode": "8G7O4lPs", "currencyNamespace": "OwzJ8qMx", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1989-05-08T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1989-09-28T00:00:00Z", "discountedPrice": 23, "expireAt": "1993-01-05T00:00:00Z", "price": 74, "purchaseAt": "1971-07-02T00:00:00Z", "trialPrice": 50}, {"currencyCode": "dwnHrUL9", "currencyNamespace": "KPyW4q5b", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1976-08-05T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1990-11-29T00:00:00Z", "discountedPrice": 7, "expireAt": "1990-03-15T00:00:00Z", "price": 0, "purchaseAt": "1990-11-02T00:00:00Z", "trialPrice": 24}]}}, {"itemIdentities": ["dMupGUzR", "Sn7RZ4vF", "hUWT9AzZ"], "itemIdentityType": "ITEM_SKU", "regionData": {"kgVFfa1i": [{"currencyCode": "8wKRFmug", "currencyNamespace": "vlleYxIG", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1972-10-16T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1995-08-19T00:00:00Z", "discountedPrice": 94, "expireAt": "1995-03-08T00:00:00Z", "price": 41, "purchaseAt": "1988-08-21T00:00:00Z", "trialPrice": 9}, {"currencyCode": "diI1PQpE", "currencyNamespace": "gapw2Jnq", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1984-05-07T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1975-11-19T00:00:00Z", "discountedPrice": 34, "expireAt": "1977-01-08T00:00:00Z", "price": 27, "purchaseAt": "1995-01-09T00:00:00Z", "trialPrice": 72}, {"currencyCode": "IEhnxiAx", "currencyNamespace": "0jBaUS8H", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1974-10-02T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1994-03-19T00:00:00Z", "discountedPrice": 51, "expireAt": "1989-06-03T00:00:00Z", "price": 13, "purchaseAt": "1975-03-10T00:00:00Z", "trialPrice": 59}], "hVG8x9SD": [{"currencyCode": "4EB0ZxpO", "currencyNamespace": "uK7gAhC9", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1974-01-10T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1976-11-16T00:00:00Z", "discountedPrice": 71, "expireAt": "1974-09-15T00:00:00Z", "price": 74, "purchaseAt": "1974-01-29T00:00:00Z", "trialPrice": 25}, {"currencyCode": "16pAbA9J", "currencyNamespace": "3lOKYX05", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1978-08-15T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1991-12-12T00:00:00Z", "discountedPrice": 86, "expireAt": "1979-01-05T00:00:00Z", "price": 78, "purchaseAt": "1973-10-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "OxDhnI61", "currencyNamespace": "cG8TffX6", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1993-01-30T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1999-10-24T00:00:00Z", "discountedPrice": 45, "expireAt": "1979-12-09T00:00:00Z", "price": 79, "purchaseAt": "1995-03-15T00:00:00Z", "trialPrice": 98}], "AcWQCtHR": [{"currencyCode": "XdpGccg0", "currencyNamespace": "mdg9QuoJ", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1987-02-12T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1985-05-23T00:00:00Z", "discountedPrice": 6, "expireAt": "1998-08-16T00:00:00Z", "price": 62, "purchaseAt": "1983-11-28T00:00:00Z", "trialPrice": 17}, {"currencyCode": "wmOl4Bve", "currencyNamespace": "tR0DzpaI", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1978-09-20T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1995-08-15T00:00:00Z", "discountedPrice": 19, "expireAt": "1978-12-22T00:00:00Z", "price": 85, "purchaseAt": "1988-05-20T00:00:00Z", "trialPrice": 62}, {"currencyCode": "XOPi66Rd", "currencyNamespace": "AmSIYLPJ", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1975-04-29T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1986-03-07T00:00:00Z", "discountedPrice": 80, "expireAt": "1980-06-08T00:00:00Z", "price": 89, "purchaseAt": "1974-10-02T00:00:00Z", "trialPrice": 3}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'EXTENSION' \
    --limit '18' \
    --offset '61' \
    --sortBy 'AxNtNR9g' \
    --storeId 'w7WYnIaR' \
    --keyword 'jGawCBjF' \
    --language 'fbsrwdLJ' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '13' \
    --offset '89' \
    --sortBy '["createdAt", "displayOrder:desc", "name:desc"]' \
    --storeId 'icfYnJag' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'QJEucahO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'oGVlIE7O' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'WOMzic7n' \
    --namespace $AB_NAMESPACE \
    --storeId 'ra2Ie8u1' \
    --body '{"appId": "fbKuPC7J", "appType": "DLC", "baseAppId": "c4fEU2zV", "boothName": "njBeLUg6", "categoryPath": "w6RfbZaL", "clazz": "R60SXbC8", "displayOrder": 12, "entitlementType": "DURABLE", "ext": {"tMwqEgsZ": {}, "GEvOoffM": {}, "T8W6UxNw": {}}, "features": ["6SiAANe5", "AhaYyu69", "sT0rFCZG"], "flexible": true, "images": [{"as": "0aUi5oUW", "caption": "QFy7s1xG", "height": 29, "imageUrl": "pLNeSKb8", "smallImageUrl": "2THpjoYC", "width": 4}, {"as": "EA5QKE3Q", "caption": "7qF128wo", "height": 100, "imageUrl": "q9tU2JSq", "smallImageUrl": "A4mFIyqT", "width": 26}, {"as": "bZqRPRJk", "caption": "Azg2Fhdi", "height": 8, "imageUrl": "6xerWg3D", "smallImageUrl": "0OxHq3sb", "width": 23}], "itemIds": ["rNxSjyuu", "2aF2FNC3", "vHImRVJP"], "itemQty": {"riTUIMfY": 35, "WJ3uvRqf": 90, "HqkrWKEV": 23}, "itemType": "MEDIA", "listable": false, "localizations": {"J1igFIri": {"description": "hayg87Sy", "localExt": {"HxZRzUt5": {}, "l6eYudGE": {}, "JLi4VKhk": {}}, "longDescription": "i7oHLEpX", "title": "JFORhOd9"}, "j1xZRijg": {"description": "5otNwwPc", "localExt": {"LwX4H609": {}, "0qx7yCD9": {}, "cMuLNoJq": {}}, "longDescription": "nFnhENkV", "title": "bHFTyoKe"}, "JkvZe4ai": {"description": "N9w5Uncs", "localExt": {"Uvnf0iRU": {}, "uukjL2ev": {}, "gcKbxRPm": {}}, "longDescription": "UMijS5nW", "title": "4AqGL9YV"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 32, "duration": 76, "endDate": "1975-04-19T00:00:00Z", "itemId": "Qf9RXnyw", "itemSku": "MygCXuoH", "itemType": "BGYrviOq"}, {"count": 23, "duration": 72, "endDate": "1996-01-17T00:00:00Z", "itemId": "cRNttRcA", "itemSku": "YWtc0K7c", "itemType": "J37pT4Se"}, {"count": 30, "duration": 10, "endDate": "1985-09-24T00:00:00Z", "itemId": "IeWy2QUu", "itemSku": "REhBiRvp", "itemType": "wMrJCsaU"}], "name": "td0CPiL1", "odds": 0.057233849164956996, "type": "REWARD", "weight": 50}, {"lootBoxItems": [{"count": 33, "duration": 6, "endDate": "1986-01-05T00:00:00Z", "itemId": "pbJxwwi8", "itemSku": "QPotEBMC", "itemType": "LGi4gUow"}, {"count": 7, "duration": 50, "endDate": "1987-09-19T00:00:00Z", "itemId": "MOhHilPi", "itemSku": "u9toDixy", "itemType": "SbilKKuK"}, {"count": 41, "duration": 97, "endDate": "1986-03-11T00:00:00Z", "itemId": "R5epeAf8", "itemSku": "3U8oIQNR", "itemType": "PWr2khky"}], "name": "e9Sud94u", "odds": 0.4348953630468724, "type": "PROBABILITY_GROUP", "weight": 74}, {"lootBoxItems": [{"count": 66, "duration": 51, "endDate": "1984-09-26T00:00:00Z", "itemId": "oFZ5O4VV", "itemSku": "Gm2Wbjf9", "itemType": "wTMLjjdz"}, {"count": 83, "duration": 28, "endDate": "1974-04-04T00:00:00Z", "itemId": "v2B54Btt", "itemSku": "H0wMeCtQ", "itemType": "J261drmE"}, {"count": 14, "duration": 39, "endDate": "1972-05-24T00:00:00Z", "itemId": "LZJ5XBFL", "itemSku": "9GjGlWDE", "itemType": "7zcmyJWq"}], "name": "Cp77ae9p", "odds": 0.24651425718510078, "type": "PROBABILITY_GROUP", "weight": 0}], "rollFunction": "DEFAULT"}, "maxCount": 11, "maxCountPerUser": 55, "name": "rja8669u", "optionBoxConfig": {"boxItems": [{"count": 9, "duration": 33, "endDate": "1982-12-24T00:00:00Z", "itemId": "6QmgKsQk", "itemSku": "w5EXH43E", "itemType": "krCE4oJK"}, {"count": 93, "duration": 54, "endDate": "1994-12-10T00:00:00Z", "itemId": "rVNBCxEM", "itemSku": "yN6Ltd8S", "itemType": "us4ZedBL"}, {"count": 59, "duration": 62, "endDate": "1987-01-29T00:00:00Z", "itemId": "PaleCqxs", "itemSku": "omLkrlyJ", "itemType": "WdtPsvJl"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 27, "graceDays": 70}, "regionData": {"gvDt0nrn": [{"currencyCode": "zrkfYQGs", "currencyNamespace": "6yfaW5Ir", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1991-08-19T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1992-06-03T00:00:00Z", "expireAt": "1987-10-14T00:00:00Z", "price": 75, "purchaseAt": "1993-04-01T00:00:00Z", "trialPrice": 50}, {"currencyCode": "UF6kXRFm", "currencyNamespace": "TQ19fsBA", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1986-05-01T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1985-12-31T00:00:00Z", "expireAt": "1985-12-24T00:00:00Z", "price": 79, "purchaseAt": "1993-03-06T00:00:00Z", "trialPrice": 88}, {"currencyCode": "No31Wf8u", "currencyNamespace": "QMoL93DJ", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1989-02-26T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1972-05-14T00:00:00Z", "expireAt": "1990-05-08T00:00:00Z", "price": 80, "purchaseAt": "1977-08-30T00:00:00Z", "trialPrice": 62}], "Inv0xV1g": [{"currencyCode": "8ZCspejw", "currencyNamespace": "18glpoYV", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1974-09-01T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1988-05-07T00:00:00Z", "expireAt": "1983-12-10T00:00:00Z", "price": 29, "purchaseAt": "1995-07-15T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ifOs8PYc", "currencyNamespace": "CuLiyv4A", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1989-12-31T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1977-10-26T00:00:00Z", "expireAt": "1978-08-07T00:00:00Z", "price": 21, "purchaseAt": "1974-04-27T00:00:00Z", "trialPrice": 98}, {"currencyCode": "fHo0iQQO", "currencyNamespace": "DGBhtoO0", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1978-11-20T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1992-02-26T00:00:00Z", "expireAt": "1994-09-29T00:00:00Z", "price": 64, "purchaseAt": "1980-06-06T00:00:00Z", "trialPrice": 33}], "PRx2yL4Q": [{"currencyCode": "XZf8zxum", "currencyNamespace": "BDqQfmrp", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1994-07-01T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1999-04-23T00:00:00Z", "expireAt": "1979-05-20T00:00:00Z", "price": 32, "purchaseAt": "1976-05-20T00:00:00Z", "trialPrice": 85}, {"currencyCode": "HWO6TqbL", "currencyNamespace": "3A6K7y4K", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1991-07-07T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1980-05-20T00:00:00Z", "expireAt": "1995-03-17T00:00:00Z", "price": 40, "purchaseAt": "1977-12-22T00:00:00Z", "trialPrice": 14}, {"currencyCode": "3XTPB9TO", "currencyNamespace": "0RgVITMl", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1989-09-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1984-10-21T00:00:00Z", "expireAt": "1983-05-08T00:00:00Z", "price": 34, "purchaseAt": "1987-11-12T00:00:00Z", "trialPrice": 29}]}, "saleConfig": {"currencyCode": "PkMRiV51", "price": 65}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "8OTlNfqQ", "stackable": true, "status": "INACTIVE", "tags": ["kwuH7s4A", "JAHYaBEe", "UA7f0t8I"], "targetCurrencyCode": "wywpUFVQ", "targetNamespace": "XuuFEjxS", "thumbnailUrl": "nbYEZcrm", "useCount": 54}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'wOxrR23V' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'fJGMk9Zh' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'hiihmc8K' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17, "orderNo": "JAbvlens"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '0OfZI4wn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'IXjcz8DM' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'YZ7xRLst' \
    --namespace $AB_NAMESPACE \
    --storeId 'lj54QJb7' \
    --body '{"carousel": [{"alt": "DkaCUp4H", "previewUrl": "Oxw4sUYB", "thumbnailUrl": "g33HJi00", "type": "image", "url": "FpIfwxLo", "videoSource": "youtube"}, {"alt": "wKBcduG7", "previewUrl": "HQXMC8Gq", "thumbnailUrl": "d2UKGlSC", "type": "video", "url": "LhD4ONMb", "videoSource": "youtube"}, {"alt": "4dOxVKtk", "previewUrl": "u9ttsl3R", "thumbnailUrl": "gs7aVP6S", "type": "image", "url": "2Gpj2gvL", "videoSource": "generic"}], "developer": "ytYRao0y", "forumUrl": "oEHmyzCX", "genres": ["Sports", "Adventure", "RPG"], "localizations": {"yoVbpWJM": {"announcement": "SosS0LaM", "slogan": "VTeO3TYH"}, "yi6a2wOg": {"announcement": "A6IpdSy3", "slogan": "zWMKTSRg"}, "gkWHMlMs": {"announcement": "QSHiNeMW", "slogan": "o9rLeqLW"}}, "platformRequirements": {"uPDANPKO": [{"additionals": "fe2JYFfG", "directXVersion": "vuGgw3RC", "diskSpace": "e60cJG8X", "graphics": "5gWW6Li4", "label": "LKxigw9M", "osVersion": "14Xu5Frp", "processor": "m2DvQsj0", "ram": "FN8QrkIN", "soundCard": "fUfwCiLD"}, {"additionals": "X6QfujbZ", "directXVersion": "cCNDWAjo", "diskSpace": "PdqRAq5R", "graphics": "B2GDeebr", "label": "BJRh73Hh", "osVersion": "mG9ctKXm", "processor": "8ZVumdC4", "ram": "2Qfb9L4r", "soundCard": "BqyChX4H"}, {"additionals": "V6cZVIbs", "directXVersion": "eT7Os6pY", "diskSpace": "25h397bg", "graphics": "fObBUFnJ", "label": "CKyAUJ6A", "osVersion": "V2eP6c5A", "processor": "gu2SfIvM", "ram": "e9tkcEsU", "soundCard": "bxg8FHpC"}], "hgKRpGSq": [{"additionals": "phuOfawD", "directXVersion": "bmhyjSbK", "diskSpace": "ZlD6zLMV", "graphics": "3B5oLbRu", "label": "u8eyAS9q", "osVersion": "qh0XArPS", "processor": "BktgVpx9", "ram": "4QgwOtbY", "soundCard": "ojz6spco"}, {"additionals": "EMKxURbo", "directXVersion": "s6fkcxk8", "diskSpace": "krTlGy0H", "graphics": "fBG7mM0J", "label": "4ACCPAvx", "osVersion": "UcWTc3Lh", "processor": "UAVFxLIp", "ram": "wIfq3eHg", "soundCard": "Y0KaIeGY"}, {"additionals": "ZEHDExQe", "directXVersion": "7ZwilGAv", "diskSpace": "kXO9ZAy3", "graphics": "Qoh18VNM", "label": "A0ENpY3u", "osVersion": "uF4fOGf7", "processor": "fmqsSTYL", "ram": "9hjSbhAY", "soundCard": "ZHN0kH8n"}], "dGJhgL9e": [{"additionals": "hKrVd4co", "directXVersion": "xP4rBNfS", "diskSpace": "hd7dtEvZ", "graphics": "7cBivtH5", "label": "qcZFihcA", "osVersion": "Lsn9WybJ", "processor": "eXqAVJsx", "ram": "p2m0ymNa", "soundCard": "jBz0Lbnm"}, {"additionals": "qEAzxNtl", "directXVersion": "cqXiUG68", "diskSpace": "y0z99GiS", "graphics": "tLMPaM9F", "label": "uDlZmgzn", "osVersion": "5Do7KLGZ", "processor": "9TnfvmYe", "ram": "d51q6iCM", "soundCard": "7pTQUJqJ"}, {"additionals": "ih2i8XST", "directXVersion": "aR7vvwcM", "diskSpace": "WqU02M06", "graphics": "yHLXjSr4", "label": "7tZubTTh", "osVersion": "IEzQtHtn", "processor": "IYy7QMsa", "ram": "fHdCoWUb", "soundCard": "fzMabMeZ"}]}, "platforms": ["MacOS", "Linux", "Windows"], "players": ["MMO", "CrossPlatformMulti", "LocalCoop"], "primaryGenre": "MassivelyMultiplayer", "publisher": "4e8W2J1b", "releaseDate": "1993-04-02T00:00:00Z", "websiteUrl": "hnbJCZJq"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'MG2bH2hK' \
    --namespace $AB_NAMESPACE \
    --storeId 'pDkSa5oQ' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'dEi7WhOT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'WbjWz9SP' \
    --namespace $AB_NAMESPACE \
    --storeId 'XzKzgL8p' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'GmMhY9EV' \
    --itemId 'DbqYwPMo' \
    --namespace $AB_NAMESPACE \
    --storeId 'XGSFa7WR' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'h2W46B0r' \
    --itemId '1T6Fs6MC' \
    --namespace $AB_NAMESPACE \
    --storeId '01ZqrHML' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'VLbmMtca' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'wSSGtbs9' \
    --populateBundle 'false' \
    --region 'QBv8NkhM' \
    --storeId 'Vh502oQl' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '21snCDkH' \
    --namespace $AB_NAMESPACE \
    --storeId '0UeDuiix' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 90, "comparison": "isLessThan", "name": "L7a0FdHB", "predicateType": "SeasonTierPredicate", "value": "zJOlbJe1", "values": ["u8xDos6g", "dHVzVEyg", "NSVxG0k2"]}, {"anyOf": 18, "comparison": "isGreaterThan", "name": "sReH5x5s", "predicateType": "EntitlementPredicate", "value": "LgY7K1av", "values": ["o34XwOhT", "nGTWradW", "LtqkhPXR"]}, {"anyOf": 20, "comparison": "isLessThan", "name": "5pAkAHGM", "predicateType": "SeasonPassPredicate", "value": "q4SLm3QR", "values": ["eraHipfA", "qUFqdvK4", "orajON58"]}]}, {"operator": "or", "predicates": [{"anyOf": 73, "comparison": "isGreaterThanOrEqual", "name": "aACKpdoL", "predicateType": "EntitlementPredicate", "value": "ZiCgpsis", "values": ["kBtZ9IYv", "aty2gBwm", "p0IVWB4X"]}, {"anyOf": 41, "comparison": "includes", "name": "iA3eDWyW", "predicateType": "EntitlementPredicate", "value": "2uWkQATu", "values": ["5JfIa60A", "B0ms4AW0", "7wnZoD52"]}, {"anyOf": 62, "comparison": "isLessThanOrEqual", "name": "uLYCGq7P", "predicateType": "SeasonPassPredicate", "value": "G4EKe4DK", "values": ["HK98f4Ds", "aWrZJCjk", "ZenzihU0"]}]}, {"operator": "or", "predicates": [{"anyOf": 15, "comparison": "is", "name": "aCvMKKvq", "predicateType": "EntitlementPredicate", "value": "lMmTxYYq", "values": ["qcgfKRBF", "9uVDUnp6", "kAessLSI"]}, {"anyOf": 68, "comparison": "is", "name": "1UTjNx0l", "predicateType": "EntitlementPredicate", "value": "QQfc9zjL", "values": ["ISSVDU6K", "lOVFfySK", "3CXbeApt"]}, {"anyOf": 4, "comparison": "isGreaterThanOrEqual", "name": "QTT6S7dN", "predicateType": "EntitlementPredicate", "value": "bNRJSQUV", "values": ["LOQZ70fZ", "ispGbyMV", "Cdqd05xa"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId '1vaUCAQv' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "vRZ0uKVB"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name '17K59Qpq' \
    --offset '79' \
    --tag 'oIwpHctX' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "knLQw4Fy", "name": "DEo0wdFd", "status": "ACTIVE", "tags": ["bn8ctT4N", "Ot1XwGbU", "CdoBZinZ"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'W28GX3Lr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'JwZZLHym' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6TRaGXu0", "name": "2U5Ilkq6", "status": "INACTIVE", "tags": ["1ADaVpcO", "b9xCnApp", "XzKy7LFi"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '82B48Byw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'b9A3G5pA' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '28' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'SCHWgDQA' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'f7nvvUKg' \
    --limit '6' \
    --offset '5' \
    --orderNos '["C2EaMYgw", "2dq58FES", "cc7HQsDm"]' \
    --sortBy 'SOUJyiIk' \
    --startTime '7UEitt0g' \
    --status 'REFUNDED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 141 'QueryOrders' test.out

#- 142 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'GetOrderStatistics' test.out

#- 143 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iY9LpXRN' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'mCdmgTuC' \
    --body '{"description": "Lp5H0Rsb"}' \
    > test.out 2>&1
eval_tap $? 144 'RefundOrder' test.out

#- 145 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentCallbackConfig' test.out

#- 146 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "bAhqFBRo", "privateKey": "FfFeAnkN"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'pmqcKI1y' \
    --externalId 'QUPvHloP' \
    --limit '87' \
    --notificationSource 'WALLET' \
    --notificationType 'XSrQ9GaN' \
    --offset '93' \
    --paymentOrderNo 'qJxHXxLh' \
    --startDate 'YIaH9oIo' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'Hz2iZ1Qc' \
    --limit '24' \
    --offset '85' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "4KP37nwE", "currencyNamespace": "sPz97odS", "customParameters": {"YdyEAsuK": {}, "qejpj5FS": {}, "gmUZBFzQ": {}}, "description": "D1SDzQPM", "extOrderNo": "JP3oGGzL", "extUserId": "dmvzNhGq", "itemType": "LOOTBOX", "language": "hwJg", "metadata": {"XcoHmDUM": "tcyF5lNT", "cwM0PCKY": "RlfSe0X5", "X4sBklL8": "8yAdyMbB"}, "notifyUrl": "HuDBiR8x", "omitNotification": true, "platform": "zBW4IXJe", "price": 48, "recurringPaymentOrderNo": "1oI8BhAk", "region": "mIFuURIL", "returnUrl": "UGCRLRJa", "sandbox": true, "sku": "CVgu6iAH", "subscriptionId": "6BicaS3k", "targetNamespace": "6hFupcTV", "targetUserId": "UZQt4UKV", "title": "BTSHSNgl"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '88ctdLiE' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AdX37Gx4' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pCMRQRzP' \
    --body '{"extTxId": "FEJIIEc4", "paymentMethod": "PTPRbb4N", "paymentProvider": "XSOLLA"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '37YlEx9D' \
    --body '{"description": "jq3qqdgD"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WuqMPTNf' \
    --body '{"amount": 41, "currencyCode": "QsgBUhrR", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 1, "vat": 91}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sRogTvDG' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedPlatformOrigins": ["Steam", "Steam", "Other"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["IOS", "GooglePlay", "Xbox"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 160 'ResetPlatformWalletConfig' test.out

#- 161 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationConfig' test.out

#- 162 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationConfig' test.out

#- 163 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationConfig' test.out

#- 164 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'Go7XCVla' \
    --limit '94' \
    --offset '58' \
    --source 'IAP' \
    --startTime '65aSBoxt' \
    --status 'FAIL' \
    --transactionId 'HrfgtIwH' \
    --userId 'lyUyQrph' \
    > test.out 2>&1
eval_tap $? 164 'QueryRevocationHistories' test.out

#- 165 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'GetRevocationPluginConfig' test.out

#- 166 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "82ZfBUgw"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "R8H0fY27"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 166 'UpdateRevocationPluginConfig' test.out

#- 167 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'DeleteRevocationPluginConfig' test.out

#- 168 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'UploadRevocationPluginConfigCert' test.out

#- 169 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GskyslLt", "eventTopic": "GP8oHyVS", "maxAwarded": 16, "maxAwardedPerUser": 50, "namespaceExpression": "fBBoAdTB", "rewardCode": "bOjErqSf", "rewardConditions": [{"condition": "KO0VLGL3", "conditionName": "XNliKNyy", "eventName": "1G5F1IAr", "rewardItems": [{"duration": 87, "endDate": "1987-01-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1VtBEg6r", "quantity": 22, "sku": "arD4indn"}, {"duration": 17, "endDate": "1990-01-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zWAgbRBF", "quantity": 83, "sku": "VmKyYcHh"}, {"duration": 85, "endDate": "1996-12-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "NAIfMnHW", "quantity": 5, "sku": "TzAE7Nhw"}]}, {"condition": "4H9LBHuK", "conditionName": "JW62VmRf", "eventName": "lM7CEq3E", "rewardItems": [{"duration": 81, "endDate": "1980-12-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hRwcSVgv", "quantity": 52, "sku": "vb1Zqdfu"}, {"duration": 43, "endDate": "1993-04-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eOsLonTW", "quantity": 11, "sku": "Z45nHQSe"}, {"duration": 88, "endDate": "1973-02-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wrsN99Gn", "quantity": 86, "sku": "yVfU7A36"}]}, {"condition": "3KmAxDhf", "conditionName": "ymPYMWC8", "eventName": "PuZ6Ueuw", "rewardItems": [{"duration": 88, "endDate": "1979-05-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eWCO2vrs", "quantity": 8, "sku": "ONf2RMnA"}, {"duration": 25, "endDate": "1983-01-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oXC7UUIE", "quantity": 45, "sku": "995W6968"}, {"duration": 34, "endDate": "1975-08-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "NHn3ifSM", "quantity": 96, "sku": "uEx61nBG"}]}], "userIdExpression": "Vm23ZCbg"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'v10lxp3R' \
    --limit '98' \
    --offset '35' \
    --sortBy '["namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 170 'QueryRewards' test.out

#- 171 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 171 'ExportRewards' test.out

#- 172 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'LhZDSDlI' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'A4XwQ2Wi' \
    --body '{"description": "MJ2hO5HP", "eventTopic": "BsXxeB9E", "maxAwarded": 57, "maxAwardedPerUser": 4, "namespaceExpression": "XghHx77a", "rewardCode": "6RLMIWmC", "rewardConditions": [{"condition": "t56sH6Id", "conditionName": "yLdKbWB2", "eventName": "csfu8QV9", "rewardItems": [{"duration": 56, "endDate": "1991-10-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BLNreASZ", "quantity": 49, "sku": "MEHFIB3P"}, {"duration": 16, "endDate": "1979-05-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "54koplwL", "quantity": 54, "sku": "jJ2ex3DU"}, {"duration": 70, "endDate": "1992-11-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Hf68YmvD", "quantity": 73, "sku": "ZaLbjn16"}]}, {"condition": "vOb3QGag", "conditionName": "2P3AByQF", "eventName": "tqZTA602", "rewardItems": [{"duration": 1, "endDate": "1997-11-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ghe4nwkf", "quantity": 12, "sku": "uRxBYxi8"}, {"duration": 77, "endDate": "1988-08-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VQ5lDlUq", "quantity": 39, "sku": "LD6t3jug"}, {"duration": 30, "endDate": "1980-07-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qvZHe0bO", "quantity": 10, "sku": "B04WeiEc"}]}, {"condition": "9zZm6A5o", "conditionName": "X1qMIutt", "eventName": "8ieHZbNR", "rewardItems": [{"duration": 58, "endDate": "1993-01-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HpSAPsyR", "quantity": 98, "sku": "nA2c8iUY"}, {"duration": 61, "endDate": "1976-12-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "srkMCVZ6", "quantity": 50, "sku": "gMPoRtL8"}, {"duration": 79, "endDate": "1984-07-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "m7wfx41I", "quantity": 47, "sku": "R8ePCxbn"}]}], "userIdExpression": "08wYOffM"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'e4c7Z01d' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '0JlQa05f' \
    --body '{"payload": {"IpxTihF9": {}, "yXMmhuXX": {}, "Otl8PJgl": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'lLjPHbQx' \
    --body '{"conditionName": "H6Er4xBd", "userId": "cR8v4qx4"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'Mt8XpWg9' \
    --limit '15' \
    --offset '22' \
    --start 'ZeFAvvX2' \
    --storeId 'lLntwDYe' \
    --viewId 'djBIz8EJ' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '4ws1UA2U' \
    --body '{"active": false, "displayOrder": 48, "endDate": "1971-02-13T00:00:00Z", "ext": {"r3Q84W2f": {}, "4DWGnN5Q": {}, "tybGbXWq": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 70, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "EKmbJsMV", "sku": "i4zU9VN2"}, {"id": "8n7VH0oR", "sku": "HtCUjtRZ"}, {"id": "6VHV69TK", "sku": "Iu0QfpDV"}], "localizations": {"H8KWPJ7P": {"description": "EDQOFYZy", "localExt": {"b4lTmXzE": {}, "WKZjUtL4": {}, "OusNnXCv": {}}, "longDescription": "0DqX6Y5i", "title": "rGyBIT3R"}, "zwxEIrYE": {"description": "N18rMyCb", "localExt": {"9Oc38rYr": {}, "Mc7iNhzE": {}, "0AKz9FZb": {}}, "longDescription": "tRoVaHuL", "title": "XlKEd1En"}, "J8kL1XZx": {"description": "rbkVevkl", "localExt": {"icLlrY2i": {}, "KAQal42h": {}, "GUY91BLZ": {}}, "longDescription": "uOnHeJvu", "title": "b5WkfI5M"}}, "name": "1yXxiStR", "rotationType": "CUSTOM", "startDate": "1988-10-26T00:00:00Z", "viewId": "uvLzvQW2"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId '01uetYL4' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'e20FPLSW' \
    --storeId 'Hr2zxY2B' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'axS9SWFT' \
    --storeId 'Zo5qlHeH' \
    --body '{"active": false, "displayOrder": 27, "endDate": "1998-11-26T00:00:00Z", "ext": {"O3ja5Daw": {}, "7tSfvqr2": {}, "WxsQSpD7": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 17, "itemCount": 69, "rule": "SEQUENCE"}, "items": [{"id": "D3aliWVS", "sku": "zfIK88G1"}, {"id": "vxISLluL", "sku": "tNL0f8E5"}, {"id": "eNhLrNeA", "sku": "eeZjeo1J"}], "localizations": {"U746AMr0": {"description": "DwCTyQoL", "localExt": {"Qe9Rjrqk": {}, "bY1Fp3X0": {}, "bnZUBbV8": {}}, "longDescription": "30EoKP8r", "title": "p7acPhRI"}, "VkXeEmKW": {"description": "lvnpAPxl", "localExt": {"NfVS5e2S": {}, "Pa34OKAQ": {}, "RaNOhYXW": {}}, "longDescription": "4DyY5qBD", "title": "LIUO0YU3"}, "rxAnvSc4": {"description": "JhncfGJq", "localExt": {"SPL5Q4nn": {}, "QrFdHMzU": {}, "T9HTDlzp": {}}, "longDescription": "YGsgPT3g", "title": "RoJJOiGX"}}, "name": "kY8mhz5X", "rotationType": "FIXED_PERIOD", "startDate": "1979-05-30T00:00:00Z", "viewId": "a6SCYP6G"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'taLxjnuJ' \
    --storeId '6idbansI' \
    > test.out 2>&1
eval_tap $? 183 'DeleteSection' test.out

#- 184 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'ListStores' test.out

#- 185 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "JJpJ4cJD", "defaultRegion": "2mqpqGnG", "description": "5S0xtLCP", "supportedLanguages": ["jcWtZDhW", "2zlOP3DV", "tO559Yfm"], "supportedRegions": ["kBMkBtgW", "DAK95DHa", "R5b8ZVOW"], "title": "qV57JCdX"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 ImportStore
eval_tap 0 186 'ImportStore # SKIP deprecated' test.out

#- 187 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 187 'GetPublishedStore' test.out

#- 188 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 188 'DeletePublishedStore' test.out

#- 189 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 189 'GetPublishedStoreBackup' test.out

#- 190 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'RollbackPublishedStore' test.out

#- 191 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Qbe9PTaL' \
    > test.out 2>&1
eval_tap $? 191 'GetStore' test.out

#- 192 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'esjrqFNK' \
    --body '{"defaultLanguage": "ROWjK4CW", "defaultRegion": "CZfFMEw8", "description": "UhMJbElT", "supportedLanguages": ["7i3kSRf8", "5SfydBVS", "IAGDQ7YW"], "supportedRegions": ["2KNxYTnb", "mRlsOA64", "d4AGrUG5"], "title": "5XijxKKQ"}' \
    > test.out 2>&1
eval_tap $? 192 'UpdateStore' test.out

#- 193 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'Uw9Qaqb4' \
    > test.out 2>&1
eval_tap $? 193 'DeleteStore' test.out

#- 194 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'FRL4FZYM' \
    --action 'UPDATE' \
    --itemSku 'rqpHRI8f' \
    --itemType 'OPTIONBOX' \
    --limit '21' \
    --offset '84' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt:asc", "createdAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'P7LEz2Ra' \
    --updatedAtStart 'qW9obYnu' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 194 'QueryChanges' test.out

#- 195 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '8zRQOXQA' \
    > test.out 2>&1
eval_tap $? 195 'PublishAll' test.out

#- 196 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '2961pJmD' \
    > test.out 2>&1
eval_tap $? 196 'PublishSelected' test.out

#- 197 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'qnvp0hy4' \
    > test.out 2>&1
eval_tap $? 197 'SelectAllRecords' test.out

#- 198 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'kdeYAalX' \
    --action 'UPDATE' \
    --itemSku '3OAeqaCW' \
    --itemType 'SUBSCRIPTION' \
    --selected 'false' \
    --type 'VIEW' \
    --updatedAtEnd 'SA8zZRUu' \
    --updatedAtStart 'iee683nP' \
    > test.out 2>&1
eval_tap $? 198 'SelectAllRecordsByCriteria' test.out

#- 199 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '8GOL3jli' \
    --action 'UPDATE' \
    --itemSku 'o7AtGmiC' \
    --itemType 'OPTIONBOX' \
    --type 'VIEW' \
    --updatedAtEnd 'b3gSRAhx' \
    --updatedAtStart 'KEeU4sWW' \
    > test.out 2>&1
eval_tap $? 199 'GetStatistic' test.out

#- 200 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'vFv1Bho3' \
    > test.out 2>&1
eval_tap $? 200 'UnselectAllRecords' test.out

#- 201 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'sTQeLo6M' \
    --namespace $AB_NAMESPACE \
    --storeId 'RadDx7eZ' \
    > test.out 2>&1
eval_tap $? 201 'SelectRecord' test.out

#- 202 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '5zPEGOkh' \
    --namespace $AB_NAMESPACE \
    --storeId '80ydWpoz' \
    > test.out 2>&1
eval_tap $? 202 'UnselectRecord' test.out

#- 203 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZGsty4Bx' \
    --targetStoreId 'UfOxd7eA' \
    > test.out 2>&1
eval_tap $? 203 'CloneStore' test.out

#- 204 ExportStore
eval_tap 0 204 'ExportStore # SKIP deprecated' test.out

#- 205 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'r3b1UJ2c' \
    --limit '99' \
    --offset '41' \
    --sku 'hfxYJYwy' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'dFPXZ3ze' \
    > test.out 2>&1
eval_tap $? 205 'QuerySubscriptions' test.out

#- 206 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n54H7Cm8' \
    > test.out 2>&1
eval_tap $? 206 'RecurringChargeSubscription' test.out

#- 207 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'P3awnJSY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 207 'GetTicketDynamic' test.out

#- 208 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'vpqwdOlU' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "HYnTHlRx"}' \
    > test.out 2>&1
eval_tap $? 208 'DecreaseTicketSale' test.out

#- 209 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'gHqcUQu7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetTicketBoothID' test.out

#- 210 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'KEiIOAae' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 20, "orderNo": "lWpf7QDB"}' \
    > test.out 2>&1
eval_tap $? 210 'IncreaseTicketSale' test.out

#- 211 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 71, "currencyCode": "vSDvR0iE", "expireAt": "1979-06-02T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "biL2gRU0", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 85, "entitlementOrigin": "Twitch", "itemIdentity": "c7fepLWM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "wZx0PbU2"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 78, "currencyCode": "WfnPejRo", "expireAt": "1979-08-12T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "IvSMZCTi", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 37, "entitlementOrigin": "System", "itemIdentity": "NzFlIFsC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "zQsS6we1"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 86, "currencyCode": "Knb45QNu", "expireAt": "1976-04-09T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "YhGRPMqE", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 74, "entitlementOrigin": "Steam", "itemIdentity": "gGpOLDqf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "Rp3kUBtl"}, "type": "CREDIT_WALLET"}], "userId": "dSDkNFLB"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 27, "currencyCode": "a372CDB8", "expireAt": "1996-07-15T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "oEo9ud6x", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 45, "entitlementOrigin": "Playstation", "itemIdentity": "23QfNhwB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 72, "entitlementId": "RFcR5KZQ"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 98, "currencyCode": "3BkcNLeU", "expireAt": "1990-08-29T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "lzxhpeFs", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 44, "entitlementOrigin": "GooglePlay", "itemIdentity": "rVYvYX9R", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "3C7vCBPd"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 85, "currencyCode": "KcU5eyMQ", "expireAt": "1975-10-28T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "Y40xxbP9", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 20, "entitlementOrigin": "IOS", "itemIdentity": "CXXVmF75", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 18, "entitlementId": "aGg7ege6"}, "type": "DEBIT_WALLET"}], "userId": "kfpio45O"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 89, "currencyCode": "MfkQmxeO", "expireAt": "1982-11-11T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "pKdFpsbW", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 84, "entitlementOrigin": "Epic", "itemIdentity": "B8aPxAUw", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "IB73WvpG"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 95, "currencyCode": "Ix6E8zWU", "expireAt": "1993-01-08T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "SEjgg3fI", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 54, "entitlementOrigin": "Steam", "itemIdentity": "vNtbzUf5", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "b881UZZP"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 50, "currencyCode": "It9bUU4m", "expireAt": "1991-05-17T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "QJSPjv9R", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 6, "entitlementOrigin": "Epic", "itemIdentity": "GzmJHNNo", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "BfzlLDMN"}, "type": "DEBIT_WALLET"}], "userId": "VUrMeNkX"}], "metadata": {"SsZpTBMU": {}, "Gq00kwAR": {}, "KYXXYk0V": {}}, "needPreCheck": true, "transactionId": "rSve67G5", "type": "5GohiV6t"}' \
    > test.out 2>&1
eval_tap $? 211 'Commit' test.out

#- 212 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '21' \
    --status 'SUCCESS' \
    --type 'Ed0jGuee' \
    --userId 'SOhq8g7G' \
    > test.out 2>&1
eval_tap $? 212 'GetTradeHistoryByCriteria' test.out

#- 213 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'pW8VGoxS' \
    > test.out 2>&1
eval_tap $? 213 'GetTradeHistoryByTransactionId' test.out

#- 214 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '7T1KRbsn' \
    --body '{"achievements": [{"id": "tU3Z86Mq", "value": 59}, {"id": "yDODgmLq", "value": 75}, {"id": "qpdrmCzm", "value": 8}], "steamUserId": "kVmu18Ej"}' \
    > test.out 2>&1
eval_tap $? 214 'UnlockSteamUserAchievement' test.out

#- 215 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mpt9ytPc' \
    --xboxUserId 'UDH0i61G' \
    > test.out 2>&1
eval_tap $? 215 'GetXblUserAchievements' test.out

#- 216 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'aba2LXXR' \
    --body '{"achievements": [{"id": "oJS1z4B8", "percentComplete": 74}, {"id": "1Va3GmPd", "percentComplete": 83}, {"id": "KXrtGKqA", "percentComplete": 74}], "serviceConfigId": "kcWyoI4K", "titleId": "0qf13NkB", "xboxUserId": "4moJ19HN"}' \
    > test.out 2>&1
eval_tap $? 216 'UpdateXblUserAchievement' test.out

#- 217 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'WNQw47YG' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeCampaign' test.out

#- 218 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4iETCKEa' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeEntitlement' test.out

#- 219 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '6PW458e0' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeFulfillment' test.out

#- 220 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'T8YSMWqX' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeIntegration' test.out

#- 221 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'uFxjwcrX' \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeOrder' test.out

#- 222 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '57k3X7rS' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizePayment' test.out

#- 223 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'UCrleRJ5' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeRevocation' test.out

#- 224 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Dn352TgX' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeSubscription' test.out

#- 225 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'IQDQlsp2' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeWallet' test.out

#- 226 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'CWdhgZHH' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 226 'GetUserDLCByPlatform' test.out

#- 227 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TNaRpKMm' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 227 'GetUserDLC' test.out

#- 228 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'alBGNopw' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'pnIwa1tt' \
    --features '["C7068eh3", "K2p44ej4", "WsKhiOKu"]' \
    --fuzzyMatchName 'true' \
    --itemId '["HJbfcYVR", "u28GKWqy", "rLuW6pUd"]' \
    --limit '84' \
    --offset '80' \
    --origin 'Oculus' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserEntitlements' test.out

#- 229 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Mfo7Spu5' \
    --body '[{"endDate": "1981-11-17T00:00:00Z", "grantedCode": "A64cBpa2", "itemId": "oulyRPbv", "itemNamespace": "pGCLpvCT", "language": "WP_cm", "origin": "Epic", "quantity": 59, "region": "pIy6SbUG", "source": "REWARD", "startDate": "1971-07-26T00:00:00Z", "storeId": "LeaW1Wzi"}, {"endDate": "1987-11-04T00:00:00Z", "grantedCode": "b3DQtP7d", "itemId": "UxSYJuWn", "itemNamespace": "rs6EImrp", "language": "MX_mdnX_649", "origin": "Twitch", "quantity": 92, "region": "BReXy8HM", "source": "REFERRAL_BONUS", "startDate": "1994-09-22T00:00:00Z", "storeId": "JSTTppHD"}, {"endDate": "1987-02-21T00:00:00Z", "grantedCode": "Nr9qFFCu", "itemId": "gVDz8dH6", "itemNamespace": "DOs6UK7w", "language": "MRMu_zmyM", "origin": "System", "quantity": 83, "region": "fL4mKtkk", "source": "REDEEM_CODE", "startDate": "1996-09-03T00:00:00Z", "storeId": "ovrOjH0p"}]' \
    > test.out 2>&1
eval_tap $? 229 'GrantUserEntitlement' test.out

#- 230 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '0qxhVZze' \
    --activeOnly 'false' \
    --appId 'bsj3404t' \
    > test.out 2>&1
eval_tap $? 230 'GetUserAppEntitlementByAppId' test.out

#- 231 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '0tPLUNzC' \
    --activeOnly 'true' \
    --limit '43' \
    --offset '49' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 231 'QueryUserEntitlementsByAppType' test.out

#- 232 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2WBIY1KM' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'y8daj3KG' \
    --itemId 'WOr7XTBt' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementByItemId' test.out

#- 233 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8sLNoHdo' \
    --ids '["A612Af5S", "ywWNhxQB", "LCbfLjrA"]' \
    --platform 'D10wS6FI' \
    > test.out 2>&1
eval_tap $? 233 'GetUserActiveEntitlementsByItemIds' test.out

#- 234 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '3idCGPxp' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'X9kcIUB7' \
    --sku 'WdIaQZyR' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementBySku' test.out

#- 235 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5NJjIMec' \
    --appIds '["Lxg41uSE", "zTinrZqR", "tqAE8U5l"]' \
    --itemIds '["lQBTZwyL", "7n2FApvi", "Rny8l8XH"]' \
    --platform 'LP3kHGzh' \
    --skus '["I0pXKcSe", "dRyuuiFh", "s4jL1oGl"]' \
    > test.out 2>&1
eval_tap $? 235 'ExistsAnyUserActiveEntitlement' test.out

#- 236 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'nu0dUZUA' \
    --platform '7t4mui19' \
    --itemIds '["e6DzpQZT", "kIMwTpVa", "Z0Tn6Jul"]' \
    > test.out 2>&1
eval_tap $? 236 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 237 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JQuhUXYK' \
    --appId 'P1nRMV2d' \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 238 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'FJWevhdB' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'I8dqBfl9' \
    --itemId '6Y6WdRic' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementOwnershipByItemId' test.out

#- 239 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'F90Z7tqa' \
    --ids '["S2GXmD8R", "D1iKIkGr", "eXE2eh2v"]' \
    --platform 'FtebL8oK' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementOwnershipByItemIds' test.out

#- 240 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'RwiYdXRD' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'NckUrRrD' \
    --sku 'vphjZAqc' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementOwnershipBySku' test.out

#- 241 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'hQHGcy9a' \
    > test.out 2>&1
eval_tap $? 241 'RevokeAllEntitlements' test.out

#- 242 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Q9BUXHsZ' \
    --entitlementIds 'wEz8wGK4' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUserEntitlements' test.out

#- 243 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'o2qulDr6' \
    --namespace $AB_NAMESPACE \
    --userId 'DqjTzirZ' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlement' test.out

#- 244 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '834XprjK' \
    --namespace $AB_NAMESPACE \
    --userId 'whKJTFMW' \
    --body '{"endDate": "1981-07-05T00:00:00Z", "nullFieldList": ["se5YC5CN", "xmnfgOjs", "RmGAqx4V"], "origin": "GooglePlay", "reason": "OhiSqgel", "startDate": "1973-11-24T00:00:00Z", "status": "INACTIVE", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserEntitlement' test.out

#- 245 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'NMxGz8Af' \
    --namespace $AB_NAMESPACE \
    --userId 'xokFu6IA' \
    --body '{"options": ["McybztGr", "1iTga0VJ", "fzbHxgcy"], "platform": "dozMJIsS", "requestId": "7yN0sq8p", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 245 'ConsumeUserEntitlement' test.out

#- 246 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'noj23WPq' \
    --namespace $AB_NAMESPACE \
    --userId '1ZgHI6N8' \
    > test.out 2>&1
eval_tap $? 246 'DisableUserEntitlement' test.out

#- 247 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '6nTf1guF' \
    --namespace $AB_NAMESPACE \
    --userId 'Y2uLhRIs' \
    > test.out 2>&1
eval_tap $? 247 'EnableUserEntitlement' test.out

#- 248 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'HtoFyWuu' \
    --namespace $AB_NAMESPACE \
    --userId 'ZCPwgFh4' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementHistories' test.out

#- 249 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'MJBXXu4w' \
    --namespace $AB_NAMESPACE \
    --userId 'mWpSJRbn' \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlement' test.out

#- 250 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'qbBxQivq' \
    --namespace $AB_NAMESPACE \
    --userId '5Ppt01xC' \
    --body '{"reason": "WEFUdIr7", "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 250 'RevokeUserEntitlementByUseCount' test.out

#- 251 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'w6kUSx0J' \
    --namespace $AB_NAMESPACE \
    --userId '61h42xjy' \
    --quantity '66' \
    > test.out 2>&1
eval_tap $? 251 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 252 RevokeUseCount
eval_tap 0 252 'RevokeUseCount # SKIP deprecated' test.out

#- 253 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'qCLUsImT' \
    --namespace $AB_NAMESPACE \
    --userId 'xphpmZgP' \
    --body '{"platform": "F9smSrnL", "requestId": "XGIjT0O9", "useCount": 52}' \
    > test.out 2>&1
eval_tap $? 253 'SellUserEntitlement' test.out

#- 254 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'gfKIDjow' \
    --body '{"duration": 35, "endDate": "1997-05-30T00:00:00Z", "entitlementOrigin": "Other", "itemId": "7W65Ill8", "itemSku": "ij3trJSH", "language": "Q9JtDztg", "metadata": {"2KNk43zl": {}, "R3MIV2Vz": {}, "krHkEddp": {}}, "order": {"currency": {"currencyCode": "kybw693C", "currencySymbol": "06uJHxcN", "currencyType": "REAL", "decimals": 36, "namespace": "retFR1fb"}, "ext": {"WcZ1OGTS": {}, "Xp5pRiom": {}, "825A1ZGx": {}}, "free": false}, "orderNo": "NNJ12trP", "origin": "Twitch", "overrideBundleItemQty": {"3nuRB83n": 36, "nlzfuE4h": 18, "kaojB1Tc": 3}, "quantity": 47, "region": "7YHI0ist", "source": "ACHIEVEMENT", "startDate": "1975-09-19T00:00:00Z", "storeId": "NfEnTA8f"}' \
    > test.out 2>&1
eval_tap $? 254 'FulfillItem' test.out

#- 255 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'UzaiPsHD' \
    --body '{"code": "vizhkfzd", "language": "AVqm-kB", "region": "bt50t4TM"}' \
    > test.out 2>&1
eval_tap $? 255 'RedeemCode' test.out

#- 256 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'k5Ryr4Rx' \
    --body '{"itemId": "7GXO4Sn0", "itemSku": "6rnztIoD", "quantity": 76}' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckFulfillItem' test.out

#- 257 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'gAY2WFFT' \
    --body '{"entitlementOrigin": "Epic", "metadata": {"67imh642": {}, "HwzdNvCg": {}, "skliEs5i": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "uAaXtLNs", "namespace": "JChOIp0C"}, "item": {"itemId": "2hKk4Ge6", "itemSku": "APC69N3x", "itemType": "k8K8McSN"}, "quantity": 48, "type": "CURRENCY"}, {"currency": {"currencyCode": "5l4meuQz", "namespace": "QtYcbAbU"}, "item": {"itemId": "tciZJVZD", "itemSku": "jqAaOf2A", "itemType": "hyiRMKj4"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "dZ2IiSdq", "namespace": "lGTdO8yF"}, "item": {"itemId": "KwY4iUV5", "itemSku": "7lHct4td", "itemType": "kez6BCjN"}, "quantity": 80, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "4x89mh4v"}' \
    > test.out 2>&1
eval_tap $? 257 'FulfillRewards' test.out

#- 258 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '9s5lPMuo' \
    --endTime '6xmdCGHE' \
    --limit '65' \
    --offset '99' \
    --productId 'lzU4AJVF' \
    --startTime 'GzemQotU' \
    --status 'VERIFIED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserIAPOrders' test.out

#- 259 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'eu6KM5Y7' \
    > test.out 2>&1
eval_tap $? 259 'QueryAllUserIAPOrders' test.out

#- 260 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '0moZzq09' \
    --endTime 'iCKZufNZ' \
    --limit '0' \
    --offset '27' \
    --startTime 'C7AY9w9b' \
    --status 'FAIL' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 260 'QueryUserIAPConsumeHistory' test.out

#- 261 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UrVTufRy' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "rjFt", "productId": "peLq2YEF", "region": "9J9dRfs9", "transactionId": "AFVB4tSY", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 261 'MockFulfillIAPItem' test.out

#- 262 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'lt1PS3FB' \
    --itemId '1szzTLIP' \
    --limit '25' \
    --offset '59' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 262 'QueryUserOrders' test.out

#- 263 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'JlQdIPMk' \
    --body '{"currencyCode": "xFacmzgl", "currencyNamespace": "1kwm3uAx", "discountedPrice": 22, "ext": {"0ZUGhw0m": {}, "3HKofVAr": {}, "LQxXp18T": {}}, "itemId": "ZFsH2HFX", "language": "pGFpndmz", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 33, "quantity": 36, "region": "rypYbxrR", "returnUrl": "fFG1SwIw", "sandbox": true, "sectionId": "vmg6tHZP"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminCreateUserOrder' test.out

#- 264 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'hpcD1ch8' \
    --itemId 'OTSo2PLe' \
    > test.out 2>&1
eval_tap $? 264 'CountOfPurchasedItem' test.out

#- 265 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ja8T131v' \
    --userId 'MhbQGJ0U' \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrder' test.out

#- 266 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'FcibTqsK' \
    --userId 'NBVkKair' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "DYRVmfYL"}' \
    > test.out 2>&1
eval_tap $? 266 'UpdateUserOrderStatus' test.out

#- 267 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'WXtT1Dg3' \
    --userId 'kQzszAU0' \
    > test.out 2>&1
eval_tap $? 267 'FulfillUserOrder' test.out

#- 268 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'Jvl6EFe7' \
    --userId 'waRfHRrt' \
    > test.out 2>&1
eval_tap $? 268 'GetUserOrderGrant' test.out

#- 269 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'PKbL4HPa' \
    --userId 'VuLDa4ma' \
    > test.out 2>&1
eval_tap $? 269 'GetUserOrderHistories' test.out

#- 270 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'LSwBdAq7' \
    --userId 'n4a0P55d' \
    --body '{"additionalData": {"cardSummary": "dZP9io47"}, "authorisedTime": "1999-03-26T00:00:00Z", "chargebackReversedTime": "1975-04-06T00:00:00Z", "chargebackTime": "1998-05-18T00:00:00Z", "chargedTime": "1973-08-26T00:00:00Z", "createdTime": "1979-08-01T00:00:00Z", "currency": {"currencyCode": "zQa8ec0E", "currencySymbol": "q4qbKpaJ", "currencyType": "REAL", "decimals": 67, "namespace": "Z1nYp2GX"}, "customParameters": {"iE4YPZqq": {}, "Vt2ptrPh": {}, "8wVYjXjx": {}}, "extOrderNo": "f8aao9UF", "extTxId": "4DI9l6rC", "extUserId": "wtt1wi5p", "issuedAt": "1986-05-13T00:00:00Z", "metadata": {"P7Q0RhRW": "eg19CzWy", "2IRerccX": "sHxB80PY", "nAbWrnBb": "fJZnjinR"}, "namespace": "dv9HfLSP", "nonceStr": "xkFsOT9z", "paymentMethod": "89hQ5uBe", "paymentMethodFee": 40, "paymentOrderNo": "USL8GWi8", "paymentProvider": "ADYEN", "paymentProviderFee": 49, "paymentStationUrl": "pIgeJyEP", "price": 14, "refundedTime": "1979-11-05T00:00:00Z", "salesTax": 15, "sandbox": true, "sku": "FNXQhANm", "status": "AUTHORISE_FAILED", "statusReason": "UMakdeF2", "subscriptionId": "c9pGoR3E", "subtotalPrice": 98, "targetNamespace": "OhelYYZq", "targetUserId": "AkmBgDP7", "tax": 33, "totalPrice": 95, "totalTax": 1, "txEndTime": "1981-04-23T00:00:00Z", "type": "FiJGlDLt", "userId": "F9g9ggei", "vat": 92}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserOrderNotification' test.out

#- 271 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '2HFNuBje' \
    --userId 'lSwGbAtF' \
    > test.out 2>&1
eval_tap $? 271 'DownloadUserOrderReceipt' test.out

#- 272 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 's1FaW1HE' \
    --body '{"currencyCode": "6L8Hcj36", "currencyNamespace": "51V5DQRH", "customParameters": {"4AStHVOe": {}, "67LcDRIh": {}, "pgg1vezw": {}}, "description": "UwAMuc9V", "extOrderNo": "ZsMOoYcs", "extUserId": "dyCrzKCt", "itemType": "APP", "language": "SDAE_727", "metadata": {"MRK5B0KM": "k5p5MaMb", "CWKDQkaL": "6inFSsfS", "OBs8vBKr": "uSOvKa80"}, "notifyUrl": "1wxsJ4rA", "omitNotification": false, "platform": "sBZ3e2oz", "price": 58, "recurringPaymentOrderNo": "tL2b8u1k", "region": "dWMA8ENj", "returnUrl": "io24B6kH", "sandbox": true, "sku": "oh8DKRaU", "subscriptionId": "Fyvv6MZb", "title": "yg05Dw1e"}' \
    > test.out 2>&1
eval_tap $? 272 'CreateUserPaymentOrder' test.out

#- 273 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bdFiIAKm' \
    --userId 'LdRdBHGP' \
    --body '{"description": "0GHzKpD2"}' \
    > test.out 2>&1
eval_tap $? 273 'RefundUserPaymentOrder' test.out

#- 274 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '30MoyFHB' \
    --body '{"code": "AEHqMRRM", "orderNo": "AtrCocph"}' \
    > test.out 2>&1
eval_tap $? 274 'ApplyUserRedemption' test.out

#- 275 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '6dUjvWcn' \
    --body '{"meta": {"ZTLWSFoD": {}, "EzR7j2h6": {}, "skWce1ZS": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "OBL3G8PC", "namespace": "WFJyspI6"}, "entitlement": {"entitlementId": "06WhEPTV"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "Aq6wYZDb", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "eXFNHOzD", "namespace": "OKBXr2rl"}, "entitlement": {"entitlementId": "8c0LcMP7"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "mjVxNkpK", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "XoFQvpj8", "namespace": "7KUjdty1"}, "entitlement": {"entitlementId": "FacUrAb3"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "ESN6qFaj", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 53, "type": "ITEM"}], "source": "IAP", "transactionId": "8HznyTZ6"}' \
    > test.out 2>&1
eval_tap $? 275 'DoRevocation' test.out

#- 276 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'AANRRnrw' \
    --body '{"gameSessionId": "EidyEAED", "payload": {"9YevBgLt": {}, "Vp1VuGfN": {}, "wnNrA71a": {}}, "scid": "Exoax5eI", "sessionTemplateName": "9sTu0iBg"}' \
    > test.out 2>&1
eval_tap $? 276 'RegisterXblSessions' test.out

#- 277 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'CqLycWun' \
    --chargeStatus 'SETUP' \
    --itemId '9wvNyLUg' \
    --limit '13' \
    --offset '54' \
    --sku 'Pfr71kJc' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserSubscriptions' test.out

#- 278 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'cujyFtn5' \
    --excludeSystem 'true' \
    --limit '50' \
    --offset '6' \
    --subscriptionId 'uwk5IB7M' \
    > test.out 2>&1
eval_tap $? 278 'GetUserSubscriptionActivities' test.out

#- 279 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'LyzSUlmu' \
    --body '{"grantDays": 73, "itemId": "4icJWcgP", "language": "OaPETlZ7", "reason": "PaVy2Aaw", "region": "rVKVXPE0", "source": "9o84JgTG"}' \
    > test.out 2>&1
eval_tap $? 279 'PlatformSubscribeSubscription' test.out

#- 280 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'FcFYDvNJ' \
    --itemId 'M4Z3eIZb' \
    > test.out 2>&1
eval_tap $? 280 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 281 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VDQWvHzD' \
    --userId '6buwVuhB' \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscription' test.out

#- 282 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'UMGUnyDz' \
    --userId 'M4ShMnDA' \
    > test.out 2>&1
eval_tap $? 282 'DeleteUserSubscription' test.out

#- 283 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'e3ZE6Xld' \
    --userId 'LhTKUeWz' \
    --force 'true' \
    --body '{"immediate": false, "reason": "66NTjg3g"}' \
    > test.out 2>&1
eval_tap $? 283 'CancelSubscription' test.out

#- 284 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dLIvjIGs' \
    --userId 'I1OONNE1' \
    --body '{"grantDays": 75, "reason": "DEzfXe43"}' \
    > test.out 2>&1
eval_tap $? 284 'GrantDaysToSubscription' test.out

#- 285 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XSqgsQAL' \
    --userId 'U3KPftSy' \
    --excludeFree 'true' \
    --limit '75' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionBillingHistories' test.out

#- 286 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kSpuVzZw' \
    --userId 'm9H8JY29' \
    --body '{"additionalData": {"cardSummary": "YB4J0lS1"}, "authorisedTime": "1989-03-31T00:00:00Z", "chargebackReversedTime": "1987-02-02T00:00:00Z", "chargebackTime": "1997-01-30T00:00:00Z", "chargedTime": "1982-03-24T00:00:00Z", "createdTime": "1990-04-12T00:00:00Z", "currency": {"currencyCode": "uQborcBn", "currencySymbol": "4Dj6TKdj", "currencyType": "REAL", "decimals": 4, "namespace": "nN1kkHI6"}, "customParameters": {"dcv1nSd6": {}, "l38BjF1g": {}, "CVTJMrzJ": {}}, "extOrderNo": "Wvn28JJ8", "extTxId": "ArXvPFhW", "extUserId": "WT3MA6Ii", "issuedAt": "1992-10-28T00:00:00Z", "metadata": {"9e6tMgI9": "9IJfIjxs", "Gc2rru8y": "U2dYepwj", "coJOl9rt": "v6ZTR8aL"}, "namespace": "8GlxEYbi", "nonceStr": "X7HvoChS", "paymentMethod": "lhzaGn0i", "paymentMethodFee": 98, "paymentOrderNo": "O5bZGyBP", "paymentProvider": "WXPAY", "paymentProviderFee": 83, "paymentStationUrl": "xVVk3HjZ", "price": 86, "refundedTime": "1971-09-21T00:00:00Z", "salesTax": 19, "sandbox": false, "sku": "2V2LUi7F", "status": "AUTHORISED", "statusReason": "ABegRsBs", "subscriptionId": "c9mwEpAZ", "subtotalPrice": 33, "targetNamespace": "HunrznuQ", "targetUserId": "cw1n9IJW", "tax": 4, "totalPrice": 23, "totalTax": 90, "txEndTime": "1974-11-10T00:00:00Z", "type": "cJQUP0yV", "userId": "M7FccoD7", "vat": 53}' \
    > test.out 2>&1
eval_tap $? 286 'ProcessUserSubscriptionNotification' test.out

#- 287 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'bEdTX9dV' \
    --namespace $AB_NAMESPACE \
    --userId 'fKALki3a' \
    --body '{"count": 85, "orderNo": "DkIEfbSH"}' \
    > test.out 2>&1
eval_tap $? 287 'AcquireUserTicket' test.out

#- 288 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'YCCblOlN' \
    > test.out 2>&1
eval_tap $? 288 'QueryUserCurrencyWallets' test.out

#- 289 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'sNXVXR3J' \
    --namespace $AB_NAMESPACE \
    --userId 'PJxJCTlw' \
    --body '{"allowOverdraft": true, "amount": 79, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"jnUdvuLE": {}, "muoqT1Mg": {}, "ah82bPfg": {}}, "reason": "mMDCGkvy"}' \
    > test.out 2>&1
eval_tap $? 289 'DebitUserWalletByCurrencyCode' test.out

#- 290 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'hxoLdlic' \
    --namespace $AB_NAMESPACE \
    --userId 'VfwlXQni' \
    --limit '60' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 290 'ListUserCurrencyTransactions' test.out

#- 291 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'uzBZ281s' \
    --namespace $AB_NAMESPACE \
    --userId 'owuidLt4' \
    --request '{"amount": 16, "debitBalanceSource": "PAYMENT", "metadata": {"rxke2yHI": {}, "y8YuyFMk": {}, "uesCwb2f": {}}, "reason": "YBkUfvVb", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 291 'CheckBalance' test.out

#- 292 CheckWallet
eval_tap 0 292 'CheckWallet # SKIP deprecated' test.out

#- 293 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'jDto0IEG' \
    --namespace $AB_NAMESPACE \
    --userId '8jVOvotn' \
    --body '{"amount": 2, "expireAt": "1978-10-13T00:00:00Z", "metadata": {"1ZYrAMEC": {}, "aJStnwxK": {}, "4KdHCbzA": {}}, "origin": "Epic", "reason": "9s2spsQb", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 293 'CreditUserWallet' test.out

#- 294 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'PVh1G4QH' \
    --namespace $AB_NAMESPACE \
    --userId 'Wh9BqKrI' \
    --request '{"amount": 77, "debitBalanceSource": "TRADE", "metadata": {"UuEYtM4C": {}, "j5sBUpmZ": {}, "WZrLdX54": {}}, "reason": "bp0BCLpz", "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitByWalletPlatform' test.out

#- 295 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'WCWXj4BX' \
    --namespace $AB_NAMESPACE \
    --userId 'H772MkqQ' \
    --body '{"amount": 79, "metadata": {"YeHbVtdK": {}, "tOCQeVJY": {}, "tBtPvHAv": {}}, "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 295 'PayWithUserWallet' test.out

#- 296 GetUserWallet
eval_tap 0 296 'GetUserWallet # SKIP deprecated' test.out

#- 297 DebitUserWallet
eval_tap 0 297 'DebitUserWallet # SKIP deprecated' test.out

#- 298 DisableUserWallet
eval_tap 0 298 'DisableUserWallet # SKIP deprecated' test.out

#- 299 EnableUserWallet
eval_tap 0 299 'EnableUserWallet # SKIP deprecated' test.out

#- 300 ListUserWalletTransactions
eval_tap 0 300 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 301 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'e4dALdRb' \
    > test.out 2>&1
eval_tap $? 301 'ListViews' test.out

#- 302 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'pL1hUsd3' \
    --body '{"displayOrder": 89, "localizations": {"hnTRictS": {"description": "rFtraTDt", "localExt": {"eMJbMFb1": {}, "eFi693Rs": {}, "LPiDWTMJ": {}}, "longDescription": "YBHe7eIe", "title": "J1UL8efs"}, "QAbt736k": {"description": "rfZP7oaB", "localExt": {"K6d4LHgT": {}, "6tMYFJJ0": {}, "ghIlPHuk": {}}, "longDescription": "bEd2XKSE", "title": "0ZJqL7Pp"}, "YBAHstMS": {"description": "9B78PQ1E", "localExt": {"INC8TGUt": {}, "URoJqvuh": {}, "HrUHguXD": {}}, "longDescription": "AeCz3PNW", "title": "tZHDcT2M"}}, "name": "4WeWnqn0"}' \
    > test.out 2>&1
eval_tap $? 302 'CreateView' test.out

#- 303 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'zrxiHmCH' \
    --storeId 'aLWEAHzE' \
    > test.out 2>&1
eval_tap $? 303 'GetView' test.out

#- 304 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '6WIuo5X3' \
    --storeId 'FQ1CGq8B' \
    --body '{"displayOrder": 50, "localizations": {"HStWrJSj": {"description": "ON6KcvXo", "localExt": {"AsMub4oD": {}, "w4HDFoOd": {}, "aU44xnOl": {}}, "longDescription": "w6lGqlYk", "title": "uCvem1Zh"}, "gkSGb4Hk": {"description": "7WqtQ0iG", "localExt": {"jLndjmdP": {}, "Kg8BaJLG": {}, "nJFwxJbG": {}}, "longDescription": "lRQWPG57", "title": "HuQBZtpG"}, "nThdavxu": {"description": "9mzgLWws", "localExt": {"hjZb1e7f": {}, "d45kvRv9": {}, "znOtheM3": {}}, "longDescription": "BMuPkuF9", "title": "o5bxFofm"}}, "name": "lM88LnZq"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateView' test.out

#- 305 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'a4ndEHH9' \
    --storeId 'AdfV4UL3' \
    > test.out 2>&1
eval_tap $? 305 'DeleteView' test.out

#- 306 QueryWallets
eval_tap 0 306 'QueryWallets # SKIP deprecated' test.out

#- 307 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 96, "expireAt": "1975-10-06T00:00:00Z", "metadata": {"iBs6Al19": {}, "HLI7TOQo": {}, "e0BXFWIW": {}}, "origin": "System", "reason": "rNAmihNa", "source": "ACHIEVEMENT"}, "currencyCode": "Foo9uEry", "userIds": ["WHhji5G9", "4JZm2ZBu", "onda7Sv5"]}, {"creditRequest": {"amount": 96, "expireAt": "1985-03-29T00:00:00Z", "metadata": {"Sf5Z0nMo": {}, "d9hqryHi": {}, "Umycq5qf": {}}, "origin": "Epic", "reason": "ttt6ctkC", "source": "REWARD"}, "currencyCode": "A9eXlShh", "userIds": ["Qum4Q3yI", "fjcxlMV4", "wcLunyGG"]}, {"creditRequest": {"amount": 50, "expireAt": "1982-10-23T00:00:00Z", "metadata": {"Ql78oyDD": {}, "rOBzevwd": {}, "YcnUAS8v": {}}, "origin": "Oculus", "reason": "3dNFlzr4", "source": "TRADE"}, "currencyCode": "qnvoImuL", "userIds": ["5MlIsZxm", "6B8ZOUzx", "a7zfixBb"]}]' \
    > test.out 2>&1
eval_tap $? 307 'BulkCredit' test.out

#- 308 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "iD3Vl3vJ", "request": {"allowOverdraft": true, "amount": 60, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"WFuqpFmk": {}, "c5Y5du6G": {}, "OhTnswY0": {}}, "reason": "LyGemBTG"}, "userIds": ["v9HyO5oz", "SVNmVVUu", "DTLush1f"]}, {"currencyCode": "KIwTdXsM", "request": {"allowOverdraft": false, "amount": 78, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"uYeiOSw1": {}, "eAFnHePF": {}, "gOUdlpzX": {}}, "reason": "hz5yQYS3"}, "userIds": ["oRT2Rrvw", "daK6oT9X", "DaydDUAm"]}, {"currencyCode": "9vXaOqlI", "request": {"allowOverdraft": false, "amount": 1, "balanceOrigin": "Xbox", "balanceSource": "DLC_REVOCATION", "metadata": {"8YUFejJB": {}, "GGb8Yq7k": {}, "wXmOjaoF": {}}, "reason": "RvlvoL9r"}, "userIds": ["0TMxVFsi", "RlXF313D", "VYSAA0Q7"]}]' \
    > test.out 2>&1
eval_tap $? 308 'BulkDebit' test.out

#- 309 GetWallet
eval_tap 0 309 'GetWallet # SKIP deprecated' test.out

#- 310 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'JUhBM41V' \
    --end '2RkIQRUz' \
    --start 'ENyFg2mK' \
    > test.out 2>&1
eval_tap $? 310 'SyncOrders' test.out

#- 311 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["O5yGrtyd", "ik58HQNa", "L79ktT2W"], "apiKey": "W8wn8ebJ", "authoriseAsCapture": true, "blockedPaymentMethods": ["GwKkXXqM", "e06fZnhd", "aTsnDi0S"], "clientKey": "W2LGwcdm", "dropInSettings": "F9sDYLIG", "liveEndpointUrlPrefix": "6dSWJlqT", "merchantAccount": "CVVPCXDE", "notificationHmacKey": "P4OJcyCA", "notificationPassword": "lO8LcC6k", "notificationUsername": "TLtsbxXp", "returnUrl": "KABBq12m", "settings": "rR4vnmkT"}' \
    > test.out 2>&1
eval_tap $? 311 'TestAdyenConfig' test.out

#- 312 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "DxfQxL6Z", "privateKey": "4yGOrvu0", "publicKey": "fGSvrbb2", "returnUrl": "SxH2drt7"}' \
    > test.out 2>&1
eval_tap $? 312 'TestAliPayConfig' test.out

#- 313 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "GYgbTAOB", "secretKey": "3lNjDh3H"}' \
    > test.out 2>&1
eval_tap $? 313 'TestCheckoutConfig' test.out

#- 314 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '2pmZnxXz' \
    --region '9etOD45f' \
    > test.out 2>&1
eval_tap $? 314 'DebugMatchedPaymentMerchantConfig' test.out

#- 315 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "Q0oHIK2Q", "clientSecret": "rGgAqZxM", "returnUrl": "yVX7k9Or", "webHookId": "Mr02ZiJB"}' \
    > test.out 2>&1
eval_tap $? 315 'TestPayPalConfig' test.out

#- 316 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["l8rIQpsT", "0EGwEA5H", "1uGKl7f9"], "publishableKey": "teU0QOAc", "secretKey": "zlrEeboz", "webhookSecret": "AqbtDPeV"}' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfig' test.out

#- 317 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ZP3ypFD4", "key": "M1BZi0vZ", "mchid": "evqTqd9V", "returnUrl": "kwYGHvnI"}' \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfig' test.out

#- 318 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "hUrpBYrk", "flowCompletionUrl": "cLH67aOo", "merchantId": 87, "projectId": 23, "projectSecretKey": "IsuuAPAr"}' \
    > test.out 2>&1
eval_tap $? 318 'TestXsollaConfig' test.out

#- 319 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'b8dX7iqj' \
    > test.out 2>&1
eval_tap $? 319 'GetPaymentMerchantConfig' test.out

#- 320 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'DhhsuXpZ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["tqPRVM5O", "zbpl6QLk", "AT7qLhMp"], "apiKey": "INnBvqnV", "authoriseAsCapture": false, "blockedPaymentMethods": ["FQZobR5e", "3Jo24uFR", "vDVXEzpC"], "clientKey": "Blbc0x4o", "dropInSettings": "0qTboIvP", "liveEndpointUrlPrefix": "1SGaMhck", "merchantAccount": "OFFcFb0a", "notificationHmacKey": "oHWhP6Q9", "notificationPassword": "VIZdkYB6", "notificationUsername": "qIgUa5Q2", "returnUrl": "Xfifqau0", "settings": "0dEUYutX"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateAdyenConfig' test.out

#- 321 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'GbtXVBvB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 321 'TestAdyenConfigById' test.out

#- 322 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'octK8wGW' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "qXwIWx8X", "privateKey": "VG3m75cK", "publicKey": "iNNa46CB", "returnUrl": "LgjH3dlU"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateAliPayConfig' test.out

#- 323 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'pZGTQO5p' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 323 'TestAliPayConfigById' test.out

#- 324 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'eYmx3ALw' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "VZZOYZ2g", "secretKey": "jeaFTwKm"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateCheckoutConfig' test.out

#- 325 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'pYeWqeAl' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfigById' test.out

#- 326 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'IpPaHbky' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "eFx4wTXQ", "clientSecret": "w4GzJQS1", "returnUrl": "vavrjSgQ", "webHookId": "hql8zoDc"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePayPalConfig' test.out

#- 327 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Y2KJVeVe' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 327 'TestPayPalConfigById' test.out

#- 328 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'kMRbUMIn' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["1KjFMrMj", "R60t5h5Q", "uApmPYMb"], "publishableKey": "gIItbS3O", "secretKey": "VxR3bCtz", "webhookSecret": "aEIfOzMS"}' \
    > test.out 2>&1
eval_tap $? 328 'UpdateStripeConfig' test.out

#- 329 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'PZQTKWim' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfigById' test.out

#- 330 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'uuJCRuqQ' \
    --validate 'true' \
    --body '{"appId": "468bpwcg", "key": "KratuZxN", "mchid": "heuLff0z", "returnUrl": "zyuI5kcn"}' \
    > test.out 2>&1
eval_tap $? 330 'UpdateWxPayConfig' test.out

#- 331 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'PujtaSrW' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 331 'UpdateWxPayConfigCert' test.out

#- 332 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ozgVLKGm' \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfigById' test.out

#- 333 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '2j4vK4ZM' \
    --validate 'false' \
    --body '{"apiKey": "WRQliZ7c", "flowCompletionUrl": "kbLOnugU", "merchantId": 76, "projectId": 75, "projectSecretKey": "nlaQG5cC"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateXsollaConfig' test.out

#- 334 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '3V1Dz9sl' \
    > test.out 2>&1
eval_tap $? 334 'TestXsollaConfigById' test.out

#- 335 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '9dVxds5P' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateXsollaUIConfig' test.out

#- 336 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '90' \
    --namespace 'nuLPl5HT' \
    --offset '15' \
    --region 'iox0OZw2' \
    > test.out 2>&1
eval_tap $? 336 'QueryPaymentProviderConfig' test.out

#- 337 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "ZAZ0kEH1", "region": "ljA2SR0E", "sandboxTaxJarApiToken": "swiL2YML", "specials": ["ALIPAY", "XSOLLA", "CHECKOUT"], "taxJarApiToken": "6Ox4rBzN", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 337 'CreatePaymentProviderConfig' test.out

#- 338 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 338 'GetAggregatePaymentProviders' test.out

#- 339 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'cxNXfZQZ' \
    --region 'pRCTIWvA' \
    > test.out 2>&1
eval_tap $? 339 'DebugMatchedPaymentProviderConfig' test.out

#- 340 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 340 'GetSpecialPaymentProviders' test.out

#- 341 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'sRXtUrYR' \
    --body '{"aggregate": "XSOLLA", "namespace": "ccG8GXuW", "region": "6GMNm3TG", "sandboxTaxJarApiToken": "x9uvCU1u", "specials": ["CHECKOUT", "CHECKOUT", "CHECKOUT"], "taxJarApiToken": "kJV9qzT0", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 341 'UpdatePaymentProviderConfig' test.out

#- 342 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'mM1unCsQ' \
    > test.out 2>&1
eval_tap $? 342 'DeletePaymentProviderConfig' test.out

#- 343 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 343 'GetPaymentTaxConfig' test.out

#- 344 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Y0pp1pit", "taxJarApiToken": "DbtrFTdZ", "taxJarEnabled": false, "taxJarProductCodesMapping": {"dxHylCii": "emOiPI17", "pn7F5t11": "NOLmY08Y", "qaJWprao": "wME3LNPV"}}' \
    > test.out 2>&1
eval_tap $? 344 'UpdatePaymentTaxConfig' test.out

#- 345 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '3z4HW0Ha' \
    --end '875hNPdC' \
    --start 'aNIMk7K8' \
    > test.out 2>&1
eval_tap $? 345 'SyncPaymentOrders' test.out

#- 346 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '1QBirb92' \
    --storeId '0qywZ82z' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetRootCategories' test.out

#- 347 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'qa4kpE8O' \
    --storeId 'xDo9b1zw' \
    > test.out 2>&1
eval_tap $? 347 'DownloadCategories' test.out

#- 348 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'm479oi9N' \
    --namespace $AB_NAMESPACE \
    --language 's4YYiOfy' \
    --storeId 'LxBLKsDP' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetCategory' test.out

#- 349 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'CzZwcCFr' \
    --namespace $AB_NAMESPACE \
    --language 'cjrcEJZ9' \
    --storeId 'JevK1rKK' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetChildCategories' test.out

#- 350 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'C7KuCK0N' \
    --namespace $AB_NAMESPACE \
    --language 'l9lXITRp' \
    --storeId 'iCYxJvSR' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetDescendantCategories' test.out

#- 351 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 351 'PublicListCurrencies' test.out

#- 352 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 352 'GeDLCDurableRewardShortMap' test.out

#- 353 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 353 'GetIAPItemMapping' test.out

#- 354 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'emnwRlb9' \
    --region '5qJ5E43Z' \
    --storeId 'IADGIENW' \
    --appId 'vHDu7ryd' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItemByAppId' test.out

#- 355 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'llGQpERO' \
    --categoryPath 'tVHB3G5l' \
    --features 'bmgfdXAU' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --language 'RzUjCGS1' \
    --limit '33' \
    --offset '94' \
    --region 'BDsHKb5n' \
    --sortBy '["displayOrder:asc", "name:desc", "name"]' \
    --storeId '8YV5ZFQh' \
    --tags '6Ia3MlCY' \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryItems' test.out

#- 356 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'aI7AfONi' \
    --region '1InSso2f' \
    --storeId '0mkr3O6B' \
    --sku 'HTprEJLG' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetItemBySku' test.out

#- 357 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region '0zmRLL2z' \
    --storeId 'VmCPkM74' \
    --itemIds 'mmPMGJ1Y' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetEstimatedPrice' test.out

#- 358 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'YyVOz25P' \
    --region '9suZb6yb' \
    --storeId 'ZHqKgI65' \
    --itemIds 'aKPufmPU' \
    > test.out 2>&1
eval_tap $? 358 'PublicBulkGetItems' test.out

#- 359 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Hl4QFbH8", "QvAF8zFv", "ONhInruQ"]}' \
    > test.out 2>&1
eval_tap $? 359 'PublicValidateItemPurchaseCondition' test.out

#- 360 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'LOOTBOX' \
    --limit '4' \
    --offset '11' \
    --region 'VAvlTBXT' \
    --storeId 'CWzKeTUu' \
    --keyword 'AVYBe3mN' \
    --language 'Q4PsxmbL' \
    > test.out 2>&1
eval_tap $? 360 'PublicSearchItems' test.out

#- 361 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'mEL0M2w2' \
    --namespace $AB_NAMESPACE \
    --language 'rZlSSu2H' \
    --region 'pOw4xZzz' \
    --storeId '6fQr8tsj' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetApp' test.out

#- 362 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '5l9FJC7C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemDynamicData' test.out

#- 363 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'f6agsQQX' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'V0KV5BeD' \
    --populateBundle 'false' \
    --region 'Oq5NuUEX' \
    --storeId 'aGEyTvK1' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItem' test.out

#- 364 GetPaymentCustomization
eval_tap 0 364 'GetPaymentCustomization # SKIP deprecated' test.out

#- 365 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "1jbAUCJt", "paymentProvider": "PAYPAL", "returnUrl": "osd12P7r", "ui": "x0xexfzo", "zipCode": "MMnExUJ0"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentUrl' test.out

#- 366 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MLgK5o9X' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetPaymentMethods' test.out

#- 367 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fR87LN3r' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUnpaidPaymentOrder' test.out

#- 368 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Sh1vlmtx' \
    --paymentProvider 'ADYEN' \
    --zipCode 'ge641la5' \
    --body '{"token": "Dj4p0GVP"}' \
    > test.out 2>&1
eval_tap $? 368 'Pay' test.out

#- 369 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'onWobmp3' \
    > test.out 2>&1
eval_tap $? 369 'PublicCheckPaymentOrderPaidStatus' test.out

#- 370 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ADYEN' \
    --region 'yPMfm4kt' \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentPublicConfig' test.out

#- 371 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'toImHi9T' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetQRCode' test.out

#- 372 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'QVxvN26Z' \
    --foreinginvoice 'RmddD3RC' \
    --invoiceId '8qBzEMLF' \
    --payload 'Fy7nQLTN' \
    --redirectResult 'QjPaVsYO' \
    --resultCode 'j5Tbx5m5' \
    --sessionId '6xPwjj2T' \
    --status '8wvdaSeV' \
    --token 'JutD6QBx' \
    --type 'QVRl5lwW' \
    --userId 'KT8hHT03' \
    --orderNo '6olf0Nhl' \
    --paymentOrderNo 'ly4QF327' \
    --paymentProvider 'WALLET' \
    --returnUrl '7Uj6uzei' \
    > test.out 2>&1
eval_tap $? 372 'PublicNormalizePaymentReturnUrl' test.out

#- 373 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'LfK24xgr' \
    --paymentOrderNo 'lsCQfnpM' \
    --paymentProvider 'ADYEN' \
    > test.out 2>&1
eval_tap $? 373 'GetPaymentTaxValue' test.out

#- 374 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'Q8qqVNWg' \
    > test.out 2>&1
eval_tap $? 374 'GetRewardByCode' test.out

#- 375 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'gygfe7Qo' \
    --limit '25' \
    --offset '19' \
    --sortBy '["namespace", "rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 375 'QueryRewards1' test.out

#- 376 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'gGfuXHnj' \
    > test.out 2>&1
eval_tap $? 376 'GetReward1' test.out

#- 377 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicListStores' test.out

#- 378 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["1vEJrivT", "GW0aRcGc", "ceD5pUmH"]' \
    --itemIds '["b24Gt4Et", "b9GEklLr", "Mdn3PuZq"]' \
    --skus '["80Lye8Iu", "GjdvERzd", "QiOWaSfT"]' \
    > test.out 2>&1
eval_tap $? 378 'PublicExistsAnyMyActiveEntitlement' test.out

#- 379 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'oiiPUiJJ' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 380 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'acAxdYZS' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 381 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'LS1JppXU' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 382 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["pcS59vsJ", "9eCj8rtw", "zhxXa7XP"]' \
    --itemIds '["oAAX2lqI", "KSI8gHmq", "o1rOUv58"]' \
    --skus '["xeg3FOle", "jsCJ9uv7", "G43YXc8s"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetEntitlementOwnershipToken' test.out

#- 383 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "JwfGxomp", "language": "XL", "region": "CxJGD3S6"}' \
    > test.out 2>&1
eval_tap $? 383 'SyncTwitchDropsEntitlement' test.out

#- 384 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'cbyMdbr2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyWallet' test.out

#- 385 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'W5Ps3TI8' \
    --body '{"epicGamesJwtToken": "qUqLbCtX"}' \
    > test.out 2>&1
eval_tap $? 385 'SyncEpicGameDLC' test.out

#- 386 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'DwkWUSD1' \
    > test.out 2>&1
eval_tap $? 386 'SyncOculusDLC' test.out

#- 387 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Rccg40sl' \
    --body '{"serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 387 'PublicSyncPsnDlcInventory' test.out

#- 388 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '6zmjlNg0' \
    --body '{"serviceLabels": [89, 2, 38]}' \
    > test.out 2>&1
eval_tap $? 388 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 389 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'hHoO9ya9' \
    --body '{"appId": "htwGfbUn", "steamId": "XBiDHUpT"}' \
    > test.out 2>&1
eval_tap $? 389 'SyncSteamDLC' test.out

#- 390 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MNHnAAxw' \
    --body '{"xstsToken": "64vtHhbe"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncXboxDLC' test.out

#- 391 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'sD5j2qkA' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'qw6Ezy7K' \
    --features '["kxvb4iYe", "Eqtpy8cV", "JkDugauL"]' \
    --itemId '["UEE4ptv8", "kdNtUNvM", "V8omSzq6"]' \
    --limit '29' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 391 'PublicQueryUserEntitlements' test.out

#- 392 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JMgqthPw' \
    --appId 'qCLswfHO' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserAppEntitlementByAppId' test.out

#- 393 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'S9r4bTyu' \
    --limit '58' \
    --offset '24' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 393 'PublicQueryUserEntitlementsByAppType' test.out

#- 394 PublicGetUserEntitlementByItemId
eval_tap 0 394 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 395 PublicGetUserEntitlementBySku
eval_tap 0 395 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 396 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dZRGvQh4' \
    --appIds '["MqQU080W", "WOBw8jj6", "OCHN9y3l"]' \
    --itemIds '["j0ry0d2f", "fdgOOQ3U", "WSkFp2GQ"]' \
    --skus '["8l6uy01y", "VdpCOrZ6", "NanNprv9"]' \
    > test.out 2>&1
eval_tap $? 396 'PublicExistsAnyUserActiveEntitlement' test.out

#- 397 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2kQLwhae' \
    --appId 'iXA3ynji' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 398 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SHc4ViuV' \
    --entitlementClazz 'MEDIA' \
    --itemId 'EG3jMgap' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 399 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '3GHlj0HK' \
    --ids '["wTVtUFAW", "ckETbHhv", "Mm9apWbj"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 400 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'lIxudJo4' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'Zgh3B1LB' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 401 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '12ziN5CY' \
    --namespace $AB_NAMESPACE \
    --userId 'gJOhiS37' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlement' test.out

#- 402 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'aCVUzcU5' \
    --namespace $AB_NAMESPACE \
    --userId 'Xf3hCy1b' \
    --body '{"options": ["NcPJIiQU", "pRz5PKZ7", "2HegTNhW"], "requestId": "nWT4rVt1", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 402 'PublicConsumeUserEntitlement' test.out

#- 403 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'ZNFuKrqp' \
    --namespace $AB_NAMESPACE \
    --userId 'bLDR4Esb' \
    --body '{"requestId": "mr340uPH", "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 403 'PublicSellUserEntitlement' test.out

#- 404 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'nXZ9HJdC' \
    --body '{"code": "caYGPl58", "language": "ClQ_hjyF", "region": "HSaaxxMd"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicRedeemCode' test.out

#- 405 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Y1FJgHQ5' \
    --body '{"excludeOldTransactions": true, "language": "GHMU_HRLd", "productId": "VzjXCMOn", "receiptData": "N4ccdEIm", "region": "JxmO2SLh", "transactionId": "EExI3Dmr"}' \
    > test.out 2>&1
eval_tap $? 405 'PublicFulfillAppleIAPItem' test.out

#- 406 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '2Hsd6DXo' \
    --body '{"epicGamesJwtToken": "nCZWnfiM"}' \
    > test.out 2>&1
eval_tap $? 406 'SyncEpicGamesInventory' test.out

#- 407 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ezRbmv7e' \
    --body '{"autoAck": true, "language": "EgGw-hEZD-898", "orderId": "k1ve61bM", "packageName": "EfuxJL9h", "productId": "0lpVuv5U", "purchaseTime": 25, "purchaseToken": "gOhZbWbZ", "region": "wjNy6p8y"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicFulfillGoogleIAPItem' test.out

#- 408 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Z8pDmkaU' \
    > test.out 2>&1
eval_tap $? 408 'SyncOculusConsumableEntitlements' test.out

#- 409 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '88FGovj3' \
    --body '{"currencyCode": "buOamPlD", "price": 0.772664841000107, "productId": "wPa14Hhe", "serviceLabel": 75}' \
    > test.out 2>&1
eval_tap $? 409 'PublicReconcilePlayStationStore' test.out

#- 410 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'y8EeHU73' \
    --body '{"currencyCode": "SXHrP8E8", "price": 0.3347289370408332, "productId": "B1GJNamC", "serviceLabels": [3, 4, 38]}' \
    > test.out 2>&1
eval_tap $? 410 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 411 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GMTCh5W4' \
    --body '{"appId": "WIH224nT", "currencyCode": "KVeby35T", "language": "GlA_koyN-234", "price": 0.27543807906267437, "productId": "O1vwnBst", "region": "1WPWum99", "steamId": "LxbGnr3U"}' \
    > test.out 2>&1
eval_tap $? 411 'SyncSteamInventory' test.out

#- 412 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '7EUiBKfh' \
    --body '{"gameId": "J0YKC7xi", "language": "MgP", "region": "lWrm5eVF"}' \
    > test.out 2>&1
eval_tap $? 412 'SyncTwitchDropsEntitlement1' test.out

#- 413 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Omr9T2Rr' \
    --body '{"currencyCode": "MrBVQLb7", "price": 0.6485314994414239, "productId": "7OtdhtAF", "xstsToken": "L30PiYxS"}' \
    > test.out 2>&1
eval_tap $? 413 'SyncXboxInventory' test.out

#- 414 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'FJwIRKqf' \
    --itemId 'qxC8IZDB' \
    --limit '72' \
    --offset '86' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserOrders' test.out

#- 415 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '5ClC7X6J' \
    --body '{"currencyCode": "iAmFIwFj", "discountedPrice": 0, "ext": {"nrQp3AHj": {}, "TfCFnjkX": {}, "SMhHIUJq": {}}, "itemId": "C1alA6Om", "language": "CO-vClM_tM", "price": 90, "quantity": 73, "region": "WBZ2TnwG", "returnUrl": "hh2pFOjv", "sectionId": "nkQYN5wU"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateUserOrder' test.out

#- 416 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'P3a7g0PF' \
    --userId 'jk5tbzEn' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserOrder' test.out

#- 417 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '30Oq7RXm' \
    --userId 'R9A7lieC' \
    > test.out 2>&1
eval_tap $? 417 'PublicCancelUserOrder' test.out

#- 418 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '37uomfVF' \
    --userId 'mSTbJ4KM' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserOrderHistories' test.out

#- 419 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '8bYPk4JU' \
    --userId 'tnzwKHg5' \
    > test.out 2>&1
eval_tap $? 419 'PublicDownloadUserOrderReceipt' test.out

#- 420 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'A0UN61SN' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentAccounts' test.out

#- 421 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'Qsbzd3vM' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'nDsJG85n' \
    > test.out 2>&1
eval_tap $? 421 'PublicDeletePaymentAccount' test.out

#- 422 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '8R5qg4ed' \
    --autoCalcEstimatedPrice 'true' \
    --language '9EbHBgpX' \
    --region 'ssb3Gafe' \
    --storeId '6ikc9Sgm' \
    --viewId 'EqZoNMSe' \
    > test.out 2>&1
eval_tap $? 422 'PublicListActiveSections' test.out

#- 423 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'B5AYCtsL' \
    --chargeStatus 'NEVER' \
    --itemId 'DIOvE0Ub' \
    --limit '85' \
    --offset '11' \
    --sku '4PfKbFw9' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserSubscriptions' test.out

#- 424 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '6UlTsAru' \
    --body '{"currencyCode": "AdEexmhB", "itemId": "Ecm8Dx2p", "language": "Hv-HYCy", "region": "CJQ4asZ8", "returnUrl": "zrJOAFjT", "source": "sMWysTiV"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicSubscribeSubscription' test.out

#- 425 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '8fj1xHJz' \
    --itemId 'jHACEEif' \
    > test.out 2>&1
eval_tap $? 425 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 426 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1ASzoDYg' \
    --userId 'zvnl7Z7h' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserSubscription' test.out

#- 427 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fai2yMnL' \
    --userId 'C9jWy4E9' \
    > test.out 2>&1
eval_tap $? 427 'PublicChangeSubscriptionBillingAccount' test.out

#- 428 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Dlh4isx7' \
    --userId 'qtIZ4Ybl' \
    --body '{"immediate": false, "reason": "uJpz7X5C"}' \
    > test.out 2>&1
eval_tap $? 428 'PublicCancelSubscription' test.out

#- 429 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ofFL0sSC' \
    --userId 'wv4Sl7os' \
    --excludeFree 'false' \
    --limit '58' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserSubscriptionBillingHistories' test.out

#- 430 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'QK8hyLiH' \
    --language 'DJB9aYEH' \
    --storeId 'XUI1ja1c' \
    > test.out 2>&1
eval_tap $? 430 'PublicListViews' test.out

#- 431 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'EgoJaX3e' \
    --namespace $AB_NAMESPACE \
    --userId '1XJYI8OI' \
    > test.out 2>&1
eval_tap $? 431 'PublicGetWallet' test.out

#- 432 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '4zAfKkWi' \
    --namespace $AB_NAMESPACE \
    --userId 'dtJN0PyF' \
    --limit '95' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 432 'PublicListUserWalletTransactions' test.out

#- 433 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'FYAZnW7T' \
    --baseAppId 'pTcd5GkS' \
    --categoryPath 'wCwhLGld' \
    --features '16dU2qZk' \
    --includeSubCategoryItem 'true' \
    --itemName 'kWcRzSDe' \
    --itemStatus 'ACTIVE' \
    --itemType 'EXTENSION' \
    --limit '97' \
    --offset '67' \
    --region '0GQs1979' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:desc", "updatedAt:asc", "createdAt:asc"]' \
    --storeId 'ZrwNjlO5' \
    --tags 'y7RS3Cbg' \
    --targetNamespace 'BBuNPiA4' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 433 'QueryItems1' test.out

#- 434 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'NzbAjVBQ' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 434 'ImportStore1' test.out

#- 435 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'hjvyps83' \
    --body '{"itemIds": ["eHhCHrya", "43RhoeGS", "g52OkEnx"]}' \
    > test.out 2>&1
eval_tap $? 435 'ExportStore1' test.out

#- 436 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BHFUkWmF' \
    --body '{"entitlementOrigin": "Xbox", "metadata": {"taxfoQxq": {}, "uU8bAKFq": {}, "6p9CAZ2U": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "TPBFL6lA", "namespace": "CXb2x9Ay"}, "item": {"itemId": "8hqccVEk", "itemSku": "ek04zb0k", "itemType": "WsL5BVcK"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "BoiJw7zq", "namespace": "Pib4VIiv"}, "item": {"itemId": "9n68X0kj", "itemSku": "cxEzCZZl", "itemType": "HF6QE7Y1"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "tIihdcMt", "namespace": "9PGovCPR"}, "item": {"itemId": "H9su4ksd", "itemSku": "7xkfRawu", "itemType": "fVIakuDa"}, "quantity": 43, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "7NBscGWD"}' \
    > test.out 2>&1
eval_tap $? 436 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE