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
echo "1..445"

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
    --id 'tsCWbIQy' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'OYRB7A8z' \
    --body '{"grantDays": "TLiryLlo"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'O06rJ9VE' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'CNzMFMpg' \
    --body '{"grantDays": "ZX7l5aAg"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "Ma2QIsko", "dryRun": true, "fulfillmentUrl": "tnU3z3lP", "itemType": "MEDIA", "purchaseConditionUrl": "w6IuDApZ"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'KAaMAgyg' \
    --itemType 'OPTIONBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'UszjOKoZ' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'JDYouDYx' \
    --body '{"clazz": "tPPgq5IV", "dryRun": true, "fulfillmentUrl": "IBRJmMnH", "purchaseConditionUrl": "ZdQDPHJc"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'zyBtgH8w' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --name 'trt61dcS' \
    --offset '9' \
    --tag '9gCsjgcs' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "NDpsOyRI", "items": [{"extraSubscriptionDays": 21, "itemId": "A2fcE8tG", "itemName": "GhnpROA3", "quantity": 87}, {"extraSubscriptionDays": 60, "itemId": "ZidlPOT4", "itemName": "ydi4Qf6M", "quantity": 36}, {"extraSubscriptionDays": 34, "itemId": "gEqpGIYA", "itemName": "5qk9txPp", "quantity": 4}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 42, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 74, "name": "nsgEzdhW", "redeemEnd": "1991-12-05T00:00:00Z", "redeemStart": "1999-10-08T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["6QNl2ThY", "EXArDvBI", "HAPNnp4c"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'cxYqZxLe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '9biqfpDZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "idkQe8um", "items": [{"extraSubscriptionDays": 62, "itemId": "NLmLxJRH", "itemName": "dEJATyk1", "quantity": 75}, {"extraSubscriptionDays": 80, "itemId": "mymlT9AQ", "itemName": "rABx3hLM", "quantity": 27}, {"extraSubscriptionDays": 73, "itemId": "mIxFvlyI", "itemName": "1OPWVsNq", "quantity": 58}], "maxRedeemCountPerCampaignPerUser": 79, "maxRedeemCountPerCode": 51, "maxRedeemCountPerCodePerUser": 65, "maxSaleCount": 81, "name": "kESoFQZA", "redeemEnd": "1997-02-25T00:00:00Z", "redeemStart": "1982-09-08T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["pt2YGYLq", "UQvIhwNA", "G5xpRbQh"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'OEwmU4E5' \
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
    --body '{"appConfig": {"appName": "9n1UgUO9"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "IxYo9oF1"}, "extendType": "APP"}' \
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
    --force 'true' \
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
    --body '{"appConfig": {"appName": "6ImM7jks"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "CxxhFrHC"}, "extendType": "CUSTOM"}' \
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
    --storeId '5ORd5pAI' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'DTxhOdIV' \
    --body '{"categoryPath": "R0Wl77E0", "localizationDisplayNames": {"b0yGJNMf": "JzeBA3B8", "ecKfy4DZ": "crpfoIhh", "GdibrCLU": "8e8wMu6K"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'YqSq4DnX' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'NDuLEfSQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'fPf0WQOv' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'Bsmdqd9O' \
    --namespace $AB_NAMESPACE \
    --storeId 'UqYfRQnp' \
    --body '{"localizationDisplayNames": {"rtpTuBGs": "NUcERfhn", "Ywcq4HUU": "OwyhRSj7", "nGVhWgGt": "uMPgIHCm"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'BQrbNRjh' \
    --namespace $AB_NAMESPACE \
    --storeId 'p6bSJotW' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'O1iWbL38' \
    --namespace $AB_NAMESPACE \
    --storeId 'daju3kET' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'KFGL9m0w' \
    --namespace $AB_NAMESPACE \
    --storeId 'XmOnU407' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '11wIoNc4' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '56' \
    --code '8GC59ZWF' \
    --limit '86' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '8YoBeDUj' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 35}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'J0Hs0G8L' \
    --namespace $AB_NAMESPACE \
    --batchNo '55' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'IXj3oEZH' \
    --namespace $AB_NAMESPACE \
    --batchNo '76' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'eCKKXXYw' \
    --namespace $AB_NAMESPACE \
    --batchNo '43' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'KaulnEZl' \
    --namespace $AB_NAMESPACE \
    --code '0Z0BAhUL' \
    --limit '9' \
    --offset '55' \
    --userId '9Uafdr9N' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'vyLdYumM' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ucTmd6ug' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '2HuXyplz' \
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
    --body '{"currencyCode": "mvsXX9lm", "currencySymbol": "f0UZTcK4", "currencyType": "VIRTUAL", "decimals": 76, "localizationDescriptions": {"Ff9OUdfH": "LMnX8Qaj", "t16mG32m": "NztbgGGL", "SJHTxdcy": "nJ7To7Fy"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '8IVTII0d' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"QvwVDZNc": "70q0MOGn", "dncS98Ly": "PPze6rXS", "Ahw5FlIp": "kCXpzPh1"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'YiaH4Pgn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'oGgpLXPa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '4j2vl2uP' \
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
    --body '{"data": [{"id": "guzxgkGN", "rewards": [{"currency": {"currencyCode": "3Hc0bPI5", "namespace": "03wRCCLs"}, "item": {"itemId": "mDjmHIkV", "itemSku": "agO2rNlh", "itemType": "ie48BCGg"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "uUgK0wjb", "namespace": "kiAxmNMZ"}, "item": {"itemId": "S387xMFM", "itemSku": "IC3SJdR9", "itemType": "BuUK6g7m"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"currencyCode": "6fhjiEUM", "namespace": "hSSzQRWj"}, "item": {"itemId": "xdKUjKiN", "itemSku": "A7YxhYmX", "itemType": "kbRB76TW"}, "quantity": 47, "type": "ITEM"}]}, {"id": "uTOS8WrU", "rewards": [{"currency": {"currencyCode": "YmJsKDXh", "namespace": "hCs1cFnr"}, "item": {"itemId": "Z0w0YvGk", "itemSku": "X9QQzQgs", "itemType": "Oen26XxC"}, "quantity": 62, "type": "CURRENCY"}, {"currency": {"currencyCode": "hOfQ1NoC", "namespace": "cMMdfZcQ"}, "item": {"itemId": "ymDe10XT", "itemSku": "TdVPMYap", "itemType": "7BC34fKl"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "SJINvDGf", "namespace": "5E8KLjrK"}, "item": {"itemId": "BqPFfdQi", "itemSku": "i4zYiR3O", "itemType": "kQz3s1k2"}, "quantity": 6, "type": "CURRENCY"}]}, {"id": "5L2GvrC4", "rewards": [{"currency": {"currencyCode": "QRAx9BfB", "namespace": "Wj5pHRsU"}, "item": {"itemId": "t3Gl5eYq", "itemSku": "KUH7RCDJ", "itemType": "UskTqVzR"}, "quantity": 32, "type": "CURRENCY"}, {"currency": {"currencyCode": "mR6MVjD1", "namespace": "JRT6gNc4"}, "item": {"itemId": "F0cIR9FV", "itemSku": "BgRdG1bb", "itemType": "MAbFCF9J"}, "quantity": 82, "type": "ITEM"}, {"currency": {"currencyCode": "9VDMcnEM", "namespace": "Bz0FbJBC"}, "item": {"itemId": "wuLwxdUX", "itemSku": "zZAllUlB", "itemType": "I1V23ntp"}, "quantity": 71, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"7vkassnI": "v12Nx2ZL", "lUiV83O0": "mAOeXTXy", "ArAf2mnu": "OBbW3qlx"}}, {"platform": "STEAM", "platformDlcIdMap": {"Mlla4ZB4": "CJelnkJK", "BNoBNNin": "Cbd3hYJg", "PpkexzTW": "MNySBy4L"}}, {"platform": "PSN", "platformDlcIdMap": {"cXTSBko5": "w8ph2aGL", "iXdCx3mf": "79qmoyhC", "R6cdgwJo": "6ZO885Mn"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'BTBlAKAb' \
    --itemId '["jXvaqmXe", "dD6CX1pp", "7xjq7NVf"]' \
    --limit '15' \
    --offset '28' \
    --origin 'Twitch' \
    --userId 'G0heLsuh' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["dJN7JSOt", "JTSJEW14", "wIPecpYL"]' \
    --limit '23' \
    --offset '23' \
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
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 62 'GetEntitlementConfigInfo' test.out

#- 63 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "4PyrOmok", "endDate": "1988-12-05T00:00:00Z", "grantedCode": "X4f8fCyM", "itemId": "08ZzX1oy", "itemNamespace": "qqSSuvSN", "language": "gMYs-ucso", "origin": "GooglePlay", "quantity": 22, "region": "xO9BAcfX", "source": "IAP", "startDate": "1980-10-20T00:00:00Z", "storeId": "BXLc1mRW"}, {"collectionId": "YdfGS1sk", "endDate": "1973-03-03T00:00:00Z", "grantedCode": "mnoriVvS", "itemId": "NMKskW2G", "itemNamespace": "osCJ7rPh", "language": "lEp_NDLg", "origin": "Xbox", "quantity": 77, "region": "UAwzMiBG", "source": "PURCHASE", "startDate": "1976-02-15T00:00:00Z", "storeId": "xbGTfJm2"}, {"collectionId": "XCHUWDBu", "endDate": "1976-06-26T00:00:00Z", "grantedCode": "c0QwKoMB", "itemId": "KGWuTpBr", "itemNamespace": "gVzwh5Yk", "language": "BtmZ-KZEm", "origin": "IOS", "quantity": 67, "region": "Zz4LWWKc", "source": "PURCHASE", "startDate": "1991-02-21T00:00:00Z", "storeId": "o1h48a38"}], "userIds": ["U8J7TkTg", "VaEEwTRq", "dWQdu6o6"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["smonvQPu", "KfbrYLUQ", "NxBDHzS2"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'gVEJhOKy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '56' \
    --status 'SUCCESS' \
    --userId 'U64roJqF' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'DPfq5DHl' \
    --eventType 'OTHER' \
    --externalOrderId 'rceJ0BCk' \
    --limit '5' \
    --offset '86' \
    --startTime 'O7pz7wDm' \
    --status 'SUCCESS' \
    --userId 'InhXdq8X' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "qssuyQb9", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 11, "clientTransactionId": "GRLDXxbd"}, {"amountConsumed": 25, "clientTransactionId": "4EW8YZE7"}, {"amountConsumed": 74, "clientTransactionId": "getbsepq"}], "entitlementId": "uCN9LpBF", "usageCount": 5}, {"clientTransaction": [{"amountConsumed": 69, "clientTransactionId": "rhR2fWhm"}, {"amountConsumed": 98, "clientTransactionId": "Ggr3EDU9"}, {"amountConsumed": 88, "clientTransactionId": "kmfzBfHw"}], "entitlementId": "dzKGmJcO", "usageCount": 45}, {"clientTransaction": [{"amountConsumed": 54, "clientTransactionId": "JNNmxx8n"}, {"amountConsumed": 100, "clientTransactionId": "GIiAkBWm"}, {"amountConsumed": 66, "clientTransactionId": "EmhGgZ7m"}], "entitlementId": "YylSc92s", "usageCount": 31}], "purpose": "clooAQe1"}, "originalTitleName": "7v1Pj1Cr", "paymentProductSKU": "WJ1kyNFw", "purchaseDate": "muBPOlGT", "sourceOrderItemId": "yGnaddTT", "titleName": "8hJTvDWO"}, "eventDomain": "EeGyzBuP", "eventSource": "mHjPk6DM", "eventType": "GQdPCGdY", "eventVersion": 89, "id": "nsnQZN97", "timestamp": "oTg7Y7oR"}' \
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
    --body '{"bundleId": "dAjTZcet", "password": "BN7FAhh3"}' \
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
    --body '{"sandboxId": "XKbNsB6h"}' \
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
    --body '{"applicationName": "i2b2WnQ3", "serviceAccountId": "aAUk0Fj9"}' \
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
    --body '{"data": [{"itemIdentity": "1dPihBmR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Wz1kugc2": "xVBqRvcL", "5DdQdyLy": "TFKRUOoo", "W28mBz6K": "uphKbC80"}}, {"itemIdentity": "V16V2gpq", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"a2LfM27z": "KQ810syk", "thRBYxUB": "XyXuBorW", "HNAfMvvm": "IHGrbizM"}}, {"itemIdentity": "QTkZpZYP", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"UwubEh8u": "nIrCS3vQ", "rvJ8YOyE": "bNUNb6MB", "VZYXoo3A": "CF3jRmvS"}}]}' \
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
    --body '{"appId": "77bvtPHy", "appSecret": "rCo4CVe7"}' \
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
    --body '{"backOfficeServerClientId": "rO8DlR15", "backOfficeServerClientSecret": "1yasFKHu", "enableStreamJob": false, "environment": "fOtl8fyV", "streamName": "Ob14vK2V", "streamPartnerName": "ROa4SutM"}' \
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
    --body '{"backOfficeServerClientId": "thmczMrs", "backOfficeServerClientSecret": "prc0Lrkc", "enableStreamJob": true, "environment": "9Ch0yATA", "streamName": "0dhJUMx8", "streamPartnerName": "Y51K1bfR"}' \
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
    --body '{"appId": "P62mqjKN", "publisherAuthenticationKey": "XxwFO5di"}' \
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
    --body '{"clientId": "rXBTZpg3", "clientSecret": "INq2KarH", "organizationId": "2bd9SjF3"}' \
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
    --body '{"relyingPartyCert": "VIQmw6yr"}' \
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
    --password '3SMic1e0' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'vrDdkANQ' \
    --itemId 'Vwtc8N6z' \
    --itemType 'SUBSCRIPTION' \
    --endTime 'AyIZzyMB' \
    --startTime 'Nod5uHVv' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'fJleTzSp' \
    --itemId 'iMXZshtP' \
    --itemType 'OPTIONBOX' \
    --endTime '0lcqsJ2E' \
    --startTime 'D1GNEDvn' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'kV1sV5np' \
    --body '{"categoryPath": "3o4sdeiX", "targetItemId": "2yOuZJfK", "targetNamespace": "c2UOpkBt"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'wZ1X2PP1' \
    --body '{"appId": "HpfvNYsW", "appType": "SOFTWARE", "baseAppId": "FqY0Yk85", "boothName": "dXdWKncj", "categoryPath": "VrIGZlYl", "clazz": "09fYe3rp", "displayOrder": 21, "entitlementType": "CONSUMABLE", "ext": {"vhzNvJ4M": {}, "1aFI76ij": {}, "jEbfbQQd": {}}, "features": ["haCDjGAI", "u9XnS4eB", "Y5MUwcAW"], "flexible": true, "images": [{"as": "YQT1dahA", "caption": "ggQCUtmj", "height": 81, "imageUrl": "Hid9JuAn", "smallImageUrl": "q7Vu7Kph", "width": 42}, {"as": "fR8YAbo7", "caption": "PCUZyxGc", "height": 44, "imageUrl": "kwyrBDk0", "smallImageUrl": "iXIeDBHu", "width": 73}, {"as": "10gZJ0VQ", "caption": "fhyMtHDR", "height": 88, "imageUrl": "4RqUGqB6", "smallImageUrl": "e3OBUZpG", "width": 87}], "inventoryConfig": {"customAttributes": {"IrtsocRq": {}, "PYPwzDM7": {}, "UUVJOTwJ": {}}, "serverCustomAttributes": {"S6ReO82u": {}, "OA0RThez": {}, "M7X73vhM": {}}, "slotUsed": 3}, "itemIds": ["lYPi7Vx0", "eMXE1kl7", "0Wolr0Fa"], "itemQty": {"NhvwxiTv": 67, "i3nAnz1Q": 35, "Q0804vAl": 58}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"ybNNiftT": {"description": "NBLb0SN9", "localExt": {"796DneRj": {}, "5KGbYHe7": {}, "x5Pncaxr": {}}, "longDescription": "pDAWuZG3", "title": "9ajtrAjV"}, "Vb4wG5co": {"description": "n9sowAP1", "localExt": {"c0Hd2rZi": {}, "5mAnBOjd": {}, "Vi41iGaP": {}}, "longDescription": "suaJ9MUu", "title": "s2JctJnw"}, "IqOxGxvf": {"description": "VHO44OVV", "localExt": {"hLpLcnSS": {}, "nXmtGuQD": {}, "TRlPZgbd": {}}, "longDescription": "DoBNAiGL", "title": "1f3gGCRi"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 78, "endDate": "1981-01-11T00:00:00Z", "itemId": "ia3VUOiw", "itemSku": "6BakkZ2z", "itemType": "bPwa0ffS"}, {"count": 27, "duration": 19, "endDate": "1990-08-22T00:00:00Z", "itemId": "ZeDknDTB", "itemSku": "qtCYETLQ", "itemType": "AhSmkr5G"}, {"count": 64, "duration": 64, "endDate": "1973-11-06T00:00:00Z", "itemId": "7g2q01V4", "itemSku": "ZSp0jXOV", "itemType": "oTSdJBNP"}], "name": "WXGbjZzZ", "odds": 0.5720982285094095, "type": "PROBABILITY_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 78, "duration": 58, "endDate": "1982-07-16T00:00:00Z", "itemId": "Hq1CpFKO", "itemSku": "cLWLKBGQ", "itemType": "nRcJYYrX"}, {"count": 57, "duration": 28, "endDate": "1990-04-03T00:00:00Z", "itemId": "26XugJ0S", "itemSku": "juK2jBYz", "itemType": "JU8IBC8A"}, {"count": 65, "duration": 63, "endDate": "1992-05-13T00:00:00Z", "itemId": "6vYjxXSU", "itemSku": "RpevJGJi", "itemType": "wfsPB7Sa"}], "name": "CdrvGjUj", "odds": 0.1779652028642762, "type": "PROBABILITY_GROUP", "weight": 35}, {"lootBoxItems": [{"count": 58, "duration": 74, "endDate": "1976-05-11T00:00:00Z", "itemId": "B4cdlgv7", "itemSku": "MIZ0aAYo", "itemType": "8iLFCd1R"}, {"count": 45, "duration": 11, "endDate": "1971-06-19T00:00:00Z", "itemId": "dJLaRsZs", "itemSku": "IY03WOQ3", "itemType": "k32Jf6q9"}, {"count": 79, "duration": 15, "endDate": "1996-05-24T00:00:00Z", "itemId": "Ujitlhxk", "itemSku": "I7Sr4ZBg", "itemType": "8l42eTHk"}], "name": "D2vgLAM1", "odds": 0.5604217721964974, "type": "PROBABILITY_GROUP", "weight": 53}], "rollFunction": "DEFAULT"}, "maxCount": 24, "maxCountPerUser": 91, "name": "7LYzwDh7", "optionBoxConfig": {"boxItems": [{"count": 44, "duration": 89, "endDate": "1987-12-30T00:00:00Z", "itemId": "ZUno3WTw", "itemSku": "7RXdXkSL", "itemType": "d1BvFwtj"}, {"count": 28, "duration": 39, "endDate": "1979-08-22T00:00:00Z", "itemId": "tnu7k7dM", "itemSku": "SjvZkWJl", "itemType": "zTxbbceq"}, {"count": 33, "duration": 28, "endDate": "1975-05-22T00:00:00Z", "itemId": "XhqRd7ew", "itemSku": "Op7OjYv5", "itemType": "Yks2PrNP"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 90, "fixedTrialCycles": 98, "graceDays": 100}, "regionData": {"ElF8pX0A": [{"currencyCode": "3gvhOH4F", "currencyNamespace": "6EmPpU9f", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1993-05-24T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1987-10-15T00:00:00Z", "expireAt": "1974-03-03T00:00:00Z", "price": 59, "purchaseAt": "1980-03-21T00:00:00Z", "trialPrice": 8}, {"currencyCode": "xpwkv4J2", "currencyNamespace": "FSPOK0ep", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1972-08-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-06-15T00:00:00Z", "expireAt": "1997-01-30T00:00:00Z", "price": 60, "purchaseAt": "1996-04-12T00:00:00Z", "trialPrice": 64}, {"currencyCode": "iH66NCu8", "currencyNamespace": "SQ2Hd7VW", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1971-02-26T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1981-11-29T00:00:00Z", "expireAt": "1972-06-12T00:00:00Z", "price": 47, "purchaseAt": "1980-10-30T00:00:00Z", "trialPrice": 83}], "9lDg7Xio": [{"currencyCode": "kGK3XKfP", "currencyNamespace": "dvky8tXF", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1987-04-06T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1974-11-29T00:00:00Z", "expireAt": "1984-11-19T00:00:00Z", "price": 81, "purchaseAt": "1977-08-12T00:00:00Z", "trialPrice": 35}, {"currencyCode": "IKtEGNyK", "currencyNamespace": "NceIGxXV", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1989-02-25T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1988-02-01T00:00:00Z", "expireAt": "1994-09-05T00:00:00Z", "price": 87, "purchaseAt": "1974-06-20T00:00:00Z", "trialPrice": 42}, {"currencyCode": "dA1EmHuO", "currencyNamespace": "y9JdhGGs", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1977-07-25T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1991-08-21T00:00:00Z", "expireAt": "1986-03-11T00:00:00Z", "price": 42, "purchaseAt": "1983-11-02T00:00:00Z", "trialPrice": 86}], "TqUgPpvn": [{"currencyCode": "Ejf9zuOi", "currencyNamespace": "5qz4oudn", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1978-02-21T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1996-01-24T00:00:00Z", "expireAt": "1998-11-21T00:00:00Z", "price": 51, "purchaseAt": "1976-10-17T00:00:00Z", "trialPrice": 42}, {"currencyCode": "EjlRsCks", "currencyNamespace": "7FdWqBxx", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1971-03-19T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-04-26T00:00:00Z", "expireAt": "1976-05-03T00:00:00Z", "price": 58, "purchaseAt": "1987-09-01T00:00:00Z", "trialPrice": 33}, {"currencyCode": "TSoC0VJj", "currencyNamespace": "Rv6k7sdI", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1983-04-30T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1998-11-03T00:00:00Z", "expireAt": "1991-07-14T00:00:00Z", "price": 59, "purchaseAt": "1986-04-14T00:00:00Z", "trialPrice": 27}]}, "saleConfig": {"currencyCode": "L6ypX98q", "price": 82}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "PB5j2Hjc", "stackable": false, "status": "INACTIVE", "tags": ["S5BzSyGP", "xeKw2Iha", "8IEMbs2T"], "targetCurrencyCode": "9kvx13yA", "targetNamespace": "JSWA4pd1", "thumbnailUrl": "6d2Ikz9A", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '9jvSdN2o' \
    --appId 'sSRYmRRj' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'xUk10W4S' \
    --baseAppId 'jMUs4Vsd' \
    --categoryPath 'NBkaV72E' \
    --features 'XN7O4eMc' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --limit '2' \
    --offset '72' \
    --region 'vmTdVADT' \
    --sortBy '["displayOrder:asc", "name", "createdAt:asc"]' \
    --storeId 'MctGAglb' \
    --tags 'ozJ7efD2' \
    --targetNamespace 'OXkK4B3E' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["QCSCZRN2", "4tigEWqR", "3XldaFvL"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'iPTxOIAT' \
    --itemIds 'PPeyY2w2' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'JE8v7WbX' \
    --sku 'ufPjo7lJ' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'QuvT1NCx' \
    --populateBundle 'true' \
    --region 'ZuecjmpD' \
    --storeId '42T89yDQ' \
    --sku 'wbI1P0MB' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'iRRqp0O9' \
    --region 'GUJbCIjw' \
    --storeId '7Q3R1nr2' \
    --itemIds 'kxnAMfhq' \
    --userId '0Ap6FoAc' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'vbQbYGre' \
    --sku 'bXu7ZLaI' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["gpZrIq3a", "uOukrx3P", "w4eCBbiH"]' \
    --storeId '93CmGlnD' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'uCsidSXn' \
    --region 'ivEOyK1a' \
    --storeId 'ZV3MIqYx' \
    --itemIds 'pnEOndYG' \
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
    --platform 'MD3yPbs0' \
    --userId 'kchRxWh6' \
    --body '{"itemIds": ["8NLyPpcl", "LWpS1mP9", "Tih0LAg7"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'kJyOrCiv' \
    --body '{"changes": [{"itemIdentities": ["fWeZ2BVo", "HcgBLW7p", "xHEmACSj"], "itemIdentityType": "ITEM_SKU", "regionData": {"UdEzD5V3": [{"currencyCode": "mxkcnfFO", "currencyNamespace": "seWEC63h", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1999-07-12T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1999-10-22T00:00:00Z", "discountedPrice": 28, "expireAt": "1997-05-05T00:00:00Z", "price": 69, "purchaseAt": "1984-08-28T00:00:00Z", "trialPrice": 63}, {"currencyCode": "VCPseqrc", "currencyNamespace": "etsV4W2C", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1983-09-28T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1996-03-02T00:00:00Z", "discountedPrice": 76, "expireAt": "1975-08-27T00:00:00Z", "price": 77, "purchaseAt": "1988-07-19T00:00:00Z", "trialPrice": 46}, {"currencyCode": "p2s40GBj", "currencyNamespace": "UoOL93gI", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1978-12-18T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1980-06-20T00:00:00Z", "discountedPrice": 93, "expireAt": "1989-11-30T00:00:00Z", "price": 95, "purchaseAt": "1974-09-09T00:00:00Z", "trialPrice": 81}], "E3uuBiLN": [{"currencyCode": "KU6tx8ac", "currencyNamespace": "e2fBu0qn", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1998-07-03T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1981-11-18T00:00:00Z", "discountedPrice": 71, "expireAt": "1971-10-29T00:00:00Z", "price": 42, "purchaseAt": "1985-12-12T00:00:00Z", "trialPrice": 91}, {"currencyCode": "rT6LLyN5", "currencyNamespace": "EYUSqbul", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1999-02-09T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1999-08-10T00:00:00Z", "discountedPrice": 27, "expireAt": "1980-11-04T00:00:00Z", "price": 32, "purchaseAt": "1998-05-03T00:00:00Z", "trialPrice": 71}, {"currencyCode": "0z8xUKlO", "currencyNamespace": "rmHilI8a", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1998-07-14T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1989-12-08T00:00:00Z", "discountedPrice": 28, "expireAt": "1983-04-29T00:00:00Z", "price": 11, "purchaseAt": "1975-02-15T00:00:00Z", "trialPrice": 64}], "YEIcIvaa": [{"currencyCode": "fmLl4glY", "currencyNamespace": "T222d6U9", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1990-03-28T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1978-02-18T00:00:00Z", "discountedPrice": 1, "expireAt": "1998-07-10T00:00:00Z", "price": 40, "purchaseAt": "1982-07-30T00:00:00Z", "trialPrice": 89}, {"currencyCode": "DSelf4Au", "currencyNamespace": "pU833hGg", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1990-09-28T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1996-10-09T00:00:00Z", "discountedPrice": 3, "expireAt": "1995-07-08T00:00:00Z", "price": 54, "purchaseAt": "1993-02-02T00:00:00Z", "trialPrice": 40}, {"currencyCode": "Vn1SzWOk", "currencyNamespace": "L92mz8SW", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1975-04-30T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1971-05-24T00:00:00Z", "discountedPrice": 20, "expireAt": "1992-03-21T00:00:00Z", "price": 9, "purchaseAt": "1996-07-21T00:00:00Z", "trialPrice": 19}]}}, {"itemIdentities": ["1eR22vMa", "2N77K33j", "cdyEErKk"], "itemIdentityType": "ITEM_SKU", "regionData": {"mkw3haN0": [{"currencyCode": "Zn7Iczkh", "currencyNamespace": "pnixDX2c", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1986-06-28T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1995-11-29T00:00:00Z", "discountedPrice": 18, "expireAt": "1999-06-30T00:00:00Z", "price": 49, "purchaseAt": "1991-06-09T00:00:00Z", "trialPrice": 14}, {"currencyCode": "RyWjC0xd", "currencyNamespace": "UihaxncJ", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1980-02-06T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1975-05-27T00:00:00Z", "discountedPrice": 44, "expireAt": "1977-11-05T00:00:00Z", "price": 20, "purchaseAt": "1989-09-10T00:00:00Z", "trialPrice": 8}, {"currencyCode": "1Fif1E8F", "currencyNamespace": "7jx5llQI", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1978-08-09T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1987-11-19T00:00:00Z", "discountedPrice": 14, "expireAt": "1998-02-25T00:00:00Z", "price": 50, "purchaseAt": "1986-08-14T00:00:00Z", "trialPrice": 35}], "ILSbdPEZ": [{"currencyCode": "REkKBZ7o", "currencyNamespace": "S9IYiroh", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1981-12-25T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1991-09-21T00:00:00Z", "discountedPrice": 6, "expireAt": "1999-05-17T00:00:00Z", "price": 84, "purchaseAt": "1996-11-08T00:00:00Z", "trialPrice": 44}, {"currencyCode": "C3nC7Uii", "currencyNamespace": "VCVN1SfG", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1985-11-29T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1986-09-26T00:00:00Z", "discountedPrice": 1, "expireAt": "1974-08-20T00:00:00Z", "price": 99, "purchaseAt": "1974-03-19T00:00:00Z", "trialPrice": 41}, {"currencyCode": "aFgWHfEp", "currencyNamespace": "vSM4Dw2t", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1991-10-10T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1997-04-22T00:00:00Z", "discountedPrice": 31, "expireAt": "1995-05-12T00:00:00Z", "price": 85, "purchaseAt": "1979-11-26T00:00:00Z", "trialPrice": 34}], "1IJ9C4Ij": [{"currencyCode": "MOM1ZMRX", "currencyNamespace": "zBmkjTSq", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1976-08-14T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1989-07-22T00:00:00Z", "discountedPrice": 55, "expireAt": "1988-08-30T00:00:00Z", "price": 26, "purchaseAt": "1998-01-20T00:00:00Z", "trialPrice": 62}, {"currencyCode": "Qfef6Q9L", "currencyNamespace": "HQ02GBoi", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1986-11-24T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1999-11-04T00:00:00Z", "discountedPrice": 34, "expireAt": "1978-07-30T00:00:00Z", "price": 50, "purchaseAt": "1979-04-20T00:00:00Z", "trialPrice": 96}, {"currencyCode": "G3Ry0zks", "currencyNamespace": "BC2jJ5oA", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1971-03-06T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1991-01-27T00:00:00Z", "discountedPrice": 100, "expireAt": "1997-09-18T00:00:00Z", "price": 58, "purchaseAt": "1991-10-02T00:00:00Z", "trialPrice": 6}]}}, {"itemIdentities": ["Y0hbNjpB", "8mwzyipH", "HFfrU4vQ"], "itemIdentityType": "ITEM_SKU", "regionData": {"eG4CTXBb": [{"currencyCode": "DtlCTVLf", "currencyNamespace": "bTzb4x38", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1975-07-22T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1977-02-24T00:00:00Z", "discountedPrice": 97, "expireAt": "1971-03-15T00:00:00Z", "price": 91, "purchaseAt": "1973-07-25T00:00:00Z", "trialPrice": 71}, {"currencyCode": "uqeJzPdp", "currencyNamespace": "0NnyQTWF", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1973-09-08T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1986-12-27T00:00:00Z", "discountedPrice": 47, "expireAt": "1989-06-14T00:00:00Z", "price": 100, "purchaseAt": "1972-01-23T00:00:00Z", "trialPrice": 82}, {"currencyCode": "iH3BrdY9", "currencyNamespace": "3dOtSLGO", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1991-10-04T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1990-08-14T00:00:00Z", "discountedPrice": 17, "expireAt": "1977-02-10T00:00:00Z", "price": 67, "purchaseAt": "1971-03-24T00:00:00Z", "trialPrice": 100}], "c9fB5SIL": [{"currencyCode": "rGdfBtZx", "currencyNamespace": "y6iCOqIJ", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1981-03-09T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1980-03-14T00:00:00Z", "discountedPrice": 8, "expireAt": "1983-10-31T00:00:00Z", "price": 36, "purchaseAt": "1998-02-27T00:00:00Z", "trialPrice": 68}, {"currencyCode": "BwVkmSvZ", "currencyNamespace": "hTkRhw9o", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1971-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-04-14T00:00:00Z", "discountedPrice": 71, "expireAt": "1985-05-13T00:00:00Z", "price": 97, "purchaseAt": "1981-04-30T00:00:00Z", "trialPrice": 23}, {"currencyCode": "q5uguQ3x", "currencyNamespace": "OO47bMdB", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1986-07-13T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1973-08-06T00:00:00Z", "discountedPrice": 61, "expireAt": "1976-03-22T00:00:00Z", "price": 70, "purchaseAt": "1975-10-26T00:00:00Z", "trialPrice": 42}], "YlDCHylv": [{"currencyCode": "3yrBjfo7", "currencyNamespace": "3FSVT5ts", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1988-01-22T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1988-12-02T00:00:00Z", "discountedPrice": 100, "expireAt": "1978-11-19T00:00:00Z", "price": 96, "purchaseAt": "1980-06-22T00:00:00Z", "trialPrice": 37}, {"currencyCode": "xva66t3Z", "currencyNamespace": "ZzGY9A7U", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1985-01-02T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1993-05-08T00:00:00Z", "discountedPrice": 44, "expireAt": "1996-07-01T00:00:00Z", "price": 62, "purchaseAt": "1973-11-30T00:00:00Z", "trialPrice": 4}, {"currencyCode": "FiQAkgkS", "currencyNamespace": "MvWpQjOp", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1996-05-16T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1981-11-07T00:00:00Z", "discountedPrice": 70, "expireAt": "1980-06-17T00:00:00Z", "price": 80, "purchaseAt": "1987-09-01T00:00:00Z", "trialPrice": 36}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '11' \
    --offset '51' \
    --sortBy 'jRlXVUaM' \
    --storeId 'lkDtZi2Q' \
    --keyword 'IFJO7xal' \
    --language 'A48St6mF' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '59' \
    --offset '48' \
    --sortBy '["updatedAt", "name", "name:asc"]' \
    --storeId '5jOSwffE' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '688c5OT0' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'rNlha9Cx' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'tXCNzI4s' \
    --namespace $AB_NAMESPACE \
    --storeId 'okWN14Wd' \
    --body '{"appId": "SAPaD2fM", "appType": "DEMO", "baseAppId": "22G6S4cx", "boothName": "nQg80kjf", "categoryPath": "euetBbF3", "clazz": "b8Sb4F0z", "displayOrder": 63, "entitlementType": "DURABLE", "ext": {"UFvyLpJn": {}, "fVTbk71A": {}, "aXGBAoyk": {}}, "features": ["HNo5tfrH", "boGAE38A", "9ccl1R5q"], "flexible": true, "images": [{"as": "CIl49pVW", "caption": "tntlthvY", "height": 32, "imageUrl": "7bXUd7mz", "smallImageUrl": "MGpHg3z2", "width": 86}, {"as": "5QhlkZ4f", "caption": "0JDGRnPD", "height": 38, "imageUrl": "HqYHmiCh", "smallImageUrl": "Z0CIfCi0", "width": 84}, {"as": "GKmCOooO", "caption": "Np3UUS9X", "height": 14, "imageUrl": "B4j89yqT", "smallImageUrl": "EI046zla", "width": 47}], "inventoryConfig": {"customAttributes": {"HZoMijOS": {}, "6w2zR4bM": {}, "8NlrAqEs": {}}, "serverCustomAttributes": {"qUSMRtLO": {}, "WFhY6xle": {}, "BJm0dtqd": {}}, "slotUsed": 75}, "itemIds": ["KuTxEJHZ", "XJfr6T0P", "zs4JSgzm"], "itemQty": {"tCQgyMRq": 63, "OZfmlDvc": 92, "e06Mri5E": 42}, "itemType": "BUNDLE", "listable": false, "localizations": {"g4c9jxAM": {"description": "QOGzW07O", "localExt": {"2WSlxjyw": {}, "KLLhvWp6": {}, "vMtjwVAS": {}}, "longDescription": "SzKRjLTB", "title": "9mZ9Wn31"}, "Wezwre6p": {"description": "ZGwqWVxL", "localExt": {"6URUfa4i": {}, "QsZbW3OB": {}, "QtrW9LP5": {}}, "longDescription": "4uuMKbqG", "title": "VvjpWABQ"}, "h5ZEMjYR": {"description": "WtoD4vvS", "localExt": {"RBGglt9p": {}, "LG9ro9t6": {}, "4Yad3nIj": {}}, "longDescription": "7pNlBxMA", "title": "aP9xyx1i"}}, "lootBoxConfig": {"rewardCount": 45, "rewards": [{"lootBoxItems": [{"count": 85, "duration": 27, "endDate": "1989-01-28T00:00:00Z", "itemId": "tibNN7ds", "itemSku": "XjcB6K2G", "itemType": "vvlV2Zj0"}, {"count": 88, "duration": 14, "endDate": "1980-04-24T00:00:00Z", "itemId": "HDBwODJ1", "itemSku": "Zbj0buzi", "itemType": "ZiiFWnqg"}, {"count": 27, "duration": 61, "endDate": "1989-10-01T00:00:00Z", "itemId": "5rC6eWB7", "itemSku": "S8YGpodz", "itemType": "ozaBOwG1"}], "name": "yfDwDKlG", "odds": 0.1410430829515419, "type": "REWARD_GROUP", "weight": 91}, {"lootBoxItems": [{"count": 52, "duration": 13, "endDate": "1974-04-13T00:00:00Z", "itemId": "We0uoEhf", "itemSku": "EhiWxZ39", "itemType": "aqWvkBJ2"}, {"count": 6, "duration": 54, "endDate": "1999-06-15T00:00:00Z", "itemId": "Yiyn2C7x", "itemSku": "Xo8WEaWe", "itemType": "cfQtWrK4"}, {"count": 50, "duration": 97, "endDate": "1998-10-13T00:00:00Z", "itemId": "A51QO1cX", "itemSku": "PEfqIIuC", "itemType": "wicMQW8L"}], "name": "hpE5kyIQ", "odds": 0.18417609631328802, "type": "REWARD_GROUP", "weight": 14}, {"lootBoxItems": [{"count": 96, "duration": 34, "endDate": "1994-09-04T00:00:00Z", "itemId": "RGBxRANc", "itemSku": "E1nggGSe", "itemType": "06m3KbwK"}, {"count": 22, "duration": 9, "endDate": "1981-02-09T00:00:00Z", "itemId": "8on4gtnu", "itemSku": "9MOQgqE6", "itemType": "AdX76Fkk"}, {"count": 58, "duration": 62, "endDate": "1979-07-27T00:00:00Z", "itemId": "jPieKO7O", "itemSku": "ORiNjSSY", "itemType": "mVkp8ija"}], "name": "5kftTADC", "odds": 0.7184017023462971, "type": "PROBABILITY_GROUP", "weight": 57}], "rollFunction": "DEFAULT"}, "maxCount": 96, "maxCountPerUser": 52, "name": "ymBKutk5", "optionBoxConfig": {"boxItems": [{"count": 20, "duration": 6, "endDate": "1992-01-21T00:00:00Z", "itemId": "UPntmDVW", "itemSku": "Ls9qWZMJ", "itemType": "q1i5iVhU"}, {"count": 27, "duration": 22, "endDate": "1971-05-15T00:00:00Z", "itemId": "2vLLBgdw", "itemSku": "s43Cm1c1", "itemType": "7enRoqnI"}, {"count": 86, "duration": 46, "endDate": "1990-12-19T00:00:00Z", "itemId": "Pk6LamFY", "itemSku": "rbuujzql", "itemType": "OzABSJiH"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 8, "fixedTrialCycles": 58, "graceDays": 23}, "regionData": {"ct1r5k0V": [{"currencyCode": "53FoFznB", "currencyNamespace": "6xmxK8fr", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1990-01-30T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1979-04-02T00:00:00Z", "expireAt": "1992-08-17T00:00:00Z", "price": 83, "purchaseAt": "1990-01-12T00:00:00Z", "trialPrice": 68}, {"currencyCode": "OzeIe9kx", "currencyNamespace": "5QsAqGCj", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1975-10-22T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1995-02-23T00:00:00Z", "expireAt": "1971-12-02T00:00:00Z", "price": 42, "purchaseAt": "1974-09-10T00:00:00Z", "trialPrice": 74}, {"currencyCode": "U5Vh01VR", "currencyNamespace": "TKIZAaPk", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1977-06-21T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1971-07-24T00:00:00Z", "expireAt": "1993-06-25T00:00:00Z", "price": 18, "purchaseAt": "1974-05-20T00:00:00Z", "trialPrice": 35}], "scPX4J9l": [{"currencyCode": "PtdP1Ebl", "currencyNamespace": "YSuP8UWp", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1975-09-03T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1977-12-18T00:00:00Z", "expireAt": "1999-04-03T00:00:00Z", "price": 75, "purchaseAt": "1986-11-24T00:00:00Z", "trialPrice": 47}, {"currencyCode": "BA7RFOZC", "currencyNamespace": "YcqtFVZO", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1987-09-01T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1980-02-05T00:00:00Z", "expireAt": "1983-10-18T00:00:00Z", "price": 62, "purchaseAt": "1972-02-06T00:00:00Z", "trialPrice": 31}, {"currencyCode": "v8XFwRDX", "currencyNamespace": "7CimCWyl", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1998-07-16T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-01-26T00:00:00Z", "expireAt": "1987-11-05T00:00:00Z", "price": 57, "purchaseAt": "1973-11-15T00:00:00Z", "trialPrice": 55}], "hQAHeUZc": [{"currencyCode": "Asgmq3Wi", "currencyNamespace": "pHsqNP8J", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1977-02-20T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1979-03-31T00:00:00Z", "expireAt": "1982-03-09T00:00:00Z", "price": 88, "purchaseAt": "1971-04-21T00:00:00Z", "trialPrice": 91}, {"currencyCode": "ZkwmZe09", "currencyNamespace": "ww9vRUIn", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1987-03-28T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1993-12-21T00:00:00Z", "expireAt": "1975-01-31T00:00:00Z", "price": 66, "purchaseAt": "1991-06-28T00:00:00Z", "trialPrice": 77}, {"currencyCode": "DGokTZ6C", "currencyNamespace": "48xbKPVH", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1999-10-31T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-08-30T00:00:00Z", "expireAt": "1998-01-06T00:00:00Z", "price": 85, "purchaseAt": "1974-11-10T00:00:00Z", "trialPrice": 6}]}, "saleConfig": {"currencyCode": "VgwHdRuT", "price": 87}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "igi5xH78", "stackable": false, "status": "INACTIVE", "tags": ["q893Rp6I", "kxz37uHc", "5ox6aJvs"], "targetCurrencyCode": "H7Mgitsq", "targetNamespace": "y3EdVahd", "thumbnailUrl": "aLeZcFYS", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'BSumzJCU' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'WM4CleDt' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'JktTxmk7' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 92, "orderNo": "Pgj8qFP5"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'eH8C5QML' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'vydZUOSf' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'jUvb2teK' \
    --namespace $AB_NAMESPACE \
    --storeId 'CXdPpzMP' \
    --body '{"carousel": [{"alt": "CrxWBtab", "previewUrl": "0CnpgT0m", "thumbnailUrl": "8GAFcH6I", "type": "video", "url": "R6Ho8d9d", "videoSource": "vimeo"}, {"alt": "XTDqK7de", "previewUrl": "yh0GKibx", "thumbnailUrl": "Krchld1Z", "type": "image", "url": "gHFqiW1x", "videoSource": "vimeo"}, {"alt": "N0Pvf5k5", "previewUrl": "ios8gzBx", "thumbnailUrl": "1nZkhXHH", "type": "video", "url": "HYKorGmR", "videoSource": "generic"}], "developer": "nMguKqAg", "forumUrl": "uYewYUW6", "genres": ["Indie", "Strategy", "FreeToPlay"], "localizations": {"zvTQeAON": {"announcement": "TANQl9xv", "slogan": "fvqg5Fvs"}, "kNMfGZ10": {"announcement": "6PLBS3ZH", "slogan": "dd8EisI4"}, "q92YXyDI": {"announcement": "Esr04A9D", "slogan": "FOCTtHRR"}}, "platformRequirements": {"Z9Tc8gkO": [{"additionals": "b16EL9B2", "directXVersion": "SJb4x9WZ", "diskSpace": "swdARIsu", "graphics": "v99enzmJ", "label": "qpuYS4tF", "osVersion": "fgQb9j92", "processor": "3DYVINLL", "ram": "dOIlBYRJ", "soundCard": "jHc9pNGz"}, {"additionals": "mt8QwCkd", "directXVersion": "XhnNhVun", "diskSpace": "x7TW3OMg", "graphics": "1c829Vy7", "label": "X0h7LH2l", "osVersion": "l8516Liw", "processor": "L17iwcLW", "ram": "Gy1hPnFB", "soundCard": "9f0vFads"}, {"additionals": "cOXuDPIu", "directXVersion": "r5qKJk5M", "diskSpace": "sXodLKwb", "graphics": "zuCUh6J1", "label": "INbGhNoq", "osVersion": "KM6ECEw0", "processor": "jbYl4Jlq", "ram": "nJVQF1yX", "soundCard": "7MSR8FC7"}], "YDy0lBsT": [{"additionals": "jHDPnbME", "directXVersion": "tdUbs7Vf", "diskSpace": "kg7TPpid", "graphics": "gsuIMiz6", "label": "ZSPhlsSx", "osVersion": "gEBoaNDQ", "processor": "PxRKjFya", "ram": "ClcMi8B4", "soundCard": "5wrmuuZU"}, {"additionals": "M4GvbKdM", "directXVersion": "XT1pIgfm", "diskSpace": "gb0Gh1fg", "graphics": "Ucnm6TW8", "label": "aGowECjc", "osVersion": "bE5lBQ64", "processor": "Jv3YBuqX", "ram": "82ig2ZP0", "soundCard": "HMLi6riL"}, {"additionals": "2QmzffmB", "directXVersion": "qxHW1yaZ", "diskSpace": "DP7ATG81", "graphics": "xFpy5Nho", "label": "DpwZitvK", "osVersion": "QcWXaNCG", "processor": "AtrhTUTs", "ram": "Ieogpun2", "soundCard": "RtNkwTMz"}], "2v3DwxpX": [{"additionals": "LSoeLCrJ", "directXVersion": "hjONPMlh", "diskSpace": "WEXbFohu", "graphics": "Jk4HIcWo", "label": "U2VLU63X", "osVersion": "91C0Tn3w", "processor": "N2Ftul60", "ram": "Dho7yZKw", "soundCard": "A22smHrn"}, {"additionals": "ByEIviYu", "directXVersion": "0gletytZ", "diskSpace": "RY74atH3", "graphics": "3Ehpfhzf", "label": "4fFPYnlz", "osVersion": "RqvAozxS", "processor": "vWm9Owlx", "ram": "bMd1ECWl", "soundCard": "fufLHZrY"}, {"additionals": "7M7r7iOk", "directXVersion": "d34r0jgU", "diskSpace": "gSmx3MrS", "graphics": "U3ug4E2g", "label": "KBnFtgh6", "osVersion": "wt92yTrL", "processor": "1yYbnjDt", "ram": "FrwxxBuG", "soundCard": "G4sNcyNN"}]}, "platforms": ["Android", "MacOS", "MacOS"], "players": ["CrossPlatformMulti", "MMO", "Multi"], "primaryGenre": "FreeToPlay", "publisher": "Td4KaPko", "releaseDate": "1974-07-09T00:00:00Z", "websiteUrl": "sE0ipXan"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'FIF9twlT' \
    --namespace $AB_NAMESPACE \
    --storeId 'XFk9K92z' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'UKwubOSj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'LMurdKwS' \
    --namespace $AB_NAMESPACE \
    --storeId '9kdfwpVQ' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'IJhPIKeT' \
    --itemId 'Qv5VoEA5' \
    --namespace $AB_NAMESPACE \
    --storeId '7Kx5jgQ5' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'xJYVDuek' \
    --itemId 'qWU0X4e0' \
    --namespace $AB_NAMESPACE \
    --storeId 'Vkflonnx' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '0H8wdFUa' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'DxvPjUVH' \
    --populateBundle 'true' \
    --region 'jZdjDIor' \
    --storeId 'PIpMaeuw' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '7FCn7I2C' \
    --namespace $AB_NAMESPACE \
    --storeId 'SEpVCwpz' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 44, "comparison": "excludes", "name": "HOT38yV9", "predicateType": "SeasonPassPredicate", "value": "97V83WPu", "values": ["cZnlbczn", "8zB736iA", "Kxyi4gSe"]}, {"anyOf": 32, "comparison": "isNot", "name": "6MAaGUk2", "predicateType": "SeasonTierPredicate", "value": "agXuvsyV", "values": ["41NQkbDe", "LykbG8DJ", "fB6X4Qi2"]}, {"anyOf": 26, "comparison": "excludes", "name": "FU6H8Ez3", "predicateType": "EntitlementPredicate", "value": "fqNWFzpf", "values": ["NR8e53Aw", "NkciqNMa", "r85CC506"]}]}, {"operator": "or", "predicates": [{"anyOf": 15, "comparison": "isNot", "name": "jXoSB2AA", "predicateType": "SeasonTierPredicate", "value": "jxamkVLh", "values": ["oDfoSas0", "Nz9q86Ll", "fpewDagr"]}, {"anyOf": 71, "comparison": "isLessThan", "name": "54iZqcpQ", "predicateType": "SeasonTierPredicate", "value": "6WqXzr10", "values": ["BvtKZKVo", "fW0ViSko", "LyvLUyuM"]}, {"anyOf": 53, "comparison": "isLessThan", "name": "I9gYQDa6", "predicateType": "EntitlementPredicate", "value": "CzwMkZPj", "values": ["DogExtqm", "3wBiw86x", "NTVFVbnP"]}]}, {"operator": "or", "predicates": [{"anyOf": 57, "comparison": "isLessThanOrEqual", "name": "dnN7lSJs", "predicateType": "SeasonPassPredicate", "value": "EleCuVc4", "values": ["R3d9C3bw", "FLZeCOT7", "svlsiz7o"]}, {"anyOf": 11, "comparison": "isLessThan", "name": "ckGYTHws", "predicateType": "EntitlementPredicate", "value": "Wr5yYMmF", "values": ["ckow8WBz", "DyS7uMxj", "PYXLBZQQ"]}, {"anyOf": 23, "comparison": "excludes", "name": "5WPIb1QI", "predicateType": "EntitlementPredicate", "value": "1VxUmBMP", "values": ["nF99fx5p", "KCMgmQzR", "mBSFoWM8"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'WO0bYqv4' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "03ejoqP0"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name 'dtAk5Dto' \
    --offset '92' \
    --tag 'pVP7AA6B' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ONIkppoG", "name": "e5cyQVgh", "status": "INACTIVE", "tags": ["3dObrQcg", "f9ff7pAe", "pZGM6mzW"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'p3zJI6w0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'JqSii8GX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PzyBvs4c", "name": "9U4Hka74", "status": "ACTIVE", "tags": ["dUzbIyp8", "UM15z8fT", "xcnjYjvG"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'rhTzgE7w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'Xb2L0yul' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '75' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'MpnCtQZi' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'wL98iycL' \
    --limit '58' \
    --offset '52' \
    --orderNos '["nVO5XE5k", "JQw6G6Xy", "yzECZbzf"]' \
    --sortBy 'hXQKucPX' \
    --startTime '6TIsR4FK' \
    --status 'CHARGED' \
    --withTotal 'true' \
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
    --orderNo 'RBZCtkUL' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'T9I7GzKU' \
    --body '{"description": "aKk5Tj0S"}' \
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
    --body '{"dryRun": false, "notifyUrl": "JoGTtAtQ", "privateKey": "J3uMCqU8"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'pTFLqGGG' \
    --externalId 'HlOM7s9p' \
    --limit '57' \
    --notificationSource 'STRIPE' \
    --notificationType '1dekm007' \
    --offset '73' \
    --paymentOrderNo 'z92jyMw9' \
    --startDate 'vAatHV5a' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '6IVrAN59' \
    --limit '56' \
    --offset '52' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "OI8lOlpz", "currencyNamespace": "mOiH6ist", "customParameters": {"UBQ7elgr": {}, "2UWQpq9T": {}, "0wPVwLqo": {}}, "description": "0Mpq9zjh", "extOrderNo": "vqhKcHmT", "extUserId": "bDhu8wP3", "itemType": "SEASON", "language": "dov-tV", "metadata": {"6bZUS0cX": "AJb5BZzt", "kgB1a1ZS": "IjsSqcMJ", "XUrNdYkT": "YVdTQpIa"}, "notifyUrl": "Q5gkBXMD", "omitNotification": false, "platform": "0Y9rzo63", "price": 19, "recurringPaymentOrderNo": "i6r06SB0", "region": "d63pVDI6", "returnUrl": "BacZ1B3A", "sandbox": true, "sku": "m2aqwlNX", "subscriptionId": "9JLvblmQ", "targetNamespace": "5AXTP3Xv", "targetUserId": "NBgEaD93", "title": "qBL1GhZd"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'MzPqlNJo' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ngYX34pq' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0IHhaBtA' \
    --body '{"extTxId": "HvA87nyr", "paymentMethod": "M36sgtwD", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oHQo2Cy6' \
    --body '{"description": "psZ5ryUp"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TtJoDT7o' \
    --body '{"amount": 34, "currencyCode": "OgkPPk5F", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 23, "vat": 75}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'e8zPGtrD' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedPlatformOrigins": ["IOS", "Steam", "Twitch"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Steam", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'RgjGm9oz' \
    --limit '59' \
    --offset '71' \
    --source 'OTHER' \
    --startTime 'yQMDgIVh' \
    --status 'SUCCESS' \
    --transactionId 'zII4Jjh0' \
    --userId 'ppJYyB1W' \
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
    --body '{"appConfig": {"appName": "zkOIwkQy"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "TDMeavCF"}, "extendType": "APP"}' \
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
    --body '{"description": "xhfZHEmU", "eventTopic": "7SfiZ9ao", "maxAwarded": 13, "maxAwardedPerUser": 25, "namespaceExpression": "zXYY6mlq", "rewardCode": "I2fyJ1my", "rewardConditions": [{"condition": "FxlezUlW", "conditionName": "K1L2F7fV", "eventName": "wZmsnCzZ", "rewardItems": [{"duration": 32, "endDate": "1989-07-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WNljSFfO", "quantity": 41, "sku": "cVgVZVJq"}, {"duration": 58, "endDate": "1984-06-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "d5ov5Z1a", "quantity": 12, "sku": "bsuRKIBS"}, {"duration": 70, "endDate": "1974-02-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BFEOWKcN", "quantity": 7, "sku": "usEWoU0w"}]}, {"condition": "WIzjesL4", "conditionName": "aUXJBb4j", "eventName": "2LB30ZT0", "rewardItems": [{"duration": 42, "endDate": "1982-03-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5ravla6X", "quantity": 39, "sku": "TqqJAV86"}, {"duration": 38, "endDate": "1994-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VZa0vKcM", "quantity": 26, "sku": "wmSqwgem"}, {"duration": 7, "endDate": "1999-03-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WNE5ZMYt", "quantity": 21, "sku": "sZF9pBnV"}]}, {"condition": "baV87Koz", "conditionName": "ycv4o7N5", "eventName": "kf8C81Ha", "rewardItems": [{"duration": 23, "endDate": "1976-11-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "96SacZG4", "quantity": 84, "sku": "Ui25Cln3"}, {"duration": 23, "endDate": "1997-02-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "m5xiDqc4", "quantity": 60, "sku": "oop6EcZ1"}, {"duration": 96, "endDate": "1988-11-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KqRb4aSr", "quantity": 84, "sku": "AAc6Qtop"}]}], "userIdExpression": "mLcQazS0"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'YrXlNrg1' \
    --limit '39' \
    --offset '94' \
    --sortBy '["namespace", "rewardCode:desc", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'BM0oIhpW' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'rjQw7Rtj' \
    --body '{"description": "RYp8HY89", "eventTopic": "tVBBwMrE", "maxAwarded": 37, "maxAwardedPerUser": 46, "namespaceExpression": "vs8abP4m", "rewardCode": "z7RTfIKi", "rewardConditions": [{"condition": "PrjSxdSL", "conditionName": "NR7yXJK2", "eventName": "qZZgpaz2", "rewardItems": [{"duration": 37, "endDate": "1989-11-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mihk0QWD", "quantity": 80, "sku": "cJ3gzEPo"}, {"duration": 61, "endDate": "1985-04-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0UzUGLNe", "quantity": 41, "sku": "XfPiULqb"}, {"duration": 43, "endDate": "1995-04-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cyNA2ndG", "quantity": 0, "sku": "j3GSOeFo"}]}, {"condition": "u5HbuR0j", "conditionName": "R4LZsqYU", "eventName": "BchD0GrG", "rewardItems": [{"duration": 34, "endDate": "1995-04-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ycd13OuJ", "quantity": 36, "sku": "Q3C6Wslz"}, {"duration": 80, "endDate": "1971-12-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "32b0n1hP", "quantity": 39, "sku": "7IU6ED7T"}, {"duration": 63, "endDate": "1982-07-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lptOq8mh", "quantity": 63, "sku": "dVl4NIn5"}]}, {"condition": "GXqBGcr1", "conditionName": "MFeznCBq", "eventName": "OgnIUu5l", "rewardItems": [{"duration": 61, "endDate": "1996-04-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "S6n4L7nG", "quantity": 28, "sku": "RTyEAudR"}, {"duration": 10, "endDate": "1990-09-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "aLSyguOr", "quantity": 38, "sku": "FvxkRDxW"}, {"duration": 52, "endDate": "1998-09-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BEDPCbEO", "quantity": 24, "sku": "ofD7qv0b"}]}], "userIdExpression": "EaZ8Msfk"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'pznCulyj' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'GHn1vown' \
    --body '{"payload": {"pkelUAnS": {}, "LktRpI4i": {}, "m83RL5Mf": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'TX5uK6rX' \
    --body '{"conditionName": "pHSR4Pmt", "userId": "l4hFE2EL"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'mgNKO5Vg' \
    --limit '31' \
    --offset '76' \
    --start 'vBVkIKBx' \
    --storeId 'QkjkgL91' \
    --viewId 'pIOvc8Jl' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'LE93C8bu' \
    --body '{"active": true, "displayOrder": 76, "endDate": "1986-07-08T00:00:00Z", "ext": {"NKUOAtoN": {}, "j7hgrPbw": {}, "Pvdvk6x5": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 53, "itemCount": 96, "rule": "SEQUENCE"}, "items": [{"id": "wi9pTCML", "sku": "1p3FPhbF"}, {"id": "I1UXndG8", "sku": "XIKxKSJ7"}, {"id": "Y7LKN7Rd", "sku": "YJNxOE4q"}], "localizations": {"qHEpiWJH": {"description": "4SXiqHHy", "localExt": {"3c3Cuvbx": {}, "E81xHS7Y": {}, "Lr8Qf27O": {}}, "longDescription": "YGnLAhv8", "title": "M2WQu8li"}, "rBw4Ined": {"description": "sJePhRVy", "localExt": {"25peKjnr": {}, "TaJ9qa1A": {}, "4nDu7qE1": {}}, "longDescription": "oPz3r0sk", "title": "DUQf1pGW"}, "KTTHxC1O": {"description": "2u4z4ALr", "localExt": {"eEI5UGeh": {}, "BAxk7EVV": {}, "6rmaSoMo": {}}, "longDescription": "ro8d70vn", "title": "2sAHPfMg"}}, "name": "Zak17hKX", "rotationType": "FIXED_PERIOD", "startDate": "1985-12-19T00:00:00Z", "viewId": "SqrRXeMg"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'mWXAoTUF' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'BheDHgEw' \
    --storeId 'Ldonm7sy' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'LQtXoFXH' \
    --storeId 'x2Ffx1Ln' \
    --body '{"active": true, "displayOrder": 95, "endDate": "1973-10-19T00:00:00Z", "ext": {"Z5BOi9U2": {}, "3ubNy11s": {}, "VYj7LyL2": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 72, "itemCount": 56, "rule": "SEQUENCE"}, "items": [{"id": "lq6MhAJR", "sku": "YxpEEl5Q"}, {"id": "enLmUQn6", "sku": "z2aYFHQv"}, {"id": "9hAZNHr6", "sku": "OfGqEuAv"}], "localizations": {"NC67lHyz": {"description": "7Nzf91eQ", "localExt": {"9t6zp9Ua": {}, "XzagxDUo": {}, "RnWNs1IQ": {}}, "longDescription": "MFuhnvje", "title": "fDGxYpnU"}, "CsbpS2mG": {"description": "GeAW4rRr", "localExt": {"6oqsSKf9": {}, "mZo6cCo9": {}, "VorGfTBF": {}}, "longDescription": "kHIE8Lw6", "title": "MhtZgPxq"}, "WU7K8X4e": {"description": "7jjrE2Gg", "localExt": {"rZNN0LHn": {}, "Nko3poW4": {}, "LKiWyuzK": {}}, "longDescription": "IFuyGF76", "title": "RFD2kMqi"}}, "name": "MFaGCVxx", "rotationType": "NONE", "startDate": "1992-03-12T00:00:00Z", "viewId": "MzeFZSVv"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CjuWZGfE' \
    --storeId '1ct1H7Ja' \
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
    --body '{"defaultLanguage": "Dp5w0pN5", "defaultRegion": "oxfkfqFt", "description": "qmAC24Lw", "supportedLanguages": ["JT1HIrLL", "ePMar9bK", "C2GWXPYV"], "supportedRegions": ["Q2ofI2EP", "Xpyl9LVO", "NIw7wdtx"], "title": "4g6RGnpC"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'SECTION' \
    > test.out 2>&1
eval_tap $? 186 'GetCatalogDefinition' test.out

#- 187 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 187 'DownloadCSVTemplates' test.out

#- 188 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["ueUhbu8J", "Z5mp5PBP", "Jc9KrbM4"], "idsToBeExported": ["eDNc05M1", "ti0XAquf", "1pOoXpDw"], "storeId": "8oBHR6od"}' \
    > test.out 2>&1
eval_tap $? 188 'ExportStoreByCSV' test.out

#- 189 ImportStore
eval_tap 0 189 'ImportStore # SKIP deprecated' test.out

#- 190 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'GetPublishedStore' test.out

#- 191 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 191 'DeletePublishedStore' test.out

#- 192 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStoreBackup' test.out

#- 193 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 193 'RollbackPublishedStore' test.out

#- 194 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LUD8wvok' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 't5YtbcRH' \
    --body '{"defaultLanguage": "YFAx9N2m", "defaultRegion": "G7aCAzIW", "description": "C0XAYdrR", "supportedLanguages": ["ZN6q4LTw", "pi3UYMT6", "3KJO9xPA"], "supportedRegions": ["IYlRv3EW", "DnQuYYfw", "vJimalFI"], "title": "kLnKU292"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'lhErbaYP' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'tFZv4DCO' \
    --action 'UPDATE' \
    --itemSku 'YCWn3jug' \
    --itemType 'SEASON' \
    --limit '17' \
    --offset '37' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "createdAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'COehZ6Cn' \
    --updatedAtStart 'luNp6NwK' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'MNsFhYer' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'hsvrPtVy' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'j1dCksxM' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'y2j848ni' \
    --action 'CREATE' \
    --itemSku '4r92ns3T' \
    --itemType 'APP' \
    --selected 'true' \
    --type 'ITEM' \
    --updatedAtEnd 'P9Jv3swA' \
    --updatedAtStart 'H6EvX2Ko' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'PBKEecrj' \
    --action 'CREATE' \
    --itemSku 'NBzDO3rG' \
    --itemType 'SUBSCRIPTION' \
    --type 'ITEM' \
    --updatedAtEnd 'hjoJnYoO' \
    --updatedAtStart '5nd2yIy1' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'fDPRhdOp' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'TNBj2uys' \
    --namespace $AB_NAMESPACE \
    --storeId 'gnNWivM8' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'CWaNMwJB' \
    --namespace $AB_NAMESPACE \
    --storeId 'Nd4NmPgH' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LpWF6UME' \
    --targetStoreId '676TXJMv' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'swDyoz4K' \
    --end 'B4dsEef1' \
    --limit '18' \
    --offset '62' \
    --sortBy 'WwejYYh4' \
    --start 'K0iVGdrQ' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'RiEiXku2' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'dodLlpKl' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'p1ZJhPTg' \
    --limit '29' \
    --offset '5' \
    --sku '1d0KdkNl' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId '3peiqSPn' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tw7d7MuK' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'fJwf3O7i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'KzR6XNHH' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "u5QqjBj0"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'jMm40o68' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'L7R2yJ53' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "orderNo": "qPtCqPRE"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 15, "currencyCode": "5OwRIGJW", "expireAt": "1981-01-24T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "34V2Y8fc", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "QmsUvYYd", "entitlementOrigin": "Xbox", "itemIdentity": "i3NfFdCu", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "xnQU1hgn"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 56, "currencyCode": "ji1yZYpO", "expireAt": "1977-11-10T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "WALrvDp2", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "tEhZMUuv", "entitlementOrigin": "Other", "itemIdentity": "LSwqyJQP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "wv6AIoDu"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 12, "currencyCode": "x44mRIX1", "expireAt": "1976-09-01T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "2pD7xsHs", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 53, "entitlementCollectionId": "OVSfZp2g", "entitlementOrigin": "Playstation", "itemIdentity": "NO6LnxC8", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "sSYEX7Oq"}, "type": "DEBIT_WALLET"}], "userId": "wOzyoWv3"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 85, "currencyCode": "Rb6Y6AsM", "expireAt": "1985-06-02T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "wBGTFyFy", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 59, "entitlementCollectionId": "Xb0liKV3", "entitlementOrigin": "Nintendo", "itemIdentity": "DzvZUpfX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "cWyw2p9f"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 42, "currencyCode": "R0KebGlQ", "expireAt": "1977-04-14T00:00:00Z"}, "debitPayload": {"count": 40, "currencyCode": "HUs8dr5v", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "5x9Q0j5F", "entitlementOrigin": "Nintendo", "itemIdentity": "8vi9LmUa", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "LX2u8Q3X"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 32, "currencyCode": "jW8d0OG6", "expireAt": "1996-05-21T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "Kbglm6ou", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "mebsYf3B", "entitlementOrigin": "Xbox", "itemIdentity": "4ZhrLA74", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "E892hX7M"}, "type": "DEBIT_WALLET"}], "userId": "ptFppzxN"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 92, "currencyCode": "fVbEfr0D", "expireAt": "1973-10-25T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "85k1aNkI", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 7, "entitlementCollectionId": "oOF3qjEv", "entitlementOrigin": "Oculus", "itemIdentity": "hRebEkxQ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 28, "entitlementId": "PwFWcDhl"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 40, "currencyCode": "06YvoJPy", "expireAt": "1977-01-24T00:00:00Z"}, "debitPayload": {"count": 78, "currencyCode": "yGqlWdzf", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "xLfopRui", "entitlementOrigin": "Playstation", "itemIdentity": "I7MNU9PL", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "plYPXGyZ"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 93, "currencyCode": "5BakJR3S", "expireAt": "1982-10-02T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "hg86s6W8", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "JWnzDAui", "entitlementOrigin": "Playstation", "itemIdentity": "karWDX4c", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "1KGLERzT"}, "type": "CREDIT_WALLET"}], "userId": "TrG4RyUE"}], "metadata": {"gWMRwzee": {}, "POgZx45Q": {}, "by7d5ID2": {}}, "needPreCheck": false, "transactionId": "noMCzq6l", "type": "1KSMoa1j"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '80' \
    --status 'FAILED' \
    --type 'sixkgdnv' \
    --userId 'eahDNjkr' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'KUb8HtGl' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'BAVxxfzB' \
    --body '{"achievements": [{"id": "mKo4LSc2", "value": 84}, {"id": "BY70Ciks", "value": 2}, {"id": "AIsaBcue", "value": 63}], "steamUserId": "bYpiuQYK"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'UwzA4my0' \
    --xboxUserId 'zP8pbN9q' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'k0tNG9Ae' \
    --body '{"achievements": [{"id": "UWx3SsIy", "percentComplete": 68}, {"id": "zOnnqGDI", "percentComplete": 4}, {"id": "QjILZkeg", "percentComplete": 63}], "serviceConfigId": "a69ZNe9U", "titleId": "3jy7PlCT", "xboxUserId": "Gz8EPoZ6"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'q41PoHLt' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'TeyN3g9w' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'UUoTCblu' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'qSS2FFCc' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'soGqE0QL' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '09JaHRvG' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'hibtV5RR' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2idaqYho' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'n5atqj0o' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'AoQrfKa3' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'blxmVpcH' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HFZL2thr' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --collectionId 'By2gcVtP' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'GgHSwKaa' \
    --features '["sj0fduGf", "Hgc8RnDD", "YktkzE09"]' \
    --fuzzyMatchName 'false' \
    --itemId '["ZFWlEel8", "KViudCB3", "ViLzcnC1"]' \
    --limit '32' \
    --offset '30' \
    --origin 'Other' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'cVrVspDV' \
    --body '[{"collectionId": "anw2EOof", "endDate": "1979-04-21T00:00:00Z", "grantedCode": "9d711zYv", "itemId": "SsuA3lTC", "itemNamespace": "ijiYeDjl", "language": "xJ-rl", "origin": "System", "quantity": 48, "region": "UJ15Chcn", "source": "OTHER", "startDate": "1972-04-24T00:00:00Z", "storeId": "xtLWWpf2"}, {"collectionId": "sbfoDuA7", "endDate": "1976-08-07T00:00:00Z", "grantedCode": "uIHGzbjD", "itemId": "101tVgoJ", "itemNamespace": "BI2dkdGQ", "language": "fjuX-eMbo_KR", "origin": "Epic", "quantity": 46, "region": "55tyviFE", "source": "REWARD", "startDate": "1985-08-16T00:00:00Z", "storeId": "rP4A82t7"}, {"collectionId": "JKnmaBKd", "endDate": "1992-10-17T00:00:00Z", "grantedCode": "DPyp1u0i", "itemId": "e4Abs3W6", "itemNamespace": "3w0ovtBo", "language": "LpQy-AJKA", "origin": "GooglePlay", "quantity": 27, "region": "nEinmeKx", "source": "PURCHASE", "startDate": "1998-11-01T00:00:00Z", "storeId": "uoWlNLvs"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Tw52caFN' \
    --activeOnly 'true' \
    --appId 'yxbQ57vv' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'BC8Ve0ng' \
    --activeOnly 'true' \
    --limit '55' \
    --offset '17' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4fCeWozJ' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform '1FLIA3op' \
    --itemId 'wQhqxIR8' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '9Gb0fRvA' \
    --ids '["zHcBSZis", "f92izBUb", "RpRxsibm"]' \
    --platform 'ujyDN90J' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'O0uF9d8j' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'FhSLOtJS' \
    --sku 'A7OAbnRC' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'CWvMWG3I' \
    --appIds '["l6kfkQUv", "km6KhKBM", "YNf3U2v0"]' \
    --itemIds '["NjRKRN0d", "mRlAlikG", "mhmDhV9q"]' \
    --platform 'VlPKqv8O' \
    --skus '["ULH4Ggfu", "9Y1R9ijC", "Oi2jSUog"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'l3PYeJj7' \
    --platform '8YjvSI41' \
    --itemIds '["TSdIcsOE", "DE0ju1bT", "dbBdYkZ6"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'F2mWTPh3' \
    --appId 'Z7hrOzbW' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'aoiXwmwQ' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'UENqp9Ar' \
    --itemId 'VezFEDZd' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'UXziqlga' \
    --ids '["qyMfwSUd", "3n5jnO03", "zQvPiUtZ"]' \
    --platform 'OGyfDhWm' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'IxBvcTKi' \
    --entitlementClazz 'CODE' \
    --platform '2V0Ea6iY' \
    --sku 'IMW6Vbfz' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'bo61bRXf' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dfpWZ6sj' \
    --entitlementIds 'WUwAfaTQ' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'ZYUG114t' \
    --namespace $AB_NAMESPACE \
    --userId 'eO0iaZdg' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '2LsGOGVA' \
    --namespace $AB_NAMESPACE \
    --userId 'AjrvAeTA' \
    --body '{"collectionId": "4im1h9yd", "endDate": "1978-05-04T00:00:00Z", "nullFieldList": ["9RLsTLmn", "QKud41ki", "Wt40GWHU"], "origin": "Oculus", "reason": "SMj22xzX", "startDate": "1989-05-16T00:00:00Z", "status": "REVOKED", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '5GZwgvSZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gKnSJzKz' \
    --body '{"options": ["BX1WFXsn", "uTgFqmjo", "WGhJGerS"], "platform": "Y98FfiwG", "requestId": "tCk9jSjE", "useCount": 96}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'YGGSLvJQ' \
    --namespace $AB_NAMESPACE \
    --userId '6H3YjwKc' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'Ndwy9JZs' \
    --namespace $AB_NAMESPACE \
    --userId 'ejGxMsqz' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'N5snqEJ7' \
    --namespace $AB_NAMESPACE \
    --userId 'b6kpwryl' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'FhA6X0OV' \
    --namespace $AB_NAMESPACE \
    --userId 'KklD2mqL' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'KquV7UIl' \
    --namespace $AB_NAMESPACE \
    --userId 'SVa9h6qg' \
    --body '{"reason": "2UBEcgfN", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'wlbYAd1a' \
    --namespace $AB_NAMESPACE \
    --userId 'EYX7TNFC' \
    --quantity '28' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'utJhiyxg' \
    --namespace $AB_NAMESPACE \
    --userId 'JPMCl78T' \
    --body '{"platform": "uYAfdvOV", "requestId": "xopx9yNi", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'rEbD4l3i' \
    --body '{"duration": 14, "endDate": "1993-03-23T00:00:00Z", "entitlementCollectionId": "QRWwwc1V", "entitlementOrigin": "System", "itemId": "2vSc6Z87", "itemSku": "Wur2fRHz", "language": "wrl85ZMi", "metadata": {"ulGBxJ2n": {}, "vx72sQCh": {}, "jcrBP61A": {}}, "order": {"currency": {"currencyCode": "EVLdhln3", "currencySymbol": "BvHNdJsO", "currencyType": "VIRTUAL", "decimals": 80, "namespace": "lbMyJtSa"}, "ext": {"v8zYPDif": {}, "UWf7X9d3": {}, "dDWvbmy4": {}}, "free": true}, "orderNo": "jfX2Eaiy", "origin": "Nintendo", "overrideBundleItemQty": {"zMzFNfNu": 42, "dULfJLjk": 52, "YCQ7WMtr": 88}, "quantity": 1, "region": "fProeYoI", "source": "CONSUME_ENTITLEMENT", "startDate": "1984-10-05T00:00:00Z", "storeId": "fxLue18w"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'YPGHcecN' \
    --body '{"code": "1pO6aCL8", "language": "TLQV-UymE", "region": "oBUMzoW1"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'XEofLsLP' \
    --body '{"itemId": "Wh9epVhN", "itemSku": "S0cNPvgZ", "quantity": 13}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'oVmE8SyX' \
    --body '{"entitlementCollectionId": "M32dfDso", "entitlementOrigin": "Epic", "metadata": {"ylZviry7": {}, "yGIimsid": {}, "LT9o8tyX": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "By7wYTre", "namespace": "CQrmPDxM"}, "item": {"itemId": "rdynRdRG", "itemSku": "r7LX2pEm", "itemType": "lfNsbjMO"}, "quantity": 51, "type": "CURRENCY"}, {"currency": {"currencyCode": "ugT5pvlE", "namespace": "CCZNSan5"}, "item": {"itemId": "RLUMGtlF", "itemSku": "zoGqP1l6", "itemType": "GK5kH2wU"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "u6kRMmsZ", "namespace": "WyB7PP0u"}, "item": {"itemId": "O3yIgweS", "itemSku": "PTw78CFw", "itemType": "iJomU3l0"}, "quantity": 81, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "altyVtQt"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '3ACKHe2f' \
    --endTime 'FfaMRwiC' \
    --limit '52' \
    --offset '43' \
    --productId '6TnJ8z29' \
    --startTime 'sQb7qJlF' \
    --status 'FAILED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'M5Cu2XUM' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'HcLfPi9b' \
    --endTime 'pMdakaMc' \
    --limit '12' \
    --offset '75' \
    --startTime 'MVP3C3zA' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'TKCvSaGr' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "SAUJ_DiiE-826", "productId": "M7uaDbfC", "region": "WaRw58mt", "transactionId": "sIc7x766", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tQGzddBs' \
    --itemId 'p9M76bGb' \
    --limit '19' \
    --offset '4' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vDPDlqZF' \
    --body '{"currencyCode": "XqPGowAW", "currencyNamespace": "MpoLwMen", "discountedPrice": 8, "entitlementPlatform": "IOS", "ext": {"3qWaDGOz": {}, "hfR6sN9S": {}, "QuWPzbdp": {}}, "itemId": "ee3bTrQv", "language": "bM3JV6wm", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 20, "quantity": 7, "region": "igCW5T28", "returnUrl": "UGqEjT5v", "sandbox": false, "sectionId": "iMAGaamu"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'cQU7CVpn' \
    --itemId 'xhlo21jA' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'wchSIVHH' \
    --userId 'bjGZHDGz' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'OcrKmSGi' \
    --userId 'zGNaWIsV' \
    --body '{"status": "CHARGED", "statusReason": "Da48pD3T"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CCOxCYMn' \
    --userId 'o6SnSz8T' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'eXhJjXMY' \
    --userId 'ckeUM4Ek' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'TqYOZyjB' \
    --userId 'E6CHIFdv' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'JR6JRzjk' \
    --userId 'RB1K2qPI' \
    --body '{"additionalData": {"cardSummary": "uS3n1hLG"}, "authorisedTime": "1996-03-05T00:00:00Z", "chargebackReversedTime": "1980-10-13T00:00:00Z", "chargebackTime": "1972-11-17T00:00:00Z", "chargedTime": "1975-08-01T00:00:00Z", "createdTime": "1988-01-25T00:00:00Z", "currency": {"currencyCode": "EGRqVEIs", "currencySymbol": "84BqQg5Z", "currencyType": "VIRTUAL", "decimals": 40, "namespace": "diKZeVg9"}, "customParameters": {"prxBAjdG": {}, "JIGIuM3M": {}, "FQgD3CIF": {}}, "extOrderNo": "gj14BnIn", "extTxId": "81PilZyi", "extUserId": "N4vHftRI", "issuedAt": "1973-08-26T00:00:00Z", "metadata": {"If6WlNJx": "loMgqqv1", "TKABkIvj": "0pZqu80J", "ir9Aam40": "XqSwhccn"}, "namespace": "IN28WbJ0", "nonceStr": "akyqF1Zn", "paymentMethod": "jOwy8uox", "paymentMethodFee": 75, "paymentOrderNo": "GNIEePH0", "paymentProvider": "ADYEN", "paymentProviderFee": 41, "paymentStationUrl": "HXCgtr6e", "price": 4, "refundedTime": "1975-09-27T00:00:00Z", "salesTax": 56, "sandbox": true, "sku": "05BblAEt", "status": "DELETED", "statusReason": "KKfRsTti", "subscriptionId": "CBsFUKZf", "subtotalPrice": 45, "targetNamespace": "oVZlpMAH", "targetUserId": "gWte51wc", "tax": 23, "totalPrice": 69, "totalTax": 17, "txEndTime": "1994-10-21T00:00:00Z", "type": "n9vZmLpq", "userId": "IDZSvmw0", "vat": 30}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'iEuSn8wK' \
    --userId 'B6RmKnSI' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '1PDnZyyY' \
    --body '{"currencyCode": "fJD9U7RH", "currencyNamespace": "pJFX02Ga", "customParameters": {"PFAE7mBW": {}, "agaJsPVa": {}, "XaORsxfN": {}}, "description": "4yMy4JNU", "extOrderNo": "i3Ba0BsT", "extUserId": "HpC3dlin", "itemType": "SUBSCRIPTION", "language": "FWQ_zEWQ_eG", "metadata": {"ycAFEeps": "VwBejj7x", "xgYFIK2U": "OgaYflwJ", "XGlRdcde": "1MHfqiHD"}, "notifyUrl": "GCGo2WQC", "omitNotification": true, "platform": "5GAZz2cp", "price": 49, "recurringPaymentOrderNo": "oJza5fwR", "region": "1FETTgDb", "returnUrl": "lZA3zcjg", "sandbox": true, "sku": "DWAOUO63", "subscriptionId": "v5jWbgyF", "title": "9xmcjvrz"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FUE2wesV' \
    --userId 'jv2KRelW' \
    --body '{"description": "nxReWbW4"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'uwV9Hk7F' \
    --body '{"code": "dpN2o57v", "orderNo": "yahOQPBg"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'FtI8WxR6' \
    --body '{"meta": {"XJNEvNES": {}, "vzvVJ5Ol": {}, "L9Fh75Fv": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "FWgRJOdT", "namespace": "tUXC03RC"}, "entitlement": {"entitlementId": "Yc4e9618"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "W4gwaIT6", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 76, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "XMSkvZNh", "namespace": "gwgd2j7T"}, "entitlement": {"entitlementId": "CABRipgh"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "qwIGcqgt", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 45, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "fsPCQlBm", "namespace": "0IcLRMVP"}, "entitlement": {"entitlementId": "KwPh5lSs"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "A13cBpHj", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 46, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "BBdLkBHU"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'HfLBgHqw' \
    --body '{"gameSessionId": "qkcToJib", "payload": {"3rWAQ2rD": {}, "E3mrPVVW": {}, "R7Agf8jq": {}}, "scid": "FfgNUdEi", "sessionTemplateName": "9YEOSik2"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'hXHDVVS1' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'PcHda5u6' \
    --limit '57' \
    --offset '34' \
    --sku '9RoxJ8h3' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'SJJQXc55' \
    --excludeSystem 'true' \
    --limit '38' \
    --offset '17' \
    --subscriptionId 'z9DOSyDa' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'MEMaTgeI' \
    --body '{"grantDays": 7, "itemId": "YC4MGSdp", "language": "Qd8kWer2", "reason": "UObwULip", "region": "90blIFl3", "source": "2Zg7N9vw"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'NIdVRjKC' \
    --itemId 'm8IV66eK' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TIjKdmXe' \
    --userId 'J61A85cs' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PRJNpm0T' \
    --userId 'JGIaTpe3' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'T9nUqYzX' \
    --userId 'ZVBzfZfV' \
    --force 'false' \
    --body '{"immediate": false, "reason": "a7Rs9PwB"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ywTQRyJj' \
    --userId 'vaMMwcy0' \
    --body '{"grantDays": 49, "reason": "wf9j8pz9"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '0A9AHxY0' \
    --userId 'RE4zHwW6' \
    --excludeFree 'false' \
    --limit '82' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BQ5U8Mdy' \
    --userId 'tWRcgGGf' \
    --body '{"additionalData": {"cardSummary": "rCtngCdF"}, "authorisedTime": "1975-08-21T00:00:00Z", "chargebackReversedTime": "1971-10-26T00:00:00Z", "chargebackTime": "1988-10-28T00:00:00Z", "chargedTime": "1981-04-23T00:00:00Z", "createdTime": "1987-03-25T00:00:00Z", "currency": {"currencyCode": "tzbKfmbj", "currencySymbol": "i7Wnp1BV", "currencyType": "REAL", "decimals": 72, "namespace": "x2HKJsTZ"}, "customParameters": {"GlDnZcCP": {}, "euMVnWTG": {}, "pcgeqPoO": {}}, "extOrderNo": "Xr7iart2", "extTxId": "937LRrpd", "extUserId": "FTYMy843", "issuedAt": "1986-01-07T00:00:00Z", "metadata": {"Y441KCgl": "bQKAtZvd", "5XvUEAlF": "Q2X2gFZO", "N5Dvt9JC": "UrTqjsNP"}, "namespace": "sIy0QiLX", "nonceStr": "rF7ohnoS", "paymentMethod": "bOqHtEJP", "paymentMethodFee": 14, "paymentOrderNo": "vvt9Xuhr", "paymentProvider": "WXPAY", "paymentProviderFee": 67, "paymentStationUrl": "Z8bzcFw9", "price": 88, "refundedTime": "1997-09-09T00:00:00Z", "salesTax": 56, "sandbox": false, "sku": "dzM05Cpu", "status": "REQUEST_FOR_INFORMATION", "statusReason": "3zDS0uv5", "subscriptionId": "dTEfuFYB", "subtotalPrice": 67, "targetNamespace": "6Gl3qhMg", "targetUserId": "VDal2J5q", "tax": 70, "totalPrice": 30, "totalTax": 32, "txEndTime": "1986-03-15T00:00:00Z", "type": "wGpD5kU1", "userId": "O1cl8Ufd", "vat": 76}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'f0h85vXd' \
    --namespace $AB_NAMESPACE \
    --userId 'aLzPoo1G' \
    --body '{"count": 93, "orderNo": "AlyCBpw6"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'WVNgUsgw' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'hssFKuYC' \
    --namespace $AB_NAMESPACE \
    --userId 'iWsP8LDM' \
    --body '{"allowOverdraft": true, "amount": 68, "balanceOrigin": "Other", "balanceSource": "TRADE", "metadata": {"xrFt4drk": {}, "3AIaGi9H": {}, "NjilKz4y": {}}, "reason": "GpjrEJUh"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '6MWgqavv' \
    --namespace $AB_NAMESPACE \
    --userId 'p7L3GlBt' \
    --limit '94' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'ujGefIoO' \
    --namespace $AB_NAMESPACE \
    --userId 'BBYZGzeS' \
    --request '{"amount": 27, "debitBalanceSource": "OTHER", "metadata": {"rgEsR9Qy": {}, "gTKj1tL2": {}, "GifipCBt": {}}, "reason": "PRrKHJxW", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'fCotHtvr' \
    --namespace $AB_NAMESPACE \
    --userId 'f6o3zvCc' \
    --body '{"amount": 44, "expireAt": "1985-05-21T00:00:00Z", "metadata": {"ptD9zbFU": {}, "WtBArgv5": {}, "19WUip9M": {}}, "origin": "Nintendo", "reason": "IhTKObCd", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'NiAz7Qes' \
    --namespace $AB_NAMESPACE \
    --userId 'wCoiAybx' \
    --request '{"amount": 76, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"M4HqD5ci": {}, "sIIf9L4N": {}, "rSzzn156": {}}, "reason": "jZX9qe39", "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'TcNztnrg' \
    --namespace $AB_NAMESPACE \
    --userId 'kxZZoxw0' \
    --body '{"amount": 57, "metadata": {"A7iDyQUE": {}, "BE58VPxg": {}, "CkhK5LIv": {}}, "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 300 'PayWithUserWallet' test.out

#- 301 GetUserWallet
eval_tap 0 301 'GetUserWallet # SKIP deprecated' test.out

#- 302 DebitUserWallet
eval_tap 0 302 'DebitUserWallet # SKIP deprecated' test.out

#- 303 DisableUserWallet
eval_tap 0 303 'DisableUserWallet # SKIP deprecated' test.out

#- 304 EnableUserWallet
eval_tap 0 304 'EnableUserWallet # SKIP deprecated' test.out

#- 305 ListUserWalletTransactions
eval_tap 0 305 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 306 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '3bkpcMMR' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'vRk2z2BQ' \
    --body '{"displayOrder": 11, "localizations": {"nrEKWt0R": {"description": "RRPxZ9yS", "localExt": {"RqPGrlBJ": {}, "kqUssrHt": {}, "tO1WIf5v": {}}, "longDescription": "VQJ9k1cG", "title": "eRLNfQ06"}, "H2NfHf6J": {"description": "Bj3SvquK", "localExt": {"3QSybdXm": {}, "ihtSFWSc": {}, "1zEYzewe": {}}, "longDescription": "fMRBQG1m", "title": "5bIVzQNT"}, "FswZNIHx": {"description": "iy0d8L5i", "localExt": {"Yfc2qxA4": {}, "SE7iL7Vz": {}, "FaRUK5cw": {}}, "longDescription": "wtZlHWoA", "title": "JmPtChiX"}}, "name": "G312YlbZ"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '4EZNtomz' \
    --storeId 'd1MzGhw5' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'vitLE69m' \
    --storeId 'a1QXlIhH' \
    --body '{"displayOrder": 32, "localizations": {"BYgJuXj8": {"description": "EirOmL1L", "localExt": {"T6JfeRIT": {}, "zwH92cmz": {}, "YVcOt4u5": {}}, "longDescription": "kDEWx0Zh", "title": "3mBw1NhB"}, "iyo7AmRr": {"description": "yijJqo9p", "localExt": {"3XMnrWiK": {}, "xm23wHmj": {}, "H9xTzIHd": {}}, "longDescription": "fsH9jvHe", "title": "K3sVXvCv"}, "EPRGIBcS": {"description": "zKz09J9S", "localExt": {"qyoHOKbd": {}, "U92IbOy4": {}, "YFU2twih": {}}, "longDescription": "0qJbkgCJ", "title": "IJzGRnxt"}}, "name": "YUPpods4"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId '35B38Wow' \
    --storeId 'adkWJMVr' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 38, "expireAt": "1994-11-28T00:00:00Z", "metadata": {"RX9WJSc2": {}, "PO3AQHeD": {}, "sTjGnJ4o": {}}, "origin": "Other", "reason": "TcKau40E", "source": "SELL_BACK"}, "currencyCode": "ogoPI83D", "userIds": ["AYrmdYCP", "qotLmr9I", "uPrwbTtj"]}, {"creditRequest": {"amount": 87, "expireAt": "1973-10-08T00:00:00Z", "metadata": {"1fMPvbrc": {}, "frw6YSbp": {}, "lDtJUJEq": {}}, "origin": "Epic", "reason": "CP4kNJ0C", "source": "DLC"}, "currencyCode": "sKJuWK3i", "userIds": ["MvuG4Zt1", "ujzA4NuI", "HKkzeQCZ"]}, {"creditRequest": {"amount": 15, "expireAt": "1971-12-07T00:00:00Z", "metadata": {"kPC9FZ4M": {}, "UfQKUMUC": {}, "FMAWUBiG": {}}, "origin": "IOS", "reason": "0uq6ctP1", "source": "REFUND"}, "currencyCode": "pPX66d7a", "userIds": ["SzJPo4GP", "pUBDOJpm", "3EfZDNx7"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "wyaIkcn9", "request": {"allowOverdraft": false, "amount": 12, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"IvQPFugW": {}, "zoW78FQF": {}, "yKjX9Gyd": {}}, "reason": "YL0qC2re"}, "userIds": ["JTiz0Zfy", "3Yhq02Zp", "MY8qlc81"]}, {"currencyCode": "Yrufu6J7", "request": {"allowOverdraft": false, "amount": 42, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"nrrqJBB1": {}, "w3hssGnO": {}, "nZJi8GG4": {}}, "reason": "mGCdzqop"}, "userIds": ["mSaNWPyT", "EOMdB7JO", "7AQNNCD4"]}, {"currencyCode": "BnKXGVNH", "request": {"allowOverdraft": true, "amount": 27, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"8LMuAr52": {}, "WZwkRZOi": {}, "u3L22hE6": {}}, "reason": "iElOjLvR"}, "userIds": ["mByFiK8U", "Hx0U5olN", "BQ6XoCAK"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'IKwzDmcE' \
    --end 'IdZIfs3k' \
    --start 'saFco2iF' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["5GXN97ej", "mFr5wnus", "FoK7IutK"], "apiKey": "J0jJhh7r", "authoriseAsCapture": false, "blockedPaymentMethods": ["tj0J4zHF", "Dpck45oG", "3uCN2ICL"], "clientKey": "IPZbHoFW", "dropInSettings": "K2bb8vnh", "liveEndpointUrlPrefix": "xkXY9h8g", "merchantAccount": "To4551RW", "notificationHmacKey": "54JpJjK9", "notificationPassword": "NlRJ4Sr0", "notificationUsername": "pRvx7Oss", "returnUrl": "SRSiynhu", "settings": "VaNAkEBG"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "B5hIhIqt", "privateKey": "XfP11pJZ", "publicKey": "LbbXwdIq", "returnUrl": "8ErDmPAH"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "M9I9um4K", "secretKey": "wOHbQuXx"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'kq5CnYlh' \
    --region 'IAADkYWR' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "f4VA9xiV", "clientSecret": "9FCLnSBV", "returnUrl": "2SQs5YVJ", "webHookId": "fwRHGxqg"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["gmCFTBkj", "N46Vpmqq", "IXhvdipb"], "publishableKey": "SyuPjVg4", "secretKey": "NUTbC1g8", "webhookSecret": "1tgVZyd7"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "0mG7DBx2", "key": "sImz6OlI", "mchid": "YTeGIzGq", "returnUrl": "pBevuLRJ"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "f3GLL4zE", "flowCompletionUrl": "lXebmBPc", "merchantId": 68, "projectId": 7, "projectSecretKey": "GxX3WonP"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '7Wlpi066' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'D83puoLO' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["8crXdPdO", "pjJef2NF", "rQDMXZJh"], "apiKey": "6PwMc6T6", "authoriseAsCapture": true, "blockedPaymentMethods": ["djUvIGTs", "frMY7uAs", "KPNS75ku"], "clientKey": "RMpQ5V6S", "dropInSettings": "xBRwz4Qo", "liveEndpointUrlPrefix": "uVUUL7Z1", "merchantAccount": "a2mWorNp", "notificationHmacKey": "1mlHr6j3", "notificationPassword": "TjgHUXM7", "notificationUsername": "c5Roe8Y8", "returnUrl": "7YAcqPIs", "settings": "s1GQoLRi"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '8IX6HIMg' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'xEbY9C3a' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "VuPS7lbl", "privateKey": "oO4zxDjs", "publicKey": "3d239Ioc", "returnUrl": "wOrdf3zc"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'SdaX49uQ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'VA2nqI4H' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "H5ZOQVZw", "secretKey": "apgYe1LZ"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'ul1W2QTv' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'ziKKNdeX' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "22PvH3pP", "clientSecret": "FkTKv67X", "returnUrl": "yxmJz5wu", "webHookId": "paoO7guA"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'bvoEu7PF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'vgtknDhr' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["oXh8lcVk", "L7HlmDOo", "PlCRezgs"], "publishableKey": "1I4YN912", "secretKey": "rKY5cs2Q", "webhookSecret": "4oNqpyjn"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'HQOuEkLY' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'fbpSqUMV' \
    --validate 'false' \
    --body '{"appId": "yA8ZPa5m", "key": "FISYSIlE", "mchid": "OdOc7dU0", "returnUrl": "WwwKR5xE"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'PXXCcHHh' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'IKcT2TMs' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '65KNwYHa' \
    --validate 'true' \
    --body '{"apiKey": "NjhOHHAX", "flowCompletionUrl": "hIDRZYim", "merchantId": 38, "projectId": 35, "projectSecretKey": "lA66FXKW"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'isdBSDzD' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'FOA2JPjt' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '97' \
    --namespace '72TWLTAZ' \
    --offset '51' \
    --region 'rfnNygWt' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "H8nNGkT6", "region": "zOAK8csA", "sandboxTaxJarApiToken": "S5CUE1AJ", "specials": ["WXPAY", "ADYEN", "WXPAY"], "taxJarApiToken": "DhKFsFcj", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '5JkQgA5T' \
    --region 'aptB3Qp6' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'SWAmW8wK' \
    --body '{"aggregate": "ADYEN", "namespace": "zvZT5yY2", "region": "u0zvdxdc", "sandboxTaxJarApiToken": "FmJSFAwT", "specials": ["XSOLLA", "WXPAY", "WXPAY"], "taxJarApiToken": "Hnkt2AEh", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '7B6AK5Y4' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "o4WivQHz", "taxJarApiToken": "cewHA2xX", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ZVgZTjTw": "Jt2qQ8ZQ", "B3De2sRj": "OiOSHaCT", "kH0yrZBN": "fpQerWXZ"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'NPHI1sXd' \
    --end '7B7JqMk0' \
    --start 'OEhQMV76' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'hFTtfgzJ' \
    --storeId 'nyrYJS9t' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '1exAnf0U' \
    --storeId 'YAVz2mxZ' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'SCYEZkyf' \
    --namespace $AB_NAMESPACE \
    --language '2nqoS7hB' \
    --storeId 'efi3DAy7' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '39mMsDnn' \
    --namespace $AB_NAMESPACE \
    --language 'w9IC6koB' \
    --storeId 'VIRZRIjb' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'ZqNv4LwF' \
    --namespace $AB_NAMESPACE \
    --language 'tvVNcd9p' \
    --storeId '3pC4avHu' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetDescendantCategories' test.out

#- 356 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 356 'PublicListCurrencies' test.out

#- 357 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'lyFWVzNf' \
    --region 'kes1Ym4H' \
    --storeId 'a1U1MP8n' \
    --appId 'W3LE4y5d' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'hw1kb6hC' \
    --categoryPath 'LUUNJ510' \
    --features 'pCRqzkI0' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --language '71jtsvgR' \
    --limit '57' \
    --offset '91' \
    --region 'qIswBniq' \
    --sortBy '["updatedAt", "createdAt:asc", "name:asc"]' \
    --storeId 'XkbnbJvB' \
    --tags 'QAOVc4wI' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'P2WJU5NZ' \
    --region 'Hs6Sjmj7' \
    --storeId 'Y0Rf8k5U' \
    --sku 'tNmRkCUq' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'LMNUg4ih' \
    --storeId 'iYB2L77n' \
    --itemIds 'Ay8Zvwaq' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'WgtCqMzP' \
    --region 'vRNXwnr7' \
    --storeId 'nAWaOgG4' \
    --itemIds 'wvTXTqXf' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["yur66V4O", "IcYEuqSX", "I2Ml2D0o"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'OPTIONBOX' \
    --limit '55' \
    --offset '54' \
    --region 'oxujqkQJ' \
    --storeId 'eSsMKju4' \
    --keyword 'sWRre64u' \
    --language 'YYZbUiPn' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'LF9LpgpR' \
    --namespace $AB_NAMESPACE \
    --language 'SPyf7Fzi' \
    --region 'SoRQAIBf' \
    --storeId 'YHCJ2dyJ' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'py1kxTUN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '2UKYQS6q' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'keVb1cpM' \
    --populateBundle 'false' \
    --region '3TwM94yg' \
    --storeId '3imwz98J' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "K2bdB6dI", "paymentProvider": "ALIPAY", "returnUrl": "7l6wV7FF", "ui": "Lx04t2SY", "zipCode": "CjgIf8cJ"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TnP3Rb8C' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Kfhs9zi9' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CdvrhWsQ' \
    --paymentProvider 'STRIPE' \
    --zipCode '9fvn8eue' \
    --body '{"token": "A7jHRwzT"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'd8q6uYYU' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ADYEN' \
    --region 'rhPC0qoe' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '5fg25pei' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'QcDiHKch' \
    --foreinginvoice '2GJGG9Gd' \
    --invoiceId '6Ot1gqyw' \
    --payload 'fMmomru9' \
    --redirectResult 'uxNcnmH1' \
    --resultCode 'nhZKw3rm' \
    --sessionId 'uAz7R5gV' \
    --status 'TYpk163W' \
    --token 'TrWZh9gc' \
    --type 'VcZVkETC' \
    --userId 'Uvt47aye' \
    --orderNo 'wfCIyXzp' \
    --paymentOrderNo 'aBtNbNyd' \
    --paymentProvider 'CHECKOUT' \
    --returnUrl 'ACT9uboF' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'CAIsQhh9' \
    --paymentOrderNo 'JesDeZFf' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'oLavuHr5' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '0ga9MDef' \
    --limit '28' \
    --offset '6' \
    --sortBy '["namespace", "rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'MjObTK23' \
    > test.out 2>&1
eval_tap $? 381 'GetReward1' test.out

#- 382 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 382 'PublicListStores' test.out

#- 383 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["rScYccBD", "YMwKJL2z", "c1dEVjeP"]' \
    --itemIds '["jzUkWPfN", "xnDNPoxa", "JfxFQUsl"]' \
    --skus '["zLIEw24m", "3A2hrbCk", "w7Reb2Qu"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'h72HACO8' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'YCXDuOy2' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'fVQ84FkX' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["PImC9NmB", "HomhElhU", "2iBAFjy7"]' \
    --itemIds '["xlqsA95U", "BboL6HUo", "pdK9ZKfI"]' \
    --skus '["cj6pvgFh", "M8r5732K", "l7Z2ba9P"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "hyPpJM0v", "language": "biNw_Sy", "region": "POg8jliV"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'SshiguHz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'DsGMjEXL' \
    --body '{"epicGamesJwtToken": "froZCL2K"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'fQMEF9xm' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GFXthgFI' \
    --body '{"serviceLabel": 20}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'kxM0uzRL' \
    --body '{"serviceLabels": [8, 9, 86]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '7pFelMwu' \
    --body '{"appId": "XCpsGZ8a", "steamId": "0AIOGG4X"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qviyhK8r' \
    --body '{"xstsToken": "m9htpUxT"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'U7JWJ9A7' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'NPYoaAKx' \
    --features '["07IpsBPS", "PdRKGM1p", "v24I7T6f"]' \
    --itemId '["XRk4VLvf", "MXzVbFMn", "S38F0jJr"]' \
    --limit '26' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '3QiZpwGW' \
    --appId 'qGofI8ue' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'SLmVaHAq' \
    --limit '13' \
    --offset '54' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'f1IHFfl3' \
    --availablePlatformOnly 'true' \
    --ids '["33b3L15S", "gd1YJmcn", "6QMbBzxT"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Q1PT83jq' \
    --endDate 'VAFDhQfi' \
    --entitlementClazz 'SUBSCRIPTION' \
    --limit '62' \
    --offset '41' \
    --startDate 'HowZcmlF' \
    > test.out 2>&1
eval_tap $? 402 'PublicUserEntitlementHistory' test.out

#- 403 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'XBWqd3mx' \
    --appIds '["NbViMcLX", "NxwLUIFe", "ZE8msEmf"]' \
    --itemIds '["m94TnAk0", "pz0xJ3Vu", "vyQjl9bX"]' \
    --skus '["sZlOyFrK", "DiN7gK3C", "TOPobj6b"]' \
    > test.out 2>&1
eval_tap $? 403 'PublicExistsAnyUserActiveEntitlement' test.out

#- 404 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'eYL9arof' \
    --appId 'vOxPmUYi' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1TSAKYGJ' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId '7fZuHAt4' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 406 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Y4P3dzvS' \
    --ids '["gSklm4Yn", "3EOlrgbe", "tDWweivI"]' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 407 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'EpBXpAm5' \
    --entitlementClazz 'MEDIA' \
    --sku '1WUoy5a1' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 408 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'B0ZyspcT' \
    --namespace $AB_NAMESPACE \
    --userId 'UjONOQ0s' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlement' test.out

#- 409 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'HqGvGI7M' \
    --namespace $AB_NAMESPACE \
    --userId 'KYcAARws' \
    --body '{"options": ["wtN6TSuC", "Crop70PN", "DmsNUQFm"], "requestId": "Vco38wKw", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 409 'PublicConsumeUserEntitlement' test.out

#- 410 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'jmB9s9Su' \
    --namespace $AB_NAMESPACE \
    --userId '9mWj5cPL' \
    --body '{"requestId": "bMI2FmeS", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSellUserEntitlement' test.out

#- 411 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'mwQdXWDi' \
    --namespace $AB_NAMESPACE \
    --userId 'bPE8wGfE' \
    --body '{"useCount": 61}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSplitUserEntitlement' test.out

#- 412 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'YEsR2sve' \
    --namespace $AB_NAMESPACE \
    --userId 'aOVX63Z8' \
    --body '{"entitlementId": "ecKGTUn7", "useCount": 32}' \
    > test.out 2>&1
eval_tap $? 412 'PublicTransferUserEntitlement' test.out

#- 413 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '7JAAb9pR' \
    --body '{"code": "VQliQHcU", "language": "lAa_xelW", "region": "D4jInstd"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicRedeemCode' test.out

#- 414 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'eO7VXvUq' \
    --body '{"excludeOldTransactions": false, "language": "KX", "productId": "WChHSMYe", "receiptData": "YK9mruHV", "region": "g8FhpxT6", "transactionId": "oRDK7L9t"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicFulfillAppleIAPItem' test.out

#- 415 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'mK92CURf' \
    --body '{"epicGamesJwtToken": "Oyaojn6M"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGamesInventory' test.out

#- 416 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'mX8GJEOF' \
    --body '{"autoAck": true, "language": "PHAD-uu", "orderId": "xuseOSFk", "packageName": "4sGGkWlu", "productId": "w4QExCtV", "purchaseTime": 81, "purchaseToken": "N7oyDJWX", "region": "AoN4HbWI"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillGoogleIAPItem' test.out

#- 417 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '3BIDpIsG' \
    > test.out 2>&1
eval_tap $? 417 'SyncOculusConsumableEntitlements' test.out

#- 418 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'GiDwr8D7' \
    --body '{"currencyCode": "pf53Rsmc", "price": 0.7043466408677017, "productId": "z1kQuxMG", "serviceLabel": 95}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStore' test.out

#- 419 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'KVnF4hRF' \
    --body '{"currencyCode": "iQNiw677", "price": 0.29279687725674364, "productId": "tuwxekAd", "serviceLabels": [33, 98, 27]}' \
    > test.out 2>&1
eval_tap $? 419 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 420 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '1JPKIVjN' \
    --body '{"appId": "bDN2ZYGP", "currencyCode": "wfNfXER5", "language": "WS-jK", "price": 0.40047999169007287, "productId": "Rzsr80Qn", "region": "7lIsqIEf", "steamId": "hFeFvVrp"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncSteamInventory' test.out

#- 421 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'b29eTvnU' \
    --body '{"gameId": "EKypxegJ", "language": "Yx-941", "region": "p3yT8A6D"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncTwitchDropsEntitlement1' test.out

#- 422 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'azZ9w0DI' \
    --body '{"currencyCode": "4p05rycX", "price": 0.6426737714763534, "productId": "iQClXpzO", "xstsToken": "ERxixOXe"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncXboxInventory' test.out

#- 423 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'AlR3BqZc' \
    --itemId 'RjJQSu5f' \
    --limit '89' \
    --offset '8' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserOrders' test.out

#- 424 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'AucMLlX6' \
    --body '{"currencyCode": "yoDd2CR2", "discountedPrice": 14, "ext": {"EWLvzfar": {}, "sYkICjMj": {}, "39Xw20dM": {}}, "itemId": "jQokturf", "language": "LkOz_NINw", "price": 70, "quantity": 52, "region": "FVYCdwoY", "returnUrl": "tE0hqPDG", "sectionId": "yn7mYAQY"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCreateUserOrder' test.out

#- 425 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '4BZ2wHse' \
    --userId 'eaZk4Pim' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserOrder' test.out

#- 426 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'xsAo34hs' \
    --userId 'wrdzbGLm' \
    > test.out 2>&1
eval_tap $? 426 'PublicCancelUserOrder' test.out

#- 427 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'h3MygXbD' \
    --userId 'sQzphm28' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserOrderHistories' test.out

#- 428 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'H7jb8oPJ' \
    --userId 'B2zYVbmf' \
    > test.out 2>&1
eval_tap $? 428 'PublicDownloadUserOrderReceipt' test.out

#- 429 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'MSZFqNWq' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetPaymentAccounts' test.out

#- 430 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '7IKDhmI6' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'UnNg91bv' \
    > test.out 2>&1
eval_tap $? 430 'PublicDeletePaymentAccount' test.out

#- 431 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'FeInJSsg' \
    --autoCalcEstimatedPrice 'true' \
    --language 'n8r7PSeZ' \
    --region '4k2fnXyR' \
    --storeId 'wDhO6kKA' \
    --viewId '9HakQ4ld' \
    > test.out 2>&1
eval_tap $? 431 'PublicListActiveSections' test.out

#- 432 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'd6jz8RM7' \
    --chargeStatus 'CHARGED' \
    --itemId 'wd41E1qb' \
    --limit '56' \
    --offset '2' \
    --sku 'gEt2dmDo' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 432 'PublicQueryUserSubscriptions' test.out

#- 433 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'JC6rNGnO' \
    --body '{"currencyCode": "OVPr3anb", "itemId": "nqHE09WI", "language": "qvV_xSaA_951", "region": "R1CbUU80", "returnUrl": "r2X7SyP3", "source": "gsf1pitb"}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSubscribeSubscription' test.out

#- 434 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '3LoscVgq' \
    --itemId 'UWM4ob0G' \
    > test.out 2>&1
eval_tap $? 434 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 435 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i53N31u8' \
    --userId 'H0vRiSGE' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserSubscription' test.out

#- 436 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YvDbOjfS' \
    --userId '85HGmnim' \
    > test.out 2>&1
eval_tap $? 436 'PublicChangeSubscriptionBillingAccount' test.out

#- 437 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'I3H9tZpA' \
    --userId 'A9t9k7vM' \
    --body '{"immediate": false, "reason": "4iGS10sZ"}' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelSubscription' test.out

#- 438 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EruK4QpN' \
    --userId 'ii0AIOHi' \
    --excludeFree 'true' \
    --limit '16' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscriptionBillingHistories' test.out

#- 439 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'RLoijFal' \
    --language 'O3rCHegG' \
    --storeId 'VIpW417P' \
    > test.out 2>&1
eval_tap $? 439 'PublicListViews' test.out

#- 440 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '1r7wqrwf' \
    --namespace $AB_NAMESPACE \
    --userId '8UuRp6WI' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetWallet' test.out

#- 441 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'aJDU6Wye' \
    --namespace $AB_NAMESPACE \
    --userId 'JgKH5Fo6' \
    --limit '87' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 441 'PublicListUserWalletTransactions' test.out

#- 442 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate '2Ceh7YLc' \
    --baseAppId '1Q1VB6of' \
    --categoryPath '3bZqXost' \
    --features '5MFP78r8' \
    --includeSubCategoryItem 'false' \
    --itemName 'x9qfaXvk' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '13' \
    --offset '15' \
    --region 'aX1R9Z7a' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt:desc", "createdAt:asc", "name"]' \
    --storeId 'f5U0j0l7' \
    --tags 'yT0TziAn' \
    --targetNamespace '13b5SFoV' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 442 'QueryItems1' test.out

#- 443 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'Z27gzRre' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 443 'ImportStore1' test.out

#- 444 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'nTlKFD1s' \
    --body '{"itemIds": ["TZqHVYTd", "eZruTaqb", "Sm3h339i"]}' \
    > test.out 2>&1
eval_tap $? 444 'ExportStore1' test.out

#- 445 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '8NxGJgsQ' \
    --body '{"entitlementCollectionId": "Ihne4xAQ", "entitlementOrigin": "Xbox", "metadata": {"5wEr8vip": {}, "feJH54Th": {}, "u91Ekwat": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "m6Ot2UgZ", "namespace": "JsMwFvuA"}, "item": {"itemId": "TGZ09o0b", "itemSku": "Mo19jFTK", "itemType": "LvGfjIYO"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "jkraYdaT", "namespace": "2KqlVAIb"}, "item": {"itemId": "oViDOmC4", "itemSku": "TqUBJ7MK", "itemType": "UITZRM6B"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "IXDmtBqp", "namespace": "PR3Axbo5"}, "item": {"itemId": "zzr1rT9w", "itemSku": "Oqrg3O6P", "itemType": "32ivRPuF"}, "quantity": 56, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "3m1qbpld"}' \
    > test.out 2>&1
eval_tap $? 445 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE