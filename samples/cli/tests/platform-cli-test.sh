#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
    --body '{"context": {"item": {"appId": "l9uLDHpiyc6zRi5V", "appType": "DEMO", "baseAppId": "fJpq1DEXUpFICUCx", "boothName": "eQ9yZkPzfmrNWkSM", "boundItemIds": ["TrA9TaXEekZ8axB6", "JAnrekjSAHtlyfd2", "Jq6ESQ0HaTr4Ls1m"], "categoryPath": "mwxpBm1T97LoAGiH", "clazz": "ZvjqMSwV7uO0eSCt", "createdAt": "1994-12-04T00:00:00Z", "description": "2YJkfC3PhbD9mpBW", "displayOrder": 79, "entitlementType": "CONSUMABLE", "ext": {"r9xsxRGfAYq0tXqX": {}, "q5T4AEAAHW2FYs2l": {}, "pZu2LSAmEXAkCbNf": {}}, "features": ["hX01B8NHqP1hnhmb", "Qtj4Wz7rxnf2Fgk6", "XX3d3ocwYvS8TB0N"], "fresh": false, "images": [{"as": "8YH8xq8gJChpcE9K", "caption": "83LWtRVW9dyCTa5B", "height": 97, "imageUrl": "YdZfnx34Kbl04dTe", "smallImageUrl": "ehCSHolO48ELMUYw", "width": 19}, {"as": "FNkNz9mkX805XfjM", "caption": "FpIgjYWoqU53UlZT", "height": 95, "imageUrl": "FzoQHetD7qmd8gdi", "smallImageUrl": "rnJTTpiIrF4ZhzoZ", "width": 18}, {"as": "vekcUp3YSw8ZS2B2", "caption": "38MhvjMvns6M9D9h", "height": 67, "imageUrl": "CKJobLfAqm0dJWsH", "smallImageUrl": "wHBxshvC6ktyEWit", "width": 61}], "itemId": "lppysRUepCRQGOEV", "itemIds": ["rdRTSFBZTO59LlOE", "jbYr32p4Nh07Pqfg", "UEV7n56mPFdAuvpW"], "itemQty": {"r6w7GSeJF0wXANTu": 61, "azuCBCUabwoHv31k": 20, "yk8jQRkFTiCVRpIB": 46}, "itemType": "OPTIONBOX", "language": "MMu0TGuuS5rUhMoI", "listable": true, "localExt": {"sLATD8bkyylXdbZj": {}, "BnQdiWmXI4SLB37r": {}, "p9nZBJoVSbOgin9Z": {}}, "longDescription": "p0cjVCCM5YRqWxjw", "lootBoxConfig": {"rewardCount": 48, "rewards": [{"lootBoxItems": [{"count": 46, "duration": 50, "endDate": "1971-09-20T00:00:00Z", "itemId": "5hq5S7e5TzMPOcpz", "itemSku": "kAJjISUzl86w3Lwn", "itemType": "4hY8ouGIO5JkMvm9"}, {"count": 56, "duration": 68, "endDate": "1983-04-23T00:00:00Z", "itemId": "qxua0cMtSSxsLsXo", "itemSku": "sOH6SZKjXL9IY6yu", "itemType": "91nSLXeC3gBgLqYl"}, {"count": 78, "duration": 2, "endDate": "1993-02-08T00:00:00Z", "itemId": "AfBP6mu29j81c4LK", "itemSku": "snChKNDUjOeIpMQX", "itemType": "IrPxyr8o8dhb3rwk"}], "name": "41HarBB7OnzMZmVZ", "odds": 0.9668647191049478, "type": "REWARD", "weight": 2}, {"lootBoxItems": [{"count": 13, "duration": 33, "endDate": "1975-03-13T00:00:00Z", "itemId": "pnpyDbq9M2r3WyCz", "itemSku": "wcuMP0gYvF0xMK0m", "itemType": "cqPuqNKgA4sPBOQc"}, {"count": 41, "duration": 16, "endDate": "1980-06-09T00:00:00Z", "itemId": "4OXrthr7nRSWH5Py", "itemSku": "AjgVnXp0TNgMNKOK", "itemType": "2mO4gU1tKdMWsSrT"}, {"count": 99, "duration": 95, "endDate": "1983-08-23T00:00:00Z", "itemId": "7VNg37GKExE5CPUm", "itemSku": "cnlyavQOjFzgxRb2", "itemType": "BKRckIlVSdN4jNFO"}], "name": "ByELYygUlplx8wKW", "odds": 0.8520051487364253, "type": "PROBABILITY_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 87, "duration": 7, "endDate": "1976-10-25T00:00:00Z", "itemId": "OU1q8JKCAB9a9iFL", "itemSku": "3ZfDqtXfU5ZCn0I5", "itemType": "f0hT5gA4vZUO2iBD"}, {"count": 56, "duration": 72, "endDate": "1998-09-02T00:00:00Z", "itemId": "wOIcIXlf9XZtkLXA", "itemSku": "eue8hWdL11pY4DAr", "itemType": "LQZCDBPJdj0Fqfvj"}, {"count": 31, "duration": 88, "endDate": "1987-03-16T00:00:00Z", "itemId": "UkQOWZNvKua4qBnR", "itemSku": "UWWRecs3TcDY9JsX", "itemType": "reKvxzmaI15vzH1m"}], "name": "kvaPacHUxvReDAMP", "odds": 0.6201192743409986, "type": "REWARD", "weight": 26}], "rollFunction": "CUSTOM"}, "maxCount": 61, "maxCountPerUser": 57, "name": "XvlVsLLmWMO1Xvd4", "namespace": "Z5mBApsOIfwuq8q2", "optionBoxConfig": {"boxItems": [{"count": 85, "duration": 90, "endDate": "1994-02-23T00:00:00Z", "itemId": "O62OeTm9CqQXXMQa", "itemSku": "pWwuKytOeKdDtjtw", "itemType": "pwMyUX3BuI6ZFsmm"}, {"count": 3, "duration": 71, "endDate": "1981-04-15T00:00:00Z", "itemId": "gON9BeGtbopTX9El", "itemSku": "4VWMpuZRTG1mnFb6", "itemType": "EHva3GZH2lpqj5gF"}, {"count": 54, "duration": 83, "endDate": "1999-03-18T00:00:00Z", "itemId": "yvUuJgNY6uHz7LW9", "itemSku": "RRGvjuLKVmGuU7uo", "itemType": "p1GqTP9yODg0nGCa"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 94, "comparison": "isNot", "name": "jJY3YECncbwLfnNc", "predicateType": "SeasonPassPredicate", "value": "oI5lgUe0vLBXp54J", "values": ["P26UNrEMo0aqOvKe", "UzSQwEVmrbr4FlQ6", "6jCcSAxZ6b7dMtOH"]}, {"anyOf": 75, "comparison": "isGreaterThanOrEqual", "name": "KqCqpQVuKxpGttmv", "predicateType": "EntitlementPredicate", "value": "Xt7qP5FpGt4ofLUC", "values": ["LtwJVZqoclXvn8jU", "e7C7Kn4CKCGaNvrO", "lIZxzkf91eAVvWrY"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "vWNl40PzNIvjUfGM", "predicateType": "SeasonPassPredicate", "value": "4pK1FRaaKbjCmpTe", "values": ["HHTknQpynwUSjaPX", "PMLNUuiIsrdR9sSc", "NzOQl5kUxJW6OQjX"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "LK5nNfBx6uH9ABuG", "predicateType": "SeasonTierPredicate", "value": "VCfOzq8ZpEmmNBYN", "values": ["hOUWNbFQPYhcm54s", "5E5TtGi7PqDRejn2", "1obHwogveaK2QlfG"]}, {"anyOf": 50, "comparison": "isLessThan", "name": "F0MJKrk4uRLWm4rW", "predicateType": "EntitlementPredicate", "value": "KwlqDYO8MEXQaTR1", "values": ["k4EngRQpGAnVvjkL", "PUBULd3FGPjaxtPl", "BxtN0zrSSoAU7urV"]}, {"anyOf": 100, "comparison": "is", "name": "7GbnpB268CDzjW81", "predicateType": "SeasonTierPredicate", "value": "s0mnKEhUeJcjEVWx", "values": ["zqq1Y8Y3PIShUBlf", "hHWsZKRIwdj4WlHK", "dNNzwXzhvsajtEuB"]}]}, {"operator": "or", "predicates": [{"anyOf": 27, "comparison": "isNot", "name": "cR9SrAt3kOGLshpv", "predicateType": "SeasonPassPredicate", "value": "6Cw55hBMWddEn2iG", "values": ["xRhQIceC8qtvKF8T", "0RJqlxNtRPpLKERy", "Obf1Dhla5VD6FthD"]}, {"anyOf": 24, "comparison": "isLessThan", "name": "XiRfwo6ggtu3w6BC", "predicateType": "EntitlementPredicate", "value": "VqxWdStKzijwa3rh", "values": ["Eyy7ebzwcSOqhr7N", "4CzC0zBeOJ9IVA4v", "77pUEv0GmL07IHWF"]}, {"anyOf": 77, "comparison": "excludes", "name": "T10iV46g841abJ6j", "predicateType": "SeasonTierPredicate", "value": "9QYYcc4adF9yHGvE", "values": ["MxQiZFNuZaIsD6p9", "DjjsdX9LquWf84jR", "jVTQ0ZnDe761GEa6"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 66, "fixedTrialCycles": 14, "graceDays": 57}, "region": "kjzZIkGWkqpD14u6", "regionData": [{"currencyCode": "fwcgCUbtseGDMdGY", "currencyNamespace": "LkK7Sd317DJImmnr", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1988-08-16T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1999-08-21T00:00:00Z", "discountedPrice": 98, "expireAt": "1978-02-13T00:00:00Z", "price": 88, "purchaseAt": "1985-01-19T00:00:00Z", "trialPrice": 66}, {"currencyCode": "617qRZkaM7auoz9y", "currencyNamespace": "ReWOEyb0yD9m5zRA", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1974-01-04T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1976-12-03T00:00:00Z", "discountedPrice": 20, "expireAt": "1986-07-26T00:00:00Z", "price": 89, "purchaseAt": "1998-05-06T00:00:00Z", "trialPrice": 95}, {"currencyCode": "Vpzowfk3tAcUNrKm", "currencyNamespace": "YDhm50RfGDciHGr0", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1993-06-02T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1988-09-11T00:00:00Z", "discountedPrice": 92, "expireAt": "1988-12-12T00:00:00Z", "price": 5, "purchaseAt": "1984-01-20T00:00:00Z", "trialPrice": 32}], "saleConfig": {"currencyCode": "2UWf5wZFWzIJhkGe", "price": 52}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "WTBmrAXCn16dVZ4n", "stackable": true, "status": "ACTIVE", "tags": ["7ikC9NgAx4wIPMhC", "FtDsRrEQ6cXpUgKh", "hM8xHrquCXOkccdX"], "targetCurrencyCode": "L6M2B1Yv5m7EAfI8", "targetItemId": "s9keCkArjbgSpRJs", "targetNamespace": "dyoGrYMu2KhuClyB", "thumbnailUrl": "VjN6k77bRCYDCz8u", "title": "lu4JeVjwzsefXoQp", "updatedAt": "1979-11-28T00:00:00Z", "useCount": 82}, "namespace": "QnO23XBy7oI67XxN", "order": {"currency": {"currencyCode": "cohiN1QLWDrlSWnW", "currencySymbol": "8zy8Orpx4a78uX7m", "currencyType": "REAL", "decimals": 44, "namespace": "dSKC1lVrkZ6ME8tq"}, "ext": {"HCdiKmtFVZsP7ES8": {}, "8Q4b1Bc1YQpXWU8T": {}, "JwdgvNKGd0wU8mCw": {}}, "free": false}, "source": "IAP"}, "script": "NI8ykZ9jEz1P8TwM", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'PgQlgHwfvp8VrjQu' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '0XA10FBAcsWKriH9' \
    --body '{"grantDays": "V5t1uPLSEZgPKGQ4"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'wYIypXOSxL2wCnte' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'geJXwtzPjnL7uVcq' \
    --body '{"grantDays": "DMnqa0BUU5i2h0BX"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "HKaCf1VkypTMiqVP", "dryRun": false, "fulfillmentUrl": "2NJ5ofvNNraPUnIU", "itemType": "CODE", "purchaseConditionUrl": "BjhYr9CoE8mSszXe"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'CHOwPZbhKMn8rRQq' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'qd49v5E4ivFzU7CR' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'v9RLHYjT8iC2Suo6' \
    --body '{"clazz": "U0EU9UOjromMcTr6", "dryRun": false, "fulfillmentUrl": "cy1I97dj2R17rJJo", "purchaseConditionUrl": "nSuOMcjFAREyEPBi"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'OOxkKHDQy71yTEVo' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --name 'J3vjYHJbGJrxl9r7' \
    --offset '67' \
    --tag 'mbNE1V8L3yhhbxUA' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "o8fEzDpClrrPEg2I", "items": [{"extraSubscriptionDays": 16, "itemId": "wzCwsr5KqBaCxOwp", "itemName": "K6c2KiTadwPMl6l9", "quantity": 85}, {"extraSubscriptionDays": 21, "itemId": "WT9tNAK4BlhlEXg2", "itemName": "IMWEOfcjfN4fGCPy", "quantity": 10}, {"extraSubscriptionDays": 17, "itemId": "ccOYqxsZMNHCqEyA", "itemName": "3NWkUmmkLy3FwIpI", "quantity": 27}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 49, "maxRedeemCountPerCodePerUser": 66, "maxSaleCount": 78, "name": "OSGfHOxYfBVwAKPz", "redeemEnd": "1980-05-14T00:00:00Z", "redeemStart": "1995-05-29T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["oyJnFUKyZey0JfL5", "4GaVTg1MDUew2EBy", "4tVRb7AOw76XK4g9"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '7dkJZdJ3p3MaHxW1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'xlxA703CDoxs9hK7' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "P4vuKPo0Znkq0JV6", "items": [{"extraSubscriptionDays": 91, "itemId": "QDHREUdC3ERmh5hJ", "itemName": "QauYbpqxZ2SWWnYn", "quantity": 0}, {"extraSubscriptionDays": 7, "itemId": "AdXdWSM3OiDpoUMZ", "itemName": "YiROLYK69pl6I4oC", "quantity": 79}, {"extraSubscriptionDays": 4, "itemId": "dgZmzhiK8d5nhsbz", "itemName": "NIviCkMU8NhPDGvS", "quantity": 46}], "maxRedeemCountPerCampaignPerUser": 62, "maxRedeemCountPerCode": 49, "maxRedeemCountPerCodePerUser": 34, "maxSaleCount": 9, "name": "YwkY5hnHpxzkUoYe", "redeemEnd": "1984-03-31T00:00:00Z", "redeemStart": "1997-03-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["nAb4rO5mpiYkdyFG", "CSLIYWGWiKKFW5NS", "hFxJRfFjh0UJybkx"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'Cyon7nc9R70boUbH' \
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
    --body '{"appConfig": {"appName": "Sj363irrTNku0JZN"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "cyEd5wKs424nAHbE"}, "extendType": "CUSTOM"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "kfUxcvcMKacSxASn"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "mIKpNqDxTJCAzCPB"}, "extendType": "CUSTOM"}' \
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
    --storeId 'ENottikqCTW0B7Vj' \
    > test.out 2>&1
eval_tap $? 28 'GetRootCategories' test.out

#- 29 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'yY4lOrrpQNfgP7fO' \
    --body '{"categoryPath": "lBwuTV6b4D9lyS2y", "localizationDisplayNames": {"uHWi6E7EiXFDHiNB": "OK039OZWhWYH3fyV", "a9GatZTFpK6GA2Dl": "KrpFsfSQduIbKO4n", "wo8Ec0JHlGtnBK5a": "2urk89T5LlUs9bKM"}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateCategory' test.out

#- 30 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'i3hBHQore1aFfWi7' \
    > test.out 2>&1
eval_tap $? 30 'ListCategoriesBasic' test.out

#- 31 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '1c3OckODKwaX6Gl5' \
    --namespace $AB_NAMESPACE \
    --storeId 'N176OWAYgNBtwnuo' \
    > test.out 2>&1
eval_tap $? 31 'GetCategory' test.out

#- 32 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'lsbWuKpLm5OMYrgT' \
    --namespace $AB_NAMESPACE \
    --storeId 'vbw8ve4L54ei1BA2' \
    --body '{"localizationDisplayNames": {"tBLxRGnppbMu7DkI": "8RewZT7p1AAcaljd", "BiicJYttG2Odp56Q": "kloIzyVg9jVgXB62", "v5Ppo4KqItRdOrdZ": "73HCBxeCx0FfxVRL"}}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateCategory' test.out

#- 33 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'UxVIjVBIl9G71m82' \
    --namespace $AB_NAMESPACE \
    --storeId 'CYm7h9O9712jwZnU' \
    > test.out 2>&1
eval_tap $? 33 'DeleteCategory' test.out

#- 34 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'DKdGi8HFSqH9h4Dn' \
    --namespace $AB_NAMESPACE \
    --storeId '2sL60A8DgocOPMP7' \
    > test.out 2>&1
eval_tap $? 34 'GetChildCategories' test.out

#- 35 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'YqTtq2AmbxVvd0L5' \
    --namespace $AB_NAMESPACE \
    --storeId '95qRB4kq0Zof9JuC' \
    > test.out 2>&1
eval_tap $? 35 'GetDescendantCategories' test.out

#- 36 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'SaKe0kzODtXfYhuJ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '13' \
    --code 'Fmxa0A5Ctj1ylLVZ' \
    --limit '62' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 36 'QueryCodes' test.out

#- 37 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'am45buWTOJ8KNrHd' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 80}' \
    > test.out 2>&1
eval_tap $? 37 'CreateCodes' test.out

#- 38 Download
samples/cli/sample-apps Platform download \
    --campaignId 'xe8tARyjg1AhahOk' \
    --namespace $AB_NAMESPACE \
    --batchNo '52' \
    > test.out 2>&1
eval_tap $? 38 'Download' test.out

#- 39 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'MOJX0JSjNbQU5PAp' \
    --namespace $AB_NAMESPACE \
    --batchNo '48' \
    > test.out 2>&1
eval_tap $? 39 'BulkDisableCodes' test.out

#- 40 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'fFjJGNmq9NOdgs5j' \
    --namespace $AB_NAMESPACE \
    --batchNo '73' \
    > test.out 2>&1
eval_tap $? 40 'BulkEnableCodes' test.out

#- 41 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'FaUpuSVKCVD4PacG' \
    --namespace $AB_NAMESPACE \
    --code 'PJBn5n9qfvWMyFXs' \
    --limit '57' \
    --offset '82' \
    --userId 'aT3WyzVx93ijtYYO' \
    > test.out 2>&1
eval_tap $? 41 'QueryRedeemHistory' test.out

#- 42 GetCode
samples/cli/sample-apps Platform getCode \
    --code '9gdyFmdJ3g8BZGBx' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 42 'GetCode' test.out

#- 43 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'JQ1QEHiQlakdVdZi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'DisableCode' test.out

#- 44 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'XWFdfEQNaRWAu8wp' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 48 'ListCurrencies' test.out

#- 49 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "iSBMDlHWqaY6fkon", "currencySymbol": "kjpaSI3YFEBKddSc", "currencyType": "REAL", "decimals": 95, "localizationDescriptions": {"CYr0SfE0aMpdlNNM": "jqX1FeskNxWN9trz", "U9SFVm51K8x6362i": "c2SVWZjlm2Db1iqn", "lqsQxPkPv2fFgccx": "eALonovpX6W1gv8z"}}' \
    > test.out 2>&1
eval_tap $? 49 'CreateCurrency' test.out

#- 50 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'gtW3VtRuoGuGXOKa' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"SqYWR6EmWBeWxKw6": "mws6ZAK80HJ8Fdku", "dURAtuo8MffjUelu": "i7zATbP73MgGX5uh", "2550GHLOGzIhOc2l": "BckzgR2gWe1p9VGz"}}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateCurrency' test.out

#- 51 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode '47sVGXkyKDp2gwpI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteCurrency' test.out

#- 52 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'H8btN4hegOfCP6Gn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencyConfig' test.out

#- 53 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'F6HeQjfK7JNNlAOa' \
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
    --body '{"data": [{"id": "KTxySRHLvnsPNGNk", "rewards": [{"currency": {"currencyCode": "kHH9qIv6jaSPS3my", "namespace": "6iRLrbHVzkpilKj5"}, "item": {"itemId": "NKyx81CwfkefkzUh", "itemSku": "IynJ9fNtmJjpd36X", "itemType": "GXigYSNgXgyufMQV"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "mtVYw5epu5HFaY4H", "namespace": "5i0E58igPIexOFzB"}, "item": {"itemId": "k1mekD3SLy27hXkh", "itemSku": "PWvcFQq8DktldSDl", "itemType": "TwLksuOs12JwAu1d"}, "quantity": 98, "type": "ITEM"}, {"currency": {"currencyCode": "hapq1UTh8MTivIHl", "namespace": "atnNCYNbeDWV5mQt"}, "item": {"itemId": "bHKwbPe1TnWnkA7Q", "itemSku": "CvFwnwqznqV435aA", "itemType": "Lvh4aW8mqw4NasTS"}, "quantity": 46, "type": "CURRENCY"}]}, {"id": "yqBHArnOdUUwxHzr", "rewards": [{"currency": {"currencyCode": "YGqz5mIyt0Z0yHCK", "namespace": "lVTt6eC0syiHWYrt"}, "item": {"itemId": "k44RhzYAKQsojZUS", "itemSku": "9QAUeedsCx90rHZe", "itemType": "Rhv8LQXisR5jQWjI"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "D1P88MNhOpgeQ47d", "namespace": "McUxS6tasmm4Sb3E"}, "item": {"itemId": "58WGMn3fy0Kb4AwG", "itemSku": "AIL8WG9B307kD3uI", "itemType": "A0JjoV7Alxsx0s2f"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "BZmUqgoyllQnShXw", "namespace": "GrCSx2DEgofl49CB"}, "item": {"itemId": "J0sIIrEXLmZ1PxHd", "itemSku": "yarUtbj9RrYVVNkZ", "itemType": "86zceLQpVZb9cY9e"}, "quantity": 19, "type": "CURRENCY"}]}, {"id": "zbQ54of903dnGHDv", "rewards": [{"currency": {"currencyCode": "Y1cnc7v9ymcHrqP0", "namespace": "glXtaaaykfo135ff"}, "item": {"itemId": "DsAJMBNzDjQHT2ff", "itemSku": "XbPje5ySpT4nNc4w", "itemType": "Qp7043wvwz3BPLAA"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "XPzhMrvdg5lPL7sB", "namespace": "N12Nz8W3x1OVow8U"}, "item": {"itemId": "gGUYtrZw6Jb9skEw", "itemSku": "vjE0cJrIP65XLFSZ", "itemType": "E4RYQKfNZxYJoWrZ"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "lynQe7jtRfprv0jH", "namespace": "YvsFqnd7sI1VjpYG"}, "item": {"itemId": "mk89qobnHZptbPvn", "itemSku": "fMOzySuOMSBDOZwJ", "itemType": "khc0zcZxmEYSaAyf"}, "quantity": 57, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"DXiAN6CEY6u5pNmC": "iYWcf6ZGnDsAlCCw", "OlfWI3fol9fhke4I": "4AEk6Xxsbhc1QdYG", "2mswsbQZr7iWnGxz": "LqmM2QWvGKxRQqrm"}}, {"platform": "OCULUS", "platformDlcIdMap": {"xVIdHONDIDbUWcAG": "EDQaziT6m1e1bYaC", "wwtT3S3dBPr0nlYs": "219IoV036hPiCbxq", "SHJoPP6lJ84qWO9G": "vm4Zqbv0Ta7nKYMv"}}, {"platform": "XBOX", "platformDlcIdMap": {"ytuotqonw2XpvQt7": "lLfBdBWvGJf76RSp", "Yom4x6Axm9XI5uxL": "bu1qsLrPbiekQLjv", "VmpUf08U91cCj780": "yiKgd7krgJt03CV9"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'WUOstpBtsf1CWTtT' \
    --itemId '["0IHxt5a3pu0FOO1Q", "gh0PBcMkKG6sMetO", "1atthLzoDZIAfM4M"]' \
    --limit '62' \
    --offset '98' \
    --userId 'ltkyV2yAgqD5GfBK' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements' test.out

#- 61 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["KokONDJwdZz2VeWJ", "CnpREa0olw4Wyqub", "yWopJewDmCogEgEe"]' \
    --limit '13' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 61 'QueryEntitlements1' test.out

#- 62 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1977-09-13T00:00:00Z", "grantedCode": "Y3rbTdVIJwrOsi4H", "itemId": "J6i8JI8bkNCjInhM", "itemNamespace": "H98NfHfs3muV5F3Y", "language": "fqh-yACn-FL", "quantity": 34, "region": "6raPFSd0btS3JwiZ", "source": "IAP", "startDate": "1974-12-16T00:00:00Z", "storeId": "ElYtVZuuFn1XnPuk"}, {"endDate": "1996-10-07T00:00:00Z", "grantedCode": "c2kBM2b9gyEY40LJ", "itemId": "z6C7ePqRzdYx4RsA", "itemNamespace": "i17l7R169G2Q4plZ", "language": "uORf-rmbx_SC", "quantity": 19, "region": "9T1Znuo7adR5Fjqu", "source": "ACHIEVEMENT", "startDate": "1993-09-05T00:00:00Z", "storeId": "WGJxTXsuozA1bYtv"}, {"endDate": "1980-02-14T00:00:00Z", "grantedCode": "ykR4bKDcQK5bxk0w", "itemId": "bbOPkTIBQHu3pnLX", "itemNamespace": "kDTf1KuyWKLRSqlR", "language": "ObKk", "quantity": 52, "region": "heSdw1w7rEipe2X6", "source": "PROMOTION", "startDate": "1989-07-27T00:00:00Z", "storeId": "99ApLh7zfnAgFwrt"}], "userIds": ["R7OXWpaGcXV2jwtP", "3Bm47QFGPBPpply0", "eeDOiOcHvFzYXBwz"]}' \
    > test.out 2>&1
eval_tap $? 62 'GrantEntitlements' test.out

#- 63 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["BTr3dH5ShydpGR96", "o7tiwoz5EMJLcNKI", "A56dw7kHtkCfUX6P"]' \
    > test.out 2>&1
eval_tap $? 63 'RevokeEntitlements' test.out

#- 64 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'YQOv9kiOzlFX7v48' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetEntitlement' test.out

#- 65 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '25' \
    --status 'SUCCESS' \
    --userId 'tqheSSm6W7VZOXEq' \
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
    --body '{"bundleId": "fICwdsv0EWGDcRl1", "password": "Xm32jyBtEpVQDtGv"}' \
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
    --body '{"sandboxId": "MYL4A7M1Kd7Ubz1e"}' \
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
    --body '{"applicationName": "hhvhHnvwAR1OuXhI", "serviceAccountId": "377fsy0uI0ve8f8b"}' \
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
    --body '{"data": [{"itemIdentity": "vHcZz7Y4NKQXuxWY", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"qusZCWKJk6bx3xIp": "HtTkkx5ZmH87ol66", "BWAu0GM6ZngoGEMg": "EbrvvidlrGB2EjFE", "Tv6v8PLRrq4T7gRC": "lWxetlmgedlr0Kox"}}, {"itemIdentity": "8yuopw4OzZnb3Xms", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"grDsolJI0jdtq7iO": "lUGEMScFMX9BsPQk", "rHzlQjU0k9YnuSzO": "ltrwMVD0v6tvU6Ci", "q1Wma1PHnKZDwRY1": "PIhYr1Y2cslDzt6v"}}, {"itemIdentity": "9UShJvENuD26alOi", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"tEFGu3j93QHU5hl4": "3xI2xsTDvDH2Tt4I", "28lxhxQGP9pXMNsj": "5LRWUNmZp0shdDCL", "yN7Rf6ExnnQsCw6D": "s8YBsXWCr4eOZCRn"}}]}' \
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
    --body '{"appId": "TNbIVIR7bvA6SmVH", "appSecret": "IGTHWb1iLpk2YC05"}' \
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
    --body '{"environment": "xyKSufzot2jLmblP"}' \
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
    --body '{"appId": "cIZpQ7TZRloO3f7f", "publisherAuthenticationKey": "pod25P9d1uoxGXf2"}' \
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
    --body '{"clientId": "rBNYV3hZ38ObOqGI", "clientSecret": "ZBLibqOn3dMJeSxn", "organizationId": "N7hbXDzlXB3TTj19"}' \
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
    --body '{"relyingPartyCert": "IR2uVLYxvfloOM8h"}' \
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
    --password '7UUpAXswiEbJyJ9V' \
    > test.out 2>&1
eval_tap $? 94 'UpdateXblBPCertFile' test.out

#- 95 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'z4iFdVY7zyXfSwjb' \
    --itemId '13TN1VaDWc5Num6v' \
    --itemType 'MEDIA' \
    --endTime '8fKsKuxPwy4MiWel' \
    --startTime 'fI6Bo90DRxFIBebT' \
    > test.out 2>&1
eval_tap $? 95 'DownloadInvoiceDetails' test.out

#- 96 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'H45HeXvETBjWAhR2' \
    --itemId 'orWVQPDQEm7NeEjb' \
    --itemType 'APP' \
    --endTime 'WKMaHPB1VP3LENAf' \
    --startTime 'JniulgK5qGkumLau' \
    > test.out 2>&1
eval_tap $? 96 'GenerateInvoiceSummary' test.out

#- 97 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'KtaUR2VNCSJO7u22' \
    --body '{"categoryPath": "M4MTuq8McfTnHfRT", "targetItemId": "6COtgTzDUgAvZXkf", "targetNamespace": "f0fYjKXUExdALv8Y"}' \
    > test.out 2>&1
eval_tap $? 97 'SyncInGameItem' test.out

#- 98 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'iorf2fytSE9WgYJs' \
    --body '{"appId": "g0ODNbV4Tv0HSxGv", "appType": "DLC", "baseAppId": "lWGJm0295XL5kck4", "boothName": "JvyZBvZK71dnQKqj", "categoryPath": "Pen3LERHkjFzgvSm", "clazz": "rEElAnDLvYWk8ZO5", "displayOrder": 36, "entitlementType": "DURABLE", "ext": {"syDuKazK88T4SPsM": {}, "8ScxcDhtqzsIWusr": {}, "LnOUGe551TsdEEOE": {}}, "features": ["FTPd1GGp4Cj8IMDG", "L0uuG9p0PLob6kDC", "fxfMCnIxeM90DysP"], "images": [{"as": "8YMCIHNX2voRxSnt", "caption": "kw6LI6guDMYR9riG", "height": 99, "imageUrl": "skGdQLQMlSDPxjLI", "smallImageUrl": "R6qll30D9VhYm9iK", "width": 95}, {"as": "uzufquAEHiG3mis2", "caption": "Daw1UeW9XAMGPm1E", "height": 98, "imageUrl": "jjSHcN7yXz0ByXk3", "smallImageUrl": "v53ErejA2vlPN2tu", "width": 42}, {"as": "rfYyIa9WHiTjnCss", "caption": "PekCjIIIcXzTDQh6", "height": 35, "imageUrl": "cOBalnRJsGBQ6LNO", "smallImageUrl": "qTnwXc97oy0UI0UI", "width": 55}], "itemIds": ["04Xcn9St1uQDJCeR", "OzqUHVkjYI4pBfuK", "KeqALJPjZSzlgqK4"], "itemQty": {"QBJPhk6XZBXp9v9F": 89, "FI7AI5OAYf3RD2HI": 87, "hzXSystGSrWTntyz": 27}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"T091A73KkHbo0wUa": {"description": "35nvXIAAXnmDqkEg", "localExt": {"GCWTB03yHEgcafgc": {}, "g0oYWxU9MrAuwLn6": {}, "HeEvEikLWlMUntCm": {}}, "longDescription": "x9EGkcoX0dyiLxsZ", "title": "i7Ktt0bRJkBdrmcZ"}, "IxVOhDrskcfXMNpb": {"description": "SWnHDSk5rewvtEBH", "localExt": {"KanCAojd0tP3HTsp": {}, "TAk8AAFwrkRJDQYU": {}, "Rt1lfRDiWenLBY67": {}}, "longDescription": "O8wg8W3oB9pglsyJ", "title": "q6D0ZKxZ56XOyFK9"}, "QTrLwrAVqMRFBugo": {"description": "8YlJqlNLuRB6huOL", "localExt": {"huz1JUCXmA16751W": {}, "SVr3mnrGp4JsfoYZ": {}, "R7aG7x7tEmlh2T9e": {}}, "longDescription": "mdRFfGE7DBIjvHdu", "title": "Djh2C4bQ7z8uVC8i"}}, "lootBoxConfig": {"rewardCount": 21, "rewards": [{"lootBoxItems": [{"count": 31, "duration": 48, "endDate": "1995-06-30T00:00:00Z", "itemId": "AySqwSCctbNiY5mx", "itemSku": "F6bTcTCwfOCxAD9f", "itemType": "Z7WRQ9iPnDx7yGQf"}, {"count": 96, "duration": 73, "endDate": "1983-05-29T00:00:00Z", "itemId": "cjRpiUIXs3wOK9rh", "itemSku": "HAIaRDMi8JJ1R71Q", "itemType": "K3UeM25pPOcJ9pi0"}, {"count": 67, "duration": 39, "endDate": "1976-10-27T00:00:00Z", "itemId": "ktkZswPZ10eQDca6", "itemSku": "vdzDF48NQFJN6Vmk", "itemType": "KdooWmrIuVyrdkQJ"}], "name": "ackTce5y2K6L2WMB", "odds": 0.6570370632855506, "type": "REWARD", "weight": 74}, {"lootBoxItems": [{"count": 95, "duration": 53, "endDate": "1985-05-01T00:00:00Z", "itemId": "dfmA6E0VqYZrLmwK", "itemSku": "TLExthBTq87aBIbD", "itemType": "nITFOu4ElSi2faRg"}, {"count": 30, "duration": 49, "endDate": "1980-04-23T00:00:00Z", "itemId": "hfGDLug8GaIDaC68", "itemSku": "l3XpsWHbENS6OKCb", "itemType": "WkfzBvJd9S0AMznM"}, {"count": 20, "duration": 48, "endDate": "1976-09-25T00:00:00Z", "itemId": "ZP1iexkliPw0cYCJ", "itemSku": "5Ja15mO78oElJ4hs", "itemType": "wRIDx7JDisW5V2Ab"}], "name": "QqDmzWJcnXTG6hsn", "odds": 0.8213710016371005, "type": "REWARD_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 86, "duration": 5, "endDate": "1973-04-26T00:00:00Z", "itemId": "s1ySwYY0Ae7KXG2s", "itemSku": "w1Z6UdJHEKbGgG1w", "itemType": "aHdBO5ZafZG2HLDN"}, {"count": 49, "duration": 92, "endDate": "1994-07-10T00:00:00Z", "itemId": "ztRKpncJvjPqWI73", "itemSku": "uABGbqjVcpKS3adr", "itemType": "POmCCvrBv1FNcuIq"}, {"count": 71, "duration": 14, "endDate": "1987-05-27T00:00:00Z", "itemId": "UFx9p2NWLCG3a6AB", "itemSku": "Z4VC5mD5onbiV9LJ", "itemType": "YMS7skk1GA5cS2J9"}], "name": "3D5GT4Pi8LVuMdxq", "odds": 0.9138773282898157, "type": "REWARD_GROUP", "weight": 35}], "rollFunction": "DEFAULT"}, "maxCount": 66, "maxCountPerUser": 52, "name": "VyBucFPNz07sqMZS", "optionBoxConfig": {"boxItems": [{"count": 87, "duration": 54, "endDate": "1981-12-18T00:00:00Z", "itemId": "pkPLBS1g4sh71Ms4", "itemSku": "H7tbN4x0uqHJKvqk", "itemType": "I7ytMnDnzsXrmBgv"}, {"count": 47, "duration": 14, "endDate": "1994-11-22T00:00:00Z", "itemId": "JElbIKQhyv2Csd2K", "itemSku": "E5XvnCBAAi1f1uXB", "itemType": "Mxpnimcx14K1H1nX"}, {"count": 85, "duration": 26, "endDate": "1987-11-19T00:00:00Z", "itemId": "aQ514UBapN1gi4aC", "itemSku": "YAGYAwiJHzhQcFYm", "itemType": "FpQ3Eli2iMJd2wIv"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 78, "fixedTrialCycles": 86, "graceDays": 48}, "regionData": {"IXH7cwHOjRaXwXAP": [{"currencyCode": "AT3JNdu8b1HSDO9D", "currencyNamespace": "aw950UXG5uRpJqcr", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1977-06-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1998-03-26T00:00:00Z", "expireAt": "1996-12-23T00:00:00Z", "price": 54, "purchaseAt": "1994-06-11T00:00:00Z", "trialPrice": 44}, {"currencyCode": "puBYbPbQGOgvYv8J", "currencyNamespace": "fQg18Ast7D4rmhXZ", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1992-09-02T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-09-26T00:00:00Z", "expireAt": "1974-01-08T00:00:00Z", "price": 13, "purchaseAt": "1976-11-06T00:00:00Z", "trialPrice": 15}, {"currencyCode": "NEObqoWza9IKFLxY", "currencyNamespace": "he0gCAR6nl9VlKFo", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1995-12-09T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1972-02-08T00:00:00Z", "expireAt": "1976-03-19T00:00:00Z", "price": 3, "purchaseAt": "1994-07-31T00:00:00Z", "trialPrice": 49}], "ub2ne9sq94csxeOq": [{"currencyCode": "Jm4gGvi2wKgOuVuN", "currencyNamespace": "gm0BFOJCbENtxXFK", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-09-17T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1995-10-27T00:00:00Z", "expireAt": "1982-03-19T00:00:00Z", "price": 61, "purchaseAt": "1993-11-16T00:00:00Z", "trialPrice": 25}, {"currencyCode": "Du2STZCgGLTCZTk3", "currencyNamespace": "oO1vJjlLjK77VnUM", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1984-01-16T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1974-08-13T00:00:00Z", "expireAt": "1997-08-18T00:00:00Z", "price": 26, "purchaseAt": "1981-01-31T00:00:00Z", "trialPrice": 98}, {"currencyCode": "X5sZzsps65ocOorH", "currencyNamespace": "rTHoR3eswFTf0SQI", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1983-06-23T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1975-04-23T00:00:00Z", "expireAt": "1971-03-06T00:00:00Z", "price": 45, "purchaseAt": "1984-11-10T00:00:00Z", "trialPrice": 83}], "8yJrmHLuz4xo71FQ": [{"currencyCode": "46BHPjjTBSRYqm7I", "currencyNamespace": "NBg2lfGxy72eowFT", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1981-10-16T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1999-06-11T00:00:00Z", "expireAt": "1975-11-30T00:00:00Z", "price": 26, "purchaseAt": "1997-01-09T00:00:00Z", "trialPrice": 12}, {"currencyCode": "ApHBQtpVZTF17UWa", "currencyNamespace": "a5cuEfMDtK3SbWNa", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1983-02-24T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1976-03-11T00:00:00Z", "expireAt": "1979-07-01T00:00:00Z", "price": 9, "purchaseAt": "1994-10-29T00:00:00Z", "trialPrice": 72}, {"currencyCode": "4M4WcnnCX5x2WeCa", "currencyNamespace": "MfNBXEnxQlMgGvVx", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1983-07-06T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1985-01-05T00:00:00Z", "expireAt": "1978-06-20T00:00:00Z", "price": 59, "purchaseAt": "1997-05-14T00:00:00Z", "trialPrice": 69}]}, "saleConfig": {"currencyCode": "6nx0deRpGlIGXdCQ", "price": 86}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "dXZ6TWxN2NgkqoxG", "stackable": true, "status": "ACTIVE", "tags": ["qE6nNYuhaRJdIT7t", "nOYaP0Om3fGNxttC", "vCo84hMWz5ZsOQBA"], "targetCurrencyCode": "2pzzvUMoGIgzHfa4", "targetNamespace": "gj5qVDru7fP0pzcz", "thumbnailUrl": "bsuZpF1qcG5AVm8R", "useCount": 87}' \
    > test.out 2>&1
eval_tap $? 98 'CreateItem' test.out

#- 99 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'BD1kWpJTktZmZZd6' \
    --appId 'oG6FnlESfLMWWt0w' \
    > test.out 2>&1
eval_tap $? 99 'GetItemByAppId' test.out

#- 100 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'UoXdMDyNHRODXJol' \
    --baseAppId 'HyFDDiuoM77LHVfc' \
    --categoryPath 'Grdr5CZtCIo7LOAW' \
    --features 'QGzTejwJM1brr0aY' \
    --includeSubCategoryItem 'true' \
    --itemType 'CODE' \
    --limit '83' \
    --offset '0' \
    --region '9roB2cuX9h4iEVuN' \
    --sortBy '["name:asc", "displayOrder:asc"]' \
    --storeId 'lK9EFYt1MwUKBtzC' \
    --tags 'DKMjFoUQ15J6yeYz' \
    --targetNamespace 'IJNdEidI0UrZIVjd' \
    > test.out 2>&1
eval_tap $? 100 'QueryItems' test.out

#- 101 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["V3e9Bi64puLCeaOM", "ssFWNDjveQhub6sG", "gtXlij8gXD7ls8Ua"]' \
    > test.out 2>&1
eval_tap $? 101 'ListBasicItemsByFeatures' test.out

#- 102 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'cOlnGJT2zB4Hij7T' \
    --sku 'QfPvxhLdq1uyla4I' \
    > test.out 2>&1
eval_tap $? 102 'GetItemBySku' test.out

#- 103 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'KJiUiMSwbrapt2Vj' \
    --populateBundle 'true' \
    --region 'Ojipuj6oGokHVCki' \
    --storeId 'WLVm02ko0ynfWQzV' \
    --sku 'JC9vOqn30Kv4uaTq' \
    > test.out 2>&1
eval_tap $? 103 'GetLocaleItemBySku' test.out

#- 104 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '0QQBg2Q7eKGPHVo4' \
    --sku 'SsA7ZyFANWzHRyKf' \
    > test.out 2>&1
eval_tap $? 104 'GetItemIdBySku' test.out

#- 105 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ikYVmxG8tBQnLbnd", "TVH6ptEDQFrikpdT", "KdH2my4cg01g3XvF"]' \
    --storeId 'VRrvRtQlaGIHbgUn' \
    > test.out 2>&1
eval_tap $? 105 'GetBulkItemIdBySkus' test.out

#- 106 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'tLv5T0aUAJJuOe1y' \
    --region 'GDWLRaxY9HXnyn2Q' \
    --storeId 'mfdnY6GkNxzMe9I3' \
    --itemIds 'YvdCfqPJ2Vo0f87z' \
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
    --userId 'YYWGLXnuL67CB40U' \
    --body '{"itemIds": ["3FkdqCM4shmYgJR2", "j7HODysubkwITxs7", "sJMDNENL1ljKPG9N"]}' \
    > test.out 2>&1
eval_tap $? 108 'ValidateItemPurchaseCondition' test.out

#- 109 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'pGSoHer15WEn5ayt' \
    --body '{"changes": [{"itemIdentities": ["nNm0U230G80RhBAB", "6RHiRLTCTVk2V2Zn", "cbXCCYlWyIkUeXGv"], "itemIdentityType": "ITEM_SKU", "regionData": {"xegFetJAOu5wDRtx": [{"currencyCode": "7pfzotpwsvb6YEsw", "currencyNamespace": "LhZ2il88LsplGJ1U", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1980-09-01T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1988-07-21T00:00:00Z", "discountedPrice": 28, "expireAt": "1978-12-15T00:00:00Z", "price": 61, "purchaseAt": "1992-08-05T00:00:00Z", "trialPrice": 81}, {"currencyCode": "xitHKkKG3LLjMyXE", "currencyNamespace": "tT0CD7u08g1WpyIL", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1998-01-27T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1983-11-14T00:00:00Z", "discountedPrice": 4, "expireAt": "1983-02-03T00:00:00Z", "price": 71, "purchaseAt": "1985-02-03T00:00:00Z", "trialPrice": 85}, {"currencyCode": "yan5AexMzqAT4WVh", "currencyNamespace": "hqaKhUJIEoY01RIq", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1997-03-07T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1987-11-04T00:00:00Z", "discountedPrice": 45, "expireAt": "1978-03-18T00:00:00Z", "price": 93, "purchaseAt": "1990-05-16T00:00:00Z", "trialPrice": 73}], "2kjoZmWx7lPDPt1f": [{"currencyCode": "juyuqTX0Zg1g094A", "currencyNamespace": "VkAG1lEy1W1drzzM", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1991-02-12T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1976-10-24T00:00:00Z", "discountedPrice": 59, "expireAt": "1994-11-30T00:00:00Z", "price": 24, "purchaseAt": "1971-09-02T00:00:00Z", "trialPrice": 83}, {"currencyCode": "5JTxsS9K5rbfEH5h", "currencyNamespace": "RerN0deJ8ZeVz8Fa", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1997-06-16T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1988-03-21T00:00:00Z", "discountedPrice": 31, "expireAt": "1988-04-18T00:00:00Z", "price": 59, "purchaseAt": "1991-04-03T00:00:00Z", "trialPrice": 72}, {"currencyCode": "XVPxm4tkFmOrqnGP", "currencyNamespace": "Ylzm101Cleemn8Xv", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1985-06-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1999-08-27T00:00:00Z", "discountedPrice": 57, "expireAt": "1975-06-18T00:00:00Z", "price": 80, "purchaseAt": "1974-07-18T00:00:00Z", "trialPrice": 33}], "qNTYyn59j2WuO3GM": [{"currencyCode": "PgrAlO9xORM2qWF5", "currencyNamespace": "7zDTf2tkpxYXJbUa", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1987-07-21T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1995-12-28T00:00:00Z", "discountedPrice": 56, "expireAt": "1976-08-17T00:00:00Z", "price": 4, "purchaseAt": "1990-08-26T00:00:00Z", "trialPrice": 65}, {"currencyCode": "UKL5h2DntCM6TKFk", "currencyNamespace": "ET43ukeJ9TVRQYnl", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1995-11-20T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1981-05-21T00:00:00Z", "discountedPrice": 31, "expireAt": "1975-01-30T00:00:00Z", "price": 39, "purchaseAt": "1993-07-06T00:00:00Z", "trialPrice": 85}, {"currencyCode": "G7qSBsGLD2IAl2JT", "currencyNamespace": "0q4qZgK4wvlC298u", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1985-03-11T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1992-07-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1991-03-03T00:00:00Z", "price": 99, "purchaseAt": "1993-12-11T00:00:00Z", "trialPrice": 40}]}}, {"itemIdentities": ["RpudRDxaJ6YINeKo", "1KdDAHbAXnSBgXVN", "wDujeL19nhBqsgBj"], "itemIdentityType": "ITEM_SKU", "regionData": {"doa4VpnQxuqh508U": [{"currencyCode": "4pXTFnx9bNNFdTIm", "currencyNamespace": "ckBeNN3ETmUKzuZG", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1990-09-04T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1982-09-20T00:00:00Z", "discountedPrice": 51, "expireAt": "1988-09-26T00:00:00Z", "price": 27, "purchaseAt": "1985-11-26T00:00:00Z", "trialPrice": 75}, {"currencyCode": "WmSmwB5DS5iwNxGK", "currencyNamespace": "DFsC6YhXBIPsVMg6", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1996-04-20T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1983-12-06T00:00:00Z", "discountedPrice": 4, "expireAt": "1985-07-22T00:00:00Z", "price": 67, "purchaseAt": "1977-08-20T00:00:00Z", "trialPrice": 74}, {"currencyCode": "kWPapVzLcvqXoKkJ", "currencyNamespace": "oP6Iih2r0kj6XEY6", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1998-10-12T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1979-01-20T00:00:00Z", "discountedPrice": 85, "expireAt": "1999-02-20T00:00:00Z", "price": 13, "purchaseAt": "1994-05-17T00:00:00Z", "trialPrice": 61}], "lQKwll1AWUol8mKu": [{"currencyCode": "g5Xh9dbuuXsSlpNR", "currencyNamespace": "ZA8JRPtFVZMC6qbL", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1997-06-15T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1998-09-09T00:00:00Z", "discountedPrice": 15, "expireAt": "1972-07-29T00:00:00Z", "price": 39, "purchaseAt": "1976-05-04T00:00:00Z", "trialPrice": 3}, {"currencyCode": "EHDo4L6swIxQBnnl", "currencyNamespace": "jvFD9D8aam7DdxUX", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1983-07-30T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-11-23T00:00:00Z", "discountedPrice": 49, "expireAt": "1986-10-04T00:00:00Z", "price": 62, "purchaseAt": "1976-08-04T00:00:00Z", "trialPrice": 52}, {"currencyCode": "WT9TYEnhCuv17cA1", "currencyNamespace": "6np8MUkLSzreio9R", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1981-04-29T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1991-09-20T00:00:00Z", "discountedPrice": 76, "expireAt": "1976-10-13T00:00:00Z", "price": 100, "purchaseAt": "1994-02-14T00:00:00Z", "trialPrice": 37}], "BfCPkNnorM11rcXL": [{"currencyCode": "lwVp7d4pWQvknqe8", "currencyNamespace": "DJMrbvbr1hHE76y3", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1976-05-24T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1996-06-26T00:00:00Z", "discountedPrice": 27, "expireAt": "1997-10-25T00:00:00Z", "price": 0, "purchaseAt": "1976-09-15T00:00:00Z", "trialPrice": 55}, {"currencyCode": "or1jREnkBHSWDUH4", "currencyNamespace": "TAbtDaTvgpr3y99h", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1997-11-21T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1987-11-27T00:00:00Z", "discountedPrice": 85, "expireAt": "1994-11-30T00:00:00Z", "price": 38, "purchaseAt": "1979-01-19T00:00:00Z", "trialPrice": 68}, {"currencyCode": "tWvvTAc69lCJoGtk", "currencyNamespace": "K63RHin9wuvprN9r", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1978-08-27T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1984-07-02T00:00:00Z", "discountedPrice": 77, "expireAt": "1984-09-18T00:00:00Z", "price": 72, "purchaseAt": "1979-09-19T00:00:00Z", "trialPrice": 66}]}}, {"itemIdentities": ["RZb2NXyP9drK5DNk", "lcSyT7myIxBqtub4", "4ywFx1HgB4dzQqC4"], "itemIdentityType": "ITEM_SKU", "regionData": {"c0P2j3sJxtN2TxXn": [{"currencyCode": "mafYeDMH5dPRocYC", "currencyNamespace": "hATqSJHehdnR75PV", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1981-10-09T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1977-01-18T00:00:00Z", "discountedPrice": 91, "expireAt": "1998-04-16T00:00:00Z", "price": 55, "purchaseAt": "1989-12-21T00:00:00Z", "trialPrice": 82}, {"currencyCode": "mMVPxugauvYfA2dO", "currencyNamespace": "fbMFuH5sLH9q44uX", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1987-05-11T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1988-05-07T00:00:00Z", "discountedPrice": 68, "expireAt": "1983-07-30T00:00:00Z", "price": 34, "purchaseAt": "1976-09-20T00:00:00Z", "trialPrice": 55}, {"currencyCode": "YdfoCxzxHYW6VsiB", "currencyNamespace": "cMAp3uMcnlnuoi2a", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1979-12-29T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1972-04-20T00:00:00Z", "discountedPrice": 76, "expireAt": "1980-01-25T00:00:00Z", "price": 32, "purchaseAt": "1980-07-30T00:00:00Z", "trialPrice": 21}], "x0czxSPeuSYDZMyz": [{"currencyCode": "juJoZWCwcPBozdPi", "currencyNamespace": "PNJ58vvALZYhjcbm", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1989-03-05T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1979-08-10T00:00:00Z", "discountedPrice": 88, "expireAt": "1996-07-16T00:00:00Z", "price": 26, "purchaseAt": "1992-08-26T00:00:00Z", "trialPrice": 80}, {"currencyCode": "wHVKG0HYeVhYJBAx", "currencyNamespace": "rGOsCaUgcoXpHV0t", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1996-01-17T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1985-03-11T00:00:00Z", "discountedPrice": 22, "expireAt": "1996-03-16T00:00:00Z", "price": 4, "purchaseAt": "1995-08-02T00:00:00Z", "trialPrice": 41}, {"currencyCode": "hwKrDX68IeIRBTJy", "currencyNamespace": "llq2waYZ4igCudE7", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1983-10-11T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1999-10-07T00:00:00Z", "discountedPrice": 77, "expireAt": "1978-12-24T00:00:00Z", "price": 7, "purchaseAt": "1987-04-07T00:00:00Z", "trialPrice": 95}], "46OFAa7bZb3DvI8r": [{"currencyCode": "NuBC3HLmk92Ls08v", "currencyNamespace": "oTyY7dOBjS4wF1Y1", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1975-02-15T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1973-05-11T00:00:00Z", "discountedPrice": 32, "expireAt": "1992-10-21T00:00:00Z", "price": 46, "purchaseAt": "1977-03-29T00:00:00Z", "trialPrice": 54}, {"currencyCode": "2kvJXSV6CyzNJjci", "currencyNamespace": "hLzQ35P6PjqhIS8B", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1977-09-06T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1989-09-23T00:00:00Z", "discountedPrice": 81, "expireAt": "1975-07-19T00:00:00Z", "price": 1, "purchaseAt": "1973-07-23T00:00:00Z", "trialPrice": 42}, {"currencyCode": "JkcvjErcuekfsr4D", "currencyNamespace": "crLotfqoH6MWzGxH", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1972-06-28T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1990-05-08T00:00:00Z", "discountedPrice": 98, "expireAt": "1999-06-07T00:00:00Z", "price": 48, "purchaseAt": "1977-03-08T00:00:00Z", "trialPrice": 71}]}}]}' \
    > test.out 2>&1
eval_tap $? 109 'BulkUpdateRegionData' test.out

#- 110 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'CODE' \
    --limit '8' \
    --offset '30' \
    --sortBy 'r1i7271I26A5rRCv' \
    --storeId 'wOmvubOL6BeUbIZL' \
    --keyword 'qo1lC4ZNmStmtNWo' \
    --language '5xJQhdOkJMSu1qRb' \
    > test.out 2>&1
eval_tap $? 110 'SearchItems' test.out

#- 111 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '25' \
    --offset '73' \
    --sortBy '["updatedAt", "createdAt:asc", "displayOrder:asc"]' \
    --storeId 'sEaeF0w2Y0NMqIFB' \
    > test.out 2>&1
eval_tap $? 111 'QueryUncategorizedItems' test.out

#- 112 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'M0mrrQuxf65NyPGx' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'RlAqdYOCjMN08xH0' \
    > test.out 2>&1
eval_tap $? 112 'GetItem' test.out

#- 113 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'QKbazdXKothNBi9l' \
    --namespace $AB_NAMESPACE \
    --storeId 'D7qtuJlRCXC36uYz' \
    --body '{"appId": "MXVvrspOck7MCDwk", "appType": "SOFTWARE", "baseAppId": "Tr3TJT0KXY3p0iJ2", "boothName": "3jtJtfVBNN8cpSi8", "categoryPath": "aImasUAcJCTHDCiT", "clazz": "mGrQ235yVUOV1pcf", "displayOrder": 76, "entitlementType": "CONSUMABLE", "ext": {"XqzMn8zSrdHWv1mT": {}, "Leaf8DzoXOoV94C8": {}, "EuFccY8IDGwKEv3z": {}}, "features": ["zmpoTc0IW0nUexhh", "Cf20mscwKy8AjBlH", "AE51yGSCy1iKMpwX"], "images": [{"as": "Te3AY3YJbwSVGdQi", "caption": "pA44pY2dEzz66QvP", "height": 0, "imageUrl": "IEy2zuJq62ISPUxr", "smallImageUrl": "BRfJDdzKbkmduD2f", "width": 94}, {"as": "DbKngvbZ5Fsg71rT", "caption": "pwo8jJOzi5HbHFdC", "height": 39, "imageUrl": "iuZmvkYCRxMc1ABp", "smallImageUrl": "Oxoa3jcV9lomJ2ew", "width": 75}, {"as": "zqvfKtgonAeM9pSY", "caption": "QPKLJONWAL8NV6ze", "height": 4, "imageUrl": "tFaOMzqIJ0dcawAk", "smallImageUrl": "TeIYPEQ55PO4avmW", "width": 47}], "itemIds": ["K3yQ4FMm6Xh7YAyN", "XSxO1185MGdp1dvC", "JGHp12XZWhtWiCEM"], "itemQty": {"kLtVLZkrhYvdEHJn": 52, "dCdQbcTnS8g6AeEW": 8, "98Hcxg9N6vDA8c3E": 63}, "itemType": "EXTENSION", "listable": true, "localizations": {"JyPMLF0urCtCh3Aa": {"description": "vSby96jy6DPWWhkk", "localExt": {"dWzi7yuxQZvV6ykI": {}, "MpHGuzZoiZZKLgor": {}, "dXwrvLn0x93EfiUX": {}}, "longDescription": "YqiRKJR9ys52MV65", "title": "gJrZW3dljLZND4Y0"}, "FtQaXvFS069UkyWn": {"description": "uJjCrqhKlQCZENe3", "localExt": {"F8Dqz1iktJ0FE4u7": {}, "Xeb1wLobNodNYlrZ": {}, "CQqh4AyjUekw55UK": {}}, "longDescription": "Tbg2ZzjNLhrSD9du", "title": "JCJW2f9uCgPmFxnf"}, "z9VmlasBipmWOlLb": {"description": "P9MGS3eaP7tWcgfL", "localExt": {"CM4feRrAobYb7rxh": {}, "vIBleTN8yGX1DShu": {}, "KKGG4N39JTBwFCcB": {}}, "longDescription": "JEnCFc9gPoGOIVjm", "title": "1D05d7PucI5diMZY"}}, "lootBoxConfig": {"rewardCount": 39, "rewards": [{"lootBoxItems": [{"count": 43, "duration": 68, "endDate": "1974-02-24T00:00:00Z", "itemId": "FuvVxiiVLDvJZIEt", "itemSku": "4XKTguXZoQDsCndG", "itemType": "4fbcFgEHjGIsAkbc"}, {"count": 30, "duration": 59, "endDate": "1985-10-08T00:00:00Z", "itemId": "PZUsG1TQYQun3gEk", "itemSku": "MsERJHtO3UX2r4PT", "itemType": "enBatZICW4Tyeerb"}, {"count": 9, "duration": 35, "endDate": "1979-07-02T00:00:00Z", "itemId": "H7g9wTlAkqk3Ucna", "itemSku": "okO3LX783YH307j6", "itemType": "Hs3e4JFgMgaqDzej"}], "name": "SFeOtiGSvB4oHfMc", "odds": 0.7764247525716046, "type": "PROBABILITY_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 59, "duration": 0, "endDate": "1992-09-10T00:00:00Z", "itemId": "ubE435bWIg4gtgqN", "itemSku": "zaToijzPRNvbC4hD", "itemType": "hcpDOhfv7qEJ4TYx"}, {"count": 48, "duration": 79, "endDate": "1994-06-16T00:00:00Z", "itemId": "Z32L3PrjY7KzayN0", "itemSku": "bQq2TgdO647jsLVz", "itemType": "kyKZh2BgqDxIBzK4"}, {"count": 18, "duration": 4, "endDate": "1981-08-28T00:00:00Z", "itemId": "Z4Co8EWLuwmhZG4Q", "itemSku": "25YycaIM452gb9Pt", "itemType": "jIKJZQctZOwRRLx1"}], "name": "wl0eKhjvMQoAZQRD", "odds": 0.6536907947516003, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 36, "duration": 27, "endDate": "1998-12-01T00:00:00Z", "itemId": "Im9CLfczCJGakK6d", "itemSku": "PjeA0dT8HllCKN8U", "itemType": "K0m24y3cIsrAaoEP"}, {"count": 6, "duration": 90, "endDate": "1979-01-30T00:00:00Z", "itemId": "iVICdQkZZW717var", "itemSku": "Fj3y06pndnrPAZfv", "itemType": "7YC5APYmd2DJnL1I"}, {"count": 43, "duration": 3, "endDate": "1981-03-08T00:00:00Z", "itemId": "nTuJeQ9rI1w2K1LT", "itemSku": "oTGtjSLCIEcGGBWO", "itemType": "XMqTeIViGfaaTdHn"}], "name": "vIvXjhiUSuANaO9X", "odds": 0.1045105145120061, "type": "PROBABILITY_GROUP", "weight": 8}], "rollFunction": "CUSTOM"}, "maxCount": 18, "maxCountPerUser": 29, "name": "MLCARYX6Gk0Jeafs", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 24, "endDate": "1980-11-25T00:00:00Z", "itemId": "d4V44kx1TnRCLhbg", "itemSku": "K5LnGyw5ovdwFtn0", "itemType": "8PzY1ULSHI8JzisO"}, {"count": 86, "duration": 85, "endDate": "1988-02-06T00:00:00Z", "itemId": "GyOAHWppvhSDjeq4", "itemSku": "S5AV9PUlaJ4yrZL7", "itemType": "SMoisaHIx0XwDTxt"}, {"count": 53, "duration": 94, "endDate": "1978-10-24T00:00:00Z", "itemId": "6O68Cb34jGJInj23", "itemSku": "p4FfgCvHLmlv3GqB", "itemType": "V4yU0p6ltC9LYXZZ"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 98, "fixedTrialCycles": 1, "graceDays": 64}, "regionData": {"YWLMvshwOFUKE80T": [{"currencyCode": "6qjMoVZDxJMFnOMH", "currencyNamespace": "BPuOtyhaeN3jicSk", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1989-03-22T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1972-12-01T00:00:00Z", "expireAt": "1981-02-21T00:00:00Z", "price": 50, "purchaseAt": "1997-06-07T00:00:00Z", "trialPrice": 14}, {"currencyCode": "w5tShyIFey9LqOCO", "currencyNamespace": "kpGzwPci5nGxmNjP", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1973-10-20T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-12-10T00:00:00Z", "expireAt": "1982-01-24T00:00:00Z", "price": 14, "purchaseAt": "1975-01-24T00:00:00Z", "trialPrice": 23}, {"currencyCode": "avuFObziXRBy8DNy", "currencyNamespace": "X7meXmvvUlRwvM6V", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1974-05-28T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1986-09-13T00:00:00Z", "expireAt": "1994-05-17T00:00:00Z", "price": 55, "purchaseAt": "1980-05-20T00:00:00Z", "trialPrice": 38}], "lyVvLHixhYEankC9": [{"currencyCode": "gACZSypwQ4Rx2SK4", "currencyNamespace": "QSwu64VHPSqtYvgJ", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1980-09-05T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1979-05-28T00:00:00Z", "expireAt": "1999-04-06T00:00:00Z", "price": 39, "purchaseAt": "1976-10-21T00:00:00Z", "trialPrice": 8}, {"currencyCode": "82R8QZuGb66gfNJu", "currencyNamespace": "EWetqFz5lyluuWKx", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1995-05-06T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-09-14T00:00:00Z", "expireAt": "1987-04-29T00:00:00Z", "price": 86, "purchaseAt": "1988-08-21T00:00:00Z", "trialPrice": 89}, {"currencyCode": "lfyaZ39CTdA57nrO", "currencyNamespace": "JpPVOsP3luyaduk0", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1997-05-10T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1994-10-09T00:00:00Z", "expireAt": "1982-07-10T00:00:00Z", "price": 89, "purchaseAt": "1986-08-06T00:00:00Z", "trialPrice": 44}], "vWpSvAMsX33hFaNT": [{"currencyCode": "oKNxqf2tk4PK1wBf", "currencyNamespace": "YVer62k36MfgASyx", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1981-11-28T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-06-25T00:00:00Z", "expireAt": "1976-12-16T00:00:00Z", "price": 99, "purchaseAt": "1989-10-20T00:00:00Z", "trialPrice": 49}, {"currencyCode": "pbG3mo7tKrqKOKBw", "currencyNamespace": "NSyVhKpHokZR5M0b", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1986-01-21T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1986-12-23T00:00:00Z", "expireAt": "1973-09-11T00:00:00Z", "price": 63, "purchaseAt": "1991-11-16T00:00:00Z", "trialPrice": 24}, {"currencyCode": "huY4S7uzjOEiP1Md", "currencyNamespace": "MatO1Py7NZmuyIti", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1997-03-22T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1993-04-21T00:00:00Z", "expireAt": "1989-09-19T00:00:00Z", "price": 94, "purchaseAt": "1973-01-04T00:00:00Z", "trialPrice": 94}]}, "saleConfig": {"currencyCode": "rPFdhjEJPtPT4IsR", "price": 36}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "8WNWDMoWZpER63rX", "stackable": false, "status": "INACTIVE", "tags": ["6ULvJr5ka4kad19r", "u7BwpUEKWgWuVGNS", "aK8Fphi1DfK0bhwl"], "targetCurrencyCode": "2hd1EXaowF4Jx7cN", "targetNamespace": "JDrcKmVxv7XLPNtj", "thumbnailUrl": "mTtKVEm65DpRiZG3", "useCount": 53}' \
    > test.out 2>&1
eval_tap $? 113 'UpdateItem' test.out

#- 114 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'qNiy7wn067tf3o17' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'XCOnIJWxfUWWDzGF' \
    > test.out 2>&1
eval_tap $? 114 'DeleteItem' test.out

#- 115 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'jYYjtoZ8S87e6QBd' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 29, "orderNo": "XcgBq5ERHPZph3bi"}' \
    > test.out 2>&1
eval_tap $? 115 'AcquireItem' test.out

#- 116 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'YGSq4JAkiVTdvT8X' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'iAQ4WoRrjfOl34kB' \
    > test.out 2>&1
eval_tap $? 116 'GetApp' test.out

#- 117 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'y7vn0XLm5ull2ids' \
    --namespace $AB_NAMESPACE \
    --storeId 'mjcjOycSGDkMlbbk' \
    --body '{"carousel": [{"alt": "pi7OLA7n8ewy8aNV", "previewUrl": "bF1MZjXS7UMkCa4m", "thumbnailUrl": "NUlLfA4NuljJUcWF", "type": "video", "url": "rGj6UVhPy6smU5qz", "videoSource": "youtube"}, {"alt": "QDxhkJIHdPHR7LZQ", "previewUrl": "I8Uh0NZe10srF7p7", "thumbnailUrl": "OCjF3Ofr9wjAvd4V", "type": "video", "url": "pI4CnGBVtcLkiIWs", "videoSource": "vimeo"}, {"alt": "3Pr0UuOfMtZ3363D", "previewUrl": "CfMtfoIBpES8zKL6", "thumbnailUrl": "4WCuLp4BoCUZ88VU", "type": "video", "url": "uTp8iPrxmqVDIpLV", "videoSource": "youtube"}], "developer": "Bad1fPZatckbavOv", "forumUrl": "Wm140iYBysnLMyXS", "genres": ["Indie", "Action", "MassivelyMultiplayer"], "localizations": {"fa8z8d0ZQsefNosj": {"announcement": "rNCYlZ2cLuAEuJBr", "slogan": "UculuKYkzncV46R8"}, "F8CncBYKS1Q8ZFGN": {"announcement": "b3KmwmixMC7LnpBX", "slogan": "RE9qN6kLBWPk275s"}, "TSZZ7kFXfXFBr0YN": {"announcement": "2zKYCMXcLFNpF5lX", "slogan": "pS5a63RTvAGhQ4AD"}}, "platformRequirements": {"SaMd5ApcdEfpj1Nb": [{"additionals": "p4TulZHOQ8WtM5po", "directXVersion": "olHrotU0hLNWNqST", "diskSpace": "fVXKaQfVtS54p46L", "graphics": "aFfDHvlTlXy2ZsPj", "label": "v8Fj0qnrpmKEjYGU", "osVersion": "Qo0YlhmwOIbVJkBf", "processor": "bvuiZoJlU87xJJuU", "ram": "y1afYoPajU0S2Vus", "soundCard": "eSVmQf7hLNjyNxEU"}, {"additionals": "5TN5A5VYIeJPFIJZ", "directXVersion": "RLHqzDNyuTucdBXs", "diskSpace": "IUNcJ6AegieP8FDW", "graphics": "uky7cxWCueDKZYdw", "label": "pwRcRwPkCLSrDBkK", "osVersion": "ttZPMjItMMg6QfFr", "processor": "0G5pjjN2jZE3NwzQ", "ram": "LMTMTBIAkJ9JhLsD", "soundCard": "2zK49C2SFXvmnt7g"}, {"additionals": "DEfzWUhyernTSBTC", "directXVersion": "OT12pg0mJINbGOIh", "diskSpace": "OEvUPsUkX3jZ15eu", "graphics": "U3srvnxZKjHsoGjf", "label": "iU91Qd4wpyLXhkbq", "osVersion": "xJakW3R3ZMCa2iEw", "processor": "I1fNFW6IRX9HRMVC", "ram": "UH2suCm00h6dT7PV", "soundCard": "UlrJrLcl9oTIxAxR"}], "8UXeznsKQXQ7HFk3": [{"additionals": "GBLs5UmrhZdCQCxF", "directXVersion": "0dJ2MN91K8ZZs5Sv", "diskSpace": "Y9TZ4bZekPo5zMQ9", "graphics": "rQoBLSYytrwrTxxq", "label": "k1MHaLgWWt9Mwpml", "osVersion": "7qWuZ4jJRWVHDmkM", "processor": "rpGObB5XOQAifHJS", "ram": "P4bwfsmi56ElvZ7p", "soundCard": "TtFp36MBLf1OHcm0"}, {"additionals": "1BjypdiKgSjSVNuq", "directXVersion": "ie6xme9i5HjiUaP7", "diskSpace": "JvHhuqaynoBjiNgH", "graphics": "io418gCx0keml3kl", "label": "6kNFuLQl2qLyAqa6", "osVersion": "0EEQzKbGWfCIOAay", "processor": "VhTkHofQdNrRM15T", "ram": "hUel2iLxg5bTsp6m", "soundCard": "gjaW1zjcZJDEPjAR"}, {"additionals": "0qYkbW7FmVNEhML6", "directXVersion": "UN6VDDefM4QK5LGM", "diskSpace": "jDiBmCw8WQrU2slY", "graphics": "DT4xTkCm04PM19CO", "label": "4HkiEUSdVC4rGjx2", "osVersion": "rrKoNIpDilzTAWH3", "processor": "saEB6r4xKIUBvKbp", "ram": "BQjH3qKCKQxaKGEG", "soundCard": "8Gez23jREx2Z6eRk"}], "MMvAglsqOoajYORi": [{"additionals": "WRV7IzxI99NWuiyp", "directXVersion": "DfF2ibsXJkC3Cg5C", "diskSpace": "CvcL8WHGdGZB47rA", "graphics": "IS5K2SIQfp5BkAD9", "label": "IqEiHeIpPlZxBQPi", "osVersion": "aoEDwmQUsA3ujqOo", "processor": "AbvLfbRkQpzwdQV0", "ram": "gbMjyLpHT7FLJwtU", "soundCard": "vKj1EAJnWd8j7Cnv"}, {"additionals": "RmgqYonSids7AKoB", "directXVersion": "UVDrhahKHStc3xWK", "diskSpace": "l3xgcQvD6hiUO2w7", "graphics": "Qgi75TRxhrTdgP3Z", "label": "ITcJyguZOkx4DyN6", "osVersion": "Y9NP2b0sJoljNzfw", "processor": "N87lmCbbGYDAjrsd", "ram": "X7Rrhc8IiceLk4ng", "soundCard": "Z0US0PsX8iOGGATE"}, {"additionals": "RKynPWeMVZ01qDVY", "directXVersion": "fwUUisV3Zoqm4gEU", "diskSpace": "Q7BjOEWEHVZedV6Z", "graphics": "AhhWA5KTPbb1gelQ", "label": "ADp3YW4pxahz7Jg8", "osVersion": "Brt7wib4Xeg83s9q", "processor": "pFlbPs3g19e4Ui4I", "ram": "Z4OhgH5vBOd7qLim", "soundCard": "3caTmeUqIsPK3lXo"}]}, "platforms": ["Windows", "Windows", "Windows"], "players": ["LocalCoop", "Multi", "CrossPlatformMulti"], "primaryGenre": "Adventure", "publisher": "v2UsJ2UknYHuRwU4", "releaseDate": "1993-07-10T00:00:00Z", "websiteUrl": "Y4cdkPutdRnEOFtw"}' \
    > test.out 2>&1
eval_tap $? 117 'UpdateApp' test.out

#- 118 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'niwkSlU0i2Aurhvh' \
    --namespace $AB_NAMESPACE \
    --storeId 'sG1gYctmuS3WyZD2' \
    > test.out 2>&1
eval_tap $? 118 'DisableItem' test.out

#- 119 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '0qz1vlF6oFvJU7mX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetItemDynamicData' test.out

#- 120 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'jL35kBD9H6yTK8bE' \
    --namespace $AB_NAMESPACE \
    --storeId 'mSVzJ038DUJjQ9Oq' \
    > test.out 2>&1
eval_tap $? 120 'EnableItem' test.out

#- 121 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '13aCBm4azSy8iT1l' \
    --itemId 'dnKpUFxUFiliajKt' \
    --namespace $AB_NAMESPACE \
    --storeId 'XHlQDEA9oOlBjB7a' \
    > test.out 2>&1
eval_tap $? 121 'FeatureItem' test.out

#- 122 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '0IS33T7Sf7MZt8rQ' \
    --itemId 'orCFv3MuZ6lfrQzK' \
    --namespace $AB_NAMESPACE \
    --storeId 'NnMCG47oNjBclIbR' \
    > test.out 2>&1
eval_tap $? 122 'DefeatureItem' test.out

#- 123 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'sxWStty0z0JUHMtf' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'HI4JbIL5ziXRmzgD' \
    --populateBundle 'true' \
    --region 'QKDJS98jxrogrNKq' \
    --storeId 'pdArDWNK0qpCNMS3' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItem' test.out

#- 124 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '2NqusmXfPbfQgBpN' \
    --namespace $AB_NAMESPACE \
    --storeId 'o0CWNtG09sHlIoie' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 23, "comparison": "includes", "name": "pvgYniQ2Kdf0yI7P", "predicateType": "SeasonTierPredicate", "value": "zMU68ODVzQ5fVC7O", "values": ["GF41b5PaL0Ij6XZC", "6GoGXtkzChQwco1j", "s8dBFg5WUcbDm3EB"]}, {"anyOf": 33, "comparison": "includes", "name": "UPobCjWKZuOYYnm2", "predicateType": "EntitlementPredicate", "value": "rzdQVGjkiBaMnce9", "values": ["VML6k2UejTSlELke", "xcV6ynWsckRRLeWr", "H5mmg8GgwYVvRbCg"]}, {"anyOf": 85, "comparison": "isGreaterThan", "name": "s6g7yFAPccvQtuxb", "predicateType": "SeasonPassPredicate", "value": "eZ6dacyuDXG9s2ou", "values": ["KGPspDEFSM7R0Apj", "Xh9TrpOYYhiYzFSH", "ORgNZ64msh4jZ0vL"]}]}, {"operator": "or", "predicates": [{"anyOf": 96, "comparison": "isLessThan", "name": "PBsQFtE9Ur8EhUhM", "predicateType": "EntitlementPredicate", "value": "cLF1IO701HRMjbgb", "values": ["FFnOXQj4O7bWdxIB", "Rjzgeg1AvrD3aTiY", "leDXLkO4tHi2sk3t"]}, {"anyOf": 80, "comparison": "isLessThan", "name": "oSb3h5Ejl50cHVH5", "predicateType": "SeasonTierPredicate", "value": "5Y0GQNMWuGsJECA3", "values": ["oQTRN7GGKWwSkXD2", "A09B3B408VXz4wds", "5aM2LbI8cS2Gd49U"]}, {"anyOf": 14, "comparison": "isGreaterThanOrEqual", "name": "P8fqH5cYQ4KROb14", "predicateType": "EntitlementPredicate", "value": "wXrslOFP2JIWVwaA", "values": ["kYALX7uKScOS4h59", "rRoJ9jxL8erHFsot", "b3BVGRCxLaEDaJdC"]}]}, {"operator": "or", "predicates": [{"anyOf": 73, "comparison": "isNot", "name": "MNxigSOr6Iw9DA6p", "predicateType": "SeasonTierPredicate", "value": "QrXzxF9hwcbUVfGF", "values": ["kC0pMN2ctqTah5ux", "ge4J9vrUzPCNF3BR", "oTlyRrDTR1Kp09ZJ"]}, {"anyOf": 95, "comparison": "isGreaterThan", "name": "35TC8y6pjaqaFrcG", "predicateType": "SeasonTierPredicate", "value": "HihUonqWmJr3DcAN", "values": ["g9ftpMXwNaNnvxy3", "mBT8oujhHQInMv1x", "3cIlEnMxaVKQLtUF"]}, {"anyOf": 33, "comparison": "isLessThanOrEqual", "name": "acMcYutd6CNrafjv", "predicateType": "EntitlementPredicate", "value": "b8NWQPEXWnBXjYPt", "values": ["SoXjIZBJT05GjgDP", "93v8kv6Y3qWj3ydW", "5KtBZYVgbo20Tgxd"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateItemPurchaseCondition' test.out

#- 125 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'KYuBU2CSMPFXYb8J' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "exI70PBdHwnb89vk"}' \
    > test.out 2>&1
eval_tap $? 125 'ReturnItem' test.out

#- 126 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --name 'vSlsRbKVeJHOTlS4' \
    --offset '25' \
    --tag 'MVoRw7tV6o4wCxTx' \
    > test.out 2>&1
eval_tap $? 126 'QueryKeyGroups' test.out

#- 127 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PTiv5C68DsQtydNa", "name": "ElCJvdtkA4KVNewG", "status": "ACTIVE", "tags": ["bF7kSCQBzKSOiD9g", "6xd7IKzQZ57DXGDa", "x1IWlyvRr16cPZxW"]}' \
    > test.out 2>&1
eval_tap $? 127 'CreateKeyGroup' test.out

#- 128 GetKeyGroupByBoothName
eval_tap 0 128 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 129 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'phfTCEqzp5gieFYe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'GetKeyGroup' test.out

#- 130 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'VnRWjyJovrjQvyG1' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2BuPHWHechlhgET4", "name": "JTM5OhAP3nPrbo2g", "status": "INACTIVE", "tags": ["Ul2a1cnIbUlIerH6", "WUF3k0CApQUihAKo", "Ul2qrIf4uWJZGVIa"]}' \
    > test.out 2>&1
eval_tap $? 130 'UpdateKeyGroup' test.out

#- 131 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'dNwxLYT4wdFipHRR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'GetKeyGroupDynamic' test.out

#- 132 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ladKwU2SkJC0Hxj2' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '8' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 132 'ListKeys' test.out

#- 133 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'z0Vfvwx9CjfJsS51' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 133 'UploadKeys' test.out

#- 134 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '96kFjRBjYMk51Fsc' \
    --limit '9' \
    --offset '90' \
    --orderNos '["q10RRD1Nwyqd8oMD", "w2aOBfcQ8FokPkGR", "85vKKqkQmYBmPvd2"]' \
    --sortBy 'svR9O29RY1WvMCHD' \
    --startTime 'mSdPFU5FMLzzIWd9' \
    --status 'REFUNDING' \
    --withTotal 'false' \
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
    --orderNo 'EwjZq1BAcJIPfu3G' \
    > test.out 2>&1
eval_tap $? 136 'GetOrder' test.out

#- 137 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pEq23tPOJutRs1gl' \
    --body '{"description": "RkUzpBJPEKKntzyw"}' \
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
    --body '{"dryRun": false, "notifyUrl": "4tSrfZNVhWfloDXz", "privateKey": "CIQ2yHlKbwBVaOpR"}' \
    > test.out 2>&1
eval_tap $? 139 'UpdatePaymentCallbackConfig' test.out

#- 140 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'nAM97nI8M75bYFMp' \
    --externalId '3ySZdJqWOHf1Ft3Z' \
    --limit '78' \
    --notificationSource 'STRIPE' \
    --notificationType 'yFIxJXxcp3ClOVSU' \
    --offset '71' \
    --paymentOrderNo 'tG52ODCQCQUx7QHJ' \
    --startDate 'pnzL5L5h5ZvcM2JU' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 140 'QueryPaymentNotifications' test.out

#- 141 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'Sctdk0EtAi0YUEJu' \
    --limit '38' \
    --offset '80' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 141 'QueryPaymentOrders' test.out

#- 142 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "fzMsFi1kmwSSW0Xe", "currencyNamespace": "l8PjmEmKjYj1tD0Q", "customParameters": {"qKGKZvdxQG3tviGf": {}, "je8kYPZnT4VDEXy4": {}, "2dNm9Z2TDkFR9JKk": {}}, "description": "48Di7bDzsUPOS4f2", "extOrderNo": "kfLpr65BaVk4Hsl5", "extUserId": "ap9a84U7Mgxf6EaT", "itemType": "BUNDLE", "language": "kafV-ZRlK", "metadata": {"18cD5Ji1CnB1QBaE": "5iiKKhAKUl8TWCWe", "Pln3lLfa6nKyYDx0": "7LsHqqoRn9yaAYxu", "EsJfho6picqgYyQ2": "rFzQ2ouJUdtTZ2Ox"}, "notifyUrl": "EO5QMXzmF84WDQnV", "omitNotification": false, "platform": "GvUBIan7oppq6WCc", "price": 52, "recurringPaymentOrderNo": "uG4KepLH09XvnmPY", "region": "1AS6Nc0j477lei72", "returnUrl": "Wo2hmbiiVkrcL0YW", "sandbox": false, "sku": "03AF6MGZrN3s4gwl", "subscriptionId": "rXTJp0gcE0e4bDCW", "targetNamespace": "bbJbPfPcOwSrF8zd", "targetUserId": "wFzqqygtCyLojMRx", "title": "697tFzZKB92scHcO"}' \
    > test.out 2>&1
eval_tap $? 142 'CreatePaymentOrderByDedicated' test.out

#- 143 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Xd9gEBH9xn9klzHi' \
    > test.out 2>&1
eval_tap $? 143 'ListExtOrderNoByExtTxId' test.out

#- 144 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Sybzx8quLzbgUcYe' \
    > test.out 2>&1
eval_tap $? 144 'GetPaymentOrder' test.out

#- 145 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WSCQFj3hRrSVJpzl' \
    --body '{"extTxId": "gYdhjxIWAImoLuXY", "paymentMethod": "AZTOuUDx1vdtzWxN", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 145 'ChargePaymentOrder' test.out

#- 146 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VTDCeMbmtcCC52gr' \
    --body '{"description": "wevRY5r0JHujqCex"}' \
    > test.out 2>&1
eval_tap $? 146 'RefundPaymentOrderByDedicated' test.out

#- 147 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'A1LlVDVVeG5skN7Q' \
    --body '{"amount": 14, "currencyCode": "88KjDL0DFzIB8ASu", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 7, "vat": 19}' \
    > test.out 2>&1
eval_tap $? 147 'SimulatePaymentOrderNotification' test.out

#- 148 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6GX9fg5BU4IDF5vd' \
    > test.out 2>&1
eval_tap $? 148 'GetPaymentOrderChargeStatus' test.out

#- 149 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 149 'GetPlatformWalletConfig' test.out

#- 150 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Other", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdatePlatformWalletConfig' test.out

#- 151 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'iXNmuq9BkaLUdcDF' \
    --limit '94' \
    --offset '47' \
    --source 'OTHER' \
    --startTime 'M7N78adgK3Tovg9v' \
    --status 'SUCCESS' \
    --transactionId 'Jmm4AS6IiJ9B3gLk' \
    --userId 'SHQ38GoC7Rw8IciF' \
    > test.out 2>&1
eval_tap $? 155 'QueryRevocationHistories' test.out

#- 156 GetLootBoxPluginConfig1
samples/cli/sample-apps Platform getLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetLootBoxPluginConfig1' test.out

#- 157 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "eZPrB0DmRoJhpnWC"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "MyHX2XXRmzeufDO0"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateRevocationPluginConfig' test.out

#- 158 DeleteLootBoxPluginConfig1
samples/cli/sample-apps Platform deleteLootBoxPluginConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'DeleteLootBoxPluginConfig1' test.out

#- 159 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 159 'UploadRevocationPluginConfigCert' test.out

#- 160 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dhEjr1iG1geaepTd", "eventTopic": "itnWgEo02FcvTJiP", "maxAwarded": 18, "maxAwardedPerUser": 31, "namespaceExpression": "XHGCEBnmKN4JOKGR", "rewardCode": "IJupvgkNYFb3Ef6D", "rewardConditions": [{"condition": "yK8aEEm9M1xLUuoM", "conditionName": "bWbIvxtrDYUZkpL4", "eventName": "JRrytRW36iROBSFH", "rewardItems": [{"duration": 60, "endDate": "1971-05-10T00:00:00Z", "itemId": "aTwQtnETfVXegjl2", "quantity": 78}, {"duration": 45, "endDate": "1984-01-10T00:00:00Z", "itemId": "EIK6iUL6GUyIVBI6", "quantity": 42}, {"duration": 31, "endDate": "1971-05-16T00:00:00Z", "itemId": "dDHRQbKpIgb60AQC", "quantity": 93}]}, {"condition": "UqT60m8Rzz5nzDO2", "conditionName": "jBC4RFu5MD037wNI", "eventName": "tlRhqFo0wDseviXJ", "rewardItems": [{"duration": 87, "endDate": "1999-01-11T00:00:00Z", "itemId": "C1oc2nKNa4Mdy3x8", "quantity": 74}, {"duration": 97, "endDate": "1992-05-02T00:00:00Z", "itemId": "RBZWEIGK9sJrQEVv", "quantity": 25}, {"duration": 98, "endDate": "1985-06-03T00:00:00Z", "itemId": "cNdgODIBpF0mkLla", "quantity": 60}]}, {"condition": "aFZLCJ7Aatbf97zt", "conditionName": "e8iIMT1c9Xkg2Fcd", "eventName": "2yxUILAy3rjDPQhs", "rewardItems": [{"duration": 3, "endDate": "1989-10-18T00:00:00Z", "itemId": "7Cr0TYvwd60VbJEA", "quantity": 11}, {"duration": 31, "endDate": "1985-12-19T00:00:00Z", "itemId": "KSnhQsVzF2ErRgRI", "quantity": 19}, {"duration": 44, "endDate": "1978-02-24T00:00:00Z", "itemId": "r8i0efF26KaIUWZE", "quantity": 74}]}], "userIdExpression": "GeC8x2VeLy2Yzrzd"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateReward' test.out

#- 161 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'z0aKwbxzw0t6YKZW' \
    --limit '70' \
    --offset '19' \
    --sortBy '["rewardCode:asc", "namespace:desc"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 163 'ImportRewards' test.out

#- 164 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HwpN8BCFh06EMGeg' \
    > test.out 2>&1
eval_tap $? 164 'GetReward' test.out

#- 165 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'amCnoEnxy8pcfWJm' \
    --body '{"description": "jFfYokGGm3HzL42g", "eventTopic": "1o2xtwNdG5cmjBvV", "maxAwarded": 0, "maxAwardedPerUser": 93, "namespaceExpression": "Jfu820Cn4IO3hLnL", "rewardCode": "yLzcN81gKe54GW3E", "rewardConditions": [{"condition": "ngfahSGx7LG17QDC", "conditionName": "HSOabEbrck63bw3y", "eventName": "oCnqXINcAyzZV0Qd", "rewardItems": [{"duration": 95, "endDate": "1991-02-13T00:00:00Z", "itemId": "9FapPbeGxy5OMfdA", "quantity": 34}, {"duration": 46, "endDate": "1989-04-03T00:00:00Z", "itemId": "CPiBtjnuopFR68BR", "quantity": 82}, {"duration": 66, "endDate": "1992-03-25T00:00:00Z", "itemId": "iDgCQ7xrCe2MPMuk", "quantity": 90}]}, {"condition": "bjJ6yJpYcIiv9Azc", "conditionName": "dBJfWtGbAHHpnqgp", "eventName": "AYbsRi6E9T9Z3d0f", "rewardItems": [{"duration": 58, "endDate": "1982-11-24T00:00:00Z", "itemId": "1ZZ03jdUXrRiFdfu", "quantity": 24}, {"duration": 20, "endDate": "1981-03-27T00:00:00Z", "itemId": "v9UT9QuGcz5ndF5t", "quantity": 45}, {"duration": 87, "endDate": "1987-12-16T00:00:00Z", "itemId": "fw1BqCQr8zhCgSOX", "quantity": 84}]}, {"condition": "rnnGuNieFlUXi2wh", "conditionName": "nqdhTVSyIEfVfXRJ", "eventName": "TCf0dTboLVr364fg", "rewardItems": [{"duration": 27, "endDate": "1985-05-23T00:00:00Z", "itemId": "LaiaxVsHKoSizYLL", "quantity": 21}, {"duration": 83, "endDate": "1974-03-20T00:00:00Z", "itemId": "uiwTOoBxeZ1ooF42", "quantity": 93}, {"duration": 87, "endDate": "1976-11-25T00:00:00Z", "itemId": "RJQAiLD9iOIiBUMu", "quantity": 97}]}], "userIdExpression": "ynKr8iJYIN8dkpMS"}' \
    > test.out 2>&1
eval_tap $? 165 'UpdateReward' test.out

#- 166 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '1LVG9tjNRNDjCjJ3' \
    > test.out 2>&1
eval_tap $? 166 'DeleteReward' test.out

#- 167 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'LPdV11MW77r4024R' \
    --body '{"payload": {"dAkQqqv66c3fKfhi": {}, "vNVv8UHyR1DP9nXE": {}, "r61x3TtDriu6W8xq": {}}}' \
    > test.out 2>&1
eval_tap $? 167 'CheckEventCondition' test.out

#- 168 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'RmlQza2g8ZOLCutz' \
    --body '{"conditionName": "5BhPbpKcGUZXK9i1", "userId": "T7wNsOz3aSD01EFn"}' \
    > test.out 2>&1
eval_tap $? 168 'DeleteRewardConditionRecord' test.out

#- 169 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'ZOl1NjPmIi26UjPz' \
    --limit '35' \
    --offset '18' \
    --start 'YM7vEJWJZ64J3vqb' \
    --storeId 'YRdj1oc37BCGaItc' \
    --viewId '5HKcCwJvNms1aD4Y' \
    > test.out 2>&1
eval_tap $? 169 'QuerySections' test.out

#- 170 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'HDbwURLWkzwYyNev' \
    --body '{"active": false, "displayOrder": 32, "endDate": "1975-03-13T00:00:00Z", "ext": {"5dxrRzAfx00LPH22": {}, "IheGZt9fYP1N6ZJL": {}, "Bjv8wdTxmyBMtp9R": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 20, "itemCount": 11, "rule": "SEQUENCE"}, "items": [{"id": "Qr2Kca0nfhu1n0qY", "sku": "s9RN0YZKr6cgDvcE"}, {"id": "F8GQTCWpqNpsBMcH", "sku": "inLrxYBp7sw4lCvc"}, {"id": "ZUClskg9LIBj0PAg", "sku": "yW4OEOAGkMedq6dq"}], "localizations": {"CoPub58KDXwMFXG7": {"description": "FwapfckLBnZgbeff", "localExt": {"9fIaj7uNB3UUc9WQ": {}, "O0rPrdWUa7MTRDGd": {}, "VaQeEHCOIkRCZDLI": {}}, "longDescription": "0SyM2CDjbCTrcgao", "title": "hhvVn1PW0GJ0I6Hf"}, "8ArWMLICzubC0sol": {"description": "pDG1GafToR9pNVdN", "localExt": {"E1LDYnljTEBMYdV7": {}, "n6tfyawUPTK0W38u": {}, "nswHnCBETw57zm8G": {}}, "longDescription": "wALWHcTpCARWFyYv", "title": "AYax15Wgukgohp0D"}, "KXBMFaYbOY1ZyKdb": {"description": "jGuavWnCUEU66E8k", "localExt": {"hoLIEUR6FoU0O3Nw": {}, "NgqFYRhAW0aeY2jn": {}, "cNm4fSR4wC4FbByJ": {}}, "longDescription": "oOhIy4BmPc3z9vXi", "title": "Pcz1xbYIoou7PXCk"}}, "name": "SIHVO51eXI5Ug8Rd", "rotationType": "NONE", "startDate": "1976-03-22T00:00:00Z", "viewId": "ZVhO8KzcaPuPz6jW"}' \
    > test.out 2>&1
eval_tap $? 170 'CreateSection' test.out

#- 171 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'KEDa7Pkanx2izkCX' \
    > test.out 2>&1
eval_tap $? 171 'PurgeExpiredSection' test.out

#- 172 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '1eqxA7TgIwwGpu8L' \
    --storeId 'IejkC5zxJtauaYtz' \
    > test.out 2>&1
eval_tap $? 172 'GetSection' test.out

#- 173 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'GBSFhA4F5b6qwOgB' \
    --storeId 'BCidsbmcRgemqu8u' \
    --body '{"active": true, "displayOrder": 31, "endDate": "1988-11-11T00:00:00Z", "ext": {"gd4j2IVAMj5JIujX": {}, "z2HPeE6OeGm4LQHb": {}, "IHUAiIQKZEYgfGVG": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 13, "itemCount": 47, "rule": "SEQUENCE"}, "items": [{"id": "HityW0e0i5ATGmVm", "sku": "4QicS11NhHhrEZ5E"}, {"id": "e0mHClfjHz3ls7xV", "sku": "hm5FCNZxIKUqoqLP"}, {"id": "IdnYEEymkkHte4t6", "sku": "0mgyCAumM7foFFkD"}], "localizations": {"qWJI6CXYQaamYFIb": {"description": "86WfBlQBzCM8UgaG", "localExt": {"zGyMt7EAEKZay1Nh": {}, "EgG3RegAS5Ihu9PO": {}, "qircivgUXeEZwSMx": {}}, "longDescription": "QKVxhSkuAyqCN6Fi", "title": "OasW3sYWOtMoRCK3"}, "Tyq7jMAbybV0KDlN": {"description": "MAErCBEomqSot69J", "localExt": {"UXb5icdUxDjRSKSA": {}, "w02TtHy6kp5GmVXm": {}, "MBpVrNc0Dxn5McEQ": {}}, "longDescription": "Td08o7xd7keY3g5j", "title": "lCE3dyoDwndrEF1q"}, "Wl5Pr7abLMi9hH1u": {"description": "KqKnz4FJQ5L6ftSi", "localExt": {"ZamHEOv6xJjWyDOs": {}, "nyxqPrsgVlxos76N": {}, "oRMBqBanzeVIr8LJ": {}}, "longDescription": "wkjHmmCesoVh2sJ7", "title": "6TAxKsqTEMTakmlR"}}, "name": "QtOZUUTdihXLcbgS", "rotationType": "CUSTOM", "startDate": "1973-05-18T00:00:00Z", "viewId": "ykuIlaHV4Wfp1dr3"}' \
    > test.out 2>&1
eval_tap $? 173 'UpdateSection' test.out

#- 174 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VCbJ4QpT2DjJpc3A' \
    --storeId 'sxjE494UquXiLB0T' \
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
    --body '{"defaultLanguage": "skzcOyxIouQcZtRZ", "defaultRegion": "Y1RkVKU7do4W6opm", "description": "aQPsXaqSJcRGGymh", "supportedLanguages": ["Rmk1BN9nGt9o2hd7", "1PGdVmEL0Kp59XoD", "teG7Twxnk3jiKfvX"], "supportedRegions": ["v2dwV0AO4WA3Sbhe", "tUZzSVOW1IEK2Rtt", "AMummqVHIWkpd46C"], "title": "v791pliCge5iSbqa"}' \
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
    --storeId 'AKQiABNSBuZTxFL3' \
    > test.out 2>&1
eval_tap $? 182 'GetStore' test.out

#- 183 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '7DTTzqZiMHSQLLeQ' \
    --body '{"defaultLanguage": "twKiHG99uBQTrddO", "defaultRegion": "kguLPP36J8rlVi0G", "description": "DuBMX9aqV74x9WFt", "supportedLanguages": ["nNNJIofXvjcletBr", "XC1Q5DZo7khVtCYP", "5Y9l1W6vFERu3gCC"], "supportedRegions": ["MA722dpJ8omRsg26", "YfPuXgr6CPZ624rg", "rLpvz9n0nL2o5K5j"], "title": "OI4yvrGRy4zXRdw5"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateStore' test.out

#- 184 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'zYMRay2MIpG1I6v3' \
    > test.out 2>&1
eval_tap $? 184 'DeleteStore' test.out

#- 185 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'NswOoJOhQDMXzhiH' \
    --action 'CREATE' \
    --itemSku 'TDGYbWfZM9VkjzLx' \
    --itemType 'EXTENSION' \
    --limit '40' \
    --offset '75' \
    --selected 'true' \
    --sortBy '["updatedAt", "updatedAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'maZnZmzKOe1zHRcv' \
    --updatedAtStart 'mCvchisc44WPUE8p' \
    > test.out 2>&1
eval_tap $? 185 'QueryChanges' test.out

#- 186 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'O0nQlpoF1ge1GViy' \
    > test.out 2>&1
eval_tap $? 186 'PublishAll' test.out

#- 187 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '11xV9qKOOtuqZIQ4' \
    > test.out 2>&1
eval_tap $? 187 'PublishSelected' test.out

#- 188 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'paEw7T7m2cdfWKzN' \
    > test.out 2>&1
eval_tap $? 188 'SelectAllRecords' test.out

#- 189 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'LUoo4VnHveUElNUD' \
    --action 'UPDATE' \
    --itemSku 'bShpjPrVbOrUbCRH' \
    --itemType 'OPTIONBOX' \
    --type 'SECTION' \
    --updatedAtEnd 'kk45MWFn3D3jiSR2' \
    --updatedAtStart '50BKoBnYNWQN77vz' \
    > test.out 2>&1
eval_tap $? 189 'GetStatistic' test.out

#- 190 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'Qy1vao0mJdiUd8Xk' \
    > test.out 2>&1
eval_tap $? 190 'UnselectAllRecords' test.out

#- 191 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'BAYTnKmVnFN0HDbY' \
    --namespace $AB_NAMESPACE \
    --storeId 'xnQmM8WSoPW8eDJd' \
    > test.out 2>&1
eval_tap $? 191 'SelectRecord' test.out

#- 192 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'S7DIxTx3XlAlBs3p' \
    --namespace $AB_NAMESPACE \
    --storeId '2juW662aVtxb7cQV' \
    > test.out 2>&1
eval_tap $? 192 'UnselectRecord' test.out

#- 193 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cjLMMiOaMOha8FOQ' \
    --targetStoreId 'erxGYWi8kzTmLfi4' \
    > test.out 2>&1
eval_tap $? 193 'CloneStore' test.out

#- 194 ExportStore
eval_tap 0 194 'ExportStore # SKIP deprecated' test.out

#- 195 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'IdezYwvyiLxsEvRL' \
    --limit '99' \
    --offset '67' \
    --sku 'Cd1rcX8SJv0WGMBm' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'nFMfY5mEq8tr9AR3' \
    > test.out 2>&1
eval_tap $? 195 'QuerySubscriptions' test.out

#- 196 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1VTYaipdEmIOoGlL' \
    > test.out 2>&1
eval_tap $? 196 'RecurringChargeSubscription' test.out

#- 197 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '8bA3wTRfgpQWzYPv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'GetTicketDynamic' test.out

#- 198 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'fdZaafJ6cLNFkikU' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "BKaVRNhUepdq3fhD"}' \
    > test.out 2>&1
eval_tap $? 198 'DecreaseTicketSale' test.out

#- 199 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'NlSPmzn30F3bvkQu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 199 'GetTicketBoothID' test.out

#- 200 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '5Wt6bkiyjEsxwW7a' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 8, "orderNo": "EN4oK6FBAvmh9o55"}' \
    > test.out 2>&1
eval_tap $? 200 'IncreaseTicketSale' test.out

#- 201 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'BxRJECMm5XrqgXW0' \
    --body '{"achievements": [{"id": "5LVBzEv7lVUgVudq", "value": 62}, {"id": "TT0NDrF8j95QNSPn", "value": 44}, {"id": "u3vx0QqqLP862y4M", "value": 58}], "steamUserId": "cmjjPnLOFprBe2Vb"}' \
    > test.out 2>&1
eval_tap $? 201 'UnlockSteamUserAchievement' test.out

#- 202 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '9zfiu8nOIRvJDoZk' \
    --xboxUserId 'T7a0UqrWRtXyjcLW' \
    > test.out 2>&1
eval_tap $? 202 'GetXblUserAchievements' test.out

#- 203 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'sFFfgStlTSf4LtsD' \
    --body '{"achievements": [{"id": "dc3kEuMUbGZsgEPC", "percentComplete": 23}, {"id": "R3deP0Om2VwpScVX", "percentComplete": 43}, {"id": "Cd4sFcF8fokE2vzg", "percentComplete": 8}], "serviceConfigId": "5ZHnaYTBcjiYmQL0", "titleId": "81bjrSNrDagDkQSD", "xboxUserId": "TZuRsHB01k7DzY1S"}' \
    > test.out 2>&1
eval_tap $? 203 'UpdateXblUserAchievement' test.out

#- 204 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'xm5ohIvNC8JDSFjk' \
    > test.out 2>&1
eval_tap $? 204 'AnonymizeCampaign' test.out

#- 205 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hbh0L84WCiagqGSO' \
    > test.out 2>&1
eval_tap $? 205 'AnonymizeEntitlement' test.out

#- 206 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'w2kpuKgDoHD97k4p' \
    > test.out 2>&1
eval_tap $? 206 'AnonymizeFulfillment' test.out

#- 207 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'x2O5xwRnrnM9aUnF' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeIntegration' test.out

#- 208 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kUwhUdJSpvagXvXS' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeOrder' test.out

#- 209 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '97nt7gdbbedz2Mi4' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizePayment' test.out

#- 210 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'GpJPfS1IyTISiw9u' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeRevocation' test.out

#- 211 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2EQNP9XBE2X4R42i' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeSubscription' test.out

#- 212 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'QYHjnJpK4frBoMvq' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeWallet' test.out

#- 213 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '2udOqDXQv0skPrhz' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 213 'GetUserDLCByPlatform' test.out

#- 214 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'iwyvAzSGzSsBswpE' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 214 'GetUserDLC' test.out

#- 215 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SB07TggX5QJe3Ywj' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'SiqQd2TYCgnuDbaZ' \
    --features '["lt6QKwL4fn6E4YTH", "VPaPNKfAoj7AmbHz", "yeKyyGeEn5MNr2GH"]' \
    --itemId '["kgjHTDBKAbMZkQ6U", "qgM2dyet4RkPBC0i", "hVa0flblZQJXmNr8"]' \
    --limit '4' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 215 'QueryUserEntitlements' test.out

#- 216 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JV1116JFgTG4LFNK' \
    --body '[{"endDate": "1984-08-16T00:00:00Z", "grantedCode": "BbQ7XA5mh6zAi5zZ", "itemId": "yo0USYRTovqPAdft", "itemNamespace": "LmEfxvtJssuSw3vI", "language": "xI_wZFR", "quantity": 39, "region": "jyqztbVMciytNBdG", "source": "GIFT", "startDate": "1975-01-30T00:00:00Z", "storeId": "x4hbgh6MOvkspmTj"}, {"endDate": "1991-06-19T00:00:00Z", "grantedCode": "EueYlyqHwEhvBB7B", "itemId": "L9CY1EP2NYTEyNwG", "itemNamespace": "Us83anSnclCMoWBA", "language": "pY_QNrD", "quantity": 91, "region": "jkxEf3l0BU8AIkgx", "source": "REFERRAL_BONUS", "startDate": "1998-12-16T00:00:00Z", "storeId": "OMlWRTO7xNrILJgX"}, {"endDate": "1991-05-04T00:00:00Z", "grantedCode": "E8CGA6y3bUluhbFj", "itemId": "wHVn6EuB3SMdkGl2", "itemNamespace": "e7pkULkWJ4QmMDls", "language": "WW_aMTP_aD", "quantity": 13, "region": "0WswwomYMpqA8sge", "source": "REWARD", "startDate": "1995-01-16T00:00:00Z", "storeId": "PSmN53Q9rAsJyH4W"}]' \
    > test.out 2>&1
eval_tap $? 216 'GrantUserEntitlement' test.out

#- 217 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'v1bfZiJWpAgdyNYq' \
    --activeOnly 'true' \
    --appId '9zsEMejTnqcYhL7j' \
    > test.out 2>&1
eval_tap $? 217 'GetUserAppEntitlementByAppId' test.out

#- 218 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'Sog4SKl6phouTbff' \
    --activeOnly 'true' \
    --limit '47' \
    --offset '50' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlementsByAppType' test.out

#- 219 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'XTqIGSghtf4rSFJB' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'xOhpCGkamyhp87OF' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementByItemId' test.out

#- 220 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'd2jGbxDreLbnZVTY' \
    --ids '["fZ6nnlIV3za3gt7d", "ouK2yPx4WrQV8zkh", "CvrW4NTPQkJSD30w"]' \
    > test.out 2>&1
eval_tap $? 220 'GetUserActiveEntitlementsByItemIds' test.out

#- 221 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'meOJubsCEgbbVrlm' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --sku 'r5C8SZpTNwsFEIG9' \
    > test.out 2>&1
eval_tap $? 221 'GetUserEntitlementBySku' test.out

#- 222 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'boNvadZYLVX1yrnD' \
    --appIds '["zMl7jsn5Ki7eAmD7", "o3TgwaX89lkURs8D", "cyahWlWt9ivW4XG0"]' \
    --itemIds '["1hhCpbMyaDasnUrz", "rauScAtIHtnr0UaS", "FyYvcYMJcgzRPGy5"]' \
    --skus '["JohkP19gJuiGAveg", "RTJwm6lLT9nXfl2X", "iBAZUEVrFfbO7rrr"]' \
    > test.out 2>&1
eval_tap $? 222 'ExistsAnyUserActiveEntitlement' test.out

#- 223 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'JjJJe4h9t8v3Lz3B' \
    --itemIds '["FTgzV8Misv4mdjzh", "j2A5AfvM9dSRD0T6", "GCghLi9JuuHhiE1B"]' \
    > test.out 2>&1
eval_tap $? 223 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 224 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '8bjXrDw2rsUw27ZE' \
    --appId 'ZeeyVoS47DDS7h44' \
    > test.out 2>&1
eval_tap $? 224 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 225 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TT1kaCHmiohONia3' \
    --entitlementClazz 'APP' \
    --itemId 'rxNUHJcRQHOwm9jp' \
    > test.out 2>&1
eval_tap $? 225 'GetUserEntitlementOwnershipByItemId' test.out

#- 226 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'AbbSyUM9owIoX2bJ' \
    --ids '["Jq0w4bpIlGeiiCCL", "Rrt5KVIQFd6HueaU", "ZEhrXcXKrs1sWDfD"]' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementOwnershipByItemIds' test.out

#- 227 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'vzpKjODIAdysT3JG' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'xtureiWVIpRjqwpJ' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementOwnershipBySku' test.out

#- 228 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ObfD8HRZbZXZsF85' \
    > test.out 2>&1
eval_tap $? 228 'RevokeAllEntitlements' test.out

#- 229 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'yhxvvBdySyruE21q' \
    --entitlementIds '56OOB32IYPZ4iAe8' \
    > test.out 2>&1
eval_tap $? 229 'RevokeUserEntitlements' test.out

#- 230 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '25UfjU2ifqHq2Tyg' \
    --namespace $AB_NAMESPACE \
    --userId 'dwoJjQYHLfdI4r81' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlement' test.out

#- 231 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '4bjY8z4VTlf2NU6s' \
    --namespace $AB_NAMESPACE \
    --userId 'bpjq7pZB839If3zo' \
    --body '{"endDate": "1988-04-15T00:00:00Z", "nullFieldList": ["bE8hbnCF6onF8aCy", "mRBLJKYlhPmQgSwa", "h4EK7U0GzfdZmYBv"], "startDate": "1999-05-04T00:00:00Z", "status": "INACTIVE", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserEntitlement' test.out

#- 232 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '9iBI2pp8qMeXL9DM' \
    --namespace $AB_NAMESPACE \
    --userId 'XxEYSutBN7eSFodm' \
    --body '{"options": ["28It2kObuICkv0IF", "vtxcDxLluhuAoCLT", "6JREQrKmaKHI3BTE"], "requestId": "bQ1GfXjr4SzhVSNv", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 232 'ConsumeUserEntitlement' test.out

#- 233 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'K9ueACXYCVNSS91O' \
    --namespace $AB_NAMESPACE \
    --userId 'sCgYsIAgp44wMRWq' \
    > test.out 2>&1
eval_tap $? 233 'DisableUserEntitlement' test.out

#- 234 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'Nm8pafpbhwaLTk3E' \
    --namespace $AB_NAMESPACE \
    --userId 'lcuZIV4DeuywWcVq' \
    > test.out 2>&1
eval_tap $? 234 'EnableUserEntitlement' test.out

#- 235 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'tqHbGXiZ9JcVHzIg' \
    --namespace $AB_NAMESPACE \
    --userId 'c61rAOoqfhc4ty4P' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementHistories' test.out

#- 236 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'L7M3g8TqPnahWapT' \
    --namespace $AB_NAMESPACE \
    --userId '9LgGM4ZVXD25x51o' \
    > test.out 2>&1
eval_tap $? 236 'RevokeUserEntitlement' test.out

#- 237 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'rODivmw78ds0DvkF' \
    --namespace $AB_NAMESPACE \
    --userId 'NP2zbERNR1zGewpa' \
    --body '{"reason": "zBPp2a0hbiPHzPoA", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUseCount' test.out

#- 238 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'waH2eEdobm5Sokdm' \
    --namespace $AB_NAMESPACE \
    --userId 'WiGAwhqkd4zsJJdP' \
    --body '{"requestId": "oOZBdxTZuPGlLpvy", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 238 'SellUserEntitlement' test.out

#- 239 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'mLWcF2kLwK9NnFEe' \
    --body '{"duration": 32, "endDate": "1981-11-21T00:00:00Z", "itemId": "ZDBL3iYo4ILqB2sO", "itemSku": "jjFxmbriusk6gGRm", "language": "QhzCgf4dfOj4ee4h", "order": {"currency": {"currencyCode": "IN9tNsLGZEj6COzC", "currencySymbol": "0D6DCJCftfedpyJe", "currencyType": "VIRTUAL", "decimals": 22, "namespace": "pEO3xoT16n0p8ebV"}, "ext": {"mrQXFi5PUa7wagds": {}, "s20ZmefW4tlGUt53": {}, "Y96EyhjKgQsYgI9Z": {}}, "free": true}, "orderNo": "tpQYGpHHHSNhMC4o", "origin": "Nintendo", "quantity": 45, "region": "uBb1gtY2Fs0SUF13", "source": "GIFT", "startDate": "1987-08-09T00:00:00Z", "storeId": "2sNBOelgwbTFB9qP"}' \
    > test.out 2>&1
eval_tap $? 239 'FulfillItem' test.out

#- 240 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '3PGME2BDQ237aMBB' \
    --body '{"code": "RD4LyAUwUgYxeovM", "language": "Bd-Rj", "region": "lMelLEFdIJna4ifS"}' \
    > test.out 2>&1
eval_tap $? 240 'RedeemCode' test.out

#- 241 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '3gwsHOdUO4yF1WVq' \
    --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "DH8P4YS9HR5QdOl4", "namespace": "qaPu91pQrhM5HDdT"}, "item": {"itemId": "R55ZNv0zgsDlZKT4", "itemSku": "gdQXGk9DEfFGBJ2q", "itemType": "HGdEySInWkYCtBUx"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "1n6j0Y04tb7P0Aiq", "namespace": "eD2SmTAOmcjjFNid"}, "item": {"itemId": "aBWYDXMccz1AK83T", "itemSku": "Q8N0OyqbcjLr1UTI", "itemType": "7UKhEY4GBjbyIOE9"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "XZTVM3HLX7D0jrQ0", "namespace": "QztSPa7bawCy3UKG"}, "item": {"itemId": "vmQSPK0OSrA6O0v5", "itemSku": "0e0t4ZtllXqwTZf3", "itemType": "jyBXXwu0U6y6ClD2"}, "quantity": 57, "type": "CURRENCY"}], "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 241 'FulfillRewards' test.out

#- 242 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 't93m8xzo7ELb1p5v' \
    --endTime 'I5eSMhF4Zv8mx3lK' \
    --limit '73' \
    --offset '81' \
    --productId 'XnLrb7HlOkKIv7dJ' \
    --startTime '9p5Db12wTfngP0DR' \
    --status 'FAILED' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 242 'QueryUserIAPOrders' test.out

#- 243 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'UEZy9bRTEXhvhJI8' \
    > test.out 2>&1
eval_tap $? 243 'QueryAllUserIAPOrders' test.out

#- 244 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'YpCV522CcPZN6iuw' \
    --endTime 'JbSIzN0NoODTb0rX' \
    --limit '82' \
    --offset '17' \
    --startTime 'NoR6lu5BBVeRkifm' \
    --status 'FAIL' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 244 'QueryUserIAPConsumeHistory' test.out

#- 245 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'ywVIdfYRkaPNkui4' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "wp_Blfg_427", "productId": "raRdS89wReoXTUTa", "region": "Yrxlb9VDCv1LyFR9", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 245 'MockFulfillIAPItem' test.out

#- 246 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'p6nWdUQ4TvgA92Q3' \
    --itemId 's7wx9XVhKIAAOn77' \
    --limit '65' \
    --offset '71' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserOrders' test.out

#- 247 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'SkDywt2xkIBRyOdh' \
    --body '{"currencyCode": "QjGGa87ZRs9PQunp", "currencyNamespace": "uKhBH8FHz6p7Ieec", "discountedPrice": 40, "ext": {"LflcBJbSiffxp412": {}, "9HuokhzBC4NnLkFM": {}, "WGKsEhgu02TtvDFy": {}}, "itemId": "OFeirxeOX7kxHd10", "language": "AtXlki7L5eQYuOpH", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 87, "quantity": 100, "region": "BPf00NQVnwWwP6Ks", "returnUrl": "MjvbpU6IPuHlLISP", "sandbox": true, "sectionId": "bZwCubWozI4iEkpE"}' \
    > test.out 2>&1
eval_tap $? 247 'AdminCreateUserOrder' test.out

#- 248 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'cQtdysWhC074OxJh' \
    --itemId 'Qnj1fE0XUXxPXE6L' \
    > test.out 2>&1
eval_tap $? 248 'CountOfPurchasedItem' test.out

#- 249 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0PtmtVaord8vSyi1' \
    --userId 'b9QTsy23jhj7N2cR' \
    > test.out 2>&1
eval_tap $? 249 'GetUserOrder' test.out

#- 250 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '8FahfaxXy4n0rcYE' \
    --userId 'YR5HsJV6KljQYtRi' \
    --body '{"status": "INIT", "statusReason": "i8Xs8S4rmcV7hNa7"}' \
    > test.out 2>&1
eval_tap $? 250 'UpdateUserOrderStatus' test.out

#- 251 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1TdUCoCzS4Qc0jP3' \
    --userId 'I5QYhwRdUXig7g53' \
    > test.out 2>&1
eval_tap $? 251 'FulfillUserOrder' test.out

#- 252 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'OvVZpidQNS9dD4Yo' \
    --userId 'bdSgimtk8KqgBFZr' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrderGrant' test.out

#- 253 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '1qBgJ0xnSRULcdfN' \
    --userId 'g1tcdusHHQ0QpWgW' \
    > test.out 2>&1
eval_tap $? 253 'GetUserOrderHistories' test.out

#- 254 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '0aTxHmnHMqNmH6OU' \
    --userId 'a0tZ74Tv1LTeQtiT' \
    --body '{"additionalData": {"cardSummary": "dFARTDQBAAfi5ckE"}, "authorisedTime": "1980-06-27T00:00:00Z", "chargebackReversedTime": "1983-01-13T00:00:00Z", "chargebackTime": "1974-06-03T00:00:00Z", "chargedTime": "1974-03-03T00:00:00Z", "createdTime": "1986-02-22T00:00:00Z", "currency": {"currencyCode": "kdHLmo8XwyPywbPR", "currencySymbol": "L26DIy7SdB087s7U", "currencyType": "REAL", "decimals": 8, "namespace": "8cembSBmuDWzxKCM"}, "customParameters": {"uwHO7PLmFGpFNikG": {}, "XracUJUUQq4t4wzV": {}, "sK9SBXAiRZppYiLj": {}}, "extOrderNo": "fG0Mq65PQu24feh2", "extTxId": "0U451Vhpi9V6sjuV", "extUserId": "OQ9BPTaqEp0hYfB5", "issuedAt": "1995-02-12T00:00:00Z", "metadata": {"xnrS174THIo5CN1W": "cH9icTD2hOqtncOU", "CHBJzML5f8kBY2SR": "o9tAuTuFDpSE0sky", "TUiL5ij7V5ncUIT1": "WeEfboRy3hhqLlcP"}, "namespace": "zQhGDIp6uhqBxIRd", "nonceStr": "4yEFF5P3UTqNtvPi", "paymentMethod": "CuCjQfRrXOVNDtkA", "paymentMethodFee": 85, "paymentOrderNo": "HLLN85KkPh86Lwg4", "paymentProvider": "XSOLLA", "paymentProviderFee": 15, "paymentStationUrl": "LxlskA1UntPYiryj", "price": 82, "refundedTime": "1980-05-14T00:00:00Z", "salesTax": 57, "sandbox": true, "sku": "SyFxdYkIE4nO7iMI", "status": "REQUEST_FOR_INFORMATION", "statusReason": "gTwm4vMotpCzliUT", "subscriptionId": "ShIeU5KwZtFNXnis", "subtotalPrice": 27, "targetNamespace": "lhVI9MaQL3j6Z75S", "targetUserId": "f2g7yGPtiNXVN4GD", "tax": 47, "totalPrice": 28, "totalTax": 61, "txEndTime": "1989-03-17T00:00:00Z", "type": "PHjY6Us3dhuOJkLx", "userId": "WugHYMJEEuKPAahY", "vat": 69}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserOrderNotification' test.out

#- 255 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '4YufT1r6Zyc0732v' \
    --userId 'Ty0x3aZt0ydlpOZ9' \
    > test.out 2>&1
eval_tap $? 255 'DownloadUserOrderReceipt' test.out

#- 256 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Tp8G1el1lRghxdu9' \
    --body '{"currencyCode": "evWLfUOv5mbEmrvy", "currencyNamespace": "DApLmnOe2uyseajV", "customParameters": {"SwrV8kaSATmE248B": {}, "S0XiKNqk1EoLo3Jl": {}, "IXFQIx9YyutNm78S": {}}, "description": "YMfqRCBQYtIzbi0W", "extOrderNo": "eQO8NUoBmdgJ35JQ", "extUserId": "CRXXmJrqlmmbOpQr", "itemType": "SUBSCRIPTION", "language": "Lc_hr", "metadata": {"Avbre01BDrTWmZeY": "LwPTDH4ONI3dwndb", "9dVu9VRHMZKpCTfy": "lqIdyJdtgsyNYW6r", "PIvlSNiQKs0hvcZ1": "PbRk8jRrpf1mzLrG"}, "notifyUrl": "ONY47djLN2bjGV7P", "omitNotification": false, "platform": "UUt5ausuf4ihUDRh", "price": 48, "recurringPaymentOrderNo": "xcNLomWHxq4BB5qk", "region": "UBKsNNxFNYoPLHnj", "returnUrl": "O0TNBVIsMxnzurXz", "sandbox": true, "sku": "K0472vJsl9tFKrId", "subscriptionId": "hroPawih0QsaIIb8", "title": "qz0wL0w3PEC5Vv71"}' \
    > test.out 2>&1
eval_tap $? 256 'CreateUserPaymentOrder' test.out

#- 257 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'V5q6rrBX8Nm18Sqd' \
    --userId 'V4Aae2SUIWG51i5W' \
    --body '{"description": "V4wjgmDoC2LeDdig"}' \
    > test.out 2>&1
eval_tap $? 257 'RefundUserPaymentOrder' test.out

#- 258 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '8x2c32Bgy7TosiHa' \
    --body '{"code": "P6CSBEuvtYH9L5DV", "orderNo": "jMQXrpT59KaINpKk"}' \
    > test.out 2>&1
eval_tap $? 258 'ApplyUserRedemption' test.out

#- 259 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'I2TP4bIsG8IQw5WQ' \
    --body '{"meta": {"2XQJjQCjZJI0vdyJ": {}, "QbuNOiUSndxKKb1I": {}, "HY3Y74qAOE2di3X6": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "944JgkMPAIFORfU0", "namespace": "DEL9ejutAFQesgyh"}, "entitlement": {"entitlementId": "Svlf4YeU2v9Xhbb6"}, "item": {"itemIdentity": "C8BglSWMCXOfCkWH", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 33, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "xB3iCSTAR502Rfll", "namespace": "eSnUg5kxOyOnYCw8"}, "entitlement": {"entitlementId": "sRzIBJo7GTi7yeDJ"}, "item": {"itemIdentity": "koB45AQVhBxsPgsV", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 74, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "xpQ6zh3VfhtRD6xY", "namespace": "QdjlzRQfhTF1gfD9"}, "entitlement": {"entitlementId": "GvZFPTEg4fa5bCAQ"}, "item": {"itemIdentity": "GTYmho19ccFTS89B", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 24, "type": "ITEM"}], "source": "ORDER", "transactionId": "pJqkIqpZCpXzmbKQ"}' \
    > test.out 2>&1
eval_tap $? 259 'DoRevocation' test.out

#- 260 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'BxAgK21AqXmpEdAm' \
    --body '{"gameSessionId": "DSrV1mBZY8BonLaf", "payload": {"ZBUIPK0bqqbFiIOA": {}, "cRU9TiCWXmyWm0oJ": {}, "gbM1VoxmRjPcB7Di": {}}, "scid": "zYdc1dH5RpJtcoFb", "sessionTemplateName": "duZz2gs2YEWo0npn"}' \
    > test.out 2>&1
eval_tap $? 260 'RegisterXblSessions' test.out

#- 261 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'HYhSaILwTvaBMFsl' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'ABd3cd9XyhKA2LU2' \
    --limit '28' \
    --offset '98' \
    --sku '148EewMuwXFZHJKH' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 261 'QueryUserSubscriptions' test.out

#- 262 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'oVG4QPiqRn5xG15C' \
    --excludeSystem 'true' \
    --limit '35' \
    --offset '0' \
    --subscriptionId '7GrYvlpOwxaqDyhx' \
    > test.out 2>&1
eval_tap $? 262 'GetUserSubscriptionActivities' test.out

#- 263 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '8jBvWXIBkOkSziDp' \
    --body '{"grantDays": 66, "itemId": "DaKMArtN65o9xgmC", "language": "BtKdSFL0cyvFFFX7", "reason": "moxhsLHJgRhT14q0", "region": "oTUB8qvcecRiStkh", "source": "ZUGeALvSlNuih6dL"}' \
    > test.out 2>&1
eval_tap $? 263 'PlatformSubscribeSubscription' test.out

#- 264 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QZ5N0OKj1fLLXjsR' \
    --itemId '82vBbmfze8QId4Qj' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 265 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'thLj1Ng4PMKv4gz9' \
    --userId '2Vvzouf5qUlnnRCd' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscription' test.out

#- 266 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'j8aOjk4fuHUXLYAh' \
    --userId 'shrDrl6Z4DG6rHvj' \
    > test.out 2>&1
eval_tap $? 266 'DeleteUserSubscription' test.out

#- 267 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Idyx8RVGE8OOJEby' \
    --userId '4XMr6XSz8nGLIFa5' \
    --force 'false' \
    --body '{"immediate": false, "reason": "fvdozAA1tzFNWJkq"}' \
    > test.out 2>&1
eval_tap $? 267 'CancelSubscription' test.out

#- 268 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Qh29lsqkYKASWXoO' \
    --userId 'nGjxLJ827JmzEyyG' \
    --body '{"grantDays": 23, "reason": "qhK9ywMI7HVV4GoY"}' \
    > test.out 2>&1
eval_tap $? 268 'GrantDaysToSubscription' test.out

#- 269 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'i98tNbs9rpOokBN5' \
    --userId '01TeCiuJSuFkfV9c' \
    --excludeFree 'true' \
    --limit '42' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 269 'GetUserSubscriptionBillingHistories' test.out

#- 270 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GZHo75fYNKA94Eeb' \
    --userId '1OSI6M7kD48hFxuq' \
    --body '{"additionalData": {"cardSummary": "8VTjvArY9OnXden9"}, "authorisedTime": "1980-02-09T00:00:00Z", "chargebackReversedTime": "1994-07-05T00:00:00Z", "chargebackTime": "1975-11-18T00:00:00Z", "chargedTime": "1999-08-20T00:00:00Z", "createdTime": "1995-06-24T00:00:00Z", "currency": {"currencyCode": "Ne3K3qwmoNKPqi49", "currencySymbol": "8oB3n91LSFWAEBbY", "currencyType": "VIRTUAL", "decimals": 12, "namespace": "Z3A649CHRhiFCZkP"}, "customParameters": {"taycZOwddGmGE2as": {}, "ZlLhCYT0b6gdis8d": {}, "5QK6PPlxPwYtwuYY": {}}, "extOrderNo": "uiBT1R2d2W39Dh6O", "extTxId": "4C5TpHiUOdZDjbVt", "extUserId": "RUjqsi1yGIjAxjpS", "issuedAt": "1977-02-09T00:00:00Z", "metadata": {"vJ6h6wd0kIgaIQXO": "XjC3PVbEvjtNU4hu", "O5f2rEH61twYhfLT": "pxAtiNatlYK7HbUl", "nTtiabnjSNzafJxY": "kKrquxFCXzbSQcmK"}, "namespace": "1hRtA3CkBO0Y4Ehk", "nonceStr": "hqwMNdpYphdSp82L", "paymentMethod": "q5vzw7LH1Q5nZ6El", "paymentMethodFee": 51, "paymentOrderNo": "PcJwG4IvjXfAj0ia", "paymentProvider": "WALLET", "paymentProviderFee": 32, "paymentStationUrl": "ZA86UuaYJyNOA1r9", "price": 47, "refundedTime": "1993-10-15T00:00:00Z", "salesTax": 29, "sandbox": true, "sku": "3GdkNdlnGLnVglAb", "status": "INIT", "statusReason": "0eVL4yCzwiENel01", "subscriptionId": "d9B2kM11e8m3erGA", "subtotalPrice": 40, "targetNamespace": "Ae6PQ9d3zToAYvxQ", "targetUserId": "qbwGSBR4ziEijqSw", "tax": 83, "totalPrice": 13, "totalTax": 40, "txEndTime": "1988-03-23T00:00:00Z", "type": "J9xTcsgGWmU5cAyN", "userId": "080zcBr8B26w7GmV", "vat": 74}' \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserSubscriptionNotification' test.out

#- 271 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Kxt9e6gIN2stnd1V' \
    --namespace $AB_NAMESPACE \
    --userId 'zoXVrxos772hfget' \
    --body '{"count": 86, "orderNo": "zfZMdFvBbdWDs8pJ"}' \
    > test.out 2>&1
eval_tap $? 271 'AcquireUserTicket' test.out

#- 272 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'DHXYWOZmSvLLKsdT' \
    > test.out 2>&1
eval_tap $? 272 'QueryUserCurrencyWallets' test.out

#- 273 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'MIC0n884Vmd8fIgm' \
    --namespace $AB_NAMESPACE \
    --userId 'GGG3ASAjC9d0MNAA' \
    --body '{"allowOverdraft": true, "amount": 29, "balanceOrigin": "Epic", "reason": "p3UEeEC4H7BGep6L"}' \
    > test.out 2>&1
eval_tap $? 273 'DebitUserWalletByCurrencyCode' test.out

#- 274 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '9bQkeZaYRGtoONaq' \
    --namespace $AB_NAMESPACE \
    --userId 'A1VpmlwDT4DjrVJj' \
    --limit '42' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 274 'ListUserCurrencyTransactions' test.out

#- 275 CheckWallet
eval_tap 0 275 'CheckWallet # SKIP deprecated' test.out

#- 276 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'mSomAaQ1s1XkaVvg' \
    --namespace $AB_NAMESPACE \
    --userId 'tDUXyM2W07TNFm7u' \
    --body '{"amount": 95, "expireAt": "1997-08-07T00:00:00Z", "origin": "Epic", "reason": "XMkxxTyz7nBZ0NRk", "source": "REFUND"}' \
    > test.out 2>&1
eval_tap $? 276 'CreditUserWallet' test.out

#- 277 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'nawjqU3mqHSdMZrf' \
    --namespace $AB_NAMESPACE \
    --userId 'cOLCXHkzXlzBl5yL' \
    --body '{"amount": 70, "walletPlatform": "Playstation"}' \
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
    --storeId 'JvHgiTgh4OnmCWL0' \
    > test.out 2>&1
eval_tap $? 283 'ListViews' test.out

#- 284 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'girPrjXO4YSXtEMC' \
    --body '{"displayOrder": 94, "localizations": {"1UlcYgWe5yFdtMMS": {"description": "QRp1W6phXNabjUsU", "localExt": {"jLFhZNoitLUB7Ud4": {}, "SOW5QuMk2PnzRBm0": {}, "F0u5RHUKD2HJ30YA": {}}, "longDescription": "JeGNrpiLblFxt8TF", "title": "ZXj16Cq9rWDxp6s1"}, "ZCC9V3AEA0Kx4I70": {"description": "nljBeVG1JxnNoMwT", "localExt": {"8vZG0vYqCioXIdvB": {}, "Dh7purCgJ2tN3xbT": {}, "EFFL0yE6Juf48zLe": {}}, "longDescription": "7Pit0ZORMn3xf3iz", "title": "hDoECNqKPW9QpZLy"}, "lSie9YHHIRoI5m6j": {"description": "MuXor0Qgs4SEnZkN", "localExt": {"W4GRLAXrlJ3gTubX": {}, "0FFJpAx5GPqeVqES": {}, "gUZMNp6vNDsFHhQR": {}}, "longDescription": "Z0WnzBSrxFuuNv2C", "title": "44fwSYu2b4cMbnsC"}}, "name": "cQ6VWLAZCRLf5mM1"}' \
    > test.out 2>&1
eval_tap $? 284 'CreateView' test.out

#- 285 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'kVisuak28HMGfoiX' \
    --storeId 'iQvPbw4sFHC08kix' \
    > test.out 2>&1
eval_tap $? 285 'GetView' test.out

#- 286 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '7bjCwca9wVa2t8VD' \
    --storeId 'HzEhFHQgvfMriJBM' \
    --body '{"displayOrder": 27, "localizations": {"Ii0XiQ4uqF1qoiY1": {"description": "PGTPmu1gS97Ufa3Y", "localExt": {"pIid6t02oTW4evkw": {}, "OrWzuqqQWXJsvtv9": {}, "lQEg1d8RR8JAjpJa": {}}, "longDescription": "M75Qjmlh7PaRVgsB", "title": "q9LwSs0hZMyygbFm"}, "XGWURCoqgzFv6C1T": {"description": "MPdIJRrdPLu91Kmm", "localExt": {"fX1CMmJIvg6wPyy6": {}, "M2tBJJcjXYRTHlt3": {}, "wXwZAbLBHEji6Qtq": {}}, "longDescription": "0Fmn3dIwDeiTH2Qp", "title": "GUN0J1wwl6MZuxQ6"}, "8QDKb3oHViUS8n4c": {"description": "Bo8vZsBFOC1JAxPN", "localExt": {"eAMaytibKVou3bIT": {}, "C6Cm45isYfiVdwvj": {}, "3bjStMe5a9tc3HFa": {}}, "longDescription": "WoAIDgCPJL2fdwBB", "title": "8iPExGSKCsVjDxwc"}}, "name": "JbVeCdRAMAARlpMF"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateView' test.out

#- 287 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'FEYOi2FbcZS30kxi' \
    --storeId 'IGaryU65cmXe3HWD' \
    > test.out 2>&1
eval_tap $? 287 'DeleteView' test.out

#- 288 QueryWallets
eval_tap 0 288 'QueryWallets # SKIP deprecated' test.out

#- 289 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 31, "expireAt": "1976-07-17T00:00:00Z", "origin": "GooglePlay", "reason": "UO8PX7565d0X0O6Q", "source": "PROMOTION"}, "currencyCode": "lNEsZtXjLcdk3VbP", "userIds": ["jcgBEmxA4CjPjMSp", "wN5k44zPQovzJaDK", "0GtoITh1PBrn3oTN"]}, {"creditRequest": {"amount": 56, "expireAt": "1983-02-13T00:00:00Z", "origin": "Other", "reason": "SyvlRoHB2DmHHtYM", "source": "OTHER"}, "currencyCode": "87EsO6Vo9iqsPwKJ", "userIds": ["JT8fBrtWbUpKhlNx", "c3SKe0CBPDKULdIG", "03HlNIcxlzWwvf8c"]}, {"creditRequest": {"amount": 33, "expireAt": "1981-02-03T00:00:00Z", "origin": "Other", "reason": "Vfk7aDm4WicWBHo4", "source": "REDEEM_CODE"}, "currencyCode": "fOMEk2nmzwvPo4wZ", "userIds": ["6OAqynmF6zrMCTYh", "Eua6NxopDbspl8xv", "YpbLZBD50E8jU0rI"]}]' \
    > test.out 2>&1
eval_tap $? 289 'BulkCredit' test.out

#- 290 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "aYLyMnELwD6CfSDZ", "request": {"allowOverdraft": false, "amount": 82, "balanceOrigin": "Oculus", "reason": "0NLDoUDDT5KrAnYP"}, "userIds": ["ca2dxl893oiPurpz", "iMLnWolRNrwXhIKA", "uMgK3pJu9DMUHT9O"]}, {"currencyCode": "buVqy8K1tPDJSAsE", "request": {"allowOverdraft": true, "amount": 50, "balanceOrigin": "Steam", "reason": "2teRuJ1lMVWymgZT"}, "userIds": ["XhPTPIvG2hIxmJAr", "oQLi7ycsqzeH61ST", "lvaZjrlQhgKM049f"]}, {"currencyCode": "QhqUpsdnJ8yp4z1d", "request": {"allowOverdraft": true, "amount": 85, "balanceOrigin": "System", "reason": "AWekTGsUo0w80qbq"}, "userIds": ["k0W30I8ZjTAyexeL", "Yle8N8tHeaKs52N9", "oMAZd5sYqUwLtL9G"]}]' \
    > test.out 2>&1
eval_tap $? 290 'BulkDebit' test.out

#- 291 GetWallet
eval_tap 0 291 'GetWallet # SKIP deprecated' test.out

#- 292 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'ePItbV5RPlrBdX2m' \
    --end 'nbWbYZdVz7dJ3yeH' \
    --start 'jrg3cfn0Ad9hFciH' \
    > test.out 2>&1
eval_tap $? 292 'SyncOrders' test.out

#- 293 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["WdpmrJ78Loss157S", "skFqkQ2ysZyok18G", "9vIZdC5n5ttuIBlz"], "apiKey": "wdzWlPGIC6jdmCnI", "authoriseAsCapture": false, "blockedPaymentMethods": ["ran6U7XWSgDkqPAL", "jF611ishcfyQwSyc", "q8DZtLaMj5nkRSld"], "clientKey": "PS6H4DRT6yO2YdUY", "dropInSettings": "YV3pSWl0wc3U5b43", "liveEndpointUrlPrefix": "QdEkLISEmdJplS0Z", "merchantAccount": "j7shF4cogcWS5Cs5", "notificationHmacKey": "NcM1o2SpdtmDrWvu", "notificationPassword": "i6UYrmUHu7o4Sdm9", "notificationUsername": "s8pGduexnRoJfWGU", "returnUrl": "iVVlEMjmTuAqMfO4", "settings": "RTqhJsn0r2dgFDhJ"}' \
    > test.out 2>&1
eval_tap $? 293 'TestAdyenConfig' test.out

#- 294 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "giSAJkQJpjydBv9x", "privateKey": "e0GqEN11Hmt55IC4", "publicKey": "ovEU7QXsHiMnCbCG", "returnUrl": "OBhunNfHLBu67yd1"}' \
    > test.out 2>&1
eval_tap $? 294 'TestAliPayConfig' test.out

#- 295 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "SRfPSVINoIDd04ww", "secretKey": "ywIAiq9SeVoJi5JH"}' \
    > test.out 2>&1
eval_tap $? 295 'TestCheckoutConfig' test.out

#- 296 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'jcGGO4Ns59rH6Rfk' \
    --region 'G6o7NJslp3hN12Fo' \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentMerchantConfig' test.out

#- 297 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "7HyTthjVcjKGN6SU", "clientSecret": "QshixDGolwYrJ4t4", "returnUrl": "iZE4lkkLOQQhB7UH", "webHookId": "YP5QsOUXHHq2nKTe"}' \
    > test.out 2>&1
eval_tap $? 297 'TestPayPalConfig' test.out

#- 298 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["tbeyaKfjcuPoOH2b", "ifC2JKZW1c1s22Ys", "aecuKg3ccRIibNcp"], "publishableKey": "8JI7VFRvxmYywjjp", "secretKey": "C4dwDrCauus3VFcU", "webhookSecret": "rMVPmbzinDIfpoRd"}' \
    > test.out 2>&1
eval_tap $? 298 'TestStripeConfig' test.out

#- 299 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "Gl02vYdv8GA0giq8", "key": "dztUIK2CyhcmufK9", "mchid": "SyszqFUw3i2lSKS9", "returnUrl": "Nc2QUIR8BUCP4KeO"}' \
    > test.out 2>&1
eval_tap $? 299 'TestWxPayConfig' test.out

#- 300 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "Bin1FosnvWhsR1zq", "flowCompletionUrl": "91nCku09MUs3W5M3", "merchantId": 55, "projectId": 27, "projectSecretKey": "FHvhFQa4sbPpJSzo"}' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfig' test.out

#- 301 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '53PHGdcyx9Jbeish' \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentMerchantConfig' test.out

#- 302 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'lYQwBikmwcrYG9h9' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["mLd35m5YbMaz7axX", "s48qr4Sp5S9UoJGg", "DggCO4hAtbFcRYyn"], "apiKey": "OJko9m7VZ9ffp1P4", "authoriseAsCapture": false, "blockedPaymentMethods": ["2gYulR0sKX3kdNYN", "j0IVmSnfc4fKT9DG", "E0kQAvdpJJGAVMcZ"], "clientKey": "NdjeQQ1e6K3XBs5s", "dropInSettings": "YPQHmB4HKQlRItR5", "liveEndpointUrlPrefix": "MVTozX2Bm8dxASYI", "merchantAccount": "EYzuMKxcic84mwLt", "notificationHmacKey": "Fl5oFkIYJ6w9d5IA", "notificationPassword": "iLnuOOB27DMDxSa5", "notificationUsername": "Cv1LtNp3jAoAv9uC", "returnUrl": "xnAPxEOyl6koiO38", "settings": "b96e9M8yJmsFPFzp"}' \
    > test.out 2>&1
eval_tap $? 302 'UpdateAdyenConfig' test.out

#- 303 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'XwLLRLXVLHB8v8dj' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 303 'TestAdyenConfigById' test.out

#- 304 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Js0TOBnjKf7w4Vrf' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "25WnO2d5s8oYz2d0", "privateKey": "BOdejb1bQNnIlW9t", "publicKey": "YnD2gP5RMOBbYG3Y", "returnUrl": "qdRkxFUnbhq9Ba57"}' \
    > test.out 2>&1
eval_tap $? 304 'UpdateAliPayConfig' test.out

#- 305 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'JXVa7EM8zGyfJ9eH' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 305 'TestAliPayConfigById' test.out

#- 306 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'hgLKgsyuUKP3x2B3' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "H0uAhnxyJz7sJKUT", "secretKey": "VLuSEPpNvm6UOXRx"}' \
    > test.out 2>&1
eval_tap $? 306 'UpdateCheckoutConfig' test.out

#- 307 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'VqJELVmRo9ONYYeg' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 307 'TestCheckoutConfigById' test.out

#- 308 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'gXUtSj7ZvAVHAyMH' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "rcKuFCK8SyOKmsg9", "clientSecret": "Mdo3PFl7m43bFRBY", "returnUrl": "LLLIPaSqdcwAeE14", "webHookId": "DlYMrSWddcTT6wQ0"}' \
    > test.out 2>&1
eval_tap $? 308 'UpdatePayPalConfig' test.out

#- 309 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'wpI14FyN1I3VvLbb' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 309 'TestPayPalConfigById' test.out

#- 310 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'KrowvlBAX5jTer1X' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["GaoDjm538CcKQYrr", "YOHmsBiystMOfY9m", "sOtpWLDfneuOmucF"], "publishableKey": "GTlUXCDJC9GFGHQM", "secretKey": "GQm1Fex9nSoUb07I", "webhookSecret": "ZWhUn6wnHiG70A9u"}' \
    > test.out 2>&1
eval_tap $? 310 'UpdateStripeConfig' test.out

#- 311 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'yZxHFCGmNtMlyMsB' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 311 'TestStripeConfigById' test.out

#- 312 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '7sdeM9YIavYxaybJ' \
    --validate 'false' \
    --body '{"appId": "k2ZRslYaPDMQPuEQ", "key": "CId0kHVQyvAAwQbY", "mchid": "vEeDs0wATEi8m2Ah", "returnUrl": "jvzYcieyKu9veOhb"}' \
    > test.out 2>&1
eval_tap $? 312 'UpdateWxPayConfig' test.out

#- 313 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'n5nfnRFxnoYDiv6j' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 313 'UpdateWxPayConfigCert' test.out

#- 314 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '7BH0xcdLJB4eTts3' \
    > test.out 2>&1
eval_tap $? 314 'TestWxPayConfigById' test.out

#- 315 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'pCjirpBS9rnHmhT8' \
    --validate 'true' \
    --body '{"apiKey": "84rtXOUDVCI3kYVt", "flowCompletionUrl": "GpHYTeJpmCwBbbJt", "merchantId": 45, "projectId": 3, "projectSecretKey": "oaCENx2asSLvFWIn"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateXsollaConfig' test.out

#- 316 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '2Rua2QavmKqFR4EJ' \
    > test.out 2>&1
eval_tap $? 316 'TestXsollaConfigById' test.out

#- 317 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'BK3wVxmYtXRNyBwJ' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateXsollaUIConfig' test.out

#- 318 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '15' \
    --namespace '6upbqND5zlXYWzcd' \
    --offset '45' \
    --region '3mAqwbNs8r1C7ECH' \
    > test.out 2>&1
eval_tap $? 318 'QueryPaymentProviderConfig' test.out

#- 319 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "rZJZwpMCiv5Uq5UT", "region": "6HJlv2t3sZXlbKRG", "sandboxTaxJarApiToken": "VkqqJKh95RyxYscJ", "specials": ["PAYPAL", "WXPAY", "WXPAY"], "taxJarApiToken": "mS4cjcJm0yUx6Sjx", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 319 'CreatePaymentProviderConfig' test.out

#- 320 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 320 'GetAggregatePaymentProviders' test.out

#- 321 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '7EXLnPUg4rw92NEj' \
    --region 'Ts6sSCgibXUlcFqT' \
    > test.out 2>&1
eval_tap $? 321 'DebugMatchedPaymentProviderConfig' test.out

#- 322 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 322 'GetSpecialPaymentProviders' test.out

#- 323 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'fitEdv8thBSYBxhU' \
    --body '{"aggregate": "ADYEN", "namespace": "l4e02CjRaGVjQznW", "region": "EJgH6We1K6xYLH8X", "sandboxTaxJarApiToken": "WYpbEp3I70QNMPDl", "specials": ["WALLET", "CHECKOUT", "ALIPAY"], "taxJarApiToken": "1YhEAvZ7EZTdm2Ls", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 323 'UpdatePaymentProviderConfig' test.out

#- 324 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'm41MOhNF1mv9xxTE' \
    > test.out 2>&1
eval_tap $? 324 'DeletePaymentProviderConfig' test.out

#- 325 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxConfig' test.out

#- 326 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "DDWbWJfwQbQqUbO6", "taxJarApiToken": "QISbBa6yUmyRJ92B", "taxJarEnabled": false, "taxJarProductCodesMapping": {"SDnt8rK4QEsYurLs": "ysznmwQgyXycoSCR", "UAWAZ9bBjEaHgMY3": "wbIZECY9guVclMeq", "8rk6DiexeKIeJrSE": "zlXiyat0gsXOUr7z"}}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentTaxConfig' test.out

#- 327 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'rW3AiiO8PwhNVKwp' \
    --end 'j4F1ffZSbO0PZgqu' \
    --start 'DqYdvGRXWpqO3JBT' \
    > test.out 2>&1
eval_tap $? 327 'SyncPaymentOrders' test.out

#- 328 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'efvS1t0FdgsJz5UU' \
    --storeId 'khHRO7iJPeodlOSu' \
    > test.out 2>&1
eval_tap $? 328 'PublicGetRootCategories' test.out

#- 329 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '54kAyGL80sk4KO13' \
    --storeId 'XpnCKcq23yf0a4pi' \
    > test.out 2>&1
eval_tap $? 329 'DownloadCategories' test.out

#- 330 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'K9PsxicK9Q3PUdhX' \
    --namespace $AB_NAMESPACE \
    --language 'V7qBdZFrZ19ml5e7' \
    --storeId 'xgREkTiG5pD7nxCs' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetCategory' test.out

#- 331 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'DGE8sDO90gdZEgcs' \
    --namespace $AB_NAMESPACE \
    --language 'QVTqqUryCWWSIjT0' \
    --storeId 'eNWKbzj7RvsrQEGT' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetChildCategories' test.out

#- 332 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '31GSHquBXx09DFB6' \
    --namespace $AB_NAMESPACE \
    --language '6L92cl30q5kQgvgo' \
    --storeId 'SV34b4ledDvNW44i' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetDescendantCategories' test.out

#- 333 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 333 'PublicListCurrencies' test.out

#- 334 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 334 'GetIAPItemMapping' test.out

#- 335 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'MhDdnZM2YNbmQ7O5' \
    --region 'AK1brZYEz8rFr0hn' \
    --storeId 'Rr1yFvNjxxcxX9Ej' \
    --appId 'Uduj4vgkwoFZPv1X' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetItemByAppId' test.out

#- 336 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'j2NKILGj471dQ7nE' \
    --categoryPath 'GGu7P9L8BiYjylCM' \
    --features '7ROhjVIkVjCuMNbk' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --language 'oYiTVOxukiQpnDm4' \
    --limit '65' \
    --offset '21' \
    --region 'VAcCBkmtWH1J3bCt' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "name:desc"]' \
    --storeId 'Vdyq5FicVs6TQxmi' \
    --tags 'OHUbGxNv8cQlF6I9' \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryItems' test.out

#- 337 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'T1UEMwUOvzyNzR7Q' \
    --region 'NS5GhEu8S3FnVEPm' \
    --storeId 'wCwHixVs14SaR07v' \
    --sku 'p4C2VpIXSH2n3wSv' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetItemBySku' test.out

#- 338 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'bLCQPflZl23ym0WH' \
    --region 'tDgijeoji5FaDvAz' \
    --storeId '2jO6NfKPM0m6bc7R' \
    --itemIds 'YEGWBGVh99M3Y115' \
    > test.out 2>&1
eval_tap $? 338 'PublicBulkGetItems' test.out

#- 339 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["KS8JaJuXI2FC6nIw", "FooS1RfjQobA54Di", "vwK4adqKzUYCwIjs"]}' \
    > test.out 2>&1
eval_tap $? 339 'PublicValidateItemPurchaseCondition' test.out

#- 340 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '91' \
    --offset '29' \
    --region '2AlaDGFEE0PuBoid' \
    --storeId '675eM0nGB87YOUDP' \
    --keyword 'FKhFHtYA3l5Q2Sq1' \
    --language '8rmeew0mEewxW2sd' \
    > test.out 2>&1
eval_tap $? 340 'PublicSearchItems' test.out

#- 341 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'snxpqpvWk5QYIVpE' \
    --namespace $AB_NAMESPACE \
    --language 'qKgxZWjcnbFBzUkN' \
    --region '3N6EBBNcEcSyZq7M' \
    --storeId 'lTp4MK8IT7MHGVnD' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetApp' test.out

#- 342 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'ydcNd9xV0mtzQ3OQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemDynamicData' test.out

#- 343 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '2mxPOr9jxN2wqW5h' \
    --namespace $AB_NAMESPACE \
    --language 'f5LjbR10OdYnvqVW' \
    --populateBundle 'true' \
    --region 'LXJQOxqAQkGQZuib' \
    --storeId 'bSrvsWcxK9enwyeP' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItem' test.out

#- 344 GetPaymentCustomization
eval_tap 0 344 'GetPaymentCustomization # SKIP deprecated' test.out

#- 345 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "iYZ9vdBry2nYR0BN", "paymentProvider": "CHECKOUT", "returnUrl": "zh3r49HX7D1lPVD4", "ui": "oZn8IRAialIZ3plK", "zipCode": "WRprQrDEw3xnHshU"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentUrl' test.out

#- 346 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hGXoY3ALOoC821nD' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentMethods' test.out

#- 347 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zfjQ4tC9m7vNJXJm' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUnpaidPaymentOrder' test.out

#- 348 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'bImI5bZyC5b3bso3' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'yRtaZ6dUW9dQr6n6' \
    --body '{"token": "0HhwW2QA3pnqeHw8"}' \
    > test.out 2>&1
eval_tap $? 348 'Pay' test.out

#- 349 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JJ2VrXkHZZTz1k2B' \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckPaymentOrderPaidStatus' test.out

#- 350 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'qX7aEdzFkVnOFUP7' \
    > test.out 2>&1
eval_tap $? 350 'GetPaymentPublicConfig' test.out

#- 351 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'k6AeaCl4TpGIJFSF' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetQRCode' test.out

#- 352 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'RmGUCQeCNa9aMV6U' \
    --foreinginvoice 'gAGwCxiWsRmvrZkk' \
    --invoiceId '8As5ElOSzZC0JLQG' \
    --payload 'jXoYzp0jAHdaBACm' \
    --redirectResult '4GFHKBALgkPLeVkc' \
    --resultCode 'pfnXPAeQLmkgNI5W' \
    --sessionId 'EfkLxlS7hbY5TnKu' \
    --status 'DsKfCJS6C4wjfQmH' \
    --token 'GqEWIujTiH1R4sgO' \
    --type 'buViwgJYYhOg7ner' \
    --userId '0ZGpx8Wo1v1Ug4e0' \
    --orderNo 'YVXVfMOorCZseZKh' \
    --paymentOrderNo '4cv0Y0wxQrAHLZpb' \
    --paymentProvider 'XSOLLA' \
    --returnUrl 'udt9eOVFpIMMVZn1' \
    > test.out 2>&1
eval_tap $? 352 'PublicNormalizePaymentReturnUrl' test.out

#- 353 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '8ASc23RhqqDug2Gh' \
    --paymentOrderNo 'W227v4VqeeLK16DG' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentTaxValue' test.out

#- 354 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'pVOnjHEcYQJdsQlk' \
    > test.out 2>&1
eval_tap $? 354 'GetRewardByCode' test.out

#- 355 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'XWASDBiK94i2PWtF' \
    --limit '32' \
    --offset '22' \
    --sortBy '["namespace:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 355 'QueryRewards1' test.out

#- 356 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'fkBXchsoO7MTrog8' \
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
    --appIds '["falmucN1WYnbpI3Z", "vH0HP1TgPM7zoND4", "hdswRK9oqaVWyR6O"]' \
    --itemIds '["mgXJtne4eMa4foIu", "ZB8wBMR59SuMfuGt", "ajzsilKEJe2RzCpe"]' \
    --skus '["K36d3X9tc9sSzuzm", "FtlVedHxeYAnc3NQ", "UfzgHoa1ZTlUJcwq"]' \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyMyActiveEntitlement' test.out

#- 359 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Ku6XsJ87OYwxTKMN' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'lxFrDmZjS7AgyKus' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 361 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'AfU3D36XmewdbjpE' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 362 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["N6r22xLXjpKCXFAJ", "zZKbENmRgdRGyX8L", "GLX48EOOQK9FmGT5"]' \
    --itemIds '["adlFSXMYoBW3QiCS", "toBsIjcdNcTeByno", "YBibJbNmMf7TOLC2"]' \
    --skus '["yGsnbyCtYfQHoXlb", "IjZ89wwjZIC0qWFX", "Url4HYUejLPnAjrl"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEntitlementOwnershipToken' test.out

#- 363 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "qfFKQvscwTuFihzZ", "language": "Ntyb", "region": "CMGsc9ejjOP4epnO"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncTwitchDropsEntitlement' test.out

#- 364 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'UCwVIPvFV4TIJNye' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyWallet' test.out

#- 365 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ysLF7NeNS93n0VoA' \
    --body '{"epicGamesJwtToken": "nY6jW0ck8Kl7gmt3"}' \
    > test.out 2>&1
eval_tap $? 365 'SyncEpicGameDLC' test.out

#- 366 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'GCVbnRt6ZO6cMGtg' \
    > test.out 2>&1
eval_tap $? 366 'SyncOculusDLC' test.out

#- 367 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'MMeQrStpg9lE5m0I' \
    --body '{"serviceLabel": 43}' \
    > test.out 2>&1
eval_tap $? 367 'PublicSyncPsnDlcInventory' test.out

#- 368 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'wzQEDZXLtxxcUjXk' \
    --body '{"serviceLabels": [72, 53, 94]}' \
    > test.out 2>&1
eval_tap $? 368 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 369 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '03lgjFQMtfPHzw9F' \
    --body '{"appId": "zGlR1qdWm49PhJcX", "steamId": "glZUTy9B8CuOKVDL"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncSteamDLC' test.out

#- 370 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '6yHJc6brI5nA9rXM' \
    --body '{"xstsToken": "gQb9KRVtDcRhZUsn"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncXboxDLC' test.out

#- 371 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PYSIU9WuARqkm4sF' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'tG34jkXSNGDNULLu' \
    --features '["ETjb9fNwwV8rAX8T", "vnWagEseWmBFgXat", "OtQ8ri87XO30BA41"]' \
    --itemId '["uvdEaCnm2aqyoI6q", "LiULJrn9A1LKZxfE", "8M707gWb5RuhtrzX"]' \
    --limit '71' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserEntitlements' test.out

#- 372 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'OYsXYyiabJVZbbWf' \
    --appId 'b0QQgXAa0LgSL73s' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUserAppEntitlementByAppId' test.out

#- 373 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'floYnoNAp5zeigJX' \
    --limit '96' \
    --offset '11' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserEntitlementsByAppType' test.out

#- 374 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BmLFxfSSCMF2Ci53' \
    --entitlementClazz 'CODE' \
    --itemId 'dCMaes3Ai4p5M7Mj' \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserEntitlementByItemId' test.out

#- 375 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'w0OPbqGZ7tE9qxUn' \
    --entitlementClazz 'CODE' \
    --sku 'zFWMtklVf2jdSKzB' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserEntitlementBySku' test.out

#- 376 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'EvSAPf2KTT9imar3' \
    --appIds '["kPlH4Pf7y5bmimyc", "YllCq4erZLxtYuXL", "MXTGQUr94QtmLTyN"]' \
    --itemIds '["wwekcmILhpDl3J6Z", "hgG54G10Izek2dX9", "RlteTWoSZfO7pFIg"]' \
    --skus '["lBXOLqkkSuFVeVF7", "4X1esOurG3m6gcpi", "ZKSILbnlHmvVP0cV"]' \
    > test.out 2>&1
eval_tap $? 376 'PublicExistsAnyUserActiveEntitlement' test.out

#- 377 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bAewbTLN4uitD2RU' \
    --appId 'KR4GxHwnST4Tqlay' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 378 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'u8DKCCrseuRU5qPw' \
    --entitlementClazz 'MEDIA' \
    --itemId 'clY2SeniDoeVa1k0' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 379 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'xjKO157RRBAMPJvH' \
    --ids '["Rz0ilfXOtXVj4pSO", "U9YA3gU3nkZQOIUr", "4WtoBPNJjhY3fAEs"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 380 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '8lfStap9XBCLrPLz' \
    --entitlementClazz 'MEDIA' \
    --sku 'HLIlqfph0RVYiVrB' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 381 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'QPCG75fUxAPNDEi0' \
    --namespace $AB_NAMESPACE \
    --userId 'rbh3yDKCK7PZHV32' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlement' test.out

#- 382 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'LzdYJ5oKYmCN9a02' \
    --namespace $AB_NAMESPACE \
    --userId 'nLbSBsUhBtz44G1v' \
    --body '{"options": ["3GeUIIqlKyzsDCpf", "po1hZhBrxmRfNpM0", "90H5IPbAcEo17uOs"], "requestId": "nLNxpkugmr4lBbrp", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 382 'PublicConsumeUserEntitlement' test.out

#- 383 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'bwez7EqmeLyO5uHB' \
    --namespace $AB_NAMESPACE \
    --userId 'TCm8j3m4pnHBZnSU' \
    --body '{"requestId": "EoQfYHm85YlixqPA", "useCount": 50}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSellUserEntitlement' test.out

#- 384 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'DoXECfInsxtQkr9E' \
    --body '{"code": "aqJH5ZpZKhjNNRv9", "language": "zYQY-pIpw", "region": "rjL36kPoRcwCB36D"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicRedeemCode' test.out

#- 385 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'jq1njMtDC7oZ2VRO' \
    --body '{"excludeOldTransactions": true, "language": "VYI_620", "productId": "Ssgismf1GYiCPtpI", "receiptData": "fv8tuBNe9DYoLSUE", "region": "p9bTGTEFOM0CzYcl", "transactionId": "VaovMuC7QkUwPT3M"}' \
    > test.out 2>&1
eval_tap $? 385 'PublicFulfillAppleIAPItem' test.out

#- 386 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Jptkyallc70pzv02' \
    --body '{"epicGamesJwtToken": "MHE6scYpYcgQ024E"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncEpicGamesInventory' test.out

#- 387 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kmR7EkzR5w4CbTWZ' \
    --body '{"autoAck": true, "language": "AIlw-999", "orderId": "t36u8dFoUrJxZ0yh", "packageName": "V1XuDdqTmUG6d9z7", "productId": "JBagFisiScRpLx07", "purchaseTime": 66, "purchaseToken": "CENJaDqlhcnCCnm1", "region": "sZfUdSxI9fqRXYPQ"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicFulfillGoogleIAPItem' test.out

#- 388 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Wy7QaqDGlNT073Mb' \
    > test.out 2>&1
eval_tap $? 388 'SyncOculusConsumableEntitlements' test.out

#- 389 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'Vw1hzEtje5vYNPgB' \
    --body '{"currencyCode": "s24EP1KjqVlKMrVP", "price": 0.378505097829698, "productId": "CezgWrqsMQ5GPk8s", "serviceLabel": 41}' \
    > test.out 2>&1
eval_tap $? 389 'PublicReconcilePlayStationStore' test.out

#- 390 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'NTyKvZ7QcyFVDTOd' \
    --body '{"currencyCode": "eqRXdWvGFEDa2O7c", "price": 0.4957797192594431, "productId": "SlBHS8BUQJsyPISK", "serviceLabels": [57, 9, 79]}' \
    > test.out 2>&1
eval_tap $? 390 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 391 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'rfDQSWQETctkHkVE' \
    --body '{"appId": "RSa7Nljmh6U0so7r", "currencyCode": "YctXPqndRqaN37hB", "language": "dfuP_bmbB", "price": 0.33776987572652417, "productId": "QPWfbKwr4ePO8E7z", "region": "bx6feRFZygwC96Pz", "steamId": "Qlyddx7bEO03hpSB"}' \
    > test.out 2>&1
eval_tap $? 391 'SyncSteamInventory' test.out

#- 392 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '0mbGtEEyP04wXS8x' \
    --body '{"gameId": "rw0GIFJMuXkzSVfU", "language": "mVRY_xyAX-pk", "region": "kMU7vby3Cw93wjMf"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncTwitchDropsEntitlement1' test.out

#- 393 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'DdNeFXLykYA1RJQ6' \
    --body '{"currencyCode": "hFH4odMYomDRC8XL", "price": 0.5500830370621257, "productId": "aja4e1WiuBJJ4vt3", "xstsToken": "AF5jDg63p1tAWTfT"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncXboxInventory' test.out

#- 394 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '34oohgIQOK7j9rNz' \
    --itemId 'giB6f7oAMX9sdBea' \
    --limit '76' \
    --offset '21' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 394 'PublicQueryUserOrders' test.out

#- 395 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'lbMFAsMYAml3XcWo' \
    --body '{"currencyCode": "YzB6QB52mSAewOB5", "discountedPrice": 93, "ext": {"uUKbDNVEWzyG7EHT": {}, "yx1ShHICEd9ig50f": {}, "eL7i87K6G2a3VOtr": {}}, "itemId": "0tolRZgUL7BuiQpp", "language": "GP-293", "price": 22, "quantity": 36, "region": "uQyDVHJ8SdRfhfb8", "returnUrl": "3QmWYpUjecNrOboi", "sectionId": "QsmkPqoziEIVKtRG"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicCreateUserOrder' test.out

#- 396 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bKcKg7C9tyfMvtgq' \
    --userId 'Y0JUQ6HJQglsPovK' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserOrder' test.out

#- 397 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GAiaKXV9nvSNo7tC' \
    --userId 'ljyQqOLweKgL3VzK' \
    > test.out 2>&1
eval_tap $? 397 'PublicCancelUserOrder' test.out

#- 398 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '0mlc2TGHxYPN32Df' \
    --userId 'bGMfNBxCRzBzUbhw' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserOrderHistories' test.out

#- 399 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'q1Wm9mBhlnci491o' \
    --userId 'mR4dXKm8QkH3wwdZ' \
    > test.out 2>&1
eval_tap $? 399 'PublicDownloadUserOrderReceipt' test.out

#- 400 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'jQ2tjFDCaiufQWop' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetPaymentAccounts' test.out

#- 401 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'cvPUkanAHHfdkTrQ' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'iIWEPlE6kEeHiKm8' \
    > test.out 2>&1
eval_tap $? 401 'PublicDeletePaymentAccount' test.out

#- 402 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '26Tcr8iY8cs5lP8C' \
    --language 'YD8h4S6ZWkJpHQfE' \
    --region 'nFGG5DGIYktF5ckU' \
    --storeId 'Gv47fe33QlfYQO8u' \
    --viewId 'KQVkq5PL9uWsbCjR' \
    > test.out 2>&1
eval_tap $? 402 'PublicListActiveSections' test.out

#- 403 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'ipiTxAJVNpiCROLU' \
    --chargeStatus 'NEVER' \
    --itemId 'uwMhSTu158ZcTXo3' \
    --limit '45' \
    --offset '100' \
    --sku '7J4WQ7aQr1agiMpt' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 403 'PublicQueryUserSubscriptions' test.out

#- 404 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'bMkPZVvGg6lj54h0' \
    --body '{"currencyCode": "ZMQMKlNfVc14e3v9", "itemId": "JSWXlZd7DbpicbQy", "language": "WI_rjYe-139", "region": "Bxd2g3zJBPPkXuta", "returnUrl": "ShtTIGpVefyKq2x9", "source": "TtGztZeXBNJOewMq"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicSubscribeSubscription' test.out

#- 405 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nMnfMq8r3iwRu1Hb' \
    --itemId 'KJ68K5ZXDTN9Ajb5' \
    > test.out 2>&1
eval_tap $? 405 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 406 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bN2mT58hjiq4yEsQ' \
    --userId 'WHae3C0ndEtGJnGm' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserSubscription' test.out

#- 407 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'emcMM4TFqsjT4zTN' \
    --userId 'yUwNNS2DhoPwjgpk' \
    > test.out 2>&1
eval_tap $? 407 'PublicChangeSubscriptionBillingAccount' test.out

#- 408 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YKrVRxrerwUAbUbe' \
    --userId 'Oqs8i3vJoKKrZykr' \
    --body '{"immediate": false, "reason": "zbzhfbDnWyeO7M98"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelSubscription' test.out

#- 409 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qk118ZmfGuiMTBAs' \
    --userId 'F8slTdZ9IOFniEz3' \
    --excludeFree 'true' \
    --limit '78' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscriptionBillingHistories' test.out

#- 410 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '7H38XJLcnTcP3imK' \
    --language 'qfXhOYcrUaInwnt9' \
    --storeId 'IQ605KxEeKH7I6vh' \
    > test.out 2>&1
eval_tap $? 410 'PublicListViews' test.out

#- 411 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'N6vRUNn6tOZ3YEiq' \
    --namespace $AB_NAMESPACE \
    --userId 'QUdFMbR1dlsjDnQq' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetWallet' test.out

#- 412 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'q0AHFxzvrPqAG1pR' \
    --namespace $AB_NAMESPACE \
    --userId '7xKVmPU3IvA6mTzs' \
    --limit '11' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 412 'PublicListUserWalletTransactions' test.out

#- 413 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'iFHZKZS2k35b7uaH' \
    --baseAppId 'bZ6YTK02OYgJyMNY' \
    --categoryPath 'ywZcK2zdjBKKw5vz' \
    --features 'Jd0e1M659Yd2tCC1' \
    --includeSubCategoryItem 'false' \
    --itemName 'L1gL1J8O0yx84wWx' \
    --itemStatus 'ACTIVE' \
    --itemType 'SEASON' \
    --limit '88' \
    --offset '42' \
    --region '5MDXpkxevCkPgjoz' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "updatedAt:desc"]' \
    --storeId '8Cg8ZoQQOO89LrXl' \
    --tags 'TtGTyhoFLs1ffUy8' \
    --targetNamespace 'aRldWQgJc5I5wfQS' \
    > test.out 2>&1
eval_tap $? 413 'QueryItems1' test.out

#- 414 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'XCEfQjfNy0EFjSAi' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 414 'ImportStore1' test.out

#- 415 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'gPeIFqd9K4PoQPpK' \
    --body '{"itemIds": ["ISNY2193pzRIMQml", "OKo0e0XzxhgCnWDW", "FYhTInSc1IVN0iby"]}' \
    > test.out 2>&1
eval_tap $? 415 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE