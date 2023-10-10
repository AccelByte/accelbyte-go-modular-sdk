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
echo "1..422"

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
    --id '0JpOpo2A' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'MrQuvUw9' \
    --body '{"grantDays": "BHNVyrKE"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'DqEHYUWS' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'quIo5rGv' \
    --body '{"grantDays": "MYFLj5t7"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "ohjjzQpf", "dryRun": true, "fulfillmentUrl": "oIkPkRjO", "itemType": "COINS", "purchaseConditionUrl": "KphtnsUd"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'pmMlPTFa' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Yl7ZlcFl' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'oB307C0h' \
    --body '{"clazz": "rOwS605Y", "dryRun": true, "fulfillmentUrl": "tQynCvFA", "purchaseConditionUrl": "Wzcb4zAE"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'Ot2vA2V5' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'LY8sNOOT' \
    --offset '76' \
    --tag 'bvYdlx2a' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FCg1erHN", "items": [{"extraSubscriptionDays": 49, "itemId": "1rIMudwG", "itemName": "GhysX52d", "quantity": 8}, {"extraSubscriptionDays": 52, "itemId": "CLLxhUs3", "itemName": "R6bV4Huv", "quantity": 86}, {"extraSubscriptionDays": 98, "itemId": "VO1c7m2h", "itemName": "7N8zLJXB", "quantity": 63}], "maxRedeemCountPerCampaignPerUser": 45, "maxRedeemCountPerCode": 44, "maxRedeemCountPerCodePerUser": 53, "maxSaleCount": 42, "name": "NhcIxPtS", "redeemEnd": "1983-02-25T00:00:00Z", "redeemStart": "1977-08-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["vKLMWc2Z", "7xld8KmU", "Expqimtb"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'FNULzyAe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId '0ulte6gS' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "jkysyvGZ", "items": [{"extraSubscriptionDays": 88, "itemId": "9s3llmXX", "itemName": "okFFXOwj", "quantity": 57}, {"extraSubscriptionDays": 14, "itemId": "QypiPYQm", "itemName": "TwH42KJu", "quantity": 75}, {"extraSubscriptionDays": 94, "itemId": "HnHGne2G", "itemName": "km1mlaSt", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 96, "maxRedeemCountPerCodePerUser": 58, "maxSaleCount": 62, "name": "vxTEI5qy", "redeemEnd": "1974-04-21T00:00:00Z", "redeemStart": "1971-06-27T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["kf20scLq", "U8xAxGWA", "6KsRCjmW"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'u6uSd17l' \
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
    --body '{"appConfig": {"appName": "2ulFdAI8"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "N5z8faej"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "yT7P2MfS"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "gHTfJ9pc"}, "extendType": "CUSTOM"}' \
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
    --storeId 'uMnUxHWJ' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'PVdyP5kP' \
    --body '{"categoryPath": "rfW4sO5s", "localizationDisplayNames": {"ZaGodhFV": "IghPF8W3", "yG7JlAtK": "AyUoLSOF", "VAqJtCQq": "QtKvdrpU"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'IQKdAlyY' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'OSa1CE0D' \
    --namespace $AB_NAMESPACE \
    --storeId 'nVYqP2Cr' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'JcE3ncZN' \
    --namespace $AB_NAMESPACE \
    --storeId 'Eb0g2VPq' \
    --body '{"localizationDisplayNames": {"pc5X1C4n": "mUawtXOU", "KIvAO1Ql": "I7If9M7x", "nhtVdQ84": "GWGZoAaw"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'G73c23Bc' \
    --namespace $AB_NAMESPACE \
    --storeId 'pe4lPznU' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 's5xab2ud' \
    --namespace $AB_NAMESPACE \
    --storeId 'XTFDbZsJ' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'SKo26oRQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z5AxDEqL' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Yn9K4BpT' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '56' \
    --code 'JmC3CMiY' \
    --limit '27' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'fl3BTgiL' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 11}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId '6iEhGUev' \
    --namespace $AB_NAMESPACE \
    --batchNo '20' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'RXj1iybI' \
    --namespace $AB_NAMESPACE \
    --batchNo '83' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'pGyZO92W' \
    --namespace $AB_NAMESPACE \
    --batchNo '55' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'fYMtTVXT' \
    --namespace $AB_NAMESPACE \
    --code 'IwUuqNv6' \
    --limit '20' \
    --offset '51' \
    --userId 'qfhsITyA' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code '9ZktbooO' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '2eQfTUQy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'JRM3kffd' \
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
    --body '{"currencyCode": "r7LxJSgp", "currencySymbol": "5eKw2RX8", "currencyType": "VIRTUAL", "decimals": 96, "localizationDescriptions": {"oTUrwPPx": "YwFliz9X", "hdnpAtYj": "V0gqzalU", "cPKrnl6m": "kujrrL0G"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '8VMJhqYM' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"ltrcF4a4": "DkN0af2E", "69RxpeTW": "Jf2y80Z7", "62aeW7B4": "BhY6unQ0"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'mTTaQnKu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '7Lqvq2Zm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'vZbeCy4T' \
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
    --body '{"data": [{"id": "UyM70Z8s", "rewards": [{"currency": {"currencyCode": "zDpC5zHp", "namespace": "NgvwtL4F"}, "item": {"itemId": "lCcw490t", "itemSku": "Gnube41n", "itemType": "3hrDAnLy"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "ZsTwolaz", "namespace": "F2JZkbuR"}, "item": {"itemId": "nWGhoCUP", "itemSku": "GeBFM0XV", "itemType": "fpyCLPbh"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "cwR6gaeE", "namespace": "dtPy3ags"}, "item": {"itemId": "pOWOPnM5", "itemSku": "JFKMHgFq", "itemType": "IejyZkLp"}, "quantity": 22, "type": "ITEM"}]}, {"id": "1EEfUiL3", "rewards": [{"currency": {"currencyCode": "LivHv6ee", "namespace": "nfZ5zrve"}, "item": {"itemId": "AoWTk02s", "itemSku": "bZupW0eT", "itemType": "2gcqDnQH"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "gqdnFj7C", "namespace": "xd0XxslP"}, "item": {"itemId": "hoe9cNOA", "itemSku": "WRorVbvh", "itemType": "71VtrH6f"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "LQBjLFwY", "namespace": "WLJxkLvs"}, "item": {"itemId": "lN5lH9xJ", "itemSku": "0C4jVbHo", "itemType": "Gb9LQ8OV"}, "quantity": 65, "type": "CURRENCY"}]}, {"id": "T1rVk2OO", "rewards": [{"currency": {"currencyCode": "fGwtq5Nq", "namespace": "qGVJnEH8"}, "item": {"itemId": "bshFgwEa", "itemSku": "lIefPDe5", "itemType": "0ryIHqWr"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "s0gzfz1U", "namespace": "bqKK4P6a"}, "item": {"itemId": "BDC2ApKz", "itemSku": "vYSHBiaR", "itemType": "xWhGlj4v"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "RQYrk00u", "namespace": "zXrFBsV2"}, "item": {"itemId": "T80VK7HX", "itemSku": "zwYxNmAZ", "itemType": "FXWZrCUX"}, "quantity": 94, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"A4khAIxD": "Cih9yEu4", "sBJmDli8": "KdY2Mcjm", "Vd90akTY": "wl85mGg8"}}, {"platform": "PSN", "platformDlcIdMap": {"Y8erKRbI": "xyv31tRX", "AxL9YrFv": "vowtii7y", "YPtZQian": "a8zo2UGD"}}, {"platform": "PSN", "platformDlcIdMap": {"jgggM2TM": "Tn6iEJlU", "71yItOxf": "bLZI2fAU", "SurAcPhF": "06hRLeZ8"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'bLj0rfn7' \
    --itemId '["Q2PBxmt6", "647fKF7m", "31gHAMGN"]' \
    --limit '42' \
    --offset '4' \
    --userId 'duGtasvs' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["7F4bdk5E", "GvOCJdBn", "ZDNhvtBz"]' \
    --limit '33' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1972-12-09T00:00:00Z", "grantedCode": "zWjXmUjg", "itemId": "ah88rbnw", "itemNamespace": "vdtkmMN1", "language": "HVR-iZBh", "quantity": 15, "region": "3OZDpLMK", "source": "ACHIEVEMENT", "startDate": "1976-06-25T00:00:00Z", "storeId": "LZk3ZdnY"}, {"endDate": "1982-05-21T00:00:00Z", "grantedCode": "NIju40UN", "itemId": "D4lX6VBg", "itemNamespace": "GagxnGpq", "language": "sf-801", "quantity": 35, "region": "rRBf7gns", "source": "OTHER", "startDate": "1977-11-12T00:00:00Z", "storeId": "bSMSdhT1"}, {"endDate": "1994-05-30T00:00:00Z", "grantedCode": "HVcP0A82", "itemId": "Ua9emRGZ", "itemNamespace": "XZ5mpnPc", "language": "udII-qc", "quantity": 3, "region": "1wh4Mtzv", "source": "REDEEM_CODE", "startDate": "1990-08-11T00:00:00Z", "storeId": "p8BGfgDs"}], "userIds": ["719VllNn", "jPc88og9", "U6zzHR3v"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["6l3nv8cX", "1M5WMfiO", "2kYlcZnx"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '8kzuq2RU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '96' \
    --status 'FAIL' \
    --userId 'NYvijnyV' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'FFkglBy3' \
    --eventType 'REFUND' \
    --externalOrderId 'dRcVO9rp' \
    --limit '1' \
    --offset '93' \
    --startTime 'pQVospU8' \
    --status 'SUCCESS' \
    --userId 'XGKIk0AW' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "3cNX3HBU", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 64, "clientTransactionId": "H5ir2H5W"}, {"amountConsumed": 90, "clientTransactionId": "ULXjlRZI"}, {"amountConsumed": 68, "clientTransactionId": "GGkicF8v"}], "entitlementId": "FZJV25mG", "usageCount": 84}, {"clientTransaction": [{"amountConsumed": 48, "clientTransactionId": "aX3eRJMJ"}, {"amountConsumed": 21, "clientTransactionId": "Z5a14rmW"}, {"amountConsumed": 97, "clientTransactionId": "bWI8MSrP"}], "entitlementId": "X96bCA5Y", "usageCount": 38}, {"clientTransaction": [{"amountConsumed": 37, "clientTransactionId": "rLPEbvh1"}, {"amountConsumed": 3, "clientTransactionId": "nGmwJqII"}, {"amountConsumed": 26, "clientTransactionId": "gFGXJCVY"}], "entitlementId": "lZ26zRTc", "usageCount": 25}], "purpose": "deCvXzlU"}, "originalTitleName": "s9DKupI5", "paymentProductSKU": "nLPZxWoW", "purchaseDate": "dwM9av0m", "sourceOrderItemId": "iPvEWnCs", "titleName": "xRxMT4Re"}, "eventDomain": "W7u9GhMW", "eventSource": "W9tYrqgE", "eventType": "NhEocwRq", "eventVersion": 10, "id": "X9Gejz0i", "timestamp": "A0ofpXRU"}' \
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
    --body '{"bundleId": "3tbi8XmA", "password": "ieSUhXV9"}' \
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
    --body '{"sandboxId": "cPUGJEz4"}' \
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
    --body '{"applicationName": "wjYqDOfX", "serviceAccountId": "sIOvhXhq"}' \
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
    --body '{"data": [{"itemIdentity": "XLL6fSbt", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"BS7ltuun": "AashOB2D", "mfZQzh4L": "obb9R18T", "WYmvXKBQ": "H3zmj5on"}}, {"itemIdentity": "gPNmpFPE", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"qoIu1d19": "tVJ6KyUE", "rlJIimeq": "8BPLCX2z", "dba2aqgZ": "HYd4j0U0"}}, {"itemIdentity": "14geThtV", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"R5TDBi6T": "PrS9xXFd", "91GWDOve": "wLRudz9a", "Yqqs9fkl": "5cXG6R62"}}]}' \
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
    --body '{"appId": "cyWuiLNr", "appSecret": "kTnqxjt6"}' \
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
    --body '{"backOfficeServerClientId": "zF2LQeOQ", "backOfficeServerClientSecret": "ztrHWHvL", "enableStreamJob": false, "environment": "bYeFgJ03", "streamName": "FYtoPHUw", "streamPartnerName": "df1zwooS"}' \
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
    --body '{"backOfficeServerClientId": "oiORz9LS", "backOfficeServerClientSecret": "Mc3mdpFb", "enableStreamJob": true, "environment": "i0TJ9xAz", "streamName": "9ndyWfKV", "streamPartnerName": "K5eBOPO9"}' \
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
    --body '{"appId": "7GjYJNZz", "publisherAuthenticationKey": "SXRP5bJz"}' \
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
    --body '{"clientId": "2wZ9g144", "clientSecret": "YcnobT9R", "organizationId": "LoDDq36p"}' \
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
    --body '{"relyingPartyCert": "4n8YQJom"}' \
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
    --password 'PFOrdzSH' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'kIeywSzg' \
    --itemId '5YD0HKE7' \
    --itemType 'EXTENSION' \
    --endTime 'X8ibwvne' \
    --startTime 'KyY1HRR2' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'SgymKJLo' \
    --itemId 'IPSLenGv' \
    --itemType 'CODE' \
    --endTime 'LckMeIAK' \
    --startTime 'vuBJLp5B' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'FZCHj1hc' \
    --body '{"categoryPath": "RlTqgKu4", "targetItemId": "U44KrnrD", "targetNamespace": "1BQnKEDU"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'xTvRO2dc' \
    --body '{"appId": "cD9BU5xN", "appType": "DLC", "baseAppId": "SYOL1Tlg", "boothName": "xHqbOj5A", "categoryPath": "7kLlueuj", "clazz": "CMfFN4ez", "displayOrder": 60, "entitlementType": "DURABLE", "ext": {"dVOLjSfO": {}, "NEcDpAJO": {}, "Fc8GhszQ": {}}, "features": ["8JVJdeME", "eWW1c1km", "HYsplcK8"], "flexible": true, "images": [{"as": "XBsmQwcc", "caption": "VqCiHHYl", "height": 92, "imageUrl": "7LAx4tw8", "smallImageUrl": "wS3upUlO", "width": 57}, {"as": "SRZkx1Gq", "caption": "No8V5i4y", "height": 29, "imageUrl": "8RFYeYXW", "smallImageUrl": "foP2roAU", "width": 40}, {"as": "TouQ2E3m", "caption": "Zt9H1mcY", "height": 19, "imageUrl": "sVNjCaZq", "smallImageUrl": "67Qu4vJN", "width": 37}], "itemIds": ["ZlMQtZzV", "tM9NDDH7", "V7fZesoW"], "itemQty": {"wgTGAjsU": 4, "TSn04Gwl": 17, "NNNgrapZ": 55}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"zmlgJTyG": {"description": "KhVnFnvQ", "localExt": {"9jzkQnrj": {}, "B11PCnYK": {}, "vSF3AQ6v": {}}, "longDescription": "ldQU9GbZ", "title": "O0rYUraS"}, "brwKdqGC": {"description": "P3f5HRnJ", "localExt": {"eQJOuM7P": {}, "PScz0PCf": {}, "CtKI3XwI": {}}, "longDescription": "WFZqW5Ko", "title": "PR5EvKWb"}, "NvTP6WDB": {"description": "0wHfoBR0", "localExt": {"LzCPWMx5": {}, "olwhIilw": {}, "mibDsRdO": {}}, "longDescription": "jCtTgIhH", "title": "ge8HAxki"}}, "lootBoxConfig": {"rewardCount": 69, "rewards": [{"lootBoxItems": [{"count": 10, "duration": 37, "endDate": "1978-04-16T00:00:00Z", "itemId": "N06aypi9", "itemSku": "3P6dsq6h", "itemType": "UkOlJ9Xl"}, {"count": 48, "duration": 31, "endDate": "1996-06-02T00:00:00Z", "itemId": "AKl5HhQk", "itemSku": "lNu6bgEc", "itemType": "YftnAEzQ"}, {"count": 26, "duration": 39, "endDate": "1998-06-29T00:00:00Z", "itemId": "EOyJC2Ac", "itemSku": "AvDnC846", "itemType": "4FHN9Red"}], "name": "yfdhYYvn", "odds": 0.25303654640566176, "type": "REWARD_GROUP", "weight": 29}, {"lootBoxItems": [{"count": 19, "duration": 8, "endDate": "1985-07-28T00:00:00Z", "itemId": "SKT8MzKG", "itemSku": "bdqKgd5d", "itemType": "7AsxofwN"}, {"count": 28, "duration": 64, "endDate": "1978-06-21T00:00:00Z", "itemId": "lgr6YLuc", "itemSku": "QZ55oO6v", "itemType": "haR9znvL"}, {"count": 59, "duration": 15, "endDate": "1999-01-24T00:00:00Z", "itemId": "BTl69YZg", "itemSku": "d0905xuA", "itemType": "YDFGxYDf"}], "name": "s1d9wCxV", "odds": 0.4283373036095569, "type": "REWARD_GROUP", "weight": 83}, {"lootBoxItems": [{"count": 55, "duration": 68, "endDate": "1995-09-06T00:00:00Z", "itemId": "fTD3LPIS", "itemSku": "kw1c85Kn", "itemType": "1Bo4Gjo7"}, {"count": 5, "duration": 94, "endDate": "1989-09-08T00:00:00Z", "itemId": "noLJry3D", "itemSku": "DG2IRlyO", "itemType": "yGAmn8rm"}, {"count": 23, "duration": 14, "endDate": "1983-10-04T00:00:00Z", "itemId": "UjXzeUVh", "itemSku": "596ZssfN", "itemType": "EBCMQTYI"}], "name": "UKNwP1N0", "odds": 0.14972229400740977, "type": "REWARD", "weight": 29}], "rollFunction": "DEFAULT"}, "maxCount": 90, "maxCountPerUser": 15, "name": "edRxUG3n", "optionBoxConfig": {"boxItems": [{"count": 82, "duration": 26, "endDate": "1994-07-25T00:00:00Z", "itemId": "fWq9G2Ip", "itemSku": "v0VHJAW3", "itemType": "vbDqNJxL"}, {"count": 26, "duration": 75, "endDate": "1984-11-19T00:00:00Z", "itemId": "w8j2IQnJ", "itemSku": "BHK48B5P", "itemType": "08KV8vev"}, {"count": 94, "duration": 69, "endDate": "1978-02-17T00:00:00Z", "itemId": "K9S3Nqzq", "itemSku": "z88ZVgAz", "itemType": "SZJAJzVz"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 47, "fixedTrialCycles": 89, "graceDays": 64}, "regionData": {"JfJdrtXV": [{"currencyCode": "MW2evgOh", "currencyNamespace": "TEATWwlr", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1995-01-21T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1984-05-23T00:00:00Z", "expireAt": "1992-06-27T00:00:00Z", "price": 4, "purchaseAt": "1975-05-23T00:00:00Z", "trialPrice": 42}, {"currencyCode": "ZaTFcZ0X", "currencyNamespace": "XIEg4guj", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1975-01-20T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1978-09-09T00:00:00Z", "expireAt": "1990-07-25T00:00:00Z", "price": 66, "purchaseAt": "1981-09-23T00:00:00Z", "trialPrice": 2}, {"currencyCode": "vIizE21k", "currencyNamespace": "k9aRnVd2", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1982-04-14T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1999-03-04T00:00:00Z", "expireAt": "1983-10-14T00:00:00Z", "price": 61, "purchaseAt": "1971-02-20T00:00:00Z", "trialPrice": 60}], "wp2ym14P": [{"currencyCode": "wWEmPZVF", "currencyNamespace": "zpokjuvp", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1991-02-05T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1973-05-24T00:00:00Z", "expireAt": "1994-08-20T00:00:00Z", "price": 94, "purchaseAt": "1983-08-06T00:00:00Z", "trialPrice": 26}, {"currencyCode": "OgDVLssu", "currencyNamespace": "kWr0iiL0", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1997-07-20T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1997-12-07T00:00:00Z", "expireAt": "1985-12-23T00:00:00Z", "price": 23, "purchaseAt": "1985-10-22T00:00:00Z", "trialPrice": 24}, {"currencyCode": "8Iokgj0b", "currencyNamespace": "0DfMoLvY", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1976-12-02T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1983-04-28T00:00:00Z", "expireAt": "1984-02-01T00:00:00Z", "price": 3, "purchaseAt": "1985-09-05T00:00:00Z", "trialPrice": 31}], "eDNeciLE": [{"currencyCode": "0KJJPTJN", "currencyNamespace": "ONEmmpsb", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1971-07-27T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1989-09-02T00:00:00Z", "expireAt": "1998-08-01T00:00:00Z", "price": 97, "purchaseAt": "1973-05-13T00:00:00Z", "trialPrice": 70}, {"currencyCode": "wp7jzuhB", "currencyNamespace": "5mGGfISW", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1993-01-17T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1987-08-10T00:00:00Z", "expireAt": "1994-10-01T00:00:00Z", "price": 91, "purchaseAt": "1997-10-01T00:00:00Z", "trialPrice": 82}, {"currencyCode": "E3E1JLJs", "currencyNamespace": "hxSsThXy", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1986-10-03T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1980-05-29T00:00:00Z", "expireAt": "1978-10-26T00:00:00Z", "price": 85, "purchaseAt": "1974-03-31T00:00:00Z", "trialPrice": 2}]}, "saleConfig": {"currencyCode": "R2dny79L", "price": 54}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "ryYYkTCm", "stackable": false, "status": "INACTIVE", "tags": ["MnVBtude", "ayrip0Es", "TTwFwfk6"], "targetCurrencyCode": "qS33WR3I", "targetNamespace": "4W2RaUSC", "thumbnailUrl": "DXhomChz", "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'j6gBg8Q7' \
    --appId 's1tHO1Um' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --availableDate 'kIbMHPxr' \
    --baseAppId 'lkv8R0hP' \
    --categoryPath 'pXdUEur2' \
    --features 'o2BcXYeh' \
    --includeSubCategoryItem 'true' \
    --itemType 'BUNDLE' \
    --limit '36' \
    --offset '63' \
    --region 'StuM0gfn' \
    --sortBy '["updatedAt", "updatedAt:asc", "createdAt:desc"]' \
    --storeId 'EkB4hcUI' \
    --tags 'EsiIjVEH' \
    --targetNamespace 'mnNtSRiA' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["bBUZ7OW0", "LjYhavXw", "2mBibBFl"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'VLdevVwe' \
    --itemIds 'Gb56VSNB' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'G2RETbEg' \
    --sku 'ElY3gMJv' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'l8OEv7aC' \
    --populateBundle 'false' \
    --region 'YVdvPv67' \
    --storeId 'igh9VMbC' \
    --sku 'gePYm5cr' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Jc5GGjFw' \
    --storeId 'mgnKHsld' \
    --itemIds 'VJSmmvwd' \
    --userId 'ZHVEOsBP' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '1AFhAe6u' \
    --sku 'S4DqXH75' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["aKQrTYAt", "FCmB82UG", "ffP38xtM"]' \
    --storeId 'whk0c6dw' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'guDRwp84' \
    --region 'zlpmOPpS' \
    --storeId 'jljWFMv8' \
    --itemIds 'VH7WYMjr' \
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
    --userId '9mP7lZMJ' \
    --body '{"itemIds": ["WFaItgdI", "SUD3FZ4j", "LIGDFdCW"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId '4oyNzdxo' \
    --body '{"changes": [{"itemIdentities": ["Y0oqY8Ra", "qcDgPjJZ", "nqj91kWM"], "itemIdentityType": "ITEM_ID", "regionData": {"cWFdNM5U": [{"currencyCode": "9X3ZburT", "currencyNamespace": "eZMf4928", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1974-05-29T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1975-02-12T00:00:00Z", "discountedPrice": 1, "expireAt": "1987-09-29T00:00:00Z", "price": 24, "purchaseAt": "1999-04-22T00:00:00Z", "trialPrice": 9}, {"currencyCode": "SCA0oaw9", "currencyNamespace": "IZbWpTAk", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1983-04-08T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1986-12-21T00:00:00Z", "discountedPrice": 64, "expireAt": "1994-08-11T00:00:00Z", "price": 90, "purchaseAt": "1990-07-08T00:00:00Z", "trialPrice": 38}, {"currencyCode": "mHy4LgT2", "currencyNamespace": "0pC4Ukfa", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1989-09-24T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1998-06-30T00:00:00Z", "discountedPrice": 72, "expireAt": "1991-11-27T00:00:00Z", "price": 14, "purchaseAt": "1993-10-18T00:00:00Z", "trialPrice": 63}], "jWau9RvU": [{"currencyCode": "JcpNIZGI", "currencyNamespace": "RQWOPk1Y", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1992-07-26T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1999-06-19T00:00:00Z", "discountedPrice": 44, "expireAt": "1981-10-12T00:00:00Z", "price": 89, "purchaseAt": "1994-08-05T00:00:00Z", "trialPrice": 2}, {"currencyCode": "qqRYXXsO", "currencyNamespace": "MnE0O5tW", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1990-03-28T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1977-05-25T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-03-13T00:00:00Z", "price": 12, "purchaseAt": "1994-12-15T00:00:00Z", "trialPrice": 64}, {"currencyCode": "YatuF0RV", "currencyNamespace": "pEcsACsE", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1995-01-03T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1995-07-24T00:00:00Z", "discountedPrice": 18, "expireAt": "1991-09-23T00:00:00Z", "price": 38, "purchaseAt": "1993-01-19T00:00:00Z", "trialPrice": 53}], "E6Oq92IZ": [{"currencyCode": "7NZRFcTD", "currencyNamespace": "1QzYI6Cw", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1971-12-31T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1995-02-22T00:00:00Z", "discountedPrice": 26, "expireAt": "1996-11-24T00:00:00Z", "price": 39, "purchaseAt": "1973-12-18T00:00:00Z", "trialPrice": 16}, {"currencyCode": "miyiyWJE", "currencyNamespace": "xOH9WmlC", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1997-08-16T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1986-06-10T00:00:00Z", "discountedPrice": 55, "expireAt": "1972-02-07T00:00:00Z", "price": 61, "purchaseAt": "1993-10-30T00:00:00Z", "trialPrice": 38}, {"currencyCode": "UuoYgWDv", "currencyNamespace": "owu5sMRz", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1994-12-19T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1979-07-12T00:00:00Z", "discountedPrice": 76, "expireAt": "1997-10-21T00:00:00Z", "price": 85, "purchaseAt": "1993-05-05T00:00:00Z", "trialPrice": 56}]}}, {"itemIdentities": ["c3mtGDWc", "OAoZBq9p", "OkYp1WW4"], "itemIdentityType": "ITEM_SKU", "regionData": {"ZXIfN88K": [{"currencyCode": "AnH3hfaz", "currencyNamespace": "kUZA6LLj", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1983-02-15T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1989-07-17T00:00:00Z", "discountedPrice": 10, "expireAt": "1972-09-25T00:00:00Z", "price": 57, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 65}, {"currencyCode": "iHebmOcj", "currencyNamespace": "QzUjNhkI", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1998-01-24T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1995-05-08T00:00:00Z", "discountedPrice": 56, "expireAt": "1972-08-19T00:00:00Z", "price": 17, "purchaseAt": "1982-01-21T00:00:00Z", "trialPrice": 20}, {"currencyCode": "Gxd2pTep", "currencyNamespace": "BtkLraZk", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1973-10-18T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1971-06-09T00:00:00Z", "discountedPrice": 42, "expireAt": "1988-01-15T00:00:00Z", "price": 74, "purchaseAt": "1980-03-26T00:00:00Z", "trialPrice": 61}], "eIBNQBaf": [{"currencyCode": "UgAvhQhG", "currencyNamespace": "G8LUkniK", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1979-12-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1994-03-31T00:00:00Z", "discountedPrice": 79, "expireAt": "1999-06-14T00:00:00Z", "price": 30, "purchaseAt": "1978-08-15T00:00:00Z", "trialPrice": 64}, {"currencyCode": "MFc2xvJi", "currencyNamespace": "tXSUh3SA", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1971-08-28T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1997-06-17T00:00:00Z", "discountedPrice": 65, "expireAt": "1991-03-10T00:00:00Z", "price": 86, "purchaseAt": "1981-08-22T00:00:00Z", "trialPrice": 29}, {"currencyCode": "CFQKoEu4", "currencyNamespace": "qkZ3CT7Z", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1987-02-20T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1982-04-23T00:00:00Z", "discountedPrice": 3, "expireAt": "1977-03-04T00:00:00Z", "price": 21, "purchaseAt": "1982-01-29T00:00:00Z", "trialPrice": 5}], "XFyhkDpB": [{"currencyCode": "1f4f6mWl", "currencyNamespace": "a677Emeo", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1982-12-12T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1992-10-02T00:00:00Z", "discountedPrice": 60, "expireAt": "1984-10-13T00:00:00Z", "price": 71, "purchaseAt": "1984-01-16T00:00:00Z", "trialPrice": 15}, {"currencyCode": "QLEdDhFh", "currencyNamespace": "tvPHUYIo", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1998-11-12T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1993-08-25T00:00:00Z", "discountedPrice": 27, "expireAt": "1995-11-06T00:00:00Z", "price": 95, "purchaseAt": "1997-09-27T00:00:00Z", "trialPrice": 16}, {"currencyCode": "pg7Imi3N", "currencyNamespace": "nk81E5lg", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1989-10-29T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1981-11-19T00:00:00Z", "discountedPrice": 23, "expireAt": "1980-01-05T00:00:00Z", "price": 42, "purchaseAt": "1999-05-21T00:00:00Z", "trialPrice": 75}]}}, {"itemIdentities": ["Al4l4Z5m", "fHvHxZYy", "ONQeHW6V"], "itemIdentityType": "ITEM_SKU", "regionData": {"c1ByYz8Y": [{"currencyCode": "22tQUKtq", "currencyNamespace": "xznXpVqh", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1998-11-09T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1999-04-14T00:00:00Z", "discountedPrice": 66, "expireAt": "1986-03-25T00:00:00Z", "price": 64, "purchaseAt": "1973-10-04T00:00:00Z", "trialPrice": 15}, {"currencyCode": "cPe8G0LT", "currencyNamespace": "NjeEh4pv", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1981-08-08T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-04-20T00:00:00Z", "discountedPrice": 59, "expireAt": "1995-09-06T00:00:00Z", "price": 62, "purchaseAt": "1990-01-18T00:00:00Z", "trialPrice": 3}, {"currencyCode": "l0hmoFSy", "currencyNamespace": "NbmcvXPf", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1975-06-02T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1971-05-17T00:00:00Z", "discountedPrice": 62, "expireAt": "1979-03-12T00:00:00Z", "price": 21, "purchaseAt": "1990-05-21T00:00:00Z", "trialPrice": 23}], "je4KkyQn": [{"currencyCode": "1qM0CEti", "currencyNamespace": "4tQhogjF", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1987-05-26T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1976-05-05T00:00:00Z", "discountedPrice": 66, "expireAt": "1975-05-30T00:00:00Z", "price": 64, "purchaseAt": "1984-08-22T00:00:00Z", "trialPrice": 63}, {"currencyCode": "L6nouHOp", "currencyNamespace": "VNPel8wy", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1984-05-15T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1972-04-23T00:00:00Z", "discountedPrice": 17, "expireAt": "1997-07-20T00:00:00Z", "price": 59, "purchaseAt": "1998-03-08T00:00:00Z", "trialPrice": 82}, {"currencyCode": "4frqmFNI", "currencyNamespace": "JaaDUlyq", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1990-11-26T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1996-06-11T00:00:00Z", "discountedPrice": 26, "expireAt": "1984-05-03T00:00:00Z", "price": 31, "purchaseAt": "1974-01-02T00:00:00Z", "trialPrice": 56}], "gHSN7WzY": [{"currencyCode": "G9kaTM2y", "currencyNamespace": "lKEaoBJH", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1976-10-26T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1976-01-12T00:00:00Z", "discountedPrice": 9, "expireAt": "1998-05-13T00:00:00Z", "price": 68, "purchaseAt": "1984-10-31T00:00:00Z", "trialPrice": 12}, {"currencyCode": "wXC0BdBL", "currencyNamespace": "gNGdHcxq", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1991-02-20T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1984-11-10T00:00:00Z", "discountedPrice": 9, "expireAt": "1986-04-02T00:00:00Z", "price": 70, "purchaseAt": "1994-03-21T00:00:00Z", "trialPrice": 61}, {"currencyCode": "0XJIR826", "currencyNamespace": "WHqycJWR", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1973-01-05T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1994-06-22T00:00:00Z", "discountedPrice": 12, "expireAt": "1996-03-16T00:00:00Z", "price": 51, "purchaseAt": "1973-03-30T00:00:00Z", "trialPrice": 55}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'COINS' \
    --limit '25' \
    --offset '0' \
    --sortBy 'LsVnPsH5' \
    --storeId '3NReVo5O' \
    --keyword 'u05RqACw' \
    --language 'fJVE83Aq' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '54' \
    --offset '14' \
    --sortBy '["updatedAt", "displayOrder:asc", "createdAt:desc"]' \
    --storeId '7Jlh4vBT' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'gABdOf5e' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'iIY6QfeV' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'bXDJRID3' \
    --namespace $AB_NAMESPACE \
    --storeId 'Z3iMxa7N' \
    --body '{"appId": "cZ4jCQX9", "appType": "DEMO", "baseAppId": "Wua6RecZ", "boothName": "sqWEeTuo", "categoryPath": "MO2CzV7q", "clazz": "IhCwmtl0", "displayOrder": 70, "entitlementType": "DURABLE", "ext": {"MUSqkWwX": {}, "NByUeupS": {}, "almxtRWJ": {}}, "features": ["cGVYURIt", "AwAZiUKp", "xYYdNHvg"], "flexible": false, "images": [{"as": "k28uwsjD", "caption": "mXQlZCcH", "height": 11, "imageUrl": "ZdaQhoKk", "smallImageUrl": "zNHuIpFQ", "width": 44}, {"as": "sWkyXumq", "caption": "X75M0NAe", "height": 92, "imageUrl": "LrEAbNeL", "smallImageUrl": "S9DlkC6z", "width": 56}, {"as": "ncU5NPPO", "caption": "rsV9p1KS", "height": 30, "imageUrl": "U2y0QzRj", "smallImageUrl": "kTby3U73", "width": 34}], "itemIds": ["lDkTwMfS", "L2bdseLI", "TyVR1ZC6"], "itemQty": {"6AaFuPQu": 24, "F1nAsWwr": 96, "iUAwst7m": 51}, "itemType": "MEDIA", "listable": true, "localizations": {"ZJeMg1oh": {"description": "ktV9qtzS", "localExt": {"gFnnLyxi": {}, "v3FUtjkk": {}, "rfqbAbG8": {}}, "longDescription": "HX50KEM9", "title": "Vzh9g5fB"}, "cNlC4BGE": {"description": "6JSARkhw", "localExt": {"AcVmmRev": {}, "ZRLPenfy": {}, "jnbnTUOv": {}}, "longDescription": "DBPDdfmY", "title": "dAbCoERp"}, "yBESupgV": {"description": "WuJgx5yg", "localExt": {"DO8eNQOK": {}, "ONv4Hs3l": {}, "lrQjUqfK": {}}, "longDescription": "X8UkC0BM", "title": "CKeKEifk"}}, "lootBoxConfig": {"rewardCount": 89, "rewards": [{"lootBoxItems": [{"count": 23, "duration": 35, "endDate": "1995-02-13T00:00:00Z", "itemId": "YFQdu6pE", "itemSku": "qQwjOjZC", "itemType": "VYEs2LkN"}, {"count": 47, "duration": 64, "endDate": "1998-06-12T00:00:00Z", "itemId": "7B6UFMLU", "itemSku": "0v2R6r3O", "itemType": "tdAcIRBm"}, {"count": 48, "duration": 45, "endDate": "1992-07-30T00:00:00Z", "itemId": "dtgkTJgr", "itemSku": "ThwGDjfA", "itemType": "v54uUJfW"}], "name": "BvA0RJHA", "odds": 0.33540031008756954, "type": "REWARD", "weight": 86}, {"lootBoxItems": [{"count": 35, "duration": 61, "endDate": "1990-06-21T00:00:00Z", "itemId": "gCgBfC6D", "itemSku": "T6mTRhAy", "itemType": "NZAnoJyp"}, {"count": 47, "duration": 11, "endDate": "1981-07-14T00:00:00Z", "itemId": "IhGMtQbf", "itemSku": "aJf7ryW2", "itemType": "8TeMV6JV"}, {"count": 90, "duration": 93, "endDate": "1971-04-16T00:00:00Z", "itemId": "9qMMatvA", "itemSku": "ML3MokWg", "itemType": "0BeyYMcq"}], "name": "WKvJfs9Q", "odds": 0.9158959317772667, "type": "REWARD", "weight": 23}, {"lootBoxItems": [{"count": 99, "duration": 63, "endDate": "1987-09-08T00:00:00Z", "itemId": "Qc7b3CqA", "itemSku": "Kd2xtYTf", "itemType": "ljjrJLGO"}, {"count": 62, "duration": 26, "endDate": "1978-04-28T00:00:00Z", "itemId": "5ZgPnXPE", "itemSku": "bPm2KG0x", "itemType": "rKeRCAhA"}, {"count": 72, "duration": 95, "endDate": "1994-10-18T00:00:00Z", "itemId": "nh4tQskW", "itemSku": "pCmjRYpB", "itemType": "qZaEtZ71"}], "name": "PbNVHRkL", "odds": 0.7396620622773016, "type": "PROBABILITY_GROUP", "weight": 96}], "rollFunction": "DEFAULT"}, "maxCount": 97, "maxCountPerUser": 68, "name": "i2IbfmGJ", "optionBoxConfig": {"boxItems": [{"count": 82, "duration": 23, "endDate": "1974-06-25T00:00:00Z", "itemId": "yr2gOkFv", "itemSku": "VYeZjJaV", "itemType": "syEHI5ee"}, {"count": 64, "duration": 96, "endDate": "1999-06-19T00:00:00Z", "itemId": "d7SO5azo", "itemSku": "bJWaDdPc", "itemType": "OpqYjRH8"}, {"count": 83, "duration": 77, "endDate": "1974-05-14T00:00:00Z", "itemId": "QfWekOXG", "itemSku": "IMdul3qm", "itemType": "M6ye8b7v"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 77, "fixedTrialCycles": 39, "graceDays": 22}, "regionData": {"0RokBacJ": [{"currencyCode": "MjwDhrNa", "currencyNamespace": "cVyAqYMf", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1998-12-26T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1977-09-25T00:00:00Z", "expireAt": "1985-09-17T00:00:00Z", "price": 58, "purchaseAt": "1994-05-02T00:00:00Z", "trialPrice": 88}, {"currencyCode": "bgSUtYvu", "currencyNamespace": "fwdnvuJg", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1973-02-10T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1981-12-07T00:00:00Z", "expireAt": "1975-03-25T00:00:00Z", "price": 83, "purchaseAt": "1992-04-28T00:00:00Z", "trialPrice": 48}, {"currencyCode": "lrcoa1jG", "currencyNamespace": "lPGLwoPd", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1981-09-12T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1978-02-23T00:00:00Z", "expireAt": "1992-10-29T00:00:00Z", "price": 99, "purchaseAt": "1993-03-16T00:00:00Z", "trialPrice": 43}], "Woz0EPAR": [{"currencyCode": "8iiiGZkI", "currencyNamespace": "AGjWzU8n", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1984-09-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1982-08-18T00:00:00Z", "expireAt": "1978-05-02T00:00:00Z", "price": 3, "purchaseAt": "1998-04-26T00:00:00Z", "trialPrice": 54}, {"currencyCode": "o8LQsqM5", "currencyNamespace": "U2Tdg3MR", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1984-09-01T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1989-05-15T00:00:00Z", "expireAt": "1973-07-13T00:00:00Z", "price": 28, "purchaseAt": "1995-11-08T00:00:00Z", "trialPrice": 0}, {"currencyCode": "FD2NHQVt", "currencyNamespace": "fOfHUXV5", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1977-09-15T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1980-09-13T00:00:00Z", "expireAt": "1984-01-16T00:00:00Z", "price": 19, "purchaseAt": "1984-08-06T00:00:00Z", "trialPrice": 97}], "ZAtXZCHW": [{"currencyCode": "zH7EgMoV", "currencyNamespace": "43uiLGQ2", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1978-10-06T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1975-12-22T00:00:00Z", "expireAt": "1982-02-12T00:00:00Z", "price": 46, "purchaseAt": "1989-02-28T00:00:00Z", "trialPrice": 75}, {"currencyCode": "uSEt21BV", "currencyNamespace": "SC8kSU8t", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-01-12T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1976-12-31T00:00:00Z", "expireAt": "1991-08-14T00:00:00Z", "price": 70, "purchaseAt": "1987-09-29T00:00:00Z", "trialPrice": 73}, {"currencyCode": "yYLiMwE2", "currencyNamespace": "qd7SBXes", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1988-05-08T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1996-10-26T00:00:00Z", "expireAt": "1984-02-01T00:00:00Z", "price": 33, "purchaseAt": "1979-08-13T00:00:00Z", "trialPrice": 39}]}, "saleConfig": {"currencyCode": "CcMr1Xi8", "price": 91}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "xdoDCVvS", "stackable": true, "status": "INACTIVE", "tags": ["xOXXinte", "rymzk2MB", "2LpveUv9"], "targetCurrencyCode": "9mYdZl9x", "targetNamespace": "D0ajJ66M", "thumbnailUrl": "24yCQmM6", "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'SodtuXuD' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'kWL7a0j2' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '4mkO5eJq' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 8, "orderNo": "zOBwHygy"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'eoEjM7lh' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WrUk0gAl' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '7N4KMFNa' \
    --namespace $AB_NAMESPACE \
    --storeId 'NDrJYoov' \
    --body '{"carousel": [{"alt": "4i4amWt4", "previewUrl": "Zg8rpaBU", "thumbnailUrl": "RmOtyGvq", "type": "video", "url": "jHZ0eDg8", "videoSource": "vimeo"}, {"alt": "T7PsImKt", "previewUrl": "UwEgkBVO", "thumbnailUrl": "0dmt3uhh", "type": "image", "url": "sPGZiB0s", "videoSource": "vimeo"}, {"alt": "j4yDFV3z", "previewUrl": "pP1wbW0u", "thumbnailUrl": "nAYsTKU6", "type": "video", "url": "mBfjxqFx", "videoSource": "generic"}], "developer": "rAjfKGGA", "forumUrl": "ChYTBsin", "genres": ["Casual", "Indie", "Strategy"], "localizations": {"GKw64sJ9": {"announcement": "RLuvZsi2", "slogan": "VO9y4r2z"}, "QUPRH7tl": {"announcement": "4deupRzL", "slogan": "HJHCoJrA"}, "Z7EZ1Mb0": {"announcement": "PZ1Jcgdm", "slogan": "GkOMQWIl"}}, "platformRequirements": {"nXYNPk2k": [{"additionals": "4THH1QLk", "directXVersion": "4njR8Xqm", "diskSpace": "vRhS2oea", "graphics": "PMhyCdeV", "label": "wWCs90Ii", "osVersion": "fb4Cl5Ou", "processor": "wJyoX4LA", "ram": "O6xr05Ua", "soundCard": "tCuPi9sW"}, {"additionals": "afhTw3x4", "directXVersion": "BBcizAzs", "diskSpace": "cUmHcDfb", "graphics": "ZjrJxHcW", "label": "CSxwwYW0", "osVersion": "Uxg7oAgQ", "processor": "x9XXVvng", "ram": "alQ2j2LA", "soundCard": "8g0wrkrr"}, {"additionals": "mQUCUFN1", "directXVersion": "bzRDJ4Ks", "diskSpace": "YXomqM9r", "graphics": "S92xesln", "label": "oozqNvTL", "osVersion": "6VAoEsoe", "processor": "nwYq26l7", "ram": "ahOYwWod", "soundCard": "9Uk5qr9A"}], "jUjt5qiy": [{"additionals": "VkOIWgP7", "directXVersion": "MdjmqZZ0", "diskSpace": "GpY2fNz0", "graphics": "xtghkynC", "label": "FBw0rh7V", "osVersion": "wPLf57ET", "processor": "3XEAR60y", "ram": "ogb3vuhN", "soundCard": "zbCeoWAB"}, {"additionals": "E8bZuSC1", "directXVersion": "zKDiiJmK", "diskSpace": "rwUsleNz", "graphics": "Ns6RqyHY", "label": "SP7McgxH", "osVersion": "uS4ZZ6WB", "processor": "33EQP8Qz", "ram": "8rvFPNrC", "soundCard": "Nj9JGmps"}, {"additionals": "iBoe951B", "directXVersion": "I2tuA6BG", "diskSpace": "pOeEsN08", "graphics": "oaWwfKne", "label": "7jbBQcyo", "osVersion": "39mC1p63", "processor": "Lf8tFvC4", "ram": "yWmyxhPa", "soundCard": "W30L4w1V"}], "3P6d7E8O": [{"additionals": "Q5L7PI8b", "directXVersion": "nYBkZ3ma", "diskSpace": "rFz6PEqn", "graphics": "gEJzrFvz", "label": "HjrRspgT", "osVersion": "ymjopxaW", "processor": "a3yPMBOj", "ram": "zqv0qOOx", "soundCard": "k4a2XbOc"}, {"additionals": "9CK0cHiw", "directXVersion": "0hZLknJI", "diskSpace": "qoOnVax0", "graphics": "duq9IH7w", "label": "vd0YIfDn", "osVersion": "KVctR19s", "processor": "A2VflonF", "ram": "28cu3jWv", "soundCard": "Z2RoM8Pj"}, {"additionals": "sUKEN25T", "directXVersion": "vQ9vGQ5u", "diskSpace": "wO5fiAq6", "graphics": "HTPmnZHH", "label": "97MMRRL2", "osVersion": "UGrdHWg7", "processor": "HgLQ5cZv", "ram": "Z9nglU2d", "soundCard": "GrppD9bE"}]}, "platforms": ["MacOS", "MacOS", "Linux"], "players": ["CrossPlatformMulti", "LocalCoop", "Single"], "primaryGenre": "Strategy", "publisher": "FeLeysJf", "releaseDate": "1983-02-05T00:00:00Z", "websiteUrl": "Powga1rk"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'yP6XQ29L' \
    --namespace $AB_NAMESPACE \
    --storeId 'A3jBEUeY' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'BuG1giBM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'izRFo6ek' \
    --namespace $AB_NAMESPACE \
    --storeId 'GOHw8UO4' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'JQZqPHDf' \
    --itemId 'PpEXl9mn' \
    --namespace $AB_NAMESPACE \
    --storeId 'RJ2t8QML' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'oSkCmZoh' \
    --itemId '896tlYh4' \
    --namespace $AB_NAMESPACE \
    --storeId 'ixqA7jdv' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'FLZV7SJZ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'RwnpPkKi' \
    --populateBundle 'false' \
    --region 'I4olNaAt' \
    --storeId 'arFcnPBv' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'aVZK68E9' \
    --namespace $AB_NAMESPACE \
    --storeId 'sArXpYSS' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 17, "comparison": "isNot", "name": "0K6yMst7", "predicateType": "SeasonTierPredicate", "value": "NgbYBe7K", "values": ["lQKBJycs", "IhvEYbcU", "z6fIHW3i"]}, {"anyOf": 99, "comparison": "includes", "name": "jyKz9qFE", "predicateType": "SeasonPassPredicate", "value": "0kmwerWp", "values": ["uCsA5Xht", "g3hBuOlW", "YrztM7rN"]}, {"anyOf": 64, "comparison": "isLessThanOrEqual", "name": "8NqtmdPt", "predicateType": "EntitlementPredicate", "value": "HxOQ5m3x", "values": ["1VtI1J86", "eoGlTYkK", "HYfI4GBV"]}]}, {"operator": "and", "predicates": [{"anyOf": 71, "comparison": "isLessThan", "name": "6VKAfmLt", "predicateType": "SeasonPassPredicate", "value": "4KsQTsjO", "values": ["26KcXCJr", "JbudMkwo", "WXhzdgAm"]}, {"anyOf": 97, "comparison": "is", "name": "JsB4F7be", "predicateType": "SeasonTierPredicate", "value": "jZibREfQ", "values": ["Q1fDrHcf", "12ITroWt", "ZTt531qN"]}, {"anyOf": 16, "comparison": "isLessThan", "name": "16RdGozl", "predicateType": "SeasonPassPredicate", "value": "vkvmk9xP", "values": ["OywNyt7c", "Ch9fxJVb", "GqBegne4"]}]}, {"operator": "or", "predicates": [{"anyOf": 66, "comparison": "includes", "name": "PT9u5XvD", "predicateType": "SeasonTierPredicate", "value": "7VF8eFsM", "values": ["ZGrERZjt", "lDgyxJMa", "WsjY4Twr"]}, {"anyOf": 32, "comparison": "isGreaterThan", "name": "LVomzSD4", "predicateType": "SeasonPassPredicate", "value": "jm2k2qVq", "values": ["ORYCYKzM", "97H7NhmF", "lvD2MoFN"]}, {"anyOf": 84, "comparison": "isLessThanOrEqual", "name": "iCYpaEjE", "predicateType": "EntitlementPredicate", "value": "b3kpMlgD", "values": ["6yH8RX5y", "xidQ1Z7D", "z0gbIIiq"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'y3F9cRuz' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "QPpuUM27"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name '402o6lTg' \
    --offset '84' \
    --tag 'm6t2GQrO' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sjT5EQ1Z", "name": "b4imK99q", "status": "ACTIVE", "tags": ["TNuLBwLR", "OLxWIw0y", "FVNlJWpR"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'ml5yXBaP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'b1QKiEDl' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "uuQahEWj", "name": "krJ4Eqmr", "status": "ACTIVE", "tags": ["q2OdPvx4", "OfyWxsYG", "uWhLUNuf"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'HkjgXIVJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'gqulxt3r' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '53' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'mEJEViJu' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'lVPASjvM' \
    --limit '3' \
    --offset '61' \
    --orderNos '["b85mxGB2", "GZ1zMPoc", "4fnFcV5E"]' \
    --sortBy 't0KMVIMA' \
    --startTime 'CrBc0sRe' \
    --status 'CHARGED' \
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
    --orderNo 'MMcrZs3H' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'sc3fqo5e' \
    --body '{"description": "FGOwH2zr"}' \
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
    --body '{"dryRun": true, "notifyUrl": "0vuIC2yV", "privateKey": "zs2luz9T"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'JMD5cGru' \
    --externalId 'KW3S9h68' \
    --limit '96' \
    --notificationSource 'STRIPE' \
    --notificationType 'BkxXvYZY' \
    --offset '6' \
    --paymentOrderNo 'XLlRegnF' \
    --startDate 'kHdK9e2f' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'LgddLvYQ' \
    --limit '56' \
    --offset '45' \
    --status 'NOTIFICATION_OF_CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "H01fGRPX", "currencyNamespace": "zS7ZywQW", "customParameters": {"qrKb22pN": {}, "QDonGN5K": {}, "EIozJKY7": {}}, "description": "GUj5qkSL", "extOrderNo": "KHHEIL3g", "extUserId": "AstxprRD", "itemType": "SUBSCRIPTION", "language": "pN", "metadata": {"Mn5gZjIx": "smFvEFkX", "saLOllQi": "QOPs6HFF", "GAuP7udj": "kFiv5MX7"}, "notifyUrl": "CtBGoXSv", "omitNotification": true, "platform": "XJkOMYQv", "price": 93, "recurringPaymentOrderNo": "18QCft3h", "region": "Gl8pO0sy", "returnUrl": "xxopvajF", "sandbox": true, "sku": "fdlrhX9k", "subscriptionId": "fnsrIm7h", "targetNamespace": "W5It8VS0", "targetUserId": "pS97oE17", "title": "7DVYHuq9"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'pbeS6cNg' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'nnKIxM3L' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '1oPKnW2r' \
    --body '{"extTxId": "aeiA7WCP", "paymentMethod": "SnmxKoY6", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wMmmb4g5' \
    --body '{"description": "vTTtYDya"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'KTQPmICZ' \
    --body '{"amount": 42, "currencyCode": "0il4UlCp", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 14, "vat": 33}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'H89M4KBH' \
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
    --platform 'Xbox' \
    --body '{"allowedBalanceOrigins": ["System", "IOS", "Twitch"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'Exe88xqK' \
    --limit '62' \
    --offset '54' \
    --source 'IAP' \
    --startTime 'RD5Fk4Hg' \
    --status 'SUCCESS' \
    --transactionId 'rMBYnuTZ' \
    --userId 'pY9BhWVR' \
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
    --body '{"appConfig": {"appName": "LAI9W2EX"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "763vR4bV"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "QXDOE2d1", "eventTopic": "jt2sN2Pq", "maxAwarded": 14, "maxAwardedPerUser": 21, "namespaceExpression": "X6GhvK3N", "rewardCode": "2EWThTlJ", "rewardConditions": [{"condition": "eR6nDDSI", "conditionName": "YjJY1cwI", "eventName": "bt5qLfnz", "rewardItems": [{"duration": 45, "endDate": "1982-05-13T00:00:00Z", "itemId": "BBldVlb9", "quantity": 42}, {"duration": 15, "endDate": "1988-03-31T00:00:00Z", "itemId": "Gj0wKWUF", "quantity": 93}, {"duration": 72, "endDate": "1999-07-25T00:00:00Z", "itemId": "6WLMNYE9", "quantity": 74}]}, {"condition": "0DZDg0Da", "conditionName": "BbtmBcyy", "eventName": "LhmFg3wW", "rewardItems": [{"duration": 7, "endDate": "1982-03-10T00:00:00Z", "itemId": "3x03NB3G", "quantity": 7}, {"duration": 30, "endDate": "1972-09-27T00:00:00Z", "itemId": "XgNMU1Zw", "quantity": 61}, {"duration": 65, "endDate": "1981-10-05T00:00:00Z", "itemId": "uWwm7eES", "quantity": 45}]}, {"condition": "3qG7Vxe5", "conditionName": "OET2unMr", "eventName": "MA6npoul", "rewardItems": [{"duration": 0, "endDate": "1979-08-10T00:00:00Z", "itemId": "VSygbAfu", "quantity": 30}, {"duration": 15, "endDate": "1976-11-26T00:00:00Z", "itemId": "Hnr8wSZX", "quantity": 90}, {"duration": 22, "endDate": "1972-02-08T00:00:00Z", "itemId": "RgLIvoYb", "quantity": 65}]}], "userIdExpression": "4Syi4BYX"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'mYkXZEwI' \
    --limit '25' \
    --offset '52' \
    --sortBy '["rewardCode", "rewardCode:asc", "namespace"]' \
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
    --rewardId 'Rgi4w2Xg' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'BJIH98RP' \
    --body '{"description": "CEf2exdV", "eventTopic": "1GiWNo6w", "maxAwarded": 82, "maxAwardedPerUser": 76, "namespaceExpression": "KKuuhaWc", "rewardCode": "Ci4ttT8m", "rewardConditions": [{"condition": "87yWXlqd", "conditionName": "OSGqgyvf", "eventName": "ATl6SL66", "rewardItems": [{"duration": 82, "endDate": "1979-01-06T00:00:00Z", "itemId": "7PWKzehR", "quantity": 92}, {"duration": 49, "endDate": "1988-10-04T00:00:00Z", "itemId": "zCE4fA9T", "quantity": 43}, {"duration": 95, "endDate": "1988-01-08T00:00:00Z", "itemId": "T5JHfMrH", "quantity": 18}]}, {"condition": "rET5Rjxv", "conditionName": "pBmlqimW", "eventName": "kAuASxmK", "rewardItems": [{"duration": 53, "endDate": "1971-07-07T00:00:00Z", "itemId": "0MMxA2HC", "quantity": 67}, {"duration": 13, "endDate": "1997-01-29T00:00:00Z", "itemId": "AacLvCyR", "quantity": 88}, {"duration": 84, "endDate": "1995-01-16T00:00:00Z", "itemId": "ERwmU4lD", "quantity": 52}]}, {"condition": "YiG4c9Br", "conditionName": "0BR2xio3", "eventName": "iN9ZA6d0", "rewardItems": [{"duration": 1, "endDate": "1996-09-02T00:00:00Z", "itemId": "TPa3euD4", "quantity": 38}, {"duration": 89, "endDate": "1999-08-27T00:00:00Z", "itemId": "6RicMWmN", "quantity": 75}, {"duration": 10, "endDate": "1998-10-28T00:00:00Z", "itemId": "8ryGyZxc", "quantity": 44}]}], "userIdExpression": "ITaYzBAA"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'AzSH2j5t' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'Ve5bwwWo' \
    --body '{"payload": {"hY3zUkGE": {}, "X7ov9B4e": {}, "g7Fcp0QA": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'K85kDHY8' \
    --body '{"conditionName": "tTizbmio", "userId": "AfkMH06H"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'hpqOhe25' \
    --limit '27' \
    --offset '77' \
    --start 'FFNIg0LX' \
    --storeId 'pSU5J9Wa' \
    --viewId 'a2t3WkUB' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'OTLLXDjG' \
    --body '{"active": true, "displayOrder": 4, "endDate": "1977-05-03T00:00:00Z", "ext": {"WeEI13A7": {}, "73idMAlp": {}, "wApsByD4": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 95, "itemCount": 27, "rule": "SEQUENCE"}, "items": [{"id": "rXJd23gV", "sku": "DiVARXPx"}, {"id": "LddvaZQv", "sku": "zhrBcKZM"}, {"id": "r6ziAVpo", "sku": "e0LWbJDX"}], "localizations": {"RskVb0Bp": {"description": "g0VO4YOZ", "localExt": {"yRGhyJ26": {}, "qwoyqRDT": {}, "ZHymalw3": {}}, "longDescription": "6ceqqQSV", "title": "ogLQ2ASd"}, "9fRjJbqt": {"description": "npk7mOn0", "localExt": {"lwfmjapu": {}, "t7fIRFZU": {}, "nnEFJRTg": {}}, "longDescription": "IU4RKqQl", "title": "IzOPS85O"}, "ZwN11xSy": {"description": "qjudzRJE", "localExt": {"d7AdstgZ": {}, "Huqpb7Ku": {}, "kGkq3HWW": {}}, "longDescription": "4PgZWSY5", "title": "3OeJ8JWK"}}, "name": "41iVVnBf", "rotationType": "CUSTOM", "startDate": "1975-09-04T00:00:00Z", "viewId": "qPdz5HBF"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ToS1GUe4' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'nB6qvTPE' \
    --storeId 'zITrWNji' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'djIvOcPQ' \
    --storeId 'rtjxqfd1' \
    --body '{"active": false, "displayOrder": 24, "endDate": "1992-05-31T00:00:00Z", "ext": {"AzagEgVX": {}, "JJ5xspfF": {}, "AUe223fp": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 83, "itemCount": 92, "rule": "SEQUENCE"}, "items": [{"id": "AxQizavt", "sku": "fg0Znwx0"}, {"id": "tgdOb3g4", "sku": "eLARVEGx"}, {"id": "MGsTYYOJ", "sku": "X2XGjmbW"}], "localizations": {"D3zFLLHd": {"description": "6SpC9XBs", "localExt": {"XVANHP8V": {}, "rigD6h4P": {}, "chowsRx7": {}}, "longDescription": "KMwDx5dB", "title": "sswpIiCG"}, "uvzgmnvW": {"description": "zjfy5dY2", "localExt": {"utylquQe": {}, "U1DBLdeJ": {}, "luJWBNJ5": {}}, "longDescription": "4irU0GRV", "title": "7lBuXYiC"}, "e02arvRr": {"description": "lja2Bmfu", "localExt": {"ZWpfwMNi": {}, "yUc3DU2x": {}, "D7flXTe9": {}}, "longDescription": "B5OoALdQ", "title": "umFoO7DC"}}, "name": "9z7X5X0u", "rotationType": "NONE", "startDate": "1998-10-10T00:00:00Z", "viewId": "uJbBxWRL"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'SKNvcYXp' \
    --storeId 'ZwAh0XBl' \
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
    --body '{"defaultLanguage": "jxp7CW00", "defaultRegion": "ShuqNLRq", "description": "7PaZfnFK", "supportedLanguages": ["BRhMqgzs", "vBJb1JXd", "4J5pH5NO"], "supportedRegions": ["FomjWceQ", "joC23x9m", "pdNXWRr9"], "title": "LYHDEaBb"}' \
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
    --storeId '95ZP8XKj' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '7GdbPECE' \
    --body '{"defaultLanguage": "haZ9NliN", "defaultRegion": "yVatqDux", "description": "0xfVQt4T", "supportedLanguages": ["kv7D7U5S", "zxRPIx9k", "vqOTV5cu"], "supportedRegions": ["xeauhkKw", "B62TxXBF", "c3WkBQ2E"], "title": "ckwV8EOu"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'LsMnRTMc' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'cPfnA1ra' \
    --action 'DELETE' \
    --itemSku 'CPOdLVdZ' \
    --itemType 'SUBSCRIPTION' \
    --limit '85' \
    --offset '35' \
    --selected 'true' \
    --sortBy '["updatedAt", "updatedAt:asc", "updatedAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'STORE' \
    --updatedAtEnd 'whzw6IIW' \
    --updatedAtStart 'M6AeZwi6' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '5HKDIxpP' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'QjJyKO95' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'rgwmQck8' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'IZ1LO7vr' \
    --action 'CREATE' \
    --itemSku '0J4JtxkP' \
    --itemType 'LOOTBOX' \
    --type 'VIEW' \
    --updatedAtEnd 'gyE3CMGE' \
    --updatedAtStart '4bvSW5Vh' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'IR73ex5k' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'nOYMJ8sy' \
    --namespace $AB_NAMESPACE \
    --storeId 'epuX5ksi' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'xv1ljIZ2' \
    --namespace $AB_NAMESPACE \
    --storeId 'JQ096Zit' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'UYZ9DEPQ' \
    --targetStoreId 'HFTFSd4y' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'dqfc3nkk' \
    --limit '18' \
    --offset '39' \
    --sku 'V66F03Vt' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    --userId 'gEM0Ct0a' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'B29rBTJm' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'zg3bleS7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'K1hPCw8U' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "SI2DFJbc"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'tSgwAt8O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '9AbmHTMC' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17, "orderNo": "2FRJI92o"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'yEhQZslN' \
    --body '{"achievements": [{"id": "vXHwDcs7", "value": 33}, {"id": "DveX2byi", "value": 10}, {"id": "r7Y6RPG6", "value": 61}], "steamUserId": "qL4xR0LK"}' \
    > test.out 2>&1
eval_tap $? 206 'UnlockSteamUserAchievement' test.out

#- 207 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'tWpyK0fP' \
    --xboxUserId 'u66hGYUA' \
    > test.out 2>&1
eval_tap $? 207 'GetXblUserAchievements' test.out

#- 208 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'z5AjBp5z' \
    --body '{"achievements": [{"id": "1sOTxZKS", "percentComplete": 54}, {"id": "7H5hp4mQ", "percentComplete": 78}, {"id": "AaHHJ97t", "percentComplete": 84}], "serviceConfigId": "QOkxCM5n", "titleId": "9XEowMkQ", "xboxUserId": "eu60MLoZ"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateXblUserAchievement' test.out

#- 209 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'ctGG2v7v' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeCampaign' test.out

#- 210 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rRkWlRXV' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeEntitlement' test.out

#- 211 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'PiZjf5sj' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeFulfillment' test.out

#- 212 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'MPL46yPa' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeIntegration' test.out

#- 213 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'lN9McFxb' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeOrder' test.out

#- 214 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'djm3vKHY' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizePayment' test.out

#- 215 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'tHHWoTP4' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeRevocation' test.out

#- 216 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '46ZzjTDX' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeSubscription' test.out

#- 217 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'OL9QrOjL' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeWallet' test.out

#- 218 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'AFqNjDwv' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLCByPlatform' test.out

#- 219 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId '6Ag3yaLf' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 219 'GetUserDLC' test.out

#- 220 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Rfx1JcYH' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'EsX60iSB' \
    --features '["Zayqhcqj", "z2cFMydv", "0Myao7Dm"]' \
    --itemId '["fNkpGFTN", "D2yQJznq", "JZjDg550"]' \
    --limit '27' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserEntitlements' test.out

#- 221 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'DZQN5ggQ' \
    --body '[{"endDate": "1976-04-27T00:00:00Z", "grantedCode": "kWv57nb5", "itemId": "JC2SJI4H", "itemNamespace": "lLwe3hpa", "language": "Vrz-XJTr_ml", "quantity": 85, "region": "dWwC1Bs9", "source": "GIFT", "startDate": "1997-08-18T00:00:00Z", "storeId": "8O0tNmZD"}, {"endDate": "1987-10-11T00:00:00Z", "grantedCode": "69R0qnl9", "itemId": "Pn8alQ3A", "itemNamespace": "dqFLDbjD", "language": "KjwB", "quantity": 9, "region": "2qPGaTnw", "source": "PURCHASE", "startDate": "1998-05-15T00:00:00Z", "storeId": "hErbVv0O"}, {"endDate": "1988-08-23T00:00:00Z", "grantedCode": "wg0uE7jW", "itemId": "bLYGHSUY", "itemNamespace": "SKOEFPF6", "language": "uyI", "quantity": 34, "region": "dgPQc8zB", "source": "REWARD", "startDate": "1975-01-15T00:00:00Z", "storeId": "RF9UNQ2n"}]' \
    > test.out 2>&1
eval_tap $? 221 'GrantUserEntitlement' test.out

#- 222 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ixrBupi2' \
    --activeOnly 'false' \
    --appId 'l8UFSWlm' \
    > test.out 2>&1
eval_tap $? 222 'GetUserAppEntitlementByAppId' test.out

#- 223 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'JAmVOYM5' \
    --activeOnly 'false' \
    --limit '61' \
    --offset '44' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlementsByAppType' test.out

#- 224 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'KzIsusSb' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --itemId 'JmWQ9ZJi' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementByItemId' test.out

#- 225 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'gcIilNGf' \
    --ids '["6XaB57EN", "yo9TrMfv", "jfr8tm8U"]' \
    > test.out 2>&1
eval_tap $? 225 'GetUserActiveEntitlementsByItemIds' test.out

#- 226 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'OAj5y4M2' \
    --activeOnly 'false' \
    --entitlementClazz 'APP' \
    --sku 'Mcm14Ve0' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementBySku' test.out

#- 227 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'p8gM4jly' \
    --appIds '["UWKCU3gj", "b4mDrlOJ", "hRrFPlh2"]' \
    --itemIds '["P1t22dOm", "KdyqbZp0", "7BxWOMcb"]' \
    --skus '["nUBz3AoK", "55hb7AWo", "pgmHXXPz"]' \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlement' test.out

#- 228 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'mde3jISu' \
    --itemIds '["5QT2Yf9E", "BHOEzRSZ", "rNQWR0u7"]' \
    > test.out 2>&1
eval_tap $? 228 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 229 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YLGsnPJF' \
    --appId 'KxTbh3GY' \
    > test.out 2>&1
eval_tap $? 229 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 230 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MYTO58Wq' \
    --entitlementClazz 'APP' \
    --itemId '208LlQKK' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemId' test.out

#- 231 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '70zcUXXK' \
    --ids '["pZZCC87Q", "HAkqkkgI", "Lfm47Bsj"]' \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipByItemIds' test.out

#- 232 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '7cF03KIK' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'H56IctsU' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementOwnershipBySku' test.out

#- 233 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'SAKxN5jI' \
    > test.out 2>&1
eval_tap $? 233 'RevokeAllEntitlements' test.out

#- 234 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'JuUJPXUf' \
    --entitlementIds 'zqcU0oWx' \
    > test.out 2>&1
eval_tap $? 234 'RevokeUserEntitlements' test.out

#- 235 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'RGy49uwR' \
    --namespace $AB_NAMESPACE \
    --userId 'iTIGc38J' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlement' test.out

#- 236 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'cUc2XJnA' \
    --namespace $AB_NAMESPACE \
    --userId 'BT6AtlZw' \
    --body '{"endDate": "1971-12-25T00:00:00Z", "nullFieldList": ["x6HiDUn7", "FU1fyYey", "OWslZZ2D"], "startDate": "1979-05-10T00:00:00Z", "status": "ACTIVE", "useCount": 25}' \
    > test.out 2>&1
eval_tap $? 236 'UpdateUserEntitlement' test.out

#- 237 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'zFQ4w8uq' \
    --namespace $AB_NAMESPACE \
    --userId 'WFWxWesp' \
    --body '{"options": ["NLUFSaeP", "xts55MMm", "rz75RccT"], "requestId": "bKW54q2t", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 237 'ConsumeUserEntitlement' test.out

#- 238 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'njTvwVaQ' \
    --namespace $AB_NAMESPACE \
    --userId '2YIrYqxt' \
    > test.out 2>&1
eval_tap $? 238 'DisableUserEntitlement' test.out

#- 239 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'j0cLFjSa' \
    --namespace $AB_NAMESPACE \
    --userId 'dsBbyVye' \
    > test.out 2>&1
eval_tap $? 239 'EnableUserEntitlement' test.out

#- 240 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'A92zCvtd' \
    --namespace $AB_NAMESPACE \
    --userId 'clkmgrW5' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementHistories' test.out

#- 241 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'boGJwoj2' \
    --namespace $AB_NAMESPACE \
    --userId 'rw0fxXvC' \
    > test.out 2>&1
eval_tap $? 241 'RevokeUserEntitlement' test.out

#- 242 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'oqB2o1Nm' \
    --namespace $AB_NAMESPACE \
    --userId '0lkTIqft' \
    --body '{"reason": "xz2nwDK0", "useCount": 35}' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUseCount' test.out

#- 243 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'FBEYkaK1' \
    --namespace $AB_NAMESPACE \
    --userId 'Bu0emIFl' \
    --body '{"requestId": "XhqTWPdD", "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 243 'SellUserEntitlement' test.out

#- 244 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'VLzs3GJg' \
    --body '{"duration": 64, "endDate": "1980-06-02T00:00:00Z", "itemId": "quoofLP2", "itemSku": "EM1ANvwS", "language": "gfkwmq9H", "metadata": {"jC0SOa4N": {}, "HIbb2YW6": {}, "rFajjUBY": {}}, "order": {"currency": {"currencyCode": "A84LtHQh", "currencySymbol": "72HwpFvg", "currencyType": "REAL", "decimals": 82, "namespace": "dVEZlVMe"}, "ext": {"G8g11ZNd": {}, "jWUUv0JK": {}, "VgzHGy1W": {}}, "free": true}, "orderNo": "bk07aJeI", "origin": "Twitch", "overrideBundleItemQty": {"8nIXSFU8": 33, "EZgX4TN8": 91, "1v0QJUkS": 33}, "quantity": 26, "region": "MkHvvlAQ", "source": "EXPIRATION", "startDate": "1993-03-02T00:00:00Z", "storeId": "LgMi1dbc"}' \
    > test.out 2>&1
eval_tap $? 244 'FulfillItem' test.out

#- 245 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'iac9x8Ru' \
    --body '{"code": "tFpadq36", "language": "ta", "region": "5vgqMA4U"}' \
    > test.out 2>&1
eval_tap $? 245 'RedeemCode' test.out

#- 246 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'rnJrDHlv' \
    --body '{"metadata": {"CX0trVwJ": {}, "LNXFoobe": {}, "JjRJjFIn": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "A0HWG9c7", "namespace": "XLcz8sxy"}, "item": {"itemId": "igdYHDDT", "itemSku": "LaFgw4BO", "itemType": "1RNDAJpI"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"currencyCode": "7swXWg3t", "namespace": "w2I13Zxw"}, "item": {"itemId": "9Tgmodys", "itemSku": "aPYrLlNc", "itemType": "uyGHrtYN"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "Hf6RiXwH", "namespace": "JvM5j48A"}, "item": {"itemId": "yVuKTil8", "itemSku": "XPcc02pO", "itemType": "dDnVFzI1"}, "quantity": 87, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "kq2Fph3P"}' \
    > test.out 2>&1
eval_tap $? 246 'FulfillRewards' test.out

#- 247 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'aQssSTlc' \
    --endTime 'Mv5qMgHA' \
    --limit '37' \
    --offset '66' \
    --productId '7jKFnTu4' \
    --startTime 'BUO62mYX' \
    --status 'FAILED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPOrders' test.out

#- 248 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '50LxvhLQ' \
    > test.out 2>&1
eval_tap $? 248 'QueryAllUserIAPOrders' test.out

#- 249 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '3LQNCwHv' \
    --endTime 'lkpCmPOD' \
    --limit '24' \
    --offset '66' \
    --startTime 'B2IfErwo' \
    --status 'PENDING' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserIAPConsumeHistory' test.out

#- 250 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'v1UjT0Bf' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "UJWZ-mSHM", "productId": "IpQibtt0", "region": "Z9JwPVxJ", "transactionId": "dSTMVPJI", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 250 'MockFulfillIAPItem' test.out

#- 251 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'NxRpq7ZK' \
    --itemId 'RT2j7d6f' \
    --limit '81' \
    --offset '91' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 251 'QueryUserOrders' test.out

#- 252 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '01la4VbA' \
    --body '{"currencyCode": "Fftue7jF", "currencyNamespace": "CcZ5t1j5", "discountedPrice": 87, "ext": {"U2o5FaO0": {}, "IVdjYsAU": {}, "IY09455d": {}}, "itemId": "oU35i2o4", "language": "yWcYgjvX", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 24, "quantity": 49, "region": "cYZAQuvW", "returnUrl": "KUg02wjx", "sandbox": false, "sectionId": "0NgPGQ4H"}' \
    > test.out 2>&1
eval_tap $? 252 'AdminCreateUserOrder' test.out

#- 253 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'biM5l8XS' \
    --itemId 'cc0l1fHC' \
    > test.out 2>&1
eval_tap $? 253 'CountOfPurchasedItem' test.out

#- 254 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'm8cZ8iPN' \
    --userId 'DFmySNKe' \
    > test.out 2>&1
eval_tap $? 254 'GetUserOrder' test.out

#- 255 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'MEdyaCwn' \
    --userId 'O6YOXdTr' \
    --body '{"status": "REFUND_FAILED", "statusReason": "O5Ffc9dH"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserOrderStatus' test.out

#- 256 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '0UzryaGI' \
    --userId 'HNgKywJE' \
    > test.out 2>&1
eval_tap $? 256 'FulfillUserOrder' test.out

#- 257 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'L1MkGgum' \
    --userId 'L3eS4Dyd' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderGrant' test.out

#- 258 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'uV0g90KB' \
    --userId 'iBCd9DU8' \
    > test.out 2>&1
eval_tap $? 258 'GetUserOrderHistories' test.out

#- 259 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'sU9xK7N3' \
    --userId '11e3cHdO' \
    --body '{"additionalData": {"cardSummary": "Mp5Ra0x1"}, "authorisedTime": "1998-07-09T00:00:00Z", "chargebackReversedTime": "1997-04-02T00:00:00Z", "chargebackTime": "1990-12-25T00:00:00Z", "chargedTime": "1973-02-05T00:00:00Z", "createdTime": "1976-04-23T00:00:00Z", "currency": {"currencyCode": "2Uu2agqw", "currencySymbol": "CvZnIq61", "currencyType": "REAL", "decimals": 4, "namespace": "lqvVBPr3"}, "customParameters": {"5V45cKwo": {}, "3XT7S1mn": {}, "4kctJPCX": {}}, "extOrderNo": "mPWBmgRO", "extTxId": "OZ4Ho5IY", "extUserId": "rgVzxqVt", "issuedAt": "1982-02-05T00:00:00Z", "metadata": {"mHBz5RgV": "CI51GUAT", "hgGgduN1": "ep3BoCjV", "DYzD45O6": "iBJjNC4b"}, "namespace": "BUfXKl9n", "nonceStr": "8RtyavN2", "paymentMethod": "0Nx8vI1K", "paymentMethodFee": 63, "paymentOrderNo": "tadTPuHM", "paymentProvider": "ALIPAY", "paymentProviderFee": 76, "paymentStationUrl": "GCgAo7Qh", "price": 5, "refundedTime": "1996-04-13T00:00:00Z", "salesTax": 67, "sandbox": false, "sku": "2Mioakwk", "status": "AUTHORISE_FAILED", "statusReason": "CaIsHJfj", "subscriptionId": "JqAlh87i", "subtotalPrice": 22, "targetNamespace": "jVKTC0Ff", "targetUserId": "SosQYWPL", "tax": 64, "totalPrice": 65, "totalTax": 84, "txEndTime": "1991-12-30T00:00:00Z", "type": "wpsR6RHx", "userId": "u759sjHZ", "vat": 44}' \
    > test.out 2>&1
eval_tap $? 259 'ProcessUserOrderNotification' test.out

#- 260 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'aY6xJ0Q6' \
    --userId '19r8r3vI' \
    > test.out 2>&1
eval_tap $? 260 'DownloadUserOrderReceipt' test.out

#- 261 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'fnWdqD1Y' \
    --body '{"currencyCode": "EAM8E2oC", "currencyNamespace": "ggCcbU1U", "customParameters": {"soEnKeDz": {}, "fDlrY4vK": {}, "DThFHIbU": {}}, "description": "O8UgHPFB", "extOrderNo": "7kzxAnN4", "extUserId": "xTa7kSye", "itemType": "SUBSCRIPTION", "language": "dmn", "metadata": {"sjh9Vp3G": "i9bWlOXm", "zrrbkdRO": "zWjmUTnE", "dWvHIdOn": "YI3oyck1"}, "notifyUrl": "nB4kLYwo", "omitNotification": true, "platform": "PehGLH5L", "price": 100, "recurringPaymentOrderNo": "w6Vuawxv", "region": "fD061P4U", "returnUrl": "ZxToaws1", "sandbox": false, "sku": "p3rFC9Sj", "subscriptionId": "RWrrXNGM", "title": "f0zSrveo"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserPaymentOrder' test.out

#- 262 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'r1bWiDka' \
    --userId 'PoAyrLuk' \
    --body '{"description": "VyXqBNzX"}' \
    > test.out 2>&1
eval_tap $? 262 'RefundUserPaymentOrder' test.out

#- 263 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '9U4X3bPl' \
    --body '{"code": "L5CqE6kx", "orderNo": "DfFwqZ0S"}' \
    > test.out 2>&1
eval_tap $? 263 'ApplyUserRedemption' test.out

#- 264 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'oRb1rY2k' \
    --body '{"meta": {"TLWOpVNJ": {}, "O9LEsvod": {}, "2j3E9dgf": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "SUAAiw48", "namespace": "NgVKwL8g"}, "entitlement": {"entitlementId": "8Jut9yNe"}, "item": {"itemIdentity": "II5CKJNn", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "XGlvfWRd", "namespace": "uQYPFW9F"}, "entitlement": {"entitlementId": "eeETZZpt"}, "item": {"itemIdentity": "lm8sWKxH", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 90, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "4tfDilY5", "namespace": "AW8yqcJC"}, "entitlement": {"entitlementId": "Rv20lwej"}, "item": {"itemIdentity": "SSK6qQlV", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 97, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "HrSQ71HO"}' \
    > test.out 2>&1
eval_tap $? 264 'DoRevocation' test.out

#- 265 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'DUwodBgr' \
    --body '{"gameSessionId": "hdSBnxCk", "payload": {"pDFrBiIS": {}, "3oKMdLCb": {}, "2YOK9cFu": {}}, "scid": "qejGLmqr", "sessionTemplateName": "JmZCgnCU"}' \
    > test.out 2>&1
eval_tap $? 265 'RegisterXblSessions' test.out

#- 266 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'yyeTCFJo' \
    --chargeStatus 'SETUP' \
    --itemId 'mx2IKE4z' \
    --limit '63' \
    --offset '5' \
    --sku 'WCFftB4H' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 266 'QueryUserSubscriptions' test.out

#- 267 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'sR3XTb2w' \
    --excludeSystem 'true' \
    --limit '63' \
    --offset '47' \
    --subscriptionId 'zYtIfZrR' \
    > test.out 2>&1
eval_tap $? 267 'GetUserSubscriptionActivities' test.out

#- 268 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'rhReUh4U' \
    --body '{"grantDays": 30, "itemId": "aO2n9ePG", "language": "c2b0et3h", "reason": "7bsA1WL7", "region": "D2Cl18r6", "source": "DwZkk2rA"}' \
    > test.out 2>&1
eval_tap $? 268 'PlatformSubscribeSubscription' test.out

#- 269 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'KXnrIxxD' \
    --itemId 'O1zkGuL5' \
    > test.out 2>&1
eval_tap $? 269 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 270 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5iw8qc9e' \
    --userId 'CIqjj6wp' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscription' test.out

#- 271 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'axCNL5uj' \
    --userId 'PrSdXiyD' \
    > test.out 2>&1
eval_tap $? 271 'DeleteUserSubscription' test.out

#- 272 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wjEjT4hk' \
    --userId 'TgA0zeqW' \
    --force 'true' \
    --body '{"immediate": true, "reason": "4QNTxhF5"}' \
    > test.out 2>&1
eval_tap $? 272 'CancelSubscription' test.out

#- 273 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '4IYvXMgP' \
    --userId 'v5DFWDx4' \
    --body '{"grantDays": 14, "reason": "qfDKLiVe"}' \
    > test.out 2>&1
eval_tap $? 273 'GrantDaysToSubscription' test.out

#- 274 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hQR8dCjE' \
    --userId 'nxIC8lj6' \
    --excludeFree 'true' \
    --limit '2' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionBillingHistories' test.out

#- 275 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'WrbtId0X' \
    --userId 'Y0dNKFuR' \
    --body '{"additionalData": {"cardSummary": "SI2hVyXy"}, "authorisedTime": "1980-08-05T00:00:00Z", "chargebackReversedTime": "1998-11-08T00:00:00Z", "chargebackTime": "1984-02-26T00:00:00Z", "chargedTime": "1978-06-18T00:00:00Z", "createdTime": "1978-10-23T00:00:00Z", "currency": {"currencyCode": "NF4uTfl7", "currencySymbol": "GG03paKC", "currencyType": "REAL", "decimals": 40, "namespace": "WjVHjdV5"}, "customParameters": {"g1QXA3iJ": {}, "MdPXX8H9": {}, "izZh9o9M": {}}, "extOrderNo": "MmpRx8eb", "extTxId": "wCI1BoJP", "extUserId": "K0Q6tDVy", "issuedAt": "1989-05-15T00:00:00Z", "metadata": {"RHFexMEX": "Te5682Z2", "yIGdb744": "V0UAcp91", "mtlv1gwE": "LJqqVddo"}, "namespace": "zjllB7d6", "nonceStr": "o0K9PXoE", "paymentMethod": "shGhyGuU", "paymentMethodFee": 39, "paymentOrderNo": "IrKZLb5G", "paymentProvider": "STRIPE", "paymentProviderFee": 17, "paymentStationUrl": "VlIiAjZy", "price": 80, "refundedTime": "1989-01-21T00:00:00Z", "salesTax": 58, "sandbox": false, "sku": "T3NMJPwJ", "status": "CHARGEBACK", "statusReason": "twdTnVac", "subscriptionId": "1CSQPc2A", "subtotalPrice": 72, "targetNamespace": "SILW70GJ", "targetUserId": "Rw4cUbuJ", "tax": 23, "totalPrice": 17, "totalTax": 94, "txEndTime": "1980-10-02T00:00:00Z", "type": "hh7t74q8", "userId": "CbYDRhAy", "vat": 3}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserSubscriptionNotification' test.out

#- 276 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'Cnyen2c0' \
    --namespace $AB_NAMESPACE \
    --userId 'tFADhWGN' \
    --body '{"count": 80, "orderNo": "1VW89hu7"}' \
    > test.out 2>&1
eval_tap $? 276 'AcquireUserTicket' test.out

#- 277 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '3yUjcN5G' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserCurrencyWallets' test.out

#- 278 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'QIKZSwyC' \
    --namespace $AB_NAMESPACE \
    --userId 'e0vPPQ4t' \
    --body '{"allowOverdraft": true, "amount": 22, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"MeGDJsmT": {}, "cQ31pfa8": {}, "4XoTmJCJ": {}}, "reason": "domZTnIN"}' \
    > test.out 2>&1
eval_tap $? 278 'DebitUserWalletByCurrencyCode' test.out

#- 279 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'EfIgwDcW' \
    --namespace $AB_NAMESPACE \
    --userId '3rbzxXot' \
    --limit '12' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 279 'ListUserCurrencyTransactions' test.out

#- 280 CheckWallet
eval_tap 0 280 'CheckWallet # SKIP deprecated' test.out

#- 281 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'b7NRIjIq' \
    --namespace $AB_NAMESPACE \
    --userId 'NhZ2yDtH' \
    --body '{"amount": 12, "expireAt": "1974-05-06T00:00:00Z", "metadata": {"1KQ14CM9": {}, "CD3WKro6": {}, "hjwnQq5y": {}}, "origin": "Epic", "reason": "XH3VFxTA", "source": "REDEEM_CODE"}' \
    > test.out 2>&1
eval_tap $? 281 'CreditUserWallet' test.out

#- 282 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'XTGlPZ6o' \
    --namespace $AB_NAMESPACE \
    --userId 'qQDghaPN' \
    --body '{"amount": 51, "metadata": {"Myx6FBpL": {}, "Evt5rNmn": {}, "OCEUTV1f": {}}, "walletPlatform": "Xbox"}' \
    > test.out 2>&1
eval_tap $? 282 'PayWithUserWallet' test.out

#- 283 GetUserWallet
eval_tap 0 283 'GetUserWallet # SKIP deprecated' test.out

#- 284 DebitUserWallet
eval_tap 0 284 'DebitUserWallet # SKIP deprecated' test.out

#- 285 DisableUserWallet
eval_tap 0 285 'DisableUserWallet # SKIP deprecated' test.out

#- 286 EnableUserWallet
eval_tap 0 286 'EnableUserWallet # SKIP deprecated' test.out

#- 287 ListUserWalletTransactions
eval_tap 0 287 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 288 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'DpGPTVAL' \
    > test.out 2>&1
eval_tap $? 288 'ListViews' test.out

#- 289 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'ktuTKIJY' \
    --body '{"displayOrder": 12, "localizations": {"3g8TwF5Y": {"description": "b3Fdg2jQ", "localExt": {"48Lh4XVp": {}, "hkDXFRZG": {}, "lgGBlvqZ": {}}, "longDescription": "RCys9xoR", "title": "sFDPud7O"}, "48Ap4kUM": {"description": "151vSP20", "localExt": {"PqX2d7nj": {}, "lUOya8Wp": {}, "IiEhXNuR": {}}, "longDescription": "NJj6ziOl", "title": "wiRMvyUK"}, "B3Ep2ZuC": {"description": "dERKXcPN", "localExt": {"psqYgblL": {}, "eIApquNB": {}, "qiiiHpBP": {}}, "longDescription": "ZyzvLnio", "title": "Jr8HMWRc"}}, "name": "fToogi21"}' \
    > test.out 2>&1
eval_tap $? 289 'CreateView' test.out

#- 290 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'vCz00K85' \
    --storeId 'deRdedZ8' \
    > test.out 2>&1
eval_tap $? 290 'GetView' test.out

#- 291 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'jGSuEKze' \
    --storeId 'uv8yIeD4' \
    --body '{"displayOrder": 10, "localizations": {"Oiz6zj8x": {"description": "nmdtH1A5", "localExt": {"7AG3UPNX": {}, "MMJ6RZ7o": {}, "p6mpOg7B": {}}, "longDescription": "cPO99Vw3", "title": "62UlCF9v"}, "T70lf1Rt": {"description": "D2WvnifO", "localExt": {"0CS7iUuj": {}, "p7z4z4Vw": {}, "zEO1Cfn7": {}}, "longDescription": "EKRTIX2g", "title": "asmenUMj"}, "cmkWe814": {"description": "ZJrGXg1e", "localExt": {"YKcJwfkv": {}, "TOTGByXs": {}, "BHJAmnka": {}}, "longDescription": "yZ3idPVX", "title": "Ty82eDIJ"}}, "name": "hmrzlclR"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdateView' test.out

#- 292 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'lF8XY9Zh' \
    --storeId '4yMKR1xB' \
    > test.out 2>&1
eval_tap $? 292 'DeleteView' test.out

#- 293 QueryWallets
eval_tap 0 293 'QueryWallets # SKIP deprecated' test.out

#- 294 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 92, "expireAt": "1975-01-25T00:00:00Z", "metadata": {"cNUJlnOz": {}, "aMA0u3a9": {}, "m7EMUrzz": {}}, "origin": "Oculus", "reason": "Z1vf5j0f", "source": "REWARD"}, "currencyCode": "kLjnnEVR", "userIds": ["zQmGB35l", "2NbshokY", "sih8sVuz"]}, {"creditRequest": {"amount": 48, "expireAt": "1993-11-01T00:00:00Z", "metadata": {"doG0HFFF": {}, "TUBdJmqJ": {}, "9YW6vveH": {}}, "origin": "Twitch", "reason": "YuupOpPR", "source": "OTHER"}, "currencyCode": "eLXxdWeW", "userIds": ["zXFWDme4", "FDmvHGzV", "HuhAdmiY"]}, {"creditRequest": {"amount": 11, "expireAt": "1991-01-16T00:00:00Z", "metadata": {"D3Wyz07M": {}, "jOW991T8": {}, "NinbsJTx": {}}, "origin": "Xbox", "reason": "0qAkkioM", "source": "REDEEM_CODE"}, "currencyCode": "fqXM9Bpf", "userIds": ["3n6ctjj9", "huvIGqz6", "axvTsEjb"]}]' \
    > test.out 2>&1
eval_tap $? 294 'BulkCredit' test.out

#- 295 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "3akU5ufM", "request": {"allowOverdraft": false, "amount": 35, "balanceOrigin": "Twitch", "balanceSource": "OTHER", "metadata": {"7W3xeMVJ": {}, "xwiURtpw": {}, "MXdpWbqe": {}}, "reason": "2jMIDB0T"}, "userIds": ["lYQGZA4t", "R98PPaLu", "wRgKpFIa"]}, {"currencyCode": "i1408ImY", "request": {"allowOverdraft": false, "amount": 64, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"cNl8qiiP": {}, "dHXny6hG": {}, "o9AsMkkS": {}}, "reason": "mVkbmUQ7"}, "userIds": ["0qbNuHFQ", "uaBl1G3X", "8cGE8efo"]}, {"currencyCode": "zPYxIKBl", "request": {"allowOverdraft": true, "amount": 93, "balanceOrigin": "GooglePlay", "balanceSource": "DLC_REVOCATION", "metadata": {"D77MY5kP": {}, "whPHoz81": {}, "ERQF1KVc": {}}, "reason": "YqNX0bhR"}, "userIds": ["3kNIRsvQ", "lwgfpUrQ", "G5VtU2Q2"]}]' \
    > test.out 2>&1
eval_tap $? 295 'BulkDebit' test.out

#- 296 GetWallet
eval_tap 0 296 'GetWallet # SKIP deprecated' test.out

#- 297 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'iVvp4ddq' \
    --end 'BXg6OPQg' \
    --start '6AMktmIh' \
    > test.out 2>&1
eval_tap $? 297 'SyncOrders' test.out

#- 298 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["RpkBtLgT", "md4ZdfDb", "IMrhqWW0"], "apiKey": "aJ5vhxaT", "authoriseAsCapture": true, "blockedPaymentMethods": ["BMU2FYx5", "7QYY2KzM", "RurC8qCr"], "clientKey": "fdSr1A55", "dropInSettings": "mIH0eOgO", "liveEndpointUrlPrefix": "cNBDD40J", "merchantAccount": "FEuAB3vR", "notificationHmacKey": "gFtrvCnC", "notificationPassword": "ywfKxvKn", "notificationUsername": "nHmliMEi", "returnUrl": "YRMOCe9K", "settings": "Y92g601x"}' \
    > test.out 2>&1
eval_tap $? 298 'TestAdyenConfig' test.out

#- 299 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "nlgJh2gW", "privateKey": "sQD4wgGT", "publicKey": "iE07UGwN", "returnUrl": "hlFmIjL4"}' \
    > test.out 2>&1
eval_tap $? 299 'TestAliPayConfig' test.out

#- 300 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "uoanVzVJ", "secretKey": "wCi4owrQ"}' \
    > test.out 2>&1
eval_tap $? 300 'TestCheckoutConfig' test.out

#- 301 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Nx497CKK' \
    --region 'Rsr4doMs' \
    > test.out 2>&1
eval_tap $? 301 'DebugMatchedPaymentMerchantConfig' test.out

#- 302 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "yLEIGk1X", "clientSecret": "wnluLBz0", "returnUrl": "XJTGio9z", "webHookId": "FZwneQoR"}' \
    > test.out 2>&1
eval_tap $? 302 'TestPayPalConfig' test.out

#- 303 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["8wVyXd0N", "Mdx2ctR3", "Jdybe6hx"], "publishableKey": "7qRMhxtX", "secretKey": "3sm5EHSP", "webhookSecret": "TtLUNoK6"}' \
    > test.out 2>&1
eval_tap $? 303 'TestStripeConfig' test.out

#- 304 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "uYMB58p2", "key": "4tKxVbw9", "mchid": "l9nPZ7Hy", "returnUrl": "x5Drh5ng"}' \
    > test.out 2>&1
eval_tap $? 304 'TestWxPayConfig' test.out

#- 305 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "TPioHH4s", "flowCompletionUrl": "0E10Mc6t", "merchantId": 7, "projectId": 98, "projectSecretKey": "ReFx8TJu"}' \
    > test.out 2>&1
eval_tap $? 305 'TestXsollaConfig' test.out

#- 306 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id '74iuj1KR' \
    > test.out 2>&1
eval_tap $? 306 'GetPaymentMerchantConfig' test.out

#- 307 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '8u6AxG4x' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["45K4CuN4", "k7WXq9FB", "kBZtWd4a"], "apiKey": "I8cWlY2q", "authoriseAsCapture": true, "blockedPaymentMethods": ["CHUArN1O", "jO47vJc4", "iQeRPkqJ"], "clientKey": "3A6pmSr9", "dropInSettings": "Vu7jeCY9", "liveEndpointUrlPrefix": "iNH4u9Rf", "merchantAccount": "nKGbgjt1", "notificationHmacKey": "Pn5CwcX7", "notificationPassword": "9BO6ob4S", "notificationUsername": "Xof4mMlO", "returnUrl": "GueN6MGA", "settings": "i91i60Bp"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateAdyenConfig' test.out

#- 308 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'nqGN988u' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 308 'TestAdyenConfigById' test.out

#- 309 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'sT93BduB' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "HbXYa449", "privateKey": "gIzVC3ev", "publicKey": "imNnJAHJ", "returnUrl": "6HW6Jxy9"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateAliPayConfig' test.out

#- 310 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '3Zl2gxOo' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 310 'TestAliPayConfigById' test.out

#- 311 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id '0Yooe4LF' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "1LLeTP2S", "secretKey": "P8wez6tw"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateCheckoutConfig' test.out

#- 312 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'haADNMB8' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestCheckoutConfigById' test.out

#- 313 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'HQYQTIu6' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "6I7YSnmK", "clientSecret": "6G31Or6B", "returnUrl": "ZCXmXwbq", "webHookId": "XzQjl64z"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdatePayPalConfig' test.out

#- 314 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'hAl9BgIm' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 314 'TestPayPalConfigById' test.out

#- 315 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'BUfvxOzu' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["12VL8mUy", "yGQuYlrt", "nXmNna7C"], "publishableKey": "dM5CAUmA", "secretKey": "vOBpyxVx", "webhookSecret": "EZkra2D2"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateStripeConfig' test.out

#- 316 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'kv1fbHwc' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfigById' test.out

#- 317 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'WqXJp56y' \
    --validate 'true' \
    --body '{"appId": "Ky3fmwzs", "key": "GdUI4MUJ", "mchid": "BsG0qtIe", "returnUrl": "bnroUTdM"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfig' test.out

#- 318 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'I2aiQpPA' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 318 'UpdateWxPayConfigCert' test.out

#- 319 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'ofVjGrC4' \
    > test.out 2>&1
eval_tap $? 319 'TestWxPayConfigById' test.out

#- 320 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'sAgCnBgH' \
    --validate 'false' \
    --body '{"apiKey": "oNfMQ7gJ", "flowCompletionUrl": "Rnrl1GoR", "merchantId": 59, "projectId": 25, "projectSecretKey": "HvpkScel"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaConfig' test.out

#- 321 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'A9et0wZn' \
    > test.out 2>&1
eval_tap $? 321 'TestXsollaConfigById' test.out

#- 322 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '7gyCtdbl' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateXsollaUIConfig' test.out

#- 323 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '51' \
    --namespace 'OZv0p4NW' \
    --offset '54' \
    --region 'h9njtvoQ' \
    > test.out 2>&1
eval_tap $? 323 'QueryPaymentProviderConfig' test.out

#- 324 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "cYlN0prr", "region": "mX0Vrt1u", "sandboxTaxJarApiToken": "FBQmPv3J", "specials": ["STRIPE", "ADYEN", "PAYPAL"], "taxJarApiToken": "usm0Vr9V", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 324 'CreatePaymentProviderConfig' test.out

#- 325 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 325 'GetAggregatePaymentProviders' test.out

#- 326 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace '4gUnYeQR' \
    --region 'mxElxDe4' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentProviderConfig' test.out

#- 327 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 327 'GetSpecialPaymentProviders' test.out

#- 328 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'A2vwvhcn' \
    --body '{"aggregate": "ADYEN", "namespace": "vgAANEMG", "region": "f3dHmAsr", "sandboxTaxJarApiToken": "bOErdKsc", "specials": ["XSOLLA", "XSOLLA", "ALIPAY"], "taxJarApiToken": "wY75BXX5", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 328 'UpdatePaymentProviderConfig' test.out

#- 329 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'SUhGhu0F' \
    > test.out 2>&1
eval_tap $? 329 'DeletePaymentProviderConfig' test.out

#- 330 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxConfig' test.out

#- 331 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "rFoYIUCg", "taxJarApiToken": "H1QHBKTl", "taxJarEnabled": false, "taxJarProductCodesMapping": {"dKMhOIzR": "USo51q29", "Ayi6syh6": "NsJpd98W", "jcgpJcCx": "DXw6QRny"}}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePaymentTaxConfig' test.out

#- 332 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'EWBNDO2B' \
    --end 'feH5oH6d' \
    --start 'nEVL01u9' \
    > test.out 2>&1
eval_tap $? 332 'SyncPaymentOrders' test.out

#- 333 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'j4CHJjJY' \
    --storeId 'ONQkuugD' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRootCategories' test.out

#- 334 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'gizjKBaL' \
    --storeId 'la8LpxiM' \
    > test.out 2>&1
eval_tap $? 334 'DownloadCategories' test.out

#- 335 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'EmOUMSwd' \
    --namespace $AB_NAMESPACE \
    --language 'rrcjyR94' \
    --storeId 'xgowBeaf' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetCategory' test.out

#- 336 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'XIajgUN5' \
    --namespace $AB_NAMESPACE \
    --language 'Dv3lf7lH' \
    --storeId '8CmM5e3p' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetChildCategories' test.out

#- 337 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'torJ32sl' \
    --namespace $AB_NAMESPACE \
    --language 'WMbOi0Y3' \
    --storeId '9apK37JR' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetDescendantCategories' test.out

#- 338 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 338 'PublicListCurrencies' test.out

#- 339 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'XBOX' \
    > test.out 2>&1
eval_tap $? 339 'GetIAPItemMapping' test.out

#- 340 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'oOf9SwqG' \
    --region '5eD5dRVX' \
    --storeId '87QFCw3h' \
    --appId 'hawqImZT' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItemByAppId' test.out

#- 341 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --baseAppId 'H2o1ESzr' \
    --categoryPath 'DyqwC19F' \
    --features 'iVspwgEn' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'ttCYC3AQ' \
    --limit '53' \
    --offset '21' \
    --region '5F7aKOWZ' \
    --sortBy '["createdAt:asc", "displayOrder:asc", "displayOrder:desc"]' \
    --storeId 'W7C5mEdx' \
    --tags 'elQCwfn4' \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryItems' test.out

#- 342 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'ZD3eNvGv' \
    --region 'eSOZcLVY' \
    --storeId 'axT1mCpp' \
    --sku '0SLervyU' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetItemBySku' test.out

#- 343 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'HVJWf45x' \
    --storeId 'XS2S4iFd' \
    --itemIds 'P0C96ynP' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetEstimatedPrice' test.out

#- 344 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'PB3sz9Q8' \
    --region 'Sq5iEwj5' \
    --storeId 'YfyGVvBk' \
    --itemIds '1Ly59nar' \
    > test.out 2>&1
eval_tap $? 344 'PublicBulkGetItems' test.out

#- 345 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["YKFxCrbF", "7xEtJHh3", "VED3BY4R"]}' \
    > test.out 2>&1
eval_tap $? 345 'PublicValidateItemPurchaseCondition' test.out

#- 346 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'SEASON' \
    --limit '65' \
    --offset '56' \
    --region '0Nt9i203' \
    --storeId 'zIstmpYe' \
    --keyword 'AdLPrRtR' \
    --language 'LPOLUxOq' \
    > test.out 2>&1
eval_tap $? 346 'PublicSearchItems' test.out

#- 347 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Agd5S34s' \
    --namespace $AB_NAMESPACE \
    --language '90pbCv3V' \
    --region 'zHEArHqO' \
    --storeId 'e118praV' \
    > test.out 2>&1
eval_tap $? 347 'PublicGetApp' test.out

#- 348 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'ri16oV4O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetItemDynamicData' test.out

#- 349 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '6ch106XH' \
    --namespace $AB_NAMESPACE \
    --language 'YX4rfRk4' \
    --populateBundle 'false' \
    --region 'oGfc1k4A' \
    --storeId 'yqhz0TXi' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetItem' test.out

#- 350 GetPaymentCustomization
eval_tap 0 350 'GetPaymentCustomization # SKIP deprecated' test.out

#- 351 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "G8qG7v6a", "paymentProvider": "CHECKOUT", "returnUrl": "qOJRDtTQ", "ui": "GlQy6eZz", "zipCode": "YWmRS2Fk"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetPaymentUrl' test.out

#- 352 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uq7i4H7Q' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetPaymentMethods' test.out

#- 353 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'XHWDsSm8' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUnpaidPaymentOrder' test.out

#- 354 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PnPWxGqW' \
    --paymentProvider 'CHECKOUT' \
    --zipCode 'MKFBUZvP' \
    --body '{"token": "qxpXBGoT"}' \
    > test.out 2>&1
eval_tap $? 354 'Pay' test.out

#- 355 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'EAXAyJKW' \
    > test.out 2>&1
eval_tap $? 355 'PublicCheckPaymentOrderPaidStatus' test.out

#- 356 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'WALLET' \
    --region 'lrLAfKhY' \
    > test.out 2>&1
eval_tap $? 356 'GetPaymentPublicConfig' test.out

#- 357 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'dbuINC6j' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetQRCode' test.out

#- 358 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'mVB96Yc2' \
    --foreinginvoice 'klH5kXXp' \
    --invoiceId 'Y1LKG6V7' \
    --payload 'lJgDIjYJ' \
    --redirectResult 'Q2S00pCr' \
    --resultCode 'rozeTchj' \
    --sessionId 'fMzNgmBA' \
    --status 'wjxHhiQC' \
    --token 'q81i4bqf' \
    --type 'CZz1qOcy' \
    --userId 'xdtkVcfH' \
    --orderNo 'TJx3bQXx' \
    --paymentOrderNo 'GGFVNHBE' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'FC5Xop3e' \
    > test.out 2>&1
eval_tap $? 358 'PublicNormalizePaymentReturnUrl' test.out

#- 359 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'O7CMUUtA' \
    --paymentOrderNo 'wy93J4Iq' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 359 'GetPaymentTaxValue' test.out

#- 360 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'c37esA4L' \
    > test.out 2>&1
eval_tap $? 360 'GetRewardByCode' test.out

#- 361 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '7d2VwMC5' \
    --limit '12' \
    --offset '87' \
    --sortBy '["namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 361 'QueryRewards1' test.out

#- 362 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'c4dgCyH6' \
    > test.out 2>&1
eval_tap $? 362 'GetReward1' test.out

#- 363 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicListStores' test.out

#- 364 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["lE7pPj3c", "fcD8PYdA", "smK2PbCE"]' \
    --itemIds '["zp3zb02d", "ldEZqaKO", "0bKeru7b"]' \
    --skus '["IlvF6y3S", "pOp0OUdI", "ZEB2SxB8"]' \
    > test.out 2>&1
eval_tap $? 364 'PublicExistsAnyMyActiveEntitlement' test.out

#- 365 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'hb7stjyY' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 366 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'EB39xX5v' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 367 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'QIeIAbKj' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 368 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["I1e6tiVl", "IgcxgKZa", "QXl1HVHE"]' \
    --itemIds '["6wTVhu8X", "hecPseEF", "ApjBMPfE"]' \
    --skus '["OSwkl1nM", "nhQqpLbu", "WHgY4MB6"]' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetEntitlementOwnershipToken' test.out

#- 369 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "wEoAmnEo", "language": "FMUP-fKYK_Gn", "region": "eruXGBfZ"}' \
    > test.out 2>&1
eval_tap $? 369 'SyncTwitchDropsEntitlement' test.out

#- 370 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'zIp5WhHw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyWallet' test.out

#- 371 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '2ma9kBNm' \
    --body '{"epicGamesJwtToken": "lfMwJtFW"}' \
    > test.out 2>&1
eval_tap $? 371 'SyncEpicGameDLC' test.out

#- 372 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '21KwgoXI' \
    > test.out 2>&1
eval_tap $? 372 'SyncOculusDLC' test.out

#- 373 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'K6HbS5tk' \
    --body '{"serviceLabel": 29}' \
    > test.out 2>&1
eval_tap $? 373 'PublicSyncPsnDlcInventory' test.out

#- 374 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'IPBpoMIr' \
    --body '{"serviceLabels": [71, 86, 87]}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 375 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'AJvzKLdK' \
    --body '{"appId": "N1M6AeWl", "steamId": "kDX91Sva"}' \
    > test.out 2>&1
eval_tap $? 375 'SyncSteamDLC' test.out

#- 376 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'FZxzt68h' \
    --body '{"xstsToken": "r9S92GU7"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncXboxDLC' test.out

#- 377 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'W1bQkxbX' \
    --appType 'DLC' \
    --entitlementClazz 'ENTITLEMENT' \
    --entitlementName 'ztQOoWIh' \
    --features '["LlDz9CM4", "wq8Uxv6b", "5e9yKKpL"]' \
    --itemId '["DcZn4zpJ", "aADxfoPq", "3tS8NSmA"]' \
    --limit '17' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 377 'PublicQueryUserEntitlements' test.out

#- 378 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'DmDD3TYi' \
    --appId '8pyGlWyB' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserAppEntitlementByAppId' test.out

#- 379 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'mhFmbQtn' \
    --limit '38' \
    --offset '32' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 379 'PublicQueryUserEntitlementsByAppType' test.out

#- 380 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'fSoDlFFl' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'q3xhlKhp' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserEntitlementByItemId' test.out

#- 381 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'pMrsdcLF' \
    --entitlementClazz 'MEDIA' \
    --sku 'rbT9UPu9' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementBySku' test.out

#- 382 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4sR0QPkk' \
    --appIds '["b8mCtifv", "60o1OuEt", "Ba9UsNVk"]' \
    --itemIds '["40L10hN4", "EgpnrpZJ", "2g5HQ8nz"]' \
    --skus '["bWfjW3tG", "Mk0OaCbc", "o2KIk0Jk"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicExistsAnyUserActiveEntitlement' test.out

#- 383 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'wReETPPc' \
    --appId 'jtpfWuq8' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 384 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId '33AUNgaX' \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'fVU15fJx' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 385 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'bELBlgsp' \
    --ids '["WqrT7VHa", "jAIE8bJJ", "3GXt2Zff"]' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 386 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'cujlAdPe' \
    --entitlementClazz 'OPTIONBOX' \
    --sku '9cVZExO3' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 387 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'kAXcknKJ' \
    --namespace $AB_NAMESPACE \
    --userId 'KvekIyik' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserEntitlement' test.out

#- 388 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '4k6gYl33' \
    --namespace $AB_NAMESPACE \
    --userId 'TW4n9VVp' \
    --body '{"options": ["xrLNECNf", "zyYESUoq", "309lWSzs"], "requestId": "SBUUcu9k", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 388 'PublicConsumeUserEntitlement' test.out

#- 389 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'tk3InMQL' \
    --namespace $AB_NAMESPACE \
    --userId 'Xl7IzEN5' \
    --body '{"requestId": "6CDwUNdr", "useCount": 16}' \
    > test.out 2>&1
eval_tap $? 389 'PublicSellUserEntitlement' test.out

#- 390 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'g2NeCdSV' \
    --body '{"code": "6e4JKgRa", "language": "twg-vyBO", "region": "QmktNC1j"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicRedeemCode' test.out

#- 391 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'w1Dxmks2' \
    --body '{"excludeOldTransactions": false, "language": "IN-615", "productId": "wR7IA3W5", "receiptData": "qeUSHgjX", "region": "EcHofSQZ", "transactionId": "RD5WmfKi"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicFulfillAppleIAPItem' test.out

#- 392 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'bn7gDa0e' \
    --body '{"epicGamesJwtToken": "J3sd3EyQ"}' \
    > test.out 2>&1
eval_tap $? 392 'SyncEpicGamesInventory' test.out

#- 393 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '9Ge1VVIn' \
    --body '{"autoAck": true, "language": "yUwR_zV", "orderId": "O58VGRQ6", "packageName": "w4UPFJA7", "productId": "EPhDYZb3", "purchaseTime": 23, "purchaseToken": "lxOPWkMn", "region": "pYxwspqd"}' \
    > test.out 2>&1
eval_tap $? 393 'PublicFulfillGoogleIAPItem' test.out

#- 394 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '4lCL7qOv' \
    > test.out 2>&1
eval_tap $? 394 'SyncOculusConsumableEntitlements' test.out

#- 395 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'L4ycVrCU' \
    --body '{"currencyCode": "GHH1zwjH", "price": 0.9203555390780159, "productId": "gJA5UpmH", "serviceLabel": 10}' \
    > test.out 2>&1
eval_tap $? 395 'PublicReconcilePlayStationStore' test.out

#- 396 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'oIIhNmYa' \
    --body '{"currencyCode": "OOJpW1gx", "price": 0.47143300042393477, "productId": "ICrTcfXG", "serviceLabels": [48, 17, 44]}' \
    > test.out 2>&1
eval_tap $? 396 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 397 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'mhmukTBY' \
    --body '{"appId": "xW35Yrfa", "currencyCode": "6I76RKEv", "language": "miR_Gq", "price": 0.528535788007206, "productId": "TZ88PTwi", "region": "1KtrBUdq", "steamId": "9IhxOp69"}' \
    > test.out 2>&1
eval_tap $? 397 'SyncSteamInventory' test.out

#- 398 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q6WQM3p0' \
    --body '{"gameId": "hRjmSrRA", "language": "bhor", "region": "LKept3Sd"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncTwitchDropsEntitlement1' test.out

#- 399 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'isjXfL64' \
    --body '{"currencyCode": "QD0GADbN", "price": 0.735832212920553, "productId": "nTZkVlf3", "xstsToken": "mRq76DI4"}' \
    > test.out 2>&1
eval_tap $? 399 'SyncXboxInventory' test.out

#- 400 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '27GG67SP' \
    --itemId 'S0DbTBec' \
    --limit '50' \
    --offset '84' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 400 'PublicQueryUserOrders' test.out

#- 401 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'TKFZLFRV' \
    --body '{"currencyCode": "ZmjI8lM3", "discountedPrice": 47, "ext": {"7P07Ds1e": {}, "O55tgTB7": {}, "lmI47MoO": {}}, "itemId": "EezT0yGV", "language": "ML-Kxus_ax", "price": 57, "quantity": 92, "region": "2xSZvK8s", "returnUrl": "d4O3EUXW", "sectionId": "5jtDpDOI"}' \
    > test.out 2>&1
eval_tap $? 401 'PublicCreateUserOrder' test.out

#- 402 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZjAAyrGh' \
    --userId '9yKPZrPH' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserOrder' test.out

#- 403 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vImg6Jbb' \
    --userId '8ER80UlZ' \
    > test.out 2>&1
eval_tap $? 403 'PublicCancelUserOrder' test.out

#- 404 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'Vo5jQsbw' \
    --userId '2vfg42zQ' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserOrderHistories' test.out

#- 405 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'VFBtWDHz' \
    --userId 'wLeGHiCc' \
    > test.out 2>&1
eval_tap $? 405 'PublicDownloadUserOrderReceipt' test.out

#- 406 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '0pmNpyBA' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetPaymentAccounts' test.out

#- 407 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'AcKX4ohY' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'T156yKKP' \
    > test.out 2>&1
eval_tap $? 407 'PublicDeletePaymentAccount' test.out

#- 408 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'uT2pMAcs' \
    --language 'tdO8kZjr' \
    --region 'RKBOKwMy' \
    --storeId 'uLOr4zDj' \
    --viewId 'v3a3RexH' \
    > test.out 2>&1
eval_tap $? 408 'PublicListActiveSections' test.out

#- 409 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'kcGjfPLF' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '32iqSJOW' \
    --limit '46' \
    --offset '23' \
    --sku '8VZy8GYV' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 409 'PublicQueryUserSubscriptions' test.out

#- 410 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'LVVPoct1' \
    --body '{"currencyCode": "yzyWL8AH", "itemId": "umL1skA4", "language": "As", "region": "PTK2Hk9G", "returnUrl": "TAZlKRk2", "source": "igNtf08r"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSubscribeSubscription' test.out

#- 411 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'F6R3MeVW' \
    --itemId 's3SqQDD0' \
    > test.out 2>&1
eval_tap $? 411 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 412 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TcndUmBz' \
    --userId 'ix2N9FZm' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserSubscription' test.out

#- 413 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fdZsjKMb' \
    --userId 'BUVtuaZL' \
    > test.out 2>&1
eval_tap $? 413 'PublicChangeSubscriptionBillingAccount' test.out

#- 414 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'XgDtyYak' \
    --userId 'fHDDnIVb' \
    --body '{"immediate": true, "reason": "vu3cvsQE"}' \
    > test.out 2>&1
eval_tap $? 414 'PublicCancelSubscription' test.out

#- 415 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QSh2O9KA' \
    --userId 'jeGtBqeF' \
    --excludeFree 'false' \
    --limit '68' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetUserSubscriptionBillingHistories' test.out

#- 416 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'Q9WP5XBF' \
    --language 'OdKXZa1B' \
    --storeId 'ZTG9KXsR' \
    > test.out 2>&1
eval_tap $? 416 'PublicListViews' test.out

#- 417 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'IXtIZMSM' \
    --namespace $AB_NAMESPACE \
    --userId 'lx3QCez7' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetWallet' test.out

#- 418 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'pThwhjFS' \
    --namespace $AB_NAMESPACE \
    --userId 'ldyksKjh' \
    --limit '87' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 418 'PublicListUserWalletTransactions' test.out

#- 419 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'hVsTThk7' \
    --baseAppId 'Ppi4Jqiu' \
    --categoryPath 'cgvKm9nb' \
    --features 'iRQYmEbK' \
    --includeSubCategoryItem 'false' \
    --itemName 'YiIQeeSA' \
    --itemStatus 'INACTIVE' \
    --itemType 'APP' \
    --limit '22' \
    --offset '32' \
    --region 'ExxGRdfw' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt", "updatedAt:asc"]' \
    --storeId 'abmIe3td' \
    --tags '586XI6Zz' \
    --targetNamespace 'xptX6C2Y' \
    > test.out 2>&1
eval_tap $? 419 'QueryItems1' test.out

#- 420 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '4N4mH8ix' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 420 'ImportStore1' test.out

#- 421 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '0a4LHP6T' \
    --body '{"itemIds": ["4WAqY7UR", "60sACMKt", "E7WMq4v0"]}' \
    > test.out 2>&1
eval_tap $? 421 'ExportStore1' test.out

#- 422 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '58cwPvUY' \
    --body '{"metadata": {"To2QO39j": {}, "PIEagAZx": {}, "YLvIHmOu": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "MIm5D0Pt", "namespace": "u2gIThNZ"}, "item": {"itemId": "TIhUDKn0", "itemSku": "d9Az5WpE", "itemType": "zWNeFZSG"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "QLK5OCXG", "namespace": "y2q2C9dg"}, "item": {"itemId": "xpGLUeE8", "itemSku": "AjuGkQjq", "itemType": "z1oH3ZUC"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "qqYkYYpy", "namespace": "EbkZYlY1"}, "item": {"itemId": "j2mVh8Ck", "itemSku": "k4w10Qe7", "itemType": "BqsVJPVu"}, "quantity": 64, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "aSebML6x"}' \
    > test.out 2>&1
eval_tap $? 422 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE