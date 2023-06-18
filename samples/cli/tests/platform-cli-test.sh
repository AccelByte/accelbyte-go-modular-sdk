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
    --body '{"context": {"item": {"appId": "4yjlVQRsnqboT6ay", "appType": "SOFTWARE", "baseAppId": "oN7BICnFx0O8C5GW", "boothName": "R7Al9wStIwpzaspg", "boundItemIds": ["HJobuZszhp4W0N6j", "Z3gHuZ17hICZEzlh", "MG1JdAaSVlenorSG"], "categoryPath": "a3Suk7jF1Sz6jOvG", "clazz": "VKG56SIuOXUiThui", "createdAt": "1981-10-31T00:00:00Z", "description": "OdUGkakVP7K8lISk", "displayOrder": 89, "entitlementType": "DURABLE", "ext": {"Ds0CdRfB720bhiYw": {}, "5vnKTROhuY5ycKpQ": {}, "eeTNtaQ1nLSsl8Tk": {}}, "features": ["Go3rAP3BZmAcQUDR", "HjUs90VDNoRNRnGQ", "sMFRa6V2nmfdxv91"], "fresh": true, "images": [{"as": "LsvrnjvOsHGROml6", "caption": "37Mkz3mKMbxJe1kw", "height": 16, "imageUrl": "Y95d9bhiOqvxaUyx", "smallImageUrl": "9J7LWBTEkGDxAkFN", "width": 40}, {"as": "3hOp4Ccu6kyWPkcN", "caption": "Nx39oztkechDySgj", "height": 6, "imageUrl": "wXqBC7vXoYx7S5o1", "smallImageUrl": "k9D62lpbNjlRJq79", "width": 8}, {"as": "KBqVeHPINrvVRgmV", "caption": "7NRZ1ignRFH3bte3", "height": 84, "imageUrl": "FKilVpo8fXAQlRpX", "smallImageUrl": "dL5NXokZfXOLz1Ms", "width": 72}], "itemId": "9rWc6oQJhFCqmtO4", "itemIds": ["XVzQums7opUKSSTz", "053w7i8unG9G3Zbo", "uSt201nz1Gw8pPCm"], "itemQty": {"oFFFhSLleO6LRDpL": 29, "qP3K8pMORM9LQ4iG": 14, "pHuJAdqRky475JXH": 32}, "itemType": "LOOTBOX", "language": "jl85SVrMlJ335HLa", "listable": true, "localExt": {"EynST0wEHkSfmml0": {}, "3nppUjwGqR6sfS8P": {}, "Mv9kEDKFtQQN0bz0": {}}, "longDescription": "bmevYLiEe0nDILsr", "lootBoxConfig": {"rewardCount": 29, "rewards": [{"lootBoxItems": [{"count": 27, "duration": 28, "endDate": "1980-03-28T00:00:00Z", "itemId": "VO67y4HWA2ftdXis", "itemSku": "BJwLOBvNQFP3WdzY", "itemType": "GOSeykukSTmjeEGT"}, {"count": 80, "duration": 83, "endDate": "1998-11-04T00:00:00Z", "itemId": "xOSMi0zPrnQIwsSt", "itemSku": "tstWVwIF5etcq3KI", "itemType": "2JH2WoeovruutiDi"}, {"count": 36, "duration": 14, "endDate": "1973-09-08T00:00:00Z", "itemId": "cwdpeAfJgkbzihgq", "itemSku": "7PsnvCPt3h3skWky", "itemType": "DfS2Oi7O0lkw3vd4"}], "name": "gA1JcBI6YwhD8993", "odds": 0.2792801744816725, "type": "REWARD_GROUP", "weight": 86}, {"lootBoxItems": [{"count": 29, "duration": 8, "endDate": "1971-01-31T00:00:00Z", "itemId": "WQYaW5kANbCr3V7j", "itemSku": "sormU9mklufwL0HN", "itemType": "RvzhIBg7TVmTvTze"}, {"count": 64, "duration": 52, "endDate": "1996-01-06T00:00:00Z", "itemId": "JGwH9g6gGXN6Xm6W", "itemSku": "HLC3ICHG4ZBDKUzT", "itemType": "95NpLOV4wyMtc1Bc"}, {"count": 82, "duration": 97, "endDate": "1982-01-10T00:00:00Z", "itemId": "PikeehNPMEUvNqZt", "itemSku": "EllIM21jH2OZ1AZj", "itemType": "VYQff6HiFCTlblhs"}], "name": "Iaak2qvGX3VMq2CS", "odds": 0.9423962057809335, "type": "REWARD_GROUP", "weight": 86}, {"lootBoxItems": [{"count": 72, "duration": 19, "endDate": "1979-09-07T00:00:00Z", "itemId": "xRqITr4RvNQx8YMO", "itemSku": "RdGh558yCTXFEsa8", "itemType": "lNfWQfPbUe0bs7Mt"}, {"count": 28, "duration": 22, "endDate": "1982-07-21T00:00:00Z", "itemId": "C24Ks6E1JBEhCMtT", "itemSku": "0nH5Kmb6D5A8CJSa", "itemType": "dQfYCTBrVgnegnCq"}, {"count": 71, "duration": 13, "endDate": "1990-07-10T00:00:00Z", "itemId": "Xpf427jLK8GJ28hx", "itemSku": "UZMZ7N0nzpPjVuzo", "itemType": "BviFM1LcXwr9uvWv"}], "name": "qqPN8XmDTm6CQwZs", "odds": 0.9495031420741541, "type": "REWARD_GROUP", "weight": 68}], "rollFunction": "DEFAULT"}, "maxCount": 84, "maxCountPerUser": 11, "name": "4B88GWLPSCfsKY3x", "namespace": "GecBrbNXSRBGGFrc", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 82, "endDate": "1996-04-05T00:00:00Z", "itemId": "PkakQ3W7xnGJ1eud", "itemSku": "Ua01iiGTptTfBece", "itemType": "y4B5uccgCaj6DwzQ"}, {"count": 88, "duration": 74, "endDate": "1992-01-10T00:00:00Z", "itemId": "iAn012bktbXf4toL", "itemSku": "QOAa8FPB8EDTmk6r", "itemType": "a1P7FJRB4zV8SH8Y"}, {"count": 91, "duration": 94, "endDate": "1979-08-08T00:00:00Z", "itemId": "zW7hpjFkrWBFekL2", "itemSku": "jiOc5I0KIde5RQmP", "itemType": "YiYvfE7OFbRQc2yc"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 76, "comparison": "is", "name": "CBpKqqDf6sZXVU99", "predicateType": "EntitlementPredicate", "value": "JOOSzYgyPuXjAeJ3", "values": ["pETu0emo0SkmGVg1", "L4WIB1WWzykp8WWa", "4vI4ybPE8HIMw1C2"]}, {"anyOf": 95, "comparison": "includes", "name": "uma1YQMYTo1tRHHd", "predicateType": "EntitlementPredicate", "value": "W4btYZ1BsgqK7JdV", "values": ["vpipFyaDM2qg2lfM", "ImdMDxjcxh95NeUK", "vlAfdJLr0pfpwhT8"]}, {"anyOf": 68, "comparison": "isGreaterThan", "name": "Zz2S93BLHGBCexiC", "predicateType": "SeasonTierPredicate", "value": "6lSJiHY3cVMD8Bv9", "values": ["1DM4rffWe3FYg2Op", "UlZIiu4TiTE0sORX", "L6gUowi8wilGETzR"]}]}, {"operator": "and", "predicates": [{"anyOf": 28, "comparison": "isNot", "name": "ftZJ6CU9rXkckDD9", "predicateType": "EntitlementPredicate", "value": "JY8JdF54BLGGGC0j", "values": ["EHjHTk5gLeaUm7ct", "VjdO3Ncc9KPeEe7c", "Pn9O4ls9gUnCLJIW"]}, {"anyOf": 84, "comparison": "is", "name": "aAPe8CkNJTQT2BnN", "predicateType": "EntitlementPredicate", "value": "VyNfR0rLFdJQt4KM", "values": ["SHARGdZ2Ir5e5pIU", "R7be3EhLoS6VRIjV", "S75Sa4ghAnxLUgff"]}, {"anyOf": 100, "comparison": "excludes", "name": "oBDsoGzArfKng49y", "predicateType": "SeasonTierPredicate", "value": "UbBKGWPfS3tv3v5W", "values": ["98nT9ohk7ruNURIt", "eV0KS3hJAWaojEQm", "eQG4E7zCw1QNmvsZ"]}]}, {"operator": "or", "predicates": [{"anyOf": 83, "comparison": "isGreaterThanOrEqual", "name": "ju1rr6GfKYfLSJYA", "predicateType": "SeasonTierPredicate", "value": "F9lUIO6gJywgZ6PR", "values": ["JkEBIkvCRkuiPZ8z", "GuDRK0YS1ucPbxHy", "jdNBe3fOj70OXv0f"]}, {"anyOf": 91, "comparison": "isGreaterThanOrEqual", "name": "KPgWuwADEmaCav0r", "predicateType": "SeasonPassPredicate", "value": "fmH3V1ZGp5fynkbC", "values": ["e5VbPKjvzsgwp5cF", "B0VHB1uHxEIxx8zR", "jczPgEmR1xMBRIYO"]}, {"anyOf": 83, "comparison": "is", "name": "2rWPAFXR8qw20oML", "predicateType": "EntitlementPredicate", "value": "CL9hRfzIoGhy06Yy", "values": ["SOF0BpidKiVxygWa", "OVxQUWe1lHrcIjsa", "zNvJqkaqg4FB7pRE"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 0, "fixedTrialCycles": 66, "graceDays": 42}, "region": "v5rQGJ9wx1LZtRnX", "regionData": [{"currencyCode": "Zq3mRThFVqbjLzaZ", "currencyNamespace": "XtWvOe7G0OuXMMK4", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1976-03-18T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1994-09-24T00:00:00Z", "discountedPrice": 85, "expireAt": "1992-02-17T00:00:00Z", "price": 36, "purchaseAt": "1978-10-23T00:00:00Z", "trialPrice": 97}, {"currencyCode": "nXSfeC7mHT7oux5K", "currencyNamespace": "h9uTL17pIedvjaGR", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1995-03-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1980-12-01T00:00:00Z", "discountedPrice": 49, "expireAt": "1976-01-29T00:00:00Z", "price": 86, "purchaseAt": "1983-12-05T00:00:00Z", "trialPrice": 75}, {"currencyCode": "PPt2GnjylzoT7zmN", "currencyNamespace": "B0joP5TFdZY1269U", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1997-01-07T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1996-04-28T00:00:00Z", "discountedPrice": 94, "expireAt": "1980-07-29T00:00:00Z", "price": 62, "purchaseAt": "1985-10-05T00:00:00Z", "trialPrice": 3}], "saleConfig": {"currencyCode": "tCjRJDOfDmLW8D7i", "price": 26}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "LtatUnj9enArHsW4", "stackable": true, "status": "ACTIVE", "tags": ["Cudt0JLvFPvMYeBJ", "94lMWbfHKGMjHWcm", "xHlHpVdaRvG9AX75"], "targetCurrencyCode": "6AXQEYyOcShZfjs9", "targetItemId": "r1AQb17J6l3YE3Pg", "targetNamespace": "Q2zk7xcFZ02x9CP2", "thumbnailUrl": "VbtHlwe2oLPTSldn", "title": "AKqOOBy4xrql6gzC", "updatedAt": "1975-11-24T00:00:00Z", "useCount": 98}, "namespace": "WpRsKE0ws9icuRRI", "order": {"currency": {"currencyCode": "rRBxcJy96ddWQkPI", "currencySymbol": "nQYEb6296kEFZQR0", "currencyType": "REAL", "decimals": 96, "namespace": "30ZaJLXmh7gzLSlX"}, "ext": {"D053HHypTqH7rTOV": {}, "MrSG5hhBlkkjy6Iw": {}, "qfszkUhn9awwNaBr": {}}, "free": true}, "source": "DLC"}, "script": "Xi1isWmkdfY23YYW", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id '5opBfL3hNPp23Fc3' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'jFg7SUh00iMmDlnY' \
    --body '{"grantDays": "YwBBX1aOywFwV3Zu"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'bm83jUSHjziNVCcM' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'AVI2P3u1eDjsH3GJ' \
    --body '{"grantDays": "CmsARlaHsVRq9yIZ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "HUR3DNjMTILnArl6", "dryRun": true, "fulfillmentUrl": "47SiHbdmr1L5udz2", "itemType": "LOOTBOX", "purchaseConditionUrl": "MBhqQjIztRjJRtnd"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'gRvvgPIyDJ0RR87F' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'wkrIBFT2TcncZrZ0' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'QM1ZLGj40pcJjxaP' \
    --body '{"clazz": "GNgSoIfC1yo5I15U", "dryRun": false, "fulfillmentUrl": "Mo15KoylOw9BhCDu", "purchaseConditionUrl": "ixgL3zVCVczEPzb3"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'MGlEDvNsoH9PUwLK' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name '5K684nnlX0hVUUTM' \
    --offset '15' \
    --tag 't6lrK3BgHesfGvO6' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DNM7gIvjINmgoA3a", "items": [{"extraSubscriptionDays": 57, "itemId": "rodrgLHyHzWgGnD6", "itemName": "N90uPT1aZwAD57kG", "quantity": 67}, {"extraSubscriptionDays": 71, "itemId": "6CFgjgrw1Ylbb4lL", "itemName": "B3fT5OGJvWgmQyTp", "quantity": 8}, {"extraSubscriptionDays": 15, "itemId": "FYwxDonRlzFwSmRc", "itemName": "k1y5v8zvZRsqbXO3", "quantity": 57}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 21, "maxRedeemCountPerCodePerUser": 52, "maxSaleCount": 70, "name": "bZKlfZVJMzNWj7Ni", "redeemEnd": "1981-04-03T00:00:00Z", "redeemStart": "1998-01-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["eXEP8BcnAT2bGuT4", "nLTr6JB9X4CccHrO", "qNw1TN2cszNdJhtI"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'JjDBGWmQSDGQIHrh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'BcbP5u6cPuT2OErq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SwgHCRxcY19WuYld", "items": [{"extraSubscriptionDays": 14, "itemId": "X3OjWuWlUZRNM84T", "itemName": "53znsW6xSV7fVsiV", "quantity": 14}, {"extraSubscriptionDays": 13, "itemId": "yDoIjouxOdz3w4ob", "itemName": "QVcGexO3sUsngTVW", "quantity": 48}, {"extraSubscriptionDays": 5, "itemId": "BTyX0bTVjPnR1Ohl", "itemName": "snHXgURX3D23qwzo", "quantity": 97}], "maxRedeemCountPerCampaignPerUser": 29, "maxRedeemCountPerCode": 66, "maxRedeemCountPerCodePerUser": 54, "maxSaleCount": 49, "name": "cZpZi4BtRIqmSz1d", "redeemEnd": "1985-06-10T00:00:00Z", "redeemStart": "1989-11-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["5b5rEKkqINQ3kxC5", "6lxuC4TmuM3WVQ39", "O1LRfrxO9u28EJTJ"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'mvmBapxlRl8ppu75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'rdcamdeA9sbTEPMl' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'C2vba3066DQWt7RQ' \
    --body '{"categoryPath": "CJV22yl1zaEPjzyB", "localizationDisplayNames": {"BvV229cUz455202b": "YLSSLlu92UbdZ68t", "Vtbob75zswVcOQI4": "DyQSaOE73xwwEzgQ", "gj052ZyLN46OuEMz": "KVXTfqi1ew6EIn9l"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'YlX1dloXMaJuNeog' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'Qy3s9Abm9SXVZlLi' \
    --namespace $AB_NAMESPACE \
    --storeId 'YFyhR4p51Mid9EhF' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'cALAbDi5WHTSKz2j' \
    --namespace $AB_NAMESPACE \
    --storeId 'oWYkcdbOI7udMLir' \
    --body '{"localizationDisplayNames": {"Do3p5PbL15LoMi74": "Sz2jf3d4YB5s2Bnl", "EHGnRGho9Uhel1yZ": "cNKpMY7BBXbjr60k", "dTxOjxydf8Yk9i7E": "FROUKwUJuv1BKZgM"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Sctjagh558MOsVJy' \
    --namespace $AB_NAMESPACE \
    --storeId '3tkxlQKlbw6GzSzb' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'ceNxtx2P89CPx1F1' \
    --namespace $AB_NAMESPACE \
    --storeId 'n2KINjMasHJ04w5f' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'jR3GZu1QAzCXp0tp' \
    --namespace $AB_NAMESPACE \
    --storeId 'YNF4XMSDc9IcjztP' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'nCWw8LtOs5ntm5sj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '36' \
    --code '3KoNua3n1vPf6mFu' \
    --limit '22' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId '0UZKJT8i03QntyNQ' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 25}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'a81QwwKniuWziIkR' \
    --namespace $AB_NAMESPACE \
    --batchNo '32' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'fQBalg2RVqdvYvqZ' \
    --namespace $AB_NAMESPACE \
    --batchNo '34' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'G84unO7i3jwnZLXo' \
    --namespace $AB_NAMESPACE \
    --batchNo '98' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'VpUXrkqyHYM3ZyWB' \
    --namespace $AB_NAMESPACE \
    --code 'ZJwegP61kMJQjklP' \
    --limit '78' \
    --offset '50' \
    --userId 'pNrOO2VeHI1LqQ7o' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'ObEm8RWdpkd1YWuX' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'W5X1O0zwsESxUxIf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'hDFstvk8D197oNBc' \
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
    --body '{"grpcServerAddress": "ZGRHaPo2kQwLLsAL"}' \
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
    --body '{"currencyCode": "MdvBb5XquO2cUAts", "currencySymbol": "W3jGnVlIHciV4Cj3", "currencyType": "VIRTUAL", "decimals": 53, "localizationDescriptions": {"SVfuXVcJ9KD9NAWj": "aBdwGxoyEpVJ9hUo", "5L5eqR4YPxLyiXXa": "nkUGf08vW8dem5Up", "qQGma5rEkObgWrCx": "9js7glwvHVzlkcJM"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'SA1dp9wi1a9nk0Cl' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"wMPonjPP1q8RMez3": "fL95gGKYuU0l7gIx", "qrUp7qCtsFBpJTgU": "HkqqcOLWhMBmd1NT", "0gXXzN8L9o0Nxd8c": "Iw7nBceoGyQ5HVpl"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'fTsUQyenloDlhjXZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'K5z7rHjpkXa8ksmr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '94c6Tv6SeTnbuVbC' \
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
    --body '{"data": [{"id": "GQAzO0K3JSBan9eA", "rewards": [{"currency": {"currencyCode": "LA8RkhrD0x9wCuyq", "namespace": "BnpsGj7YIq80i36e"}, "item": {"itemId": "U2UBarUPnOVW7BBV", "itemSku": "aKS5tDiUt7IixZe4", "itemType": "UTNsukqMsZHYV8Gj"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "Cpt7gFqnxUfyirFw", "namespace": "PozUtZSnoimR6tbz"}, "item": {"itemId": "7ggEaS0N01zkHW05", "itemSku": "HK2YBSe39sdELn7K", "itemType": "L8EWZy5UkO0GseWi"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "OGsc3zAya0EkXPMf", "namespace": "foBeFXLSGrR80rwG"}, "item": {"itemId": "Il9seVxiGzZRBpuj", "itemSku": "6ue9D6DwjdboEq1Y", "itemType": "llx0uDpL317VlNfg"}, "quantity": 39, "type": "CURRENCY"}]}, {"id": "0fIYmPwgVoA4hOev", "rewards": [{"currency": {"currencyCode": "Iu4RPQwulNvTbe4t", "namespace": "hh253UbGpnyzboQB"}, "item": {"itemId": "BJRx9vNQIFjT9TZV", "itemSku": "XJc8if4scWWcgjV2", "itemType": "PTDqPEA8dAQgJfPc"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "aKVgDzB1ZhukGLqj", "namespace": "ITO2xQmYrKAez8Ww"}, "item": {"itemId": "xRMMjmTD9P4ktDNf", "itemSku": "OEjQQZw6Er56VXnG", "itemType": "xv12eRpbzqLl7qAD"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "KWb4GeAvzQPeRPCY", "namespace": "2gVS91vI9pem8s73"}, "item": {"itemId": "rjw8bjeqtbmAOBwU", "itemSku": "nG714AGzUKLm6v4V", "itemType": "GDuVNwnf2ekaXm6G"}, "quantity": 63, "type": "CURRENCY"}]}, {"id": "o7YZkn3MzH2nrsSZ", "rewards": [{"currency": {"currencyCode": "msGHQVjUlSQ4V2SZ", "namespace": "bmjlWzhqCV1zvfk8"}, "item": {"itemId": "yQyHPDvLHaLcO9oc", "itemSku": "aALcwXewUnPkPUuC", "itemType": "E8qyuDjJWxKT6Ea4"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "aldWJ41h0RrwLR1o", "namespace": "Eykj78fGdguiUhGS"}, "item": {"itemId": "3pDoV86zRZq39wgm", "itemSku": "bqSnhsZjUyL2C7Cs", "itemType": "uP3ljeLQKKpF9sPY"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "MUUwiyKJ6nYcNneY", "namespace": "kUwogyqgAVUqcxBc"}, "item": {"itemId": "YX85mcI2847PJPpy", "itemSku": "hSHTQZ7zle2e5HFI", "itemType": "r2XuqTpbqUcMCxxt"}, "quantity": 73, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"HFOfrbmJaG748mBd": "iSEO9SaV9Knv1mI8", "m4ZVpuXsHkCtw7Jc": "rbr6WILicqHCopKd", "o596ENcJHJhQy4To": "CdkKo1clw9nAZMgT"}}, {"platform": "STEAM", "platformDlcIdMap": {"UBL2hMx0aU678RAo": "KOlBIlndPZzGlmzc", "Zi2ISxRZDPfhokcK": "NwRcIYUS2sY1hNx7", "q4MxrbpruqUeFUPx": "8l8loOJ2LJjAOIl7"}}, {"platform": "STEAM", "platformDlcIdMap": {"mjSs8KrwEvaA7qWu": "sj4MXQGZl1jMGfE4", "yPE2xpUsUV57ntBw": "33jrRAZbPfVUz5S5", "DBoV6po3XSSH3ZNR": "PSaO7vlILJxjvAiE"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'QwYkX8Bw3H1vIa3W' \
    --itemId '["h4VLnBOqDIZWZeTR", "64RGDLH8IoB5eyGb", "kvbjIIDat1ouTgUx"]' \
    --limit '14' \
    --offset '96' \
    --userId 'Odu72nT4JYrNlz4V' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["INr164lRCup5kspU", "oBMFhpLfMyJ8j1BN", "7NjCYw29UBjcoN9W"]' \
    --limit '50' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1993-12-17T00:00:00Z", "grantedCode": "viFBp02d2P9Bj7kv", "itemId": "posXSAi5QmGVIpit", "itemNamespace": "8shBLyjhyQnNXV5e", "language": "VVW", "quantity": 22, "region": "1197tlfbiBeNym4u", "source": "REFERRAL_BONUS", "startDate": "1972-10-30T00:00:00Z", "storeId": "wnPs3r8YhLTaeEi2"}, {"endDate": "1998-03-16T00:00:00Z", "grantedCode": "ekB7mRGzXAjUhrAu", "itemId": "pfeMCLrSZ0WbsvT0", "itemNamespace": "IQMzd9oTuh6KfOdT", "language": "XIj-Hajd", "quantity": 82, "region": "cfbSMqqMx4pCpViq", "source": "REWARD", "startDate": "1981-07-25T00:00:00Z", "storeId": "BbNh8zXEL5hTy5ej"}, {"endDate": "1983-09-30T00:00:00Z", "grantedCode": "N1SJH9gY5TWo6L41", "itemId": "tmMdhERXs77stpeQ", "itemNamespace": "gsPtEMMYUN9h7QnT", "language": "Exut", "quantity": 34, "region": "v4v6PsoCRR5SbF7D", "source": "IAP", "startDate": "1992-07-02T00:00:00Z", "storeId": "H7A6UVD3VDAJ5tYw"}], "userIds": ["xt046OdbHq62DyvW", "553y4wbemx9ndsWe", "D1DebszDpB6OuPiS"]}' \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["nRIGanP2GNxlfp0W", "StM0MKzd17ZbC2Dn", "3ejrEEEDRnP3qtTg"]' \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'WJ69QUsUWTpGjYh9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '6' \
    --status 'FAIL' \
    --userId 's1HsnCKlfIGJjP6k' \
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
    --body '{"bundleId": "HZ5evLxMbE2kaz1O", "password": "TpyDD8birwFJ6KFb"}' \
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
    --body '{"sandboxId": "VGDGbjEX0V97cM09"}' \
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
    --body '{"applicationName": "weWT2aElNxLWPcIE", "serviceAccountId": "Rcq184S5lQYohNJb"}' \
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
    --body '{"data": [{"itemIdentity": "c8nfEomq4Dq36Sxq", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"8tE2r53D4zpPApXB": "pBVU6IRb5DCfiaKF", "hhfERdfdKfbJkik9": "GDIKtK50x9lY6eBO", "w2GpZgXWBTa2bA0x": "YwiCixLLk8QWOaaD"}}, {"itemIdentity": "2JBqjILjD5e8pDp0", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"AfIYtlrvr3sT0wMh": "iHeJ0i3WTDQjoMXu", "ljweEhriOJVAYSpf": "NzCpkCRxugseIjmH", "0lCgVDVboChoUNQE": "FOa5z5q3nLzUHLdf"}}, {"itemIdentity": "9CS41xsPOVCiOkzu", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"gDC59IgPHzwZjiCE": "zpBdfm1NHRfXBGqu", "6p8XnKDopCQhAs4q": "Jqwm94d2vocobJRs", "bbnFiU1HLlx7ZlzE": "GpFwHpo2POgZld5v"}}]}' \
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
    --body '{"environment": "ufA8oDJ9XqQM6LIy"}' \
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
    --body '{"appId": "PijMdReeDH3IUMer", "publisherAuthenticationKey": "mWQWXjMpmCTnHgvA"}' \
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
    --body '{"clientId": "LQoPeKxodX3R1LHQ", "clientSecret": "i6296ALPtKASZZaR", "organizationId": "Lo9Y52cEMTp07GqM"}' \
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
    --body '{"relyingPartyCert": "14OTnlyPJj4t3SOL"}' \
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
    --password 'oQKdhg1eXsUTHKdC' \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'v3wyHDVzH0DrIzrR' \
    --itemId 'fE3j3C0JE2KlvYpQ' \
    --itemType 'EXTENSION' \
    --endTime 'fZwvZbTEgRcxqjJB' \
    --startTime 'O0LbNVTQcbuwN7gI' \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'c4351nQ3tlK90YOq' \
    --itemId 'vr1ZrpTqN0oCujD5' \
    --itemType 'LOOTBOX' \
    --endTime 'XV3fOS1RgqThY5pq' \
    --startTime 'o5FaLLdeh0egMKBY' \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'XkTQPOyVHVaORogi' \
    --body '{"categoryPath": "N7CIJ09AhlDCVzYs", "targetItemId": "BBp1SxZAjLzjo5hF", "targetNamespace": "gRUMJEtue9W00BEi"}' \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'wRLK1zo5W3C9qfQJ' \
    --body '{"appId": "lmB3NWdHsaTiEtwP", "appType": "DEMO", "baseAppId": "jdpvmmssFO0qJVoG", "boothName": "MLu09gcAyhJ62D7F", "categoryPath": "GSufyELB0R5LXtTp", "clazz": "NlUXpYnkozVcTgDd", "displayOrder": 61, "entitlementType": "CONSUMABLE", "ext": {"IKeWNhxKy9EPNK12": {}, "OF0QG4HGgNpe6JKB": {}, "2m5HLXfI2XLWWRN2": {}}, "features": ["37nBeIS2sTznairl", "dLLIbbOzZrkS2dWp", "d0BLszNAdVHEbSp8"], "images": [{"as": "wfIm5JcZRjrWB49N", "caption": "6kczI0PjGPRS8t4c", "height": 60, "imageUrl": "Ci0C5J6QwfwD4Fyp", "smallImageUrl": "Q2WJ3qiXWy3q08uy", "width": 46}, {"as": "gxop18xgm5NnL9MQ", "caption": "AoTT8Coun7eC62iQ", "height": 84, "imageUrl": "pyKkpUw8MOzI9EhS", "smallImageUrl": "Lc04ufrLM1Zo2Q8M", "width": 16}, {"as": "HT2AEETP8y3zef1N", "caption": "dMsNddgghyfnwIty", "height": 67, "imageUrl": "UMOLQAb2HIhdHGK2", "smallImageUrl": "5naFlZLppVt2nU8o", "width": 4}], "itemIds": ["iTyhBE9zBLJeH2dQ", "EW9i2Zpn2yGDLDRw", "OetGBC7LA4FNPKO0"], "itemQty": {"YYgO3mGhnqjuz1EM": 30, "qjkFNOEcRRvFFb3m": 89, "9EoKnTOmxiXv18sN": 8}, "itemType": "LOOTBOX", "listable": false, "localizations": {"eSeLphgEs7HS1UYL": {"description": "rslsfr0iHbb4zikZ", "localExt": {"w97kZQjeafbiGdgq": {}, "xHvFyeSAT8DnC3MS": {}, "2JzhQqFb8OLvBvfT": {}}, "longDescription": "zUoLrFhrIMw0aXWr", "title": "rRqg2vunQapRNCrk"}, "xWN2BFEttWhAGrPO": {"description": "33l8i9yl5LDdYU91", "localExt": {"DO18XiqAjImld06M": {}, "WDIE6tZXBbIyJy1Z": {}, "LBeGvZ4fTftWfXNa": {}}, "longDescription": "kA0Im8O63k1I6Upk", "title": "T223ez3FFJ5YUmEo"}, "A6kCmCFDZc7ulybd": {"description": "Xrfn11bZiHSe4OsV", "localExt": {"S4sfQONCcoev0Dxg": {}, "lRzaMYPoMary3OR0": {}, "kOUuVWDYRKOKnu7Q": {}}, "longDescription": "5JPNQkD3KsO1OXqV", "title": "hyGOwBWOVwaMUaWb"}}, "lootBoxConfig": {"rewardCount": 28, "rewards": [{"lootBoxItems": [{"count": 1, "duration": 96, "endDate": "1997-08-11T00:00:00Z", "itemId": "SkwSc4AblSXSVqJG", "itemSku": "osHP9NpJWZYL97KS", "itemType": "N8r0dnGK4Q4q86PS"}, {"count": 31, "duration": 63, "endDate": "1992-03-31T00:00:00Z", "itemId": "moSgdcJ4QG1pQgcg", "itemSku": "tbeDmuD5XqYisYs7", "itemType": "DmdVPHl01Q29pMnf"}, {"count": 5, "duration": 60, "endDate": "1975-10-07T00:00:00Z", "itemId": "fUNh0LQRe1nY2UgH", "itemSku": "ShdNLp3KFq78sSMk", "itemType": "tfT3YoGytuENtVwl"}], "name": "GiOvmyqCjWaBI5h5", "odds": 0.3566778026679963, "type": "REWARD", "weight": 21}, {"lootBoxItems": [{"count": 63, "duration": 71, "endDate": "1988-08-19T00:00:00Z", "itemId": "fTgE8T87dGUVUwRg", "itemSku": "iog2PSPsCaQy3SrJ", "itemType": "3SHyL5weA3UDq0C0"}, {"count": 74, "duration": 0, "endDate": "1989-10-06T00:00:00Z", "itemId": "ZLEO3OXdKBu9ADCL", "itemSku": "MLAya5FfKGvf0rM7", "itemType": "ppI8Lz8jbUZmhc8F"}, {"count": 93, "duration": 13, "endDate": "1978-10-12T00:00:00Z", "itemId": "qnG5iHKWTUI58xbw", "itemSku": "SsRLh9t5Sjj24W35", "itemType": "DK86RQVyA9rQxVps"}], "name": "2E2IGu0MOkL1W461", "odds": 0.7756231063393955, "type": "REWARD_GROUP", "weight": 54}, {"lootBoxItems": [{"count": 15, "duration": 89, "endDate": "1988-06-21T00:00:00Z", "itemId": "WKlMhNwWFiDCXn91", "itemSku": "GP5miyGu3lDrGmDS", "itemType": "lpDTOASjHvEgmVvi"}, {"count": 12, "duration": 72, "endDate": "1980-09-26T00:00:00Z", "itemId": "R7fCLFsLD9M2nJXU", "itemSku": "6rQMOuJC0CDOvOw3", "itemType": "EWk2v9XY1ExDrgtK"}, {"count": 90, "duration": 4, "endDate": "1982-09-28T00:00:00Z", "itemId": "ie7tGtWH2w1TZfTO", "itemSku": "1eX5OzYsTRepGOW6", "itemType": "ol1ENYmE8WW2iTf3"}], "name": "LhiMzBjbVtxhVutP", "odds": 0.1697166028140097, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 75, "maxCountPerUser": 90, "name": "vW98D5P1SLKVCdKZ", "optionBoxConfig": {"boxItems": [{"count": 2, "duration": 24, "endDate": "1994-04-14T00:00:00Z", "itemId": "2ggh28kvAm0egb9L", "itemSku": "TVTXdnhGvxY8TG0h", "itemType": "mOmvdFpwmBmbybyM"}, {"count": 77, "duration": 90, "endDate": "1986-02-02T00:00:00Z", "itemId": "MnRt9bccijFD8sZl", "itemSku": "aDxk8bAGUIBHyEmh", "itemType": "fGi17ScfulmNCKy2"}, {"count": 52, "duration": 67, "endDate": "1999-09-07T00:00:00Z", "itemId": "0n79YbPIMoSwHy9d", "itemSku": "mTWDrQYlMs8V1Zz1", "itemType": "EUUX5Y9JfEnMKSAV"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 91, "fixedTrialCycles": 47, "graceDays": 47}, "regionData": {"Bd4K375lt5ESYxH4": [{"currencyCode": "ff3uHd7YsWbqzcVq", "currencyNamespace": "eKcDjOjnksdbxO6B", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1971-07-13T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1972-11-10T00:00:00Z", "expireAt": "1984-05-11T00:00:00Z", "price": 31, "purchaseAt": "1984-06-04T00:00:00Z", "trialPrice": 12}, {"currencyCode": "8x39F85DtKtN4mi6", "currencyNamespace": "vXSMSYgH1dBiCjcZ", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1983-09-11T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1996-04-22T00:00:00Z", "expireAt": "1983-08-09T00:00:00Z", "price": 20, "purchaseAt": "1989-11-25T00:00:00Z", "trialPrice": 17}, {"currencyCode": "lUIlTvrnoGDnPBjb", "currencyNamespace": "LGPfexTv8rfVltaP", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1975-10-28T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1971-11-26T00:00:00Z", "expireAt": "1980-06-19T00:00:00Z", "price": 67, "purchaseAt": "1972-11-24T00:00:00Z", "trialPrice": 20}], "jXKY9ZJ7k7BDdBvZ": [{"currencyCode": "eokM99Bi2WgRUz74", "currencyNamespace": "Hq1LXmms2Ig97ZTS", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1999-02-01T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1992-09-16T00:00:00Z", "expireAt": "1995-12-03T00:00:00Z", "price": 11, "purchaseAt": "1985-04-09T00:00:00Z", "trialPrice": 78}, {"currencyCode": "iGa55LXHp6uhcYl8", "currencyNamespace": "VV7JocB2TdFnqXUx", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1980-08-19T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1979-07-23T00:00:00Z", "expireAt": "1974-11-14T00:00:00Z", "price": 80, "purchaseAt": "1986-11-29T00:00:00Z", "trialPrice": 86}, {"currencyCode": "NpsOrXRIWBgkLiPv", "currencyNamespace": "GRp6bxgT8tm8dx9f", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1977-10-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1987-09-21T00:00:00Z", "expireAt": "1986-09-06T00:00:00Z", "price": 5, "purchaseAt": "1982-09-27T00:00:00Z", "trialPrice": 2}], "PjRxdPNOzuP7kX0w": [{"currencyCode": "Hz3xtT9cOeVAcli3", "currencyNamespace": "S0GdlIrnLR4zirAV", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1981-09-28T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1981-04-26T00:00:00Z", "expireAt": "1971-03-05T00:00:00Z", "price": 53, "purchaseAt": "1999-06-10T00:00:00Z", "trialPrice": 8}, {"currencyCode": "hBjIS5Smechyk1h6", "currencyNamespace": "tn9Rea8yddRU5Cyd", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1994-06-25T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1979-07-22T00:00:00Z", "expireAt": "1994-04-06T00:00:00Z", "price": 0, "purchaseAt": "1990-06-12T00:00:00Z", "trialPrice": 15}, {"currencyCode": "GjPe5CrU9flYykTY", "currencyNamespace": "Cn70VoVqr5EXoNDw", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1996-03-02T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1990-12-21T00:00:00Z", "expireAt": "1988-10-09T00:00:00Z", "price": 48, "purchaseAt": "1978-03-01T00:00:00Z", "trialPrice": 87}]}, "saleConfig": {"currencyCode": "ROx4iKr2sPnqb9K1", "price": 24}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "67J7bRjErCm5Da22", "stackable": true, "status": "ACTIVE", "tags": ["UYqXxft6FNVS5SJ3", "oJLP61TBgbtismMK", "CHUciquHe2Gnlu3R"], "targetCurrencyCode": "Qq7yvkMorFvNCRs9", "targetNamespace": "94TZqjYJZYBmQxlE", "thumbnailUrl": "IxR2V02twPOLR5O0", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mSGn7eLWXP9zdua0' \
    --appId 'PhEKuqpCVLz4JW9C' \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate 'BUb7sUiVPx2jMMN6' \
    --baseAppId 'fZAYAIJtVzImPutF' \
    --categoryPath '2FFOg3kn52Qv8Wmk' \
    --features 'RRLlDXhYBNDYSjL2' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '55' \
    --offset '25' \
    --region 'srlHeag1NeNy1gjG' \
    --sortBy '["displayOrder:asc", "name:desc", "displayOrder:desc"]' \
    --storeId 'BeXleF8UbMxLO4Mx' \
    --tags 'b1RxHRJskP9lSVhQ' \
    --targetNamespace 'jvheXYYEW45juqDq' \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["mjd4FncZywlYrTIs", "5mYV2wDYgydl3LyK", "t4RCsFvukidb0VLS"]' \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'v80MEDfDqA9PAcc8' \
    --sku 'TRm4hNdZPPVcfJ3S' \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'K0LYBcQhcS11Fcaw' \
    --populateBundle 'true' \
    --region '66Pnlya7Mt2un19s' \
    --storeId 'SoqaqwzQjkC6ZO04' \
    --sku 'ZMcXxmABcfHBSohq' \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '3sfBnK6wJprepwxA' \
    --sku 'Sm9DOKOEKluDK2R7' \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["FfP5Z14N2stj2FjW", "OSZTD8IGPB2J6D70", "NBYWnzM4gfMiiWLO"]' \
    --storeId '6dKzPEaklGQBU9M6' \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'r5C1PNHYpNUsu0Fw' \
    --region 'jSp8JAerRLdunfne' \
    --storeId 'K5voGvAOSw4msUEz' \
    --itemIds 'yJx0dH8hsK7hzKs2' \
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
    --userId 'UgpQNL8MfEszCJpn' \
    --body '{"itemIds": ["fTc4adGkpwfgfuyz", "JmxjiYrGGwz3Wmtp", "w8uW8ZXM25OpilTU"]}' \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'uNQCHxq0uPcplY3T' \
    --body '{"changes": [{"itemIdentities": ["GRdCNVXfjTYgRd3v", "Io4TMWF8yZZZX5Zj", "XDTKhWFUI97xKocC"], "itemIdentityType": "ITEM_ID", "regionData": {"RsJhb26K0cfvvLUw": [{"currencyCode": "Czuorth2k8tSGt2J", "currencyNamespace": "7qond7Dl5Wombz2r", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1974-02-14T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1990-07-08T00:00:00Z", "discountedPrice": 56, "expireAt": "1974-10-11T00:00:00Z", "price": 40, "purchaseAt": "1991-04-04T00:00:00Z", "trialPrice": 20}, {"currencyCode": "H9s9OESeSIstjClR", "currencyNamespace": "gPRCP6xYwv4RUKqN", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1976-09-07T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1982-02-15T00:00:00Z", "discountedPrice": 21, "expireAt": "1998-05-14T00:00:00Z", "price": 76, "purchaseAt": "1980-03-12T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Zxka34PXGJ7lXnli", "currencyNamespace": "IHnNwLyQ3gniefSD", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1974-08-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1985-02-05T00:00:00Z", "discountedPrice": 15, "expireAt": "1989-06-27T00:00:00Z", "price": 26, "purchaseAt": "1991-12-24T00:00:00Z", "trialPrice": 22}], "pHbACmBW3qSncQVe": [{"currencyCode": "ykfXUw2xmBPYDxhh", "currencyNamespace": "XNDKWNYZ7DOT7QPb", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1973-07-22T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1987-10-06T00:00:00Z", "discountedPrice": 98, "expireAt": "1987-05-02T00:00:00Z", "price": 33, "purchaseAt": "1990-05-25T00:00:00Z", "trialPrice": 89}, {"currencyCode": "JGZQzkvYWGNfbvpy", "currencyNamespace": "ANp4g5TiUL12Xzmy", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1995-01-20T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1986-10-02T00:00:00Z", "discountedPrice": 3, "expireAt": "1986-11-30T00:00:00Z", "price": 54, "purchaseAt": "1994-01-31T00:00:00Z", "trialPrice": 59}, {"currencyCode": "2ybwCzCNbayspAvn", "currencyNamespace": "OJSxEgGlAh36vh08", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-07-30T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1979-06-14T00:00:00Z", "discountedPrice": 54, "expireAt": "1975-12-20T00:00:00Z", "price": 86, "purchaseAt": "1999-09-18T00:00:00Z", "trialPrice": 75}], "SCh1SzNrBpkY7VzW": [{"currencyCode": "cEZnvPmdW38CahQP", "currencyNamespace": "UMvZjuFVEeOUu5m3", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1992-06-21T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1991-11-24T00:00:00Z", "discountedPrice": 84, "expireAt": "1973-01-23T00:00:00Z", "price": 95, "purchaseAt": "1996-11-05T00:00:00Z", "trialPrice": 35}, {"currencyCode": "juC3pnwhxbScYo3H", "currencyNamespace": "a5wFOAg9EDdlzjB1", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1996-05-17T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1994-06-02T00:00:00Z", "discountedPrice": 46, "expireAt": "1974-12-18T00:00:00Z", "price": 30, "purchaseAt": "1997-03-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "g9tS0eh5C2tbikSK", "currencyNamespace": "MjGYr4xD6E54gqv0", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1979-07-04T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1982-09-05T00:00:00Z", "discountedPrice": 59, "expireAt": "1977-01-13T00:00:00Z", "price": 88, "purchaseAt": "1998-02-01T00:00:00Z", "trialPrice": 57}]}}, {"itemIdentities": ["jQp4ARqp5ZffVOxQ", "GSBYcyKN2NFC8ZYk", "cvlrCCPlehqejZJ7"], "itemIdentityType": "ITEM_SKU", "regionData": {"Yqy4AXGHQYU45QP4": [{"currencyCode": "yAwkaYfoi2C4Y7Fg", "currencyNamespace": "ZSeqgHdAvcxqtepp", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1999-08-26T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1982-12-03T00:00:00Z", "discountedPrice": 23, "expireAt": "1998-04-30T00:00:00Z", "price": 80, "purchaseAt": "1996-08-19T00:00:00Z", "trialPrice": 78}, {"currencyCode": "3IWeevD88ePsm7hc", "currencyNamespace": "ol4w4U4f6MRT1grA", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1978-07-04T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1974-06-10T00:00:00Z", "discountedPrice": 74, "expireAt": "1972-06-22T00:00:00Z", "price": 45, "purchaseAt": "1993-07-30T00:00:00Z", "trialPrice": 22}, {"currencyCode": "fXkocjYmgOs6q3xF", "currencyNamespace": "4R2GzvkGHSPAfom8", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1994-02-23T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1980-06-21T00:00:00Z", "discountedPrice": 50, "expireAt": "1979-03-18T00:00:00Z", "price": 35, "purchaseAt": "1978-10-06T00:00:00Z", "trialPrice": 12}], "IB2qcwBctZJC28ev": [{"currencyCode": "HvScWvbKJSKzUzAX", "currencyNamespace": "pNAzNntTYRSBAAvt", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1972-05-28T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1996-03-11T00:00:00Z", "discountedPrice": 94, "expireAt": "1974-05-05T00:00:00Z", "price": 7, "purchaseAt": "1997-01-25T00:00:00Z", "trialPrice": 41}, {"currencyCode": "MYP5mUT1AUGciwjC", "currencyNamespace": "4gIfpFoU0uaGfIlf", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1981-03-28T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1986-10-27T00:00:00Z", "discountedPrice": 79, "expireAt": "1995-12-03T00:00:00Z", "price": 22, "purchaseAt": "1997-03-06T00:00:00Z", "trialPrice": 100}, {"currencyCode": "hSNFjBrmUX1qjM8l", "currencyNamespace": "S9Zpu8kPIK4jb2bg", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1991-09-16T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1981-09-10T00:00:00Z", "discountedPrice": 68, "expireAt": "1990-03-27T00:00:00Z", "price": 31, "purchaseAt": "1997-01-18T00:00:00Z", "trialPrice": 12}], "5ceZdfAt3se1c8n7": [{"currencyCode": "uwdJmldUmhCgLkDo", "currencyNamespace": "W1dK971XgXzZXY6b", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1997-10-03T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1984-07-29T00:00:00Z", "discountedPrice": 58, "expireAt": "1981-04-30T00:00:00Z", "price": 24, "purchaseAt": "1987-04-05T00:00:00Z", "trialPrice": 8}, {"currencyCode": "jpFq0M5er8czGf3O", "currencyNamespace": "paHjJy0RpIje8Mwy", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1999-07-17T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1979-01-05T00:00:00Z", "discountedPrice": 43, "expireAt": "1996-11-23T00:00:00Z", "price": 86, "purchaseAt": "1976-03-21T00:00:00Z", "trialPrice": 36}, {"currencyCode": "rasPVNuWvAaXrFFK", "currencyNamespace": "hAH7dBDmAU5gwmij", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1987-06-22T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1971-08-01T00:00:00Z", "discountedPrice": 78, "expireAt": "1974-12-30T00:00:00Z", "price": 18, "purchaseAt": "1986-10-15T00:00:00Z", "trialPrice": 65}]}}, {"itemIdentities": ["lxeXk1xwLwQnlZyT", "UbqbBsBtDsFUnUB5", "iA2fnfCgAvWKuYjm"], "itemIdentityType": "ITEM_SKU", "regionData": {"GRY3vxK7inZTA1Gf": [{"currencyCode": "4krikKoI9x416PvV", "currencyNamespace": "O9yLF7HxAxymz0Ye", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1984-04-21T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1983-10-25T00:00:00Z", "discountedPrice": 42, "expireAt": "1977-04-09T00:00:00Z", "price": 24, "purchaseAt": "1983-09-12T00:00:00Z", "trialPrice": 24}, {"currencyCode": "Pdyq2eI7MsAo7B2E", "currencyNamespace": "y6sW2nlpNVpG1rWM", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1979-06-28T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1980-02-08T00:00:00Z", "discountedPrice": 37, "expireAt": "1975-07-13T00:00:00Z", "price": 8, "purchaseAt": "1992-08-20T00:00:00Z", "trialPrice": 9}, {"currencyCode": "LAT4gtwC9akmYyY1", "currencyNamespace": "7PUjTpPAJsV7g8RT", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1995-01-10T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1973-02-12T00:00:00Z", "discountedPrice": 35, "expireAt": "1985-06-22T00:00:00Z", "price": 49, "purchaseAt": "1996-06-27T00:00:00Z", "trialPrice": 91}], "BVYlrY6XJjBoPn03": [{"currencyCode": "jT51GP5FEbYD0G8y", "currencyNamespace": "ALQqtIHw81nKyh86", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1985-12-04T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1978-12-16T00:00:00Z", "discountedPrice": 84, "expireAt": "1995-09-21T00:00:00Z", "price": 9, "purchaseAt": "1989-11-17T00:00:00Z", "trialPrice": 41}, {"currencyCode": "5ORD6qsMXQLsAiLC", "currencyNamespace": "uaYdrqzYvmnNicHR", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1993-08-30T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1996-07-26T00:00:00Z", "discountedPrice": 100, "expireAt": "1974-01-10T00:00:00Z", "price": 6, "purchaseAt": "1972-09-07T00:00:00Z", "trialPrice": 83}, {"currencyCode": "8de0pO7vzX9bcdvt", "currencyNamespace": "0NpuQzCbQ4pECpSh", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1998-05-30T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1980-10-03T00:00:00Z", "discountedPrice": 97, "expireAt": "1999-03-24T00:00:00Z", "price": 96, "purchaseAt": "1972-07-24T00:00:00Z", "trialPrice": 51}], "LYOQAiNYQczVfKZm": [{"currencyCode": "1eieGCNK7eD1mzk6", "currencyNamespace": "Z1PpK6R3T59bsCOI", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1996-12-31T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1997-01-25T00:00:00Z", "discountedPrice": 88, "expireAt": "1993-02-25T00:00:00Z", "price": 49, "purchaseAt": "1972-12-03T00:00:00Z", "trialPrice": 88}, {"currencyCode": "HyTuRUIgJTS8B9xm", "currencyNamespace": "B3LtYLBoE0Wd0LTc", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1978-07-11T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1995-05-24T00:00:00Z", "discountedPrice": 27, "expireAt": "1979-10-17T00:00:00Z", "price": 78, "purchaseAt": "1996-06-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "l3WDc9Qg9dIEFe8s", "currencyNamespace": "MXomXDQAQkuvDv2U", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1976-08-12T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1981-09-02T00:00:00Z", "discountedPrice": 88, "expireAt": "1987-01-19T00:00:00Z", "price": 12, "purchaseAt": "1998-01-05T00:00:00Z", "trialPrice": 52}]}}]}' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'APP' \
    --limit '3' \
    --offset '37' \
    --sortBy 'JxTnbbFgDQLB4qQ8' \
    --storeId 'iWcYjtrUlzaYksa0' \
    --keyword 'aMODNl1BgLoB1q4P' \
    --language '0f8KzTXnuO2Wmikq' \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '50' \
    --offset '67' \
    --sortBy '["name:asc", "createdAt:asc"]' \
    --storeId 'wSQObyu4D7tgixJp' \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'lR0LXe4h1s09GU2K' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'CGv5zH3CjWJ4FMoy' \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '14U4GjHxo56HFE2I' \
    --namespace $AB_NAMESPACE \
    --storeId 'BJ2mKtVdCf0S9Qlm' \
    --body '{"appId": "KHmVXp3IEoS4xtpQ", "appType": "DEMO", "baseAppId": "ShbxJyb9SxYYRzFB", "boothName": "FRugFtYPizkPb49l", "categoryPath": "Yt88PQYCk15Mcjok", "clazz": "R8YXWpxbJdBWsY7z", "displayOrder": 25, "entitlementType": "DURABLE", "ext": {"I42RXOBupCPqo54s": {}, "IovxKxj4hb9368xo": {}, "WFhqKfEzeBJr2YZd": {}}, "features": ["TxnDwkVzURvyRW9m", "r5Zi2gBcg59P9kw9", "Cftx7Z56c4QnMIwx"], "images": [{"as": "91Vp0Ef0xEuMdxFY", "caption": "jSKfZtv80pnpVjvG", "height": 15, "imageUrl": "0ay1gM2ROoW7cOan", "smallImageUrl": "CJTkrIkGoEJx9Tgx", "width": 63}, {"as": "v6FHejTtJPNkSdt2", "caption": "xAAzCYT6qDao5IhZ", "height": 47, "imageUrl": "B27HSVcs5AAOrP4X", "smallImageUrl": "1vmj1vPqvzhxuTay", "width": 40}, {"as": "JoaLHiCcAdZTYuJS", "caption": "qH149zlXELU4Atkt", "height": 25, "imageUrl": "e2CoVZa9uB3Qqzkg", "smallImageUrl": "O4QThDEnM7qx9mSD", "width": 94}], "itemIds": ["EmrY8atvA7WQWH6x", "xWsy9O3yE47PAKBZ", "KRXE2fGX9CS56otB"], "itemQty": {"ns3vzdt0G2U3RAMf": 97, "D1XGGbrzGXJWtvPg": 27, "KI1FHzpaWeg8csO1": 13}, "itemType": "SEASON", "listable": false, "localizations": {"fc8V11bpL1KWGSkC": {"description": "X0695GNB2awESbLc", "localExt": {"OAvAUcd4F99fkSLT": {}, "Hk4zEleLdLYVhGcP": {}, "RIDQUZJKJIKMRgww": {}}, "longDescription": "sLnspqqmMHU62R0c", "title": "w5PxloHu3FeezkKE"}, "Qs8FfofqmuEiaBe5": {"description": "l2vJ9g2pHstUEESh", "localExt": {"zOBPunyHpNu4zM3Q": {}, "YeaHeE2MeJBuCyUx": {}, "AQmp2C8feASg6tGQ": {}}, "longDescription": "ddNmdJnFtWfwfest", "title": "5oqNhiQbYl5eX8Ky"}, "MZrpgIoD1QIf5vuh": {"description": "uo2W64nvL25PTbiR", "localExt": {"ya24A4lM51tKxmeJ": {}, "lvgmvwq04SE7s4ic": {}, "NIO9fi1RLYBVlTvy": {}}, "longDescription": "jaq0VaELQRn0vvC9", "title": "d0TJfkbJlL8HIhd4"}}, "lootBoxConfig": {"rewardCount": 7, "rewards": [{"lootBoxItems": [{"count": 20, "duration": 96, "endDate": "1993-09-12T00:00:00Z", "itemId": "Hf6WoWzK1gBV6SzH", "itemSku": "8TqfmpQuCh6rjcI8", "itemType": "SBkcvNvpT1iRk4gh"}, {"count": 6, "duration": 49, "endDate": "1972-07-18T00:00:00Z", "itemId": "yfVcrHLh93xw08aG", "itemSku": "YgOqQM5ReeVHunC3", "itemType": "Gaou03HttGHMPHxZ"}, {"count": 68, "duration": 29, "endDate": "1982-08-14T00:00:00Z", "itemId": "2S3I8HxruNVHRY1g", "itemSku": "XZdidsgrOoWKhNiC", "itemType": "Ky1u68M0qj8OrmD1"}], "name": "g6lDiQqhZ4RP7GWh", "odds": 0.9336331795684187, "type": "REWARD", "weight": 33}, {"lootBoxItems": [{"count": 9, "duration": 44, "endDate": "1988-07-03T00:00:00Z", "itemId": "wc9g5hVUKKdCBNn9", "itemSku": "MPGwdpkHx2DPgQiB", "itemType": "ahT1I2WowJHd5zmW"}, {"count": 60, "duration": 37, "endDate": "1975-09-05T00:00:00Z", "itemId": "JU7oJIj2eixlyyMT", "itemSku": "yUZ0RO6IjAVofNc8", "itemType": "zVlEqCScC5KxvMM9"}, {"count": 28, "duration": 9, "endDate": "1971-10-29T00:00:00Z", "itemId": "o1aenyrTqVL81MdB", "itemSku": "Y8qzpiMo3SRz4pdZ", "itemType": "lCqjjSW7Nn3pdx4h"}], "name": "b4hVl9l2xfNWBIdG", "odds": 0.20186619896649205, "type": "REWARD_GROUP", "weight": 89}, {"lootBoxItems": [{"count": 19, "duration": 78, "endDate": "1976-07-27T00:00:00Z", "itemId": "P328oC1ijgTIyD28", "itemSku": "tMdtwXGf4UWLGXwb", "itemType": "OapBMpIvKxV6kudt"}, {"count": 65, "duration": 74, "endDate": "1971-07-06T00:00:00Z", "itemId": "dtx2vQ0AfZkBYyvk", "itemSku": "NjOT0MVm6YfcP8rB", "itemType": "WT5wfjcNwtRFp0Ex"}, {"count": 9, "duration": 25, "endDate": "1984-09-21T00:00:00Z", "itemId": "3yR2r30MRkGh70St", "itemSku": "PuFNLALjQ3LsfFPe", "itemType": "o0xaRNMNuQLB2paF"}], "name": "MrybpKhHvcqmG5H0", "odds": 0.8534146317042184, "type": "PROBABILITY_GROUP", "weight": 48}], "rollFunction": "CUSTOM"}, "maxCount": 44, "maxCountPerUser": 72, "name": "J8xfBM5ggTHGvUEt", "optionBoxConfig": {"boxItems": [{"count": 11, "duration": 91, "endDate": "1989-03-16T00:00:00Z", "itemId": "pKfcrWomwtdj4rXD", "itemSku": "9gurLBBjHkQLLlSM", "itemType": "igZEmTRh45ZxstVO"}, {"count": 85, "duration": 7, "endDate": "1977-08-23T00:00:00Z", "itemId": "5WonJYBqDtknle4h", "itemSku": "RJrvcaFEdVp4ZUHn", "itemType": "NZbKXrbx5s9wE3pu"}, {"count": 56, "duration": 45, "endDate": "1980-02-11T00:00:00Z", "itemId": "9UQBIJACjQyGG1jg", "itemSku": "8HDxwXgIhs5j9AUA", "itemType": "eF89LS8hf0iZiFBM"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 19, "fixedTrialCycles": 11, "graceDays": 31}, "regionData": {"ZLLMMjJulninbErx": [{"currencyCode": "RQL91iXK1Ma22AY9", "currencyNamespace": "cKHyu0ZIqZeKABcQ", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1998-06-11T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1975-11-19T00:00:00Z", "expireAt": "1981-08-24T00:00:00Z", "price": 93, "purchaseAt": "1975-01-19T00:00:00Z", "trialPrice": 40}, {"currencyCode": "BUsbqoAVM8mnPAag", "currencyNamespace": "cV2dGpDVCkuTbQWx", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1973-09-05T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1986-04-28T00:00:00Z", "expireAt": "1977-02-25T00:00:00Z", "price": 20, "purchaseAt": "1986-12-03T00:00:00Z", "trialPrice": 61}, {"currencyCode": "wZ91t9e2esHGLzIH", "currencyNamespace": "IL1kwXOomwfENR7I", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1972-01-14T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1982-07-26T00:00:00Z", "expireAt": "1990-10-11T00:00:00Z", "price": 1, "purchaseAt": "1973-10-15T00:00:00Z", "trialPrice": 52}], "mndXOgWGr5RBUuea": [{"currencyCode": "NB6vNz1u9hniOPWd", "currencyNamespace": "iM7CsuSCfLVDH1aX", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1979-09-13T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1988-11-30T00:00:00Z", "expireAt": "1981-02-27T00:00:00Z", "price": 89, "purchaseAt": "1982-01-28T00:00:00Z", "trialPrice": 6}, {"currencyCode": "3cKqDE5zeWMZ8U77", "currencyNamespace": "VboJyqcn71MvvSJD", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1980-10-16T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1991-06-01T00:00:00Z", "expireAt": "1993-04-12T00:00:00Z", "price": 94, "purchaseAt": "1983-09-19T00:00:00Z", "trialPrice": 94}, {"currencyCode": "CDbCNu0Zjp7p1Yl7", "currencyNamespace": "lLNlNchRNfqfEj7y", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1987-01-13T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1978-07-05T00:00:00Z", "expireAt": "1976-09-20T00:00:00Z", "price": 83, "purchaseAt": "1996-06-14T00:00:00Z", "trialPrice": 87}], "b5U7PlqLCPvKMvnv": [{"currencyCode": "nvVd1Hi2CC6EjrR7", "currencyNamespace": "q5X0TuaqdXlClWwR", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1975-03-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1978-04-16T00:00:00Z", "expireAt": "1983-12-27T00:00:00Z", "price": 30, "purchaseAt": "1971-07-29T00:00:00Z", "trialPrice": 95}, {"currencyCode": "VAzgXaRYlf1Yggdq", "currencyNamespace": "MkaxD2CtDlKjP1Wp", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1979-06-07T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1996-06-04T00:00:00Z", "expireAt": "1996-10-04T00:00:00Z", "price": 80, "purchaseAt": "1977-08-18T00:00:00Z", "trialPrice": 41}, {"currencyCode": "fJXchDm4eVREwI3j", "currencyNamespace": "cdhVLJAQ33sPDGvv", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1991-03-23T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1995-06-08T00:00:00Z", "expireAt": "1977-08-31T00:00:00Z", "price": 30, "purchaseAt": "1974-11-14T00:00:00Z", "trialPrice": 51}]}, "saleConfig": {"currencyCode": "ZghOkBGXfgHwrEOV", "price": 77}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "nQ3ee20WbMP1L19b", "stackable": true, "status": "ACTIVE", "tags": ["oiCWd4mBzizLjKrz", "mA9LvSyUjN4P8UMd", "3IUvvooTQwfYHhTX"], "targetCurrencyCode": "phaekXUTCw4huqDD", "targetNamespace": "tJZCNk2mdAoMUrF6", "thumbnailUrl": "NEgm5pnJEMbaehan", "useCount": 11}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'eQxADjcf2mTXANyF' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'pjkK7d3H7YNRkDip' \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'mQR68kcULVwm13wP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 88, "orderNo": "GuZxnx3PlxFXn5nQ"}' \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'RRv8OLbBzfy3lG3o' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'OsLgjkh00tt9vOyU' \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'eEwOuVQGVUj3q2E4' \
    --namespace $AB_NAMESPACE \
    --storeId 'hEwIUfMZlqfg5R4B' \
    --body '{"carousel": [{"alt": "u6TwH23QUHZ0X5ZH", "previewUrl": "aeVEpgZuYQhi0Qo7", "thumbnailUrl": "SbPPqFmJoXZSLXdM", "type": "image", "url": "gW9s29Y5EwsoeQuZ", "videoSource": "vimeo"}, {"alt": "DQkYcKriEl0dpnkQ", "previewUrl": "fyw6JD3RLJODyvTN", "thumbnailUrl": "Vi0HUXKG0vGmEF3b", "type": "image", "url": "9fbZWXdFsgGFIKVy", "videoSource": "generic"}, {"alt": "zYUte5tWSMKQ4H9j", "previewUrl": "p29rYNKKdpMFsz8z", "thumbnailUrl": "Cn9j3fe0e0N8x4t0", "type": "image", "url": "MoCuTbaEZmJjQEaM", "videoSource": "vimeo"}], "developer": "hVHxFYn7ZpvAAKaR", "forumUrl": "CUE5x2dPVy9SOLYq", "genres": ["Sports", "RPG", "Adventure"], "localizations": {"hvAS4S1I1Iljo4Km": {"announcement": "a1g47xODZXbTWSGQ", "slogan": "nb8nqrjno2Z0hAMT"}, "PVPKqE60GDe6udsx": {"announcement": "WPOhn7Dn9D6HFemY", "slogan": "dMhSyloRBGG4O0cD"}, "jxvncL6ust6JvIDZ": {"announcement": "QiaVwLyuVttaYeHP", "slogan": "broo3m67IFd1vlQU"}}, "platformRequirements": {"uOoyBJk8ZWxjpYwx": [{"additionals": "Vta9yPv4jGh4To4A", "directXVersion": "wnn9CLFEJYyBnLX0", "diskSpace": "HhLB5Zqx8LdT5uzf", "graphics": "iKA05rEZ7MlZekh9", "label": "tWoirmNcc8rFQcjY", "osVersion": "kgxULeKYzohg8yBX", "processor": "8SX6gDcaBtB9iXnu", "ram": "tIfSQhJWEk5dstWZ", "soundCard": "EQYoKlSwduLU5zT1"}, {"additionals": "WpKJ60vYlDLjJ1sI", "directXVersion": "bwJrB9u0u79pPApI", "diskSpace": "Ghw62Uh8ZJ9vXwhq", "graphics": "h3larygNLV6erbbd", "label": "0B3qPtSS1v5zCsab", "osVersion": "UeayHEVbiuWFNFOY", "processor": "37ATof8b6Xi0FzvN", "ram": "sRKdueprqnmij6tS", "soundCard": "pT6MpDFwmisXXxvg"}, {"additionals": "ymSYNfF4o2UyYXUO", "directXVersion": "WmNz0ojSaN2ti9cP", "diskSpace": "MUtFzBZRj4bmXf6M", "graphics": "fYNFe2mqEtt0RFcI", "label": "tV81DSGIboze0pYy", "osVersion": "JYBZsQ8NBlPE81p9", "processor": "5i2lv1pi5o7ngEiG", "ram": "HhMYefHZ92RskM17", "soundCard": "8ormu9QTVuXQWW45"}], "IBl8beSjIPaWh85f": [{"additionals": "dhAf1VjHqggwM2Tf", "directXVersion": "lkl2jNaAxodEOdRZ", "diskSpace": "7i0lLJ96BBchdctA", "graphics": "36lYh7j6fiaGiCrj", "label": "v9uu7x4oNdfbI2oh", "osVersion": "U0T00DD2FNdJsLTK", "processor": "cy43lVeRJROm41Mh", "ram": "vp9ADs5YlhnnQ4EF", "soundCard": "hIWN1TYOgc0XmHhm"}, {"additionals": "s5fj8LjleGMUnBSy", "directXVersion": "JMDpk54L8AJOBCbC", "diskSpace": "tiJajDPVr1ruAa1m", "graphics": "tirWwHrIcj8kwgYR", "label": "0z37yoieiaMzAYEI", "osVersion": "MhgILYRh3yiTikuJ", "processor": "uS5q8eqzEFxHe20R", "ram": "EzNwM0UJGg3reT4p", "soundCard": "3xgTJW3XuMMRB4lr"}, {"additionals": "wO7wEGntH1efXvvG", "directXVersion": "oU3nUbEEyy4k8BfF", "diskSpace": "hu8eBkJumo0Ag0M6", "graphics": "lc5FXoFwLkloVhIq", "label": "Fhte7WgooEeHXtqa", "osVersion": "33kP3no4xhLH0L4T", "processor": "Z8PpMHW0NwhhgfY6", "ram": "ENQcUH7ahndicsCR", "soundCard": "oMKlPXhSSxb7wAvj"}], "E4jG8VOf2UtU6eLz": [{"additionals": "J2vH3U5DfIufgDmi", "directXVersion": "dRClEVGZXB6JwM7x", "diskSpace": "tUr27XIe12UMIzCS", "graphics": "XccMA3aGrccF6uK2", "label": "Bmj3V9zJjJsO90go", "osVersion": "7pbcNyBUfoGXq3Jf", "processor": "Ms0myr7BNVO9ClfM", "ram": "erwBsNhvouGhcLaU", "soundCard": "gS9sViWsTYjnR95n"}, {"additionals": "yjRekqfgFeQ0X4YC", "directXVersion": "h7DFPrRKejNCQU1q", "diskSpace": "IizhX2HcBWo8CoPj", "graphics": "olISLnO6IrQv2Vfu", "label": "1znkRA5eJwUOsg8J", "osVersion": "psZOVY5oFeNnD3Pa", "processor": "Q8kbdeMvWvc4gYhN", "ram": "JSZbf1IbaHIOzXP8", "soundCard": "5fSgTXRLWeoPIbc6"}, {"additionals": "dwr51k25lhbzDomZ", "directXVersion": "3i7r8tqeqtUu7uCF", "diskSpace": "y921mVQ4qiUSuE5p", "graphics": "jjeeQOWcFK4fbr9F", "label": "iZIbLp9UITCmoipE", "osVersion": "VFLnw0OTyvR2thzT", "processor": "8zUECysjAgdG6SFW", "ram": "ZghcH3SdhFx9srDo", "soundCard": "8seM7wRRYZ97vrmk"}]}, "platforms": ["IOS", "IOS", "Linux"], "players": ["Multi", "CrossPlatformMulti", "Single"], "primaryGenre": "Sports", "publisher": "kXeR8NaecaW8H1JF", "releaseDate": "1992-05-21T00:00:00Z", "websiteUrl": "iBtVBeY2G5tXWDBy"}' \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'ISdHMKTTCl227yV6' \
    --namespace $AB_NAMESPACE \
    --storeId 'PGSlxhAEa5oGkXSc' \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'yA9vQLmAOrnCnM1u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Jf2Wdf2jU0wrMBPR' \
    --namespace $AB_NAMESPACE \
    --storeId 'TvkyrlaMHmRUqHSS' \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature '8xt02gjZjf0zwk7e' \
    --itemId '4Waevj0YpI2RPFYo' \
    --namespace $AB_NAMESPACE \
    --storeId '1d7p2lyKc34ehDJZ' \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'BbfUc5OvcQ50MfEk' \
    --itemId 'hzkd4nKhmM41EmQ0' \
    --namespace $AB_NAMESPACE \
    --storeId 'oPDKlsZOzScVDvIH' \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '72VDGENoYYtQc07j' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'iIbaohmuftLc6MET' \
    --populateBundle 'true' \
    --region '1wtTwObMpjP3zcVx' \
    --storeId 'Ouc4bWSqWG7NZNiG' \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '6dHYRKqJfj6va0Bb' \
    --namespace $AB_NAMESPACE \
    --storeId '2UzLslhJSNbQPXEk' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 85, "comparison": "excludes", "name": "sCXNnKxqwfcDc0o3", "predicateType": "SeasonTierPredicate", "value": "ZKQlrgWppvVxjB9I", "values": ["NLEQt5AsHIe8cwmO", "EdL4nFxsIBd4yF5w", "VEOChp9fqlWzmKPI"]}, {"anyOf": 21, "comparison": "isGreaterThan", "name": "purmQiEfFZyonLVg", "predicateType": "SeasonTierPredicate", "value": "6qCu0UWksbqmwWi0", "values": ["Pin9Zh0g18EdRKfj", "T9FsmIsAvy9oPVmn", "ASuUq6i0hCQG7a9l"]}, {"anyOf": 68, "comparison": "isLessThan", "name": "9EWgbj1JRqbCXk61", "predicateType": "SeasonTierPredicate", "value": "NJ8bQhkUE4i357aI", "values": ["s7Sjwh9dBmMc7XS2", "W2ba4yN6ZALM4UFL", "TGZEPBwCa1IqSXNV"]}]}, {"operator": "or", "predicates": [{"anyOf": 75, "comparison": "isLessThan", "name": "0L8YzdQjiFHeY4eq", "predicateType": "SeasonTierPredicate", "value": "Zg6pJPWGslxQzJb4", "values": ["VXmm1QMh9gZrezpV", "VCrZ8fLxOMvq2TDW", "cIT9Rt3SnjRB1YOY"]}, {"anyOf": 36, "comparison": "is", "name": "CYL3lLloj1p4WOpN", "predicateType": "SeasonTierPredicate", "value": "GtINNM7U7gn0i1Y7", "values": ["YC9tweJrOlgBP0bV", "E7VaM93KkWrMA2Sk", "zm4fZVkwQiZzdc2R"]}, {"anyOf": 10, "comparison": "isNot", "name": "3lf4xuhXyjp1eqf7", "predicateType": "SeasonPassPredicate", "value": "yGFHQZHW1cYOySsw", "values": ["35PGwJAExiyiQrw2", "uC0AnZLa3tNvAIX8", "TEuZahisFiXWtwqT"]}]}, {"operator": "and", "predicates": [{"anyOf": 11, "comparison": "excludes", "name": "YlyaLG5jObPhIfSa", "predicateType": "EntitlementPredicate", "value": "XrTV2FZ1jDSh7Fvc", "values": ["NCYYtPf2bj7dBbC2", "BEre6Rz3nL33rid4", "8ebwNx9fqMRbJiBW"]}, {"anyOf": 56, "comparison": "isGreaterThan", "name": "irySTB5XIPO67nsd", "predicateType": "SeasonPassPredicate", "value": "qaICHSJBMQVHeUws", "values": ["k775n3AqWplZdTwI", "cxGsm10YUqpSFZh4", "iOMGOfWdgkwxVqpn"]}, {"anyOf": 84, "comparison": "includes", "name": "tDIjmWRjlzcgJrgR", "predicateType": "EntitlementPredicate", "value": "g4941TA2dN1CZJar", "values": ["ju6r8Tzw4xQsfNf8", "5V2CBdrtKgENbNlW", "bEpGxL2CEwmofdzv"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'PZzsfoG8wDVU7KoT' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "N7lypl9VuyxuxZGM"}' \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'UdRevU0S2o6PNBJF' \
    --offset '59' \
    --tag 'Lys2zh0Xkfeorq3J' \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ilgCtMIPkktEr1ou", "name": "4UVqTstz52tEhcDK", "status": "ACTIVE", "tags": ["XWGbEb9WleTP8qgT", "22kBXoAzOOzqUXQD", "bhAf6d2cC6MWuvDA"]}' \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'tQ9FLpvPxgiPAO0N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '8bJ6MfAeKGv63bxi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "A7EMRDcdzkREkaXV", "name": "bMQm3WYpSJwvQuXH", "status": "INACTIVE", "tags": ["yy0G9TcLHQFZJlkX", "lkEFFTN04fjpMGyU", "rd5WbGUNV9bQZjnn"]}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'qdoNk9IOUUaGlWba' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '5IIyuyql13rNJTh7' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '59' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'b5tvefu72B291GjX' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'hNoeCgnd64qMYCGd' \
    --limit '31' \
    --offset '75' \
    --orderNos '["kjjmR6PFG81qfZS1", "9CpbgDQqKzQBhGUG", "3lGggsl2czPTJBCL"]' \
    --sortBy 'O6rDEctsmKL4q1RR' \
    --startTime 'HqjX7cZHdn2rW2WW' \
    --status 'CHARGEBACK' \
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
    --orderNo 'VNe7omO1LKrvUCTJ' \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GiD6e0y0ySJCtQrj' \
    --body '{"description": "r9TFS6oAwTJltwDa"}' \
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
    --body '{"dryRun": true, "notifyUrl": "dw0BjBIPX7hav88p", "privateKey": "sSWuioei16C1uOgf"}' \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'szIVmDD31Lpd5gvX' \
    --externalId 'KeAQ0lMTlzdDvLlA' \
    --limit '94' \
    --notificationSource 'XSOLLA' \
    --notificationType 'oU20ToQrSEbEH7d9' \
    --offset '83' \
    --paymentOrderNo 'YyRXCZGOxAiks1YR' \
    --startDate 'FygCuunfhnGO6Ewr' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'GkILEqZYOAyRrqbk' \
    --limit '49' \
    --offset '65' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "1NVeEMPBAeVOVCav", "currencyNamespace": "1ox1hMlCcV7T7W6b", "customParameters": {"6nbtgkIJFrLAgrUS": {}, "ANP66lrT4Pj3vQql": {}, "9qvKxZLbyyphKTyd": {}}, "description": "tm524LjJJmSHp5sN", "extOrderNo": "ZCWXJkvtHDnop5SL", "extUserId": "xwmRqFLYbsM7qYke", "itemType": "OPTIONBOX", "language": "IIC_200", "metadata": {"IxAQDZsPnXr0vs4d": "hhDv4tvhHId2716N", "7GYVivjbhx2FIrzp": "OAkI44HmRnGHxQrd", "Jw1Gvl1lBOyz0vqA": "9yPOSwObYkcokSMr"}, "notifyUrl": "vKU9rdn29lrJeTta", "omitNotification": false, "platform": "t6TFe0sMsitNUit2", "price": 86, "recurringPaymentOrderNo": "NSHAsgoZmfICRrTw", "region": "jEue2YP3FCqk2Kgb", "returnUrl": "69yYZy7HJQQtCkme", "sandbox": true, "sku": "GLBALmiIplYLxLlm", "subscriptionId": "Fw1iYiMUdTyiZmTC", "targetNamespace": "9ZvNy2kgcxyI6q1t", "targetUserId": "sOjwiCyGkXkfKbIj", "title": "QZJom3R3bGCOZdJ9"}' \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'd3RKnhCwU2ikPYkW' \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OsEMSEQfXNIxZydc' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7Lz15otVCZfPjMky' \
    --body '{"extTxId": "XVy9tBKiUsPC9kX1", "paymentMethod": "MsEGXf5ozBWN9VXp", "paymentProvider": "ALIPAY"}' \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Ozc342gEOdbII9dB' \
    --body '{"description": "b7voc0pR6WnMeA9K"}' \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'c0pjDwPHYn4BKE11' \
    --body '{"amount": 81, "currencyCode": "3MODGBQFRA49dpvi", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 1, "vat": 82}' \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KGLCsgjppNpj8rRA' \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Playstation", "Playstation"]}' \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'BlMi0iftienTpEqP' \
    --limit '57' \
    --offset '62' \
    --source 'OTHER' \
    --startTime 'n8tVQwNooKfWGTGV' \
    --status 'FAIL' \
    --transactionId 'hIitJUycxdGqIsGv' \
    --userId 'hiPZpZYjJ9pmnIw9' \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DINO9uflsPfApMhI", "eventTopic": "GZXYmrx1Td3Pe2bg", "maxAwarded": 78, "maxAwardedPerUser": 4, "namespaceExpression": "LNRWljA0hKfG9bzW", "rewardCode": "MnMucqoRQwN0LlnQ", "rewardConditions": [{"condition": "7kevKyTwL8zviBs1", "conditionName": "82JkvbaAFoqczGaX", "eventName": "d5GPyrnKpqTKqD27", "rewardItems": [{"duration": 16, "endDate": "1991-01-31T00:00:00Z", "itemId": "s0UcH7LuG9uOhkWQ", "quantity": 65}, {"duration": 70, "endDate": "1993-06-12T00:00:00Z", "itemId": "T2gwknrXlB0JyXOH", "quantity": 59}, {"duration": 5, "endDate": "1999-02-07T00:00:00Z", "itemId": "DWASeMaKcvHj7f3Q", "quantity": 99}]}, {"condition": "pWf4iapyrLoNfaw2", "conditionName": "4SvuqXxEYamAd0I6", "eventName": "oHznlCgyN9z5qa7l", "rewardItems": [{"duration": 39, "endDate": "1995-08-15T00:00:00Z", "itemId": "3EBfTkQwnY2odu23", "quantity": 13}, {"duration": 21, "endDate": "1999-06-28T00:00:00Z", "itemId": "9fVWJBsgwe8qrUz6", "quantity": 64}, {"duration": 54, "endDate": "1979-04-20T00:00:00Z", "itemId": "7bFyVXZm1lv5rUht", "quantity": 64}]}, {"condition": "LdJZBMRgfYYAUoGr", "conditionName": "itopE6OeIHoK5k5P", "eventName": "SiSnuXrAWBcndaqy", "rewardItems": [{"duration": 70, "endDate": "1979-02-09T00:00:00Z", "itemId": "rX7VsEAztf3CerQD", "quantity": 67}, {"duration": 12, "endDate": "1983-01-27T00:00:00Z", "itemId": "xQi3ImryhpxXxcJJ", "quantity": 63}, {"duration": 52, "endDate": "1977-08-15T00:00:00Z", "itemId": "A1igI2VoZaGxPuKc", "quantity": 2}]}], "userIdExpression": "YZJk8p2d8CWGYgZ1"}' \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'inQfKDrZg8CxCbpN' \
    --limit '71' \
    --offset '11' \
    --sortBy '["namespace", "namespace:asc", "rewardCode"]' \
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
    --rewardId '42NLxESybOSxQPis' \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Uu8zDT2pQZV9yFOP' \
    --body '{"description": "3SEQwQTnUyJF5dOp", "eventTopic": "7OtPr7jVCHrlOQdF", "maxAwarded": 38, "maxAwardedPerUser": 25, "namespaceExpression": "2phFLw68wU7pGeAt", "rewardCode": "TaolEI4r620ivqUB", "rewardConditions": [{"condition": "KRlXkvyaEtyPdzjt", "conditionName": "OnlgkEB9WOuXQGy6", "eventName": "j0z6krin8AjaKLuu", "rewardItems": [{"duration": 42, "endDate": "1994-04-07T00:00:00Z", "itemId": "BfJ2u8VlIPgmHTzK", "quantity": 56}, {"duration": 8, "endDate": "1973-04-03T00:00:00Z", "itemId": "72g7jwoVuMj5gz6N", "quantity": 81}, {"duration": 69, "endDate": "1997-10-08T00:00:00Z", "itemId": "13cATK1eBDs4mz4D", "quantity": 71}]}, {"condition": "RPYyZ5PebItwggTr", "conditionName": "lc0Vo1buntQkOhQ1", "eventName": "loZ2l4UTcb1TN3jf", "rewardItems": [{"duration": 35, "endDate": "1976-04-18T00:00:00Z", "itemId": "rEuSXUhO82SPQeYh", "quantity": 64}, {"duration": 51, "endDate": "1986-05-05T00:00:00Z", "itemId": "Np5J9iQodIseaLam", "quantity": 43}, {"duration": 87, "endDate": "1973-10-10T00:00:00Z", "itemId": "5Gg7SQTrHVVXdHXw", "quantity": 53}]}, {"condition": "RKCadUSwq2n5o4ap", "conditionName": "WckSOn3lUCGU25nP", "eventName": "ZlXhPeE9ZAMBz351", "rewardItems": [{"duration": 19, "endDate": "1985-01-25T00:00:00Z", "itemId": "ZAWSLGu150J92l54", "quantity": 56}, {"duration": 10, "endDate": "1994-11-07T00:00:00Z", "itemId": "5aPoivTbGrxi9WQL", "quantity": 63}, {"duration": 92, "endDate": "1992-09-24T00:00:00Z", "itemId": "oPRDVbFLqJHFXI17", "quantity": 35}]}], "userIdExpression": "5yPbL2H0QylyhNDV"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Ay8hDOZ1wDACtEoc' \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'NeBVuzuv25m7xeGx' \
    --body '{"payload": {"BMp3FNhamwfPO1ak": {}, "q4FFYpl54d4SSkt5": {}, "uD95SYEcSbaMnUnz": {}}}' \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'GeeMMXqtF2ARRY4D' \
    --body '{"conditionName": "KDSgtxGODhKdoDEW", "userId": "cLmVv4JDtGsHKD9y"}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'JFAL1WVV5ovPsYX8' \
    --limit '53' \
    --offset '36' \
    --start 'nqa5rFxM6v1sZUBO' \
    --storeId 'YwZLTGfS1j2UC0Xj' \
    --viewId 'WwQLqDNmmzu0e4hw' \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'H63JPmJ0wKPrsNpK' \
    --body '{"active": false, "displayOrder": 11, "endDate": "1990-04-26T00:00:00Z", "ext": {"D0Enoz7ZvvB4qnM3": {}, "74bo02YDm2r9ezF0": {}, "j5jhWKQJPQSQoKp4": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 97, "itemCount": 42, "rule": "SEQUENCE"}, "items": [{"id": "foz1ltnCjijUOcn6", "sku": "hvkYpp7LLGenhCfU"}, {"id": "9tmIRW2924jFVVTP", "sku": "yh2q5fvEqV7P3fnc"}, {"id": "pzYyDWvnZ7FNuxsu", "sku": "vRr2I7T1awu47AFc"}], "localizations": {"iCdFS3kMqtOQXw2v": {"description": "1JKSo7JRSRwdOHSg", "localExt": {"idiTbICorZBVdYeN": {}, "sq3IxPEoRGeReEqM": {}, "tPyONCYPrwq0ELXJ": {}}, "longDescription": "1QXJdwJx65d9XGlW", "title": "jonVeaPtbI4KN1Yc"}, "3YcWkohvrVBzXwV3": {"description": "0l1IFxV4m3Q8zNXv", "localExt": {"7fQzdlLRfelbVhfN": {}, "lXQStTdBKmbs5sMK": {}, "LhJBf4YNIGS7H6on": {}}, "longDescription": "0gQZduavcbUy8ANw", "title": "lIeZgaNd4G9R2NpA"}, "WY4rRCNed3Oq3kuz": {"description": "RBuH1AxuFS3opUZg", "localExt": {"rX9YBNtHeSlKre9a": {}, "ETiti8J1Nag4KX0n": {}, "GPZIYqT1NxY6LLHu": {}}, "longDescription": "AJbSn5QfOY9Ymxlc", "title": "phcHpmHNOJhCgVqr"}}, "name": "J4ufvzCX9AGIkWPO", "rotationType": "CUSTOM", "startDate": "1984-06-18T00:00:00Z", "viewId": "OV7widDXEx2mw3wJ"}' \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'k8WDFE3RZqVrMueA' \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '8DfDlZ45AiwClOqJ' \
    --storeId 'u5uYzTPQ5laFuxS3' \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '5IwS0dsQWmk9DnB0' \
    --storeId 'AuMLSijmQMiW8jE6' \
    --body '{"active": true, "displayOrder": 56, "endDate": "1976-09-01T00:00:00Z", "ext": {"AL4vlhvCHmKQ2p72": {}, "P7j0U1t20pt8WRZj": {}, "RH3XgkISHijHeyk0": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 91, "itemCount": 91, "rule": "SEQUENCE"}, "items": [{"id": "wBCB6PraXfBKgcwB", "sku": "p814CdEAh6fSzYLj"}, {"id": "puzLpq3v3aVkBvYt", "sku": "5BGtgvkCtxj2l0Ez"}, {"id": "469rFaObOqnEyVSE", "sku": "v3keqL5Uy5Q7SCGV"}], "localizations": {"P8PThb5rrFeKtZj0": {"description": "tiG1wKfCRajZvXFd", "localExt": {"0ZSzaSnIBCS7a1fM": {}, "d0Ok1o6lAnZcO9Fz": {}, "hn8YG0XcXcxcXSp8": {}}, "longDescription": "uunGvPVJx6i1TCRf", "title": "0DBSW0hn1lW605Mu"}, "0SbvdivPdtZfGVqy": {"description": "9Ubu1Zh4VNzGxt7G", "localExt": {"gt7zGOnobyfj73xO": {}, "GQvoCxvYfgiSIec1": {}, "Pi04ZSIUJ7XqTdsU": {}}, "longDescription": "36Egh7H5j1UM3Dsn", "title": "OoNbPEBNAb2OP0cq"}, "undS0J3p7eioArU6": {"description": "TUB3pthbBauZqKZw", "localExt": {"epl4zl8whwczTDcS": {}, "wb1jafv09oILxDQW": {}, "bcYFRWvkQazcT8rV": {}}, "longDescription": "AKXBw78Kaq5fA1DA", "title": "dN36uip5QMFk4ock"}}, "name": "6xzVPOYVoHqNG81v", "rotationType": "FIXED_PERIOD", "startDate": "1984-05-19T00:00:00Z", "viewId": "MuowoHAX5MJtJa6p"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'WBu9fL9BUjyUUspm' \
    --storeId 'ggtwgJXPKYEDMQL6' \
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
    --body '{"defaultLanguage": "U81rGt4BPLk3zynL", "defaultRegion": "WiCsKe2pUpxJFicm", "description": "rMMWi4MpjY9Gk5g4", "supportedLanguages": ["xC6OBpnlOZ8heFQY", "6IZoPJ5KKp9VciS5", "ZJdvVmkOMWYVYE7A"], "supportedRegions": ["F1bpPMsNSb1eAJsS", "4emWbw5pylmY7Em4", "POFfkZOZue4fgu0G"], "title": "U2D74oNO20APaUEW"}' \
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
    --storeId 'DYpQTdawcWq8aDJb' \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '8DEGqaeElpgMHuu4' \
    --body '{"defaultLanguage": "S2xGLEqpH9fUpQ7w", "defaultRegion": "0UVXf8l0nXrQe16X", "description": "jxx5lrW4t1QVYs1J", "supportedLanguages": ["p5tpjS3sNbPAVoOL", "k17hAiZppBmvNEsy", "WzoPnIgqQthsOXfU"], "supportedRegions": ["Aw6QKxcSVKtBHId2", "VN3uzeYL1yV3hzNd", "R8nfDTcBObSEc5f5"], "title": "MHPmi2SozzMAFXLu"}' \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'iyUSK2ecYyAQpCU8' \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'fCpte9iXatUmRIp8' \
    --action 'UPDATE' \
    --itemSku 'vVYUBhLRa6nYF4Ia' \
    --itemType 'BUNDLE' \
    --limit '2' \
    --offset '95' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'bkITPLxVb4fkGMF3' \
    --updatedAtStart 'XOayUivREjC5vXYW' \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'MAFmyF78CiKMnO5I' \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'RwwsqaQmFiyfDZjY' \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '7KQlYG8eqmAphZzm' \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '1KkqqG1BD2UEcDWx' \
    --action 'DELETE' \
    --itemSku '6NYCCFcoxADXydaR' \
    --itemType 'EXTENSION' \
    --type 'CATEGORY' \
    --updatedAtEnd '41pO2f014ueLy7js' \
    --updatedAtStart 'kTpUZ9au6XXVKmSJ' \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '0hzqmugdeoLipQ95' \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'a82oWAJjeGRBRq3a' \
    --namespace $AB_NAMESPACE \
    --storeId 'Zh9krY6ffsoOrRg8' \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '7QzwhkBMqwpGbFb2' \
    --namespace $AB_NAMESPACE \
    --storeId '7qAnEdfrtX6DqNX8' \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'mRP1OH0Ng8Vu9wNx' \
    --targetStoreId 'v90uRHO5kS7Mt3Dw' \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'NEVER' \
    --itemId 'xpRSzRtALQHAxxwE' \
    --limit '23' \
    --offset '72' \
    --sku 'jacdIJgNWEhmbSSE' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId '8hizBdLRRSeCVCyT' \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'q1Gcu6nODZraF2Bo' \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'vQM3QML3AAmfiRIK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'QkBUeGP1LqNxKJwl' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ONWZilA3fTosq52I"}' \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'aiQmdfXj777WaFBY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'VDicq8QwZ6Qr0mu6' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 40, "orderNo": "OlMRYee2zjwKJg2M"}' \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hcAxl3zoZiPAGiFt' \
    --body '{"achievements": [{"id": "EXhhyRfc3PKJ9OAJ", "value": 93}, {"id": "6bXNYJJp31s0hwFF", "value": 97}, {"id": "9awUuoQrEDlWI2Gr", "value": 63}], "steamUserId": "beCZIXqVCDNlaiPp"}' \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '4TBjxQgoiJGO5CIW' \
    --xboxUserId 'SmUcqJt88yOhXyTh' \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'oujwcjRuZSb06tcm' \
    --body '{"achievements": [{"id": "Ix7RqoCJMPBV4y6p", "value": 44}, {"id": "gJS9BDRNyv05HQZN", "value": 34}, {"id": "5FCDn22OVN68z43x", "value": 37}], "serviceConfigId": "nPeENbk7OL3UwbLq", "titleId": "i2VRr0eV9oS7LGGc", "xboxUserId": "nAt0JN4AlG8PUHdS"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '6dPoDj6ZeCCH97mX' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'sPzasvaymFmkWOm2' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'tNaclwvTtrEk0uYT' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'akd5hg8e42SfiRHB' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'FgyiGBrkixTePBHJ' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'uhBV7ESrhVhDOVQY' \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'Lj8M5GWp9gxsjt0a' \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'aORhSOBlaSOxri8B' \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'WtNOmRj14NQO3YwH' \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'RsCzhUFS8yubeeU5' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'cFo9ED9M4Um89fpx' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SUiRVkzEtDezy49q' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName '3ljKOaB7SFMKgHrO' \
    --features '["oHG6AQ9fZvcJHTIH", "t0La4Uu7Xbwg2N8Z", "VEQh9jnLEndyrUSv"]' \
    --itemId '["AuIdSTeDAQTT03VY", "lrYK1W4vUogkNepS", "asEtzqVpKtMBao9E"]' \
    --limit '70' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'h2jyJ51DAs5omadh' \
    --body '[{"endDate": "1977-11-02T00:00:00Z", "grantedCode": "o1ZrHndmhf6bzQq2", "itemId": "qLdnbpKFMCRirTCs", "itemNamespace": "9VIXgSsezY1o2PRE", "language": "Cl", "quantity": 64, "region": "1wzim0AqGnGHqEk8", "source": "PURCHASE", "startDate": "1996-02-26T00:00:00Z", "storeId": "DFyw4VeU89s9v4cK"}, {"endDate": "1991-02-21T00:00:00Z", "grantedCode": "ikdFaiofwf7OCLft", "itemId": "uuhlFlkoL6dbu2KQ", "itemNamespace": "PorELNMNhwEeIWXP", "language": "XoQ", "quantity": 8, "region": "Kr1vBHcNoWdabHLH", "source": "REFERRAL_BONUS", "startDate": "1988-11-23T00:00:00Z", "storeId": "wvTMKPJVrD3G0yMp"}, {"endDate": "1996-05-09T00:00:00Z", "grantedCode": "LPaYnzSW3zjyWi9D", "itemId": "ThUyYjH8cxfTcL3j", "itemNamespace": "OP17T5tHJHevvYY4", "language": "VpbY-ICib-735", "quantity": 21, "region": "pz2XFKhWXhONdoNN", "source": "REWARD", "startDate": "1994-10-20T00:00:00Z", "storeId": "fhdolQ9Dx4SbcDA2"}]' \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'JWBAHvuITDtjeG6T' \
    --activeOnly 'false' \
    --appId 'hvfYUfguzibUwB61' \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'mi8ZAXjeubZhGdbw' \
    --activeOnly 'true' \
    --limit '33' \
    --offset '45' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'sLs4yc3FbL2CBgMm' \
    --activeOnly 'true' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'sjJW3OrtiiGiB2w3' \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4jQ8RaL3n2UJUZ1n' \
    --ids '["bBKWEonBhgB2hyjz", "pDxQvQG5VlfR2vxg", "mGSUg5Eyl4OFTe4Q"]' \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Nw0REf017Of9KNdi' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --sku 'rMrCl3oTiAntLee3' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'k05zNrhCLpN2w78F' \
    --appIds '["VwE3x7X0HNE20ZVc", "rdwYzff0fEoH6c2T", "cFoLAqlcU7WbASWX"]' \
    --itemIds '["BGchJk5WMEGvvkkt", "YuEL82UApJdMJxQS", "yF0HKpeCqLDWatEO"]' \
    --skus '["oi1jVYsJZbz0OFhF", "hATaMYzPCEFOOqCV", "EennEGkFJCC9pmfl"]' \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'LeXAuJTQp1JDn9sh' \
    --itemIds '["5iX8yc4ShtetyZQK", "eZTV5wIyEKk4YrAz", "CRWrddBadeLxrafl"]' \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dumuLp2vaNj16oAg' \
    --appId 'CeBjHTTMdZpgJEfu' \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'M8bS1aMza0G47wWH' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'NiNhpEBzfZKyNSZp' \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'BiRvMYCXPdZWYuP5' \
    --ids '["8HR9UsUt1BATJIrq", "ZJmhFSvyVtf4AvNr", "FqkwX0pHwOWACt7p"]' \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'eUzz1BrOWati6iaq' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'Ix5FfFyyOgwTYQoF' \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'POPLryl3tGZqm575' \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'xdDlAZ6xPdPTDx0o' \
    --entitlementIds 'JLyisQcn5GE88WjK' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'rmjXDDjDyQEWbZDM' \
    --namespace $AB_NAMESPACE \
    --userId 'S2G3HFaPiV4m2Jsd' \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'AYsXqDrS8a9scSLh' \
    --namespace $AB_NAMESPACE \
    --userId '7jGqBkJ6xiNBIduS' \
    --body '{"endDate": "1971-12-18T00:00:00Z", "nullFieldList": ["u13eIaKW71A2VHV7", "NSN2jeN3UX060dNs", "BSnmeafHaKgnsr81"], "startDate": "1996-06-05T00:00:00Z", "status": "CONSUMED", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '7OneANjhHcpQTOKT' \
    --namespace $AB_NAMESPACE \
    --userId 'bmVqTqwXgoQPJIGQ' \
    --body '{"options": ["WvoH9P6U8Vum7j9N", "cXXoDgFylnk8auk6", "KJwohvqnSFmCtjyo"], "requestId": "95q9Cr5DAHWd2sw6", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'x4dWPk2vqS4IE6fC' \
    --namespace $AB_NAMESPACE \
    --userId 'Qd6UBK5RRUm5F7SE' \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'SPTXDcsTLjhw71YS' \
    --namespace $AB_NAMESPACE \
    --userId '9sWYd3doFCERGbY9' \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'pys0fu08MORtOS9A' \
    --namespace $AB_NAMESPACE \
    --userId 'Xc0HBuvRtU97k9kh' \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'T8hcZ27RFUbFUSNk' \
    --namespace $AB_NAMESPACE \
    --userId 'UulciJJdmhQBeb02' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'HO0svCCg8rqxun11' \
    --namespace $AB_NAMESPACE \
    --userId 'zNM85hwfQcDuRB8S' \
    --body '{"reason": "k4qdOJlgVeUBHuvO", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'L18OyqISKSUFi258' \
    --namespace $AB_NAMESPACE \
    --userId '5yO47AAKAeDjFik8' \
    --body '{"requestId": "DbhHD9asNipojIDe", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Jz2pELuE6vILlNg4' \
    --body '{"duration": 21, "endDate": "1992-08-16T00:00:00Z", "itemId": "qZSlJ18IsNnlZAYe", "itemSku": "HCEPKfL8YVRcRUnQ", "language": "r0TDgL7Ll3VCbKh8", "order": {"currency": {"currencyCode": "9P8X3SS5Ot3rGe8w", "currencySymbol": "LRjSYUv1hQKz4RfD", "currencyType": "VIRTUAL", "decimals": 17, "namespace": "gNjlA6uci6ZLM0OK"}, "ext": {"TKshkHggrQrll5cx": {}, "eKeF7wbeaOFVeLoC": {}, "5DgK22sXyiTtEYaC": {}}, "free": false}, "orderNo": "chpDg4UtpRuePloj", "origin": "Nintendo", "quantity": 49, "region": "rTACMeV8ror5l0L0", "source": "PURCHASE", "startDate": "1977-12-18T00:00:00Z", "storeId": "zyPH71yWARdsJcZl"}' \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId '2ftdOzoZuf8R81SJ' \
    --body '{"code": "A3KLLqP2HvOw5dUV", "language": "sh-zGsg-wz", "region": "tNH4LjRRSDBUkcP1"}' \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '1Aid6JJDSwipP4kw' \
    --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "FaNMkheTzg2kqXIB", "namespace": "h5TgpK9TrIDqBvBm"}, "item": {"itemId": "g4e39U0kSb2vKDyF", "itemSku": "OmGwuk0r6AFE1d54", "itemType": "qrdfq9GAFIZ2MpfD"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "sfgISEP83ovyq2ei", "namespace": "eIFbEEGaMZEFltsZ"}, "item": {"itemId": "U12A21TqmG5Ybp3P", "itemSku": "HLEoTeCizVc1AtsK", "itemType": "clq5ZQHXUuLqRCH4"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "EP4pV85fhOIN1cF2", "namespace": "RKx1yhD8UJVMIt6P"}, "item": {"itemId": "1mo6GqrRStczg8En", "itemSku": "rP7yDsAVcH6Fb4Eb", "itemType": "fuzJblOhvI86Zqjs"}, "quantity": 63, "type": "ITEM"}], "source": "PROMOTION"}' \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5qhqKhMHQcS3NMTF' \
    --endTime '91arBFRJxOvn7xXm' \
    --limit '52' \
    --offset '6' \
    --productId 'wg9Z9eaRkTkK6LDO' \
    --startTime 'bQxmGQ0oDX9UBFRG' \
    --status 'FAILED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'iHZaViY7WMiN2WYb' \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'AYyl3rer65mIw0Kj' \
    --endTime 'xu7sEHVdKIpBrrzj' \
    --limit '96' \
    --offset '55' \
    --startTime 'cM7W39f3L4YGm9nO' \
    --status 'PENDING' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '4QxcHfbFsDChP2gH' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "HL_MVtU-814", "productId": "Akf4YAQdLF8D83Vp", "region": "XDzJkdeQkHcsG0d2", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'QLsO1KSwP8i1vyQc' \
    --itemId 'X3KguLgTaKgOqLpK' \
    --limit '42' \
    --offset '34' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'KqKlHaCyVjUP0fU8' \
    --body '{"currencyCode": "SHYqfwED7EOPa8z1", "currencyNamespace": "6EIOC3AK9xTFnmYK", "discountedPrice": 70, "ext": {"T4qbnyhNK8j7PnAH": {}, "wFnBHRJp2iMlYKtP": {}, "hAVzOSWNE8o8zD7G": {}}, "itemId": "yFG1AbO2mIUAGkO2", "language": "JF20HnCwthZRUFJC", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 16, "quantity": 58, "region": "QWTMMo5cIcduuv9T", "returnUrl": "1aapeCVfx28pVAvC", "sandbox": false, "sectionId": "sXKBGC82AWWKFmXZ"}' \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'nBsud1DM1mnpRH8a' \
    --itemId 'fr0K0zgSW6zphzHG' \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '2A41KKA2n0irKJU6' \
    --userId 'IxSRxmURqUZvgUxy' \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'uOJPBXDazeOzWuCy' \
    --userId 'ZonFSYRIcZlDEiVy' \
    --body '{"status": "CHARGED", "statusReason": "WEikM2eMTK6hG1RK"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0nt4Q7UbAGKlxX6r' \
    --userId 'vhDTVZmAsT7LpYyv' \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'PjgWVuOBEqGzCggl' \
    --userId 'aDZJjQx3lEsOEQmi' \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'xeR2K1OOuXcgF7Wf' \
    --userId 'w3Hg3v2Gtg4ROahM' \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'J7ZdSUCq2HZm3V0l' \
    --userId 'B6Ih6rhl4tDHlz1u' \
    --body '{"additionalData": {"cardSummary": "dlzrlAyp33VoCsdx"}, "authorisedTime": "1996-12-31T00:00:00Z", "chargebackReversedTime": "1987-08-17T00:00:00Z", "chargebackTime": "1985-10-17T00:00:00Z", "chargedTime": "1995-12-13T00:00:00Z", "createdTime": "1993-03-02T00:00:00Z", "currency": {"currencyCode": "MbgLYnfKCrYLAOyr", "currencySymbol": "HXXPAKWJrxJ5Tg7U", "currencyType": "REAL", "decimals": 10, "namespace": "KopyiA7jHczwOKOs"}, "customParameters": {"y0ngqzZn8CRpvVLD": {}, "7MZ5E2k7NnvWjg4k": {}, "g4uwGxOZki0FA4PD": {}}, "extOrderNo": "pHlMK4i0N2BG4yEV", "extTxId": "NXdqCOMmyDkmrbWR", "extUserId": "p1oAsUuITshYeo2x", "issuedAt": "1974-05-08T00:00:00Z", "metadata": {"kQ8CK8jk0lGA5DAN": "y4Lai9v3fgtRBN9j", "mQZix01HhQ4uQw8a": "tHSdRfOeZDzsyM38", "bqOZpFxgjayYubQd": "3Gp09klrUkSkKqLb"}, "namespace": "0CX5CeJjWaQjwiqB", "nonceStr": "MhVKlymfCD8AHbTo", "paymentMethod": "fqdTtz6xJ4xVgvWf", "paymentMethodFee": 73, "paymentOrderNo": "4Efm5xEQwJJtCAai", "paymentProvider": "ADYEN", "paymentProviderFee": 0, "paymentStationUrl": "kPt85xDFiaemvNrb", "price": 58, "refundedTime": "1998-03-15T00:00:00Z", "salesTax": 17, "sandbox": true, "sku": "FLUCj1RhTEf0IzXx", "status": "CHARGEBACK_REVERSED", "statusReason": "xG5ReltoKRC905QL", "subscriptionId": "puKxn0m9HuURlsKh", "subtotalPrice": 38, "targetNamespace": "zmYgS8Y1IAOgNRAC", "targetUserId": "LhUTadQHguyAwncN", "tax": 89, "totalPrice": 14, "totalTax": 90, "txEndTime": "1980-07-02T00:00:00Z", "type": "FvxTv4yPsu9EUA21", "userId": "TgxaFPdEEPhu4e9a", "vat": 46}' \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '69g4IKyfON3QJywB' \
    --userId 'Wdgn3e8dfPxVBhkL' \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'J10Ti6ruqFwZ0top' \
    --body '{"currencyCode": "0dhfO4UlVXUe3zjd", "currencyNamespace": "xR2GgPmNBPccegrX", "customParameters": {"XGWCUZEaf9t73V0F": {}, "2UkdmPJNOgtztb5I": {}, "LYrTUmLA2eOImbev": {}}, "description": "utlr9OpfWJmC6U5Z", "extOrderNo": "iwszF71NbPi2VxYS", "extUserId": "EaUfggJuNON4oyLT", "itemType": "MEDIA", "language": "bcOj", "metadata": {"gdPkNEiPZS425p6L": "O0jBWSaME1f6MlL0", "NFu4B52IP55DO5Zy": "JM3EkaoF18JXZz3x", "vtEjvF6b53DwA4wy": "K4fObS4a4MZaxc3j"}, "notifyUrl": "gV95p2top8Q82xno", "omitNotification": true, "platform": "1sMS3NmCqOSrESmK", "price": 91, "recurringPaymentOrderNo": "FHa7ToB43mB4DzZg", "region": "xaZu8Xg99OycnQjU", "returnUrl": "F34Wki1D0RIbFBR3", "sandbox": false, "sku": "bBrCsrJ9q7Hz8wf4", "subscriptionId": "EOIfHLT73Kcqd25N", "title": "0WIJQ7ak9NC3FrLK"}' \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'a3kf4hkkPOIaJrHA' \
    --userId 'fRzUCpjOfp5bgeg0' \
    --body '{"description": "MZMtp92WQKt3gnIe"}' \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '5CaL7gDZQaKXWTWt' \
    --body '{"code": "q2htd55vweToPaVN", "orderNo": "qAR8HhpGFr4kYMEs"}' \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'MyfcYXXq1qa642do' \
    --body '{"meta": {"pPM4XmbehwLfHVOB": {}, "VuhERbkjZNXuWtiS": {}, "xvl5iChSTk4L1thj": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "MH6J3nIhQ6TB4TMG", "namespace": "5Pw9ZXQ9rCqCiVmb"}, "entitlement": {"entitlementId": "MPCLFJPaS84loXZ6"}, "item": {"itemIdentity": "Dehn5CViVPPJTJkL", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 19, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "6iY2JTYBbEz7SKYF", "namespace": "LJE8ZVUylUrnqZp5"}, "entitlement": {"entitlementId": "Ir2qguRDNyy6iNMf"}, "item": {"itemIdentity": "U6JezNRkJinPeA4G", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 38, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "8H9PMSOamIpngfwa", "namespace": "O1Jd07LKiyaOXVsV"}, "entitlement": {"entitlementId": "NbyXLcSVmw060vHe"}, "item": {"itemIdentity": "qJmfJMPThgC78s6K", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 57, "type": "ITEM"}], "source": "DLC", "transactionId": "5XCjK0D6KSzBbDem"}' \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'cHEHT1CD4tYPhgNR' \
    --body '{"gameSessionId": "r4oQNfPdvsCBGv69", "payload": {"pKptF0NqdaEcxYWS": {}, "sm35qANzAIN7ifhK": {}, "R4jQ0dEGsZyFZdzy": {}}, "scid": "zGgOSZoFfQINu9Mt", "sessionTemplateName": "PAD83B1tcSVqIEVg"}' \
    > test.out 2>&1
eval_tap $? 244 'RegisterXblSessions' test.out

#- 245 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '5CzLItyvxOaK9Bdw' \
    --chargeStatus 'SETUP' \
    --itemId 'GpHiT3ypWniv1zoY' \
    --limit '100' \
    --offset '42' \
    --sku 'Yk5pfVdJn4LQj6DQ' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserSubscriptions' test.out

#- 246 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Dl3qnOCagoOr0dxD' \
    --excludeSystem 'true' \
    --limit '1' \
    --offset '20' \
    --subscriptionId 'JYbs1KCRcICohHtS' \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionActivities' test.out

#- 247 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'M1XG7upavECR2NFn' \
    --body '{"grantDays": 21, "itemId": "zt8CWLn0f1L5zODZ", "language": "rgBT3WnAj23Na10A", "reason": "MzOnrCfPyKru8SJJ", "region": "Mxkx6V15QMBuHw4F", "source": "0q7siBBQZatHDeJk"}' \
    > test.out 2>&1
eval_tap $? 247 'PlatformSubscribeSubscription' test.out

#- 248 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'RycOpTFA6UU1CXt4' \
    --itemId 'WVe2AifWND6cYPRl' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 249 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JxQ6rIsUMtyHiM2c' \
    --userId 'RtG7nPKwzZyEoLnH' \
    > test.out 2>&1
eval_tap $? 249 'GetUserSubscription' test.out

#- 250 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JgpcR2Gd7ygsN8DM' \
    --userId '9olEYS2Llr94yEd5' \
    > test.out 2>&1
eval_tap $? 250 'DeleteUserSubscription' test.out

#- 251 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'giGvH8i9T5c81Sip' \
    --userId '9qbuJp8sAVcU7Zzu' \
    --force 'false' \
    --body '{"immediate": true, "reason": "p8sLnfKLVxk61sOh"}' \
    > test.out 2>&1
eval_tap $? 251 'CancelSubscription' test.out

#- 252 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CUPwWbAkZr6mPJYO' \
    --userId 'oNrT2ZjvZHhUZofC' \
    --body '{"grantDays": 89, "reason": "THG4PqSoD89yHetm"}' \
    > test.out 2>&1
eval_tap $? 252 'GrantDaysToSubscription' test.out

#- 253 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Nk1vuerc6kOjpO12' \
    --userId 'YQ7FMiNrgQ2EGkIe' \
    --excludeFree 'true' \
    --limit '10' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 253 'GetUserSubscriptionBillingHistories' test.out

#- 254 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ci73CefuIUsPSIY4' \
    --userId 'svbDhUvU9fGWp9Kp' \
    --body '{"additionalData": {"cardSummary": "7N1gygL1xirwwfIP"}, "authorisedTime": "1988-01-03T00:00:00Z", "chargebackReversedTime": "1979-12-07T00:00:00Z", "chargebackTime": "1984-10-30T00:00:00Z", "chargedTime": "1986-08-20T00:00:00Z", "createdTime": "1976-08-07T00:00:00Z", "currency": {"currencyCode": "kNsgDGb77IQAnPwv", "currencySymbol": "N2P4ibr0L0CiMTC1", "currencyType": "VIRTUAL", "decimals": 92, "namespace": "zSC2bP2ulx8OL7ZI"}, "customParameters": {"0aVBGtqFSXo9dxrp": {}, "IY2LhbcgPe6QgsJm": {}, "9wVpSK3lEyTAucDO": {}}, "extOrderNo": "Sg0JHnZGA7DkSaiz", "extTxId": "bNcjcbcBwvLS5KWK", "extUserId": "3SwmuNv8dFwn7KOU", "issuedAt": "1994-11-11T00:00:00Z", "metadata": {"EYL8ASh7VQDpNZQp": "a41KHqtP6mM5aOIV", "jBq4rnf7psrA2ZOC": "rTLPqX9LvOrzT1J1", "1JXao46LMPwepLZH": "fzt1olgLcccYiqoS"}, "namespace": "Xn5IQGYHrB8qyjLw", "nonceStr": "jAuUBWMwIIwPl9fu", "paymentMethod": "rLiYe2tKRRzLhqGC", "paymentMethodFee": 49, "paymentOrderNo": "yAoNazgFNIPfdJBn", "paymentProvider": "CHECKOUT", "paymentProviderFee": 24, "paymentStationUrl": "lvjZFQH8Qlew2LPA", "price": 0, "refundedTime": "1997-01-11T00:00:00Z", "salesTax": 8, "sandbox": false, "sku": "6ufRaE4GULevSYky", "status": "AUTHORISED", "statusReason": "iMuxHD6EVjBc7tf0", "subscriptionId": "IZhOVCWl6d4r3A7P", "subtotalPrice": 42, "targetNamespace": "4x66FNtuVMvGFSAy", "targetUserId": "4pRVuUUirUjPtXag", "tax": 53, "totalPrice": 10, "totalTax": 62, "txEndTime": "1984-05-15T00:00:00Z", "type": "AM9KwMaIRIK5rlgC", "userId": "PkE01nQgDDunhOnM", "vat": 45}' \
    > test.out 2>&1
eval_tap $? 254 'ProcessUserSubscriptionNotification' test.out

#- 255 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '5oVHt4nZV1ch30wr' \
    --namespace $AB_NAMESPACE \
    --userId 'VeHczordTh99KPpr' \
    --body '{"count": 4, "orderNo": "JlKtvMHa8QfhObi8"}' \
    > test.out 2>&1
eval_tap $? 255 'AcquireUserTicket' test.out

#- 256 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '1ykVpyp6yJgb6sqD' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserCurrencyWallets' test.out

#- 257 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'xlysTWaBEGdHcG2Z' \
    --namespace $AB_NAMESPACE \
    --userId 'lOXXm8xGqzJ9tZNF' \
    --body '{"allowOverdraft": true, "amount": 98, "balanceOrigin": "System", "reason": "xfRektYmpa7YZo7u"}' \
    > test.out 2>&1
eval_tap $? 257 'DebitUserWalletByCurrencyCode' test.out

#- 258 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'vt05mMOVDir3gNbP' \
    --namespace $AB_NAMESPACE \
    --userId 'HQBA2gIVSM2qXBoA' \
    --limit '9' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 258 'ListUserCurrencyTransactions' test.out

#- 259 CheckWallet
eval_tap 0 259 'CheckWallet # SKIP deprecated' test.out

#- 260 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'zryTvci167igWrom' \
    --namespace $AB_NAMESPACE \
    --userId 'oXzthxrtk25XABlx' \
    --body '{"amount": 8, "expireAt": "1989-12-02T00:00:00Z", "origin": "GooglePlay", "reason": "FUSGEVB3UTJ7Da4k", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 260 'CreditUserWallet' test.out

#- 261 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '4rb2UwsnPkl3gZqY' \
    --namespace $AB_NAMESPACE \
    --userId '3ymiyrDUnpm5DZgO' \
    --body '{"amount": 49, "walletPlatform": "GooglePlay"}' \
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
    --storeId '6IHdI8sg7L3jIdBe' \
    > test.out 2>&1
eval_tap $? 267 'ListViews' test.out

#- 268 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'CBIzeZUvvkkl8VMP' \
    --body '{"displayOrder": 0, "localizations": {"p5aGB71FHrg87Yle": {"description": "5fO3p0XxL0TdOM54", "localExt": {"YkJdIxgNuMaqyrzm": {}, "ijxwRePqqJvdo0Jw": {}, "falP2qktedF8fBgJ": {}}, "longDescription": "PsAiR6chWIrWVFBs", "title": "UgKmcSIHME7fR9eA"}, "7h2QBAz1uW8RsKQ8": {"description": "z0rayq2tELWlH2Ei", "localExt": {"WKifGi7teoH3oGJC": {}, "0JYOhA8KgvHGJcJ8": {}, "suQLUSZKR6Hli1ti": {}}, "longDescription": "Q0OLuIALkBE1UIvx", "title": "VewRLTcVoSVjfJ1L"}, "AdGRmlpLGoFpTN0w": {"description": "4SM4gv3nUg7sYcc7", "localExt": {"gfPcru65kc47RoDn": {}, "AO5QBTmw56tNXPFm": {}, "ziAbliUrkYNcxPdw": {}}, "longDescription": "VsEPQCF49bzM0tMD", "title": "Yvqxe6GSSfN9Q3JM"}}, "name": "gvGEW7Jg4sUS60r5"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateView' test.out

#- 269 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'hYa9jQXy66GNYKPq' \
    --storeId 'F86Z556fveqlGkWM' \
    > test.out 2>&1
eval_tap $? 269 'GetView' test.out

#- 270 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId '3oZWfb0hZhM8xt8L' \
    --storeId 'zLeLsBSFqE4YBHaM' \
    --body '{"displayOrder": 25, "localizations": {"Tp5998yXZ4zsxl0b": {"description": "dEvFxgnxuyIMULkP", "localExt": {"ql0nJtf2xW19twpM": {}, "r2s7IB9hwsN6wGUP": {}, "O6WHSXlDHAMNYKTX": {}}, "longDescription": "YjONAxk6WRWbNJVN", "title": "eciWEqMMa8VJRdwo"}, "CXfDbMMxGJ9MltNj": {"description": "SJn6SEFu5iYLIvRs", "localExt": {"vviveHMmFgMFpfN3": {}, "KtQW9DyJvWu91M1H": {}, "SgtFhUWt1J90TDOd": {}}, "longDescription": "xsi7F2G3Q7fM4zsz", "title": "Wvz6Vds5ax6yUjrm"}, "Z5F4NxsnNs1f0rf1": {"description": "XdUF7nc0aJ9vletQ", "localExt": {"eyMJJyVACWp7rbM0": {}, "ghc3I4b53PlHxjAN": {}, "9tS2Zgu5XMn12Rwo": {}}, "longDescription": "E2Vbck6iCBrk3eJg", "title": "JvqgLvbQXWrbMQRM"}}, "name": "bCCdXeDN7891by2y"}' \
    > test.out 2>&1
eval_tap $? 270 'UpdateView' test.out

#- 271 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'RkiN20ufVpCIMmgf' \
    --storeId 'IduJdY0pT2itsb85' \
    > test.out 2>&1
eval_tap $? 271 'DeleteView' test.out

#- 272 QueryWallets
eval_tap 0 272 'QueryWallets # SKIP deprecated' test.out

#- 273 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 72, "expireAt": "1975-12-15T00:00:00Z", "origin": "Playstation", "reason": "QZC4ezXYS4pI07kj", "source": "PURCHASE"}, "currencyCode": "zCIow8jTw8H2MnoL", "userIds": ["ppvgvPEiP9VkfkoJ", "DpfLsv8eKG7nuBHH", "FaKqg74eqgdOqIJr"]}, {"creditRequest": {"amount": 60, "expireAt": "1971-12-30T00:00:00Z", "origin": "GooglePlay", "reason": "O1jVBKIcCsVHSgt2", "source": "REWARD"}, "currencyCode": "iz8SrOWFGxVXe0Uy", "userIds": ["fg75vIUcT9xvWpGN", "LFz5zvae4NVCoHVf", "tvWeJfzuM7gxSstL"]}, {"creditRequest": {"amount": 29, "expireAt": "1973-11-04T00:00:00Z", "origin": "Epic", "reason": "V2r6pHUo36ls47DE", "source": "REWARD"}, "currencyCode": "cPb0BCCvoRxvdoeT", "userIds": ["U69rBkBxuDhxWrZP", "BqL6QcU9MBbD8Eaz", "80MSL5w63cOMhuFe"]}]' \
    > test.out 2>&1
eval_tap $? 273 'BulkCredit' test.out

#- 274 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "94lyp44hug2YjvKZ", "request": {"allowOverdraft": true, "amount": 71, "balanceOrigin": "Xbox", "reason": "5J29UYAyvJq6xGtV"}, "userIds": ["YN90G2C4IYZoXMjp", "LAM98dZ6h1BRMof0", "vL0Z5AgGFOJX66GN"]}, {"currencyCode": "bnop28qPt6Lfe1kW", "request": {"allowOverdraft": true, "amount": 22, "balanceOrigin": "Steam", "reason": "KJDiJIjKhsmdK2JC"}, "userIds": ["kGSt2mcluLap1hkl", "LS0Vcj3xnU3yMC8j", "3uPhgJLp1IcX5qGu"]}, {"currencyCode": "2QDzeleNSMj3AhGB", "request": {"allowOverdraft": false, "amount": 56, "balanceOrigin": "Other", "reason": "qYxHLU34cMs1aeua"}, "userIds": ["J6uTP8QRL8Hrvstv", "P78aMkFvfGoiWsQn", "3eQTJbTgaIdtBxaH"]}]' \
    > test.out 2>&1
eval_tap $? 274 'BulkDebit' test.out

#- 275 GetWallet
eval_tap 0 275 'GetWallet # SKIP deprecated' test.out

#- 276 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '8cj8YC9hToKoArta' \
    --end 'jBT5cpAy0CEWP2ET' \
    --start 'bjt43ifGXp0rk85T' \
    > test.out 2>&1
eval_tap $? 276 'SyncOrders' test.out

#- 277 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["Me92D8d5zQPX5Jvz", "L4Owi8l5mEQFY5bm", "WMpKmXdAGjjEUJ92"], "apiKey": "H6CzP8Qk1qWyoFM6", "authoriseAsCapture": true, "blockedPaymentMethods": ["A9uNSwfA1ZZ6uITc", "sVAfrMKPRwjVYxJY", "TXvmerRGlA5DlNdo"], "clientKey": "99XbQ0ekC3IGSafP", "dropInSettings": "EzmPcNzkeiJdirEI", "liveEndpointUrlPrefix": "M3jnvnLbsK9NsL8M", "merchantAccount": "UNd1iDbaIbaUiBN5", "notificationHmacKey": "1EPsXMttXjgk7pZe", "notificationPassword": "V2ZzbHpXdYesWwou", "notificationUsername": "w6HDiDB6f4rChq4K", "returnUrl": "pbz8baFmkv3zbYHY", "settings": "bpnnXSAa59Z12URp"}' \
    > test.out 2>&1
eval_tap $? 277 'TestAdyenConfig' test.out

#- 278 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "SD5X7yNg1CIPw0dY", "privateKey": "oZLMw61iwoY3R9MW", "publicKey": "iR1OSsAR68TUTH8o", "returnUrl": "R3Nq9EotfTDdhEgz"}' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfig' test.out

#- 279 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "uidVk0L1bbPWqD3L", "secretKey": "F2Wh7eZGW4LxD0so"}' \
    > test.out 2>&1
eval_tap $? 279 'TestCheckoutConfig' test.out

#- 280 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'cLjmLAwJUfW28e1A' \
    --region '2aWLmf2lqU4xZEJ8' \
    > test.out 2>&1
eval_tap $? 280 'DebugMatchedPaymentMerchantConfig' test.out

#- 281 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "R0Vr3uPcpbP6JllJ", "clientSecret": "YlJ2DR9ut1F35LSj", "returnUrl": "KbrWJFymj6bMqo0B", "webHookId": "5KOWnIDrvj0GnIhI"}' \
    > test.out 2>&1
eval_tap $? 281 'TestPayPalConfig' test.out

#- 282 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["a9q9mAEc4JEFD7QH", "szHAYp2Wih1arCr4", "G7kHQjc9Qlsrycxv"], "publishableKey": "nq1ndake4R6UKEJ7", "secretKey": "ZhT82ULD9RA2DBgj", "webhookSecret": "UMxplLVBxkvwcIbJ"}' \
    > test.out 2>&1
eval_tap $? 282 'TestStripeConfig' test.out

#- 283 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "6RgpfruLqoMX8hUq", "key": "OnVeyBfzu1RYejkK", "mchid": "NaF6L86VEIlYEtAQ", "returnUrl": "WJ72fqJfFUJMEbQ9"}' \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfig' test.out

#- 284 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "SD1QdIOZGtr2PyEP", "flowCompletionUrl": "VGGO2jKqIreYLasY", "merchantId": 13, "projectId": 66, "projectSecretKey": "b54q8FJU4BycdA9r"}' \
    > test.out 2>&1
eval_tap $? 284 'TestXsollaConfig' test.out

#- 285 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'KMuITcednFptyesY' \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentMerchantConfig' test.out

#- 286 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'phLR9M8d9CPGDPrH' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["aIjTHPQfoFJUP8lm", "3bbZGZjfKMgZa14B", "KKUqOH1DnPrZjDcy"], "apiKey": "CYB8Ynga9ZU06sli", "authoriseAsCapture": true, "blockedPaymentMethods": ["dzJQOXebDdt7dYvM", "qoG7XkMpTmptLwtW", "cihfdOp4LLseWCzs"], "clientKey": "rNK3vscJDfwRFqgK", "dropInSettings": "zwYSanubyzm2li4N", "liveEndpointUrlPrefix": "Bx5wqFYAMpiMbT4b", "merchantAccount": "f4W2jbngFSXWdyvb", "notificationHmacKey": "GSSJHGDqsuXJ5E9x", "notificationPassword": "G5vGv5udV4aNncq0", "notificationUsername": "dv7SnWmknAYlj3Hs", "returnUrl": "q8emAYc9GhZIs0n6", "settings": "TQ3bgyly4xtaB7Cp"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateAdyenConfig' test.out

#- 287 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'wUmAP2oGTFmy9bQt' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 287 'TestAdyenConfigById' test.out

#- 288 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '92CO7bn13CAn1TjJ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "0MpZyAwZQeQyIZUG", "privateKey": "e4cecwub65ArJcgd", "publicKey": "BsB8BriaYDOaueKK", "returnUrl": "1EkiEv5jUR8s31tu"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateAliPayConfig' test.out

#- 289 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'V5tznKeMyQ8FQUFj' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 289 'TestAliPayConfigById' test.out

#- 290 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'UHd2LpCOLnv1waIg' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "KrHYjHdpYQ3TzWXb", "secretKey": "Vi4dhKaEjiAvtlfD"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateCheckoutConfig' test.out

#- 291 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'Lw14fVteWDQe73jb' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 291 'TestCheckoutConfigById' test.out

#- 292 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'Csnt4F0UBk8CIGm3' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "b3kyrUBoCbCBcsCK", "clientSecret": "A8ayCDJ1OiKHWMqz", "returnUrl": "MT60govTvVBmOq0k", "webHookId": "jh2FETxaYfL4bnIS"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdatePayPalConfig' test.out

#- 293 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id '1j2XMLxOpXHrIyzh' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 293 'TestPayPalConfigById' test.out

#- 294 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'xEl0buoqjmqi8KJq' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["HyVEvoDRQpsDU8S1", "SziYtapgldL7meWK", "jkijPCzuKp6yMvjw"], "publishableKey": "sXStjbT6P5c3ig8x", "secretKey": "iG4AbDCoq2kp6FES", "webhookSecret": "h3iN1v1o0VFRGu7l"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateStripeConfig' test.out

#- 295 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'XvTfMREiyCquejoF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 295 'TestStripeConfigById' test.out

#- 296 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'XeXzsbNIzow55DFb' \
    --validate 'false' \
    --body '{"appId": "LPu6skqFkhKGJbOC", "key": "O5wW7PoqHJn8XnjB", "mchid": "e3WN7UQKRfY8k6UI", "returnUrl": "owlj2xEsEdR6gpAI"}' \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfig' test.out

#- 297 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '9obcKHzhpLpFQQnG' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 297 'UpdateWxPayConfigCert' test.out

#- 298 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'PECZj3f6CBTka98o' \
    > test.out 2>&1
eval_tap $? 298 'TestWxPayConfigById' test.out

#- 299 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'FaHI8VcQHKfv37OR' \
    --validate 'false' \
    --body '{"apiKey": "mV7x27lrOoOMB0T7", "flowCompletionUrl": "4qtfzTPrO9GUObdn", "merchantId": 27, "projectId": 58, "projectSecretKey": "ubC8Vv64HRdhIt6y"}' \
    > test.out 2>&1
eval_tap $? 299 'UpdateXsollaConfig' test.out

#- 300 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'SmJ4Dp39vILDXBWc' \
    > test.out 2>&1
eval_tap $? 300 'TestXsollaConfigById' test.out

#- 301 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '3N6GwjpRxDfOuSUS' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateXsollaUIConfig' test.out

#- 302 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '62' \
    --namespace 'F49Ogcpz0lHCth85' \
    --offset '84' \
    --region 'YKu2qZ1zwAsPIQgZ' \
    > test.out 2>&1
eval_tap $? 302 'QueryPaymentProviderConfig' test.out

#- 303 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "SurvG9245Q6XOPLu", "region": "jDMZTN1IvH2LrdtW", "sandboxTaxJarApiToken": "0exD33VLUzUaWrkt", "specials": ["PAYPAL", "WXPAY", "ALIPAY"], "taxJarApiToken": "N6wuTbUvxVBEhYJP", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 303 'CreatePaymentProviderConfig' test.out

#- 304 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 304 'GetAggregatePaymentProviders' test.out

#- 305 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'tAdnzGo6yAFmxuLH' \
    --region '4mWw7tKOV6mkNohi' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentProviderConfig' test.out

#- 306 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 306 'GetSpecialPaymentProviders' test.out

#- 307 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'zCTBHTxCFaadlYth' \
    --body '{"aggregate": "XSOLLA", "namespace": "djdChczicjTTtbjK", "region": "P8fwnBjoqRDZhkW5", "sandboxTaxJarApiToken": "k1N661UZRulbmnxh", "specials": ["ALIPAY", "STRIPE", "PAYPAL"], "taxJarApiToken": "nBAeANEtp0UsF6W2", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 307 'UpdatePaymentProviderConfig' test.out

#- 308 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '1CFXpmvkaE9FHJV8' \
    > test.out 2>&1
eval_tap $? 308 'DeletePaymentProviderConfig' test.out

#- 309 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 309 'GetPaymentTaxConfig' test.out

#- 310 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "aajP8fLCaLJKtKYj", "taxJarApiToken": "ljcphmXwz0NibaCi", "taxJarEnabled": true, "taxJarProductCodesMapping": {"8afCe9k9klgCsdYp": "pf9A2gfeTWeo1cPW", "fsh0iOrt1erjij6P": "ncnQhtVzK4Hkgqqo", "uaY6slnqZYUROFlk": "vrFHpAQDs5yIJMQ0"}}' \
    > test.out 2>&1
eval_tap $? 310 'UpdatePaymentTaxConfig' test.out

#- 311 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'nstZYnTUNd7bLnKO' \
    --end 'qByNW48QZYbYqr2k' \
    --start 'iYrlqPGDaSR45qIv' \
    > test.out 2>&1
eval_tap $? 311 'SyncPaymentOrders' test.out

#- 312 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'ikDvFvsLB4h8kQQc' \
    --storeId 'nP8qgHJvfTUSSbp7' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRootCategories' test.out

#- 313 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'Bpmw3hRayc6rt9AW' \
    --storeId 'r0gMnphkrPIOwHV7' \
    > test.out 2>&1
eval_tap $? 313 'DownloadCategories' test.out

#- 314 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '5a5UZKI8wRp3kekv' \
    --namespace $AB_NAMESPACE \
    --language 'S1MPoa14sdHqP4RD' \
    --storeId '5NOfckmh1POdBM5C' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetCategory' test.out

#- 315 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'OaTZviOlIO9tSv5Z' \
    --namespace $AB_NAMESPACE \
    --language 'dnz3jqVU8JEMbq0P' \
    --storeId 'bZrxb1aVVTAAuK7J' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetChildCategories' test.out

#- 316 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'lhD7GZIfa1e20sL1' \
    --namespace $AB_NAMESPACE \
    --language 'WOF5FtBp7mbpRnpP' \
    --storeId 'eWkeQO8nZGG8JZKS' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetDescendantCategories' test.out

#- 317 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 317 'PublicListCurrencies' test.out

#- 318 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 318 'GetIAPItemMapping' test.out

#- 319 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language '6DzUFoYRfxHmAZQH' \
    --region 'ecEPPXjFgMQvtSwA' \
    --storeId 'NYlqDgCRfdOYWMhg' \
    --appId 'e8lsOLIOA0qp0XGm' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemByAppId' test.out

#- 320 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId '5NxghysFR8J8x0hW' \
    --categoryPath 'AwZJhEP9GS8SvX9a' \
    --features '5DkJMw3OT2GYNsM0' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language 'cDeAOxg9w4OMmbLK' \
    --limit '6' \
    --offset '92' \
    --region 'tzmqPaC2yho8kZgb' \
    --sortBy '["name:asc", "createdAt:asc", "name"]' \
    --storeId 'SlORcWXkoxsNRT7O' \
    --tags '4h8Rrrfou4Cc3bHf' \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryItems' test.out

#- 321 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'zCaGiKj0n6Yc4gEM' \
    --region 'nGLO79GGMlECI4QM' \
    --storeId 'knd3hOfEnesCdXqV' \
    --sku '7GpY6UvLRPQ0HA3g' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetItemBySku' test.out

#- 322 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'nhkQoYSPJtA7NDpe' \
    --region 'zr7sArngNKX21dfE' \
    --storeId 'h78CDSH5EAvhF7Gv' \
    --itemIds 'CiIrNCYCkA4m3CEn' \
    > test.out 2>&1
eval_tap $? 322 'PublicBulkGetItems' test.out

#- 323 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["9nK5i5kN3OVfuP3L", "z5c1iZBz7QhTxIIz", "frHdeaN3jcVExjFY"]}' \
    > test.out 2>&1
eval_tap $? 323 'PublicValidateItemPurchaseCondition' test.out

#- 324 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '97' \
    --offset '3' \
    --region 'qaCIXb6eXzjrraGF' \
    --storeId 'UT7um0jmgJEmFa5h' \
    --keyword 'qls1LgnUqgCBRDIS' \
    --language 'YSCWSV1xzT8JlWng' \
    > test.out 2>&1
eval_tap $? 324 'PublicSearchItems' test.out

#- 325 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'kuxW8XexquqD1YYZ' \
    --namespace $AB_NAMESPACE \
    --language 'uZ0itiz3TmWkoiUt' \
    --region 'ENvclD5Ekl7jQyUP' \
    --storeId 'mPTXXmAX2OmuO0uI' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetApp' test.out

#- 326 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '577tBm3G5oQ38UYc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItemDynamicData' test.out

#- 327 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'SiVBWrGPTxi7CLvb' \
    --namespace $AB_NAMESPACE \
    --language 'PRqwjiHjQ1FaAEVj' \
    --populateBundle 'false' \
    --region 'xqDhe6Fogvwi3LJ8' \
    --storeId 'ZSaHsDCfPmMu9Zih' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetItem' test.out

#- 328 GetPaymentCustomization
eval_tap 0 328 'GetPaymentCustomization # SKIP deprecated' test.out

#- 329 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "FTBfIfnEVgTvWNC6", "paymentProvider": "CHECKOUT", "returnUrl": "ytE2XDQApT5wXH3Q", "ui": "TcmqPjj3lhtDMRrk", "zipCode": "w7LRNkhsWeJsZAq1"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentUrl' test.out

#- 330 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '528tA06HEKdsJmpq' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentMethods' test.out

#- 331 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AgLLYuVM7jILr3Cj' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUnpaidPaymentOrder' test.out

#- 332 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Lfbb2C3GjR3b62Da' \
    --paymentProvider 'ALIPAY' \
    --zipCode 'pP19mVMAA2a6FmrR' \
    --body '{"token": "1sUFbBJtu9FM1r6x"}' \
    > test.out 2>&1
eval_tap $? 332 'Pay' test.out

#- 333 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HzHybKN0ugaHnmsv' \
    > test.out 2>&1
eval_tap $? 333 'PublicCheckPaymentOrderPaidStatus' test.out

#- 334 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'XSOLLA' \
    --region 'AHH1SIThVt0bmcfe' \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentPublicConfig' test.out

#- 335 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'e4wc8HCWbuVcUs6X' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetQRCode' test.out

#- 336 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'PMfFkEhH2YeBCQWK' \
    --foreinginvoice 'uZmTFVHykvXYD4vS' \
    --invoiceId 'gA1TmKVDMCW7xqPj' \
    --payload 'aPz9Ne2hYHFbObXN' \
    --redirectResult 'CQorDVQXjsyyWkl6' \
    --resultCode 'gEYLXZdxPqM7YhpD' \
    --sessionId 'XPe8VOMxkvB1HRqF' \
    --status 'wQFaeiISa2nCS7Kr' \
    --token 'dlUFG5AJs2xAGXiW' \
    --type 'Y7PXtGPiODOo3u6U' \
    --userId 'NiJH3d3JcOjRalqs' \
    --orderNo 'OrX5kWW43YfajW1b' \
    --paymentOrderNo 'Glg3JHQciBLr6ITK' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'Aw3eHDDKJwuSDetx' \
    > test.out 2>&1
eval_tap $? 336 'PublicNormalizePaymentReturnUrl' test.out

#- 337 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'NUFfNnaro1QrIH9x' \
    --paymentOrderNo 'zQXJqjhLzwI9Glnm' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 337 'GetPaymentTaxValue' test.out

#- 338 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'wCSfSNJZ6ZrX20lJ' \
    > test.out 2>&1
eval_tap $? 338 'GetRewardByCode' test.out

#- 339 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'W6ZZ97QHnmaosVMx' \
    --limit '48' \
    --offset '33' \
    --sortBy '["namespace", "rewardCode", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 339 'QueryRewards1' test.out

#- 340 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'knCP4w2EYODDXNXI' \
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
    --appIds '["e9bWFCdSWMYiWkt5", "UBjhXAwNv7UAK4BL", "7wx3bgnyZBXoFTuH"]' \
    --itemIds '["GcMzmfC51ZMqqPEM", "4sztsUvWW1uOCo71", "h9WZKFG4PNMYdPls"]' \
    --skus '["3MlIDE303DpMJHeA", "ySESI7vxrtNvJelE", "RE1HBq193IzXAuhO"]' \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyMyActiveEntitlement' test.out

#- 343 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'jVITbbqANyoqJu7k' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'ODmCJQy3qjhkDejF' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 345 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'OPTIONBOX' \
    --sku '1leH8CpVrUASUzFG' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 346 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["sfyGqkwzyunASMo1", "duuUgUas0J9btiQ6", "GDnDHWTMZ12WKGns"]' \
    --itemIds '["BWrTI2JKvsVlGMo2", "xT58yQI0heNWnbkt", "nZcfKw7Ntus2PDpA"]' \
    --skus '["cEXRxNxZbDb7ZDS2", "cYohFv7biOs9s1B1", "jdQUz5cKCIgGbqzq"]' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetEntitlementOwnershipToken' test.out

#- 347 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "F8zDYrCOEFiT4SFZ", "language": "qbwA-776", "region": "riEuK3Z4cQ765VkG"}' \
    > test.out 2>&1
eval_tap $? 347 'SyncTwitchDropsEntitlement' test.out

#- 348 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'NS6DofpOVSpOujcE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyWallet' test.out

#- 349 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'IDe09V8VsuYHsINs' \
    --body '{"epicGamesJwtToken": "xn4k702O6fSKorNW"}' \
    > test.out 2>&1
eval_tap $? 349 'SyncEpicGameDLC' test.out

#- 350 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'pWSVCGeB5mlX8Z0r' \
    --body '{"serviceLabel": 22}' \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventory' test.out

#- 351 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'oQdZUFbmi1bfcCCr' \
    --body '{"serviceLabels": [18, 21, 90]}' \
    > test.out 2>&1
eval_tap $? 351 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 352 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'EMZKv8UM8fZHkE7M' \
    --body '{"appId": "wRE4CCKWTWqokgJD", "steamId": "CAgaicEcWhEKbfw9"}' \
    > test.out 2>&1
eval_tap $? 352 'SyncSteamDLC' test.out

#- 353 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CwlCfayjvHWrdrGv' \
    --body '{"xstsToken": "ndieh72ZliCeFVij"}' \
    > test.out 2>&1
eval_tap $? 353 'SyncXboxDLC' test.out

#- 354 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'y8FuF3BUhiV0OxNu' \
    --appType 'DEMO' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'nPOydjbRFEPIoHD4' \
    --features '["uEPeNGQVMqZScdF2", "MUhrKKE2UF9tydyT", "pOk4sny7tBZcuPf1"]' \
    --itemId '["upaYFbHpgnaC31ne", "jNZmfvJHB02HGw5U", "b21Yj7AiVkKkUXaH"]' \
    --limit '30' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 354 'PublicQueryUserEntitlements' test.out

#- 355 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'p2d9Lh0tjHotiMRT' \
    --appId 'MsLHU7BUBro8TL17' \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserAppEntitlementByAppId' test.out

#- 356 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'WElqqjUVdVS0KmPG' \
    --limit '82' \
    --offset '97' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserEntitlementsByAppType' test.out

#- 357 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'F2Df91aDyit7dOoH' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'aaobQQtKzMhJ0hZh' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementByItemId' test.out

#- 358 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'ZsU3Xvd4Y45jKCku' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'ziYHralfrq2EtSDs' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserEntitlementBySku' test.out

#- 359 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aSI66SsgCy2RTUwN' \
    --appIds '["uUphStLfJQa2gRd3", "peAWo28zLEUDxaqe", "xDCvmMGs5MSILfru"]' \
    --itemIds '["Zw1OY1Ldt5ulZry4", "cgrOzmQhRJ9IYY7Y", "MbV3syVdAv1az5sB"]' \
    --skus '["Mou1ErVDYPpb33EO", "bKza1MTExmi1Dao5", "2KZVWYW8epIGJ2WS"]' \
    > test.out 2>&1
eval_tap $? 359 'PublicExistsAnyUserActiveEntitlement' test.out

#- 360 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '1C3dKwALomYAihdm' \
    --appId '359xRsrwCksUalDw' \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9ygbMSzz1mM84pYU' \
    --entitlementClazz 'LOOTBOX' \
    --itemId '5J8ryYhleIJlVskL' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 362 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '1hMuLaVmQXW5mLrY' \
    --ids '["5eG39iJPAJkAkBuA", "eIDq9cHlg8Kf7e8O", "zO9bzWHQGSwyvAj9"]' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 363 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'BkHzjG5sbV4LmWGr' \
    --entitlementClazz 'CODE' \
    --sku 'VYb8im6OaR4lOifs' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 364 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'ZOv9y1pRHsI3JdTr' \
    --namespace $AB_NAMESPACE \
    --userId 'Y6odZetsOlJhgeH2' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserEntitlement' test.out

#- 365 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'ICf3EBPxEGrqJcWt' \
    --namespace $AB_NAMESPACE \
    --userId 'VDwAxjCofGgdSW3h' \
    --body '{"options": ["b4Ea4f7pGHSss142", "Bp7otCpSZBnkmhH7", "OqM5DsgKtOV7FHHu"], "requestId": "RHMIccL2H9LA4Uqu", "useCount": 9}' \
    > test.out 2>&1
eval_tap $? 365 'PublicConsumeUserEntitlement' test.out

#- 366 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'nvsvjcx0LOv4qi6R' \
    --namespace $AB_NAMESPACE \
    --userId 'sTUkBejOYMkxvklD' \
    --body '{"requestId": "s9IbSFb53QNCILyu", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 366 'PublicSellUserEntitlement' test.out

#- 367 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'ZjfovTbPu6TcRhig' \
    --body '{"code": "BFsZ5tITnUaeIPZ8", "language": "Mb", "region": "Ly8fKtWkQBAifEUZ"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicRedeemCode' test.out

#- 368 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'NMbf3nhyvwamiMUX' \
    --body '{"excludeOldTransactions": true, "language": "vB_fkbj", "productId": "4qUb9p7oODXK23ST", "receiptData": "0oDz0aLrv007nvLT", "region": "vy3uYh1T90LOgxCF", "transactionId": "FSR6Rg7BlEZM93Ng"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicFulfillAppleIAPItem' test.out

#- 369 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'TZE1Jh3EsHc1MFrj' \
    --body '{"epicGamesJwtToken": "QwzyXJbNjdYepZUq"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncEpicGamesInventory' test.out

#- 370 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'B8tNVYl6PdfyZTmn' \
    --body '{"autoAck": false, "language": "jwon", "orderId": "vUrgWTctHz2vuQFr", "packageName": "C3U4NqNzjCcvdKJC", "productId": "g8nLWUtP6HkZ39gM", "purchaseTime": 22, "purchaseToken": "494O7WL1D8oWfE6A", "region": "caxTNaul57Y38n57"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicFulfillGoogleIAPItem' test.out

#- 371 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'hpLM3WPSVC9A79Rn' \
    --body '{"currencyCode": "x6UBCRpqP8kFVFFI", "price": 0.45891076551184096, "productId": "M7FyT8ehsbzTC3Eg", "serviceLabel": 12}' \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStore' test.out

#- 372 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'T0iZK5sAy2r71XsM' \
    --body '{"currencyCode": "zl7gIrzl25mDJXVE", "price": 0.2716072034078917, "productId": "2zmP5baNlD1HCnKm", "serviceLabels": [54, 46, 39]}' \
    > test.out 2>&1
eval_tap $? 372 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 373 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'vv6mvjZ9qfgDf3HF' \
    --body '{"appId": "knTAVGeCb7lUZ0l0", "currencyCode": "6kPeOEXoWVPg9NrX", "language": "BKh_Sbef", "price": 0.8604545574570138, "productId": "iQSdYDbGLquGtjZ1", "region": "nXWnpkuOxpMVxy5q", "steamId": "hrc8h5TSpRiiKd52"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncSteamInventory' test.out

#- 374 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'ef40nN65e7UgrvGO' \
    --body '{"gameId": "ewmmzpXZvBCQoSDH", "language": "LMsZ", "region": "GXs7CaDU3WVQdfdZ"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement1' test.out

#- 375 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '4HZxM19KVDDlD8S6' \
    --body '{"currencyCode": "dsKJQbg3ChkDzFSL", "price": 0.980315132411659, "productId": "0jHn3fTowGeRmTSW", "xstsToken": "Fff4vi5NcZyvsZDb"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncXboxInventory' test.out

#- 376 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '07LrZcHF9lQxSo0h' \
    --itemId 'PHOtaVPzaT6lxC30' \
    --limit '6' \
    --offset '64' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserOrders' test.out

#- 377 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'uhPXOTEFRMVHfZxY' \
    --body '{"currencyCode": "3XprllYCOdRx5PRL", "discountedPrice": 66, "ext": {"u6dRlqGN5QO3bK3K": {}, "jpX7sMcAVcZxuKn9": {}, "p8lVvMwkt0sMP7YH": {}}, "itemId": "CcgxhyJD1f5KyBy5", "language": "iU_vyaz-ad", "price": 71, "quantity": 0, "region": "jWoWsW11DmC6vDKB", "returnUrl": "ayNXFnbQrDUEWrL7", "sectionId": "Yw7Tyz4pXeZVR51r"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateUserOrder' test.out

#- 378 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PbYoxuOtqrCmior8' \
    --userId 'IuqoiFqhTlCqNErw' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserOrder' test.out

#- 379 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'q3DUGu2UIRdq4Amm' \
    --userId 'lifVW0DSb3UXZvjB' \
    > test.out 2>&1
eval_tap $? 379 'PublicCancelUserOrder' test.out

#- 380 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '6Pelouxo37yOlBfY' \
    --userId 'UUvxjQz1bxVAYVDW' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserOrderHistories' test.out

#- 381 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'S4tQxU2LE9l2SMQo' \
    --userId '7GdC566WUheUWg4G' \
    > test.out 2>&1
eval_tap $? 381 'PublicDownloadUserOrderReceipt' test.out

#- 382 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'PKmztCib7NntpPhW' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetPaymentAccounts' test.out

#- 383 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '2YEYl00i7mAerdR8' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'WwH4MhJ5EjrwBdah' \
    > test.out 2>&1
eval_tap $? 383 'PublicDeletePaymentAccount' test.out

#- 384 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'nmGVVz2viFxRTKrP' \
    --language 'DG55am5CCbCtOc2h' \
    --region 'fXHyKg0Q4Ek1u6d8' \
    --storeId 'ORKvRHDfk8Ggo6kw' \
    --viewId '66j9RGluBI8sbkjM' \
    > test.out 2>&1
eval_tap $? 384 'PublicListActiveSections' test.out

#- 385 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'eyMKDt4YHTNzFmIS' \
    --chargeStatus 'SETUP' \
    --itemId 'c7FgRinBteOQY2F6' \
    --limit '75' \
    --offset '73' \
    --sku 'tm3NhMCM2Ywevg5L' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 385 'PublicQueryUserSubscriptions' test.out

#- 386 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'MsVjyUfF995t0H9G' \
    --body '{"currencyCode": "9nrYmoguBnpjvdbH", "itemId": "eiS7yAUQV6hGp0OZ", "language": "vENA-487", "region": "TgdEaaOAszKaPCsz", "returnUrl": "jd6C9PrDO9X5xELs", "source": "p4zhXgftP9vcKirK"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSubscribeSubscription' test.out

#- 387 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'SVcy68WJU7PSdMXl' \
    --itemId 'MFHGThoMGQxfOtQi' \
    > test.out 2>&1
eval_tap $? 387 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 388 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1CaYNE3fANCT85xW' \
    --userId 'Ihf0V2iXzgiLJqeI' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserSubscription' test.out

#- 389 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yMezByc8Adrt9vao' \
    --userId 'XBn28ZVHtOYXN9Vy' \
    > test.out 2>&1
eval_tap $? 389 'PublicChangeSubscriptionBillingAccount' test.out

#- 390 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'kekYGY8UJrAqgVEx' \
    --userId 'u0WIU8YDNetkF7mI' \
    --body '{"immediate": false, "reason": "HlsidBhtui3ttB6c"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCancelSubscription' test.out

#- 391 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uPtaeihfc1JrGcfv' \
    --userId 'RACBnhlWiMC5Q9l1' \
    --excludeFree 'true' \
    --limit '43' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserSubscriptionBillingHistories' test.out

#- 392 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'wBsrwZPEFc468ysK' \
    --language 'Z9ONEONtOlo5OIJV' \
    --storeId 'z3evSInSwU850kq7' \
    > test.out 2>&1
eval_tap $? 392 'PublicListViews' test.out

#- 393 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'emf9Bc5hKShNTI45' \
    --namespace $AB_NAMESPACE \
    --userId 'eG91LFUmSsgvRDqn' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetWallet' test.out

#- 394 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'fxXEEUFDM6N36gpc' \
    --namespace $AB_NAMESPACE \
    --userId 'Mena0Ocuxcb61JXo' \
    --limit '30' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 394 'PublicListUserWalletTransactions' test.out

#- 395 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --availableDate 'lvcddwyl2Rnlu88v' \
    --baseAppId 'mnHl6pKWRKDraITh' \
    --categoryPath 'yYnReyw87FutrWS1' \
    --features 'UBrTxduJ37y3SjD5' \
    --includeSubCategoryItem 'false' \
    --itemName 'OEriTzVD4NChAXP4' \
    --itemStatus 'INACTIVE' \
    --itemType 'COINS' \
    --limit '81' \
    --offset '21' \
    --region 'uhdKvbTSdg5GGKw8' \
    --sectionExclusive 'true' \
    --sortBy '["createdAt:desc", "updatedAt:desc", "createdAt:asc"]' \
    --storeId 'TuwuiFYruGwNuvxy' \
    --tags 'Ynmqsy0SDH0nF0Qg' \
    --targetNamespace 'wdgxxqEYXzmWKeN4' \
    > test.out 2>&1
eval_tap $? 395 'QueryItems1' test.out

#- 396 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'NyK7OnTWu1d97bq1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 396 'ImportStore1' test.out

#- 397 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'MwzVtxVOECkVzeJB' \
    --body '{"itemIds": ["wwyVxLeFMczWtd0P", "bNX66nUJHkBgkTQG", "zCZDdbGQc3qH6v0R"]}' \
    > test.out 2>&1
eval_tap $? 397 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE