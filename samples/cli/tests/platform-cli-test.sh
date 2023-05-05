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
    --body '{"context": {"item": {"appId": "xGaOuNFS", "appType": "GAME", "baseAppId": "qu6LzV6g", "boothName": "8fLioxXo", "boundItemIds": ["lGnpD76M", "7lAsuTFQ", "kvtXz5qU"], "categoryPath": "mVew5rwZ", "clazz": "Lh0jWexo", "createdAt": "1972-11-28T00:00:00Z", "description": "cWFxosyY", "displayOrder": 71, "entitlementType": "CONSUMABLE", "ext": {"5rHmDv1B": {}, "KKbdQ1TA": {}, "s2LyVqCj": {}}, "features": ["S4IgktzL", "5CXrxRxT", "6PuEmEHw"], "fresh": false, "images": [{"as": "tF5ouzY8", "caption": "XxYd7mAr", "height": 83, "imageUrl": "HQ0axne8", "smallImageUrl": "97xOx4M1", "width": 19}, {"as": "NCGG6wh2", "caption": "eNPI0ju1", "height": 9, "imageUrl": "8KoVvmhI", "smallImageUrl": "AgBrAnsP", "width": 66}, {"as": "NXTP9Ten", "caption": "pQDKFZNg", "height": 23, "imageUrl": "Clpb5DMi", "smallImageUrl": "wP8kSeDI", "width": 55}], "itemId": "xwYZT471", "itemIds": ["QxiyvA8B", "BM0sJcnc", "LUQFbkK2"], "itemQty": {"a7fb1C8t": 57, "XYVEQ2Yl": 35, "q6MxREdZ": 16}, "itemType": "CODE", "language": "93BrQtIJ", "listable": false, "localExt": {"p33W3YEU": {}, "fZI7KctO": {}, "MzvG5k9X": {}}, "longDescription": "YGlekjQ3", "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 61, "itemId": "W7eUCstj", "itemSku": "KnLyEO4Z", "itemType": "5P3iqv9r"}, {"count": 3, "itemId": "ULWLwQ5U", "itemSku": "xq6Fcdsa", "itemType": "kTLET19G"}, {"count": 29, "itemId": "80Zgur0f", "itemSku": "ItFwPTXU", "itemType": "gZVGUzej"}], "name": "BaHL7X3K", "odds": 0.20890757187775244, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 29, "itemId": "wks5JTvM", "itemSku": "k4xa4nnP", "itemType": "USRsTylO"}, {"count": 46, "itemId": "JnlxDN8Y", "itemSku": "fUibvDmD", "itemType": "RlrxtCPe"}, {"count": 41, "itemId": "hVshTLmk", "itemSku": "d7ogUPAS", "itemType": "rEoMwHxQ"}], "name": "gFU7p87D", "odds": 0.1784209119728698, "type": "PROBABILITY_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 0, "itemId": "YYO0Zp8L", "itemSku": "wrMWa0LR", "itemType": "V5XNaPu5"}, {"count": 56, "itemId": "jXE8DTLC", "itemSku": "k4ZDZFb9", "itemType": "JiDOmNi0"}, {"count": 58, "itemId": "HE5YptFU", "itemSku": "l7fpkFb9", "itemType": "xK22uxBq"}], "name": "orngr8TH", "odds": 0.9942085565930189, "type": "PROBABILITY_GROUP", "weight": 9}], "rollFunction": "DEFAULT"}, "maxCount": 86, "maxCountPerUser": 48, "name": "rqQDGDXF", "namespace": "xpJEjUAl", "optionBoxConfig": {"boxItems": [{"count": 54, "itemId": "LgK85eiG", "itemSku": "0gMe8cIF", "itemType": "zmrcx9KI"}, {"count": 26, "itemId": "4ZpZwAtL", "itemSku": "0AvnafBr", "itemType": "VydtQn7T"}, {"count": 21, "itemId": "FEdh1YUG", "itemSku": "SPNebBrn", "itemType": "4u4VDJoY"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 80, "comparison": "isLessThanOrEqual", "name": "5XjTT6W5", "predicateType": "SeasonPassPredicate", "value": "oGpWSg7x", "values": ["jWOq71sT", "SiSgJYoX", "taulFOD0"]}, {"anyOf": 68, "comparison": "includes", "name": "jr8SN3Sd", "predicateType": "EntitlementPredicate", "value": "uELR1saq", "values": ["y4Mb6y2v", "JcVyzpAL", "8Fd1M2ev"]}, {"anyOf": 19, "comparison": "isGreaterThan", "name": "7USbF8ec", "predicateType": "SeasonPassPredicate", "value": "YBJ4enhS", "values": ["CoVR6lDg", "1Dv05yKj", "DuDgiJgc"]}]}, {"operator": "or", "predicates": [{"anyOf": 64, "comparison": "isLessThanOrEqual", "name": "OLSSi0Ox", "predicateType": "SeasonPassPredicate", "value": "xVn5ZI60", "values": ["zV1Pzr9p", "D7jBqeZE", "tyvsweb8"]}, {"anyOf": 19, "comparison": "excludes", "name": "aPVB2j4t", "predicateType": "EntitlementPredicate", "value": "u8RIg1Wb", "values": ["JZzUCGkA", "ud5JyY1D", "wjPu62YN"]}, {"anyOf": 23, "comparison": "isGreaterThanOrEqual", "name": "7FU9elVb", "predicateType": "SeasonPassPredicate", "value": "Zct0ouoV", "values": ["mX8rphNr", "Zo5mc6v7", "8TPJZyk4"]}]}, {"operator": "or", "predicates": [{"anyOf": 44, "comparison": "isGreaterThanOrEqual", "name": "i7KsYyPB", "predicateType": "EntitlementPredicate", "value": "yki3DHQS", "values": ["o6wAtbD3", "6IpMpT1r", "X3tMJNdw"]}, {"anyOf": 60, "comparison": "isLessThan", "name": "anIMhRxq", "predicateType": "EntitlementPredicate", "value": "sBLc3MV0", "values": ["DoTcC1Qu", "zuCQIckR", "KtY9DRVT"]}, {"anyOf": 62, "comparison": "excludes", "name": "6rWEnSC2", "predicateType": "EntitlementPredicate", "value": "lGHc0tka", "values": ["cuE7k0bF", "4zd2Ktc7", "iDsFr9bk"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 75, "fixedTrialCycles": 6, "graceDays": 36}, "region": "vvobnjhG", "regionData": [{"currencyCode": "xdabSDoq", "currencyNamespace": "3DWMs2On", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1992-03-31T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1975-03-26T00:00:00Z", "discountedPrice": 52, "expireAt": "1974-06-24T00:00:00Z", "price": 58, "purchaseAt": "1998-07-20T00:00:00Z", "trialPrice": 77}, {"currencyCode": "NlwytlPn", "currencyNamespace": "AqI5TikI", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1993-05-14T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1979-10-17T00:00:00Z", "discountedPrice": 68, "expireAt": "1971-11-15T00:00:00Z", "price": 28, "purchaseAt": "1992-07-03T00:00:00Z", "trialPrice": 97}, {"currencyCode": "G7QGXEAS", "currencyNamespace": "dTJeaTZT", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1984-06-06T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1996-07-19T00:00:00Z", "discountedPrice": 39, "expireAt": "1994-08-08T00:00:00Z", "price": 79, "purchaseAt": "1972-06-21T00:00:00Z", "trialPrice": 35}], "seasonType": "TIER", "sku": "4oSdcvHq", "stackable": true, "status": "ACTIVE", "tags": ["BdlxDtzI", "CXDUQADj", "ZVJESQ7O"], "targetCurrencyCode": "PNW7yn8t", "targetItemId": "bFA4svXv", "targetNamespace": "itwiJZC8", "thumbnailUrl": "1dQ6zvMr", "title": "Oo4NMyMN", "updatedAt": "1971-04-04T00:00:00Z", "useCount": 29}, "namespace": "RPLIAu1D", "order": {"currency": {"currencyCode": "GR4KNEmO", "currencySymbol": "SR588zRq", "currencyType": "REAL", "decimals": 5, "namespace": "MT9lPAjc"}, "ext": {"iMnhrQ1M": {}, "cPdYeFFb": {}, "fnZclTYh": {}}, "free": false}, "source": "PROMOTION"}, "script": "v02GvAH9", "type": "grantDays"}' \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'ybqabWku' \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'Vc7B00Ks' \
    --body '{"grantDays": "bRWj06il"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'dOGlF1fP' \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'l55NK3s2' \
    --body '{"grantDays": "nVDtAJ7t"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "GMEhkSdq", "dryRun": false, "fulfillmentUrl": "kmmHnE9K", "itemType": "EXTENSION", "purchaseConditionUrl": "g64hK86o"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'IWVBd14e' \
    --itemType 'MEDIA' \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'VCHfIUhB' \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'bz8n5AjP' \
    --body '{"clazz": "BnS5XZjd", "dryRun": false, "fulfillmentUrl": "c8kBjXP8", "purchaseConditionUrl": "xVViLRUt"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'h93wnf9G' \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'M92XTIzl' \
    --offset '66' \
    --tag 'DEfmYAve' \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6WxPcZRT", "items": [{"extraSubscriptionDays": 96, "itemId": "cplJu7Sz", "itemName": "fjtwcMw5", "quantity": 7}, {"extraSubscriptionDays": 24, "itemId": "4C2qdarM", "itemName": "waENpDa6", "quantity": 76}, {"extraSubscriptionDays": 79, "itemId": "nQX6yDIm", "itemName": "xDI7dFnV", "quantity": 11}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 21, "maxRedeemCountPerCodePerUser": 41, "maxSaleCount": 71, "name": "gNFr26cL", "redeemEnd": "1990-02-02T00:00:00Z", "redeemStart": "1996-07-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["4mEdDGss", "DaENfRUu", "47idTgz8"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'SwhuCiqM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '281C99NP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "amiatSo7", "items": [{"extraSubscriptionDays": 47, "itemId": "d1jcSwG0", "itemName": "Ax6HS0G2", "quantity": 32}, {"extraSubscriptionDays": 42, "itemId": "qFyxQ0FS", "itemName": "IGgwHYYo", "quantity": 12}, {"extraSubscriptionDays": 78, "itemId": "wWQzqOzM", "itemName": "DJxhf6sK", "quantity": 3}], "maxRedeemCountPerCampaignPerUser": 41, "maxRedeemCountPerCode": 56, "maxRedeemCountPerCodePerUser": 44, "maxSaleCount": 40, "name": "ynuskYSo", "redeemEnd": "1987-05-07T00:00:00Z", "redeemStart": "1984-11-26T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["LQLL6wMa", "1dOiwit6", "CvTS4Jgl"]}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'J1J1OIAo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'suoPdTZe' \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'DQ3B3QqZ' \
    --body '{"categoryPath": "VIQV5WA2", "localizationDisplayNames": {"usxZRyzY": "WgEvJfcX", "kZNvlXAX": "OXnY8XT6", "Rp0iwNJN": "axFGQsvs"}}' \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'hIRyGpMf' \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'sSzK51jw' \
    --namespace $AB_NAMESPACE \
    --storeId 'OsXA5so7' \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'jCeMWK01' \
    --namespace $AB_NAMESPACE \
    --storeId '7eJ3SRBM' \
    --body '{"localizationDisplayNames": {"m4THtqkF": "Y8BzFoI0", "SLlggVpD": "XfR0WUQz", "0Ivo2KBx": "NZrYBsCJ"}}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '0NmEvi8K' \
    --namespace $AB_NAMESPACE \
    --storeId 'o29GHAXY' \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '3E5qtz0f' \
    --namespace $AB_NAMESPACE \
    --storeId 'HxdUnwBK' \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'dXHU7YBU' \
    --namespace $AB_NAMESPACE \
    --storeId 'KMpDYOwI' \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'OaZKwdfR' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '71' \
    --code 'lA6IJzlA' \
    --limit '98' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'Naks8X2j' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 66}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
samples/cli/sample-apps Platform download \
    --campaignId 'egCZ34pi' \
    --namespace $AB_NAMESPACE \
    --batchNo '50' \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'GDfSWREm' \
    --namespace $AB_NAMESPACE \
    --batchNo '86' \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'jRFFkHDj' \
    --namespace $AB_NAMESPACE \
    --batchNo '79' \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'Y72bMhfW' \
    --namespace $AB_NAMESPACE \
    --code 'vAajTLTy' \
    --limit '52' \
    --offset '84' \
    --userId 'jgJNTIQh' \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'CrRlHihx' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'CDJsLAwW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'GbvCFExV' \
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
    --body '{"grpcServerAddress": "j7OgyqTG"}' \
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
    --body '{"currencyCode": "BB3rdrm2", "currencySymbol": "D3jruB2O", "currencyType": "REAL", "decimals": 54, "localizationDescriptions": {"L72XTSzx": "8odkCObu", "tXCc5Gxq": "U7dFetmd", "udtHsuC7": "OjZ5a0QY"}}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Wj1rwYvi' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"bhDzkmxt": "aqFlatl9", "iaObogNc": "datki9t2", "PsXf4aJh": "MZMneHfS"}}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'jL66PbOj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'VCScIUDb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'qQSsHrs2' \
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
    --body '{"data": [{"id": "3aezduW4", "rewards": [{"currency": {"currencyCode": "shkfD6Kg", "namespace": "370WxOpr"}, "item": {"itemId": "wBSXPBeF", "itemSku": "4itIdFnT", "itemType": "T6LotgbZ"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "5clN7mGc", "namespace": "W1c2blEo"}, "item": {"itemId": "CPzXaspz", "itemSku": "OS5uuuZH", "itemType": "fwOa1x16"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "fybqcnFo", "namespace": "IBNPvOOF"}, "item": {"itemId": "FvvP3rC7", "itemSku": "ENELezd2", "itemType": "WNgs9leH"}, "quantity": 63, "type": "ITEM"}]}, {"id": "tlLQwPse", "rewards": [{"currency": {"currencyCode": "559cF53k", "namespace": "0g3zgqCV"}, "item": {"itemId": "SKgk2cH5", "itemSku": "hSMLTfRn", "itemType": "vVRP8YVP"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "02h5nTFy", "namespace": "nUVfUYrG"}, "item": {"itemId": "LOdYRVXw", "itemSku": "lOFhEPdJ", "itemType": "aMqFpENk"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "NBFcrQX1", "namespace": "Vqzf57gA"}, "item": {"itemId": "U4xfmE70", "itemSku": "xN0Zq5zm", "itemType": "uK5jCJxV"}, "quantity": 67, "type": "ITEM"}]}, {"id": "1HU2HSq1", "rewards": [{"currency": {"currencyCode": "bZRyfswS", "namespace": "EF3zfN6Q"}, "item": {"itemId": "EqoQWOq3", "itemSku": "UByAPi69", "itemType": "Vs3PZZOf"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "OZmvj1nH", "namespace": "cVhG5Jez"}, "item": {"itemId": "KRVt6056", "itemSku": "TiXxDtNH", "itemType": "q2twwcrF"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "63oERaTR", "namespace": "Coi2cAcJ"}, "item": {"itemId": "KCJdpo59", "itemSku": "sFgzgT3g", "itemType": "dh6YbOG3"}, "quantity": 46, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"JXqHowyP": "B6NE5nEb", "HKFlGGeR": "XDPN8ii3", "mzqLQZYu": "PnYwG4u8"}}, {"platform": "PSN", "platformDlcIdMap": {"r6pQrpk3": "r6V2uVag", "o71ikAWv": "vdBotvqz", "71dPqkaZ": "CGR1qiae"}}, {"platform": "PSN", "platformDlcIdMap": {"W9uw49WG": "gqh8ioeT", "CsLagbos": "ugQFNfAK", "NW4N6lO0": "0mQqPhD7"}}]}' \
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
    --appType 'GAME' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'gCyPB0ZJ' \
    --itemId '["YfhRRZir", "RCvyZcEp", "3otrze9t"]' \
    --limit '77' \
    --offset '45' \
    --userId 'VWrBl4Fz' \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '9DDTCALl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '4' \
    --status 'FAIL' \
    --userId 'GJWK4Y64' \
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
    --body '{"bundleId": "30k3AEUl", "password": "wzGAW7kW"}' \
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
    --body '{"sandboxId": "EmUbgZqg"}' \
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
    --body '{"applicationName": "fa83n1K1", "serviceAccountId": "dBtbSKc8"}' \
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
    --body '{"data": [{"itemIdentity": "fHmsk2GF", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"lKjvaetV": "RwIYElyn", "E8EoYjJw": "NVRvIRV4", "N2r4qUS8": "NvNdmK93"}}, {"itemIdentity": "nUaYIvrb", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"TKw8XF8N": "NGvdTmPB", "jxO01QMn": "N7qcC89a", "Pcs5tbOM": "YfHpSU7u"}}, {"itemIdentity": "7Ff6aaoG", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"zFgTV3vj": "fGIKgquT", "TuXcyKIT": "8BJhYCw3", "futIN5Z1": "9KaNqXgB"}}]}' \
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
    --body '{"environment": "OqXXc9P3"}' \
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
    --body '{"appId": "CgU9SegH", "publisherAuthenticationKey": "PIp5yVJ9"}' \
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
    --body '{"clientId": "1xgDYuZm", "clientSecret": "U5RnOTs1", "organizationId": "keiwJtTh"}' \
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
    --body '{"relyingPartyCert": "tlu9vVj8"}' \
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
    --password 'Q2EcAPTJ' \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '1NBh4uj1' \
    --itemId 'UFvCvnga' \
    --itemType 'APP' \
    --endTime '0ZI3mv3g' \
    --startTime '118tv6CM' \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'ij4Orfvg' \
    --itemId 'qqbdEtXB' \
    --itemType 'BUNDLE' \
    --endTime 'PlnEAyXK' \
    --startTime 'WwGgSZ5h' \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'bUaQCmZ5' \
    --body '{"categoryPath": "0j05U6I4", "targetItemId": "5i2v2LdK", "targetNamespace": "f5SyRt70"}' \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'iIRCrCt1' \
    --body '{"appId": "3OqvS5ck", "appType": "GAME", "baseAppId": "9kIEF1ED", "boothName": "s7UJ5tMe", "categoryPath": "HEpMgrIS", "clazz": "3xjcBo46", "displayOrder": 10, "entitlementType": "DURABLE", "ext": {"BDTFe84b": {}, "v9yHUCwZ": {}, "B5eVkxpp": {}}, "features": ["r9IEh25t", "MNhseypW", "5WnfG4S4"], "images": [{"as": "dC1uJXn0", "caption": "M7Aj895F", "height": 20, "imageUrl": "TzeaMkIS", "smallImageUrl": "ymw69wFy", "width": 18}, {"as": "eGnyBlr8", "caption": "jtVhBkuP", "height": 15, "imageUrl": "rCuhQr85", "smallImageUrl": "Csl0EjOR", "width": 75}, {"as": "FDQnhJjM", "caption": "LghObhIy", "height": 38, "imageUrl": "b50Q19HL", "smallImageUrl": "ZBwTR9lt", "width": 53}], "itemIds": ["OwbgZ2DT", "GeSmcpzG", "PbwZ99I2"], "itemQty": {"gCk7dKXr": 38, "do5N6oiN": 23, "wArWqtiH": 57}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"XgUuUEDn": {"description": "LkHomLnJ", "localExt": {"dYdySAgZ": {}, "DHAuIkzI": {}, "lCh9ZZPc": {}}, "longDescription": "12uu69gD", "title": "Y4L4lPmt"}, "y2TOiDPA": {"description": "ptiA3PhU", "localExt": {"rm2FWX0s": {}, "tE4X7JfL": {}, "1qh0UxlT": {}}, "longDescription": "VYa2aLvj", "title": "MOFgTbeC"}, "LcuWmKLN": {"description": "TW6Ar7cl", "localExt": {"yBtPWCl0": {}, "yoLIN22b": {}, "NBGhbqe9": {}}, "longDescription": "xTuIPASu", "title": "W2k1aG50"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 41, "itemId": "FpcOzwvJ", "itemSku": "BUTs9iFY", "itemType": "s3VRjGyJ"}, {"count": 55, "itemId": "35nQJpdL", "itemSku": "UyCwUZa7", "itemType": "BeD0IMeu"}, {"count": 68, "itemId": "nN0GFdvz", "itemSku": "E6zo1EyK", "itemType": "N0waM6xO"}], "name": "kjlnmafH", "odds": 0.31481122701215736, "type": "REWARD_GROUP", "weight": 65}, {"lootBoxItems": [{"count": 19, "itemId": "KyTXJPgZ", "itemSku": "saP2Civp", "itemType": "R1KrWQbp"}, {"count": 91, "itemId": "4DP5rGTe", "itemSku": "E1uPweWt", "itemType": "dbSjuXwP"}, {"count": 2, "itemId": "pEYrJWhc", "itemSku": "tYOCn9Jd", "itemType": "E3orrBz5"}], "name": "mvBLWKio", "odds": 0.08385120618309816, "type": "REWARD_GROUP", "weight": 74}, {"lootBoxItems": [{"count": 79, "itemId": "lm8bVDYl", "itemSku": "GCROVWOR", "itemType": "dNUddd4a"}, {"count": 69, "itemId": "QIJpkDow", "itemSku": "0mLI7SfU", "itemType": "ZBTMHmMw"}, {"count": 24, "itemId": "jrfqCFRg", "itemSku": "diGGP9ku", "itemType": "KEOQIlvn"}], "name": "TEeXQgtF", "odds": 0.8388901293253588, "type": "PROBABILITY_GROUP", "weight": 25}], "rollFunction": "DEFAULT"}, "maxCount": 62, "maxCountPerUser": 62, "name": "036gjHgH", "optionBoxConfig": {"boxItems": [{"count": 83, "itemId": "A9ChyrNt", "itemSku": "P3wJGLGp", "itemType": "YdvsXMdc"}, {"count": 54, "itemId": "vMymywPQ", "itemSku": "pXUaug0W", "itemType": "7Sz75gVB"}, {"count": 35, "itemId": "x30UW2X2", "itemSku": "aCHREK1k", "itemType": "nf69eui0"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 60, "fixedTrialCycles": 40, "graceDays": 25}, "regionData": {"J6qfcS9C": [{"currencyCode": "4Ff9D9Yx", "currencyNamespace": "vIjeVtvx", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1986-07-05T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1988-04-05T00:00:00Z", "discountedPrice": 27, "expireAt": "1981-06-18T00:00:00Z", "price": 50, "purchaseAt": "1999-03-28T00:00:00Z", "trialPrice": 89}, {"currencyCode": "2etqMju6", "currencyNamespace": "PwATD45c", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1993-05-18T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1990-06-21T00:00:00Z", "discountedPrice": 12, "expireAt": "1993-12-05T00:00:00Z", "price": 100, "purchaseAt": "1977-12-26T00:00:00Z", "trialPrice": 93}, {"currencyCode": "Upsvvsd3", "currencyNamespace": "pld1hZM9", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1982-02-13T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1977-04-08T00:00:00Z", "discountedPrice": 76, "expireAt": "1980-12-03T00:00:00Z", "price": 12, "purchaseAt": "1989-05-04T00:00:00Z", "trialPrice": 6}], "gR2boxlw": [{"currencyCode": "b9YCmQUW", "currencyNamespace": "fwXwecjv", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1990-02-16T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1972-10-17T00:00:00Z", "discountedPrice": 85, "expireAt": "1983-10-27T00:00:00Z", "price": 72, "purchaseAt": "1984-12-14T00:00:00Z", "trialPrice": 67}, {"currencyCode": "ISdARmTe", "currencyNamespace": "Dt1H9HX1", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1971-02-23T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1982-06-07T00:00:00Z", "discountedPrice": 50, "expireAt": "1981-12-20T00:00:00Z", "price": 55, "purchaseAt": "1993-10-22T00:00:00Z", "trialPrice": 62}, {"currencyCode": "4YLKriFe", "currencyNamespace": "pGXagRHM", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1989-05-01T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1984-10-22T00:00:00Z", "discountedPrice": 81, "expireAt": "1998-12-16T00:00:00Z", "price": 74, "purchaseAt": "1983-06-20T00:00:00Z", "trialPrice": 10}], "fL3FpXYy": [{"currencyCode": "Yl8ejDe7", "currencyNamespace": "F38VwwEc", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1975-11-16T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1975-11-15T00:00:00Z", "discountedPrice": 50, "expireAt": "1973-06-21T00:00:00Z", "price": 38, "purchaseAt": "1981-03-25T00:00:00Z", "trialPrice": 62}, {"currencyCode": "09ufdMoN", "currencyNamespace": "OXaMi344", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1975-12-30T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-02-27T00:00:00Z", "discountedPrice": 9, "expireAt": "1990-05-05T00:00:00Z", "price": 93, "purchaseAt": "1993-05-10T00:00:00Z", "trialPrice": 11}, {"currencyCode": "bJAdyfdg", "currencyNamespace": "hsEZvpc3", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1996-03-26T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1998-12-03T00:00:00Z", "discountedPrice": 28, "expireAt": "1993-01-15T00:00:00Z", "price": 14, "purchaseAt": "1980-07-27T00:00:00Z", "trialPrice": 40}]}, "seasonType": "TIER", "sku": "agRK7aTh", "stackable": false, "status": "ACTIVE", "tags": ["OjJ1oAgp", "ZkKLdd0C", "09y4W8TW"], "targetCurrencyCode": "UT2wMDDP", "targetNamespace": "oeAvYN8f", "thumbnailUrl": "0T0gGEjD", "useCount": 27}' \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'ujujEtka' \
    --appId 'EtX9O0Fi' \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'nALeHHJZ' \
    --baseAppId 'GNLGuMOV' \
    --categoryPath 'Vnm9nGar' \
    --features 'URhUUYM9' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '49' \
    --offset '88' \
    --region 'LPVaGnZn' \
    --sortBy '["name:asc", "createdAt", "displayOrder:asc"]' \
    --storeId '44LEyVhL' \
    --tags 'ru4sr2g2' \
    --targetNamespace 'gNxsoXhN' \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["idn4iU50", "zaOva9bP", "kpMKoVp0"]' \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'OAasi08s' \
    --sku 'ixWgJuGZ' \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '8oz7uLrC' \
    --populateBundle 'true' \
    --region 'Pr5LumV2' \
    --storeId 'lNgigcah' \
    --sku 'uagyVnIH' \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'p6BobfXg' \
    --sku '99WXtPX2' \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["4pHxrlxR", "3s2mmMrX", "1FoiYNZO"]' \
    --storeId 'yD6K4KOe' \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '6UIaK06D' \
    --region '5ylG5OHk' \
    --storeId 'qFBnDQFW' \
    --itemIds 'IA774Q6e' \
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
    --userId '80o0TIO5' \
    --body '{"itemIds": ["Frxbyts0", "KpVThzkI", "8HsEEqMG"]}' \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'MEDIA' \
    --limit '77' \
    --offset '86' \
    --sortBy 'qpJfxrkV' \
    --storeId 'EuAMZmcK' \
    --keyword 'qpV0stmk' \
    --language 'dYjjlFzM' \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '81' \
    --offset '46' \
    --sortBy '["updatedAt:desc", "displayOrder:desc", "name"]' \
    --storeId 'jBIDESoQ' \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'XPNY0ytb' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'KMFC2Cnb' \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'mNFwy0YB' \
    --namespace $AB_NAMESPACE \
    --storeId 'xbOqhBJU' \
    --body '{"appId": "GgyPukzz", "appType": "DLC", "baseAppId": "DMRUggrd", "boothName": "vJpSGlIQ", "categoryPath": "NjyZm9QX", "clazz": "rFpjwsSZ", "displayOrder": 96, "entitlementType": "CONSUMABLE", "ext": {"l0yCKbls": {}, "MtbV4R6r": {}, "9xvGy5EV": {}}, "features": ["GfBUQUwS", "Ar7IezSq", "TsR3X160"], "images": [{"as": "hedPKaNf", "caption": "MFhuu6qu", "height": 34, "imageUrl": "70Rwzz5o", "smallImageUrl": "5uOKootV", "width": 22}, {"as": "KbDP0MJJ", "caption": "X1ODCQiY", "height": 5, "imageUrl": "I1iFluat", "smallImageUrl": "7qnbJUAs", "width": 89}, {"as": "wAxTbQvF", "caption": "t39QfMzo", "height": 18, "imageUrl": "gTsPfxT2", "smallImageUrl": "b1c84wHX", "width": 78}], "itemIds": ["jPiHhuAo", "WANjSTcU", "zsJU1smZ"], "itemQty": {"dtWpB0De": 70, "RcIYns4n": 11, "3rcAgVgN": 37}, "itemType": "EXTENSION", "listable": false, "localizations": {"3iVYdfH6": {"description": "ev0niJLh", "localExt": {"iSyAgl5G": {}, "cENuGC7T": {}, "K6aMOHV8": {}}, "longDescription": "frfmvXRs", "title": "pQhdNIbb"}, "Z8emVLeP": {"description": "fZhFI0V5", "localExt": {"76jtqYbs": {}, "xjL8vTNL": {}, "HWcnuhZp": {}}, "longDescription": "T8d5qKLc", "title": "i4ds5WwE"}, "fadTRVoS": {"description": "UwcfxcD5", "localExt": {"O4J2r1KP": {}, "tRwWhwMD": {}, "u9ROUfT9": {}}, "longDescription": "9TmC2eIr", "title": "2iFasTA0"}}, "lootBoxConfig": {"rewardCount": 7, "rewards": [{"lootBoxItems": [{"count": 2, "itemId": "LTCAKMVU", "itemSku": "AEDnhVCf", "itemType": "fEW7fbjx"}, {"count": 30, "itemId": "SuHWbCxL", "itemSku": "M0TrVl6a", "itemType": "4amk9xZP"}, {"count": 85, "itemId": "KxbHMVqD", "itemSku": "ngD8oYSC", "itemType": "WNqtvvBW"}], "name": "I7YxHmr6", "odds": 0.2614172203491173, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 90, "itemId": "INadow2c", "itemSku": "dvKEqJef", "itemType": "Hci9Cj0G"}, {"count": 67, "itemId": "67CFN2wM", "itemSku": "OzMQkSiL", "itemType": "XZrFdBRh"}, {"count": 30, "itemId": "wk7egBe5", "itemSku": "6CgY6bum", "itemType": "6mAldpeu"}], "name": "Nf6aNdQB", "odds": 0.221672820556853, "type": "PROBABILITY_GROUP", "weight": 50}, {"lootBoxItems": [{"count": 71, "itemId": "WBOqksUi", "itemSku": "pcNZXb5o", "itemType": "Jgd84Ptn"}, {"count": 58, "itemId": "DvUkK8gQ", "itemSku": "98vAbj7X", "itemType": "Wm25KmTs"}, {"count": 12, "itemId": "WWxLzj32", "itemSku": "Lj0Xiz0s", "itemType": "aQljPJwF"}], "name": "Vht9gnq6", "odds": 0.5612639273647638, "type": "REWARD_GROUP", "weight": 52}], "rollFunction": "CUSTOM"}, "maxCount": 54, "maxCountPerUser": 38, "name": "Uvq39Ijy", "optionBoxConfig": {"boxItems": [{"count": 24, "itemId": "UrVI8aZ0", "itemSku": "sdoyxr4e", "itemType": "BJxhhXfp"}, {"count": 25, "itemId": "5GUXjwY2", "itemSku": "1CMKZ7Az", "itemType": "tLzBCZeI"}, {"count": 71, "itemId": "ftpxPX6T", "itemSku": "7g43huXi", "itemType": "24qHdrlC"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 82, "fixedTrialCycles": 76, "graceDays": 16}, "regionData": {"jPRySdOW": [{"currencyCode": "9WYA21RW", "currencyNamespace": "194JJnoz", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1985-02-21T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1979-07-20T00:00:00Z", "discountedPrice": 48, "expireAt": "1979-07-21T00:00:00Z", "price": 27, "purchaseAt": "1973-01-23T00:00:00Z", "trialPrice": 40}, {"currencyCode": "5iSpFgz1", "currencyNamespace": "b6dfOpId", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1999-11-12T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1998-08-13T00:00:00Z", "discountedPrice": 77, "expireAt": "1998-04-11T00:00:00Z", "price": 12, "purchaseAt": "1971-07-10T00:00:00Z", "trialPrice": 18}, {"currencyCode": "M46GVz1a", "currencyNamespace": "XQjoCsJ8", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1995-06-25T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1994-01-07T00:00:00Z", "discountedPrice": 62, "expireAt": "1971-07-29T00:00:00Z", "price": 28, "purchaseAt": "1991-08-19T00:00:00Z", "trialPrice": 16}], "bQ38Kg5A": [{"currencyCode": "3zvMkRG0", "currencyNamespace": "ouldWseC", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1976-12-25T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1990-07-05T00:00:00Z", "discountedPrice": 76, "expireAt": "1975-02-10T00:00:00Z", "price": 10, "purchaseAt": "1978-05-05T00:00:00Z", "trialPrice": 86}, {"currencyCode": "ST42dB5K", "currencyNamespace": "AWbvVdFO", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1994-11-17T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1972-03-16T00:00:00Z", "discountedPrice": 15, "expireAt": "1988-03-08T00:00:00Z", "price": 91, "purchaseAt": "1977-12-10T00:00:00Z", "trialPrice": 68}, {"currencyCode": "tgFIy6rs", "currencyNamespace": "Hk8Qogtc", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1998-09-10T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1975-04-26T00:00:00Z", "discountedPrice": 2, "expireAt": "1976-05-23T00:00:00Z", "price": 4, "purchaseAt": "1982-09-07T00:00:00Z", "trialPrice": 23}], "0B1pucKH": [{"currencyCode": "Mj7Dl0t6", "currencyNamespace": "P62rkuXs", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1999-10-30T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1985-03-02T00:00:00Z", "discountedPrice": 39, "expireAt": "1992-03-25T00:00:00Z", "price": 70, "purchaseAt": "1982-11-30T00:00:00Z", "trialPrice": 47}, {"currencyCode": "01UuG3eS", "currencyNamespace": "XFacAndU", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1978-12-09T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1980-12-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1995-10-20T00:00:00Z", "price": 93, "purchaseAt": "1982-06-05T00:00:00Z", "trialPrice": 60}, {"currencyCode": "ghJNNoS8", "currencyNamespace": "WJkxsEDn", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1976-09-16T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1971-01-21T00:00:00Z", "discountedPrice": 36, "expireAt": "1972-11-15T00:00:00Z", "price": 64, "purchaseAt": "1984-07-25T00:00:00Z", "trialPrice": 24}]}, "seasonType": "PASS", "sku": "bWPKg9GR", "stackable": true, "status": "INACTIVE", "tags": ["fk0iu79C", "DOzWGdhe", "AMaR2UB6"], "targetCurrencyCode": "ekVbyhz4", "targetNamespace": "jUMHXJDx", "thumbnailUrl": "TK0wGT0C", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'WV88jULA' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'aolnplnL' \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'jJCPW5Ip' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 48, "orderNo": "NWHxY2Qe"}' \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 's7fx7wMr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qjz4kAd6' \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'hWsTGlxE' \
    --namespace $AB_NAMESPACE \
    --storeId 'WJLGX4Dx' \
    --body '{"carousel": [{"alt": "IG6gX6fh", "previewUrl": "06gOp8E2", "thumbnailUrl": "VeF0zIif", "type": "video", "url": "ppsbjSNR", "videoSource": "vimeo"}, {"alt": "iobeNCci", "previewUrl": "urERezMh", "thumbnailUrl": "nhjpAU4T", "type": "image", "url": "hXMERfWg", "videoSource": "vimeo"}, {"alt": "ewO3AvgI", "previewUrl": "m94Jrgf9", "thumbnailUrl": "YkDI7Two", "type": "video", "url": "ph5ZTZ5L", "videoSource": "generic"}], "developer": "3YrNc3Yn", "forumUrl": "pVUt0CUB", "genres": ["MassivelyMultiplayer", "Adventure", "Sports"], "localizations": {"22CuXY5w": {"announcement": "lKI0k8Kw", "slogan": "YTazhIOL"}, "ht4IttIN": {"announcement": "07jWNyMq", "slogan": "JiDM55eb"}, "zjOEmugL": {"announcement": "2eztB2ak", "slogan": "qkpZroVY"}}, "platformRequirements": {"72aBIPWr": [{"additionals": "rFOO3vfO", "directXVersion": "77Hb72M6", "diskSpace": "SdCZAzno", "graphics": "nopeC9SI", "label": "02r5Apni", "osVersion": "3YkjRfjq", "processor": "H4KCa4UX", "ram": "Il2ybrrd", "soundCard": "xKplmtFz"}, {"additionals": "1COGLf7K", "directXVersion": "moB1DGsi", "diskSpace": "im3PHDax", "graphics": "m3C4KSnG", "label": "Elb6dmIs", "osVersion": "hRffHvhL", "processor": "H66EoIlj", "ram": "JrBkQqSO", "soundCard": "7aVDS1c5"}, {"additionals": "QGMrSutr", "directXVersion": "gDSzSEpb", "diskSpace": "p8AOl3KY", "graphics": "XTHLaQ1c", "label": "h6qsknnC", "osVersion": "fmtiWhVx", "processor": "pQnbb6HD", "ram": "Ag14VLJN", "soundCard": "7JQsPaaY"}], "kt4m2Eu2": [{"additionals": "bgD7CdRz", "directXVersion": "npFaRzDS", "diskSpace": "nOzjeyNS", "graphics": "dfkmIjLT", "label": "MU37xGQP", "osVersion": "UmZr2orI", "processor": "OnZDWn5s", "ram": "BlZpWgUO", "soundCard": "hFaBC1WN"}, {"additionals": "pPQrczFi", "directXVersion": "sKpy1Rgn", "diskSpace": "yh5nnQ2T", "graphics": "wcxkyVgA", "label": "6W01aVKs", "osVersion": "HBMD2Tjj", "processor": "yRRtSeVK", "ram": "CyYgSpxy", "soundCard": "mjozk2Gz"}, {"additionals": "XJvhqNRV", "directXVersion": "jkCBiwsb", "diskSpace": "FT8vi0t3", "graphics": "h0ZnCeXR", "label": "NIiZXjnR", "osVersion": "qv7dU3tM", "processor": "WYYdAbni", "ram": "xVdCs7ew", "soundCard": "cXddqenq"}], "IeFYTKm4": [{"additionals": "v3bmyykH", "directXVersion": "0mCuxjFe", "diskSpace": "vMN8q8gN", "graphics": "jhCxaGxs", "label": "4O2agIp0", "osVersion": "49FIYRaU", "processor": "xNEO1Wgs", "ram": "rOgDUR8y", "soundCard": "jZe1PfHe"}, {"additionals": "tbJ59ZoQ", "directXVersion": "04oOTenK", "diskSpace": "6qrCViY1", "graphics": "Zdpa4doE", "label": "F70XgHzf", "osVersion": "WbmynQ7X", "processor": "vF0rr8gU", "ram": "jf0lnVr8", "soundCard": "t90BrrpT"}, {"additionals": "vWwrEK8M", "directXVersion": "KZsHmwMU", "diskSpace": "dWBC2frd", "graphics": "clcW0KnS", "label": "nuWArO8z", "osVersion": "T7JQ9p0q", "processor": "QmCBZYoC", "ram": "lulzztjt", "soundCard": "oRDWOmcJ"}]}, "platforms": ["Windows", "IOS", "Android"], "players": ["MMO", "CrossPlatformMulti", "Coop"], "primaryGenre": "Simulation", "publisher": "6WtrKuHV", "releaseDate": "1992-07-20T00:00:00Z", "websiteUrl": "XjrulVkC"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'jERYOVJq' \
    --namespace $AB_NAMESPACE \
    --storeId 'VhbcC1Uh' \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '5VROPZOD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'XIESJTxp' \
    --namespace $AB_NAMESPACE \
    --storeId '0GgM3N21' \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'q3sGaz2k' \
    --itemId 'VoNWn4dG' \
    --namespace $AB_NAMESPACE \
    --storeId 'yJCHbr4Z' \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'UqGiNahx' \
    --itemId 'HU1lLcfP' \
    --namespace $AB_NAMESPACE \
    --storeId 'zhXnGgO6' \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'fcMu5oRc' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'xczGwdn6' \
    --populateBundle 'true' \
    --region 'X24rCvjR' \
    --storeId 'nBklAAxt' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'NFzbKtPO' \
    --namespace $AB_NAMESPACE \
    --storeId 'D5zahc3J' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 21, "comparison": "excludes", "name": "BXFyDWNe", "predicateType": "EntitlementPredicate", "value": "C0D4vgIj", "values": ["VS4uochG", "hifhfHM7", "QVzmJslO"]}, {"anyOf": 58, "comparison": "includes", "name": "a9sPdgOs", "predicateType": "SeasonPassPredicate", "value": "Pm3wcXLe", "values": ["64jIsHeb", "nDS3JUkO", "ZcRCZl5p"]}, {"anyOf": 42, "comparison": "isLessThan", "name": "EqNbqUMJ", "predicateType": "EntitlementPredicate", "value": "jHoCBVbG", "values": ["E1b71u0C", "E7z0H2XM", "5JtZEx3z"]}]}, {"operator": "and", "predicates": [{"anyOf": 39, "comparison": "isLessThanOrEqual", "name": "Dg8UPl11", "predicateType": "SeasonTierPredicate", "value": "1OyRZtup", "values": ["NB3tnhWN", "TZRuYTLu", "AULqM7FF"]}, {"anyOf": 65, "comparison": "isGreaterThanOrEqual", "name": "YsRmcxKl", "predicateType": "SeasonPassPredicate", "value": "uxNTgzN8", "values": ["uHqVXmSB", "syhzAwiO", "YB4YyKCU"]}, {"anyOf": 36, "comparison": "isLessThan", "name": "7SO2fsni", "predicateType": "EntitlementPredicate", "value": "474czNOA", "values": ["V1zBfvBY", "V4brbul0", "B0yg6Dga"]}]}, {"operator": "and", "predicates": [{"anyOf": 44, "comparison": "is", "name": "3xrlPrHe", "predicateType": "EntitlementPredicate", "value": "19HTICuq", "values": ["ft4Tgp9R", "AGMhB3tv", "d5J7bgd6"]}, {"anyOf": 86, "comparison": "isNot", "name": "8XmIMTYU", "predicateType": "SeasonTierPredicate", "value": "oMzoMZxs", "values": ["eUeU1JJO", "o8aKoOX1", "2tbqurB7"]}, {"anyOf": 62, "comparison": "is", "name": "iQZxalK4", "predicateType": "SeasonPassPredicate", "value": "AfnMWvFG", "values": ["96fiAcF1", "9GQoBIpb", "g5kxKMn7"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'MMBzETlk' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "KiPFx2FK"}' \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --name 'dQtKclxY' \
    --offset '2' \
    --tag '5JXuZ94I' \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "d4dWESWE", "name": "WgUXsbaL", "status": "INACTIVE", "tags": ["jvx0IOFq", "jBsN2krG", "8kWUGwDp"]}' \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '5rkWPmpR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId '0PElPQ4M' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "RpK721SC", "name": "7eaoZupa", "status": "ACTIVE", "tags": ["YHparMuh", "gP2Y7Upo", "HGwfg1iG"]}' \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'joXuHPlO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'cCJTn4mR' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '14' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Vzgpn9bB' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'PVtkwxgH' \
    --limit '29' \
    --offset '6' \
    --orderNos '["mvP73AsW", "garIxKdG", "vj0c22Vo"]' \
    --sortBy 'iDnW757X' \
    --startTime '8rnpJdU2' \
    --status 'DELETED' \
    --withTotal 'false' \
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
    --orderNo 'QkaxTnGw' \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5DhnAI0T' \
    --body '{"description": "YvlxDJVI"}' \
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
    --body '{"dryRun": true, "notifyUrl": "dDoCfIb5", "privateKey": "AR2dMcCv"}' \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Aoeqr38D' \
    --externalId 'XG9xFSL1' \
    --limit '93' \
    --notificationSource 'WALLET' \
    --notificationType 'zomEP3fP' \
    --offset '22' \
    --paymentOrderNo 'c6AX272M' \
    --startDate 'aQHXH0Mm' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId '8QN4Pk3l' \
    --limit '72' \
    --offset '62' \
    --status 'AUTHORISE_FAILED' \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "WVqmaIO9", "currencyNamespace": "ikMIVvwM", "customParameters": {"kFNEvAnD": {}, "UJEfiHwp": {}, "G4pTZ8Oi": {}}, "description": "bWrm3XZE", "extOrderNo": "huWzXBNM", "extUserId": "LPt3ZKCG", "itemType": "MEDIA", "language": "BGZ-nVQb", "metadata": {"Lxi6m8Jg": "vN1NfU2k", "tjUO2DBF": "MvcN4G7h", "UEcT33ax": "fAur6Fws"}, "notifyUrl": "Wa4OlwPX", "omitNotification": false, "platform": "odpG7pO8", "price": 84, "recurringPaymentOrderNo": "w9Qt994d", "region": "NBrgRV62", "returnUrl": "Naa3fTBK", "sandbox": false, "sku": "1tkMF9Do", "subscriptionId": "7aCmEwaA", "targetNamespace": "rJeOKKWN", "targetUserId": "gWdEknja", "title": "Wv2kOpHX"}' \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'oKifJkXK' \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0dOrBuJT' \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KGJm0JKC' \
    --body '{"extTxId": "7V8hCpR7", "paymentMethod": "e8j5bGVH", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'WXodAhpR' \
    --body '{"description": "9vhKGMgG"}' \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7PjmGo3U' \
    --body '{"amount": 62, "currencyCode": "67Etg2Zp", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 12, "vat": 48}' \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'c84r4cx7' \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["Steam", "Other", "Epic"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
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
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'QaU4SSUH' \
    --limit '56' \
    --offset '17' \
    --source 'ORDER' \
    --startTime 'lXPzkfw0' \
    --status 'SUCCESS' \
    --transactionId 'VErAluLX' \
    --userId 'f4nzDHvl' \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "k86nE6SY", "eventTopic": "IiFVqy6S", "maxAwarded": 33, "maxAwardedPerUser": 46, "namespaceExpression": "w4EB7KFZ", "rewardCode": "YaO1AZ2h", "rewardConditions": [{"condition": "XgFLpnj8", "conditionName": "Y93tCNXx", "eventName": "cC3d3R0s", "rewardItems": [{"duration": 86, "itemId": "kG0t65QI", "quantity": 23}, {"duration": 73, "itemId": "jXSUcvru", "quantity": 78}, {"duration": 78, "itemId": "IJIXAXto", "quantity": 40}]}, {"condition": "l4wYFSkR", "conditionName": "pNIriGS2", "eventName": "NZ8pyDv8", "rewardItems": [{"duration": 10, "itemId": "gbilkHP3", "quantity": 31}, {"duration": 2, "itemId": "gN2PEk1D", "quantity": 98}, {"duration": 33, "itemId": "xEtEAiRz", "quantity": 18}]}, {"condition": "3dX9qfQC", "conditionName": "ZwC87lv6", "eventName": "d8TGhB82", "rewardItems": [{"duration": 77, "itemId": "1uMLBQyK", "quantity": 79}, {"duration": 93, "itemId": "rDpz0v5e", "quantity": 38}, {"duration": 70, "itemId": "5mo1Fvcz", "quantity": 9}]}], "userIdExpression": "f1KNkSJR"}' \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'mkdw5d3G' \
    --limit '65' \
    --offset '84' \
    --sortBy '["namespace:desc", "rewardCode:desc"]' \
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
    --rewardId 'VyVfeCBx' \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'LKHiiZ2k' \
    --body '{"description": "SeEdTKMQ", "eventTopic": "SozG1Gyg", "maxAwarded": 1, "maxAwardedPerUser": 7, "namespaceExpression": "OSL2kEg9", "rewardCode": "DqRmWkLP", "rewardConditions": [{"condition": "rqHUj62c", "conditionName": "XKzliqCW", "eventName": "NcmafQgj", "rewardItems": [{"duration": 58, "itemId": "miuZSajO", "quantity": 28}, {"duration": 27, "itemId": "twvz8io0", "quantity": 31}, {"duration": 50, "itemId": "QKmUTSVv", "quantity": 26}]}, {"condition": "XYv7yFR4", "conditionName": "aB8M2ReV", "eventName": "PPA6EOtj", "rewardItems": [{"duration": 38, "itemId": "jbZ1Oe0J", "quantity": 77}, {"duration": 89, "itemId": "Y843U3uu", "quantity": 42}, {"duration": 18, "itemId": "qEpeDsai", "quantity": 14}]}, {"condition": "h7vfR1cc", "conditionName": "OVpLOi9J", "eventName": "n3Dz4n7b", "rewardItems": [{"duration": 10, "itemId": "XJluPbjI", "quantity": 80}, {"duration": 62, "itemId": "ouxKP70v", "quantity": 98}, {"duration": 18, "itemId": "hzfms61p", "quantity": 24}]}], "userIdExpression": "p3FWb9t1"}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'Xgf1Qdlc' \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'WQHVJkwg' \
    --body '{"payload": {"dzAEvVzV": {}, "VsSXykhJ": {}, "xgbkwbn2": {}}}' \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '5tZki7As' \
    --body '{"conditionName": "0YXOdmuy", "userId": "xGIDl964"}' \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'Oxx59AGt' \
    --limit '55' \
    --offset '88' \
    --start '88JSgHLS' \
    --storeId 'B83WxWhN' \
    --viewId 'Eb9F8ZPB' \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '0wCsufbu' \
    --body '{"active": false, "displayOrder": 99, "endDate": "1989-10-29T00:00:00Z", "ext": {"YAtCqsKP": {}, "6xndzRaK": {}, "EJeZiMuK": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 32, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "YDfOwR3U", "sku": "k70QpQ34"}, {"id": "QM9q3dqi", "sku": "vlIQMXpc"}, {"id": "DjJzF9xb", "sku": "1EPd6ndz"}], "localizations": {"1jU1X7BS": {"description": "fgKUbp6G", "localExt": {"5MKHmibT": {}, "leEyAOKk": {}, "zUNVId9y": {}}, "longDescription": "5z7AZbxV", "title": "vdmParny"}, "ODqZIjE3": {"description": "Gs32ryHR", "localExt": {"Txsi6csg": {}, "wM1I9OW8": {}, "7b568nXV": {}}, "longDescription": "ndslD3Fu", "title": "9WJlpUcv"}, "pPb04hPS": {"description": "QXueFWvN", "localExt": {"gwYQYAel": {}, "ZmZp6Sx9": {}, "y99IfIud": {}}, "longDescription": "P0zmdRS9", "title": "RXA3fuDT"}}, "name": "NKQg7XY8", "rotationType": "NONE", "startDate": "1975-09-11T00:00:00Z", "viewId": "LrShzy1p"}' \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'B8KzehhF' \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'k6CZSi7x' \
    --storeId 'r5gjR2ei' \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'KDOgqt6o' \
    --storeId 'R4XgL2j0' \
    --body '{"active": false, "displayOrder": 42, "endDate": "1991-06-28T00:00:00Z", "ext": {"84CT3Mii": {}, "DCSQ0trs": {}, "Pl6mx7Mr": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 38, "itemCount": 61, "rule": "SEQUENCE"}, "items": [{"id": "J5gY7vXN", "sku": "WkKYjADk"}, {"id": "lVMYaINv", "sku": "ORHQoQ93"}, {"id": "GkGsoU7j", "sku": "8syhJuhj"}], "localizations": {"sd79KtWC": {"description": "vHccZUUS", "localExt": {"lgbJMw8o": {}, "vxBOAxk3": {}, "yH6D4krr": {}}, "longDescription": "eIOgA5Gw", "title": "w60Micwb"}, "c0la9MGP": {"description": "5bvMguTU", "localExt": {"Q7gTGmuj": {}, "iybM1Pmo": {}, "soB34qZO": {}}, "longDescription": "FthKwPQr", "title": "f6UhkQmU"}, "P3C5uUYr": {"description": "FtHBvJKN", "localExt": {"GVneDoZd": {}, "1nhxE7vl": {}, "D7De3mNS": {}}, "longDescription": "CIbWz0Xi", "title": "QMVzkaur"}}, "name": "1EoB4Ayg", "rotationType": "CUSTOM", "startDate": "1982-02-15T00:00:00Z", "viewId": "3wpJdivx"}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'VRX4uEw8' \
    --storeId 'pMWZ49oo' \
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
    --body '{"defaultLanguage": "BVxWkIRj", "defaultRegion": "8OAouk7I", "description": "2zc4bafj", "supportedLanguages": ["FZBJZZxq", "R41zvjr1", "8CLoZx6f"], "supportedRegions": ["L9lcv3n4", "7vfDkGBh", "TlGnn1IF"], "title": "oowqqKX2"}' \
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
    --storeId 'W2Z5EvFD' \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'zO4gLmI7' \
    --body '{"defaultLanguage": "MfcKlASC", "defaultRegion": "4P5x8P4y", "description": "Hrvuit3s", "supportedLanguages": ["Htz6BRxX", "2asgUe4R", "eib5pT2u"], "supportedRegions": ["y0KAa8cm", "g6T9xtar", "TH6bc4MK"], "title": "fEMmkLhA"}' \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'E3qgRBlW' \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '3DhCGAKM' \
    --action 'CREATE' \
    --itemSku 'aYkmNen1' \
    --itemType 'OPTIONBOX' \
    --limit '65' \
    --offset '39' \
    --selected 'true' \
    --sortBy '["updatedAt:desc", "createdAt:desc", "updatedAt:asc"]' \
    --status 'UNPUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'o5R6YyYw' \
    --updatedAtStart 'kXFgKhaj' \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'GlyU9KE0' \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'KNnjTW6P' \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'RJi5RnYG' \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '93WpGVvM' \
    --action 'CREATE' \
    --itemSku '0qIIRk8y' \
    --itemType 'CODE' \
    --type 'STORE' \
    --updatedAtEnd '3M69gU1K' \
    --updatedAtStart 'q7YULOVx' \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'zpheF5RR' \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'fhNPkzgg' \
    --namespace $AB_NAMESPACE \
    --storeId 'KsCJeTJM' \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '4P92yJp4' \
    --namespace $AB_NAMESPACE \
    --storeId 'imt9boRF' \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'vh3HlyYL' \
    --targetStoreId '41cuC8Lu' \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'pSLxf0Mv' \
    --limit '77' \
    --offset '53' \
    --sku 'fmoN5OoS' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId '00GExV5b' \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lLc9tvfu' \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'B0yDlFJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'BD76euIl' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "sKDHIXAA"}' \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'lGQv2z2l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'I7dN0Yxn' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 57, "orderNo": "vnMTr91T"}' \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'SqjV9ZH5' \
    --body '{"achievements": [{"id": "GqJ1fmEC", "value": 54}, {"id": "GORYEeu6", "value": 7}, {"id": "wLVivhU2", "value": 9}], "steamUserId": "jisSMPno"}' \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '2PpBOGNc' \
    --xboxUserId 'MLXlx1kd' \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ke6ng1TW' \
    --body '{"achievements": [{"id": "sKN6UR2z", "value": 10}, {"id": "hqRBS7uP", "value": 100}, {"id": "t7C3aJNQ", "value": 75}], "serviceConfigId": "QjlX9ZCX", "titleId": "u88qN39L", "xboxUserId": "SxI3DlqG"}' \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'EqYmHCSI' \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'UKoxrfkh' \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'jZ3neCRM' \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'vjH1NInz' \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '4R8KzbdX' \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'i5xwEWfn' \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'o1GrX5HE' \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'y9FKzwZI' \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'QNu5gAe6' \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '4g3TVgzL' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'HQ4sjVa4' \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'FuV4xgYy' \
    --features '["T4HYQqhW", "d5PKp2gE", "YvkDXJMU"]' \
    --itemId '["D1olEOZq", "FSpayJ3E", "hlQEtscf"]' \
    --limit '79' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'B60KNEFK' \
    --body '[{"endDate": "1992-11-10T00:00:00Z", "grantedCode": "rXlMzk2G", "itemId": "Cly4Cffw", "itemNamespace": "9qdyiFMq", "language": "Sw_171", "quantity": 92, "region": "WDke4JsU", "source": "ACHIEVEMENT", "startDate": "1980-05-10T00:00:00Z", "storeId": "jOvSFnSJ"}, {"endDate": "1989-04-17T00:00:00Z", "grantedCode": "8ZevBXMD", "itemId": "jd8LF9tD", "itemNamespace": "BC7HCexu", "language": "jh_765", "quantity": 37, "region": "BJTEZl50", "source": "PURCHASE", "startDate": "1994-09-30T00:00:00Z", "storeId": "ihp9oplp"}, {"endDate": "1991-12-31T00:00:00Z", "grantedCode": "DlTPPGZg", "itemId": "RmU80eLy", "itemNamespace": "SCRGiAX4", "language": "cOR-614", "quantity": 29, "region": "2B9PUcbA", "source": "OTHER", "startDate": "1978-03-21T00:00:00Z", "storeId": "nLJZzb1x"}]' \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WQPJ7H8d' \
    --activeOnly 'true' \
    --appId 'idz0ki3V' \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'pRUxh6wf' \
    --activeOnly 'true' \
    --limit '2' \
    --offset '4' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'k9IyPHDQ' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'FWzBVuuL' \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '1jJfKZHW' \
    --ids '["EXEDpCgZ", "eEg6RTIr", "KH27aQgp"]' \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '9k9qR4De' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --sku 'UlaoghJz' \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'b2xE5tv6' \
    --appIds '["v5BGqhvY", "ccy2SH1C", "lNQerbFJ"]' \
    --itemIds '["HC87lx5l", "no8DhMz6", "5DyPAL9x"]' \
    --skus '["8vzfZO6G", "NYdUrzx9", "L5sLC8nb"]' \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'h4YqdE9C' \
    --itemIds '["bKz8fq5j", "yg25QlJg", "v370uz14"]' \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TyqvAp43' \
    --appId 'heLHMbrZ' \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9zjmUYyb' \
    --entitlementClazz 'CODE' \
    --itemId 'uYwzqkbo' \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8bQtmjgv' \
    --ids '["QBHjwFlU", "dHLbUXhg", "NlqhYk8j"]' \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'xbAz20Ri' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '66vXGe9C' \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'KvALrzxo' \
    --entitlementIds 'hhHVNGUU' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'OVRKi6SM' \
    --namespace $AB_NAMESPACE \
    --userId 'Uc8R9qvy' \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'M6t8gTog' \
    --namespace $AB_NAMESPACE \
    --userId 'lnLjVNp8' \
    --body '{"endDate": "1995-05-28T00:00:00Z", "nullFieldList": ["cml6LaeP", "Pj1FmfRK", "5FlYNAL4"], "startDate": "1985-10-17T00:00:00Z", "status": "INACTIVE", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'aA0Qg5IW' \
    --namespace $AB_NAMESPACE \
    --userId 'WF8kTBPJ' \
    --body '{"options": ["cUKYjog1", "5lp7L2v2", "9c4UBh5K"], "requestId": "iKEdWTSf", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'cA9qwPG9' \
    --namespace $AB_NAMESPACE \
    --userId 'w2xNLMw0' \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'tI7goSjS' \
    --namespace $AB_NAMESPACE \
    --userId 'NQib2Mbw' \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'JV8E2pAG' \
    --namespace $AB_NAMESPACE \
    --userId 'fW1CkQcJ' \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'WiCeLQuA' \
    --namespace $AB_NAMESPACE \
    --userId '6I040d3D' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'i412IBSc' \
    --body '{"duration": 78, "endDate": "1999-02-24T00:00:00Z", "itemId": "Ql5XKjjH", "itemSku": "7eE7OU9M", "language": "Ws6hSBpt", "order": {"currency": {"currencyCode": "KGqgecza", "currencySymbol": "TmSs2JlS", "currencyType": "VIRTUAL", "decimals": 90, "namespace": "Pn3CVvrB"}, "ext": {"ltvAdwpj": {}, "XnPRkzAg": {}, "gLLuINY5": {}}, "free": true}, "orderNo": "DIJloq9x", "origin": "Playstation", "quantity": 19, "region": "nFvbad7e", "source": "PURCHASE", "startDate": "1977-06-20T00:00:00Z", "storeId": "QUDOg35H"}' \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'LtDEABjw' \
    --body '{"code": "R0fNpfNa", "language": "ojQ_pCOb", "region": "8rVnOHMp"}' \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'iTMmRg9K' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "BYplmKxL", "namespace": "rtUFZESf"}, "item": {"itemId": "zLeSMVvD", "itemSku": "XwoX4BHu", "itemType": "zYqwF9nS"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "8NO9Ucpr", "namespace": "TBeY6E9G"}, "item": {"itemId": "n4PBO8ct", "itemSku": "cSp028Rl", "itemType": "FDQ7TMWg"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "lQSE7WYX", "namespace": "2gDyzHfg"}, "item": {"itemId": "ttK3peKe", "itemSku": "8Eo9EQQX", "itemType": "2mN6NzJ0"}, "quantity": 74, "type": "CURRENCY"}], "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Z3Ho04uL' \
    --endTime 'JQb5NsJC' \
    --limit '55' \
    --offset '70' \
    --productId 'NrXH9evo' \
    --startTime 'urI9agZW' \
    --status 'FULFILLED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'GgVWFUnh' \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'V9ZLqDPz' \
    --endTime 'cdwR8T6I' \
    --limit '66' \
    --offset '38' \
    --startTime 'AhnUdul1' \
    --status 'SUCCESS' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Tyfc2fja' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "HO-oTHN", "productId": "OQ44fI2x", "region": "Kj7drA31", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'kOEKyr9p' \
    --itemId 'WUB2SpXZ' \
    --limit '23' \
    --offset '93' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'oHCE6ioY' \
    --body '{"currencyCode": "3NKaid8v", "currencyNamespace": "gKMno9KE", "discountedPrice": 10, "ext": {"5XqLdK6b": {}, "LROte2VM": {}, "ETtXKzwL": {}}, "itemId": "P0E7WlAn", "language": "o492Q1BP", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 76, "quantity": 61, "region": "IpNrSYAU", "returnUrl": "rDSZ2tTt", "sandbox": false}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'aKCwAWXx' \
    --itemId 'NVlaOUc0' \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'jKupcXhB' \
    --userId 'dmdxMH4I' \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo '20kKCep5' \
    --userId 'w7Fxztyg' \
    --body '{"status": "REFUND_FAILED", "statusReason": "wjAljjze"}' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'fdDiTRdM' \
    --userId 'xOVwGaWW' \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'krkXJP6R' \
    --userId 'yPhu5ChM' \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '86OrskCn' \
    --userId 'sClweK0w' \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'kzMoXnV4' \
    --userId 'hRDon5nF' \
    --body '{"additionalData": {"cardSummary": "KWTeJub9"}, "authorisedTime": "1971-06-12T00:00:00Z", "chargebackReversedTime": "1990-05-08T00:00:00Z", "chargebackTime": "1988-03-18T00:00:00Z", "chargedTime": "1999-03-01T00:00:00Z", "createdTime": "1979-05-28T00:00:00Z", "currency": {"currencyCode": "lAsNkuzK", "currencySymbol": "nC1aHaxH", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "A96VHmfM"}, "customParameters": {"qmRxmWfa": {}, "6QQkb0Rx": {}, "wek8nefc": {}}, "extOrderNo": "lSt1OVGP", "extTxId": "0y4feoeo", "extUserId": "v6POmmsu", "issuedAt": "1993-10-29T00:00:00Z", "metadata": {"ZU6rqwGK": "dHJXUd4Y", "lf5Lcfj3": "MnGD35uC", "3LGcBsmP": "Ib8eyGMV"}, "namespace": "71mI8wik", "nonceStr": "RoillKbC", "paymentMethod": "VARbXOxZ", "paymentMethodFee": 28, "paymentOrderNo": "vs7dyiMz", "paymentProvider": "WXPAY", "paymentProviderFee": 41, "paymentStationUrl": "T83EVadJ", "price": 17, "refundedTime": "1977-05-15T00:00:00Z", "salesTax": 74, "sandbox": true, "sku": "ccgRORRk", "status": "INIT", "statusReason": "b6cwHZLh", "subscriptionId": "SQhAENou", "subtotalPrice": 90, "targetNamespace": "hc8PyJ9x", "targetUserId": "bv1hPjaV", "tax": 87, "totalPrice": 85, "totalTax": 57, "txEndTime": "1979-04-06T00:00:00Z", "type": "cPCgLka4", "userId": "KabLaE7e", "vat": 96}' \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'cgaCidAc' \
    --userId 'IFrFl3t0' \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vVuJ5k6a' \
    --body '{"currencyCode": "ULJqow2f", "currencyNamespace": "0tYKfcyf", "customParameters": {"mvNu6ZLT": {}, "BRYfrbKQ": {}, "uET8zl1p": {}}, "description": "ICCezleb", "extOrderNo": "hkhhdR4m", "extUserId": "fFMj3dOW", "itemType": "LOOTBOX", "language": "OJ_325", "metadata": {"7o8F6Dc3": "7hZlZbjN", "EbTw4n2W": "GxYdfurq", "pV4F2Ems": "1E1SlnPr"}, "notifyUrl": "AF1VDXY7", "omitNotification": false, "platform": "DB5R8nyN", "price": 8, "recurringPaymentOrderNo": "OX8kqWv9", "region": "w5Avr44a", "returnUrl": "OLXK3f2w", "sandbox": false, "sku": "HmTcK2Vp", "subscriptionId": "kXatPLrO", "title": "Ub12tQsZ"}' \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ASCFWupR' \
    --userId 'FoFBOhL5' \
    --body '{"description": "EWPgRibC"}' \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'HE4zfXHX' \
    --body '{"code": "Ca4hDlou", "orderNo": "GVGN4U6h"}' \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'gOLIRzD0' \
    --body '{"meta": {"QaB20tXw": {}, "ptgBon4Q": {}, "51rUZJyn": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "TtMVvGOZ", "namespace": "69srJZDi"}, "entitlement": {"entitlementId": "49V2s4Mr"}, "item": {"itemIdentity": "rnLryV0Q", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 55, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "fZ2w0v2Z", "namespace": "YUjJoRpZ"}, "entitlement": {"entitlementId": "ICWQsX5X"}, "item": {"itemIdentity": "JH68rsJZ", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 63, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "gqyQT4or", "namespace": "VcvfYisH"}, "entitlement": {"entitlementId": "41X04Tlu"}, "item": {"itemIdentity": "gQYC6UR0", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 47, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "b5hypUah"}' \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'YpZz03JC' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'EXBNFIk9' \
    --limit '53' \
    --offset '85' \
    --sku '27yaQNI6' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'GpbgVmHG' \
    --excludeSystem 'true' \
    --limit '46' \
    --offset '77' \
    --subscriptionId '55kHrb50' \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'v3ubNGyi' \
    --body '{"grantDays": 90, "itemId": "pTpeJ4pS", "language": "0BGSyJK1", "reason": "LDUckTvE", "region": "yfMizV7O", "source": "wj88Ap2X"}' \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'RH7TKwHp' \
    --itemId 'QrNVyU5O' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'EfsEdAAG' \
    --userId '8qAEsUgp' \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '2NFUJVNy' \
    --userId 'ObJlBae4' \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uWmXgLRR' \
    --userId 'Besjmcap' \
    --force 'false' \
    --body '{"immediate": true, "reason": "7DjP0u1a"}' \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DmZLCFCe' \
    --userId 'Ot7olI9x' \
    --body '{"grantDays": 37, "reason": "BqDfFGqT"}' \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'm7xoCaFO' \
    --userId 'rcuuH71w' \
    --excludeFree 'true' \
    --limit '9' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'nUrrA6Ci' \
    --userId 'eAhC2fkt' \
    --body '{"additionalData": {"cardSummary": "rhdKjILq"}, "authorisedTime": "1993-01-09T00:00:00Z", "chargebackReversedTime": "1973-07-23T00:00:00Z", "chargebackTime": "1980-06-01T00:00:00Z", "chargedTime": "1976-04-18T00:00:00Z", "createdTime": "1989-10-14T00:00:00Z", "currency": {"currencyCode": "PjJ4W5AI", "currencySymbol": "fMdZXy7R", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "Aty7HYOp"}, "customParameters": {"GUQL9OuW": {}, "VI3X1y3h": {}, "jhirYOuI": {}}, "extOrderNo": "U0iyjzFA", "extTxId": "mT2IchwW", "extUserId": "x8ESJsEw", "issuedAt": "1993-12-10T00:00:00Z", "metadata": {"c8P2379K": "dNhyd6dd", "kBhhg6Yc": "NWflOmoZ", "t3kIi9r2": "sD0dgTXi"}, "namespace": "oT10X7Bq", "nonceStr": "hVxIAvLw", "paymentMethod": "b532NTMQ", "paymentMethodFee": 57, "paymentOrderNo": "GV6AxYyJ", "paymentProvider": "XSOLLA", "paymentProviderFee": 8, "paymentStationUrl": "4JvaHT1J", "price": 19, "refundedTime": "1980-08-10T00:00:00Z", "salesTax": 98, "sandbox": true, "sku": "lhTjNVnW", "status": "CHARGE_FAILED", "statusReason": "XVrJ50mD", "subscriptionId": "gghD72mY", "subtotalPrice": 71, "targetNamespace": "vCGo6UqA", "targetUserId": "VcL5nwEl", "tax": 55, "totalPrice": 79, "totalTax": 93, "txEndTime": "1979-10-31T00:00:00Z", "type": "O2r5WMuY", "userId": "wMECRZ83", "vat": 34}' \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'hQjAZ7JV' \
    --namespace $AB_NAMESPACE \
    --userId 'c2oOR9wX' \
    --body '{"count": 96, "orderNo": "OU0dW3aG"}' \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'ALiSWIEg' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 't3tnVqzu' \
    --namespace $AB_NAMESPACE \
    --userId 'kKVwMG1y' \
    --body '{"allowOverdraft": false, "amount": 61, "balanceOrigin": "Playstation", "reason": "jPeab8kd"}' \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'StD1l21m' \
    --namespace $AB_NAMESPACE \
    --userId 'rJvWlM9a' \
    --limit '3' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '2Np4gtm8' \
    --namespace $AB_NAMESPACE \
    --userId 'lc6RFsAO' \
    --body '{"amount": 19, "expireAt": "1995-09-10T00:00:00Z", "origin": "Xbox", "reason": "hIQcr8FB", "source": "GIFT"}' \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'rCBT4nrT' \
    --namespace $AB_NAMESPACE \
    --userId 'Z7IaBySu' \
    --body '{"amount": 22, "walletPlatform": "Steam"}' \
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
    --storeId '61dwmMDK' \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ofAflpu6' \
    --body '{"displayOrder": 77, "localizations": {"rsxJk6WM": {"description": "mLJJpQkt", "localExt": {"7WVhWfk2": {}, "7EymecuU": {}, "EB6ahpFV": {}}, "longDescription": "tldtrH96", "title": "fptiS1Uf"}, "qfHaAynE": {"description": "6v3USRug", "localExt": {"mso6kMX8": {}, "mmhzY4Gm": {}, "EPwETGsF": {}}, "longDescription": "Gl4W66Nq", "title": "Z9L0CdXx"}, "4DRPhIRP": {"description": "Bx5CERW7", "localExt": {"h4gYE7o8": {}, "aPg7fXMt": {}, "42nLbhlh": {}}, "longDescription": "9wgB0OQX", "title": "E4sA0F0m"}}, "name": "ISSkbnDY"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '7DwJzyEx' \
    --storeId 'mtVk9A3S' \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'pIcIjzPO' \
    --storeId 'Ayfdb0Kj' \
    --body '{"displayOrder": 58, "localizations": {"3MmgnOEK": {"description": "sZBJ5V1U", "localExt": {"dnKc8QSM": {}, "YwSddDKc": {}, "31jeCE72": {}}, "longDescription": "NpdDrwhq", "title": "eFsjvezo"}, "nMDAzh94": {"description": "g93lv4u0", "localExt": {"pBX9ZGno": {}, "BvDuHzrK": {}, "jW3k6X0u": {}}, "longDescription": "wJaZBIEo", "title": "uhRczBkw"}, "KAbuGoHk": {"description": "cXidygDC", "localExt": {"KbfWvC4I": {}, "gQOuC0YO": {}, "goKAicK6": {}}, "longDescription": "tpApsZWZ", "title": "d20hMf1I"}}, "name": "Z0H9msIq"}' \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'yusW80NR' \
    --storeId 'ISeAYulq' \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '4XxGGNIm' \
    --end 'bCmoN29i' \
    --start 'HjvRyt7S' \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["TflMEYMr", "VY9uiumK", "Q882O8rT"], "apiKey": "IKyIIcjb", "authoriseAsCapture": false, "blockedPaymentMethods": ["OLvo7sGD", "ScA24t2g", "jUtr3acV"], "clientKey": "zGYTdzVf", "dropInSettings": "8oeWZXL8", "liveEndpointUrlPrefix": "SNiIDxZj", "merchantAccount": "eOuhCsah", "notificationHmacKey": "oRW1BnKp", "notificationPassword": "yMFWcbka", "notificationUsername": "3KHIfNUZ", "returnUrl": "WHYoFRdf", "settings": "93FVFkBH"}' \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "8hBivP3x", "privateKey": "H3Kf4OVR", "publicKey": "p264RNZg", "returnUrl": "WKWLZ8zI"}' \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "ryavxf23", "secretKey": "aTOzYb29"}' \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'NMcwvCmx' \
    --region 'jrfg16KC' \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "SNcuMT57", "clientSecret": "DW566TW5", "returnUrl": "NZfheg1j", "webHookId": "wNwsOgxT"}' \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["HPd6y0ih", "rytRcrUZ", "YIZUpJkd"], "publishableKey": "aQFaiXRB", "secretKey": "f172Evko", "webhookSecret": "9CFXKGXg"}' \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "E1oMVAkI", "key": "UQ0LnwJx", "mchid": "mY06RoRK", "returnUrl": "P3hlLfI8"}' \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "LIkXMswe", "flowCompletionUrl": "2rI6NhrX", "merchantId": 15, "projectId": 49, "projectSecretKey": "7GrQtgj3"}' \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'ftbcG5j6' \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'mM8gBK5n' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["drVn7zCL", "BwPYlCC4", "S6xfWDDd"], "apiKey": "N7ZTOqHM", "authoriseAsCapture": true, "blockedPaymentMethods": ["hVycBnwz", "5FzexSJK", "9HvffxRz"], "clientKey": "StHuLRIX", "dropInSettings": "YyPXqN5i", "liveEndpointUrlPrefix": "sMXQ5gZx", "merchantAccount": "LdVltQhi", "notificationHmacKey": "94w1PW4I", "notificationPassword": "2AcpLkuE", "notificationUsername": "YV3QAuhP", "returnUrl": "xNWnSrN5", "settings": "pAnwv5r7"}' \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'uANOPbk2' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '2JuHP9Gg' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"appId": "32LFDr8r", "privateKey": "4gaX5QbO", "publicKey": "9Am0kafb", "returnUrl": "f3Anyrho"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'BjgMk8Qq' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'xQEx5dKw' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "nacQmG0Q", "secretKey": "MmEhhj3E"}' \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'R2FXL6Go' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'J5cemhdr' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "wrbuSkz3", "clientSecret": "PakuYjpk", "returnUrl": "svAHwxg7", "webHookId": "ixdbzR8p"}' \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'G0MMSM1I' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'zzdYszvQ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["EwJCK1lG", "h2zRDX1k", "dKrFIFKT"], "publishableKey": "p5g667he", "secretKey": "pA4GWYw6", "webhookSecret": "k9xzb5bi"}' \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'QYl9yTd0' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'CrHo7D0g' \
    --validate 'false' \
    --body '{"appId": "VcSPBTYU", "key": "qRRjGAcy", "mchid": "yMrtE9OA", "returnUrl": "5ccdnXJg"}' \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '5D90HY0N' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '6eHUR882' \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Fbee2dLC' \
    --validate 'false' \
    --body '{"apiKey": "UdWU0aCg", "flowCompletionUrl": "77MyLKK1", "merchantId": 86, "projectId": 28, "projectSecretKey": "mV24qz9s"}' \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'qyYPgYcZ' \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'couclLlA' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '48' \
    --namespace 'Q1j7tt6P' \
    --offset '94' \
    --region 'df8x8B1q' \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "4prJ6QqV", "region": "CnG7BfeD", "sandboxTaxJarApiToken": "abgp5ZqT", "specials": ["WXPAY", "PAYPAL", "WALLET"], "taxJarApiToken": "qfpRXTui", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'XBcmW1rY' \
    --region 'FnDkZykv' \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '3xDvJAdl' \
    --body '{"aggregate": "XSOLLA", "namespace": "SOLdqafB", "region": "1y7vhqMi", "sandboxTaxJarApiToken": "eX7jqoqK", "specials": ["ALIPAY", "ALIPAY", "WXPAY"], "taxJarApiToken": "TyXyNKBm", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'SKj4eNUB' \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "xMCIO6EM", "taxJarApiToken": "YBUoKaD0", "taxJarEnabled": true, "taxJarProductCodesMapping": {"FTiodUAk": "PKt3krsr", "pJMEdep4": "J3rmGEr3", "03mM0R4e": "J1Pmr2ZP"}}' \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'CfSFihUu' \
    --end 'cGrANkdy' \
    --start 'FzROWZZN' \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '4WWPuP8u' \
    --storeId 'Guio6rot' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'JrwzGt7w' \
    --storeId 'kgJ9cqGo' \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'K9NRcs1l' \
    --namespace $AB_NAMESPACE \
    --language 'HXHOALki' \
    --storeId 'zm0024kH' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'ogg192Em' \
    --namespace $AB_NAMESPACE \
    --language 'ZQZsp640' \
    --storeId 'qVGNFpim' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath '9dnmGoSr' \
    --namespace $AB_NAMESPACE \
    --language 'pLEx2FdX' \
    --storeId 'JsAst7kf' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 307 'GetIAPItemMapping' test.out

#- 308 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'HkIV2QTY' \
    --region 'lp62SA8C' \
    --storeId '5z0GZfwH' \
    --appId 'KqHBJo7I' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetItemByAppId' test.out

#- 309 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'X9hVVRMN' \
    --categoryPath '0HmpPjzW' \
    --features 'qqE4BEhC' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --language '4X9fdYYJ' \
    --limit '4' \
    --offset '0' \
    --region 'Dv8p0x76' \
    --sortBy '["updatedAt", "updatedAt:asc"]' \
    --storeId '7iOHGwem' \
    --tags 'ZiaVdHNN' \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryItems' test.out

#- 310 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '7BNEFgmL' \
    --region 'xu1XJndL' \
    --storeId '60qVEvTA' \
    --sku '1Cp4JDmN' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemBySku' test.out

#- 311 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'UZCk99Pq' \
    --region 'olLDBxFA' \
    --storeId 'cO9kG4pa' \
    --itemIds 'i8LiqBnn' \
    > test.out 2>&1
eval_tap $? 311 'PublicBulkGetItems' test.out

#- 312 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["LoTLJNmz", "NggPJoTw", "AJreGmGa"]}' \
    > test.out 2>&1
eval_tap $? 312 'PublicValidateItemPurchaseCondition' test.out

#- 313 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'INGAMEITEM' \
    --limit '46' \
    --offset '29' \
    --region 'DlnXBSJc' \
    --storeId '3EJc2DQM' \
    --keyword 'MoVnqWTz' \
    --language '97FNR3Vq' \
    > test.out 2>&1
eval_tap $? 313 'PublicSearchItems' test.out

#- 314 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'bEFOd77k' \
    --namespace $AB_NAMESPACE \
    --language 'nwT75vm8' \
    --region 'bkPapejC' \
    --storeId 'ylcKSLUr' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetApp' test.out

#- 315 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'JtGRKPTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItemDynamicData' test.out

#- 316 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'lObIQfuP' \
    --namespace $AB_NAMESPACE \
    --language 'fZYQ8FHL' \
    --populateBundle 'false' \
    --region 'xRKEgFPl' \
    --storeId 'lDuJ6551' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetItem' test.out

#- 317 GetPaymentCustomization
eval_tap 0 317 'GetPaymentCustomization # SKIP deprecated' test.out

#- 318 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "MGzxKup3", "paymentProvider": "CHECKOUT", "returnUrl": "ALrVVlMJ", "ui": "mtOA9EX4", "zipCode": "DDonZw7E"}' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentUrl' test.out

#- 319 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FImQ9aER' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetPaymentMethods' test.out

#- 320 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Vy9Bnnu1' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUnpaidPaymentOrder' test.out

#- 321 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VArhP4Ff' \
    --paymentProvider 'WXPAY' \
    --zipCode 'Zed1dTSk' \
    --body '{"token": "gH0ZNI8B"}' \
    > test.out 2>&1
eval_tap $? 321 'Pay' test.out

#- 322 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YK8FHsmu' \
    > test.out 2>&1
eval_tap $? 322 'PublicCheckPaymentOrderPaidStatus' test.out

#- 323 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'TTzsUGSY' \
    > test.out 2>&1
eval_tap $? 323 'GetPaymentPublicConfig' test.out

#- 324 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'yLxUtUrb' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetQRCode' test.out

#- 325 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'qhAIASL2' \
    --foreinginvoice 'c0PvMhKJ' \
    --invoiceId 'MSZCnqmc' \
    --payload 'SgoPkmv9' \
    --redirectResult 'Qf9X0SHF' \
    --resultCode 'IIPuRG2f' \
    --sessionId 'jqnAZwEZ' \
    --status '3AvO77Xl' \
    --token 'iz1TPyrn' \
    --type '6t6XkYtM' \
    --userId 'CS9yDPwd' \
    --orderNo 'dqCkS1Ul' \
    --paymentOrderNo 'oOuEUAi7' \
    --paymentProvider 'WALLET' \
    --returnUrl 'Itw3pQKR' \
    > test.out 2>&1
eval_tap $? 325 'PublicNormalizePaymentReturnUrl' test.out

#- 326 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'zUKh7B1W' \
    --paymentOrderNo '4bzolKWi' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentTaxValue' test.out

#- 327 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'jxkISLgG' \
    > test.out 2>&1
eval_tap $? 327 'GetRewardByCode' test.out

#- 328 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'r5dPMTiU' \
    --limit '99' \
    --offset '52' \
    --sortBy '["rewardCode:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 328 'QueryRewards1' test.out

#- 329 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'Xfvbp0V1' \
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
    --appIds '["gLTafPwf", "0NzftkdD", "qOGENuSG"]' \
    --itemIds '["KGPsFLo2", "RC3GsSnV", "AY2rNKhy"]' \
    --skus '["etfIP2sQ", "0z86iIxW", "hmujXIBE"]' \
    > test.out 2>&1
eval_tap $? 331 'PublicExistsAnyMyActiveEntitlement' test.out

#- 332 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'kytJRZz0' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 333 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'gcQrb2Zg' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 334 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'cVOm5qyo' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 335 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["AU0JTdt5", "nL7BYinI", "R1UxwMyW"]' \
    --itemIds '["4iWXdciU", "avXXAMxS", "Ud8JVUAw"]' \
    --skus '["RpZi1uf0", "FtPWkOKv", "O56ouijA"]' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetEntitlementOwnershipToken' test.out

#- 336 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "i3P4PQyw", "language": "IOs_dexo-813", "region": "Tp6K5QJW"}' \
    > test.out 2>&1
eval_tap $? 336 'SyncTwitchDropsEntitlement' test.out

#- 337 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'UbpICBtD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyWallet' test.out

#- 338 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'QRfoUqqD' \
    --body '{"epicGamesJwtToken": "bZVPn3h9"}' \
    > test.out 2>&1
eval_tap $? 338 'SyncEpicGameDLC' test.out

#- 339 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'izoZYufM' \
    --body '{"serviceLabel": 14}' \
    > test.out 2>&1
eval_tap $? 339 'PublicSyncPsnDlcInventory' test.out

#- 340 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '89F0Qf9C' \
    --body '{"serviceLabels": [73, 89, 47]}' \
    > test.out 2>&1
eval_tap $? 340 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 341 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'D8KZwB7t' \
    --body '{"appId": "hPUgKQSW", "steamId": "VDQ7NbHw"}' \
    > test.out 2>&1
eval_tap $? 341 'SyncSteamDLC' test.out

#- 342 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '9cndk4Bm' \
    --body '{"xstsToken": "mbdhqsj1"}' \
    > test.out 2>&1
eval_tap $? 342 'SyncXboxDLC' test.out

#- 343 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'bIv5JRsN' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'zga6Aaic' \
    --features '["KUfPKxOj", "qHYNzUjR", "VflSlFxG"]' \
    --itemId '["umnhjiVD", "KBM6RtLn", "v2oKoRmJ"]' \
    --limit '91' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlements' test.out

#- 344 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'r4h4LKfI' \
    --appId 'cVVdanul' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserAppEntitlementByAppId' test.out

#- 345 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '5kEPG7Pj' \
    --limit '80' \
    --offset '64' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserEntitlementsByAppType' test.out

#- 346 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '9rgi8yaZ' \
    --entitlementClazz 'MEDIA' \
    --itemId 'oZKyVD8v' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementByItemId' test.out

#- 347 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'lBJ1Avd3' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'adSPMh8h' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlementBySku' test.out

#- 348 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'H3nZbzQG' \
    --appIds '["jylBHu3m", "8RjRumY8", "S3fAP6kv"]' \
    --itemIds '["kcW57I9f", "K4d927Zn", "a0FVn5oZ"]' \
    --skus '["vHKt10nD", "lnRqOVFd", "dOw65HNx"]' \
    > test.out 2>&1
eval_tap $? 348 'PublicExistsAnyUserActiveEntitlement' test.out

#- 349 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '6r5m6F6V' \
    --appId 'nna0c0pP' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 350 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'czFNH6o7' \
    --entitlementClazz 'LOOTBOX' \
    --itemId '6w1Xqjyj' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 351 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'iX4b8dWr' \
    --ids '["Oskr2Jyd", "5BdFYtRM", "Jm9tFPJx"]' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 352 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'LQbje2rX' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'vhceNGTK' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 353 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'pLUxN9B2' \
    --namespace $AB_NAMESPACE \
    --userId 'yH8lib3J' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserEntitlement' test.out

#- 354 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'wwLRnkbT' \
    --namespace $AB_NAMESPACE \
    --userId 'drayEomX' \
    --body '{"options": ["gUT2eOy6", "T0BEIDcN", "74DJfJvA"], "requestId": "odaUgen1", "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 354 'PublicConsumeUserEntitlement' test.out

#- 355 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'SlCLvzeZ' \
    --body '{"code": "NO9AfzW7", "language": "RXIo_fR", "region": "vE7ivFXt"}' \
    > test.out 2>&1
eval_tap $? 355 'PublicRedeemCode' test.out

#- 356 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'X6gLQqDb' \
    --body '{"excludeOldTransactions": true, "language": "eO", "productId": "jW4VrIMM", "receiptData": "lnmhGnRV", "region": "dEaqezlV", "transactionId": "sK00Whz0"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillAppleIAPItem' test.out

#- 357 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'E9qYSxkt' \
    --body '{"epicGamesJwtToken": "94UWQk5E"}' \
    > test.out 2>&1
eval_tap $? 357 'SyncEpicGamesInventory' test.out

#- 358 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'CtwQchDU' \
    --body '{"autoAck": false, "language": "vEF_iIZD", "orderId": "1U8mnmqy", "packageName": "5emAWEZv", "productId": "3jX0ZUqn", "purchaseTime": 12, "purchaseToken": "PaL2sSKC", "region": "uS9OojXX"}' \
    > test.out 2>&1
eval_tap $? 358 'PublicFulfillGoogleIAPItem' test.out

#- 359 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '4Onh3w81' \
    --body '{"currencyCode": "xqU2qu9G", "price": 0.4502244504689048, "productId": "oA2YZT0G", "serviceLabel": 86}' \
    > test.out 2>&1
eval_tap $? 359 'PublicReconcilePlayStationStore' test.out

#- 360 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'loL6sQj9' \
    --body '{"currencyCode": "EzWNZE4h", "price": 0.6547635977446736, "productId": "LzOVcFgy", "serviceLabels": [89, 34, 55]}' \
    > test.out 2>&1
eval_tap $? 360 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 361 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'O1o9SIUo' \
    --body '{"appId": "S2SDHhpj", "currencyCode": "H3tznlZg", "language": "xC", "price": 0.1876654216078858, "productId": "6fcl79ID", "region": "ubwn47Cm", "steamId": "8tptfKId"}' \
    > test.out 2>&1
eval_tap $? 361 'SyncSteamInventory' test.out

#- 362 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'GfvloSAo' \
    --body '{"gameId": "15H7AuSb", "language": "dJBd-eV", "region": "Gff2N0k8"}' \
    > test.out 2>&1
eval_tap $? 362 'SyncTwitchDropsEntitlement1' test.out

#- 363 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'mA8o88PJ' \
    --body '{"currencyCode": "ZKIjwAdM", "price": 0.9667520478994601, "productId": "mm0uRgqA", "xstsToken": "Ar3TDYCz"}' \
    > test.out 2>&1
eval_tap $? 363 'SyncXboxInventory' test.out

#- 364 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Fg45VNpx' \
    --itemId 'leQRaBkx' \
    --limit '90' \
    --offset '85' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 364 'PublicQueryUserOrders' test.out

#- 365 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'WjQJsOHn' \
    --body '{"currencyCode": "7aTfHppX", "discountedPrice": 97, "ext": {"kPkm2Hz9": {}, "mZpTlonP": {}, "TAQ4hYM0": {}}, "itemId": "jjf13Svn", "language": "BMZ_493", "price": 100, "quantity": 23, "region": "tHI76CnK", "returnUrl": "JPHZChXu"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicCreateUserOrder' test.out

#- 366 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'pWp3GfOk' \
    --userId 'vRTzmMEz' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrder' test.out

#- 367 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'GWqgijeX' \
    --userId 'Fuyiutu5' \
    > test.out 2>&1
eval_tap $? 367 'PublicCancelUserOrder' test.out

#- 368 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'PAqGLF3m' \
    --userId '8Xla47v7' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserOrderHistories' test.out

#- 369 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'WkFS9wjF' \
    --userId 've20nIi1' \
    > test.out 2>&1
eval_tap $? 369 'PublicDownloadUserOrderReceipt' test.out

#- 370 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'iICDZNpH' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentAccounts' test.out

#- 371 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'PqRS38e0' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '058Wh78I' \
    > test.out 2>&1
eval_tap $? 371 'PublicDeletePaymentAccount' test.out

#- 372 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'XZQteh5K' \
    --language 'oJa0Tqc3' \
    --region '0s1dnHOV' \
    --storeId 'awA1ukR1' \
    --viewId 'vujeXgeW' \
    > test.out 2>&1
eval_tap $? 372 'PublicListActiveSections' test.out

#- 373 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'gfEMqbXf' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'aZuTXNTe' \
    --limit '40' \
    --offset '30' \
    --sku 'chC2pOTa' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserSubscriptions' test.out

#- 374 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'IVRrGmBo' \
    --body '{"currencyCode": "HhZgEUgs", "itemId": "zbDujG1x", "language": "ll_GGAE-YG", "region": "OpyftTPp", "returnUrl": "6Q0shYce", "source": "Ls3Ya0nT"}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSubscribeSubscription' test.out

#- 375 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'rMy9E0Bi' \
    --itemId 'o1XRCqLe' \
    > test.out 2>&1
eval_tap $? 375 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 376 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xbIBDMyx' \
    --userId 'XTEFt0B1' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserSubscription' test.out

#- 377 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vlhhnDnW' \
    --userId 'p9GiFVT1' \
    > test.out 2>&1
eval_tap $? 377 'PublicChangeSubscriptionBillingAccount' test.out

#- 378 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bqOjvh95' \
    --userId 'GKzTZcia' \
    --body '{"immediate": false, "reason": "DkdrHjZ6"}' \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelSubscription' test.out

#- 379 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b5Im03Tw' \
    --userId 'AmMe9i5H' \
    --excludeFree 'false' \
    --limit '45' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserSubscriptionBillingHistories' test.out

#- 380 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'aaF8fFuW' \
    --language 'fbRAynDk' \
    --storeId 'JGo1RoDN' \
    > test.out 2>&1
eval_tap $? 380 'PublicListViews' test.out

#- 381 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'ujVThh52' \
    --namespace $AB_NAMESPACE \
    --userId '4ZEdul6T' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetWallet' test.out

#- 382 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'D7B0cGf1' \
    --namespace $AB_NAMESPACE \
    --userId 'qZInETpJ' \
    --limit '50' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserWalletTransactions' test.out

#- 383 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'JRPs0PFf' \
    --baseAppId 'r5Gujh6N' \
    --categoryPath 'VJwlz9rl' \
    --features '2iF0R2Qg' \
    --includeSubCategoryItem 'true' \
    --itemName 'oeYEzyfi' \
    --itemStatus 'INACTIVE' \
    --itemType 'SEASON' \
    --limit '12' \
    --offset '97' \
    --region 'phTzFIPP' \
    --sortBy '["displayOrder:desc", "name"]' \
    --storeId 'kv5yQslz' \
    --tags 'jTo5WLcx' \
    --targetNamespace 'dKg8Pp4o' \
    > test.out 2>&1
eval_tap $? 383 'QueryItems1' test.out

#- 384 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '583rvVtk' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 384 'ImportStore1' test.out

#- 385 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'pJ2ItWna' \
    --body '{"itemIds": ["p0CAQEZu", "6kjWZe8T", "4TUx7yof"]}' \
    > test.out 2>&1
eval_tap $? 385 'ExportStore1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE