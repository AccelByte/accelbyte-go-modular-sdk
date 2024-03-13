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
    --id '2zPVjNru' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'CJat3ve5' \
    --body '{"grantDays": "2WMWefN8"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'xZENNy65' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '7fFlQc4Q' \
    --body '{"grantDays": "Y9pq7VEV"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "yJS16VOC", "dryRun": true, "fulfillmentUrl": "kBEwWrel", "itemType": "INGAMEITEM", "purchaseConditionUrl": "NxcWYnrg"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'kSzWxfPe' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'G2UTNzcE' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'oPw5ZEA7' \
    --body '{"clazz": "MViTMTIq", "dryRun": false, "fulfillmentUrl": "rC5BBWxs", "purchaseConditionUrl": "L8KciFky"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'BcHiR9cZ' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --name 'fcgR3k9y' \
    --offset '4' \
    --tag 'vMyvCzDI' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "W8SD5lIz", "items": [{"extraSubscriptionDays": 12, "itemId": "7Dldk2Ul", "itemName": "X3mY5vax", "quantity": 42}, {"extraSubscriptionDays": 46, "itemId": "pdOKvGJV", "itemName": "X56GJmmW", "quantity": 77}, {"extraSubscriptionDays": 36, "itemId": "Vk8KeBXu", "itemName": "CicaeWOu", "quantity": 27}], "maxRedeemCountPerCampaignPerUser": 80, "maxRedeemCountPerCode": 44, "maxRedeemCountPerCodePerUser": 50, "maxSaleCount": 90, "name": "qvayqyS0", "redeemEnd": "1989-06-10T00:00:00Z", "redeemStart": "1983-07-26T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["4dpjshl6", "6PAe6GMr", "ApYCmn8Y"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'yyIGLr36' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '4WshjlFN' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "y9oCWiGv", "items": [{"extraSubscriptionDays": 51, "itemId": "UUUlKMkN", "itemName": "PORQCqMZ", "quantity": 57}, {"extraSubscriptionDays": 84, "itemId": "MfVyS11e", "itemName": "P3cpPicb", "quantity": 44}, {"extraSubscriptionDays": 4, "itemId": "MkwOMYp5", "itemName": "IX0FygHw", "quantity": 66}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 42, "maxSaleCount": 78, "name": "vOnrWDqS", "redeemEnd": "1978-10-27T00:00:00Z", "redeemStart": "1993-05-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["OJvYsTU5", "0eJ26iJb", "aDh69CJh"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'HNNKK7Oo' \
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
    --body '{"appConfig": {"appName": "kkqCvwOP"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Lf8RCNgW"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "9c8guiqh"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "uJIdLdNF"}, "extendType": "CUSTOM"}' \
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
    --storeId 'XF3B1VrC' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'QGgyxHlF' \
    --body '{"categoryPath": "1lzUM2BF", "localizationDisplayNames": {"L1PLWfyz": "XlQFJeY9", "jkKbf8Gi": "uW97f5NF", "Ebc4lcL7": "aCLYq2bm"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'NzqqOTYG' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'P4lhzKIb' \
    --namespace $AB_NAMESPACE \
    --storeId 'AiQ5H07J' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '9DPjPGyO' \
    --namespace $AB_NAMESPACE \
    --storeId 'YYpsWSs7' \
    --body '{"localizationDisplayNames": {"5Ot6JGhb": "jz1GdpYN", "FsUg9bQm": "ZBCvpiXh", "MOmSk0Ti": "oX7h47Qt"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'DItxePSc' \
    --namespace $AB_NAMESPACE \
    --storeId 'FdRUQQcG' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath '9aHa9QFA' \
    --namespace $AB_NAMESPACE \
    --storeId 'ToVnB4qS' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'rR3ijw78' \
    --namespace $AB_NAMESPACE \
    --storeId 'uT2O35hj' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'K8IKJR3P' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '31' \
    --code 'nRhNsU5g' \
    --limit '66' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'rjNAZ9eq' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 21}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'C8jNZJrJ' \
    --namespace $AB_NAMESPACE \
    --batchNo '14' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'cvvdpqpU' \
    --namespace $AB_NAMESPACE \
    --batchNo '30' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'z87wwLsU' \
    --namespace $AB_NAMESPACE \
    --batchNo '36' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'PeGiitpk' \
    --namespace $AB_NAMESPACE \
    --code 'wg3fXE1g' \
    --limit '17' \
    --offset '21' \
    --userId '8XO1Z15Y' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'dTIGGaR9' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'zAaXWGos' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'CWmPBG1Q' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BmG2DT9I", "currencySymbol": "zJApwvyz", "currencyType": "REAL", "decimals": 31, "localizationDescriptions": {"LXnPcVEf": "UuM2ZZEP", "ooPHKgz8": "YwybESab", "8ubFgopw": "xeegZHhT"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'VjJOea1p' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"FsRpa5iS": "lMHkq7iY", "YsGDv98S": "NZEmAx6B", "tK5FQcCQ": "RXJrAsGf"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'EOmZRWRH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'daIkncVJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '0TqFqVIf' \
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
    --body '{"data": [{"id": "HKDpFj6d", "rewards": [{"currency": {"currencyCode": "eTiSKCbJ", "namespace": "WSwdALdm"}, "item": {"itemId": "hy3T5mkL", "itemSku": "s2pa0iNo", "itemType": "Mwvlgz5m"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "oQSVZiv8", "namespace": "7w9Hoquh"}, "item": {"itemId": "5eycAbpx", "itemSku": "n1yVyI5n", "itemType": "Haorwkbw"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "QEuSWRwR", "namespace": "v8zibW8P"}, "item": {"itemId": "y3LKOrRh", "itemSku": "JO1lqwTw", "itemType": "Vc0kvl2y"}, "quantity": 72, "type": "CURRENCY"}]}, {"id": "P2JaK73y", "rewards": [{"currency": {"currencyCode": "lXPgjZED", "namespace": "JPltYIzD"}, "item": {"itemId": "ReAMhM0h", "itemSku": "lSeOcISu", "itemType": "oJIspbrL"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "35KFiNuD", "namespace": "VTA1a5bC"}, "item": {"itemId": "QBSzxIiA", "itemSku": "wIJWgiq1", "itemType": "sqOwxX9A"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "vSC7Q458", "namespace": "lPxTYR19"}, "item": {"itemId": "OVBR8a8M", "itemSku": "gtupVYoy", "itemType": "sgDDGKMf"}, "quantity": 97, "type": "CURRENCY"}]}, {"id": "hyoYfJPm", "rewards": [{"currency": {"currencyCode": "RQc0kUjq", "namespace": "fSWWsiSi"}, "item": {"itemId": "zBKlT4h4", "itemSku": "FVvaUbsV", "itemType": "nj2tWEbK"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "nFbpjU8D", "namespace": "1p3tnQlq"}, "item": {"itemId": "1IZLCFt1", "itemSku": "leY6J1B9", "itemType": "oC47IUDH"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "YA6HwXo4", "namespace": "PHnfje8N"}, "item": {"itemId": "cFGdqsiq", "itemSku": "vCpvrVZm", "itemType": "wAGjT42I"}, "quantity": 82, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"W7wlwBwy": "wSIhPjKY", "JorbZDzn": "1GcoytW7", "xhdiTAuU": "cVwkE0Uj"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"gp9hW1cq": "jQ3SavoI", "Qf3lo8yV": "e8JBGB2N", "dDImBEZy": "e9QUlnMO"}}, {"platform": "OCULUS", "platformDlcIdMap": {"svIRz5Ei": "HivIYo9N", "dAcRDngm": "cGBlCAk4", "ch1U1zhH": "2j8weQmS"}}]}' \
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
    --activeOnly 'false' \
    --appType 'GAME' \
    --entitlementClazz 'APP' \
    --entitlementName 'wLLiDncE' \
    --itemId '["SDO4aYG5", "Y1MFRqi2", "QPlaMfzA"]' \
    --limit '51' \
    --offset '2' \
    --origin 'Steam' \
    --userId 'cszDvopG' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["mUwLdU97", "DLcxVXsr", "DQj6E7ZZ"]' \
    --limit '53' \
    --offset '55' \
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
    --body '{"entitlementGrantList": [{"collectionId": "hyu7sqEg", "endDate": "1992-12-30T00:00:00Z", "grantedCode": "1J8IfP5w", "itemId": "54UIYgS9", "itemNamespace": "hFpSGcNx", "language": "Aq_Dp", "origin": "Twitch", "quantity": 78, "region": "V924E40X", "source": "IAP", "startDate": "1979-05-08T00:00:00Z", "storeId": "jXAYxeBo"}, {"collectionId": "4UzZDXts", "endDate": "1997-03-30T00:00:00Z", "grantedCode": "OPFWRYNH", "itemId": "cqrFsqHr", "itemNamespace": "Eqe4wv54", "language": "OoI", "origin": "Other", "quantity": 84, "region": "KX8K9XdK", "source": "OTHER", "startDate": "1997-04-06T00:00:00Z", "storeId": "qpFUh50z"}, {"collectionId": "rYuz9Jrn", "endDate": "1986-02-10T00:00:00Z", "grantedCode": "3SULAAsJ", "itemId": "VeBVxR95", "itemNamespace": "0lJm3kEH", "language": "oHhO_288", "origin": "IOS", "quantity": 16, "region": "XIE2NH6f", "source": "REWARD", "startDate": "1977-07-23T00:00:00Z", "storeId": "wsCsOzl1"}], "userIds": ["avkP6PoQ", "LZ93tQAV", "6qf8rah9"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["1YwmG6xU", "Tja8tPts", "tzYgfacp"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'OCpZ3PIT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '21' \
    --status 'SUCCESS' \
    --userId 'lhSrkqSp' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'tRyNoYsc' \
    --eventType 'REFUND' \
    --externalOrderId 'wBAjsmlh' \
    --limit '52' \
    --offset '73' \
    --startTime 'AxL04yPk' \
    --status 'SUCCESS' \
    --userId 'ku91RtYB' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "KbiNUc0T", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 100, "clientTransactionId": "jtBcr4ld"}, {"amountConsumed": 3, "clientTransactionId": "97NTXRaS"}, {"amountConsumed": 21, "clientTransactionId": "YS8Wlf8n"}], "entitlementId": "sLcoRiao", "usageCount": 7}, {"clientTransaction": [{"amountConsumed": 88, "clientTransactionId": "bIkKBMMV"}, {"amountConsumed": 26, "clientTransactionId": "QdvoJdpb"}, {"amountConsumed": 98, "clientTransactionId": "CLMI84Qt"}], "entitlementId": "6oGVV2JI", "usageCount": 96}, {"clientTransaction": [{"amountConsumed": 79, "clientTransactionId": "XJ7OIvDd"}, {"amountConsumed": 46, "clientTransactionId": "YvaTejNF"}, {"amountConsumed": 58, "clientTransactionId": "MPqoEfkh"}], "entitlementId": "W6ADG2jK", "usageCount": 38}], "purpose": "sMC86kx9"}, "originalTitleName": "YOtPiNUA", "paymentProductSKU": "hfPor2q9", "purchaseDate": "0o4rtg6G", "sourceOrderItemId": "qr7gHeWx", "titleName": "UpU1zOLD"}, "eventDomain": "cb83Y2pU", "eventSource": "XwtAZw2m", "eventType": "DbPUg1BZ", "eventVersion": 23, "id": "ar9cltAJ", "timestamp": "TxqsyzmT"}' \
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
    --body '{"bundleId": "IfCOR2VD", "password": "Oo2VefSN"}' \
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
    --body '{"sandboxId": "vtySseNm"}' \
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
    --body '{"applicationName": "VNraDwn0", "serviceAccountId": "FBAcw2FW"}' \
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
    --body '{"data": [{"itemIdentity": "BFF6gnVq", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fHyDJSVw": "70DUjZJC", "J1bDHw7S": "5kPHnqr6", "PqmZErxF": "07w8VDYM"}}, {"itemIdentity": "AnDPSL6q", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"dep8C4FD": "8As7lXlI", "8gRnk0Av": "8w212NsS", "5thxPti7": "88ZBYbiF"}}, {"itemIdentity": "Wuo6p5MF", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"RvRKjjnV": "89dRttfI", "CW66bdyd": "cIZxGFI8", "uMbPMp2p": "21ItO7Y8"}}]}' \
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
    --body '{"appId": "OZf4RSsQ", "appSecret": "0b5rugY5"}' \
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
    --body '{"backOfficeServerClientId": "ekMYY9F6", "backOfficeServerClientSecret": "Gq0yhOXz", "enableStreamJob": false, "environment": "x5uWoami", "streamName": "3HeF8UW5", "streamPartnerName": "uIPxSP1E"}' \
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
    --body '{"backOfficeServerClientId": "6QgxEpdN", "backOfficeServerClientSecret": "hDyOWKuY", "enableStreamJob": false, "environment": "g5JLZ3UG", "streamName": "IB6yCnnR", "streamPartnerName": "AQrZu3Ee"}' \
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
    --body '{"appId": "bs1zdhQ5", "publisherAuthenticationKey": "adQxPm7v"}' \
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
    --body '{"clientId": "nt5GcUUN", "clientSecret": "TuuOVatr", "organizationId": "wyR0kMFP"}' \
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
    --body '{"relyingPartyCert": "HSeIvMVJ"}' \
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
    --password 'oCADUbWw' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'f2JHGgvR' \
    --itemId 'etu75cmj' \
    --itemType 'INGAMEITEM' \
    --endTime 'WQsbhdt3' \
    --startTime 'YmHfifbW' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'zm5Aw5p8' \
    --itemId 'OiGLNWsQ' \
    --itemType 'INGAMEITEM' \
    --endTime 'yl8GZTjJ' \
    --startTime 'MRxw4kSb' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'qJefTpm5' \
    --body '{"categoryPath": "jlMYSq1s", "targetItemId": "4DMjBCZy", "targetNamespace": "QZ6SUwKT"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'H7HFmwtw' \
    --body '{"appId": "SMXQDyEX", "appType": "SOFTWARE", "baseAppId": "U8f6iHvY", "boothName": "IU5Lm12K", "categoryPath": "cAnQtWeU", "clazz": "To34TjKc", "displayOrder": 64, "entitlementType": "CONSUMABLE", "ext": {"1LGVmPVD": {}, "zFGFrz0B": {}, "rvpxRWec": {}}, "features": ["WFf5RAPD", "TAQfgEgb", "Mpwr5ooQ"], "flexible": true, "images": [{"as": "KYlu5ja9", "caption": "Mm68J3aF", "height": 33, "imageUrl": "F2kwhTSK", "smallImageUrl": "TJOYiWYE", "width": 53}, {"as": "qloLTrlX", "caption": "4M9iW8fK", "height": 9, "imageUrl": "IGMEQ6rE", "smallImageUrl": "IRc4kU04", "width": 48}, {"as": "M5T2MIo9", "caption": "pQIGpg95", "height": 92, "imageUrl": "1nYz3y05", "smallImageUrl": "PncoFNYm", "width": 71}], "inventoryConfig": {"customAttributes": {"TfMPQEtI": {}, "FAeAlG60": {}, "HJ5FIXVy": {}}, "serverCustomAttributes": {"eGn5nJlK": {}, "6BYu6deJ": {}, "3DeO5I7E": {}}, "slotUsed": 42}, "itemIds": ["biQ64AIl", "CUJBqfhd", "ZUHxurOb"], "itemQty": {"gwvM0MG0": 91, "5gLOxv5j": 6, "9sNF1qrz": 6}, "itemType": "SEASON", "listable": true, "localizations": {"V5LGvWpV": {"description": "RhzQOtWm", "localExt": {"59iUOwzW": {}, "0JgJloyX": {}, "85Vx5Z95": {}}, "longDescription": "nr05p5Qh", "title": "2OaYyBqq"}, "lia14UpU": {"description": "GSvjazxO", "localExt": {"cpAi4tg7": {}, "pRILMN12": {}, "GwAoV9Ur": {}}, "longDescription": "p1JuBBng", "title": "LIwC0oqs"}, "vSIAEmSC": {"description": "rZeHAIdu", "localExt": {"uwcWbKkQ": {}, "3RvBG5uV": {}, "qOWzBhGV": {}}, "longDescription": "Ar0o0zwZ", "title": "k0P4JsOO"}}, "lootBoxConfig": {"rewardCount": 96, "rewards": [{"lootBoxItems": [{"count": 1, "duration": 38, "endDate": "1996-11-07T00:00:00Z", "itemId": "Y9lVHLIo", "itemSku": "0KGJfSST", "itemType": "JqsxnaVx"}, {"count": 0, "duration": 92, "endDate": "1972-06-05T00:00:00Z", "itemId": "uMReEd0m", "itemSku": "MIVCPtSs", "itemType": "ciGloeH1"}, {"count": 88, "duration": 83, "endDate": "1997-09-03T00:00:00Z", "itemId": "zCOw4FM1", "itemSku": "sfGRCoto", "itemType": "cGASJRZ6"}], "name": "ymtfckLi", "odds": 0.8445670036094091, "type": "PROBABILITY_GROUP", "weight": 99}, {"lootBoxItems": [{"count": 6, "duration": 59, "endDate": "1992-03-18T00:00:00Z", "itemId": "bpLDFpyY", "itemSku": "c0a31AeW", "itemType": "Zz4CVWvR"}, {"count": 92, "duration": 59, "endDate": "1998-09-10T00:00:00Z", "itemId": "e89aTW8t", "itemSku": "ugSG0t5a", "itemType": "AjDVMaoy"}, {"count": 83, "duration": 25, "endDate": "1978-12-16T00:00:00Z", "itemId": "gYVxg55T", "itemSku": "RmV23MZn", "itemType": "wHmLPXdA"}], "name": "Emqf2VLG", "odds": 0.5013430990552322, "type": "REWARD", "weight": 90}, {"lootBoxItems": [{"count": 70, "duration": 12, "endDate": "1976-05-18T00:00:00Z", "itemId": "7lU3z13J", "itemSku": "UGeQfCWU", "itemType": "fewxdNWx"}, {"count": 62, "duration": 38, "endDate": "1995-03-11T00:00:00Z", "itemId": "HlNuQff9", "itemSku": "U7HYS2b4", "itemType": "OCMFkNax"}, {"count": 23, "duration": 32, "endDate": "1989-06-02T00:00:00Z", "itemId": "n7xcDEtr", "itemSku": "eHIMpAUb", "itemType": "78P6kiYK"}], "name": "t8e4qGBh", "odds": 0.9188027972816477, "type": "REWARD", "weight": 77}], "rollFunction": "CUSTOM"}, "maxCount": 73, "maxCountPerUser": 60, "name": "NpjqT4eA", "optionBoxConfig": {"boxItems": [{"count": 93, "duration": 40, "endDate": "1971-05-19T00:00:00Z", "itemId": "ZLJoMQ8C", "itemSku": "5jGH3CT5", "itemType": "1MvnxD4O"}, {"count": 36, "duration": 86, "endDate": "1987-08-31T00:00:00Z", "itemId": "S47RBIzP", "itemSku": "cw1pZHrx", "itemType": "kSb1pTst"}, {"count": 33, "duration": 67, "endDate": "1974-12-13T00:00:00Z", "itemId": "xnMsX8Qv", "itemSku": "R6HT14TI", "itemType": "M1dWCq3G"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 7, "fixedTrialCycles": 99, "graceDays": 7}, "regionData": {"PeJxKkjo": [{"currencyCode": "fCyRSHlr", "currencyNamespace": "YBuxVLc7", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1999-08-17T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1978-08-26T00:00:00Z", "expireAt": "1971-11-12T00:00:00Z", "price": 47, "purchaseAt": "1972-08-20T00:00:00Z", "trialPrice": 58}, {"currencyCode": "cSaDujMU", "currencyNamespace": "4hqHdD12", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1995-12-03T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1985-12-06T00:00:00Z", "expireAt": "1996-05-29T00:00:00Z", "price": 97, "purchaseAt": "1982-07-10T00:00:00Z", "trialPrice": 28}, {"currencyCode": "p0Ze17vP", "currencyNamespace": "F7Zq3l5I", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1981-12-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1980-10-07T00:00:00Z", "expireAt": "1993-08-09T00:00:00Z", "price": 43, "purchaseAt": "1987-05-23T00:00:00Z", "trialPrice": 93}], "Ne0rRUqN": [{"currencyCode": "O9q5YrEF", "currencyNamespace": "5uRRoKoz", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1982-09-26T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1990-04-17T00:00:00Z", "expireAt": "1981-02-01T00:00:00Z", "price": 95, "purchaseAt": "1974-11-16T00:00:00Z", "trialPrice": 8}, {"currencyCode": "I5MghOWr", "currencyNamespace": "B9wq2QS6", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1988-02-25T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1989-11-08T00:00:00Z", "expireAt": "1995-12-22T00:00:00Z", "price": 72, "purchaseAt": "1972-05-26T00:00:00Z", "trialPrice": 74}, {"currencyCode": "n3x66PFc", "currencyNamespace": "2BwYPyDg", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1978-11-16T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1991-09-30T00:00:00Z", "expireAt": "1992-07-26T00:00:00Z", "price": 98, "purchaseAt": "1991-11-11T00:00:00Z", "trialPrice": 100}], "LcZtNwRp": [{"currencyCode": "DQ6QTG33", "currencyNamespace": "ExdUEFfX", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1978-03-15T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1997-11-03T00:00:00Z", "expireAt": "1986-12-05T00:00:00Z", "price": 19, "purchaseAt": "1984-09-12T00:00:00Z", "trialPrice": 37}, {"currencyCode": "MoNP8fVY", "currencyNamespace": "utnDZRAW", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1974-06-30T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1980-07-25T00:00:00Z", "expireAt": "1993-08-07T00:00:00Z", "price": 66, "purchaseAt": "1988-12-19T00:00:00Z", "trialPrice": 15}, {"currencyCode": "iau0w8Sb", "currencyNamespace": "XyarG2sv", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1992-03-22T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1999-10-18T00:00:00Z", "expireAt": "1981-06-22T00:00:00Z", "price": 74, "purchaseAt": "1984-09-23T00:00:00Z", "trialPrice": 61}]}, "saleConfig": {"currencyCode": "Eht7hwyh", "price": 56}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "GTSiRwfM", "stackable": false, "status": "ACTIVE", "tags": ["O6d0MbA0", "NSQ0rICD", "Pu8mX0F2"], "targetCurrencyCode": "UP5mDPWo", "targetNamespace": "7QdUD5f5", "thumbnailUrl": "wmWQFWOd", "useCount": 100}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'hjU8ROGT' \
    --appId 'wSGJ7MsV' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'RjeZp8ar' \
    --baseAppId 'vJ9nMMXt' \
    --categoryPath 'E9BXFSmO' \
    --features 'ojsDjzyB' \
    --includeSubCategoryItem 'true' \
    --itemType 'MEDIA' \
    --limit '26' \
    --offset '36' \
    --region 'Ik8wt08m' \
    --sortBy '["name", "updatedAt:desc", "createdAt:asc"]' \
    --storeId 'cLLzN4W6' \
    --tags '0WcUTE87' \
    --targetNamespace 'IRcWnyZi' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["KTFhZxSP", "FYI62JNB", "B6a1iNzl"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '7XRsGkvh' \
    --itemIds 'lWqqJ2vr' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'kVdoDfXu' \
    --sku 'Eu9qzHUg' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'hgGJHcBQ' \
    --populateBundle 'false' \
    --region 'rrm2oJ1N' \
    --storeId 'O7tM1leH' \
    --sku 'nTCosk75' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'cErqX6H1' \
    --region 'rKlATcFl' \
    --storeId 'oLclP37R' \
    --itemIds 'K57aTi0E' \
    --userId 'S000vujp' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'JUkdoGD0' \
    --sku 'qDXlseiC' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["G3Jq2heg", "XBe4D7Nl", "AnyL2Lzb"]' \
    --storeId 'jNPuImu9' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'nrpoDLnN' \
    --region 'MKqbBN1U' \
    --storeId 'xsbsn3Ud' \
    --itemIds '93deyCVj' \
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
    --platform 'yvhShE6m' \
    --userId 'LKuZ8frH' \
    --body '{"itemIds": ["lSirvljf", "zKoTtHk7", "TgdXGPYE"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'pdksnCMX' \
    --body '{"changes": [{"itemIdentities": ["YeiC7rHC", "qcLsXJBq", "Mrrk50vm"], "itemIdentityType": "ITEM_ID", "regionData": {"2v5cu7iQ": [{"currencyCode": "wgETjnEt", "currencyNamespace": "H5gmvHDv", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1989-09-09T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1971-12-09T00:00:00Z", "discountedPrice": 4, "expireAt": "1980-03-10T00:00:00Z", "price": 69, "purchaseAt": "1992-04-13T00:00:00Z", "trialPrice": 14}, {"currencyCode": "u6NwowPz", "currencyNamespace": "TJ7Qwbj4", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1999-01-01T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1980-10-12T00:00:00Z", "discountedPrice": 25, "expireAt": "1979-06-20T00:00:00Z", "price": 53, "purchaseAt": "1981-12-12T00:00:00Z", "trialPrice": 83}, {"currencyCode": "PaoS2NH9", "currencyNamespace": "JaZGod0H", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1992-03-21T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1978-11-19T00:00:00Z", "discountedPrice": 99, "expireAt": "1989-02-04T00:00:00Z", "price": 42, "purchaseAt": "1998-03-14T00:00:00Z", "trialPrice": 95}], "aDnQ6CcE": [{"currencyCode": "DJXGU6tK", "currencyNamespace": "FGc4vvN0", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1981-11-27T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1996-11-10T00:00:00Z", "discountedPrice": 7, "expireAt": "1987-01-17T00:00:00Z", "price": 43, "purchaseAt": "1994-04-05T00:00:00Z", "trialPrice": 81}, {"currencyCode": "VXdZpOf0", "currencyNamespace": "dkcO6dvI", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1995-09-02T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1999-05-13T00:00:00Z", "discountedPrice": 19, "expireAt": "1982-07-22T00:00:00Z", "price": 35, "purchaseAt": "1994-11-10T00:00:00Z", "trialPrice": 36}, {"currencyCode": "owfYkovc", "currencyNamespace": "TYNssjZr", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1978-05-11T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1978-02-26T00:00:00Z", "discountedPrice": 73, "expireAt": "1977-02-20T00:00:00Z", "price": 62, "purchaseAt": "1979-11-13T00:00:00Z", "trialPrice": 38}], "wy5VonXY": [{"currencyCode": "lG36eL6f", "currencyNamespace": "1ycJ1Djo", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1994-07-24T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1994-02-23T00:00:00Z", "discountedPrice": 100, "expireAt": "1993-03-26T00:00:00Z", "price": 74, "purchaseAt": "1984-05-14T00:00:00Z", "trialPrice": 98}, {"currencyCode": "5dvGpHVu", "currencyNamespace": "ZZT0gRzL", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1982-03-22T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1997-02-21T00:00:00Z", "discountedPrice": 39, "expireAt": "1987-05-16T00:00:00Z", "price": 41, "purchaseAt": "1989-10-23T00:00:00Z", "trialPrice": 98}, {"currencyCode": "huri8MGT", "currencyNamespace": "nnbN7VMr", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1975-02-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1985-07-06T00:00:00Z", "discountedPrice": 50, "expireAt": "1995-09-04T00:00:00Z", "price": 32, "purchaseAt": "1989-06-25T00:00:00Z", "trialPrice": 9}]}}, {"itemIdentities": ["VCuLyb8J", "XerL0e0Q", "Z2WQSC1x"], "itemIdentityType": "ITEM_ID", "regionData": {"QA0qIcg9": [{"currencyCode": "KZkTHrpz", "currencyNamespace": "0rvAMkDG", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1993-05-13T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1998-11-21T00:00:00Z", "discountedPrice": 5, "expireAt": "1996-05-27T00:00:00Z", "price": 66, "purchaseAt": "1990-08-15T00:00:00Z", "trialPrice": 19}, {"currencyCode": "Shb8zefW", "currencyNamespace": "Ygvroq6g", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1979-05-09T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1989-03-25T00:00:00Z", "discountedPrice": 12, "expireAt": "1991-07-18T00:00:00Z", "price": 14, "purchaseAt": "1976-06-28T00:00:00Z", "trialPrice": 26}, {"currencyCode": "9J7hQmyO", "currencyNamespace": "O6aPaVR6", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1976-09-20T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1975-05-01T00:00:00Z", "discountedPrice": 47, "expireAt": "1984-04-09T00:00:00Z", "price": 94, "purchaseAt": "1998-02-21T00:00:00Z", "trialPrice": 39}], "R7PqXrjx": [{"currencyCode": "QpMn4UM6", "currencyNamespace": "1MOKO13h", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1995-07-17T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1991-02-09T00:00:00Z", "discountedPrice": 91, "expireAt": "1984-03-15T00:00:00Z", "price": 37, "purchaseAt": "1994-06-05T00:00:00Z", "trialPrice": 51}, {"currencyCode": "BG4bA4io", "currencyNamespace": "wkwTZ586", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1975-06-09T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1993-09-11T00:00:00Z", "discountedPrice": 53, "expireAt": "1986-05-23T00:00:00Z", "price": 88, "purchaseAt": "1975-03-01T00:00:00Z", "trialPrice": 75}, {"currencyCode": "JuNddGym", "currencyNamespace": "HFl74lu4", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1973-11-19T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1997-12-15T00:00:00Z", "discountedPrice": 22, "expireAt": "1992-01-29T00:00:00Z", "price": 38, "purchaseAt": "1996-12-08T00:00:00Z", "trialPrice": 98}], "nJoX7nPi": [{"currencyCode": "ODT8Sjj4", "currencyNamespace": "W6STFEkz", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1985-01-24T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1976-04-30T00:00:00Z", "discountedPrice": 40, "expireAt": "1994-07-09T00:00:00Z", "price": 85, "purchaseAt": "1992-12-06T00:00:00Z", "trialPrice": 0}, {"currencyCode": "FvfOQCaV", "currencyNamespace": "tX9zWoRs", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1980-01-28T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1983-03-27T00:00:00Z", "discountedPrice": 73, "expireAt": "1996-12-28T00:00:00Z", "price": 20, "purchaseAt": "1994-07-23T00:00:00Z", "trialPrice": 96}, {"currencyCode": "PBB4S09J", "currencyNamespace": "NuIyXJvs", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1984-03-01T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1996-03-24T00:00:00Z", "discountedPrice": 16, "expireAt": "1995-08-16T00:00:00Z", "price": 76, "purchaseAt": "1987-11-01T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["CPN4qWI7", "hJ9YX7EC", "TfGIbKOk"], "itemIdentityType": "ITEM_ID", "regionData": {"rNcxhZOR": [{"currencyCode": "vXRcSxNU", "currencyNamespace": "8KIYX0qG", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1996-07-13T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1971-12-30T00:00:00Z", "discountedPrice": 89, "expireAt": "1979-06-15T00:00:00Z", "price": 57, "purchaseAt": "1979-09-01T00:00:00Z", "trialPrice": 41}, {"currencyCode": "7Ek3LdDb", "currencyNamespace": "syIr4N7g", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1982-01-28T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1995-08-28T00:00:00Z", "discountedPrice": 60, "expireAt": "1985-02-18T00:00:00Z", "price": 58, "purchaseAt": "1984-12-27T00:00:00Z", "trialPrice": 57}, {"currencyCode": "T1mtM44R", "currencyNamespace": "9fifZ4xK", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1977-12-31T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1975-06-27T00:00:00Z", "discountedPrice": 73, "expireAt": "1990-06-02T00:00:00Z", "price": 97, "purchaseAt": "1992-12-04T00:00:00Z", "trialPrice": 92}], "P3UGOuCD": [{"currencyCode": "kd6ov9tM", "currencyNamespace": "N1velUeE", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1985-01-04T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-05-16T00:00:00Z", "discountedPrice": 37, "expireAt": "1985-08-23T00:00:00Z", "price": 79, "purchaseAt": "1996-05-28T00:00:00Z", "trialPrice": 95}, {"currencyCode": "gAccJJFQ", "currencyNamespace": "iqDC6ezm", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1974-05-30T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1987-10-19T00:00:00Z", "discountedPrice": 35, "expireAt": "1978-04-26T00:00:00Z", "price": 65, "purchaseAt": "1982-09-07T00:00:00Z", "trialPrice": 87}, {"currencyCode": "fnIvEsW6", "currencyNamespace": "y3DTJ4j3", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1975-10-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1980-04-10T00:00:00Z", "discountedPrice": 31, "expireAt": "1972-06-27T00:00:00Z", "price": 41, "purchaseAt": "1982-01-03T00:00:00Z", "trialPrice": 54}], "Pcw57HzU": [{"currencyCode": "XbetLX5y", "currencyNamespace": "2MZbExnA", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1978-01-15T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1998-04-30T00:00:00Z", "discountedPrice": 88, "expireAt": "1975-07-21T00:00:00Z", "price": 47, "purchaseAt": "1972-01-20T00:00:00Z", "trialPrice": 96}, {"currencyCode": "wjO7HrGa", "currencyNamespace": "ZSljFzOj", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1988-04-03T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-11-03T00:00:00Z", "discountedPrice": 7, "expireAt": "1994-07-09T00:00:00Z", "price": 65, "purchaseAt": "1971-05-26T00:00:00Z", "trialPrice": 24}, {"currencyCode": "zsboxGdB", "currencyNamespace": "7gdKrnwH", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1978-04-01T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-04-27T00:00:00Z", "discountedPrice": 53, "expireAt": "1995-03-30T00:00:00Z", "price": 87, "purchaseAt": "1983-08-29T00:00:00Z", "trialPrice": 60}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'INGAMEITEM' \
    --limit '21' \
    --offset '12' \
    --sortBy 'G3u8mXXl' \
    --storeId 'ryjumaJq' \
    --keyword 'SsiuHwJd' \
    --language 'tJMHkTfC' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '23' \
    --offset '88' \
    --sortBy '["name:asc", "displayOrder:asc", "createdAt:asc"]' \
    --storeId 'I5k0I8s7' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'cEYiimdr' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'U2gjZdk6' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'Rm1bTX7A' \
    --namespace $AB_NAMESPACE \
    --storeId 'UinKrrDP' \
    --body '{"appId": "I5ZXcHi4", "appType": "DLC", "baseAppId": "Fd5iTm3g", "boothName": "9ysqzPAw", "categoryPath": "c0L6cuiy", "clazz": "RyOU8eeP", "displayOrder": 99, "entitlementType": "DURABLE", "ext": {"IayOK9so": {}, "gaTx0WWJ": {}, "QkGXPmrj": {}}, "features": ["mfZlJUFy", "7IPHvBfe", "USBgtfCa"], "flexible": false, "images": [{"as": "N3SaKPiz", "caption": "JHcnwerQ", "height": 54, "imageUrl": "BZdySFpK", "smallImageUrl": "crYVK3h9", "width": 3}, {"as": "MMNPoupi", "caption": "4Bl5cuQj", "height": 97, "imageUrl": "emiu3XPG", "smallImageUrl": "oRAoWzgm", "width": 5}, {"as": "8JXjLXjX", "caption": "ULyUSRDi", "height": 62, "imageUrl": "kNrCKPEI", "smallImageUrl": "xWDjf6dl", "width": 40}], "inventoryConfig": {"customAttributes": {"TgobzFVt": {}, "EDSB8fli": {}, "OcaSj77y": {}}, "serverCustomAttributes": {"z4oSGoQ7": {}, "kFzhli2Y": {}, "vHGOmuTv": {}}, "slotUsed": 17}, "itemIds": ["c7Fsha7k", "K7hFZxQl", "q8j2WdlO"], "itemQty": {"xijVe3Vf": 58, "MsX4vgA9": 91, "Z8ELvw3A": 78}, "itemType": "LOOTBOX", "listable": true, "localizations": {"uJx64JXj": {"description": "CCdyUhWx", "localExt": {"IMQdDIHT": {}, "wkLabI5k": {}, "AzqP1MEF": {}}, "longDescription": "3bxHGzT9", "title": "JsyXwWnW"}, "C9AxuJvc": {"description": "s3JstFjp", "localExt": {"GG7fycFl": {}, "p910vhNp": {}, "vFxPG6U3": {}}, "longDescription": "vkYY2D1k", "title": "hOrADYDe"}, "e1tVaTvG": {"description": "JhTDOvks", "localExt": {"FGhdtdSB": {}, "QXp6GF85": {}, "cewJn9pn": {}}, "longDescription": "HvUOvU44", "title": "qXTGKnf9"}}, "lootBoxConfig": {"rewardCount": 88, "rewards": [{"lootBoxItems": [{"count": 66, "duration": 46, "endDate": "1971-01-27T00:00:00Z", "itemId": "yGMqmaTH", "itemSku": "o9nYt8GY", "itemType": "gSDrU8r6"}, {"count": 61, "duration": 3, "endDate": "1972-11-03T00:00:00Z", "itemId": "NasGbuXD", "itemSku": "Mg5FA87x", "itemType": "rH7sDf7F"}, {"count": 17, "duration": 84, "endDate": "1997-03-04T00:00:00Z", "itemId": "X71rVffr", "itemSku": "hwyNPm2S", "itemType": "4mGF9rx5"}], "name": "ddQgkRYL", "odds": 0.8906811221545728, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 30, "duration": 26, "endDate": "1983-05-08T00:00:00Z", "itemId": "jPe4PNnE", "itemSku": "Ex2dDPWD", "itemType": "OOiBCWqE"}, {"count": 95, "duration": 97, "endDate": "1986-05-03T00:00:00Z", "itemId": "EMQthZ9n", "itemSku": "Nz5zTCTh", "itemType": "EYwVC4cq"}, {"count": 35, "duration": 40, "endDate": "1993-07-12T00:00:00Z", "itemId": "GZXtM0So", "itemSku": "ETRIGtpa", "itemType": "eNGJnYHo"}], "name": "qNKucedJ", "odds": 0.17142509419096297, "type": "REWARD", "weight": 29}, {"lootBoxItems": [{"count": 88, "duration": 33, "endDate": "1997-04-12T00:00:00Z", "itemId": "dUjWJ5IS", "itemSku": "ECSPmZdj", "itemType": "a0tro3It"}, {"count": 33, "duration": 44, "endDate": "1984-09-04T00:00:00Z", "itemId": "7INKYmT5", "itemSku": "5B3fLSU0", "itemType": "bQ0QIPSG"}, {"count": 37, "duration": 60, "endDate": "1983-04-02T00:00:00Z", "itemId": "xWJflpIv", "itemSku": "Dgcwb0P3", "itemType": "Ll4DYgCf"}], "name": "xPmUpSNq", "odds": 0.41116117789200535, "type": "REWARD_GROUP", "weight": 3}], "rollFunction": "CUSTOM"}, "maxCount": 39, "maxCountPerUser": 14, "name": "TzvjoFDC", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 58, "endDate": "1998-09-29T00:00:00Z", "itemId": "WuozKmqn", "itemSku": "7MKahW6h", "itemType": "jpYcOzL8"}, {"count": 31, "duration": 25, "endDate": "1984-12-16T00:00:00Z", "itemId": "zKrRCkMG", "itemSku": "3w7sG9sA", "itemType": "EBEPWJSC"}, {"count": 20, "duration": 41, "endDate": "1998-06-30T00:00:00Z", "itemId": "7r2pR1ge", "itemSku": "PoLtfCNO", "itemType": "F4AHiNFw"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 38, "fixedTrialCycles": 28, "graceDays": 12}, "regionData": {"RHnVgmnl": [{"currencyCode": "A48b29yP", "currencyNamespace": "aUportxw", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1991-09-03T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-08-25T00:00:00Z", "expireAt": "1988-11-16T00:00:00Z", "price": 44, "purchaseAt": "1999-08-01T00:00:00Z", "trialPrice": 96}, {"currencyCode": "tUioYBA7", "currencyNamespace": "Px0iUJEK", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1973-05-04T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1987-06-17T00:00:00Z", "expireAt": "1985-07-05T00:00:00Z", "price": 72, "purchaseAt": "1994-10-26T00:00:00Z", "trialPrice": 98}, {"currencyCode": "Ll5yqsnn", "currencyNamespace": "UarMCV6x", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1983-11-05T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1975-07-14T00:00:00Z", "expireAt": "1984-11-07T00:00:00Z", "price": 57, "purchaseAt": "1991-11-28T00:00:00Z", "trialPrice": 2}], "NQMciSOh": [{"currencyCode": "zpwUG83t", "currencyNamespace": "TlJEHBD9", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1981-05-19T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1981-06-10T00:00:00Z", "expireAt": "1996-10-16T00:00:00Z", "price": 51, "purchaseAt": "1994-06-17T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Dhlue2dO", "currencyNamespace": "uexqObeZ", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1972-10-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1995-05-02T00:00:00Z", "expireAt": "1978-06-17T00:00:00Z", "price": 46, "purchaseAt": "1978-12-18T00:00:00Z", "trialPrice": 19}, {"currencyCode": "UR4CgTEO", "currencyNamespace": "pLyKtlgj", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1994-04-24T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-08-06T00:00:00Z", "expireAt": "1982-05-19T00:00:00Z", "price": 48, "purchaseAt": "1999-11-11T00:00:00Z", "trialPrice": 52}], "36gMgjVI": [{"currencyCode": "GjNJbm29", "currencyNamespace": "0K19x32X", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1996-02-16T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1994-02-13T00:00:00Z", "expireAt": "1971-01-12T00:00:00Z", "price": 62, "purchaseAt": "1973-02-24T00:00:00Z", "trialPrice": 18}, {"currencyCode": "3Egazxb8", "currencyNamespace": "BfCl8na0", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1985-07-28T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1997-03-28T00:00:00Z", "expireAt": "1998-08-25T00:00:00Z", "price": 52, "purchaseAt": "1998-10-31T00:00:00Z", "trialPrice": 21}, {"currencyCode": "r89TndqM", "currencyNamespace": "8L1Xg7iZ", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1987-08-02T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1982-03-08T00:00:00Z", "expireAt": "1982-01-09T00:00:00Z", "price": 46, "purchaseAt": "1994-08-16T00:00:00Z", "trialPrice": 77}]}, "saleConfig": {"currencyCode": "Z8tjjgq0", "price": 90}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "9HPvaJrQ", "stackable": true, "status": "ACTIVE", "tags": ["gGJVXrCi", "XN6rIX5P", "F8gVDntg"], "targetCurrencyCode": "glum6ATH", "targetNamespace": "lPZma6ab", "thumbnailUrl": "OUScwP8P", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'i2noRGkx' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'R6qa9HsT' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'rRqOmCFw' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 50, "orderNo": "ITWmMt8w"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'CfGrIsk8' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'M5KEcRqT' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'dyWHjz4d' \
    --namespace $AB_NAMESPACE \
    --storeId 'MevjaE8V' \
    --body '{"carousel": [{"alt": "YozMn9iw", "previewUrl": "Gv4ciFuL", "thumbnailUrl": "SydpQwBY", "type": "image", "url": "Qb9mfGRJ", "videoSource": "vimeo"}, {"alt": "eeOJRb2W", "previewUrl": "1WCjGIxb", "thumbnailUrl": "HiKTbDVl", "type": "image", "url": "dh1lzDu8", "videoSource": "vimeo"}, {"alt": "TMNYb51v", "previewUrl": "Bo1jLmni", "thumbnailUrl": "yDXSG5rP", "type": "image", "url": "0JcPqEDR", "videoSource": "youtube"}], "developer": "JEhxZ4ao", "forumUrl": "tCmW8PiO", "genres": ["Strategy", "Indie", "Strategy"], "localizations": {"cIChwRbs": {"announcement": "AFWx9hQq", "slogan": "52zJXq7s"}, "jHzyqW3i": {"announcement": "Hqm0U8HR", "slogan": "nnPphUez"}, "KlbOhnFh": {"announcement": "1KFtXfyt", "slogan": "aZpzjL01"}}, "platformRequirements": {"0JRUqFx9": [{"additionals": "dCHcl5tD", "directXVersion": "EHqzhqyU", "diskSpace": "xY1MgTPD", "graphics": "J9FT1xBn", "label": "xOlH5uwC", "osVersion": "7mQexMDD", "processor": "IBaqPBi3", "ram": "wTa1mSOs", "soundCard": "djOF83Lj"}, {"additionals": "PYbLQx3m", "directXVersion": "zFeF0wce", "diskSpace": "PVL9PqcU", "graphics": "UJd8yetg", "label": "dHyM0SkH", "osVersion": "LsV8szgB", "processor": "BEyVl2Mf", "ram": "0dk9eL8I", "soundCard": "AAkbMcKY"}, {"additionals": "kSwdAJZy", "directXVersion": "ZUWGaHWj", "diskSpace": "9ZUXdlep", "graphics": "crSU0wTL", "label": "ybgXsIDt", "osVersion": "L5Ue3ZkR", "processor": "OtokqlDe", "ram": "8NzGy82u", "soundCard": "ScLYVvOw"}], "TovkZWEo": [{"additionals": "0EhlUfVS", "directXVersion": "GBtdUqjb", "diskSpace": "T6mBHN6F", "graphics": "w1AKreZF", "label": "c9HCxros", "osVersion": "K0Ku5VRl", "processor": "UaP3hgIX", "ram": "53HhqqcD", "soundCard": "WlDg822o"}, {"additionals": "mvTH4nF6", "directXVersion": "4jYrXSWw", "diskSpace": "3tFIk8fR", "graphics": "Atuk8Rne", "label": "2ZksmYiG", "osVersion": "8Yhe1ZBI", "processor": "jaTlObyJ", "ram": "784y35O4", "soundCard": "qmLiGisb"}, {"additionals": "gDSqojH4", "directXVersion": "mrt6CnZ0", "diskSpace": "XnNtG2RK", "graphics": "tX5s93Q8", "label": "KAN4kJfS", "osVersion": "xienjOFL", "processor": "1O9YDaGv", "ram": "bPV2Ayrr", "soundCard": "Yq9ldOEp"}], "otBg57qe": [{"additionals": "CGgj3MeH", "directXVersion": "ePwGuQqL", "diskSpace": "Ae4Fizvd", "graphics": "lVJsR5vR", "label": "4u5lx3zO", "osVersion": "k0UPIaMu", "processor": "EfmIY9L2", "ram": "il85bce4", "soundCard": "GRdoI0FN"}, {"additionals": "w0vwKWdn", "directXVersion": "c62lyl2M", "diskSpace": "zlecC8ZK", "graphics": "ec96QXzo", "label": "chIBT8vX", "osVersion": "QvjGUmrH", "processor": "SSORXR5J", "ram": "4SSSwihv", "soundCard": "qL7j8QEK"}, {"additionals": "r4dqnEyv", "directXVersion": "OaNkU1Dc", "diskSpace": "iKrde5Qw", "graphics": "WQuGNleP", "label": "dunpUEYd", "osVersion": "s5xnKn85", "processor": "bnlK6Xca", "ram": "JezGOmlV", "soundCard": "olrJC2l9"}]}, "platforms": ["IOS", "Linux", "IOS"], "players": ["Single", "LocalCoop", "CrossPlatformMulti"], "primaryGenre": "FreeToPlay", "publisher": "oPQfV0Cc", "releaseDate": "1984-05-22T00:00:00Z", "websiteUrl": "L7TQpjmK"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'VDGMEq6Y' \
    --namespace $AB_NAMESPACE \
    --storeId 'cPSNev2M' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'KUZsTILh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'lmAkoXL1' \
    --namespace $AB_NAMESPACE \
    --storeId 'NhmjzRUv' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'ZtKFolYR' \
    --itemId 'uKcUW4uG' \
    --namespace $AB_NAMESPACE \
    --storeId 'xbNfiPvm' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'SgiCVVA7' \
    --itemId 'xAEEeguH' \
    --namespace $AB_NAMESPACE \
    --storeId 'JiQAo3q8' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'bLqvtvXW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'LOa7yk2g' \
    --populateBundle 'false' \
    --region '47UgMUam' \
    --storeId '5NpM75SD' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'oRlL9QYE' \
    --namespace $AB_NAMESPACE \
    --storeId 'VuN5bbpW' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 3, "comparison": "isGreaterThan", "name": "k84DlhNx", "predicateType": "SeasonTierPredicate", "value": "bpsvM5YE", "values": ["wkXmHcFE", "GeLtJv1i", "wvqJwE16"]}, {"anyOf": 57, "comparison": "isNot", "name": "ECZSYSrC", "predicateType": "SeasonTierPredicate", "value": "y7kCn8DJ", "values": ["tj9ckC3w", "YHKVka7z", "ch89NGHM"]}, {"anyOf": 31, "comparison": "excludes", "name": "qK4RyMt8", "predicateType": "SeasonPassPredicate", "value": "Cnrialcd", "values": ["BtSfonf5", "s9RCajDC", "dIboRlxA"]}]}, {"operator": "or", "predicates": [{"anyOf": 23, "comparison": "isGreaterThanOrEqual", "name": "AMQhZvQF", "predicateType": "EntitlementPredicate", "value": "rkqesvL9", "values": ["uXtfzMlN", "IjgaTL7u", "UGzCw9PW"]}, {"anyOf": 39, "comparison": "isLessThan", "name": "V2yB35Du", "predicateType": "SeasonTierPredicate", "value": "qA2DucjF", "values": ["nj8NZj84", "BWsjMuMl", "jbjnV3hK"]}, {"anyOf": 25, "comparison": "includes", "name": "aOtk48zc", "predicateType": "SeasonPassPredicate", "value": "nppyjA2G", "values": ["AA6D4SIR", "WtuKNnNL", "E8VWrpfv"]}]}, {"operator": "and", "predicates": [{"anyOf": 15, "comparison": "isLessThanOrEqual", "name": "JPl1mhCJ", "predicateType": "SeasonPassPredicate", "value": "r90kcnRn", "values": ["eU4fZIJC", "zZRpx5tz", "gpFSa28D"]}, {"anyOf": 20, "comparison": "excludes", "name": "lQuKjPd1", "predicateType": "SeasonPassPredicate", "value": "ENsB6gnd", "values": ["AHjcvCC2", "TS3b4mWz", "4OlA3kQ6"]}, {"anyOf": 9, "comparison": "includes", "name": "3qnaoL7b", "predicateType": "EntitlementPredicate", "value": "m16W9dl8", "values": ["VkUyGP5r", "sg216sOp", "FQnE9iL3"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'OyjmrAfQ' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "KSKzjZH6"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name '1IJ8vOza' \
    --offset '98' \
    --tag 'VxnETnJT' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IdfQphq6", "name": "q3pi8wuC", "status": "ACTIVE", "tags": ["xHvnwXK4", "yNS7U6iE", "7fn2bgqk"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '0giIlQZm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'jYCqzgs8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0YXM98Be", "name": "POPvpQHp", "status": "ACTIVE", "tags": ["edwgL5d2", "RJtVR4FI", "CcqHaSdn"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'LVpoExQP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 't6tRl4zg' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '83' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'HasgrgyS' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'TZ68T9uK' \
    --limit '60' \
    --offset '40' \
    --orderNos '["79vDBL3T", "1P8q7SRL", "mcEfEwGp"]' \
    --sortBy 'R0BSbPAX' \
    --startTime 'RgHvLuXU' \
    --status 'DELETED' \
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
    --orderNo 'o9bbAMZo' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vbFnc8Ja' \
    --body '{"description": "MBFxfciv"}' \
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
    --body '{"dryRun": false, "notifyUrl": "Ct2GRGf3", "privateKey": "FOHJjpLd"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'u4F7duHS' \
    --externalId 'DwQI3a56' \
    --limit '85' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'hCm72iBk' \
    --offset '85' \
    --paymentOrderNo '2c0SPFKQ' \
    --startDate '2ewe1jhN' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'WNy90D3V' \
    --limit '7' \
    --offset '55' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Fsfzybq1", "currencyNamespace": "YHQBuSWN", "customParameters": {"7SaimYm4": {}, "jCq4a7KS": {}, "3oMGSmD0": {}}, "description": "rAPSnEUH", "extOrderNo": "MjybSMFj", "extUserId": "u8j7nP65", "itemType": "SUBSCRIPTION", "language": "rc-IQHd", "metadata": {"DwjABRtU": "Sd2hxNpO", "kPoR87Ge": "rF8ZxJdN", "MZjSa6qW": "8sYbiOtp"}, "notifyUrl": "X7ovOH1u", "omitNotification": true, "platform": "Rwl5u5F1", "price": 2, "recurringPaymentOrderNo": "76ihz25f", "region": "We9hQX10", "returnUrl": "WALOVS35", "sandbox": false, "sku": "ixSZBYKs", "subscriptionId": "O3q7xGoS", "targetNamespace": "QnvgYUiK", "targetUserId": "NePiRxsd", "title": "UblvJzZh"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'JdUbOAP9' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Dl3AWllC' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vJslUx7o' \
    --body '{"extTxId": "IHHqydvz", "paymentMethod": "S1Bagk2z", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oNhUhtyu' \
    --body '{"description": "NgV5gib9"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'tUlKNtgK' \
    --body '{"amount": 39, "currencyCode": "qqbLTghV", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 83, "vat": 56}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'TjEAjvvJ' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedPlatformOrigins": ["Twitch", "Oculus", "Twitch"]}' \
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
    --body '{"allowedBalanceOrigins": ["Steam", "Nintendo", "Steam"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'Q7SLsaCW' \
    --limit '94' \
    --offset '52' \
    --source 'ORDER' \
    --startTime 'OQPuKvDI' \
    --status 'FAIL' \
    --transactionId 'YofZdCVr' \
    --userId 'fZ4y1rBk' \
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
    --body '{"appConfig": {"appName": "RJ9QVUjx"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "k0J5WBdR"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "7GUGxPpl", "eventTopic": "C8vHqygP", "maxAwarded": 19, "maxAwardedPerUser": 52, "namespaceExpression": "kGzl4k1V", "rewardCode": "NCjtEQwo", "rewardConditions": [{"condition": "kA6SVsA3", "conditionName": "IcRdrpak", "eventName": "ukXXCtiT", "rewardItems": [{"duration": 29, "endDate": "1974-03-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "f9xNpE0O", "quantity": 36, "sku": "Bq0lbMZQ"}, {"duration": 21, "endDate": "1982-04-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vA6FHIkt", "quantity": 48, "sku": "rw82SHc5"}, {"duration": 8, "endDate": "1973-08-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "E5kmihjK", "quantity": 9, "sku": "tclFSFT7"}]}, {"condition": "qbZNiWHg", "conditionName": "NopDO4n7", "eventName": "GF3W2sQf", "rewardItems": [{"duration": 88, "endDate": "1974-10-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QHNVoK8J", "quantity": 86, "sku": "GHWVBE8k"}, {"duration": 27, "endDate": "1976-12-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qlQvbxiz", "quantity": 75, "sku": "7n48Fbas"}, {"duration": 87, "endDate": "1995-07-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Uj1AIj5f", "quantity": 51, "sku": "I32bdBeK"}]}, {"condition": "oREijTu3", "conditionName": "3yozyT2b", "eventName": "pnIR1CxT", "rewardItems": [{"duration": 37, "endDate": "1974-02-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3f6vTXAh", "quantity": 52, "sku": "OQMnqYle"}, {"duration": 52, "endDate": "1982-02-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UQcZHQmb", "quantity": 5, "sku": "Is8RRDjx"}, {"duration": 95, "endDate": "1974-04-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "FPtXiIiz", "quantity": 65, "sku": "gVsfJatd"}]}], "userIdExpression": "yFl4kr9J"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'MI1QPZPu' \
    --limit '69' \
    --offset '35' \
    --sortBy '["namespace", "rewardCode:asc"]' \
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
    --rewardId 'Mqm7Zg4N' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'cb1xjwaR' \
    --body '{"description": "Rby9FpaC", "eventTopic": "wHj1NVL8", "maxAwarded": 60, "maxAwardedPerUser": 6, "namespaceExpression": "LLfXTIop", "rewardCode": "Qdf85fJe", "rewardConditions": [{"condition": "kH9M54Xw", "conditionName": "cwzLp8bL", "eventName": "7xEwWfMG", "rewardItems": [{"duration": 28, "endDate": "1973-03-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "izNQ3pLt", "quantity": 82, "sku": "tXbNHySI"}, {"duration": 33, "endDate": "1980-09-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YY6pU0bB", "quantity": 87, "sku": "IFk2yg2C"}, {"duration": 43, "endDate": "1994-05-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0XGttwbh", "quantity": 15, "sku": "MCUt3C3b"}]}, {"condition": "XLnJEBX3", "conditionName": "XE5RuM2B", "eventName": "hWKYx2oF", "rewardItems": [{"duration": 60, "endDate": "1971-12-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mTLhJ9b2", "quantity": 79, "sku": "H51gRUmK"}, {"duration": 43, "endDate": "1974-10-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sRTbqmbL", "quantity": 23, "sku": "Zvvt7gSs"}, {"duration": 99, "endDate": "1983-08-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LrIcHsdu", "quantity": 96, "sku": "8Qgd1a3F"}]}, {"condition": "GrIVhDBh", "conditionName": "T63wYz0f", "eventName": "n45Qxh33", "rewardItems": [{"duration": 27, "endDate": "1994-03-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5YKvm3qo", "quantity": 99, "sku": "TL1wnREj"}, {"duration": 62, "endDate": "1989-01-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "37dZS38M", "quantity": 44, "sku": "QKusquvD"}, {"duration": 84, "endDate": "1975-06-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bM6Iy8be", "quantity": 14, "sku": "N9gDIL4N"}]}], "userIdExpression": "FfVilaVc"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'QhzgZ2Tk' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'jGW3wfya' \
    --body '{"payload": {"AMJV4SbM": {}, "krUmohte": {}, "nyHTjzUa": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '2BPScPYu' \
    --body '{"conditionName": "ykPh4SqI", "userId": "druVc2fw"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'p56WCRGz' \
    --limit '90' \
    --offset '20' \
    --start 'lrfoZbJL' \
    --storeId 'LBJiF4es' \
    --viewId 'LLLhjDe0' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'F9oiLfnP' \
    --body '{"active": true, "displayOrder": 71, "endDate": "1990-04-11T00:00:00Z", "ext": {"3wVA4xKX": {}, "BSFKdEmK": {}, "Wx4vvftB": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 8, "itemCount": 59, "rule": "SEQUENCE"}, "items": [{"id": "SWixflWG", "sku": "vh8linOL"}, {"id": "Np2b7epJ", "sku": "77th9arj"}, {"id": "EYH41WRW", "sku": "Ptest99A"}], "localizations": {"O9ncBRBc": {"description": "oHga6GuU", "localExt": {"3jGM2deU": {}, "YsGQdSw6": {}, "GlgzPOH3": {}}, "longDescription": "ryEuA30k", "title": "M7DfCX03"}, "fpIBC1is": {"description": "709AmQji", "localExt": {"HDItomm4": {}, "KVKaEp1K": {}, "4ITsZcng": {}}, "longDescription": "IyEDnQZJ", "title": "VxkyxAei"}, "T8NDlnv1": {"description": "9kS1KVSq", "localExt": {"kG4oyOEB": {}, "CdvY9yev": {}, "mLfJcU9L": {}}, "longDescription": "O5l744i5", "title": "ej7BFPM1"}}, "name": "3Ll9N7HM", "rotationType": "NONE", "startDate": "1977-09-26T00:00:00Z", "viewId": "Z7QiWnX3"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'EfEynhsX' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XmbSkMpM' \
    --storeId '9Qzm2t9n' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'GviDNnKK' \
    --storeId 'ltVoU89R' \
    --body '{"active": true, "displayOrder": 40, "endDate": "1986-02-16T00:00:00Z", "ext": {"cyP16F1o": {}, "aHwAaKJL": {}, "t6h8eqxn": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 79, "itemCount": 3, "rule": "SEQUENCE"}, "items": [{"id": "JW1Kg5CC", "sku": "qgxfXmRc"}, {"id": "tFz0lngM", "sku": "QT44c1uy"}, {"id": "Xf2pB9SN", "sku": "DtEd7oZP"}], "localizations": {"0crMeqR9": {"description": "W24J5mqt", "localExt": {"cNHOMYGg": {}, "aCUhhsEe": {}, "BhHlOg5G": {}}, "longDescription": "q3y5estC", "title": "BhgzIct4"}, "IszoHc3X": {"description": "m62nrBT9", "localExt": {"RypZ036G": {}, "y1WUmMtu": {}, "qj7Ghvo4": {}}, "longDescription": "1xKy2RSL", "title": "yDSyVOFU"}, "47WDahBV": {"description": "cypgLAeY", "localExt": {"L4I0lov1": {}, "rxgirTXp": {}, "iTsLE6Xm": {}}, "longDescription": "Z07SyB1I", "title": "t600lMUV"}}, "name": "oKoU0SmO", "rotationType": "NONE", "startDate": "1996-02-21T00:00:00Z", "viewId": "Cv1CtmHC"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '3SxrbNs8' \
    --storeId 'hu8YXfHY' \
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
    --body '{"defaultLanguage": "iYbkwXCS", "defaultRegion": "iaU4rPDk", "description": "PX0NTdg0", "supportedLanguages": ["T65CT2Fn", "snTosS2H", "wZuIj3oi"], "supportedRegions": ["AIatrORt", "tqJir6lm", "AlTI8oYs"], "title": "JCXk6eZe"}' \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
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
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["pNaFKeMB", "0I3GhIdz", "r9c6Kh9M"], "idsToBeExported": ["M8eqcWyX", "YVV0E30j", "q19ftfB9"], "storeId": "MhnafBga"}' \
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
    --storeId 'hb4NahXH' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'fHfMMpSn' \
    --body '{"defaultLanguage": "NLwWSRkq", "defaultRegion": "6cZakOVd", "description": "4DvSMrBL", "supportedLanguages": ["2mUf2uzX", "BMmxO8zp", "N3Zb9cNe"], "supportedRegions": ["o1iR1QDu", "La2TXvOw", "mo6tOwqH"], "title": "Ov2hsxma"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'B82Mdyym' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'lY33W77P' \
    --action 'CREATE' \
    --itemSku 'pa8jc3Uz' \
    --itemType 'COINS' \
    --limit '91' \
    --offset '28' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:desc", "createdAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'RCnsVXK6' \
    --updatedAtStart 'Ppj4Nn4M' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'QKEChkZc' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId '5pcx8yAF' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'uNvcOi9N' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'wQX6m2rZ' \
    --action 'UPDATE' \
    --itemSku '537xNE5V' \
    --itemType 'MEDIA' \
    --selected 'false' \
    --type 'SECTION' \
    --updatedAtEnd 'k197E2BZ' \
    --updatedAtStart 'z4f9wu3Z' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'lioHH9Cm' \
    --action 'UPDATE' \
    --itemSku 'Rzz05uTh' \
    --itemType 'SEASON' \
    --type 'VIEW' \
    --updatedAtEnd 'BQQuBAPq' \
    --updatedAtStart 'mAV1uKFy' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'a14ovjI1' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'U65tLVKa' \
    --namespace $AB_NAMESPACE \
    --storeId '2BLoq717' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'cFVJY4bR' \
    --namespace $AB_NAMESPACE \
    --storeId '8Pwc2xBP' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'eaOqYUe2' \
    --targetStoreId 'SmvYEqh1' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'n4MbWVtz' \
    --end 'y8IVp6RH' \
    --limit '70' \
    --offset '55' \
    --sortBy 'emd5FvDx' \
    --start 'SaFveSKZ' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'XfXGB3FB' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'v18ISyKr' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'CfvWsMkC' \
    --limit '64' \
    --offset '61' \
    --sku 'abD6QFMe' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'CWcRs19x' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hUjWd8dj' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'BzaXNY9R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'nicM3fmM' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "2gLgDP6a"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'PxmzeHUM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '0d85N8xT' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 11, "orderNo": "GpxLOlQw"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 38, "currencyCode": "Y3en27Sw", "expireAt": "1997-12-25T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "Y92vpyKx", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "i8eyZQtG", "entitlementOrigin": "Steam", "itemIdentity": "9g8u54lv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 20, "entitlementId": "DMIj9BH1"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 81, "currencyCode": "afyzBoJq", "expireAt": "1972-08-26T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "59W28q2l", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "OsPgTu6i", "entitlementOrigin": "Oculus", "itemIdentity": "SRxjMEuS", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "yLSqSPk8"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 49, "currencyCode": "V4SYSHhs", "expireAt": "1977-07-29T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "e1BX6mfk", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 18, "entitlementCollectionId": "kJUeqU9w", "entitlementOrigin": "GooglePlay", "itemIdentity": "RskkuAyh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "jAcEiG7J"}, "type": "FULFILL_ITEM"}], "userId": "fxlaEJwI"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 27, "currencyCode": "mkrnUCxw", "expireAt": "1996-04-08T00:00:00Z"}, "debitPayload": {"count": 40, "currencyCode": "7Ry2HAfn", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "6W5yeibc", "entitlementOrigin": "System", "itemIdentity": "FcktYWOO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "NcnKwBxA"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 10, "currencyCode": "TYOC6baG", "expireAt": "1986-01-15T00:00:00Z"}, "debitPayload": {"count": 50, "currencyCode": "fFkpmmEB", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "MPeTqkae", "entitlementOrigin": "Nintendo", "itemIdentity": "0eFHZVIA", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "usbl6kXV"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 55, "currencyCode": "1nMt6jhs", "expireAt": "1975-05-30T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "lyjL9oGg", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "Zx8zmWB0", "entitlementOrigin": "Other", "itemIdentity": "br6VbJBi", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "MPzzMtDD"}, "type": "FULFILL_ITEM"}], "userId": "NusCDeie"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 42, "currencyCode": "jGYyjTRZ", "expireAt": "1983-09-13T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "4LYOEIzq", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "fTWRmgFv", "entitlementOrigin": "Playstation", "itemIdentity": "msh4uIOZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 51, "entitlementId": "332l9eKq"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 80, "currencyCode": "uEJPK1PQ", "expireAt": "1999-10-24T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "gGUvp260", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "fUEaHzk3", "entitlementOrigin": "Steam", "itemIdentity": "e7nwmvaj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "wYGg2vya"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 0, "currencyCode": "Anh2vSlH", "expireAt": "1996-08-13T00:00:00Z"}, "debitPayload": {"count": 91, "currencyCode": "lb1D8nV4", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 6, "entitlementCollectionId": "tPbkdHUC", "entitlementOrigin": "Epic", "itemIdentity": "jTBTarP7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "62zgmI1a"}, "type": "CREDIT_WALLET"}], "userId": "qCJwU90A"}], "metadata": {"SlLi91Lo": {}, "q8HToaAK": {}, "n5XVM0vf": {}}, "needPreCheck": false, "transactionId": "87ORkEPv", "type": "rXRSftwH"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '52' \
    --status 'INIT' \
    --type 'UcyQk52O' \
    --userId 'XKnktCwX' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'JtbeXMIK' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'w5lL2uTt' \
    --body '{"achievements": [{"id": "uT83zI01", "value": 24}, {"id": "UNxdq836", "value": 52}, {"id": "eF5mAbYK", "value": 82}], "steamUserId": "RrjupYJC"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'KUwdRjV9' \
    --xboxUserId 'hEFcDYAy' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'HAkKdoXE' \
    --body '{"achievements": [{"id": "5chhPach", "percentComplete": 87}, {"id": "zkT0CETE", "percentComplete": 1}, {"id": "cNG6ctM2", "percentComplete": 36}], "serviceConfigId": "BdhO1CTj", "titleId": "jPjx6Zdd", "xboxUserId": "bzwvn8h4"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '6Y1JfhSI' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'vAw3mDR6' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '8zXHSRI5' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'SX9G1OeR' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'WEwANdMx' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'dvPsXVYs' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'guFtnUdk' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'HYhmccxh' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'HSw9vIib' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'FQOlh25T' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'GN2rP8ma' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'uQVLF5xF' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'GpI9JevV' \
    --entitlementClazz 'CODE' \
    --entitlementName 'FAj75VjW' \
    --features '["3NfMQHWy", "YLEQBS48", "FQPqEzur"]' \
    --fuzzyMatchName 'false' \
    --itemId '["EkmRczrL", "KdZJsZrG", "jIPNM9lv"]' \
    --limit '30' \
    --offset '19' \
    --origin 'Nintendo' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'ZWuYglyk' \
    --body '[{"collectionId": "a01zABjB", "endDate": "1991-03-22T00:00:00Z", "grantedCode": "c2olGnga", "itemId": "lqeSjYCB", "itemNamespace": "Va64MQ0K", "language": "lV_Dbvt", "origin": "Twitch", "quantity": 2, "region": "GKJNZDIK", "source": "GIFT", "startDate": "1992-06-01T00:00:00Z", "storeId": "7fF0RgPs"}, {"collectionId": "LW76bm7j", "endDate": "1984-09-18T00:00:00Z", "grantedCode": "EgCK0Zf4", "itemId": "lztyvkWU", "itemNamespace": "dvHZ0BuY", "language": "Ze_tYZC-yw", "origin": "Oculus", "quantity": 54, "region": "ivuqrzGN", "source": "ACHIEVEMENT", "startDate": "1991-07-04T00:00:00Z", "storeId": "7hzk5LFa"}, {"collectionId": "9eTcGPNq", "endDate": "1995-05-12T00:00:00Z", "grantedCode": "1EIoqQEN", "itemId": "1uoWIMMU", "itemNamespace": "rnyjwV6G", "language": "tEdw-LspP", "origin": "GooglePlay", "quantity": 74, "region": "YkBwSYdN", "source": "IAP", "startDate": "1987-08-30T00:00:00Z", "storeId": "2XckAKPa"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'uUZzrjrw' \
    --activeOnly 'false' \
    --appId '0SpkwK5B' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'aphxzqkL' \
    --activeOnly 'true' \
    --limit '32' \
    --offset '54' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TDayTQF6' \
    --activeOnly 'false' \
    --entitlementClazz 'OPTIONBOX' \
    --platform '331quUaX' \
    --itemId 'BWoHqNGO' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'amaLT3X7' \
    --ids '["9gxMAABQ", "gD8QzShb", "9NVGEH0u"]' \
    --platform 'i9fQuh3H' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId '10EkupHZ' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --platform 'Z5mJZD4U' \
    --sku 'hfOn89Sx' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '6sJkLdo1' \
    --appIds '["BJZC9MBD", "NhojaRz8", "n2MkLo1f"]' \
    --itemIds '["GgE2pGmM", "8JKuRCJs", "HAL0Wf8H"]' \
    --platform 'AQCT3wh9' \
    --skus '["d3v8VQI1", "hYR7026l", "DnNRjwiz"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0IjTlnn4' \
    --platform 'oB8sX0Ia' \
    --itemIds '["6Ds02h1g", "8zNRn7ew", "FU31mkC5"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'TWesin4z' \
    --appId 'wurvFb1j' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'M2VktkF3' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'WNxjl2hV' \
    --itemId 'MJAUJXtI' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'TDDfnQDl' \
    --ids '["zxS3iL07", "itEfVPNF", "qoO3YaBZ"]' \
    --platform 'XKYEjh0N' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'BE8hlxHW' \
    --entitlementClazz 'APP' \
    --platform 'uPiVGFkn' \
    --sku 'dEaQdBY4' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SYNUGzBm' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Xxbqk2bW' \
    --entitlementIds 'Ofrr2ihs' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'BvyoRyAp' \
    --namespace $AB_NAMESPACE \
    --userId '8ca9yHeM' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'l72yEuz3' \
    --namespace $AB_NAMESPACE \
    --userId '1kZRExXX' \
    --body '{"collectionId": "AjfnJBjv", "endDate": "1979-11-09T00:00:00Z", "nullFieldList": ["qqtvGfz6", "jAksHxbU", "Mrpe9JES"], "origin": "Xbox", "reason": "zmxhWGrp", "startDate": "1974-10-29T00:00:00Z", "status": "INACTIVE", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'G80s16GC' \
    --namespace $AB_NAMESPACE \
    --userId 'Aw6DTSsJ' \
    --body '{"options": ["MKE9epNj", "hv0LcZah", "J3ZA3EjZ"], "platform": "wPYNrPQO", "requestId": "CE8Imy9W", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'DZO9el2k' \
    --namespace $AB_NAMESPACE \
    --userId 'a4f7dQ65' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'BVCyYHw0' \
    --namespace $AB_NAMESPACE \
    --userId 'tG23SgFI' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'cihultpn' \
    --namespace $AB_NAMESPACE \
    --userId 'hv11oCKm' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'mdx3N5mw' \
    --namespace $AB_NAMESPACE \
    --userId 'qwAUGjp8' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'oJPxv4JK' \
    --namespace $AB_NAMESPACE \
    --userId 'VW20rDW4' \
    --body '{"reason": "dJYfaxUJ", "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'PYRGAhQF' \
    --namespace $AB_NAMESPACE \
    --userId 'gw58uhwc' \
    --quantity '14' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'LyuFuMmJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Nv6aJER7' \
    --body '{"platform": "ptuP14eL", "requestId": "6sJA1Qqn", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'ro8xk5uW' \
    --body '{"duration": 78, "endDate": "1986-05-18T00:00:00Z", "entitlementCollectionId": "X50GL8mQ", "entitlementOrigin": "Steam", "itemId": "gogPZQYI", "itemSku": "4rQYxY5R", "language": "zfCxrXyw", "metadata": {"TyVbqBXp": {}, "ZHkAhBHr": {}, "ESMba43b": {}}, "order": {"currency": {"currencyCode": "CjY9SizY", "currencySymbol": "XY31xYnx", "currencyType": "REAL", "decimals": 91, "namespace": "JomInuzH"}, "ext": {"yydYMocO": {}, "T7tzRMy1": {}, "ovBoTAVD": {}}, "free": false}, "orderNo": "CmbDuHBW", "origin": "Steam", "overrideBundleItemQty": {"cw9YCYWF": 37, "jbgcAPpC": 34, "DhfS8gXY": 95}, "quantity": 76, "region": "knnnbDNm", "source": "DLC", "startDate": "1990-11-11T00:00:00Z", "storeId": "qI3h4NpI"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Z8s9eV0c' \
    --body '{"code": "SvIT8Atd", "language": "lP_Rpwz", "region": "n29IkFeK"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'qdl0LQTH' \
    --body '{"itemId": "T28BbiJz", "itemSku": "Vv2T0EU0", "quantity": 68}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'MKVByax7' \
    --body '{"entitlementCollectionId": "JmFLkGKe", "entitlementOrigin": "Xbox", "metadata": {"XUZvpxbd": {}, "p7DGh3un": {}, "lgk8D8we": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "eVYVQMAS", "namespace": "P7FHx694"}, "item": {"itemId": "zPr4qw3H", "itemSku": "hv2u1FG4", "itemType": "hSGD5zHr"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "ezNykC3l", "namespace": "Fv3jrjUF"}, "item": {"itemId": "D852Cng6", "itemSku": "Y76K8mj2", "itemType": "Rg9hD8an"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "4OsPcWO5", "namespace": "NSce47bx"}, "item": {"itemId": "1rZF16oC", "itemSku": "gpthQ4Gy", "itemType": "XiDe1AW0"}, "quantity": 66, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "09vdIrb2"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pMhRewQ1' \
    --endTime '1jp2OThK' \
    --limit '14' \
    --offset '68' \
    --productId 'erp323WH' \
    --startTime 'OYH4lfan' \
    --status 'VERIFIED' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'zaYWfn7P' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'NivyOXkT' \
    --endTime 'kwcenSu6' \
    --limit '31' \
    --offset '76' \
    --startTime 'Mr8ifV2Y' \
    --status 'FAIL' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '14yuMmNd' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "XzZC_WFVs", "productId": "XfKdTEQ3", "region": "CDzZUJBJ", "transactionId": "YGx8T3tR", "type": "TWITCH"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'ob9hZcqS' \
    --itemId 'NXf7AClu' \
    --limit '75' \
    --offset '58' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gEV40sbP' \
    --body '{"currencyCode": "CJpANz33", "currencyNamespace": "m7uTzJZE", "discountedPrice": 52, "entitlementPlatform": "Steam", "ext": {"CoTbAql1": {}, "S8O5w0Vd": {}, "xPQBUcUx": {}}, "itemId": "3Cq3xE1k", "language": "ULgG5vMo", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 65, "quantity": 48, "region": "17R9jqAU", "returnUrl": "aayOlJCU", "sandbox": false, "sectionId": "tfMB73i2"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'Zm4V7ScP' \
    --itemId 'KTUaLcia' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BbZ8pJBc' \
    --userId 'ZzH9zROY' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'WzhQeIXj' \
    --userId 'elYIT7wQ' \
    --body '{"status": "CLOSED", "statusReason": "5zkjYRdR"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'VAa6tTB3' \
    --userId '7HrlxXhk' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'APpWKmMv' \
    --userId 'qcnnhbJE' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'XdPugCQ5' \
    --userId 'LzEC1wti' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'CWi3AoSh' \
    --userId 'Nxzzbooi' \
    --body '{"additionalData": {"cardSummary": "TUV4AoGW"}, "authorisedTime": "1975-03-06T00:00:00Z", "chargebackReversedTime": "1981-01-07T00:00:00Z", "chargebackTime": "1986-09-26T00:00:00Z", "chargedTime": "1971-08-06T00:00:00Z", "createdTime": "1999-11-25T00:00:00Z", "currency": {"currencyCode": "2y2ynT4i", "currencySymbol": "WP6eu3zs", "currencyType": "VIRTUAL", "decimals": 22, "namespace": "lQyEIIwQ"}, "customParameters": {"4DfkvJE8": {}, "te7hIxAp": {}, "Ms8fXyUj": {}}, "extOrderNo": "n2SPwpuK", "extTxId": "rw60mMNy", "extUserId": "2cJGH1SI", "issuedAt": "1973-05-03T00:00:00Z", "metadata": {"6tu9fmSa": "ddxMgWkv", "I1CfEux1": "gkZY7DrG", "J4dlL1zK": "ioBbIkd7"}, "namespace": "99t2F9Hb", "nonceStr": "4BZjK62H", "paymentMethod": "I4Ixnf6X", "paymentMethodFee": 96, "paymentOrderNo": "BBYqMAoZ", "paymentProvider": "XSOLLA", "paymentProviderFee": 75, "paymentStationUrl": "RxoAQmmU", "price": 38, "refundedTime": "1994-10-13T00:00:00Z", "salesTax": 14, "sandbox": false, "sku": "B1wkDsBR", "status": "REFUND_FAILED", "statusReason": "jZGHoZaM", "subscriptionId": "zVgF1VrA", "subtotalPrice": 50, "targetNamespace": "LNUK07QG", "targetUserId": "0lF1f4LN", "tax": 42, "totalPrice": 95, "totalTax": 72, "txEndTime": "1998-05-22T00:00:00Z", "type": "gExMpegn", "userId": "OKZCissz", "vat": 40}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'v8RjHj3G' \
    --userId 'cNLOBtfX' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'vMzPj4nr' \
    --body '{"currencyCode": "seEyXFpE", "currencyNamespace": "OavmewAk", "customParameters": {"jo1n5GmU": {}, "zkDKw5D0": {}, "oXdw5cHn": {}}, "description": "xwquOwSj", "extOrderNo": "LQlTUigb", "extUserId": "0FTGgWRk", "itemType": "SEASON", "language": "TEAf_MR", "metadata": {"wP98uS33": "yQ2SLYrv", "k0AxBfgc": "WW0BrSu3", "e5kcq1sl": "ZnxeIhyW"}, "notifyUrl": "nVytTWpy", "omitNotification": false, "platform": "OZUkv7Jf", "price": 60, "recurringPaymentOrderNo": "diffWbtr", "region": "94pSU0tX", "returnUrl": "JymPTJ0Z", "sandbox": true, "sku": "KrXfTyiY", "subscriptionId": "bphFh3ha", "title": "b1bh6PCx"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VDK6AJLK' \
    --userId 'dnjV2R0A' \
    --body '{"description": "61Wu9aEI"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'EynCyynh' \
    --body '{"code": "tc0OBCF7", "orderNo": "0sa0RCv7"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'LxfcJKmg' \
    --body '{"meta": {"S5Kx0n7d": {}, "K6HZ8H1P": {}, "8o9l2YSp": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "hfXlTRz7", "namespace": "kRioGf5a"}, "entitlement": {"entitlementId": "AHjL51dJ"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "i98Afecz", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 51, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "tE3ruwhz", "namespace": "Bjx4XVLM"}, "entitlement": {"entitlementId": "onW5xD9c"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "iN24UglF", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "DFVh25Cr", "namespace": "Gl8JiLFn"}, "entitlement": {"entitlementId": "MgCTdSdv"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "veUdjddY", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 68, "type": "ENTITLEMENT"}], "source": "IAP", "transactionId": "j7h9KceG"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'bA0X8nT1' \
    --body '{"gameSessionId": "Q5ZPmAJ0", "payload": {"zKbcjTGL": {}, "9FCoCrqK": {}, "fwTIWymh": {}}, "scid": "MqXHzMK6", "sessionTemplateName": "gmybUpsQ"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'EOUd5XFi' \
    --chargeStatus 'CHARGED' \
    --itemId 'xzIhHn1J' \
    --limit '47' \
    --offset '0' \
    --sku '3aERqm4n' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '23jfHCVn' \
    --excludeSystem 'true' \
    --limit '53' \
    --offset '11' \
    --subscriptionId 'zo83GtJY' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'sKHOVC7i' \
    --body '{"grantDays": 80, "itemId": "EXczGNHS", "language": "xrrlMqlR", "reason": "nZhdXf4q", "region": "9cgolGWa", "source": "AqYg9byT"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zZuWDbcE' \
    --itemId 'eewOjoIC' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7eLvdX0v' \
    --userId '0felqn1i' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fzunC4pu' \
    --userId 'MdTFL6t4' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'YB9U9D78' \
    --userId 'zNccGQXI' \
    --force 'false' \
    --body '{"immediate": true, "reason": "iGX4j6Ec"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3umeIzXo' \
    --userId 'v7Oq0QDF' \
    --body '{"grantDays": 49, "reason": "0YD10ICt"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fiUZgv4Z' \
    --userId 'AteBu10C' \
    --excludeFree 'false' \
    --limit '19' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'f2ucyqPp' \
    --userId 'AZduBBuE' \
    --body '{"additionalData": {"cardSummary": "KpLstWoT"}, "authorisedTime": "1994-05-28T00:00:00Z", "chargebackReversedTime": "1998-01-29T00:00:00Z", "chargebackTime": "1982-06-29T00:00:00Z", "chargedTime": "1986-10-27T00:00:00Z", "createdTime": "1979-03-03T00:00:00Z", "currency": {"currencyCode": "bRRvGNG8", "currencySymbol": "809hUFLb", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "qQ0UuYl4"}, "customParameters": {"lLq7ONlg": {}, "GJWgfNM1": {}, "6nA3kw9L": {}}, "extOrderNo": "95h6Y0FO", "extTxId": "gGmWb2QJ", "extUserId": "4j9iF68g", "issuedAt": "1990-07-02T00:00:00Z", "metadata": {"z5kPZ0za": "rsbhzg50", "vFafwFWq": "WMTvLiMt", "2vRAoCsZ": "6KkrlTgW"}, "namespace": "ng9YCiIw", "nonceStr": "bMOyTPJm", "paymentMethod": "rFd1XS3y", "paymentMethodFee": 22, "paymentOrderNo": "yDCZ6iVa", "paymentProvider": "ADYEN", "paymentProviderFee": 37, "paymentStationUrl": "eshP31J8", "price": 21, "refundedTime": "1975-10-06T00:00:00Z", "salesTax": 6, "sandbox": false, "sku": "fUiCCc7e", "status": "CHARGEBACK", "statusReason": "pQfkf9pU", "subscriptionId": "g6lG9P5b", "subtotalPrice": 90, "targetNamespace": "702UbMrS", "targetUserId": "11CHYxpe", "tax": 13, "totalPrice": 36, "totalTax": 73, "txEndTime": "1989-03-24T00:00:00Z", "type": "jfkIHE9N", "userId": "nljxSSH9", "vat": 99}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'ElJTC7ZU' \
    --namespace $AB_NAMESPACE \
    --userId 'i6q6wsqR' \
    --body '{"count": 19, "orderNo": "2t0N3jGE"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'FuzMyS5d' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'H3V1mKPl' \
    --namespace $AB_NAMESPACE \
    --userId 'HsJJWgzk' \
    --body '{"allowOverdraft": true, "amount": 67, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"ezt73UAS": {}, "5RScQj6Z": {}, "VkDlyLEh": {}}, "reason": "NyaBmgqW"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'hnvGU3ey' \
    --namespace $AB_NAMESPACE \
    --userId '6E8ZA6fV' \
    --limit '63' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'qrh1DzNM' \
    --namespace $AB_NAMESPACE \
    --userId 'ikuPQLun' \
    --request '{"amount": 81, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"vLUOcjzz": {}, "tHrEbLRO": {}, "G8xTTitc": {}}, "reason": "rXkVkPs0", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'ul6mu40f' \
    --namespace $AB_NAMESPACE \
    --userId 'YaLYqDnj' \
    --body '{"amount": 2, "expireAt": "1987-11-06T00:00:00Z", "metadata": {"O7oqPU8T": {}, "3jBpwHpj": {}, "JWHSXTLo": {}}, "origin": "Other", "reason": "d0hSQFQ7", "source": "TRADE"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'cn8ORwv0' \
    --namespace $AB_NAMESPACE \
    --userId 'CfzWKINu' \
    --request '{"amount": 64, "debitBalanceSource": "EXPIRATION", "metadata": {"IjSU1I8K": {}, "BkCsNAmf": {}, "bF2NEzlZ": {}}, "reason": "dHLPVYTj", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'J8PCdICN' \
    --namespace $AB_NAMESPACE \
    --userId 'tIROShjt' \
    --body '{"amount": 20, "metadata": {"X8IRC3Sy": {}, "GZeO7W6O": {}, "RRM8vCmv": {}}, "walletPlatform": "Oculus"}' \
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
    --storeId 'CXLqxjyy' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'S7cJPlIL' \
    --body '{"displayOrder": 36, "localizations": {"NLcFFvqp": {"description": "wlVB9UKm", "localExt": {"uPbEExph": {}, "MLy5ekPd": {}, "ZHD4O776": {}}, "longDescription": "YMcIl1qK", "title": "JAxfHHdH"}, "o4RL5uJ7": {"description": "dr0VhiNN", "localExt": {"8mNFEJkn": {}, "YBdkV7xU": {}, "YKg2aHkB": {}}, "longDescription": "EEX2A0GY", "title": "hFmjErXg"}, "LMp2anjQ": {"description": "3M7diAjF", "localExt": {"YhQ9wviV": {}, "FrMU5z9B": {}, "Bini0myg": {}}, "longDescription": "OSdma892", "title": "WtDa3dMA"}}, "name": "kn3WIZLx"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'MFXMPFCj' \
    --storeId 'xBDhySIF' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'oC1SZcvP' \
    --storeId 'xPx7hJ2y' \
    --body '{"displayOrder": 93, "localizations": {"6oPYSsdJ": {"description": "hYUoYCP5", "localExt": {"J2iRyeku": {}, "6BqCRnAr": {}, "BI6SNWkE": {}}, "longDescription": "cuH2l1yY", "title": "OgKyw0Hv"}, "NnBGBrkF": {"description": "XLDZ00H7", "localExt": {"LWLBW7Cs": {}, "DHKZ28hu": {}, "CgtlHcOF": {}}, "longDescription": "rfedWMqU", "title": "mZNqxR03"}, "ikxPxjYR": {"description": "OTJ0SZ14", "localExt": {"9mC5bb8s": {}, "zfW968tD": {}, "1hsungZF": {}}, "longDescription": "g5HDtLXm", "title": "w6E5c4Cd"}}, "name": "DCTnZev0"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'qlEqSrKw' \
    --storeId 'S5MIZvb9' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 13, "expireAt": "1981-07-30T00:00:00Z", "metadata": {"wB4WhUzz": {}, "XCBFB3KZ": {}, "z5MZkXtw": {}}, "origin": "IOS", "reason": "fteFvlFC", "source": "REWARD"}, "currencyCode": "vd6pUmWr", "userIds": ["WaeuZccp", "V4hhebtv", "s6qvE2DT"]}, {"creditRequest": {"amount": 27, "expireAt": "1982-08-26T00:00:00Z", "metadata": {"EbGjcGkv": {}, "HHgEWQR2": {}, "e32TpyYo": {}}, "origin": "Twitch", "reason": "9saXdZU2", "source": "REFERRAL_BONUS"}, "currencyCode": "bjm09nJh", "userIds": ["aNW2uA1X", "z05NO6qd", "dfiP11jm"]}, {"creditRequest": {"amount": 28, "expireAt": "1989-09-02T00:00:00Z", "metadata": {"KpgAMrHL": {}, "o0QgMULZ": {}, "6eTWySay": {}}, "origin": "Oculus", "reason": "zEPCveSf", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "OKBnRRUx", "userIds": ["UVJSZpmm", "CL0LsU9M", "j71nocRK"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "dDyU6DYY", "request": {"allowOverdraft": false, "amount": 95, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"6TpENXKC": {}, "FrPFUfq3": {}, "hQCRplVV": {}}, "reason": "JffzaUom"}, "userIds": ["iuGNWKkz", "cHhi0Vuw", "juP9x1XW"]}, {"currencyCode": "FbCvmrnA", "request": {"allowOverdraft": false, "amount": 76, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"2vTRExA4": {}, "NB1SWyma": {}, "y0GeCH2M": {}}, "reason": "spfMMPL9"}, "userIds": ["PIl45x4o", "zJHrJxl5", "oJguIZpO"]}, {"currencyCode": "2FA7i7KO", "request": {"allowOverdraft": false, "amount": 21, "balanceOrigin": "Oculus", "balanceSource": "DLC_REVOCATION", "metadata": {"0jMjrLHf": {}, "9byCjqff": {}, "IiPm0H6e": {}}, "reason": "WKshcZ3s"}, "userIds": ["ylxhbPGb", "Uro7yC1H", "woupvkH0"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey '9OaSnV5F' \
    --end 'FOFH0zFm' \
    --start 'SWEC24aq' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["1ceWqpxk", "edZWZnD4", "BxkTEFmr"], "apiKey": "5ztbLFEc", "authoriseAsCapture": false, "blockedPaymentMethods": ["tXQ8zeto", "MEsmr5JZ", "TwVFUgwm"], "clientKey": "XbPHGvDm", "dropInSettings": "nf6J4XPE", "liveEndpointUrlPrefix": "kRZGsr47", "merchantAccount": "UCsqa862", "notificationHmacKey": "YbIwfyRn", "notificationPassword": "6RkE7Rkg", "notificationUsername": "pfTw8LRg", "returnUrl": "AaqXYuXi", "settings": "bESqgqkZ"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "qEm03STK", "privateKey": "bfctGYEe", "publicKey": "NoOm9Ede", "returnUrl": "k05OsbiE"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "5PggfSaT", "secretKey": "pZj32vMZ"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'jNuG63wo' \
    --region 'KZMH6N2n' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "pdwzJX8s", "clientSecret": "XclDpbCa", "returnUrl": "zKhbkk9j", "webHookId": "pUf7ItFF"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["xXVfUFdO", "62LoIDYk", "jPjTiFdT"], "publishableKey": "6yx5OdvD", "secretKey": "jsknRomp", "webhookSecret": "mB088uv5"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "ln2bMpFu", "key": "i95tGY10", "mchid": "LNQQTu8O", "returnUrl": "RcgrQqI7"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "lV0SX3lr", "flowCompletionUrl": "rv14Q1E9", "merchantId": 16, "projectId": 97, "projectSecretKey": "jllG83AM"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'uEeUwRg0' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'SUup6wRD' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["1Al9LoWd", "Q4WZRH4Y", "kgiDRxuq"], "apiKey": "FDK1B2zV", "authoriseAsCapture": false, "blockedPaymentMethods": ["laQCxRHL", "0qN9qX50", "AA07MVU2"], "clientKey": "H1RuWG1c", "dropInSettings": "nCO5Axsk", "liveEndpointUrlPrefix": "PkzM2G7W", "merchantAccount": "PBXzaAHJ", "notificationHmacKey": "FOEPxt8U", "notificationPassword": "q4JnuVQA", "notificationUsername": "1VWs6spp", "returnUrl": "7QyKrsFA", "settings": "nbbw5Rgp"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id '8a3Xim8K' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '6i0VD8OY' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "1Yx9QeTI", "privateKey": "MeptqiY0", "publicKey": "JgeppRMt", "returnUrl": "L1CyvcCw"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'kKzI2uJA' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'GjEekk9h' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "zvwfHA2p", "secretKey": "HzFFIJMK"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'ErfXKAeE' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'JTqUhYza' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "CNWEMEFo", "clientSecret": "3PUoYhLn", "returnUrl": "tX5ktM9P", "webHookId": "zeUGdTGb"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'uHeljj4S' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '2lnAvasU' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["oUW0ylIf", "D8wTYp1e", "6QVV5SsM"], "publishableKey": "TtoCfgOl", "secretKey": "TGSBRQgz", "webhookSecret": "6JyQpieA"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'OppkOGnp' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '6COaqw3j' \
    --validate 'true' \
    --body '{"appId": "sl03gyJQ", "key": "SGmWWK8B", "mchid": "jRQeprsS", "returnUrl": "w7Ft1XGs"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'sx1i6Ntw' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id '6YUWhxCi' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '0DuFwcbq' \
    --validate 'true' \
    --body '{"apiKey": "9lRt0Okm", "flowCompletionUrl": "erloXuPS", "merchantId": 56, "projectId": 41, "projectSecretKey": "vmno5LO3"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'JXFRw4Wb' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'rZaqJKD9' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '29' \
    --namespace 'EpHK6rq7' \
    --offset '13' \
    --region 'VmLaGNY4' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "a0vNVBAD", "region": "P7rIRr34", "sandboxTaxJarApiToken": "24gkeYII", "specials": ["XSOLLA", "WXPAY", "ADYEN"], "taxJarApiToken": "PA1of2fj", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'dyRxlcdq' \
    --region 'oMgfuGSl' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'PXKkXdRQ' \
    --body '{"aggregate": "ADYEN", "namespace": "TsPSmQM8", "region": "uvePJ9k9", "sandboxTaxJarApiToken": "T9yFPN0T", "specials": ["WALLET", "STRIPE", "PAYPAL"], "taxJarApiToken": "PUGQHnPW", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'uxpzuGXF' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "8dgmNvwy", "taxJarApiToken": "naKvGP26", "taxJarEnabled": true, "taxJarProductCodesMapping": {"che4Vg4k": "eziuwfbB", "AEue692f": "LAufeLsn", "BAOZB1xE": "FOU0TRx3"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'M0raJ33I' \
    --end 'VWs7c3mq' \
    --start 'lxFJg5U8' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'i8zIT0Rx' \
    --storeId 'n31lqXi8' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'IOYKMldd' \
    --storeId 'rA38rJE5' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'ee1YSNKu' \
    --namespace $AB_NAMESPACE \
    --language 'Tmzh6XNB' \
    --storeId 'HDzOouYl' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath '8FPUjtlh' \
    --namespace $AB_NAMESPACE \
    --language 'Xa9yMmrG' \
    --storeId 'Ea0cgOs6' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'cZZ0KDzl' \
    --namespace $AB_NAMESPACE \
    --language 'zzMjqYOD' \
    --storeId 'CEJiHlpk' \
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
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'JNzAmlKl' \
    --region 'gShdnHV1' \
    --storeId 'K1JMqd9l' \
    --appId 'HC2aLFnE' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'vy4Kd29u' \
    --categoryPath '7Z0pFU5Q' \
    --features 'eI8oIqxU' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --language '426XeubP' \
    --limit '16' \
    --offset '95' \
    --region 'uCmkySc5' \
    --sortBy '["name:desc", "displayOrder:asc", "name:asc"]' \
    --storeId 'RVK4WGSl' \
    --tags 'kfJjDiZf' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'QOCLYn1U' \
    --region 'z50eiJ98' \
    --storeId 'NkXAincI' \
    --sku 'MPoZhZ3m' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Ma0fPUcs' \
    --storeId 'cozLCTAP' \
    --itemIds 'yOB43SAp' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'uRlwqUUH' \
    --region 'UYqvAjXZ' \
    --storeId 'ufmER5aT' \
    --itemIds 'IAWmSNUZ' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["YF03xUjg", "Ue0eoc4q", "dlpvs5jx"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'CODE' \
    --limit '99' \
    --offset '91' \
    --region 'eP3nZYKY' \
    --storeId 'IDoFNeOx' \
    --keyword 'fralfIah' \
    --language 'g1HhesEr' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ICkR942B' \
    --namespace $AB_NAMESPACE \
    --language 'NaZRYLpi' \
    --region '15WXS9q6' \
    --storeId 'jO4CD6ll' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'CwopT6uh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'vVXuO5bc' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'sLyuN1KF' \
    --populateBundle 'false' \
    --region 'u1vJ0bs4' \
    --storeId 'tyMKaIvL' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "QYkPQBFf", "paymentProvider": "ADYEN", "returnUrl": "9OucFsoz", "ui": "NMcVRUTp", "zipCode": "217KN1a8"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'YoJ4Vfh7' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'eM87nnhG' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'LUxzFtVq' \
    --paymentProvider 'WXPAY' \
    --zipCode 'Q9ZLOGol' \
    --body '{"token": "E9Asm9Gf"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'O57nIUJo' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'vj3joUf7' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'QuYEClzn' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'JMInv2KJ' \
    --foreinginvoice 'jEljAEbE' \
    --invoiceId '1fOQxUoS' \
    --payload 'LiwnGsxk' \
    --redirectResult 'EPBb5eLt' \
    --resultCode 'Va1mAb0X' \
    --sessionId '6o8ZSg1O' \
    --status 'NI6rjbFx' \
    --token 'TVloC5HA' \
    --type '4qf0QKaV' \
    --userId 'wse6aGms' \
    --orderNo '7difuiHf' \
    --paymentOrderNo 'ke7Amiiu' \
    --paymentProvider 'XSOLLA' \
    --returnUrl '9pULAXrq' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '0OUO8Olq' \
    --paymentOrderNo '0Vbv5RpS' \
    --paymentProvider 'ALIPAY' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'wzesd0Eh' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'CamYt7b9' \
    --limit '88' \
    --offset '64' \
    --sortBy '["namespace:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '6ua9N7FW' \
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
    --appIds '["hgXxcpWe", "VFr5m2cP", "oJ2SBH5n"]' \
    --itemIds '["Te5K0Fqs", "gC2RKULV", "PT5j7WSn"]' \
    --skus '["WSiw59aF", "vxlepgKG", "POnPDldE"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'R270CH5h' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --itemId 'dlqyPKB7' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'vBRdnovO' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["34pTRwBu", "Ssha0FiP", "UPzq64V8"]' \
    --itemIds '["jGHemyV0", "bFVWKFbn", "ylfuV3fi"]' \
    --skus '["yVc2xJy0", "BwsgdS46", "oVYyYeYA"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "P7TJt1MB", "language": "jylH-MA", "region": "K8AwZPlS"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'SAgT47ls' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'LOKUzusZ' \
    --body '{"epicGamesJwtToken": "oRNlkBIm"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'f9iqBZOv' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l3VVnbLm' \
    --body '{"serviceLabel": 60}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'ibpNxIZZ' \
    --body '{"serviceLabels": [32, 17, 89]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'm5Vj7RHB' \
    --body '{"appId": "6PsOLxbF", "steamId": "aV5xRfgi"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId '3w5WgelE' \
    --body '{"xstsToken": "lJ2WXlKy"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'E4rdFhms' \
    --appType 'DEMO' \
    --entitlementClazz 'CODE' \
    --entitlementName 'X5CDHI0B' \
    --features '["roh2YzMx", "YkRBbjip", "SHNsYIaw"]' \
    --itemId '["8tryR7tE", "E0QLJ3jm", "SQdO7Qw8"]' \
    --limit '58' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Qot2mbG5' \
    --appId 'GUJr88CO' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'C6A9kxXV' \
    --limit '3' \
    --offset '14' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'RkKpyRIR' \
    --availablePlatformOnly 'false' \
    --ids '["iQtGso2d", "WO9BeqlA", "uFH0s6ao"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'EQujYAKb' \
    --endDate '4MIf0Nou' \
    --entitlementClazz 'MEDIA' \
    --limit '55' \
    --offset '54' \
    --startDate 'HIRaCA65' \
    > test.out 2>&1
eval_tap $? 402 'PublicUserEntitlementHistory' test.out

#- 403 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '5w0mVbxJ' \
    --appIds '["vKs0ftxb", "1OQIAOpO", "FLaVeETh"]' \
    --itemIds '["BwCI2gJn", "uXfN0bVC", "87mIjcYU"]' \
    --skus '["jDR9LkkG", "83ayxrlj", "4GFEsfP7"]' \
    > test.out 2>&1
eval_tap $? 403 'PublicExistsAnyUserActiveEntitlement' test.out

#- 404 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4617GDdm' \
    --appId 'bwmpfRlq' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'zthgV1KY' \
    --entitlementClazz 'MEDIA' \
    --itemId 'GC4E1IMA' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 406 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'SQVf8VKZ' \
    --ids '["xLV6NNo4", "tW7w2U6L", "DjEr1Go8"]' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 407 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Tz2jxWp8' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'fctaUGYa' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 408 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'jYjQ3uJu' \
    --namespace $AB_NAMESPACE \
    --userId 'DTksJvI7' \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlement' test.out

#- 409 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'vCACgiYR' \
    --namespace $AB_NAMESPACE \
    --userId 'CAjoULda' \
    --body '{"options": ["Kmk2qjas", "RcQyXwfZ", "uMwik9ye"], "requestId": "0YNzKZfe", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 409 'PublicConsumeUserEntitlement' test.out

#- 410 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'k6oRnA1L' \
    --namespace $AB_NAMESPACE \
    --userId 'PskxAliL' \
    --body '{"requestId": "URmmN3sN", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSellUserEntitlement' test.out

#- 411 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 't9JtYuJo' \
    --namespace $AB_NAMESPACE \
    --userId '8G8Trfm5' \
    --body '{"useCount": 55}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSplitUserEntitlement' test.out

#- 412 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'tW1CRhfn' \
    --namespace $AB_NAMESPACE \
    --userId 'o3MFEEEt' \
    --body '{"entitlementId": "tfnGyGEu", "useCount": 38}' \
    > test.out 2>&1
eval_tap $? 412 'PublicTransferUserEntitlement' test.out

#- 413 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'zoxzBTME' \
    --body '{"code": "XbHKUPq7", "language": "Xc_Yk", "region": "rO41caZy"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicRedeemCode' test.out

#- 414 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kIhcluQF' \
    --body '{"excludeOldTransactions": true, "language": "jCtx-xmBR", "productId": "5R8wlNJ9", "receiptData": "3Eif9GZO", "region": "t3iyp2AU", "transactionId": "qrxvK7Ec"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicFulfillAppleIAPItem' test.out

#- 415 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Mm2AdyEX' \
    --body '{"epicGamesJwtToken": "CHc3bRMY"}' \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGamesInventory' test.out

#- 416 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'AgXoIAKE' \
    --body '{"autoAck": true, "language": "Tz_Pu", "orderId": "JzasQtEz", "packageName": "BEKeDavE", "productId": "bjvUmCpS", "purchaseTime": 62, "purchaseToken": "pXNVlx40", "region": "cSSlCzJW"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillGoogleIAPItem' test.out

#- 417 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'U7EwYyBm' \
    > test.out 2>&1
eval_tap $? 417 'SyncOculusConsumableEntitlements' test.out

#- 418 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '3y6PehKb' \
    --body '{"currencyCode": "MOCNDjNc", "price": 0.2153958165946679, "productId": "41bsHmHc", "serviceLabel": 94}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStore' test.out

#- 419 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '665l0tma' \
    --body '{"currencyCode": "zfOLwnGH", "price": 0.5585904271950585, "productId": "eWk5D9FS", "serviceLabels": [44, 45, 7]}' \
    > test.out 2>&1
eval_tap $? 419 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 420 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '4VXyCDP9' \
    --body '{"appId": "PLDp3oux", "currencyCode": "iIdu0YMJ", "language": "fjxl-569", "price": 0.7437194709214566, "productId": "168SjodS", "region": "JD2qNoOi", "steamId": "Jl8kmd6r"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncSteamInventory' test.out

#- 421 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'EYcE6YUj' \
    --body '{"gameId": "a9sW5itd", "language": "Kw", "region": "HonS0PKg"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncTwitchDropsEntitlement1' test.out

#- 422 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'j6KlQEFd' \
    --body '{"currencyCode": "D5bdqgjM", "price": 0.1886057958519043, "productId": "RxN49Sxb", "xstsToken": "w6mT4YnM"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncXboxInventory' test.out

#- 423 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'aDs5FPF4' \
    --itemId 'NI6VNlhs' \
    --limit '0' \
    --offset '18' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserOrders' test.out

#- 424 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '9J2vZRDq' \
    --body '{"currencyCode": "NhnWAcBa", "discountedPrice": 56, "ext": {"N77vLT6v": {}, "foVUGu47": {}, "k03wSLEw": {}}, "itemId": "M3V6Pv55", "language": "Dv-Fjtn_SZ", "price": 25, "quantity": 44, "region": "HE1XtFYM", "returnUrl": "RHOMXPqB", "sectionId": "KITTfaVp"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCreateUserOrder' test.out

#- 425 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZkZW1oe8' \
    --userId 'N4dZAv3H' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserOrder' test.out

#- 426 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'rHBwXyiZ' \
    --userId 'vDVsCkSJ' \
    > test.out 2>&1
eval_tap $? 426 'PublicCancelUserOrder' test.out

#- 427 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'wZzeBGFk' \
    --userId 'HoLCPOew' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserOrderHistories' test.out

#- 428 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'pDNUHjvS' \
    --userId 'bKkVcYTM' \
    > test.out 2>&1
eval_tap $? 428 'PublicDownloadUserOrderReceipt' test.out

#- 429 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'LTzlwJlw' \
    > test.out 2>&1
eval_tap $? 429 'PublicGetPaymentAccounts' test.out

#- 430 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'yHOx8DRJ' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'RQEbGbns' \
    > test.out 2>&1
eval_tap $? 430 'PublicDeletePaymentAccount' test.out

#- 431 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'Yqb7POXC' \
    --autoCalcEstimatedPrice 'true' \
    --language 'aV3deMpC' \
    --region 'MMBYJBE2' \
    --storeId 'fxU9epkz' \
    --viewId 'e8dnyiQv' \
    > test.out 2>&1
eval_tap $? 431 'PublicListActiveSections' test.out

#- 432 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'xBIvD5Zi' \
    --chargeStatus 'CHARGED' \
    --itemId '2lvCTT0j' \
    --limit '40' \
    --offset '42' \
    --sku '5T7knHka' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 432 'PublicQueryUserSubscriptions' test.out

#- 433 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'EhO6MKjW' \
    --body '{"currencyCode": "nHl4sJnn", "itemId": "0NKNXAN8", "language": "jSj", "region": "3wkCGRRr", "returnUrl": "zh7gIdbo", "source": "VPFMSM6e"}' \
    > test.out 2>&1
eval_tap $? 433 'PublicSubscribeSubscription' test.out

#- 434 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vsDzVjzZ' \
    --itemId '98r6syfk' \
    > test.out 2>&1
eval_tap $? 434 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 435 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'xHuOsKU5' \
    --userId 'EqwEqSIv' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserSubscription' test.out

#- 436 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iRLGvmTy' \
    --userId 'duHW76Kr' \
    > test.out 2>&1
eval_tap $? 436 'PublicChangeSubscriptionBillingAccount' test.out

#- 437 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'ms03h5DS' \
    --userId '9Oa5XX2n' \
    --body '{"immediate": true, "reason": "XgwzjPvK"}' \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelSubscription' test.out

#- 438 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XKiRXjP8' \
    --userId 'BNb4G257' \
    --excludeFree 'true' \
    --limit '18' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscriptionBillingHistories' test.out

#- 439 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'pFQwoQvu' \
    --language 'rfeoGz2B' \
    --storeId '15Yf49nD' \
    > test.out 2>&1
eval_tap $? 439 'PublicListViews' test.out

#- 440 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'TfFKBKUk' \
    --namespace $AB_NAMESPACE \
    --userId '23ul8ZSJ' \
    > test.out 2>&1
eval_tap $? 440 'PublicGetWallet' test.out

#- 441 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'WbnKySUF' \
    --namespace $AB_NAMESPACE \
    --userId 'tpTwzSYe' \
    --limit '54' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 441 'PublicListUserWalletTransactions' test.out

#- 442 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'rgeGeo2i' \
    --baseAppId 'lsDZpnS8' \
    --categoryPath 'MqUDZQgb' \
    --features 'pTOaRQNz' \
    --includeSubCategoryItem 'false' \
    --itemName 'XDRQOw4U' \
    --itemStatus 'ACTIVE' \
    --itemType 'LOOTBOX' \
    --limit '2' \
    --offset '56' \
    --region 'CiZ1q8rt' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder:desc", "name:desc", "displayOrder:asc"]' \
    --storeId '3253zBIi' \
    --tags 'QnHLLv9D' \
    --targetNamespace 'G9Ktrhcx' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 442 'QueryItems1' test.out

#- 443 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '3ohjYFws' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 443 'ImportStore1' test.out

#- 444 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'yCnqSsgO' \
    --body '{"itemIds": ["T1g3kwLn", "YQHLh6nb", "lyqraiXd"]}' \
    > test.out 2>&1
eval_tap $? 444 'ExportStore1' test.out

#- 445 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '763FG4T7' \
    --body '{"entitlementCollectionId": "zgvVE0ZY", "entitlementOrigin": "Other", "metadata": {"mo64PgHW": {}, "3JWQcnex": {}, "V5G9wUCQ": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "rUD8Mx4Z", "namespace": "EZWS3NNw"}, "item": {"itemId": "4rAInh7t", "itemSku": "RrJBriJd", "itemType": "Bo3X9cB6"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "Ak8VNhUQ", "namespace": "Ldl2Yi6w"}, "item": {"itemId": "aYTh83kA", "itemSku": "WQlf7QTH", "itemType": "Qv09YhwZ"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "vch62TQc", "namespace": "v6ZeVKdV"}, "item": {"itemId": "Bo6tQtwT", "itemSku": "L3gRvzrF", "itemType": "NwOeS3Jm"}, "quantity": 79, "type": "CURRENCY"}], "source": "DLC", "transactionId": "5MjEltMX"}' \
    > test.out 2>&1
eval_tap $? 445 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE