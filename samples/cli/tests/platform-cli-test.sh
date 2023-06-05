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
echo "1..397"

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
    --body '{"context": {"item": {"appId": "K9ZuEgnqhrBmQjHT", "appType": "DLC", "baseAppId": "aP3BFuzwj5siEf3k", "boothName": "SEtwMwQYeioboPN7", "boundItemIds": ["fTXrxZq730pIYWas", "0B7NQPsYdOfnw1U6", "PAa6UOGo7Db6UWD5"], "categoryPath": "GJETcsTdvcFnazLd", "clazz": "CPm2FqwGiBerq4Is", "createdAt": "1994-04-24T00:00:00Z", "description": "UvZDtzimtdWxqA3R", "displayOrder": 33, "entitlementType": "CONSUMABLE", "ext": {"ActxSXdsgcIlhYg4": {}, "DNltqHuqpRTXNcth": {}, "X1ciVNF0HOgNkSMq": {}}, "features": ["UJiiPZUxCzs73PfO", "7DP6wLs2B1L0fK4H", "yzR0BjOrr9UOErHK"], "fresh": false, "images": [{"as": "JkVKbeVhiM7qVmRt", "caption": "oet4W87tnu0CLoLd", "height": 57, "imageUrl": "aAcXVMRFgwySPm7j", "smallImageUrl": "SYGYUmo5IdH8QF0p", "width": 48}, {"as": "Kpd0Yi1bn8fgTTIW", "caption": "CWrbKbOVvTdVZsJn", "height": 0, "imageUrl": "UgAd1KIhOBVXvNPh", "smallImageUrl": "yG6tOC8fKZj1ASst", "width": 96}, {"as": "sabOhCfrbzxTP9E5", "caption": "t1rZ5i1vsyuHOMvR", "height": 13, "imageUrl": "3CZIhhlTOBg6r44s", "smallImageUrl": "6Dk9GFMQCXmdcpOU", "width": 69}], "itemId": "qAmkwOWOZPETkSYE", "itemIds": ["0t7G4EmFuAcsvMjO", "TaxHVpavfdpn6N3x", "A6JtrbC5a2Fy3eMA"], "itemQty": {"PxeczyE1UOQhhMqn": 87, "XqvMTye4hqXpLfpE": 52, "swfZ34gjMpFuAU0Z": 24}, "itemType": "MEDIA", "language": "GnlBKAwo9bVamG1b", "listable": true, "localExt": {"ssPVUc4phuIN2zT8": {}, "0ZCQXQOYRh5kXhqu": {}, "QUJuasrX0amQ1vOo": {}}, "longDescription": "JWfB5TFdlvlkDf7c", "lootBoxConfig": {"rewardCount": 71, "rewards": [{"lootBoxItems": [{"count": 40, "duration": 22, "endDate": "1980-04-30T00:00:00Z", "itemId": "fOYvnWSvMUpE9RKx", "itemSku": "0wwXyiXxlTR5Yazb", "itemType": "GGQpJQ4R0bmFhCvL"}, {"count": 69, "duration": 31, "endDate": "1986-10-27T00:00:00Z", "itemId": "knymchUyymIRKr1n", "itemSku": "BU8QDItMpUFWDjbn", "itemType": "7eOKGxWUo2xWl3vP"}, {"count": 56, "duration": 48, "endDate": "1974-07-20T00:00:00Z", "itemId": "DkokvnlC52O4E9od", "itemSku": "KLPdE9XMW9tXIsHG", "itemType": "ofS6VqUaQvdTW0kD"}], "name": "0uAa7nzQelxO2PUI", "odds": 0.3581730636244389, "type": "PROBABILITY_GROUP", "weight": 3}, {"lootBoxItems": [{"count": 29, "duration": 62, "endDate": "1978-11-27T00:00:00Z", "itemId": "1Dn0zD9gMp9fH5eM", "itemSku": "z4HezbUInfr8eeQo", "itemType": "9gzc0J1ZbeDIwJXW"}, {"count": 5, "duration": 13, "endDate": "1989-10-05T00:00:00Z", "itemId": "ujl14DoHSJPdboJr", "itemSku": "4PDfxydo1lUZh3fv", "itemType": "hYxf9m6zEwwzy1Dg"}, {"count": 90, "duration": 94, "endDate": "1988-11-30T00:00:00Z", "itemId": "zwAJBJUF68iZ1GqI", "itemSku": "cQUZYu4SodZ8l32M", "itemType": "4lzCL5ZjRtX8ESB1"}], "name": "lH9Jik1i9DCgshNz", "odds": 0.7180989403526828, "type": "REWARD_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 59, "duration": 88, "endDate": "1997-09-07T00:00:00Z", "itemId": "7hfpcDaLf1vjmJKy", "itemSku": "ZPziJ6Gl6vNyKs97", "itemType": "oVeDd4FGRH6bJppX"}, {"count": 13, "duration": 75, "endDate": "1978-10-05T00:00:00Z", "itemId": "mYEJaBpxQIS5A76G", "itemSku": "CTei7yOVa7SRzV8b", "itemType": "s3ORLdwbLjxc2hXB"}, {"count": 39, "duration": 41, "endDate": "1992-09-08T00:00:00Z", "itemId": "wlExs8mGYxgotgPZ", "itemSku": "oSBRKYq5iRBxaxsM", "itemType": "U6O6DNC2khK2mcCo"}], "name": "WHncZpbLlOFDMyyt", "odds": 0.13525964378325717, "type": "PROBABILITY_GROUP", "weight": 8}], "rollFunction": "CUSTOM"}, "maxCount": 15, "maxCountPerUser": 100, "name": "Hks2NTp7eTlXveCc", "namespace": "swOTYeVQNIqzojVE", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 97, "endDate": "1984-01-09T00:00:00Z", "itemId": "n6FsgFDlVcHntMpw", "itemSku": "M40N2aXuMYVzlZLg", "itemType": "vFAJHTgkC7I6g9fm"}, {"count": 14, "duration": 6, "endDate": "1989-10-06T00:00:00Z", "itemId": "c1dIEiJwDnkJ2lRi", "itemSku": "fD3yxV6QaCY81UdM", "itemType": "WF3W5YR9eBsfulwP"}, {"count": 14, "duration": 6, "endDate": "1994-03-22T00:00:00Z", "itemId": "hngLHl9GubcG9NhQ", "itemSku": "4FcTNcOe5HYudVIr", "itemType": "xfNLLWVyQHhRg12G"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 73, "comparison": "isGreaterThan", "name": "CABW081woZ9c6z2V", "predicateType": "SeasonPassPredicate", "value": "ti7UYMyU5JWXqqzU", "values": ["MbecI2bYZywHsJux", "itCBX4DiYCj4sKAg", "GWSjaB8uenyV7y2E"]}, {"anyOf": 58, "comparison": "isLessThanOrEqual", "name": "mHLt7ylMvTBv3SWZ", "predicateType": "SeasonTierPredicate", "value": "1w8lG9dO56mneciG", "values": ["db3RnKrSOKvw4VFO", "ezrXlcYzhLDtbZ0E", "JbWWiFbJZzw3cTIe"]}, {"anyOf": 2, "comparison": "isGreaterThan", "name": "AyAFI0fMZIVee0ZF", "predicateType": "SeasonTierPredicate", "value": "f6Cdn6dXHLbxJWDt", "values": ["7mKh27vXa8nau2DJ", "MagxGfsxnMV4ogJj", "6ObfB0tJtemTeegU"]}]}, {"operator": "or", "predicates": [{"anyOf": 21, "comparison": "isGreaterThan", "name": "04r9cShruq0YWRZa", "predicateType": "SeasonPassPredicate", "value": "GNFE8BFEuwfBSFhO", "values": ["oa6lausizUbyFHuV", "jD0kFOr4UkVMVw5K", "gjZUfOTvO6yNDhIa"]}, {"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "I0NJFQ9knA5fQx4g", "predicateType": "SeasonPassPredicate", "value": "NQjZOJdTjbUKcmIk", "values": ["2qFF1krrD61myW6e", "SoOLVwABFgecHmSG", "SxSX9b6l67cz6umk"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "gPGqbQmZg0g4fpTi", "predicateType": "SeasonPassPredicate", "value": "zyw9LSzxGH8I69ME", "values": ["sYMtxqelEs3LEXf7", "BK68KN3c8zopNOHd", "hQVrqxjvSlwl3wRV"]}]}, {"operator": "or", "predicates": [{"anyOf": 14, "comparison": "is", "name": "cEWJLZdYvW6YadC3", "predicateType": "SeasonPassPredicate", "value": "Hea86f61K29o9kxG", "values": ["THxxK31YTFfFLM9S", "cPFTT1Cr9HpndM8L", "5pDPqsUbZOewpFsi"]}, {"anyOf": 95, "comparison": "isNot", "name": "N8nmZCSfHrAWeYY2", "predicateType": "EntitlementPredicate", "value": "sMUm3H3Lbq5dFZKI", "values": ["uzqBvTcZbVGc7T3s", "Q0QMsQMoQn6DyThd", "AFqGfh22agRhTrJd"]}, {"anyOf": 98, "comparison": "excludes", "name": "VSMXxKPfq9mWqf0M", "predicateType": "SeasonTierPredicate", "value": "GVFxDsmoH1WuEDbc", "values": ["LM4BCjGuL1cRLEJn", "qzMPIOb8wPRMYKi9", "la08YjJhFEoem2TM"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 28, "fixedTrialCycles": 82, "graceDays": 2}, "region": "8iMHfVbJWolXtokn", "regionData": [{"currencyCode": "bMyCu8GfGoLaHrQg", "currencyNamespace": "Npq5cBPACUak3VWI", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1976-11-19T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1984-09-24T00:00:00Z", "discountedPrice": 62, "expireAt": "1975-02-10T00:00:00Z", "price": 73, "purchaseAt": "1989-08-18T00:00:00Z", "trialPrice": 7}, {"currencyCode": "assKkLLlnNXQBYeO", "currencyNamespace": "nTP6h9rB1r7iXzvW", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1976-12-05T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1993-10-10T00:00:00Z", "discountedPrice": 65, "expireAt": "1988-05-20T00:00:00Z", "price": 20, "purchaseAt": "1977-03-13T00:00:00Z", "trialPrice": 12}, {"currencyCode": "N9KoATrIXnWeWwdn", "currencyNamespace": "3uEqsjLnPOnqWMVS", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1978-06-27T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1974-05-28T00:00:00Z", "discountedPrice": 90, "expireAt": "1989-08-05T00:00:00Z", "price": 65, "purchaseAt": "1975-11-29T00:00:00Z", "trialPrice": 7}], "saleConfig": {"currencyCode": "aOxJiHojgdw5fC6E", "price": 22}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wGYVy06kYBN63Lt0", "stackable": true, "status": "INACTIVE", "tags": ["qXgymLo7X8GCS2th", "MJFK8w3lxxy6Elbf", "b4BIbF2E4BWc9JjF"], "targetCurrencyCode": "UQF5r4tHlkg0acJ3", "targetItemId": "2lMY4N5zhb5GDDPl", "targetNamespace": "APMgJVPQ1Pvni6rN", "thumbnailUrl": "rFMKwdVDpUeqKych", "title": "wTBwlvqSgTF7cBjW", "updatedAt": "1982-11-16T00:00:00Z", "useCount": 7}, "namespace": "GhMI9Z3s7CaK92go", "order": {"currency": {"currencyCode": "W4FN3rmfajZ5olPj", "currencySymbol": "qNsXthPyEQZF8zwV", "currencyType": "REAL", "decimals": 48, "namespace": "LPMmmtpALMg5STYL"}, "ext": {"d4MwPvTcYZNcyvd4": {}, "LHDenbIjBGlQtbJ5": {}, "NURq0PtjuiqFad0m": {}}, "free": true}, "source": "IAP"}, "script": "g1dpHn2fYudutdJL", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'irXnohzt1B5C1dYF' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'e1ELtf5cdJQvRZSX' \
    --body '{"grantDays": "z9TNS1SdOboKsznH"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'MTI754yb9twT3wpJ' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'dZByvc0RxX8SGcYQ' \
    --body '{"grantDays": "owWvzgArXva7IuVE"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "bFzr3T4z0nxX8wJO", "dryRun": true, "fulfillmentUrl": "kIgXdCJ6rTwZfwNF", "itemType": "EXTENSION", "purchaseConditionUrl": "sX3eCvtsrud1ysx3"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'saKlQKH9tTKzi4pR' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '3WVdvZm4Aem1Za3I' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'UUHY54BzpLDFWXVP' \
    --body '{"clazz": "sfoRy6MNqtJQjjBQ", "dryRun": false, "fulfillmentUrl": "2sB5vEHMrDtBBrmQ", "purchaseConditionUrl": "3aqeN4QVRuapnDX5"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Xln0y8WvxQnKqBaj' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --name 'MFbVplvhaJzHSVOm' \
    --offset '66' \
    --tag '7x2IOFnIyRPI9H3Z' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "OTlRI3F2VIt4sNq7", "items": [{"extraSubscriptionDays": 5, "itemId": "kXukU9FZkybC4OMf", "itemName": "jdn9uGBRQDfMNEEb", "quantity": 44}, {"extraSubscriptionDays": 5, "itemId": "0wwXSrYV0Gjyqreq", "itemName": "wlpsQ7ovQWnZ3lrG", "quantity": 85}, {"extraSubscriptionDays": 51, "itemId": "ziFuMmxTcobqiDDq", "itemName": "0g3kzYxSdBqY0tho", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 82, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 84, "name": "tfUBQRgzGheR03pC", "redeemEnd": "1986-07-26T00:00:00Z", "redeemStart": "1992-08-17T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["IAqASUkVlBgMFhKq", "FbZWvigZIhbqKsHO", "DaBEUCenY3HIHmXV"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Gbaqet7rx8kuM7DN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'uQd2hQl97YeurmXs' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "kbfTyqudjiKXlYAy", "items": [{"extraSubscriptionDays": 6, "itemId": "lXzSl8w7GOx2D36R", "itemName": "QCoad6SF9RzUVGfU", "quantity": 18}, {"extraSubscriptionDays": 38, "itemId": "CfY0rRYBxSCvXdol", "itemName": "MjzlNocx6TXbe6vd", "quantity": 85}, {"extraSubscriptionDays": 10, "itemId": "iLRGVXoEzmEnjYL7", "itemName": "8jIVP923HyZ9qAOl", "quantity": 66}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 30, "maxRedeemCountPerCodePerUser": 53, "maxSaleCount": 43, "name": "Cs3egnHJHn4qgDQs", "redeemEnd": "1975-03-01T00:00:00Z", "redeemStart": "1995-05-26T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["g1kJEMWU3GidFVl0", "BuEGFxKFtQpz8Qiv", "1BRhRgwVCeKkzDJ4"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'RwhTcWsV7wvn0rIE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'oZ7eJ5k7Za2dFpq4' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'RILTQlicp82F9ODG' \
    --body '{"categoryPath": "IHurZMpd8rloZcyh", "localizationDisplayNames": {"9oX7T8q03H4WH1pE": "o7pE4GWbAURzLEEO", "1x9bD8HMWe39FYnG": "1VlpISrsiwu8PKKw", "JFsOaTCmd2qKcRRr": "RSUHRw9glCDa5fXU"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'keCLT0GoCtcfaUAp' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '45nhjYSJPbkFxO7m' \
    --namespace $AB_NAMESPACE \
    --storeId '5lOh8I2oSllg1nAf' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'ZS9sDRH1UcRwjdOX' \
    --namespace $AB_NAMESPACE \
    --storeId 'Wk1TSvms8HA1dQsB' \
    --body '{"localizationDisplayNames": {"r94l09dT6S8pMTot": "wTLKm8w4KXySau9i", "aR7MQm7LqgR7YAyV": "5zAlD2R3qXXQDPKx", "zmUiA2E5l5DlSc38": "R7igubHHZTIbeWws"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'sQnFeWq19X6LmZeN' \
    --namespace $AB_NAMESPACE \
    --storeId 'JDxewhFkgrDZFxPl' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'BtjkJXukSuc26Gfu' \
    --namespace $AB_NAMESPACE \
    --storeId 'iT7dxotiuAofHPrQ' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'uaBM1LbDTtyu3Uoh' \
    --namespace $AB_NAMESPACE \
    --storeId 'b5covzEMuddAGfZY' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'WEl9JOnRPySHLw68' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '99' \
    --code 'qRRrMe7XjXxdyq6z' \
    --limit '80' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'cFtbskuVtCLfo908' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 42}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId '3GaxM0bdDSJvHAIx' \
    --namespace $AB_NAMESPACE \
    --batchNo '28' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'XV810tvaR0yHDOUn' \
    --namespace $AB_NAMESPACE \
    --batchNo '6' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'Gwy5fVenV556jWis' \
    --namespace $AB_NAMESPACE \
    --batchNo '4' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'Vh4FJT6lDftBUNA1' \
    --namespace $AB_NAMESPACE \
    --code '6VoWCwXlLgcZJCIx' \
    --limit '0' \
    --offset '98' \
    --userId 'zT5XHpAhILyIUEzS' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'BCXpEyl2rUxByoOg' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'dvm6lkkv6HADLxsw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'H20rMyOzQzMuVIa3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 GetServicePluginConfig
samples/cli/sample-apps Platform getServicePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetServicePluginConfig' test.out

#- 37 UpdateServicePluginConfig
samples/cli/sample-apps Platform updateServicePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"grpcServerAddress": "KLtYxUhL2GyRyaDg"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateServicePluginConfig' test.out

#- 38 DeleteServicePluginConfig
samples/cli/sample-apps Platform deleteServicePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteServicePluginConfig' test.out

#- 39 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "EA5ugXBK8seBTFZZ", "currencySymbol": "Ekqivdv5IvsHH0so", "currencyType": "VIRTUAL", "decimals": 23, "localizationDescriptions": {"RR57NITeHB19wbeM": "SnNDmEDItc84tOma", "nmukA43Srcj2JUyE": "lqLkkR30s3MxpHjt", "JKDTSgqCsbRUbIvl": "LWnzUWUQYODOnA8b"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'dx6PLqWu8bD2sNcb' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"8ic6erbv2igj15La": "vbCeQ8MUuAzuuR4a", "Zfh8QIvZjy5pjNgh": "ORysQRAnGtRA0Kvs", "7aOy1zUvoIQOd8bO": "FccApzMjzA8MjzYC"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'UO8snqzM8c5tmkVm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '7iCTqNcZJJmS8Fiy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '9GaUixo0plldWgQC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetCurrencySummary' test.out

#- 45 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'GetDLCItemConfig' test.out

#- 46 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "0p1KrCYH81Ir5dnm", "rewards": [{"currency": {"currencyCode": "8bZHRRGXwPunIzBa", "namespace": "gjAnZ7NHXrfunE7h"}, "item": {"itemId": "qpQxWZlDiveDTnPX", "itemSku": "lr6IagFvshfhjybx", "itemType": "LO0RE4QEDrW2lX6j"}, "quantity": 3, "type": "CURRENCY"}, {"currency": {"currencyCode": "inhaZzbDfePIe8B5", "namespace": "4INatj3idLpVp5K0"}, "item": {"itemId": "1gstGPSz4TS1OEzL", "itemSku": "jHArljPTai7zk3hR", "itemType": "YMSdEkQpQJA8lQOI"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "LLiWhqImTWzop0SH", "namespace": "XGOcs0I2h1gTi0Kc"}, "item": {"itemId": "r8OBmwYr7xqd4O7E", "itemSku": "MwXnYuBQTYjQgpoq", "itemType": "FpfMuowzMeQpUxjK"}, "quantity": 60, "type": "ITEM"}]}, {"id": "St32ZXQQUbkZTqla", "rewards": [{"currency": {"currencyCode": "vE8m9NnUsqtq5wxZ", "namespace": "E61s6p3iNq51LSCY"}, "item": {"itemId": "uHvpqzCgNziBGlOE", "itemSku": "VFDAzWdn6nuPHMfL", "itemType": "vYzOlGdhkloPfJT1"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"currencyCode": "EPGTWwAkAXXMcNCl", "namespace": "ESVbNTdbaHGrRRxK"}, "item": {"itemId": "iZTqYmXLMBpdabQ8", "itemSku": "REPJU9q1aGI0Zdqv", "itemType": "u7xSzq8weTt3K5dN"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "3hkaDKHiilLvtrWU", "namespace": "xMv2tXfKzmHHJeeJ"}, "item": {"itemId": "euFCuUKJ2Ol1sP8h", "itemSku": "VnXPwk8bZxokfRkD", "itemType": "nshkccMNyGXMM5ub"}, "quantity": 21, "type": "ITEM"}]}, {"id": "aRHicbwVyUistUdu", "rewards": [{"currency": {"currencyCode": "P3oI52Vk7hfqqqQ0", "namespace": "D0MxFjqvh8TgfSQK"}, "item": {"itemId": "iFYDorGBVTjn0g5T", "itemSku": "7oIfKpgAzS75licx", "itemType": "rshFLQeZpdQH4CMH"}, "quantity": 5, "type": "ITEM"}, {"currency": {"currencyCode": "w29dDU3za0uyzqlo", "namespace": "kEDpdSaRkpJO1VFp"}, "item": {"itemId": "SFGdyjgZFhFWD9Ay", "itemSku": "99vegQF3dFFHJ23G", "itemType": "m0A6H1eIfR0wGhqa"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "iKnQGsTMKEeqecEZ", "namespace": "wqRbWBxeh1xJExVp"}, "item": {"itemId": "UxUvchSOApHwcq0D", "itemSku": "O78DSkZ7OrrAJDXc", "itemType": "G4NsreB8pMj0fHuL"}, "quantity": 100, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateDLCItemConfig' test.out

#- 47 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'DeleteDLCItemConfig' test.out

#- 48 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetPlatformDLCConfig' test.out

#- 49 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"TVfbcUitq7tQowOS": "OsrBKYJ41CjZgNUU", "7H2vfLfqtliL8x9Y": "lFIJ951N1sv8wuB1", "Lh4tQz9QFvnEGpab": "SoegysZnNKJn7Ykg"}}, {"platform": "XBOX", "platformDlcIdMap": {"qvzy6qXsXsevrdJ3": "d8jnm0JJFEnQbY10", "pkCqmsnI13IvXKQU": "EY3KldrJG9HCelB9", "uRHkAxhTVIa1Aglw": "1e364ONDXWke9wIt"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"DvzuACRonbh9Vrg9": "6Gg90yZPjQvaS8TI", "iZkQCd1TXM6qS13T": "rn3z8NBpH1YzOfs4", "AatwuHitUBpQacSC": "8nh4VsplS5gshMyf"}}]}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePlatformDLCConfig' test.out

#- 50 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeletePlatformDLCConfig' test.out

#- 51 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'MwckgGotN01YkqkR' \
    --itemId '["K2t8JXbaWg2T9ZMt", "ROK36X8WH1sbaQgy", "qr7N4H74tSqxoSbj"]' \
    --limit '9' \
    --offset '89' \
    --userId '5Vmi61iJchV4eGWw' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["fnygGV8C2NuunpvW", "ct4xniS6w6C0Zcz5", "N1SIbHWuVNs12six"]' \
    --limit '36' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1995-08-16T00:00:00Z", "grantedCode": "EK2Dt859TAUUN28B", "itemId": "ooPrf9bSkLR5D0ME", "itemNamespace": "5roujg1oavnkF9Lz", "language": "dK", "quantity": 84, "region": "u4YjkrGCIBEvewVW", "source": "PROMOTION", "startDate": "1993-12-17T00:00:00Z", "storeId": "yahJTGiaLgcL8t4v"}, {"endDate": "1995-08-07T00:00:00Z", "grantedCode": "TIVh65oHV1aX6REN", "itemId": "mGiuSZsIN94SeOHN", "itemNamespace": "4kh22WB2OD1rORMJ", "language": "Ssa-PXFm", "quantity": 44, "region": "cZm8CtrLwzazxgfK", "source": "IAP", "startDate": "1973-07-08T00:00:00Z", "storeId": "SLyt6QgmYhJ5D85u"}, {"endDate": "1992-02-12T00:00:00Z", "grantedCode": "7izxceziuRxfWzub", "itemId": "9gkxoHmk5Cf0xDNS", "itemNamespace": "AQgKsXPcgRAOX8ip", "language": "UUR_hSKn", "quantity": 0, "region": "abwNUXtRiWwyufb8", "source": "PURCHASE", "startDate": "1977-10-05T00:00:00Z", "storeId": "zGwhZLaaCvm62qZ3"}], "userIds": ["7nUXGnU3D7XY3css", "qjiTKawA96heqVl3", "obS34PeowOb9a1bv"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["D4iIgyGCT4hR9nS2", "b8K8CHgcwdSNUiNZ", "mgO9roqognEJEXpC"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'Hx7l0FV3J5IWR9QC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '62' \
    --status 'SUCCESS' \
    --userId '7oeiL1zP7snXf2hG' \
    > test.out 2>&1
eval_tap $? 56 'QueryFulfillmentHistories' test.out

#- 57 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetAppleIAPConfig' test.out

#- 58 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "Lm7yLdlGAjEYTe0L", "password": "udxxvB8AbesUnzMc"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateAppleIAPConfig' test.out

#- 59 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteAppleIAPConfig' test.out

#- 60 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetEpicGamesIAPConfig' test.out

#- 61 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "mFbHKB1akomO2TI0"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateEpicGamesIAPConfig' test.out

#- 62 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteEpicGamesIAPConfig' test.out

#- 63 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetGoogleIAPConfig' test.out

#- 64 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "FQSva9bm7YjcCL05", "serviceAccountId": "fWU8g7XFKK1jhxKr"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateGoogleIAPConfig' test.out

#- 65 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'DeleteGoogleIAPConfig' test.out

#- 66 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 66 'UpdateGoogleP12File' test.out

#- 67 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetIAPItemConfig' test.out

#- 68 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "VBeW1PLliCLZEfJx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"GBHwkGnD5u3DdKUm": "IyGTCP8Pj57xU5KJ", "W1L35P0JEkeC938V": "EXdWxE7kx69G1rO2", "9UfA91g09zcPiPPd": "fpPIXPAsxQ3pipcs"}}, {"itemIdentity": "SJawWdmkHF7knc7L", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"E1KU5PPnD7eULE9H": "73q6thoz9uJT7TfJ", "dgQcdIdacYT2Idx9": "mGqxmFVtCA46gbJ8", "00PXKBGzuWYZlaEu": "qVepPGPtfrbmeL72"}}, {"itemIdentity": "ayWcOGXaQEL5W8oC", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Ep15OYNeBswbeIm6": "mqryI5x66N2QMNAr", "zChWdFsbBovjUaYe": "QVVc4vuiu6863MDH", "mrBc4lSFJ9Tzb6FI": "Q7QgkD3UPUVMbF3u"}}]}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateIAPItemConfig' test.out

#- 69 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteIAPItemConfig' test.out

#- 70 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetPlayStationIAPConfig' test.out

#- 71 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "zL6QvEaGisoBaISp"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdatePlaystationIAPConfig' test.out

#- 72 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeletePlaystationIAPConfig' test.out

#- 73 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "w3ttOtfty5AEnMco", "publisherAuthenticationKey": "vM4AZ3moaikP8EE0"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateSteamIAPConfig' test.out

#- 75 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteSteamIAPConfig' test.out

#- 76 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetTwitchIAPConfig' test.out

#- 77 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "6MIjTW1ZYAII5DUj", "clientSecret": "HMqXcPIhF6WXQ3jX", "organizationId": "rWUg1reEpQujPl5K"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateTwitchIAPConfig' test.out

#- 78 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteTwitchIAPConfig' test.out

#- 79 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'GetXblIAPConfig' test.out

#- 80 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "WUNrljjEXn5HSX1j"}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateXblIAPConfig' test.out

#- 81 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'DeleteXblAPConfig' test.out

#- 82 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'QKQtZThWVvQFqui2' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'aFgss544jAjBtRCZ' \
    --itemId 'vXZWjhaB8RNT50X6' \
    --itemType 'LOOTBOX' \
    --endTime '2PGwe6gtQ6LKjcsV' \
    --startTime 'qsGG5GmVjtp1z3fK' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'W9gRwdvgEaQVysUU' \
    --itemId 'RlhAcCDOxYlRXSep' \
    --itemType 'OPTIONBOX' \
    --endTime 'PSQ9A0fiHZDjhzFU' \
    --startTime 'zI9ZrXB8z9iFK71t' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'MHUhxVDwygnfPQvN' \
    --body '{"categoryPath": "gZussTCdKL4h49BZ", "targetItemId": "XrnvHtRumhc71gDm", "targetNamespace": "k7kv2GGooTEoCrWt"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XYntCIiDEKQUObRd' \
    --body '{"appId": "42bsvEfzstqZweNE", "appType": "DEMO", "baseAppId": "RyJQUf8xgmlXxwG1", "boothName": "ZEd9bI6rpgDXZFVz", "categoryPath": "gLWPwWvNX4RrTd2R", "clazz": "CfgcESoOBV6XGNaH", "displayOrder": 28, "entitlementType": "CONSUMABLE", "ext": {"wtNbI11LigtOHUw8": {}, "0NQLe0UDfyqodljy": {}, "M4iM6ffgb9fTQAgU": {}}, "features": ["eAIaohcVbcG2bsd2", "fUL1dI7cZdGJ87fx", "ZtECR9LxSFLdNFzI"], "images": [{"as": "r1VkbxcJQwiryn8y", "caption": "9WQ1NYPGnUMMZ8EH", "height": 7, "imageUrl": "BRPOoGyhScLKRrFX", "smallImageUrl": "XUKEvKKF4x8lpQf9", "width": 34}, {"as": "Uht81aF3HkmoUqw0", "caption": "0Gbz0g8SFeFAbdcg", "height": 73, "imageUrl": "9W2Xf4pDGikMK791", "smallImageUrl": "wBAsaVFPNSqHXeZ8", "width": 45}, {"as": "k8A46h6nVBTVQ6Aa", "caption": "EiJm6yQVGqv53jlm", "height": 8, "imageUrl": "Ul4ar4fHN3vJF3GL", "smallImageUrl": "a5lMFoyHVwxlTwXj", "width": 18}], "itemIds": ["Xu1vpLaKNF6XfzLJ", "FMieEMdpsp9RyyBq", "6sNXQjboZW11Yu2q"], "itemQty": {"Liafj1x6fgchMXkt": 90, "QaMXSm6ioUpPtJr3": 75, "9FWzYptAbpkhnsL4": 59}, "itemType": "EXTENSION", "listable": false, "localizations": {"GNoyxUdpH8bikP1X": {"description": "qCXOPHlFMgXSivVP", "localExt": {"rvxGBB8F79ymqAdA": {}, "5aYcdoT9m8LVZPjW": {}, "f3Je84EmWP4OfDpl": {}}, "longDescription": "SzFdolsETqJ6vlLF", "title": "zHBL9LAg96Si3alC"}, "erD9jbNxCtQNNwPf": {"description": "CDTnJodboaHKpVN9", "localExt": {"5Jt01754T5R6KKXG": {}, "VeGaBHmzltsBLEXm": {}, "TDCq18A5Q8lZIr3N": {}}, "longDescription": "QBlRnCFHTAcwkupl", "title": "xHzcJpsUm4awI96s"}, "mkzmiUyvu63pclSp": {"description": "7wJo5DyzeqVSClEY", "localExt": {"aqdIN7kAtsXkEbrR": {}, "0XEQQkRp6ncDLsph": {}, "aX5ywInj0NDvL8Cp": {}}, "longDescription": "kpGeyVhTrQSNuFYS", "title": "47hYey4JZTGhfWt4"}}, "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 29, "duration": 98, "endDate": "1979-03-22T00:00:00Z", "itemId": "AZakIi5uqsDKhZC6", "itemSku": "UUsmJCzOCqwpfDTU", "itemType": "NbRqzTlN5iQfwct3"}, {"count": 61, "duration": 34, "endDate": "1996-12-18T00:00:00Z", "itemId": "EN6NYLRxzM1dXQib", "itemSku": "s0zdkNRDDAZb5E2O", "itemType": "qK9ajWx3irrrDYCM"}, {"count": 31, "duration": 74, "endDate": "1977-11-20T00:00:00Z", "itemId": "sPZ64M7zEzSYiwrt", "itemSku": "DdIXcQbT0B27eDft", "itemType": "hCjGMEKTgVVcKlvb"}], "name": "kv8E5l0ZSxY7llNp", "odds": 0.8275500164500508, "type": "REWARD_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 8, "duration": 36, "endDate": "1978-02-28T00:00:00Z", "itemId": "9jHcfM9I4Lm1a80q", "itemSku": "YZ3cGYwGhkWRYH7n", "itemType": "AGSuSagpTKfEUCzV"}, {"count": 34, "duration": 93, "endDate": "1994-12-16T00:00:00Z", "itemId": "FUvczZO7dFtcgYKK", "itemSku": "b1OzJuuv3JEy8Vks", "itemType": "YIyIqrGol1DAfHAM"}, {"count": 41, "duration": 90, "endDate": "1974-02-16T00:00:00Z", "itemId": "6o6ew8dxpgPW1DqK", "itemSku": "aqIeusCuCbzIAuwC", "itemType": "NMmfe6iJyVEcwF0B"}], "name": "hfRl3AA12ah7WLGc", "odds": 0.9091031181227767, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 20, "duration": 4, "endDate": "1995-05-16T00:00:00Z", "itemId": "BWIUlbyMqoCvCQWa", "itemSku": "4YUjRypFPl4x3In0", "itemType": "TCThjhmnNFSamgg7"}, {"count": 54, "duration": 52, "endDate": "1982-12-03T00:00:00Z", "itemId": "VK16vGYNEeLqYAEx", "itemSku": "YgpYuLVmYHrToAxQ", "itemType": "9MxlOz5QIzKZ5Cq9"}, {"count": 92, "duration": 92, "endDate": "1989-08-03T00:00:00Z", "itemId": "2q1LAUWNmnzG3YJ5", "itemSku": "GYLW54rCyU5XRzfX", "itemType": "Nwk76OL0NgtWKySy"}], "name": "VQqBD3ARotb9eJzK", "odds": 0.5941184855528238, "type": "PROBABILITY_GROUP", "weight": 43}], "rollFunction": "CUSTOM"}, "maxCount": 79, "maxCountPerUser": 12, "name": "LIRZFDIwZ5ONqzPr", "optionBoxConfig": {"boxItems": [{"count": 52, "duration": 12, "endDate": "1993-09-30T00:00:00Z", "itemId": "uZ3p4cG6OzZPvLQo", "itemSku": "UiN5iUz8EgXUQDlh", "itemType": "foUgeFELUSehAU3e"}, {"count": 24, "duration": 28, "endDate": "1995-10-20T00:00:00Z", "itemId": "Rtocl1HLxanpwVVJ", "itemSku": "0inB6zgJBRItMZ16", "itemType": "vah80eFCmW4HKYml"}, {"count": 33, "duration": 44, "endDate": "1973-11-25T00:00:00Z", "itemId": "nOXWpCnddFbADsHE", "itemSku": "vqixrMTn7k5n9cKO", "itemType": "QPV3V5BQy94IEKJl"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 28, "fixedTrialCycles": 52, "graceDays": 98}, "regionData": {"GbZDtPAqYAPvz19V": [{"currencyCode": "J3H8UFSNsNYrks7i", "currencyNamespace": "EztP8ehSBIk6pDU3", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1994-04-17T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1994-01-24T00:00:00Z", "expireAt": "1990-01-11T00:00:00Z", "price": 60, "purchaseAt": "1997-03-31T00:00:00Z", "trialPrice": 18}, {"currencyCode": "iKP09p3ODZrFQXvH", "currencyNamespace": "5c9DnRUQ4WMGJIjO", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1978-10-03T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-03-06T00:00:00Z", "expireAt": "1980-04-29T00:00:00Z", "price": 83, "purchaseAt": "1985-08-12T00:00:00Z", "trialPrice": 90}, {"currencyCode": "EZJ8YbeXPygTrTNz", "currencyNamespace": "BopBgQu7MLnDulvi", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1991-08-21T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1994-10-20T00:00:00Z", "expireAt": "1995-02-15T00:00:00Z", "price": 1, "purchaseAt": "1987-10-24T00:00:00Z", "trialPrice": 76}], "e3aSg83cgphA9G6V": [{"currencyCode": "XNbwP0minyY5j6ou", "currencyNamespace": "1kqUPXMcpMxHiv9a", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1998-07-12T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-06-29T00:00:00Z", "expireAt": "1997-09-07T00:00:00Z", "price": 73, "purchaseAt": "1987-10-30T00:00:00Z", "trialPrice": 86}, {"currencyCode": "869GYlp148XF4632", "currencyNamespace": "stvYf4LrELgjbT2A", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1997-03-05T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1987-09-22T00:00:00Z", "expireAt": "1978-10-27T00:00:00Z", "price": 78, "purchaseAt": "1972-08-28T00:00:00Z", "trialPrice": 84}, {"currencyCode": "54IdCgaqkb1M985k", "currencyNamespace": "qE5U9dZwcHpkKhu7", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1974-04-21T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1980-03-16T00:00:00Z", "expireAt": "1989-02-02T00:00:00Z", "price": 19, "purchaseAt": "1982-04-20T00:00:00Z", "trialPrice": 52}], "bOHDpfaYoRmGCBtw": [{"currencyCode": "uIABEuXwq9WCzW51", "currencyNamespace": "5yckBgki0mf7vgqx", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1983-11-16T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1973-09-05T00:00:00Z", "expireAt": "1971-03-21T00:00:00Z", "price": 68, "purchaseAt": "1978-05-06T00:00:00Z", "trialPrice": 100}, {"currencyCode": "rbr8kn7AsSO37giS", "currencyNamespace": "MHFeuyrZBQx6zGjr", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1987-01-17T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1996-06-06T00:00:00Z", "expireAt": "1979-01-27T00:00:00Z", "price": 93, "purchaseAt": "1978-01-10T00:00:00Z", "trialPrice": 53}, {"currencyCode": "gLkG5VRWXw6sga3i", "currencyNamespace": "0RBIjfMN6IFXVSoU", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1979-05-17T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1977-08-20T00:00:00Z", "expireAt": "1973-03-14T00:00:00Z", "price": 8, "purchaseAt": "1999-03-15T00:00:00Z", "trialPrice": 19}]}, "saleConfig": {"currencyCode": "AJBRvbrKHEKm91t5", "price": 94}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "rXkCyhYGhJzNuGWK", "stackable": true, "status": "ACTIVE", "tags": ["YrbtNutCYzxDWv39", "YDAzAfilKb8GnFgL", "iVUfyYGgudZERW3g"], "targetCurrencyCode": "laXONUPW1kCfiBss", "targetNamespace": "53OWdjWtwcdpZyKM", "thumbnailUrl": "aATAlwzcFtp8I8Gx", "useCount": 29}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'jS2kfjScIMeuoVCU' \
    --appId '5cDT55Q2R02GMC1S' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate '8mpGtoWaCYGMH8nr' \
    --baseAppId 'JdcBjPEJlNOth4nz' \
    --categoryPath 'gW7ZkTUHOvhVCt2y' \
    --features 'F5hHLPPXbVhireA9' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '90' \
    --offset '34' \
    --region 'WKYI8HYHyDuIWvWh' \
    --sortBy '["name", "createdAt:desc", "updatedAt:asc"]' \
    --storeId 'colP4NwL5T91Pkf5' \
    --tags '4vBKcvZ4EB1C2jIV' \
    --targetNamespace 'MELNK2LLNaIj0BPD' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["SOK6XXhhAiuFzKcS", "p9p7okIqubs61bTT", "i0rWrgZI7wbDcbJV"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'PeUDgYZCG7O1cDTF' \
    --sku 'ATHV9GCVgZbzr8Ul' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'hrD8sGwkk1HU2TmL' \
    --populateBundle 'true' \
    --region 'R4b3pz5LfLPwS8ts' \
    --storeId '14PiOLQVoDvLcsIv' \
    --sku 'oZHOWIyteknh40OR' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'LdXB7iIIvF17dnN0' \
    --sku '1cpElCNZMkjMpErE' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["x0LhS5Jk2Era2gJ7", "RMsfVZDsPapIDKUZ", "MSVUcfpiwjII45vg"]' \
    --storeId 'fVr4hA9Q1vL3nZts' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'dztpdkOJEzcPv4Ev' \
    --region 'GoQTecFQfw2aPdEC' \
    --storeId 'FDVAbfnPuN21CRcN' \
    --itemIds 'iVV6OZYW2B3s1Qtg' \
    > test.out 2>&1
eval_tap $? 94 'BulkGetLocaleItems' test.out

#- 95 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetAvailablePredicateTypes' test.out

#- 96 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'DwNOJrC5qkDHH3fm' \
    --body '{"itemIds": ["UB5cjFuXv0gtsgUO", "899zvICSaKjA4qs0", "KbPKP6Y0lrtVGaUB"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '01wwByW5LZxtlPEr' \
    --body '{"changes": [{"itemIdentities": ["nr2t1iXTVGje11ia", "vWzw79anSs8SB47R", "ORDwgydcfcZE3OpO"], "itemIdentityType": "ITEM_ID", "regionData": {"UBOCULvCPYoCGb2e": [{"currencyCode": "2qK7GqQ0raBbQqUo", "currencyNamespace": "EqVRlGikoyePNEDs", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1990-05-19T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1993-09-09T00:00:00Z", "discountedPrice": 72, "expireAt": "1986-01-31T00:00:00Z", "price": 69, "purchaseAt": "1981-01-03T00:00:00Z", "trialPrice": 33}, {"currencyCode": "oihTXIuo6xDxPZUC", "currencyNamespace": "vyCCwMhKMcHFyWwZ", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1974-02-01T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1998-11-27T00:00:00Z", "discountedPrice": 43, "expireAt": "1977-10-20T00:00:00Z", "price": 98, "purchaseAt": "1993-12-04T00:00:00Z", "trialPrice": 85}, {"currencyCode": "MlFPxVRzhBn8IPs0", "currencyNamespace": "BWDB3hnxQGyMBHLo", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1982-09-29T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-11-03T00:00:00Z", "discountedPrice": 94, "expireAt": "1984-06-09T00:00:00Z", "price": 49, "purchaseAt": "1987-06-22T00:00:00Z", "trialPrice": 84}], "qPOh9JpKNIzYKPRf": [{"currencyCode": "ZzdALfTJR5mq0nGd", "currencyNamespace": "q4bGNjPKxPFy1vKh", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1983-08-15T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1977-06-29T00:00:00Z", "discountedPrice": 26, "expireAt": "1985-11-28T00:00:00Z", "price": 73, "purchaseAt": "1999-03-08T00:00:00Z", "trialPrice": 43}, {"currencyCode": "4XonYARmn5Mu3DnN", "currencyNamespace": "sV7BulYSxLR4qPbd", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1989-10-06T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1979-06-01T00:00:00Z", "discountedPrice": 94, "expireAt": "1974-09-06T00:00:00Z", "price": 17, "purchaseAt": "1985-08-02T00:00:00Z", "trialPrice": 84}, {"currencyCode": "utGSAXP3OuWy1u8L", "currencyNamespace": "ijqFAr6Nn6hLToQR", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1981-01-28T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1997-08-04T00:00:00Z", "discountedPrice": 84, "expireAt": "1987-08-07T00:00:00Z", "price": 46, "purchaseAt": "1980-06-11T00:00:00Z", "trialPrice": 33}], "YHi2XSDDso9hAayW": [{"currencyCode": "d1BN2EddGmqxAfmQ", "currencyNamespace": "eTTU0CoC5KlnoIrl", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1997-11-19T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1988-11-11T00:00:00Z", "discountedPrice": 67, "expireAt": "1976-03-14T00:00:00Z", "price": 84, "purchaseAt": "1988-10-29T00:00:00Z", "trialPrice": 84}, {"currencyCode": "ihvkFKm1t1qydwGN", "currencyNamespace": "McmrFdUPnbupQMPI", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1978-07-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1994-06-19T00:00:00Z", "discountedPrice": 80, "expireAt": "1984-09-10T00:00:00Z", "price": 24, "purchaseAt": "1984-12-12T00:00:00Z", "trialPrice": 71}, {"currencyCode": "UY8Xnwbz0mg9bYrB", "currencyNamespace": "57PNm2sq36sqeJe9", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1980-05-31T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1983-09-04T00:00:00Z", "discountedPrice": 38, "expireAt": "1991-09-05T00:00:00Z", "price": 3, "purchaseAt": "1971-02-08T00:00:00Z", "trialPrice": 55}]}}, {"itemIdentities": ["0LpdVtwYy7iFLCaO", "Ul3wIS9hLRgkRi6K", "kpfNHVv4e666MbSW"], "itemIdentityType": "ITEM_ID", "regionData": {"kXaBJ3eIkJzFHf3o": [{"currencyCode": "1FdqYtTXVeI6CWvI", "currencyNamespace": "79GfWCgdZNaRjwB6", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1978-04-26T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1984-08-23T00:00:00Z", "discountedPrice": 45, "expireAt": "1980-12-24T00:00:00Z", "price": 47, "purchaseAt": "1980-08-20T00:00:00Z", "trialPrice": 0}, {"currencyCode": "DkW1Dlprqe4CxT1Q", "currencyNamespace": "VUvnwuLdG2DwzqjN", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1976-07-11T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1989-02-09T00:00:00Z", "discountedPrice": 61, "expireAt": "1985-08-03T00:00:00Z", "price": 40, "purchaseAt": "1979-04-16T00:00:00Z", "trialPrice": 0}, {"currencyCode": "TLZmwK3i8NebHfXW", "currencyNamespace": "1UdicHBZtU3AJHuZ", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1975-05-14T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1976-04-18T00:00:00Z", "discountedPrice": 2, "expireAt": "1984-01-30T00:00:00Z", "price": 13, "purchaseAt": "1983-08-12T00:00:00Z", "trialPrice": 75}], "KScR0dbRNaTqBFEi": [{"currencyCode": "8Njfykv86FQ81cLg", "currencyNamespace": "08G2ZBjG7FIC2eQb", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1996-01-19T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1972-04-17T00:00:00Z", "discountedPrice": 88, "expireAt": "1980-12-01T00:00:00Z", "price": 99, "purchaseAt": "1997-07-02T00:00:00Z", "trialPrice": 46}, {"currencyCode": "54hJAeMcmyu271IP", "currencyNamespace": "RXkBn1AiLAO9EOmL", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1978-12-03T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1991-02-22T00:00:00Z", "discountedPrice": 1, "expireAt": "1997-01-24T00:00:00Z", "price": 80, "purchaseAt": "1986-08-19T00:00:00Z", "trialPrice": 40}, {"currencyCode": "BdEh5rMmUAcvvgTK", "currencyNamespace": "xKo367QuyYERVifT", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1978-01-02T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1976-02-18T00:00:00Z", "discountedPrice": 79, "expireAt": "1990-12-10T00:00:00Z", "price": 73, "purchaseAt": "1993-05-13T00:00:00Z", "trialPrice": 57}], "4oXkZMcGwBFWBYT6": [{"currencyCode": "ZmiVNE9j8P7A59ix", "currencyNamespace": "PPGXZIFMNDTnGkxq", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1983-11-24T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1974-09-03T00:00:00Z", "discountedPrice": 52, "expireAt": "1998-04-12T00:00:00Z", "price": 41, "purchaseAt": "1998-11-09T00:00:00Z", "trialPrice": 42}, {"currencyCode": "aVDi3ubL6de3bAEa", "currencyNamespace": "MRvmh11dEDqkWoNk", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1997-05-07T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1990-01-21T00:00:00Z", "discountedPrice": 60, "expireAt": "1974-04-24T00:00:00Z", "price": 39, "purchaseAt": "1995-11-12T00:00:00Z", "trialPrice": 24}, {"currencyCode": "tWg2sYMVm2GI3vZC", "currencyNamespace": "BT5VQjz1JvIGmu5j", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1986-10-19T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1991-03-04T00:00:00Z", "discountedPrice": 33, "expireAt": "1981-07-08T00:00:00Z", "price": 75, "purchaseAt": "1988-03-04T00:00:00Z", "trialPrice": 71}]}}, {"itemIdentities": ["6LCN57mhuoF1mYhj", "D6tN0vKlsjSgenyQ", "C4J3oM7UJMtexISj"], "itemIdentityType": "ITEM_ID", "regionData": {"kvEp5vMBj0C8HiCx": [{"currencyCode": "duylOi8QdrQB7tVL", "currencyNamespace": "plJmzgU5QUQkJxEF", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1996-10-25T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-08-29T00:00:00Z", "discountedPrice": 8, "expireAt": "1976-04-03T00:00:00Z", "price": 1, "purchaseAt": "1997-08-04T00:00:00Z", "trialPrice": 71}, {"currencyCode": "iUg1ZiUoTrd3ue2f", "currencyNamespace": "t5SxqKgsgjlzvjvw", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1976-12-22T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1985-04-11T00:00:00Z", "discountedPrice": 8, "expireAt": "1990-01-11T00:00:00Z", "price": 100, "purchaseAt": "1978-11-08T00:00:00Z", "trialPrice": 71}, {"currencyCode": "FzdIfJm3daiNKwPG", "currencyNamespace": "N5qDhs01Un07AokO", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1990-02-05T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1985-05-03T00:00:00Z", "discountedPrice": 21, "expireAt": "1971-06-09T00:00:00Z", "price": 33, "purchaseAt": "1977-04-16T00:00:00Z", "trialPrice": 89}], "E0A9qI2n1zc4TB2v": [{"currencyCode": "L1uHDOrFb864GtCX", "currencyNamespace": "ELQFe74lsy3M3W7b", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1978-06-29T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1996-08-03T00:00:00Z", "discountedPrice": 64, "expireAt": "1978-07-27T00:00:00Z", "price": 30, "purchaseAt": "1980-09-25T00:00:00Z", "trialPrice": 78}, {"currencyCode": "GKynVSJMB5L8tRjL", "currencyNamespace": "xRAoY35JuXh9zEx8", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1976-08-27T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1995-11-24T00:00:00Z", "discountedPrice": 45, "expireAt": "1972-09-26T00:00:00Z", "price": 86, "purchaseAt": "1985-03-12T00:00:00Z", "trialPrice": 41}, {"currencyCode": "ZA1ru2t62UtHY6n6", "currencyNamespace": "bE68oNUxkQ2LVim9", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1994-04-19T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1999-12-14T00:00:00Z", "discountedPrice": 97, "expireAt": "1988-07-27T00:00:00Z", "price": 40, "purchaseAt": "1976-07-19T00:00:00Z", "trialPrice": 58}], "yJUfN6VAO4ESpbRT": [{"currencyCode": "wal6zzW5tZFGp0lG", "currencyNamespace": "paE0L1NviQwLPngG", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1971-09-23T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-04-09T00:00:00Z", "discountedPrice": 64, "expireAt": "1998-04-13T00:00:00Z", "price": 86, "purchaseAt": "1978-07-23T00:00:00Z", "trialPrice": 21}, {"currencyCode": "6vMg2Mvuy2q6gtrH", "currencyNamespace": "uWlh0VH8BCDdvTsn", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1974-11-03T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1990-07-17T00:00:00Z", "discountedPrice": 1, "expireAt": "1984-11-28T00:00:00Z", "price": 47, "purchaseAt": "1989-02-26T00:00:00Z", "trialPrice": 97}, {"currencyCode": "LEEiOEQ5O0mU6Te5", "currencyNamespace": "OPcoYqYqtODUNKhU", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1977-09-12T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1995-01-15T00:00:00Z", "discountedPrice": 82, "expireAt": "1989-12-30T00:00:00Z", "price": 25, "purchaseAt": "1976-08-23T00:00:00Z", "trialPrice": 86}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '89' \
    --offset '18' \
    --sortBy 'WXroyAQdOiDlmrfE' \
    --storeId '2MVYIt1PJeoPPki5' \
    --keyword 'WUVJhOeFgOBL1AVC' \
    --language 'PYWtcirTQOHshQCt' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '9' \
    --offset '82' \
    --sortBy '["name", "displayOrder:desc", "displayOrder"]' \
    --storeId 'vn2HCq5TGFxokqYF' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'T7un4nwyIyrP8QOS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'G92lvKZpbTzT6Jw7' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'ZuLhqSQNo9Diuyat' \
    --namespace $AB_NAMESPACE \
    --storeId 'uc2x9oNnZP0fzzZw' \
    --body '{"appId": "I6OCrOoFOXNfMFqI", "appType": "DEMO", "baseAppId": "sm07QuLkYCO7SS1X", "boothName": "Hmm5904cMwz78MMh", "categoryPath": "ajtm2BdLMunXBufB", "clazz": "IVQNblGAZnisfXpc", "displayOrder": 29, "entitlementType": "DURABLE", "ext": {"D2A26vRovvndmJMN": {}, "7rrNZHUWizjepCwS": {}, "7P39pdKMy0vEfj7Q": {}}, "features": ["Wn0Nw1rWWsCnqf1W", "kBRshcldHSBmtFog", "5J8AR1Gw1YjSkcqQ"], "images": [{"as": "Kyy5ffWLFnUNoOkw", "caption": "UDvPoQnJT0VyZEzQ", "height": 97, "imageUrl": "3fILosJ8QhiUNZs3", "smallImageUrl": "u95b9IIi1OT24NXV", "width": 44}, {"as": "q10BQexUUc01ASdC", "caption": "RFruSRkE3HWUH3sn", "height": 70, "imageUrl": "1WdaF2a3cbxKvexm", "smallImageUrl": "pAXe5pOCfWLWu2ka", "width": 51}, {"as": "jb1GZj8XgkDx1OmP", "caption": "YwFYp6uMfe2P3OlL", "height": 42, "imageUrl": "SaN8FWP1YuAxps18", "smallImageUrl": "z2ds3nfHBLEafUzL", "width": 64}], "itemIds": ["DluFAO620KYFVnxa", "rqb7yRZotB97w4xK", "z0pXoWXkykS7GbbA"], "itemQty": {"GXKGpklzeXj282fi": 26, "K2OC8xkON3utUsjA": 8, "YdcIGOFBada74zDF": 40}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"FZLg4yVkI35gzspb": {"description": "AFDq8uRrFQJYzUoH", "localExt": {"ofNgJnmVTLuoyGoh": {}, "wPtuVK4V9vVkyPa6": {}, "2Jbz1C3beXNV491S": {}}, "longDescription": "CV1T6jilAGkXi2N0", "title": "FNUClXBdAkApdHfC"}, "KUwN7NyInylyxWuy": {"description": "e79G3zbkJW3Y5AmI", "localExt": {"cpKC1AjdUJslG46x": {}, "Qc9GxnCJEJVuvOSq": {}, "5XbGnrziw050sP5Z": {}}, "longDescription": "QFtSH2CYb2J40JK3", "title": "bpvgEtJgbtnWJu4e"}, "h8aHzgisiebwec9i": {"description": "zJApIDdMXmFFRAPu", "localExt": {"llIJUkr5SzA9fXcR": {}, "2VsBDaAt6kdGALOo": {}, "X6piZh7O3VyyCNwT": {}}, "longDescription": "yC8qaorYRWuBy09k", "title": "mgJ25PD9ecQcUJv8"}}, "lootBoxConfig": {"rewardCount": 73, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 55, "endDate": "1993-08-23T00:00:00Z", "itemId": "l7xfpMzBcjGzGHEn", "itemSku": "hDPqWQa4dXjDNJSX", "itemType": "k9g7eNigUBAE68vQ"}, {"count": 69, "duration": 33, "endDate": "1981-11-30T00:00:00Z", "itemId": "suJkWwbISm86ZNZq", "itemSku": "26W9Y7AjXsCXacMt", "itemType": "gQtT0QvBKUnGdWHu"}, {"count": 99, "duration": 78, "endDate": "1995-01-05T00:00:00Z", "itemId": "L0NfvgjGVvPN9mmr", "itemSku": "FnPOW8muXNBIQefW", "itemType": "s6ocCh5BYqwNeLcX"}], "name": "yhZjSPhYPKu7w8NR", "odds": 0.5283564291841814, "type": "REWARD", "weight": 17}, {"lootBoxItems": [{"count": 16, "duration": 24, "endDate": "1980-08-15T00:00:00Z", "itemId": "VK9cRQyqbpqc3pEf", "itemSku": "24aHMnfcAGSPJTbC", "itemType": "k3bqDOwX1QP2Jv5H"}, {"count": 7, "duration": 31, "endDate": "1997-05-02T00:00:00Z", "itemId": "LSWz4g92rlPlt5pc", "itemSku": "GNkq1U2wtAZIGkIP", "itemType": "VjbytHL9ttZu0pa8"}, {"count": 85, "duration": 36, "endDate": "1977-05-05T00:00:00Z", "itemId": "DPMmy4LmfKJ8hL5J", "itemSku": "HjurVNYuAsOwsMiX", "itemType": "iwD5ULHs9bymYDk6"}], "name": "8CX9DtYRNGP5dTMQ", "odds": 0.2701610852245858, "type": "REWARD_GROUP", "weight": 44}, {"lootBoxItems": [{"count": 77, "duration": 93, "endDate": "1990-03-31T00:00:00Z", "itemId": "mI6vYWYTmgs68wIL", "itemSku": "G7hEl9BN69Zz5uxz", "itemType": "yNZq30lhhs2ByT36"}, {"count": 97, "duration": 87, "endDate": "1988-08-04T00:00:00Z", "itemId": "rSFGWYiIMRHKPZ6P", "itemSku": "bNACE0lSDq8ud0L2", "itemType": "12MPEWaMycCpe09E"}, {"count": 21, "duration": 43, "endDate": "1997-12-31T00:00:00Z", "itemId": "shputhDZpmxkrL5D", "itemSku": "2ZMuZxsukHkiyz4E", "itemType": "LjUEwLYtcldOwKDY"}], "name": "h7Kj5FQuMSvdZ095", "odds": 0.6206218392791444, "type": "REWARD_GROUP", "weight": 76}], "rollFunction": "CUSTOM"}, "maxCount": 93, "maxCountPerUser": 19, "name": "x9OAGJwOC6jscgt2", "optionBoxConfig": {"boxItems": [{"count": 45, "duration": 52, "endDate": "1976-05-05T00:00:00Z", "itemId": "8aXm4odIc0mP8zpO", "itemSku": "Qzop8rjggSu9k716", "itemType": "DQnvCeA4lXIGP6gU"}, {"count": 18, "duration": 54, "endDate": "1995-06-28T00:00:00Z", "itemId": "95zxAgedqanntDbL", "itemSku": "Ux7hhXqSkoqPJg1B", "itemType": "MReHtSw7pYMXjnkv"}, {"count": 18, "duration": 8, "endDate": "1989-11-08T00:00:00Z", "itemId": "1AFABeqhZaVGrIB0", "itemSku": "dTMcQNtVsz758Ian", "itemType": "2kU5JGLyNeq8AIYE"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 94, "fixedTrialCycles": 59, "graceDays": 66}, "regionData": {"ePp6K7J8sK2HMNr0": [{"currencyCode": "8EHb2g7rD218kw3h", "currencyNamespace": "pzLedm4UWE7GeNjt", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1972-02-17T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1997-06-12T00:00:00Z", "expireAt": "1996-07-27T00:00:00Z", "price": 95, "purchaseAt": "1986-08-15T00:00:00Z", "trialPrice": 92}, {"currencyCode": "zz8lhtYsnF8IS2wy", "currencyNamespace": "iaAYLexIYIRwVUnz", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1986-10-10T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1997-06-20T00:00:00Z", "expireAt": "1999-02-10T00:00:00Z", "price": 58, "purchaseAt": "1975-06-06T00:00:00Z", "trialPrice": 71}, {"currencyCode": "UxbFQgFGO0Y5V9PQ", "currencyNamespace": "ghtUpUwECFfHkQmN", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1984-10-30T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1972-04-29T00:00:00Z", "expireAt": "1983-12-06T00:00:00Z", "price": 94, "purchaseAt": "1991-06-15T00:00:00Z", "trialPrice": 90}], "HaQqQrMUKBH1TaLu": [{"currencyCode": "ArJ7BBsZbSLrdnOF", "currencyNamespace": "ybUnNf1nMWOEd6bQ", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1979-09-07T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1971-06-14T00:00:00Z", "expireAt": "1995-04-17T00:00:00Z", "price": 64, "purchaseAt": "1981-07-24T00:00:00Z", "trialPrice": 54}, {"currencyCode": "fy1htOOsJjqEUIw5", "currencyNamespace": "hQFpGSm7P6xpzRvR", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1977-07-24T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1983-01-18T00:00:00Z", "expireAt": "1990-11-29T00:00:00Z", "price": 92, "purchaseAt": "1988-07-06T00:00:00Z", "trialPrice": 36}, {"currencyCode": "keuYHlNevr8dWJS0", "currencyNamespace": "UCynI1j605Q7b9F5", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1979-08-07T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1975-12-02T00:00:00Z", "expireAt": "1999-09-05T00:00:00Z", "price": 48, "purchaseAt": "1976-05-25T00:00:00Z", "trialPrice": 76}], "Gb3RsL49oAspObgG": [{"currencyCode": "RHc0FYq5jB9Bunsu", "currencyNamespace": "B7ncd9NDUiHjGmkW", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1983-08-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-09-27T00:00:00Z", "expireAt": "1972-07-16T00:00:00Z", "price": 75, "purchaseAt": "1996-12-24T00:00:00Z", "trialPrice": 78}, {"currencyCode": "2bBhCUWGuFk6zLUM", "currencyNamespace": "mShPTtH1H5WsMrPN", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1972-05-16T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1998-08-26T00:00:00Z", "expireAt": "1998-07-29T00:00:00Z", "price": 57, "purchaseAt": "1987-02-18T00:00:00Z", "trialPrice": 23}, {"currencyCode": "2N9H44J7fRFTaRZA", "currencyNamespace": "o1DPE1LnrMUU1PtB", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1975-04-26T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1987-03-21T00:00:00Z", "expireAt": "1974-05-09T00:00:00Z", "price": 37, "purchaseAt": "1997-03-01T00:00:00Z", "trialPrice": 69}]}, "saleConfig": {"currencyCode": "CKhRAzdsCY36tAvb", "price": 71}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "LXWrweLKyJPkZcoj", "stackable": false, "status": "ACTIVE", "tags": ["xSSUCRKFgBO76wRM", "YnYccHwanKgGZnE0", "haOEzOBaQw9P6749"], "targetCurrencyCode": "ftxT6kDqwcuX1Bbo", "targetNamespace": "g6MCPj4bwjsBGxxz", "thumbnailUrl": "7p0d8DCutHxv6WTA", "useCount": 28}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'BCMItgn0ttDy43Ri' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'fUwDABAKgQUQJpRR' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'QQGBCbw7fPPAS89J' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 99, "orderNo": "3S4M80x7inW0Fjhn"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'YCv4yOJw0xEEcgiO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'bANFXFIFMd4O7sMR' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'XnpCFlszLBfD7eDl' \
    --namespace $AB_NAMESPACE \
    --storeId 'wLIdgadApYfqFEwb' \
    --body '{"carousel": [{"alt": "FkUypAWfo6coQRlL", "previewUrl": "Df7JNsnR1lFAS1RK", "thumbnailUrl": "DN3TncJVxtKZCTFw", "type": "video", "url": "85xrXBle4fu2vZZ9", "videoSource": "vimeo"}, {"alt": "s0iSOr8h7cm8gUSX", "previewUrl": "KmqI6uIKzrAdWX0G", "thumbnailUrl": "YPnUeN3svaNMGYnM", "type": "video", "url": "7ISPrrRU2uW34dLH", "videoSource": "youtube"}, {"alt": "dHD6U3FXCk5xzRQy", "previewUrl": "XpGopz6ETTkPQOzm", "thumbnailUrl": "keWlZA45Vtut1pW9", "type": "image", "url": "w6XckOryCH86XWVz", "videoSource": "generic"}], "developer": "yi9qbK4VeXxTmtGk", "forumUrl": "agGBMnEMr1BWbMc1", "genres": ["Racing", "Sports", "MassivelyMultiplayer"], "localizations": {"iXCOkJtWE2VICQNc": {"announcement": "KoPRugHh9GIlH2xH", "slogan": "oN667kMrPaMGyLuP"}, "ZacHl2hGDrtXxBBc": {"announcement": "KI5E2gxRauQ0PVoy", "slogan": "c39PaUMAxHhjtKt2"}, "JrELHXzuzDAKJDkl": {"announcement": "rRUmTRLoOuZHW3OP", "slogan": "gz9crtexZOdDYaxS"}}, "platformRequirements": {"80FEQKoy9qHSaW4E": [{"additionals": "rF2kN0jPViVIKiXY", "directXVersion": "G0M2U5ccM93IBGaT", "diskSpace": "rcEmDYOdi1UdPK0b", "graphics": "3grZFKOyFwy4Dwtb", "label": "C1Vj8T2DNDc8v4HL", "osVersion": "5OY8l0rXP0FEyEl6", "processor": "PccQ6EmuDy3v1Qzl", "ram": "36kiiGquj7Rp4NaW", "soundCard": "ZG4mv0X5VLpe3dB8"}, {"additionals": "r0NxBhIKm9CzcppD", "directXVersion": "xni1IAeEfN5617PT", "diskSpace": "FlPHTAIooQEP7lwg", "graphics": "DvkpBlvFuweZinzI", "label": "ycoA0fzb3mcmb6v5", "osVersion": "dcyPJ5gNwuOkSmYX", "processor": "GjnPd25n96MAYBnc", "ram": "oF9B9fozajKW16YM", "soundCard": "xMzW1KcwVEP2WyGH"}, {"additionals": "WlvuzoNaOAs8tkt3", "directXVersion": "ihf7qSvXONL6Oxx7", "diskSpace": "IgoMfpxqSzRGWhJk", "graphics": "mYygMHJacdaE3fNN", "label": "OpGtp8kAfMIZmY2N", "osVersion": "Uf4iSnNjyXU8bT05", "processor": "mZJmvvbiiUs70Iha", "ram": "ptl9EaQP5G6ZZlWm", "soundCard": "Je1xUCEhdeZ5J214"}], "T2vp0PRJCPTrCB1p": [{"additionals": "U3QqxhzyQxzaRvou", "directXVersion": "UcX223Z9mC25z0Hw", "diskSpace": "fZBIXn7cyk6wdGW8", "graphics": "BlFKTZVX5uatWFqg", "label": "cZiCnGRycP96sZy2", "osVersion": "1vY1jVi9UT2JmvJX", "processor": "Of1jbZuyNymNaJQL", "ram": "kKAI4Y9qJ0uTx2b0", "soundCard": "9IQ7b0dTb2hLF6aT"}, {"additionals": "9dWq4nbfEgCZSeD2", "directXVersion": "Uc04bSL1rye4l6qM", "diskSpace": "HkG3LOpCP7gYmgn0", "graphics": "UfWJgneEwjkllht9", "label": "dvXUMRPhQa3ItNY5", "osVersion": "eZPdhHh3Kf7cL6tl", "processor": "c68e2zxsgyHipeXA", "ram": "XhnrxpxOwqA2b1K9", "soundCard": "SAkok6rLBfRS51A6"}, {"additionals": "lWzBwdZSd6l3ZOyu", "directXVersion": "WawK83f35UP7jJtm", "diskSpace": "n5u4D3beZ5bh10Rc", "graphics": "Z9NTJkksEDBTa9E5", "label": "bhwo8ldRsgyX4OTK", "osVersion": "AulNFBrSYKAFV3jb", "processor": "du5Ir140bnYrsWR3", "ram": "ot2Kg6Df9ANKvNl8", "soundCard": "LkZy5YAmsMj1JesX"}], "q2oMESmE7OPvLhjg": [{"additionals": "br1DwWqx7FXCGe3u", "directXVersion": "mK9LM7ySe72gBfGP", "diskSpace": "F7QWvOyhFq5fxL15", "graphics": "bm2TW40B9k183xNG", "label": "ppfDm3iDVgOX9eaH", "osVersion": "shV7xiUHBTNxbmUA", "processor": "Vs9tzxnsugBycYOR", "ram": "YiPEb4GuraqmkWTc", "soundCard": "BUnMbnX9HDRn5UxK"}, {"additionals": "p2XsZMk4A7Feo7rL", "directXVersion": "ATHmZXIEh4ZHRwkN", "diskSpace": "ghzdwQl7v2H6DxHA", "graphics": "ytUGsX0P9g5gnE2X", "label": "MRODsTawm7HqGvDX", "osVersion": "LOiXffETcfAOnoq4", "processor": "kaUsW5BFkI9xonN0", "ram": "NcR0zxxJMYNeu85k", "soundCard": "zvkcscecEVTFXWV6"}, {"additionals": "xc2Ezlf8BysEMdcZ", "directXVersion": "NroaHvnTcVf73YSO", "diskSpace": "PuMs0oX2Ip2AVQoW", "graphics": "ylrj3QOoP97sPb3v", "label": "UTxvgaBma3b3uagv", "osVersion": "j4LF8U1mdcFQewv4", "processor": "zKHChlWkp9JjoQ4k", "ram": "vECOEVGzDtrWi7Qx", "soundCard": "gY8JJbHJ7FVwjyg5"}]}, "platforms": ["Android", "Android", "Linux"], "players": ["MMO", "LocalCoop", "MMO"], "primaryGenre": "RPG", "publisher": "OYgKpioz02XfgULm", "releaseDate": "1983-07-20T00:00:00Z", "websiteUrl": "gYrvngYXixNgOqoc"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'QGjndSOOBOEajOd5' \
    --namespace $AB_NAMESPACE \
    --storeId 'iBTuzfFHAuLL7EJz' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'vTVFe0nwh1tyavZb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'U0n0YnsXnZTpaEtt' \
    --namespace $AB_NAMESPACE \
    --storeId 'aAFWOYcYyNYXrBOK' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'sJg3v71YtsaanUKF' \
    --itemId 'nU4ZcTS4ThKueGkz' \
    --namespace $AB_NAMESPACE \
    --storeId 'oiloZbUUvX03nPrn' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'ylwnyhMoYl2y8Tj9' \
    --itemId 'QvjSlRTKF7w6SFHk' \
    --namespace $AB_NAMESPACE \
    --storeId 'XEZEXIA2TiEoi7Gx' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '7WCqboObz3ItPMgp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'JWn0mDJx7PKpOwTE' \
    --populateBundle 'true' \
    --region 'keqJqPZMEKnlINK6' \
    --storeId 'd6miOH7hNRoFBIQD' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'F5L4g8smG6NFjnH2' \
    --namespace $AB_NAMESPACE \
    --storeId 'iQrg283WIRvDi0M6' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 10, "comparison": "isLessThanOrEqual", "name": "zhWmkaHUy9g8eCve", "predicateType": "EntitlementPredicate", "value": "rdGVQ4mZoukR4Omz", "values": ["eIFqLrQsSvu83N0l", "dEMBVVoCJW3CRavV", "1zA5njvU1mDaIus3"]}, {"anyOf": 22, "comparison": "isLessThan", "name": "02YgWXYr5dVvUfWf", "predicateType": "SeasonTierPredicate", "value": "uN0WEZo87y0izgPW", "values": ["MifUm0glijD5QBrd", "mbEdhUzMJc5hM6Jy", "jTl4yvih2mMToyxb"]}, {"anyOf": 83, "comparison": "isGreaterThanOrEqual", "name": "Aw5fHx31sLVch8ux", "predicateType": "EntitlementPredicate", "value": "kVDRTpckZz0kr95c", "values": ["QKvdO5YftcycZTAX", "88O1crIevKTS0VNH", "H2xMC8e5VGLkwak7"]}]}, {"operator": "and", "predicates": [{"anyOf": 95, "comparison": "isLessThan", "name": "QUqxssqYGElxBGZi", "predicateType": "SeasonTierPredicate", "value": "ff2PsBUQ32fRLo2E", "values": ["09AXIGwuBzQKcl42", "iG5HYiFTByso7VB9", "a7bvzFMLF0bneneQ"]}, {"anyOf": 57, "comparison": "isGreaterThanOrEqual", "name": "dFYh4KyiI8PlXsgv", "predicateType": "SeasonPassPredicate", "value": "wUYdncI9QZmie9H4", "values": ["M003dR7mm6itSwAd", "AWvnYqjVOzcVGxSl", "EyEBhEz4EotWoRQB"]}, {"anyOf": 9, "comparison": "isGreaterThan", "name": "K6nL7A3FKmKvk0VP", "predicateType": "SeasonTierPredicate", "value": "6BbBZzvg8sLv2Ewb", "values": ["hKmKnGB9ML2TPrFg", "EzeqL9HtPEfegHDf", "xdUu9GHrwgM3NETl"]}]}, {"operator": "and", "predicates": [{"anyOf": 63, "comparison": "is", "name": "4thBSeZIJlR7KgVE", "predicateType": "SeasonPassPredicate", "value": "tXfARCTPbghBo5ec", "values": ["7xXk9HdXvYAKRlyq", "gj7kR45JzDxPlFf5", "fgvFEAmMYLP4hM1z"]}, {"anyOf": 62, "comparison": "isLessThanOrEqual", "name": "4tGHMkXaMEXhv1wh", "predicateType": "SeasonTierPredicate", "value": "sYF2bfSekpPSj0oN", "values": ["cm0wNCiYzJS9OxXq", "2sw87cpBbY2VZ4MG", "DfMihxM0or5og94Z"]}, {"anyOf": 48, "comparison": "isGreaterThanOrEqual", "name": "Ocw9Ez4KWn4Zny5D", "predicateType": "SeasonPassPredicate", "value": "pKIbzSRYTuS5I926", "values": ["9nSnQnqoRP9WGpfM", "5RvwEnQyYYjndmxS", "v5CshBcVFwx8WO80"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'SqChB3NdOJPJQCce' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "GKIaayBjIWdPfAN2"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'lNSPALSgfPda6rrd' \
    --offset '0' \
    --tag 'Kk5QJgWTTbWg0Eqj' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cYH2ewxoZBL0M3ST", "name": "QywOY9QyGe0o5ayn", "status": "ACTIVE", "tags": ["d56gH9PmWzzll0pK", "6PrPjmktFgqf8mUK", "vMJLxgj0fuXLdndg"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'CFpwQInFxcjm7j5r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'LvRB6vvjOQfakKmZ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IfvQ4iPPg9kAyvKP", "name": "ZZmqeJZitzD5lmKn", "status": "INACTIVE", "tags": ["wsT97gGDMlOilewo", "ClbM5vHj6x5bGC2o", "81FWznkKFkg3cJUA"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'RFaXEw6sitHXVrWO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ya8BcVwoOWEO6KO7' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '100' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'RcQSciCtx6zq21yF' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'KV85Ob8YG8yP2ze6' \
    --limit '100' \
    --offset '31' \
    --orderNos '["w1xaznlO101yn8tv", "6P5pQHj3pdRgBZ7s", "bUJNsVKXpBntZKWB"]' \
    --sortBy 'gNZ2x79rEKQNwYIG' \
    --startTime 'Rb4u7hZLX3H80Gdi' \
    --status 'FULFILLED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 122 'QueryOrders' test.out

#- 123 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetOrderStatistics' test.out

#- 124 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'g5exBlHj1lH2TnyP' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ipONeJnsncL4EENl' \
    --body '{"description": "f2zL3F6Biby13No0"}' \
    > test.out 2>&1
eval_tap $? 125 'RefundOrder' test.out

#- 126 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetPaymentCallbackConfig' test.out

#- 127 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "R9Z4po6vThBS8ijZ", "privateKey": "8XyZFcuhwqRJqzCe"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Zo1ACIqs3XDjHf52' \
    --externalId '00lcbroqdYn2TCpg' \
    --limit '86' \
    --notificationSource 'WALLET' \
    --notificationType 'ud2IkcvuE9DnTjpb' \
    --offset '48' \
    --paymentOrderNo 'c0oLKem67J2rgJT3' \
    --startDate 'ji4gQ1Yl2ppvfsUI' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'dAEv2ObQ7HuQDDpT' \
    --limit '82' \
    --offset '63' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "3S5W13Lh3hxhkK47", "currencyNamespace": "poyuBhWlY1zUKf3x", "customParameters": {"VPyWa02qDuGCJBY5": {}, "TNu2pf602MfnsD2b": {}, "T8grpZfaZhsoVpem": {}}, "description": "nbvamqqhYaTb55yf", "extOrderNo": "jdDFJwfERn5wRxP5", "extUserId": "Pj1z26J5MhP0dLqk", "itemType": "SUBSCRIPTION", "language": "bYOH-flTF_YC", "metadata": {"ho8BowlPHH1t10mf": "dLmtawcfohvZESOL", "sWKu53Qzcm5GiQfA": "NJNoJEakdxVFt1Ax", "9vFV7ooTMtzpq0q3": "dtpdfe5MplKgTNWI"}, "notifyUrl": "EECeueGNQuxleBzo", "omitNotification": true, "platform": "RoFxNLceNjk5Iar4", "price": 3, "recurringPaymentOrderNo": "tAQETztVgC5jkXPx", "region": "DEUleM7QWX73BiZw", "returnUrl": "MBmmWSlPEXeuifjv", "sandbox": true, "sku": "VpDNmpvwObUayy3g", "subscriptionId": "UXESEjGFBWdc3Fij", "targetNamespace": "ZCGytaDExlu5E6LB", "targetUserId": "zVSC1dejnO3J42NS", "title": "cU4Nxo2gObmTBTSd"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'ZtrpNAIqgULfVDZm' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0QXWfkOWausR5CJk' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rmS6rwD5bIVtc4fi' \
    --body '{"extTxId": "OtHqwxzAyzYmMnyV", "paymentMethod": "nvdBSAS5B3m24jZm", "paymentProvider": "WXPAY"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hGCzThDi6P5K8Hpc' \
    --body '{"description": "doOWcyamVtpjzVVI"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '4x3Xtgb56T1SRYx1' \
    --body '{"amount": 73, "currencyCode": "MgVLEO4AYmEt8H4b", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 29, "vat": 36}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vIlEldcm5CnOgMOR' \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Xbox", "GooglePlay", "System"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 139 'ResetPlatformWalletConfig' test.out

#- 140 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetRevocationConfig' test.out

#- 141 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 141 'UpdateRevocationConfig' test.out

#- 142 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'DeleteRevocationConfig' test.out

#- 143 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'I8Q3VdSjfwUTX1xR' \
    --limit '65' \
    --offset '25' \
    --source 'ORDER' \
    --startTime 'cM5TCIg8eWNDTn95' \
    --status 'FAIL' \
    --transactionId 'bPlwjpwdefh8M4Fd' \
    --userId 'LRzF4f9TrNAn4sSU' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LLx6Ho402hyAnvCM", "eventTopic": "UMcgFqvbLvCp3aFL", "maxAwarded": 56, "maxAwardedPerUser": 43, "namespaceExpression": "oTKd1Vs4TPjbJnBv", "rewardCode": "EXu9SJ7UGkm7AMw8", "rewardConditions": [{"condition": "BWX7Lsu7yysbyaei", "conditionName": "7TZSYkRU5cxslnyJ", "eventName": "KXaNhwIGtQVfdnCs", "rewardItems": [{"duration": 13, "endDate": "1988-01-19T00:00:00Z", "itemId": "cc51qGhfPrhduo0F", "quantity": 18}, {"duration": 36, "endDate": "1975-04-20T00:00:00Z", "itemId": "fTDrueIfgXpR72oh", "quantity": 99}, {"duration": 84, "endDate": "1988-07-11T00:00:00Z", "itemId": "i5DI74W53eihKQaj", "quantity": 17}]}, {"condition": "Sjyhb5eEgmYzakdl", "conditionName": "3fvdxp1nIOeUpO1o", "eventName": "VPNzNWr581eG1LKw", "rewardItems": [{"duration": 62, "endDate": "1973-02-28T00:00:00Z", "itemId": "iDMHv1jwE5RAkFTZ", "quantity": 16}, {"duration": 36, "endDate": "1985-04-11T00:00:00Z", "itemId": "BlP7lScF0PO0pzA6", "quantity": 66}, {"duration": 51, "endDate": "1993-10-13T00:00:00Z", "itemId": "rfRvi5J6KDnY580u", "quantity": 47}]}, {"condition": "9l9w2K9DCpyxp99x", "conditionName": "rONpJxwH4sDD4pCx", "eventName": "OxkHXYJIUajp4NxC", "rewardItems": [{"duration": 40, "endDate": "1988-07-17T00:00:00Z", "itemId": "Zthh9B4UnGGBIIqM", "quantity": 98}, {"duration": 12, "endDate": "1993-12-03T00:00:00Z", "itemId": "fdWuO1vVfeytLRYj", "quantity": 14}, {"duration": 58, "endDate": "1994-02-24T00:00:00Z", "itemId": "wK1MzyPpgQAVl7py", "quantity": 61}]}], "userIdExpression": "oVktMOZvWhuvjuG5"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'yatbHFzqWiJynYXN' \
    --limit '25' \
    --offset '27' \
    --sortBy '["rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 145 'QueryRewards' test.out

#- 146 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 146 'ExportRewards' test.out

#- 147 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'HlggOgu3ipgYQvR4' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '7HzV0W7p1HzTqeKv' \
    --body '{"description": "DR1k5HDMnPJZdYkl", "eventTopic": "A8WHXyye0cLgCJ51", "maxAwarded": 88, "maxAwardedPerUser": 11, "namespaceExpression": "j1Kz4BQpwRPIUXFx", "rewardCode": "gkqr3MAJQlAtwo7l", "rewardConditions": [{"condition": "EgwPHFO8dUW7dZ8X", "conditionName": "MXvCIZTYEbMWJfPE", "eventName": "8fts6NAecBsGcx1z", "rewardItems": [{"duration": 47, "endDate": "1992-04-27T00:00:00Z", "itemId": "BzY0h73nI4d2vz5t", "quantity": 60}, {"duration": 6, "endDate": "1987-02-06T00:00:00Z", "itemId": "wJ7ooUvsZot9nzag", "quantity": 27}, {"duration": 52, "endDate": "1993-11-06T00:00:00Z", "itemId": "4ZLkAmO2AhAzPaOU", "quantity": 83}]}, {"condition": "UbBO7nuq3iFmCa5Q", "conditionName": "nUIJKHPdbufCiXAn", "eventName": "YVyefwj5J7qv3gJj", "rewardItems": [{"duration": 47, "endDate": "1981-10-30T00:00:00Z", "itemId": "kre5ipgsnYpmWMB1", "quantity": 31}, {"duration": 61, "endDate": "1995-10-24T00:00:00Z", "itemId": "pWDENoJaXBGg6Lkh", "quantity": 69}, {"duration": 90, "endDate": "1986-07-07T00:00:00Z", "itemId": "BWf3cYaSgZbGRjhy", "quantity": 24}]}, {"condition": "S5S05RhhrMcDbcyO", "conditionName": "wESf6K3vHlzqOwFZ", "eventName": "Sq5yDXhh3zM8G8Ad", "rewardItems": [{"duration": 87, "endDate": "1999-01-28T00:00:00Z", "itemId": "kJuJ1kMV5A3NZzev", "quantity": 59}, {"duration": 58, "endDate": "1995-10-26T00:00:00Z", "itemId": "3ZZwafIf8oeqTFQV", "quantity": 5}, {"duration": 2, "endDate": "1999-06-06T00:00:00Z", "itemId": "OYHlyQc2VxNY4WZf", "quantity": 74}]}], "userIdExpression": "cvKOTYNQfEcjCA6H"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'NDEAeddUexEqHhKY' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 's7gEEWSvQisn2NYR' \
    --body '{"payload": {"mqdewkqTnMj1pyXc": {}, "HPSHLshJx9wmT3f7": {}, "mY9JXpUPEH52mFOZ": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '5Vq6WoExFUKffJLB' \
    --body '{"conditionName": "xz9ywMFbXuJyocM4", "userId": "1KJR0xkIgDJNJ7Vp"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '5fZBxDPPp2V44MTd' \
    --limit '21' \
    --offset '38' \
    --start 'EHmBcEgjlT5GAUYU' \
    --storeId 'DJfGU4IS9B8LEbhi' \
    --viewId 'xr8ValBNsTcmFYoO' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'GPu6um3vSJVvQHsD' \
    --body '{"active": false, "displayOrder": 62, "endDate": "1993-09-12T00:00:00Z", "ext": {"SYRqPP8cvja0C0qB": {}, "0r9j8PRmZa8nNUE8": {}, "q9piJQRF7POtAhkM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 41, "itemCount": 60, "rule": "SEQUENCE"}, "items": [{"id": "pmuhYMnuhLYX5N9K", "sku": "OKz8zOuJaYxS815n"}, {"id": "vnyts0QJmzhOMjgh", "sku": "ky1MHcgaS1GrHuUr"}, {"id": "0Ft5ItqvwxwGJPr9", "sku": "PSAYsSDdDr4PEcrZ"}], "localizations": {"fUcfzrAzRRDHlpWF": {"description": "QYHmMItPst85H2Zv", "localExt": {"lodkEBTXMvrUwT6c": {}, "7bNJrvdoHT8Kd3mx": {}, "pL5czCjEGZZsyaEU": {}}, "longDescription": "urYL3fUSbTSYDCEB", "title": "nJqmpBMAcdxWecbR"}, "q1nKjUqd0gkg2OZz": {"description": "939Kwy5EaF6Lrl3H", "localExt": {"luRpRYgX24ZJyj4I": {}, "WpagjnE4w7KoCEIE": {}, "1MVPPKy4vdSqqlz2": {}}, "longDescription": "FHdC6nSDYzW4DPdZ", "title": "JsUvcEieW5XohPDj"}, "wnsO7Cyv2tzDNy3Y": {"description": "RUloBwzs5Fc6wWLB", "localExt": {"S5oz25gWOvkT2cES": {}, "tpsPlU9xt8HRc6Gt": {}, "6eSajW1NGGOiC4U9": {}}, "longDescription": "g6iUYVSuF0jsUQQk", "title": "xuj7IzIovuri1seD"}}, "name": "QbrgNvKdZuDB9jtQ", "rotationType": "CUSTOM", "startDate": "1991-03-07T00:00:00Z", "viewId": "lYUV6zaMI09GGlud"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'iWqgZHAjNCWU7zc0' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '76Fn2P7FZh0Wi4Sq' \
    --storeId 'GT8JpaBHpoRE2Z36' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'Sw0WHPdcIuOjh0JO' \
    --storeId 'nhrF1mjf0LvLrYh5' \
    --body '{"active": false, "displayOrder": 41, "endDate": "1992-06-29T00:00:00Z", "ext": {"ixKdh8ygoNv3Vzlc": {}, "sF12DwZiwsqbCkQ1": {}, "SFCVFoKtnthqFaxx": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 6, "itemCount": 37, "rule": "SEQUENCE"}, "items": [{"id": "hjXic0Y5Vmo2tQ5C", "sku": "5H28kxVlZJPd3Eek"}, {"id": "QZDYqj634EqHBORN", "sku": "cwIlstvJ5QsHXFFP"}, {"id": "JM7IkwyfrUecokn7", "sku": "3HNrtDSUpfUFVWn5"}], "localizations": {"QCytuOHyR3ZTboTH": {"description": "TbOE9PDITW6pd93m", "localExt": {"2hWsYVPZRUV1UELy": {}, "2odo5kYQS59CdBjX": {}, "ufeQsArIB7mS6qpi": {}}, "longDescription": "1bgQnYsnofUDr1E9", "title": "5wVjn87iBu0vuoOt"}, "94pIaCdzkzGce44z": {"description": "IakfDosqvc01eZpA", "localExt": {"AjG4EicvZ7hTmv5L": {}, "CVPXezYRg5DsPwUy": {}, "y4PPAp7K8NdE48RF": {}}, "longDescription": "W5aBarHeKujpyjsv", "title": "Iaff7jCx6Uir5duJ"}, "9l8Eyb9m2IUCQR3L": {"description": "X4U0E3qjuQXXobzS", "localExt": {"ZcVMaxuIpUReIJpg": {}, "FIEjSEWgnaNHVAfi": {}, "7R72nxtH95N2Mc64": {}}, "longDescription": "wdUu7BJ2JZDZOlWU", "title": "fqp9dvFG0Mw7OHl6"}}, "name": "WRtbGV8mqbT9ou5Y", "rotationType": "CUSTOM", "startDate": "1978-11-08T00:00:00Z", "viewId": "9fSHYv1kuOLAtkcH"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SY89OQgSzXyN0Jjq' \
    --storeId 't8uJOSnr22J8SpvF' \
    > test.out 2>&1
eval_tap $? 158 'DeleteSection' test.out

#- 159 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'ListStores' test.out

#- 160 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "HtrbE5NvpqpExmrH", "defaultRegion": "xtouXYwS61WW6bnu", "description": "JUsmEzzexHFmQ53d", "supportedLanguages": ["WIQ8S5GqDrd0bsp5", "0qovf7UqLFOD4YAD", "kTsBIySWzqzX4axB"], "supportedRegions": ["GqouroF5iAIxCgEv", "DReisfjJLfT6IjTp", "R584oKEYJnqZCAh4"], "title": "wQvu8gUcvX3y3F6Q"}' \
    > test.out 2>&1
eval_tap $? 160 'CreateStore' test.out

#- 161 ImportStore
eval_tap 0 161 'ImportStore # SKIP deprecated' test.out

#- 162 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'GetPublishedStore' test.out

#- 163 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeletePublishedStore' test.out

#- 164 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 164 'GetPublishedStoreBackup' test.out

#- 165 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'RollbackPublishedStore' test.out

#- 166 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cKRUR3bxtFqmcUnE' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'jtZHdFPw0zt1iUWt' \
    --body '{"defaultLanguage": "NwnM7jKV8lQ1gKqD", "defaultRegion": "86sO0nL8Cea8VcC2", "description": "oYP26OPSJ7YSqaXq", "supportedLanguages": ["tIHuZsm6uOVYcDfn", "GxLtpLQuIccvH9hL", "nd4zd0kvTptXogjc"], "supportedRegions": ["wizRP1NNtTG5VSjb", "b8mmPPCJxwfCcoVa", "SAxPHXmdv9zuXcHV"], "title": "J4gtVMZboK1zg2ZH"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '5nQJAGeQ5CyXAjsb' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '4Vkspy636KPbSb0I' \
    --action 'DELETE' \
    --itemSku '7SSHOAt1Gvzrf2Rf' \
    --itemType 'SEASON' \
    --limit '36' \
    --offset '65' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'M1xU135KoSqPBtDn' \
    --updatedAtStart 'ol50TbUWuidmQdRi' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'fZL509UGXX2JgKV9' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '3X8gJZQ3RvpDg9bx' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '93aS6GVj5ktY6Og7' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '8JQwy8kixEWUaduw' \
    --action 'DELETE' \
    --itemSku '2063tROBTqkAKNla' \
    --itemType 'APP' \
    --type 'SECTION' \
    --updatedAtEnd 'jgfFt9utGqUHs5mw' \
    --updatedAtStart 'F6v6noJ9sC7gPBGG' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'xB9YGn5eI691OSE5' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'jqfqoCkKNCapey4z' \
    --namespace $AB_NAMESPACE \
    --storeId 'C3LIMOV1viDRDWT6' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'zvVwKSL13j6NJnij' \
    --namespace $AB_NAMESPACE \
    --storeId 'jELbi4ZIbkSfm0r3' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'MKPu2EbAnScvkbU9' \
    --targetStoreId 'UVjNlTewhxhodU2d' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'SETUP' \
    --itemId 'TxdXgGi0pb5jTnYU' \
    --limit '1' \
    --offset '82' \
    --sku '82I67nelfW6d8Nfm' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'wDqH9rM3TcK7Fuqu' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zJuzfnnSGeYOZbs5' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'QnWdm0B1IEdmJiDf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'Y4z8t6i6G0fJISw8' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "M9wrinO3LP3N5yqz"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'xQIy6zuyA6itAErT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'Ot7ulauDYwL0Cvwj' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 58, "orderNo": "wdJjDQN5kbCtOP8S"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'xJLkRqfp3br5wsuY' \
    --body '{"achievements": [{"id": "hSu8TBrQGJX1lsgs", "value": 90}, {"id": "H4z1MwBSggZXLujs", "value": 54}, {"id": "aNF07J7hUI5kzJBl", "value": 90}], "steamUserId": "XTh4ADFx9Nv9iJr1"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'l7fR1b38AeCxceLu' \
    --xboxUserId '1fJ3Dv8GiCIBpFKV' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'SaylUVSgDn0A2DGk' \
    --body '{"achievements": [{"id": "CvT3OfWu5V6heItu", "value": 65}, {"id": "1MYQobIUhPb9MUPa", "value": 37}, {"id": "Q5uZZyFuhpu0I969", "value": 65}], "serviceConfigId": "TYc9H7HAVjJYdojo", "titleId": "JxWh6Nw98VIHV7dh", "xboxUserId": "1hUDys8JIQLKAoDx"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '0kygZ1ERQTTbZpGK' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'PAmrPppsJL7QXYAV' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'aBJ0Veb9AePHHmmm' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'rohHNfsqz3zzPnxh' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QiBLVeVmbtK5NCQr' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'CBndnaNkq0672KU7' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '2rJdbaH0geDCAQI1' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'J2aNm3z7l5bRPTis' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'FSpUzgagRN7xonFW' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '8xV8nyUssqq8dI0A' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ixkQrUTgbqtIxGST' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wNMj8GOpNE4sOmeo' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'Tri6Buz9QzDGYbPf' \
    --features '["QN2GhrZ335Ogo23T", "KsqJL3AZpimtqfXP", "Gkpv9Rjg6azalYDj"]' \
    --itemId '["mybJoT35LjlvTeH7", "jSlPW7DJdFo1alQy", "EnwKBWKz4lUy9CFN"]' \
    --limit '92' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'PiJWNEK7A0PXJv9d' \
    --body '[{"endDate": "1977-03-16T00:00:00Z", "grantedCode": "aeljLibUwUzTkpKV", "itemId": "SZv8OzzTvsPicPsa", "itemNamespace": "hj0sEWcxFATlcsaG", "language": "Dt", "quantity": 0, "region": "v7wo88Xw08Xz2mrv", "source": "REDEEM_CODE", "startDate": "1997-02-02T00:00:00Z", "storeId": "Z9PNazpnUXTa2rS1"}, {"endDate": "1987-02-07T00:00:00Z", "grantedCode": "154vkJYtLOjKsZH2", "itemId": "NOGt6G313toPQpm8", "itemNamespace": "cHibr93BzMVwODXP", "language": "Zce", "quantity": 81, "region": "teYaXBoIUdBerxpS", "source": "OTHER", "startDate": "1981-10-24T00:00:00Z", "storeId": "JKuuYCp64nbVnbBi"}, {"endDate": "1976-02-13T00:00:00Z", "grantedCode": "JrJwtXl1lRPGHy3w", "itemId": "sQaPIO9ci88K2f7p", "itemNamespace": "KiVMCAXrz8xhnXZk", "language": "La_094", "quantity": 52, "region": "7Tox8bN2683fRmaf", "source": "PROMOTION", "startDate": "1989-05-23T00:00:00Z", "storeId": "gBRqAXpu8HpwOGiq"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'do03OlW5kxSqi4V5' \
    --activeOnly 'true' \
    --appId '0yb4mDcCbdQzAJiq' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'cblhM3a3doBlbIz3' \
    --activeOnly 'true' \
    --limit '54' \
    --offset '12' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'gtpkUGz2Cq2ZpwDp' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --itemId 'EEMq5GqIhDyMFQSH' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Zi23GDrOk2RaBsNl' \
    --ids '["rsSOSnW8UTzfEEYZ", "wikKgegJnKFfiik0", "7n7QxJxNRJooZx8Z"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '2aw8iJZ90be519fj' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --sku 'fXA1zgCPNg0LtDi7' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4qQIMuWltPZkVP5Q' \
    --appIds '["dgtEwKyrpiQAvupU", "qjPEVtW0T3HEKmZZ", "tfZEjT3GH7waCJUE"]' \
    --itemIds '["w9juW4OpGDWma9gb", "GWloBbysGBejrTZw", "5vDGlmjMc9gXqsRd"]' \
    --skus '["SdPvfwpJsr3AieQs", "qSMJak4gv5RRDFcv", "dVknHX9GO9XMAgll"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'qnhak5Pzu56WvNJv' \
    --itemIds '["qSGB9Ek71E2bw5o6", "xc7QiXjHpOsTvWaj", "po9VpHwBSI3iZv7T"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XUcKpRfPpQwMZkCk' \
    --appId 'lX5Jg5TTTjXHIaAP' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '77oy8h4h2tgk5F7U' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'lcuKUy7dJFEa2Wbf' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'WD5am036Hq5imVvn' \
    --ids '["gtt7QqKscrGqh3ei", "GTpTny4A9PfaHTth", "bL4pabSeoXMndaNy"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'R93tbLQmevPRCZEh' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'usiiSS2XaWyf7S9e' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9M4C6ZdLoOjpjIYo' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'H8knQK0y8rV1c9IJ' \
    --entitlementIds 'GOaC2dVUCdu4QKNC' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '2qxkJeOcheOkbEJI' \
    --namespace $AB_NAMESPACE \
    --userId '2a8k1YlN9Q9GD4bJ' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'x8ZHeGNL7a7OfniS' \
    --namespace $AB_NAMESPACE \
    --userId '01dNcx8x9TPTsOhM' \
    --body '{"endDate": "1985-02-25T00:00:00Z", "nullFieldList": ["mbza0nmawbIlo9ln", "6dlOhBHVh3MLecFP", "Jg2W6xFDgqzMGhXK"], "startDate": "1997-05-08T00:00:00Z", "status": "SOLD", "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'sbB0ppW0R959Xv0W' \
    --namespace $AB_NAMESPACE \
    --userId 'ZkXzjQjUB1oE9RdB' \
    --body '{"options": ["MfyIUQV0I1M8jx61", "bk7dRgWJSUMSDTcU", "UiZA8awXvGygt7l7"], "requestId": "2tpiwNMpNxId3mQ5", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId '57ARMJVpP4XrvuU2' \
    --namespace $AB_NAMESPACE \
    --userId 'btMYwcYMdDtH37Be' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '6EvR1xvymiCidotd' \
    --namespace $AB_NAMESPACE \
    --userId 'UpEP1U5KZSu2O3an' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '8RwiEpmt2FGiXLRW' \
    --namespace $AB_NAMESPACE \
    --userId 'uixUmC866ss8mAe8' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'F6UtKRVPE1asj6sU' \
    --namespace $AB_NAMESPACE \
    --userId 'B5ypx6HSQeS1w17I' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'N4Xz3KMV8IIZLtz5' \
    --namespace $AB_NAMESPACE \
    --userId 'K93TiV4hCsslRAun' \
    --body '{"reason": "Vx4JofrmJd6ls1iu", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'MhVhbIKZPhxtMaNg' \
    --namespace $AB_NAMESPACE \
    --userId 'XP9DpBxDwpW5PDMc' \
    --body '{"requestId": "891SBrjFtUkxhx3b", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'efPfFdSUy4DuXX7t' \
    --body '{"duration": 61, "endDate": "1972-10-22T00:00:00Z", "itemId": "s9kIKaJU50XaxbEq", "itemSku": "kZ68Tt3I3i10z3e2", "language": "h6J1a0kbp5t2Q6CK", "order": {"currency": {"currencyCode": "ymSxzEYyCDgo8QvA", "currencySymbol": "vkMJlGlE3mIiacPM", "currencyType": "REAL", "decimals": 91, "namespace": "Oe5moIjj69uPsNto"}, "ext": {"YFxDtFezevjmKYxG": {}, "2eBhPBo9pDMRNXQ9": {}, "WeU0bIC6T5p1kQSt": {}}, "free": false}, "orderNo": "XhL8ByCEN5fBJIVx", "origin": "Xbox", "quantity": 53, "region": "ndKQQbmw0GUiBK6y", "source": "REDEEM_CODE", "startDate": "1983-02-14T00:00:00Z", "storeId": "Jt4mLDTkTl4bqLUY"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'fQdVLyuVgu0lRi9L' \
    --body '{"code": "tG7NY41q5PvUUzrg", "language": "thu-VjXK_cC", "region": "v0SXLiFnXmGVZxsl"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'jTbbhJgIbne4RN3W' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "LGYw8p7FyjgPXpfL", "namespace": "Ujwu9EtYZzKhl5fQ"}, "item": {"itemId": "IzPq9RnJjBppM8F2", "itemSku": "N756p3B0uOOrZIWI", "itemType": "2PQFRlwusAm0eaCl"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "cJNvbMQeboOGGfjc", "namespace": "P3psEQz1sqONujGx"}, "item": {"itemId": "qA1ErcEi3eUZkWan", "itemSku": "lo99quxvSYHFfjvq", "itemType": "ZVBKn9SuzNoQhz3g"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "IXApSEpX2yH8CgLb", "namespace": "iEjnycr5emdRHz1L"}, "item": {"itemId": "Iv5CtdatjHhjBS1s", "itemSku": "cXWhOHhjKGi1NbXl", "itemType": "lCVAa3w6DrBWYTYE"}, "quantity": 59, "type": "ITEM"}], "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5hzx9fDXeVWI5HUd' \
    --endTime 'IRn86YfKwU35eUVf' \
    --limit '43' \
    --offset '84' \
    --productId 'Rd5GEiUZtMnrPvNS' \
    --startTime 'CqkIkXZQ5GCpMUBO' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'W1O1o2b5NhAdWgSB' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'pZJ1GDiVX6cTxqpt' \
    --endTime 'KF18S2TBAPVf99Cz' \
    --limit '45' \
    --offset '81' \
    --startTime 'ytJq25LKXjt1eocn' \
    --status 'PENDING' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'PuzBhB841lcjYOub' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "UMh", "productId": "EqRmX1qJTgtb72PN", "region": "Gg5GMz0Aikf7gZCj", "type": "APPLE"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'jSobEkdYWj18POwI' \
    --itemId 'iujaK4QA88Bn1cAU' \
    --limit '45' \
    --offset '18' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 't5tbvZ1xx53urA74' \
    --body '{"currencyCode": "38116m9DaCNrWAO8", "currencyNamespace": "VJw46EzUG4hl6zba", "discountedPrice": 39, "ext": {"AdqpG5I1s7t3I3z2": {}, "g60evBiiH7ME5zeA": {}, "kCdN7txaCrCPFyyz": {}}, "itemId": "FBbW5cGqzoHJfLtz", "language": "9gLMgRqe2vPcLqLq", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 4, "quantity": 50, "region": "Eer4MdikaAvvyXAZ", "returnUrl": "0vBT3iB78GIVNm9D", "sandbox": false, "sectionId": "AjEmNv3F9jXAoXfY"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'z5tB6ojN40twWKy3' \
    --itemId '4mrYoBUoClkcb2bF' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bM7hPjKkBH0m8CmQ' \
    --userId '4kdfGFUUwMDeMN6O' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'I8I5TszrdWQt9JPP' \
    --userId 'ngR0eaDaPLC6vPun' \
    --body '{"status": "REFUNDING", "statusReason": "J9DNFnVEjvrIsogn"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'l8jscm2EaboIG0lq' \
    --userId 'Qojs1FEvqatM5z99' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'mL2HANuZ7iYrhmEx' \
    --userId 'Z7fSBP1w22Qbx28Q' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'qWehofwEmkntuwi4' \
    --userId 'P10y6OaA3AoJc8kB' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'qi0L0sXug2Eh8Xy6' \
    --userId 'U8qrbgPvnOBCssbg' \
    --body '{"additionalData": {"cardSummary": "7z96OlsziR7Qf7sg"}, "authorisedTime": "1972-06-11T00:00:00Z", "chargebackReversedTime": "1987-01-26T00:00:00Z", "chargebackTime": "1985-08-28T00:00:00Z", "chargedTime": "1991-07-22T00:00:00Z", "createdTime": "1989-07-07T00:00:00Z", "currency": {"currencyCode": "gUZ8h1mU5Ir1K4NX", "currencySymbol": "Dbvg5Ne94zREvZkv", "currencyType": "REAL", "decimals": 7, "namespace": "3ZoCjRw8NFOkImjv"}, "customParameters": {"tvCNSywyPgEngNzO": {}, "B0vuwz7Wqnr04lYA": {}, "AvqmS2RvPVSvoXyx": {}}, "extOrderNo": "6B59i9n3LfMOXrRW", "extTxId": "kZq5zP21fMjuRYCt", "extUserId": "JXmOQ3E6QLZIbX7g", "issuedAt": "1994-07-27T00:00:00Z", "metadata": {"QOvfyKfk1u37WSxU": "0Gv3sDoc3EL9RiZ3", "MOs2Ud1T9g8o3UxS": "pJAgYjU8yyWiTRj7", "hkZ1syLtiIl9hGDA": "LX3dV9ggUZQ60J1A"}, "namespace": "YkO4NRXsFbAsUAMo", "nonceStr": "AFCLp5MAnaTrKamz", "paymentMethod": "Zt6vm8iuDwzhhmRv", "paymentMethodFee": 33, "paymentOrderNo": "ue61eL3zOm82hxSZ", "paymentProvider": "STRIPE", "paymentProviderFee": 90, "paymentStationUrl": "izTiaJR4khQ6O2Sc", "price": 37, "refundedTime": "1986-07-20T00:00:00Z", "salesTax": 31, "sandbox": false, "sku": "jwBuJZ7tvUemNvtJ", "status": "CHARGEBACK_REVERSED", "statusReason": "VbMeFZC9hx0VnatW", "subscriptionId": "WTO2uMCmzH36EXc1", "subtotalPrice": 60, "targetNamespace": "hnIdnAaoLPmAFjMn", "targetUserId": "9Zhrf8tQDSmdA395", "tax": 4, "totalPrice": 1, "totalTax": 46, "txEndTime": "1971-06-07T00:00:00Z", "type": "Xthymd2uEEqJpXWU", "userId": "JxwafQcK5tVSSNln", "vat": 26}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'SVhzhOj5w5j9z4jE' \
    --userId 'XMwkR6TYTKfnnobQ' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FUoS24bkBxTEQr83' \
    --body '{"currencyCode": "IzmwhEVLsQqNTIWT", "currencyNamespace": "XzcbFPjx9LkSQCjC", "customParameters": {"31aDKtIQjJ79jrwM": {}, "v4mnIwTJuWzI6Ste": {}, "PE184AJjkFIaEASu": {}}, "description": "tgSZLJnYQp4GvYZh", "extOrderNo": "8en3K5cszwDjJp14", "extUserId": "nkM6Kc42o7Ke5MXp", "itemType": "APP", "language": "HX", "metadata": {"OFAC1VXKDwSgg1GS": "N6MDBCJQsqe9wSx7", "R2FpIRwhRUEqawk4": "tfmQsa9u4fBfAw4N", "1gQxKCfflwwTYXM2": "KXYHeH9owX8vX3Hu"}, "notifyUrl": "cM7vJ1k21YlnoSg4", "omitNotification": false, "platform": "kqgbULLYdtO2iSH0", "price": 45, "recurringPaymentOrderNo": "Bgn65j78t7iGccSX", "region": "JYjOcHNFFf3VSK7U", "returnUrl": "v2wv5Qr1drPp23F3", "sandbox": false, "sku": "m0IyohKiJtZtpt6n", "subscriptionId": "IAhKA8euPeBICied", "title": "jpt346ltaGDtFrHh"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pab5UmTrDF8uPabz' \
    --userId 'WlcW79sFephmyDMX' \
    --body '{"description": "Oqte6lqixUWSx3aX"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'WlK3AjrOiPFjzgMI' \
    --body '{"code": "5yLD8tiggAc0dUyK", "orderNo": "1HapfR2jhkgPpShQ"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'FfvwLSnjpMwK8tdD' \
    --body '{"meta": {"c5zqL3h8rRCqFFlG": {}, "uG1mp0gmQIoCSnaj": {}, "mL3sWkLz2QV4oJ8K": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "6PqzXCCmmgViSjsf", "namespace": "BLdDtOcNXQu3TaQJ"}, "entitlement": {"entitlementId": "ywF6OWojfXnaAB2E"}, "item": {"itemIdentity": "2SDJNx4mycBnySKI", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 20, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "gXz2YaQEOu3uuMzP", "namespace": "CjtTiFMvSgzYVwsd"}, "entitlement": {"entitlementId": "NOX62p05dgDhvNsc"}, "item": {"itemIdentity": "IqB4n3qNZ7GGfORo", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 88, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "qVw5BakxJgERSrGL", "namespace": "1O0R0Ij1XBLIwP3x"}, "entitlement": {"entitlementId": "4BiMWjooZM6qS0GJ"}, "item": {"itemIdentity": "VWrM3yYxdP4WjSvp", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 32, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "FeaUUbz07pqSl5jL"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'F9WcjEAu4ZE0mfx0' \
    --body '{"gameSessionId": "iB6kDVT7Si76dmWR", "payload": {"Oc1TBRHF17Xk66JI": {}, "vtYbhxnRQemaj0d4": {}, "By35zecv5CcZqIS1": {}}, "scid": "m9usQtv3aCzgyheh", "sessionTemplateName": "pQPjZbIaInvp9LTO"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '66DdGJwCvq40cJ4P' \
    --chargeStatus 'NEVER' \
    --itemId '8n3YRMW5lqxG7uLq' \
    --limit '24' \
    --offset '65' \
    --sku 'CXeFWZYAYSMHQC6B' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'fUJGlHR5HbUiMQN6' \
    --excludeSystem 'true' \
    --limit '71' \
    --offset '59' \
    --subscriptionId 'mUzJ3PmFBXuVhbdj' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'LbxHSlHTy7CfA1li' \
    --body '{"grantDays": 95, "itemId": "qjQqGcqqhVknvQX5", "language": "VJc1x5xbjxyJcTML", "reason": "YbpZYS234Z6cd80g", "region": "6EZIO0719InUTsPv", "source": "QIFv5oSMX5H9fYY3"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2ZNfqYKlCAVmatTu' \
    --itemId '8fG3ADAkXqPtn7K3' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'INtVcCaaDo81n7Zv' \
    --userId 'Sx0xXLDrzOmutj8D' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CVWXt7z239FvqtDF' \
    --userId 'zZqxuqAgeLZJUh3v' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HYtRoArtxSNn2Qoj' \
    --userId 'XKcpq1uvkfIFZFQ7' \
    --force 'true' \
    --body '{"immediate": true, "reason": "XxGQStSFveRCOm9t"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yNDym9fHlrZOIXDl' \
    --userId 'MOa57IfPZvO9qIq8' \
    --body '{"grantDays": 51, "reason": "eR5p6IJ0VvYTFy0W"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VcQ7oYgx4tfmyF6a' \
    --userId 'i3BTZsM3xFt8OfD3' \
    --excludeFree 'false' \
    --limit '15' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1Z7GSA0FzMpivkAC' \
    --userId '24zFlJRcIh2Fsz2O' \
    --body '{"additionalData": {"cardSummary": "IYlI6fMGArpKAgpm"}, "authorisedTime": "1992-05-26T00:00:00Z", "chargebackReversedTime": "1985-09-15T00:00:00Z", "chargebackTime": "1983-01-09T00:00:00Z", "chargedTime": "1989-02-09T00:00:00Z", "createdTime": "1995-01-22T00:00:00Z", "currency": {"currencyCode": "A4elszaaWtZM5U5q", "currencySymbol": "oqJkLY9uaAxwTU4o", "currencyType": "REAL", "decimals": 35, "namespace": "tKASToCBivvKnbzl"}, "customParameters": {"o7jNqES4AFAJGZ9G": {}, "LOTfI8ta2YVyGzou": {}, "51lKh66xHjIdFnjq": {}}, "extOrderNo": "mwlbaOF3zciJFiDC", "extTxId": "XnrSBFs2wuDycSTP", "extUserId": "AVtsIBQeodSQjfHC", "issuedAt": "1985-07-01T00:00:00Z", "metadata": {"cy5KP6vapZGGiY3Z": "L2z7phNVVDsltNYg", "KxrlT0itSJ4sWzoo": "eEcUusvD6bm6g14J", "nae1Fy15XaEVee7q": "tcexWif2ENdMjrqu"}, "namespace": "6l9fvv8QEPjQm4UU", "nonceStr": "gQejD2Gn5YUofXkY", "paymentMethod": "ENbaJ9OSDMzJ9l7n", "paymentMethodFee": 22, "paymentOrderNo": "DZl41SaaUzFQghzv", "paymentProvider": "ALIPAY", "paymentProviderFee": 27, "paymentStationUrl": "T773IzPRzL4uu6GT", "price": 53, "refundedTime": "1994-05-16T00:00:00Z", "salesTax": 46, "sandbox": true, "sku": "pb1HaYIOVmj1hsnL", "status": "AUTHORISE_FAILED", "statusReason": "HhllVGREKe1z5mw4", "subscriptionId": "RQGPiOp5WfI2FS73", "subtotalPrice": 99, "targetNamespace": "D9SdrvEjWRQNYUP9", "targetUserId": "2wk7YA7YkeVyCBQQ", "tax": 94, "totalPrice": 19, "totalTax": 45, "txEndTime": "1975-03-17T00:00:00Z", "type": "5tdK6c7YiYPNqu6A", "userId": "XFn6zmOsg3Mpehfy", "vat": 88}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'eRnygwujV9XXcFsi' \
    --namespace $AB_NAMESPACE \
    --userId 'DPW3YZuAp9Qv0dQr' \
    --body '{"count": 15, "orderNo": "IqoDro92tE2m4BZv"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'cr7aOwzllPNI1mFO' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'PRjiPCK3z0qXXBos' \
    --namespace $AB_NAMESPACE \
    --userId 'ktqSfvx9EqcRz9pi' \
    --body '{"allowOverdraft": false, "amount": 19, "balanceOrigin": "Other", "reason": "nyq3peA4X8vRreVU"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'RzJ9RGWlysCuweHl' \
    --namespace $AB_NAMESPACE \
    --userId 'DrzfqaHaeJkCpUw5' \
    --limit '97' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'XE5MyPJM5evzYHoM' \
    --namespace $AB_NAMESPACE \
    --userId 'hKPyS1LZjWiceDoY' \
    --body '{"amount": 17, "expireAt": "1974-07-08T00:00:00Z", "origin": "System", "reason": "awZzwGXWR2W5vdrP", "source": "ACHIEVEMENT"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'XgIB20qHZzVZ50X3' \
    --namespace $AB_NAMESPACE \
    --userId 'QMXZMR6ooQHmEzXT' \
    --body '{"amount": 24, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 261 'PayWithUserWallet' test.out

#- 262 GetUserWallet
eval_tap 0 262 'GetUserWallet # SKIP deprecated' test.out

#- 263 DebitUserWallet
eval_tap 0 263 'DebitUserWallet # SKIP deprecated' test.out

#- 264 DisableUserWallet
eval_tap 0 264 'DisableUserWallet # SKIP deprecated' test.out

#- 265 EnableUserWallet
eval_tap 0 265 'EnableUserWallet # SKIP deprecated' test.out

#- 266 ListUserWalletTransactions
eval_tap 0 266 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 267 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '6wxNnVjhAMsoZena' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'o31iR979pgXCM2nK' \
    --body '{"displayOrder": 15, "localizations": {"JhnMOoxktRn5aSc5": {"description": "QsKDCTpgbpZ1Qmow", "localExt": {"msa7HOoBpVc9aVQX": {}, "NcAdALwyphaWEdtW": {}, "YpqPqlAyTiHgkZNs": {}}, "longDescription": "9Fc4dwusEeWXoQLk", "title": "S4hq8qyj9lGVlRzr"}, "2H5HXa4eNGxuxyp1": {"description": "PQCv4C6XFw0Fs9Gp", "localExt": {"lunw8wbkSMurub3C": {}, "uxSMES5EmQYa6kaP": {}, "WLAsjZZB8B9uEL1d": {}}, "longDescription": "820TJZ0Y8WjuOCR0", "title": "wV2VSzg78BKPSTgZ"}, "lgtWo5qZs8cu2I8R": {"description": "tWn2QYah6K1UUkjr", "localExt": {"88I7oD6r2CYLdgKJ": {}, "cT3x6VqPSsGfrLiv": {}, "vR1Pl8l8M3ZeESmo": {}}, "longDescription": "cHYiyStEG2b4N4mO", "title": "kbEtK9MdcNPZDtaL"}}, "name": "TAGm7FVxYKlsLV74"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'hKyzmijBUHHf2o8o' \
    --storeId 'dW6801rcuqY3460q' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'Ul8nMse4j6onMT5v' \
    --storeId 'xDOz33CBBU2r7AcF' \
    --body '{"displayOrder": 85, "localizations": {"SH6tH8BXDrToIfdA": {"description": "wjRnewkKJzVPUQAr", "localExt": {"jeTwllWoclMxS3s9": {}, "bwynqmB3pCaP0r4S": {}, "EVj28rrso0oVFujt": {}}, "longDescription": "cgBTTg6xTeRzaKH7", "title": "YPU1EIzIUko6tKyj"}, "iMNrScWDrw05z5bt": {"description": "D6SrN6plAHC2QYzv", "localExt": {"Imu0A90TOHeccYFo": {}, "m5nSsBnSaPz1GIOg": {}, "LmKJORvza1THNjic": {}}, "longDescription": "FP1KUQlf60J9K1Mh", "title": "c81EvdAqdUlUid5r"}, "XK3XMuyOCEnnlwHM": {"description": "9vEwlPrBG8Ck0XPr", "localExt": {"bZtMvB98wppTFXfO": {}, "AS5AW9TDv7RVsfuL": {}, "xNugOVley2WfmyeA": {}}, "longDescription": "kVzdYgJTAMjVmrPd", "title": "NUq3oz2SMyQsrkgZ"}}, "name": "ihCAi9zCDqj0YV6N"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'Yra3ZL2tI3GGeJKG' \
    --storeId 'RuneuECzbP5OZEOy' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 82, "expireAt": "1978-09-28T00:00:00Z", "origin": "System", "reason": "38VZunvjHuUce3YA", "source": "PURCHASE"}, "currencyCode": "fqSRqCFKBxH4iC3E", "userIds": ["y8SKlsUMsx2fNyJP", "RtryKv9xnsnkya5d", "K7Islql80UFYfn1T"]}, {"creditRequest": {"amount": 97, "expireAt": "1992-04-17T00:00:00Z", "origin": "Other", "reason": "TPAaWk2QpvVV8xXb", "source": "REFUND"}, "currencyCode": "aW8S18mzwTPpoTuL", "userIds": ["ZaRHiNWKEWVavNeH", "jOY51ATceOsYxABs", "8NstKDSyoTEYHOaA"]}, {"creditRequest": {"amount": 19, "expireAt": "1998-05-21T00:00:00Z", "origin": "Epic", "reason": "h77T4Epzth0hQDVN", "source": "SELL_BACK"}, "currencyCode": "eY9Gre0MF2LjFDER", "userIds": ["rGUWgG9WpJU8XGgK", "eHRW0mb8DqB8jTaY", "BwEG64XwQltCL3vm"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "FzOxdWwGP4n5o2bX", "request": {"allowOverdraft": false, "amount": 24, "balanceOrigin": "Playstation", "reason": "Ai0UPX1k65z8k9Iy"}, "userIds": ["SPYJN8Dc4U4oMQ9X", "RFxreoHkXEMhcM5f", "3oOFkxbjZLo0p6q5"]}, {"currencyCode": "kmqrwMjnDe8giqq3", "request": {"allowOverdraft": true, "amount": 38, "balanceOrigin": "Steam", "reason": "Av00UQC95pzWCtUJ"}, "userIds": ["nLK9dsRhE3oYnU4j", "3EZ3zIr9oKylUQ7F", "Sbeq47R3rSFjr4oO"]}, {"currencyCode": "omHdRrDUSCQZJ7sJ", "request": {"allowOverdraft": false, "amount": 77, "balanceOrigin": "Twitch", "reason": "QE8HC1SS6d0m6ew8"}, "userIds": ["9GtamG8Zdge8FDLj", "xs8NteCMXIvjRsru", "SvmPnhJjLGXFggJ4"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'dhdWNyEllD27HXv3' \
    --end '5T6v3ch3EHGgajBB' \
    --start 'VE6L0vtAvDRoe7kj' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["xlSI0wfYbdVF9AkW", "LwVHBjZtc6dha6lH", "CSxZGrTHbj8JilnW"], "apiKey": "XJlq5xQrQnwL1Srr", "authoriseAsCapture": false, "blockedPaymentMethods": ["zbMeSU8cZyRCsA2P", "UEjMpkyuRFnDmKxb", "DROsQzsCGGL1Y9bO"], "clientKey": "5EghL8cyYvIM97v1", "dropInSettings": "u5yAZYxfK8kcJKUQ", "liveEndpointUrlPrefix": "2SpSTXUmKlJHn9JB", "merchantAccount": "DPavxy6sY3A7OUYC", "notificationHmacKey": "Zpt6PXVgB0MlcB6b", "notificationPassword": "efnRNej2MtTHAnLZ", "notificationUsername": "e5chCBAhASWuUOy1", "returnUrl": "Ej00vHpCa4xVX2AB", "settings": "S1AQJQSu8bxkiyo7"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "lCekC6c8QUdTXrqg", "privateKey": "SQuITNi3z8URSC5w", "publicKey": "5DJyHTZQ00guX9kf", "returnUrl": "oAthf5betTrckEL4"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "ZQ4QyAJgBvJPgHJF", "secretKey": "aRET0vYz3imeT4aj"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'DSj2OlV5ftro7kI6' \
    --region 'deqzerNHmoEOJx18' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "oXULjdBqGTy2ncg5", "clientSecret": "7nMpD9rvjUIuxzML", "returnUrl": "pGz5it8NWeTDF3n9", "webHookId": "sbjdcm3hEwLfMlVp"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["X74B0zx5wZ3RZ5QO", "EKlZuXOEtXCx3oGN", "hEunFKFxpjWm7yNp"], "publishableKey": "UyTq2sTnrx3C8yV8", "secretKey": "QbjF0FSEcaasEAYQ", "webhookSecret": "Ckd6XxDmh6Hf3pBd"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "9rQyXpu5LeTy2uzk", "key": "bCNyhLe4X7p8CxcU", "mchid": "IKexLv6Ad8c1N6O2", "returnUrl": "Hfo8grW43Lf57y3I"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "EVreW0JiKSyjFN9Y", "flowCompletionUrl": "ksz5qbdk7xLA5SYz", "merchantId": 64, "projectId": 71, "projectSecretKey": "pwxpFPycuWIIrSOL"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'HS6Je1tMtuJ0IhNs' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'XeHwE4wuDJ7QmRAn' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["olQUUQkehSUvtkwq", "7hSlwlTJwWNNU9Bo", "Xl7W5bXEdZDFVoVD"], "apiKey": "alYX7Za9mp0CKHpL", "authoriseAsCapture": false, "blockedPaymentMethods": ["q0fFH8pNIHg6rCtJ", "6WXWgzaLnLFMpqE7", "SdCwcD88h2AlKY2o"], "clientKey": "RN5Abe3y494hvYA8", "dropInSettings": "zGr86k5mEgCY5MmN", "liveEndpointUrlPrefix": "cc9wzGSH8fj1L16n", "merchantAccount": "6nWdjkrhoFNr4R0Q", "notificationHmacKey": "O89bg7K4JEkeqLa8", "notificationPassword": "1PRZYYMtbZZBzIUW", "notificationUsername": "JlEKEfxgEdZY8Rb4", "returnUrl": "HuJc0h0Y04dwUDM4", "settings": "R85QWOlgB1XLcUn3"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'f8enoDDXJyl6Xy6p' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'DvaJqabTEjBirYb6' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "SlXXkAoblVOKnkQf", "privateKey": "OyHO39tsMjmPW0YX", "publicKey": "EWiOK5AonzttGfV7", "returnUrl": "BgT1Vbn78hxYq94E"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'iUdUbabGhWzTYBIV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'DSbr6CDgsTjUxPiT' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "STzi11F8mmc8Fu1R", "secretKey": "pQgl0y7KfJaTzOXg"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'NmfaG49ZZVzXp791' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '3O8ECYVt8oqV9uJW' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "gp9kyA58pwUJPAJ4", "clientSecret": "DJzZqOYCAgHSYDL3", "returnUrl": "CnT3DSKceMLHgNTo", "webHookId": "eCLRotiZNlPQ4xhY"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'N5DMLoQxU4pYJ2an' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '4z4R87TuDdk4lVW1' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["Ocr38dRvlPxUKBnK", "fA0TiF8fKN1zmm0f", "w32UaLy242OEIO1m"], "publishableKey": "V7JZZIFUadHwaiue", "secretKey": "1yVMT4RpsMos2wSP", "webhookSecret": "IZLMBshZoKmj7ylr"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'BxM6hrqkDVwAeTua' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'ZEPudXKBUaxXFOKu' \
    --validate 'false' \
    --body '{"appId": "hvCjnYXBHeK3zvI3", "key": "FZueEWlclIFUGlnu", "mchid": "hfn6QUAMGb0QYPWq", "returnUrl": "K9TDg2PUtKyQ2XDM"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '2HdzUFu0ok93aWMv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'TIsWXwK8NsnE4Zcz' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'GfDzwO62Gg0zcnwn' \
    --validate 'true' \
    --body '{"apiKey": "r9X5UXCgeAqE8xUG", "flowCompletionUrl": "wh77zJ3ayMejsJxj", "merchantId": 35, "projectId": 10, "projectSecretKey": "xZmlHVzPi9UUjTwO"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'aXX73JxTowWdqCEs' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'mzzVEqT52CtEm67k' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '84' \
    --namespace 'dZWWJvgL7eLXl3dt' \
    --offset '75' \
    --region '604TSutkFz59yZ6d' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "Q5dp7tnkeuEr9vcP", "region": "RJq0hi3m2tO4OcNJ", "sandboxTaxJarApiToken": "zb06MikYgp7dQ9IY", "specials": ["PAYPAL", "PAYPAL", "STRIPE"], "taxJarApiToken": "adK913bL0ObKkGmy", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '2do398YI1oRZ7Ej8' \
    --region 'l2PPKtos04I0mP3f' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'pUjAl0A70czsd5gM' \
    --body '{"aggregate": "XSOLLA", "namespace": "kBEl1d6qtoLvmmg9", "region": "SuLKlrqYmb8JWI4P", "sandboxTaxJarApiToken": "hKsktCRmfdilwjEe", "specials": ["PAYPAL", "PAYPAL", "XSOLLA"], "taxJarApiToken": "MQxHaKhcFCp3rXqp", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'sXJT809ZLDmqdrrq' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "cV2gHZ5S2gl1xJ7h", "taxJarApiToken": "tLlZLpdLECLh1Zbu", "taxJarEnabled": true, "taxJarProductCodesMapping": {"WtNMn4itltpPFOaP": "wyDC1gjvB8P7pyAu", "NZLUqCRgET2NyNyL": "NbLIZe669e4kG4Gw", "seM9srz2jnW9Vzbf": "EzdJnRiKRT0M34kw"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey '2r10AzPyDdtCWbgs' \
    --end 'AlYlDUJjd6oaLdBz' \
    --start 'OJdDFerItohBZOyg' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'nT4pUKJImW5xaH3h' \
    --storeId 'a044KqeCmhTTOZuW' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'mNTRty0msb09mUIj' \
    --storeId '2c40vNXl42hau1YL' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'cl4RvNWM5bDcIojD' \
    --namespace $AB_NAMESPACE \
    --language 'UUpWKuOiN9INspqG' \
    --storeId 'k1K18a9i1OJWPJxJ' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'Fgvc6lZC6SQwfEj4' \
    --namespace $AB_NAMESPACE \
    --language 'mG4HdlkiRM5HH7IQ' \
    --storeId 'bzza8iwAi6vLzIMi' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'dEY0sz6iIVuBfBhN' \
    --namespace $AB_NAMESPACE \
    --language '25786CWZWKdiFWTV' \
    --storeId 'X1TcvP0b7A0AG41n' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetDescendantCategories' test.out

#- 317 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 317 'PublicListCurrencies' test.out

#- 318 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'VdTIAXvzNg2lumOB' \
    --region 'eqBmhf3W986qeDC6' \
    --storeId 'mIxWMrCE6yUolO0h' \
    --appId 'AUDzmBWdAd5blvuW' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId 'xP3PFEvnPE0s8mka' \
    --categoryPath '7xXUZb9rt3Evokhd' \
    --features 'sz4WAB1LPzd0bzmR' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --language '2i2GJP1dOCeDGXcA' \
    --limit '45' \
    --offset '16' \
    --region '51BSdIyiKgvSl1Do' \
    --sortBy '["createdAt:asc", "name", "displayOrder"]' \
    --storeId 'ZEfqFm5NWpCPCsoZ' \
    --tags 'yQKO6jvOlpzlTb8D' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'fpmTUyAE75LdsHIS' \
    --region 'hhMrkACZ1GqJsp6C' \
    --storeId 'Ymn51CMRk6l6FJQF' \
    --sku 'nKQb65imacIok7aJ' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'NCP88YIToFlKM3XN' \
    --region '8kUTbtqx8o6rq65U' \
    --storeId 'tHTKojzlfKWxqAha' \
    --itemIds 'L1fL8ZOssbivtycO' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["09p7PZGvaGj1SZYH", "9Yg3OI68rn5RY1Pg", "t3F9IO1gjG2hUTpu"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '15' \
    --offset '36' \
    --region 'ysg1cLlHHHyY90Es' \
    --storeId 'Qe9qtSHkJcllkTqh' \
    --keyword 'znawz5WyfbMG15mE' \
    --language 'dewVqTCsUlBeRuQa' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'SGDsdrV58ZROfZoM' \
    --namespace $AB_NAMESPACE \
    --language 'qzxWgmLWVKvwSWSt' \
    --region 'emaauf6eGyVUJirl' \
    --storeId 'xOsbiZzjqTORD1p5' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '3bDW3F7Rp9xavfNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'FQ9S9MTOUJT8DZCj' \
    --namespace $AB_NAMESPACE \
    --language 'ztYDxf0JvRgpW3PL' \
    --populateBundle 'false' \
    --region 'FeFCoBhdN3Aq51wY' \
    --storeId '0MIiKSNDOdsyodAK' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "jGpr9HKHwfH9VOmB", "paymentProvider": "PAYPAL", "returnUrl": "7B6QJsGRfEbiCqBM", "ui": "tOALFWszQmaRFI3f", "zipCode": "yHqTEUsUfmOJuW8p"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jBeRMwDZrq21y4Dg' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RIGZbfViDiEJk2gG' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1t5NziNPCEO4rokU' \
    --paymentProvider 'WALLET' \
    --zipCode '3GKuM7ZId1W0N2tG' \
    --body '{"token": "JZ5QAJ1WMcvDrt1P"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kpzeFK1iZ9dTPLi2' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WXPAY' \
    --region 'SnV2gxPYKNLOxNqI' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'WZz473hqe5hSMIt4' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'khIJVDCWteWa2tDc' \
    --foreinginvoice 'g8qMFhphNtTpSmOf' \
    --invoiceId 'paxa91Djf1CRnXbo' \
    --payload 'HQFNq4LscAeBcF7m' \
    --redirectResult 'vpWEAgZgT281QLHO' \
    --resultCode 'GPfADExkXgK5Khak' \
    --sessionId 'GTtzeA4VXg7wnKgT' \
    --status 'qsjHNCksDvI7XsqL' \
    --token '7BYbRR0ABGNTvP8h' \
    --type 'ZKucW9UVlRVcggfi' \
    --userId 'NyX2ZohjJvRHgLJq' \
    --orderNo 'MHGHUSdrt8cceQBn' \
    --paymentOrderNo 'MlALO8FMpQo43t4N' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'CoNwBnHq0IMi1A92' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '27tLg0wr2M0alvua' \
    --paymentOrderNo '7ltKIGSsq9LpiWbs' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'kTuP1U0JLShZTDmU' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'qxCBjBjA3dFGWMKo' \
    --limit '75' \
    --offset '99' \
    --sortBy '["rewardCode:asc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'j0EYkB4LoLXxtCVX' \
    > test.out 2>&1
eval_tap $? 340 'GetReward1' test.out

#- 341 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicListStores' test.out

#- 342 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["cJ701veVF9sK72sc", "KolrRzDe2252uf3r", "CDpjFMrsBbdiVXT8"]' \
    --itemIds '["5MxnHKvZDbE6jNTV", "Cy857nnSoW4SpSBO", "LEJAWBnFmHPPVy1V"]' \
    --skus '["DYEwJPhvAO62G7cL", "kS33hkXMjAWeNZoW", "6v0oK1eYNLDP1qOg"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Q8PNpQErJk0N5DAh' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'JujBwWvLMX0NJTuw' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'jZFq7SMEHWMHRjFx' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["9ERauyoQs54iuTXk", "0MhQMWlY7G0ExthE", "LuqyeTY2qVbF172g"]' \
    --itemIds '["3WXt7OKdjOzdjLJz", "0giBjrZwvqJlBp7F", "smainlvFc6kmXPUA"]' \
    --skus '["KXje4Jp8HLAiY2xf", "j4mOSp8s37oeHzvB", "1n3Vp2IqAc9H3OGX"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "A3xvjhqBOY5s6GZi", "language": "pLX", "region": "lArbim16UNd2h7YV"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'KDzd4x7Pohz8xikr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gxANlFzUcttNwTvJ' \
    --body '{"epicGamesJwtToken": "clzuGPFvpS3QINQ8"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'fw8oGOtHZmcJwif3' \
    --body '{"serviceLabel": 21}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Va5qv1pSKRUBqaPF' \
    --body '{"serviceLabels": [25, 20, 87]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId '5tSJmCVeMPm3JPv4' \
    --body '{"appId": "TiCHgNRAtDAz4xQH", "steamId": "UtVV6ssB7GxE0wQC"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CBpvUqGerIE03ADy' \
    --body '{"xstsToken": "LUdXELAjwhzCKoru"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9yUzIaUKr3HZFX6S' \
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'HfkWkU4qWkeCbpjt' \
    --features '["yqNYnJPjOlLNJgan", "w8d5fRlSoalPIFdF", "fU0lNj0njffDN5Cq"]' \
    --itemId '["zBHAa4FpifCujZPb", "JPangomtbxyVwLG7", "XdioA4sdRndPI8Of"]' \
    --limit '34' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'pnYanlrbhTOIRTNw' \
    --appId 'WI8bWN4saqGniTVM' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'QgSNXyRUAJXQFUeu' \
    --limit '11' \
    --offset '77' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'd0eVI0f1S9BoJLbt' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'TlP19UmvuXF4qCj5' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'obAYZm5Rk9dZn6AJ' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'zwT6QntRVeT2n5vt' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'UYW5aHyZnY2s2TcM' \
    --appIds '["c7H2rUIjnDq53WjY", "JCZg1E48NFwjdHC0", "AFpLXnh9oJ0ZPRfQ"]' \
    --itemIds '["HTtHCLs5RhNo3ulZ", "7BMZEnKjYq4D7sUR", "FrYshVrERjG8NSet"]' \
    --skus '["wJqZh2o76mmkLXPg", "RCltSM7ILIF3rt4K", "8uWssEDYosK40mXd"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'GX8sXwUbMbUm8HNu' \
    --appId 'Pl45EYqtgvspx5bs' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'mznpH25NQYkxBRcM' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'kXNM0XZql60mHnG9' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'a44saZtKO8x1t9KY' \
    --ids '["BNlDtW5HLZLpBtf6", "M0GOkhntbGMGa6PW", "sZE2egvFQYlKJ28y"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ihIEBxLRnUbkzScR' \
    --entitlementClazz 'APP' \
    --sku 'Lf9VZHqyp3ywlzp0' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId '2Y9bExnwRkWdsYeZ' \
    --namespace $AB_NAMESPACE \
    --userId 'REMfU4MYvosrgFGf' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'SljK0WT83AyP44Zc' \
    --namespace $AB_NAMESPACE \
    --userId 'z9xlwUizxJLrqaT7' \
    --body '{"options": ["NhtP8YnDyDerqk1D", "AQac5EUOm8ZQ5MeX", "WycVHJD3Q0Bp5dYC"], "requestId": "PXQjp1dURFG0fbU2", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'cO3qaSzVhiSuuCM8' \
    --namespace $AB_NAMESPACE \
    --userId 'imAURpnu38tnxJPz' \
    --body '{"requestId": "YxxXO1ZUe0RonyG5", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'S2MeWB6KR3q1BUzm' \
    --body '{"code": "ToPOh2GwtgHV2nrH", "language": "QyAj_367", "region": "DPbghQn32LsjjOzC"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'cQsLsSHd6Exy1rAO' \
    --body '{"excludeOldTransactions": true, "language": "tHE", "productId": "jKITfsdoKcrJ9J2X", "receiptData": "wXJ5ZGRuGZjOLlST", "region": "HMKNkdaUF2jQPKzj", "transactionId": "UOXhm6knDysfcNFT"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZSjhldS5ygKeJSFV' \
    --body '{"epicGamesJwtToken": "kakb42viGnCclFxv"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'BYCl4C8Yqdhl6f9o' \
    --body '{"autoAck": false, "language": "aA-FbsD", "orderId": "xH76Frrf3ni6Gi6J", "packageName": "tIw9UnEGxNTDlze5", "productId": "lbsHsZ2tdZtVhC4M", "purchaseTime": 33, "purchaseToken": "vzKM8tX6k0VzLtOI", "region": "UgQFmPsby5FjahdF"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '3YShQSNsUHV4WJjf' \
    --body '{"currencyCode": "trVTQxVYmY4XFv8T", "price": 0.32388444715489684, "productId": "Xf1Q7iInurLVw2nO", "serviceLabel": 4}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Y4vAmkrUPd9Z6ToB' \
    --body '{"currencyCode": "KNhcuNhQX1YGnzNQ", "price": 0.08453513046164596, "productId": "3sy3T2lBbQ92SYIH", "serviceLabels": [56, 42, 70]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'VGTt4tr5VOGMXSsW' \
    --body '{"appId": "ItkPj1ZWyLPuDQfv", "currencyCode": "FP2yJXc4y6cXiYBG", "language": "bq_uYZr_VR", "price": 0.4688894702042784, "productId": "kkXVvWP8HrOyoq28", "region": "7DAph842JiDRNOOE", "steamId": "iMKzHDHVnHPq3ruH"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'hvDbdQTCx5UOl0qT' \
    --body '{"gameId": "oDhD27pB0Jqd9fax", "language": "wF-KN", "region": "AAy6ROZCgFNoKK0j"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'k3zezfXf44jZwyN3' \
    --body '{"currencyCode": "adYrmvnHQfDRoMSv", "price": 0.5152546744626512, "productId": "8z134LQmT9XKya2E", "xstsToken": "L7wGzSPG7p4LBo0Z"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'tat6hkIRrZhanMba' \
    --itemId 'uSMu9zbzpA3JtJzg' \
    --limit '94' \
    --offset '73' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'h7YlNr8BpJhcR60j' \
    --body '{"currencyCode": "UPOM4ZRVZD2EVx9t", "discountedPrice": 60, "ext": {"LPPeeG2OarOgNPi4": {}, "UCWV2RP53A0MnRNd": {}, "YI69CMja3nnRPlD4": {}}, "itemId": "hqGvfxdIMK9QBpSX", "language": "ceZ_Tg", "price": 73, "quantity": 95, "region": "we87CYfcMpj7I1iO", "returnUrl": "iXvxIxiGsyFCLeFW", "sectionId": "GCLcoAqm59MwX8yD"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VHzI0P7TR2Ysj4Me' \
    --userId 'heNnIvtGycZOXo2v' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'RLeZbb4159pevuhc' \
    --userId 'WGcDqgrpe0qVDbY4' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'KBzkOmScIeGsSDe1' \
    --userId '1TypyoAUcGgSH30f' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'YhxzzR3Cv7Nf1EYs' \
    --userId 'Oe9IpAmI8X4pW8ep' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kbVuFEzisUQjHipb' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'MyyqE6l95CuOJPFI' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'RxNW1T4NV6S1x8ON' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'iFahR4TOFjiarOmg' \
    --language 'IZ4jYQhZQYw24TQ3' \
    --region 'FWIzLtbfXO3lYvLA' \
    --storeId 'YOPkgWsEq9Wt0moU' \
    --viewId 'FfViRiFprqb34gUN' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'RdoHAxgGVa1w7Idc' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '0oxtvxkcnpFqZpsx' \
    --limit '43' \
    --offset '23' \
    --sku 'YZK4cRNKV9lzT3hC' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'dU72J6uPiU5BVKDR' \
    --body '{"currencyCode": "LQcwnrQMDkShj9Sn", "itemId": "nb2IxohWjuBX4wfc", "language": "NyZ_XI", "region": "osmIlyWovR1lQfNo", "returnUrl": "EGu5vyeltioVWUde", "source": "4DeyPhpkrV8ckfBQ"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MqfYMEz0nn5rCspr' \
    --itemId '7eQEMfBWw3YHMZLc' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '8DqyFwRPFT4nJT4V' \
    --userId 'FPIQqA4Zgw3cU3bE' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Nc5Sd0qzZ4SFYLWg' \
    --userId '6VT7p70icEerDtQd' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'n3YfGbXVrhg8tcM6' \
    --userId 'Wxqw7DkDOU17st9M' \
    --body '{"immediate": true, "reason": "BdyvMcohGd50qSL5"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fpHpvGHKS1nJyqUD' \
    --userId 'TSnHFq7yESXI6v2E' \
    --excludeFree 'true' \
    --limit '89' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'nUgFRlPYnIG9VSIv' \
    --language 'x5HobYC7v7AQ6cG0' \
    --storeId 'hmW8Q6Uh6ft6FThd' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'TvpZQwlgV0h2tkbm' \
    --namespace $AB_NAMESPACE \
    --userId '9u2JIZd0JFbFE6GC' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'oOQzy0Lzuq0XojYn' \
    --namespace $AB_NAMESPACE \
    --userId 'slW81WxiWCEW6rWo' \
    --limit '19' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'IKOsoiVDmIQLbTfT' \
    --baseAppId '9jSUsQa5iP3fpjFK' \
    --categoryPath 'ur8MghFeAc3yug4D' \
    --features 'k03uXwtvPB196uEh' \
    --includeSubCategoryItem 'false' \
    --itemName 'Bp5VqlpEepo0lzPi' \
    --itemStatus 'ACTIVE' \
    --itemType 'CODE' \
    --limit '75' \
    --offset '78' \
    --region 'ev2gztmJwwOg1fHq' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:asc", "displayOrder"]' \
    --storeId 'i9ATVyryOh3JF003' \
    --tags 'QmDdCvtph2P6mJnM' \
    --targetNamespace '4nou3aaMbWJTCakw' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'TBGGnQGDpmmtGFEg' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'B6yPnO5SYCAxlzQI' \
    --body '{"itemIds": ["1NuEPixZh6PQZKpY", "uO2KgJvJRd82lPWy", "tKH09stEobcG5Ktt"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE