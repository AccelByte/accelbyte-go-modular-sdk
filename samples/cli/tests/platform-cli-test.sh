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
echo "1..385"

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
    --body '{"context": {"item": {"appId": "2snCSvhd7PVUL9oh", "appType": "DLC", "baseAppId": "HqgrHq6UYRMxA79o", "boothName": "leynwuu29fcFrsm9", "boundItemIds": ["BZuqX4FYbvVlnp2j", "KSjwq9baWo6Yhk8R", "rBoURqYrx3HgS4cU"], "categoryPath": "wFt6mlkvgmS3iVdr", "clazz": "d6ah48eyIokmPgqd", "createdAt": "1989-12-29T00:00:00Z", "description": "7569S15akPbKdy0g", "displayOrder": 78, "entitlementType": "DURABLE", "ext": {"VhOZBOVIzevnSnmo": {}, "1intn5vhjTBTWmHb": {}, "OzkUX6ktErgCA5OL": {}}, "features": ["EkEy40JUxCG4nsq2", "hYwyF205k0nOr19Q", "RG1NpaFEyYrEKmlU"], "fresh": true, "images": [{"as": "wo8ifrBY5D9ESPt2", "caption": "4SDgIFyLYBRGT1jb", "height": 93, "imageUrl": "waGgcnlFRYodCpGz", "smallImageUrl": "bQTy3lasQU81Z7EO", "width": 73}, {"as": "9JRFWPy2CoujEngC", "caption": "tWlRodycZI1RwFNw", "height": 82, "imageUrl": "ktjeYnQvKwQXSHXy", "smallImageUrl": "GoAdIoNrkt2xXEiE", "width": 4}, {"as": "YdX0iT2JJP6ubYKn", "caption": "Py4lBq5r0PTkQTYs", "height": 66, "imageUrl": "vcnsmQSE90CtudNp", "smallImageUrl": "l1hVQd7Iw0GwXOTm", "width": 63}], "itemId": "8ZUdo691v1kgCIhF", "itemIds": ["fSxIOB9khCPbUVd0", "yVMN9GzoJtfutxub", "O733thsw9pmdTjAq"], "itemQty": {"uavxvPtsyG9tPHon": 23, "LMIoLQShbhUtDeL7": 1, "os5aIN0EclkRnYtl": 97}, "itemType": "COINS", "language": "YHG4CFQmo9jXTu6H", "listable": false, "localExt": {"CQxeQHlmIXnZfUx0": {}, "WKBUlxpHdh815ZjX": {}, "h0rmO8gmfURrGqhN": {}}, "longDescription": "6hpwQu1BvK5qLGna", "lootBoxConfig": {"rewardCount": 69, "rewards": [{"lootBoxItems": [{"count": 46, "itemId": "oHkqbu8a5KjhSv93", "itemSku": "Un3p4MHeD9QoXsGU", "itemType": "sKElLC35vg1fxZqJ"}, {"count": 70, "itemId": "QFsY5JyKo9tOD0VI", "itemSku": "MSEY37XLWPHfupRf", "itemType": "zAE2s4EFHWVSq7wd"}, {"count": 76, "itemId": "FXgARVD5A3Kdgbri", "itemSku": "mLuHdo8BpBvI65y2", "itemType": "mbkujlOxDT6KSLMi"}], "name": "SyUSTbffPcp9KxFc", "odds": 0.15314260332398633, "type": "REWARD", "weight": 25}, {"lootBoxItems": [{"count": 54, "itemId": "KlxGCtgEeJ26lgBb", "itemSku": "WKCQubUDiftNZ0RC", "itemType": "SjxmbwhQsy060zRl"}, {"count": 29, "itemId": "hjDKAadBlyGLWhHK", "itemSku": "HS1NjEDlOJeQbKUP", "itemType": "OvPB64bsZpiwX1hz"}, {"count": 70, "itemId": "e9WRWDBJvtPmN6m0", "itemSku": "bNHgfTgehpWVVmqC", "itemType": "0caUMDRObR0mTxKI"}], "name": "IqfjNnymFt6Hdr2p", "odds": 0.3497202106951075, "type": "REWARD", "weight": 95}, {"lootBoxItems": [{"count": 88, "itemId": "XEXGSXRScFFgB9sO", "itemSku": "gW6ljnJivCv4bdEv", "itemType": "IG3u9O2vHEhEbbgz"}, {"count": 72, "itemId": "xC2hDpKShSrTNmx5", "itemSku": "6Xs2GL7IcigbW7p6", "itemType": "Cv9EhkkNAz6cH3gJ"}, {"count": 97, "itemId": "RLap45V2gnznkTxZ", "itemSku": "bT1iXmhgc9llsS31", "itemType": "yCsYWnX9xmCyRHyQ"}], "name": "1Wg1VMmO1nc47gj7", "odds": 0.7160644198442404, "type": "REWARD", "weight": 82}], "rollFunction": "DEFAULT"}, "maxCount": 57, "maxCountPerUser": 85, "name": "eLB0kjtatD1kJfPQ", "namespace": "9jQPSXgnHxPbyZVn", "optionBoxConfig": {"boxItems": [{"count": 44, "itemId": "HoyuRr9tT4gKEhZJ", "itemSku": "uzJZPsQXhP5cuaNS", "itemType": "sSDC1jKVjUuTTmws"}, {"count": 57, "itemId": "fjCdVYtxrCVIrSCY", "itemSku": "WdjAwLDKqEXZ3yR7", "itemType": "UQTVfF94KGUVVqX3"}, {"count": 5, "itemId": "aKZf7R0KFpl3sZyX", "itemSku": "zpQxdZwhrTVjby8U", "itemType": "2PivjIIaD6z4RcLQ"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 78, "comparison": "excludes", "name": "QA5ybxtT3Kgz9t9Z", "predicateType": "EntitlementPredicate", "value": "VRO0hxSrivqeelRP", "values": ["WBI1eLSUb7zaf3Ls", "bOx4Dkq0q5qMtFzz", "7ns1TqOMBS8A42oY"]}, {"anyOf": 55, "comparison": "excludes", "name": "nQcv9zZgjvGrVnjn", "predicateType": "EntitlementPredicate", "value": "d8CZxbn2k6eQzPYn", "values": ["TiOU5FhgcSixBgnu", "WrgM4rxx3c4WstTV", "M1gM3nkVzkqNQpSG"]}, {"anyOf": 10, "comparison": "is", "name": "zTH9QRZypq0z6Jxb", "predicateType": "SeasonPassPredicate", "value": "1RV8hSWUUUeHcU3F", "values": ["MLyQG5LR4eKRqAIU", "65id5ak5ukQ94MvJ", "36KAUVhD27ebk9YH"]}]}, {"operator": "or", "predicates": [{"anyOf": 27, "comparison": "isNot", "name": "F3Xf6wFB8xjsgUAF", "predicateType": "SeasonTierPredicate", "value": "MaMp0zgbGSvLfuNI", "values": ["WcofZdT2ulmqApIE", "APoC1Ro15fulh0Kx", "RqMo29QfumY83iqB"]}, {"anyOf": 16, "comparison": "is", "name": "zhfhLHMy6xB9yvFx", "predicateType": "EntitlementPredicate", "value": "h3IA80zQldp4ayGV", "values": ["qAhBd6ndZQ6E9n6b", "9kLd6RS87eAqsBBw", "oFrf3K5EOcGPzhp4"]}, {"anyOf": 57, "comparison": "isLessThan", "name": "uNQm3pp9GBv4LcaH", "predicateType": "SeasonTierPredicate", "value": "VgHSEUL6zXEQnZ27", "values": ["bmwLTOsXlApxIkvo", "BC0nEpEdVHL27N5l", "PLrSPLHjUWF6LNMM"]}]}, {"operator": "and", "predicates": [{"anyOf": 95, "comparison": "includes", "name": "glW2yf0ONyNo5hdj", "predicateType": "EntitlementPredicate", "value": "dzX2foNoJoiQN8Ew", "values": ["rL4Nixg6gCgWphZz", "JQF5wAD1GIXwkogg", "m9ji8kng3Ezwb6r1"]}, {"anyOf": 32, "comparison": "isLessThanOrEqual", "name": "nt1Qh8UKxxaz2H1P", "predicateType": "SeasonTierPredicate", "value": "kIKUKiyFXgXqEE1H", "values": ["XqqEYF84UGISUQGW", "gfPCgefIYGm6rEyO", "cIrjUHOEOBIdVMAR"]}, {"anyOf": 77, "comparison": "includes", "name": "wmDgFXk5fMbrnhwE", "predicateType": "EntitlementPredicate", "value": "Yov84QlP2qP5Iawg", "values": ["SgJjpVI6Urb3pcGg", "IpURKM3jHAiuOhVH", "DImjZA6ASygjqL8q"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 29, "fixedTrialCycles": 8, "graceDays": 44}, "region": "RYI3nj4e5KVdXxz2", "regionData": [{"currencyCode": "j2e4oLImFMKOquuV", "currencyNamespace": "1MSMXK3VKsFNtsIw", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1987-09-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1984-02-10T00:00:00Z", "discountedPrice": 14, "expireAt": "1987-06-14T00:00:00Z", "price": 61, "purchaseAt": "1990-06-08T00:00:00Z", "trialPrice": 6}, {"currencyCode": "eWNRvLyt9RO3iqtl", "currencyNamespace": "Vvzo0vkwSIMPXw35", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1971-07-12T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1985-09-12T00:00:00Z", "discountedPrice": 50, "expireAt": "1994-06-15T00:00:00Z", "price": 94, "purchaseAt": "1973-09-20T00:00:00Z", "trialPrice": 84}, {"currencyCode": "mUuJ7rlsUrJHUX8p", "currencyNamespace": "Wbby9N6aLEmrN8bs", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1999-02-18T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1989-11-18T00:00:00Z", "discountedPrice": 73, "expireAt": "1997-05-18T00:00:00Z", "price": 48, "purchaseAt": "1995-06-03T00:00:00Z", "trialPrice": 2}], "seasonType": "TIER", "sku": "t4ZoXX8cI6biCw8t", "stackable": false, "status": "ACTIVE", "tags": ["SoJonlf5bMVLmgdt", "0RrK1G2YBHDSdage", "kTsX7hd7CqK0FrNn"], "targetCurrencyCode": "bHS6R8p14UI7pfb2", "targetItemId": "ICdED2B1NyBGHAuV", "targetNamespace": "KydkktdIhQgLRcUQ", "thumbnailUrl": "zpzAQV20rU22aEfX", "title": "Ysd2ei1wUnGCWobQ", "updatedAt": "1993-01-11T00:00:00Z", "useCount": 14}, "namespace": "WLGyaEHjGtpFwbSC", "order": {"currency": {"currencyCode": "LgqMT4HDeVilIxYc", "currencySymbol": "oxeIIIbUImV0n1uX", "currencyType": "VIRTUAL", "decimals": 11, "namespace": "UCcCgDnm11fbeogz"}, "ext": {"dsPr0BgVHzhVO9cC": {}, "Qo6igFlEAkoFSkmb": {}, "Zj4owyPnfYmkdaCU": {}}, "free": true}, "source": "PURCHASE"}, "script": "dwBoNNQi64ti9oVY", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'wcTfX8CLRSVsnmLh' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '4C53VmdjsFWtpKYJ' \
    --body '{"grantDays": "OloQlZihbRvMNj2j"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'RpJ61tN52nP5Cn8a' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '1yRXEM8nybBEiX5g' \
    --body '{"grantDays": "RiRtNS4aGp5WE7Un"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "PhhS0AMvMvYHagV5", "dryRun": true, "fulfillmentUrl": "EDcKo626REBQnNMO", "itemType": "SEASON", "purchaseConditionUrl": "tGGelEx5LmJSOe9u"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'imkhggW9vgDFpLgO' \
    --itemType 'CODE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'BoGUvp78aIjVULWh' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'zmMIYXOSGvNVuKxG' \
    --body '{"clazz": "COhzlNI5XFDblIw0", "dryRun": false, "fulfillmentUrl": "6056HvY5PMsN1qIK", "purchaseConditionUrl": "JlIos7opGo1Auj1R"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '5L0ctXLj8jddrYwr' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'NxXH8n3fBgpYotE0' \
    --offset '98' \
    --tag 'gqOIDLeTYZ4IxEZt' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hibUyqonAyfofdxG", "items": [{"extraSubscriptionDays": 31, "itemId": "yraRnn91CCczrYtu", "itemName": "8kcYnGxGJ4r6SOe8", "quantity": 38}, {"extraSubscriptionDays": 10, "itemId": "nlyVw61locI4Fu4b", "itemName": "6QYrz7qIq5sRLiyl", "quantity": 29}, {"extraSubscriptionDays": 9, "itemId": "TO3pl6j7BmkjCygg", "itemName": "M7JfVWvCCpsb9DeQ", "quantity": 76}], "maxRedeemCountPerCampaignPerUser": 34, "maxRedeemCountPerCode": 3, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 46, "name": "6s1GA0WEBQuCio0L", "redeemEnd": "1979-12-19T00:00:00Z", "redeemStart": "1973-11-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["1IRBboTBF3bY1wwP", "6SOOw4RJPSt7ekW9", "SgtTLiAfgMLvrbfG"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Wo9fDXMJ0TZnu8wG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'BXFcnwrpINjhyAhh' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ywPfTJTRJQhTU6Re", "items": [{"extraSubscriptionDays": 15, "itemId": "cRPksmfqYqmUH6Y5", "itemName": "cDPS98EhNsbRoh9z", "quantity": 55}, {"extraSubscriptionDays": 90, "itemId": "QBHXvRFk1Pz90jlW", "itemName": "G98WjVO2OrRJXWza", "quantity": 82}, {"extraSubscriptionDays": 75, "itemId": "WAp8BlQgRFH2tSLT", "itemName": "0iMNSYR5t9mUBtuA", "quantity": 23}], "maxRedeemCountPerCampaignPerUser": 73, "maxRedeemCountPerCode": 10, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 45, "name": "r8JR8seAf3xI7CeW", "redeemEnd": "1982-07-25T00:00:00Z", "redeemStart": "1989-04-13T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["QAFsZ9EfAFjEXXwh", "MsnZuPAGsRwfCTEb", "4IixK7cTiBgUZRDO"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId '1FHakOUA0sNdju5C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'AydOKqgwxrTVeTFu' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Q0FgEODGTKBt7KrF' \
    --body '{"categoryPath": "vLbT2A19A8fUIK6N", "localizationDisplayNames": {"ROTY1Xou3r2tCV8H": "WaPQ34mpnCOWHGMB", "WWCvoaJnD18xHJPS": "WlpGhQTzmosCWeEx", "nP70fz2frdlFrGfR": "OvJG5S1gufiaCrfV"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '2nwZYpqgCZcjTivh' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'fraRfx1w9PKcNY2K' \
    --namespace $AB_NAMESPACE \
    --storeId 'YA8RLbQlmSbExn4T' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'XF6WQ8t6Hsa9imKh' \
    --namespace $AB_NAMESPACE \
    --storeId '5fMAyEoiDJOmQhFX' \
    --body '{"localizationDisplayNames": {"oaB4coIP6kWsitfU": "4OeMZQYmDEnok6vI", "prUkMNSVNO9wPWth": "epQcdkzXpHPKk1bg", "JGYMWziJAPPR7RrO": "FQxbqEf02CuzoIjn"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'v8ULlp4QzIwPW7dw' \
    --namespace $AB_NAMESPACE \
    --storeId 'W3XkvhG9YswlkC1i' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'xKl40Znzu8Ckm2D3' \
    --namespace $AB_NAMESPACE \
    --storeId 'zeSUMt55E7hmLjO4' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'BBy9vszkLLZnwV9n' \
    --namespace $AB_NAMESPACE \
    --storeId 'ZYMv5jJj4AjwAFMT' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'ppdctcmiboZqDlQ5' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '60' \
    --code 'HDYNsNo8JiFzHPTl' \
    --limit '60' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'yDJh6m3t3TN5XwbD' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 88}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'oGZsB51vJATCTqUw' \
    --namespace $AB_NAMESPACE \
    --batchNo '31' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '0rHcgt0trbP5HnaI' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'fgIKbPH4PRF0yuEI' \
    --namespace $AB_NAMESPACE \
    --batchNo '59' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'OT76WyrexcdarC2w' \
    --namespace $AB_NAMESPACE \
    --code 'YD22YOq7fVf5rxnH' \
    --limit '99' \
    --offset '65' \
    --userId 'H7mycVW9neFZu3VY' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'RxCy4pwCnKMwRhSe' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'RD4Wpyx3Vzb2MovT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'kjq24oKEEULzOoT4' \
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
    --body '{"grpcServerAddress": "5a5PGOR1MYyuY0g3"}' \
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
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "q1Ehs6izD9yz5Z1M", "currencySymbol": "irvGSud5k2wBsueq", "currencyType": "VIRTUAL", "decimals": 16, "localizationDescriptions": {"8fOzZSWwQDFKsibS": "zkoo0z3yYvimdsCY", "drL4KdeFBQv4gAjJ": "eTcIy7BXfccJKN7K", "F1PSqy3gfais4UMV": "qVhH2cfaZH3PXT3Q"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'nC20wmdNX1IVyAyq' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"Nv28wtmjXL3kP9uz": "WfF7L4B6L0kZTpQQ", "RKqocqerjD3ocQL5": "OSaxBhk6ZUuGSatr", "d76XJBBQvcwZ5G83": "rGz1G5H5f5hqvr4l"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'V6CuXXT7FBRM2WEj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'cHQBXkihJW2eil2p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '08bwaorj4bsFe3Wi' \
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
    --body '{"data": [{"id": "7b5GhV84jPUYBVE3", "rewards": [{"currency": {"currencyCode": "SGqoydWy64KSNpg0", "namespace": "7ezx4l0gd54o4vnJ"}, "item": {"itemId": "MHtbiAe3lhl9wnGW", "itemSku": "fWnacEIh6fW3ccr2", "itemType": "xWEr3YlzXX17WPMK"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "gNIsgqEEKIYro1dO", "namespace": "oj6SSmBULW2xVL19"}, "item": {"itemId": "RcDY4NmBvRAO7ACV", "itemSku": "46HFgHEZtOlNnCNs", "itemType": "cjYtyTqgTKPgeNCq"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "NrBIO6RNRsN2RkQd", "namespace": "XY5R1w8MX3Go6FdM"}, "item": {"itemId": "jWKpAQe9vrnBzCis", "itemSku": "7rzUr3g9RYI6ZwzZ", "itemType": "iYLkewEREeYXubGB"}, "quantity": 88, "type": "CURRENCY"}]}, {"id": "nzFaJ8LRaegvyGAS", "rewards": [{"currency": {"currencyCode": "tPxq7WscqwjJI91A", "namespace": "XwttrfpoNqhcWv7f"}, "item": {"itemId": "NEpA8S31hGPJseHu", "itemSku": "uJv3Hb8xZo46qlwV", "itemType": "QW0znjbFv3mdXtn1"}, "quantity": 29, "type": "ITEM"}, {"currency": {"currencyCode": "kOvkCDW1aH1klfOk", "namespace": "PDER77FALPuKkGj3"}, "item": {"itemId": "8nxQjfPvTV2YJTCA", "itemSku": "IpefPQeEpgsK35LP", "itemType": "2AzuuqJ5fCk8rWzS"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "zeRSidGFupepwGOt", "namespace": "VfWimGHU74Cx5VOd"}, "item": {"itemId": "J9QVR6M20bLB6VOR", "itemSku": "c2A8xcO1TETYNJJk", "itemType": "g3bAU76oCgucxp3g"}, "quantity": 31, "type": "CURRENCY"}]}, {"id": "EaXQcBzeELRqaTeO", "rewards": [{"currency": {"currencyCode": "ZlVyGjSEGOfwVZbs", "namespace": "8bYoWdK5NEBSB4yj"}, "item": {"itemId": "hcfRuiO0CMCbeE9Y", "itemSku": "AByNhXWgow9bMO31", "itemType": "TeEuabdgIOOBe4cj"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "QCyJy3WDKUO63Nyg", "namespace": "Vkrfa7zZE9T6REOa"}, "item": {"itemId": "2Hels6EWO2GpxOFp", "itemSku": "IdbvhfPJ5stSPTKn", "itemType": "0V2yQoVUlIrsnK3m"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "Oyxce65NFpAByhEG", "namespace": "T4sbamLSoLdHaCf5"}, "item": {"itemId": "so7urQygxtILpblY", "itemSku": "FrkNMdDj7Do2TPk9", "itemType": "1CzXSc8dgvcFPyKk"}, "quantity": 92, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"hMyymlCLALC87dKL": "2pm6Yvl40eFsRXhl", "ZOZzkLi9tqCVfbyG": "BmsBxg60NgSREr9W", "gSNVMTOizxE9rDd3": "z8qY3kWAmY7pcoUc"}}, {"platform": "PSN", "platformDlcIdMap": {"nbBmIq6sWrHO7GHR": "GFrFw11Pm6T3Wj6m", "XIqWC4m0QC8QUGbk": "YbVMasBijIRyN214", "3AAzplOltXqwZnxH": "dGQke3oZdT6jT07F"}}, {"platform": "STEAM", "platformDlcIdMap": {"rPVDObm9P4twCtTx": "BtMYxqFpf0gC9twj", "QS62xM82RIs760PX": "zsdvApCQQ5M2CoBg", "PGMFib4DZ9ptP8lb": "NqeMDBYQSPGxDYPO"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '5g1AnyRtxfs5jg5K' \
    --itemId '["ilGiI8jPcf1eTnIo", "EhPJbnTrrygFyvjn", "XTWbhLEeO3QfX782"]' \
    --limit '38' \
    --offset '29' \
    --userId '7SP4HlxterLu0gQo' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '0TvbeQNyz34pJStl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '27' \
    --status 'FAIL' \
    --userId 'YPtV0Z1bBqNCvRlK' \
    > test.out 2>&1
eval_tap $? 53 'QueryFulfillmentHistories' test.out

#- 54 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetAppleIAPConfig' test.out

#- 55 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "p6J5vtWqE9oseeHH", "password": "oVZjwR292anL0Kjo"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateAppleIAPConfig' test.out

#- 56 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteAppleIAPConfig' test.out

#- 57 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetEpicGamesIAPConfig' test.out

#- 58 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "T81lNsGHFaz1NVmv"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateEpicGamesIAPConfig' test.out

#- 59 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteEpicGamesIAPConfig' test.out

#- 60 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGoogleIAPConfig' test.out

#- 61 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "OO8N0mnWnbOqtylP", "serviceAccountId": "buqJYwHcHU8rflgT"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGoogleIAPConfig' test.out

#- 62 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGoogleIAPConfig' test.out

#- 63 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 63 'UpdateGoogleP12File' test.out

#- 64 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetIAPItemConfig' test.out

#- 65 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "9HPmrmWi83sQZRFG", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"r5VKWrg9b3KXq5SL": "3B1TbmVwg6FMeORQ", "h6Y2bowr9Bjjdm1k": "y0CIWXqVAgnYjjib", "F5QlDB037pkV1Zzt": "aNfXJX58QReshPaF"}}, {"itemIdentity": "jdGTONIOryDyNg4y", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Z9VqbOkT5j8L6UFm": "0EmeKsx5yKNjNLMq", "OpiZm0iKP2wOjAKr": "e1noNFkwkgIdCtQ5", "Wh0ems6OIVl54ZKW": "b6StQIiBVBxwKXID"}}, {"itemIdentity": "huwE6vXH1QmQOwRF", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"i90p7KEOany5qKnz": "6bWuRf01Btc2KxHl", "YLufDxdN5yGfgLNG": "GmrMYGdeLdFVsFj3", "75VCfx5fbuugixyL": "hYaK7hl7NqzKTtZ6"}}]}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateIAPItemConfig' test.out

#- 66 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteIAPItemConfig' test.out

#- 67 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetPlayStationIAPConfig' test.out

#- 68 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"environment": "IYHEF7QyWwp0pp3z"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdatePlaystationIAPConfig' test.out

#- 69 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePlaystationIAPConfig' test.out

#- 70 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "spXRvupOALhQgOuG", "publisherAuthenticationKey": "V1EXtml5G0qoKik1"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateSteamIAPConfig' test.out

#- 72 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteSteamIAPConfig' test.out

#- 73 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetTwitchIAPConfig' test.out

#- 74 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Od3zb8IEM9l3UfKB", "clientSecret": "DxZ6Zb5EZ3F5VJi6", "organizationId": "yJwFRqmUaad7XPoE"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateTwitchIAPConfig' test.out

#- 75 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteTwitchIAPConfig' test.out

#- 76 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'GetXblIAPConfig' test.out

#- 77 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "49d5BZubifPUlO9z"}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateXblIAPConfig' test.out

#- 78 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'DeleteXblAPConfig' test.out

#- 79 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'nIP2BVsIVNE1iqwB' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'xJaMPQdeNKdlDfCg' \
    --itemId 'm5J5Qqq8xbyXItbw' \
    --itemType 'BUNDLE' \
    --endTime 'dkYWdji0VKrq3xHL' \
    --startTime 'mCPL0KCXbNNufncw' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'GdpCN3IBPqHqfUzZ' \
    --itemId 'ttOW6GTRtxBkcbna' \
    --itemType 'MEDIA' \
    --endTime 'Mk01EHScL88ARbft' \
    --startTime '0GfJI0kk8EQ3f3Zb' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XAAtOaMuElOqw8P6' \
    --body '{"categoryPath": "Nu6EhFiCdbKNIheH", "targetItemId": "AnXpZgHnUgl8dxDW", "targetNamespace": "wa8w18tK6UEAzKcD"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'iVxxxYzAvxpqR2rf' \
    --body '{"appId": "atWVXZ7xEjssBQR6", "appType": "SOFTWARE", "baseAppId": "zg1rxqwgbymdsDTu", "boothName": "Ki6BSRZ3ym5D4Y0F", "categoryPath": "F4wH4vq7WzlEEFo8", "clazz": "38DGL35zzPItyEDa", "displayOrder": 40, "entitlementType": "CONSUMABLE", "ext": {"riHmpA5fRJTv8sX4": {}, "V1xDd6piaKeFD3v7": {}, "4cKcn1LPHBTvbNui": {}}, "features": ["UOm3akSAAlJsvrG2", "bnN6mz9tUeNKRSmT", "Fka9EDBZmu0HG7lK"], "images": [{"as": "e2EZYblOEBKqLHQL", "caption": "FMeS8DldqjpQoiTB", "height": 14, "imageUrl": "SGkWaKzsEEmOr9M9", "smallImageUrl": "X8zNfTY4FYXOvBQO", "width": 40}, {"as": "YJH1R5a2ZUdWiCXk", "caption": "N76u36O2AilWCmw4", "height": 14, "imageUrl": "Euli2gAFAF7Nl7fU", "smallImageUrl": "X5EdlDgZKFoZIx5l", "width": 69}, {"as": "NgC0uFQgXtATUEYz", "caption": "XNfHUKfGw5zrYO8F", "height": 51, "imageUrl": "B9LQavV9ZEYikMZf", "smallImageUrl": "PfHmsI1VeCjpFfDH", "width": 54}], "itemIds": ["Sk75rBZ3JvKsDEKS", "iO1jeDGBB8Schk2p", "ew133yl2JpiwFR5s"], "itemQty": {"ZNRHOlLGoaMjoSRM": 55, "bqwVLGoDr6Eq6rcY": 92, "pmesAWjwYfLSKDrA": 9}, "itemType": "COINS", "listable": false, "localizations": {"D98m7JgVX4HYFaME": {"description": "fyOhSmfNcfMAIF8l", "localExt": {"EyQ2dRdnVsVFeApQ": {}, "uyyZijHVecGXoUAB": {}, "t8RUBUwQnt0BpI3Q": {}}, "longDescription": "OR9NDe752xnKDCj1", "title": "0HGz6VGzdYx3XuVD"}, "74P9R2daTqM0ELOe": {"description": "clcGL8Uo28lfaXiG", "localExt": {"c8cyoNDyjCGIlQej": {}, "uTowHcWPJ2SAM3lL": {}, "hEjGMm1lw0odCtaW": {}}, "longDescription": "VwzhYATD9RGfZko2", "title": "JvcnLg1Tq2XwlmG9"}, "hXj1GQkOc02p8weU": {"description": "radY7rFGIk49ckVa", "localExt": {"ltOGWkMJ8wfTHgdV": {}, "k5VSdZ4mtZ13wTeF": {}, "r2Vw1ufo2jHAfXEP": {}}, "longDescription": "Bl53xFNUCvA7i01N", "title": "zwOwCRdmmRHEPHiz"}}, "lootBoxConfig": {"rewardCount": 15, "rewards": [{"lootBoxItems": [{"count": 92, "itemId": "yJd8MaX3usQO3gZp", "itemSku": "EGGKRTi0Osvu8Bfw", "itemType": "McieLTve9g3sz9ml"}, {"count": 9, "itemId": "ktPSzTllrgvwrwUE", "itemSku": "1BV75iyVwsBCRZ9L", "itemType": "av6pY20BY9nS4WNw"}, {"count": 73, "itemId": "myddNZaoPQQhtNP5", "itemSku": "OZUoWhu4s16bLdDQ", "itemType": "iT8jEJ0GF0KCwGKS"}], "name": "aCj5c07NyZqhbmAI", "odds": 0.7819972732790152, "type": "PROBABILITY_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 96, "itemId": "HtBsgZZDaO1SkBbh", "itemSku": "16ieRCpIds1TL6AZ", "itemType": "Guu7gQDsKHsOS2u2"}, {"count": 21, "itemId": "I29OefKR8nbEreAH", "itemSku": "vHECdOjH2toQjG00", "itemType": "8cRe9Jdpr5DrUVJl"}, {"count": 12, "itemId": "xx6sY6tE4HhwCwFK", "itemSku": "FT1mcP3sUpCsseMN", "itemType": "6tXC5iIPTpR9X1wf"}], "name": "oTMKWWPmXS1acvCG", "odds": 0.40863354024930165, "type": "REWARD", "weight": 94}, {"lootBoxItems": [{"count": 25, "itemId": "2dJSEf5vWgyB0bom", "itemSku": "TjHVtae3BLC325N4", "itemType": "6QN9uWjL2nF2RkuM"}, {"count": 48, "itemId": "1DdLH3Q0voPijgHc", "itemSku": "AjLMitpIN99bFSG2", "itemType": "xoz9b4ltamLZJKfV"}, {"count": 62, "itemId": "lbfXX1d2tzl0SxiS", "itemSku": "802HbeEhhpi1vqe0", "itemType": "CkU1lide40Jln5sz"}], "name": "VPT4HpKy6J2C2Ayx", "odds": 0.06078202400378352, "type": "PROBABILITY_GROUP", "weight": 5}], "rollFunction": "DEFAULT"}, "maxCount": 76, "maxCountPerUser": 76, "name": "7qG8gtjaVxAHf1pV", "optionBoxConfig": {"boxItems": [{"count": 36, "itemId": "CQk3LXTAs3QIip5a", "itemSku": "4dlkMujvWyZAABG9", "itemType": "NWPYB3ZLV3GEYyb1"}, {"count": 40, "itemId": "zgDXvpQGccTFkEzo", "itemSku": "u6ThiziqGMkIIoYP", "itemType": "6PMZB3W9pWIRpZ3v"}, {"count": 29, "itemId": "6J2d5n3ayHYo6MAi", "itemSku": "Px8IO2kRVjs3k0XR", "itemType": "dPEASy86GF2tPbpK"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 23, "fixedTrialCycles": 94, "graceDays": 1}, "regionData": {"siLKyWEOPCIgFSH1": [{"currencyCode": "Six1vkLQFT6QOjJD", "currencyNamespace": "opK4jM26dkUfJVq2", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1986-03-21T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-04-22T00:00:00Z", "discountedPrice": 2, "expireAt": "1979-08-05T00:00:00Z", "price": 90, "purchaseAt": "1992-11-15T00:00:00Z", "trialPrice": 49}, {"currencyCode": "1Cvkf8E4nQOIYwbA", "currencyNamespace": "G1LHxnsb68DHfXOK", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1992-05-14T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1975-06-03T00:00:00Z", "discountedPrice": 94, "expireAt": "1987-02-19T00:00:00Z", "price": 98, "purchaseAt": "1991-03-07T00:00:00Z", "trialPrice": 74}, {"currencyCode": "Fkb7vSgebMHBzmR9", "currencyNamespace": "Usp8ZvG2btekKDgL", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1992-06-03T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1993-10-01T00:00:00Z", "discountedPrice": 3, "expireAt": "1976-10-24T00:00:00Z", "price": 16, "purchaseAt": "1997-08-29T00:00:00Z", "trialPrice": 31}], "YGyxh3dcPB2d7Rfm": [{"currencyCode": "LHAiMxYDEHa6Zgzu", "currencyNamespace": "uagN0U8aHOfyDwKG", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1972-04-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1990-09-13T00:00:00Z", "discountedPrice": 17, "expireAt": "1987-03-19T00:00:00Z", "price": 69, "purchaseAt": "1973-10-12T00:00:00Z", "trialPrice": 74}, {"currencyCode": "aFV7Y9c8FTSD7k1I", "currencyNamespace": "PzPkBrv5Gv0ioqfE", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1984-03-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1972-01-19T00:00:00Z", "discountedPrice": 100, "expireAt": "1974-03-22T00:00:00Z", "price": 18, "purchaseAt": "1994-09-18T00:00:00Z", "trialPrice": 38}, {"currencyCode": "ybfxgQdWDQXAt0x0", "currencyNamespace": "hNmNWMhaTAVcLllf", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1972-06-15T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1981-06-10T00:00:00Z", "discountedPrice": 60, "expireAt": "1992-09-02T00:00:00Z", "price": 40, "purchaseAt": "1972-09-10T00:00:00Z", "trialPrice": 66}], "ITTDwcQE6sdgeUB1": [{"currencyCode": "HhuTYLRBzE2WNE85", "currencyNamespace": "vYihEEMRY3CYr1bd", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1993-07-24T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1988-04-01T00:00:00Z", "discountedPrice": 36, "expireAt": "1999-10-15T00:00:00Z", "price": 85, "purchaseAt": "1982-02-27T00:00:00Z", "trialPrice": 49}, {"currencyCode": "gxI7aLgdxNGp0D6L", "currencyNamespace": "j4SpCl0Gf96iVwXI", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1990-12-02T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1978-11-22T00:00:00Z", "discountedPrice": 66, "expireAt": "1984-04-18T00:00:00Z", "price": 34, "purchaseAt": "1983-05-17T00:00:00Z", "trialPrice": 11}, {"currencyCode": "F6593pACd7VDZhL0", "currencyNamespace": "jgV9N0qw3EFJIiL5", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1998-10-01T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1992-03-04T00:00:00Z", "discountedPrice": 54, "expireAt": "1976-11-30T00:00:00Z", "price": 17, "purchaseAt": "1999-05-30T00:00:00Z", "trialPrice": 77}]}, "seasonType": "PASS", "sku": "AylcgRywfM52bYlK", "stackable": true, "status": "INACTIVE", "tags": ["TTqv1XD5JLwlwEYx", "uIqzkqVe8UWzHNqB", "LZipCN09q0ytVzlQ"], "targetCurrencyCode": "GwwN5pgawLSh9vG4", "targetNamespace": "z41M36sELUFrUAZO", "thumbnailUrl": "2rmlpqlytxpOGmex", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '2ZYH43OEyFljVQzf' \
    --appId 'r3Nk5kdueljazAoY' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'gj0ZxdO1sAeR1JmE' \
    --baseAppId '5QjZ94uTTpZmwUMM' \
    --categoryPath 'gIHSfHyPxwTOaSuW' \
    --features 'Q45FnMzufIrgn0vr' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '6' \
    --offset '43' \
    --region '6m6zIUsOKsseZcmm' \
    --sortBy '["name:desc", "updatedAt"]' \
    --storeId 'LHnrEVjsrg49EWd9' \
    --tags 'Yg7h6s5QVyvrefOh' \
    --targetNamespace 'i6Cunvca1G1pVvsh' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["NptPQNxRIR3SnlTP", "Faw37WfMJS9ugDgh", "cjqOzD0K6cTmtVfo"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'gt0t7futXcqctyGq' \
    --sku 'CQUbYAyde7RG9ILf' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'QlVoh6bjjzYfP2n3' \
    --populateBundle 'false' \
    --region 'HUHSCvYD01Y6ELT1' \
    --storeId '7TB4C4LRgCbjqpMy' \
    --sku 'IaQZduF690GTT5WA' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'zwF5HlBgvcYDu012' \
    --sku 'yxlC6lbQ7Cc6avpU' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["raxg3jxxXe86rnbq", "bH13YJGpcfzmHuEY", "fdG0VDlEdKW0YABB"]' \
    --storeId 'EfQONMqmoBVfIIvM' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Axx4vZ0JVdhcMB37' \
    --region 'tZKTZBtcftWcNMK5' \
    --storeId 'zwaMjUB66F8p1SsH' \
    --itemIds '6cX27jzAdFqFAhmd' \
    > test.out 2>&1
eval_tap $? 91 'BulkGetLocaleItems' test.out

#- 92 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'GetAvailablePredicateTypes' test.out

#- 93 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId '3CWfpeVqYE1fVIQ0' \
    --body '{"itemIds": ["ezu3RomftYRwPcyv", "C3jlD5GeP3Dz5sVg", "7WQ6kAFQhxnEawPr"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'BUNDLE' \
    --limit '52' \
    --offset '27' \
    --sortBy 'IX9OXhrfHBllG3f1' \
    --storeId 'qLV0xqSYgvnyhVqI' \
    --keyword '6hVlKUkchfLXajWV' \
    --language 'TsdnqtTRBzCM1LNa' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '61' \
    --offset '100' \
    --sortBy '["name:desc", "createdAt", "name:asc"]' \
    --storeId 'K3HDaS4zq52OvqBW' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '92aAuCumcBEx3xoF' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'LIplx1ReqbONk3y4' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'ZnmhK99BY2zR8lOu' \
    --namespace $AB_NAMESPACE \
    --storeId 'hNc7iSwjqZS5rZql' \
    --body '{"appId": "KgkS6E9WxmHXTfBl", "appType": "DEMO", "baseAppId": "N6gqYp15vMZTSchv", "boothName": "ZwJ01kBw8cunN5kJ", "categoryPath": "1o3JMd8modA82f0N", "clazz": "wopLLBGCRSwb3Y2F", "displayOrder": 87, "entitlementType": "DURABLE", "ext": {"mdsQHPcpqkLg1hOT": {}, "HLaV22CHElPQQ43H": {}, "uXCszaQtupNKNJ39": {}}, "features": ["oYsfcQJaK31tz6h5", "FMi61kJYUE7JbVkL", "2ciaax7un3Fo1XOU"], "images": [{"as": "ixomCVHFTPAwiMvh", "caption": "h4wPkbHzCjbxXWjO", "height": 72, "imageUrl": "dttUECr9moVndFqw", "smallImageUrl": "jloxMyM89EQntnmN", "width": 49}, {"as": "VDdNW6HPHiWGUpAJ", "caption": "UXiN3ElpacF1ZKtI", "height": 95, "imageUrl": "nm58ZkIat9ULiCiR", "smallImageUrl": "5xpOH8HtI1CZmMfk", "width": 47}, {"as": "kP0FMCTPI61JvgDw", "caption": "qdTtpgI2t9xqwq9s", "height": 87, "imageUrl": "lsnClusBCQ7WPxaf", "smallImageUrl": "xEnuEY7Qy5TGEQSN", "width": 53}], "itemIds": ["m96YqllQmPipL7rW", "08dtYBHbivWUXlM5", "1DvNrOLvDx1KkW2n"], "itemQty": {"PXSO8sJRAJsn7WKF": 63, "20njZPfGOiFLfX6e": 95, "wmpZi4XH9Jh99nYq": 83}, "itemType": "APP", "listable": true, "localizations": {"IDp8B5HNzxvtJAaE": {"description": "ki6e3EYK72IHrANz", "localExt": {"WPEDfl5wTw7nmJlf": {}, "qDdx1HGghNrEjkO8": {}, "yPDShUDEi9MvJgGl": {}}, "longDescription": "t672yP7v2JE4xH0b", "title": "d09ZFE60bbdKO71o"}, "VCrkkce8Ukv2dsDm": {"description": "XG5dEFCP7WxYtuRF", "localExt": {"ILYI5fvkPzfFp9AX": {}, "cgbuFl6is953RyP8": {}, "NbobOFg1PMavkAjP": {}}, "longDescription": "mBJVqX0c1YwF1ayn", "title": "bqCBayUk9ep8wfbg"}, "VIt2MM89sYpZzitq": {"description": "hyjch5WeehOHyxCr", "localExt": {"9NxKpMqx9lBCg02f": {}, "fiyIbE0ZKvXWbRI0": {}, "hVE19AjIsJlexolg": {}}, "longDescription": "uCMI44NTcl75DpdE", "title": "p3sPFkDgRkidra65"}}, "lootBoxConfig": {"rewardCount": 8, "rewards": [{"lootBoxItems": [{"count": 87, "itemId": "1wwTQqnarph5GPr1", "itemSku": "zbN3YSQvwlm90QsI", "itemType": "pbufNiA8TrbkJVo2"}, {"count": 73, "itemId": "N7znsWNJrn4BEbot", "itemSku": "Zrn1wYExxCwVmJcR", "itemType": "4p7rM9cyID1IhpPN"}, {"count": 9, "itemId": "c9I8tIEznvYYIbW4", "itemSku": "Iuh6dR3IjxcYIifg", "itemType": "6P0WxEvdKhyFkahm"}], "name": "RWjNWdYfGWw85j8e", "odds": 0.5939341927341978, "type": "REWARD", "weight": 21}, {"lootBoxItems": [{"count": 24, "itemId": "lhk7EhTXc2kE4Ba8", "itemSku": "Iwwzz5Pqc0QBVqjB", "itemType": "H18HtkaIZOwqd5pr"}, {"count": 53, "itemId": "ZAOvDiN3opAJF2X5", "itemSku": "NisTMEsClVNYbG0Z", "itemType": "QEz91imUrlMajV2p"}, {"count": 84, "itemId": "nZzVnI5oCmk1HeVe", "itemSku": "5Xz9DkRcIzXIr8vO", "itemType": "nJwfsDmhFwrTjSsQ"}], "name": "aqCkPeWeRZyJ28OG", "odds": 0.5095381567025767, "type": "PROBABILITY_GROUP", "weight": 9}, {"lootBoxItems": [{"count": 39, "itemId": "NwSyS93xd9o9JaBL", "itemSku": "giy7zk2Lg1nkrBYd", "itemType": "x78FmbYzuIeJBnAx"}, {"count": 78, "itemId": "aiuDmvDwnibylocj", "itemSku": "YYKIb2jsaGbgTBMT", "itemType": "mlcCTG9BUUrS3bUF"}, {"count": 73, "itemId": "inW1LprneIhNyfQ2", "itemSku": "hmANRRvrcTGiRmXq", "itemType": "fir5vsliuUHbK1q9"}], "name": "wclzZ1BzljgJNK4R", "odds": 0.32341321178982785, "type": "REWARD", "weight": 65}], "rollFunction": "CUSTOM"}, "maxCount": 3, "maxCountPerUser": 100, "name": "xajMCWhrnS9Rm7VZ", "optionBoxConfig": {"boxItems": [{"count": 28, "itemId": "IIeKX63DcrDRHnTb", "itemSku": "UEwllHcVe0Bz0dlc", "itemType": "Kfk8MuX0UZt81OGQ"}, {"count": 24, "itemId": "BVEspWZcJa9B5ua6", "itemSku": "9nfQPpEiSR8KadWR", "itemType": "NTeZhaK87sq993NW"}, {"count": 37, "itemId": "VztuSV57iB9dZNOG", "itemSku": "30GacLpoMFys5Oej", "itemType": "sXDKY1IjDZKOpWO8"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 87, "fixedTrialCycles": 34, "graceDays": 52}, "regionData": {"731E1IT9Db3LL14J": [{"currencyCode": "MA7LinR8DgBkvwTd", "currencyNamespace": "D8FJye1S0BmVQz9C", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1997-01-01T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1987-02-13T00:00:00Z", "discountedPrice": 60, "expireAt": "1987-12-10T00:00:00Z", "price": 54, "purchaseAt": "1975-05-29T00:00:00Z", "trialPrice": 46}, {"currencyCode": "zJTDNfHt3sU3ymXk", "currencyNamespace": "CSiziLHV5syff3ko", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1978-03-27T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1975-04-07T00:00:00Z", "discountedPrice": 46, "expireAt": "1979-09-30T00:00:00Z", "price": 50, "purchaseAt": "1982-10-14T00:00:00Z", "trialPrice": 69}, {"currencyCode": "5Lgks0rjJASApLpK", "currencyNamespace": "uKvNhA3xP5kedpPK", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1993-10-04T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1987-11-28T00:00:00Z", "discountedPrice": 68, "expireAt": "1977-12-07T00:00:00Z", "price": 15, "purchaseAt": "1974-07-08T00:00:00Z", "trialPrice": 75}], "dRMtEycWWsHc4mVB": [{"currencyCode": "6vkzd0lrFMUkzGBA", "currencyNamespace": "o8D9PbfoY7psTxYZ", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1971-07-12T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1971-02-04T00:00:00Z", "discountedPrice": 10, "expireAt": "1994-10-07T00:00:00Z", "price": 58, "purchaseAt": "1976-11-05T00:00:00Z", "trialPrice": 14}, {"currencyCode": "bY7j6q2dnM6Ap8su", "currencyNamespace": "aodFdWd2VVUOMTeZ", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1974-02-11T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1989-07-29T00:00:00Z", "discountedPrice": 27, "expireAt": "1986-05-12T00:00:00Z", "price": 85, "purchaseAt": "1993-09-29T00:00:00Z", "trialPrice": 98}, {"currencyCode": "FYYEQw982OU22sfV", "currencyNamespace": "1C8zCYbjCNvrKVFk", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1974-05-27T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1973-12-29T00:00:00Z", "discountedPrice": 63, "expireAt": "1982-05-12T00:00:00Z", "price": 96, "purchaseAt": "1982-05-14T00:00:00Z", "trialPrice": 4}], "T8kXjPCGDcfXo3Io": [{"currencyCode": "ZTKj0OKPcxwqcFyf", "currencyNamespace": "oTnXDxgY9L2CdgfP", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1981-09-11T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1991-05-24T00:00:00Z", "discountedPrice": 21, "expireAt": "1984-01-16T00:00:00Z", "price": 98, "purchaseAt": "1984-03-18T00:00:00Z", "trialPrice": 83}, {"currencyCode": "tH4n1J3911B6YxaE", "currencyNamespace": "XTQv6HRs6Gh4ZQ26", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1972-09-28T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1975-12-04T00:00:00Z", "discountedPrice": 43, "expireAt": "1982-08-01T00:00:00Z", "price": 29, "purchaseAt": "1993-04-08T00:00:00Z", "trialPrice": 99}, {"currencyCode": "HABHldgpXOXE2wVR", "currencyNamespace": "rLx8dA2EWOGCRWzy", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1998-10-21T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1982-04-21T00:00:00Z", "discountedPrice": 37, "expireAt": "1976-08-22T00:00:00Z", "price": 27, "purchaseAt": "1978-06-19T00:00:00Z", "trialPrice": 23}]}, "seasonType": "PASS", "sku": "Y5BSrm5sNypem81u", "stackable": true, "status": "INACTIVE", "tags": ["wVv3FW8XD7D1qVno", "cH0eLNsnINiCYJUQ", "j5gT04RR8yljy4wN"], "targetCurrencyCode": "99b7MOfzNjFWAQMT", "targetNamespace": "0uyFqg1PUSEGilxT", "thumbnailUrl": "WXzmgwGWfF8c7MyU", "useCount": 8}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'ydDztnJOsv3msGhH' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId '8hn1L5vnbE4BaA5K' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'YEIMb8HzTeJQXqKQ' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 33, "orderNo": "jJIQN8aV7FTQ76Pd"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Hna2BKmWhYgpCoof' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'n9iu3fSC2xHifZhO' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'jjnDLuKFF1AC8Y4a' \
    --namespace $AB_NAMESPACE \
    --storeId '2Q7RA7RrU6psQlaB' \
    --body '{"carousel": [{"alt": "GmAeKSPxIDiLKHRQ", "previewUrl": "kN33I6ijmvibXP27", "thumbnailUrl": "GW8yBQdB4JMBlTQv", "type": "video", "url": "W4tb1cOL05q2IEFw", "videoSource": "vimeo"}, {"alt": "0ZNKRkZvYAd5msqC", "previewUrl": "up7TfDuVo2feCmtu", "thumbnailUrl": "luGH80KB77GUCXVf", "type": "image", "url": "Lzpy0iYprXjRNra5", "videoSource": "generic"}, {"alt": "ZnvfWXejBXFRwKve", "previewUrl": "O9SNqqGF6CE2s3Np", "thumbnailUrl": "yxZzPuxBPkXx0zvQ", "type": "video", "url": "z0nOWHTeR7NF2w3P", "videoSource": "generic"}], "developer": "QvNcvWalBPJLXEwh", "forumUrl": "xm6l93PTteTIXiBP", "genres": ["Strategy", "Racing", "FreeToPlay"], "localizations": {"cL8lB8tqcXghySRL": {"announcement": "SXNzUXjraZM9SUFA", "slogan": "As6qPatCHPNVJ5AX"}, "cr2wUNUK1AfvuNlj": {"announcement": "3WXSyOfyInZMeWOm", "slogan": "MwG5yaIZi7N6L64N"}, "UqpfoK7STA5wc86z": {"announcement": "wRjjCkW3r5h0ot46", "slogan": "YHAgXeDIkznmHv9Q"}}, "platformRequirements": {"Xj4g63Y9FXw9Ra82": [{"additionals": "KYDK286R2FUA1kGX", "directXVersion": "VQOyoOL92UeTL0VP", "diskSpace": "1c9BjHiNPXoGUyLa", "graphics": "nFpI4CJXADNdn7oN", "label": "QdQdk0KwV7COsjmy", "osVersion": "KwWPg2rJ63y9zlCV", "processor": "RDKcQLOOnfFoK60P", "ram": "hbwmjlLtaWHjG4Bo", "soundCard": "j2GULrhZoHHasxWv"}, {"additionals": "5HWKRDaQWN0IXRLX", "directXVersion": "MG5uEO0uT0fjt43y", "diskSpace": "LgHhkLyJjMroqZxJ", "graphics": "oHa5s73pR8pAQfZd", "label": "aVTorVSxGOEDhqMU", "osVersion": "qKrxeg6sctbZlQbT", "processor": "qrgy2GPl1sUTBrtP", "ram": "whld81qvAId8ViHo", "soundCard": "nwhFEjS7dlNFn9Mj"}, {"additionals": "3FPEbahmqvsvfMiT", "directXVersion": "wfZzrVMozZwjdhuu", "diskSpace": "cgWzpQczcF4cXJvh", "graphics": "i1wjpDOqK7zOkYfV", "label": "S36hlzcW326tNYDL", "osVersion": "cnAm78DMS5SlMv9c", "processor": "gIGEOgNlh1ogZjKp", "ram": "feH0EmcT63bNpDDP", "soundCard": "PMAIEe6bWxOhdTDH"}], "JYlPI0E1rFML64zH": [{"additionals": "k3YwUNjB39DDnoj2", "directXVersion": "YWUsIKDn2OPW5sHC", "diskSpace": "tEQe61G2Y94Ckrzz", "graphics": "iFlVJ6sQQmBMdALg", "label": "cx2MCNUH6xpB2JXS", "osVersion": "afP5nBFBpHSqBqd3", "processor": "0pkY9jbsKR3Feux5", "ram": "GcWwqcDEYaitcD05", "soundCard": "rOGkuWFjK6SNYWQL"}, {"additionals": "3RA3q9IHNqcUKl2b", "directXVersion": "3bcMt7GMnKy8Rcwc", "diskSpace": "epEHsU3bOofKkIa0", "graphics": "2AQ8MgzKlIZtVf6z", "label": "Hv9rtEHK0q8ZHL2c", "osVersion": "taNrIzfM9Dtm0PQE", "processor": "JWDkbdBegOGdnWIV", "ram": "x0gQoKQwnwTAuerl", "soundCard": "kguhZ09K3qtfxU6f"}, {"additionals": "LPhX1NyFGyQqlXMl", "directXVersion": "lQnELtLUdlWZlI3v", "diskSpace": "LkmR9Grm9ApEW5rK", "graphics": "XeqNIRJHuk3LAxcN", "label": "V0AkgIq6yWMA3hX9", "osVersion": "fSJV9JDbTsTyOwmG", "processor": "Q4S0bDDMs1ZMMiW3", "ram": "6nhG8Q2UtSacZgh0", "soundCard": "R8tXk0GKepJXWokk"}], "yfrulYnaQcH7JGGC": [{"additionals": "EJKwXP33uCsbpcIJ", "directXVersion": "XuGWCieHpamsD2AO", "diskSpace": "bHtUqyLouX209atq", "graphics": "EYjfvS23Fpmejdnn", "label": "4ZpjK8abG2GX4JyE", "osVersion": "SKXfK0JayYh2qn2p", "processor": "2mustcOpfwFgDwdM", "ram": "YL788asjABq2UxMa", "soundCard": "Le0DejCm99xBGh39"}, {"additionals": "k6cp197SQeSbswtA", "directXVersion": "dr9myck1tKaaJC7T", "diskSpace": "z3U0V2ojorYw7tUk", "graphics": "1wYBdTfBIIJceYav", "label": "NoNFZLlkN9kVlZbi", "osVersion": "1yrSL7FJpvKAXRRX", "processor": "CHAzVclLjpHOLIVS", "ram": "QM9gUUSK2sMNTA1w", "soundCard": "VglDkAixOvt0qA3U"}, {"additionals": "MRxzl1sVSWIS3L3x", "directXVersion": "qLsyKvyjPRo6bopW", "diskSpace": "E7LDsHMVJy8Wtr6w", "graphics": "7uUoOkABDHxeondU", "label": "JA6GzpgUVef80mTj", "osVersion": "9QpR45G9lY2mhSqw", "processor": "53RVEd9TcqXX0IOl", "ram": "o1iCATnlIVe5NGrO", "soundCard": "ls6IdgbcTsuQYhNq"}]}, "platforms": ["IOS", "Windows", "Linux"], "players": ["CrossPlatformMulti", "MMO", "Single"], "primaryGenre": "Action", "publisher": "5vUNub3cuqPoYJOL", "releaseDate": "1995-03-01T00:00:00Z", "websiteUrl": "yKAELqYz6sBI3y0X"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'hxXccMyX5zcQdd3d' \
    --namespace $AB_NAMESPACE \
    --storeId 'MUU24wbsrC75xOLB' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'TkrvCAWwTNWti4ku' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'eiCIJ4ZaavclY9Jt' \
    --namespace $AB_NAMESPACE \
    --storeId '3qduF0RTKFyBHYLi' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '1GyokKGsGD4bjC0Y' \
    --itemId 'R5BSi7uFSuEtGNp1' \
    --namespace $AB_NAMESPACE \
    --storeId 'gVU0CRRitLuTBTnE' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'kIL30kZgT7GqbVzW' \
    --itemId '3Yha8uxmyrpscTZh' \
    --namespace $AB_NAMESPACE \
    --storeId 'zsOhFcoZ6bSW4odf' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Bi27uUqP9IJgjOPl' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '1uAmaOCk3ZDEnguW' \
    --populateBundle 'true' \
    --region 'oHSVbHMHwfnL6O4N' \
    --storeId 'YZ9ujwgz9vtrL6si' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'dcrvQ7tnXLmKA1Ur' \
    --namespace $AB_NAMESPACE \
    --storeId '5uF03haw3T7dT9tx' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "Sg56nMxGaPRwuM20", "predicateType": "SeasonPassPredicate", "value": "Y2zOOml5nYl3QDAR", "values": ["2WAjMbbBByT9hEVT", "xd9YnAKfRLwdu9Yq", "Lyu14xUukQALxYXe"]}, {"anyOf": 79, "comparison": "includes", "name": "Sv7EOTb5345F8BJh", "predicateType": "EntitlementPredicate", "value": "9xhTg0T6oBX6EOdP", "values": ["3lBpwqjUBt03MpDv", "kYPrzvM5AlqB2aIv", "J2psQwQnHO0gUFKs"]}, {"anyOf": 70, "comparison": "isNot", "name": "wH73xb1GtFj4yqOg", "predicateType": "SeasonPassPredicate", "value": "osFyfioHdhApz3U4", "values": ["v2D17sg1Cp47ViNI", "XkxS3BECOKhXryet", "FtuKLg9wSGEnsiKb"]}]}, {"operator": "and", "predicates": [{"anyOf": 30, "comparison": "isLessThan", "name": "KG7GU0flR1P8aow7", "predicateType": "SeasonPassPredicate", "value": "pvUyahkborwx3Xdb", "values": ["2cC99eBxdDdtuUid", "C0VO9tIN0wkeeQV1", "tqtbYtBaAfrxV1ua"]}, {"anyOf": 21, "comparison": "isGreaterThan", "name": "d68why1wdI8znb7a", "predicateType": "EntitlementPredicate", "value": "OWINyptQqnPn30j3", "values": ["YfDj4UEvgTHoQHHp", "T8ZQmFguwenIqZjO", "uIHZCantX8peqaQq"]}, {"anyOf": 74, "comparison": "isLessThanOrEqual", "name": "dkAmT0LiOlNGiXQk", "predicateType": "EntitlementPredicate", "value": "d1CuK5lSaVSAjHsC", "values": ["GsjjpKPCiXwCaSlB", "aeGewTS5vy2wQ7fl", "6jnUdAhu8vjB5K4x"]}]}, {"operator": "or", "predicates": [{"anyOf": 99, "comparison": "isLessThanOrEqual", "name": "jwTGtOIlosCiUSmm", "predicateType": "SeasonTierPredicate", "value": "n3SRHQqZWsTso2Ek", "values": ["9HE8w1vYM6D9M6Zp", "qFfFH4j167pq6WIw", "0WRP1gBNTKF5dlbs"]}, {"anyOf": 11, "comparison": "isNot", "name": "MeFhUD6s3ThpsBQ9", "predicateType": "EntitlementPredicate", "value": "ZrXrucpp0gMO00CK", "values": ["blzHG6fd5nXGPPVu", "bY9DpqWcVzP3ObDN", "p2YecIH3Jx5ocxCt"]}, {"anyOf": 87, "comparison": "excludes", "name": "buGyjfF28bo0tVEE", "predicateType": "EntitlementPredicate", "value": "M5zVf5GVV7EveaJh", "values": ["4yDTUjYRD9etslpz", "k3PmP40vSU4K347o", "oj50Pj6emOMlyN3X"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'tHQBnrUviGyYsIBz' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "cRHDtDp2DOZz2KPM"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --name 'Gxy3kBw7u15SlUnS' \
    --offset '40' \
    --tag 'C7W4EuP7Ol3ljxQo' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "V7FUfjxYmMeVWFg5", "name": "KPV5GHwXILTrDxS2", "status": "ACTIVE", "tags": ["9nB2AkJMyBrGUTxV", "qNxW3yrMp9zexIW4", "p8tPWr2D1aZQbBP2"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'SecgW3sFjUYRU7Zp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'bWiIllwDrZeOWWxm' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "04c6ff4LQ9O8D5kn", "name": "vfxeXPjgY9sDKuJR", "status": "ACTIVE", "tags": ["WK8ILIyiMnW6s7Jz", "o0Dael0FG9ZR0iBz", "Y1ZVNRJOZN97b77t"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'eWYeO98qmvG1mIzm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'x0ahBRkxZMEiWMKw' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '98' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Mpt9pkNKh6pJlJXE' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '9xOGLegDjaXvjHkC' \
    --limit '95' \
    --offset '100' \
    --orderNos '["idSC7rAOJ1RpNeHO", "eVoVgblTQqnSGhSj", "l8rxkJXKkUFksM3N"]' \
    --sortBy 'UTl7Q6KKHRnR4s2J' \
    --startTime 'l5zuD5rNKoQriEAr' \
    --status 'CHARGED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 118 'QueryOrders' test.out

#- 119 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetOrderStatistics' test.out

#- 120 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'KgtDEtFeg5ZCpktV' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'x5CKJTLumcln7dW5' \
    --body '{"description": "J7Qpiu2KoCZOBZfz"}' \
    > test.out 2>&1
eval_tap $? 121 'RefundOrder' test.out

#- 122 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetPaymentCallbackConfig' test.out

#- 123 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "x5RKSYiPJXWdI46c", "privateKey": "3GqMyrPtou7RzFu7"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'W2B5Z9kzzxHlNHqz' \
    --externalId 'T3tUU7YEJMOoergr' \
    --limit '69' \
    --notificationSource 'PAYPAL' \
    --notificationType 'A2lDGfuDosPHrug4' \
    --offset '61' \
    --paymentOrderNo 'I5jUUetgDXUEilOV' \
    --startDate 'U9eEZBrTg3eAwiIt' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'pY9WiZfX1QlZLz0c' \
    --limit '89' \
    --offset '18' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "JFV61xrPQdaTH2wk", "currencyNamespace": "E4Xdsg6O006xsNJJ", "customParameters": {"Q9O5if5CzBlV0X5C": {}, "NmtVwHq224QljlFX": {}, "N9w8xj0MIg2bt9Hk": {}}, "description": "MQlorSAbBYmLIWMN", "extOrderNo": "vU08ecVhALMSulBr", "extUserId": "oAeUuRbwEn2RyBoh", "itemType": "CODE", "language": "GT-Tayw", "metadata": {"y2fbDCRRTLgwcjlS": "7efgjkamN2qOP1bS", "42gE2isVqmUPUMZA": "6mFndtAA7HJSKCwE", "wdHF8ir1rTXULdsk": "NvPfsEy6ZKv7XxKA"}, "notifyUrl": "2aQN8bAiLhDQvyIv", "omitNotification": false, "platform": "4NbA5RC2S9kXHrCr", "price": 94, "recurringPaymentOrderNo": "w0ZZsVKaG2F9ozVj", "region": "i8Cak5RRjFhEubuc", "returnUrl": "wzmuJjrBWWxb6ObY", "sandbox": true, "sku": "4c7J55KKLKiNfXnA", "subscriptionId": "4CylGpiEmNCwVJqR", "targetNamespace": "uMVOWOisXfeQYFqL", "targetUserId": "6DpnqvjLoIUF5RMG", "title": "Ma4z79UB8Qo2OLGC"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'L2bx7h6vo2iFIbwH' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ofbKklVqfQfcaV7G' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HkUnuSNYX6cnKjcf' \
    --body '{"extTxId": "u5RL5IhiiHgKncKV", "paymentMethod": "g7sDp5bdmYpxRsSu", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '11YFRRTt878nLDf6' \
    --body '{"description": "cFD0LFaV8vJ7jDgz"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'avl6o6CSksZYHiyP' \
    --body '{"amount": 64, "currencyCode": "Hjym99q2KIWwLpsV", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 85, "vat": 66}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OuP6fbOj5TLtX47d' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    --body '{"allowedBalanceOrigins": ["IOS", "Nintendo", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 GetPaymentCallbackConfig1
samples/cli/sample-apps Platform getPaymentCallbackConfig1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentCallbackConfig1' test.out

#- 137 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateRevocationConfig' test.out

#- 138 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'DeleteRevocationConfig' test.out

#- 139 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime '7NwmTIgZYxtdfXzC' \
    --limit '15' \
    --offset '67' \
    --source 'OTHER' \
    --startTime 'fdtLXC7OuSBSntkl' \
    --status 'SUCCESS' \
    --transactionId '0xBz8ZiaZrT9yBbn' \
    --userId 'Xk8uFGV9XUV1ulTD' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "OAiD4rNzO0e57vF7", "eventTopic": "VrVXZHqgzttQ1de7", "maxAwarded": 78, "maxAwardedPerUser": 69, "namespaceExpression": "MJYKsYJlgsDYlFi6", "rewardCode": "Sks1TYeHRW1GSIJt", "rewardConditions": [{"condition": "UQcXjX7zWq6iL2cW", "conditionName": "CtSCb5SN5PfHMOlV", "eventName": "Ob4SJOEPH1lb0eTh", "rewardItems": [{"duration": 68, "itemId": "wrqaUJVmDGiU1tWg", "quantity": 17}, {"duration": 10, "itemId": "iuUPYk1klxOehYOp", "quantity": 50}, {"duration": 1, "itemId": "BJap3WIj1wZhGnNo", "quantity": 97}]}, {"condition": "SdeulMNzgBpkFWNz", "conditionName": "1qduxMts5HRzAAYe", "eventName": "PRpy9scgzLEVbjb5", "rewardItems": [{"duration": 66, "itemId": "lp7Y9yRNquiBE1V5", "quantity": 14}, {"duration": 10, "itemId": "MJq0RGUIPmBMIQWI", "quantity": 94}, {"duration": 87, "itemId": "ZTtX30mQoC3eDETo", "quantity": 68}]}, {"condition": "XZzGoGXT1JyCyPhw", "conditionName": "KGYok1b2ykJXeq6K", "eventName": "80XDMxsQJL0otgN7", "rewardItems": [{"duration": 54, "itemId": "Dq6BMpat9K3WQLLo", "quantity": 42}, {"duration": 39, "itemId": "q4VRg4muYNQbtE8U", "quantity": 27}, {"duration": 54, "itemId": "687yFPQjQcM9Oe7j", "quantity": 69}]}], "userIdExpression": "dA2z1SjxH4O0HI4W"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'S3NkyoUgjqeoYcU5' \
    --limit '44' \
    --offset '21' \
    --sortBy '["namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 141 'QueryRewards' test.out

#- 142 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'ExportRewards' test.out

#- 143 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 143 'ImportRewards' test.out

#- 144 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'xMPQkJr3bsmcPeZ5' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'F9uzKtAPcb35mCAI' \
    --body '{"description": "KrZsbUtHwYGBo0mu", "eventTopic": "SrkAmv6AmdZnHpI0", "maxAwarded": 47, "maxAwardedPerUser": 43, "namespaceExpression": "lV7eunzswkIwvi4P", "rewardCode": "iUFfxWmKes3OJXkM", "rewardConditions": [{"condition": "f5PIfBPipUPEWQkX", "conditionName": "GyReN5mlKTjI7udJ", "eventName": "5aJ2RttVoZl1QHRy", "rewardItems": [{"duration": 100, "itemId": "5NVj0v2L6evBc6hW", "quantity": 37}, {"duration": 23, "itemId": "eRk0Wh7F8iCL4LZZ", "quantity": 49}, {"duration": 1, "itemId": "hyw9j0MpJek0wDM8", "quantity": 31}]}, {"condition": "mnH6FhEvXaATxkal", "conditionName": "nFV0WmCWBZahllNd", "eventName": "aGbe92iW1FkEGfQZ", "rewardItems": [{"duration": 91, "itemId": "fchrhfcN3tbMlwD6", "quantity": 43}, {"duration": 83, "itemId": "8WB4lf78bV3uN0jr", "quantity": 81}, {"duration": 97, "itemId": "ouhNDoRZnutwNiJn", "quantity": 63}]}, {"condition": "iXcZZTuH8ETgXmHs", "conditionName": "YeycB3iWUXLMe2jr", "eventName": "zxWgzZOe5dmSKHHn", "rewardItems": [{"duration": 45, "itemId": "F7T7duLAostqNCeN", "quantity": 86}, {"duration": 33, "itemId": "NBea3PjxkGzhxZrX", "quantity": 93}, {"duration": 49, "itemId": "NMK9XaZWJomHfz82", "quantity": 4}]}], "userIdExpression": "QThi0wcB2RqvQRCp"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'dHhMCvIvqdmxIY4O' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'XJqede2jVNxIf6sN' \
    --body '{"payload": {"S4uqVnzj6RhWNebw": {}, "xubaj0b9fQVoqxIP": {}, "t2Rm3ICwRsK9H4QV": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'O15RemOvzrhXNZC7' \
    --body '{"conditionName": "vDvKdPKTMEq4MAuy", "userId": "oJuQlsgP6gBy3cAh"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '1ruygrWB2xuXaUNE' \
    --limit '61' \
    --offset '81' \
    --start '4KsoVByrLjN0Xw4R' \
    --storeId 'RMJRcgOTyzIhW9Aw' \
    --viewId 'MGdzzvAqG7S1Bkq0' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'R69mKIQ0x54knKQv' \
    --body '{"active": true, "displayOrder": 34, "endDate": "1991-01-04T00:00:00Z", "ext": {"nBiFOOiuEgkehEqo": {}, "Icds0P84rUoGYDTO": {}, "GXulvL5ds5QhsC3t": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 47, "itemCount": 2, "rule": "SEQUENCE"}, "items": [{"id": "4SUmiJM9pdfmydST", "sku": "6bI4ZBRI2P0ybNqR"}, {"id": "pV4WrZlRNzY85PbO", "sku": "FR8popY5BCrFP09o"}, {"id": "kH10eVRknfuaotuC", "sku": "AmRDsEKImOGzb9TX"}], "localizations": {"AXhbIE2GAAiLuo9c": {"description": "zhAkiZohUa3TARIl", "localExt": {"1JGpdYoYROU8FVkT": {}, "XRCPzmDQW7jmk6PZ": {}, "0F6VzM17OstMSSeK": {}}, "longDescription": "I52MKbHCn0EJVGdm", "title": "vfqOdj1Bp1nT7h2w"}, "1FYIRJgoBOLhS9Go": {"description": "RmSDSv3LdOnGW6Sb", "localExt": {"KxBui9E3oP77qQl6": {}, "AX2QorrJA9E2OfZV": {}, "j8rM8ZqUGciuDeY4": {}}, "longDescription": "eyaZhob71Duq0VF0", "title": "wfiRnFB4N7HBKi8d"}, "VxG377IffbNnUSxz": {"description": "1d4f8BzsuordR31G", "localExt": {"bFN1eeUD1GEOVyqB": {}, "XwOoS1LYrJrlqsMc": {}, "6SRezh30ERi7c78i": {}}, "longDescription": "4F4qfb35yslFDLw8", "title": "AUAkcaIVxsAu3Fwj"}}, "name": "diGZb5F4k71cUbRB", "rotationType": "CUSTOM", "startDate": "1983-02-28T00:00:00Z", "viewId": "Tz8d116gpnY5pdWZ"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'KsavPRzj7W1sryn2' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'AuRMl44QTFDhx7Xr' \
    --storeId 'ahMTXB8TJBrEVzuW' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'NxZ2s2lY54SPYaXL' \
    --storeId 'D2XqZiH8e7djhrvY' \
    --body '{"active": false, "displayOrder": 57, "endDate": "1977-04-13T00:00:00Z", "ext": {"oJyceHJG0RhLL1Eo": {}, "dwiJzBIrYriOvjkU": {}, "6JI4a6iR4drS2Piv": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 15, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "A5jjxqodbhRzv6P6", "sku": "zcVMPYqouDPW6VRM"}, {"id": "RMufK2TaYVxmrPB0", "sku": "nnu2Bhw3T3CA9BtA"}, {"id": "feDj2xLPHILpmggw", "sku": "M41fjTZITiSZ3QXL"}], "localizations": {"EEMTCRJno86c84ok": {"description": "zN06EHmwNEP42sCH", "localExt": {"JJknxy94v9Xk6f3Y": {}, "zeYijzo1BuMmEaqN": {}, "E2xO4fCJKprsvNNh": {}}, "longDescription": "nq1LE9GvLNCNwRAk", "title": "XTZOcrD2eSBphh3s"}, "XG2uI2dhIwPzukKb": {"description": "5leyzKPZozTMfnqi", "localExt": {"3dAbV5JR4y3jKIXB": {}, "X19oxsVfDPkJVzPs": {}, "DoY7VmgmG3WAkHL0": {}}, "longDescription": "tsDlvoRKXDurcDwH", "title": "MfSxIJSXmYTqDMMo"}, "GbJ340RzHjLcuV6B": {"description": "F9exPay1yz3fUzZD", "localExt": {"yD9lc0D8CHfdDAX0": {}, "z20wCDcS7wG0i3oN": {}, "nbCt1vzFYyKEgZ78": {}}, "longDescription": "DA6KfYhJUOMn5fP8", "title": "lBebIJXUIgH5UUTo"}}, "name": "eBCYasZXm7k49wFK", "rotationType": "FIXED_PERIOD", "startDate": "1980-06-16T00:00:00Z", "viewId": "WAXWrFMHgXzxyo4w"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CPvdAGGpRdsmV0yJ' \
    --storeId 'c5qUIZMIUJXYLrBn' \
    > test.out 2>&1
eval_tap $? 154 'DeleteSection' test.out

#- 155 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'ListStores' test.out

#- 156 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "aqtGseN0Kv4vmn6d", "defaultRegion": "STg1FoDLPCxZrUKt", "description": "NeO3ChtDnFHlGh8k", "supportedLanguages": ["AHiVSbNSQ3eSuizC", "9y2bRWsvD5flXvYx", "Uh1kvsEVjZz2UIaE"], "supportedRegions": ["thHNhHINvJHOm3ax", "2Kl82KpHhTyRrZNt", "nItDuI5ADr1f2NFL"], "title": "E17nz4tNa8ofPd0G"}' \
    > test.out 2>&1
eval_tap $? 156 'CreateStore' test.out

#- 157 ImportStore
eval_tap 0 157 'ImportStore # SKIP deprecated' test.out

#- 158 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 158 'GetPublishedStore' test.out

#- 159 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeletePublishedStore' test.out

#- 160 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 160 'GetPublishedStoreBackup' test.out

#- 161 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'RollbackPublishedStore' test.out

#- 162 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'diKf0UywMbELIoeD' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '6TPmpUhtOlYpce3v' \
    --body '{"defaultLanguage": "uPANwKZtX0Yx5i5i", "defaultRegion": "UppdjNzIUg1MiaHD", "description": "UCSIheIWaaAvmHGg", "supportedLanguages": ["ZBE7E3mAFdCzezSG", "NZCaPwgICz6qcoDI", "e02QKdfFMuqEA6ik"], "supportedRegions": ["JY54ZBYOGyn4ZhHQ", "VZtnFMVqtqkzijCP", "1sls7ZuWyJ3ZpTLe"], "title": "PjuHwBhXWem9ck3p"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'OKcUbSZAhZTVE2Up' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'e0N9fs681Y0aqJFr' \
    --action 'CREATE' \
    --itemSku 'u0cvLdrERwkiVTBL' \
    --itemType 'SEASON' \
    --limit '92' \
    --offset '53' \
    --selected 'false' \
    --sortBy '["updatedAt:asc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd '6qCkznZDJagprFxZ' \
    --updatedAtStart 'hQJw3i4FIDLoQBlR' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'VO2cLvKMvknHrfbI' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'lgVgDx7euP66q5jz' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'bUiVgEbbE4QDTk6L' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'zSePLLxTElhPMvIk' \
    --action 'DELETE' \
    --itemSku 'gvw4VR32gGP9tVEl' \
    --itemType 'LOOTBOX' \
    --type 'STORE' \
    --updatedAtEnd 'Sf4Be41zZFB54NjN' \
    --updatedAtStart 'micUt6wc51JxQeS3' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'xpcSH84Bg5ATkEOb' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'NoIoWbaGngd3xHWF' \
    --namespace $AB_NAMESPACE \
    --storeId 'KaQs5toWwDuIHDnt' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'TfQvbIC2DJs7JrCb' \
    --namespace $AB_NAMESPACE \
    --storeId 'j7dAGzxsLiGVrLmf' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'xJI5JDlhlPsVODXB' \
    --targetStoreId 'X752TYJ0aNRbzPlG' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'E3Hr709YJjZUQ6oW' \
    --limit '31' \
    --offset '96' \
    --sku 'HHSIYh4bLLnz6I9D' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId '9YpaDzqac7ZTDT5n' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ffB1Kxe59YyLQQjn' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'A9nC4bDdGPLJ3eOg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '45CguvZINmMEZYFp' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "xmHzzg0pf0i1yphs"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'RPxJnzaSKQGyRLDm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'kOOgIanyAQ24CSZ0' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 80, "orderNo": "iH6u6Xzuc0EVvWim"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'WplcVIfG5lwH4lWu' \
    --body '{"achievements": [{"id": "ZNu4cDWkI9dDOB2x", "value": 91}, {"id": "D79X2e23xEwW8pYM", "value": 89}, {"id": "JZ3SCQQ1u2XxndhX", "value": 12}], "steamUserId": "xiiqhsWsT4n2SQeE"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'cg4Ue7Xzwo6iXvao' \
    --xboxUserId 'PS9h3tqbV06oasJH' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '16yWoYJUFAfqg2cl' \
    --body '{"achievements": [{"id": "O6jxvSpWvz2kmPWz", "value": 51}, {"id": "NpdJ6CVoalUQC2mw", "value": 95}, {"id": "dgY1w9JEngXjnEiG", "value": 36}], "serviceConfigId": "LFhH6qaarYIefnCm", "titleId": "er1dN73kkLtrrJIV", "xboxUserId": "1r97QzIuahdsVZYe"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'pX9gqB1hfsvgEWOJ' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZOOfmthU4j9aHdbZ' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'Fmv4tI6lgOrngAxG' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '88Ur2znPqJHO0FUC' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'fHT3BSSUkqW4sezx' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'MQP9uaY6yTTmVugX' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'VT61hV6tlUC9dzDF' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'j8o9RsjNY6ossV0D' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'UDtZCpLzxLojdGGb' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'NchZqKXMFWctqw3q' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ceKKyRvBnpL44UyS' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '9XEmKLqi3OGLJ8zW' \
    --features '["Q4rcESqrkhjUTyN0", "OGT65F97rlYmCF5A", "USVejWNIkOlQ9v7K"]' \
    --itemId '["UutiYlbe3gXN0OWf", "XElB8uveViS8KDac", "7oC8Ix23mZBEixGA"]' \
    --limit '7' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tB3XrQgG4IStZhLC' \
    --body '[{"endDate": "1978-06-30T00:00:00Z", "grantedCode": "1Z2cNy0hdByngXWg", "itemId": "hEaNFDxBfCT22cBq", "itemNamespace": "FtM6OcPWwAWO520c", "language": "oJOj-QXPK", "quantity": 37, "region": "FKbtuWVrKgjECkxb", "source": "GIFT", "startDate": "1995-11-25T00:00:00Z", "storeId": "C3asBrv2mdW6fKk5"}, {"endDate": "1981-06-08T00:00:00Z", "grantedCode": "2fL7sijXXPi0mNzX", "itemId": "zKYaAlhpg8k5eQ9S", "itemNamespace": "JwdkzI2khjhHXdJ2", "language": "Bg_jKfv_an", "quantity": 48, "region": "LamHXhSydxK3jjQ5", "source": "ACHIEVEMENT", "startDate": "1974-02-05T00:00:00Z", "storeId": "eZfClJpE7jtukVI4"}, {"endDate": "1990-02-07T00:00:00Z", "grantedCode": "ISw4cCOZh3NSfu5o", "itemId": "HRlgQJPgxiqBYJO0", "itemNamespace": "MkKIk7A3tnO5gYCK", "language": "QNGW", "quantity": 64, "region": "rCfPmDYEmWVnV8oI", "source": "REWARD", "startDate": "1971-12-01T00:00:00Z", "storeId": "41p0Au26i5yeFw4e"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ufEQ05kRWpE5xss4' \
    --activeOnly 'false' \
    --appId '40o1tNTgm2l2AskT' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'rbXEoM2WQScELzOD' \
    --activeOnly 'false' \
    --limit '19' \
    --offset '86' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YZEerJ7sSFSNqGMQ' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --itemId 'ESjvnNW4qxdVtJiQ' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'ebSfvLAViTJmF8H7' \
    --ids '["ovVVPgFxJWhIx1G7", "KKlUOumvmYgLf7Wg", "5aPYdTwqrT43MjTS"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'gpK69jH7XbfhvdZB' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'Cru0wLhb3BDi3R4e' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'AJsPTu54vur4uPXB' \
    --appIds '["qEsOhsqZhY1QY2Wo", "ceXq219FhMUNolEM", "VCJwpyKBywYJSkKf"]' \
    --itemIds '["Gf30xIWtxdb1X7LR", "NILJMXqrLLljLHVt", "UI1F8ndr3JzuNrsm"]' \
    --skus '["B3SlNq4AhHAjXy2N", "2EzcbMV7cKBxKnjW", "M1g1BLyJlnOsdVqR"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'PBITIaiRgOmGQsM2' \
    --itemIds '["gUJdg20PvSgstEmC", "DPvnj8enrcle6wg4", "BnVNXgsDpLpFjSv6"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '2gaZoowX5jDzwHsQ' \
    --appId 'WxlMDV1mbGm0k2dQ' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '43NmvKpirW9M8W1r' \
    --entitlementClazz 'CODE' \
    --itemId 'L1yisDoR8ks0WzNZ' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Qm1FJx4LShJh5C8i' \
    --ids '["MRa9V8Hal9qwHiYh", "G30jnhYxyZbyE6uc", "Rc4DkEmW1PYZLRND"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Hq2sycm010X1ObjG' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'i3xJlHYrxwDQ7QYq' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'FTrA4z3TkF11OZk4' \
    --entitlementIds 'uNpPlKNKzKOOZdt0' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 's8PddjNbwbGq95Hn' \
    --namespace $AB_NAMESPACE \
    --userId 'JnOOMZ7uR6DvDRH8' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '9fT59Po2vh16RSuP' \
    --namespace $AB_NAMESPACE \
    --userId 'YsBiJyZ7YGQeZxt6' \
    --body '{"endDate": "1975-11-23T00:00:00Z", "nullFieldList": ["vmF7SJ4Db9jiXm9V", "7DjadqTEHiqXobBh", "StC6SIVrsumQdTga"], "startDate": "1984-08-19T00:00:00Z", "status": "ACTIVE", "useCount": 85}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'GXYRLvts5A2IdmSZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Knn8N1HMALIpBKzB' \
    --body '{"options": ["R8umcK7tFma2taj2", "1jTjflvjzDENj3qn", "F7wizBtJeQ4LNJM2"], "requestId": "G8ILRRAUaY58fPkq", "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'MeMOynwvv7n78OJe' \
    --namespace $AB_NAMESPACE \
    --userId 'CrBSFahnnE3Pg39f' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'WFuxYSkFxSp3Ntlf' \
    --namespace $AB_NAMESPACE \
    --userId 'aq9I2wDbjy1zhtTh' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'bRyojAdha2lFo472' \
    --namespace $AB_NAMESPACE \
    --userId 'dExexRQoQXjS2MeF' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'M3ezgWggCw86iIBX' \
    --namespace $AB_NAMESPACE \
    --userId 'QT2tFG8BEp0hntGQ' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'OPHOnZwcGgo8Bxvm' \
    --body '{"duration": 0, "endDate": "1981-04-20T00:00:00Z", "itemId": "G3e3X0OFZN6833o7", "itemSku": "gnChMU9aapyDe6TB", "language": "xdbdzx7a2FYyWMPw", "order": {"currency": {"currencyCode": "TVvMNrXwtMlYrAk9", "currencySymbol": "xib1EcYbKYp6PJ03", "currencyType": "REAL", "decimals": 4, "namespace": "U9wZ5SIJyfsIWgcj"}, "ext": {"a7vyeIHfPp8seDjo": {}, "QhYuS7TXX9k3Q9wU": {}, "jX8Eqci8YKDeABPi": {}}, "free": true}, "orderNo": "3ullC7GfRokS17BF", "origin": "Epic", "quantity": 17, "region": "0Jk1ZRx09DMiB9jI", "source": "REFERRAL_BONUS", "startDate": "1987-12-29T00:00:00Z", "storeId": "QzsEk4aqJLK66Vzo"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'xy9HL7re27IPFTLi' \
    --body '{"code": "rcjvuOqXiIdzJUj5", "language": "NJD", "region": "XIfjbvJi44HtjTR8"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'LuQkQwm9QqUZy9l0' \
    --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "wIANMtk7wfTxR6bM", "namespace": "mhyxy8S1C2assTaD"}, "item": {"itemId": "zGBOULGx4GeuAVnl", "itemSku": "6btB37cHXL0pzTLu", "itemType": "bexD0nEAjLn2Qmu5"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "qjXBlhxkDgj5iPo2", "namespace": "knTInU2dF3Qc4yPC"}, "item": {"itemId": "n1Q052qdYzAzHueT", "itemSku": "jzR92jiNbPO7r2ji", "itemType": "bLtqqCSNl5mPqg6Y"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "xZMoRM3VnMtXer9D", "namespace": "ZVBohSqOrjRttj4R"}, "item": {"itemId": "HB1bccQ1VUZU0RhF", "itemSku": "DejzsW7Iu7BxFGOG", "itemType": "0ng52VGbL0V9cK82"}, "quantity": 15, "type": "ITEM"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'IpI8Xo6KAkOKAgf5' \
    --endTime 'vEHlgG0IG2ygYQul' \
    --limit '81' \
    --offset '22' \
    --productId 'aISA5Lvtd65x5pqv' \
    --startTime 'ncDbx0WlfTRzuFLo' \
    --status 'FULFILLED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'GYzkrXhxQat9Ppaf' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Sl0vA6YlWjnMWX2q' \
    --endTime 'O5gfGZ6zWvNrViXL' \
    --limit '4' \
    --offset '68' \
    --startTime 'EXEpulQ8rZHQuqRG' \
    --status 'FAIL' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'syxbPdZkrLWw54QI' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "dss-LmHK", "productId": "CYH8KxU2d0SxPOsY", "region": "2NFGS42CI6CCxpZw", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'S0IZA0ql1THFP65X' \
    --itemId 'ZiWa9hTDdex2sj3r' \
    --limit '19' \
    --offset '5' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'auWSuAUV1gZOzjYE' \
    --body '{"currencyCode": "MaRfW3oxvxltjZM5", "currencyNamespace": "NqxNnGZuEnPEaf1G", "discountedPrice": 66, "ext": {"vt6CjDYe8HhVC0pW": {}, "iXJulHRLMiC7mMra": {}, "gKH8HL0qngRZ90Iw": {}}, "itemId": "iAUKtWKa1Txy6WTj", "language": "p0TUCgrqgjgWixVE", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 100, "quantity": 31, "region": "Vs5xwSIAwfeue5H3", "returnUrl": "uyJVlrzqSG6MwgPf", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '3tqmg8gSUgJZM4lJ' \
    --itemId 'BPYe8G6JrNu3hD7a' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'dHNHaWtXFlSIn4c9' \
    --userId '3MbrcliANiLjahxi' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'URl3AZ5hsk8ZE7mH' \
    --userId 'ioITQIJqOjV46GBB' \
    --body '{"status": "CLOSED", "statusReason": "h14ycagmgMmtedNk"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CPZjG7kp1EEyIvTT' \
    --userId 'I7Qh1vII9px4pLOO' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'MXGQuU0n1mImu5Vj' \
    --userId '6gGu3BiNle6q61aT' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'oEFinext2oNYDdUo' \
    --userId 'TQX6e6T6DbQCYJ0a' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '9CYYz02bvI9K34uV' \
    --userId 'iMboh7DZQoBEyzmT' \
    --body '{"additionalData": {"cardSummary": "o1KM4Ob9gpZqnpQ2"}, "authorisedTime": "1983-04-02T00:00:00Z", "chargebackReversedTime": "1987-06-04T00:00:00Z", "chargebackTime": "1977-11-25T00:00:00Z", "chargedTime": "1997-01-20T00:00:00Z", "createdTime": "1998-01-05T00:00:00Z", "currency": {"currencyCode": "FcJDTdWsrrc5fpgU", "currencySymbol": "4p0AcNwm8GeqjWdE", "currencyType": "VIRTUAL", "decimals": 82, "namespace": "mI3wdFNfnklQtsEW"}, "customParameters": {"Tiz1YbXkequPWZyh": {}, "vcTuJczojtBGfMZs": {}, "XU2mkUJM9J2ipJUf": {}}, "extOrderNo": "KN2Vq9UMDEuEfhYr", "extTxId": "Uvmdqa36vjEG6Aos", "extUserId": "LcOH933Y412zUdKB", "issuedAt": "1999-06-01T00:00:00Z", "metadata": {"2b9hmvPeMZiyvJ4X": "N89j0pvveBfx5jOK", "ZPEsBQ10Po1kzg53": "1SJv0bi99tjtheGu", "Ke3PjqiLTwPGbWba": "9HLiT5vUMOUaQ5Td"}, "namespace": "2z6q327WGUQASasM", "nonceStr": "D8ntcJe1UVfEfD9R", "paymentMethod": "aLz0C2y5mCmGPrtB", "paymentMethodFee": 9, "paymentOrderNo": "nPCbq1bwVVGw85bx", "paymentProvider": "CHECKOUT", "paymentProviderFee": 99, "paymentStationUrl": "WpSycnATU4tKUQwL", "price": 3, "refundedTime": "1997-03-15T00:00:00Z", "salesTax": 69, "sandbox": false, "sku": "g4L802hkYwA29ejE", "status": "DELETED", "statusReason": "RBrzkZ86xlb18kCi", "subscriptionId": "WkKZYkjWh6Lww54W", "subtotalPrice": 91, "targetNamespace": "4ueWTX6waAtECZKy", "targetUserId": "hpzg4ZFc8b70oy9s", "tax": 18, "totalPrice": 16, "totalTax": 3, "txEndTime": "1995-05-20T00:00:00Z", "type": "3ANI1OgCSxBMbkSy", "userId": "VvIdt4kqHjKT6cQh", "vat": 80}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'cF5erzDape2rrfcO' \
    --userId 'BfoGfgZa7thX50NM' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'THHc9Mxue9mulO8Y' \
    --body '{"currencyCode": "PX6jV9NpEVdTZHpx", "currencyNamespace": "QUpSbYXQTucdA9v5", "customParameters": {"NUx8eGgkMXykXHH9": {}, "MGR9nFWODe0VWIXO": {}, "fBlOjQXOh5WCW7a6": {}}, "description": "FBeiJV571yJ54Adn", "extOrderNo": "s8l5stvbbz8dMzfS", "extUserId": "PxM7GkeiwzIyT8vA", "itemType": "EXTENSION", "language": "oDlk", "metadata": {"LACHpF7bYTZ0Js21": "7kdPZRfmOiNbOvvq", "7FRt8bRGtCEmChke": "6N8HEBtHAcB9CYnL", "wSNFN2rJvc3Da6T6": "MblRXODMIZeQI3XN"}, "notifyUrl": "CXbmnhEYe3AlTb6f", "omitNotification": true, "platform": "pvQ1SHlR3Bl1Z3Ag", "price": 49, "recurringPaymentOrderNo": "QUlbDbaiEzuYDvj6", "region": "M7KFrkgzapETaM46", "returnUrl": "zGqKhGazmQoW3MYo", "sandbox": true, "sku": "kpMYbET6Y9p6MVkO", "subscriptionId": "tf0FFJ0KjWAbyun6", "title": "7XoALC2DCwrK2VQh"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ud85lSGN5qkjYOl7' \
    --userId 'kaDlEMPl1fqrtRpi' \
    --body '{"description": "Ex5nWJqshta5Skp1"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'MVu6HdvCGnJcuv51' \
    --body '{"code": "zBEi4OBJssOlScgt", "orderNo": "POwYsnXHq3VDIDzu"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'NPnPxCA2MfVNhJjZ' \
    --body '{"meta": {"VeB1qnifooz9rUgI": {}, "0ZmaQKeknBNMnR5s": {}, "b1eL1IJ1NgkIlyxT": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "BiMH6rRRVXFQ7LLE", "namespace": "qRyXTiGfso6g7xv8"}, "entitlement": {"entitlementId": "X6JQreNnjZprDGCC"}, "item": {"itemIdentity": "tmeMQJXaGk8aT4Ns", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "rcyVZTtqA2BJznIY", "namespace": "vPliRoOZWI4Vd9HH"}, "entitlement": {"entitlementId": "XpPbf9O5EcVImGQ6"}, "item": {"itemIdentity": "3MSQLpPkzkjaHGsc", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 84, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "gragXoYHtV2KdFyY", "namespace": "40ghbbe2kEo3lzxO"}, "entitlement": {"entitlementId": "GGXcRGNtL0BaI5Ls"}, "item": {"itemIdentity": "zeBqVQ3eGqk567df", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 85, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "BKpVfkBDPthDmKdH"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'gi7vIFXpCRUe6asC' \
    --chargeStatus 'SETUP' \
    --itemId 'ZHZQvsYb5x9z6MfZ' \
    --limit '86' \
    --offset '32' \
    --sku 'wJXPnHz7BWHYCW7T' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'v3taDcxdLx9cEyjM' \
    --excludeSystem 'false' \
    --limit '22' \
    --offset '77' \
    --subscriptionId '530MIB2BMafvyzt1' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'd494uoNMENy98kx7' \
    --body '{"grantDays": 51, "itemId": "kbi4bNbXGBvDT7Mi", "language": "PcVLX5KtmYvZkYeA", "reason": "zEFcRwpiSrYqF7ml", "region": "Ll7qHfdW7GPVzW8R", "source": "9MC5LhYK10nV0w7d"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'EGclEDXI0ijb8igR' \
    --itemId 'gGtMzBZlJWK4z6Tu' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Q283SsC6Nh21ezPL' \
    --userId 'twTzLd28OiT6y0HY' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'dcpR3Af2ksecIMSz' \
    --userId 'j16DPqd0gi5Q7dIM' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'luJyr5KNTXaxkIYU' \
    --userId '4tWC8xnB4Htet4Xl' \
    --force 'true' \
    --body '{"immediate": true, "reason": "OBCf2XFtcf2qy6md"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GR8cafS7lWBYZ98m' \
    --userId 'x54bnVq3WW6CdNjH' \
    --body '{"grantDays": 96, "reason": "uiD3g7kbnyfCewDt"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ugsbMjzE5sC6Q3dT' \
    --userId 'wnlA1uzZa8NB0xkp' \
    --excludeFree 'true' \
    --limit '74' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'htTpY0wdAcsfpKTL' \
    --userId 'zFXnetqy4H29GCdU' \
    --body '{"additionalData": {"cardSummary": "Hg1X7QQZNXD7zSUX"}, "authorisedTime": "1985-04-27T00:00:00Z", "chargebackReversedTime": "1997-05-15T00:00:00Z", "chargebackTime": "1984-11-03T00:00:00Z", "chargedTime": "1995-04-14T00:00:00Z", "createdTime": "1982-02-08T00:00:00Z", "currency": {"currencyCode": "jlcAwf83QzygeIw2", "currencySymbol": "zgwuSj3z9crvGK3G", "currencyType": "VIRTUAL", "decimals": 49, "namespace": "UFI7JfNOCym0AYpI"}, "customParameters": {"1rDBlWhtkpcHAnBt": {}, "Ye0mzuh01mkeLhZP": {}, "RHpH6KTN3lYcgsOW": {}}, "extOrderNo": "2TOanXWLq7fDiBUi", "extTxId": "tWNVq4Iup3cUN9E0", "extUserId": "UH8DuA7C3ggmBRPA", "issuedAt": "1975-09-01T00:00:00Z", "metadata": {"s6AemV1TVD5WoL38": "Dyqo8LfUTxqxRKKX", "tvB6x4OI2c3Gxr8D": "VXZb8LI53XnlnzPO", "IQaCkglvgLGZfbN3": "JvsaRP91FXLrWBcq"}, "namespace": "1Qnj6YHiAsok90Cc", "nonceStr": "F7ZgJtQ8o5m0QFMX", "paymentMethod": "jyGYjBJzC8KKGJKl", "paymentMethodFee": 48, "paymentOrderNo": "PQ4kCUgQ1HHUTxFd", "paymentProvider": "CHECKOUT", "paymentProviderFee": 13, "paymentStationUrl": "x90sOxRhM4h2tDVB", "price": 20, "refundedTime": "1996-07-04T00:00:00Z", "salesTax": 70, "sandbox": false, "sku": "L9szpQSR8iTNOfZN", "status": "REQUEST_FOR_INFORMATION", "statusReason": "JcrTrApxIptrFK1O", "subscriptionId": "gb4wTEtfvPR8k2gs", "subtotalPrice": 41, "targetNamespace": "VV7au4cO2ACtUFqB", "targetUserId": "mt0uYex0ZVOOqTon", "tax": 69, "totalPrice": 90, "totalTax": 26, "txEndTime": "1988-09-03T00:00:00Z", "type": "KGBELLnWq7RlFI1c", "userId": "M2qwiMYlX89rGbY9", "vat": 8}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'k7zLSYyOWj0hWzb9' \
    --namespace $AB_NAMESPACE \
    --userId 'kI7ph254sk13Oq35' \
    --body '{"count": 24, "orderNo": "vDAtd9c1xCaLm1CA"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'yrYCpQZxXYQkuegM' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '9gXVQPEYc9yELwwk' \
    --namespace $AB_NAMESPACE \
    --userId 'Zues64Mm0Efk8tg2' \
    --body '{"allowOverdraft": false, "amount": 45, "balanceOrigin": "Steam", "reason": "NZh6BFGMJQCu5tgq"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '3VKqNwvY9RSyVJvj' \
    --namespace $AB_NAMESPACE \
    --userId 'ByEK5FO5P72iCQNa' \
    --limit '78' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'urgOaQ7JJb9QMLX9' \
    --namespace $AB_NAMESPACE \
    --userId 'ikt0MnVkyoDDqjVc' \
    --body '{"amount": 37, "expireAt": "1996-08-02T00:00:00Z", "origin": "IOS", "reason": "9IciJATvyiQk1vhs", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'e0lznGAF4ISrFT0S' \
    --namespace $AB_NAMESPACE \
    --userId 'mYjhhaYHVHhngBo4' \
    --body '{"amount": 13, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 252 'PayWithUserWallet' test.out

#- 253 GetUserWallet
eval_tap 0 253 'GetUserWallet # SKIP deprecated' test.out

#- 254 DebitUserWallet
eval_tap 0 254 'DebitUserWallet # SKIP deprecated' test.out

#- 255 DisableUserWallet
eval_tap 0 255 'DisableUserWallet # SKIP deprecated' test.out

#- 256 EnableUserWallet
eval_tap 0 256 'EnableUserWallet # SKIP deprecated' test.out

#- 257 ListUserWalletTransactions
eval_tap 0 257 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 258 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId '6WjtV0bqCT1pqqij' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'N1LxV8afilbvzATD' \
    --body '{"displayOrder": 78, "localizations": {"1KTUzr5xp6z3ncKi": {"description": "iWmpZuZTHGIK5dyF", "localExt": {"m4Qm4cqiAAvQKMtZ": {}, "xizQVWq7YwG4FYcp": {}, "8KyuuKlMbkDtEw5W": {}}, "longDescription": "QgWJ3UgDyIOmBNYh", "title": "li7TK4lTHlSPa0k5"}, "xVb3szi3tA5lhnr7": {"description": "R4PiDlacBBEeBwmQ", "localExt": {"RzJX4aM79TMTiw6d": {}, "JrANIxBoMd4eq7nA": {}, "NpsmfZJMHrg2N5dx": {}}, "longDescription": "Qn0QW9Y2C2jrFOeD", "title": "bp39AHzuNj4JOgkf"}, "ltzpjUcTYCxx5o9F": {"description": "KBMp4KIZjIduyE8c", "localExt": {"hxhFayEIOHOVfxAO": {}, "EWsRprf25645zfzE": {}, "wKHyPXiZQQe0VnbO": {}}, "longDescription": "HwdNPWh6d3urZTPU", "title": "vqEnYrGKYVnHAWTm"}}, "name": "LgAjglkXpcccdiJw"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'G8tkUINC2Oo35Sex' \
    --storeId 'rFqpFQDMhhE51yHC' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'R1qxh7pCzOfvX8jY' \
    --storeId 'jdPqWMFXMkYk4rVj' \
    --body '{"displayOrder": 24, "localizations": {"u1YrKnBPUeBzRfDx": {"description": "47W4S1YjDVUxGnA2", "localExt": {"6u4Sfcr5OzFj8xEm": {}, "E6vRYUjZJa5542eS": {}, "a68BsFHrTJ6pKYrG": {}}, "longDescription": "fB1rlp0MxtscgQZQ", "title": "t0dcN1sYVYiIq4xK"}, "WmcgClAM5b1BTU6S": {"description": "3VLnRjojy6esbqjc", "localExt": {"Z9OBWW08TYfN6HDP": {}, "ISVPCONEzt6Yv1qY": {}, "20YvicO7V6KsyUSv": {}}, "longDescription": "6hZwst9jS8TlLhoA", "title": "xore5bgKzz02o5Pu"}, "knfzbYuFhuUOVQeU": {"description": "e7frDfNEotfYfPnm", "localExt": {"yuchMngf6bPeuGk5": {}, "Vruh7VQ149XhJNKd": {}, "FPBdzfQJSPOL2jLU": {}}, "longDescription": "QOSbRvwogyrvnVSG", "title": "f2hAq9EdIX8GJOPH"}}, "name": "ihcy6PBNqj6KTEVz"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'IskJLu7b732EsaFA' \
    --storeId 'Lx54l4AnBT2lp0fn' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'CLotwZN2NPejoKvo' \
    --end 'g89v0lkHn9mxipKv' \
    --start 'uqNci4rS1XyTjyYA' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["pk84zMapHHp5z5a2", "BF0uyNXRtQxSOjpL", "rczioW7JI7Ll7RVq"], "apiKey": "aqRPVyRnzaPNR3Cf", "authoriseAsCapture": false, "blockedPaymentMethods": ["NWwONk59uIiD1qiB", "z01I0dgLoKM7slx6", "74DqsqZz1BnayfDF"], "clientKey": "H4Tnv8JEqr1cnc32", "dropInSettings": "MXoLGV04dyaHStQ7", "liveEndpointUrlPrefix": "0zIJ43z9LcXyklQI", "merchantAccount": "MZux7Jb7OHdFooAS", "notificationHmacKey": "DXeVpvgI28O5rktx", "notificationPassword": "EtmuORFxoZPR6SAE", "notificationUsername": "E0gWLCoiiEiq6hFh", "returnUrl": "d8xfqI1A6Y9E9PpB", "settings": "04rr5ay8r3G4zWB6"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "Ve6oCut6C0SagVWZ", "privateKey": "cTE5JtZf5Db40LHP", "publicKey": "6u7vwTDWS6isyVTT", "returnUrl": "YeNpDu46p8VpLqJq"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "DOQpuyGjzsDy64dL", "secretKey": "4Zd94PFvHCq2sCJt"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'FGdrr8CFROfQ5YHn' \
    --region 'DdN0zVrDI4QUsQhK' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "WGa15C6QFRf2rWgL", "clientSecret": "XphxmREfIRM6gsPe", "returnUrl": "VulSpzaxQaGJwmx4", "webHookId": "gyTUpaMwjoNRTPSd"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["mEDsGgEwOFGZ7fMZ", "HYu9JN2LfOfpqFU8", "Xyd9paVRLbgCsNnq"], "publishableKey": "pl1uaLqrYIDbE6i5", "secretKey": "TMUUsAwDRkfsYmcd", "webhookSecret": "Romfq5rHBkHGgPX7"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ujfsUkdA4tMwWynt", "key": "aBinhs43QES5lp4A", "mchid": "LxDXL7aFgByxcl2B", "returnUrl": "1QL7KhpRuLzimBfs"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "GgOdsrsiyePMscHO", "flowCompletionUrl": "Y41nhOIwlA95cC1o", "merchantId": 42, "projectId": 46, "projectSecretKey": "re79u8L2E1uQoVbm"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'upNfOzTtngJOTemV' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'wS5g9RR92ZhP79vr' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["PxdcuuZfd3hNtCae", "iSZ8BYSdyHzGxNMZ", "uqynlei6hznYwuq6"], "apiKey": "GtMfyGzXYXWy3Byi", "authoriseAsCapture": true, "blockedPaymentMethods": ["CNJ336jEpQRMhsQk", "loHoiQinKGtbUnIs", "W52guyMO9OQkNzYW"], "clientKey": "Cy1Jhe9dswQhAQ51", "dropInSettings": "Sff67lFaQ1SBsbLz", "liveEndpointUrlPrefix": "T5AfX6FuIwx92QzE", "merchantAccount": "UQkaFNg3hDDYPdO1", "notificationHmacKey": "WMkIYqtdjvMTnBlk", "notificationPassword": "XkkeEFi9CT1uWLOS", "notificationUsername": "f4vZEcu3bhwu3iRr", "returnUrl": "HmR8GS3LnXMjrRbg", "settings": "BwwmTnnimWl2g6Pj"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'gjAAOGENxmZ8CZ6a' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'Rr4i8kcBV5HrbMIx' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "ZkFaKaB51Rl7mmc1", "privateKey": "OnILwb0MZB8lrkrx", "publicKey": "3yzqgewPMnbRIbUR", "returnUrl": "37BPvdf7Y2xOwnLh"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'Qbke6hUT7gTyyGiZ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'hGLezXcoLNWg6cDS' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "dISz1NMIqgkDtXzD", "secretKey": "UoLi9OiQJbnwzO0o"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'OTlGzI3HHfpHpR6z' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'sxTK5X6G9jh1gXby' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "tB0zO7RHRzdHvjzZ", "clientSecret": "gTJ4ruuJithE5FA8", "returnUrl": "g1DaYpN2467A95TC", "webHookId": "GFzhNV6DVUIhLxP3"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'gwNwMeNHSw4rqg4r' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'y8xBMyF1U3uGma9p' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["A2yzLTdyinsLsnzG", "amnv6nHw6LITWztR", "yd2nLXD3PnWIsDkZ"], "publishableKey": "poKdYU1BYrI6jTDb", "secretKey": "RkXHxbT7kUnnXbYc", "webhookSecret": "9ssPJXdujQg3JS7r"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'kcd7UT9GyT0oIp9Q' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'LlLvo7SbzOc0SBum' \
    --validate 'true' \
    --body '{"appId": "5Ox6EW6iGKhJHhjU", "key": "cwHSGBjY71kYUD80", "mchid": "NbVXADeDgVWqSztp", "returnUrl": "AFZX9ikkzsm07rxb"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'JxveIOVjq63DvmBw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'tZw5NvbANHpOLgo4' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Z5YzJHMUSEgjVK9O' \
    --validate 'true' \
    --body '{"apiKey": "Zq5iO2JtoEs9mQXI", "flowCompletionUrl": "8vTGkRpuGAszUQpW", "merchantId": 35, "projectId": 78, "projectSecretKey": "8BuhaFXqP15oYQ9x"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'T0zVVwcgb5GF0Swv' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'gPnZRTUjwq6BpZto' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '94' \
    --namespace 'wLTT2jCqSnxOMrMj' \
    --offset '13' \
    --region '6iDc7PLTWMoXSW13' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "lp2978znPtMQDzlT", "region": "Zj5JHSiZwPSikd91", "sandboxTaxJarApiToken": "7BpItEMiiNBFeEW5", "specials": ["XSOLLA", "CHECKOUT", "STRIPE"], "taxJarApiToken": "UV86P8tu2Q0WxiNE", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'uh64ieeZFQ6QGeTQ' \
    --region 'A71PuchEyl2qeBzi' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'wW6KS4mS5HAvgGGz' \
    --body '{"aggregate": "ADYEN", "namespace": "abPyy9hLlnJSY6vH", "region": "4807ufcCmRueVaLx", "sandboxTaxJarApiToken": "lwwjMiYxfYqC8IsH", "specials": ["CHECKOUT", "XSOLLA", "PAYPAL"], "taxJarApiToken": "FxlcAmIvlYUHHjU6", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '3HSDreLmMcaUGNia' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Q4THtcB2a3bDG9Zv", "taxJarApiToken": "p2ScnTHyPL0D2UOW", "taxJarEnabled": false, "taxJarProductCodesMapping": {"8SBT2LrXX4mEZoIO": "Krg9WYxSjLhS2blX", "pXkbzjHrL4UgHavl": "gx28eNIUuQvoApbF", "4pzLL9vATszb7o4Q": "VdNpB7t0CvsplnH4"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'rleWQtbxTgfIUOY5' \
    --end '6kOylP3qILKc4mlp' \
    --start 'Iip3Gzr0kNMapdHd' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'USaTOeUmvMXkT2a9' \
    --storeId 'eHESXKjhK4FXVBF1' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'KnHeT7fjDe6W73rS' \
    --storeId 'G18X06FHfSzddZFm' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'upPHYnk52IiHsu67' \
    --namespace $AB_NAMESPACE \
    --language 'gRug9wuaEs6DnsSI' \
    --storeId 'NcjMXNOT3LUdenI4' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'b3ZtSeRjKR5ZYHlp' \
    --namespace $AB_NAMESPACE \
    --language 'Poy2nR5haoJz1zrn' \
    --storeId 'F7uoVklPiJj4ThaD' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'alHkouPMrUKluHCQ' \
    --namespace $AB_NAMESPACE \
    --language 'f3aJRskyuoVirGWt' \
    --storeId 'PMW08H0qS5GHWnr5' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 307 'GetIAPItemMapping' test.out

#- 308 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'xMEDGONkciG0L31P' \
    --region 'Di7z5TPCD36nSmGw' \
    --storeId 'xJN5AAhvxonX3ekt' \
    --appId 'ZH94hFmIieRr87Io' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetItemByAppId' test.out

#- 309 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'BaGWSZaRxfif5kYW' \
    --categoryPath '2O0bFlMBVe1vmsAI' \
    --features 'yOMtbqEaw67kJqhu' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language 'fRKVTwe8MPQbQ6u1' \
    --limit '84' \
    --offset '77' \
    --region 'u5xJIiN2HrJG2iEj' \
    --sortBy '["name:desc", "displayOrder:desc", "updatedAt"]' \
    --storeId 'A9t674APVAXIidOw' \
    --tags 'Sc1nWzwOkSsOZX8t' \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryItems' test.out

#- 310 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'nNzE7X856V5sNGYJ' \
    --region 'MgTpGrdDeDPwlJO8' \
    --storeId 'tQkSMbLevzY55aAG' \
    --sku 'VT7zfRlCpLsK1DDX' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemBySku' test.out

#- 311 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'a3Ivpbgt4uPNEmTv' \
    --region 'ohOOps4iCFd7W6QN' \
    --storeId 'uZus24QQCxZVFvRP' \
    --itemIds 'dkKBe54Ck8dJsaqY' \
    > test.out 2>&1
eval_tap $? 311 'PublicBulkGetItems' test.out

#- 312 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["AD8y6fG0zzu0eaqm", "QCufo7SsIgnnxiJT", "V1IzJSbmhjjOwNwp"]}' \
    > test.out 2>&1
eval_tap $? 312 'PublicValidateItemPurchaseCondition' test.out

#- 313 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'MEDIA' \
    --limit '12' \
    --offset '100' \
    --region 'iZjas1HsJrNQs1YF' \
    --storeId 'J7TaMDvR3MHmR8hK' \
    --keyword 'HHwbwYOay5FfiHso' \
    --language 'pxffiwXsP6Xo65PC' \
    > test.out 2>&1
eval_tap $? 313 'PublicSearchItems' test.out

#- 314 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'cYARdAWiBYvTUXSi' \
    --namespace $AB_NAMESPACE \
    --language 'sg6lM4pLvhRuNcW3' \
    --region 'UZL031vnqN19wK7X' \
    --storeId 'hKSLSSFPc9xbQeuB' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetApp' test.out

#- 315 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'hYyODycmCfKOPvBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItemDynamicData' test.out

#- 316 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'rNXn2UiFfcP1UA2R' \
    --namespace $AB_NAMESPACE \
    --language 'HHvhBjEw91tpKNPj' \
    --populateBundle 'false' \
    --region 'n1o2NItdNN0AgrXt' \
    --storeId 'VocJvUC1XboPYC5t' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetItem' test.out

#- 317 GetPaymentCustomization
eval_tap 0 317 'GetPaymentCustomization # SKIP deprecated' test.out

#- 318 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "tAJ752aUNegSkgAE", "paymentProvider": "STRIPE", "returnUrl": "xm9BnAzWXXvM1QYV", "ui": "6rySBNPvVBW88G4u", "zipCode": "Zi1QpuZDXGiKC6gp"}' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentUrl' test.out

#- 319 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1Xnj02razSEwkLLY' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetPaymentMethods' test.out

#- 320 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'T4hJ6mmZwiyHbBVA' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUnpaidPaymentOrder' test.out

#- 321 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2QqFiVDoZ5tG3k3x' \
    --paymentProvider 'ADYEN' \
    --zipCode 'gymHgFjbIyPzWjr5' \
    --body '{"token": "5TuEMWgRi7c7gKyQ"}' \
    > test.out 2>&1
eval_tap $? 321 'Pay' test.out

#- 322 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ToWaMr3uUjspEdeI' \
    > test.out 2>&1
eval_tap $? 322 'PublicCheckPaymentOrderPaidStatus' test.out

#- 323 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'STRIPE' \
    --region 'rKsyqG7FzmlBxsSo' \
    > test.out 2>&1
eval_tap $? 323 'GetPaymentPublicConfig' test.out

#- 324 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'F0jSqQRFTRJWWRQm' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetQRCode' test.out

#- 325 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '2bmtKhpxrba9jInz' \
    --foreinginvoice 't3FeBTuJimAzGa07' \
    --invoiceId 'innGblAj8HFK97AN' \
    --payload 'PJyK5w7fn3kpvGKO' \
    --redirectResult 'wRMSCZO51BdwTiF7' \
    --resultCode 'ER2GtdPaPom78VBa' \
    --sessionId 'kDMPHFB2TG9IRSAQ' \
    --status '3toW8mdoKAWucvEo' \
    --token 'CrxCsPhAeo6JuXpn' \
    --type '4BufRDG3bquogYs8' \
    --userId 'MeYlEe6A59MvqlPT' \
    --orderNo 'ASgBAFAze8SxyFmn' \
    --paymentOrderNo 'FTMlkhE4ExUV9Fh1' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'koqsZe9LxQTUDmpo' \
    > test.out 2>&1
eval_tap $? 325 'PublicNormalizePaymentReturnUrl' test.out

#- 326 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'wrI5DzHdzLQhjy6E' \
    --paymentOrderNo 'xvwNEYzedgHJfj0r' \
    --paymentProvider 'STRIPE' \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentTaxValue' test.out

#- 327 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'DsCGBqMAOaZZ3HVV' \
    > test.out 2>&1
eval_tap $? 327 'GetRewardByCode' test.out

#- 328 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'W4OU4BylQmyYiIjh' \
    --limit '93' \
    --offset '71' \
    --sortBy '["rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 328 'QueryRewards1' test.out

#- 329 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'yKxyIgb0p6Yw6qtt' \
    > test.out 2>&1
eval_tap $? 329 'GetReward1' test.out

#- 330 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'PublicListStores' test.out

#- 331 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["YeVrRUrP6el6so2g", "f2eFrWrmmneeaVNC", "KEegyjbmgkKXXuHF"]' \
    --itemIds '["149GAXGhRGilKt4O", "UvaYHSHPYj6ViZ29", "OZVg1S0CrL8smhId"]' \
    --skus '["LL9cZPS6rvvdHCEt", "4E0SOvgF17DFsbgc", "UB1QALz4w0PGFgZi"]' \
    > test.out 2>&1
eval_tap $? 331 'PublicExistsAnyMyActiveEntitlement' test.out

#- 332 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'JSb1bCQCQsDG8MiX' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 333 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'fBlkXgjDg9Cachfw' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 334 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'caUFAD2lOLva0H4O' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 335 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["S3bFBqIyo2q8nL8y", "wmQQuagIVmTBAWdl", "ZcRuy6OsXzTXpahP"]' \
    --itemIds '["Fi777nyixYEP9HSV", "Ez5kd8zliEuferO3", "xr4pUT4fNG6y9iUV"]' \
    --skus '["XhCiF3DZhpZ9UNbj", "ke1x8XoTXFllYz3c", "S0rWfrnITpGiKgtm"]' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetEntitlementOwnershipToken' test.out

#- 336 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "txtcm16Sb9C6Mez7", "language": "Mr", "region": "RIFmq632mRL6eqlw"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncTwitchDropsEntitlement' test.out

#- 337 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'u1Yex5aaBBHoa2Tp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyWallet' test.out

#- 338 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '9FjEKMKKiCn0Pt6Y' \
    --body '{"epicGamesJwtToken": "nGCvEiuL0pxGBg3B"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncEpicGameDLC' test.out

#- 339 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'weWgvyVU9v2fFnx9' \
    --body '{"serviceLabel": 26}' \
    > test.out 2>&1
eval_tap $? 339 'PublicSyncPsnDlcInventory' test.out

#- 340 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '72TUTWbTlDrrXWTf' \
    --body '{"serviceLabels": [27, 44, 62]}' \
    > test.out 2>&1
eval_tap $? 340 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 341 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TlqV8mqAnyLAPBr8' \
    --body '{"appId": "eBzvpgCZ8DU51zj4", "steamId": "4sJTb0oS8kBWAel7"}' \
    > test.out 2>&1
eval_tap $? 341 'SyncSteamDLC' test.out

#- 342 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lkv87UZMUBOzWCiL' \
    --body '{"xstsToken": "o6a1jrJm1iRy9cdd"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncXboxDLC' test.out

#- 343 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2ZBR8iMSkmmtAXOX' \
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '9JF3Z3W0Kyu94U7a' \
    --features '["LhocgoGfsEl7dliU", "jzMVWXDn4IiwLNG8", "ienlwFHqDZyDLp2U"]' \
    --itemId '["sS4kuDAdxF3U4G3v", "9adv386vG9wzFbWx", "Et13Eo0zKc8NsSaY"]' \
    --limit '32' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlements' test.out

#- 344 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'eSwwKeh1Ie3ZsOKV' \
    --appId 'zI88McoR5rFD3vie' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserAppEntitlementByAppId' test.out

#- 345 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'NgcK1ZydtrwBr0kK' \
    --limit '73' \
    --offset '44' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserEntitlementsByAppType' test.out

#- 346 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'u8Hm4jZu37aCHaYf' \
    --entitlementClazz 'APP' \
    --itemId 'KEoKZJ3qocDcY2A0' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementByItemId' test.out

#- 347 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'vTuFLERU6OxEKNuw' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'Hw7VFsH8qWSkNccI' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlementBySku' test.out

#- 348 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4nyML5c5ldZXr2Rj' \
    --appIds '["juTBQHvMSPNVIxRy", "HQDmuKAoeKQcssbD", "E5XqZdqgMZuKhk5Q"]' \
    --itemIds '["JaMhiodQKCp9Zpzc", "qEvqQHA01lKkgmvl", "ZV3pYG97Y1UXk6vI"]' \
    --skus '["r61a9Ey256LPnm3X", "AizbtAYqbxgCjH0v", "n4hnOXf7pwhSk2j3"]' \
    > test.out 2>&1
eval_tap $? 348 'PublicExistsAnyUserActiveEntitlement' test.out

#- 349 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'BRIRAtgcgb0OH5WL' \
    --appId 'j3yvJkZrJxuNlcHn' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 350 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'LobQwu2ZISV1IA08' \
    --entitlementClazz 'CODE' \
    --itemId 'wIcwC8KQJ9Ro3mIP' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 351 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8IWZ8bWqXTEc7f0o' \
    --ids '["mwSr37zPsM12vlUz", "VWeL3LLUXKVilEys", "GWTHZVXWplIVZG4K"]' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 352 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Yl0MO7TARoJtmgDC' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'hVWDGbVEPCVkGJuk' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 353 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'BNnoAwnoUUJKWoGI' \
    --namespace $AB_NAMESPACE \
    --userId 'Q8WIbiirClCKP12O' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserEntitlement' test.out

#- 354 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '9cJB3VXEVs2dczwz' \
    --namespace $AB_NAMESPACE \
    --userId 'XJTyyb4vZmYsgMNK' \
    --body '{"options": ["p0caTToTVsLVNvod", "bpPcDpj6bHzt8fkV", "ZaCBcfzQsfGK2EQv"], "requestId": "ZqDVriWdtrsU124V", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 354 'PublicConsumeUserEntitlement' test.out

#- 355 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'MvSfU4Ph9Yi0H940' \
    --body '{"code": "FlXYnZ0KqhlwOOM9", "language": "RMTz_aAZo_199", "region": "ejO5jFZxJHH1FfCl"}' \
    > test.out 2>&1
eval_tap $? 355 'PublicRedeemCode' test.out

#- 356 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'fY5C9TumVmCHudQW' \
    --body '{"excludeOldTransactions": false, "language": "bt_Gd", "productId": "lqNnmU4ziOYmQefM", "receiptData": "ju1Y4cj22OiKU2wt", "region": "AY1tNWb0nBZTT3Yi", "transactionId": "xI2f47bFHTwCvWoh"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillAppleIAPItem' test.out

#- 357 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'PDd6bORk1SGbAyLW' \
    --body '{"epicGamesJwtToken": "3rEYVIATHtUXaoel"}' \
    > test.out 2>&1
eval_tap $? 357 'SyncEpicGamesInventory' test.out

#- 358 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'cSm7ll4S1MpuDTF4' \
    --body '{"autoAck": true, "language": "wm_630", "orderId": "kRex3oGulAK28SB4", "packageName": "7zSOsD5DTBlwoA00", "productId": "XgKNUtzFVx0gzzSD", "purchaseTime": 78, "purchaseToken": "vsh9YJRQ0TJgUWuQ", "region": "HVeCIhCO4y93lEAh"}' \
    > test.out 2>&1
eval_tap $? 358 'PublicFulfillGoogleIAPItem' test.out

#- 359 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'NTnspcVv0BuJE34t' \
    --body '{"currencyCode": "KPWrLdMKjSwFLyWW", "price": 0.266582775517504, "productId": "TrU7zUyK8YM5RDAj", "serviceLabel": 66}' \
    > test.out 2>&1
eval_tap $? 359 'PublicReconcilePlayStationStore' test.out

#- 360 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'J8mMmR0yLHmjJ4Gw' \
    --body '{"currencyCode": "7jUxT9KYCxsiyB7Y", "price": 0.7128408675235018, "productId": "Ypkyi1BGxMgJ06u6", "serviceLabels": [56, 22, 47]}' \
    > test.out 2>&1
eval_tap $? 360 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 361 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ifGWLch2ew28NvJw' \
    --body '{"appId": "VcijwlOmR2xWIvmX", "currencyCode": "HyqOasUzRp9dHa7a", "language": "sbdJ_150", "price": 0.46149306638276566, "productId": "KVdfRvobsE24LF8V", "region": "UZSmn79WttPJzSCW", "steamId": "K42siIK4VocssyUp"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncSteamInventory' test.out

#- 362 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'yvwQhuJPRppNkWnj' \
    --body '{"gameId": "5J5iXw1VXdLlGRpO", "language": "WF", "region": "AUAGpmqXgbtKKW4q"}' \
    > test.out 2>&1
eval_tap $? 362 'SyncTwitchDropsEntitlement1' test.out

#- 363 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'AJCJNNk93je2bLWn' \
    --body '{"currencyCode": "m8fCGaP0kxYxrFU3", "price": 0.05447993854548516, "productId": "4ZDrg7XgolrmFF4c", "xstsToken": "UWL3JaRHaPlklWVR"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncXboxInventory' test.out

#- 364 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'MiGOSkG51UAmz5yi' \
    --itemId 'FXGebjBnkbCXgAFF' \
    --limit '6' \
    --offset '77' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 364 'PublicQueryUserOrders' test.out

#- 365 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'acmu7LFcTCrrbQra' \
    --body '{"currencyCode": "MHR9EsKsbI9bkXE5", "discountedPrice": 71, "ext": {"Y6CMOaNXHTh2noS4": {}, "cJGwvbA28KfNglWI": {}, "8nPFecOcugwcUoXX": {}}, "itemId": "S1XfgKFrN9sfYgDH", "language": "MuCv_Etvw-306", "price": 21, "quantity": 49, "region": "gsewzycUJMCCGfGy", "returnUrl": "GFzzKDbjql0TA29p"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicCreateUserOrder' test.out

#- 366 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'w0R6opV06oqehDeZ' \
    --userId '4dObpFpxFnJWueUy' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrder' test.out

#- 367 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'yEk9qx4iVK0L3Fva' \
    --userId 'wdSjXF3UqFTvMwlm' \
    > test.out 2>&1
eval_tap $? 367 'PublicCancelUserOrder' test.out

#- 368 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'd4lbQrIRqRCcFJAb' \
    --userId 'QGgDcCBAnDKufNeI' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserOrderHistories' test.out

#- 369 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ppi4SBIstxcKtYo3' \
    --userId '6XTwsXJzubMeXjZ6' \
    > test.out 2>&1
eval_tap $? 369 'PublicDownloadUserOrderReceipt' test.out

#- 370 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'HhjRWkGigmIr96Zh' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentAccounts' test.out

#- 371 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '4fCtLi6TXXed88E1' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '8KmQgL1rNWM4aFmL' \
    > test.out 2>&1
eval_tap $? 371 'PublicDeletePaymentAccount' test.out

#- 372 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'FE474KmB9eqHmLHC' \
    --language 'tTcegpAR983SxwEA' \
    --region 'HHc0nDPgQFKFQADP' \
    --storeId 'vnpuOQW9290HSRto' \
    --viewId 'bpZOLisZgzyA4uIh' \
    > test.out 2>&1
eval_tap $? 372 'PublicListActiveSections' test.out

#- 373 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'HakU1oRXx1K389qB' \
    --chargeStatus 'CHARGED' \
    --itemId 'sLmzsqTV7Sk2skl9' \
    --limit '14' \
    --offset '86' \
    --sku 'wv54LDq0JKJZ3kaf' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserSubscriptions' test.out

#- 374 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'hj2pjECISupNLcM1' \
    --body '{"currencyCode": "ZTjjz4CYLKrJSO6I", "itemId": "240ICbyFzjDgnTJX", "language": "RL-uQaz", "region": "63ddyz6WKM6vhLmJ", "returnUrl": "u0OEWfVG7wxrkyk1", "source": "9u740jBxIPWWpH3Z"}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSubscribeSubscription' test.out

#- 375 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'wAObVW2epJNUQq8W' \
    --itemId 'cvf3PkhUedqudOH3' \
    > test.out 2>&1
eval_tap $? 375 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 376 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Q7zWNNZJwTSczzZk' \
    --userId 'wSzQ11l8BcvAN1p8' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserSubscription' test.out

#- 377 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Nj2VNhfHSENeuPGy' \
    --userId 'FQ0TixcKUgtHPT9c' \
    > test.out 2>&1
eval_tap $? 377 'PublicChangeSubscriptionBillingAccount' test.out

#- 378 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'H86706QsZYu5sps3' \
    --userId 'Y9xGdOEVKCCZHXql' \
    --body '{"immediate": true, "reason": "Y5MtHQ4paZ7tEa7b"}' \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelSubscription' test.out

#- 379 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BbWlWv4f4DYdEcDe' \
    --userId 'gPUS7hMhpmiPJkpZ' \
    --excludeFree 'true' \
    --limit '36' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserSubscriptionBillingHistories' test.out

#- 380 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'pFnGHCLOREBmSBXR' \
    --language '89Rb7PY3fyTwoHml' \
    --storeId '8oGxTNk0s70uDIPs' \
    > test.out 2>&1
eval_tap $? 380 'PublicListViews' test.out

#- 381 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'GBBwirNjpqGhVjLQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Gwdr2Hxnkh1oYDlV' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetWallet' test.out

#- 382 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'e2uKDaZrzuv95YEu' \
    --namespace $AB_NAMESPACE \
    --userId '3LcisL94JDVIbasv' \
    --limit '86' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserWalletTransactions' test.out

#- 383 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'VBfLeIS9WGbkoOiB' \
    --baseAppId 'g4ZOFL1XE8BtnyoM' \
    --categoryPath '60kUO7fxo9XIv8FQ' \
    --features 'uTmOit0oJsS5ocAf' \
    --includeSubCategoryItem 'true' \
    --itemName 'DQUjqKykgcpGn5kM' \
    --itemStatus 'ACTIVE' \
    --itemType 'EXTENSION' \
    --limit '46' \
    --offset '16' \
    --region 'KaWEILGqZtwGOdIk' \
    --sortBy '["displayOrder", "createdAt:desc", "createdAt"]' \
    --storeId 'b8Umpvbdto6coB06' \
    --tags 'lpGSX0ppndGCKe0L' \
    --targetNamespace '2NEd618Ni7J3xGSY' \
    > test.out 2>&1
eval_tap $? 383 'QueryItems1' test.out

#- 384 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'HwsTnwkehvsLqWyv' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 384 'ImportStore1' test.out

#- 385 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'djMUthY0q4Rn0uEd' \
    --body '{"itemIds": ["ppqOeXzjQcPt8WcO", "amuM6e58DWKZf08a", "m6HvSaAxIRIBfmy2"]}' \
    > test.out 2>&1
eval_tap $? 385 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE