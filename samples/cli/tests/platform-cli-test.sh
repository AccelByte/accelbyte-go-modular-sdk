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
    --body '{"context": {"item": {"appId": "vZUPCYvaZb25INyj", "appType": "DLC", "baseAppId": "pKepBeaZYGG0BUc6", "boothName": "wUJrNhvftU38QOU0", "boundItemIds": ["SwoMfwXHiD86nAO9", "TJzdOv8WTfl7qsvC", "XVa5tyrhzri9vkml"], "categoryPath": "yqSj6GxwMOcaZD4w", "clazz": "SuYPqqg8bagIqfMx", "createdAt": "1972-09-21T00:00:00Z", "description": "lmpXfJpeitzhWy8b", "displayOrder": 12, "entitlementType": "CONSUMABLE", "ext": {"RD3L6xWtjWRRL3Nq": {}, "cSZvhe64FVTWls5W": {}, "sRnJlrFfhitR9jMa": {}}, "features": ["E6dkfUvn7YpauIgc", "7rV3ExfqbvUuyWhg", "31rdSAzODi9WU2OP"], "fresh": true, "images": [{"as": "caLzCaIKmiCoI3HM", "caption": "sBLjWuvC6zin4diR", "height": 80, "imageUrl": "kmmQxM5FRAEMHIIZ", "smallImageUrl": "fzgEci54HPGsMFsw", "width": 84}, {"as": "mFWbXpTqLXGxDvdA", "caption": "CrUcGSZXwlqTbL6L", "height": 48, "imageUrl": "WWUUVNxhlAD4l1Rj", "smallImageUrl": "4cuAgkH9T0rrjQ7I", "width": 93}, {"as": "Ukf8IU6xxZF5bHKj", "caption": "ZQF7nyBi7rdTA4Px", "height": 85, "imageUrl": "BnPsnk4vh97ypiZ1", "smallImageUrl": "uf2yyueJX5yPgt8B", "width": 66}], "itemId": "U2RB81ddW5DQZRJJ", "itemIds": ["dzWb4OjU2PvjAMd1", "67OwidJgWC1Gezhq", "diviR1vvRmwI8OgB"], "itemQty": {"UU78HmtfWJYAfmxe": 52, "pHVndJiN9wmZR3rO": 4, "pqLtf8VIbvwMNOGl": 57}, "itemType": "SEASON", "language": "ZJMGNKbqWQEMguYx", "listable": true, "localExt": {"JNzIqjGbRIbTpg2M": {}, "fH4B79wDhoHkUuNr": {}, "g5nGWUVfvUFKbN5A": {}}, "longDescription": "1S6snfXEKZDAicAV", "lootBoxConfig": {"rewardCount": 47, "rewards": [{"lootBoxItems": [{"count": 78, "duration": 47, "endDate": "1999-09-16T00:00:00Z", "itemId": "JjEVVXhqiv97MnLi", "itemSku": "GvokDG6vL2VUGWpS", "itemType": "QQxDVzYYCcyGaMEe"}, {"count": 88, "duration": 83, "endDate": "1991-02-21T00:00:00Z", "itemId": "3K3Ze6KCNcv4DXUd", "itemSku": "0ZlX5zRRUY3lX7wt", "itemType": "gvh2RufOAb2Oo9kP"}, {"count": 27, "duration": 91, "endDate": "1972-06-02T00:00:00Z", "itemId": "0XKemoKayvRvFQVU", "itemSku": "kt5ZF1i6n1KQwg4f", "itemType": "6SDOBoly0g4mGDd7"}], "name": "5y0PVetietewS7dD", "odds": 0.321660100198115, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 46, "duration": 90, "endDate": "1974-12-14T00:00:00Z", "itemId": "mXXUlUnh6VUeTGXh", "itemSku": "HIeMFjnUTsu1ABgz", "itemType": "h1QTLdnoi317vqCc"}, {"count": 30, "duration": 21, "endDate": "1978-05-16T00:00:00Z", "itemId": "E86Z33ZG0zDxg54F", "itemSku": "rAUf7Ufrk38iVOd6", "itemType": "UnCqpjf9UKGiDQGN"}, {"count": 25, "duration": 65, "endDate": "1971-11-16T00:00:00Z", "itemId": "wEUqJV2ZdelQh3KY", "itemSku": "mrQhYO2WNHhGI6zu", "itemType": "M9CHD6lKD2nS7yqk"}], "name": "W0VNyqWBdho0IZcY", "odds": 0.21853883380341899, "type": "REWARD", "weight": 63}, {"lootBoxItems": [{"count": 0, "duration": 52, "endDate": "1984-05-17T00:00:00Z", "itemId": "ELcGo6dzrmjRRMCd", "itemSku": "7NJRrgLvkAcoePwI", "itemType": "c2Kx1qMNj4ahykJh"}, {"count": 88, "duration": 27, "endDate": "1980-06-26T00:00:00Z", "itemId": "xosRiWC5e0i7R1ne", "itemSku": "EuFU9iT0O7QGFIyj", "itemType": "fkzGLB3eYaNs5lIq"}, {"count": 97, "duration": 93, "endDate": "1986-08-29T00:00:00Z", "itemId": "4hezK33P6Rq4vbXS", "itemSku": "NXX5rN1OpIpC7ccl", "itemType": "zB7bEbuHw5aDEevf"}], "name": "y1SjgfpwpYz6GJRw", "odds": 0.768423146901543, "type": "REWARD", "weight": 20}], "rollFunction": "CUSTOM"}, "maxCount": 74, "maxCountPerUser": 0, "name": "sq5wVP8P0245fQl4", "namespace": "OUpcpMLW6vDCYbHR", "optionBoxConfig": {"boxItems": [{"count": 63, "duration": 95, "endDate": "1999-06-22T00:00:00Z", "itemId": "IQmXbpMRV8XFetO8", "itemSku": "gmKi0Sy0ESAsgVV4", "itemType": "q2akZqSDW8uyr26m"}, {"count": 3, "duration": 53, "endDate": "1976-06-28T00:00:00Z", "itemId": "t46IlziwNen0Rcfg", "itemSku": "K4fCnseWstW44b6Y", "itemType": "YHUDivWSISYzpRwD"}, {"count": 34, "duration": 21, "endDate": "1986-11-28T00:00:00Z", "itemId": "Bd82csr1Blr7Hjsp", "itemSku": "AAInAJ4nGS9Sb50W", "itemType": "Yp3mavc5Z8wl3x1K"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 11, "comparison": "isGreaterThan", "name": "Wick6vfKGXZjqZNG", "predicateType": "EntitlementPredicate", "value": "F6vpHpeYKJVNIn8P", "values": ["68yjjQSU8NApWl3h", "1zHleOtdB0ydha2Z", "magn3y3VVGyVY8T3"]}, {"anyOf": 24, "comparison": "is", "name": "cdE6QaKdfFQJZYZg", "predicateType": "SeasonTierPredicate", "value": "i08GcqXOS8xWll5M", "values": ["LDQc7hddlbmPBl7B", "sElXtGqra6hNrvN2", "RuS2EZhFyCm02Bf7"]}, {"anyOf": 90, "comparison": "isNot", "name": "Qkr9KBEv7q927M35", "predicateType": "SeasonPassPredicate", "value": "6v4U0lbhMIVvldOC", "values": ["ePnLgjWOrH10GQsX", "vsIu7V7BAJ862Urk", "GTQVeuDbKSd6XEiK"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "comparison": "isLessThanOrEqual", "name": "A8DY6L9Fv4Wih3Bo", "predicateType": "EntitlementPredicate", "value": "gIH4FlDGl7nusBb8", "values": ["LD9QvZJccIUKJe50", "L5c9vW8mkur4q0PC", "GibZ8kNY6HOUiz8O"]}, {"anyOf": 22, "comparison": "is", "name": "cCQJE2lImevIq3Xn", "predicateType": "SeasonTierPredicate", "value": "x9Lr1odrFEVIlPk3", "values": ["cRcdVLiaOkZLne0G", "YhmZh4T4YuYJxFaP", "aGYKZhPlz2QDO4Ny"]}, {"anyOf": 75, "comparison": "isLessThan", "name": "TYcssYumw0bUymlC", "predicateType": "SeasonPassPredicate", "value": "MzaT5WljhoEKP7JV", "values": ["kzp2ksm4EUhcxd4S", "E1wjzilgj8Cq4M6W", "SoRnq9WAcAhxStMg"]}]}, {"operator": "and", "predicates": [{"anyOf": 78, "comparison": "isGreaterThanOrEqual", "name": "8WLH8iNHnaFytfDl", "predicateType": "SeasonPassPredicate", "value": "Z1QZ1G9VzohxdfVJ", "values": ["e6R5Za6RrVUp7yJA", "AWTWQOic5XyIOKAV", "FDiRHZY5hfAA9qwo"]}, {"anyOf": 89, "comparison": "includes", "name": "JiCqK4vFNSqgmmZ1", "predicateType": "SeasonTierPredicate", "value": "cidymaZpLa5fzvMK", "values": ["IMyq29v6Kaj1ErB5", "1c7K5TzHFUj0mNsh", "Tjv6fXTdBGxPx1qh"]}, {"anyOf": 76, "comparison": "isGreaterThanOrEqual", "name": "fz0p8ix5QvsgZ5xs", "predicateType": "SeasonTierPredicate", "value": "xGKHU2Vf5mabb5Sg", "values": ["ywickCWPFVeAfoSF", "HVGohzpMQDqVwCKF", "OIk98JFNSfZNDJxq"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 10, "fixedTrialCycles": 1, "graceDays": 52}, "region": "QBzmaq8C5VTaRtN9", "regionData": [{"currencyCode": "cmnet2U94PHoLSRe", "currencyNamespace": "Akl3Lfw6nSqUzmN4", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1982-04-01T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1988-07-21T00:00:00Z", "discountedPrice": 51, "expireAt": "1988-05-31T00:00:00Z", "price": 49, "purchaseAt": "1990-07-11T00:00:00Z", "trialPrice": 42}, {"currencyCode": "Yyng7HwgdJPzRO6T", "currencyNamespace": "cF9mEBNAgIrzZHzx", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1974-01-02T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1977-09-18T00:00:00Z", "discountedPrice": 47, "expireAt": "1993-08-06T00:00:00Z", "price": 59, "purchaseAt": "1990-10-09T00:00:00Z", "trialPrice": 26}, {"currencyCode": "SukL9HjJ3sAHhbPB", "currencyNamespace": "FPSuGB4HAUY4wdjd", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1988-01-09T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1984-06-01T00:00:00Z", "discountedPrice": 21, "expireAt": "1971-11-10T00:00:00Z", "price": 80, "purchaseAt": "1975-03-06T00:00:00Z", "trialPrice": 42}], "saleConfig": {"currencyCode": "cHevbwYs7ShAA2Rp", "price": 8}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "cpPSNxsIUNHyhPDO", "stackable": true, "status": "INACTIVE", "tags": ["OspPxHcT0DXhMT3O", "cJKcofg6HqN0cQaz", "WIeyWB6uVgWCVkCS"], "targetCurrencyCode": "Ygbfeqcjt3nndpfi", "targetItemId": "dtnXkBdxVqUQVNBu", "targetNamespace": "LGxwEKtEsMAfv5oS", "thumbnailUrl": "6McFF3ob56nYyHmk", "title": "rpURVFLMlUiRCAZo", "updatedAt": "1988-11-23T00:00:00Z", "useCount": 38}, "namespace": "NBu04fgxX987CUIW", "order": {"currency": {"currencyCode": "cHdiXgfpiJ2ZcXuu", "currencySymbol": "GEaJVijtvLygRqmc", "currencyType": "VIRTUAL", "decimals": 97, "namespace": "SFh3LmR7rhSlZHY9"}, "ext": {"KLrPkOFwhZ4XjVTa": {}, "d7aXcj9lIYPsrYsJ": {}, "G7OB7bbwr2oVueUx": {}}, "free": true}, "source": "REDEEM_CODE"}, "script": "VyfdNBWm0eCQx2Vy", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '3zOCrtONXQJrH7Gs' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'ESTXK9B1WAp9xob6' \
    --body '{"grantDays": "7Ox8yyhdu7uoFagm"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'jE0HOTaHCczfhjMQ' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'gjxlyeHGFAHnbz93' \
    --body '{"grantDays": "wy5FZT1mA2ItBm5S"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "aua2zjhgwbUYf3LQ", "dryRun": false, "fulfillmentUrl": "BlvVktaVKfYDiZ92", "itemType": "SEASON", "purchaseConditionUrl": "6HzjLbppcSDLHRPr"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'GkqqzZA3zYyM90El' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'zNNxgao1DHRnoT3d' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '6opScIlyQ9IWJqh1' \
    --body '{"clazz": "vKdIshTDZkpHDs2e", "dryRun": false, "fulfillmentUrl": "WSM0q4zjkUhxTsa9", "purchaseConditionUrl": "1WMt6sUi3UGGbhC3"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'UM4GFzBVgr8Z0Eop' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'nHfhSpfIE46z610b' \
    --offset '72' \
    --tag '07OYAvvomHcUw33j' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "chNpSGUt94R4JzQ2", "items": [{"extraSubscriptionDays": 17, "itemId": "0XOqmgYc7b7R9JDv", "itemName": "WeMJqgvVCJmbLGHb", "quantity": 37}, {"extraSubscriptionDays": 16, "itemId": "h1XFF7wkBfJbp6Qk", "itemName": "3LPKBYftDqBsgsCX", "quantity": 32}, {"extraSubscriptionDays": 31, "itemId": "ccxc1R3x1uOArUqT", "itemName": "alauOsIfsxf5GRim", "quantity": 93}], "maxRedeemCountPerCampaignPerUser": 66, "maxRedeemCountPerCode": 24, "maxRedeemCountPerCodePerUser": 32, "maxSaleCount": 43, "name": "YIyWqS6L2V2vE53u", "redeemEnd": "1998-05-10T00:00:00Z", "redeemStart": "1993-11-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["XVyJyyUgIyda8JIx", "kY4tx9p6Yn8f1B1T", "M4FXBQWttm3o8JKB"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'YwU2QjdgXWJfG25Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'dxCwusmk1JHc5oSx' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jPnB1p7PRKLyGdnN", "items": [{"extraSubscriptionDays": 45, "itemId": "uSPSuHY4TE59MZbc", "itemName": "dbSQFMXYFIAHDKjz", "quantity": 16}, {"extraSubscriptionDays": 96, "itemId": "hqB5qjTrEz3aiYLV", "itemName": "D9d3lrUXhxKcs16m", "quantity": 29}, {"extraSubscriptionDays": 39, "itemId": "3zezfZ8QsdObFzSF", "itemName": "dmT2FQfHhwbeFU7P", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 73, "maxRedeemCountPerCode": 90, "maxRedeemCountPerCodePerUser": 37, "maxSaleCount": 7, "name": "zcPgcNVskGK25rs5", "redeemEnd": "1994-06-15T00:00:00Z", "redeemStart": "1994-05-27T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["z710wIMWZpt2QMoH", "TCMFOeFC7DSgwtYT", "nGdcyJmc7VbCqhON"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'SLeOFm2abVucKnjU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'q10gpEpRsAeIQqfH' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '3LGfANBtgC4h4K8e' \
    --body '{"categoryPath": "SHU9SCNIZZeGE7wJ", "localizationDisplayNames": {"vc52AMueek7t5tYn": "wkDwezG2hkffqaD5", "4dFpW4V7IgebbFMD": "dH6KcQOLwmNknFT2", "HMk2E8FGtZDoYYAg": "Ib90msNXwq5pLX3E"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'DdpH1fqyZhs764O3' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'cPRlrXNAXRlVN2Cr' \
    --namespace $AB_NAMESPACE \
    --storeId 'epCPcoAHBgSh24JP' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 's5nK2xU35FeSzCQA' \
    --namespace $AB_NAMESPACE \
    --storeId '8krKUHbMo0LPLTIM' \
    --body '{"localizationDisplayNames": {"8Y1074pSO6qVP3Es": "nca5KxwUY9fmUA1b", "Ub19JsviKSH0iIeb": "vOs4V91powu3KR6N", "Oj3UgC3BTQGWFBHq": "RHuXDS70bNQS0nCm"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Zq6uHXyQMwf85bzY' \
    --namespace $AB_NAMESPACE \
    --storeId 'SzvDJgp4tv5pnPmq' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'vg7c8MoFQtXK9DQs' \
    --namespace $AB_NAMESPACE \
    --storeId '0Bn29l5VGvc4Ja0Q' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'TAHJ6gbzlFqSbeoe' \
    --namespace $AB_NAMESPACE \
    --storeId 'RaOedHo1Rq8VQTEA' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'dBvAWjAfu99Yh7Fa' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '40' \
    --code 'RAwqPVauY7IyhmIx' \
    --limit '84' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'iMThSxQnM59Z3Td5' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 1}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'yl5qp7JQA9xFJStL' \
    --namespace $AB_NAMESPACE \
    --batchNo '38' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'H0aU9nRo3SxpXiCr' \
    --namespace $AB_NAMESPACE \
    --batchNo '41' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'CZiwwLlo29I48Lie' \
    --namespace $AB_NAMESPACE \
    --batchNo '23' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'bCmuk8jnaLsLsbeX' \
    --namespace $AB_NAMESPACE \
    --code 'QYoGlPFgQT8UI6O1' \
    --limit '47' \
    --offset '42' \
    --userId 'G4rKi1lfo7bjNMfN' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'oKJmKpRUkuQhbSh7' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '4SrggLYyfXDYJuiM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'EtT1ax56Fat2G9EM' \
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
    --body '{"grpcServerAddress": "DnvoxMYB24QWsVWI"}' \
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
    --body '{"currencyCode": "rPUSsFcaVpGVSubj", "currencySymbol": "0ASogs04zQ5Zvuwi", "currencyType": "VIRTUAL", "decimals": 92, "localizationDescriptions": {"XgyC54X79aK373Xe": "uDwfvK5ILRUuvDcx", "t4AJzTysdTIIT85s": "fcgxozlqBEKpfL2d", "q94P8NVzANMAKwoQ": "LJM9MNSMvyvEiM3v"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'VnoN9NeCIEnjdFWo' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"NNwVtDBAORm4Bq1w": "GHWard6KqVboBuR6", "ATRiL4FuTT8GUZvX": "6Gn3mVevO45hMUoP", "MsGoglo2vdgDHCf2": "OPm3TlUDE76AwzGp"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'pRsB8W1npbgqCYJA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'zZQ5i1siSDE4volA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'uifc61luryvXg6RG' \
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
    --body '{"data": [{"id": "Npak4F7tWtbgXasZ", "rewards": [{"currency": {"currencyCode": "8NK94V6PwkeSR1H6", "namespace": "21w38CnPEizvw46k"}, "item": {"itemId": "hzAOZ3wqybz4sSKw", "itemSku": "MGS18R2bItfERzbU", "itemType": "EUBseULB5whFOeXA"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "e1MMICpabuq8Nne5", "namespace": "6AjdILAi14Y2ox8O"}, "item": {"itemId": "gsVX9EOyJAFnmj6n", "itemSku": "qBUIq3V7nHLPQWF3", "itemType": "kjgUXs3v7HW7fKaW"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "DoOucdZuATWJ1nWW", "namespace": "FqGu8gp42pAcJrt9"}, "item": {"itemId": "uiCkrTnZOMPqx235", "itemSku": "Myo0bclemkZgzLWc", "itemType": "LoRSPTgslb8sBwcy"}, "quantity": 3, "type": "ITEM"}]}, {"id": "QBpv9WKYQMnWAxSY", "rewards": [{"currency": {"currencyCode": "R8trgrnpdVezwwCt", "namespace": "6jlCdBBlurihvs7p"}, "item": {"itemId": "IHImLMWVX0Kv3R4m", "itemSku": "X5ARGpK1UrhkQwrD", "itemType": "ac8agFhoUNlETNfB"}, "quantity": 23, "type": "ITEM"}, {"currency": {"currencyCode": "DMruPRFAp5Zy2QC6", "namespace": "sTPW9ntQylpW43hE"}, "item": {"itemId": "HunrFrEeSl2E0UOb", "itemSku": "1kmOdGkxc7D8pygy", "itemType": "5kPRDRSoKpYy7x6L"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "dk9nbyEi6oJZ1yTI", "namespace": "J3dI8Fp9evR6aiNE"}, "item": {"itemId": "NZlwIllEEvpUU32H", "itemSku": "09mQQT4A96Zxb11J", "itemType": "sNgcDYAHUwjfB5PS"}, "quantity": 23, "type": "ITEM"}]}, {"id": "JvtjtKRN126Fo7Ci", "rewards": [{"currency": {"currencyCode": "1VSFUChLCtHhSTsm", "namespace": "cGE0kOrcgICF1cgG"}, "item": {"itemId": "KMsoqdv8wMzRKVBL", "itemSku": "RKPfoeECzFVkRJ3H", "itemType": "6hazJj0Q7kreQRd4"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "1YK0Gf1YjWr1Tyjw", "namespace": "ehAEshwSUfQTaZ95"}, "item": {"itemId": "ZGYI7WvimLoDDu2r", "itemSku": "WwbkQZrsnSadpEUN", "itemType": "ygx5N7pGunU6uvSN"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "WegCMm2v6IOQpKA6", "namespace": "Hk7pXPkfnxLQfJaO"}, "item": {"itemId": "a5zYao5ANkTz0NuS", "itemSku": "JxF8aNCsyhh5ZgqH", "itemType": "7IPj5GSJ0uIn1YaQ"}, "quantity": 60, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"NugLZjNPUXEamNAT": "boNjZStjkx6jF6gu", "TdoWHnYjXMseFdgD": "E5ihlf41KtSLP45U", "kDMOOhHdWvwHecBN": "KYL27qyktlHXa8Ne"}}, {"platform": "STEAM", "platformDlcIdMap": {"zWh3jhLKWULG6Hrn": "CtYfdvQzn0KlVCZm", "Hx9zwMzCY8IMqVOE": "7PXnJ5gUmSH6rAYi", "gTuw9UCFcjWzOu8f": "SDN7NP2TlOlBSEru"}}, {"platform": "STEAM", "platformDlcIdMap": {"kH9xEjQhey1djKCZ": "zH1lHjPQs8gXujbD", "Fr4uCn84p1TbVYae": "Fw3y1MimN9ihv27y", "RvGgvsagI25JM3QT": "tOxJln9lQiv93qPU"}}]}' \
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
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'o5ytTmsQNk1KVXQb' \
    --itemId '["nhhA8GVrzzwfyLG6", "8v6oBQjImdfwVGUv", "MdHynXPUYyEdDTOq"]' \
    --limit '31' \
    --offset '100' \
    --userId 'ARF28mqHkTrQus8v' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["6FdTQluivBL5gaST", "7fTraVcSUiwrug0W", "lJte48XDCWjJupXw"]' \
    --limit '36' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1974-09-18T00:00:00Z", "grantedCode": "uGRZjZ0tRuWVJuI8", "itemId": "fFx3oq2EWnJg3r55", "itemNamespace": "mw6zMZUtYT5gJYax", "language": "YbYv-nppU", "quantity": 32, "region": "izqOfANNqNXdWMXQ", "source": "PROMOTION", "startDate": "1984-11-05T00:00:00Z", "storeId": "0zAYjVHeDZXNXT2q"}, {"endDate": "1974-07-31T00:00:00Z", "grantedCode": "YzSlbZ5ow7YLrnnV", "itemId": "2tmDLssQRz0kAB0L", "itemNamespace": "qryWIMznB1npaV1F", "language": "bRCS_TZEb_187", "quantity": 75, "region": "1bD9y2tfGaJqE0UA", "source": "GIFT", "startDate": "1986-10-03T00:00:00Z", "storeId": "kDaVaMWSokMCbPen"}, {"endDate": "1989-10-05T00:00:00Z", "grantedCode": "r9P5ExPUv0o52R88", "itemId": "EQIfXhfi2M6sB4M9", "itemNamespace": "VKbMKbMtv35I2FnM", "language": "hva_856", "quantity": 58, "region": "5O4VdMiuGb7bPMpP", "source": "PROMOTION", "startDate": "1989-10-18T00:00:00Z", "storeId": "15shlWEC4D3Bwx8m"}], "userIds": ["1MhJMvATCS3Jaqfw", "T4i2N0sLLcD2ngqt", "uuTRfPI1hW1BxjLY"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["NEuvw2aEmGNPv9Si", "I4PAPHPGXqAnxcEx", "1KBbgmFGs1enHW84"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'wv485xANC4qIJr78' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '42' \
    --status 'FAIL' \
    --userId 'LMaODltV5vyrK2zC' \
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
    --body '{"bundleId": "YCIwXjiNozCXUaWr", "password": "lK6xQt6iZfxZWfOE"}' \
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
    --body '{"sandboxId": "QiREm8uQufNmKx2n"}' \
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
    --body '{"applicationName": "AyAH7GUEfK2s1aBP", "serviceAccountId": "61M7XoBeem8AzLar"}' \
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
    --body '{"data": [{"itemIdentity": "wcn0efPCIYSpHgHT", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"iO3nEqsis2kKNWkU": "ArIAtW5f6tyUdE6o", "YU1WEySqnAqUkG0r": "L0CcYFpXlbHiIUEz", "rDYH7oJ5NznzS0gj": "cvhJchg55Ls5Vmnk"}}, {"itemIdentity": "aHUro3tY6oQ60lr1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"La4noH81OhiFzzkD": "Ys7YjTYhrtrpCjKc", "7IkUgp7oohQ22QFN": "3RqGNGaXfvNFCadu", "6m6feNfX1lFaA91i": "Vr7zR0IxYjHBN15L"}}, {"itemIdentity": "jifeDlFuJqmBcAEb", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"yKej1f1B3EYpAgqx": "BgoNRz3j2SN5Njq2", "i1Gysc0piZlfFmDE": "XbgYT6fdluJiXVZ6", "LfHddxoLdr7rUmJH": "LOlKiKKpdlWKwlIu"}}]}' \
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
    --body '{"environment": "4VJpLCu4TkWTa9Sy"}' \
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
    --body '{"appId": "M6i1uWsuLrl4vWL3", "publisherAuthenticationKey": "iMtWb8sg9i9jCzF4"}' \
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
    --body '{"clientId": "WyJG84ixf91k7vk2", "clientSecret": "Bzb7mXOsq5iQaacs", "organizationId": "ID7yz6YZaqOJhSFO"}' \
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
    --body '{"relyingPartyCert": "WXjN87bQVxc1E7SL"}' \
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
    --password 'uCgSdZYOcysxlIBM' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'UlNiJNEWTxSzbmSv' \
    --itemId 'NHAQhQnXrOlvvR2F' \
    --itemType 'APP' \
    --endTime 'sbveD8dfVgtWz2L0' \
    --startTime '69Kryt5AfX6aCEPB' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature '1ZlBqCocPn2sFLvD' \
    --itemId 'Q2OEtuQ1lEkjal9a' \
    --itemType 'APP' \
    --endTime 'viX3gvBxgsEHvCgB' \
    --startTime 'XmTkNxhtn1AykGFr' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'SZHa7LRtHsL7ths8' \
    --body '{"categoryPath": "15zY4KQMr58FFfiW", "targetItemId": "B9A432oBcs8FOuYk", "targetNamespace": "9dLXMcF31xFsb66R"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'cAKkFIM57DtREwFA' \
    --body '{"appId": "V2Ot190PAcoR5fas", "appType": "DLC", "baseAppId": "YoonRyYaUtJK1Kbt", "boothName": "WJrSErPWElpZ2sgg", "categoryPath": "zyrIiKxdqDkV1Suy", "clazz": "bSb6atXuFo9T73Bj", "displayOrder": 2, "entitlementType": "DURABLE", "ext": {"U2vCVUGGLGNwigHT": {}, "XAhnw8jctJWZ5ZFF": {}, "hjZpV9TKMOjiLdEF": {}}, "features": ["9C0wYalqYMEORZkk", "yCNn0Zr5CBF4TThi", "sIvu3Zm3NeUY3SnA"], "images": [{"as": "o10bGBzlnzKrRgVi", "caption": "VUwuUvtOXS6Khl2M", "height": 6, "imageUrl": "y6RqVZYzzrOH2BeY", "smallImageUrl": "eiSd58VuT9orIpTj", "width": 12}, {"as": "1nzu8Y50VStzWzDx", "caption": "5dLvPC3tBGRC9ODJ", "height": 10, "imageUrl": "rFBbtfUaIj1Fpo4L", "smallImageUrl": "pYcZFHYP9O07rl4C", "width": 7}, {"as": "Fy0UM1R5CeDBvD9K", "caption": "TQNxARDPm0tINxOe", "height": 99, "imageUrl": "VTG2xQ6ZbJmbHngZ", "smallImageUrl": "z0qH6QzrCbOw1aIy", "width": 96}], "itemIds": ["hXF1yTInOdda7ocI", "zTLhEkBslJlQbWG2", "LuUmzJSFSnBpR3Bp"], "itemQty": {"gRowfhLhLt3mxgFa": 20, "6iZ83ishb5KFNDYh": 18, "upZHGBzfFL8jqL5l": 46}, "itemType": "APP", "listable": true, "localizations": {"vNguTmadiH26qeDN": {"description": "PEdBhuokerL66hPQ", "localExt": {"jhJau5yMydy5xPtn": {}, "INIZ78Y6ejFr6QDS": {}, "4LoFDHe1mZyma2fr": {}}, "longDescription": "BVClVUTdDxSJNtdD", "title": "6LIG69DMWrcyODyj"}, "i5SdvemUiSoqdvg2": {"description": "YkfL8O5ukMctLJb5", "localExt": {"bzWhZudtP81xfYXf": {}, "z2dOPquXyb4JjyQw": {}, "wxUsexyUQxanvG14": {}}, "longDescription": "4IVqe6c9BYLuErLo", "title": "9NVbWpjITLt5GpZG"}, "GQSiNC6TxlNo9tQQ": {"description": "dFkhVDEK2rgGmVAA", "localExt": {"kVPdsLiCRiiOGpzm": {}, "1Y9OLHvGNK2MkycR": {}, "rDkzS5j3J59kPA9V": {}}, "longDescription": "24U3VDVDkaVMw9qo", "title": "GngeraHKc7v1tdtL"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 86, "duration": 96, "endDate": "1985-08-05T00:00:00Z", "itemId": "jSh2dNWuRAIVP7Ch", "itemSku": "4TSq9e00zEJ1SeuP", "itemType": "dkm34qRmrucic8AB"}, {"count": 11, "duration": 29, "endDate": "1972-08-18T00:00:00Z", "itemId": "n4qQP3Bu9ttqUATp", "itemSku": "fUj3mu8gsaQb8ozt", "itemType": "L9oAzkpB1gQ7ECxj"}, {"count": 52, "duration": 90, "endDate": "1999-08-30T00:00:00Z", "itemId": "8eS8CDtMyPumwM6M", "itemSku": "0HcDVg3Va8QkwxyA", "itemType": "PjRhDrsjy10QAHMc"}], "name": "dvailQUlYcRtlKLG", "odds": 0.5790681324266912, "type": "REWARD", "weight": 64}, {"lootBoxItems": [{"count": 49, "duration": 7, "endDate": "1996-03-30T00:00:00Z", "itemId": "wBOT25Fp0bXt0cD1", "itemSku": "W9iHWZnXTbgywhFV", "itemType": "aNhHhxFpVbh2LHb0"}, {"count": 4, "duration": 6, "endDate": "1972-09-21T00:00:00Z", "itemId": "fWjJx4KMK3nT3FeM", "itemSku": "bPSsCChVNdUuBnjM", "itemType": "60THn7PFczR6weXl"}, {"count": 99, "duration": 31, "endDate": "1993-11-02T00:00:00Z", "itemId": "2AhyYZhevEhNbaJb", "itemSku": "Ypv7M4BQcnau9pn5", "itemType": "yzl5Z1smATVO2jYo"}], "name": "sX6Hfmmkrjm0TOon", "odds": 0.027757441683306627, "type": "PROBABILITY_GROUP", "weight": 34}, {"lootBoxItems": [{"count": 20, "duration": 49, "endDate": "1973-08-21T00:00:00Z", "itemId": "nt7rcVYwjkIp2525", "itemSku": "rKvY27jalFy52Mpv", "itemType": "oNqlDQmQHCyjE6pj"}, {"count": 73, "duration": 97, "endDate": "1982-09-21T00:00:00Z", "itemId": "zWIzlNJFyNwanWJG", "itemSku": "pHuVKdVvZFGeA9xC", "itemType": "df5A4ItMeMbH2PRO"}, {"count": 92, "duration": 84, "endDate": "1974-11-02T00:00:00Z", "itemId": "IsZnot9xoDnMsi89", "itemSku": "iMA0GJ8Iui8ckWfn", "itemType": "YTOaBEQw2N8gnafh"}], "name": "lbWVu7M9K0wCNxwL", "odds": 0.8866709128657301, "type": "PROBABILITY_GROUP", "weight": 87}], "rollFunction": "CUSTOM"}, "maxCount": 61, "maxCountPerUser": 54, "name": "DiMJa86Yghq84Kqx", "optionBoxConfig": {"boxItems": [{"count": 98, "duration": 77, "endDate": "1977-04-23T00:00:00Z", "itemId": "lNTwBNAS9UdxnkMk", "itemSku": "uIpqJf39rDjHr31q", "itemType": "ucehdUWbdfuE3AEZ"}, {"count": 24, "duration": 58, "endDate": "1980-08-02T00:00:00Z", "itemId": "MZUiDS0lEzlbAIYe", "itemSku": "gDW5YD73xXWIS7pK", "itemType": "j83LqbmCnGXuMMNI"}, {"count": 85, "duration": 47, "endDate": "1993-11-26T00:00:00Z", "itemId": "6kMbNnevThGcBNyu", "itemSku": "6wTz0dgZTV64CsaS", "itemType": "TNSW6OEPfHCbLuwj"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 12, "fixedTrialCycles": 37, "graceDays": 38}, "regionData": {"iJ61JIAfhOp1WcCH": [{"currencyCode": "UajdW3QJgkMh8hOr", "currencyNamespace": "3hJICdqOJvLtJtDx", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1992-07-01T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1989-12-19T00:00:00Z", "expireAt": "1990-09-19T00:00:00Z", "price": 1, "purchaseAt": "1999-12-23T00:00:00Z", "trialPrice": 66}, {"currencyCode": "PdiOHtbX1645WEOn", "currencyNamespace": "gVqbJ1CY6TuAWIuc", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1988-05-02T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1971-04-05T00:00:00Z", "expireAt": "1976-07-21T00:00:00Z", "price": 9, "purchaseAt": "1987-11-11T00:00:00Z", "trialPrice": 95}, {"currencyCode": "nq7TktQFflaLwj1a", "currencyNamespace": "kzjIEgFfSFRdmsR8", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1997-03-30T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1986-11-26T00:00:00Z", "expireAt": "1992-04-25T00:00:00Z", "price": 29, "purchaseAt": "1982-09-09T00:00:00Z", "trialPrice": 5}], "HHPIVtSvbTvsjHsw": [{"currencyCode": "2OKqmWZWb846geTZ", "currencyNamespace": "d3SAzU1TP1fOX4sQ", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1985-07-04T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-04-23T00:00:00Z", "expireAt": "1971-03-21T00:00:00Z", "price": 30, "purchaseAt": "1976-01-09T00:00:00Z", "trialPrice": 55}, {"currencyCode": "zzZCabuH1ZNOY5Cf", "currencyNamespace": "4PS65V4NHxI8CiMT", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1973-10-12T00:00:00Z", "expireAt": "1987-08-15T00:00:00Z", "price": 12, "purchaseAt": "1976-02-18T00:00:00Z", "trialPrice": 27}, {"currencyCode": "q6YV1RVxNwf1NemI", "currencyNamespace": "l86WpGKyDVrTi3Tx", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1990-04-02T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1988-03-06T00:00:00Z", "expireAt": "1999-04-28T00:00:00Z", "price": 23, "purchaseAt": "1987-08-19T00:00:00Z", "trialPrice": 8}], "8B9OTbJ1155uT9eQ": [{"currencyCode": "PqgmMr0IEchk9kQC", "currencyNamespace": "Ojg0WIY6CCAWDIEF", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1972-04-17T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1972-05-22T00:00:00Z", "expireAt": "1998-11-27T00:00:00Z", "price": 52, "purchaseAt": "1998-11-29T00:00:00Z", "trialPrice": 62}, {"currencyCode": "gp73NNm1zKQIXo7K", "currencyNamespace": "kfEmucuJLpXgBTDP", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1998-10-08T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1983-08-25T00:00:00Z", "expireAt": "1973-07-21T00:00:00Z", "price": 35, "purchaseAt": "1995-01-21T00:00:00Z", "trialPrice": 14}, {"currencyCode": "8zLBj7OFPmyQTcgi", "currencyNamespace": "NmYGcQJtrMrdxaYk", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1990-12-05T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1986-09-25T00:00:00Z", "expireAt": "1976-09-22T00:00:00Z", "price": 58, "purchaseAt": "1980-06-09T00:00:00Z", "trialPrice": 14}]}, "saleConfig": {"currencyCode": "QlzndzMq2tDu5qlZ", "price": 29}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "vFEDe9Xni8cZ3NKA", "stackable": true, "status": "ACTIVE", "tags": ["sgP1Vb8fSuGJrjrZ", "5yRGX4o8QFbi1LeL", "xx8ToXtJosetYr3k"], "targetCurrencyCode": "a82ki1XFPb1hoBaa", "targetNamespace": "GS2RDVDcAqMDzifg", "thumbnailUrl": "BHX3MiO9G6PA60jK", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0YGvplKaiY7yuCmL' \
    --appId 'KQqKxCDTYehcg9Z8' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'dp8DZA1sLnn3mwT6' \
    --baseAppId 'unDKMZKa932N4bo3' \
    --categoryPath 'Irx4JuphRnMWL5nT' \
    --features 'lHPZoJGpSBxMFJlF' \
    --includeSubCategoryItem 'false' \
    --itemType 'OPTIONBOX' \
    --limit '97' \
    --offset '4' \
    --region 'xVFqqCMRB4OX3aSo' \
    --sortBy '["createdAt", "name:asc", "createdAt:desc"]' \
    --storeId 'H3A9iAIZuQNOsYPL' \
    --tags 'UJO4IJ4O0FEjbNyg' \
    --targetNamespace '40KmisUqIWeQSv77' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["OkUdY5TvwFXFTJHR", "n0vQNtM7dli7UnUg", "qmWdd3RYxkMR4KRc"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'tSfRbldr0pWOjCeo' \
    --sku '7o8CmfNFYLnp914e' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'z5pndw5NB7vnsJvh' \
    --populateBundle 'false' \
    --region 'W9xOVZQ8RFnsYQ0h' \
    --storeId 'jfaNTO1uHaHvOMQj' \
    --sku '5GaPG1U5LEYO56K9' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'HfIlXgTGu5xJZxNK' \
    --sku 'ZTATqfCsjt546Rzh' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["IGAFr3tRiK34he8U", "GAahvBgQZit5EiDs", "2YDl73JvHPwHUa0D"]' \
    --storeId 'dQ0QkcOnEodaB4VJ' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'tUk5qRJ7xXvRDYmD' \
    --region 'WEhGWQ8Z4CXvJ5Gh' \
    --storeId 'B51dnLZ4fN8Kl9wG' \
    --itemIds '7rySmI7YMrz7JwKT' \
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
    --userId '3VBPXbPfrnzZcBgq' \
    --body '{"itemIds": ["Srdi4ljKaL9x2nFw", "xcxE2h9KE73YAmJj", "ZeWxHv4x30tuLgny"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Y3HdCZOgLSceHH8e' \
    --body '{"changes": [{"itemIdentities": ["3nzzuyU1YWtxLfKX", "a19MHioI1EajG4A5", "iqtynEDDEtJeaKOj"], "itemIdentityType": "ITEM_SKU", "regionData": {"iSKSRxWf2J3BP8BQ": [{"currencyCode": "r1RcXzSjS9WD1LE9", "currencyNamespace": "DRtfbrp0AxIbI8AV", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1993-11-01T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1976-10-16T00:00:00Z", "discountedPrice": 89, "expireAt": "1983-03-29T00:00:00Z", "price": 12, "purchaseAt": "1982-12-12T00:00:00Z", "trialPrice": 45}, {"currencyCode": "811Z2g82Zn8FxMbu", "currencyNamespace": "0bEcgX4RwMX0KlSo", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1980-06-17T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-06-26T00:00:00Z", "discountedPrice": 86, "expireAt": "1993-01-12T00:00:00Z", "price": 13, "purchaseAt": "1971-08-27T00:00:00Z", "trialPrice": 10}, {"currencyCode": "FM6n1FKZwW4OuEAh", "currencyNamespace": "A1flabxAXthMO18H", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1982-04-06T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-11-19T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-12-17T00:00:00Z", "price": 69, "purchaseAt": "1993-09-29T00:00:00Z", "trialPrice": 75}], "jgpeM4DkRhcSx5D3": [{"currencyCode": "5121YuQNoReB3E64", "currencyNamespace": "aEwvMp4qsWejboVa", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1971-07-28T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1972-01-30T00:00:00Z", "discountedPrice": 53, "expireAt": "1980-12-07T00:00:00Z", "price": 16, "purchaseAt": "1995-12-23T00:00:00Z", "trialPrice": 80}, {"currencyCode": "iDIhSgeIx8srSUKI", "currencyNamespace": "pk0RTWvc4ft8In0c", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1997-10-28T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1975-04-06T00:00:00Z", "discountedPrice": 42, "expireAt": "1982-06-07T00:00:00Z", "price": 37, "purchaseAt": "1992-05-07T00:00:00Z", "trialPrice": 57}, {"currencyCode": "Vjkcslm8ORPJxjRS", "currencyNamespace": "Xtpn63aJFMjNckn4", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1972-05-19T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1987-10-11T00:00:00Z", "discountedPrice": 79, "expireAt": "1977-12-26T00:00:00Z", "price": 48, "purchaseAt": "1983-05-18T00:00:00Z", "trialPrice": 99}], "5sa0DYyHNTSYzFi0": [{"currencyCode": "YsnqRYbBB8LmFqhS", "currencyNamespace": "qU2JGVS0jHjlEY2D", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1989-06-24T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1987-11-10T00:00:00Z", "discountedPrice": 91, "expireAt": "1995-01-17T00:00:00Z", "price": 16, "purchaseAt": "1985-09-18T00:00:00Z", "trialPrice": 94}, {"currencyCode": "8KkAmpljwMFpqYeM", "currencyNamespace": "Yw3UELk34Whur1w5", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1992-10-31T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1971-08-12T00:00:00Z", "discountedPrice": 78, "expireAt": "1978-05-25T00:00:00Z", "price": 69, "purchaseAt": "1982-12-09T00:00:00Z", "trialPrice": 23}, {"currencyCode": "t4XJMePPs5Dfr2n9", "currencyNamespace": "M0T3qQ89ODbSae5R", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1994-04-15T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1973-12-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1988-08-20T00:00:00Z", "price": 64, "purchaseAt": "1980-06-03T00:00:00Z", "trialPrice": 38}]}}, {"itemIdentities": ["EtzGbflMQ6CEWNn1", "0ZNpX0zP9qrLJEDH", "jcYDNT4Fugqfzydy"], "itemIdentityType": "ITEM_SKU", "regionData": {"RXrvhNttmBNJpvxP": [{"currencyCode": "1bRncSZgD2As6BCP", "currencyNamespace": "v5xtjiFp3t49kBEo", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1999-10-08T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1993-04-06T00:00:00Z", "discountedPrice": 22, "expireAt": "1999-11-06T00:00:00Z", "price": 33, "purchaseAt": "1988-06-04T00:00:00Z", "trialPrice": 66}, {"currencyCode": "oJem5TMpj3ZoLiL2", "currencyNamespace": "MNIbocMXcaTaFTrG", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1994-12-26T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1973-05-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1979-08-03T00:00:00Z", "price": 93, "purchaseAt": "1974-04-27T00:00:00Z", "trialPrice": 14}, {"currencyCode": "kBIGqqQPiSz4qSce", "currencyNamespace": "w49vtcQ8PycHaZmF", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1971-08-19T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1985-03-13T00:00:00Z", "discountedPrice": 29, "expireAt": "1988-09-16T00:00:00Z", "price": 3, "purchaseAt": "1994-08-14T00:00:00Z", "trialPrice": 52}], "JVaomFbRBTl0XObU": [{"currencyCode": "NJ5sX8fAFBOOxtzp", "currencyNamespace": "OmFGX6fw4AVmSiVj", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1987-01-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1985-07-06T00:00:00Z", "discountedPrice": 15, "expireAt": "1971-08-20T00:00:00Z", "price": 24, "purchaseAt": "1974-03-09T00:00:00Z", "trialPrice": 42}, {"currencyCode": "ejVTlXTGaj6l5bel", "currencyNamespace": "LNMDqkB05rlWzBAd", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1976-10-22T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1986-05-17T00:00:00Z", "discountedPrice": 35, "expireAt": "1988-08-04T00:00:00Z", "price": 72, "purchaseAt": "1990-02-03T00:00:00Z", "trialPrice": 35}, {"currencyCode": "ZRVuAYqwfur79wiD", "currencyNamespace": "O9V7i9O3NJV06dDL", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1988-05-21T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1990-03-30T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-05-19T00:00:00Z", "price": 16, "purchaseAt": "1979-10-21T00:00:00Z", "trialPrice": 83}], "ljn0TMHN4TqKGxKi": [{"currencyCode": "0Sxfbm5dPqiFQbE5", "currencyNamespace": "XIfky1K0uIlcpgbc", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1989-06-10T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1980-06-29T00:00:00Z", "discountedPrice": 92, "expireAt": "1974-04-20T00:00:00Z", "price": 27, "purchaseAt": "1971-12-29T00:00:00Z", "trialPrice": 13}, {"currencyCode": "liaItkVZqFLr0B1P", "currencyNamespace": "fZRTBVSx6rqpoWnI", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1980-06-20T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1989-09-15T00:00:00Z", "discountedPrice": 56, "expireAt": "1996-07-15T00:00:00Z", "price": 1, "purchaseAt": "1983-09-18T00:00:00Z", "trialPrice": 47}, {"currencyCode": "RPAc5URJo41zdOf6", "currencyNamespace": "VUNfq0AytpgeSBKS", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1975-01-16T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1975-05-20T00:00:00Z", "discountedPrice": 82, "expireAt": "1982-02-03T00:00:00Z", "price": 60, "purchaseAt": "1985-01-03T00:00:00Z", "trialPrice": 34}]}}, {"itemIdentities": ["eURlbcuJ5CDIyYq2", "0BPM7aTIrOVQ0htx", "rXMBf7H7m6kVZpWo"], "itemIdentityType": "ITEM_ID", "regionData": {"BvgGB7LoFw6xk2k8": [{"currencyCode": "b0GeQyw3uXyiWWXy", "currencyNamespace": "yPpcjCmq3MQWW9dF", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1980-09-28T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1984-05-25T00:00:00Z", "discountedPrice": 80, "expireAt": "1991-10-08T00:00:00Z", "price": 38, "purchaseAt": "1974-07-03T00:00:00Z", "trialPrice": 85}, {"currencyCode": "XGwCXXMNhhuFXtSl", "currencyNamespace": "OS2rQTKfXltopivO", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1977-04-15T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1979-06-09T00:00:00Z", "discountedPrice": 71, "expireAt": "1972-10-24T00:00:00Z", "price": 28, "purchaseAt": "1989-04-15T00:00:00Z", "trialPrice": 36}, {"currencyCode": "6qwt8s60IVXQBrpV", "currencyNamespace": "dssX9tNpwF2sqmLk", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1995-09-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1988-04-03T00:00:00Z", "discountedPrice": 86, "expireAt": "1990-12-31T00:00:00Z", "price": 32, "purchaseAt": "1981-11-21T00:00:00Z", "trialPrice": 46}], "CwQkIgRTsZ4DEKH7": [{"currencyCode": "5AGgoEvSP3rH2XJJ", "currencyNamespace": "mJ59XAYAbBi4dW1r", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1973-08-30T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1987-11-15T00:00:00Z", "discountedPrice": 79, "expireAt": "1993-04-25T00:00:00Z", "price": 31, "purchaseAt": "1999-12-02T00:00:00Z", "trialPrice": 25}, {"currencyCode": "xmhGEiEcHR0lAW0X", "currencyNamespace": "kKNltsztGcWMs2ol", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1999-09-11T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1987-08-22T00:00:00Z", "discountedPrice": 62, "expireAt": "1977-01-04T00:00:00Z", "price": 94, "purchaseAt": "1990-03-25T00:00:00Z", "trialPrice": 7}, {"currencyCode": "QGjMtY0FIjPovQ0U", "currencyNamespace": "5DogtB3SnAt3e2bG", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1981-06-13T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1982-01-21T00:00:00Z", "discountedPrice": 55, "expireAt": "1987-07-21T00:00:00Z", "price": 58, "purchaseAt": "1998-08-21T00:00:00Z", "trialPrice": 77}], "u8Hbvd1gZ3JfAm0s": [{"currencyCode": "WkEbwAERfju0ewKS", "currencyNamespace": "u6whWSdDVVZfzqrI", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1990-11-11T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1974-09-17T00:00:00Z", "discountedPrice": 24, "expireAt": "1983-06-30T00:00:00Z", "price": 98, "purchaseAt": "1977-07-09T00:00:00Z", "trialPrice": 85}, {"currencyCode": "mkTSpGWK7Vdj2CF8", "currencyNamespace": "mjteDJ7rHwv9xWx5", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1983-04-28T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1977-03-20T00:00:00Z", "discountedPrice": 80, "expireAt": "1977-02-22T00:00:00Z", "price": 58, "purchaseAt": "1990-01-19T00:00:00Z", "trialPrice": 78}, {"currencyCode": "WPgknxFPFqrCKAOa", "currencyNamespace": "A8jr36QofrHO1FHm", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1989-10-14T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1988-07-11T00:00:00Z", "discountedPrice": 83, "expireAt": "1976-07-10T00:00:00Z", "price": 75, "purchaseAt": "1989-07-05T00:00:00Z", "trialPrice": 49}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '8' \
    --offset '75' \
    --sortBy 'vSEGo0ruhq1oRRzK' \
    --storeId 'qO3oWLkL9BC5cNeY' \
    --keyword 'yjEsLbZeGU3GGTA8' \
    --language '7U4p8f0RaCemwf2V' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '71' \
    --offset '51' \
    --sortBy '["createdAt", "createdAt:asc", "updatedAt:desc"]' \
    --storeId 'me8Jul8bZZ8gkaJB' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'yDb8fpiMM2Re7eT8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5tnFQFVfOUzDQkD0' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'AKSbj8A2xquGK9RM' \
    --namespace $AB_NAMESPACE \
    --storeId 'OMxaA6OqGezyWnCa' \
    --body '{"appId": "JigSn7Y91fxnyiwz", "appType": "DLC", "baseAppId": "Enu6ZAUVxi6CGR1T", "boothName": "oZNJRif68p3F7ZfN", "categoryPath": "Z7AIXBbYIedR1Q9j", "clazz": "OhVkb5psBIGCNYPO", "displayOrder": 25, "entitlementType": "DURABLE", "ext": {"SenFu0lURYKf5MxZ": {}, "lLbdCRCpWF9FDPyM": {}, "Hwgdug8JnrVujzvN": {}}, "features": ["oIXyGbav3dRhrwyG", "c10EWhXXtbcGwAwF", "k90yWerMEtjlUnkC"], "images": [{"as": "KTKRer0cA0vSzPjL", "caption": "9q0gkhu6HB4o6Vf0", "height": 71, "imageUrl": "R1hHpTetbgKcEwLD", "smallImageUrl": "FkxrXuwXA2ftqBYv", "width": 84}, {"as": "lb9IAXacBNOmPe0V", "caption": "baOit7fQwjRVVSFa", "height": 36, "imageUrl": "KqXyBromMMv1OROD", "smallImageUrl": "YGawab2mvnYy6E1h", "width": 47}, {"as": "O0VNicSppQUygWnR", "caption": "pohCTxGXacxSt485", "height": 21, "imageUrl": "tdy5NR9D7endEMom", "smallImageUrl": "LueooOmPCWLvsJ5K", "width": 13}], "itemIds": ["kMqQBGmK7QxT7n5E", "Adg55CBkGstqRoxF", "ntxkEiKWbelmunBF"], "itemQty": {"tMnGsWOsZtLVMIsX": 94, "aRwCW5PAvf9LfXVV": 38, "sN9QdYg6bTJGx4Tv": 89}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"nqMxEgSPsPEGCRyo": {"description": "wHliKuOWoIK8Gh5F", "localExt": {"eMJ49uJB5VrnTr4p": {}, "AgCRYfKUAjvG0YQI": {}, "MJZMCsBR3pte6cBY": {}}, "longDescription": "HtyAVEVRvRAHVgMY", "title": "Bvm0inIfHQUkh4fx"}, "JLpHUupYYU4JfdD0": {"description": "apBHp5XDJQizIrF1", "localExt": {"wbDlnZuKOqey7NbL": {}, "rE0W8dVY3aKlDeVa": {}, "QYX3PLhB0KaAn78d": {}}, "longDescription": "6Ev2D2GyC3Fue1Xg", "title": "Lcb9Sme2BVDVo8a7"}, "BYtBQP4Wwxb1H7xg": {"description": "rxj9fnYUEukA7QAE", "localExt": {"DqD6FsbbSEUj3PBK": {}, "UerkMQwXLxF0KmXR": {}, "TJQjWBXAT5yNaqkl": {}}, "longDescription": "RxRZMa4sYbdnaUwA", "title": "mOeQJ1avJGySbmns"}}, "lootBoxConfig": {"rewardCount": 46, "rewards": [{"lootBoxItems": [{"count": 88, "duration": 0, "endDate": "1983-05-15T00:00:00Z", "itemId": "4OHsyuS5KuABETAK", "itemSku": "11taXFcg4ROWlSNv", "itemType": "GLJmIXtkavX8Vkuj"}, {"count": 66, "duration": 25, "endDate": "1992-08-06T00:00:00Z", "itemId": "kpyE9R8RMuQWC3Uo", "itemSku": "VPV3AKD6mddVPrYV", "itemType": "9FJf2jBLQpZ45wLI"}, {"count": 46, "duration": 70, "endDate": "1992-08-17T00:00:00Z", "itemId": "hXQNvy7opPoIMB8X", "itemSku": "JFJU8Mf5uIUTbrzO", "itemType": "txRCeRrAHnJki63m"}], "name": "vfPavdJVy38YgH2S", "odds": 0.25664938697548745, "type": "REWARD_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 21, "duration": 90, "endDate": "1974-05-18T00:00:00Z", "itemId": "yFpelNZhNjAghUEz", "itemSku": "tgaIyjWqEVVn8Htm", "itemType": "fP8hjGmZsIWK7uYQ"}, {"count": 95, "duration": 23, "endDate": "1992-04-04T00:00:00Z", "itemId": "MzV9CsLLpljZnrCv", "itemSku": "QGBVBYroUmCn9GIN", "itemType": "u5MRLniolOxh57in"}, {"count": 90, "duration": 79, "endDate": "1976-07-15T00:00:00Z", "itemId": "nUGZ5hzJu4ZtyPpl", "itemSku": "vZuaQ9N9PelPcC5g", "itemType": "EhEO69pNzV2z9GN4"}], "name": "NDL98ZxLRegwlGpp", "odds": 0.08172504531468061, "type": "REWARD_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 50, "duration": 25, "endDate": "1975-02-24T00:00:00Z", "itemId": "fY6axs8WgmoFVTNu", "itemSku": "edidl8u42JIrA75X", "itemType": "jpbbDmJryXagBDCw"}, {"count": 21, "duration": 12, "endDate": "1975-06-05T00:00:00Z", "itemId": "WUy9G1CYjNWXFrjB", "itemSku": "xxid1Hmyyg12DvrY", "itemType": "sbrBIJOnioptBPcn"}, {"count": 14, "duration": 16, "endDate": "1986-05-01T00:00:00Z", "itemId": "0U2cIn1c55M3MF3e", "itemSku": "Lif8uUFCKdhy9zAF", "itemType": "LpE7v5sqf88vpWDP"}], "name": "m1kvUg3wwr1TFKqd", "odds": 0.6900640500850316, "type": "REWARD_GROUP", "weight": 4}], "rollFunction": "DEFAULT"}, "maxCount": 38, "maxCountPerUser": 85, "name": "xxtBqcPnq7te8wk9", "optionBoxConfig": {"boxItems": [{"count": 69, "duration": 80, "endDate": "1982-08-30T00:00:00Z", "itemId": "OE2KUb6Y7W5XjgQT", "itemSku": "qZAn96LhyuESpJPV", "itemType": "VRiueotdeYIcjpEw"}, {"count": 92, "duration": 46, "endDate": "1992-08-28T00:00:00Z", "itemId": "B8Zo4jU68kJzxI8n", "itemSku": "qgy9hOplMveMYRoH", "itemType": "xIXKpLvEWHptPq35"}, {"count": 55, "duration": 49, "endDate": "1997-06-30T00:00:00Z", "itemId": "pypD7polPvsIxl6V", "itemSku": "HCHeqyZtHjfVaJzC", "itemType": "4S42exkJIbWNEdBb"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 14, "fixedTrialCycles": 8, "graceDays": 90}, "regionData": {"hNzb1WpmhOdZTNMB": [{"currencyCode": "tCLOzNhnLt8p9vL9", "currencyNamespace": "TJhkbUbQr76rYJeX", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1998-08-29T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1975-07-16T00:00:00Z", "expireAt": "1984-06-06T00:00:00Z", "price": 72, "purchaseAt": "1973-08-05T00:00:00Z", "trialPrice": 31}, {"currencyCode": "1yTPSbbQF6Eoo6pA", "currencyNamespace": "Dq200phdVfCY1QE7", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1981-07-14T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1976-05-23T00:00:00Z", "expireAt": "1981-08-27T00:00:00Z", "price": 24, "purchaseAt": "1988-02-05T00:00:00Z", "trialPrice": 90}, {"currencyCode": "GXrwrcXqohaZarBc", "currencyNamespace": "tpdqeWtGoHOdQ1uY", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-05-13T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1979-11-02T00:00:00Z", "expireAt": "1972-03-30T00:00:00Z", "price": 59, "purchaseAt": "1976-03-28T00:00:00Z", "trialPrice": 24}], "GSp2dLLBuF3LpxNX": [{"currencyCode": "FBxUh1GWZVrkySd6", "currencyNamespace": "vzn8siQELxF6okZO", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1972-07-12T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1999-02-28T00:00:00Z", "expireAt": "1998-03-08T00:00:00Z", "price": 87, "purchaseAt": "1984-04-04T00:00:00Z", "trialPrice": 88}, {"currencyCode": "WLmhcOWx4nBPwPzO", "currencyNamespace": "oH6rRKf8fwnn3vWy", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1997-09-29T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1993-12-28T00:00:00Z", "expireAt": "1979-08-10T00:00:00Z", "price": 57, "purchaseAt": "1991-01-13T00:00:00Z", "trialPrice": 49}, {"currencyCode": "nWp3cqzSxXMgm6ic", "currencyNamespace": "jg2JimVAFP7JF4eC", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1988-02-20T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1982-08-02T00:00:00Z", "expireAt": "1971-11-28T00:00:00Z", "price": 74, "purchaseAt": "1999-11-10T00:00:00Z", "trialPrice": 79}], "hIu4Vy8kIPdrd7zy": [{"currencyCode": "2AnLsvqB6ypIl8XV", "currencyNamespace": "qQEO0J4GRmPtxvfn", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1974-04-15T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1982-03-16T00:00:00Z", "expireAt": "1980-05-08T00:00:00Z", "price": 41, "purchaseAt": "1971-04-29T00:00:00Z", "trialPrice": 63}, {"currencyCode": "qUaaMUWXqeuTkMSU", "currencyNamespace": "ep9y1XGGcz8aSZAl", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1985-06-06T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1992-03-10T00:00:00Z", "expireAt": "1973-10-10T00:00:00Z", "price": 91, "purchaseAt": "1985-09-28T00:00:00Z", "trialPrice": 45}, {"currencyCode": "fm9ussMVj2oc0MV9", "currencyNamespace": "5Nq6r8SUnk3tpnMC", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1997-01-28T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-01-20T00:00:00Z", "expireAt": "1980-07-11T00:00:00Z", "price": 99, "purchaseAt": "1983-06-22T00:00:00Z", "trialPrice": 34}]}, "saleConfig": {"currencyCode": "ZEWpr2FFUzqNjg0O", "price": 79}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "bUa5cWKbVv4b8JCK", "stackable": false, "status": "ACTIVE", "tags": ["Sqbyr40SdU7uldt8", "LlklmMFRmc5NsOst", "MnJ48Wc2tW6Q5QQv"], "targetCurrencyCode": "IIwR2xBe7Xab4kSE", "targetNamespace": "yqdbT6FFtZMxpVR4", "thumbnailUrl": "rstFczlUGFVIHhrl", "useCount": 3}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'Vr0G7iuV89Y80OtW' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'd5xHaeOxhqsl1MuG' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'HtqAiock8zqXUVHb' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "orderNo": "1k50wKIHxi1sJ9od"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId '6UK2GdxbW6WpD3LL' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'wBcjgDxbMYpOtat9' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'DchGNuwXItTTqUuY' \
    --namespace $AB_NAMESPACE \
    --storeId 'Mz9uTaZxEafR3H6a' \
    --body '{"carousel": [{"alt": "3o1DOvrKhNJy16kx", "previewUrl": "T9rSVO7sqbpo2JsJ", "thumbnailUrl": "ArenFoflfX66y3MM", "type": "video", "url": "9LLrvRXuUMvxQllj", "videoSource": "generic"}, {"alt": "Hg8mqjf4FC0wiYVV", "previewUrl": "m42Hai0g77PmXDvz", "thumbnailUrl": "BwTXHUehBh2BhwYO", "type": "video", "url": "SHMxgupdVOSQpAtD", "videoSource": "vimeo"}, {"alt": "VDAo3JgMdSjlPBrK", "previewUrl": "RQ3ETxyg2gLeeiVx", "thumbnailUrl": "CjHLNoP3HBptdge6", "type": "image", "url": "tWPK4lPkVpyiOakw", "videoSource": "youtube"}], "developer": "dlm4xgRBFLRPZP6O", "forumUrl": "eFM2jLU2TpIEDvIK", "genres": ["Strategy", "RPG", "MassivelyMultiplayer"], "localizations": {"gfztwvSOCuVN7vMW": {"announcement": "CeQjAB3ljcGGQBwV", "slogan": "UCNceYxToz7b4AFd"}, "1dUtP4qXvYatsfu1": {"announcement": "6fuUqtNYVbv14DK9", "slogan": "iBNX59TNysa6opHT"}, "LhrzOC6FJQzTbRnD": {"announcement": "pO1cIQnxzb228SWA", "slogan": "tgzo5tr92meYbP7O"}}, "platformRequirements": {"yLX1bTR6hGixwUXW": [{"additionals": "t2PjxLYP0deGQxTa", "directXVersion": "VwBdIsQsHdmNujYV", "diskSpace": "IulickxnZkoFBY6E", "graphics": "lTO21BphnMLWBGQs", "label": "3CeWwrZBkK4g9L2z", "osVersion": "1XBhGQVuIMf2uYKX", "processor": "6inoEQsXy9WZ92yk", "ram": "LL0PvRXbaMs7qUZU", "soundCard": "I6CBi0CETpaPPg7Y"}, {"additionals": "AIPfs6DBtmf4Wjnp", "directXVersion": "Mcr1V5toq4r5Mv2z", "diskSpace": "wwkAsSFHyPFVaeFS", "graphics": "boEA8TzsceCRE24O", "label": "YbiSKNBlhxX81qzb", "osVersion": "2uC2pS4ZQUU8hbZp", "processor": "luVGy3dqRhUZF6n2", "ram": "luf0eKqGHcpDMlMe", "soundCard": "iWl3ZAefE5owh9WB"}, {"additionals": "gWzJK0FjHlHnyfIr", "directXVersion": "1uctL22eQOcKwsUj", "diskSpace": "UvuZ6l96baP6O1PA", "graphics": "E45chenZHH2BZDOT", "label": "PNPqjG1YFJTJeZNg", "osVersion": "AhSmcekLxHZ3aFWH", "processor": "K6uev1q58bwyPnO5", "ram": "HGD5FtbeXvCeaf1E", "soundCard": "gdOJZNYFpPcvbczI"}], "9Nf42T62j4pnkrSS": [{"additionals": "ypQjZrWJ38Kqgbgp", "directXVersion": "ImeWD1FrMmn68rqI", "diskSpace": "nSVRT7fbEQ8SOM1p", "graphics": "XPEvYDnEW7wu3p6h", "label": "heJ15HHpvz5rfBDg", "osVersion": "fcjJXpRRzO9eZgvm", "processor": "3rPddW2JkEZZinYq", "ram": "QmllCwOtj2B2bDWY", "soundCard": "plKeiSBz8q4UmBsB"}, {"additionals": "sJWBuMKejqebjlHk", "directXVersion": "FUfpimNkAz5Mp0y9", "diskSpace": "P0hsCIccFiqLffAj", "graphics": "40ql2hDyk4F4s8fL", "label": "HRVqWtcouyFrcXBc", "osVersion": "sFqPoAjph5edbTe5", "processor": "M5cj2nKEW6qmH2Ch", "ram": "0eNHO5Wdc5SxkUwA", "soundCard": "5neufXOQ5R0WYzdG"}, {"additionals": "8tmmrsqC5yFRSHCV", "directXVersion": "QSNDdabPjbVgzJAH", "diskSpace": "xL0o0XFIGhgklmVP", "graphics": "e1p0nDZ0T34MH1tp", "label": "03P6Klzvih8r2w52", "osVersion": "HKGidrnIGn1BBbwZ", "processor": "vFESqDV6XQhztsBF", "ram": "ff1FBz5EmoGCwBt1", "soundCard": "sYPRwUjR5hgo34jr"}], "0H5e8gAGxj8N9Ks7": [{"additionals": "47DiKqti57oSWoXa", "directXVersion": "PQRn93vfr1zgAyGW", "diskSpace": "dfOchIvPLFTXRhHf", "graphics": "oVLbzqHVDpBDEpjn", "label": "FuEpiJCx1IflbGyk", "osVersion": "U8CZc8f1TeymsBng", "processor": "Fhb8hDNlq5eoOYIJ", "ram": "teQkZrCyCrAuHcZq", "soundCard": "ZCfTARWX9hn5yxkw"}, {"additionals": "Z9A2ASsnKJ20X13M", "directXVersion": "LrXo3nfVSSDPwA4t", "diskSpace": "Bf1hwgoXunRvggQd", "graphics": "3T8hCahCLYf5NM1l", "label": "3mcz5BeGO5MWhWCa", "osVersion": "EB130Xm002j6K3Tt", "processor": "LnZCcl9lGYlMBDdJ", "ram": "uQKblwBFNKfHcY1D", "soundCard": "ia08PQoc6DSyks11"}, {"additionals": "qEkvGITCuvGkBfbl", "directXVersion": "YfuC9xcU7YcVETPF", "diskSpace": "WoBZapGeqdAbKpWR", "graphics": "LS8j5OHDyl5BppAb", "label": "MxIC98GXemKxkVo0", "osVersion": "1nD5Mv3gHKJSQkkl", "processor": "zpgk0jnTzzc4UHLK", "ram": "8zJWGAPLWDIa4Shd", "soundCard": "YYFDZfzp3jn7BbXu"}]}, "platforms": ["MacOS", "Linux", "IOS"], "players": ["LocalCoop", "CrossPlatformMulti", "MMO"], "primaryGenre": "Indie", "publisher": "qQFdHCzEZZa9Se0L", "releaseDate": "1987-04-14T00:00:00Z", "websiteUrl": "NUBYIq9dPzqweElm"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'oAHcTSglekgQJ5iG' \
    --namespace $AB_NAMESPACE \
    --storeId '5GRLolPrKWd276rO' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'Mp5e63tkGra98u11' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '4p71BsHRXXEOX0ci' \
    --namespace $AB_NAMESPACE \
    --storeId 'KpGGPqpS0vntC0fY' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'GCFVuq8zOsJiN30x' \
    --itemId 'E4268MHreHBSZUDM' \
    --namespace $AB_NAMESPACE \
    --storeId 'tYiaLBpRhLeAZ2OJ' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 's7g4trTm9nIWUbJj' \
    --itemId 'J1nDdUxe9KnCOdOu' \
    --namespace $AB_NAMESPACE \
    --storeId 'lnwKOSggXz6Nq4ii' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '3KkeGvhEZBIGVUzz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'tzC2imEcsDczQAtq' \
    --populateBundle 'false' \
    --region 'ycpJ3PZ92ilnDTT1' \
    --storeId 'd4bjTj3aNS1KjzxD' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'kzqFdKK9bZzEvphQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'tWAzAA1UNjs5HCDf' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 6, "comparison": "isGreaterThanOrEqual", "name": "Vr0Kk7apy47qW77q", "predicateType": "SeasonTierPredicate", "value": "fACjrlZ0VYFwfYL0", "values": ["SiLkSyLrgKVHloIi", "ChzOOAmDQcyPXNla", "MtRkOsP0XSwq9PSh"]}, {"anyOf": 28, "comparison": "isNot", "name": "jExLWSMUkU8j7vIE", "predicateType": "EntitlementPredicate", "value": "iQUky0pqZouOG3Ug", "values": ["vc0faCGmHZXfNd2x", "S36ELYPFWEuLyAkK", "WyzYlYOJxuRlXCJg"]}, {"anyOf": 48, "comparison": "isGreaterThanOrEqual", "name": "a30hfQ3Oq6ixwe6O", "predicateType": "SeasonTierPredicate", "value": "tE53tOAqV15ULfQm", "values": ["iqk4AjxRvMNGETZF", "Adki4KXbzJzwa1HM", "moUc7iczF22Cf2Rp"]}]}, {"operator": "and", "predicates": [{"anyOf": 39, "comparison": "includes", "name": "yIRedUnCbfAmRom4", "predicateType": "SeasonTierPredicate", "value": "yd1E9ahQBjjQxayu", "values": ["9hhKWVf5NxwnkwOA", "eHv5xm741RfQR6Qh", "n4bKJXXSwL2eeo1e"]}, {"anyOf": 22, "comparison": "is", "name": "10w2WNoAsqMCjLAx", "predicateType": "EntitlementPredicate", "value": "esdBuIdmgr1gKuX8", "values": ["ZZUys2Vg6JKPqcpk", "vmCnIGC65k36ePhW", "Vyv0oLhSaUwM0H3b"]}, {"anyOf": 41, "comparison": "isLessThan", "name": "0H281gl8HjMxXgZ5", "predicateType": "SeasonPassPredicate", "value": "6qk0parXVdZwzTzM", "values": ["yfsXldUCUWKEFxjZ", "CBM4rxkSYfxzWHAk", "vJRCUXaw2b0B5hvj"]}]}, {"operator": "and", "predicates": [{"anyOf": 38, "comparison": "isLessThanOrEqual", "name": "M8UoljiSebpFOOJ9", "predicateType": "SeasonTierPredicate", "value": "Y8L788KaplYpH13z", "values": ["OMfTNk9mjXaJH86W", "KjXysRmikJFB9Ern", "oxk991OlLSbdvDAb"]}, {"anyOf": 11, "comparison": "isLessThanOrEqual", "name": "ThztFt7SaRpQSZzt", "predicateType": "EntitlementPredicate", "value": "1f1mpQy70hLmZ8NQ", "values": ["lPzBE2LYz2F6V8E5", "jV5mu76yDF6jXzF9", "JadgMAm76bxvJtND"]}, {"anyOf": 83, "comparison": "isNot", "name": "27kIlfS7A9h8Wk1w", "predicateType": "SeasonTierPredicate", "value": "Sw1sdEouVsTAwUgJ", "values": ["VUVQGIuY1uwXUq8v", "VD0BZs6ZaeH4h5RC", "IgW5EY92F4XwGlVE"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'N3DKcvyH74QVei0x' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "cVKAfqpNVbOyouZv"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'zyvTvZIXpfGM4zL7' \
    --offset '70' \
    --tag '8gSrEsYDBzkTvOaH' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cMur0tguEjEjzpht", "name": "3ZXzyzdaBZnJTM5s", "status": "INACTIVE", "tags": ["nIrw2lpKvRHgIEF2", "vPxZVfa7s7HjxMWx", "KykLK4ozbFVlJIZs"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'fEfpn37NWH8HbVH0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'ciA59Gr0e9tnDdKV' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lNXJFQVG6fjKk9KZ", "name": "46ltUJ4e9tGABWsF", "status": "ACTIVE", "tags": ["Ely4xQnv5ZC33S3N", "QTg2PwZIY8hYRJj4", "rK07uiYqdvS9zQb2"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'nLlrGUUwKvAUNuLh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '8IQu07qnm6qdYb9I' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '93' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId '4uBBXSuddWbyEGLJ' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'Qc23XkcsRXSsf37C' \
    --limit '72' \
    --offset '33' \
    --orderNos '["jgy3Mo1ONI1H46lb", "LK3ZXfzoxmzz85Cc", "TXxc1zCJOB9MMdlR"]' \
    --sortBy 'CVISNxnUd7FiaMNY' \
    --startTime 'pSLEnYnvY90rcFUO' \
    --status 'FULFILL_FAILED' \
    --withTotal 'true' \
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
    --orderNo 'uItyZ3MRMflkzPO9' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hbt2VchrDz5oVxy8' \
    --body '{"description": "HfmmV3BIj1XnOEIs"}' \
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
    --body '{"dryRun": true, "notifyUrl": "2wccbM5irdA94ez4", "privateKey": "wOZpc5QEL8udgPOt"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'PjeJLujAkX5Md0H8' \
    --externalId '0VlJEqlgwsMzmY4P' \
    --limit '18' \
    --notificationSource 'WXPAY' \
    --notificationType 'JRboes4BSxkvDI6d' \
    --offset '79' \
    --paymentOrderNo 'Xlh3Qy84NZO9B7Zq' \
    --startDate 'naved3DmsepcnTfK' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'rbff9zENsWZaKHQN' \
    --limit '94' \
    --offset '77' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "UyqhXSCjcIMg4m22", "currencyNamespace": "E2nEhbd1UJ1QwOHh", "customParameters": {"6qHpm8id16rDLYBC": {}, "RnhBbXklNLEuR1Pr": {}, "DBsDC568mpXHjji2": {}}, "description": "njRhqwccXKrjTSiz", "extOrderNo": "1rW537NbkkVYkkDS", "extUserId": "934sqB4WYENuXiFL", "itemType": "APP", "language": "Weq_ixLR", "metadata": {"6zSIdQfPMdugdSSg": "vbMUaiv9tagLkMnh", "XL3c9ONfCR2QZq1V": "LHa7VUSxWgoiIoPS", "q7mNqpoFUsbttMHG": "MWVS6vIG2nTIjKEc"}, "notifyUrl": "kRmSvFcnJfXIRigH", "omitNotification": false, "platform": "dAv6YFT8gk3eaPDh", "price": 66, "recurringPaymentOrderNo": "twgxkROhFpHmqdaI", "region": "xQti5RkUofkMR6UE", "returnUrl": "qVJwzfKg92Sc6rSf", "sandbox": true, "sku": "wqkbq7k1fkjOM9fX", "subscriptionId": "cGf9u8hCE7Mjusot", "targetNamespace": "CRw0eA9frxnLM3hI", "targetUserId": "o22ABTjc3Go62Hdt", "title": "p13izagYmlJcFqt9"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'fNz4sq6oLqjG8qAt' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'csX2aiqTyUxJnTSr' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'yC3zIDNqXAIvbuDh' \
    --body '{"extTxId": "Q9uO7yKUuO7lAAKN", "paymentMethod": "08ASseOYAt699nyu", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2nR5ohKPEv5eT2aR' \
    --body '{"description": "UtzLbNnsxAOiBV8U"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KJXMmtvuAaz0zJHv' \
    --body '{"amount": 97, "currencyCode": "EQKBsjXEhj2AG5e5", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 50, "vat": 39}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xuj7VVF6hPLZqQis' \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Epic", "System"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --endTime 'veast4VYvBkwuREL' \
    --limit '43' \
    --offset '38' \
    --source 'DLC' \
    --startTime 'djywx9BZhct7tu2J' \
    --status 'SUCCESS' \
    --transactionId 'sCYiPhNzgmsElmCO' \
    --userId 'l8pftvm3fJCESmC3' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "qXXX0eE3VU7HyNsA", "eventTopic": "sJHXprxhKeUB66MA", "maxAwarded": 36, "maxAwardedPerUser": 3, "namespaceExpression": "zQF3QQlNXxZYUq69", "rewardCode": "pWLCRY1i7HvbtPqg", "rewardConditions": [{"condition": "tjcStlFY4WjY8WQ8", "conditionName": "PTjcqQSk0KaodBlx", "eventName": "kXRndeDBXyDpwUXz", "rewardItems": [{"duration": 73, "endDate": "1980-08-12T00:00:00Z", "itemId": "G2i2z3WAXhJdH2zC", "quantity": 38}, {"duration": 93, "endDate": "1971-02-17T00:00:00Z", "itemId": "7YFivVXEy2vlr8V0", "quantity": 6}, {"duration": 17, "endDate": "1985-08-15T00:00:00Z", "itemId": "KW7Tjppy0sbzEP9T", "quantity": 49}]}, {"condition": "RGrB8eCCpJDaobFe", "conditionName": "qUS6wr2Y1w0lVccO", "eventName": "e7pdGB3SXHD9apEj", "rewardItems": [{"duration": 27, "endDate": "1991-02-27T00:00:00Z", "itemId": "1mh8ytnRTwkibRJw", "quantity": 2}, {"duration": 14, "endDate": "1977-03-10T00:00:00Z", "itemId": "QABoZY92LM5kal2d", "quantity": 11}, {"duration": 19, "endDate": "1975-06-15T00:00:00Z", "itemId": "NCFHd9HHGZ9GThAc", "quantity": 35}]}, {"condition": "NwtI47wqQ1KUtl1E", "conditionName": "h5slMrqqEHEytM0k", "eventName": "8zDXLTHbmnYgR07U", "rewardItems": [{"duration": 90, "endDate": "1994-06-29T00:00:00Z", "itemId": "OzaeaUVieeGACyIP", "quantity": 35}, {"duration": 54, "endDate": "1979-02-21T00:00:00Z", "itemId": "0pkxAdVPH7GCUWLu", "quantity": 39}, {"duration": 10, "endDate": "1998-07-22T00:00:00Z", "itemId": "tTYqHHAHABAEdVJy", "quantity": 20}]}], "userIdExpression": "uBf72hVNDnYLdV8t"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'wvR2uUhtzSbuefy5' \
    --limit '30' \
    --offset '29' \
    --sortBy '["namespace:asc", "namespace", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'RatnYJLmk4hHlYfF' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'esxMRskwt6sOAS9M' \
    --body '{"description": "KLbykzWg2xqbYwrs", "eventTopic": "1LQ3xsM4sC6ohsdw", "maxAwarded": 65, "maxAwardedPerUser": 53, "namespaceExpression": "HbtxChQ0sW4K0eOD", "rewardCode": "7RejiSbc78tA8aKU", "rewardConditions": [{"condition": "ODSLQsIpaXoOc1Ao", "conditionName": "M46RInUQMYirpAlY", "eventName": "DkD11Ag4kX8tlXIx", "rewardItems": [{"duration": 62, "endDate": "1990-04-13T00:00:00Z", "itemId": "8ozRhfc5vZvl3eJY", "quantity": 51}, {"duration": 91, "endDate": "1987-12-06T00:00:00Z", "itemId": "2YHDzIEZxgpmE2wr", "quantity": 29}, {"duration": 52, "endDate": "1989-05-31T00:00:00Z", "itemId": "vbWVIy3b3F6E2fnM", "quantity": 43}]}, {"condition": "yvFX3ciYoFh6FjfK", "conditionName": "LtRTir3ScXCWhUzo", "eventName": "30KJ6jXPN9W7RfPJ", "rewardItems": [{"duration": 30, "endDate": "1989-08-04T00:00:00Z", "itemId": "Ou4X9bqXMeOPVG2o", "quantity": 78}, {"duration": 0, "endDate": "1973-05-30T00:00:00Z", "itemId": "wXQ8MTf4txr9mDqW", "quantity": 22}, {"duration": 55, "endDate": "1987-08-22T00:00:00Z", "itemId": "IxEyFaPkxg1MDG3T", "quantity": 67}]}, {"condition": "ZbOyBc4lSVfgjNkt", "conditionName": "44sOEeEJ0xGuCywb", "eventName": "Oo765VKQYIUi06DL", "rewardItems": [{"duration": 80, "endDate": "1985-10-29T00:00:00Z", "itemId": "XPMc0YZl856XNwsT", "quantity": 100}, {"duration": 4, "endDate": "1986-02-03T00:00:00Z", "itemId": "EvH9OnlCzns1K01J", "quantity": 84}, {"duration": 85, "endDate": "1992-01-20T00:00:00Z", "itemId": "lQUpymX9XBWh1OK0", "quantity": 22}]}], "userIdExpression": "jGoDXWt8UHLFQutU"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'iJ4S9OD05IctQ4lK' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'TYokVqVJk45mHJYJ' \
    --body '{"payload": {"LeqZbpzJpwzQsikn": {}, "ATvi2ZCWj0vAxt9E": {}, "rXXOC4vAoztslU4U": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '8aztJQipUjSm0FOV' \
    --body '{"conditionName": "mt1IlnnLwf1BR01C", "userId": "Sjbxysq3e2NqGOxC"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'D4nzzbgx6IAkQB7f' \
    --limit '39' \
    --offset '50' \
    --start 'A36Elk4PCHKrVsTS' \
    --storeId 'ha61T8IyOsFlF6V2' \
    --viewId 'Km0OiiGsOGAeOhGK' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '506evKp0UHhwGP2k' \
    --body '{"active": false, "displayOrder": 71, "endDate": "1987-12-21T00:00:00Z", "ext": {"mcGXUQBl89zQtScw": {}, "4Mg4W38dubJ21Wob": {}, "w6g1oiQAC4HJBDC9": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 69, "itemCount": 88, "rule": "SEQUENCE"}, "items": [{"id": "WLfzzDRPNhFG9Lm3", "sku": "Uzi65KIC8vou4zbt"}, {"id": "VSSk6Z9lxxczSluS", "sku": "X4fbkRGVsOI9DyVt"}, {"id": "gCrI8c4epe0kRCmB", "sku": "BrjMHhKu55jOUyrl"}], "localizations": {"IqYIVbMv73pNTny3": {"description": "oaWBFYD2v4QyxOZn", "localExt": {"sowVJGFJXaMimsFY": {}, "eLHgjabyp6pH67Nq": {}, "BUmPzbIY0zFFf02R": {}}, "longDescription": "mRHMbDkK7RDE6Y6t", "title": "jxlvMfvNOQMbMwHI"}, "yPkBhwoldCyvFXHY": {"description": "TJKHS7ImXqbAMFsW", "localExt": {"bl0kkHeWs96nIDn8": {}, "hnrgNT5nmqGmHYUd": {}, "jyv1jyz7SE8rtXKZ": {}}, "longDescription": "jjt8F4WShtHqrQvg", "title": "A5yPhJIadzaF3szZ"}, "QILcqyNCcNbFJWZw": {"description": "aceC1q63TFogeGgg", "localExt": {"RIXzCvhr0ghT7wJl": {}, "vlo5qZ14tpIGJ8qt": {}, "HqP5JwdOyb5NSBqT": {}}, "longDescription": "2WKqcXTg00DCG5dF", "title": "ljNTPlKQ0n5gQbaA"}}, "name": "MVT5VDsBWacW4idu", "rotationType": "CUSTOM", "startDate": "1980-01-05T00:00:00Z", "viewId": "Q10Q00Ru7CycGBcV"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'buvVWvwri0oLYwwm' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2I9Mbo7gf6i0Sspe' \
    --storeId 'NrTlw1dXeHJbc4o3' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '2adaWSDp58bBvQCn' \
    --storeId 'CKjK2gcDKxPknwA6' \
    --body '{"active": false, "displayOrder": 39, "endDate": "1987-09-13T00:00:00Z", "ext": {"91J4vkMlW2VOrH54": {}, "neBNaMbwI8YUSLHp": {}, "0hmqEFvwGh7FqJqm": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 80, "itemCount": 46, "rule": "SEQUENCE"}, "items": [{"id": "X74q0dc9gmGCoalL", "sku": "5DvpD5MmVbDaS9Cb"}, {"id": "BqrDnrvEUzzjzvz4", "sku": "vEEm9CmkxQPEDCyF"}, {"id": "v6vc28l91BRQiSaa", "sku": "96G8ruWkTYz5nkOU"}], "localizations": {"czkGuIr2DJuwRovI": {"description": "5nyIgbMZzGmBJrn8", "localExt": {"889LEXRMRYralrRs": {}, "CnXRWGk3ZiueEwx7": {}, "bTSkmQivH0VW1gx6": {}}, "longDescription": "UaJa0TARVyMn42CF", "title": "dnhNmGiwQk1axTog"}, "m5FYWWEH8gtIUPjJ": {"description": "koJDyCPQjZH2BezH", "localExt": {"EOkh1jO5k8vXNKyc": {}, "s552wsn2rJYrIwcp": {}, "OEqcCpsljiYIypVX": {}}, "longDescription": "nSmH5X46c5um5C0m", "title": "ZGle4KOMcP3IJyQx"}, "kBXjvGB6wTf5WEpB": {"description": "R2c3WKqN2EZ505pE", "localExt": {"GlmZI81cx0oxU1q8": {}, "WdJIGDTlwJjUoXhf": {}, "RdJR2giUiSkzuJdg": {}}, "longDescription": "DnCzN0U2obwxFn7u", "title": "lbrbgpLfqmrs0Q0O"}}, "name": "3dkllwexmw4tgB18", "rotationType": "NONE", "startDate": "1974-05-09T00:00:00Z", "viewId": "ZcA61zFLHGB9ZOR7"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'MaDqBs8OJHQuhtwt' \
    --storeId 'BpN1fP5g6njiXUtX' \
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
    --body '{"defaultLanguage": "k4s21bDOerkMoxRb", "defaultRegion": "C7pTmz7IdAxCZl1S", "description": "JAf7sqrgMgfDpoJq", "supportedLanguages": ["qodQgiSpWrEyA0AO", "J4W829dLaRqM0n5Z", "omUJFDgtCZQaW3GK"], "supportedRegions": ["8a8Uofem8aDjM397", "SigFxBc6X21YBBYO", "d8BLhUI3JKormokm"], "title": "TcnIZ18mv6vcARkE"}' \
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
    --storeId 'PW5x2pBuKtDV9bay' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'C1u1wgvvNkSsSWoj' \
    --body '{"defaultLanguage": "Jmm9CWeKXILJujjw", "defaultRegion": "w0GwSoEb0cnN0Ia8", "description": "7aFqhOFMeuF6xLWX", "supportedLanguages": ["FgVPJ2dKK74s68Po", "zGGyoSEgIxEJQkwu", "TiJp499Cl14KKia5"], "supportedRegions": ["XkvZGLxzzeiNosIs", "EfjbH6raHgEMNR5u", "ZAakX4MZM4KhqQmP"], "title": "tjpnWDy9PSKPav9j"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LfG2abCCl8bHOJCr' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '7PVKPb32b2kDwFXt' \
    --action 'UPDATE' \
    --itemSku 'c5a7IPaA2Ml8SK0V' \
    --itemType 'OPTIONBOX' \
    --limit '0' \
    --offset '59' \
    --selected 'true' \
    --sortBy '["createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'kebQFwA0Ifg4s2eQ' \
    --updatedAtStart 'l1vZgGRzxKknAcDi' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'v7pmvBYXSF8SuNlL' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'VCaIpAugtNL2sqFb' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'ptfFc4ukMm3h6b9j' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'WklUHU8T3yO8l3u0' \
    --action 'DELETE' \
    --itemSku 'HKo84aDtA6xEGT0q' \
    --itemType 'APP' \
    --type 'CATEGORY' \
    --updatedAtEnd 'u1OmPViDddCZoxdP' \
    --updatedAtStart 'jEib8wUVOE6eyw8e' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'hwQcUlYdZnkkUgT5' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'WpqOINQxo835sAU8' \
    --namespace $AB_NAMESPACE \
    --storeId 'N8rYlaU7UXyd5ZVF' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'o5dXyQbCCxeCpatv' \
    --namespace $AB_NAMESPACE \
    --storeId 'YQvwk0R6KO1b3avY' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'BFou34ztdeHivDzx' \
    --targetStoreId '4YPcNGWiq50rouXT' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'QOlztVyJ88gBIyqj' \
    --limit '17' \
    --offset '52' \
    --sku 'qzJJSRrCN9iACliH' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'vO5Qkh8ASlvQxqL8' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XBmUUDLMdk2Apswb' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'nzyqeFm4mTSMZcDp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '6UU1UPjpB5X0Hlbj' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "gs3W3bbQFr55DYY7"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'MRceKJVf4RoYckKQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'kvIHYrzeGVErS74a' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 35, "orderNo": "c4bX7NxAfSRFWa3E"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'lGKrHxEsezNzdw1W' \
    --body '{"achievements": [{"id": "LBLM2Z68HWY7uxd6", "value": 41}, {"id": "jhwO6n7RWdw3iMH2", "value": 39}, {"id": "LK5gr3r7sYSQoDhd", "value": 24}], "steamUserId": "c6AWWofZTWhhjrjp"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6GnIpfe8j2ZgDalm' \
    --xboxUserId '6rxP13g263X0HzrH' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Vde6rU4rLtWJquQW' \
    --body '{"achievements": [{"id": "LOElxYAcrFtnmQb0", "value": 68}, {"id": "FkDdMNYoD7UNM4r5", "value": 42}, {"id": "XklDUI6m9wI6cfSr", "value": 96}], "serviceConfigId": "BFI5KN58bjoSfFu4", "titleId": "1S8UnVmSnLyEP633", "xboxUserId": "2a8dOteQOArUGUKx"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'DOgkEBDEPiCirAN5' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'BclwNHF3mx1gYfmZ' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'i1D1uNM7EkMDyWlV' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'BpMUamSglNAHPXzU' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ENZOtCnSeWv52hNF' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'oCBH7DahXl1pJ41s' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'G1lnRgkagyx4xUOl' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PlPAcf2CeVb9Qlzf' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'MiRwYy38I4T74dZi' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'KxwwExP8Q5xMhAWC' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '3xUEFLfZf0MbflZk' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pkyKdwz7fiRzRXmZ' \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'F1bDJn8Vytjk56N2' \
    --features '["wyv6gbZImzq7RpS0", "D5VyWaxvL4ZuYuYZ", "FtusOsW2mCCwAze7"]' \
    --itemId '["sIGCQQHymWoGgo25", "oahhPDVEFUnf1TWK", "Rdp7bbIHGglr663G"]' \
    --limit '19' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'qOC30BLPIv6bxKgJ' \
    --body '[{"endDate": "1980-08-11T00:00:00Z", "grantedCode": "Mz85eZclMQSdxybA", "itemId": "vLLJbFp9XGLERmCL", "itemNamespace": "bWplSNtGWq7P99DK", "language": "hS_Am", "quantity": 16, "region": "CvcPm3Nf27hQiSQN", "source": "PURCHASE", "startDate": "1978-05-17T00:00:00Z", "storeId": "pXAu55Hx09IhRoYL"}, {"endDate": "1980-05-08T00:00:00Z", "grantedCode": "4ywNy2UZ9MFdxYx5", "itemId": "5XvPdqhGX7DF4I19", "itemNamespace": "E3MBeuuRAp1fgIiT", "language": "WH-TwQH", "quantity": 34, "region": "ycmlDrnH8oMaNZs0", "source": "PROMOTION", "startDate": "1986-06-02T00:00:00Z", "storeId": "4OJqJEoN4fcgW8Xk"}, {"endDate": "1986-11-06T00:00:00Z", "grantedCode": "LfOKb2A7fGdPzdRo", "itemId": "sXOaqW80nTQOnji5", "itemNamespace": "94ELpXMGRtTr05TO", "language": "BQx", "quantity": 58, "region": "RProf0TPQLQHzrpc", "source": "GIFT", "startDate": "1975-06-30T00:00:00Z", "storeId": "hvWDoWTqqRV7I60n"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'unIShTq56GlWwvCF' \
    --activeOnly 'true' \
    --appId 'ZSexiXn4ekRiB9rG' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'loJj4xpRlkKvywRv' \
    --activeOnly 'true' \
    --limit '23' \
    --offset '59' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vnT7cYHFifJmdsTE' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'xopzGEmPHpkK2YWp' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'czzapuTqAELXsMqE' \
    --ids '["jiLGBDnSyxdfnfgk", "ZajOsu1FAPlQbd01", "rjUtBG1Ocw62bDke"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ERo2QRpkKflAGquz' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --sku '6gp5Gcy31Sxrr1IV' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'Om6a8MppSzE2WNMX' \
    --appIds '["NIFFwdUKlBIMLWmM", "oZR9bRFg4kQjQGQo", "4AXsqpvy7nvs5oeO"]' \
    --itemIds '["WeKWh9U8p4s9LIlY", "Vf0FAJeNAALJYIbc", "gCAT5lM4XCTKg3Qq"]' \
    --skus '["RZOTKjChHK3HjVQS", "UqAfPqjptPDuPyZN", "YwqTj5dS705DQ0JX"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ncd24sKJcUW0cgac' \
    --itemIds '["9wso5BGp71RK4MiV", "5PCaraEm7NSIso54", "z2fzcY39TSm2ptEW"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TQCPCcViVJc9ruPD' \
    --appId 'ecU0AOExPSsfvy1A' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'A74Nxk45zPxp2oGr' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'Vk5gYkhbFk5Y1fPH' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '822fyq1TaI7YVnTY' \
    --ids '["yoQFTedauPxLZKbR", "NT9w6FqYL4u5ZP9m", "ssSAAksPtZH2PNGO"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'jWvLPmREtZkgHV9Y' \
    --entitlementClazz 'CODE' \
    --sku 'Ds7Pyj9xX0g8xq3G' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'B6gTqTHnHWhgdvE6' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2YPMRJEKbZAQrKr6' \
    --entitlementIds 'mjpTIG6Iv9vUD14n' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'LG0zhf3SXkI9OnNm' \
    --namespace $AB_NAMESPACE \
    --userId 'UyQfs3qzfKjifnzk' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'IbgAWLUB0B4WxCvN' \
    --namespace $AB_NAMESPACE \
    --userId '4mTNZ703Lj0q4Fqq' \
    --body '{"endDate": "1987-07-21T00:00:00Z", "nullFieldList": ["knDmhEKAoEBRTeEA", "aTUBx2x3dzTIxC9i", "bmIX3b1IMpjV8NU8"], "startDate": "1997-01-02T00:00:00Z", "status": "ACTIVE", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'HiYy4f83IkcH8zN2' \
    --namespace $AB_NAMESPACE \
    --userId 'SVupEGHas7uWgOIG' \
    --body '{"options": ["A6RNqMOQ0ya42k4f", "qONBEwjCZramQMKz", "Jdk9OhW0seqkxykA"], "requestId": "jUIYdg3oYngifnpZ", "useCount": 5}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 's0FnUy5IGCOtlyy4' \
    --namespace $AB_NAMESPACE \
    --userId 'KUD3VjPAUbiLrxuY' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'f5cvrPEUJgBGxAqq' \
    --namespace $AB_NAMESPACE \
    --userId '07gZN2W6f9AvULmX' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'u4vTL9YBFfVA46EZ' \
    --namespace $AB_NAMESPACE \
    --userId 'mq5sfAj6i0Iu6SvK' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'ya6l7YuLX7EQ1Qkp' \
    --namespace $AB_NAMESPACE \
    --userId 'pSkLLZ9CSPEoh9S8' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'XhaAYHgIh4Vl2dBh' \
    --namespace $AB_NAMESPACE \
    --userId 'bgru2rGJPZxQ3R67' \
    --body '{"reason": "DPsqJmEt6dQH0LTn", "useCount": 3}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId '4zZP68Q3f18Dgbiy' \
    --namespace $AB_NAMESPACE \
    --userId 'gVC93qOZshVd13YN' \
    --body '{"requestId": "bkf25dp7lrGw53PS", "useCount": 14}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'cSBSgiB0HCx9NcAv' \
    --body '{"duration": 10, "endDate": "1993-11-08T00:00:00Z", "itemId": "wgi2C9WZ7TuCVAzX", "itemSku": "BmGxlaapa7ALvFQR", "language": "EJAOwLzReT9YbmDo", "order": {"currency": {"currencyCode": "nyLaL2efgmZmCjzc", "currencySymbol": "Blco6jqwbQ05VWnE", "currencyType": "VIRTUAL", "decimals": 50, "namespace": "50UTxg9W9qqqor9H"}, "ext": {"tfW4fluNlLW5HxcX": {}, "gPCLHIPlKrFshEey": {}, "PNHZndzvDOx0F6Ya": {}}, "free": false}, "orderNo": "W65Fp4S1X1ViEik0", "origin": "Epic", "quantity": 87, "region": "L3BgakbbfZNOcGvq", "source": "PROMOTION", "startDate": "1976-11-04T00:00:00Z", "storeId": "hucONFD800aYrfor"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'RokpDq3sfe4eKOpA' \
    --body '{"code": "oZwPnietken7XKSe", "language": "ui_Vcke", "region": "swdjrdqmSgvULKQZ"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'lB3jo3aT85QHu3LN' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "aAbQSEIw2xejsqvS", "namespace": "7nmkSo5Pg1BAOGJ0"}, "item": {"itemId": "VwRaQTXWmQ68bQiY", "itemSku": "XoP0v4DYwhjKe1uu", "itemType": "TLP2i0IROAVletjm"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "9xj3XxRWQcVDDJLD", "namespace": "T4E3Mzunv72F4yAS"}, "item": {"itemId": "6ThSWzYl9rajTVmD", "itemSku": "8TuPzdl8lJQE9WBR", "itemType": "KX0ooR4trQwIxVlf"}, "quantity": 48, "type": "CURRENCY"}, {"currency": {"currencyCode": "LQpV7dy5WuuIjleB", "namespace": "8488pNpFahGUifb8"}, "item": {"itemId": "dBq4wVbq6NaWfTrm", "itemSku": "YV9yAWL8sbsk27Rt", "itemType": "2qxHXmPB18wG1ZEa"}, "quantity": 92, "type": "ITEM"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '495KIPRBnGBu9Hp0' \
    --endTime 'Z3n2SAGyrPATi2MQ' \
    --limit '91' \
    --offset '66' \
    --productId 'GEaB8hde4wZtnZUq' \
    --startTime 'm8ItvZPn6c4hjG2k' \
    --status 'VERIFIED' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'wwDk9euqsr5EWckn' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'RMni9nCCnEuxtFmS' \
    --endTime 'dsLIXrzMw4rsWaYx' \
    --limit '40' \
    --offset '100' \
    --startTime '7K9IlY1pf7b4VNBX' \
    --status 'PENDING' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '6X4UXKDuFIjIvmj7' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "zE-BROu_505", "productId": "6BjNrAJpVqdMZkuT", "region": "NGfkjHKt03n9qAsZ", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ny7p4NwkCyPyLfub' \
    --itemId 'R5cnS9fsTThh8nHF' \
    --limit '7' \
    --offset '45' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HTbOS5NXJNdeCPYy' \
    --body '{"currencyCode": "1FiT02hfZxFVA4dq", "currencyNamespace": "j71t9sYYEnAFZnHE", "discountedPrice": 46, "ext": {"k69REYoSBR4hqxV4": {}, "fqvt3OoXDWbM4nTY": {}, "UYUkLUVYrZxoMJez": {}}, "itemId": "2qMdAhDE5MbsUeQi", "language": "YU6EZeWWFbKeRkJL", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 95, "quantity": 9, "region": "xhZdGVHxGYjkJtto", "returnUrl": "VG5R58xWHT4L1KVW", "sandbox": true, "sectionId": "ALxy8c3XXZATU8pj"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'wx0rS4stD7bx6tWD' \
    --itemId 'v6B1h0fbLSntZF7A' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '7Xa3lDYLtDXQoNfT' \
    --userId 'xEo2q7AK7QODwcsC' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'yIElKzcjvfLPdXQl' \
    --userId 'ZHgmdooSJP2vS11v' \
    --body '{"status": "REFUNDING", "statusReason": "MHik02sp3zNZGL4c"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'b3Qwakma5lCzfxdh' \
    --userId 'TzRwufOcOtgYyWaG' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'iRtUmfdLgRrkM35i' \
    --userId '5pfj8t17k6czcl2X' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'vej1ZE3kP85rCt3t' \
    --userId 'yO2koBaEzR0hXx9p' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '9zUP1CpYGalyUlKU' \
    --userId 'FdH7wVpyaZ5MtGmB' \
    --body '{"additionalData": {"cardSummary": "nAhmxnvpJ8270U5z"}, "authorisedTime": "1977-11-06T00:00:00Z", "chargebackReversedTime": "1982-03-15T00:00:00Z", "chargebackTime": "1997-10-10T00:00:00Z", "chargedTime": "1971-11-16T00:00:00Z", "createdTime": "1983-07-06T00:00:00Z", "currency": {"currencyCode": "2rmTJS39kw7uSiph", "currencySymbol": "rBMgCqD681iFhQml", "currencyType": "REAL", "decimals": 80, "namespace": "0pB63gNNoYVVYxzr"}, "customParameters": {"y1m8RrkxLLEclxTX": {}, "uTvrYNZUdK1rlHyr": {}, "qZRbHvTlRLXndHCB": {}}, "extOrderNo": "MC4ajW9lSvgNCEqY", "extTxId": "wvXDCvHSXsFC243j", "extUserId": "cdmNTABxcDjYDs02", "issuedAt": "1975-01-13T00:00:00Z", "metadata": {"Q1I6WSttxw3QzRcf": "J4G3nOqNCk1x2kA2", "TPHeOUXWcAFvS6P3": "0OiA12loNdMhpu7g", "8xRK9wTIqr13Pt9E": "Zrr2w5SGcJJEg3HT"}, "namespace": "p6caZvv5J9jZcpjC", "nonceStr": "sCuZnB4wBnApCFXW", "paymentMethod": "qeiDFSHTYhvkwYfb", "paymentMethodFee": 20, "paymentOrderNo": "IIdYTBeYrrv2RHOx", "paymentProvider": "CHECKOUT", "paymentProviderFee": 71, "paymentStationUrl": "36U7bzzCKlZH7upS", "price": 23, "refundedTime": "1974-04-03T00:00:00Z", "salesTax": 55, "sandbox": true, "sku": "oEiO9BZ6PQDQCvjy", "status": "AUTHORISED", "statusReason": "iJ4BDAoHoYHA1Gq4", "subscriptionId": "gkAfbqSrgNdPeoZq", "subtotalPrice": 55, "targetNamespace": "Ja7flZbhA16a7ytQ", "targetUserId": "SsSnDmMfS0B3vwlv", "tax": 5, "totalPrice": 70, "totalTax": 21, "txEndTime": "1981-09-26T00:00:00Z", "type": "V0Pwlerurmul5eI7", "userId": "5dY6pk5jnSEPp0ZN", "vat": 66}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'BrKbfZiQKvD1If4g' \
    --userId 'fm8cTKUeyZnGE119' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '9ZniQBc6lN5kS3vC' \
    --body '{"currencyCode": "re5hPzpMm1qyFPwc", "currencyNamespace": "EakUS6eM2NNNdQgF", "customParameters": {"PIt6hEzFmAQz80kW": {}, "vyJklMa92UEQklWe": {}, "eho47ye2UusRFT3T": {}}, "description": "fswAXFQYCaSSEXks", "extOrderNo": "3lcD3zXFunkgbhb3", "extUserId": "pggLTUCZv6UXdYgi", "itemType": "OPTIONBOX", "language": "VoG_Lltt", "metadata": {"rAUlRGpxKSLjnN0d": "4fUTdNBFXqjCaBm3", "8GD9svcCooNy8hBl": "AoENqXHt8bAqbgmK", "NxOjtcCyT6iB2zEn": "SN13Gj0Ca58gKxeL"}, "notifyUrl": "kNgmSb0oHJ2hfXPI", "omitNotification": false, "platform": "cEgocdf47T1ypYPk", "price": 55, "recurringPaymentOrderNo": "BnCAS58xZfdcalqG", "region": "ig7SnI02Oy1E8p8V", "returnUrl": "k82XlEDAZbfGdyvu", "sandbox": true, "sku": "V0QCLYS6ih0tKXfF", "subscriptionId": "dpRbes59XG9TOu9S", "title": "m1dGvi6Hxd1zJtDr"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wKOQuRVzojbERake' \
    --userId 'LUOiCtbGhsGa25ut' \
    --body '{"description": "ac7qaOVX9wYvVXDd"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'OYcqKeRielMfg9wD' \
    --body '{"code": "sC45SBpweUGjcn9v", "orderNo": "fZyPFF3udTFskujF"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'GIrGdySeCLHnScQl' \
    --body '{"meta": {"uSlESL6DPyliIgnN": {}, "7wFaxDCTQD4SxKWn": {}, "kHanw0t1mq5ymHyM": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "LJ7OVY4XnanDCSCB", "namespace": "ZpCzigiBVTX7x14o"}, "entitlement": {"entitlementId": "R69hzjDfJVcUyGOw"}, "item": {"itemIdentity": "TykT8xF9zT71XU9o", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 87, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "ieBvqhGORqk5JRsU", "namespace": "Bf7a2W8FIutqix3u"}, "entitlement": {"entitlementId": "mrdOmuFeBQbdSGFE"}, "item": {"itemIdentity": "W668VkBY5YWWE41a", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 93, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "PCOtbqkBEcPRaV9K", "namespace": "69yvFK0kF2HEvotL"}, "entitlement": {"entitlementId": "co79JgspO0HSVeri"}, "item": {"itemIdentity": "fxdCtVu2PCfg5CaL", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 90, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "BmeVP86aaivZW6Ic"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId '78IrkAY1FkvuQJka' \
    --body '{"gameSessionId": "y693cFKlq2vQVa8b", "payload": {"DpNgYnkgnIO0ssoV": {}, "QfE9FyVPic8J5wiQ": {}, "QPBl8IwcJfSxm7o5": {}}, "scid": "quI3iswrhhKjVMfY", "sessionTemplateName": "r6rOnhlUTJoLxiCt"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'FIoLBIeodI6MMonF' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'iVjbaDvHuPQJxzQA' \
    --limit '64' \
    --offset '21' \
    --sku 'shIQASG76OJJ6Hcm' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'E0QnvwtTsJGSGbeb' \
    --excludeSystem 'false' \
    --limit '39' \
    --offset '37' \
    --subscriptionId 'UyVWZUT3wvZLNh0y' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'sNthwGEVuI1ksD73' \
    --body '{"grantDays": 80, "itemId": "MLsWMQ1ODVh6glzx", "language": "lv1n7nbeiFSXJeFi", "reason": "z12cUCOzBcA5xCcA", "region": "4Onp6qKvZc8fG51w", "source": "WB3BvkheRla8Fp37"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '79jXNWXmxEkn2ZTa' \
    --itemId 'sP0ubuLRhJGNTfOl' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6a7Fu7cSQNh7m8VL' \
    --userId 'P6AmcFe9Fcu7pdPB' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7UZDP3CghSUCzvHq' \
    --userId '4q1Dl6YEDZB8nhPV' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PaNSZOkJeoHAzOPY' \
    --userId '6z3WtQemkTnETFIz' \
    --force 'false' \
    --body '{"immediate": true, "reason": "YqthtJ2v2e1oIf2j"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'eEsTTs7nHhZ4sWao' \
    --userId 'CrWdvEqHA9gq6KMS' \
    --body '{"grantDays": 24, "reason": "czfZ4zhWRFFr8Au3"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9gGPtgdABUDylWwD' \
    --userId 'chD4hWcmZOi2NRau' \
    --excludeFree 'true' \
    --limit '12' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SEsLZ8DOjVwf0Hxf' \
    --userId 'vAZdv4jZEYVZCuJ8' \
    --body '{"additionalData": {"cardSummary": "yQa7pFDfXroUQ204"}, "authorisedTime": "1981-03-27T00:00:00Z", "chargebackReversedTime": "1974-01-31T00:00:00Z", "chargebackTime": "1982-05-10T00:00:00Z", "chargedTime": "1977-07-28T00:00:00Z", "createdTime": "1971-10-28T00:00:00Z", "currency": {"currencyCode": "3D5zo8SWNuVh4IcK", "currencySymbol": "nHuSNjIvMAwEd6YM", "currencyType": "REAL", "decimals": 100, "namespace": "NEoi4uGSdWoU3kWs"}, "customParameters": {"c8xHMZwm2UY0lZ8d": {}, "rqW6G40rWc0nyvKH": {}, "xwEC9YdPf1U5I1qE": {}}, "extOrderNo": "Lb2Aa64IkY7bf4XI", "extTxId": "KztDbatuE4qRDIoe", "extUserId": "BO4JL8iqLGmet15X", "issuedAt": "1995-09-06T00:00:00Z", "metadata": {"59YjK8AMQ4qCZcGc": "wGSloonLaDzh1w7e", "HQSX31BELB9B5b2s": "FZnE0kgCwhjeAinl", "GvcfppOCILOUYRyT": "FcVu7unB8r4gzBPU"}, "namespace": "MvkIaKS0g7NB1L1k", "nonceStr": "kROa8OTsfkYcZzux", "paymentMethod": "N1oXPykr1mT3dpFm", "paymentMethodFee": 37, "paymentOrderNo": "fP4grqWqZSAXSyTO", "paymentProvider": "ADYEN", "paymentProviderFee": 27, "paymentStationUrl": "S23tr5765A6SZEOr", "price": 35, "refundedTime": "1999-12-05T00:00:00Z", "salesTax": 0, "sandbox": true, "sku": "6r25iPxtW9SzDggu", "status": "AUTHORISE_FAILED", "statusReason": "1siah6PZht2wlH2f", "subscriptionId": "M8Pu73mY799nMKlu", "subtotalPrice": 30, "targetNamespace": "eAVurfzgxVO7fXup", "targetUserId": "CXeUY6fWIVqVdOaE", "tax": 22, "totalPrice": 37, "totalTax": 11, "txEndTime": "1985-09-30T00:00:00Z", "type": "mgTh0Fg4MsizGApn", "userId": "UiBm7UVyU9CWvRjn", "vat": 46}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'qhiP0nYCUFhW5OXI' \
    --namespace $AB_NAMESPACE \
    --userId 'EtzeoJmZgQ8UldsV' \
    --body '{"count": 67, "orderNo": "RVbOP6R6hh753Ka9"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'JA0wTwadI8pQgsI8' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'dfK0FYho5WpcMCAD' \
    --namespace $AB_NAMESPACE \
    --userId 'R8Xv6KmC1X0IZu1m' \
    --body '{"allowOverdraft": false, "amount": 15, "balanceOrigin": "Nintendo", "reason": "7PieGI4ogJWSoo1A"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'd9kDjcXXGIJX8ZHP' \
    --namespace $AB_NAMESPACE \
    --userId '2F6wfY0TaoDu2Hw6' \
    --limit '69' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '7777oFKC3Ep8Aax2' \
    --namespace $AB_NAMESPACE \
    --userId '86EwSXiadfBSgWrb' \
    --body '{"amount": 63, "expireAt": "1990-04-01T00:00:00Z", "origin": "Twitch", "reason": "9s6tTXzPqzwArXij", "source": "IAP"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'zhzxntiz4lXY1zdK' \
    --namespace $AB_NAMESPACE \
    --userId 'K0bpKxTIr3hYX8En' \
    --body '{"amount": 96, "walletPlatform": "Steam"}' \
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
    --storeId 'GpuWY3Zi8xisWyUf' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '0FwSM5Izh0ET6iX1' \
    --body '{"displayOrder": 27, "localizations": {"OjIwR5pBX9QUkY90": {"description": "Ie5tSXwuVKWT72PC", "localExt": {"vCFYuGK36PoOyGwh": {}, "zLxGkFcrGb1acts9": {}, "YBg3bunojoEbRHl2": {}}, "longDescription": "mr3cAdUfkYUhhx66", "title": "IcbXC86WXcnPgcsJ"}, "TXc5k7zi1TCAmxfD": {"description": "8ddd7RfhVp0X7jKT", "localExt": {"5GYAUASUfHnGbUT0": {}, "QNkJhecWnvuHA1FR": {}, "eSYQJAoSUFsraHMY": {}}, "longDescription": "sI2GhhCt9i30TNpW", "title": "Zz0MJcWc9xbcs0CT"}, "YsnNdyhwm6GBBMcT": {"description": "qnZ6HMrLn1iKRte3", "localExt": {"oLNoMAhBLDW7l8VC": {}, "dSXVCi4cpCYY59lX": {}, "xk0FHQiP3bWaUdp6": {}}, "longDescription": "WX6op9Xhc5fa5mFD", "title": "049c5B6fZwGAYi52"}}, "name": "QCkaGZYi20iDiNVi"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'm052lceUrdwSgQdr' \
    --storeId 'SqiLtfEVsPn5lPOS' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'EjsWHaIxckjOhqNV' \
    --storeId 'oG1bMRagXriGmVkM' \
    --body '{"displayOrder": 87, "localizations": {"7tZCPnHL3y4woDjW": {"description": "FnrRDSAlvrUVpfkC", "localExt": {"yftoaWVWEaiWby2G": {}, "I2dAal4njWrqENil": {}, "03MKh14KR2yoVdBx": {}}, "longDescription": "XRQkOKEoMgXtD2dN", "title": "OtDvv260QsknPwQW"}, "YWiNSbNHNEoNk869": {"description": "2DlgvYVe4JrNTot7", "localExt": {"PHRd1KqRhrdoM4k0": {}, "SHRkDclX1HNWFOG6": {}, "2XpR9ZvBXofakGNO": {}}, "longDescription": "jFClCijoobF2wWNw", "title": "4zw9TFyGiwK1LcxQ"}, "QPpYJTud1ix7Dm6D": {"description": "ycBdeynQDGJcoYVh", "localExt": {"0SJrovljTB56Atar": {}, "BWVaQPEGnjk32k2s": {}, "RjTe00lCd3lANZ6O": {}}, "longDescription": "HaBd79UB77FZW3li", "title": "xbdIEzQojTXTt81a"}}, "name": "8znIAa36n4sE63mJ"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'Wv5zIK6zueDbVaM6' \
    --storeId 'lYy5bkjUs8F7ai17' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 18, "expireAt": "1972-07-06T00:00:00Z", "origin": "Twitch", "reason": "QIlGrvzkB3i8P2y7", "source": "OTHER"}, "currencyCode": "N8mMLwqqijFRA2om", "userIds": ["KDmWpV5WYOK79GEM", "erzTLlGEdkswmVLG", "4ggZZ6fJADwwgjzx"]}, {"creditRequest": {"amount": 92, "expireAt": "1991-07-22T00:00:00Z", "origin": "Twitch", "reason": "vep37cxcBCLXzvOc", "source": "OTHER"}, "currencyCode": "efvkLW0DjmMi0sPE", "userIds": ["TuTnasw8KZqGHOrR", "SeNamqTYr1BEEOOX", "KXveuQybo066V3YL"]}, {"creditRequest": {"amount": 36, "expireAt": "1997-05-17T00:00:00Z", "origin": "Playstation", "reason": "ThLaUisEWJG8tSzf", "source": "REDEEM_CODE"}, "currencyCode": "GzkmpdrUiFACqsVi", "userIds": ["xuJ2NQRPt3uM5zaL", "fNbqwMIuI859COIB", "m0zYnY8UoAQBE6g8"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "h0fDOGvaSScT85Jd", "request": {"allowOverdraft": true, "amount": 12, "balanceOrigin": "Xbox", "reason": "eSNs3Awr4oenCOZN"}, "userIds": ["qaBEsK1zBfqJ5TON", "SQBQa4cnqtoBWLo0", "LglJQzR9KidvRiZQ"]}, {"currencyCode": "GiRIwGwcf4uPuKNM", "request": {"allowOverdraft": false, "amount": 6, "balanceOrigin": "Steam", "reason": "FdzavRljYsxT6UFw"}, "userIds": ["OhiRkcjcSLFw2J3f", "JL9vShsXxhidq0UB", "ovRGs9sFjeMY5HmR"]}, {"currencyCode": "qGiYzOM5iTLbUdiY", "request": {"allowOverdraft": false, "amount": 19, "balanceOrigin": "Other", "reason": "420210DkfFSEninr"}, "userIds": ["P9GETI7AYJLrw44x", "PXUiIWVnbyC03V6l", "5GPz8Al3wJDHX5Rp"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'EhospXHhMFujYkVZ' \
    --end 'U9XRcumRsy8tlhfb' \
    --start 'pnNdYx95plT5Y9Zk' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["uq8WxVQndx9QSawo", "dVZNYTMmT8kb3pc9", "JsZclHnUzI8TV1ba"], "apiKey": "uUsB20NiWc7VlErn", "authoriseAsCapture": true, "blockedPaymentMethods": ["AX7v2XbTSBbcncH5", "NFFrgM9WgNP9i1ER", "V21e9zoc69vBy2AB"], "clientKey": "WKQ3abJRw5zxRmS3", "dropInSettings": "IerGrMohCD0O9gTu", "liveEndpointUrlPrefix": "xdLc05arxemrILar", "merchantAccount": "oKDfG564yRXYYTg3", "notificationHmacKey": "DA4TD3WYxlbTg0jn", "notificationPassword": "2Ac6jx33nRrrBuao", "notificationUsername": "dU1y5uBd5HyhAHGt", "returnUrl": "ycpaBDv4HEmxdjkT", "settings": "iRh8P9SOmQbbUTKN"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "1ZtDZO0qd85Ulido", "privateKey": "frTXbRkEvscP3Xug", "publicKey": "oZcnicjVzUXpMvBG", "returnUrl": "t0YNokXQbuTHnFtQ"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "pKkSV2aKn5vKGwKm", "secretKey": "0quLrvOznENT2fs5"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'pcEBJXc2MDcYSL3T' \
    --region 'EQph7NtnWHKYhzoy' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "4xRm0CRLFT5wR2dN", "clientSecret": "HooJtnIO5lGZ4uOr", "returnUrl": "ssurByU7qhv8IWbY", "webHookId": "oJFpyxGOBjv52CwM"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["SOiuX3OgJc0LfoRo", "2ssDGgEfBVXaDcsl", "AMvqiFwuKGamysvk"], "publishableKey": "Ab10AdvWZbnquv9H", "secretKey": "wU5i5xDZEbAZIF8z", "webhookSecret": "K7aIR8cJiLYfa6nT"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "KRTs0sLcINgE0z6Z", "key": "48JBjGGPYADAkMsr", "mchid": "Ujrp5R2DYe6htZuZ", "returnUrl": "zB4ZTreiKT4HNsjo"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "O60MkZutZ1YNRxpZ", "flowCompletionUrl": "TIuboPonRZoTbjkK", "merchantId": 29, "projectId": 89, "projectSecretKey": "CTysAjDur0MWIO7s"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'FHecDrdwXys1xvtD' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '5Xmr04Bexmyst7UI' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["w4n3XvWBdNBgOH1j", "3EW9QOTKygJiIyrI", "u4eDtmx4ZJyt5xgf"], "apiKey": "gM0gRHMSdBiTuRZR", "authoriseAsCapture": true, "blockedPaymentMethods": ["mGW9dH0TEUIVyBea", "JZE35JlbwjW9iofT", "XozfFDxkzzp1bpxk"], "clientKey": "NPbTiBjYeqNbqzMV", "dropInSettings": "gzzQvsPINnNZxgXI", "liveEndpointUrlPrefix": "yxS4pW3Fucz2pmur", "merchantAccount": "6ie9A8cJRcHhvVil", "notificationHmacKey": "wPQTg0VfAAquKz4I", "notificationPassword": "kAiVCors1DX2veGc", "notificationUsername": "OQMeJdSaqeO1XTZ2", "returnUrl": "MrU7iUBq8EIMtjO7", "settings": "NkJmlvP8MmsBPPGo"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'OfIPANDtqsnbeJ2Y' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'vxzverxWi2RJO5tw' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "HGSLTCOZ9oPrSmyI", "privateKey": "zkca1AkxHhEumwMM", "publicKey": "uGTDWB3loc1t5HZE", "returnUrl": "pJY7tOGN57VG9XsV"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '5mJIRfQxHnpcOw90' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'WdHO6e2c2KMwupdN' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "KARZA2rmRsH9Gjjl", "secretKey": "lulWPEgdbqeOeLpx"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'GrEYbTqmrFlCtXv8' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'sSlGZABMDxuuFRqr' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "Nt5ztDRKwu9NJaX0", "clientSecret": "wP8XQPflHjU8e98G", "returnUrl": "HCU4BQeXsOqwo5tG", "webHookId": "JS68y1oMBrKyFjft"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'B1p4u0aCo9AxnFIc' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'FP6W0PoJfO13Dh5N' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["8GiTDE9yHplfOeBr", "2xtzJgVG3Zau0Voo", "Cv9miYJ4R8WOtfGR"], "publishableKey": "5luFBy6aXF4acKna", "secretKey": "fodr6BfafnYctjgo", "webhookSecret": "gWpp6OWtF5LaHOup"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'NSJXynuy9Z32NZtD' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '454POfz09m93EX3m' \
    --validate 'true' \
    --body '{"appId": "bg1bE8fAp6Frkoq7", "key": "SYLA1KRGJwgUV4E5", "mchid": "pbtYL3YAnX72Fb8I", "returnUrl": "HzO7HN6jVIOfQTQ1"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'oeWkZABBJIRhFKVq' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '8CfaAxMBx4FyMzJS' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'nDbW29fBxc9yxnXn' \
    --validate 'false' \
    --body '{"apiKey": "bkDNKtLd9SsIon7q", "flowCompletionUrl": "ULUeqiN8UtOBLnFI", "merchantId": 42, "projectId": 75, "projectSecretKey": "ATaBbE0T8OJtDY1o"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '7GDGmpHpVyenEjo8' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '8VSJHj69HOSdIrPf' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '58' \
    --namespace '8KDtwF09muR7P7j3' \
    --offset '18' \
    --region 'xfggHmRtSu2yk8fb' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "DTKXkEmSqQNE34uC", "region": "1ezuPQTVLDIToPdy", "sandboxTaxJarApiToken": "Cc7zGoE8G9TWw0eN", "specials": ["WALLET", "ADYEN", "ALIPAY"], "taxJarApiToken": "nCXSnou9tsSUNbwd", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'iHoxVMtQyj98tOAL' \
    --region 'kOWJ4rW3F38IEC4p' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'WYJZoRUMv5sppmYk' \
    --body '{"aggregate": "ADYEN", "namespace": "0sFGBmYG14V7gQYF", "region": "QHSjTFM2lXCPByoE", "sandboxTaxJarApiToken": "tV1VDEikqxT1GXc5", "specials": ["ADYEN", "ALIPAY", "PAYPAL"], "taxJarApiToken": "HxUXCUcdrvDnhyhm", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'IUeUljFGRepvFeRu' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "oGubjczsf9pOaiW9", "taxJarApiToken": "I8XRpWUnWzBI0w39", "taxJarEnabled": true, "taxJarProductCodesMapping": {"mItN1IK3LayLd6TW": "2PXBcCMFj8fLQZmi", "pGVBl7HMO8d3ZnFy": "ItkQfMUUsYZiryJY", "ukb0pksOIwC6TuC8": "LDmiSTBpicdqbVG0"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'YV4cvb2k87jFQiaC' \
    --end 'xNpZG1yKtWUPJfgI' \
    --start '5oQh8FqrIKhzicZ9' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '1t1UHoUtLBf3SmR7' \
    --storeId 'cC7gF0scf0Q3FvpC' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'PHei1lv8ZPgayGBl' \
    --storeId 'Si7lGORxgO7HZKby' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'pwSB0f0CqJWDPrJM' \
    --namespace $AB_NAMESPACE \
    --language 'gQSMKGkmQ46bsXhP' \
    --storeId 'dc1pv2s9JicEWTPm' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '4mifBPugFGT3PDjP' \
    --namespace $AB_NAMESPACE \
    --language 'Rf7k2CEfO21GzYkp' \
    --storeId 'TQRErZmTD8BT9N7K' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '38SCl6INsETuQhmZ' \
    --namespace $AB_NAMESPACE \
    --language 'zrH4zDz6lwYSkd0Z' \
    --storeId 'LDi3ylNeB8R0mpvv' \
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
    --platform 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'emudpsMOVCuQ4uij' \
    --region 'mGM6uW3zYmBFs7Kk' \
    --storeId 'nBQXsAfa02cF3baA' \
    --appId 'Ff3bvOLAutBuvc49' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 've5T6TdINhB7aM0P' \
    --categoryPath 'EX4A89XpaPSp7VmV' \
    --features 'ptb2n2mzslqZl6UO' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --language 'JEe7jeiAIHZT2BLD' \
    --limit '62' \
    --offset '77' \
    --region 'cWb2UEpAMBjESiSW' \
    --sortBy '["createdAt", "displayOrder"]' \
    --storeId 'rKuSoS21SjcHP7l2' \
    --tags 'SZOGp3MDnHh4jGFp' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'Mh0B8O6qDdxb7gCA' \
    --region 'zaAmLrKCdDfqoAST' \
    --storeId 'pZwRU6GHCRJCQty3' \
    --sku 'i703GwXP4LQLye6T' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'kYnGMzLcXsifzfkm' \
    --region 'B5pxi7A5oFvrjhLw' \
    --storeId 'SyIzjCgirHLkpbX6' \
    --itemIds '1rEFSw9vmJhvIqg6' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["1hpIOHv5lc0ZEZKg", "I2cMUTkhksehWWYu", "IH7tBPwmpTY7e1uZ"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'APP' \
    --limit '11' \
    --offset '25' \
    --region 'WyTkwt8FwHGg2n6T' \
    --storeId 'cWQIAp3NCevu2Od4' \
    --keyword '07iE3m7A4JdCSL2A' \
    --language 'YGrbfzY8nzpugXsu' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'VapVSde9BbazTkgt' \
    --namespace $AB_NAMESPACE \
    --language 'dbDEzWgzpE9dNlJ5' \
    --region 'nXXIN5RbLWw18ABL' \
    --storeId 'YgZbRtJuFo36ylBL' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'zgglMaSgTZ0tgYS6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'Z1PNdxTv85e9YfJu' \
    --namespace $AB_NAMESPACE \
    --language '1fLqAE4vGVPPfMRQ' \
    --populateBundle 'false' \
    --region '3pyeGsHx6ojRko7q' \
    --storeId 'DHri5OwsNrvWx6Ao' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "HPxqebB6EIZXFzjz", "paymentProvider": "ALIPAY", "returnUrl": "04FlFEBpzGhm02bD", "ui": "0FAyidXnCHjBrJUd", "zipCode": "csus4g6NSGnFSSQ3"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'zfZSgDlLl3VMW1u1' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'kQscDXQyjNurX3j8' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ru0yQfP9hFLitL9S' \
    --paymentProvider 'CHECKOUT' \
    --zipCode '5laVL7T9v7ZvVFvH' \
    --body '{"token": "XrbKTykc2KYTCKt4"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Vo22cZbG9ydS5jiU' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'dSGdLnp6fxQtAZqL' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'N0zFhnGjHrZQK7XR' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'xl1l8rbc8cTeHdoY' \
    --foreinginvoice 'gUicrf9SBXYj82VX' \
    --invoiceId 'YI6aEz5H0YuIwbVb' \
    --payload 'J6BXz9qhNl9j3vyl' \
    --redirectResult 'AZqzidPvQhCmf0p6' \
    --resultCode 'eibqmZ6QHjVgwjRH' \
    --sessionId 'LxfnHLyQgklyuC8j' \
    --status 'Ph5pMfWjlgAw9ntP' \
    --token '3bvOiucTE0lmdV4A' \
    --type '1DmepOdGEVb1nA2S' \
    --userId 'DSkqUDo6UyAhqzs8' \
    --orderNo 'AZYTnRVvNzzIDH7V' \
    --paymentOrderNo 'erm3qKDwfRRXA9Ki' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'GHDxIC6L5WT9Mk5f' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'jxt2qrrzM75baJaw' \
    --paymentOrderNo 'aayOI6nmVhlILHjY' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'WIZhlSOMCr7Jrt1H' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'WbzrzajuI5G7VVbA' \
    --limit '97' \
    --offset '74' \
    --sortBy '["namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'OwID7UjxZQlIwtZZ' \
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
    --appIds '["tUuWQrBDaFwzKPcU", "MvyK6h8HqQIahjVt", "OO6stPFQloAWGR6g"]' \
    --itemIds '["ZHduupmc5BYdJAOo", "SfEMPByD3cIDSxS4", "BeVjAYLajf92QLtp"]' \
    --skus '["WnSM2b70BC3HmOj3", "5pmJE17UZBwjtIov", "eg6bYuA8u26VVUzI"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'Vq2E669Brg34p1Kx' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'ndYXxEYKg7p3YqCi' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'aBkcDkpdnQuMINLe' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["8VCktiOxi5YIP8dP", "80fn9hM316u0Ia6e", "ZpBrf7aAOH714srd"]' \
    --itemIds '["NmrK0naG2dy4Q1WM", "jxnHStxY3KRIEXc3", "OGhsAOYdgYVDk90s"]' \
    --skus '["GII5u0vEyfEX7ZsW", "7DKIuF7DgXmRfRcz", "e6RMlz8fFo7x96WR"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "fRWyQ4w2QJQmN6pJ", "language": "fAX", "region": "4fEezGxDsCqNAM9L"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'jR35Dryueq9e8WuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'JTjGa6B7lM62WAbI' \
    --body '{"epicGamesJwtToken": "zQhjFntO7LKK9Dq5"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'BBexJTFiCm6CaweI' \
    --body '{"serviceLabel": 42}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'z52Cj5761qyAol5Q' \
    --body '{"serviceLabels": [80, 82, 78]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MXVgVqUZ705DR2Kd' \
    --body '{"appId": "W3SRXMdeDrQ12BVr", "steamId": "0MO5Mbc5Um6zbYfj"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'OcwbzFx1GAom9OBp' \
    --body '{"xstsToken": "yzYBllMzW1hjE1DB"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wQUhG6B7p1wXopfD' \
    --appType 'GAME' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'gfvyY0ROnRmYAjnU' \
    --features '["Kxl9S4f3IxoaLFPF", "0fXQkHQRtqrDkl9S", "1Va49W8q4FTZmPGX"]' \
    --itemId '["4yzAFgJBwRYOel3c", "O8y6ukcGjUX4hfwH", "K0GfUcigGhIF1daZ"]' \
    --limit '86' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'MTjTCA5IZowfRgq0' \
    --appId 'BwnUKuPgRcfIS99S' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'GMv42jjZUMGiGPjD' \
    --limit '29' \
    --offset '77' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'izPpFvZlK8BEuNbu' \
    --entitlementClazz 'MEDIA' \
    --itemId 'xR4Clbw5G1SHQRwF' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'XOPb0rAOXm3l3VH9' \
    --entitlementClazz 'MEDIA' \
    --sku 'I1WH5Sslpd6Rc8i4' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'MvnUmTF0nGvMBRC4' \
    --appIds '["I1O8PpyL8vRZHsAh", "dYBugO6RAFVlIMB5", "qCR8K379cBVGrhms"]' \
    --itemIds '["8DNrYfCs2gAsOD0j", "AL67HuStoxPLFvhi", "RqmeS7b4nFOCG255"]' \
    --skus '["zwaSwjjbQizK8EQr", "PjosFp3Y2e2WKwRJ", "nQlJOXjyC77WpMYT"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'LGHRTgGUPEJfvwYP' \
    --appId 'c1VEoH7CwaKQzNLj' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'e6nKyk9SNVrEiWEz' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'RDBxpSoWXJUfVWgO' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'BOeaKfWfLQGXRXCO' \
    --ids '["gsgGEJMEvnldv0Y7", "QEPkIBmgrZX479KD", "bKjahX1o9ylVWjmZ"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'igTusqR6zGtX6ogs' \
    --entitlementClazz 'MEDIA' \
    --sku 'nOV1zb4Z06Lmrcw8' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'C8pqHBdbT5VDW8uc' \
    --namespace $AB_NAMESPACE \
    --userId 'IwcA6LiyGLcFpRyY' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'kPkxzTKlP4JU82Dc' \
    --namespace $AB_NAMESPACE \
    --userId 'p0CtO5javG8eF81Y' \
    --body '{"options": ["Xp8fgV9J7kI2TyZI", "gqlckGYpba4Xwr28", "bmnUCsE0ZCC6myPl"], "requestId": "z6ljhh2udOCe04qt", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'hHHaBF9qCKTSH0Qk' \
    --namespace $AB_NAMESPACE \
    --userId 'XEpww5W8sGCuqe0x' \
    --body '{"requestId": "yJvzHIZx263UztCk", "useCount": 81}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'JRSgsAJ3wj2jO5vO' \
    --body '{"code": "9D84Iu38rvHftigO", "language": "xH", "region": "6s9KLwWEHmspeVUN"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'l2HcVJMHsPrfEYn1' \
    --body '{"excludeOldTransactions": true, "language": "liPT", "productId": "b8cG7SJE3eXrrxSl", "receiptData": "ElkY1XGi3KGcpAQv", "region": "BwNNi1cqQU39BBnh", "transactionId": "NNdUC4dsnifxxgRu"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'holCcL8PXFZyc7D7' \
    --body '{"epicGamesJwtToken": "wLXwRdbsRTRA6bWj"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'IuFa5v1Im0PopyiP' \
    --body '{"autoAck": true, "language": "MJ", "orderId": "8Hds4Z4UYR52zo3P", "packageName": "HOJWBwNX7O7pgEYL", "productId": "H8LA59SWFhBYz1I6", "purchaseTime": 35, "purchaseToken": "uCjv4wbD1FUfbVwV", "region": "lOLFxc5JgDwG2Imb"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'D6h7lUWhVvpTMcc0' \
    --body '{"currencyCode": "tDRTrTNhwTSHMBGD", "price": 0.04289062586658099, "productId": "NitgHdHiLrjss5wz", "serviceLabel": 10}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'guF3q3MbdvMUvZ2N' \
    --body '{"currencyCode": "5VnfimVQvy22tS7U", "price": 0.7023768066358468, "productId": "L0TKYe1f1uNLxchn", "serviceLabels": [66, 19, 23]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'QjZQZuL0HFp4YuNG' \
    --body '{"appId": "cXmArh6IsMkQrhp3", "currencyCode": "XVZtrVImtGeNzq73", "language": "zwe", "price": 0.05372050417545815, "productId": "v7x9seimWvbAjDfm", "region": "Bkqhmu4CDfBOWHAX", "steamId": "tco6MvwUT7Kb3qjE"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'QN89gTqHyZao0zTw' \
    --body '{"gameId": "9ypezZhUm3pz7fGu", "language": "WSF_RjbA_063", "region": "uvU5lldxslpjEjMB"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'qcIWke4wAptTZ9NW' \
    --body '{"currencyCode": "6LXxmTTO0orFkTp8", "price": 0.03184095886566962, "productId": "YFwVawoMw5FEzqmZ", "xstsToken": "eJIhC243uyR7VKk9"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'SIeAtD7A5e9DICaj' \
    --itemId '7EQnZ3cbohc8YPhg' \
    --limit '25' \
    --offset '36' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FsMR0V5Xdnao4RzG' \
    --body '{"currencyCode": "MvUBnPvLNZgxQfTg", "discountedPrice": 24, "ext": {"RZdPGI0mDQU7ySGU": {}, "4qGx1YqGPXtWNLKx": {}, "xso0Y7Yjyk1I0upb": {}}, "itemId": "tofYHBr8HKT5Z2js", "language": "erg", "price": 99, "quantity": 97, "region": "RJE0PZlBCyazsDWD", "returnUrl": "VLBa0NXaHPtNZ3jm", "sectionId": "0vJlRe0UDUaeG95m"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'o75aXPeOS4s7FCpx' \
    --userId 'bwm7RmUWnJyRTuv4' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZvJqp3wOlktGcQXz' \
    --userId 'aoxBiiJ4zjXei0EK' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 't7WxCsDzO98LvRxB' \
    --userId 'FvBYud2AYnCcnziy' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'vGJYHiIBtSuzKOYA' \
    --userId 'M0Mhxuqv28OSHkdy' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'q8AJyWX6H3Rl9H1C' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'gNXcE633JFQ0FTXh' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'W2Mz1smPgOBky1Cw' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '0nWmAJhrauk9TSge' \
    --language 'gl8SFnOrEza5CU7E' \
    --region 'fUlUk6rwgtAQEZUu' \
    --storeId 'jBTXm5LCSETAFtNg' \
    --viewId '0KI1HgzJeFG6f1g4' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'izGW6qnFYs1KVMVy' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'BWK992ll42ueDWzM' \
    --limit '43' \
    --offset '86' \
    --sku 'jZBY04Nc4kh9jyDl' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'PK9DKcwq4UfeBk6R' \
    --body '{"currencyCode": "3Qm0Jfpq3Zge0LNC", "itemId": "zhYn1m5VzTRDM1Lh", "language": "xG_UPCF", "region": "q2uFuFxADS9McqBc", "returnUrl": "NkvkWeMll0wEH2Qy", "source": "0WDUiTdmUkfgJUHE"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'U0h81zjwgatKntAi' \
    --itemId 'VLj3fVxNQK9xQo1N' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7Zrc8Ux8acT3kzk1' \
    --userId 'YyHV2xz3TfXpVyQ4' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GuJQnGxZKAQo2Y0U' \
    --userId 'GjZAvwWz5AqgdFNZ' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 't9VpjFPpS5bGmLUW' \
    --userId '6disHrqGequXoUyY' \
    --body '{"immediate": false, "reason": "yleZkzY4orVgaizq"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'L7lBnFdA9roKMYQE' \
    --userId 'mMFTEtvh33sYAqmY' \
    --excludeFree 'false' \
    --limit '5' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '6JCKRTTxpzSzLBDK' \
    --language 'MIW8IDwOF75kiIno' \
    --storeId 'uvomk4HcRE382B4t' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'PtLCrDFXv85j7veo' \
    --namespace $AB_NAMESPACE \
    --userId 'rSVI89U4Ws7XFTyv' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'oXKDJOJ9GqyxR8dF' \
    --namespace $AB_NAMESPACE \
    --userId '4HqHpulz7Syxof72' \
    --limit '85' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate '0heIi1w6sCJPj6q6' \
    --baseAppId '6lEAsQELEduO2puQ' \
    --categoryPath 'HzqNf5Vkb34g5sIZ' \
    --features 'XMMAYaLgTn04A7gi' \
    --includeSubCategoryItem 'false' \
    --itemName 'XYwvW2mIH1uLGuPR' \
    --itemStatus 'ACTIVE' \
    --itemType 'APP' \
    --limit '17' \
    --offset '36' \
    --region 'b3xfj7bFb4G6o3cM' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "name:asc"]' \
    --storeId 'fQNPlYhnIVXhTzd9' \
    --tags '0xeRZlTb2GVF9cdX' \
    --targetNamespace '6LAy9YY0i2gXdLAu' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'IrGhIVTDyVrsLIIb' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'N6pHPsSNJlGfOOYR' \
    --body '{"itemIds": ["sQdhApkgzebI9TcK", "SWH4HkYVCNjwpGAE", "QX4NjwRJEX5V5nbk"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE