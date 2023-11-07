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
echo "1..427"

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
    --id 'bl3sgG6x' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'U5gjhuUQ' \
    --body '{"grantDays": "ykXpWUin"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'Ku81fSSf' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'NbhHM008' \
    --body '{"grantDays": "aO6FEP3u"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "hLpvh3xU", "dryRun": true, "fulfillmentUrl": "PDYlGJmY", "itemType": "MEDIA", "purchaseConditionUrl": "0b2gh5nu"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'rBT18w4q' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '16XmR7qt' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '0foLo1X2' \
    --body '{"clazz": "UKtkNZMo", "dryRun": true, "fulfillmentUrl": "uerJefVN", "purchaseConditionUrl": "S7mm6nfY"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'xHffxxdL' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'NmiqFLcs' \
    --offset '93' \
    --tag 'Kgeq4KfK' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "OShhMT7h", "items": [{"extraSubscriptionDays": 10, "itemId": "ARU94IpP", "itemName": "zdIMD7T8", "quantity": 37}, {"extraSubscriptionDays": 43, "itemId": "QVW0mVZj", "itemName": "dzrWDqTU", "quantity": 4}, {"extraSubscriptionDays": 88, "itemId": "cCU20Ww5", "itemName": "56VffNRh", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 98, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 19, "name": "NuQju4a5", "redeemEnd": "1972-08-24T00:00:00Z", "redeemStart": "1984-11-06T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["7oopAEU6", "HHVIgnH2", "8ZOeWQfv"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'PpELmdQG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'lTzw9mG8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "iegyK0Wp", "items": [{"extraSubscriptionDays": 35, "itemId": "FvktY8Q4", "itemName": "nmM6frF5", "quantity": 35}, {"extraSubscriptionDays": 53, "itemId": "2FluM2LG", "itemName": "32dsAeIl", "quantity": 92}, {"extraSubscriptionDays": 61, "itemId": "REvgqHCO", "itemName": "75ZoL1Wu", "quantity": 58}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 78, "maxRedeemCountPerCodePerUser": 16, "maxSaleCount": 36, "name": "P6mUKScb", "redeemEnd": "1987-05-30T00:00:00Z", "redeemStart": "1991-04-16T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["jkFI0Xe1", "pooplzVk", "DvqGHCcH"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'P2oF48Sm' \
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
    --body '{"appConfig": {"appName": "FspcvN3I"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "0JrjoOC9"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "FdOkR3yp"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "FA42ph3u"}, "extendType": "CUSTOM"}' \
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
    --storeId 'Pm34GfO0' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '79wqfdjJ' \
    --body '{"categoryPath": "jB0qVo91", "localizationDisplayNames": {"DROKimnq": "0XjuwaYc", "eFOZz5j8": "VHmWBOp9", "mHAittCM": "Du4EDVYP"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'NbzfrcAv' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'JCz7rwCi' \
    --namespace $AB_NAMESPACE \
    --storeId 'nV2bJbMJ' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'u9t742uM' \
    --namespace $AB_NAMESPACE \
    --storeId '1keracPt' \
    --body '{"localizationDisplayNames": {"tN6gaHMU": "ucVbv7dC", "0tQT4Od0": "lLRKZFRl", "3C3GMexN": "oqJPUkZP"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '6DJcZgWp' \
    --namespace $AB_NAMESPACE \
    --storeId 'vkIogkP7' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'iSzeRSgB' \
    --namespace $AB_NAMESPACE \
    --storeId 'DYxQakPv' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'PMKGyZhV' \
    --namespace $AB_NAMESPACE \
    --storeId 'gn2zrHGA' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '35opsYSK' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '50' \
    --code 'fxjlDROu' \
    --limit '12' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'UCxwAo9t' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 85}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId '8DsIGFPn' \
    --namespace $AB_NAMESPACE \
    --batchNo '15' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'BR0tuNci' \
    --namespace $AB_NAMESPACE \
    --batchNo '71' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '2GidylH8' \
    --namespace $AB_NAMESPACE \
    --batchNo '79' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'uuLlfFMf' \
    --namespace $AB_NAMESPACE \
    --code '8pO0iwcl' \
    --limit '96' \
    --offset '65' \
    --userId 'jxIl1zp4' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'oBj76tQw' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ssFQb3uM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'j4CnvSH3' \
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
    --body '{"currencyCode": "FBNHo5CR", "currencySymbol": "nTm9FnES", "currencyType": "REAL", "decimals": 70, "localizationDescriptions": {"Qb8RQdtr": "X0WHELHt", "xEKPppiN": "i3LmxusN", "SBf1eNy6": "iQ87yeD2"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '9p83w6sF' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"cdGMl4G8": "4inn3p08", "a6qaLL3u": "p37VrdTo", "2mxU8sZ7": "UySAFJdY"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'IsaBM1fv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'DoGvWeFx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'Bo2A8kj2' \
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
    --body '{"data": [{"id": "AKJGqrCF", "rewards": [{"currency": {"currencyCode": "o2tP5PIW", "namespace": "6uqT4fNv"}, "item": {"itemId": "q4wDlloM", "itemSku": "IZIsfxTy", "itemType": "1A40BtUB"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "5eYWVWnu", "namespace": "LKCvWZcm"}, "item": {"itemId": "OcWqCrd4", "itemSku": "Kpi5IHNE", "itemType": "AfC5fu0j"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "EAWlVmTP", "namespace": "D3epsL8k"}, "item": {"itemId": "y5SxRK4q", "itemSku": "R5ucobgw", "itemType": "6tovsQDo"}, "quantity": 29, "type": "CURRENCY"}]}, {"id": "7T10NnxA", "rewards": [{"currency": {"currencyCode": "K3tnkCnQ", "namespace": "AEjoOyld"}, "item": {"itemId": "4LXaxLtB", "itemSku": "5GTUdYr1", "itemType": "gUKGy2qT"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "oOLobHEA", "namespace": "K5WhHHWz"}, "item": {"itemId": "dGEkilMw", "itemSku": "wJRvueOF", "itemType": "sn12q0NW"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "WD1El6VL", "namespace": "Jeip5gSI"}, "item": {"itemId": "KJS63gVJ", "itemSku": "B36Q6MQl", "itemType": "vKs6wOYo"}, "quantity": 29, "type": "CURRENCY"}]}, {"id": "coYC3Zud", "rewards": [{"currency": {"currencyCode": "GAhuMqXc", "namespace": "tPQi7K3d"}, "item": {"itemId": "84lOGm6i", "itemSku": "YQ7WP4Go", "itemType": "XrNVRANO"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "8EmbTwan", "namespace": "EL2eoe43"}, "item": {"itemId": "lqz0L4hI", "itemSku": "6r09T8ev", "itemType": "idCwU0eN"}, "quantity": 44, "type": "ITEM"}, {"currency": {"currencyCode": "uM4HclDs", "namespace": "MgXJmDSM"}, "item": {"itemId": "CE9b1XIR", "itemSku": "FK6ZarHc", "itemType": "CYA2bAPS"}, "quantity": 77, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"15xhokHz": "C2HOMMd3", "kJpaVyH3": "W68nEX3c", "RdlyLmB4": "L75qclc3"}}, {"platform": "PSN", "platformDlcIdMap": {"quPNaxQw": "yU8L7kES", "td8nw1a4": "vfm3jYsV", "KKK4vIHY": "KRXE9TA6"}}, {"platform": "PSN", "platformDlcIdMap": {"pLIBxdRe": "fapa0Cjb", "UzzPwJLD": "w9YQmJCG", "6G1ne2bQ": "Pl1qWMsb"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'Ne9zUTaA' \
    --itemId '["JKPfaxo1", "E2S9lPIn", "k0RHxHAI"]' \
    --limit '59' \
    --offset '51' \
    --userId 'H3qPJe9o' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["n1Nsc1DB", "M44D6whH", "YqZk3L4Q"]' \
    --limit '92' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1995-11-04T00:00:00Z", "grantedCode": "VTiP8ACM", "itemId": "3cwEAUkz", "itemNamespace": "CERfmhzz", "language": "WRP_wdyZ", "quantity": 3, "region": "SXtmDVU6", "source": "REFERRAL_BONUS", "startDate": "1985-12-18T00:00:00Z", "storeId": "jjTqJ074"}, {"endDate": "1985-10-26T00:00:00Z", "grantedCode": "HEJOqJag", "itemId": "EwxuIPJO", "itemNamespace": "IUnp0Xss", "language": "mwK-151", "quantity": 32, "region": "STD6J63w", "source": "REFERRAL_BONUS", "startDate": "1980-08-18T00:00:00Z", "storeId": "ktE1trzs"}, {"endDate": "1987-04-16T00:00:00Z", "grantedCode": "V3b63pZm", "itemId": "EGNMeJHw", "itemNamespace": "RwFwEgKY", "language": "TaKb_bWor", "quantity": 43, "region": "GwSoBnxF", "source": "REDEEM_CODE", "startDate": "1974-07-20T00:00:00Z", "storeId": "uFi2hKHT"}], "userIds": ["zNBJrb4a", "GNA5uJQS", "D20yLAzL"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["7jEP72fh", "MkXhXiUa", "AudAOQBF"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'DHVZMf6w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '77' \
    --status 'FAIL' \
    --userId 'pMGme98t' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'WBQxjZvJ' \
    --eventType 'REFUND' \
    --externalOrderId 'QbgOQF72' \
    --limit '65' \
    --offset '37' \
    --startTime 's2B1WMo9' \
    --status 'SUCCESS' \
    --userId '7fKSpgaF' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "OveFJnx5", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 24, "clientTransactionId": "r23k2fkh"}, {"amountConsumed": 41, "clientTransactionId": "6AAtMZQD"}, {"amountConsumed": 67, "clientTransactionId": "ohRGfi7k"}], "entitlementId": "4DdkLdGq", "usageCount": 48}, {"clientTransaction": [{"amountConsumed": 59, "clientTransactionId": "Hz46nGSW"}, {"amountConsumed": 87, "clientTransactionId": "P9m9JVvN"}, {"amountConsumed": 67, "clientTransactionId": "QIH8FBFr"}], "entitlementId": "zTNn8cW8", "usageCount": 21}, {"clientTransaction": [{"amountConsumed": 33, "clientTransactionId": "6sqipnZr"}, {"amountConsumed": 72, "clientTransactionId": "Cb7wFaGJ"}, {"amountConsumed": 52, "clientTransactionId": "VMhBnSFC"}], "entitlementId": "aeXytEjP", "usageCount": 82}], "purpose": "WBwLuoDg"}, "originalTitleName": "qxMYhaGZ", "paymentProductSKU": "wQkEpsCd", "purchaseDate": "x14frtmW", "sourceOrderItemId": "V2ZYHepc", "titleName": "lujb1n8E"}, "eventDomain": "bYTpikZz", "eventSource": "8dsdPRvQ", "eventType": "f5Qc4zvO", "eventVersion": 13, "id": "sS93JdlJ", "timestamp": "AytwL0SA"}' \
    > test.out 2>&1
eval_tap $? 66 'MockPlayStationStreamEvent' test.out

#- 67 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetAppleIAPConfig' test.out

#- 68 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"bundleId": "tXz2mSrO", "password": "LfwQmhAl"}' \
    > test.out 2>&1
eval_tap $? 68 'UpdateAppleIAPConfig' test.out

#- 69 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteAppleIAPConfig' test.out

#- 70 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'GetEpicGamesIAPConfig' test.out

#- 71 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "Ezx1WuW0"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateEpicGamesIAPConfig' test.out

#- 72 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'DeleteEpicGamesIAPConfig' test.out

#- 73 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGoogleIAPConfig' test.out

#- 74 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "QornsliV", "serviceAccountId": "rZeQayYZ"}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateGoogleIAPConfig' test.out

#- 75 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'DeleteGoogleIAPConfig' test.out

#- 76 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleP12File' test.out

#- 77 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'GetIAPItemConfig' test.out

#- 78 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "9EVXehm8", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"IT9x0nOA": "WvzWhgtj", "yYbklbzA": "PI52J5Xy", "s9mOexDc": "kb1dE5rg"}}, {"itemIdentity": "eipUba7P", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"6oGIoMS0": "OMwiVW1u", "TAtzaDvh": "3RUQCMw7", "6H492UXl": "4D7CPJWZ"}}, {"itemIdentity": "f1NLv6j1", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"wHUG6lPC": "OrXc7yYk", "ZL7knkrT": "nruMshZn", "rrjPXcvR": "jcc1G21t"}}]}' \
    > test.out 2>&1
eval_tap $? 78 'UpdateIAPItemConfig' test.out

#- 79 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteIAPItemConfig' test.out

#- 80 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetOculusIAPConfig' test.out

#- 81 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "4Mk0VDaP", "appSecret": "VfIDc2IJ"}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateOculusIAPConfig' test.out

#- 82 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'DeleteOculusIAPConfig' test.out

#- 83 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetPlayStationIAPConfig' test.out

#- 84 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "hbpMw4vw", "backOfficeServerClientSecret": "8yyweSH9", "enableStreamJob": true, "environment": "qJoAgCb1", "streamName": "u7j9lsjG", "streamPartnerName": "XdE5cvHN"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdatePlaystationIAPConfig' test.out

#- 85 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'DeletePlaystationIAPConfig' test.out

#- 86 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'ValidateExistedPlaystationIAPConfig' test.out

#- 87 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "47TwOwHn", "backOfficeServerClientSecret": "q5Hmh1Sv", "enableStreamJob": true, "environment": "risXd3UB", "streamName": "tsRR6uzf", "streamPartnerName": "AX7WuXhi"}' \
    > test.out 2>&1
eval_tap $? 87 'ValidatePlaystationIAPConfig' test.out

#- 88 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetSteamIAPConfig' test.out

#- 89 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "XARDJshA", "publisherAuthenticationKey": "dSStFQ8r"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateSteamIAPConfig' test.out

#- 90 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteSteamIAPConfig' test.out

#- 91 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetTwitchIAPConfig' test.out

#- 92 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "W3ZPNWjQ", "clientSecret": "o5xxrdwD", "organizationId": "hREeuk1U"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateTwitchIAPConfig' test.out

#- 93 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeleteTwitchIAPConfig' test.out

#- 94 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetXblIAPConfig' test.out

#- 95 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"relyingPartyCert": "bWgo4s1s"}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateXblIAPConfig' test.out

#- 96 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'DeleteXblAPConfig' test.out

#- 97 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'pf2Vqjvz' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '5iZVnETF' \
    --itemId 'aOQNW83h' \
    --itemType 'INGAMEITEM' \
    --endTime 'iHWmJbU3' \
    --startTime 'tGiZYIZd' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'rGsSndB1' \
    --itemId 'ZXZQeE0z' \
    --itemType 'LOOTBOX' \
    --endTime '7NV2Ogrk' \
    --startTime 'yy8mN9C3' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'CqKCSZmR' \
    --body '{"categoryPath": "wrpIYCDc", "targetItemId": "sSxyM6jz", "targetNamespace": "0rjYDKEF"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'K5ddqKZP' \
    --body '{"appId": "TTKlivPD", "appType": "GAME", "baseAppId": "MNGoubw4", "boothName": "777vSpRY", "categoryPath": "xiz77Erw", "clazz": "bO9brfB4", "displayOrder": 76, "entitlementType": "DURABLE", "ext": {"WUV03OtW": {}, "UjnF4ENO": {}, "I0xIUZfU": {}}, "features": ["fEQCaz9u", "5wdO6W3f", "fG4k0xc2"], "flexible": true, "images": [{"as": "R71S1D9e", "caption": "mN2THz2T", "height": 15, "imageUrl": "XrGXbJbg", "smallImageUrl": "e4kgP2vP", "width": 11}, {"as": "BTWR7gDE", "caption": "dz35JaGu", "height": 13, "imageUrl": "O7FQndNT", "smallImageUrl": "4f1OZOhd", "width": 6}, {"as": "2EqZfeux", "caption": "SxuHylc9", "height": 21, "imageUrl": "tW5lYv4j", "smallImageUrl": "aCP4BuoV", "width": 48}], "itemIds": ["GZfZQFXH", "6GYvFE4A", "YqWWuuTR"], "itemQty": {"q7ekJeaj": 41, "zcN2xI48": 92, "1KIAlMXB": 45}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"WBcTvNKj": {"description": "WqNFbewy", "localExt": {"vdRaSeAa": {}, "53SjAfRI": {}, "EC6yUXFl": {}}, "longDescription": "SfdDvdlE", "title": "aPzzcQm4"}, "6ZfJos4J": {"description": "K5x3THuh", "localExt": {"oy7sOJ1d": {}, "vd21gYu2": {}, "neWLzHL1": {}}, "longDescription": "wEttOgy7", "title": "vWdKg7Bc"}, "yjXC9Nwy": {"description": "wQB5UF8A", "localExt": {"Mtgazj4T": {}, "zaX1axB7": {}, "jYkl4MCI": {}}, "longDescription": "tV988sWU", "title": "kXZB4mWF"}}, "lootBoxConfig": {"rewardCount": 96, "rewards": [{"lootBoxItems": [{"count": 71, "duration": 16, "endDate": "1993-10-15T00:00:00Z", "itemId": "rCzTei9y", "itemSku": "vHzSMlBF", "itemType": "l8VQu4H0"}, {"count": 42, "duration": 23, "endDate": "1996-04-11T00:00:00Z", "itemId": "yLYgb8Nd", "itemSku": "6a6M2uVK", "itemType": "nMNpbaL6"}, {"count": 3, "duration": 75, "endDate": "1987-11-24T00:00:00Z", "itemId": "bLCdhGjZ", "itemSku": "ksBZGwsW", "itemType": "FCP4fDFc"}], "name": "QoBcwIwA", "odds": 0.8471312564140523, "type": "REWARD", "weight": 25}, {"lootBoxItems": [{"count": 77, "duration": 59, "endDate": "1994-11-24T00:00:00Z", "itemId": "wthkAxrr", "itemSku": "jAVc8xVi", "itemType": "LqWwcoiX"}, {"count": 100, "duration": 74, "endDate": "1993-11-30T00:00:00Z", "itemId": "1z7sl7xW", "itemSku": "T5LLIz4T", "itemType": "hVJMjtA6"}, {"count": 97, "duration": 43, "endDate": "1982-12-28T00:00:00Z", "itemId": "y4cs6elb", "itemSku": "gxGfbk9H", "itemType": "3g1VmDhF"}], "name": "lPC52oqy", "odds": 0.9738962326336297, "type": "REWARD_GROUP", "weight": 80}, {"lootBoxItems": [{"count": 7, "duration": 4, "endDate": "1991-12-16T00:00:00Z", "itemId": "4ByFV3LT", "itemSku": "N3FeKRBV", "itemType": "TbVffntH"}, {"count": 49, "duration": 74, "endDate": "1994-12-10T00:00:00Z", "itemId": "ViMzq0Ul", "itemSku": "yuqpL0Qn", "itemType": "NRjCIoJn"}, {"count": 42, "duration": 12, "endDate": "1988-01-24T00:00:00Z", "itemId": "Xrr6w937", "itemSku": "JHDyQ1YL", "itemType": "Cz05bJVa"}], "name": "q2gnKY2F", "odds": 0.13901059222774736, "type": "REWARD_GROUP", "weight": 40}], "rollFunction": "CUSTOM"}, "maxCount": 73, "maxCountPerUser": 31, "name": "78sBa16i", "optionBoxConfig": {"boxItems": [{"count": 24, "duration": 86, "endDate": "1977-03-26T00:00:00Z", "itemId": "1E6PB5p4", "itemSku": "feqhhdPB", "itemType": "252TzSFh"}, {"count": 30, "duration": 63, "endDate": "1985-04-19T00:00:00Z", "itemId": "C2Wc9rnJ", "itemSku": "3gkeFcx2", "itemType": "lh1hGXT3"}, {"count": 68, "duration": 31, "endDate": "1995-08-14T00:00:00Z", "itemId": "gZkCFHq0", "itemSku": "Pw5OpiNv", "itemType": "Ul4s7LMP"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 25, "fixedTrialCycles": 8, "graceDays": 61}, "regionData": {"X5nUrHFT": [{"currencyCode": "HI9yUVGN", "currencyNamespace": "SLzZjnNk", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1977-02-28T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1992-03-21T00:00:00Z", "expireAt": "1988-02-20T00:00:00Z", "price": 53, "purchaseAt": "1981-11-20T00:00:00Z", "trialPrice": 21}, {"currencyCode": "A2lPsIsr", "currencyNamespace": "KRoJ18NB", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1972-02-01T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1988-08-15T00:00:00Z", "expireAt": "1988-03-11T00:00:00Z", "price": 46, "purchaseAt": "1995-06-18T00:00:00Z", "trialPrice": 36}, {"currencyCode": "Llc0yToQ", "currencyNamespace": "u0myUL5O", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1980-11-19T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1974-11-19T00:00:00Z", "expireAt": "1992-08-28T00:00:00Z", "price": 94, "purchaseAt": "1981-11-20T00:00:00Z", "trialPrice": 97}], "pBKUu2XG": [{"currencyCode": "VwZy9gR3", "currencyNamespace": "DUr9OuJn", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1997-03-02T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1982-01-20T00:00:00Z", "expireAt": "1986-09-10T00:00:00Z", "price": 84, "purchaseAt": "1992-12-28T00:00:00Z", "trialPrice": 67}, {"currencyCode": "btcWtXZF", "currencyNamespace": "ap7PklDA", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1974-02-19T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1996-11-04T00:00:00Z", "expireAt": "1979-03-28T00:00:00Z", "price": 92, "purchaseAt": "1971-09-05T00:00:00Z", "trialPrice": 56}, {"currencyCode": "tZ16Rige", "currencyNamespace": "TocnDp70", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1994-12-24T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1981-03-11T00:00:00Z", "expireAt": "1989-11-03T00:00:00Z", "price": 31, "purchaseAt": "1977-06-25T00:00:00Z", "trialPrice": 46}], "TYZUKM6E": [{"currencyCode": "BOXdCnCH", "currencyNamespace": "2GEklKs2", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1994-10-28T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1975-10-27T00:00:00Z", "expireAt": "1973-03-20T00:00:00Z", "price": 18, "purchaseAt": "1996-08-21T00:00:00Z", "trialPrice": 25}, {"currencyCode": "lo87wGCc", "currencyNamespace": "rrP5Mm9N", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1994-06-19T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1990-12-18T00:00:00Z", "expireAt": "1988-06-09T00:00:00Z", "price": 74, "purchaseAt": "1990-07-29T00:00:00Z", "trialPrice": 62}, {"currencyCode": "rwIW1MvF", "currencyNamespace": "mibff0ND", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1984-01-23T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-06-04T00:00:00Z", "expireAt": "1974-06-10T00:00:00Z", "price": 28, "purchaseAt": "1988-04-15T00:00:00Z", "trialPrice": 62}]}, "saleConfig": {"currencyCode": "NBdHxGCe", "price": 67}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "27QpXZ4L", "stackable": true, "status": "ACTIVE", "tags": ["dDwP8uig", "07IVssgO", "9kaTor2H"], "targetCurrencyCode": "vtKWcgdp", "targetNamespace": "9KiCwAIt", "thumbnailUrl": "0YzwIvGa", "useCount": 57}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'eQanQRZt' \
    --appId '7qEI5wlw' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DEMO' \
    --availableDate 'bMzi9fk2' \
    --baseAppId 'EYGYn3dL' \
    --categoryPath 'HFRkSkT2' \
    --features 'dhnzq4Oi' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '4' \
    --offset '35' \
    --region 'U3gNjOiV' \
    --sortBy '["displayOrder", "updatedAt", "name"]' \
    --storeId 'np2qeWZk' \
    --tags 'J36ih2Hs' \
    --targetNamespace '8oHPUxNr' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["TDEdX5Rd", "ztKsQz69", "HpUXNqgh"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'BEUxUzFk' \
    --itemIds 'xHQ38dLa' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'FP3oPfLS' \
    --sku 'CEoCzvRL' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'RePMdcpv' \
    --populateBundle 'true' \
    --region 'BbGz7o8E' \
    --storeId 'P8L0lwGN' \
    --sku 'WsaX8wCB' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'K6dacHKV' \
    --storeId 'uRHm4Dlb' \
    --itemIds 'qXiZpPZp' \
    --userId 'YpJNyPjf' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'lyo5z5ya' \
    --sku 'Kkm8tU23' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["ZDTnFHnF", "Dra9ibfb", "qqhQvzxg"]' \
    --storeId 'Dd94axwS' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '94yVO2dX' \
    --region 'yQxY3h05' \
    --storeId 'kz6WivMb' \
    --itemIds 'IC8TIDbm' \
    > test.out 2>&1
eval_tap $? 111 'BulkGetLocaleItems' test.out

#- 112 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'GetAvailablePredicateTypes' test.out

#- 113 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'RsHFWksU' \
    --body '{"itemIds": ["UrUuhX8l", "VDmRSNUb", "a8AyWFQq"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '7HXwEylh' \
    --body '{"changes": [{"itemIdentities": ["YjLf2Qua", "w5a8cDoZ", "TnzmiBbq"], "itemIdentityType": "ITEM_SKU", "regionData": {"qjljY7nN": [{"currencyCode": "mYGwrReD", "currencyNamespace": "tynu70Jg", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1988-11-11T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-03-19T00:00:00Z", "discountedPrice": 47, "expireAt": "1972-06-06T00:00:00Z", "price": 65, "purchaseAt": "1972-01-09T00:00:00Z", "trialPrice": 43}, {"currencyCode": "GxJFpwpI", "currencyNamespace": "oZTdz8IK", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1982-04-17T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1976-10-24T00:00:00Z", "discountedPrice": 86, "expireAt": "1991-05-01T00:00:00Z", "price": 28, "purchaseAt": "1990-05-24T00:00:00Z", "trialPrice": 29}, {"currencyCode": "s9BRs3zI", "currencyNamespace": "T5cET5ZQ", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1971-05-24T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1988-09-18T00:00:00Z", "discountedPrice": 47, "expireAt": "1993-08-24T00:00:00Z", "price": 74, "purchaseAt": "1976-03-30T00:00:00Z", "trialPrice": 44}], "ZpIygk0N": [{"currencyCode": "pY1ymd2i", "currencyNamespace": "JUAG3cl9", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1979-12-22T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1972-11-13T00:00:00Z", "discountedPrice": 37, "expireAt": "1973-11-11T00:00:00Z", "price": 66, "purchaseAt": "1995-04-24T00:00:00Z", "trialPrice": 63}, {"currencyCode": "KsPPYNOv", "currencyNamespace": "YOBgtgH6", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1973-04-05T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1976-01-09T00:00:00Z", "discountedPrice": 35, "expireAt": "1984-06-20T00:00:00Z", "price": 19, "purchaseAt": "1995-12-26T00:00:00Z", "trialPrice": 86}, {"currencyCode": "AUKIDESf", "currencyNamespace": "wP461isY", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1972-10-26T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1993-06-30T00:00:00Z", "discountedPrice": 71, "expireAt": "1988-01-02T00:00:00Z", "price": 24, "purchaseAt": "1998-10-03T00:00:00Z", "trialPrice": 9}], "cK18G4De": [{"currencyCode": "ZQBPScCk", "currencyNamespace": "sKunKVqI", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1988-03-26T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1977-03-02T00:00:00Z", "discountedPrice": 18, "expireAt": "1979-08-20T00:00:00Z", "price": 45, "purchaseAt": "1981-08-11T00:00:00Z", "trialPrice": 4}, {"currencyCode": "kbCIhd7y", "currencyNamespace": "sNH73anh", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1972-07-10T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1991-02-01T00:00:00Z", "discountedPrice": 20, "expireAt": "1989-07-06T00:00:00Z", "price": 14, "purchaseAt": "1971-11-21T00:00:00Z", "trialPrice": 0}, {"currencyCode": "qPwxjrdb", "currencyNamespace": "OCdCoTv9", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1997-07-06T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1974-12-16T00:00:00Z", "discountedPrice": 40, "expireAt": "1984-12-07T00:00:00Z", "price": 20, "purchaseAt": "1989-10-12T00:00:00Z", "trialPrice": 50}]}}, {"itemIdentities": ["rUer0UZg", "HyyQYlAK", "7iwEun17"], "itemIdentityType": "ITEM_ID", "regionData": {"Ysu9HYCE": [{"currencyCode": "0Y2MrbMH", "currencyNamespace": "2QrSfS8G", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1978-02-05T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1974-08-09T00:00:00Z", "discountedPrice": 66, "expireAt": "1992-08-31T00:00:00Z", "price": 77, "purchaseAt": "1987-04-03T00:00:00Z", "trialPrice": 91}, {"currencyCode": "G0X6Nivb", "currencyNamespace": "hQaAcCIl", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1995-04-30T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1995-05-08T00:00:00Z", "discountedPrice": 71, "expireAt": "1980-05-14T00:00:00Z", "price": 7, "purchaseAt": "1997-08-23T00:00:00Z", "trialPrice": 42}, {"currencyCode": "4mDZvmKl", "currencyNamespace": "Mw5yGa97", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1972-04-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1977-03-09T00:00:00Z", "discountedPrice": 59, "expireAt": "1977-05-31T00:00:00Z", "price": 28, "purchaseAt": "1999-06-19T00:00:00Z", "trialPrice": 73}], "ngoqo4zB": [{"currencyCode": "5MnSRoGo", "currencyNamespace": "AYQkCsFz", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1974-10-01T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-12-20T00:00:00Z", "discountedPrice": 83, "expireAt": "1998-11-26T00:00:00Z", "price": 87, "purchaseAt": "1997-04-26T00:00:00Z", "trialPrice": 16}, {"currencyCode": "wg0wcx2j", "currencyNamespace": "CRghg1M3", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1978-11-18T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1998-03-31T00:00:00Z", "discountedPrice": 98, "expireAt": "1998-12-30T00:00:00Z", "price": 33, "purchaseAt": "1993-01-18T00:00:00Z", "trialPrice": 69}, {"currencyCode": "ciKhO7am", "currencyNamespace": "Q8faaoHs", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1998-09-14T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1991-08-29T00:00:00Z", "discountedPrice": 80, "expireAt": "1975-12-10T00:00:00Z", "price": 35, "purchaseAt": "1986-07-05T00:00:00Z", "trialPrice": 67}], "J8oHjVyP": [{"currencyCode": "uBqwB10m", "currencyNamespace": "yW5Nb3W1", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1981-08-01T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1975-07-11T00:00:00Z", "discountedPrice": 6, "expireAt": "1991-11-20T00:00:00Z", "price": 25, "purchaseAt": "1977-12-03T00:00:00Z", "trialPrice": 17}, {"currencyCode": "d7Vmn3xY", "currencyNamespace": "8ZffEREc", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1994-05-12T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1998-02-11T00:00:00Z", "discountedPrice": 28, "expireAt": "1973-05-22T00:00:00Z", "price": 53, "purchaseAt": "1982-12-06T00:00:00Z", "trialPrice": 2}, {"currencyCode": "ZF6Lvj0Y", "currencyNamespace": "x1WkEfDa", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1992-01-31T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1974-05-04T00:00:00Z", "discountedPrice": 87, "expireAt": "1971-07-05T00:00:00Z", "price": 44, "purchaseAt": "1972-04-12T00:00:00Z", "trialPrice": 55}]}}, {"itemIdentities": ["hjEtpUze", "GOjB4XeN", "S7uDS9Nx"], "itemIdentityType": "ITEM_ID", "regionData": {"rhVliLmH": [{"currencyCode": "WkEQXMaC", "currencyNamespace": "X9D56kSN", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1983-10-17T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1972-11-02T00:00:00Z", "discountedPrice": 74, "expireAt": "1994-04-08T00:00:00Z", "price": 81, "purchaseAt": "1984-08-08T00:00:00Z", "trialPrice": 79}, {"currencyCode": "PgJZoFFw", "currencyNamespace": "tPHiOnTi", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1987-11-12T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1977-01-19T00:00:00Z", "discountedPrice": 62, "expireAt": "1994-04-01T00:00:00Z", "price": 22, "purchaseAt": "1988-01-21T00:00:00Z", "trialPrice": 62}, {"currencyCode": "CdY5tB0f", "currencyNamespace": "R6OYzYZs", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1990-08-17T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1979-06-16T00:00:00Z", "discountedPrice": 57, "expireAt": "1988-08-25T00:00:00Z", "price": 99, "purchaseAt": "1975-04-28T00:00:00Z", "trialPrice": 60}], "41VJ30lH": [{"currencyCode": "QuS5ugCY", "currencyNamespace": "ZcL6hweN", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1978-01-04T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1995-06-07T00:00:00Z", "discountedPrice": 62, "expireAt": "1977-03-12T00:00:00Z", "price": 12, "purchaseAt": "1988-08-08T00:00:00Z", "trialPrice": 85}, {"currencyCode": "76WrPhmS", "currencyNamespace": "ajuLR77g", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1986-06-07T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1975-08-23T00:00:00Z", "discountedPrice": 36, "expireAt": "1989-12-16T00:00:00Z", "price": 93, "purchaseAt": "1995-01-29T00:00:00Z", "trialPrice": 18}, {"currencyCode": "RduSV9qZ", "currencyNamespace": "zwvRe225", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1983-11-09T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1992-10-21T00:00:00Z", "discountedPrice": 42, "expireAt": "1989-10-19T00:00:00Z", "price": 4, "purchaseAt": "1989-06-11T00:00:00Z", "trialPrice": 25}], "l18omgsG": [{"currencyCode": "Rt75kKZq", "currencyNamespace": "YrwAZM8R", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1997-01-11T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1991-06-29T00:00:00Z", "discountedPrice": 47, "expireAt": "1980-11-01T00:00:00Z", "price": 8, "purchaseAt": "1978-05-18T00:00:00Z", "trialPrice": 69}, {"currencyCode": "eEuAqbDU", "currencyNamespace": "GqqL1pAV", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1974-05-11T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1991-07-29T00:00:00Z", "discountedPrice": 14, "expireAt": "1997-12-20T00:00:00Z", "price": 76, "purchaseAt": "1977-08-27T00:00:00Z", "trialPrice": 3}, {"currencyCode": "Y8JPk18l", "currencyNamespace": "2HZx9ND6", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1982-02-04T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1988-09-02T00:00:00Z", "discountedPrice": 4, "expireAt": "1977-06-25T00:00:00Z", "price": 42, "purchaseAt": "1979-08-27T00:00:00Z", "trialPrice": 80}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '90' \
    --offset '96' \
    --sortBy 'mjq7WEoG' \
    --storeId 'CJPSeEcQ' \
    --keyword '5KS2aKG4' \
    --language 'bs0sHq9I' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '80' \
    --offset '4' \
    --sortBy '["name:asc", "name:desc", "name"]' \
    --storeId 'bwwuknZ7' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'HxDeROpz' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'noHYieEC' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId '7xJyeQfx' \
    --namespace $AB_NAMESPACE \
    --storeId 'hFCo3jFP' \
    --body '{"appId": "bbbgQcrg", "appType": "GAME", "baseAppId": "7sUhQkPz", "boothName": "elvuqboW", "categoryPath": "jxfMm3Mk", "clazz": "MzJbSusc", "displayOrder": 2, "entitlementType": "CONSUMABLE", "ext": {"VybL730Y": {}, "H6vX3Y7N": {}, "nDyEtCWM": {}}, "features": ["j6fGVybR", "hUE3SK0T", "E2bSkWkL"], "flexible": true, "images": [{"as": "oEnEb3eQ", "caption": "sMsgndxL", "height": 59, "imageUrl": "eGZcW9sF", "smallImageUrl": "FGoZGjRQ", "width": 63}, {"as": "veW72ABv", "caption": "adMHDxad", "height": 63, "imageUrl": "6URNn8GU", "smallImageUrl": "723MW6Xi", "width": 82}, {"as": "JuztUaXB", "caption": "LCgN6e4I", "height": 21, "imageUrl": "lW9WESaX", "smallImageUrl": "ADQF8mty", "width": 99}], "itemIds": ["mJNDIPh5", "RWC96UUA", "sC4NCbnc"], "itemQty": {"A1Q0iLRE": 17, "O9ysmJ9k": 64, "i4LXD9cI": 52}, "itemType": "CODE", "listable": true, "localizations": {"Q2ab037E": {"description": "8PzGvLOU", "localExt": {"SDxAQBfZ": {}, "18Ja72Je": {}, "2KthRDEc": {}}, "longDescription": "ETvdxk0f", "title": "GeXQ7n3b"}, "gcBYp9c8": {"description": "qk6Xhu1Z", "localExt": {"Agm0Vxz4": {}, "KUzsyyX4": {}, "T3aXGmlW": {}}, "longDescription": "iAJ26Aam", "title": "lhnRg9Vf"}, "swTlzlC3": {"description": "eqgM73fO", "localExt": {"KREkqUW6": {}, "IErghyet": {}, "dXlGoRfk": {}}, "longDescription": "jgywY6ce", "title": "L8xXK2Ne"}}, "lootBoxConfig": {"rewardCount": 81, "rewards": [{"lootBoxItems": [{"count": 33, "duration": 23, "endDate": "1990-12-28T00:00:00Z", "itemId": "ppw89zDR", "itemSku": "EN7ZicB8", "itemType": "6w9FDoKj"}, {"count": 63, "duration": 26, "endDate": "1991-01-10T00:00:00Z", "itemId": "KFSLfN2d", "itemSku": "OvFRpd1s", "itemType": "7GPVEDYO"}, {"count": 35, "duration": 63, "endDate": "1997-07-24T00:00:00Z", "itemId": "dP0veQTY", "itemSku": "j7zRTZLE", "itemType": "ZqpYmdFa"}], "name": "VgjTCVCc", "odds": 0.0448854296597605, "type": "PROBABILITY_GROUP", "weight": 9}, {"lootBoxItems": [{"count": 92, "duration": 90, "endDate": "1973-02-28T00:00:00Z", "itemId": "p9vCAlyC", "itemSku": "h4UbdX0V", "itemType": "TSz2aGia"}, {"count": 70, "duration": 69, "endDate": "1982-07-10T00:00:00Z", "itemId": "KWse0RE8", "itemSku": "89f1vQ94", "itemType": "dhpAKjTH"}, {"count": 28, "duration": 75, "endDate": "1986-01-25T00:00:00Z", "itemId": "69SS1EiE", "itemSku": "Ao1wPPCX", "itemType": "fQwVfUFh"}], "name": "lSg3WN92", "odds": 0.7670049331750686, "type": "REWARD", "weight": 41}, {"lootBoxItems": [{"count": 83, "duration": 63, "endDate": "1977-12-14T00:00:00Z", "itemId": "KTEE7RvZ", "itemSku": "b4dtg1bg", "itemType": "O6PjTJpk"}, {"count": 54, "duration": 27, "endDate": "1993-11-20T00:00:00Z", "itemId": "ksQSXqPm", "itemSku": "4RFnt2SY", "itemType": "zP9o8kWa"}, {"count": 48, "duration": 84, "endDate": "1985-08-18T00:00:00Z", "itemId": "Qj6Nlf4N", "itemSku": "DJfQV8WR", "itemType": "1xBRB5o9"}], "name": "3yxjsw1v", "odds": 0.4554960947560561, "type": "REWARD", "weight": 66}], "rollFunction": "DEFAULT"}, "maxCount": 54, "maxCountPerUser": 27, "name": "q2NowjE5", "optionBoxConfig": {"boxItems": [{"count": 21, "duration": 40, "endDate": "1982-07-04T00:00:00Z", "itemId": "Kla8B4bR", "itemSku": "cUcOp17a", "itemType": "sdsapc5l"}, {"count": 8, "duration": 50, "endDate": "1979-07-10T00:00:00Z", "itemId": "svqL7wT3", "itemSku": "kUheLvBS", "itemType": "rjqyHmC5"}, {"count": 72, "duration": 3, "endDate": "1994-12-04T00:00:00Z", "itemId": "puaGK5r6", "itemSku": "AvaTS5I4", "itemType": "OpzDdxMu"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 66, "fixedTrialCycles": 29, "graceDays": 99}, "regionData": {"1sPPkC6G": [{"currencyCode": "AhRxMji2", "currencyNamespace": "CmzUhuhN", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1991-11-21T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1991-09-01T00:00:00Z", "expireAt": "1996-12-27T00:00:00Z", "price": 67, "purchaseAt": "1975-04-04T00:00:00Z", "trialPrice": 70}, {"currencyCode": "I4wNIvdH", "currencyNamespace": "lrHsMLmV", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1989-07-08T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1997-01-20T00:00:00Z", "expireAt": "1987-02-19T00:00:00Z", "price": 18, "purchaseAt": "1995-12-26T00:00:00Z", "trialPrice": 45}, {"currencyCode": "j9h9LZq8", "currencyNamespace": "g07pTlrQ", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1997-02-05T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1979-01-28T00:00:00Z", "expireAt": "1979-10-16T00:00:00Z", "price": 52, "purchaseAt": "1996-08-14T00:00:00Z", "trialPrice": 55}], "BKfxE0ZM": [{"currencyCode": "TqmYJV60", "currencyNamespace": "U0iCdDHc", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1975-03-02T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1987-07-24T00:00:00Z", "expireAt": "1988-01-02T00:00:00Z", "price": 26, "purchaseAt": "1986-10-09T00:00:00Z", "trialPrice": 10}, {"currencyCode": "OK6nqQDr", "currencyNamespace": "Px2PCDBk", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1995-01-09T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1979-09-09T00:00:00Z", "expireAt": "1997-06-18T00:00:00Z", "price": 13, "purchaseAt": "1977-08-07T00:00:00Z", "trialPrice": 36}, {"currencyCode": "egdOKP5n", "currencyNamespace": "YRq1EpCH", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1991-04-16T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1988-07-20T00:00:00Z", "expireAt": "1977-08-03T00:00:00Z", "price": 1, "purchaseAt": "1987-11-25T00:00:00Z", "trialPrice": 75}], "gIm5CLTy": [{"currencyCode": "TMiB3rBV", "currencyNamespace": "l6o7MruN", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1979-01-08T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1981-09-11T00:00:00Z", "expireAt": "1981-06-26T00:00:00Z", "price": 21, "purchaseAt": "1987-05-19T00:00:00Z", "trialPrice": 83}, {"currencyCode": "Fo1QaeYE", "currencyNamespace": "JUXrTT4P", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1993-09-03T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1975-01-19T00:00:00Z", "expireAt": "1983-12-05T00:00:00Z", "price": 53, "purchaseAt": "1991-08-11T00:00:00Z", "trialPrice": 38}, {"currencyCode": "LKIN2ZMt", "currencyNamespace": "U2K6yRGj", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1992-08-19T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1985-10-17T00:00:00Z", "expireAt": "1994-04-13T00:00:00Z", "price": 55, "purchaseAt": "1978-11-04T00:00:00Z", "trialPrice": 87}]}, "saleConfig": {"currencyCode": "x5KU3h8p", "price": 30}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "cZ6RoyyD", "stackable": false, "status": "ACTIVE", "tags": ["PAHNYlrs", "pYXGtWNn", "Ikmaqy21"], "targetCurrencyCode": "ySoHXlg1", "targetNamespace": "4Ccd2I7e", "thumbnailUrl": "Kijz9Dep", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'O7EdjWIq' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'siRqw73w' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'GU6wllX8' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 88, "orderNo": "bujaT2Nv"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'K5n2ef9W' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'XJKfYS2H' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'tB4G05rG' \
    --namespace $AB_NAMESPACE \
    --storeId 'nSRA6zqt' \
    --body '{"carousel": [{"alt": "s7fhySem", "previewUrl": "h4LcSgMM", "thumbnailUrl": "jNEqhXpM", "type": "image", "url": "n2HwmN9k", "videoSource": "youtube"}, {"alt": "mJoKR89f", "previewUrl": "txLg89DW", "thumbnailUrl": "Fb52cuUW", "type": "image", "url": "DtbCluMv", "videoSource": "youtube"}, {"alt": "TXW4VGGV", "previewUrl": "sWAA0WJC", "thumbnailUrl": "VE3GZXVL", "type": "image", "url": "Y0mikYG5", "videoSource": "vimeo"}], "developer": "NFfv9GIJ", "forumUrl": "wxdbOSNX", "genres": ["Racing", "FreeToPlay", "Indie"], "localizations": {"l0T6jX0i": {"announcement": "DQcpjCCJ", "slogan": "m1tyINl7"}, "ollukT8P": {"announcement": "NPqICXkb", "slogan": "GiEHncGV"}, "pL95ZrJX": {"announcement": "9BFfgiz9", "slogan": "HCt9ySDW"}}, "platformRequirements": {"FkTb2yv6": [{"additionals": "70X7I1V7", "directXVersion": "qvqi1qAw", "diskSpace": "RrdGPC5j", "graphics": "lW3PBpc6", "label": "zJwRSR2Y", "osVersion": "jRfnbE3g", "processor": "7H2GeRcK", "ram": "wiZX7kxW", "soundCard": "oOjzFZKz"}, {"additionals": "CeJ6hqW6", "directXVersion": "ZejH9gnV", "diskSpace": "PvlUhLnz", "graphics": "eDhoYwVv", "label": "TSLGY3Pf", "osVersion": "nReS6MZP", "processor": "Ldp0XnFG", "ram": "T1ST5XvF", "soundCard": "dlkhKgoF"}, {"additionals": "4MitqDmV", "directXVersion": "GKLDpAxe", "diskSpace": "NDgxlGLc", "graphics": "hIpGssuL", "label": "ySut5bZc", "osVersion": "vqp1ZDQB", "processor": "wBj4OpGg", "ram": "d6WjrN1s", "soundCard": "QT4ZPOMu"}], "0H0jc642": [{"additionals": "6Y7lo8cP", "directXVersion": "FRH9EAz0", "diskSpace": "zc6pOK5B", "graphics": "ZdtIgAWV", "label": "jxaxyizY", "osVersion": "iEymzhsc", "processor": "841bcdam", "ram": "Lx2hMexJ", "soundCard": "9xZndVom"}, {"additionals": "rtDQopeN", "directXVersion": "VM3s0Ul8", "diskSpace": "re0K1PkL", "graphics": "yvlX2Zw7", "label": "tJytApWS", "osVersion": "rGvbhvjB", "processor": "RHtBcouA", "ram": "pFXriNTC", "soundCard": "HbzXorr1"}, {"additionals": "CvHKAxAe", "directXVersion": "ZfFEFgX2", "diskSpace": "rIL1fJAK", "graphics": "eYpi4OrC", "label": "uJmv5Kjd", "osVersion": "D17Kp6F7", "processor": "5ooMCgqP", "ram": "tdRZzFBC", "soundCard": "GVSyauve"}], "3ZjnZmS7": [{"additionals": "kLIQDdoS", "directXVersion": "u8i0JziY", "diskSpace": "XwBa2vkH", "graphics": "0CLpL68k", "label": "Zlt30fTm", "osVersion": "4ZETnuHC", "processor": "9r3PVWqU", "ram": "XgESJJru", "soundCard": "Ldk14VVW"}, {"additionals": "XuWmcadb", "directXVersion": "IRR45qAd", "diskSpace": "AWFuSx2m", "graphics": "DnqWatRh", "label": "MhtWBISI", "osVersion": "rYkGT0PG", "processor": "jZNYxSdM", "ram": "Y8rP2pM3", "soundCard": "7LQbOKea"}, {"additionals": "Fl6c9qlu", "directXVersion": "9xniZg7U", "diskSpace": "nWMUrVqE", "graphics": "WrsOMQHz", "label": "zsAdp4Kq", "osVersion": "HJRCnd0v", "processor": "zn5ZaPAG", "ram": "Pq6hT9bQ", "soundCard": "AO2NEVwZ"}]}, "platforms": ["Linux", "MacOS", "Windows"], "players": ["CrossPlatformMulti", "Multi", "Multi"], "primaryGenre": "Indie", "publisher": "8f8lT8xq", "releaseDate": "1987-03-16T00:00:00Z", "websiteUrl": "2hv9YZo9"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'mYlkgiYr' \
    --namespace $AB_NAMESPACE \
    --storeId 'UWyIn9Pt' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'aaYVRh7q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '2RyLiTmt' \
    --namespace $AB_NAMESPACE \
    --storeId 'OEZS9mWM' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'XjArXwS6' \
    --itemId 'tn5KrFlo' \
    --namespace $AB_NAMESPACE \
    --storeId 'mGdrdmbj' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'NIoTBSQ6' \
    --itemId 'sk7GFRXC' \
    --namespace $AB_NAMESPACE \
    --storeId 'NttkUd9l' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'FtaS4Gny' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'NenBZyL2' \
    --populateBundle 'false' \
    --region 'Cws0pGGj' \
    --storeId 'CFKE0aUo' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '9uoNi1Gu' \
    --namespace $AB_NAMESPACE \
    --storeId 'jRGpnrQs' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 14, "comparison": "is", "name": "SZUoLQa5", "predicateType": "EntitlementPredicate", "value": "m7r0gdDi", "values": ["3uLFQjJW", "DEYYthNl", "cLAwznm8"]}, {"anyOf": 78, "comparison": "isNot", "name": "gWxj4qYC", "predicateType": "SeasonTierPredicate", "value": "a7HU7yo1", "values": ["XS2hqhGl", "DUU6u451", "1clbcTvM"]}, {"anyOf": 18, "comparison": "is", "name": "SpozwiZW", "predicateType": "SeasonTierPredicate", "value": "mk2CFJnE", "values": ["X6jrNruf", "TzerHOoT", "uPhxgVpn"]}]}, {"operator": "or", "predicates": [{"anyOf": 62, "comparison": "is", "name": "aMfOVCUP", "predicateType": "EntitlementPredicate", "value": "Nzhj8qXL", "values": ["iKR1S6jX", "ei4AdeMQ", "eJtx42wG"]}, {"anyOf": 5, "comparison": "isNot", "name": "PrDBu7JQ", "predicateType": "SeasonTierPredicate", "value": "Y4TbmlyA", "values": ["cfjbTDIJ", "F4jjdro7", "qGVYQEM4"]}, {"anyOf": 22, "comparison": "isNot", "name": "gsvL31zj", "predicateType": "SeasonTierPredicate", "value": "4LWN68Wu", "values": ["R41CudL6", "MmaOW7Jd", "fonpBCAT"]}]}, {"operator": "and", "predicates": [{"anyOf": 48, "comparison": "is", "name": "W3xqYWWa", "predicateType": "SeasonPassPredicate", "value": "wH5UFEA8", "values": ["Bi4zRRU1", "aLlu5tnA", "R8FtIqK3"]}, {"anyOf": 7, "comparison": "excludes", "name": "cX1Pbq4k", "predicateType": "EntitlementPredicate", "value": "12qt6MBt", "values": ["CN8rnK5U", "tYIsL82D", "rzTwrYqV"]}, {"anyOf": 77, "comparison": "isNot", "name": "646fwARa", "predicateType": "SeasonTierPredicate", "value": "ZFrycwxw", "values": ["Z5rdIt6C", "z8dkkhme", "Hlp9fgdE"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'VkYjoWqO' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "VP98YgzN"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name '5xRrUHKV' \
    --offset '2' \
    --tag 'p21pyNnJ' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FVhjTNO2", "name": "daYHqsYo", "status": "ACTIVE", "tags": ["IvUbHMqk", "Uw2QuYIU", "5mXNH7zQ"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'nKY9wYs6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'FFHvLEfU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "OEf0q46S", "name": "TeGAPKnG", "status": "ACTIVE", "tags": ["zqJfsY2L", "rot1Retd", "dzbU5D4X"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '5QBXRDzF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'GsWrpi2n' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '97' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'G0ccR521' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '8z3abi90' \
    --limit '10' \
    --offset '72' \
    --orderNos '["FYZxkTVz", "MqLeULI9", "bKVOoMDO"]' \
    --sortBy 'sWCUeT54' \
    --startTime 'TB3dymwN' \
    --status 'REFUND_FAILED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 139 'QueryOrders' test.out

#- 140 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetOrderStatistics' test.out

#- 141 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'knjDzdOl' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '46iWCKEl' \
    --body '{"description": "TsP4g2HD"}' \
    > test.out 2>&1
eval_tap $? 142 'RefundOrder' test.out

#- 143 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 143 'GetPaymentCallbackConfig' test.out

#- 144 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": false, "notifyUrl": "2kplH3pm", "privateKey": "RdqhOfEz"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'r0WVdOtf' \
    --externalId 'HiZfFLtx' \
    --limit '84' \
    --notificationSource 'STRIPE' \
    --notificationType 'kGhNXcje' \
    --offset '65' \
    --paymentOrderNo 'stCw3ard' \
    --startDate 'zVm8u1l4' \
    --status 'WARN' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'Ig9oY9PJ' \
    --limit '89' \
    --offset '27' \
    --status 'REQUEST_FOR_INFORMATION' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "7dVznnYK", "currencyNamespace": "2sEKYsks", "customParameters": {"fMkGjGBD": {}, "LOyUiGEq": {}, "dHxBo50J": {}}, "description": "Bp2sXtQS", "extOrderNo": "Xt4gltnO", "extUserId": "pHmxOAg2", "itemType": "CODE", "language": "ygx_YowD_xu", "metadata": {"mzVFHnlR": "1CfexRGD", "wJpUc1xo": "F5WZDI9a", "SECan5I3": "r272cWKw"}, "notifyUrl": "vzdpMekq", "omitNotification": false, "platform": "0uqMWZIa", "price": 37, "recurringPaymentOrderNo": "vtRMjW9q", "region": "EyoD1MXx", "returnUrl": "2Igq60Ad", "sandbox": false, "sku": "WFC3VJI4", "subscriptionId": "UAj0soyB", "targetNamespace": "RU4H8h63", "targetUserId": "9x3FK5lv", "title": "lfSOPvj4"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '8AwCzDaP' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7anLoexb' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2JqxdlO2' \
    --body '{"extTxId": "rJ42Pg9X", "paymentMethod": "R4bo7CI9", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '7kFC5Oyo' \
    --body '{"description": "8tNK2xdy"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'VZy8PoZo' \
    --body '{"amount": 14, "currencyCode": "Tjico1Lc", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 66, "vat": 60}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'dKZgiION' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedBalanceOrigins": ["Epic", "GooglePlay", "Other"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 156 'ResetPlatformWalletConfig' test.out

#- 157 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetRevocationConfig' test.out

#- 158 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    > test.out 2>&1
eval_tap $? 158 'UpdateRevocationConfig' test.out

#- 159 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'DeleteRevocationConfig' test.out

#- 160 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'kut9H0Ly' \
    --limit '100' \
    --offset '40' \
    --source 'IAP' \
    --startTime '2ATGdE27' \
    --status 'FAIL' \
    --transactionId '5AN9mZuf' \
    --userId 'nlCsMqjR' \
    > test.out 2>&1
eval_tap $? 160 'QueryRevocationHistories' test.out

#- 161 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationPluginConfig' test.out

#- 162 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "4Cs0yPUp"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "PJqaz1WA"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationPluginConfig' test.out

#- 163 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationPluginConfig' test.out

#- 164 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 164 'UploadRevocationPluginConfigCert' test.out

#- 165 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Sis5GfY6", "eventTopic": "aXlgmjoP", "maxAwarded": 27, "maxAwardedPerUser": 67, "namespaceExpression": "yY2z8zFp", "rewardCode": "bRM14v42", "rewardConditions": [{"condition": "azthQrT3", "conditionName": "3qPEIIU0", "eventName": "gaH8iF7y", "rewardItems": [{"duration": 13, "endDate": "1988-11-20T00:00:00Z", "itemId": "XKpJblYn", "quantity": 48}, {"duration": 100, "endDate": "1979-06-15T00:00:00Z", "itemId": "dek2FmO0", "quantity": 8}, {"duration": 30, "endDate": "1993-09-01T00:00:00Z", "itemId": "OupGbkz1", "quantity": 49}]}, {"condition": "67Wc64pv", "conditionName": "x04VWtWW", "eventName": "P3G6Rn0l", "rewardItems": [{"duration": 40, "endDate": "1996-11-13T00:00:00Z", "itemId": "196ju6DR", "quantity": 55}, {"duration": 56, "endDate": "1983-01-09T00:00:00Z", "itemId": "59HN6yuj", "quantity": 17}, {"duration": 48, "endDate": "1994-12-17T00:00:00Z", "itemId": "iqfUN7k9", "quantity": 32}]}, {"condition": "zcjOClw7", "conditionName": "T4olDTcE", "eventName": "zQ24NKLP", "rewardItems": [{"duration": 92, "endDate": "1993-01-25T00:00:00Z", "itemId": "gylbO5B8", "quantity": 37}, {"duration": 2, "endDate": "1992-01-27T00:00:00Z", "itemId": "N5Yf4QYE", "quantity": 8}, {"duration": 96, "endDate": "1997-06-22T00:00:00Z", "itemId": "fNjIWXss", "quantity": 78}]}], "userIdExpression": "YSoCKb0c"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '3tOZlsIa' \
    --limit '44' \
    --offset '78' \
    --sortBy '["rewardCode:desc", "namespace:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 166 'QueryRewards' test.out

#- 167 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 167 'ExportRewards' test.out

#- 168 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'TA6xSBQZ' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '83IbwjsJ' \
    --body '{"description": "Pfg7qK1Z", "eventTopic": "HQ5X8coU", "maxAwarded": 16, "maxAwardedPerUser": 63, "namespaceExpression": "qq4b3Rah", "rewardCode": "np5AnzX4", "rewardConditions": [{"condition": "5eCxiNi9", "conditionName": "Gx6K6ewt", "eventName": "6Y99tSSP", "rewardItems": [{"duration": 69, "endDate": "1992-11-21T00:00:00Z", "itemId": "FkMjb3ty", "quantity": 92}, {"duration": 65, "endDate": "1992-01-07T00:00:00Z", "itemId": "h3kkRtnW", "quantity": 75}, {"duration": 72, "endDate": "1990-10-23T00:00:00Z", "itemId": "D9a9pKiW", "quantity": 81}]}, {"condition": "GuVoHuLc", "conditionName": "JdEJmIzN", "eventName": "e7iyC2mT", "rewardItems": [{"duration": 83, "endDate": "1974-08-14T00:00:00Z", "itemId": "7AYUk0xd", "quantity": 35}, {"duration": 40, "endDate": "1973-02-12T00:00:00Z", "itemId": "jFgXQzvM", "quantity": 15}, {"duration": 99, "endDate": "1973-07-22T00:00:00Z", "itemId": "GxleKgX9", "quantity": 25}]}, {"condition": "PYFT76ES", "conditionName": "lTVqBH6d", "eventName": "APWDhPaC", "rewardItems": [{"duration": 93, "endDate": "1993-11-13T00:00:00Z", "itemId": "wztspV7m", "quantity": 37}, {"duration": 3, "endDate": "1987-12-18T00:00:00Z", "itemId": "WBA4i4Uo", "quantity": 28}, {"duration": 71, "endDate": "1977-02-25T00:00:00Z", "itemId": "IKr2f7zh", "quantity": 69}]}], "userIdExpression": "1IECU6xw"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'z9xcZTLf' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId '2rzCJLWg' \
    --body '{"payload": {"kbQdoOuZ": {}, "hRDnb37L": {}, "wNKD1UfU": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'IMgXWsLC' \
    --body '{"conditionName": "2R4UHtgy", "userId": "gGBKmZ0i"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'f3G7AXG5' \
    --limit '35' \
    --offset '5' \
    --start 'sWWb1Afv' \
    --storeId 'vVys7bh4' \
    --viewId 'L5mWsIxP' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '4nLP98WW' \
    --body '{"active": false, "displayOrder": 36, "endDate": "1980-11-15T00:00:00Z", "ext": {"yh6usg9a": {}, "4tM3sH9x": {}, "IgbL888V": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 92, "itemCount": 2, "rule": "SEQUENCE"}, "items": [{"id": "UVXDCb6b", "sku": "ahJrx6Gi"}, {"id": "KgeStUeD", "sku": "V9czpGVo"}, {"id": "Vtu0X6Ke", "sku": "GvptxODH"}], "localizations": {"RVXlQabZ": {"description": "vUNchOke", "localExt": {"F1bpdLAj": {}, "lNGxdjo8": {}, "52O7I3tC": {}}, "longDescription": "CGpm7BbF", "title": "Er1goqCg"}, "lf4JmMlH": {"description": "KMG1stGK", "localExt": {"cOEjTQph": {}, "KWLgko5D": {}, "8mfSrFcs": {}}, "longDescription": "AilzRoLf", "title": "k0JEKAUS"}, "owT2hAG0": {"description": "0QpcwVqk", "localExt": {"O3sETVXp": {}, "EKqeqN9b": {}, "J4NCQbWD": {}}, "longDescription": "YqkbCLLq", "title": "HA602mVh"}}, "name": "Xqaj5Zc3", "rotationType": "NONE", "startDate": "1999-08-06T00:00:00Z", "viewId": "XyLvKLih"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'VTMffeuS' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'fOVqwTXL' \
    --storeId 'Wt3RoP5K' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'FjoGKpYZ' \
    --storeId 'JR5athut' \
    --body '{"active": false, "displayOrder": 33, "endDate": "1977-04-19T00:00:00Z", "ext": {"fpUhKhlU": {}, "p6T2aFZm": {}, "l5tYNQls": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 5, "itemCount": 3, "rule": "SEQUENCE"}, "items": [{"id": "9oTvubgh", "sku": "uloxrKvY"}, {"id": "8buQVH4G", "sku": "6nkSm6c5"}, {"id": "HC6QdumZ", "sku": "s8wDmE12"}], "localizations": {"oqSqgFrS": {"description": "cjBkxvzT", "localExt": {"FVjWhVpv": {}, "rS2nkgyV": {}, "pAMhhsSi": {}}, "longDescription": "pSD6k74q", "title": "SiGK36qO"}, "tvY5lT5z": {"description": "yW3gZr6C", "localExt": {"dDSZ6hWk": {}, "gC5x5WxQ": {}, "PDYxYDXO": {}}, "longDescription": "Jb88IXxL", "title": "PJJcS0g7"}, "LyFl53kX": {"description": "LIShV8e2", "localExt": {"WjDXosm7": {}, "x5uFJsh8": {}, "TDUUhJpq": {}}, "longDescription": "7Kqs6hT6", "title": "G0zqWWZO"}}, "name": "WRx8yeQb", "rotationType": "FIXED_PERIOD", "startDate": "1992-02-16T00:00:00Z", "viewId": "K9LKz0sP"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'KbcqDDTB' \
    --storeId 'QSjWirK3' \
    > test.out 2>&1
eval_tap $? 179 'DeleteSection' test.out

#- 180 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'ListStores' test.out

#- 181 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "d82Bgx3n", "defaultRegion": "IaiejqzR", "description": "HQPC7p42", "supportedLanguages": ["uiJmXY5v", "AKgC45CX", "70HJSuYo"], "supportedRegions": ["gqRStsRD", "BbjX9hwc", "iuxL4cRV"], "title": "fylrxNq9"}' \
    > test.out 2>&1
eval_tap $? 181 'CreateStore' test.out

#- 182 ImportStore
eval_tap 0 182 'ImportStore # SKIP deprecated' test.out

#- 183 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStore' test.out

#- 184 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'DeletePublishedStore' test.out

#- 185 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 185 'GetPublishedStoreBackup' test.out

#- 186 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'RollbackPublishedStore' test.out

#- 187 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'OpemHsH3' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'adQvrVJt' \
    --body '{"defaultLanguage": "W3S4pz98", "defaultRegion": "R7yVAdYc", "description": "k558imdN", "supportedLanguages": ["PrlXQG2R", "mdnxZ3NM", "i1XEv7aC"], "supportedRegions": ["5gJ2l2OV", "Jk741Sjo", "2G7A6iQn"], "title": "nv0imuUq"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UPwcYdrv' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'JwYbNpOz' \
    --action 'UPDATE' \
    --itemSku 'nOV5ZFof' \
    --itemType 'BUNDLE' \
    --limit '56' \
    --offset '86' \
    --selected 'false' \
    --sortBy '["updatedAt", "createdAt:asc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'RBTph3tr' \
    --updatedAtStart '6vShJrgG' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'GG6VbrLa' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'axna5sX2' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'omgCINXo' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'y8rFtkJy' \
    --action 'DELETE' \
    --itemSku '6LekSAwA' \
    --itemType 'APP' \
    --type 'STORE' \
    --updatedAtEnd 'pBKhpaMV' \
    --updatedAtStart 'UGbxWztN' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '9A4x1QRD' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'nns4g8Dp' \
    --namespace $AB_NAMESPACE \
    --storeId '9BQ0g8gn' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'fGFHIFqK' \
    --namespace $AB_NAMESPACE \
    --storeId 'AB0lVYg3' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'cXkMH8bI' \
    --targetStoreId 'z6dsf4zv' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'cG1acsdY' \
    --limit '40' \
    --offset '55' \
    --sku 'IfQ8NGXV' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'ub80ERt3' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '7wg7Ix1p' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '7Av1uc4x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '8HPBGq83' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "ZVuYsSMI"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName '8yy18el4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'bYLAOjhE' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 48, "orderNo": "J3QjSNfA"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 44, "currencyCode": "JqSQvTY1", "expireAt": "1983-08-31T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "N5rPIIn0", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 68, "itemIdentity": "QYP8qZbJ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "W6OSL5Rf"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 15, "currencyCode": "sEWnzRKG", "expireAt": "1986-09-30T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "mnVXPOCW", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 48, "itemIdentity": "FdamJW63", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 96, "entitlementId": "SjgW4shw"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 37, "currencyCode": "NVSxzwzE", "expireAt": "1981-12-21T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "husbwWYB", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 12, "itemIdentity": "ikwhLgvm", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "HAEIz8NK"}, "type": "FULFILL_ITEM"}], "userId": "RNC1uwdQ"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 92, "currencyCode": "XYscytni", "expireAt": "1985-12-08T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "toGBVQ9O", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 6, "itemIdentity": "auhvKicI", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 61, "entitlementId": "olPkh0O8"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 84, "currencyCode": "qEs9BAJb", "expireAt": "1985-10-25T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "sD9uEBN1", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 39, "itemIdentity": "ZztZ6tWH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 91, "entitlementId": "ria2rzfn"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 95, "currencyCode": "6S5dR23K", "expireAt": "1997-08-28T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "aWkMZQ7X", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 64, "itemIdentity": "veKaPZMC", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "MzOd5mwR"}, "type": "CREDIT_WALLET"}], "userId": "YcFVXfRM"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 58, "currencyCode": "6EXXCkdf", "expireAt": "1988-12-19T00:00:00Z"}, "debitPayload": {"count": 9, "currencyCode": "IAbUMIhh", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 32, "itemIdentity": "fgfZK13O", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "hRkx8COW"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 8, "currencyCode": "aHz7udcn", "expireAt": "1977-11-11T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "yADGDTZt", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 29, "itemIdentity": "4L4hCI2a", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "tk2CX5Ia"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 83, "currencyCode": "07RJmmq3", "expireAt": "1993-01-13T00:00:00Z"}, "debitPayload": {"count": 50, "currencyCode": "RPJ2QDAQ", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 44, "itemIdentity": "BaFNKCDL", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 39, "entitlementId": "ZB2KwFph"}, "type": "DEBIT_WALLET"}], "userId": "Hz3f69hC"}], "metadata": {"aTj1JdBv": {}, "gJAiHRO7": {}, "0ulgm2Ho": {}}, "needPreCheck": false, "transactionId": "G1LO0O2Y", "type": "nZJ4VRhR"}' \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '62' \
    --status 'SUCCESS' \
    --type 'YOatMd4I' \
    --userId 'MbTdnqSy' \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId '4AHVcuTA' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Y2o2gU8K' \
    --body '{"achievements": [{"id": "3mgiUZKx", "value": 22}, {"id": "eDUXnYuu", "value": 31}, {"id": "xQEorAHW", "value": 60}], "steamUserId": "q7k2jfQ4"}' \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '2gKbnJrb' \
    --xboxUserId 'j28Lq3yZ' \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'hhSizA1L' \
    --body '{"achievements": [{"id": "r8gNpNPh", "percentComplete": 4}, {"id": "qBlhjKIE", "percentComplete": 87}, {"id": "5PKQtbmh", "percentComplete": 88}], "serviceConfigId": "ah0G6R54", "titleId": "PgGgls70", "xboxUserId": "ISIiiYm1"}' \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId '2AHQdDD9' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'hLm6jIcl' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'f5fYhN7l' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'Zeb0cKwp' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'v3a65kb6' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '76JISGRB' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'vPVhAt09' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '2XFsaRM8' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'OsrhPsKX' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'SgOPSM2n' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '6ldLy6Cm' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'W7wPsrMK' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'yPVEqVuw' \
    --features '["1dZZBYg0", "wI1ZfxER", "4z8pps9b"]' \
    --itemId '["q2aXKvhc", "pO7a5oIj", "cfvECwu9"]' \
    --limit '36' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YkafNqOE' \
    --body '[{"endDate": "1974-05-24T00:00:00Z", "grantedCode": "E80477x3", "itemId": "MDEtJxjX", "itemNamespace": "pMWIRnWM", "language": "KqfL_eX", "quantity": 23, "region": "fvYujmdo", "source": "OTHER", "startDate": "1992-04-14T00:00:00Z", "storeId": "JNp75q7W"}, {"endDate": "1992-10-14T00:00:00Z", "grantedCode": "hUc1PTUv", "itemId": "I5se47XB", "itemNamespace": "NfsM6lCg", "language": "EgJG_EC", "quantity": 13, "region": "BwJ8jdiT", "source": "GIFT", "startDate": "1976-02-25T00:00:00Z", "storeId": "7osaw3kY"}, {"endDate": "1999-11-04T00:00:00Z", "grantedCode": "OfijWjPp", "itemId": "Xw2Fwaqr", "itemNamespace": "tUOKUqss", "language": "jS-lHRn-tv", "quantity": 5, "region": "wUWOPjU2", "source": "ACHIEVEMENT", "startDate": "1974-02-25T00:00:00Z", "storeId": "wN9Zd5kU"}]' \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'C1ikDOWr' \
    --activeOnly 'false' \
    --appId 'gGAvI2rv' \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'iy0O4yGL' \
    --activeOnly 'false' \
    --limit '79' \
    --offset '69' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '1jpH4QUX' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'c6gQZ2tO' \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'qE9DkAwD' \
    --ids '["EkhM57cR", "obMNvVQH", "iqbAm856"]' \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'EnAzx4pc' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --sku 'Uh08eDVo' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'z06TLNzy' \
    --appIds '["UDorZgct", "EqoCErrN", "ERbTXlUp"]' \
    --itemIds '["hnrOjXiX", "VPrCADlb", "noB4NaBN"]' \
    --skus '["CdWhFTrw", "vL3GpDrL", "9STWEjSD"]' \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'HsZCoQgW' \
    --itemIds '["eXOqXQUk", "awJywGv3", "gF98fORm"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId '4pWDd5Rb' \
    --appId 'LJdrkQ1F' \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tojzPHXH' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'HkGkh0qE' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yGWqIvCk' \
    --ids '["IShaxdTF", "3GaGOiBY", "gNxnsaAa"]' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '8rCUyW6b' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'NIolyaMp' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '00neer5s' \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'c1hQDoCh' \
    --entitlementIds '2Oo1almy' \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'JmK1u8fQ' \
    --namespace $AB_NAMESPACE \
    --userId 't7QMpI4Y' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'TDbg6Oqt' \
    --namespace $AB_NAMESPACE \
    --userId 'At3pOh4E' \
    --body '{"endDate": "1986-02-09T00:00:00Z", "nullFieldList": ["BZlArVoN", "Rb3NhX8R", "46Wp5EJv"], "startDate": "1983-06-03T00:00:00Z", "status": "SOLD", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '33gYWjBA' \
    --namespace $AB_NAMESPACE \
    --userId 'Bp8yGYQW' \
    --body '{"options": ["4Lpbsb2f", "XuZJJnYY", "mF3j6EAG"], "requestId": "b2G7bdm0", "useCount": 52}' \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'I2J6L2UK' \
    --namespace $AB_NAMESPACE \
    --userId 'SEM2R0Dj' \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ORNqorTR' \
    --namespace $AB_NAMESPACE \
    --userId 'GuGk3NXM' \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'pWcM9YVy' \
    --namespace $AB_NAMESPACE \
    --userId '4MxM9jvo' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'CNYfzVtg' \
    --namespace $AB_NAMESPACE \
    --userId 'CEQBxqHH' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId '1SBHzx5L' \
    --namespace $AB_NAMESPACE \
    --userId '2MXvBNRg' \
    --body '{"reason": "5PKCYSGa", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'sef3hoHW' \
    --namespace $AB_NAMESPACE \
    --userId 'co66K2i6' \
    --body '{"requestId": "fvBGxszV", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'cyd4OwFw' \
    --body '{"duration": 57, "endDate": "1975-04-30T00:00:00Z", "itemId": "8QwohR6x", "itemSku": "dftyQRbP", "language": "Qfnie41p", "metadata": {"F3WA4nG2": {}, "3QJ9qI2Z": {}, "HbJuBTu7": {}}, "order": {"currency": {"currencyCode": "QSlrAXT6", "currencySymbol": "glzwtJ7C", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "ROJib1Et"}, "ext": {"32QewrZ4": {}, "L91q0VJU": {}, "kgYxr6EU": {}}, "free": false}, "orderNo": "jLZYJlQT", "origin": "Epic", "overrideBundleItemQty": {"vcR7jZ6d": 96, "j5N3rf5p": 80, "yeJm5FCV": 2}, "quantity": 52, "region": "LqxQIzsY", "source": "GIFT", "startDate": "1976-12-19T00:00:00Z", "storeId": "i2fbdOrG"}' \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'fMVsQlK1' \
    --body '{"code": "41i03eNE", "language": "QaE-XsYi", "region": "t8FIlaXT"}' \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Q0cW4EZm' \
    --body '{"metadata": {"TCLW85oJ": {}, "ZQvZcHd1": {}, "hCWGPffd": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "FUoQwOcF", "namespace": "REONcSvh"}, "item": {"itemId": "UoE5pZ0A", "itemSku": "ih3RAulA", "itemType": "V2a4a96r"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "YIt79Re1", "namespace": "tMDHevMj"}, "item": {"itemId": "qRA2IDCB", "itemSku": "A2t1Evut", "itemType": "Dlw9tLwe"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"currencyCode": "elXQCOGO", "namespace": "wdnhcoWQ"}, "item": {"itemId": "xsmvEXQy", "itemSku": "LO63FfF8", "itemType": "eoS9oIDM"}, "quantity": 94, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "qvV9EkkA"}' \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'Xzy65ZlT' \
    --endTime 'uhO8Pit7' \
    --limit '77' \
    --offset '27' \
    --productId 'wi2QkO5W' \
    --startTime '7Pa0VZTm' \
    --status 'FAILED' \
    --type 'PLAYSTATION' \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5qEpOPi7' \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'znbiB179' \
    --endTime 'vVmt0Kaf' \
    --limit '66' \
    --offset '14' \
    --startTime 'iViNRFgU' \
    --status 'PENDING' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'oBFSDNmx' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Dd", "productId": "OUj0IgIW", "region": "TSgD0Uwi", "transactionId": "dxNRWC3N", "type": "GOOGLE"}' \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nfiDbtm5' \
    --itemId 'alcxoHnh' \
    --limit '96' \
    --offset '66' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'UOiRWXsV' \
    --body '{"currencyCode": "7gCHsmGN", "currencyNamespace": "UpUgy8bv", "discountedPrice": 23, "ext": {"1inDY8k7": {}, "KG0T31VQ": {}, "9ew4Y3Dd": {}}, "itemId": "xzMTYM05", "language": "4JPiDwOK", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 59, "quantity": 9, "region": "1fGt8iz1", "returnUrl": "FabqzfpX", "sandbox": true, "sectionId": "HGePuC0f"}' \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'BLKydarh' \
    --itemId 'qxNSaeee' \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '7phy71fz' \
    --userId '2JJtx47T' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'MtaECcfy' \
    --userId 'YZpepyOZ' \
    --body '{"status": "CLOSED", "statusReason": "rtPOFUbk"}' \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'uN7rGYee' \
    --userId 'kepiXt52' \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'oloG6keY' \
    --userId 'sZCguTaR' \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'P0ZzsdVr' \
    --userId 'spf0Fa11' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'R6qqCqZZ' \
    --userId 'OO06x2ls' \
    --body '{"additionalData": {"cardSummary": "KMKt1xWp"}, "authorisedTime": "1982-08-04T00:00:00Z", "chargebackReversedTime": "1996-01-27T00:00:00Z", "chargebackTime": "1981-07-07T00:00:00Z", "chargedTime": "1994-10-30T00:00:00Z", "createdTime": "1978-02-17T00:00:00Z", "currency": {"currencyCode": "9UvFoSaV", "currencySymbol": "KYQA71qy", "currencyType": "REAL", "decimals": 22, "namespace": "NR8ZzFGm"}, "customParameters": {"VjQuGKWI": {}, "uA9WzVj1": {}, "nzjw3kZD": {}}, "extOrderNo": "4Gi7cMtC", "extTxId": "xjbpHRsP", "extUserId": "QFQZ2UZ8", "issuedAt": "1975-10-21T00:00:00Z", "metadata": {"R6uvmEC0": "YNpCN3gZ", "5QLUM2uz": "KSxPEIav", "tfH55En2": "BfUFOwPJ"}, "namespace": "jRWNpjRd", "nonceStr": "ILcnrEA7", "paymentMethod": "u38PnUiZ", "paymentMethodFee": 93, "paymentOrderNo": "ETkVcyEP", "paymentProvider": "PAYPAL", "paymentProviderFee": 35, "paymentStationUrl": "iszP0RCx", "price": 95, "refundedTime": "1995-05-01T00:00:00Z", "salesTax": 3, "sandbox": true, "sku": "IuJDFdKo", "status": "CHARGE_FAILED", "statusReason": "mZaDhoMf", "subscriptionId": "sVl6Qf1t", "subtotalPrice": 92, "targetNamespace": "n3yJcnCW", "targetUserId": "mGZsdgo6", "tax": 56, "totalPrice": 39, "totalTax": 97, "txEndTime": "1996-10-03T00:00:00Z", "type": "4JXVd8P2", "userId": "ikpOAywM", "vat": 17}' \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'ApTkW1sX' \
    --userId 'tJsFNjWV' \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'Bo6a3CW9' \
    --body '{"currencyCode": "eeW1BzZa", "currencyNamespace": "ftwmwLir", "customParameters": {"UbfzKgQ0": {}, "irQVmYsk": {}, "KYa5kAJt": {}}, "description": "vkaYU5MQ", "extOrderNo": "QNRhH60g", "extUserId": "w2bouGhd", "itemType": "EXTENSION", "language": "ORW-Yxck_On", "metadata": {"afniSZFc": "nyauh5Tt", "oDrDQJca": "PPNNEtNx", "zekF02M2": "jrw3sEZy"}, "notifyUrl": "oCoW37mG", "omitNotification": false, "platform": "rcfLqRvx", "price": 50, "recurringPaymentOrderNo": "9ul9mgBk", "region": "KinHrlmt", "returnUrl": "Jwf4O1OH", "sandbox": false, "sku": "Q0Ds1ZxO", "subscriptionId": "QDmY1w3t", "title": "I2cjWTTW"}' \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xrDvNjYl' \
    --userId 'qh1TtJ02' \
    --body '{"description": "TJHUjgMp"}' \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'Boar6NiL' \
    --body '{"code": "b6E8esKk", "orderNo": "nlyrv7Du"}' \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'qwURKCY9' \
    --body '{"meta": {"7R9Bjf2y": {}, "IBmrH43h": {}, "FAyGcQos": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "1sF7Gwhm", "namespace": "mIKv6zvM"}, "entitlement": {"entitlementId": "gnDE2xck"}, "item": {"itemIdentity": "FjMmsbvl", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 75, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "XzdMun7O", "namespace": "zfezpEF5"}, "entitlement": {"entitlementId": "ebwMbXOs"}, "item": {"itemIdentity": "NVqugsyJ", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 93, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "UHNnoSZm", "namespace": "FKWXt59q"}, "entitlement": {"entitlementId": "gN43S2s5"}, "item": {"itemIdentity": "c9tzATIJ", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 8, "type": "ITEM"}], "source": "DLC", "transactionId": "gYV2fdbz"}' \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'bHHHrprd' \
    --body '{"gameSessionId": "z2Ix8QvT", "payload": {"AnFWxogj": {}, "pOFA5sJo": {}, "9bnKCcXX": {}}, "scid": "lfqUyva8", "sessionTemplateName": "y8brnJ1G"}' \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'sa63te0n' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'wmhKSIcu' \
    --limit '87' \
    --offset '16' \
    --sku 'NbSu7Vm8' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId '9gFNMad6' \
    --excludeSystem 'true' \
    --limit '20' \
    --offset '88' \
    --subscriptionId 'tYhar4ZP' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'yGe3ssfw' \
    --body '{"grantDays": 71, "itemId": "pL23ukvI", "language": "EA1iDljD", "reason": "TnxDniLF", "region": "x0Zyxfql", "source": "GI7WHEFw"}' \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GfkpFSfq' \
    --itemId 'dUP7XrAq' \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'DadYo4GH' \
    --userId 'HndPAysq' \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hpDZ9ukc' \
    --userId 'juSdMJ4K' \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sNIAnSbD' \
    --userId 'X8QVqsCA' \
    --force 'false' \
    --body '{"immediate": true, "reason": "ktkvhwIT"}' \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '1Vy3OLUO' \
    --userId 'lS9v1YuT' \
    --body '{"grantDays": 93, "reason": "934Kbd8x"}' \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '87GSA9hN' \
    --userId 'oIv2Ab8E' \
    --excludeFree 'true' \
    --limit '96' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RI1wYLIm' \
    --userId 'X4PIwQKI' \
    --body '{"additionalData": {"cardSummary": "dZ2CwzqJ"}, "authorisedTime": "1990-10-04T00:00:00Z", "chargebackReversedTime": "1973-07-22T00:00:00Z", "chargebackTime": "1987-09-01T00:00:00Z", "chargedTime": "1977-07-15T00:00:00Z", "createdTime": "1971-05-29T00:00:00Z", "currency": {"currencyCode": "9h1RN46Q", "currencySymbol": "e5I0cIla", "currencyType": "REAL", "decimals": 73, "namespace": "nhEt9DlU"}, "customParameters": {"gwBCQNNw": {}, "74AqUnDC": {}, "Jh8T27NP": {}}, "extOrderNo": "Fq1QGNIz", "extTxId": "VubBLUvB", "extUserId": "op1AFDRH", "issuedAt": "1977-02-23T00:00:00Z", "metadata": {"nKwhV67w": "smVv6lBc", "UaJFP1Av": "KMmV5DcI", "OL3OCzaW": "mJ38lsiA"}, "namespace": "ggXtMrgf", "nonceStr": "YDYyRouT", "paymentMethod": "ENElhH7R", "paymentMethodFee": 43, "paymentOrderNo": "a4dULcy9", "paymentProvider": "XSOLLA", "paymentProviderFee": 26, "paymentStationUrl": "HJrIebLD", "price": 85, "refundedTime": "1981-04-08T00:00:00Z", "salesTax": 86, "sandbox": true, "sku": "MbnJlism", "status": "REFUNDING", "statusReason": "TLa8yQ6Q", "subscriptionId": "7WdZ0QAR", "subtotalPrice": 18, "targetNamespace": "2Jiv7SRN", "targetUserId": "F3Zg28fu", "tax": 45, "totalPrice": 14, "totalTax": 90, "txEndTime": "1995-02-23T00:00:00Z", "type": "oB4RAxNr", "userId": "6lkpIoE0", "vat": 6}' \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '6FCL9nhb' \
    --namespace $AB_NAMESPACE \
    --userId 'yX76wXxF' \
    --body '{"count": 49, "orderNo": "L1ZNmAvb"}' \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'aEKOBabn' \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode '7cOew2MP' \
    --namespace $AB_NAMESPACE \
    --userId 'B1U8lmAU' \
    --body '{"allowOverdraft": true, "amount": 20, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"4rtRVYSm": {}, "dg3BUHLW": {}, "YoFLGHP4": {}}, "reason": "s9UozHdy"}' \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '2s2VFysZ' \
    --namespace $AB_NAMESPACE \
    --userId 'wi8pn0YV' \
    --limit '40' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'xiUBX5Ku' \
    --namespace $AB_NAMESPACE \
    --userId 'pRPxjAaq' \
    --body '{"amount": 88, "expireAt": "1991-08-23T00:00:00Z", "metadata": {"tiaOWyHu": {}, "JWQ76BYM": {}, "Tlm6XIpn": {}}, "origin": "System", "reason": "9q04j81X", "source": "IAP_CHARGEBACK_REVERSED"}' \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'YIkJtCcp' \
    --namespace $AB_NAMESPACE \
    --userId 'YeSats2v' \
    --body '{"amount": 31, "debitBalanceSource": "OTHER", "metadata": {"05S75cMe": {}, "s1xIKxXP": {}, "Y9jqIJt0": {}}, "reason": "FWCNqh1Q", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'uw3P0VWH' \
    --namespace $AB_NAMESPACE \
    --userId 'VTtJkSdk' \
    --body '{"amount": 61, "metadata": {"xDSfCtU3": {}, "MTDxWvGe": {}, "JW8uMDcg": {}}, "walletPlatform": "GooglePlay"}' \
    > test.out 2>&1
eval_tap $? 286 'PayWithUserWallet' test.out

#- 287 GetUserWallet
eval_tap 0 287 'GetUserWallet # SKIP deprecated' test.out

#- 288 DebitUserWallet
eval_tap 0 288 'DebitUserWallet # SKIP deprecated' test.out

#- 289 DisableUserWallet
eval_tap 0 289 'DisableUserWallet # SKIP deprecated' test.out

#- 290 EnableUserWallet
eval_tap 0 290 'EnableUserWallet # SKIP deprecated' test.out

#- 291 ListUserWalletTransactions
eval_tap 0 291 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 292 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'hrMq7CK2' \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'PJqJEC5N' \
    --body '{"displayOrder": 82, "localizations": {"65NjoVCZ": {"description": "klOXIFvi", "localExt": {"5sNXVJnT": {}, "uRNpfk6S": {}, "Qk1eQuS0": {}}, "longDescription": "ajD394uK", "title": "MXepI5vX"}, "1JY9BF4J": {"description": "SmSm0hzr", "localExt": {"HP1v2FNp": {}, "jLLsS3Jc": {}, "5wa9pR8W": {}}, "longDescription": "tTvasF0Y", "title": "u1zoVggB"}, "3bjhcTdJ": {"description": "en4mzb00", "localExt": {"smjD3wpg": {}, "PBRPnfwO": {}, "a9kPW76v": {}}, "longDescription": "XD0u8jg5", "title": "RLWik445"}}, "name": "vYzTThzl"}' \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'oTyTQYpi' \
    --storeId 'Cfkl77In' \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'KiXl0eOK' \
    --storeId 'ulmkMQN4' \
    --body '{"displayOrder": 56, "localizations": {"EKlq4Zk8": {"description": "mXqxaike", "localExt": {"YsmMANA5": {}, "2DSoLZPd": {}, "VS5iar47": {}}, "longDescription": "IEtvPLUF", "title": "QxCSF0KW"}, "u73xL1Zg": {"description": "QiKROz9R", "localExt": {"V3sFv94z": {}, "qD4S4XtQ": {}, "RzSUPFgC": {}}, "longDescription": "OznOKxyd", "title": "bDbvSfMT"}, "rm6MKbNs": {"description": "pycxyvdS", "localExt": {"UuVZgpLV": {}, "VNpWSjXb": {}, "T37uUvoo": {}}, "longDescription": "z7d8Le37", "title": "e19iQsLG"}}, "name": "xyjJVxuL"}' \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'ZbUqbw7v' \
    --storeId 'Np4rDtwz' \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 83, "expireAt": "1971-01-07T00:00:00Z", "metadata": {"BN7KTSNo": {}, "SWbX2Z0z": {}, "NWnJNLUa": {}}, "origin": "Nintendo", "reason": "7UF20Zdt", "source": "SELL_BACK"}, "currencyCode": "YAFid822", "userIds": ["JzhyNUl6", "piyRriQk", "NWecnJHc"]}, {"creditRequest": {"amount": 25, "expireAt": "1994-10-15T00:00:00Z", "metadata": {"o7InFgRY": {}, "8wEvQkml": {}, "SXJVfbsl": {}}, "origin": "System", "reason": "iO5I1TS3", "source": "PURCHASE"}, "currencyCode": "POzU2Zl3", "userIds": ["Bel3yF6r", "DOOh8QLl", "Gq7TzBkt"]}, {"creditRequest": {"amount": 9, "expireAt": "1980-07-15T00:00:00Z", "metadata": {"gIggxBRQ": {}, "YtawFA4E": {}, "oxdrHdxQ": {}}, "origin": "Nintendo", "reason": "7IZlBvBF", "source": "DLC"}, "currencyCode": "bCKUlbEd", "userIds": ["OuzjbzIf", "V5oEnHY6", "Cht4zGF9"]}]' \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "hRQHGjd9", "request": {"allowOverdraft": false, "amount": 83, "balanceOrigin": "System", "balanceSource": "IAP_REVOCATION", "metadata": {"kTlQ7b1h": {}, "bKbZRYTI": {}, "Wdn8SVuT": {}}, "reason": "ePFWwctz"}, "userIds": ["JLliumNI", "cFqEnfW6", "0k6CmSQe"]}, {"currencyCode": "GLhRfEWX", "request": {"allowOverdraft": true, "amount": 70, "balanceOrigin": "Xbox", "balanceSource": "EXPIRATION", "metadata": {"Bvjirkh7": {}, "JvYtiscf": {}, "6lHCazFl": {}}, "reason": "AR4281YZ"}, "userIds": ["mYSBAq1B", "Xa53pl9b", "Wuq7e4Jl"]}, {"currencyCode": "FRjIaWet", "request": {"allowOverdraft": true, "amount": 92, "balanceOrigin": "GooglePlay", "balanceSource": "IAP_REVOCATION", "metadata": {"zv8JORHv": {}, "fRRqNYVR": {}, "0iYJie9E": {}}, "reason": "kKXIXX7C"}, "userIds": ["EpkLkfD2", "tvvNBPoL", "O4ApQSWL"]}]' \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'GffKxO06' \
    --end 'WdgssxDW' \
    --start 'lpGqD7u6' \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["c3dadtib", "wC9yJp1x", "7uhy2iZj"], "apiKey": "zMBwundJ", "authoriseAsCapture": true, "blockedPaymentMethods": ["rs31cb74", "J6ebJsbR", "LdWRHVXD"], "clientKey": "Hi4v5iQx", "dropInSettings": "FTkcAWh3", "liveEndpointUrlPrefix": "9uSqcqtU", "merchantAccount": "dG9SfAMK", "notificationHmacKey": "JPJcxvlM", "notificationPassword": "f6GphOHG", "notificationUsername": "YNqDOKtA", "returnUrl": "Vp5glwAr", "settings": "VF2KAsGW"}' \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "YrqfcvJp", "privateKey": "567t6OFc", "publicKey": "9qAMrcsm", "returnUrl": "yxshvl74"}' \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "pSkFXLF5", "secretKey": "Uqjkt7ku"}' \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace '7BUbnp2r' \
    --region 'aUbDNeZQ' \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "blGG20Jc", "clientSecret": "7WbPeYks", "returnUrl": "HSAOqlwO", "webHookId": "ZAu534GX"}' \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["uE88gPiA", "IRvCmXQC", "3le068nu"], "publishableKey": "M8UduwVm", "secretKey": "BGNFwxqq", "webhookSecret": "ounEMuAK"}' \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "MJfXp5Vm", "key": "8HR8GvML", "mchid": "7cNPUuQL", "returnUrl": "CP0QvfI9"}' \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "ETpenprS", "flowCompletionUrl": "QRiz7nXi", "merchantId": 19, "projectId": 63, "projectSecretKey": "XwLi7DxZ"}' \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'UvFjXXeN' \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'jJLBbh2W' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["kMazqAcg", "Q8zu1mYZ", "YojthZvB"], "apiKey": "smBVpXEX", "authoriseAsCapture": false, "blockedPaymentMethods": ["DiX7K9bJ", "ujiw3pDi", "UcKGMiG4"], "clientKey": "oZtyVHzr", "dropInSettings": "acl1jlmA", "liveEndpointUrlPrefix": "cJK2tqlG", "merchantAccount": "49Bx4nnH", "notificationHmacKey": "ft35bdzI", "notificationPassword": "9etIrEjI", "notificationUsername": "Bn9Y2glV", "returnUrl": "g0HSQUDn", "settings": "jJ0K20Ue"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'L9DB8hsk' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'c2tRb6w1' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "feRCURbG", "privateKey": "HMJy3d1i", "publicKey": "tczFVImV", "returnUrl": "3zyDgTvA"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'korrSacE' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'mox4Yzmn' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "JT5JJTBj", "secretKey": "VM1JORK5"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'FgriwO5c' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'CkgY6ylw' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "EUPyF1p5", "clientSecret": "AVk24XDP", "returnUrl": "krnzJKsc", "webHookId": "roE8JQrn"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'c32iHTOJ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'kCmBpsuf' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["S5GO6t0h", "3t18Y7jz", "GJyTUPbq"], "publishableKey": "8gKQ9E5F", "secretKey": "ws5EWZkT", "webhookSecret": "Y7SkiNX9"}' \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'yob0vg5q' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'pDSHNc5v' \
    --validate 'false' \
    --body '{"appId": "AVbixAa1", "key": "Q96fXYI5", "mchid": "AuCUH1h7", "returnUrl": "BOhbZbod"}' \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'bJjySKTt' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'CoB7sw2u' \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '2Dfai3IJ' \
    --validate 'true' \
    --body '{"apiKey": "BAztGSp0", "flowCompletionUrl": "cNvAPznY", "merchantId": 13, "projectId": 13, "projectSecretKey": "wOCHWCsO"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'XLqdRYbQ' \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'eZG2dHaC' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '38' \
    --namespace 'v7roxOxk' \
    --offset '78' \
    --region 'rWaK9nH1' \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "JmO9IZJK", "region": "bE9pMup1", "sandboxTaxJarApiToken": "cAycfPe8", "specials": ["CHECKOUT", "ALIPAY", "ALIPAY"], "taxJarApiToken": "WyENhwpE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'VirAxrVq' \
    --region 'yHM72bZh' \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'jjL9OLpM' \
    --body '{"aggregate": "XSOLLA", "namespace": "w8XlONL1", "region": "abwTLj64", "sandboxTaxJarApiToken": "5nEshyVt", "specials": ["WALLET", "STRIPE", "PAYPAL"], "taxJarApiToken": "PHjjko23", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'm8XQIBnG' \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "DjlGK87R", "taxJarApiToken": "8qA6pBH0", "taxJarEnabled": true, "taxJarProductCodesMapping": {"r7UGjYC4": "vyvcewNR", "dMDprHHO": "zrRJr9xo", "kTqPa3wu": "MPW7TLGD"}}' \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'ONgZpKh8' \
    --end 'LyTnclH5' \
    --start 'cv0AlCFa' \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '6Yj1RQiB' \
    --storeId 'JCh0mqMP' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'OFnjfLjB' \
    --storeId 'Ek5EfrtB' \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '1sx8uFfL' \
    --namespace $AB_NAMESPACE \
    --language 'nvKs5aH4' \
    --storeId 'lVYAR0Bg' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'FrivWsDO' \
    --namespace $AB_NAMESPACE \
    --language 'uZcJ3QvX' \
    --storeId 'KN1PkrDl' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'yjNLyq8T' \
    --namespace $AB_NAMESPACE \
    --language 'xUsqakjq' \
    --storeId 'Z8bvzUhT' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetDescendantCategories' test.out

#- 342 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 342 'PublicListCurrencies' test.out

#- 343 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
    > test.out 2>&1
eval_tap $? 343 'GeDLCDurableRewardShortMap' test.out

#- 344 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 344 'GetIAPItemMapping' test.out

#- 345 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 't3sDk5od' \
    --region 'ROl1f7GR' \
    --storeId '0mE2rCJG' \
    --appId '2Un1F53z' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --baseAppId 'HlzXGAUt' \
    --categoryPath 'oxPrGeBD' \
    --features 'idWipcvz' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --language '1SPwVP3R' \
    --limit '66' \
    --offset '32' \
    --region 'C2E84tGC' \
    --sortBy '["name:desc", "name", "updatedAt:desc"]' \
    --storeId 'FXuIfLov' \
    --tags 'FUSo1bR4' \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'jLEUeBTU' \
    --region 'nKkM7D8J' \
    --storeId '04gh8trA' \
    --sku '6riSrxu1' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'NpLF66uw' \
    --storeId 'J4tJGkiF' \
    --itemIds 'jNtd5lCs' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'pbJhS9xs' \
    --region 'qihoynzt' \
    --storeId 'rBKdU7RT' \
    --itemIds 'G6zeJ8uf' \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Ls4N95p9", "fQOeZGpA", "18JLtY2m"]}' \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'BUNDLE' \
    --limit '90' \
    --offset '55' \
    --region 'az92A6zM' \
    --storeId 'rfETJEmR' \
    --keyword 'kz9LysEK' \
    --language 'ImGV3I4c' \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'D0VVYeqJ' \
    --namespace $AB_NAMESPACE \
    --language '4hFl2hjY' \
    --region 'c5CVmUDZ' \
    --storeId 'CxO9EWnS' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '5M3w3jqX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'fB0h9Zo4' \
    --namespace $AB_NAMESPACE \
    --language 'vy6XrX7a' \
    --populateBundle 'false' \
    --region 'GGhqTn0V' \
    --storeId 'udvkLpbd' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "KbGAsCPz", "paymentProvider": "PAYPAL", "returnUrl": "rb9aQ2q8", "ui": "BBh4y1cS", "zipCode": "rKqCwxlu"}' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vHrXfpCw' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6PYxGMNx' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Wyb171N7' \
    --paymentProvider 'WXPAY' \
    --zipCode 'UY3aCu63' \
    --body '{"token": "McnPUagU"}' \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cMOXwclS' \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WXPAY' \
    --region 'UFcy6yyH' \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code '2JNwa3xA' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'FUhD3Oo7' \
    --foreinginvoice 'EKLvOtiD' \
    --invoiceId 'UbaByhhN' \
    --payload 'jTqNx6hS' \
    --redirectResult 'VjSo6IZz' \
    --resultCode 'pfxCGirT' \
    --sessionId 'O4WfbkIH' \
    --status 'B3ExOU8g' \
    --token 'DcwpGGqt' \
    --type 'pHyDa9NF' \
    --userId 'riEBqfBx' \
    --orderNo 'DcAXA6Uc' \
    --paymentOrderNo 'mR1Fzk1k' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'tMbzTdfF' \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '542cQ74m' \
    --paymentOrderNo '2he7usQA' \
    --paymentProvider 'CHECKOUT' \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '4r7HWcvJ' \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'L0IQEOT2' \
    --limit '76' \
    --offset '65' \
    --sortBy '["rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'PaCJctFe' \
    > test.out 2>&1
eval_tap $? 367 'GetReward1' test.out

#- 368 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicListStores' test.out

#- 369 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["9LOBEim5", "2aC25ASZ", "bjgOAF9a"]' \
    --itemIds '["O8S1KpaM", "JQqIaPPy", "isl78TRz"]' \
    --skus '["eDPqkZJi", "si6jehAh", "u1Hh3Q2h"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'S0pimXqS' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'VPPsQOxJ' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'TKHoAz0H' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["IJUnHQrr", "aRMHBDqs", "dnHdcHSQ"]' \
    --itemIds '["tQ774wYZ", "hxpB7zBj", "Ck5YlnkQ"]' \
    --skus '["uvD2KhEI", "dlwFodLI", "3eaIGL8h"]' \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "JeFSHHKK", "language": "DC", "region": "af8B5wpm"}' \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'ZDf2I1C2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'CsUpT8K4' \
    --body '{"epicGamesJwtToken": "s8DreyG7"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'legUpXZB' \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'T8G0V7rp' \
    --body '{"serviceLabel": 87}' \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'QLAd363Y' \
    --body '{"serviceLabels": [10, 36, 95]}' \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'v6rW3oAX' \
    --body '{"appId": "w9RiHVs6", "steamId": "MnjssykT"}' \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Qb0oX8yq' \
    --body '{"xstsToken": "fv4Q0coM"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'c70VHLI1' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '74cft70K' \
    --features '["HHmcS2gs", "IV0bREij", "ZRBXxAh5"]' \
    --itemId '["8wP5DNZV", "qJKa3yks", "xxhSOljT"]' \
    --limit '79' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'vWaNeNfw' \
    --appId 'r3XdObHS' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'pDPPICpE' \
    --limit '16' \
    --offset '98' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WCC3Kvje' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'pl2erweu' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'HEVd9Yrs' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'IjUMkQgV' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'WhveX0v4' \
    --appIds '["NMKxZWwu", "alR69KAL", "NSNoJNAE"]' \
    --itemIds '["gPidsGfG", "TMLmeDWJ", "UWvvEHDB"]' \
    --skus '["uCAO4TUJ", "TQDlpAgR", "USAcmVij"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'pCGYEVAd' \
    --appId 'rMwgngva' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'UrxVEdxT' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'XHo468cB' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'BjiY6WFh' \
    --ids '["SEmpCw7a", "cmuPrFDp", "zwpDhBDG"]' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '3rVRUUSo' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'ZD0GEVvE' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'NvzzlVFN' \
    --namespace $AB_NAMESPACE \
    --userId 'StjkjjzM' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'XXgog1qh' \
    --namespace $AB_NAMESPACE \
    --userId 'Sfj7VPMs' \
    --body '{"options": ["fi5mlEuh", "VE2ibOu1", "zviLv7go"], "requestId": "J5dlv3mp", "useCount": 7}' \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'XxUxTiDi' \
    --namespace $AB_NAMESPACE \
    --userId 'A0smMGCV' \
    --body '{"requestId": "y3Eui8Fz", "useCount": 14}' \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'FVHDrfum' \
    --body '{"code": "qaDBVsTa", "language": "yF", "region": "WvWtAjMf"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kEeBSdX8' \
    --body '{"excludeOldTransactions": true, "language": "Dj_075", "productId": "vygjhWha", "receiptData": "m4QejiE2", "region": "qLRSVscz", "transactionId": "A2t6EE4k"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '57Y3L8yp' \
    --body '{"epicGamesJwtToken": "vtV62Yoc"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'XqMYECoU' \
    --body '{"autoAck": false, "language": "Gck", "orderId": "W73L5Bym", "packageName": "VK2gwNrH", "productId": "m589YkSn", "purchaseTime": 22, "purchaseToken": "v9cxsrPP", "region": "mPWKfAxT"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '9goqyTEP' \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'c5XoSBS6' \
    --body '{"currencyCode": "mnGxzemy", "price": 0.514292261739552, "productId": "UJKckckW", "serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'U2WclILA' \
    --body '{"currencyCode": "aHGlUoV1", "price": 0.7164707120227322, "productId": "wATFjqzz", "serviceLabels": [97, 26, 55]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'CVJgtFNt' \
    --body '{"appId": "leGQMXgW", "currencyCode": "Sgkop8SX", "language": "ucW", "price": 0.7814677665582669, "productId": "TgOw9auI", "region": "KAb1k3Qm", "steamId": "o7SEDjg1"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '5wYDIHqz' \
    --body '{"gameId": "Fe0ltbyo", "language": "Zd-gF", "region": "dNtTeN5i"}' \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'RT8vP5y6' \
    --body '{"currencyCode": "sRBFm8nJ", "price": 0.4592605106323432, "productId": "bQzBDEUH", "xstsToken": "JzwDK1BZ"}' \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '5CseoS8f' \
    --itemId 'KbqDTf76' \
    --limit '30' \
    --offset '21' \
    --status 'FULFILL_FAILED' \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '6GmR7MeP' \
    --body '{"currencyCode": "g78JbXzV", "discountedPrice": 79, "ext": {"5rLqEU6X": {}, "4Zph5ajS": {}, "KN4jZ7Tn": {}}, "itemId": "T0jmVRft", "language": "hoq_vd", "price": 58, "quantity": 16, "region": "dqFvgsYz", "returnUrl": "b4oBW6lj", "sectionId": "knBYdYUO"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'RycPsevV' \
    --userId 'HroalXfH' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qfK7byKu' \
    --userId 'Wy9tUtPW' \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'uKOTxjAp' \
    --userId 'c6OFSLuB' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'MCIVA7qR' \
    --userId 'db71ITGB' \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'mntrKQvG' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'pCg5vl7T' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId 'wpAwA2Nc' \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'N2DGZf2T' \
    --language 'Hl1jKGWM' \
    --region 'wekos40e' \
    --storeId 'If2J3egI' \
    --viewId 'MSiyxLmB' \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'Xu4qKU2I' \
    --chargeStatus 'CHARGED' \
    --itemId 'hZ5P2Xta' \
    --limit '9' \
    --offset '11' \
    --sku 'gItvcbjQ' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'yH8lvFNh' \
    --body '{"currencyCode": "F30clMUJ", "itemId": "eKOdXU02", "language": "XJIL_zVle-080", "region": "dfpptelc", "returnUrl": "DomehuC0", "source": "oxXwaQd9"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'udAp27bR' \
    --itemId 'l4Uq20pc' \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'sGLV6BSg' \
    --userId '8WlqXsAK' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Zk002qSl' \
    --userId 'lyK4BMvy' \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yuzgeQ0o' \
    --userId 'up6AdhYq' \
    --body '{"immediate": true, "reason": "GPaGGQOE"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VwFqweke' \
    --userId 'PRSs9m7T' \
    --excludeFree 'false' \
    --limit '8' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'yQh16mbx' \
    --language 'kTKh4a64' \
    --storeId 'zRxQmJxd' \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '205KNICQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Gzbdfkq7' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '5mfH9ngG' \
    --namespace $AB_NAMESPACE \
    --userId 'lb3diXyW' \
    --limit '10' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'iF7BumPs' \
    --baseAppId '76FJbNcs' \
    --categoryPath 'q0PBbKND' \
    --features 'Ed1LXEiV' \
    --includeSubCategoryItem 'false' \
    --itemName 'y0cvX2Dw' \
    --itemStatus 'INACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '26' \
    --offset '69' \
    --region 'nsNY8eMR' \
    --sectionExclusive 'false' \
    --sortBy '["displayOrder:desc", "createdAt:desc", "name:desc"]' \
    --storeId 'dONAs9z8' \
    --tags '49l1qNZu' \
    --targetNamespace 'tmN99GIr' \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '6BQZ96Jj' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'GLbOAGen' \
    --body '{"itemIds": ["y7S0r6lE", "xlQpikjn", "0Sa7Md5v"]}' \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'l2cmyKnh' \
    --body '{"metadata": {"QNP7YbdP": {}, "g8oL00Jp": {}, "Lj9D16OL": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "i22fBTNF", "namespace": "yoWm8Yx6"}, "item": {"itemId": "1IDNhLYH", "itemSku": "brQ0iB2w", "itemType": "2cjo7eat"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "JTVZoV66", "namespace": "vQzLSGSR"}, "item": {"itemId": "FUBBDTiw", "itemSku": "bke6EfMQ", "itemType": "A3NVPxVW"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "BzaI3CGP", "namespace": "NAe1OKRq"}, "item": {"itemId": "nQBULOS0", "itemSku": "UFhsSmh7", "itemType": "iZuV91Ej"}, "quantity": 61, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "khwPkV7m"}' \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE