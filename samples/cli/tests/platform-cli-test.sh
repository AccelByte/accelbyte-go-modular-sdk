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
echo "1..415"

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

#- 3 TestFulfillmentScriptEval
samples/cli/sample-apps Platform testFulfillmentScriptEval \
    --body '{"context": {"item": {"appId": "OciqKVrI", "appType": "DLC", "baseAppId": "Epr1MTRc", "boothName": "a50J8XeX", "boundItemIds": ["k5XK0yPl", "tfy0Gr6e", "Pvkmcig0"], "categoryPath": "GZDx39Zv", "clazz": "ZFM9gQer", "createdAt": "1972-06-06T00:00:00Z", "description": "B9OAOHlW", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"mmrcBxEe": {}, "C0FACtmU": {}, "7ySpPp4c": {}}, "features": ["RsxgxsmD", "JgVowF3W", "NCtuSNVl"], "fresh": true, "images": [{"as": "ttzmQJlN", "caption": "6LDdDikb", "height": 13, "imageUrl": "JltXdEdw", "smallImageUrl": "ymtnxHoh", "width": 66}, {"as": "MD6HVB8N", "caption": "ks0Vm267", "height": 91, "imageUrl": "ba3X9vjK", "smallImageUrl": "8ug1H72S", "width": 18}, {"as": "9eQ8ZuYd", "caption": "c1PHMFRp", "height": 22, "imageUrl": "Y6ljtjdD", "smallImageUrl": "laQYVsEN", "width": 75}], "itemId": "Y5wAPHLB", "itemIds": ["pTeK48oX", "wQ03RKfP", "qHDUnV0D"], "itemQty": {"U1gTOJuZ": 30, "nwz3q4yn": 45, "w7ps88LG": 29}, "itemType": "EXTENSION", "language": "Gd7LF4fN", "listable": true, "localExt": {"RzeTaEkQ": {}, "nc7st7xn": {}, "fM5TMg5s": {}}, "longDescription": "dIAJozkN", "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 34, "duration": 87, "endDate": "1975-11-13T00:00:00Z", "itemId": "glFdtjcL", "itemSku": "SQEWmTm1", "itemType": "pj4pbf0I"}, {"count": 15, "duration": 64, "endDate": "1983-02-26T00:00:00Z", "itemId": "KH2YJ1fL", "itemSku": "H2wQ6jWR", "itemType": "MuwCIxlF"}, {"count": 49, "duration": 13, "endDate": "1994-07-25T00:00:00Z", "itemId": "pvf3Ianj", "itemSku": "YEoQuqRZ", "itemType": "lNzsmUL7"}], "name": "KycCiWxi", "odds": 0.494686767392273, "type": "PROBABILITY_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 82, "duration": 76, "endDate": "1978-06-15T00:00:00Z", "itemId": "LT7g9iy6", "itemSku": "4c6y08JG", "itemType": "hCcTZVJE"}, {"count": 92, "duration": 96, "endDate": "1990-03-27T00:00:00Z", "itemId": "njRxYT2K", "itemSku": "HbBWNdSM", "itemType": "GcDJZhpV"}, {"count": 52, "duration": 84, "endDate": "1985-07-16T00:00:00Z", "itemId": "ycNsSpkr", "itemSku": "KdsvAaTt", "itemType": "ouFgow7T"}], "name": "NIAQRbqB", "odds": 0.7043189707139816, "type": "REWARD", "weight": 6}, {"lootBoxItems": [{"count": 83, "duration": 13, "endDate": "1984-08-12T00:00:00Z", "itemId": "zzNVvQUQ", "itemSku": "XfS9km10", "itemType": "2p27HZ6I"}, {"count": 87, "duration": 70, "endDate": "1993-04-14T00:00:00Z", "itemId": "ripYY47U", "itemSku": "iQBt3rin", "itemType": "8lTVhcEO"}, {"count": 81, "duration": 6, "endDate": "1991-09-25T00:00:00Z", "itemId": "fw6Vf0E0", "itemSku": "fdGQnVDZ", "itemType": "Jhxbjh8U"}], "name": "ZzgTeb83", "odds": 0.08488069160263889, "type": "PROBABILITY_GROUP", "weight": 27}], "rollFunction": "DEFAULT"}, "maxCount": 47, "maxCountPerUser": 33, "name": "zb0u1B0j", "namespace": "QABK3AFM", "optionBoxConfig": {"boxItems": [{"count": 58, "duration": 25, "endDate": "1972-10-28T00:00:00Z", "itemId": "7JYAf6R5", "itemSku": "h3cxaDld", "itemType": "JBfsMQFW"}, {"count": 39, "duration": 42, "endDate": "1987-02-07T00:00:00Z", "itemId": "PMFX7GWZ", "itemSku": "GY8ihJER", "itemType": "2sbpBrxV"}, {"count": 6, "duration": 17, "endDate": "1982-08-12T00:00:00Z", "itemId": "u8PYiXuj", "itemSku": "R8eZibQl", "itemType": "giIN7NHi"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 14, "comparison": "isGreaterThanOrEqual", "name": "25zgExEO", "predicateType": "EntitlementPredicate", "value": "w8lly2rI", "values": ["oUlt2Far", "4pmGceSG", "c9q1GIRq"]}, {"anyOf": 26, "comparison": "includes", "name": "yFLnI1q7", "predicateType": "SeasonPassPredicate", "value": "DElVrgs8", "values": ["1ogCFg34", "jgXn6PAc", "ZEYARgoA"]}, {"anyOf": 9, "comparison": "isGreaterThan", "name": "GVG8ALGs", "predicateType": "EntitlementPredicate", "value": "v6FxcEQl", "values": ["nVpZpVa9", "kw7XhZeC", "kR9ifTzh"]}]}, {"operator": "or", "predicates": [{"anyOf": 55, "comparison": "is", "name": "fF0V0OIu", "predicateType": "EntitlementPredicate", "value": "L6vTXRcp", "values": ["FsjLqcPI", "aGi3QTDm", "zlxmZDL4"]}, {"anyOf": 71, "comparison": "isLessThan", "name": "sMy7kCP6", "predicateType": "SeasonPassPredicate", "value": "4n4LExWe", "values": ["k99ISajj", "F4XunC6f", "iYomtJ8B"]}, {"anyOf": 60, "comparison": "isLessThanOrEqual", "name": "MrH00CUJ", "predicateType": "EntitlementPredicate", "value": "PjPAeIAR", "values": ["BX8VZqaU", "LAUydLN8", "4vPbcoUN"]}]}, {"operator": "and", "predicates": [{"anyOf": 51, "comparison": "isLessThan", "name": "P06iYOk1", "predicateType": "EntitlementPredicate", "value": "cqSfaNAR", "values": ["USZ06I6z", "gn7sS3ZT", "rcYBD2Rv"]}, {"anyOf": 94, "comparison": "isLessThanOrEqual", "name": "gErK9HPH", "predicateType": "EntitlementPredicate", "value": "L0E5F5bw", "values": ["alB2yssC", "GJweqkg3", "WUhGYSR6"]}, {"anyOf": 34, "comparison": "isGreaterThan", "name": "7zSnBbZr", "predicateType": "EntitlementPredicate", "value": "qLr4NIi3", "values": ["RJy2DjPf", "6eFPsk5k", "1hW9pjq9"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 61, "fixedTrialCycles": 24, "graceDays": 88}, "region": "zZEBqy6x", "regionData": [{"currencyCode": "p8Bzjzud", "currencyNamespace": "NErEbnIP", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1987-01-27T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1985-06-19T00:00:00Z", "discountedPrice": 99, "expireAt": "1982-02-20T00:00:00Z", "price": 88, "purchaseAt": "1996-10-29T00:00:00Z", "trialPrice": 30}, {"currencyCode": "bdIMhQKC", "currencyNamespace": "N3f8JMbg", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1979-06-12T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1979-03-25T00:00:00Z", "discountedPrice": 66, "expireAt": "1977-08-16T00:00:00Z", "price": 28, "purchaseAt": "1987-03-03T00:00:00Z", "trialPrice": 82}, {"currencyCode": "want5nMm", "currencyNamespace": "xiDzQwiV", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1972-11-25T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1999-12-08T00:00:00Z", "discountedPrice": 72, "expireAt": "1990-11-05T00:00:00Z", "price": 8, "purchaseAt": "1992-05-05T00:00:00Z", "trialPrice": 15}], "saleConfig": {"currencyCode": "CFqrwirx", "price": 27}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "ZgSgoMnF", "stackable": false, "status": "ACTIVE", "tags": ["boW6Dli9", "CcxFYCkK", "TFzsG40g"], "targetCurrencyCode": "Ug2hkgD4", "targetItemId": "UxQAwvhl", "targetNamespace": "BrEiw52v", "thumbnailUrl": "dLa1hy2h", "title": "UUw1uKbq", "updatedAt": "1986-03-20T00:00:00Z", "useCount": 10}, "namespace": "aSYF4ks8", "order": {"currency": {"currencyCode": "g7wQO8Wy", "currencySymbol": "URG4hf4u", "currencyType": "REAL", "decimals": 63, "namespace": "eFB9q3z3"}, "ext": {"8SkYDcpy": {}, "ePJv9Mim": {}, "mNBin93T": {}}, "free": false}, "source": "CONSUME_ENTITLEMENT"}, "script": "gH7PkO37", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'H1guRq5J' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'bsIYP8UP' \
    --body '{"grantDays": "rwXfhNnX"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '1Z8ILCdv' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'AJ9WM72o' \
    --body '{"grantDays": "dC6yBNkS"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "9BO9VwNg", "dryRun": true, "fulfillmentUrl": "JIqPDBPd", "itemType": "MEDIA", "purchaseConditionUrl": "A4Z9TzuD"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'FWcf3ITp' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'ybPx3uCO' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'RzDoI9yE' \
    --body '{"clazz": "gejYzCoF", "dryRun": true, "fulfillmentUrl": "OTovMWul", "purchaseConditionUrl": "sL2Z6cNO"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '46TLzX0u' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --name 'z12Mqu9R' \
    --offset '46' \
    --tag 'Ko1mhdWD' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3s6r3Kc3", "items": [{"extraSubscriptionDays": 40, "itemId": "eR2hBPli", "itemName": "Sv1NsJOU", "quantity": 88}, {"extraSubscriptionDays": 78, "itemId": "520Iwj5l", "itemName": "wxrHJHeK", "quantity": 32}, {"extraSubscriptionDays": 56, "itemId": "57jeOsix", "itemName": "KernwXvl", "quantity": 35}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 75, "maxRedeemCountPerCodePerUser": 75, "maxSaleCount": 56, "name": "NcF9xmJM", "redeemEnd": "1973-03-07T00:00:00Z", "redeemStart": "1983-02-17T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MQWWLydr", "UubHAxAq", "GXHsSorR"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'IShuWYeP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'RDEBcoRK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8gQnYqFg", "items": [{"extraSubscriptionDays": 5, "itemId": "lX0MiN7t", "itemName": "gJOOCt3K", "quantity": 76}, {"extraSubscriptionDays": 92, "itemId": "BgCtJnRk", "itemName": "tZMntlio", "quantity": 55}, {"extraSubscriptionDays": 0, "itemId": "Yjz96d3w", "itemName": "pmRa6mjD", "quantity": 4}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 67, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 83, "name": "EbGgJZWL", "redeemEnd": "1982-10-02T00:00:00Z", "redeemStart": "1975-04-06T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["bvQgHK4h", "H3dCMpUj", "fVAVxvsN"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'QNs0fomC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetLootBoxPluginConfig' test.out

#- 20 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "9iMepRgk"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "a9X5Vzaw"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateLootBoxPluginConfig' test.out

#- 21 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeleteLootBoxPluginConfig' test.out

#- 22 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 22 'UplodLootBoxPluginConfigCert' test.out

#- 23 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 23 'GetLootBoxGrpcInfo' test.out

#- 24 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetSectionPluginConfig' test.out

#- 25 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "9fVKZuZT"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "5YD7EQ34"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateSectionPluginConfig' test.out

#- 26 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteSectionPluginConfig' test.out

#- 27 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 27 'UploadSectionPluginConfigCert' test.out

#- 28 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'JMbftp7i' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'AvjU6cmx' \
    --body '{"categoryPath": "Aq1igkDk", "localizationDisplayNames": {"fb1OToP1": "XYqW4Oen", "YJ49lxHt": "Cdn0jDFD", "isdQOqxx": "Ypij5AkN"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'FFU8rhdz' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'bxgoDqeF' \
    --namespace $AB_NAMESPACE \
    --storeId 'Gow9wOgf' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'CK6kO8lT' \
    --namespace $AB_NAMESPACE \
    --storeId 'G05uYI1q' \
    --body '{"localizationDisplayNames": {"sy1yyJpJ": "10bo7Fh7", "bLXgglX2": "FBSF6ydw", "iBgdulTm": "QTcZLhQI"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Kwn6TrsS' \
    --namespace $AB_NAMESPACE \
    --storeId 'sMis3baj' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 't0b8stcD' \
    --namespace $AB_NAMESPACE \
    --storeId 'htbEQ4wu' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'vbm6KQxp' \
    --namespace $AB_NAMESPACE \
    --storeId 'yxLsW3UL' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '555vqc6z' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '26' \
    --code 'OuaE2rQP' \
    --limit '60' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'x1IEBJda' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 89}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId '47xZ0VKR' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'mllamDup' \
    --namespace $AB_NAMESPACE \
    --batchNo '90' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'VeaOtHQn' \
    --namespace $AB_NAMESPACE \
    --batchNo '11' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '7v9jE8we' \
    --namespace $AB_NAMESPACE \
    --code 'XWUlH3so' \
    --limit '44' \
    --offset '54' \
    --userId '03IDW3xj' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'O1qvqIBn' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'nmWwFukF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'tcvfnIm6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'EnableCode' test.out

#- 45 GetServicePluginConfig
eval_tap 0 45 'GetServicePluginConfig # SKIP deprecated' test.out

#- 46 UpdateServicePluginConfig
eval_tap 0 46 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 47 DeleteServicePluginConfig
eval_tap 0 47 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 48 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 48 'ListCurrencies' test.out

#- 49 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ztg7erUD", "currencySymbol": "oS1hUlDT", "currencyType": "VIRTUAL", "decimals": 0, "localizationDescriptions": {"SYn3A6dd": "6u8uavnI", "ZDdHN5QW": "lcFHbAbW", "vzcqbVWR": "2CKIVdFc"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Y7Oe0WvY' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"vUJnybSK": "6J61s1F1", "2nRpSvMX": "91xlfQkE", "N44b5feP": "pg1ImHYe"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'DmF7pzal' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '0hYFK5xG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'uYAqUU9B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'GetCurrencySummary' test.out

#- 54 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDLCItemConfig' test.out

#- 55 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "b2ikdoTk", "rewards": [{"currency": {"currencyCode": "1ICNIece", "namespace": "ldApi0F3"}, "item": {"itemId": "BWv3pxyl", "itemSku": "6bE8dBiQ", "itemType": "loP0LXbr"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "xhTJvRHP", "namespace": "McNdOJA3"}, "item": {"itemId": "COoWJL0V", "itemSku": "GiGRZYTI", "itemType": "5AHd79Am"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "yntY5R9c", "namespace": "FlPsSkf0"}, "item": {"itemId": "iI98tDty", "itemSku": "8nILilfQ", "itemType": "SsenAw28"}, "quantity": 38, "type": "CURRENCY"}]}, {"id": "YGIvLKDZ", "rewards": [{"currency": {"currencyCode": "xYTeHJrP", "namespace": "BN7ZJ819"}, "item": {"itemId": "TYid7Wbo", "itemSku": "fmxZbK0N", "itemType": "E3CSPGC4"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "UsSuN0Gf", "namespace": "7w3II5qa"}, "item": {"itemId": "raf5U9wY", "itemSku": "D5e5sz1O", "itemType": "ZNtWZwpW"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "6h95ICSK", "namespace": "3YomyGF2"}, "item": {"itemId": "kuTqAhv3", "itemSku": "zBP9Qg2a", "itemType": "Lmof1B1N"}, "quantity": 51, "type": "CURRENCY"}]}, {"id": "RwNU2zDr", "rewards": [{"currency": {"currencyCode": "0M3M7epn", "namespace": "CsNFDnrL"}, "item": {"itemId": "ob7xfRHK", "itemSku": "ohHj9vG9", "itemType": "q8BFJrU3"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "x1YoMphP", "namespace": "IGfY0HHm"}, "item": {"itemId": "re90QNnD", "itemSku": "gj8F1NKB", "itemType": "sqhuIv8b"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "v4c9qyrV", "namespace": "RpPTPrIX"}, "item": {"itemId": "2h4Zgkf1", "itemSku": "cyvlHhUh", "itemType": "cs9si2So"}, "quantity": 54, "type": "ITEM"}]}]}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateDLCItemConfig' test.out

#- 56 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteDLCItemConfig' test.out

#- 57 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetPlatformDLCConfig' test.out

#- 58 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"udHEfd4S": "IHTvwvnD", "4nTImHFe": "MV7vWjtb", "Djs7mpkS": "ErUaEhz3"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"Y5cJtMSv": "JQLgWPyw", "LJNeeI1i": "Y7ajVDOI", "vGVrVML4": "muJWIVFb"}}, {"platform": "STEAM", "platformDlcIdMap": {"VAQrzBNc": "oesFwXzU", "LGRm5ey1": "gIMhDmv3", "95SDVzxe": "2LKic415"}}]}' \
    > test.out 2>&1
eval_tap $? 58 'UpdatePlatformDLCConfig' test.out

#- 59 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeletePlatformDLCConfig' test.out

#- 60 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'UgRjMX8c' \
    --itemId '["bSbbHWG3", "MiFSXK4h", "oA4foYqm"]' \
    --limit '96' \
    --offset '69' \
    --userId '0xs6D7vP' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["LaO47IiR", "Qktkaq3H", "D6YFlVAj"]' \
    --limit '42' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1997-07-11T00:00:00Z", "grantedCode": "eNSwzbtm", "itemId": "yD20vHbB", "itemNamespace": "zh4Pe4BM", "language": "zsx_luPr", "quantity": 56, "region": "UuTnw6gv", "source": "ACHIEVEMENT", "startDate": "1972-04-25T00:00:00Z", "storeId": "MKp94fN2"}, {"endDate": "1974-06-28T00:00:00Z", "grantedCode": "oB9ucg18", "itemId": "wQJufo9T", "itemNamespace": "axnGxJxa", "language": "HX", "quantity": 98, "region": "AKSU3REH", "source": "REDEEM_CODE", "startDate": "1978-10-26T00:00:00Z", "storeId": "M0L2wVb5"}, {"endDate": "1982-07-29T00:00:00Z", "grantedCode": "ippjZZ6g", "itemId": "FzJXuuCM", "itemNamespace": "9T3QugOG", "language": "SFzo_RsDn_404", "quantity": 50, "region": "Oa8Zpyiq", "source": "ACHIEVEMENT", "startDate": "1994-12-10T00:00:00Z", "storeId": "1zAlUZgY"}], "userIds": ["MMlLCjnT", "HjaIKi07", "w7IEc20m"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["IGjgkjBK", "8JZwsoz3", "5e8bp6vv"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'uGiUL6JQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '42' \
    --status 'SUCCESS' \
    --userId 'NefYrZBJ' \
    > test.out 2>&1
eval_tap $? 65 'QueryFulfillmentHistories' test.out

#- 66 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetAppleIAPConfig' test.out

#- 67 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "v2kp1YvU", "password": "rHcUccAo"}' \
    > test.out 2>&1
eval_tap $? 67 'UpdateAppleIAPConfig' test.out

#- 68 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteAppleIAPConfig' test.out

#- 69 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEpicGamesIAPConfig' test.out

#- 70 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "BsRthPgl"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateEpicGamesIAPConfig' test.out

#- 71 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'DeleteEpicGamesIAPConfig' test.out

#- 72 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetGoogleIAPConfig' test.out

#- 73 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "N8dP56g7", "serviceAccountId": "oh5dCHmh"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateGoogleIAPConfig' test.out

#- 74 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteGoogleIAPConfig' test.out

#- 75 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 75 'UpdateGoogleP12File' test.out

#- 76 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetIAPItemConfig' test.out

#- 77 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "tM23tAdo", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"7tzPywr9": "qcPHBRAZ", "qJ1Rpsfq": "B08c20c0", "JFiuPb9o": "6H3MldaC"}}, {"itemIdentity": "pS9JMDxP", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ZFYxueC2": "JobCnW6B", "5SjIhRF1": "vfXrgKRH", "NMtC42Bh": "OosbeBC2"}}, {"itemIdentity": "H47IJEKQ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"x9dRdh3O": "orCs2nzU", "3PRgilSd": "DfacNhZJ", "P3YEibnL": "s1TPx76L"}}]}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateIAPItemConfig' test.out

#- 78 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteIAPItemConfig' test.out

#- 79 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetOculusIAPConfig' test.out

#- 80 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "3H6ChcTb", "appSecret": "6yMqvly4"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateOculusIAPConfig' test.out

#- 81 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteOculusIAPConfig' test.out

#- 82 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetPlayStationIAPConfig' test.out

#- 83 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "obUQWlhq"}' \
    > test.out 2>&1
eval_tap $? 83 'UpdatePlaystationIAPConfig' test.out

#- 84 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'DeletePlaystationIAPConfig' test.out

#- 85 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetSteamIAPConfig' test.out

#- 86 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "Q2T6feB8", "publisherAuthenticationKey": "Lm12jgTM"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateSteamIAPConfig' test.out

#- 87 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeleteSteamIAPConfig' test.out

#- 88 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetTwitchIAPConfig' test.out

#- 89 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "2Zkfr350", "clientSecret": "bV7GEnym", "organizationId": "07brhqRy"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateTwitchIAPConfig' test.out

#- 90 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteTwitchIAPConfig' test.out

#- 91 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetXblIAPConfig' test.out

#- 92 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "po5FoulH"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateXblIAPConfig' test.out

#- 93 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeleteXblAPConfig' test.out

#- 94 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'JQcsVtHh' \
    > test.out 2>&1
eval_tap $? 94 'UpdateXblBPCertFile' test.out

#- 95 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'XLgApyY4' \
    --itemId 'aQTDprVG' \
    --itemType 'CODE' \
    --endTime 'VRuipPkd' \
    --startTime 'wVfVr6XD' \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'mQVcRglX' \
    --itemId 'icLSL3NZ' \
    --itemType 'EXTENSION' \
    --endTime 'KWUCbJ00' \
    --startTime 'rGO4gq56' \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'RFgLkZf1' \
    --body '{"categoryPath": "nl4dkC5d", "targetItemId": "ZulJIHt8", "targetNamespace": "LQCEzfZR"}' \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId '8SYYre9n' \
    --body '{"appId": "SJMfyShO", "appType": "SOFTWARE", "baseAppId": "TWNaQtob", "boothName": "uPdWHdik", "categoryPath": "efDG95fw", "clazz": "M617dsgr", "displayOrder": 40, "entitlementType": "CONSUMABLE", "ext": {"anvvesvX": {}, "DImOUAtO": {}, "MMffrhZE": {}}, "features": ["Uxsgd8Xl", "iiD8BEc5", "BEZP6Oph"], "images": [{"as": "bLVS7VMi", "caption": "XIfPSn0a", "height": 22, "imageUrl": "8L3w8YOE", "smallImageUrl": "oi2H5TdO", "width": 2}, {"as": "8C92jHmr", "caption": "Btm9RwJl", "height": 64, "imageUrl": "QRJXFMI3", "smallImageUrl": "XDIpBOyX", "width": 9}, {"as": "D5TeZNhZ", "caption": "n7Vb8mQl", "height": 63, "imageUrl": "CVz6GLwb", "smallImageUrl": "MkKSOh9d", "width": 76}], "itemIds": ["1GaxelWq", "Y9Kxobpl", "kGRPOkgf"], "itemQty": {"6aGPifiL": 91, "7nJ1by38": 68, "x0UeTEvg": 69}, "itemType": "SEASON", "listable": false, "localizations": {"F5bReYNY": {"description": "lxZOGhMi", "localExt": {"eoLjvBwk": {}, "4POKX7OH": {}, "H36tZFns": {}}, "longDescription": "ZXCt9jrf", "title": "Op9G0xAT"}, "ZxvOgMrS": {"description": "LhqXE70Y", "localExt": {"BkP2H517": {}, "gOBCGGEV": {}, "ubisIln9": {}}, "longDescription": "JOO4Ar8p", "title": "7i74UnDI"}, "XpFQ5o49": {"description": "O4mUXRzz", "localExt": {"5EI6MFpE": {}, "Gt8JM0DL": {}, "68DPRNZa": {}}, "longDescription": "iIKepdNf", "title": "4QofDFKO"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 79, "duration": 73, "endDate": "1979-09-22T00:00:00Z", "itemId": "z7eokTGl", "itemSku": "pzw2RIIo", "itemType": "m2TyK0Dr"}, {"count": 57, "duration": 35, "endDate": "1997-09-25T00:00:00Z", "itemId": "P8Ix9m11", "itemSku": "2KCgsvKZ", "itemType": "NAS4p6ji"}, {"count": 75, "duration": 86, "endDate": "1975-04-01T00:00:00Z", "itemId": "ay3rXzeX", "itemSku": "nCcLkcpi", "itemType": "6yKRWUuA"}], "name": "uSmaJymz", "odds": 0.661635105770264, "type": "REWARD", "weight": 85}, {"lootBoxItems": [{"count": 59, "duration": 97, "endDate": "1979-09-12T00:00:00Z", "itemId": "wsap8K4Z", "itemSku": "BMlDSX57", "itemType": "qYBqLxEh"}, {"count": 84, "duration": 49, "endDate": "1990-07-11T00:00:00Z", "itemId": "qUEr68un", "itemSku": "Hdr2w5tv", "itemType": "JFJanXKC"}, {"count": 35, "duration": 66, "endDate": "1984-04-04T00:00:00Z", "itemId": "rM79Phyy", "itemSku": "txCVYa9S", "itemType": "Y2Bx2mNR"}], "name": "FNnYj5R7", "odds": 0.24370519001836255, "type": "REWARD_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 81, "duration": 91, "endDate": "1983-01-28T00:00:00Z", "itemId": "F62Dic6L", "itemSku": "gFe19Y8R", "itemType": "w7W6EIOF"}, {"count": 35, "duration": 85, "endDate": "1977-01-11T00:00:00Z", "itemId": "8hIlhhKz", "itemSku": "XNXthG35", "itemType": "kYPER1H0"}, {"count": 56, "duration": 26, "endDate": "1976-01-23T00:00:00Z", "itemId": "dh6Th37g", "itemSku": "niWc82d0", "itemType": "sgkWG0ip"}], "name": "dEUlZwDN", "odds": 0.7870284422149267, "type": "REWARD_GROUP", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 98, "maxCountPerUser": 2, "name": "23aBYqhT", "optionBoxConfig": {"boxItems": [{"count": 22, "duration": 41, "endDate": "1985-02-27T00:00:00Z", "itemId": "AcGGOgvg", "itemSku": "dOyKBZku", "itemType": "2WgVjary"}, {"count": 51, "duration": 92, "endDate": "1998-03-30T00:00:00Z", "itemId": "YpHH1noe", "itemSku": "bO6HVWFr", "itemType": "4Eb10H7B"}, {"count": 54, "duration": 74, "endDate": "1978-02-23T00:00:00Z", "itemId": "dPAfWhJr", "itemSku": "YEFIUrEX", "itemType": "rjSFa4LW"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 81, "fixedTrialCycles": 100, "graceDays": 65}, "regionData": {"GDkHUykD": [{"currencyCode": "eYqlXHA2", "currencyNamespace": "u9MXEyrG", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1986-05-07T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1988-03-27T00:00:00Z", "expireAt": "1972-11-18T00:00:00Z", "price": 98, "purchaseAt": "1997-03-29T00:00:00Z", "trialPrice": 0}, {"currencyCode": "F8ciwMSW", "currencyNamespace": "AdksCWwQ", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1975-10-02T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1971-05-08T00:00:00Z", "expireAt": "1976-03-17T00:00:00Z", "price": 45, "purchaseAt": "1982-07-28T00:00:00Z", "trialPrice": 77}, {"currencyCode": "KgvWJvSM", "currencyNamespace": "bxvc6oSh", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1988-09-24T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1977-08-02T00:00:00Z", "expireAt": "1971-01-28T00:00:00Z", "price": 93, "purchaseAt": "1995-12-02T00:00:00Z", "trialPrice": 100}], "GCc00Vqs": [{"currencyCode": "650cWOuU", "currencyNamespace": "xcLsXjgi", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1978-11-14T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1986-03-29T00:00:00Z", "expireAt": "1982-05-19T00:00:00Z", "price": 74, "purchaseAt": "1977-12-28T00:00:00Z", "trialPrice": 47}, {"currencyCode": "TrWLWRAF", "currencyNamespace": "OQFp89dV", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1981-06-23T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-11-02T00:00:00Z", "expireAt": "1973-03-27T00:00:00Z", "price": 98, "purchaseAt": "1997-06-14T00:00:00Z", "trialPrice": 80}, {"currencyCode": "11Lpb0gu", "currencyNamespace": "xNGX5Blr", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1974-01-12T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1982-03-08T00:00:00Z", "expireAt": "1991-09-27T00:00:00Z", "price": 22, "purchaseAt": "1972-11-04T00:00:00Z", "trialPrice": 26}], "z7oH1Whi": [{"currencyCode": "rftgGVlI", "currencyNamespace": "dgXmcE7v", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1998-12-01T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-09-26T00:00:00Z", "expireAt": "1976-02-27T00:00:00Z", "price": 59, "purchaseAt": "1991-10-20T00:00:00Z", "trialPrice": 0}, {"currencyCode": "PSprOnS2", "currencyNamespace": "ptJAm2zJ", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1996-01-16T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1981-11-16T00:00:00Z", "expireAt": "1998-09-07T00:00:00Z", "price": 72, "purchaseAt": "1984-08-31T00:00:00Z", "trialPrice": 72}, {"currencyCode": "xrbj9vW7", "currencyNamespace": "yWASlpUL", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1984-12-14T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1994-09-23T00:00:00Z", "expireAt": "1999-06-12T00:00:00Z", "price": 89, "purchaseAt": "1998-02-25T00:00:00Z", "trialPrice": 76}]}, "saleConfig": {"currencyCode": "FekC5CEI", "price": 6}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "UjMlzbnI", "stackable": true, "status": "ACTIVE", "tags": ["dHkLjnmD", "0Upw2p2g", "RGh4RVbt"], "targetCurrencyCode": "j2SQiaWf", "targetNamespace": "WIlzzisT", "thumbnailUrl": "ZyqHJL5i", "useCount": 86}' \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'tMunIM8n' \
    --appId 'DQQmpAZx' \
    > test.out 2>&1
eval_tap $? 99 'GetItemByAppId' test.out

#- 100 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'm2kDBitC' \
    --baseAppId 'aDUyH0TS' \
    --categoryPath 'dc97QL2q' \
    --features 'accVYwOB' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '46' \
    --offset '67' \
    --region 'SS8QT4Cp' \
    --sortBy '["createdAt:desc", "name", "updatedAt:asc"]' \
    --storeId 'TRmlYiHz' \
    --tags 'RIDIY5PU' \
    --targetNamespace 'A68m60vi' \
    > test.out 2>&1
eval_tap $? 100 'QueryItems' test.out

#- 101 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["9grQ4eAQ", "Absul8cV", "U6aF5M5J"]' \
    > test.out 2>&1
eval_tap $? 101 'ListBasicItemsByFeatures' test.out

#- 102 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'czzrGUOY' \
    --sku '774vphJJ' \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'oU0xqfjU' \
    --populateBundle 'true' \
    --region 'YdcpeJtt' \
    --storeId 'sBTgCmu4' \
    --sku 'vkPqEp9w' \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'qAb4fGzI' \
    --sku 'ej7zR5qz' \
    > test.out 2>&1
eval_tap $? 104 'GetItemIdBySku' test.out

#- 105 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["NbqgCOPI", "2Ft4xF3r", "Ov5jlC1B"]' \
    --storeId 'JGN2VYD8' \
    > test.out 2>&1
eval_tap $? 105 'GetBulkItemIdBySkus' test.out

#- 106 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'ClqIyrpC' \
    --region 'a1Yq3UTx' \
    --storeId 'X55Z5RGF' \
    --itemIds 'xHHX7WIZ' \
    > test.out 2>&1
eval_tap $? 106 'BulkGetLocaleItems' test.out

#- 107 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetAvailablePredicateTypes' test.out

#- 108 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'jBlZy7DY' \
    --body '{"itemIds": ["92nFHJar", "YL3VJAeW", "CJL6zunY"]}' \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'UdTWKGsJ' \
    --body '{"changes": [{"itemIdentities": ["pLeo3MUm", "VIK1vh11", "37UTaSqC"], "itemIdentityType": "ITEM_SKU", "regionData": {"OgokN2rL": [{"currencyCode": "gMIvI4U2", "currencyNamespace": "wyI3KFcM", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1999-06-27T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1991-04-03T00:00:00Z", "discountedPrice": 44, "expireAt": "1983-01-26T00:00:00Z", "price": 96, "purchaseAt": "1982-05-02T00:00:00Z", "trialPrice": 23}, {"currencyCode": "c6HWyE5u", "currencyNamespace": "v7IVHe7e", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1973-02-25T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1976-10-20T00:00:00Z", "discountedPrice": 92, "expireAt": "1973-08-18T00:00:00Z", "price": 93, "purchaseAt": "1992-05-13T00:00:00Z", "trialPrice": 87}, {"currencyCode": "1Yz8rWH1", "currencyNamespace": "Hm1Iw4aK", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1998-03-18T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-05-03T00:00:00Z", "discountedPrice": 68, "expireAt": "1998-04-24T00:00:00Z", "price": 56, "purchaseAt": "1989-08-26T00:00:00Z", "trialPrice": 23}], "VEH0NUQg": [{"currencyCode": "xZFeZiWl", "currencyNamespace": "eEfFuiTC", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1977-08-05T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1971-03-08T00:00:00Z", "discountedPrice": 57, "expireAt": "1987-10-11T00:00:00Z", "price": 6, "purchaseAt": "1980-11-17T00:00:00Z", "trialPrice": 15}, {"currencyCode": "kzqYamCA", "currencyNamespace": "JLYZfZwC", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1989-09-08T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1995-06-14T00:00:00Z", "discountedPrice": 65, "expireAt": "1976-02-05T00:00:00Z", "price": 35, "purchaseAt": "1992-02-15T00:00:00Z", "trialPrice": 76}, {"currencyCode": "VyhyaAsv", "currencyNamespace": "SGj693h4", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1994-09-22T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1999-03-06T00:00:00Z", "discountedPrice": 5, "expireAt": "1975-11-13T00:00:00Z", "price": 78, "purchaseAt": "1981-06-15T00:00:00Z", "trialPrice": 77}], "1uHsjOTa": [{"currencyCode": "pEikgtBq", "currencyNamespace": "FYo4koOb", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1974-09-22T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1978-06-22T00:00:00Z", "discountedPrice": 88, "expireAt": "1993-08-06T00:00:00Z", "price": 66, "purchaseAt": "1994-10-12T00:00:00Z", "trialPrice": 69}, {"currencyCode": "8RRnc7Qf", "currencyNamespace": "zMwqgiG4", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1982-07-26T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1972-04-13T00:00:00Z", "discountedPrice": 100, "expireAt": "1997-07-10T00:00:00Z", "price": 34, "purchaseAt": "1988-03-10T00:00:00Z", "trialPrice": 85}, {"currencyCode": "bV7Ldzap", "currencyNamespace": "8nt5BG2y", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1989-09-09T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1981-05-03T00:00:00Z", "discountedPrice": 0, "expireAt": "1980-03-17T00:00:00Z", "price": 14, "purchaseAt": "1985-11-01T00:00:00Z", "trialPrice": 21}]}}, {"itemIdentities": ["Sg97vn2W", "Feum4WYK", "8FoCJWR1"], "itemIdentityType": "ITEM_ID", "regionData": {"LdlnM7xx": [{"currencyCode": "EFf4GacO", "currencyNamespace": "oLtzK1BS", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1987-12-26T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1988-05-18T00:00:00Z", "discountedPrice": 65, "expireAt": "1972-07-20T00:00:00Z", "price": 26, "purchaseAt": "1987-07-02T00:00:00Z", "trialPrice": 12}, {"currencyCode": "Dddh8c9h", "currencyNamespace": "iWQZGNzJ", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1977-02-05T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-07-18T00:00:00Z", "discountedPrice": 1, "expireAt": "1996-04-18T00:00:00Z", "price": 81, "purchaseAt": "1990-01-06T00:00:00Z", "trialPrice": 76}, {"currencyCode": "iKkmi6mg", "currencyNamespace": "S01jx4hI", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1976-02-12T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1989-08-03T00:00:00Z", "discountedPrice": 85, "expireAt": "1978-06-27T00:00:00Z", "price": 3, "purchaseAt": "1997-12-19T00:00:00Z", "trialPrice": 51}], "kbDkrBmU": [{"currencyCode": "xrdK5t6j", "currencyNamespace": "T3h2RowS", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1994-06-06T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1986-09-02T00:00:00Z", "discountedPrice": 60, "expireAt": "1999-01-20T00:00:00Z", "price": 20, "purchaseAt": "1997-07-09T00:00:00Z", "trialPrice": 30}, {"currencyCode": "vGUgFef4", "currencyNamespace": "s2dirsaT", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1979-09-06T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-01-18T00:00:00Z", "discountedPrice": 41, "expireAt": "1992-10-22T00:00:00Z", "price": 68, "purchaseAt": "1988-07-01T00:00:00Z", "trialPrice": 15}, {"currencyCode": "LsigCrio", "currencyNamespace": "2HW0KHve", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1988-01-01T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1989-06-11T00:00:00Z", "discountedPrice": 98, "expireAt": "1976-03-09T00:00:00Z", "price": 40, "purchaseAt": "1983-07-18T00:00:00Z", "trialPrice": 69}], "9yIyDZrk": [{"currencyCode": "LQMwnmzu", "currencyNamespace": "A3sSqhqd", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1989-07-04T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1982-03-02T00:00:00Z", "discountedPrice": 39, "expireAt": "1990-09-13T00:00:00Z", "price": 30, "purchaseAt": "1979-09-27T00:00:00Z", "trialPrice": 95}, {"currencyCode": "wHDQqkdX", "currencyNamespace": "h6p4osde", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1983-06-12T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1975-10-29T00:00:00Z", "discountedPrice": 30, "expireAt": "1981-10-20T00:00:00Z", "price": 30, "purchaseAt": "1986-03-19T00:00:00Z", "trialPrice": 62}, {"currencyCode": "tNuuLT1u", "currencyNamespace": "6KAjuqEf", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1987-10-03T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1982-01-19T00:00:00Z", "discountedPrice": 32, "expireAt": "1981-08-07T00:00:00Z", "price": 59, "purchaseAt": "1987-11-19T00:00:00Z", "trialPrice": 75}]}}, {"itemIdentities": ["RmQiHLiT", "SXm5iHpt", "jRj82jF4"], "itemIdentityType": "ITEM_SKU", "regionData": {"p8z1CYal": [{"currencyCode": "OZj9SRTA", "currencyNamespace": "Ti9UYTYF", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1994-09-11T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1990-09-27T00:00:00Z", "discountedPrice": 5, "expireAt": "1980-11-01T00:00:00Z", "price": 90, "purchaseAt": "1974-12-22T00:00:00Z", "trialPrice": 16}, {"currencyCode": "0a5Jk49e", "currencyNamespace": "UMZhDU9l", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1971-07-02T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1978-07-03T00:00:00Z", "discountedPrice": 38, "expireAt": "1992-03-04T00:00:00Z", "price": 74, "purchaseAt": "1980-07-25T00:00:00Z", "trialPrice": 52}, {"currencyCode": "5iV2U6TL", "currencyNamespace": "oXp3IPeT", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1971-11-30T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1977-01-27T00:00:00Z", "discountedPrice": 14, "expireAt": "1982-09-07T00:00:00Z", "price": 76, "purchaseAt": "1977-07-14T00:00:00Z", "trialPrice": 68}], "poPid923": [{"currencyCode": "7E9prF2N", "currencyNamespace": "wnXPbC7v", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1983-11-17T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1992-05-20T00:00:00Z", "discountedPrice": 28, "expireAt": "1976-04-27T00:00:00Z", "price": 87, "purchaseAt": "1988-09-10T00:00:00Z", "trialPrice": 86}, {"currencyCode": "B9yg7hXq", "currencyNamespace": "xe5M6p4M", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1992-01-19T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1976-10-23T00:00:00Z", "discountedPrice": 40, "expireAt": "1985-07-15T00:00:00Z", "price": 55, "purchaseAt": "1999-03-09T00:00:00Z", "trialPrice": 80}, {"currencyCode": "nFhFjPm8", "currencyNamespace": "rh0P9Mkw", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1989-08-21T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1998-03-23T00:00:00Z", "discountedPrice": 87, "expireAt": "1997-03-23T00:00:00Z", "price": 82, "purchaseAt": "1998-02-16T00:00:00Z", "trialPrice": 23}], "ulLz2bV2": [{"currencyCode": "xol1iJAc", "currencyNamespace": "fWHtPXbi", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1991-10-10T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1987-08-28T00:00:00Z", "discountedPrice": 15, "expireAt": "1972-02-22T00:00:00Z", "price": 58, "purchaseAt": "1972-01-01T00:00:00Z", "trialPrice": 89}, {"currencyCode": "M17WwxOj", "currencyNamespace": "ihbeQzfQ", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1971-04-19T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1980-03-18T00:00:00Z", "discountedPrice": 56, "expireAt": "1990-06-12T00:00:00Z", "price": 75, "purchaseAt": "1997-05-01T00:00:00Z", "trialPrice": 41}, {"currencyCode": "CPftgMOg", "currencyNamespace": "9noKgtVZ", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1994-03-01T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1973-05-26T00:00:00Z", "discountedPrice": 76, "expireAt": "1976-04-30T00:00:00Z", "price": 28, "purchaseAt": "1990-03-07T00:00:00Z", "trialPrice": 68}]}}]}' \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'SEASON' \
    --limit '40' \
    --offset '36' \
    --sortBy 'fR5Ox5lA' \
    --storeId 'pmvCESQ8' \
    --keyword 'zD72h9xE' \
    --language 'bqYn2fMk' \
    > test.out 2>&1
eval_tap $? 110 'SearchItems' test.out

#- 111 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '64' \
    --offset '100' \
    --sortBy '["name", "updatedAt:asc"]' \
    --storeId 'gB9K7na1' \
    > test.out 2>&1
eval_tap $? 111 'QueryUncategorizedItems' test.out

#- 112 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'UP4zMKZe' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '8TAlqb0P' \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'I1WRMUxn' \
    --namespace $AB_NAMESPACE \
    --storeId 'JiLGZIUZ' \
    --body '{"appId": "0KZDQcro", "appType": "SOFTWARE", "baseAppId": "0I1E7hOo", "boothName": "6r6ufv4J", "categoryPath": "0ewhsyQo", "clazz": "tQ6stzFO", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"Oobbynlj": {}, "FT595PwU": {}, "s9Tz1ugo": {}}, "features": ["tuP5zGpd", "txx8c2gb", "WufK6v1y"], "images": [{"as": "PlmHfHuX", "caption": "AewL8KNB", "height": 19, "imageUrl": "Atn2bzxp", "smallImageUrl": "jBT6rDzR", "width": 80}, {"as": "hLdBEhs6", "caption": "LiVzhJQ2", "height": 56, "imageUrl": "EbOgHrp6", "smallImageUrl": "GfzV4bwM", "width": 18}, {"as": "WCwT7baG", "caption": "p6GOQntk", "height": 63, "imageUrl": "bIi98PYd", "smallImageUrl": "jDZpJcL5", "width": 52}], "itemIds": ["BvZs14Z7", "OXa9pdgl", "TxgjT162"], "itemQty": {"NaZ9VRzP": 80, "hjHNQ5Bb": 80, "x0XFMhlN": 93}, "itemType": "BUNDLE", "listable": false, "localizations": {"DWQBGb3E": {"description": "CXNVInVi", "localExt": {"tRx7FQGo": {}, "PVRLPK2i": {}, "ovWMSl9x": {}}, "longDescription": "20RNiLsw", "title": "Nh1do6RE"}, "gnsF8lVd": {"description": "8OTqHZLD", "localExt": {"FwQvH1i8": {}, "GQwt86cH": {}, "1TgBmIKx": {}}, "longDescription": "CDKh1vmh", "title": "cQMWgylC"}, "laG0hYbn": {"description": "sZaeiGaS", "localExt": {"YHYG0jzW": {}, "wjUYdBYV": {}, "qCeAVniy": {}}, "longDescription": "jJovMF2a", "title": "ecsuLHiR"}}, "lootBoxConfig": {"rewardCount": 39, "rewards": [{"lootBoxItems": [{"count": 58, "duration": 99, "endDate": "1989-02-01T00:00:00Z", "itemId": "nUMJrQUm", "itemSku": "aM2xNrxn", "itemType": "mpL0JRXO"}, {"count": 81, "duration": 39, "endDate": "1996-05-21T00:00:00Z", "itemId": "xUHUTtwv", "itemSku": "aIZBJzHC", "itemType": "eBAne1cR"}, {"count": 6, "duration": 1, "endDate": "1998-07-05T00:00:00Z", "itemId": "pkTUDRdF", "itemSku": "mJmjRHKZ", "itemType": "qNetAbje"}], "name": "WmEWwrJM", "odds": 0.7209635969772885, "type": "REWARD", "weight": 77}, {"lootBoxItems": [{"count": 91, "duration": 97, "endDate": "1979-07-24T00:00:00Z", "itemId": "pLKYBN55", "itemSku": "3XeObiBK", "itemType": "bhy7Aq28"}, {"count": 100, "duration": 75, "endDate": "1989-11-19T00:00:00Z", "itemId": "diFCI1Wx", "itemSku": "JuxsNsHN", "itemType": "lvJJNcMz"}, {"count": 56, "duration": 43, "endDate": "1996-06-13T00:00:00Z", "itemId": "JbSQFX86", "itemSku": "yBn69HLo", "itemType": "5UwxQCk5"}], "name": "FuOW55z2", "odds": 0.27488762615682494, "type": "REWARD", "weight": 71}, {"lootBoxItems": [{"count": 95, "duration": 92, "endDate": "1999-08-03T00:00:00Z", "itemId": "Y0YImdA4", "itemSku": "mLfTHN40", "itemType": "Aq1p3drR"}, {"count": 24, "duration": 44, "endDate": "1994-11-15T00:00:00Z", "itemId": "Jz37Vl6Y", "itemSku": "SVrH51x7", "itemType": "fGkx6H0H"}, {"count": 71, "duration": 57, "endDate": "1987-10-21T00:00:00Z", "itemId": "qKLj5UTx", "itemSku": "fVNxEWok", "itemType": "HUWAU4CU"}], "name": "niHtRBet", "odds": 0.8049547461608626, "type": "REWARD", "weight": 43}], "rollFunction": "DEFAULT"}, "maxCount": 80, "maxCountPerUser": 94, "name": "AdOrUA1K", "optionBoxConfig": {"boxItems": [{"count": 69, "duration": 83, "endDate": "1972-07-27T00:00:00Z", "itemId": "tG9qJsER", "itemSku": "xNVUjkYi", "itemType": "iiXxqUu4"}, {"count": 86, "duration": 32, "endDate": "1985-08-24T00:00:00Z", "itemId": "3ZmnEusa", "itemSku": "bEY0alBF", "itemType": "scR8uxGD"}, {"count": 45, "duration": 21, "endDate": "1997-08-09T00:00:00Z", "itemId": "BXWsoeWu", "itemSku": "iW7DfjGZ", "itemType": "jE087rEj"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 35, "fixedTrialCycles": 60, "graceDays": 81}, "regionData": {"dtYfUgow": [{"currencyCode": "lzNWLgcm", "currencyNamespace": "oUFofJoJ", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1972-09-15T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1977-07-18T00:00:00Z", "expireAt": "1988-03-25T00:00:00Z", "price": 79, "purchaseAt": "1975-10-21T00:00:00Z", "trialPrice": 61}, {"currencyCode": "tojZrlsA", "currencyNamespace": "VirgN6BB", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1984-01-05T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1994-11-11T00:00:00Z", "expireAt": "1986-02-25T00:00:00Z", "price": 24, "purchaseAt": "1993-02-06T00:00:00Z", "trialPrice": 8}, {"currencyCode": "QlFKkaqn", "currencyNamespace": "4ODoiqCu", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1972-11-13T00:00:00Z", "expireAt": "1991-08-09T00:00:00Z", "price": 95, "purchaseAt": "1972-11-30T00:00:00Z", "trialPrice": 8}], "zmKbsqYt": [{"currencyCode": "jHERRnD0", "currencyNamespace": "uj4UAqHz", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1986-08-08T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1976-09-21T00:00:00Z", "expireAt": "1990-10-31T00:00:00Z", "price": 52, "purchaseAt": "1980-08-28T00:00:00Z", "trialPrice": 85}, {"currencyCode": "teeeWUHm", "currencyNamespace": "FbhP6cMv", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1975-12-27T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1997-10-22T00:00:00Z", "expireAt": "1984-02-22T00:00:00Z", "price": 56, "purchaseAt": "1990-06-19T00:00:00Z", "trialPrice": 52}, {"currencyCode": "4r88X0Yz", "currencyNamespace": "xLjDpSTV", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1997-02-20T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1983-01-03T00:00:00Z", "expireAt": "1981-03-02T00:00:00Z", "price": 88, "purchaseAt": "1980-08-20T00:00:00Z", "trialPrice": 29}], "RAxKZnrI": [{"currencyCode": "60T6FndW", "currencyNamespace": "YvZhTTKT", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1974-08-11T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1972-03-21T00:00:00Z", "expireAt": "1972-03-15T00:00:00Z", "price": 81, "purchaseAt": "1997-02-14T00:00:00Z", "trialPrice": 68}, {"currencyCode": "0A6cLkG1", "currencyNamespace": "NpyQVkQ1", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1992-05-11T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1972-06-08T00:00:00Z", "expireAt": "1976-12-11T00:00:00Z", "price": 37, "purchaseAt": "1998-12-31T00:00:00Z", "trialPrice": 75}, {"currencyCode": "uz3i9XEl", "currencyNamespace": "t4vsASli", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1971-03-07T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1988-02-10T00:00:00Z", "expireAt": "1980-12-22T00:00:00Z", "price": 94, "purchaseAt": "1972-09-21T00:00:00Z", "trialPrice": 78}]}, "saleConfig": {"currencyCode": "fB1Qb70c", "price": 93}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "aj6n1irA", "stackable": true, "status": "ACTIVE", "tags": ["6FIJw025", "h6jwFigT", "BIZNaJPr"], "targetCurrencyCode": "OnoMoKOr", "targetNamespace": "CeazYWaK", "thumbnailUrl": "MXCJUEw7", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'CqH8GrjB' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'kGvGF1od' \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'DAf5boU9' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 75, "orderNo": "xpj3fBx9"}' \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'tHZOjleT' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'ZZ7vefQy' \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'IUoBPjL6' \
    --namespace $AB_NAMESPACE \
    --storeId '8tqfxRxg' \
    --body '{"carousel": [{"alt": "LLm9EtIB", "previewUrl": "0gzqqCQ0", "thumbnailUrl": "ULGTvOwB", "type": "image", "url": "jzeh1cvu", "videoSource": "youtube"}, {"alt": "BAlZZgNA", "previewUrl": "IrfGIBMJ", "thumbnailUrl": "pJkNrHBE", "type": "image", "url": "yIKaKqao", "videoSource": "youtube"}, {"alt": "vPLw1TOm", "previewUrl": "tf1eOoDC", "thumbnailUrl": "F4kgdc3I", "type": "image", "url": "pQVNKDtd", "videoSource": "generic"}], "developer": "MVf3EQO5", "forumUrl": "aSXwhwIt", "genres": ["Strategy", "FreeToPlay", "FreeToPlay"], "localizations": {"VhizLWcF": {"announcement": "47SE5qns", "slogan": "TafreJ9y"}, "eLsPrqrq": {"announcement": "RRzdyQzT", "slogan": "VRjvz3oC"}, "tQ2M69wj": {"announcement": "WoUjhQgC", "slogan": "SGIWkWng"}}, "platformRequirements": {"dseDPBiD": [{"additionals": "96V02yHc", "directXVersion": "0xWQrUrJ", "diskSpace": "llIGPwiB", "graphics": "Kw4DEc6W", "label": "2LhnJj9L", "osVersion": "SCNvLYn5", "processor": "VjfkOhf7", "ram": "gmUDWtfB", "soundCard": "oubNjPSb"}, {"additionals": "NemijizR", "directXVersion": "ngXPhUwl", "diskSpace": "Lcdgs8wF", "graphics": "QpBnJO2F", "label": "DEoi3ukN", "osVersion": "tTBvU0QR", "processor": "VNMIAVG3", "ram": "mpPSDqIW", "soundCard": "1Tp8h0Iw"}, {"additionals": "Lv6bKBJ2", "directXVersion": "XX4tw4B9", "diskSpace": "rAJZcZVl", "graphics": "Vq83Ehhn", "label": "AObfZS5E", "osVersion": "WQXB0uCR", "processor": "4ktmNyg8", "ram": "Qzz16X0b", "soundCard": "wn1zk7nb"}], "XHvB28pU": [{"additionals": "AO1iJ8r5", "directXVersion": "J7kzv6ml", "diskSpace": "pbygovxV", "graphics": "pTSPJ9nB", "label": "HER0FtpU", "osVersion": "0EBgam0L", "processor": "ZLq5D9mg", "ram": "VcQGbdDG", "soundCard": "1FWX7Myy"}, {"additionals": "1tFTxgj5", "directXVersion": "fLcUUJ9T", "diskSpace": "LWi6hCAQ", "graphics": "d2DdNxmg", "label": "8vwqjSqP", "osVersion": "MReaooix", "processor": "6QsY6n8r", "ram": "VELf5oDN", "soundCard": "S86LsMVk"}, {"additionals": "fCxpBRpq", "directXVersion": "XLBlYRcb", "diskSpace": "uSblmvmo", "graphics": "KKFniVKl", "label": "PbPJAqAT", "osVersion": "WxRUQ24P", "processor": "rmnOQ523", "ram": "f6l8q6YC", "soundCard": "t5GmHSMf"}], "oE3vCdSf": [{"additionals": "tZGqknge", "directXVersion": "A6zdTpVR", "diskSpace": "rS79aqTZ", "graphics": "Kh2bNsCY", "label": "KT23f0nL", "osVersion": "4eQR6VuB", "processor": "7VwGINYj", "ram": "KlXsoiVY", "soundCard": "QdMqgRsy"}, {"additionals": "na6maxuu", "directXVersion": "t3dgfrqY", "diskSpace": "hDzxJt7E", "graphics": "NSt4xRYZ", "label": "DZ5hAAto", "osVersion": "Inem22Ou", "processor": "soELKqv8", "ram": "eznyxgwK", "soundCard": "xqRqTrTk"}, {"additionals": "SzVE6sPG", "directXVersion": "K3wzr1DF", "diskSpace": "bzZk4PG7", "graphics": "dKOfyuUk", "label": "uAxxrioJ", "osVersion": "yk3Jg1UM", "processor": "LWXGpjO1", "ram": "AClk2akD", "soundCard": "dHTI4yPz"}]}, "platforms": ["IOS", "Linux", "MacOS"], "players": ["MMO", "CrossPlatformMulti", "Single"], "primaryGenre": "MassivelyMultiplayer", "publisher": "SA3zIhbU", "releaseDate": "1974-09-01T00:00:00Z", "websiteUrl": "m17QnzLZ"}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'MAIGKKRO' \
    --namespace $AB_NAMESPACE \
    --storeId '7vEYJalC' \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'FqDU7MnS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '3UxKHZID' \
    --namespace $AB_NAMESPACE \
    --storeId 'xqBi6xZO' \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'pGJysKJe' \
    --itemId '9cIHF2jQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'KxXjb3DW' \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'ay6NLWc1' \
    --itemId 'qNhemYW7' \
    --namespace $AB_NAMESPACE \
    --storeId '6U2g7z9x' \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '92Svto9j' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'vOC52OlQ' \
    --populateBundle 'true' \
    --region 'hNUL0bSR' \
    --storeId 'HSGFkWaz' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'fXkIjbj8' \
    --namespace $AB_NAMESPACE \
    --storeId 'A1N7EB0t' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 59, "comparison": "is", "name": "ue7sFe36", "predicateType": "SeasonTierPredicate", "value": "RqAZTqR8", "values": ["glaJCFhE", "OCBQ7T1Q", "j6s0Lw4o"]}, {"anyOf": 38, "comparison": "includes", "name": "1PDaWtHT", "predicateType": "EntitlementPredicate", "value": "yUMffoK8", "values": ["4M2LQQ2b", "5iSYT1Rs", "MK2dAfLP"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "ioWZRs0M", "predicateType": "SeasonTierPredicate", "value": "OuGw0X1h", "values": ["07rF8paW", "i327br27", "xJzLNi50"]}]}, {"operator": "and", "predicates": [{"anyOf": 42, "comparison": "isNot", "name": "m0YLT8jw", "predicateType": "EntitlementPredicate", "value": "h6ThMTYd", "values": ["oNNjDhg5", "xXFOxLbd", "6AofrGxq"]}, {"anyOf": 32, "comparison": "isGreaterThan", "name": "7uLjXDrC", "predicateType": "SeasonPassPredicate", "value": "zo7K8r41", "values": ["lAnBVPKb", "wmYRd4gr", "4OuPI1D2"]}, {"anyOf": 88, "comparison": "isLessThanOrEqual", "name": "QZYdIuRn", "predicateType": "EntitlementPredicate", "value": "4Dd8RNZb", "values": ["tNbpe2Y1", "ZPZnXbz7", "11scAjfW"]}]}, {"operator": "and", "predicates": [{"anyOf": 47, "comparison": "excludes", "name": "90lCUkdN", "predicateType": "SeasonTierPredicate", "value": "SLinpL6x", "values": ["OgXLU6hs", "8OxzxtQh", "x6fDt1j5"]}, {"anyOf": 33, "comparison": "includes", "name": "nQO3AAiE", "predicateType": "SeasonPassPredicate", "value": "hzEFEy1v", "values": ["bicBo3mq", "MWbVigey", "KnNJo8Of"]}, {"anyOf": 95, "comparison": "isLessThanOrEqual", "name": "Dmtycr2A", "predicateType": "EntitlementPredicate", "value": "kEJIPNU0", "values": ["z6Fg12FG", "8iC7bJOd", "5klZTnd1"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'tehkrVpN' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "7HV6I0TC"}' \
    > test.out 2>&1
eval_tap $? 125 'ReturnItem' test.out

#- 126 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --name 'zN1H5Uvu' \
    --offset '58' \
    --tag 'zXjWT0Io' \
    > test.out 2>&1
eval_tap $? 126 'QueryKeyGroups' test.out

#- 127 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vgoCYPJ5", "name": "GHF2n1Ev", "status": "ACTIVE", "tags": ["JER6x5b9", "Wu4OE5Ao", "71Lk1OY3"]}' \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'OiPwMneS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Y6a1hN6y' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pWdpV1SM", "name": "1pnahYdd", "status": "INACTIVE", "tags": ["H0NUBan2", "d7DZSwWh", "BhBVbsCn"]}' \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'LBQos5S0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'TAa3ONH6' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '44' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'ENL15I40' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 133 'UploadKeys' test.out

#- 134 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '3a5T6d4M' \
    --limit '27' \
    --offset '89' \
    --orderNos '["ZbMVGd3O", "17CR41LM", "Ny9FGaK6"]' \
    --sortBy 'YqwwneKR' \
    --startTime 'yH7p3fe2' \
    --status 'REFUNDED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 134 'QueryOrders' test.out

#- 135 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetOrderStatistics' test.out

#- 136 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ekSnx8k6' \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '6ps48rDS' \
    --body '{"description": "RoWf6PRb"}' \
    > test.out 2>&1
eval_tap $? 137 'RefundOrder' test.out

#- 138 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetPaymentCallbackConfig' test.out

#- 139 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "CQ63JqL8", "privateKey": "iVH70nQ9"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdatePaymentCallbackConfig' test.out

#- 140 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'IORDW266' \
    --externalId 'pahwxr0W' \
    --limit '14' \
    --notificationSource 'WXPAY' \
    --notificationType 'WqwZ3rby' \
    --offset '42' \
    --paymentOrderNo 'rulohkM8' \
    --startDate '7Xpe3VnP' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 140 'QueryPaymentNotifications' test.out

#- 141 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'nBWvO6A9' \
    --limit '33' \
    --offset '0' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 141 'QueryPaymentOrders' test.out

#- 142 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "QDHK8EAD", "currencyNamespace": "cjml7gtm", "customParameters": {"8MSJCXZd": {}, "aSMg1kD4": {}, "95ePPm8w": {}}, "description": "iJtDrW8S", "extOrderNo": "FjBx1Dfn", "extUserId": "SlvNLbH0", "itemType": "MEDIA", "language": "lN", "metadata": {"Ggf9UXrC": "lR6AROPc", "gPPbqRPB": "3TRyuf4m", "hk9xHsWW": "tTlBdKbu"}, "notifyUrl": "iZLTyp9Z", "omitNotification": true, "platform": "GxSjjhV6", "price": 36, "recurringPaymentOrderNo": "iEyCe7jf", "region": "bqUDjWzi", "returnUrl": "PKoBQH6G", "sandbox": false, "sku": "YLq68Aa5", "subscriptionId": "ApgynAef", "targetNamespace": "KHpOayJe", "targetUserId": "Mdsgasxg", "title": "pf9NeLPE"}' \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'UOUOFEqJ' \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6jakAz4n' \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y0lNqw20' \
    --body '{"extTxId": "YMWDX5At", "paymentMethod": "adOiAO6U", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'U6eoQPtJ' \
    --body '{"description": "tTDwpLPr"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lG5mEZEv' \
    --body '{"amount": 78, "currencyCode": "VPWP2XIz", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 89, "vat": 38}' \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'GoMZcoTE' \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Playstation", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 151 'ResetPlatformWalletConfig' test.out

#- 152 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 152 'GetRevocationConfig' test.out

#- 153 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateRevocationConfig' test.out

#- 154 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 154 'DeleteRevocationConfig' test.out

#- 155 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'TWhvDn8J' \
    --limit '68' \
    --offset '75' \
    --source 'ORDER' \
    --startTime 'mvo9IPo7' \
    --status 'SUCCESS' \
    --transactionId 'myZv3yvU' \
    --userId 'DsPrVdGc' \
    > test.out 2>&1
eval_tap $? 155 'QueryRevocationHistories' test.out

#- 156 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetRevocationPluginConfig' test.out

#- 157 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "6Do3bNle"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "0KUkH5PT"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationPluginConfig' test.out

#- 158 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'DeleteRevocationPluginConfig' test.out

#- 159 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 159 'UploadRevocationPluginConfigCert' test.out

#- 160 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Elff7LZN", "eventTopic": "J4wTDHXw", "maxAwarded": 64, "maxAwardedPerUser": 16, "namespaceExpression": "onz94z81", "rewardCode": "YwCp7dA0", "rewardConditions": [{"condition": "iKFdb1If", "conditionName": "ijrjD6R1", "eventName": "l42JYA82", "rewardItems": [{"duration": 34, "endDate": "1988-06-21T00:00:00Z", "itemId": "0BZOgwhh", "quantity": 5}, {"duration": 43, "endDate": "1986-12-20T00:00:00Z", "itemId": "BKCOZNLg", "quantity": 19}, {"duration": 1, "endDate": "1971-01-18T00:00:00Z", "itemId": "6Vl9kC36", "quantity": 38}]}, {"condition": "3SX97yco", "conditionName": "l1u1XYUu", "eventName": "dHLl5CzS", "rewardItems": [{"duration": 55, "endDate": "1977-08-30T00:00:00Z", "itemId": "8pPeH9C5", "quantity": 49}, {"duration": 77, "endDate": "1990-02-04T00:00:00Z", "itemId": "rwODEeOl", "quantity": 75}, {"duration": 59, "endDate": "1985-09-02T00:00:00Z", "itemId": "F0Q0bKdh", "quantity": 97}]}, {"condition": "Dojcabgn", "conditionName": "Xd9hd7Fy", "eventName": "WtGjljs3", "rewardItems": [{"duration": 78, "endDate": "1974-06-06T00:00:00Z", "itemId": "QgctS6oW", "quantity": 26}, {"duration": 21, "endDate": "1978-09-02T00:00:00Z", "itemId": "cZG4LEUr", "quantity": 21}, {"duration": 35, "endDate": "1991-06-29T00:00:00Z", "itemId": "k5ABMd2Z", "quantity": 26}]}], "userIdExpression": "UrSmAqeL"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateReward' test.out

#- 161 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '1vUgbPI9' \
    --limit '27' \
    --offset '95' \
    --sortBy '["namespace:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 161 'QueryRewards' test.out

#- 162 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'ExportRewards' test.out

#- 163 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'ImportRewards' test.out

#- 164 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'STfdBkMm' \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'S5TN339m' \
    --body '{"description": "jYrxUbHy", "eventTopic": "dtRwUTuL", "maxAwarded": 64, "maxAwardedPerUser": 100, "namespaceExpression": "uxvewmL9", "rewardCode": "LwuWJGNR", "rewardConditions": [{"condition": "EC2KLoBF", "conditionName": "FyEv8lso", "eventName": "S2FQWHTE", "rewardItems": [{"duration": 16, "endDate": "1998-06-08T00:00:00Z", "itemId": "3MX8BxLM", "quantity": 62}, {"duration": 72, "endDate": "1978-12-27T00:00:00Z", "itemId": "pYhZPbES", "quantity": 100}, {"duration": 55, "endDate": "1984-06-22T00:00:00Z", "itemId": "waoSmAkv", "quantity": 56}]}, {"condition": "MfyJ3KAj", "conditionName": "e8eO3ziy", "eventName": "ClNLVeiy", "rewardItems": [{"duration": 53, "endDate": "1980-02-07T00:00:00Z", "itemId": "i4ljWdPB", "quantity": 25}, {"duration": 56, "endDate": "1979-02-06T00:00:00Z", "itemId": "7fTHbeM9", "quantity": 42}, {"duration": 50, "endDate": "1972-05-03T00:00:00Z", "itemId": "oZE6OOCk", "quantity": 96}]}, {"condition": "dxwRcJsr", "conditionName": "siznBJqr", "eventName": "vLiPJRSu", "rewardItems": [{"duration": 73, "endDate": "1979-08-07T00:00:00Z", "itemId": "mpyAr1ZC", "quantity": 49}, {"duration": 89, "endDate": "1985-08-30T00:00:00Z", "itemId": "qnX6BAcf", "quantity": 65}, {"duration": 88, "endDate": "1999-09-15T00:00:00Z", "itemId": "pyTxd1sE", "quantity": 45}]}], "userIdExpression": "0stO5ZiV"}' \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'aoLEaxAS' \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'WsCUHSbL' \
    --body '{"payload": {"BnaVE8wZ": {}, "kyLy3jz4": {}, "NqnvcKHY": {}}}' \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'FJokY7Fa' \
    --body '{"conditionName": "lywnOb1U", "userId": "EPSjg5xx"}' \
    > test.out 2>&1
eval_tap $? 168 'DeleteRewardConditionRecord' test.out

#- 169 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'YinIoNGL' \
    --limit '39' \
    --offset '19' \
    --start 'cxnSTog0' \
    --storeId 'dNECSEQW' \
    --viewId 'sRpdK2CV' \
    > test.out 2>&1
eval_tap $? 169 'QuerySections' test.out

#- 170 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'Ixl7cmcr' \
    --body '{"active": false, "displayOrder": 81, "endDate": "1978-04-19T00:00:00Z", "ext": {"ej1UmZGo": {}, "13grrsfs": {}, "n05df5s9": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 48, "itemCount": 75, "rule": "SEQUENCE"}, "items": [{"id": "jgfat64R", "sku": "YfFhSnBP"}, {"id": "4qekPH8d", "sku": "SB4KHde8"}, {"id": "fGYgzoCv", "sku": "HdFpGAeK"}], "localizations": {"SvcXVlLd": {"description": "E9I32X5e", "localExt": {"DcMyNQ34": {}, "NsVkxljg": {}, "XwGvZiAt": {}}, "longDescription": "ZHBU7nUX", "title": "uk9OsOum"}, "cE5uIVCn": {"description": "4y6FLuLK", "localExt": {"8wWUVvNw": {}, "K8x2V2vi": {}, "65yqxUPP": {}}, "longDescription": "Wmhg7SXt", "title": "mvQhsfmI"}, "UymlCzHv": {"description": "nKwo8c7K", "localExt": {"PsEj1jXW": {}, "j7zV1Wum": {}, "r17G5VxM": {}}, "longDescription": "oNYARdxn", "title": "H0NOKdRZ"}}, "name": "24kjWsSn", "rotationType": "NONE", "startDate": "1984-05-01T00:00:00Z", "viewId": "alsenr4e"}' \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'HXdlj4PB' \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Ktd6o53P' \
    --storeId '92iPpdIG' \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '6ih1TEtr' \
    --storeId '5sgdqYZE' \
    --body '{"active": true, "displayOrder": 86, "endDate": "1975-11-17T00:00:00Z", "ext": {"Oz8zWwnA": {}, "Nqu3yZXR": {}, "D5sVQM5W": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 62, "itemCount": 8, "rule": "SEQUENCE"}, "items": [{"id": "Mt6LK1Oz", "sku": "a1NjPDYN"}, {"id": "u9a2jCUe", "sku": "AtIqtwbE"}, {"id": "27plXT6w", "sku": "FSRL5Nkc"}], "localizations": {"33vf6tIn": {"description": "mLLbmzO5", "localExt": {"z04apmeC": {}, "o1UQKbb8": {}, "5G7BNx7w": {}}, "longDescription": "op3MvNtS", "title": "ruBDKz2y"}, "dP25ONJX": {"description": "CfM3ydei", "localExt": {"E993nHQ2": {}, "R5Z1o86z": {}, "A6w1YsWv": {}}, "longDescription": "k0nNohYk", "title": "iiKjvt9B"}, "cTy8JDpW": {"description": "6GE7TNI0", "localExt": {"dj2plzpX": {}, "dzWDQvLz": {}, "gmI7RTwZ": {}}, "longDescription": "I6MJHktX", "title": "6WHhwNOS"}}, "name": "mZBmsFp6", "rotationType": "FIXED_PERIOD", "startDate": "1984-03-31T00:00:00Z", "viewId": "lWViDdOC"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '4aW7nCmR' \
    --storeId 'YD9xVR1Q' \
    > test.out 2>&1
eval_tap $? 174 'DeleteSection' test.out

#- 175 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 175 'ListStores' test.out

#- 176 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "9YWokXuL", "defaultRegion": "qJVaF0j6", "description": "Zhm1VQ7V", "supportedLanguages": ["1HxFnfY4", "ImF7wvOB", "mlRfWi8h"], "supportedRegions": ["cvPutlpE", "xB5tcyx0", "Uz9hPiWM"], "title": "ftSogX45"}' \
    > test.out 2>&1
eval_tap $? 176 'CreateStore' test.out

#- 177 ImportStore
eval_tap 0 177 'ImportStore # SKIP deprecated' test.out

#- 178 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetPublishedStore' test.out

#- 179 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'DeletePublishedStore' test.out

#- 180 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetPublishedStoreBackup' test.out

#- 181 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'RollbackPublishedStore' test.out

#- 182 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UFckeHcu' \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'OxhIVo4Y' \
    --body '{"defaultLanguage": "sEisXzYz", "defaultRegion": "GwBHOMpY", "description": "KBXic9qD", "supportedLanguages": ["28sbq1sQ", "sx0jzLXA", "zA7AEhzz"], "supportedRegions": ["xJrdFSj0", "QHZSs6pT", "ZyZ5QwLf"], "title": "UlWQ4ty0"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'D85DIkDb' \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'N5619mQ4' \
    --action 'CREATE' \
    --itemSku 'qL2bMxEu' \
    --itemType 'BUNDLE' \
    --limit '40' \
    --offset '40' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'pawS4i4X' \
    --updatedAtStart 'B2pxQgkz' \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'UEDAz725' \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'b44nYGbg' \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'LfDzkoSh' \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'G6F6A5Nu' \
    --action 'UPDATE' \
    --itemSku 'BFejH8hq' \
    --itemType 'SEASON' \
    --type 'CATEGORY' \
    --updatedAtEnd 'KRef4sr8' \
    --updatedAtStart 'bIqhDZL5' \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '3EInkOnN' \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'o05taNw7' \
    --namespace $AB_NAMESPACE \
    --storeId 'vABIxiNp' \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'bDAZB7LO' \
    --namespace $AB_NAMESPACE \
    --storeId 'lSUMn4iJ' \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '9PULvU0O' \
    --targetStoreId 'FRVrCDXI' \
    > test.out 2>&1
eval_tap $? 193 'CloneStore' test.out

#- 194 ExportStore
eval_tap 0 194 'ExportStore # SKIP deprecated' test.out

#- 195 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'AM24hPaA' \
    --limit '61' \
    --offset '0' \
    --sku '6sk6D7gr' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId '5ksNKESf' \
    > test.out 2>&1
eval_tap $? 195 'QuerySubscriptions' test.out

#- 196 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xVq007zL' \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'OylNOWcP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '3tQvCSKM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "3Cny0oTD"}' \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'aIAErZbP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'dLIgQrFq' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 94, "orderNo": "dgcwa4bH"}' \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hcYjJ5lp' \
    --body '{"achievements": [{"id": "11xk2LDA", "value": 95}, {"id": "obcbrr2J", "value": 28}, {"id": "PiUNVGD1", "value": 76}], "steamUserId": "LwVMGetn"}' \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'sJ605Nh4' \
    --xboxUserId 'jo37LAV6' \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'METUoUJO' \
    --body '{"achievements": [{"id": "BWqOdQ0M", "percentComplete": 93}, {"id": "ngoWV0aI", "percentComplete": 100}, {"id": "aUZyGPwC", "percentComplete": 0}], "serviceConfigId": "R5k60P5n", "titleId": "v4ttOLYE", "xboxUserId": "j0OidmWg"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'jzYBjQRV' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '7vU5YzFx' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'BhG07p1N' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'YTlbsAei' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '1tn48Jwv' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'nptnpDrV' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '0ggljLky' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '9U4GqOvW' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'AKmcKsq4' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'CvGBPC3p' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'e0UIT0n5' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'UiL0W9Zw' \
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '8VRF50Df' \
    --features '["SfHRGn9a", "Wmuxw3MS", "qTNSAWSf"]' \
    --itemId '["IfTT0dBo", "6PV5c7EJ", "vvwVviHN"]' \
    --limit '32' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '7tydZTOq' \
    --body '[{"endDate": "1973-04-26T00:00:00Z", "grantedCode": "iGbHxTDC", "itemId": "LddAN5Xn", "itemNamespace": "HAjIN9TW", "language": "vjB-Bz", "quantity": 75, "region": "eymdJhcj", "source": "REWARD", "startDate": "1977-08-28T00:00:00Z", "storeId": "ZGRHQDiI"}, {"endDate": "1997-11-30T00:00:00Z", "grantedCode": "dQ0UcbUk", "itemId": "So5eoFat", "itemNamespace": "vw3CsQBC", "language": "BpZG_wtzY", "quantity": 18, "region": "XTk9jD5m", "source": "REDEEM_CODE", "startDate": "1975-06-07T00:00:00Z", "storeId": "M9cVi4u1"}, {"endDate": "1978-05-17T00:00:00Z", "grantedCode": "89QGH1j5", "itemId": "MHtVQ9G6", "itemNamespace": "YRSk3bYg", "language": "keP_360", "quantity": 14, "region": "8COSvObA", "source": "PURCHASE", "startDate": "1982-06-14T00:00:00Z", "storeId": "zRJq2nW1"}]' \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'oMHjseIi' \
    --activeOnly 'false' \
    --appId '5oG4K4AA' \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Z5X1wThM' \
    --activeOnly 'false' \
    --limit '76' \
    --offset '38' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1BpmqxOO' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --itemId '794QH4yV' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ZzrpKwQc' \
    --ids '["xmNbJhnj", "gaK6N2uM", "iStEgLUe"]' \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'zWQZ3SIP' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --sku 'DQ8683Sc' \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'jyGvZjKT' \
    --appIds '["8EUfJsF3", "kbgscujx", "r01WrfxI"]' \
    --itemIds '["Mldp9zX7", "3P7eNQRW", "Zx29fhlw"]' \
    --skus '["ovt1HLfZ", "kCtqKDCj", "i0BCukS4"]' \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'lwi7JOpx' \
    --itemIds '["grR2Pu3R", "zDXxI50T", "6Xgjux2y"]' \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'mGwO2VyF' \
    --appId 'vz1c6Rfl' \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'F5dal2zb' \
    --entitlementClazz 'CODE' \
    --itemId 'LAADTZbB' \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '3SkWu2gi' \
    --ids '["vfC0AUUI", "55EJkb0O", "cJwVkfWY"]' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'U5b7uFso' \
    --entitlementClazz 'MEDIA' \
    --sku 'ACKJUzgo' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'zxq9VCWY' \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'oaow6bbn' \
    --entitlementIds 'dyRtI96R' \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'FIUN7Okn' \
    --namespace $AB_NAMESPACE \
    --userId 'PESzjMbA' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'P3Ayc65i' \
    --namespace $AB_NAMESPACE \
    --userId '7RopG9zg' \
    --body '{"endDate": "1991-11-11T00:00:00Z", "nullFieldList": ["1qDJpK4H", "dYKjkDpK", "fXYlD2uO"], "startDate": "1999-01-26T00:00:00Z", "status": "CONSUMED", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'OeC5Y0eK' \
    --namespace $AB_NAMESPACE \
    --userId 'GQpWfq55' \
    --body '{"options": ["sfms2iuQ", "lsunQGPM", "cUZs1HeH"], "requestId": "r60RF3sI", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'ZxezHhvt' \
    --namespace $AB_NAMESPACE \
    --userId '1AkzZFMv' \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'iTyPFBfr' \
    --namespace $AB_NAMESPACE \
    --userId 'TsWkTaW1' \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'lbMlrnxk' \
    --namespace $AB_NAMESPACE \
    --userId 'GS30mEd8' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'upq8vEWT' \
    --namespace $AB_NAMESPACE \
    --userId 'Lz7oiuz0' \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'U66Tzv9k' \
    --namespace $AB_NAMESPACE \
    --userId 'bRI5nyAb' \
    --body '{"reason": "mbow90vr", "useCount": 70}' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'KyvttoAO' \
    --namespace $AB_NAMESPACE \
    --userId 'MSm8W2l7' \
    --body '{"requestId": "DQO2ZiaK", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'HBLPBKAR' \
    --body '{"duration": 55, "endDate": "1987-05-09T00:00:00Z", "itemId": "Po50fYo7", "itemSku": "QA5LTDou", "language": "xnt90U5l", "metadata": {"UXb0Cu5z": {}, "mc4FVA4R": {}, "ZdUSeN3E": {}}, "order": {"currency": {"currencyCode": "iuL7cGc8", "currencySymbol": "47Heyi7s", "currencyType": "VIRTUAL", "decimals": 9, "namespace": "hmXrYD9U"}, "ext": {"9Xo0JGkS": {}, "bZP2mDqt": {}, "T2HZsMHW": {}}, "free": false}, "orderNo": "uA1VDaOT", "origin": "Steam", "quantity": 55, "region": "tBVvxtSC", "source": "REFERRAL_BONUS", "startDate": "1978-01-18T00:00:00Z", "storeId": "zE2aBeVD"}' \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'nGg6AVTe' \
    --body '{"code": "5pb89nqk", "language": "zt_Ki", "region": "5S2Y5GFJ"}' \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'reXHuO2l' \
    --body '{"metadata": {"aZgrTktt": {}, "5cVbzrfH": {}, "8LV9iiFU": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "w4Zbqgsd", "namespace": "UWjSwDA3"}, "item": {"itemId": "wuGB3wRT", "itemSku": "jOtjJ8LO", "itemType": "l8breNiP"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "qKMUg5lC", "namespace": "aRauOAD3"}, "item": {"itemId": "8mwJIQMF", "itemSku": "Oe9iZkvt", "itemType": "IoWykEUY"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "5kWWnIKl", "namespace": "bmo7Wl58"}, "item": {"itemId": "2X7pDxPw", "itemSku": "zfBgT8c8", "itemType": "jNZCsYNZ"}, "quantity": 84, "type": "CURRENCY"}], "source": "DLC_REVOCATION"}' \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'EFnU7949' \
    --endTime 'c2MzXQSr' \
    --limit '52' \
    --offset '79' \
    --productId 'rmoW8Ua7' \
    --startTime 'ePy2wbfL' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'WqerZku4' \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'VPCbRubm' \
    --endTime 'waj857dK' \
    --limit '57' \
    --offset '59' \
    --startTime 'piKCISam' \
    --status 'PENDING' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'BAVy8Wbk' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "CEZ-AkZd", "productId": "hXVnE4sF", "region": "b3sx5mkL", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'A5ZbO3va' \
    --itemId 'CaFcrzwE' \
    --limit '78' \
    --offset '57' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Fhc2Xlr8' \
    --body '{"currencyCode": "ZmBJkiDl", "currencyNamespace": "P3faqung", "discountedPrice": 43, "ext": {"MXmjU8By": {}, "V3C5FSVQ": {}, "ic9s74sD": {}}, "itemId": "pzzDliQa", "language": "69KVLAQp", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 27, "quantity": 3, "region": "OocUDj7L", "returnUrl": "czn0yYnT", "sandbox": true, "sectionId": "ihtGWG4Y"}' \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '2lakjPfI' \
    --itemId 'ilpuTrM9' \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'UUNfuFH9' \
    --userId 'MT4KH1Hi' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'ecqeVGra' \
    --userId 'rii9hoCM' \
    --body '{"status": "REFUNDING", "statusReason": "3x62pcbV"}' \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PetY1psf' \
    --userId 'MhLer1Yc' \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'd0XoDSXB' \
    --userId 'ZyQ2BsX9' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '7n0j3LZf' \
    --userId '6KT9gb1U' \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'SDoxzAUB' \
    --userId 'h9ltWu7h' \
    --body '{"additionalData": {"cardSummary": "JbjMiMTx"}, "authorisedTime": "1983-05-24T00:00:00Z", "chargebackReversedTime": "1996-01-23T00:00:00Z", "chargebackTime": "1976-08-18T00:00:00Z", "chargedTime": "1976-10-26T00:00:00Z", "createdTime": "1971-08-16T00:00:00Z", "currency": {"currencyCode": "OtqlvIkb", "currencySymbol": "GVn9nwI4", "currencyType": "VIRTUAL", "decimals": 64, "namespace": "509mff9U"}, "customParameters": {"HlqIJFDB": {}, "SyhOvEZH": {}, "nWvYQpQt": {}}, "extOrderNo": "iOXieZ4O", "extTxId": "FGzsAOcy", "extUserId": "Ynjod9dO", "issuedAt": "1996-12-22T00:00:00Z", "metadata": {"wkia8n9J": "s1j7q0dL", "V3iCs97d": "RIQ8IBWM", "vYeeR8v9": "oh3yk56w"}, "namespace": "tVDuv32c", "nonceStr": "dKXrPMHz", "paymentMethod": "hIwvw4Pd", "paymentMethodFee": 71, "paymentOrderNo": "6xkFCZQI", "paymentProvider": "PAYPAL", "paymentProviderFee": 19, "paymentStationUrl": "cvHjSJAH", "price": 18, "refundedTime": "1975-03-06T00:00:00Z", "salesTax": 94, "sandbox": false, "sku": "SemfUJiw", "status": "REFUNDED", "statusReason": "6iI6CihK", "subscriptionId": "OxkFjcUD", "subtotalPrice": 38, "targetNamespace": "KVAJtO5n", "targetUserId": "DlXD1dJw", "tax": 48, "totalPrice": 86, "totalTax": 84, "txEndTime": "1985-05-03T00:00:00Z", "type": "nBBRkP2E", "userId": "cK2cJOib", "vat": 24}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '4aHnbp77' \
    --userId 'RZ86VP8R' \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ZnJTOP5B' \
    --body '{"currencyCode": "ynG1havB", "currencyNamespace": "jH3Z3MxQ", "customParameters": {"gFypo0Tc": {}, "ojHNCBlr": {}, "g628jlOt": {}}, "description": "qTmjxnCY", "extOrderNo": "8wWywiNO", "extUserId": "COvyQNNK", "itemType": "INGAMEITEM", "language": "eCCI", "metadata": {"CX6buZQ1": "j68kktiE", "tLyhJvNd": "shH3fgV5", "pDgMFcfx": "VSawW72m"}, "notifyUrl": "jPtBGDjG", "omitNotification": true, "platform": "vctwzNh4", "price": 17, "recurringPaymentOrderNo": "Uz2ySINJ", "region": "I1iWzDy8", "returnUrl": "cNllGxh1", "sandbox": true, "sku": "hz9Poygv", "subscriptionId": "Ojmttf99", "title": "4QVNA3Fg"}' \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'g3rHTMIv' \
    --userId 'wfwHUyHz' \
    --body '{"description": "HVgyPG3C"}' \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'K5dIl1ne' \
    --body '{"code": "0Ct1wOuX", "orderNo": "nrKavgV0"}' \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'P96HrieD' \
    --body '{"meta": {"g8yrJYDc": {}, "SZM379wU": {}, "mn9RT19Q": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "ulNZtCV2", "namespace": "v2SmJVhd"}, "entitlement": {"entitlementId": "Pgb6755V"}, "item": {"itemIdentity": "3oefrpeN", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "sYRzqA9p", "namespace": "8tBkOR0g"}, "entitlement": {"entitlementId": "yJKcrHHc"}, "item": {"itemIdentity": "jenZ2HMA", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 33, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "6AeWrXzQ", "namespace": "nXiawCIg"}, "entitlement": {"entitlementId": "nj5lS3VS"}, "item": {"itemIdentity": "URgxNJVt", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 27, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "VcCD2YST"}' \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'mcOMAHsi' \
    --body '{"gameSessionId": "BcO1QQyc", "payload": {"Tw9nYlks": {}, "RZxl91eV": {}, "F9wcqTG1": {}}, "scid": "rKcaOn6o", "sessionTemplateName": "mTEQIfcj"}' \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ZgdXCAgP' \
    --chargeStatus 'NEVER' \
    --itemId 'PRryr8HD' \
    --limit '55' \
    --offset '0' \
    --sku 'ixSTFc14' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'jnC5YRu3' \
    --excludeSystem 'false' \
    --limit '66' \
    --offset '8' \
    --subscriptionId 'EtPzBWUB' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'FChKUaIC' \
    --body '{"grantDays": 11, "itemId": "Ya7AZ9SE", "language": "BI1F0G2T", "reason": "DBS1ttEU", "region": "t9tuOo2C", "source": "rDR8eTuN"}' \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'PD5jG5ZZ' \
    --itemId 'Ts6uicRg' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nS3RQKO5' \
    --userId '3Fu9Nj3J' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4RWMTA6O' \
    --userId 'OrRu4uBa' \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Hx4E9kYn' \
    --userId 'xcO4nntF' \
    --force 'true' \
    --body '{"immediate": true, "reason": "zf1nYf40"}' \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rye3hGVO' \
    --userId 'LW82iJNm' \
    --body '{"grantDays": 31, "reason": "iWfmDakf"}' \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ak8drsgY' \
    --userId 'SuabnYNt' \
    --excludeFree 'false' \
    --limit '44' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'oZ5j33vC' \
    --userId 'rf3hScNx' \
    --body '{"additionalData": {"cardSummary": "GcOpDA6L"}, "authorisedTime": "1985-05-18T00:00:00Z", "chargebackReversedTime": "1998-07-02T00:00:00Z", "chargebackTime": "1980-08-22T00:00:00Z", "chargedTime": "1987-07-01T00:00:00Z", "createdTime": "1990-09-22T00:00:00Z", "currency": {"currencyCode": "Hya5No7r", "currencySymbol": "0oYo5FHD", "currencyType": "REAL", "decimals": 55, "namespace": "2QgSdVfx"}, "customParameters": {"tix8oZoa": {}, "WbnZmaJZ": {}, "IsMcak6B": {}}, "extOrderNo": "2FP3H2qG", "extTxId": "PiWyGcaC", "extUserId": "YUb8UgKw", "issuedAt": "1983-08-22T00:00:00Z", "metadata": {"f4C7I0xS": "W5wvPym2", "WJwQMneW": "jUTkAbda", "czIcvACL": "lqQJ0TeA"}, "namespace": "DBnq3GJz", "nonceStr": "2uDVZU0m", "paymentMethod": "1xJuyMyb", "paymentMethodFee": 64, "paymentOrderNo": "JYVo8tRN", "paymentProvider": "STRIPE", "paymentProviderFee": 45, "paymentStationUrl": "kHB4g6K7", "price": 94, "refundedTime": "1973-07-03T00:00:00Z", "salesTax": 89, "sandbox": false, "sku": "vJaJGlHC", "status": "DELETED", "statusReason": "8aIDoZta", "subscriptionId": "1k2z1WvQ", "subtotalPrice": 40, "targetNamespace": "z338J4kE", "targetUserId": "vvdrpruX", "tax": 54, "totalPrice": 69, "totalTax": 13, "txEndTime": "1991-04-27T00:00:00Z", "type": "x8oPHE3o", "userId": "CnVzHtyw", "vat": 14}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '9sMsQaHF' \
    --namespace $AB_NAMESPACE \
    --userId 'CGB6Lcp5' \
    --body '{"count": 99, "orderNo": "UHCcM4Ig"}' \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '2ynts1zT' \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'OXnKMtJW' \
    --namespace $AB_NAMESPACE \
    --userId 'OxUKubqr' \
    --body '{"allowOverdraft": true, "amount": 79, "balanceOrigin": "Twitch", "balanceSource": "EXPIRATION", "metadata": {"4yM6TnzE": {}, "hMWh9zYC": {}, "wNHgAjAI": {}}, "reason": "TBvSmeRU"}' \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'T6Yu9ogF' \
    --namespace $AB_NAMESPACE \
    --userId 'kF69kQCn' \
    --limit '79' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '3Sscn8nh' \
    --namespace $AB_NAMESPACE \
    --userId 'x6gtROJC' \
    --body '{"amount": 76, "expireAt": "1979-04-30T00:00:00Z", "metadata": {"RF5aSZet": {}, "0zNr9EMe": {}, "2VKhIkQU": {}}, "origin": "Oculus", "reason": "MepGcxUE", "source": "OTHER"}' \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'qYpG2EFO' \
    --namespace $AB_NAMESPACE \
    --userId '6V0UK8E9' \
    --body '{"amount": 39, "metadata": {"tKnDy8jb": {}, "982C1MuC": {}, "jPh4kpU9": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 277 'PayWithUserWallet' test.out

#- 278 GetUserWallet
eval_tap 0 278 'GetUserWallet # SKIP deprecated' test.out

#- 279 DebitUserWallet
eval_tap 0 279 'DebitUserWallet # SKIP deprecated' test.out

#- 280 DisableUserWallet
eval_tap 0 280 'DisableUserWallet # SKIP deprecated' test.out

#- 281 EnableUserWallet
eval_tap 0 281 'EnableUserWallet # SKIP deprecated' test.out

#- 282 ListUserWalletTransactions
eval_tap 0 282 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 283 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'q3oIgN9J' \
    > test.out 2>&1
eval_tap $? 283 'ListViews' test.out

#- 284 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'H1iNePNv' \
    --body '{"displayOrder": 30, "localizations": {"LQsWDmV0": {"description": "g9B6ZkqO", "localExt": {"D6kmeISq": {}, "518G5stD": {}, "92DHzgaK": {}}, "longDescription": "d4Nhq8p2", "title": "IooMqGDN"}, "ccjnMYOQ": {"description": "2G2HYcfz", "localExt": {"6mX8wF5y": {}, "ckiwTCjC": {}, "xDnM1rrH": {}}, "longDescription": "rve5pcQl", "title": "ayxu6G2m"}, "loQOlwm5": {"description": "SuYwlPGL", "localExt": {"wcxyImCa": {}, "8YSz1GiW": {}, "D7mNmZKL": {}}, "longDescription": "8kGXgrub", "title": "azpNDJxy"}}, "name": "57eJxK3O"}' \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '1iaWNJ9g' \
    --storeId 'CPq87Woq' \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'ARCNL68A' \
    --storeId 'ZeFTBttQ' \
    --body '{"displayOrder": 24, "localizations": {"NgATgUSy": {"description": "So9vjJX5", "localExt": {"FC7rjSY9": {}, "OqRo598L": {}, "ThT0qJA3": {}}, "longDescription": "dFQXw78o", "title": "yX9CE2S3"}, "m6MNB82G": {"description": "z2eWtUH2", "localExt": {"cL0irwLE": {}, "uoAy8A6v": {}, "kxZiGGt2": {}}, "longDescription": "9gKcbWRS", "title": "mk85r2fc"}, "mdL2tkGq": {"description": "l8yiz9EL", "localExt": {"u99lIwX8": {}, "YfCeiEKT": {}, "x3mDLSoA": {}}, "longDescription": "a7eNjvlt", "title": "Dn47a9DG"}}, "name": "w82Pc51J"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'AmH8OUyy' \
    --storeId 'Oajx2q90' \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 42, "expireAt": "1987-07-31T00:00:00Z", "metadata": {"wEbKEOm6": {}, "xAJBXQMx": {}, "7FQJQgNc": {}}, "origin": "GooglePlay", "reason": "vmJ6ANvP", "source": "PROMOTION"}, "currencyCode": "hWkGfd96", "userIds": ["K0Pjwi9i", "5C8jVwEK", "Q7F9TcH8"]}, {"creditRequest": {"amount": 72, "expireAt": "1973-01-14T00:00:00Z", "metadata": {"mAvWOAGj": {}, "QvvLCV98": {}, "EGuQ9leS": {}}, "origin": "Nintendo", "reason": "qiVO3pNW", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "At0YJFqw", "userIds": ["Y4XEQGIr", "sqQVhv1T", "53gbfeai"]}, {"creditRequest": {"amount": 47, "expireAt": "1992-01-14T00:00:00Z", "metadata": {"z6R18UPR": {}, "j9QSe5KF": {}, "g037e9WU": {}}, "origin": "IOS", "reason": "5ERisjtc", "source": "REFUND"}, "currencyCode": "GkPw7bVZ", "userIds": ["tFGtJnCu", "Mblwrury", "vwCqSJgm"]}]' \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "QC2JndVf", "request": {"allowOverdraft": true, "amount": 91, "balanceOrigin": "Steam", "balanceSource": "DLC_REVOCATION", "metadata": {"QhKSodJ4": {}, "A2FK08H0": {}, "0bIbwqyr": {}}, "reason": "qwd7lQrk"}, "userIds": ["ibe4cCdC", "JccVkI6C", "V45ZSRJA"]}, {"currencyCode": "LOFRsOMQ", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"aX0ysElw": {}, "auNKiA8j": {}, "elCXb1YF": {}}, "reason": "2HYGg4Pt"}, "userIds": ["ZgdT3Yzg", "TcVi8LBa", "3dnoTWno"]}, {"currencyCode": "2pSua7J0", "request": {"allowOverdraft": false, "amount": 38, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"E8EUmttg": {}, "FBi9QQYb": {}, "sTjpWdtX": {}}, "reason": "Ne9ugsUn"}, "userIds": ["x7Q69ufj", "ku6FzUKT", "gj1766m9"]}]' \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '0KHfHRBJ' \
    --end '4WxLHQFM' \
    --start 'e7KiqRYN' \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["gwaSLHRp", "kcmT1tE7", "9TaMC62t"], "apiKey": "VpovXKhh", "authoriseAsCapture": false, "blockedPaymentMethods": ["RzWf5HCK", "T6x1EaEc", "tRMLTrbf"], "clientKey": "NXJsCRj8", "dropInSettings": "OAHdGdJy", "liveEndpointUrlPrefix": "nytvpPYT", "merchantAccount": "CI9WDdcz", "notificationHmacKey": "dGdoPchn", "notificationPassword": "CuTUluhT", "notificationUsername": "0d7O69lr", "returnUrl": "ppK9baZJ", "settings": "yr8O6HjS"}' \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "GYUmptT8", "privateKey": "TXnKoiOq", "publicKey": "ZcUKPVaO", "returnUrl": "Opg36M59"}' \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "gcuwJdZh", "secretKey": "V5gMoTyi"}' \
    > test.out 2>&1
eval_tap $? 295 'TestCheckoutConfig' test.out

#- 296 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'b8tsvxtV' \
    --region 'BUnZQxOb' \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentMerchantConfig' test.out

#- 297 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "SsWJXh1i", "clientSecret": "o7cRP7g7", "returnUrl": "aWiT1xyf", "webHookId": "QZs8WrDs"}' \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["z87q2NcD", "MPj0HGjO", "Ndxi5xAr"], "publishableKey": "yOzSRRMZ", "secretKey": "qAgzbXWv", "webhookSecret": "kf1divie"}' \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "A6F5MD8D", "key": "zoxwykZ0", "mchid": "MDiu5r80", "returnUrl": "B1GFO6XU"}' \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "PwpVgKJW", "flowCompletionUrl": "O5hdaFoR", "merchantId": 37, "projectId": 85, "projectSecretKey": "HKJTrrz1"}' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'QugSm8gO' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'ELasctZH' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["XyRHxKWJ", "1Mz0wYWO", "arTfL0Wc"], "apiKey": "AqyBrXbv", "authoriseAsCapture": true, "blockedPaymentMethods": ["fOC5QwAr", "sn4Zj5ff", "5oGfv3XV"], "clientKey": "8Yv8QZES", "dropInSettings": "mj4JKM2V", "liveEndpointUrlPrefix": "8KOrOWFH", "merchantAccount": "qgfj3hgD", "notificationHmacKey": "jap13IdJ", "notificationPassword": "iOUHM5xy", "notificationUsername": "tAbU1op8", "returnUrl": "DkFcIggg", "settings": "9QfD1OdU"}' \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '6G6gd0tz' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'EA7xqMB9' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "mZMbe48P", "privateKey": "fNNbzZSb", "publicKey": "FLl4MeqR", "returnUrl": "T5q7d9TI"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'J1gPJJAV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'pCkRwoHA' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "x86SwhKj", "secretKey": "SaD6fGIP"}' \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id '50Kizi7r' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'UrHFoFNE' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "5KUky8PO", "clientSecret": "GrHqRRrL", "returnUrl": "OFWLcYUH", "webHookId": "2isoUlPk"}' \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'x8Kx8Ko4' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'AlzvrH8S' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["Bcmzgxd5", "N4Y0AeNm", "0R3npRL3"], "publishableKey": "Cz1bPBfI", "secretKey": "AbvwtcXg", "webhookSecret": "NrWD4Bj6"}' \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'znaYHxwF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'TlV6mqze' \
    --validate 'true' \
    --body '{"appId": "9FmleaMj", "key": "ukZAPSqm", "mchid": "ajzGEQes", "returnUrl": "YaJvFsRL"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'DiNrZpyz' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '5ug66lHM' \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'tTyPZSNq' \
    --validate 'true' \
    --body '{"apiKey": "uxU0Y41u", "flowCompletionUrl": "Y6AklBWG", "merchantId": 36, "projectId": 64, "projectSecretKey": "W6fetaJ7"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '1DGNO0Yh' \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '6qOznTIg' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateXsollaUIConfig' test.out

#- 318 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '56' \
    --namespace 'k5a1OKZT' \
    --offset '98' \
    --region '3SQDtqYV' \
    > test.out 2>&1
eval_tap $? 318 'QueryPaymentProviderConfig' test.out

#- 319 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "lbN83r9Z", "region": "PtiFNmkk", "sandboxTaxJarApiToken": "txKw4LPv", "specials": ["CHECKOUT", "STRIPE", "WXPAY"], "taxJarApiToken": "kBiAOGgg", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 319 'CreatePaymentProviderConfig' test.out

#- 320 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 320 'GetAggregatePaymentProviders' test.out

#- 321 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'TLjeN7lh' \
    --region 'fIOKPjfz' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentProviderConfig' test.out

#- 322 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 322 'GetSpecialPaymentProviders' test.out

#- 323 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'A6GtOVXW' \
    --body '{"aggregate": "ADYEN", "namespace": "5xsyJNlB", "region": "CVo347Vx", "sandboxTaxJarApiToken": "Z5MtRsc2", "specials": ["PAYPAL", "PAYPAL", "XSOLLA"], "taxJarApiToken": "C34rnaXW", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '60BEi2ia' \
    > test.out 2>&1
eval_tap $? 324 'DeletePaymentProviderConfig' test.out

#- 325 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxConfig' test.out

#- 326 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "IIurieLX", "taxJarApiToken": "hUNAkWwS", "taxJarEnabled": true, "taxJarProductCodesMapping": {"xc43P6w1": "qiJrgDf5", "g4RfAxtj": "2fXSBBrV", "7xIhDtA0": "IMo2QSm0"}}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'yvZb02xd' \
    --end 'UQNrbgfD' \
    --start 'MFCYeg04' \
    > test.out 2>&1
eval_tap $? 327 'SyncPaymentOrders' test.out

#- 328 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'WhDCDwRA' \
    --storeId 'rUNGZSfA' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetRootCategories' test.out

#- 329 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'Y61srSK2' \
    --storeId 'wpZmQFDX' \
    > test.out 2>&1
eval_tap $? 329 'DownloadCategories' test.out

#- 330 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'EfZQknJt' \
    --namespace $AB_NAMESPACE \
    --language 'Wqr109mh' \
    --storeId '8wECp2HP' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'sWkRJd4P' \
    --namespace $AB_NAMESPACE \
    --language 'uPk5G4m2' \
    --storeId 's7kAELDV' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'EvE9zrw3' \
    --namespace $AB_NAMESPACE \
    --language 'I5oRSa4a' \
    --storeId 'x7hekf0I' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetDescendantCategories' test.out

#- 333 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 333 'PublicListCurrencies' test.out

#- 334 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    > test.out 2>&1
eval_tap $? 334 'GetIAPItemMapping' test.out

#- 335 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'wTCwJUlE' \
    --region 'AoI6F5FC' \
    --storeId 'iSIbKpO4' \
    --appId 'BDAdtxpx' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetItemByAppId' test.out

#- 336 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'ICBYC50S' \
    --categoryPath 'WP9S2KD5' \
    --features 'Yemoj6xB' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language '2Qwu5LXK' \
    --limit '50' \
    --offset '96' \
    --region 'eeBu8cuc' \
    --sortBy '["name:asc", "displayOrder", "updatedAt"]' \
    --storeId 's2LoTafF' \
    --tags 'KtjRvK5L' \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryItems' test.out

#- 337 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'agORzGOA' \
    --region 'JX6eW8sQ' \
    --storeId 'kGyr02qB' \
    --sku 'TPALJADt' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '7nxcVNQM' \
    --region 'xnVRaXsV' \
    --storeId 'z6P5nIHx' \
    --itemIds 'GFQJOFAy' \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["b1Mj5Qiw", "4dj0EQBn", "IkxbNaAz"]}' \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '50' \
    --offset '93' \
    --region 'DUAlcTTm' \
    --storeId 'XF914MSW' \
    --keyword 'EIvBMhkw' \
    --language 'jkForkKY' \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ZwClyWaC' \
    --namespace $AB_NAMESPACE \
    --language 'rsGJF0gY' \
    --region 'vpYwFFVA' \
    --storeId '4NudFJsS' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'f57IhYK4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'lTVgEkjX' \
    --namespace $AB_NAMESPACE \
    --language '1uvh1odr' \
    --populateBundle 'true' \
    --region 'GE4CbiHO' \
    --storeId 'VofPntxL' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "cqv8FtRi", "paymentProvider": "WXPAY", "returnUrl": "fQQWIUun", "ui": "MMRPJWYa", "zipCode": "MRFEE1Go"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CIL2rAmT' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cwzpG5qw' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'g93VMkiN' \
    --paymentProvider 'PAYPAL' \
    --zipCode 'IHxZTIC3' \
    --body '{"token": "QtingHrI"}' \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'BC4S9rWn' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'CHECKOUT' \
    --region 'IiIhbE4M' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'KsTwoSZ6' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'gMJol6Ue' \
    --foreinginvoice 'xar97zch' \
    --invoiceId 'O1ZaUYwU' \
    --payload 'Wxzgy1xZ' \
    --redirectResult 'wvOyCtD2' \
    --resultCode 'LsiJDvEd' \
    --sessionId '85EvrhX6' \
    --status '09MllpJr' \
    --token 'dP5DG23b' \
    --type 'MlURnlH6' \
    --userId 'HiZOYA79' \
    --orderNo 'oLVevBPV' \
    --paymentOrderNo 'DDGeWViL' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'P0niTmoC' \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'cwMdSOUZ' \
    --paymentOrderNo '6yO35JFf' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '1cRCVhL8' \
    > test.out 2>&1
eval_tap $? 354 'GetRewardByCode' test.out

#- 355 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'WIkgBMkS' \
    --limit '72' \
    --offset '94' \
    --sortBy '["namespace:asc", "namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 355 'QueryRewards1' test.out

#- 356 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '1uno00RG' \
    > test.out 2>&1
eval_tap $? 356 'GetReward1' test.out

#- 357 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicListStores' test.out

#- 358 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["Lqixz2pK", "e8ouYLen", "N7p1qQKh"]' \
    --itemIds '["JvBcZ4H4", "zUk6jyFX", "uedJN3SZ"]' \
    --skus '["kPjx21zc", "x98bK1g3", "FL5sJkAo"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyMyActiveEntitlement' test.out

#- 359 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '5mU2DWol' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'l8BDyYci' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --sku '6SOuv0Ox' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 362 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["RvLoJoOE", "iCVeEmzj", "uqMhgttc"]' \
    --itemIds '["KK58fQxb", "66px5lv1", "OYuIr17O"]' \
    --skus '["HlKg2DPX", "YVZvnLPR", "Idoa7rVT"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEntitlementOwnershipToken' test.out

#- 363 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "YR8Kc4qb", "language": "GVGm-kMul-811", "region": "37niEDVd"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'lsISKctF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gZCTGQa9' \
    --body '{"epicGamesJwtToken": "16hUO9ex"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'RqKO3EEl' \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'yyXuUbbQ' \
    --body '{"serviceLabel": 82}' \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '8iC69XYT' \
    --body '{"serviceLabels": [48, 65, 68]}' \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Qhtt2Wuv' \
    --body '{"appId": "3AgJCQHC", "steamId": "uN8EPZzw"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'y7Sj3bu9' \
    --body '{"xstsToken": "5iM13IhP"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'v2n03I7t' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'l3iZydsG' \
    --features '["hshFn9EH", "6IBDTyN6", "EjOHGnXP"]' \
    --itemId '["qpOGdvRP", "yA2lhwZE", "3ulVQNWu"]' \
    --limit '48' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Xy7w254P' \
    --appId 'xD8cEPYG' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'eioAxjB5' \
    --limit '52' \
    --offset '66' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'JE9Nz0Pk' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'q5rzz748' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '215J3G4W' \
    --entitlementClazz 'APP' \
    --sku 'BiepwklA' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'iCX4sIdS' \
    --appIds '["EdjBDZWK", "ECG6AvDr", "HaIDtSl6"]' \
    --itemIds '["Vzs1il1q", "GDCwJmn0", "iTFVsz42"]' \
    --skus '["FHNNdaNj", "M1WAbhTW", "ooCyffK9"]' \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XAVuqXDK' \
    --appId 'VuobhWLq' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'kHV13fIf' \
    --entitlementClazz 'MEDIA' \
    --itemId 'HuAoWZoZ' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'rbwwd0Kn' \
    --ids '["39KVY5wC", "GXqHCC60", "kstLEfRT"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '7mO9DYx3' \
    --entitlementClazz 'CODE' \
    --sku 'ZtbZbxE2' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'zgYVFbZo' \
    --namespace $AB_NAMESPACE \
    --userId 'XOMR6VWY' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'htvo8Z9C' \
    --namespace $AB_NAMESPACE \
    --userId 'NNBrH5uU' \
    --body '{"options": ["hNOfprqr", "WbUxIpN5", "PQTwy2ZZ"], "requestId": "5BHkest5", "useCount": 62}' \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'TRdr1NhB' \
    --namespace $AB_NAMESPACE \
    --userId 's0aGW5a2' \
    --body '{"requestId": "AksqYoPi", "useCount": 10}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ZUAN77ON' \
    --body '{"code": "WozKNsbo", "language": "YAn_604", "region": "tEa1mcL0"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '5rQ9AFON' \
    --body '{"excludeOldTransactions": false, "language": "VRVc_sjWI", "productId": "2m0VFw2x", "receiptData": "zEvg0XVp", "region": "1a47111q", "transactionId": "2Kt7tN2N"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'zakSJaGJ' \
    --body '{"epicGamesJwtToken": "UsUvGbfV"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'HFwBmPcQ' \
    --body '{"autoAck": true, "language": "UXn_Np", "orderId": "ZztRfc0t", "packageName": "ceF8EbBx", "productId": "dYJv5QUC", "purchaseTime": 50, "purchaseToken": "pZ3nW7IU", "region": "qmREs0nG"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2IgMgJM7' \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'mGT7T4t8' \
    --body '{"currencyCode": "UMbreMzR", "price": 0.21580993688403283, "productId": "ju788FlS", "serviceLabel": 35}' \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'HdVvCTHb' \
    --body '{"currencyCode": "PwW8zO2O", "price": 0.7717007773454473, "productId": "vGsWWB3z", "serviceLabels": [49, 6, 7]}' \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'NC0GzTgy' \
    --body '{"appId": "B7mVAvvD", "currencyCode": "sbaBGLYc", "language": "DFTJ_CA", "price": 0.4755624911085945, "productId": "KSSrTQhG", "region": "pb0VmGBj", "steamId": "2KTIW0Pe"}' \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'mPWQAli2' \
    --body '{"gameId": "JCvgMFLc", "language": "IdcV-942", "region": "gPHngsDO"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '5YPa3pxz' \
    --body '{"currencyCode": "4DQyZLqK", "price": 0.20045782634077358, "productId": "8r2XD0We", "xstsToken": "e7cGdLaL"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'JUbOlEA1' \
    --itemId 'KutAwyMN' \
    --limit '79' \
    --offset '51' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Dri7ST1w' \
    --body '{"currencyCode": "GZyLdatp", "discountedPrice": 34, "ext": {"hYJrlSD3": {}, "vGD0UOyQ": {}, "E77iSZkb": {}}, "itemId": "pBYd0r6u", "language": "BiR", "price": 72, "quantity": 18, "region": "JOgyaPO3", "returnUrl": "7vQB6qF1", "sectionId": "CljhcpYs"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gyEgqVgC' \
    --userId 'VOZ5IzTq' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hb2eVUUE' \
    --userId 'KOf8mooW' \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'SBkWFjbT' \
    --userId 'XtrdeQAa' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '5NXglcN6' \
    --userId 'SXzpcOdb' \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '6czRU9wk' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '0QxbzXeg' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'sGI8CHeL' \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'RUfKSy11' \
    --language 'y4QIYbPW' \
    --region 'wZRSgKF0' \
    --storeId 'LTFUkUIL' \
    --viewId 'UU38vErq' \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'LgAvHcWP' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'AC8jcKyx' \
    --limit '90' \
    --offset '81' \
    --sku '2BTVa13D' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'z5JEzDaU' \
    --body '{"currencyCode": "fDjt3zh5", "itemId": "WRt2cPId", "language": "EH", "region": "7YbFEwOC", "returnUrl": "GIWDY0Ua", "source": "uk4JfUvE"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Oc4WF8KC' \
    --itemId 'jXLwIPDh' \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HHBj1pCL' \
    --userId 'KEpM4PBk' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1cw84glr' \
    --userId 'vOQx99Ie' \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cCrZZEE6' \
    --userId 'XiDLq7YZ' \
    --body '{"immediate": true, "reason": "0bc5GjTA"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'M5aofM8G' \
    --userId 'mGfNBBZf' \
    --excludeFree 'false' \
    --limit '51' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'dd1fSynm' \
    --language 'TZHjcUea' \
    --storeId 'Q9nf8bAk' \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'xxmnBVpg' \
    --namespace $AB_NAMESPACE \
    --userId 'VpfsDire' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'MnrdsN5N' \
    --namespace $AB_NAMESPACE \
    --userId 'sEQV6UdH' \
    --limit '1' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 412 'PublicListUserWalletTransactions' test.out

#- 413 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'rhtD1htM' \
    --baseAppId '7H6kHB3z' \
    --categoryPath 'spNOd3nV' \
    --features '1a7HihkX' \
    --includeSubCategoryItem 'false' \
    --itemName 'vDaVBM9i' \
    --itemStatus 'ACTIVE' \
    --itemType 'CODE' \
    --limit '82' \
    --offset '40' \
    --region 'SUaFJsMn' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder:desc", "createdAt", "createdAt:asc"]' \
    --storeId 'gz4GwsqR' \
    --tags 'EmW3OHQt' \
    --targetNamespace 'NlS9p76j' \
    > test.out 2>&1
eval_tap $? 413 'QueryItems1' test.out

#- 414 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'rd3mraFF' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 414 'ImportStore1' test.out

#- 415 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '9FouvqCc' \
    --body '{"itemIds": ["vakb9agD", "ML0EZJHz", "VJfs495b"]}' \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE