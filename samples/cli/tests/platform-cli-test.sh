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
echo "1..484"

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
    --id 'JNbZQLXI' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'sfc5hejy' \
    --body '{"grantDays": "U3IGa1Pv"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id '9A6d4j9o' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'DdOii6MR' \
    --body '{"grantDays": "4ESxvRyE"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "aif0TtJl", "dryRun": true, "fulfillmentUrl": "JKBEFtzi", "itemType": "SEASON", "purchaseConditionUrl": "TmQpxEiY"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'oeIQdbPE' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id '8JmVp20j' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'FLda7wuZ' \
    --body '{"clazz": "XQCn0Dyq", "dryRun": true, "fulfillmentUrl": "NRWCJnvi", "purchaseConditionUrl": "2lggqTL5"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'jwXpe2zI' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'rQy5Wogx' \
    --offset '58' \
    --tag 'HGrjwJ71' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Pd1cIbmu", "discountConfig": {"categories": [{"categoryPath": "eCuZISpJ", "includeSubCategories": false}, {"categoryPath": "rgkGhSI8", "includeSubCategories": true}, {"categoryPath": "J5rRW0og", "includeSubCategories": false}], "currencyCode": "hAaetmnE", "currencyNamespace": "gLJtvXxn", "discountAmount": 0, "discountPercentage": 33, "discountType": "PERCENTAGE", "items": [{"itemId": "bJlGtkrf", "itemName": "tr7sJgLP"}, {"itemId": "HzRvLnUz", "itemName": "WBp6sYMn"}, {"itemId": "FffkUvpV", "itemName": "t3ATxfqf"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 5, "itemId": "yFbiLqXf", "itemName": "yrZetbZq", "quantity": 82}, {"extraSubscriptionDays": 18, "itemId": "939oFuia", "itemName": "oDH3atox", "quantity": 68}, {"extraSubscriptionDays": 43, "itemId": "dRcknt4w", "itemName": "9YPxUXUq", "quantity": 86}], "maxRedeemCountPerCampaignPerUser": 66, "maxRedeemCountPerCode": 7, "maxRedeemCountPerCodePerUser": 99, "maxSaleCount": 57, "name": "4WtKwBeZ", "redeemEnd": "1977-06-13T00:00:00Z", "redeemStart": "1988-03-23T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["6lUXg6wA", "SKbvEWxz", "RuEc7Soj"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'X34X6qqB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'AcmZzeIM' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cxl2FUwV", "discountConfig": {"categories": [{"categoryPath": "4JDEU4zy", "includeSubCategories": true}, {"categoryPath": "lAnlPTTj", "includeSubCategories": true}, {"categoryPath": "EDC8W4tR", "includeSubCategories": true}], "currencyCode": "57ybn4BI", "currencyNamespace": "5UoUQqSM", "discountAmount": 15, "discountPercentage": 76, "discountType": "AMOUNT", "items": [{"itemId": "e7WJUmHH", "itemName": "ln5zQf4w"}, {"itemId": "Ci6mtW0f", "itemName": "QJ4Y26sE"}, {"itemId": "6GLx9B7l", "itemName": "cCD0ZcqB"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 82, "itemId": "JaM6HdoA", "itemName": "XmUK1iUE", "quantity": 100}, {"extraSubscriptionDays": 7, "itemId": "qTa4aSl0", "itemName": "pGZcalPG", "quantity": 82}, {"extraSubscriptionDays": 23, "itemId": "V5rPyodE", "itemName": "XWvYDDyx", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 59, "maxRedeemCountPerCode": 82, "maxRedeemCountPerCodePerUser": 34, "maxSaleCount": 11, "name": "h1stSVKy", "redeemEnd": "1981-12-08T00:00:00Z", "redeemStart": "1976-09-26T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["n4cRtAGw", "b6lekpRe", "a951YpxN"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'EPFAWz7K' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "wcp9EIKQ", "oldName": "llrkBkkc"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'otWDSyyY' \
    --namespace $AB_NAMESPACE \
    --batchName '5iHwvVZ5' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'gLLdgHdj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetCampaignDynamic' test.out

#- 20 GetCatalogConfig
samples/cli/sample-apps Platform getCatalogConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetCatalogConfig' test.out

#- 21 UpdateCatalogConfig
samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableInventoryCheck": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateCatalogConfig' test.out

#- 22 GetLootBoxPluginConfig
samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxPluginConfig' test.out

#- 23 UpdateLootBoxPluginConfig
samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "TUCC1q0l"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "DMTd6t0l"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateLootBoxPluginConfig' test.out

#- 24 DeleteLootBoxPluginConfig
samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteLootBoxPluginConfig' test.out

#- 25 UplodLootBoxPluginConfigCert
samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 25 'UplodLootBoxPluginConfigCert' test.out

#- 26 GetLootBoxGrpcInfo
samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 26 'GetLootBoxGrpcInfo' test.out

#- 27 GetSectionPluginConfig
samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetSectionPluginConfig' test.out

#- 28 UpdateSectionPluginConfig
samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "Px2ui5aX"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "I9sVID5O"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateSectionPluginConfig' test.out

#- 29 DeleteSectionPluginConfig
samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'DeleteSectionPluginConfig' test.out

#- 30 UploadSectionPluginConfigCert
samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 30 'UploadSectionPluginConfigCert' test.out

#- 31 GetRootCategories
samples/cli/sample-apps Platform getRootCategories \
    --namespace $AB_NAMESPACE \
    --storeId 'OlDjWhgC' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'SOUH5x7k' \
    --body '{"categoryPath": "2bNVTLlR", "localizationDisplayNames": {"UQqjcwoD": "hJHXcfdy", "fJxPFMB2": "4722dLZN", "Tv9Gx7wi": "Tdc84egz"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'ni32m1qV' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath '5620S7jJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'OvEZDCqA' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'GTrkAOFa' \
    --namespace $AB_NAMESPACE \
    --storeId 'W8dbADmh' \
    --body '{"localizationDisplayNames": {"KPVb2ycm": "pPIgLNdS", "dRljmOTE": "zZlgiJZL", "LRsxPnQN": "y5Ofmg89"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath '7vLy9sCV' \
    --namespace $AB_NAMESPACE \
    --storeId 'fWWWJ1Jj' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'qYEazCzn' \
    --namespace $AB_NAMESPACE \
    --storeId 'OEMfORV5' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'WfF1Rm3w' \
    --namespace $AB_NAMESPACE \
    --storeId 'wjnMkScr' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '7UsTtKiV' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'E1wEfcU0' \
    --batchNo '[1, 81, 83]' \
    --code 'fnEhbRqz' \
    --limit '91' \
    --offset '3' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'e28soO54' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "bbW5NmfE", "codeValue": "4nZrkBVY", "quantity": 6}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'q96seS2I' \
    --namespace $AB_NAMESPACE \
    --batchName 'o2shtOf5' \
    --batchNo '[66, 80, 41]' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'o2w3bTaw' \
    --namespace $AB_NAMESPACE \
    --batchName 'yn8lcKhj' \
    --batchNo '[78, 63, 53]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'nst2CLMO' \
    --namespace $AB_NAMESPACE \
    --batchName 'zRo0KpDu' \
    --batchNo '[24, 8, 68]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'kSdXxA16' \
    --namespace $AB_NAMESPACE \
    --code '6gKOEoxV' \
    --limit '46' \
    --offset '4' \
    --userId 'crjyzVnd' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'fA1iZPAz' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'qq93zPcQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'ps35eQ64' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'EnableCode' test.out

#- 48 GetServicePluginConfig
eval_tap 0 48 'GetServicePluginConfig # SKIP deprecated' test.out

#- 49 UpdateServicePluginConfig
eval_tap 0 49 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 50 DeleteServicePluginConfig
eval_tap 0 50 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 51 ListCurrencies
samples/cli/sample-apps Platform listCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "UnKouvEw", "currencySymbol": "6UGeb7qE", "currencyType": "VIRTUAL", "decimals": 52, "localizationDescriptions": {"jQ2GjFWC": "KvWoW5jp", "2uVPwRsm": "DmnBAtP8", "3U7ZVkdB": "dlyuKsRH"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'xat4vsud' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"7UGsPprx": "2ez6O6LT", "9LM5O0Q1": "iQ6xcNJW", "IP0m7hnx": "ciEyvDPE"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'qulPy7FO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '1Kweh16Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode '1SuMofYY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfig
samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfig' test.out

#- 58 UpdateDLCItemConfig
samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"id": "kFpdBaZA", "rewards": [{"currency": {"currencyCode": "hdnCBlqd", "namespace": "GPghn08u"}, "item": {"itemId": "d6Mht0cJ", "itemName": "Tjtt2X0x", "itemSku": "fqQ6zNsx", "itemType": "viSDrdhr"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "iwt6m3Og", "namespace": "eTZcGYJ2"}, "item": {"itemId": "u22reb1f", "itemName": "08ETEGlc", "itemSku": "drX92H1M", "itemType": "vBaPKAlX"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "DuqLxQf9", "namespace": "RLywVZ0A"}, "item": {"itemId": "Fr0OxCc5", "itemName": "Bl4WHppI", "itemSku": "9ETCyykn", "itemType": "XL8pGV77"}, "quantity": 100, "type": "CURRENCY"}]}, {"id": "w2Ps1m1g", "rewards": [{"currency": {"currencyCode": "SFRJIIjK", "namespace": "v95CFhUx"}, "item": {"itemId": "bXOztNYI", "itemName": "Vj1a1muY", "itemSku": "w0woAACy", "itemType": "3nmv7d61"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "QlR959tf", "namespace": "elTKrzBM"}, "item": {"itemId": "vvo8FmMj", "itemName": "iaTres10", "itemSku": "VOtALUBr", "itemType": "pRNX0sZQ"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "G8Jesg42", "namespace": "Wo3rEv1E"}, "item": {"itemId": "7o7woYZw", "itemName": "TwsRPgcd", "itemSku": "ISoPJKFX", "itemType": "GfaIkzr3"}, "quantity": 8, "type": "CURRENCY"}]}, {"id": "tDFQFw4V", "rewards": [{"currency": {"currencyCode": "G25IxJJH", "namespace": "5FLvB2tC"}, "item": {"itemId": "9BYnwGRz", "itemName": "EzcUgVyG", "itemSku": "BnKxPhSh", "itemType": "q4YbPMib"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "kKqM6pOI", "namespace": "rFDp1Wqa"}, "item": {"itemId": "XPYJ9ZWB", "itemName": "Ctz52Uzx", "itemSku": "XOpzXsZe", "itemType": "xLnJOpkS"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "HG9vBQr5", "namespace": "rhWO9Yh0"}, "item": {"itemId": "si44oi6a", "itemName": "kgQCkCHC", "itemSku": "Cud6KMmF", "itemType": "MaACYFIt"}, "quantity": 7, "type": "CURRENCY"}]}]}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateDLCItemConfig' test.out

#- 59 DeleteDLCItemConfig
samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteDLCItemConfig' test.out

#- 60 GetPlatformDLCConfig
samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetPlatformDLCConfig' test.out

#- 61 UpdatePlatformDLCConfig
samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"O85RxVYH": "3bhJX0iD", "zycVKrq3": "rUukj3Dw", "VBPXPUZu": "ufF3RnCL"}}, {"platform": "XBOX", "platformDlcIdMap": {"QhacWwB3": "Ht6y0MUv", "NK9RdEgV": "tXzCCHdT", "ljcvma4P": "Gsg1d02d"}}, {"platform": "PSN", "platformDlcIdMap": {"IRKyfWbf": "KwFgOd0j", "ukUpg7JW": "pbwjNxud", "wRYUx2WM": "V2akLIZc"}}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdatePlatformDLCConfig' test.out

#- 62 DeletePlatformDLCConfig
samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeletePlatformDLCConfig' test.out

#- 63 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName '41k5WfG7' \
    --itemId '["VzIfUYiJ", "C13XQrnq", "Jt0ZVxRL"]' \
    --limit '62' \
    --offset '62' \
    --origin 'System' \
    --userId '5ysCxy1v' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["IST02MvP", "kSBQ5fhQ", "UCilU4XH"]' \
    --limit '64' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 64 'QueryEntitlements' test.out

#- 65 EnableEntitlementOriginFeature
samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'EnableEntitlementOriginFeature' test.out

#- 66 GetEntitlementConfigInfo
samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace $AB_NAMESPACE \
    --withoutCache 'true' \
    > test.out 2>&1
eval_tap $? 66 'GetEntitlementConfigInfo' test.out

#- 67 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"collectionId": "YaUbHtHP", "endDate": "1987-05-11T00:00:00Z", "grantedCode": "ohtj3pWm", "itemId": "uuVjVRIs", "itemNamespace": "5ghLe3mt", "language": "YmPc-WTbk_215", "metadata": {"qDgrWVgc": {}, "a7YH2sz2": {}, "uzylAkhE": {}}, "origin": "IOS", "quantity": 84, "region": "caLOgp9A", "source": "REFERRAL_BONUS", "startDate": "1971-04-01T00:00:00Z", "storeId": "nwPhmGQV"}, {"collectionId": "njhJsHvW", "endDate": "1987-11-30T00:00:00Z", "grantedCode": "f9FEA2kk", "itemId": "XMGC6gLb", "itemNamespace": "DzHRSjPP", "language": "pDv", "metadata": {"0iCOmD8S": {}, "kOL3EmPs": {}, "yw6SBzkY": {}}, "origin": "GooglePlay", "quantity": 85, "region": "wCIaKWMg", "source": "PROMOTION", "startDate": "1989-06-08T00:00:00Z", "storeId": "lyps41DF"}, {"collectionId": "pe7VmrGS", "endDate": "1999-05-03T00:00:00Z", "grantedCode": "1887KPeR", "itemId": "romIhNbj", "itemNamespace": "LzCH5EUX", "language": "vEW_mjeW-RD", "metadata": {"lzSTffhw": {}, "5kKrEXvD": {}, "147OrZAw": {}}, "origin": "GooglePlay", "quantity": 12, "region": "f75Mk0oT", "source": "REWARD", "startDate": "1993-10-09T00:00:00Z", "storeId": "cIjtwJWu"}], "userIds": ["grwxNTKC", "dAnCHfOq", "1jk9Nmv9"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["e66QJQGN", "efzauFu2", "IOFggpm8"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'PTbrwLjO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '24' \
    --status 'SUCCESS' \
    --userId 'OuHuB2fb' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'nN05gOpy' \
    --eventType 'REFUND' \
    --externalOrderId '14TreHsG' \
    --limit '62' \
    --offset '24' \
    --startTime 'aqFzWH9r' \
    --status 'IGNORED' \
    --userId 'GDhocy2O' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "RMJkoQWi", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 34, "clientTransactionId": "c8L7I7iK"}, {"amountConsumed": 85, "clientTransactionId": "emTTFl4S"}, {"amountConsumed": 46, "clientTransactionId": "CRZGZype"}], "entitlementId": "Rb0R6hRN", "usageCount": 17}, {"clientTransaction": [{"amountConsumed": 55, "clientTransactionId": "8Rsc0C5O"}, {"amountConsumed": 68, "clientTransactionId": "4jMjhiEG"}, {"amountConsumed": 83, "clientTransactionId": "wcBTXWi5"}], "entitlementId": "HHwws30b", "usageCount": 30}, {"clientTransaction": [{"amountConsumed": 52, "clientTransactionId": "uIoUnrBO"}, {"amountConsumed": 65, "clientTransactionId": "igq4y19j"}, {"amountConsumed": 8, "clientTransactionId": "lXKCZLXM"}], "entitlementId": "x2dJHxTh", "usageCount": 83}], "purpose": "PEFNvPxb"}, "originalTitleName": "08ZMasKj", "paymentProductSKU": "GEvLyI3A", "purchaseDate": "SFIHRkQM", "sourceOrderItemId": "YlRdYzf3", "titleName": "b3M0AZay"}, "eventDomain": "2wZbfIzJ", "eventSource": "Pd8Vb1g8", "eventType": "P8SQn2oE", "eventVersion": 67, "id": "Y8JiTslc", "timestamp": "rIK0flAY"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "YxLHtYdg", "eventState": "VosycCeK", "lineItemId": "sWP8wiE9", "orderId": "yJSfpyMu", "productId": "DLVMicUq", "productType": "qFPMTsHO", "purchasedDate": "f4Pvq5nq", "sandboxId": "q24lDy9t", "skuId": "nFqk7nWN", "subscriptionData": {"consumedDurationInDays": 49, "dateTime": "kb69TSJR", "durationInDays": 4, "recurrenceId": "17GDFXL1"}}, "datacontenttype": "MOUhXk4l", "id": "2HulDTHO", "source": "92lEx10x", "specVersion": "o0p1ZYsJ", "subject": "2LvJenDI", "time": "64ZzjeAT", "traceparent": "RqR0aNE5", "type": "MJfV7N9J"}' \
    > test.out 2>&1
eval_tap $? 73 'MockXblClawbackEvent' test.out

#- 74 GetAppleIAPConfig
samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetAppleIAPConfig' test.out

#- 75 UpdateAppleIAPConfig
samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appAppleId": 62, "bundleId": "AaWyblaK", "issuerId": "0TVZReil", "keyId": "ZTvfUdGk", "password": "mCELfAyc", "version": "V1"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateAppleIAPConfig' test.out

#- 76 DeleteAppleIAPConfig
samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteAppleIAPConfig' test.out

#- 77 UpdateAppleP8File
samples/cli/sample-apps Platform updateAppleP8File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 77 'UpdateAppleP8File' test.out

#- 78 GetEpicGamesIAPConfig
samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetEpicGamesIAPConfig' test.out

#- 79 UpdateEpicGamesIAPConfig
samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"sandboxId": "AUCjO2RL"}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateEpicGamesIAPConfig' test.out

#- 80 DeleteEpicGamesIAPConfig
samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'DeleteEpicGamesIAPConfig' test.out

#- 81 GetGoogleIAPConfig
samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetGoogleIAPConfig' test.out

#- 82 UpdateGoogleIAPConfig
samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"applicationName": "BJzxFOMV", "notificationTokenAudience": "TCt4UA9F", "notificationTokenEmail": "VMiKHtot", "packageName": "FMLZyyZB", "serviceAccountId": "MBmrBkYf"}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateGoogleIAPConfig' test.out

#- 83 DeleteGoogleIAPConfig
samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'DeleteGoogleIAPConfig' test.out

#- 84 UpdateGoogleP12File
samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 84 'UpdateGoogleP12File' test.out

#- 85 GetIAPItemConfig
samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'GetIAPItemConfig' test.out

#- 86 UpdateIAPItemConfig
samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"itemIdentity": "y4UnMWPP", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Xc1sQZL2": "k158jyv7", "55zTp44h": "jhMx8E45", "jqtjXIDh": "XskIs94a"}}, {"itemIdentity": "5lwp2flo", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"SOBnQDvx": "5TJ1hgEL", "lgdAxR8U": "W7YaudwP", "aYRHr0lC": "XWrpSalu"}}, {"itemIdentity": "rWGbr0by", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"0jx3cKZZ": "JVFBvKXk", "mzbQ7kfp": "p8DqWXm2", "VMZ84Qyz": "HFzpxb16"}}]}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateIAPItemConfig' test.out

#- 87 DeleteIAPItemConfig
samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'DeleteIAPItemConfig' test.out

#- 88 GetOculusIAPConfig
samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'GetOculusIAPConfig' test.out

#- 89 UpdateOculusIAPConfig
samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "GD9X0ZeQ", "appSecret": "6oQ6kHSC"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateOculusIAPConfig' test.out

#- 90 DeleteOculusIAPConfig
samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteOculusIAPConfig' test.out

#- 91 GetPlayStationIAPConfig
samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetPlayStationIAPConfig' test.out

#- 92 UpdatePlaystationIAPConfig
samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "CKTfsNkf", "backOfficeServerClientSecret": "HevpOHxe", "enableStreamJob": true, "environment": "mLRqstsU", "streamName": "DwQi5cvE", "streamPartnerName": "N97kCI28"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdatePlaystationIAPConfig' test.out

#- 93 DeletePlaystationIAPConfig
samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'DeletePlaystationIAPConfig' test.out

#- 94 ValidateExistedPlaystationIAPConfig
samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'ValidateExistedPlaystationIAPConfig' test.out

#- 95 ValidatePlaystationIAPConfig
samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"backOfficeServerClientId": "Ycv7j4PH", "backOfficeServerClientSecret": "6jHPcdLH", "enableStreamJob": false, "environment": "bhfXylfi", "streamName": "bRVY6ji3", "streamPartnerName": "SduLQZ3l"}' \
    > test.out 2>&1
eval_tap $? 95 'ValidatePlaystationIAPConfig' test.out

#- 96 GetSteamIAPConfig
samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetSteamIAPConfig' test.out

#- 97 UpdateSteamIAPConfig
samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appId": "GvgSyGJz", "publisherAuthenticationKey": "1uvuZnta"}' \
    > test.out 2>&1
eval_tap $? 97 'UpdateSteamIAPConfig' test.out

#- 98 DeleteSteamIAPConfig
samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteSteamIAPConfig' test.out

#- 99 GetTwitchIAPConfig
samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'GetTwitchIAPConfig' test.out

#- 100 UpdateTwitchIAPConfig
samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "M87gnKgb", "clientSecret": "KZuCzDZL", "organizationId": "Rf7Txkmk"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateTwitchIAPConfig' test.out

#- 101 DeleteTwitchIAPConfig
samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 101 'DeleteTwitchIAPConfig' test.out

#- 102 GetXblIAPConfig
samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'GetXblIAPConfig' test.out

#- 103 UpdateXblIAPConfig
samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enableClawback": true, "entraAppClientId": "wqMqEYhq", "entraAppClientSecret": "xqz15pB3", "entraTenantId": "37s8CQne", "relyingPartyCert": "y4RKT10U"}' \
    > test.out 2>&1
eval_tap $? 103 'UpdateXblIAPConfig' test.out

#- 104 DeleteXblAPConfig
samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'DeleteXblAPConfig' test.out

#- 105 UpdateXblBPCertFile
samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --password 'MkruwKaO' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'QFypfUDz' \
    --externalId 'PuVReOGL' \
    --limit '36' \
    --offset '25' \
    --source 'PLAYSTATION' \
    --startDate '7iLAKMEx' \
    --status 'PROCESSED' \
    --type 'yAEctPxC' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId 'ufVdsafS' \
    --limit '40' \
    --offset '19' \
    --platform 'STADIA' \
    --productId 'l0vPwf1t' \
    --userId '3FRD8fgw' \
    > test.out 2>&1
eval_tap $? 107 'QueryThirdPartySubscription' test.out

#- 108 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'es78xocc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'GetIAPOrderConsumeDetails' test.out

#- 109 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'et2IAekC' \
    --feature 'tX7gfJAf' \
    --itemId 'lYrepN8M' \
    --itemType 'MEDIA' \
    --startTime 'ni1QCiNG' \
    > test.out 2>&1
eval_tap $? 109 'DownloadInvoiceDetails' test.out

#- 110 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'mYlvSlTI' \
    --feature 'xtvK5x8k' \
    --itemId 'hLgMWad8' \
    --itemType 'BUNDLE' \
    --startTime '9xzd12Ii' \
    > test.out 2>&1
eval_tap $? 110 'GenerateInvoiceSummary' test.out

#- 111 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'PGg36Pt8' \
    --body '{"categoryPath": "zQXuUDCT", "targetItemId": "mENkAi2K", "targetNamespace": "rGl1xYFp"}' \
    > test.out 2>&1
eval_tap $? 111 'SyncInGameItem' test.out

#- 112 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'BDU1Lvxy' \
    --body '{"appId": "FWitPOUV", "appType": "DEMO", "baseAppId": "jTg7cWUu", "boothName": "QW8AKmvj", "categoryPath": "7XCPCxu8", "clazz": "ROfRAIaQ", "displayOrder": 32, "entitlementType": "CONSUMABLE", "ext": {"llqKbO7Q": {}, "4vXwZmHA": {}, "8ipXS3tc": {}}, "features": ["9svXxXeE", "ipdYancp", "5T218OIn"], "flexible": true, "images": [{"as": "jVaDgldS", "caption": "EO6fzYUG", "height": 35, "imageUrl": "VZw0qn7s", "smallImageUrl": "WXI4C5fQ", "width": 19}, {"as": "F8TOQntp", "caption": "iRctLXXk", "height": 45, "imageUrl": "iO7r0UmH", "smallImageUrl": "pu7XEyHH", "width": 32}, {"as": "PETT94HG", "caption": "a6wyVZe3", "height": 54, "imageUrl": "vdbHwGjQ", "smallImageUrl": "liDkhODG", "width": 93}], "inventoryConfig": {"customAttributes": {"ieaW3NGU": {}, "2smxt2Pj": {}, "con6XEgR": {}}, "serverCustomAttributes": {"Bb9dR7FP": {}, "vZi4wZnz": {}, "TrazJaIc": {}}, "slotUsed": 54}, "itemIds": ["EHf8Sepc", "gE3p2f5L", "B0FaVLEv"], "itemQty": {"9naAAI8P": 85, "54AXkkGL": 43, "nfvRhf8w": 79}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"uneodpgJ": {"description": "hdAdpNVz", "localExt": {"knltrVkd": {}, "XdDDns1S": {}, "9yfnMHt7": {}}, "longDescription": "8Jo6pTid", "title": "VWxWmC5w"}, "UnL564vk": {"description": "3ByJctSA", "localExt": {"ySsTF9mE": {}, "4fCxZq4e": {}, "lPB04kZe": {}}, "longDescription": "JPWz09MI", "title": "xpPilIak"}, "tCxCRgKa": {"description": "rTHOGX7n", "localExt": {"lZMKCw6F": {}, "EFM4Hvnh": {}, "f9FTTVMu": {}}, "longDescription": "cLJS9POD", "title": "id22gXao"}}, "lootBoxConfig": {"rewardCount": 45, "rewards": [{"lootBoxItems": [{"count": 73, "duration": 44, "endDate": "1982-12-12T00:00:00Z", "itemId": "JY3FWrj8", "itemSku": "0jtolgni", "itemType": "y1bntmqS"}, {"count": 33, "duration": 17, "endDate": "1971-10-27T00:00:00Z", "itemId": "ocA95gO7", "itemSku": "k64a8dUM", "itemType": "igeZswgK"}, {"count": 57, "duration": 9, "endDate": "1980-05-19T00:00:00Z", "itemId": "DjsP9OI3", "itemSku": "isTiQBOR", "itemType": "YYKkknIy"}], "name": "Okiob0P2", "odds": 0.12880415661312972, "type": "PROBABILITY_GROUP", "weight": 6}, {"lootBoxItems": [{"count": 53, "duration": 63, "endDate": "1982-04-16T00:00:00Z", "itemId": "bN8YXUTv", "itemSku": "TTUGHRaV", "itemType": "2PhP6kix"}, {"count": 70, "duration": 64, "endDate": "1977-05-24T00:00:00Z", "itemId": "ilSLfT5F", "itemSku": "s4hjzxaL", "itemType": "Av1cw8Dd"}, {"count": 12, "duration": 57, "endDate": "1994-08-03T00:00:00Z", "itemId": "ovRTmdr5", "itemSku": "WRyhCgWU", "itemType": "k8CR8acO"}], "name": "75j7Vpcu", "odds": 0.6312179192426239, "type": "REWARD_GROUP", "weight": 22}, {"lootBoxItems": [{"count": 39, "duration": 97, "endDate": "1972-01-31T00:00:00Z", "itemId": "mmoCZR7d", "itemSku": "BtwfX5nb", "itemType": "2K9YMdzP"}, {"count": 11, "duration": 12, "endDate": "1978-06-09T00:00:00Z", "itemId": "HwUnsIyv", "itemSku": "4PxvBu0F", "itemType": "rSK1AeE3"}, {"count": 95, "duration": 84, "endDate": "1973-08-13T00:00:00Z", "itemId": "9nq4zy0d", "itemSku": "aANDdGt4", "itemType": "ZT3Si1aS"}], "name": "1QM194Sm", "odds": 0.0696566956316329, "type": "REWARD", "weight": 60}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 83, "name": "P0Zme1Hk", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 23, "endDate": "1998-07-22T00:00:00Z", "itemId": "TDxqGuGL", "itemSku": "hTXSRG9O", "itemType": "yWlVwcdC"}, {"count": 46, "duration": 18, "endDate": "1984-02-05T00:00:00Z", "itemId": "LQ0HCgzt", "itemSku": "SZSbY4bS", "itemType": "KDRdrvwd"}, {"count": 56, "duration": 29, "endDate": "1993-09-19T00:00:00Z", "itemId": "f85qLP1H", "itemSku": "0uJkt11S", "itemType": "gCspXtEN"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 29, "fixedTrialCycles": 52, "graceDays": 59}, "regionData": {"HyzhFTXd": [{"currencyCode": "geR6wxM4", "currencyNamespace": "ND9muu6e", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1993-09-15T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1996-04-29T00:00:00Z", "expireAt": "1995-05-19T00:00:00Z", "price": 20, "purchaseAt": "1976-09-26T00:00:00Z", "trialPrice": 8}, {"currencyCode": "HDNQoav3", "currencyNamespace": "4Dstkme6", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1989-08-04T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1985-01-29T00:00:00Z", "expireAt": "1972-11-08T00:00:00Z", "price": 87, "purchaseAt": "1996-05-23T00:00:00Z", "trialPrice": 34}, {"currencyCode": "6GEAKpgY", "currencyNamespace": "Do9cIF60", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1983-02-06T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1995-04-23T00:00:00Z", "expireAt": "1985-10-01T00:00:00Z", "price": 41, "purchaseAt": "1983-04-30T00:00:00Z", "trialPrice": 23}], "tiZQj6F4": [{"currencyCode": "ZlubfrIF", "currencyNamespace": "qCVTCPE2", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1993-10-10T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1987-05-19T00:00:00Z", "expireAt": "1971-07-23T00:00:00Z", "price": 60, "purchaseAt": "1985-03-22T00:00:00Z", "trialPrice": 21}, {"currencyCode": "6fdMHCCk", "currencyNamespace": "jWfbKY0s", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1995-06-24T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1996-04-06T00:00:00Z", "expireAt": "1999-04-26T00:00:00Z", "price": 1, "purchaseAt": "1976-12-15T00:00:00Z", "trialPrice": 83}, {"currencyCode": "VU5qQIin", "currencyNamespace": "NdwIDlLb", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1994-12-02T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1972-08-22T00:00:00Z", "expireAt": "1991-06-16T00:00:00Z", "price": 37, "purchaseAt": "1974-01-21T00:00:00Z", "trialPrice": 80}], "zEhAILqB": [{"currencyCode": "x4dW8FNF", "currencyNamespace": "38CMFog5", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1995-12-16T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1990-03-06T00:00:00Z", "expireAt": "1989-10-31T00:00:00Z", "price": 60, "purchaseAt": "1991-12-25T00:00:00Z", "trialPrice": 13}, {"currencyCode": "bqKPmnyh", "currencyNamespace": "cr5WzntT", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1981-03-02T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1982-12-16T00:00:00Z", "expireAt": "1995-12-20T00:00:00Z", "price": 86, "purchaseAt": "1999-10-29T00:00:00Z", "trialPrice": 53}, {"currencyCode": "VJ94c5Ip", "currencyNamespace": "QFb2Gwst", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1999-04-02T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-10-26T00:00:00Z", "expireAt": "1974-12-30T00:00:00Z", "price": 11, "purchaseAt": "1994-10-13T00:00:00Z", "trialPrice": 71}]}, "saleConfig": {"currencyCode": "UO71q3Cb", "price": 96}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "B29PSJfm", "stackable": false, "status": "ACTIVE", "tags": ["r6F3P1Tm", "lUKXIlMh", "GiV2aUBd"], "targetCurrencyCode": "iHaX6OR6", "targetNamespace": "rW5NCdYq", "thumbnailUrl": "eV7XU24u", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 112 'CreateItem' test.out

#- 113 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5Tzlpmrh' \
    --appId 'Z7TNqx6n' \
    > test.out 2>&1
eval_tap $? 113 'GetItemByAppId' test.out

#- 114 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'SOFTWARE' \
    --availableDate 'X0cIxt7U' \
    --baseAppId 'H2F2LeXv' \
    --categoryPath 'j0FCFGiz' \
    --features 'HB29QhzZ' \
    --includeSubCategoryItem 'true' \
    --itemType 'APP' \
    --limit '24' \
    --offset '86' \
    --region 'wFc39OkO' \
    --sortBy '["displayOrder:asc", "createdAt:desc", "updatedAt"]' \
    --storeId 'elKHeyul' \
    --tags '3lBsm7oO' \
    --targetNamespace 'MxI4Kiwu' \
    > test.out 2>&1
eval_tap $? 114 'QueryItems' test.out

#- 115 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["xDQAa3So", "VM883SIc", "qHBYAnO8"]' \
    > test.out 2>&1
eval_tap $? 115 'ListBasicItemsByFeatures' test.out

#- 116 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'pfPw0m86' \
    --itemIds 'wLKs5YhO' \
    > test.out 2>&1
eval_tap $? 116 'GetItems' test.out

#- 117 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'OqnBsG8g' \
    --sku 'MB7PIXMA' \
    > test.out 2>&1
eval_tap $? 117 'GetItemBySku' test.out

#- 118 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'ejpzHuqO' \
    --populateBundle 'true' \
    --region 'EQIt78OA' \
    --storeId 'Def437dO' \
    --sku 'UJlVEtvP' \
    > test.out 2>&1
eval_tap $? 118 'GetLocaleItemBySku' test.out

#- 119 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '8ytTaLb8' \
    --region 'dojjDS0S' \
    --storeId 'gKHWyFZY' \
    --itemIds 'z4NPn7Os' \
    --userId 'OTRdXNk7' \
    > test.out 2>&1
eval_tap $? 119 'GetEstimatedPrice' test.out

#- 120 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'fy0X3ZBk' \
    --sku 'xZD7vybd' \
    > test.out 2>&1
eval_tap $? 120 'GetItemIdBySku' test.out

#- 121 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["hHLTatFF", "Kh8Otyoj", "7rryUgdM"]' \
    --storeId 'jkTSAzNm' \
    > test.out 2>&1
eval_tap $? 121 'GetBulkItemIdBySkus' test.out

#- 122 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language '3kWbhvRN' \
    --region 'kEZULA2z' \
    --storeId 'GviYthIk' \
    --itemIds 'TW0qnOFD' \
    > test.out 2>&1
eval_tap $? 122 'BulkGetLocaleItems' test.out

#- 123 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'GetAvailablePredicateTypes' test.out

#- 124 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform 'YVOMluRm' \
    --userId '8JCI6CpA' \
    --body '{"itemIds": ["QqpkjguE", "CtOIRwB4", "FFa13qZR"]}' \
    > test.out 2>&1
eval_tap $? 124 'ValidateItemPurchaseCondition' test.out

#- 125 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'kvTisU5q' \
    --body '{"changes": [{"itemIdentities": ["tWPmx2rF", "1CZ3CUgS", "opZv7jP8"], "itemIdentityType": "ITEM_ID", "regionData": {"UxUyv7SY": [{"currencyCode": "jG1cf0gd", "currencyNamespace": "6rZeMTRu", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1984-07-03T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1985-03-30T00:00:00Z", "discountedPrice": 83, "expireAt": "1988-03-25T00:00:00Z", "price": 5, "purchaseAt": "1974-11-28T00:00:00Z", "trialPrice": 89}, {"currencyCode": "yKngvL70", "currencyNamespace": "u0uTDD5c", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1975-12-24T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1991-09-01T00:00:00Z", "discountedPrice": 54, "expireAt": "1985-12-12T00:00:00Z", "price": 95, "purchaseAt": "1993-02-11T00:00:00Z", "trialPrice": 39}, {"currencyCode": "CNAzRy2I", "currencyNamespace": "pCVXjO8A", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1989-02-25T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1991-08-22T00:00:00Z", "discountedPrice": 17, "expireAt": "1993-12-07T00:00:00Z", "price": 24, "purchaseAt": "1973-05-04T00:00:00Z", "trialPrice": 12}], "0YWVI7CJ": [{"currencyCode": "wMQo9GM5", "currencyNamespace": "S0d9Mvgp", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1971-10-17T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1981-04-24T00:00:00Z", "discountedPrice": 28, "expireAt": "1983-05-30T00:00:00Z", "price": 3, "purchaseAt": "1977-03-23T00:00:00Z", "trialPrice": 46}, {"currencyCode": "TIvWKm2z", "currencyNamespace": "gtzFU1UB", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1989-04-03T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1976-04-19T00:00:00Z", "discountedPrice": 81, "expireAt": "1980-07-01T00:00:00Z", "price": 42, "purchaseAt": "1994-10-04T00:00:00Z", "trialPrice": 36}, {"currencyCode": "Ik2ZPRP5", "currencyNamespace": "ugPFlNQu", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1995-03-24T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1994-01-05T00:00:00Z", "discountedPrice": 56, "expireAt": "1976-12-24T00:00:00Z", "price": 78, "purchaseAt": "1983-03-16T00:00:00Z", "trialPrice": 29}], "7l2egslt": [{"currencyCode": "cEAXmiZN", "currencyNamespace": "Yj0nzpom", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1985-07-17T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1974-10-21T00:00:00Z", "discountedPrice": 90, "expireAt": "1996-03-15T00:00:00Z", "price": 51, "purchaseAt": "1974-02-20T00:00:00Z", "trialPrice": 43}, {"currencyCode": "KrDly1GQ", "currencyNamespace": "79BiMhzi", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1989-06-01T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1980-06-04T00:00:00Z", "discountedPrice": 35, "expireAt": "1981-05-21T00:00:00Z", "price": 81, "purchaseAt": "1979-02-17T00:00:00Z", "trialPrice": 36}, {"currencyCode": "DSPzSHiN", "currencyNamespace": "6629nQ50", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1995-05-30T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1981-06-21T00:00:00Z", "discountedPrice": 58, "expireAt": "1990-07-25T00:00:00Z", "price": 26, "purchaseAt": "1977-08-07T00:00:00Z", "trialPrice": 97}]}}, {"itemIdentities": ["etdMQbG6", "xFJxnYhF", "gVHKMWBe"], "itemIdentityType": "ITEM_ID", "regionData": {"aguirboy": [{"currencyCode": "U8N82ng7", "currencyNamespace": "xtiDuF0l", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1989-08-30T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1979-01-01T00:00:00Z", "discountedPrice": 84, "expireAt": "1992-11-02T00:00:00Z", "price": 95, "purchaseAt": "1987-01-06T00:00:00Z", "trialPrice": 40}, {"currencyCode": "JpWOJbzM", "currencyNamespace": "afPTKCdc", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1986-03-22T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1981-11-16T00:00:00Z", "discountedPrice": 22, "expireAt": "1993-09-26T00:00:00Z", "price": 28, "purchaseAt": "1984-01-09T00:00:00Z", "trialPrice": 22}, {"currencyCode": "JBbLtpa2", "currencyNamespace": "IHsFo3Sf", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1974-02-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1979-08-06T00:00:00Z", "discountedPrice": 85, "expireAt": "1971-02-19T00:00:00Z", "price": 42, "purchaseAt": "1980-05-27T00:00:00Z", "trialPrice": 44}], "fwncXXW9": [{"currencyCode": "0zqNB0SK", "currencyNamespace": "t0BUrbWL", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1994-10-01T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1998-09-26T00:00:00Z", "discountedPrice": 98, "expireAt": "1995-01-13T00:00:00Z", "price": 66, "purchaseAt": "1995-10-06T00:00:00Z", "trialPrice": 22}, {"currencyCode": "8TPUX2I7", "currencyNamespace": "ORIjjUxI", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1997-03-28T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1976-11-01T00:00:00Z", "discountedPrice": 56, "expireAt": "1999-08-04T00:00:00Z", "price": 73, "purchaseAt": "1976-04-19T00:00:00Z", "trialPrice": 57}, {"currencyCode": "TVvPd7MZ", "currencyNamespace": "pwsfo1vZ", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1982-01-03T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1999-01-29T00:00:00Z", "discountedPrice": 16, "expireAt": "1972-10-15T00:00:00Z", "price": 26, "purchaseAt": "1988-06-13T00:00:00Z", "trialPrice": 18}], "ouYZbfQA": [{"currencyCode": "8q1kT1Ml", "currencyNamespace": "iQ9en8hG", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1981-05-05T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1978-01-09T00:00:00Z", "discountedPrice": 6, "expireAt": "1987-11-16T00:00:00Z", "price": 62, "purchaseAt": "1979-09-04T00:00:00Z", "trialPrice": 1}, {"currencyCode": "m8SWysoF", "currencyNamespace": "nJJpRV1s", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1981-12-24T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1978-11-29T00:00:00Z", "discountedPrice": 100, "expireAt": "1979-02-17T00:00:00Z", "price": 94, "purchaseAt": "1987-05-06T00:00:00Z", "trialPrice": 32}, {"currencyCode": "u7c0nxJ6", "currencyNamespace": "naqOCwEJ", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1980-03-04T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1998-02-06T00:00:00Z", "discountedPrice": 74, "expireAt": "1977-05-01T00:00:00Z", "price": 8, "purchaseAt": "1979-05-07T00:00:00Z", "trialPrice": 24}]}}, {"itemIdentities": ["3X2ZGHXF", "AF23Rbq9", "Z4UyVL5J"], "itemIdentityType": "ITEM_SKU", "regionData": {"yNU7rL0c": [{"currencyCode": "GK5u0SGZ", "currencyNamespace": "hbKajqU6", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1971-11-25T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1986-04-28T00:00:00Z", "discountedPrice": 67, "expireAt": "1977-09-14T00:00:00Z", "price": 40, "purchaseAt": "1982-04-27T00:00:00Z", "trialPrice": 2}, {"currencyCode": "2hlaL9Lk", "currencyNamespace": "FcUnl6yt", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1978-08-30T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1988-12-07T00:00:00Z", "discountedPrice": 90, "expireAt": "1995-08-17T00:00:00Z", "price": 28, "purchaseAt": "1972-03-14T00:00:00Z", "trialPrice": 59}, {"currencyCode": "nLHTdPga", "currencyNamespace": "7aXVMAJ3", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1994-11-20T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1976-07-29T00:00:00Z", "discountedPrice": 98, "expireAt": "1988-01-07T00:00:00Z", "price": 81, "purchaseAt": "1994-02-24T00:00:00Z", "trialPrice": 97}], "9JujzUas": [{"currencyCode": "a6qRsJy9", "currencyNamespace": "FzqTG4AM", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1983-09-27T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1993-08-09T00:00:00Z", "discountedPrice": 33, "expireAt": "1983-11-30T00:00:00Z", "price": 19, "purchaseAt": "1975-06-09T00:00:00Z", "trialPrice": 77}, {"currencyCode": "LpBZgYyH", "currencyNamespace": "SLxJC5Am", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1993-06-13T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-12-20T00:00:00Z", "discountedPrice": 95, "expireAt": "1978-09-16T00:00:00Z", "price": 94, "purchaseAt": "1993-01-09T00:00:00Z", "trialPrice": 1}, {"currencyCode": "ty8fnsoE", "currencyNamespace": "faYg26YI", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1977-06-07T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1985-11-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1971-10-26T00:00:00Z", "price": 82, "purchaseAt": "1979-04-11T00:00:00Z", "trialPrice": 29}], "8WmjCNqI": [{"currencyCode": "nxaoVfvz", "currencyNamespace": "r6lgb2ju", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1994-10-13T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1976-08-12T00:00:00Z", "discountedPrice": 99, "expireAt": "1974-11-08T00:00:00Z", "price": 27, "purchaseAt": "1997-03-29T00:00:00Z", "trialPrice": 2}, {"currencyCode": "claLwj8E", "currencyNamespace": "duh7hu2m", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1988-07-23T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1971-10-01T00:00:00Z", "discountedPrice": 29, "expireAt": "1973-04-11T00:00:00Z", "price": 78, "purchaseAt": "1984-02-22T00:00:00Z", "trialPrice": 93}, {"currencyCode": "5TbABE5c", "currencyNamespace": "PVTusAhK", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1993-10-12T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1974-09-17T00:00:00Z", "discountedPrice": 69, "expireAt": "1980-01-19T00:00:00Z", "price": 48, "purchaseAt": "1988-01-16T00:00:00Z", "trialPrice": 18}]}}]}' \
    > test.out 2>&1
eval_tap $? 125 'BulkUpdateRegionData' test.out

#- 126 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'LOOTBOX' \
    --limit '82' \
    --offset '72' \
    --sortBy 'MoofULEP' \
    --storeId 'pn53z1s8' \
    --keyword 'WYDDcbSf' \
    --language 'nKCUGjC6' \
    > test.out 2>&1
eval_tap $? 126 'SearchItems' test.out

#- 127 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '19' \
    --offset '5' \
    --sortBy '["displayOrder:desc", "createdAt:desc", "updatedAt:asc"]' \
    --storeId 'vSdxGDLR' \
    > test.out 2>&1
eval_tap $? 127 'QueryUncategorizedItems' test.out

#- 128 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'HypPlTnS' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '9TzrcYlx' \
    > test.out 2>&1
eval_tap $? 128 'GetItem' test.out

#- 129 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'buVkDE9f' \
    --namespace $AB_NAMESPACE \
    --storeId 'iMxC3cc0' \
    --body '{"appId": "Nx7tFDyk", "appType": "SOFTWARE", "baseAppId": "uyIOWvKd", "boothName": "jstI0DL2", "categoryPath": "2ISqiSAr", "clazz": "m482xnYs", "displayOrder": 85, "entitlementType": "DURABLE", "ext": {"cM0S57u7": {}, "HsFs16Ts": {}, "IHE7ZD7D": {}}, "features": ["FjGoAyhL", "eAL1LW48", "dZbJ3KEW"], "flexible": true, "images": [{"as": "rXHtu5mZ", "caption": "GYPJ5rbK", "height": 58, "imageUrl": "Iuv5uql4", "smallImageUrl": "50b92QuA", "width": 41}, {"as": "lBTXyFWf", "caption": "EWzBkRza", "height": 85, "imageUrl": "FoEP5hiI", "smallImageUrl": "lE2lmMVk", "width": 15}, {"as": "yoPkyJp3", "caption": "sjj3JjM7", "height": 99, "imageUrl": "hUmZe5lh", "smallImageUrl": "BH05AWd5", "width": 65}], "inventoryConfig": {"customAttributes": {"oeb9EQju": {}, "W10B2jCA": {}, "hIlrcU6e": {}}, "serverCustomAttributes": {"xoPUdMY2": {}, "TTM5gY9O": {}, "vhAS19bH": {}}, "slotUsed": 44}, "itemIds": ["k4OSyD7u", "3oiOGiCw", "6kW94P73"], "itemQty": {"1FAkSzNs": 75, "dIKKu74b": 28, "Eo1nuPEg": 7}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"P0SsyuW6": {"description": "A0F2LDjc", "localExt": {"Fs9Aqq51": {}, "IaNi9ToJ": {}, "FIYWaw7P": {}}, "longDescription": "EzAnqkrs", "title": "iAaiFSok"}, "78nwC5Vz": {"description": "eJ9EjVT3", "localExt": {"pw6ZeVAK": {}, "4MK2dRZl": {}, "mD6nKEl6": {}}, "longDescription": "vqKdz1QM", "title": "oV6M4fES"}, "7iVL2zXW": {"description": "JrevXwpV", "localExt": {"csJAOr7m": {}, "zvM5xf2g": {}, "6cDGi1G2": {}}, "longDescription": "IX1TILXF", "title": "mVOBszJ2"}}, "lootBoxConfig": {"rewardCount": 53, "rewards": [{"lootBoxItems": [{"count": 88, "duration": 17, "endDate": "1975-02-25T00:00:00Z", "itemId": "dgXX5FjC", "itemSku": "jVh7rwJ5", "itemType": "h7vsR5w3"}, {"count": 14, "duration": 29, "endDate": "1995-09-19T00:00:00Z", "itemId": "zDyq6nwH", "itemSku": "SMC708ch", "itemType": "UYIZJsQS"}, {"count": 52, "duration": 54, "endDate": "1977-06-28T00:00:00Z", "itemId": "aZjv2Ije", "itemSku": "XrjV7B4G", "itemType": "BGdg0gwg"}], "name": "XhRiiXxh", "odds": 0.21743239258533154, "type": "PROBABILITY_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 26, "duration": 20, "endDate": "1972-09-27T00:00:00Z", "itemId": "74faxp8m", "itemSku": "MXvHszd5", "itemType": "z9RlNfkM"}, {"count": 5, "duration": 40, "endDate": "1999-09-19T00:00:00Z", "itemId": "E8WPZQ1b", "itemSku": "OWc8bMaN", "itemType": "laXcSxpf"}, {"count": 95, "duration": 61, "endDate": "1994-07-14T00:00:00Z", "itemId": "oXEDmA0u", "itemSku": "ljRiwgYO", "itemType": "zVzciSHa"}], "name": "cHcPyi5J", "odds": 0.9021571412344936, "type": "PROBABILITY_GROUP", "weight": 24}, {"lootBoxItems": [{"count": 68, "duration": 54, "endDate": "1987-11-10T00:00:00Z", "itemId": "oabWNhNX", "itemSku": "4Wa0Xx3N", "itemType": "fH67QvV4"}, {"count": 91, "duration": 85, "endDate": "1990-04-27T00:00:00Z", "itemId": "GCt1iH4h", "itemSku": "whozsK5t", "itemType": "SQJQ8AoY"}, {"count": 64, "duration": 93, "endDate": "1984-04-09T00:00:00Z", "itemId": "maKiEPRf", "itemSku": "DlSTk5Lh", "itemType": "1pzoeRnG"}], "name": "jbCXJQH6", "odds": 0.3172774765989145, "type": "PROBABILITY_GROUP", "weight": 9}], "rollFunction": "DEFAULT"}, "maxCount": 8, "maxCountPerUser": 1, "name": "o8LYPQhx", "optionBoxConfig": {"boxItems": [{"count": 43, "duration": 10, "endDate": "1996-03-23T00:00:00Z", "itemId": "KFHzJP5z", "itemSku": "CcbxzmeM", "itemType": "rIott1py"}, {"count": 95, "duration": 53, "endDate": "1988-11-18T00:00:00Z", "itemId": "wOKHh8d5", "itemSku": "9EWHf5sJ", "itemType": "QZdSfmFa"}, {"count": 6, "duration": 100, "endDate": "1983-06-24T00:00:00Z", "itemId": "StIFqLdJ", "itemSku": "dPDzylYN", "itemType": "NJWD8wLo"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 14, "fixedTrialCycles": 71, "graceDays": 34}, "regionData": {"RP1kQG6Q": [{"currencyCode": "LxTpTWGO", "currencyNamespace": "uVF0ZJHE", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1992-06-15T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1983-08-10T00:00:00Z", "expireAt": "1981-02-16T00:00:00Z", "price": 4, "purchaseAt": "1975-11-28T00:00:00Z", "trialPrice": 30}, {"currencyCode": "xnDZWIUa", "currencyNamespace": "5W8Ea4w0", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1990-09-29T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1985-05-25T00:00:00Z", "expireAt": "1998-09-13T00:00:00Z", "price": 42, "purchaseAt": "1973-05-09T00:00:00Z", "trialPrice": 2}, {"currencyCode": "avq4bioT", "currencyNamespace": "jiTcKSj7", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1978-11-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1989-11-05T00:00:00Z", "expireAt": "1973-04-07T00:00:00Z", "price": 0, "purchaseAt": "1971-07-17T00:00:00Z", "trialPrice": 24}], "8L3NcSSZ": [{"currencyCode": "n1cbSZWc", "currencyNamespace": "Yotb3NDH", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1999-10-27T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1984-06-24T00:00:00Z", "expireAt": "1996-03-09T00:00:00Z", "price": 93, "purchaseAt": "1975-12-11T00:00:00Z", "trialPrice": 20}, {"currencyCode": "Ccl5BC4d", "currencyNamespace": "dguQ6IXk", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1986-06-01T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1987-06-13T00:00:00Z", "expireAt": "1974-04-19T00:00:00Z", "price": 0, "purchaseAt": "1991-03-18T00:00:00Z", "trialPrice": 92}, {"currencyCode": "MTgsHSFn", "currencyNamespace": "3lpyn5hs", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1979-09-06T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1994-06-21T00:00:00Z", "expireAt": "1971-03-21T00:00:00Z", "price": 57, "purchaseAt": "1999-12-25T00:00:00Z", "trialPrice": 76}], "YlTSdQzs": [{"currencyCode": "ZGvmpqCP", "currencyNamespace": "ZeQKblUV", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1979-08-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-03-01T00:00:00Z", "expireAt": "1988-07-09T00:00:00Z", "price": 97, "purchaseAt": "1995-11-07T00:00:00Z", "trialPrice": 51}, {"currencyCode": "99eFS0N3", "currencyNamespace": "xvjYsP55", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1996-07-02T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1997-03-10T00:00:00Z", "expireAt": "1983-03-04T00:00:00Z", "price": 79, "purchaseAt": "1979-02-04T00:00:00Z", "trialPrice": 11}, {"currencyCode": "lHuqmKXx", "currencyNamespace": "7jsJ2pKF", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1980-05-16T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1985-06-19T00:00:00Z", "expireAt": "1975-06-11T00:00:00Z", "price": 70, "purchaseAt": "1976-11-09T00:00:00Z", "trialPrice": 42}]}, "saleConfig": {"currencyCode": "UnuZ7WMe", "price": 68}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "dCgWRbRs", "stackable": true, "status": "INACTIVE", "tags": ["X3bBO3Fl", "kKwgdx7A", "4MpnnOIr"], "targetCurrencyCode": "s8m4cqpC", "targetNamespace": "efTilHJN", "thumbnailUrl": "ZGABZCrG", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItem' test.out

#- 130 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'YNudkYsR' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'ifWxALwR' \
    > test.out 2>&1
eval_tap $? 130 'DeleteItem' test.out

#- 131 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId '8iZiMU2T' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 67, "orderNo": "vhtNWWuX"}' \
    > test.out 2>&1
eval_tap $? 131 'AcquireItem' test.out

#- 132 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'rbZVEtvH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'WNnr8nCk' \
    > test.out 2>&1
eval_tap $? 132 'GetApp' test.out

#- 133 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'TNZ62QtL' \
    --namespace $AB_NAMESPACE \
    --storeId '3xKL723O' \
    --body '{"carousel": [{"alt": "o3Nm3MD6", "previewUrl": "8ymkNvvf", "thumbnailUrl": "JfFMI5oJ", "type": "image", "url": "SG5ezWk5", "videoSource": "vimeo"}, {"alt": "Q1q0dPCM", "previewUrl": "tcy5847C", "thumbnailUrl": "HonJqVdJ", "type": "image", "url": "K8y8LwkC", "videoSource": "youtube"}, {"alt": "lfCv1d5e", "previewUrl": "RnXmLrGA", "thumbnailUrl": "3voAxlfd", "type": "image", "url": "KuqdAICx", "videoSource": "youtube"}], "developer": "Fj2Nf0jI", "forumUrl": "UzKnn1Lc", "genres": ["Sports", "Strategy", "Sports"], "localizations": {"GzPmMUpj": {"announcement": "jyfmFo2j", "slogan": "zEojxQVv"}, "jXQGTBNR": {"announcement": "o0kXlxZQ", "slogan": "NIkxnOfu"}, "LONCS1QH": {"announcement": "9Kz2slDZ", "slogan": "wIOWAg5F"}}, "platformRequirements": {"j9ROwW7y": [{"additionals": "Vv6woJCX", "directXVersion": "KNYGbUX8", "diskSpace": "mgJsj0pd", "graphics": "HOjPHZEU", "label": "ITJuJBy3", "osVersion": "l62bJuA7", "processor": "HQj0xhWN", "ram": "23Hdjaiw", "soundCard": "xQOBHocV"}, {"additionals": "9BcnPHNG", "directXVersion": "zMMO8ONj", "diskSpace": "J7xss7SZ", "graphics": "5EXIKBtA", "label": "zjnuJKWP", "osVersion": "jOyyNmAH", "processor": "DsUHvFkl", "ram": "tCWLxKWW", "soundCard": "xsezKZ6J"}, {"additionals": "6ZTYo5RA", "directXVersion": "ItOWwR4y", "diskSpace": "nLVioovr", "graphics": "HUIyalgh", "label": "paTtJYLJ", "osVersion": "lYRfJHQl", "processor": "ajhCZVqq", "ram": "Qs4WodkF", "soundCard": "43X9bgnC"}], "Owd50ATu": [{"additionals": "9fRXJWhZ", "directXVersion": "UbhGZxpj", "diskSpace": "bZAf7Gxs", "graphics": "ua8LUsDE", "label": "D2iyoDDS", "osVersion": "Y6gLKNhN", "processor": "yNyvTLax", "ram": "6DfPEL0e", "soundCard": "EYCuCjKO"}, {"additionals": "FuYjyKCS", "directXVersion": "XKcZbrQe", "diskSpace": "ffzoXsiD", "graphics": "c7Va7YcA", "label": "vbSgQuAk", "osVersion": "wjW4LrCE", "processor": "QdkEnBHA", "ram": "6fhnI7Ed", "soundCard": "v9h0stwB"}, {"additionals": "hY9Mycmc", "directXVersion": "N5zcItXb", "diskSpace": "DGSsPG6P", "graphics": "nkaGEDz3", "label": "h6yb71CO", "osVersion": "8xJGKUa9", "processor": "bd2g0Lun", "ram": "MS47kZLk", "soundCard": "sYkEaqTu"}], "dq4XG1pH": [{"additionals": "Y9ZIRtaG", "directXVersion": "jBhpBOsS", "diskSpace": "0bfsgWlx", "graphics": "zrxgU55j", "label": "YwBJMgOl", "osVersion": "HOdtDce9", "processor": "dmjvAtMK", "ram": "B540Zagd", "soundCard": "pYVeEPFX"}, {"additionals": "wU426ycf", "directXVersion": "EYD2dQNy", "diskSpace": "Jj5Di4o9", "graphics": "qttosbBh", "label": "5eAyUFsw", "osVersion": "PXq3YUpH", "processor": "kiz2dLmy", "ram": "keskeFtO", "soundCard": "pdGMGoLs"}, {"additionals": "dEK1x2RI", "directXVersion": "aY7Oxdsh", "diskSpace": "VB5ZoGHe", "graphics": "HFNG3Sfs", "label": "Zn3hCeqj", "osVersion": "Ty4WWzFT", "processor": "pC8W625H", "ram": "CXLlg8Bh", "soundCard": "D8JFhiSj"}]}, "platforms": ["MacOS", "MacOS", "MacOS"], "players": ["Coop", "Single", "Coop"], "primaryGenre": "Casual", "publisher": "EJWqIw1y", "releaseDate": "1997-01-02T00:00:00Z", "websiteUrl": "suMwDrIi"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateApp' test.out

#- 134 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'MIDRiRvu' \
    --namespace $AB_NAMESPACE \
    --storeId 'wXcA1tgq' \
    > test.out 2>&1
eval_tap $? 134 'DisableItem' test.out

#- 135 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'jsV4MR5O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'GetItemDynamicData' test.out

#- 136 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'D56k0ihQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'sg4XMEPg' \
    > test.out 2>&1
eval_tap $? 136 'EnableItem' test.out

#- 137 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'NtjB2Hst' \
    --itemId 'aea8a7Rs' \
    --namespace $AB_NAMESPACE \
    --storeId 'IXrvQjuU' \
    > test.out 2>&1
eval_tap $? 137 'FeatureItem' test.out

#- 138 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature '7ADkgjBy' \
    --itemId 'rKf9wr8u' \
    --namespace $AB_NAMESPACE \
    --storeId 'fU1vsy4c' \
    > test.out 2>&1
eval_tap $? 138 'DefeatureItem' test.out

#- 139 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'r8X0PbQT' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'JFRHfLy7' \
    --populateBundle 'true' \
    --region 'RHujvhzQ' \
    --storeId 'zyRCRsUM' \
    > test.out 2>&1
eval_tap $? 139 'GetLocaleItem' test.out

#- 140 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '43WcWEml' \
    --namespace $AB_NAMESPACE \
    --storeId 'KlCbeONm' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 15, "code": "XrmR4we9", "comparison": "isGreaterThanOrEqual", "name": "DyMhqG4I", "predicateType": "StatisticCodePredicate", "value": "Ksl3EwSI", "values": ["4iKfoK2n", "y7OPkQzE", "1PaVWDRe"]}, {"anyOf": 57, "code": "6HVmLWsR", "comparison": "isLessThan", "name": "g4xO6zpI", "predicateType": "EntitlementPredicate", "value": "JUEPp083", "values": ["tdexB78T", "hMznHfKP", "cUTtcd2g"]}, {"anyOf": 66, "code": "IttYpbsr", "comparison": "isGreaterThan", "name": "NKMPabck", "predicateType": "SeasonTierPredicate", "value": "irWZQhHd", "values": ["BpB5JBGO", "0QtiVvCv", "1qiIG2US"]}]}, {"operator": "and", "predicates": [{"anyOf": 53, "code": "4ni5fF85", "comparison": "isLessThanOrEqual", "name": "7oT4F9KE", "predicateType": "EntitlementPredicate", "value": "ISDwK9I7", "values": ["WJl1t5ca", "Z105R94o", "5RtCPPgb"]}, {"anyOf": 42, "code": "VnYiU3Xv", "comparison": "isLessThanOrEqual", "name": "YHH0R6mj", "predicateType": "EntitlementPredicate", "value": "d3OamHvV", "values": ["3ZAJGV5z", "M4JKsbcD", "98Zo5WBr"]}, {"anyOf": 58, "code": "j1CptHtl", "comparison": "isLessThanOrEqual", "name": "2iY6iatZ", "predicateType": "SeasonPassPredicate", "value": "crzTon9J", "values": ["hvdsH2Oq", "jsZrcNZR", "bFo74ias"]}]}, {"operator": "or", "predicates": [{"anyOf": 17, "code": "zom8vkXh", "comparison": "isGreaterThanOrEqual", "name": "kwWAoUlA", "predicateType": "StatisticCodePredicate", "value": "dJUZfwEz", "values": ["1Wa7XLfY", "or0Fk3jO", "4a5xQJF4"]}, {"anyOf": 26, "code": "sE5HEMCh", "comparison": "includes", "name": "z71RQFmi", "predicateType": "EntitlementPredicate", "value": "FlWzJXla", "values": ["85IC1IwN", "7mt6PBO4", "la6RDYsB"]}, {"anyOf": 13, "code": "t33WHKS0", "comparison": "is", "name": "4xBdJSA9", "predicateType": "EntitlementPredicate", "value": "f74O5CJq", "values": ["WC51GUHU", "UuONH1Ou", "lFGYA5CC"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateItemPurchaseCondition' test.out

#- 141 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'cHcFg272' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "J6Z5KgRg"}' \
    > test.out 2>&1
eval_tap $? 141 'ReturnItem' test.out

#- 142 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name '5kmqRABl' \
    --offset '10' \
    --tag 'o2nrwIAI' \
    > test.out 2>&1
eval_tap $? 142 'QueryKeyGroups' test.out

#- 143 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "AXfTskwE", "name": "UkACinUW", "status": "INACTIVE", "tags": ["TMAKwMPn", "Yq9h5nJE", "Y4QDrfXQ"]}' \
    > test.out 2>&1
eval_tap $? 143 'CreateKeyGroup' test.out

#- 144 GetKeyGroupByBoothName
eval_tap 0 144 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 145 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'tIlvrgIm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'GetKeyGroup' test.out

#- 146 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'zAAb5N6f' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "hc6QTOkw", "name": "o6u1yFnn", "status": "INACTIVE", "tags": ["u83F5aut", "rYTcwpAe", "59KuewT9"]}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateKeyGroup' test.out

#- 147 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'oMZWoB6h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 147 'GetKeyGroupDynamic' test.out

#- 148 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId '3GXj4xFZ' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '4' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 148 'ListKeys' test.out

#- 149 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'IML12Od6' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 149 'UploadKeys' test.out

#- 150 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '29ZTBSbA' \
    --limit '92' \
    --offset '85' \
    --orderNos '["a4915cpv", "uwdKgGEm", "Opqmfczd"]' \
    --sortBy '220az9uw' \
    --startTime 'ZIG9W9NU' \
    --status 'CHARGED' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 150 'QueryOrders' test.out

#- 151 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetOrderStatistics' test.out

#- 152 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'n8vciHvR' \
    > test.out 2>&1
eval_tap $? 152 'GetOrder' test.out

#- 153 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qQB7Mlgb' \
    --body '{"description": "qysrKJEk"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundOrder' test.out

#- 154 GetPaymentCallbackConfig
eval_tap 0 154 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 155 UpdatePaymentCallbackConfig
eval_tap 0 155 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 156 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 156 'GetPaymentMerchantConfig' test.out

#- 157 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["BQuo8Hpg", "GDfR0Yb9", "oH9StTYg"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePaymentDomainWhitelistConfig' test.out

#- 158 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'jMNIsid6' \
    --externalId '9QcbUDOk' \
    --limit '63' \
    --notificationSource 'ADYEN' \
    --notificationType 'BOQXr2Ka' \
    --offset '73' \
    --paymentOrderNo 's1tOg5QK' \
    --startDate 'IQkPCFsY' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 158 'QueryPaymentNotifications' test.out

#- 159 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'VvlSeOjC' \
    --limit '98' \
    --offset '90' \
    --status 'REFUNDED' \
    > test.out 2>&1
eval_tap $? 159 'QueryPaymentOrders' test.out

#- 160 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "kH8thtzk", "currencyNamespace": "79Orutqr", "customParameters": {"2wefpqMD": {}, "8ZtOmIDQ": {}, "1L939696": {}}, "description": "fDy995Qz", "extOrderNo": "knCw7YC1", "extUserId": "Ak6JBwDD", "itemType": "COINS", "language": "ePiy_412", "metadata": {"NU0tlhfm": "9RAK7wWg", "EYaJmDa2": "HOOF34lK", "DsYJnfT5": "APLxDwE5"}, "notifyUrl": "3xPWxoO4", "omitNotification": true, "platform": "0hDd9N34", "price": 42, "recurringPaymentOrderNo": "HgaGkhQk", "region": "5pk5A6Cf", "returnUrl": "3t9GI4e5", "sandbox": true, "sku": "KVviUlxT", "subscriptionId": "SIuR12Et", "targetNamespace": "9HRMcNF9", "targetUserId": "iBcwlHd9", "title": "NNJeiege"}' \
    > test.out 2>&1
eval_tap $? 160 'CreatePaymentOrderByDedicated' test.out

#- 161 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'EXOnKACy' \
    > test.out 2>&1
eval_tap $? 161 'ListExtOrderNoByExtTxId' test.out

#- 162 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JGEeeXDf' \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentOrder' test.out

#- 163 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mDsBHW66' \
    --body '{"extTxId": "kgtDNHgM", "paymentMethod": "KiAi1G48", "paymentProvider": "WALLET"}' \
    > test.out 2>&1
eval_tap $? 163 'ChargePaymentOrder' test.out

#- 164 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6uHTqsUs' \
    --body '{"description": "WwlgGBzx"}' \
    > test.out 2>&1
eval_tap $? 164 'RefundPaymentOrderByDedicated' test.out

#- 165 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cwVRAeNL' \
    --body '{"amount": 42, "currencyCode": "OAPFuUIQ", "notifyType": "REFUND", "paymentProvider": "NEONPAY", "salesTax": 59, "vat": 97}' \
    > test.out 2>&1
eval_tap $? 165 'SimulatePaymentOrderNotification' test.out

#- 166 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'okZxWwVr' \
    > test.out 2>&1
eval_tap $? 166 'GetPaymentOrderChargeStatus' test.out

#- 167 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'xlEoIcuz' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "aOjAqRWO", "serviceLabel": 62}' \
    > test.out 2>&1
eval_tap $? 167 'GetPsnEntitlementOwnership' test.out

#- 168 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'aDSSZgMv' \
    --body '{"delegationToken": "lKe4AQkb", "sandboxId": "sL1D5w7X"}' \
    > test.out 2>&1
eval_tap $? 168 'GetXboxEntitlementOwnership' test.out

#- 169 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 169 'GetPlatformEntitlementConfig' test.out

#- 170 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["Oculus", "Oculus", "IOS"]}' \
    > test.out 2>&1
eval_tap $? 170 'UpdatePlatformEntitlementConfig' test.out

#- 171 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'IOS' \
    > test.out 2>&1
eval_tap $? 171 'GetPlatformWalletConfig' test.out

#- 172 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Twitch", "Nintendo", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 172 'UpdatePlatformWalletConfig' test.out

#- 173 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Playstation' \
    > test.out 2>&1
eval_tap $? 173 'ResetPlatformWalletConfig' test.out

#- 174 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 174 'GetRevocationConfig' test.out

#- 175 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
    > test.out 2>&1
eval_tap $? 175 'UpdateRevocationConfig' test.out

#- 176 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 176 'DeleteRevocationConfig' test.out

#- 177 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'nKfezZqz' \
    --limit '95' \
    --offset '6' \
    --source 'DLC' \
    --startTime '28r9G7qN' \
    --status 'SUCCESS' \
    --transactionId '0RlzKGjY' \
    --userId 'YZOy9wTF' \
    > test.out 2>&1
eval_tap $? 177 'QueryRevocationHistories' test.out

#- 178 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'GetRevocationPluginConfig' test.out

#- 179 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "pFATxgeY"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Gdu0ya1c"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 179 'UpdateRevocationPluginConfig' test.out

#- 180 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'DeleteRevocationPluginConfig' test.out

#- 181 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 181 'UploadRevocationPluginConfigCert' test.out

#- 182 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "cNjLVfdn", "eventTopic": "9oy4nb7I", "maxAwarded": 14, "maxAwardedPerUser": 26, "namespaceExpression": "DuUFu89n", "rewardCode": "XQGQrxjs", "rewardConditions": [{"condition": "A71bB8OH", "conditionName": "zzfZjfu0", "eventName": "CIr7R2wg", "rewardItems": [{"duration": 62, "endDate": "1986-09-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "p9B2rPQe", "quantity": 60, "sku": "05mUmgq3"}, {"duration": 80, "endDate": "1994-07-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "x5Vf93O7", "quantity": 2, "sku": "iiBlGtVM"}, {"duration": 73, "endDate": "1999-10-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "yRqqJaD0", "quantity": 27, "sku": "4gpMDxtz"}]}, {"condition": "Shy4QHUZ", "conditionName": "9CW4vVly", "eventName": "JykIFJ4H", "rewardItems": [{"duration": 88, "endDate": "1984-09-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FwAZGKbU", "quantity": 10, "sku": "jqcwUIeh"}, {"duration": 71, "endDate": "1979-03-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "T24KD4YS", "quantity": 0, "sku": "KdceiTzB"}, {"duration": 63, "endDate": "1989-03-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CpZzCOQ0", "quantity": 14, "sku": "CWwV5Ctg"}]}, {"condition": "2GZkL1AR", "conditionName": "N5EBwjI4", "eventName": "TFVyGqjJ", "rewardItems": [{"duration": 33, "endDate": "1975-08-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5YjBOloi", "quantity": 52, "sku": "PxD9nAQa"}, {"duration": 0, "endDate": "1986-10-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JVkuNb6L", "quantity": 72, "sku": "7grksQZf"}, {"duration": 8, "endDate": "1997-12-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "hMpqbhRD", "quantity": 37, "sku": "THWymDez"}]}], "userIdExpression": "WreXtpl4"}' \
    > test.out 2>&1
eval_tap $? 182 'CreateReward' test.out

#- 183 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'cNCk3qpz' \
    --limit '78' \
    --offset '74' \
    --sortBy '["rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 183 'QueryRewards' test.out

#- 184 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'ExportRewards' test.out

#- 185 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 185 'ImportRewards' test.out

#- 186 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'f0AiWo9k' \
    > test.out 2>&1
eval_tap $? 186 'GetReward' test.out

#- 187 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'rAQiUtWd' \
    --body '{"description": "kllTFttr", "eventTopic": "nRZxQD5K", "maxAwarded": 55, "maxAwardedPerUser": 84, "namespaceExpression": "3L2jPKIl", "rewardCode": "h3WFZFGq", "rewardConditions": [{"condition": "rAwStKS9", "conditionName": "hSdN6hBK", "eventName": "vR0P9bm1", "rewardItems": [{"duration": 53, "endDate": "1976-01-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "oRs5TxB4", "quantity": 94, "sku": "B35JbjxP"}, {"duration": 72, "endDate": "1980-05-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vO4yE2m2", "quantity": 29, "sku": "LS0CFdnK"}, {"duration": 15, "endDate": "1990-06-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2cUd94as", "quantity": 56, "sku": "YPqyw5MC"}]}, {"condition": "M9BRFah8", "conditionName": "CLJ7pbQL", "eventName": "LhqBI3Y5", "rewardItems": [{"duration": 30, "endDate": "1991-06-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "TWE7ZfuC", "quantity": 39, "sku": "H40tAXO8"}, {"duration": 22, "endDate": "1971-03-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JJ2AETo6", "quantity": 77, "sku": "gmpMX4sA"}, {"duration": 36, "endDate": "1997-07-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5ZqMi0bi", "quantity": 25, "sku": "XucRboBu"}]}, {"condition": "hb6CRSVB", "conditionName": "vvkVsiXk", "eventName": "Tj0YREVt", "rewardItems": [{"duration": 64, "endDate": "1996-05-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "UglmUGGH", "quantity": 85, "sku": "fwgvmoO0"}, {"duration": 55, "endDate": "1993-01-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Min6Vg7P", "quantity": 91, "sku": "cnQLKwel"}, {"duration": 80, "endDate": "1984-08-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QvnYV6rH", "quantity": 49, "sku": "yoffOGwj"}]}], "userIdExpression": "pWdU2FE2"}' \
    > test.out 2>&1
eval_tap $? 187 'UpdateReward' test.out

#- 188 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'W72CXChi' \
    > test.out 2>&1
eval_tap $? 188 'DeleteReward' test.out

#- 189 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'YcwTIJvN' \
    --body '{"payload": {"lxCsMAIA": {}, "w7hu7Fn7": {}, "y1OHaJSs": {}}}' \
    > test.out 2>&1
eval_tap $? 189 'CheckEventCondition' test.out

#- 190 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId '5OMiLumm' \
    --body '{"conditionName": "lohw9ths", "userId": "TkySjSPr"}' \
    > test.out 2>&1
eval_tap $? 190 'DeleteRewardConditionRecord' test.out

#- 191 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'KWxEFdZl' \
    --limit '32' \
    --offset '60' \
    --start 'MOpXOHoQ' \
    --storeId 'KiRJqHf0' \
    --viewId '2yxPepX1' \
    > test.out 2>&1
eval_tap $? 191 'QuerySections' test.out

#- 192 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'RVPllLub' \
    --body '{"active": true, "displayOrder": 14, "endDate": "1988-12-29T00:00:00Z", "ext": {"T6wTNRWk": {}, "aHgEqS2L": {}, "OTSQTIPj": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 29, "itemCount": 61, "rule": "SEQUENCE"}, "items": [{"id": "XF43n4Kf", "sku": "6rpTSd2c"}, {"id": "fZGcCI8n", "sku": "kKICyh5g"}, {"id": "3ph5And2", "sku": "qPSMN5yK"}], "localizations": {"0HnkmQtt": {"description": "BSkP6kC1", "localExt": {"ATYsOWuY": {}, "wp8ZZntu": {}, "q9t6ax22": {}}, "longDescription": "LJhmrzbQ", "title": "wKx03WZu"}, "h3NeVQgS": {"description": "6YGCvgFD", "localExt": {"YDtdj7AH": {}, "Wyl87gCL": {}, "6jvnMbI3": {}}, "longDescription": "ZOXnFmso", "title": "b1hKFsL5"}, "owmi9D3c": {"description": "daLC8anP", "localExt": {"VM9pvCsZ": {}, "r6YMsrMb": {}, "ugImobnT": {}}, "longDescription": "cLlaH4yf", "title": "tcT9QMfa"}}, "name": "fC2N4IPg", "rotationType": "CUSTOM", "startDate": "1994-04-05T00:00:00Z", "viewId": "poHpT69u"}' \
    > test.out 2>&1
eval_tap $? 192 'CreateSection' test.out

#- 193 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'WftMvh0C' \
    > test.out 2>&1
eval_tap $? 193 'PurgeExpiredSection' test.out

#- 194 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'N7O6wE0z' \
    --storeId 'kD6jF8gY' \
    > test.out 2>&1
eval_tap $? 194 'GetSection' test.out

#- 195 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'cJ6lg3Js' \
    --storeId 'zFYWAzRr' \
    --body '{"active": false, "displayOrder": 26, "endDate": "1989-04-19T00:00:00Z", "ext": {"7RUgolIX": {}, "wLI5QQEp": {}, "D6FBdcI1": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 26, "itemCount": 17, "rule": "SEQUENCE"}, "items": [{"id": "MEzWZsKm", "sku": "HO6IC5lt"}, {"id": "SRdxFXyl", "sku": "0zJLrFJ3"}, {"id": "A1OHwC3G", "sku": "eNRfAs5h"}], "localizations": {"ikD1VgXr": {"description": "I23TjAYt", "localExt": {"IPKTGCoG": {}, "PMKitnJU": {}, "e9wL7FF1": {}}, "longDescription": "a8Jxa5nm", "title": "FUCf5RQF"}, "pW4ei5ey": {"description": "N0G8ocFE", "localExt": {"blg1eGMY": {}, "ZoBUJBrE": {}, "RYQ0oFEO": {}}, "longDescription": "zPyA6GYt", "title": "ocx9Ahle"}, "KUorZdUK": {"description": "x5602rLG", "localExt": {"NHeM2Pfm": {}, "5ABLwbZs": {}, "sa1gVRcL": {}}, "longDescription": "21junyeJ", "title": "RtjKjrgv"}}, "name": "O8AMkDRI", "rotationType": "FIXED_PERIOD", "startDate": "1985-03-17T00:00:00Z", "viewId": "UmrxFPC2"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateSection' test.out

#- 196 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'zmKGiaZq' \
    --storeId 'nJDD5Y0x' \
    > test.out 2>&1
eval_tap $? 196 'DeleteSection' test.out

#- 197 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 197 'ListStores' test.out

#- 198 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "EDrGzHEa", "defaultRegion": "LLrM3v55", "description": "7QPqo4Fs", "supportedLanguages": ["QPiJT8tO", "DnKuHvNh", "Df2dIb0y"], "supportedRegions": ["wlpStwkv", "UwEiTKf6", "OeqApaMB"], "title": "stJesKA2"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateStore' test.out

#- 199 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 199 'GetCatalogDefinition' test.out

#- 200 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'DownloadCSVTemplates' test.out

#- 201 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["HTjvrbsx", "Dbd55mW8", "VhAAqpqa"], "idsToBeExported": ["TxC81QQP", "pi1obccE", "P2c3StMt"], "storeId": "VXMwIPMD"}' \
    > test.out 2>&1
eval_tap $? 201 'ExportStoreByCSV' test.out

#- 202 ImportStore
eval_tap 0 202 'ImportStore # SKIP deprecated' test.out

#- 203 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetPublishedStore' test.out

#- 204 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'DeletePublishedStore' test.out

#- 205 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'GetPublishedStoreBackup' test.out

#- 206 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 206 'RollbackPublishedStore' test.out

#- 207 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ijzvwJ1e' \
    > test.out 2>&1
eval_tap $? 207 'GetStore' test.out

#- 208 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '7apRrail' \
    --body '{"defaultLanguage": "xAa9RYUy", "defaultRegion": "WekrBSY0", "description": "9FpVxRjh", "supportedLanguages": ["Jurp8oxz", "cVY18PFn", "A4Auxl7y"], "supportedRegions": ["42ezlVYz", "EsshBruM", "4TOJoxGX"], "title": "ZhWYKE7F"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateStore' test.out

#- 209 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId '4vAZrHEr' \
    > test.out 2>&1
eval_tap $? 209 'DeleteStore' test.out

#- 210 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'tpRLx9Ia' \
    --action 'UPDATE' \
    --itemSku '4Exsyb2J' \
    --itemType 'OPTIONBOX' \
    --limit '96' \
    --offset '70' \
    --selected 'true' \
    --sortBy '["createdAt:asc", "updatedAt:asc", "updatedAt:desc"]' \
    --status 'UNPUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd '72biBfmX' \
    --updatedAtStart '58ENOLmq' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 210 'QueryChanges' test.out

#- 211 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'FQVBLPvk' \
    > test.out 2>&1
eval_tap $? 211 'PublishAll' test.out

#- 212 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'lHAFWOKf' \
    > test.out 2>&1
eval_tap $? 212 'PublishSelected' test.out

#- 213 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '3nMftnfX' \
    > test.out 2>&1
eval_tap $? 213 'SelectAllRecords' test.out

#- 214 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'YGsV0YKW' \
    --action 'DELETE' \
    --itemSku '0DyvnWFl' \
    --itemType 'OPTIONBOX' \
    --selected 'true' \
    --type 'CATEGORY' \
    --updatedAtEnd 'Bsqy9OAy' \
    --updatedAtStart 'tPF3g9yq' \
    > test.out 2>&1
eval_tap $? 214 'SelectAllRecordsByCriteria' test.out

#- 215 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'Q3EDpEpa' \
    --action 'DELETE' \
    --itemSku 'E3H7hVVv' \
    --itemType 'BUNDLE' \
    --type 'VIEW' \
    --updatedAtEnd 'IZVb1x6u' \
    --updatedAtStart 'ZsXAJ6wA' \
    > test.out 2>&1
eval_tap $? 215 'GetStatistic' test.out

#- 216 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'CsDMxQuL' \
    > test.out 2>&1
eval_tap $? 216 'UnselectAllRecords' test.out

#- 217 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'yjDyEiqC' \
    --namespace $AB_NAMESPACE \
    --storeId 'v4XSIDpT' \
    > test.out 2>&1
eval_tap $? 217 'SelectRecord' test.out

#- 218 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'onpqeBHR' \
    --namespace $AB_NAMESPACE \
    --storeId 'uwj61jVW' \
    > test.out 2>&1
eval_tap $? 218 'UnselectRecord' test.out

#- 219 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId '7pbsjkqM' \
    --targetStoreId 'xEDfS2lS' \
    > test.out 2>&1
eval_tap $? 219 'CloneStore' test.out

#- 220 ExportStore
eval_tap 0 220 'ExportStore # SKIP deprecated' test.out

#- 221 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId '5t3pXvzw' \
    --end 'ipmZyx4o' \
    --limit '100' \
    --offset '86' \
    --sortBy 'emE5YGa4' \
    --start 'qVURpxzJ' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 221 'QueryImportHistory' test.out

#- 222 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'bhDfHkfR' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 't1S7USi3' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 222 'ImportStoreByCSV' test.out

#- 223 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId '0VDsqGXM' \
    --limit '6' \
    --offset '79' \
    --sku 'hbaICmRU' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    --userId 'iEoQwfJm' \
    > test.out 2>&1
eval_tap $? 223 'QuerySubscriptions' test.out

#- 224 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'x3TxugnM' \
    > test.out 2>&1
eval_tap $? 224 'RecurringChargeSubscription' test.out

#- 225 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'qfruRrRs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'GetTicketDynamic' test.out

#- 226 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName '6lRjvKoy' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "mAtlBArG"}' \
    > test.out 2>&1
eval_tap $? 226 'DecreaseTicketSale' test.out

#- 227 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'FHq0nE6f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 227 'GetTicketBoothID' test.out

#- 228 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'I17VXZ7d' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 33, "orderNo": "8yN9zgLc"}' \
    > test.out 2>&1
eval_tap $? 228 'IncreaseTicketSale' test.out

#- 229 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 71, "currencyCode": "4qGOBRf1", "expireAt": "1985-06-05T00:00:00Z"}, "debitPayload": {"count": 54, "currencyCode": "S8UTVDyn", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "zsos68DU", "entitlementOrigin": "Twitch", "itemIdentity": "cGl3SWOL", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "KcUG4VK1"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 73, "currencyCode": "jWtXEjlU", "expireAt": "1994-05-09T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "ylQAlzt3", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 85, "entitlementCollectionId": "rHkC63Xb", "entitlementOrigin": "Playstation", "itemIdentity": "hOZOEOqQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "Y2NlYAZq"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 8, "currencyCode": "MWOcTbso", "expireAt": "1982-09-20T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "sIdsBMwk", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 79, "entitlementCollectionId": "lzPml20A", "entitlementOrigin": "Epic", "itemIdentity": "xokPEvTf", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "TsMRqLyM"}, "type": "DEBIT_WALLET"}], "userId": "KvnY3UfZ"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 71, "currencyCode": "pEsJqDsE", "expireAt": "1974-09-17T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "hnjwb6dL", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "w0QMy0Ve", "entitlementOrigin": "Steam", "itemIdentity": "iAZpQ9cb", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "GR0iGh4j"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 61, "currencyCode": "V1omqZoa", "expireAt": "1993-05-26T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "HUAkWO8h", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "KmDFAYMm", "entitlementOrigin": "Epic", "itemIdentity": "Z0ms54Lk", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "BhPXNfgW"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 8, "currencyCode": "arDgXH60", "expireAt": "1998-06-09T00:00:00Z"}, "debitPayload": {"count": 9, "currencyCode": "dkSaGKw6", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "lhV952NL", "entitlementOrigin": "Xbox", "itemIdentity": "8BiCBkW3", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "IKP2AQg5"}, "type": "DEBIT_WALLET"}], "userId": "2MwblasI"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 83, "currencyCode": "SCNawzjd", "expireAt": "1986-12-04T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "3bBOgI01", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "Jbd1AGyQ", "entitlementOrigin": "Other", "itemIdentity": "huRl821T", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "vjZmBkor"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 75, "currencyCode": "zrZUy5vW", "expireAt": "1978-03-14T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "wgw215jj", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "lYBO3SJj", "entitlementOrigin": "IOS", "itemIdentity": "x0jz4nxB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "fETk38Sr"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 83, "currencyCode": "99nPNb6h", "expireAt": "1976-12-25T00:00:00Z"}, "debitPayload": {"count": 17, "currencyCode": "J6Wu8Nx4", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 87, "entitlementCollectionId": "tNy3myb0", "entitlementOrigin": "Oculus", "itemIdentity": "YFTFkWik", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 24, "entitlementId": "8C4vTquy"}, "type": "DEBIT_WALLET"}], "userId": "Q6SIh4eF"}], "metadata": {"vDTLB2tr": {}, "xZ72rt9q": {}, "N0VcgmfF": {}}, "needPreCheck": true, "transactionId": "0JIYLIKF", "type": "jB2iGsNz"}' \
    > test.out 2>&1
eval_tap $? 229 'Commit' test.out

#- 230 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '95' \
    --status 'SUCCESS' \
    --type 'taryZGsQ' \
    --userId '0a8xIncv' \
    > test.out 2>&1
eval_tap $? 230 'GetTradeHistoryByCriteria' test.out

#- 231 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'zatZq0uM' \
    > test.out 2>&1
eval_tap $? 231 'GetTradeHistoryByTransactionId' test.out

#- 232 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RRunnWxI' \
    --body '{"achievements": [{"id": "44eSIjOS", "value": 60}, {"id": "kvM9JvZI", "value": 8}, {"id": "w7ArBNt8", "value": 14}], "steamUserId": "ugTqRbTP"}' \
    > test.out 2>&1
eval_tap $? 232 'UnlockSteamUserAchievement' test.out

#- 233 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'CaoHyfN5' \
    --xboxUserId 'XxbcKZYp' \
    > test.out 2>&1
eval_tap $? 233 'GetXblUserAchievements' test.out

#- 234 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'gwxsripI' \
    --body '{"achievements": [{"id": "4s2Jam0F", "percentComplete": 77}, {"id": "SwuhKWlp", "percentComplete": 86}, {"id": "5XQcReFY", "percentComplete": 99}], "serviceConfigId": "fEOUwA3C", "titleId": "Qs0aKCci", "xboxUserId": "HzHK2iAz"}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateXblUserAchievement' test.out

#- 235 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'em8OuAIC' \
    > test.out 2>&1
eval_tap $? 235 'AnonymizeCampaign' test.out

#- 236 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '6KhSNzYv' \
    > test.out 2>&1
eval_tap $? 236 'AnonymizeEntitlement' test.out

#- 237 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'KWj4mqim' \
    > test.out 2>&1
eval_tap $? 237 'AnonymizeFulfillment' test.out

#- 238 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'RlPFuqK3' \
    > test.out 2>&1
eval_tap $? 238 'AnonymizeIntegration' test.out

#- 239 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ObKKadGo' \
    > test.out 2>&1
eval_tap $? 239 'AnonymizeOrder' test.out

#- 240 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId '21XgTP44' \
    > test.out 2>&1
eval_tap $? 240 'AnonymizePayment' test.out

#- 241 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId '3a7lNK5a' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeRevocation' test.out

#- 242 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'X2eFZY9Y' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeSubscription' test.out

#- 243 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '3C4nemrf' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeWallet' test.out

#- 244 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Y6koKEdw' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 244 'GetUserDLCByPlatform' test.out

#- 245 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'tTV6wtsN' \
    --includeAllNamespaces 'false' \
    --status 'REVOKED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 245 'GetUserDLC' test.out

#- 246 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Pl2hMI4o' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId 'MrPubvB6' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'V5hjkbwZ' \
    --features '["fS9NToZu", "4ET5KCQj", "CHHiOB0C"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'false' \
    --itemId '["4ARPJ4ys", "q8lrHzA7", "NMoxq0CT"]' \
    --limit '36' \
    --offset '33' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 246 'QueryUserEntitlements' test.out

#- 247 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'FXVWgHM2' \
    --body '[{"collectionId": "dWxJFjvD", "endDate": "1997-06-14T00:00:00Z", "grantedCode": "Nwq4YcR6", "itemId": "q4p9V1TC", "itemNamespace": "8kvCAkSS", "language": "OtW_qhYl", "metadata": {"XLl9OCN8": {}, "BFazWN5L": {}, "Z6yCDmhp": {}}, "origin": "IOS", "quantity": 90, "region": "iQSx4hlW", "source": "REWARD", "startDate": "1985-10-16T00:00:00Z", "storeId": "hb3KIVkN"}, {"collectionId": "Kqw4NYCQ", "endDate": "1980-05-09T00:00:00Z", "grantedCode": "jCZrHmT0", "itemId": "cvUzCwj7", "itemNamespace": "kWpBBcyv", "language": "CMgM-Njrd_gr", "metadata": {"GQNt6kpc": {}, "py9gBCfY": {}, "ZVC3xjQr": {}}, "origin": "Steam", "quantity": 84, "region": "61wOsplz", "source": "OTHER", "startDate": "1993-12-01T00:00:00Z", "storeId": "Nuh22RcK"}, {"collectionId": "yaUNdBY9", "endDate": "1990-06-11T00:00:00Z", "grantedCode": "Oqfd7COv", "itemId": "d8mxF35L", "itemNamespace": "J4qaHXjn", "language": "CWCq_DNgZ-Vj", "metadata": {"Os4o0gfk": {}, "QSV73h2l": {}, "0TyFnpWS": {}}, "origin": "GooglePlay", "quantity": 55, "region": "AXbSCiFR", "source": "GIFT", "startDate": "1975-10-06T00:00:00Z", "storeId": "lbmmYTXb"}]' \
    > test.out 2>&1
eval_tap $? 247 'GrantUserEntitlement' test.out

#- 248 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'ZErsD5kY' \
    --activeOnly 'false' \
    --appId '6frRkPr1' \
    > test.out 2>&1
eval_tap $? 248 'GetUserAppEntitlementByAppId' test.out

#- 249 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'vy7slHdq' \
    --activeOnly 'false' \
    --limit '83' \
    --offset '78' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserEntitlementsByAppType' test.out

#- 250 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'Wrqa3Lz9' \
    --ids '["5kqOYelq", "MU2kvf7Q", "JredHcbB"]' \
    > test.out 2>&1
eval_tap $? 250 'GetUserEntitlementsByIds' test.out

#- 251 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'huhZG1NN' \
    --activeOnly 'true' \
    --entitlementClazz 'MEDIA' \
    --platform 'dTlzS5Qy' \
    --itemId 'BODtA5lm' \
    > test.out 2>&1
eval_tap $? 251 'GetUserEntitlementByItemId' test.out

#- 252 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'f8Z7PCU1' \
    --ids '["Z1jUcWhC", "nVz3oAsH", "uq9PxbO4"]' \
    --platform '4iDfbMTH' \
    > test.out 2>&1
eval_tap $? 252 'GetUserActiveEntitlementsByItemIds' test.out

#- 253 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'RomB9noG' \
    --activeOnly 'false' \
    --entitlementClazz 'CODE' \
    --platform 'Y2wvvS3s' \
    --sku '1pywByPM' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementBySku' test.out

#- 254 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mTJ5m5f1' \
    --appIds '["SiPQizu6", "IQKL42rN", "XBNht0HE"]' \
    --itemIds '["G2AVeh1g", "Hgsnxko4", "Yurlg1Vb"]' \
    --platform 'fS0U7lFm' \
    --skus '["01CkxhIW", "dBdF29tA", "IGBRjHLu"]' \
    > test.out 2>&1
eval_tap $? 254 'ExistsAnyUserActiveEntitlement' test.out

#- 255 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'gJ3DQ3au' \
    --platform 'RJNufIYh' \
    --itemIds '["xFV8vKlF", "NP4YsOq3", "ZIFoK6NU"]' \
    > test.out 2>&1
eval_tap $? 255 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 256 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'PJSQzYGx' \
    --appId '1PDQGDjx' \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 257 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'nP4a7Iov' \
    --entitlementClazz 'APP' \
    --platform 'TvQwp3CI' \
    --itemId 'ghCRVfwA' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementOwnershipByItemId' test.out

#- 258 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'Ca9kTGAt' \
    --ids '["rJJIMgJ7", "gIh9ANyN", "Qyd3XiKQ"]' \
    --platform '0jSyAUQ5' \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementOwnershipByItemIds' test.out

#- 259 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'deptepZw' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'CQO6IZzK' \
    --sku '1D954kOf' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementOwnershipBySku' test.out

#- 260 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'a1Ss7D2G' \
    > test.out 2>&1
eval_tap $? 260 'RevokeAllEntitlements' test.out

#- 261 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'VkT5wnNh' \
    --entitlementIds 'RTT87m68' \
    > test.out 2>&1
eval_tap $? 261 'RevokeUserEntitlements' test.out

#- 262 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'RGOV1Lga' \
    --namespace $AB_NAMESPACE \
    --userId '8lvrXiWM' \
    > test.out 2>&1
eval_tap $? 262 'GetUserEntitlement' test.out

#- 263 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'bzH32bYU' \
    --namespace $AB_NAMESPACE \
    --userId '3vWG5NFE' \
    --body '{"collectionId": "BLkL8e1U", "endDate": "1977-06-08T00:00:00Z", "nullFieldList": ["9gNB8BZR", "oXFxQZ6K", "GaeYTEfO"], "origin": "GooglePlay", "reason": "HvIfQGFl", "startDate": "1985-08-04T00:00:00Z", "status": "INACTIVE", "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 263 'UpdateUserEntitlement' test.out

#- 264 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId '0t2F8XRz' \
    --namespace $AB_NAMESPACE \
    --userId '6U7A0dEC' \
    --body '{"metadata": {"yDuF2Czh": {}, "yBlZNpPi": {}, "70peGWlF": {}}, "options": ["HAx9JxDu", "U3d3zu4W", "nQALhF5Y"], "platform": "Z7pBl9mw", "requestId": "K4fVbfy0", "useCount": 10}' \
    > test.out 2>&1
eval_tap $? 264 'ConsumeUserEntitlement' test.out

#- 265 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'mx1ZgCI0' \
    --namespace $AB_NAMESPACE \
    --userId 'JBI8umvd' \
    > test.out 2>&1
eval_tap $? 265 'DisableUserEntitlement' test.out

#- 266 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'ML2QquZe' \
    --namespace $AB_NAMESPACE \
    --userId 'kIcFCqUQ' \
    > test.out 2>&1
eval_tap $? 266 'EnableUserEntitlement' test.out

#- 267 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'G2kf19Tf' \
    --namespace $AB_NAMESPACE \
    --userId '7kmVAXAH' \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementHistories' test.out

#- 268 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'poRdJkeW' \
    --namespace $AB_NAMESPACE \
    --userId 'znsHjGrk' \
    --body '{"metadata": {"GXTY8zBe": {}, "Dh3fXUea": {}, "Nxo53zu2": {}}}' \
    > test.out 2>&1
eval_tap $? 268 'RevokeUserEntitlement' test.out

#- 269 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '4Z2lU8cd' \
    --namespace $AB_NAMESPACE \
    --userId '4oC5LqyK' \
    --body '{"reason": "za5H5fed", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlementByUseCount' test.out

#- 270 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'GBwhCFul' \
    --namespace $AB_NAMESPACE \
    --userId 'BbnRrEMT' \
    --quantity '87' \
    > test.out 2>&1
eval_tap $? 270 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 271 RevokeUseCount
eval_tap 0 271 'RevokeUseCount # SKIP deprecated' test.out

#- 272 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'VEIYIuBM' \
    --namespace $AB_NAMESPACE \
    --userId '0heG5YOB' \
    --body '{"platform": "m4P0A0y2", "requestId": "uIArWkOE", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 272 'SellUserEntitlement' test.out

#- 273 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'Zf3hVEJh' \
    --body '{"duration": 84, "endDate": "1995-01-26T00:00:00Z", "entitlementCollectionId": "IOwoyvHr", "entitlementOrigin": "Steam", "itemId": "QSIeS0Kx", "itemSku": "F6ekK2NZ", "language": "QLxMiQhA", "metadata": {"Lz8rmP1U": {}, "Jg90SkJR": {}, "DdMpYaj4": {}}, "order": {"currency": {"currencyCode": "p9vnQSMy", "currencySymbol": "vFXXVoIc", "currencyType": "REAL", "decimals": 82, "namespace": "YdEaD4Ky"}, "ext": {"SGPHPvVc": {}, "ziqHCUk8": {}, "CgAPk0m0": {}}, "free": true}, "orderNo": "hoatrKbz", "origin": "Steam", "overrideBundleItemQty": {"ehP4YqtK": 90, "AWotkckN": 63, "1gvR8rMi": 43}, "quantity": 94, "region": "wa0jOBlO", "source": "DLC", "startDate": "1982-02-15T00:00:00Z", "storeId": "GpUkqZsv"}' \
    > test.out 2>&1
eval_tap $? 273 'FulfillItem' test.out

#- 274 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'IVrDzEjd' \
    --body '{"code": "eE3doGEY", "language": "iS_SmQu", "region": "zrP6FJW9"}' \
    > test.out 2>&1
eval_tap $? 274 'RedeemCode' test.out

#- 275 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'kFM7Uurv' \
    --body '{"itemId": "wgUMZuMW", "itemSku": "Cp8JK4rU", "quantity": 19}' \
    > test.out 2>&1
eval_tap $? 275 'PreCheckFulfillItem' test.out

#- 276 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '4DyXW4D5' \
    --body '{"entitlementCollectionId": "UaoSCJLa", "entitlementOrigin": "GooglePlay", "metadata": {"AMhgcadz": {}, "W9nzQdvI": {}, "9L7F5X9i": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "3pN30ytB", "namespace": "gWxEXhEM"}, "item": {"itemId": "qEZsbNk0", "itemName": "DGHRXwZ7", "itemSku": "CFjwdAGw", "itemType": "ZVtp9iYX"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "wlfKlntu", "namespace": "53IcmvF9"}, "item": {"itemId": "bLO4Izjn", "itemName": "gpqFOTXu", "itemSku": "xL05Cz0v", "itemType": "GISbPyEt"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "6GJooLwo", "namespace": "VcxSIY8V"}, "item": {"itemId": "dQM1Hlqb", "itemName": "r8C1Fot4", "itemSku": "d02WdNYY", "itemType": "Cm4HbgyP"}, "quantity": 48, "type": "CURRENCY"}], "source": "SELL_BACK", "transactionId": "RammMBGe"}' \
    > test.out 2>&1
eval_tap $? 276 'FulfillRewards' test.out

#- 277 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'XavZ1nPE' \
    --endTime 'raDGcqOX' \
    --limit '39' \
    --offset '86' \
    --productId 'HSaf34Hr' \
    --startTime 'YyYPWh09' \
    --status 'PARTIAL_REVOKED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserIAPOrders' test.out

#- 278 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'mwahjxKP' \
    > test.out 2>&1
eval_tap $? 278 'QueryAllUserIAPOrders' test.out

#- 279 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Lw9ddz0j' \
    --endTime 'C2SKX0wZ' \
    --limit '4' \
    --offset '56' \
    --startTime 'XRnjG8Ai' \
    --status 'PENDING' \
    --type 'APPLE' \
    > test.out 2>&1
eval_tap $? 279 'QueryUserIAPConsumeHistory' test.out

#- 280 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'wLMMFghF' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "yJnz-iUyS", "productId": "APbSC4kS", "region": "QOoRAtCa", "transactionId": "A85h2qyp", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 280 'MockFulfillIAPItem' test.out

#- 281 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'bVF8Vaff' \
    --activeOnly 'false' \
    --groupId 'rggxGoQ5' \
    --limit '18' \
    --offset '38' \
    --platform 'TWITCH' \
    --productId 'Syvuba4B' \
    > test.out 2>&1
eval_tap $? 281 'QueryUserThirdPartySubscription' test.out

#- 282 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'Jr4aGeYE' \
    --groupId 'Jo7xfzP2' \
    > test.out 2>&1
eval_tap $? 282 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 283 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'GOOGLE' \
    --userId 'gG6yi3cB' \
    --productId '6fwsbfEl' \
    > test.out 2>&1
eval_tap $? 283 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 284 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'ANxn7XyG' \
    --activeOnly 'true' \
    --groupId 'SRO1Z3m1' \
    --limit '13' \
    --offset '73' \
    --platform 'APPLE' \
    --productId 'MimyMLRV' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 285 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'JMDswVEn' \
    --namespace $AB_NAMESPACE \
    --userId 'G2KaKvpV' \
    > test.out 2>&1
eval_tap $? 285 'GetThirdPartySubscriptionDetails' test.out

#- 286 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'nzflfkdF' \
    --namespace $AB_NAMESPACE \
    --userId 'rHChfwpR' \
    --limit '3' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 286 'GetSubscriptionHistory' test.out

#- 287 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'TGYcoSBc' \
    --namespace $AB_NAMESPACE \
    --userId 'Bs5HaTYs' \
    > test.out 2>&1
eval_tap $? 287 'SyncSubscriptionTransaction' test.out

#- 288 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'd9Apk4Lz' \
    --namespace $AB_NAMESPACE \
    --userId 'LlwQH0F5' \
    > test.out 2>&1
eval_tap $? 288 'GetThirdPartyUserSubscriptionDetails' test.out

#- 289 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'qsTzPgFb' \
    --namespace $AB_NAMESPACE \
    --userId 'payt7K9R' \
    > test.out 2>&1
eval_tap $? 289 'SyncSubscription' test.out

#- 290 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'pKTr4pRN' \
    --discounted 'true' \
    --itemId 'GHzQTcGs' \
    --limit '13' \
    --offset '87' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserOrders' test.out

#- 291 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '2Ruoih88' \
    --body '{"currencyCode": "e2a1qjaI", "currencyNamespace": "WRgEhCt3", "discountCodes": ["oeAeeSR9", "yNVBPono", "eqqcnLpi"], "discountedPrice": 76, "entitlementPlatform": "Nintendo", "ext": {"ayUUIQlf": {}, "cYOlt9kF": {}, "dfIVaSSf": {}}, "itemId": "GN1yvZVY", "language": "jCQGVy4P", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 83, "quantity": 31, "region": "yujjJnZJ", "returnUrl": "Cei35nLv", "sandbox": true, "sectionId": "xdJpyx0J"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminCreateUserOrder' test.out

#- 292 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId '4080ZGnW' \
    --itemId 'RQ99U96W' \
    > test.out 2>&1
eval_tap $? 292 'CountOfPurchasedItem' test.out

#- 293 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Z7TinUVk' \
    --userId 'RU9MuD9M' \
    > test.out 2>&1
eval_tap $? 293 'GetUserOrder' test.out

#- 294 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'bgDw4eCH' \
    --userId 'rIwyL3Kk' \
    --body '{"status": "INIT", "statusReason": "6s3W5E8u"}' \
    > test.out 2>&1
eval_tap $? 294 'UpdateUserOrderStatus' test.out

#- 295 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3h9Sv47s' \
    --userId 'Yefjwvgt' \
    > test.out 2>&1
eval_tap $? 295 'FulfillUserOrder' test.out

#- 296 GetUserOrderGrant
eval_tap 0 296 'GetUserOrderGrant # SKIP deprecated' test.out

#- 297 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'iQkUEqbA' \
    --userId 'Bx0bm4b9' \
    > test.out 2>&1
eval_tap $? 297 'GetUserOrderHistories' test.out

#- 298 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'g291ZGST' \
    --userId 'q1fJlj3O' \
    --body '{"additionalData": {"cardSummary": "nm5lLYUL"}, "authorisedTime": "1999-10-07T00:00:00Z", "chargebackReversedTime": "1988-01-03T00:00:00Z", "chargebackTime": "1992-09-05T00:00:00Z", "chargedTime": "1996-04-24T00:00:00Z", "createdTime": "1978-05-27T00:00:00Z", "currency": {"currencyCode": "AoQL3O5y", "currencySymbol": "S7NCYOWB", "currencyType": "REAL", "decimals": 82, "namespace": "SV34KdtS"}, "customParameters": {"qdO5FqUE": {}, "YxOhzloC": {}, "Rlr3OA6F": {}}, "extOrderNo": "CzWp05FN", "extTxId": "u9kHMzVs", "extUserId": "HIc679EW", "issuedAt": "1989-12-28T00:00:00Z", "metadata": {"PfqvrJGq": "HYTHYEnK", "Tdg8qnhD": "hSpVKEV4", "IdJzjuFE": "pqtnFnFn"}, "namespace": "YkmFO5WT", "nonceStr": "P75ivyXH", "paymentData": {"discountAmount": 62, "discountCode": "1StaLfHE", "subtotalPrice": 0, "tax": 30, "totalPrice": 64}, "paymentMethod": "dk1GXxMd", "paymentMethodFee": 15, "paymentOrderNo": "4msfJhA2", "paymentProvider": "ALIPAY", "paymentProviderFee": 89, "paymentStationUrl": "QvZz37O4", "price": 72, "refundedTime": "1978-02-22T00:00:00Z", "salesTax": 39, "sandbox": false, "sku": "82XQzcDt", "status": "REFUNDED", "statusReason": "NSFWqiLg", "subscriptionId": "iyPQLSZ4", "subtotalPrice": 18, "targetNamespace": "wbAbLAel", "targetUserId": "Sh2nhSuH", "tax": 85, "totalPrice": 11, "totalTax": 6, "txEndTime": "1992-02-08T00:00:00Z", "type": "x0FZ1POr", "userId": "yoLkQ1Gp", "vat": 49}' \
    > test.out 2>&1
eval_tap $? 298 'ProcessUserOrderNotification' test.out

#- 299 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'vKVR6EAX' \
    --userId 'ODA4BUKx' \
    > test.out 2>&1
eval_tap $? 299 'DownloadUserOrderReceipt' test.out

#- 300 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'atV9WikU' \
    --body '{"currencyCode": "qSqyc6JL", "currencyNamespace": "Jhgmc4Ai", "customParameters": {"T46RKn7r": {}, "OfQs4czU": {}, "rbU7XVbb": {}}, "description": "81pMVVa9", "extOrderNo": "X2D3PgvA", "extUserId": "LQdhNYSh", "itemType": "LOOTBOX", "language": "nU-AjzD-hy", "metadata": {"PBH8DDsu": "2MYWgDsc", "5tZSiAiQ": "nijv8JEK", "z0p9CwbG": "5Op88Or9"}, "notifyUrl": "6Z2SC9WX", "omitNotification": true, "platform": "IxIyBBTl", "price": 61, "recurringPaymentOrderNo": "IGkNkOnA", "region": "03ItdCUA", "returnUrl": "DjXFmCoP", "sandbox": true, "sku": "XZKMFJkw", "subscriptionId": "R6moLzsF", "title": "uT0HrZXC"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserPaymentOrder' test.out

#- 301 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'olXckyjm' \
    --userId '6xvlANg0' \
    --body '{"description": "LLwBJtXv"}' \
    > test.out 2>&1
eval_tap $? 301 'RefundUserPaymentOrder' test.out

#- 302 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'FIVrKZyj' \
    > test.out 2>&1
eval_tap $? 302 'GetUserPlatformAccountClosureHistories' test.out

#- 303 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'fWCBcvtb' \
    --body '{"code": "wEroDe78", "orderNo": "Bf6hGVMd"}' \
    > test.out 2>&1
eval_tap $? 303 'ApplyUserRedemption' test.out

#- 304 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'H3ccp2hC' \
    --body '{"meta": {"rQkDdvmL": {}, "z4vuQWWi": {}, "9NcHpEXr": {}}, "reason": "HpCYNC98", "requestId": "rHyyvYZI", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "ECh6YGxQ", "namespace": "fgqnGTaS"}, "entitlement": {"entitlementId": "LlluXeHc"}, "item": {"entitlementOrigin": "System", "itemIdentity": "E0eD6DTq", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 48, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "yDW5Ip4Q", "namespace": "i52JgPob"}, "entitlement": {"entitlementId": "kBx2qs23"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "6j4GwBrM", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "nNTJDSqs", "namespace": "P0NJrjnm"}, "entitlement": {"entitlementId": "wovm24CY"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "3yLzgGd8", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 38, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "ta0Q05h5"}' \
    > test.out 2>&1
eval_tap $? 304 'DoRevocation' test.out

#- 305 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'M3ub14V5' \
    --body '{"gameSessionId": "Hx4vvZhY", "payload": {"0IEDRMP3": {}, "E2LIKDvF": {}, "ubhbT2nS": {}}, "scid": "s8MnmlZd", "sessionTemplateName": "inX3JUww"}' \
    > test.out 2>&1
eval_tap $? 305 'RegisterXblSessions' test.out

#- 306 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'nhQYVinB' \
    --chargeStatus 'SETUP' \
    --itemId 'bbfTRUSS' \
    --limit '63' \
    --offset '34' \
    --sku 'HVXxI7QJ' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 306 'QueryUserSubscriptions' test.out

#- 307 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'PeM6nsim' \
    --excludeSystem 'false' \
    --limit '40' \
    --offset '72' \
    --subscriptionId 'y9S5Nf1Z' \
    > test.out 2>&1
eval_tap $? 307 'GetUserSubscriptionActivities' test.out

#- 308 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'oMQjWR1G' \
    --body '{"grantDays": 75, "itemId": "UHbZ2nOP", "language": "fL1qpaLU", "reason": "UwmZg0H6", "region": "mOyciI3X", "source": "4bFBB1TJ"}' \
    > test.out 2>&1
eval_tap $? 308 'PlatformSubscribeSubscription' test.out

#- 309 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'AQiUJsR5' \
    --itemId 'ZYvnraYa' \
    > test.out 2>&1
eval_tap $? 309 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 310 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rAIbpye5' \
    --userId '2nvp5dID' \
    > test.out 2>&1
eval_tap $? 310 'GetUserSubscription' test.out

#- 311 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '25QTRlyj' \
    --userId 'cvceYQ0I' \
    > test.out 2>&1
eval_tap $? 311 'DeleteUserSubscription' test.out

#- 312 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yIPHAga6' \
    --userId 'LNomhpJy' \
    --force 'true' \
    --body '{"immediate": false, "reason": "V7kyFYhz"}' \
    > test.out 2>&1
eval_tap $? 312 'CancelSubscription' test.out

#- 313 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'MQ4wQSy3' \
    --userId 'Q26nacXn' \
    --body '{"grantDays": 81, "reason": "Hc7FAyV9"}' \
    > test.out 2>&1
eval_tap $? 313 'GrantDaysToSubscription' test.out

#- 314 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LqfLtNDC' \
    --userId 'Ly2AwZL8' \
    --excludeFree 'true' \
    --limit '86' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 314 'GetUserSubscriptionBillingHistories' test.out

#- 315 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'tSd9YOXi' \
    --userId 'SITEgGQH' \
    --body '{"additionalData": {"cardSummary": "V0gh4t6z"}, "authorisedTime": "1988-09-21T00:00:00Z", "chargebackReversedTime": "1983-08-13T00:00:00Z", "chargebackTime": "1980-01-21T00:00:00Z", "chargedTime": "1982-04-18T00:00:00Z", "createdTime": "1973-11-07T00:00:00Z", "currency": {"currencyCode": "cUFFjzft", "currencySymbol": "5fjPRDRN", "currencyType": "REAL", "decimals": 64, "namespace": "5lYnO6Dv"}, "customParameters": {"seR2KMpY": {}, "B8GH7Y11": {}, "7hq4p0zL": {}}, "extOrderNo": "sL5GUekK", "extTxId": "2Nd4qWwG", "extUserId": "wsbURvrC", "issuedAt": "1999-05-12T00:00:00Z", "metadata": {"X793L20Z": "oqdq0xkG", "61prpjyW": "xeXgfSb2", "xhgrr95d": "ZhJ2N5Sv"}, "namespace": "rQApUBFK", "nonceStr": "0NHLwv5x", "paymentData": {"discountAmount": 39, "discountCode": "kEqFn7j3", "subtotalPrice": 67, "tax": 65, "totalPrice": 48}, "paymentMethod": "r2L4UVNS", "paymentMethodFee": 75, "paymentOrderNo": "H2JqoKUh", "paymentProvider": "ADYEN", "paymentProviderFee": 64, "paymentStationUrl": "j4HDAbPk", "price": 48, "refundedTime": "1972-12-25T00:00:00Z", "salesTax": 93, "sandbox": true, "sku": "kLBrhUv0", "status": "CHARGE_FAILED", "statusReason": "fQn3YkXL", "subscriptionId": "FPDIq9wb", "subtotalPrice": 65, "targetNamespace": "b9eiU8Ie", "targetUserId": "MTgIByc5", "tax": 62, "totalPrice": 88, "totalTax": 93, "txEndTime": "1981-11-27T00:00:00Z", "type": "zWbho6zt", "userId": "AAdHU8wL", "vat": 82}' \
    > test.out 2>&1
eval_tap $? 315 'ProcessUserSubscriptionNotification' test.out

#- 316 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'z4dTP2oV' \
    --namespace $AB_NAMESPACE \
    --userId 'QFdVmw1K' \
    --body '{"count": 47, "orderNo": "L85Dp6Zi"}' \
    > test.out 2>&1
eval_tap $? 316 'AcquireUserTicket' test.out

#- 317 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '7Lq2FTr9' \
    > test.out 2>&1
eval_tap $? 317 'QueryUserCurrencyWallets' test.out

#- 318 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'VokAd4Nc' \
    --namespace $AB_NAMESPACE \
    --userId 'eD1Th9A3' \
    --body '{"allowOverdraft": false, "amount": 8, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"5b0AxqgV": {}, "EcNRCMxo": {}, "IZtun944": {}}, "reason": "8slry6uP"}' \
    > test.out 2>&1
eval_tap $? 318 'DebitUserWalletByCurrencyCode' test.out

#- 319 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '6fp55jqW' \
    --namespace $AB_NAMESPACE \
    --userId '8eRLYosw' \
    --limit '38' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 319 'ListUserCurrencyTransactions' test.out

#- 320 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'fBoQgcYt' \
    --namespace $AB_NAMESPACE \
    --userId 'NHlP6A4F' \
    --request '{"amount": 65, "debitBalanceSource": "PAYMENT", "metadata": {"ZAjSNfjH": {}, "ar6WJiH8": {}, "sx9VhWcJ": {}}, "reason": "6FVuqz9d", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 320 'CheckBalance' test.out

#- 321 CheckWallet
eval_tap 0 321 'CheckWallet # SKIP deprecated' test.out

#- 322 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'gvTf9Xm7' \
    --namespace $AB_NAMESPACE \
    --userId 'u585hzWl' \
    --body '{"amount": 44, "expireAt": "1983-11-27T00:00:00Z", "metadata": {"PsHkJAAq": {}, "qPoFaO6M": {}, "DcAuqMhd": {}}, "origin": "System", "reason": "yHrLLm7U", "source": "SELL_BACK"}' \
    > test.out 2>&1
eval_tap $? 322 'CreditUserWallet' test.out

#- 323 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'KlYmDiAK' \
    --namespace $AB_NAMESPACE \
    --userId 'Ok2DLVdl' \
    --request '{"amount": 38, "debitBalanceSource": "PAYMENT", "metadata": {"rvuJCak0": {}, "qi0wAP4d": {}, "a24RXIxq": {}}, "reason": "42Nymcas", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 323 'DebitByWalletPlatform' test.out

#- 324 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '4yAiyVmJ' \
    --namespace $AB_NAMESPACE \
    --userId 'BBbWED9a' \
    --body '{"amount": 78, "metadata": {"QJhxKlM9": {}, "KhtMj0CB": {}, "mFB4ojRv": {}}, "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 324 'PayWithUserWallet' test.out

#- 325 GetUserWallet
eval_tap 0 325 'GetUserWallet # SKIP deprecated' test.out

#- 326 DebitUserWallet
eval_tap 0 326 'DebitUserWallet # SKIP deprecated' test.out

#- 327 DisableUserWallet
eval_tap 0 327 'DisableUserWallet # SKIP deprecated' test.out

#- 328 EnableUserWallet
eval_tap 0 328 'EnableUserWallet # SKIP deprecated' test.out

#- 329 ListUserWalletTransactions
eval_tap 0 329 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 330 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'l0OdTWDJ' \
    > test.out 2>&1
eval_tap $? 330 'ListViews' test.out

#- 331 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'pVDNAMVR' \
    --body '{"displayOrder": 91, "localizations": {"Q8veOGD7": {"description": "8496HGMI", "localExt": {"t2fFYri9": {}, "xwDAnm3V": {}, "LCjS1Ja3": {}}, "longDescription": "zksL8qeW", "title": "oKoxCtin"}, "Wit3vR2A": {"description": "d4hXxI08", "localExt": {"8rdCeZPp": {}, "yi03ngo2": {}, "E33GRnog": {}}, "longDescription": "DuJnPQWV", "title": "Duqp1VOM"}, "tt7xVMtX": {"description": "8G3YFa5x", "localExt": {"Xmb8ZQr8": {}, "RqJGQbuh": {}, "ZNqPQhJ9": {}}, "longDescription": "KVP2S4vx", "title": "9y7NkMRE"}}, "name": "U1jaGMQA"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateView' test.out

#- 332 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '5nL5TCfY' \
    --storeId 'lJlR02Sy' \
    > test.out 2>&1
eval_tap $? 332 'GetView' test.out

#- 333 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'BBHF3Voj' \
    --storeId '3ySNGdiF' \
    --body '{"displayOrder": 39, "localizations": {"fsBebyPE": {"description": "05u2gka8", "localExt": {"1Agdglkv": {}, "nuYes6xt": {}, "KpRJT1Ij": {}}, "longDescription": "jm46T6vu", "title": "o7EHWkct"}, "emR3rn33": {"description": "4emuj9Db", "localExt": {"JI4ymyDt": {}, "dtxB9evI": {}, "zlh9LOqp": {}}, "longDescription": "ejTmvcEo", "title": "Qmw8nhLN"}, "2EnFs1Pf": {"description": "blRET3xK", "localExt": {"IGXE7ydy": {}, "ZDxHcbdJ": {}, "SfWCGCI5": {}}, "longDescription": "4PmI4yTU", "title": "2kEE1ECa"}}, "name": "9ZmkDM4Z"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateView' test.out

#- 334 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'XVJ7SdTM' \
    --storeId '3hpmRTpQ' \
    > test.out 2>&1
eval_tap $? 334 'DeleteView' test.out

#- 335 QueryWallets
eval_tap 0 335 'QueryWallets # SKIP deprecated' test.out

#- 336 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 3, "expireAt": "1983-12-25T00:00:00Z", "metadata": {"JfZj3uVk": {}, "9zfY721m": {}, "qOqVaa6q": {}}, "origin": "Twitch", "reason": "OQbtvgDN", "source": "TRADE"}, "currencyCode": "tKx6l5p7", "userIds": ["5DKSJeN2", "9PCS51dl", "kxLae5W6"]}, {"creditRequest": {"amount": 62, "expireAt": "1990-04-02T00:00:00Z", "metadata": {"sgg5vVfT": {}, "8PzJrneA": {}, "0bDY2Wgj": {}}, "origin": "Nintendo", "reason": "OhKruR1n", "source": "REFERRAL_BONUS"}, "currencyCode": "hyZLhgZa", "userIds": ["mi4OOzji", "eTFSWEsK", "XyXaevDN"]}, {"creditRequest": {"amount": 42, "expireAt": "1995-03-01T00:00:00Z", "metadata": {"mwldUXYp": {}, "E72bt2yO": {}, "Yfvisbpu": {}}, "origin": "Epic", "reason": "8mwO0HFq", "source": "REFERRAL_BONUS"}, "currencyCode": "QoSPQJNI", "userIds": ["xaid9ckk", "wvvFz73w", "PekXyXUk"]}]' \
    > test.out 2>&1
eval_tap $? 336 'BulkCredit' test.out

#- 337 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "kfKbZaUz", "request": {"allowOverdraft": false, "amount": 78, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"QoB4Yrh2": {}, "KO4PeuzJ": {}, "oba09Q2Y": {}}, "reason": "IetoIacb"}, "userIds": ["2zMTi8wW", "Y4rZgJw4", "AqE9yTQU"]}, {"currencyCode": "e58zlMly", "request": {"allowOverdraft": false, "amount": 19, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"PJfhuE2T": {}, "FvRsYqCQ": {}, "Z7is6bt2": {}}, "reason": "6iSkxhfD"}, "userIds": ["cPquh8W0", "3jc2Xer9", "PuuVX8nh"]}, {"currencyCode": "fBwg0LiK", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "IOS", "balanceSource": "PAYMENT", "metadata": {"wRq28ZZQ": {}, "Hh1nhNIH": {}, "8S904VCv": {}}, "reason": "lqPXf2E1"}, "userIds": ["Plz3P67z", "0S07ELRD", "Q72I3Bbk"]}]' \
    > test.out 2>&1
eval_tap $? 337 'BulkDebit' test.out

#- 338 GetWallet
eval_tap 0 338 'GetWallet # SKIP deprecated' test.out

#- 339 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'xls4kY2T' \
    --end 'sAtLjopO' \
    --start '2NFc5Gjn' \
    > test.out 2>&1
eval_tap $? 339 'SyncOrders' test.out

#- 340 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["6CYXPQtA", "suLipzty", "ffQfIlPV"], "apiKey": "50zlP6Hy", "authoriseAsCapture": true, "blockedPaymentMethods": ["85mRcUUK", "tW4SjSZf", "XKhuyZhD"], "clientKey": "xHJQzquU", "dropInSettings": "yMdcyzKU", "liveEndpointUrlPrefix": "sbegj65P", "merchantAccount": "C8zFdMnY", "notificationHmacKey": "fPbV7DTT", "notificationPassword": "tENUKtOC", "notificationUsername": "jRFGYuz6", "returnUrl": "F9rwQHPY", "settings": "F8Isdmq2"}' \
    > test.out 2>&1
eval_tap $? 340 'TestAdyenConfig' test.out

#- 341 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "QpM7wzP0", "privateKey": "udOfmsuR", "publicKey": "mS8bLmN9", "returnUrl": "x2GUcAN3"}' \
    > test.out 2>&1
eval_tap $? 341 'TestAliPayConfig' test.out

#- 342 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "FHsTf8w6", "secretKey": "rfOTFzma"}' \
    > test.out 2>&1
eval_tap $? 342 'TestCheckoutConfig' test.out

#- 343 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'blDuQEiG' \
    --region 'wjAacsfm' \
    > test.out 2>&1
eval_tap $? 343 'DebugMatchedPaymentMerchantConfig' test.out

#- 344 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "0HTSIStK", "webhookSecretKey": "akAyRsi9"}' \
    > test.out 2>&1
eval_tap $? 344 'TestNeonPayConfig' test.out

#- 345 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "SUZ6YCX3", "clientSecret": "P5XTC8yt", "returnUrl": "eUcaDQDm", "webHookId": "3pRay2qn"}' \
    > test.out 2>&1
eval_tap $? 345 'TestPayPalConfig' test.out

#- 346 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["k81y8VtQ", "Fbm2iHzA", "31EMB7xL"], "publishableKey": "WSAg93SX", "secretKey": "Eg7Y9CWu", "webhookSecret": "6N0geB5D"}' \
    > test.out 2>&1
eval_tap $? 346 'TestStripeConfig' test.out

#- 347 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "9pI3ZWjr", "key": "orTyzJsE", "mchid": "O3vzSqYo", "returnUrl": "sL3Qlw1m"}' \
    > test.out 2>&1
eval_tap $? 347 'TestWxPayConfig' test.out

#- 348 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "S9v8GbsQ", "flowCompletionUrl": "4p76fFzi", "merchantId": 3, "projectId": 24, "projectSecretKey": "MDEW7zdK"}' \
    > test.out 2>&1
eval_tap $? 348 'TestXsollaConfig' test.out

#- 349 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'P6mJuep9' \
    > test.out 2>&1
eval_tap $? 349 'GetPaymentMerchantConfig1' test.out

#- 350 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id '1tOTYvQz' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["VXBYXBJY", "aI8V9zqQ", "uAnnSeG3"], "apiKey": "IRofHtse", "authoriseAsCapture": true, "blockedPaymentMethods": ["9c2lCiXy", "94PF7PJK", "vozE7unm"], "clientKey": "Kb48fuLW", "dropInSettings": "F3m4tCC1", "liveEndpointUrlPrefix": "vGxhvYTO", "merchantAccount": "wdYhxU3l", "notificationHmacKey": "LMYqe5bX", "notificationPassword": "jF85UVHZ", "notificationUsername": "vnrubvCC", "returnUrl": "JH08X16K", "settings": "PVbZb1yM"}' \
    > test.out 2>&1
eval_tap $? 350 'UpdateAdyenConfig' test.out

#- 351 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'wEdu934E' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfigById' test.out

#- 352 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'zjQO6iS6' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "njgSpeaO", "privateKey": "FBwuJkwn", "publicKey": "CrFkFPKe", "returnUrl": "rZo4e5sj"}' \
    > test.out 2>&1
eval_tap $? 352 'UpdateAliPayConfig' test.out

#- 353 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'NSNOE4Bl' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 353 'TestAliPayConfigById' test.out

#- 354 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'yaotT4EF' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "NkvANRMl", "secretKey": "fXcsIyWR"}' \
    > test.out 2>&1
eval_tap $? 354 'UpdateCheckoutConfig' test.out

#- 355 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'CZyYLRx4' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 355 'TestCheckoutConfigById' test.out

#- 356 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'RPthI7Vt' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "ro17cLE9", "webhookSecretKey": "ZUia7C3p"}' \
    > test.out 2>&1
eval_tap $? 356 'UpdateNeonPayConfig' test.out

#- 357 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'XTMgr6PV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfigById' test.out

#- 358 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'aiujNbFk' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "QawpfGVa", "clientSecret": "joSBYlOi", "returnUrl": "YdqpW212", "webHookId": "dqLA2rZI"}' \
    > test.out 2>&1
eval_tap $? 358 'UpdatePayPalConfig' test.out

#- 359 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'T5IJA1dX' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 359 'TestPayPalConfigById' test.out

#- 360 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'TYgVUBON' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["B809Fuhq", "bBdo49GY", "5YIrzs7S"], "publishableKey": "TojKzRGe", "secretKey": "Stx2fHtZ", "webhookSecret": "lqt1s4DJ"}' \
    > test.out 2>&1
eval_tap $? 360 'UpdateStripeConfig' test.out

#- 361 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id '4XYKovu9' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 361 'TestStripeConfigById' test.out

#- 362 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'eXkyWagO' \
    --validate 'false' \
    --body '{"appId": "QFvi7Eat", "key": "HcpG51GP", "mchid": "6VuNhp2d", "returnUrl": "BThFDdST"}' \
    > test.out 2>&1
eval_tap $? 362 'UpdateWxPayConfig' test.out

#- 363 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'tVJxhAgx' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 363 'UpdateWxPayConfigCert' test.out

#- 364 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'dJVkR310' \
    > test.out 2>&1
eval_tap $? 364 'TestWxPayConfigById' test.out

#- 365 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'hEssSQVV' \
    --validate 'true' \
    --body '{"apiKey": "z5qH8Hxa", "flowCompletionUrl": "UxzSz3jc", "merchantId": 54, "projectId": 11, "projectSecretKey": "GKwafEZc"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateXsollaConfig' test.out

#- 366 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'lMun38mJ' \
    > test.out 2>&1
eval_tap $? 366 'TestXsollaConfigById' test.out

#- 367 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'S2GH44So' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateXsollaUIConfig' test.out

#- 368 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '78' \
    --namespace 'AoJCtnUB' \
    --offset '95' \
    --region 'DdN3ZsJv' \
    > test.out 2>&1
eval_tap $? 368 'QueryPaymentProviderConfig' test.out

#- 369 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "NwgQJGyr", "region": "j8F3NTm5", "sandboxTaxJarApiToken": "B4QyqT4z", "specials": ["ALIPAY", "ALIPAY", "WXPAY"], "taxJarApiToken": "KVL9OntJ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 369 'CreatePaymentProviderConfig' test.out

#- 370 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 370 'GetAggregatePaymentProviders' test.out

#- 371 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'KRsd2TV6' \
    --region 'aToB4PuQ' \
    > test.out 2>&1
eval_tap $? 371 'DebugMatchedPaymentProviderConfig' test.out

#- 372 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 372 'GetSpecialPaymentProviders' test.out

#- 373 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'MOh4XNYC' \
    --body '{"aggregate": "STRIPE", "namespace": "wiA7ioTn", "region": "oI0wh5kJ", "sandboxTaxJarApiToken": "A5LpVbeC", "specials": ["PAYPAL", "STRIPE", "NEONPAY"], "taxJarApiToken": "mYyKQrL7", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 373 'UpdatePaymentProviderConfig' test.out

#- 374 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'ZtRBTSlh' \
    > test.out 2>&1
eval_tap $? 374 'DeletePaymentProviderConfig' test.out

#- 375 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentTaxConfig' test.out

#- 376 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "KqlXInYF", "taxJarApiToken": "HNUVE5xO", "taxJarEnabled": false, "taxJarProductCodesMapping": {"GqbM8EHB": "k7BttZnT", "gmG0yjpK": "mPZbtp5k", "2NKlhaWq": "6SbnnTjP"}}' \
    > test.out 2>&1
eval_tap $? 376 'UpdatePaymentTaxConfig' test.out

#- 377 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'R4XehgRT' \
    --end 'CjvlK8LB' \
    --start 'NIrrOKMO' \
    > test.out 2>&1
eval_tap $? 377 'SyncPaymentOrders' test.out

#- 378 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'T9Md79Jr' \
    --storeId 'dq8VoqUr' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetRootCategories' test.out

#- 379 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'ehNbuNf1' \
    --storeId 'SN1Ad7DA' \
    > test.out 2>&1
eval_tap $? 379 'DownloadCategories' test.out

#- 380 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'n42vmopl' \
    --namespace $AB_NAMESPACE \
    --language '8NEf2J2B' \
    --storeId '8X6xHfC5' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetCategory' test.out

#- 381 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'T3twCQju' \
    --namespace $AB_NAMESPACE \
    --language 'iW7KI566' \
    --storeId 'uUbv5Ukl' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetChildCategories' test.out

#- 382 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'IlrgDDQH' \
    --namespace $AB_NAMESPACE \
    --language 'rMFr6fZF' \
    --storeId 'YVvCh8dV' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetDescendantCategories' test.out

#- 383 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 383 'PublicListCurrencies' test.out

#- 384 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'PSN' \
    > test.out 2>&1
eval_tap $? 384 'GeDLCDurableRewardShortMap' test.out

#- 385 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'GetAppleConfigVersion' test.out

#- 386 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 386 'GetIAPItemMapping' test.out

#- 387 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'gHkD27qx' \
    --region 'gYzKOtEW' \
    --storeId 'JCUGa79i' \
    --appId 'mG7VmaAv' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetItemByAppId' test.out

#- 388 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'LGxoIvna' \
    --categoryPath 'QvRrfPXM' \
    --features 'N8xhMRRH' \
    --includeSubCategoryItem 'false' \
    --itemType 'COINS' \
    --language 'C3Agjacf' \
    --limit '59' \
    --offset '31' \
    --region 'DTaiidhF' \
    --sortBy '["createdAt:desc", "name:asc", "updatedAt"]' \
    --storeId 'yZP93l6J' \
    --tags 'PK24IFDi' \
    > test.out 2>&1
eval_tap $? 388 'PublicQueryItems' test.out

#- 389 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'mYmJxHAP' \
    --region 'dJeY0hPU' \
    --storeId 'ttcdc9oP' \
    --sku 'pzUNEnPt' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetItemBySku' test.out

#- 390 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'Giyqhjyg' \
    --storeId 'RSQvSdjl' \
    --itemIds 'vblp1VuU' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetEstimatedPrice' test.out

#- 391 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'hPAKeGg0' \
    --region 'wshq7ju2' \
    --storeId 'SkJXwT7y' \
    --itemIds 'Nr8B6a9R' \
    > test.out 2>&1
eval_tap $? 391 'PublicBulkGetItems' test.out

#- 392 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["RXXT2Gce", "ohDRxKyE", "IcGS0Oby"]}' \
    > test.out 2>&1
eval_tap $? 392 'PublicValidateItemPurchaseCondition' test.out

#- 393 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'COINS' \
    --limit '38' \
    --offset '66' \
    --region 'TgbXmfvo' \
    --storeId 'AIQO51uS' \
    --keyword 'cQ62Sx38' \
    --language '9kEUNsuT' \
    > test.out 2>&1
eval_tap $? 393 'PublicSearchItems' test.out

#- 394 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'gSNwkNAE' \
    --namespace $AB_NAMESPACE \
    --language 'naY3LjJ1' \
    --region 'YGlpLjtz' \
    --storeId 'cpIQLzEV' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetApp' test.out

#- 395 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'xV5CqDAW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 395 'PublicGetItemDynamicData' test.out

#- 396 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'RAATggDH' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'idAISnB1' \
    --populateBundle 'false' \
    --region 'Uf2aBB1w' \
    --storeId '4QdPa0R4' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetItem' test.out

#- 397 GetPaymentCustomization
eval_tap 0 397 'GetPaymentCustomization # SKIP deprecated' test.out

#- 398 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "M9mvf5Bz", "successUrl": "P9dpErze"}, "paymentOrderNo": "zghEy2DJ", "paymentProvider": "CHECKOUT", "returnUrl": "TAGCbJeF", "ui": "DPK1kxt2", "zipCode": "4Ys97SNB"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetPaymentUrl' test.out

#- 399 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'oEZKJ0LH' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetPaymentMethods' test.out

#- 400 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vXZCcyOZ' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUnpaidPaymentOrder' test.out

#- 401 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'D9bg3xSB' \
    --paymentProvider 'WALLET' \
    --zipCode 'ZfGPmU9U' \
    --body '{"token": "uOCRrL2d"}' \
    > test.out 2>&1
eval_tap $? 401 'Pay' test.out

#- 402 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HjtNXEj5' \
    > test.out 2>&1
eval_tap $? 402 'PublicCheckPaymentOrderPaidStatus' test.out

#- 403 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'PAYPAL' \
    --region '4VAwhPn5' \
    > test.out 2>&1
eval_tap $? 403 'GetPaymentPublicConfig' test.out

#- 404 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'OKPXi45r' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetQRCode' test.out

#- 405 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'kGmbm5BL' \
    --foreinginvoice 'NpAgDgAL' \
    --invoiceId 'Y5cCZjKI' \
    --payload 'Lb3lk1Km' \
    --redirectResult '6881fmVU' \
    --resultCode 'n0UflvCA' \
    --sessionId 'EQWSftDQ' \
    --status 'chudZl2k' \
    --token '3nxnClfP' \
    --type 'hdEONm25' \
    --userId 'JYYsAkRP' \
    --orderNo 'o4LKNuc3' \
    --paymentOrderNo 'XZUCLOmN' \
    --paymentProvider 'NEONPAY' \
    --returnUrl 'uMwVbhV6' \
    > test.out 2>&1
eval_tap $? 405 'PublicNormalizePaymentReturnUrl' test.out

#- 406 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '1rXslAB7' \
    --paymentOrderNo 'csBREDuj' \
    --paymentProvider 'WXPAY' \
    > test.out 2>&1
eval_tap $? 406 'GetPaymentTaxValue' test.out

#- 407 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '8tkMVPzl' \
    > test.out 2>&1
eval_tap $? 407 'GetRewardByCode' test.out

#- 408 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic '0C7F62kG' \
    --limit '9' \
    --offset '97' \
    --sortBy '["namespace:desc", "rewardCode:asc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 408 'QueryRewards1' test.out

#- 409 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '9k0Uhjum' \
    > test.out 2>&1
eval_tap $? 409 'GetReward1' test.out

#- 410 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 410 'PublicListStores' test.out

#- 411 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["YZ0cJDJz", "gSX0tJC7", "L5ZIWdek"]' \
    --itemIds '["VGCGblRI", "iAljik80", "JEWUCKyP"]' \
    --skus '["2RrkmxNI", "JoPkpsbl", "D3FUax4c"]' \
    > test.out 2>&1
eval_tap $? 411 'PublicExistsAnyMyActiveEntitlement' test.out

#- 412 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '4STFVv7d' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 413 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'Rqyujuq6' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 414 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'hQDBGbET' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 415 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["R7Ny6O8M", "ap1Q65C1", "ZWHZTSPT"]' \
    --itemIds '["7z7DF32g", "ZU6SQXyI", "2Jve2y62"]' \
    --skus '["DUlDCaXx", "JsKopv1e", "rOtj0RzT"]' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetEntitlementOwnershipToken' test.out

#- 416 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "GgGBW678", "language": "KniC_jWRs", "region": "QQ0xEIjU"}' \
    > test.out 2>&1
eval_tap $? 416 'SyncTwitchDropsEntitlement' test.out

#- 417 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode '1FAK7VtG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 417 'PublicGetMyWallet' test.out

#- 418 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'rZ7Dnivq' \
    --body '{"epicGamesJwtToken": "Cku6CGXL"}' \
    > test.out 2>&1
eval_tap $? 418 'SyncEpicGameDLC' test.out

#- 419 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId '7f90mEHL' \
    > test.out 2>&1
eval_tap $? 419 'SyncOculusDLC' test.out

#- 420 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId '3tMkUKG9' \
    --body '{"serviceLabel": 17}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSyncPsnDlcInventory' test.out

#- 421 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'lF9KAIBu' \
    --body '{"serviceLabels": [60, 44, 87]}' \
    > test.out 2>&1
eval_tap $? 421 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 422 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'gnzHLTMZ' \
    --body '{"appId": "lgqqBXHz", "steamId": "ATBp83Nc"}' \
    > test.out 2>&1
eval_tap $? 422 'SyncSteamDLC' test.out

#- 423 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'QcNQHw2h' \
    --body '{"xstsToken": "oBSnzcHR"}' \
    > test.out 2>&1
eval_tap $? 423 'SyncXboxDLC' test.out

#- 424 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'EfX0EEuH' \
    --appType 'DEMO' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'fRHROBjV' \
    --features '["CM5P2wLW", "UbXiJW3x", "1eJFJtAR"]' \
    --itemId '["ULfirdVz", "rVvVO3xO", "jueDQTaE"]' \
    --limit '46' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 424 'PublicQueryUserEntitlements' test.out

#- 425 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'YFQX7ymo' \
    --appId 'abwXZR8J' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserAppEntitlementByAppId' test.out

#- 426 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'VOrVdACQ' \
    --limit '63' \
    --offset '40' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 426 'PublicQueryUserEntitlementsByAppType' test.out

#- 427 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'bi4vL0kd' \
    --availablePlatformOnly 'false' \
    --ids '["VtGtDPsa", "SjP2T95S", "HVZ56Ggb"]' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserEntitlementsByIds' test.out

#- 428 PublicGetUserEntitlementByItemId
eval_tap 0 428 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 429 PublicGetUserEntitlementBySku
eval_tap 0 429 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 430 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ORPOjjXr' \
    --endDate 'EPfJXKTz' \
    --entitlementClazz 'MEDIA' \
    --limit '29' \
    --offset '60' \
    --startDate 'LIUDMhSe' \
    > test.out 2>&1
eval_tap $? 430 'PublicUserEntitlementHistory' test.out

#- 431 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'tL3voApt' \
    --appIds '["ixVhiA4G", "nggEPuHH", "QxU8hTkH"]' \
    --itemIds '["vQvlXX8Q", "3nl3qWMd", "mOJ22Zcr"]' \
    --skus '["3qAj1iu5", "gDxNoJmg", "ahzWhD4N"]' \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyUserActiveEntitlement' test.out

#- 432 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bGzVFH1q' \
    --appId 'VImwmJgX' \
    > test.out 2>&1
eval_tap $? 432 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'BpQjuM7Q' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId '6ssmVFcd' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 434 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'K5ScxPV5' \
    --ids '["CAGbathu", "gGUi7YQo", "sICKT1FJ"]' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 435 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'y5RB9O6s' \
    --entitlementClazz 'CODE' \
    --sku 'BTNRtC9r' \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 436 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'Vw8CqYWa' \
    --namespace $AB_NAMESPACE \
    --userId 'Ue8qfVUl' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserEntitlement' test.out

#- 437 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId '0LBy6FDL' \
    --namespace $AB_NAMESPACE \
    --userId 'aWiTtPTH' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["qxuLSTcG", "G9Xrn8nF", "jhJSzm76"], "requestId": "jNBOAjPa", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 437 'PublicConsumeUserEntitlement' test.out

#- 438 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'QnygtAEt' \
    --namespace $AB_NAMESPACE \
    --userId 'VWTWkluE' \
    --body '{"requestId": "xcv5rzId", "useCount": 49}' \
    > test.out 2>&1
eval_tap $? 438 'PublicSellUserEntitlement' test.out

#- 439 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'KQ1rjyyz' \
    --namespace $AB_NAMESPACE \
    --userId '9r36ApfJ' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 20}' \
    > test.out 2>&1
eval_tap $? 439 'PublicSplitUserEntitlement' test.out

#- 440 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'bTKsfqSo' \
    --namespace $AB_NAMESPACE \
    --userId 'UCQ4ygGI' \
    --body '{"entitlementId": "sEIdfHyK", "metadata": {"operationSource": "INVENTORY"}, "useCount": 60}' \
    > test.out 2>&1
eval_tap $? 440 'PublicTransferUserEntitlement' test.out

#- 441 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'c5hIJG8A' \
    --body '{"code": "SjKSkOBh", "language": "mMqF-034", "region": "GdduGNKm"}' \
    > test.out 2>&1
eval_tap $? 441 'PublicRedeemCode' test.out

#- 442 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'MlYGWdSC' \
    --body '{"excludeOldTransactions": true, "language": "ZRb-lVRW-621", "productId": "Ph6TTVES", "receiptData": "19ZdZZFy", "region": "QAoi6JtH", "transactionId": "lrMP4QJf"}' \
    > test.out 2>&1
eval_tap $? 442 'PublicFulfillAppleIAPItem' test.out

#- 443 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'R0ySIBA7' \
    --body '{"epicGamesJwtToken": "WPIDHaOV"}' \
    > test.out 2>&1
eval_tap $? 443 'SyncEpicGamesInventory' test.out

#- 444 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'UEspkWSa' \
    --body '{"autoAck": true, "autoConsume": true, "language": "gByf-RopP-AH", "orderId": "DXW55mck", "packageName": "Ed0oGGlO", "productId": "GZ9OIYIz", "purchaseTime": 47, "purchaseToken": "jJPxchBI", "region": "Vb42TxiJ", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 444 'PublicFulfillGoogleIAPItem' test.out

#- 445 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7hHD9RkK' \
    > test.out 2>&1
eval_tap $? 445 'SyncOculusConsumableEntitlements' test.out

#- 446 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'fis4ItYw' \
    --body '{"currencyCode": "mNR4VwDS", "price": 0.22033349855110818, "productId": "zttiT6nD", "serviceLabel": 78}' \
    > test.out 2>&1
eval_tap $? 446 'PublicReconcilePlayStationStore' test.out

#- 447 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'EqMpUc2k' \
    --body '{"currencyCode": "3i0sp4rg", "price": 0.8475172220612815, "productId": "1cuW4cE0", "serviceLabels": [65, 47]}' \
    > test.out 2>&1
eval_tap $? 447 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 448 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'GfMFzk6q' \
    --body '{"appId": "vax5kHh6", "currencyCode": "fXAgakMm", "language": "hG_mvia", "price": 0.7406633338531465, "productId": "GiEbBec1", "region": "DenzDvbB", "steamId": "m9j6E2BM"}' \
    > test.out 2>&1
eval_tap $? 448 'SyncSteamInventory' test.out

#- 449 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    --userId '6ytmv3Fr' \
    --activeOnly 'true' \
    --groupId 'NGNRwm7f' \
    --limit '22' \
    --offset '51' \
    --productId 'Lgcm8279' \
    > test.out 2>&1
eval_tap $? 449 'PublicQueryUserThirdPartySubscription' test.out

#- 450 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '1qXa4Vv6' \
    --body '{"gameId": "RqaEpsZv", "language": "OaMq-223", "region": "M106troh"}' \
    > test.out 2>&1
eval_tap $? 450 'SyncTwitchDropsEntitlement1' test.out

#- 451 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '4k62Ms7Q' \
    --body '{"currencyCode": "yptgrjU4", "price": 0.18739844313703002, "productId": "TddJ2j9P", "xstsToken": "RrWT912V"}' \
    > test.out 2>&1
eval_tap $? 451 'SyncXboxInventory' test.out

#- 452 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'viBI7LYl' \
    --discounted 'false' \
    --itemId 'NZwg2T3l' \
    --limit '73' \
    --offset '93' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 452 'PublicQueryUserOrders' test.out

#- 453 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'UCuWCWo6' \
    --body '{"currencyCode": "RF3ToQ8b", "discountCodes": ["zTRA1CzT", "sgmMkLyS", "r44YGUQ5"], "discountedPrice": 22, "ext": {"tTNSUJYz": {}, "Z5CoeXqR": {}, "0CSaqoLW": {}}, "itemId": "MfaP9eWJ", "language": "mvV", "price": 41, "quantity": 42, "region": "Lp2MmaMI", "returnUrl": "XGDCK7B3", "sectionId": "9KhDP1xa"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicCreateUserOrder' test.out

#- 454 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'tJ1HOLj9' \
    --body '{"currencyCode": "tSmdvBpi", "discountCodes": ["OPVHbKsf", "h3oTNerd", "6UxuYIz7"], "discountedPrice": 29, "itemId": "YT8HxSEY", "price": 80, "quantity": 99}' \
    > test.out 2>&1
eval_tap $? 454 'PublicPreviewOrderPrice' test.out

#- 455 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'NAV9QHHh' \
    --userId 'vjyrIRo7' \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserOrder' test.out

#- 456 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Io8AhM6a' \
    --userId '2eV4Y8vL' \
    > test.out 2>&1
eval_tap $? 456 'PublicCancelUserOrder' test.out

#- 457 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'br0PoOaL' \
    --userId 'ialvL7IG' \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserOrderHistories' test.out

#- 458 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'RgNHLyy0' \
    --userId 'avM6vPo7' \
    > test.out 2>&1
eval_tap $? 458 'PublicDownloadUserOrderReceipt' test.out

#- 459 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'VH6AygWN' \
    > test.out 2>&1
eval_tap $? 459 'PublicGetPaymentAccounts' test.out

#- 460 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'M9y53NAF' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '6ytQV7G9' \
    > test.out 2>&1
eval_tap $? 460 'PublicDeletePaymentAccount' test.out

#- 461 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 't6nl0iFE' \
    --autoCalcEstimatedPrice 'false' \
    --language '36a0R5Ii' \
    --region 'jJcZ4PDQ' \
    --storeId '23Sfcbui' \
    --viewId 'UeQp0ckm' \
    > test.out 2>&1
eval_tap $? 461 'PublicListActiveSections' test.out

#- 462 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'SaL59BVf' \
    --chargeStatus 'NEVER' \
    --itemId 'p5plrz0A' \
    --limit '67' \
    --offset '0' \
    --sku 'NsH6yR2M' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserSubscriptions' test.out

#- 463 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'BJnwFBSK' \
    --body '{"currencyCode": "U8NQsJYW", "itemId": "EX7jiuf8", "language": "tky-zYyA_826", "region": "cdmGurZd", "returnUrl": "8ylaV2CB", "source": "lreohQEb"}' \
    > test.out 2>&1
eval_tap $? 463 'PublicSubscribeSubscription' test.out

#- 464 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'cXOnPsh3' \
    --itemId '48YnHieb' \
    > test.out 2>&1
eval_tap $? 464 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 465 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6nuqGHRb' \
    --userId '5tZfcDRK' \
    > test.out 2>&1
eval_tap $? 465 'PublicGetUserSubscription' test.out

#- 466 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'S7dYc45U' \
    --userId 'N8EaW5wi' \
    > test.out 2>&1
eval_tap $? 466 'PublicChangeSubscriptionBillingAccount' test.out

#- 467 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zPhcWLWe' \
    --userId 'zCjTRY8Y' \
    --body '{"immediate": true, "reason": "xpJdYJmD"}' \
    > test.out 2>&1
eval_tap $? 467 'PublicCancelSubscription' test.out

#- 468 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jfsK7xVK' \
    --userId 'Rf53uA0I' \
    --excludeFree 'true' \
    --limit '44' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserSubscriptionBillingHistories' test.out

#- 469 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'WT8NjtOn' \
    --language 'nY9cr4T1' \
    --storeId '6fS7GWhK' \
    > test.out 2>&1
eval_tap $? 469 'PublicListViews' test.out

#- 470 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'FQIx75is' \
    --namespace $AB_NAMESPACE \
    --userId '0jxELRop' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetWallet' test.out

#- 471 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'mCJQSKye' \
    --namespace $AB_NAMESPACE \
    --userId 'yV6NBSHx' \
    --limit '63' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 471 'PublicListUserWalletTransactions' test.out

#- 472 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetMyDLCContent' test.out

#- 473 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'Abv1FBsv' \
    --limit '32' \
    --offset '54' \
    --startTime 'lSzW3W0V' \
    --state 'FULFILL_FAILED' \
    --transactionId 'onIejfvm' \
    --userId '52VVkNKg' \
    > test.out 2>&1
eval_tap $? 473 'QueryFulfillments' test.out

#- 474 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate '0a1BIvyt' \
    --baseAppId 'ZD9UxgGJ' \
    --categoryPath 'wuLWcKcK' \
    --features 'JBHZxfD8' \
    --includeSubCategoryItem 'false' \
    --itemName 'DjQ5mmpO' \
    --itemStatus 'INACTIVE' \
    --itemType '["CODE", "LOOTBOX", "CODE"]' \
    --limit '69' \
    --offset '17' \
    --region 'Q4DWDUOW' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt", "updatedAt"]' \
    --storeId 'YjtFv1Dj' \
    --tags 'mWw586Yq' \
    --targetNamespace 'kYXaXz4s' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 474 'QueryItemsV2' test.out

#- 475 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'J09B3T1L' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 475 'ImportStore1' test.out

#- 476 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'AP69AXmo' \
    --body '{"itemIds": ["Ni1K92zG", "frXIHSFP", "9nyZzBby"]}' \
    > test.out 2>&1
eval_tap $? 476 'ExportStore1' test.out

#- 477 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId '0CJU6eUA' \
    --body '{"entitlementCollectionId": "A99ZTEmQ", "entitlementOrigin": "Oculus", "metadata": {"EoxkXWdn": {}, "hdsXdkDu": {}, "6nI3m09M": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "0cWrdD13", "namespace": "kQ2vxkNq"}, "item": {"itemId": "tFDWZZRv", "itemName": "Oqw48utw", "itemSku": "MqNZAiPv", "itemType": "85Hf6T1B"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "LGpda79k", "namespace": "OO6P3sgM"}, "item": {"itemId": "cjijlyp6", "itemName": "zw2HTfiv", "itemSku": "cO970xqU", "itemType": "Ua0lOXHY"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "o6zXw6n1", "namespace": "6QYDztIo"}, "item": {"itemId": "nQx0M8pt", "itemName": "rkFu1iUe", "itemSku": "M2u8orw9", "itemType": "xlR9XNet"}, "quantity": 27, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "HfGDzrtq"}' \
    > test.out 2>&1
eval_tap $? 477 'FulfillRewardsV2' test.out

#- 478 FulfillItems
eval_tap 0 478 'FulfillItems # SKIP deprecated' test.out

#- 479 RetryFulfillItems
eval_tap 0 479 'RetryFulfillItems # SKIP deprecated' test.out

#- 480 RevokeItems
eval_tap 0 480 'RevokeItems # SKIP deprecated' test.out

#- 481 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '9kHwPrir' \
    --body '{"transactionId": "hYA4HEe9"}' \
    > test.out 2>&1
eval_tap $? 481 'V2PublicFulfillAppleIAPItem' test.out

#- 482 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'CD6t9VBA' \
    --userId 'kbgVBorH' \
    --body '{"items": [{"duration": 91, "endDate": "1988-04-11T00:00:00Z", "entitlementCollectionId": "XsgHhepE", "entitlementOrigin": "Other", "itemId": "ZKEbOMZk", "itemSku": "EGGrTSuy", "language": "irdu4KFY", "metadata": {"COgglCcl": {}, "Gk7fRcQF": {}, "NgeHOYka": {}}, "orderNo": "wKKIX7QH", "origin": "System", "quantity": 82, "region": "VcIyZyz2", "source": "REWARD", "startDate": "1973-03-31T00:00:00Z", "storeId": "4SjKKqgW"}, {"duration": 60, "endDate": "1988-12-28T00:00:00Z", "entitlementCollectionId": "DkNzDqSg", "entitlementOrigin": "Xbox", "itemId": "jnQszYo8", "itemSku": "fZM8po6T", "language": "PGI1VzXj", "metadata": {"fDGDErH6": {}, "sT3woh7p": {}, "w1wKw8oL": {}}, "orderNo": "XrgXk144", "origin": "IOS", "quantity": 87, "region": "3qXBTx7U", "source": "ACHIEVEMENT", "startDate": "1983-05-08T00:00:00Z", "storeId": "Wyy1Fqns"}, {"duration": 0, "endDate": "1979-11-06T00:00:00Z", "entitlementCollectionId": "WOnwNvbK", "entitlementOrigin": "GooglePlay", "itemId": "9kRdcfiK", "itemSku": "v4rH1Sj3", "language": "bDanhzvg", "metadata": {"WSQP7xQo": {}, "t0rJiWTM": {}, "9nP65imm": {}}, "orderNo": "jVXreu1v", "origin": "Twitch", "quantity": 62, "region": "qEbLl9H2", "source": "REFERRAL_BONUS", "startDate": "1973-09-25T00:00:00Z", "storeId": "vM02Ev0Y"}]}' \
    > test.out 2>&1
eval_tap $? 482 'FulfillItemsV3' test.out

#- 483 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'EynxTmDm' \
    --userId 'FfvF1qbV' \
    > test.out 2>&1
eval_tap $? 483 'RetryFulfillItemsV3' test.out

#- 484 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'TU9iNiS7' \
    --userId 'OQ5kBCQp' \
    > test.out 2>&1
eval_tap $? 484 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE