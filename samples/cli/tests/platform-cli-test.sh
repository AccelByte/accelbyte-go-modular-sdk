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
echo "1..419"

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
    --id 'IAES4e7Y' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'cLonqVfe' \
    --body '{"grantDays": "YkDFMYX8"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'KcN3NVkD' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'MrvCOOa9' \
    --body '{"grantDays": "XddK5ynU"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "HM0Ttv83", "dryRun": false, "fulfillmentUrl": "K7xXxmNd", "itemType": "APP", "purchaseConditionUrl": "UNC0XdWp"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'QasTckdC' \
    --itemType 'BUNDLE' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'V7zIobsY' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'aVPInhic' \
    --body '{"clazz": "Vuv5qG5k", "dryRun": false, "fulfillmentUrl": "dEnDYXvI", "purchaseConditionUrl": "DKpYyRvF"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'BEBgAiGQ' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --name 'O1lH36J0' \
    --offset '76' \
    --tag 'HJENLcue' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bi9pnSLe", "items": [{"extraSubscriptionDays": 37, "itemId": "L9NUEU86", "itemName": "0xm3QJeK", "quantity": 5}, {"extraSubscriptionDays": 48, "itemId": "XbqvZfp3", "itemName": "NcT4rP3W", "quantity": 15}, {"extraSubscriptionDays": 0, "itemId": "HM2rGBIj", "itemName": "4NTXSLmr", "quantity": 87}], "maxRedeemCountPerCampaignPerUser": 97, "maxRedeemCountPerCode": 52, "maxRedeemCountPerCodePerUser": 60, "maxSaleCount": 58, "name": "lSrF019d", "redeemEnd": "1973-06-25T00:00:00Z", "redeemStart": "1984-10-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["cctCBNjF", "FRpvq21q", "Orwaf7rk"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'hglPFdwW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'myl10jci' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3ZVQSt4N", "items": [{"extraSubscriptionDays": 86, "itemId": "X9xnatjE", "itemName": "8tbfTUto", "quantity": 49}, {"extraSubscriptionDays": 66, "itemId": "e448o7o8", "itemName": "iqNRXStA", "quantity": 95}, {"extraSubscriptionDays": 90, "itemId": "8BIHDTWN", "itemName": "y9g1eaRQ", "quantity": 8}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 87, "name": "BrDv8j2F", "redeemEnd": "1991-11-06T00:00:00Z", "redeemStart": "1971-05-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["cDfFhAlp", "GttdNBvK", "uYBhpKJa"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'caknCtZZ' \
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
    --body '{"appConfig": {"appName": "xfvsJrh6"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "VEWtGvqt"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "IvJZzpip"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "RgslyrmP"}, "extendType": "CUSTOM"}' \
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
    --storeId 'KMQUZOTg' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'Qm7IsN76' \
    --body '{"categoryPath": "O9EF592N", "localizationDisplayNames": {"FGSxmbPB": "xa4NoaHu", "ZOLgnQKP": "UYw9eCjx", "JCe8wK6A": "jMxgKA1Z"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'ZOhzqykS' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'btBeeZne' \
    --namespace $AB_NAMESPACE \
    --storeId 'uwHlqtnT' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'KeickxR5' \
    --namespace $AB_NAMESPACE \
    --storeId 'eLdR2aQK' \
    --body '{"localizationDisplayNames": {"D9R59LCo": "6lmE5iXz", "vIXZ8Joa": "W5H2Z0H9", "0Jo4Mx6O": "2ysFM6GF"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'DW7V6Fyl' \
    --namespace $AB_NAMESPACE \
    --storeId 'VLJtqfKG' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'rj4DYNs4' \
    --namespace $AB_NAMESPACE \
    --storeId 'uYJWllGJ' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'gZfZw3cQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Zwxxg8L2' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'ZHwFdivn' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '99' \
    --code 'XcwJ95VN' \
    --limit '17' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'IFdPFEXW' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 54}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'BModTbSa' \
    --namespace $AB_NAMESPACE \
    --batchNo '56' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'f5aGvdnV' \
    --namespace $AB_NAMESPACE \
    --batchNo '18' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'MD9Hwy3l' \
    --namespace $AB_NAMESPACE \
    --batchNo '0' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'nMcjG1TA' \
    --namespace $AB_NAMESPACE \
    --code 'xJ12uv2z' \
    --limit '67' \
    --offset '48' \
    --userId '7IAUKz3K' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'eQUXLrUn' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'juiQnoW1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'HR1E4J8b' \
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
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "ecF7QymB", "currencySymbol": "CNLVLiyF", "currencyType": "REAL", "decimals": 70, "localizationDescriptions": {"0qebUOsj": "fYKnU6Zr", "V8xx4say": "ZkPI3pr9", "DUBs4n4E": "kWG3GmrX"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'S7140ASM' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"87PIL6kL": "ZdWT8OG1", "jJWPWMxg": "xtzDy3Vr", "bUlj9ogp": "EsdTZ1Mk"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'o6f0VhrZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'qQOgvGZe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'nDvZ2xe1' \
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
    --body '{"data": [{"id": "4Aq0m9tb", "rewards": [{"currency": {"currencyCode": "2tWO3oqC", "namespace": "C7fM7UJu"}, "item": {"itemId": "gJWBSgyQ", "itemSku": "n7ybTAXf", "itemType": "PtNyCbPN"}, "quantity": 7, "type": "ITEM"}, {"currency": {"currencyCode": "XFwixJyM", "namespace": "3XJXvLXE"}, "item": {"itemId": "2EWSlo6N", "itemSku": "cCVWC3Da", "itemType": "L1Css46C"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "SZHkXnKL", "namespace": "JD0U4UuW"}, "item": {"itemId": "MoxwZWIv", "itemSku": "VSKs3eX5", "itemType": "lZ32SDj9"}, "quantity": 15, "type": "CURRENCY"}]}, {"id": "xZoBKO4C", "rewards": [{"currency": {"currencyCode": "w3LfgScG", "namespace": "UD1rcyYO"}, "item": {"itemId": "HC1zEIBW", "itemSku": "U5Z9O875", "itemType": "IZKzEbKw"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"currencyCode": "SoUGhafF", "namespace": "zFW4pkzG"}, "item": {"itemId": "M5LQA8lr", "itemSku": "3eZvO8ES", "itemType": "o6TcOTbn"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "ndSq7o55", "namespace": "gJWmhA3N"}, "item": {"itemId": "tMsA0C2B", "itemSku": "Er9554IX", "itemType": "dV4Ms7pr"}, "quantity": 51, "type": "CURRENCY"}]}, {"id": "HYX8FVcg", "rewards": [{"currency": {"currencyCode": "XZEHu8MP", "namespace": "Fhg3MRcF"}, "item": {"itemId": "BbYx9b0D", "itemSku": "CSdQzfmO", "itemType": "hGYW64HJ"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "T2T2O1uE", "namespace": "UJ6KwQnk"}, "item": {"itemId": "dtfY3dvD", "itemSku": "hNCukjL4", "itemType": "rkuwY4kL"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "iYodFFJO", "namespace": "WmOQzJnm"}, "item": {"itemId": "N8pJkY6T", "itemSku": "HfPJ3Ddw", "itemType": "suH7XqNJ"}, "quantity": 53, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"cnt8h5CV": "gzyQRF8M", "cWkFmg3A": "hX07bNUm", "aPEWaZaA": "pz1OwyRj"}}, {"platform": "OCULUS", "platformDlcIdMap": {"D6mK2Tpj": "qdx8wk8O", "mh81xvY1": "dH9kkkyf", "wAzwz6pC": "4nyHM7cw"}}, {"platform": "XBOX", "platformDlcIdMap": {"pH5exvbq": "E1xmclEg", "0OYt0p0q": "k9B7EgI5", "UjbS4NWa": "5vP6l1vT"}}]}' \
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
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'cL4ia9hA' \
    --itemId '["mNt2ULKz", "lWEAGwAb", "JmqH5m7Q"]' \
    --limit '28' \
    --offset '0' \
    --userId 'aBcS8GX9' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["HxT3X8Ei", "xW7vzhEB", "zAPltSe0"]' \
    --limit '4' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1993-12-12T00:00:00Z", "grantedCode": "neQJ6stK", "itemId": "H8dJ3Ypn", "itemNamespace": "AB4zsN3S", "language": "DE_isiz_nf", "quantity": 55, "region": "3anBlhjx", "source": "GIFT", "startDate": "1986-05-28T00:00:00Z", "storeId": "bIvueqee"}, {"endDate": "1980-12-14T00:00:00Z", "grantedCode": "K8A0BIsW", "itemId": "h9tHCk5m", "itemNamespace": "82uhtarW", "language": "gc-016", "quantity": 61, "region": "xFTD05Ng", "source": "REFERRAL_BONUS", "startDate": "1995-09-15T00:00:00Z", "storeId": "kqAAxwOq"}, {"endDate": "1976-08-22T00:00:00Z", "grantedCode": "Wt8t9OTd", "itemId": "IFKH4P6d", "itemNamespace": "MomAwnI3", "language": "ZK", "quantity": 58, "region": "T5DXonSR", "source": "GIFT", "startDate": "1998-04-03T00:00:00Z", "storeId": "dQrM0Bhl"}], "userIds": ["gqHoJ6sn", "W1HPxtXa", "5VYhJqCJ"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["RayetlIC", "71H57hIX", "XFrw4TkS"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId '7R0i1xKW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '14' \
    --status 'SUCCESS' \
    --userId 'crdhVsW3' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'GphbCtV2' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'Tf07Tt31' \
    --limit '89' \
    --offset '38' \
    --startTime 'CNgiMmJJ' \
    --status 'FAIL' \
    --userId 'j9YMeuSl' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "f2ijMXth", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 18, "clientTransactionId": "Z3u5wPgB"}, {"amountConsumed": 4, "clientTransactionId": "xXXYvgoD"}, {"amountConsumed": 9, "clientTransactionId": "PMhcUJJg"}], "entitlementId": "EvsVszrH", "usageCount": 86}, {"clientTransaction": [{"amountConsumed": 54, "clientTransactionId": "8kxVdHFm"}, {"amountConsumed": 3, "clientTransactionId": "NCxSejM5"}, {"amountConsumed": 72, "clientTransactionId": "JlbMyEF5"}], "entitlementId": "b4E5BxVV", "usageCount": 78}, {"clientTransaction": [{"amountConsumed": 35, "clientTransactionId": "aZRAZe3k"}, {"amountConsumed": 12, "clientTransactionId": "3VUlmScM"}, {"amountConsumed": 50, "clientTransactionId": "O57VO41I"}], "entitlementId": "8Y0ZZnVM", "usageCount": 91}], "purpose": "4yseWllm"}, "originalTitleName": "WOKXAvHq", "paymentProductSKU": "aEZtumPd", "purchaseDate": "pPe02qBg", "sourceOrderItemId": "goQDusc9", "titleName": "4SGPuXYm"}, "eventDomain": "EtWt15bA", "eventSource": "JBmJo8Dq", "eventType": "p15juHgm", "eventVersion": 18, "id": "N3O2CxhC", "timestamp": "DgRNtGVP"}' \
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
    --body '{"bundleId": "nq9weUfO", "password": "idtbw6gj"}' \
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
    --body '{"sandboxId": "djoN58NF"}' \
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
    --body '{"applicationName": "IfGy036p", "serviceAccountId": "0u5HyEMl"}' \
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
    --body '{"data": [{"itemIdentity": "Jb0qRgtG", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"NQZH1AzR": "RNMGz4GH", "Q28zqNeD": "ezlG10EO", "gQydkYqe": "bE54fqhv"}}, {"itemIdentity": "dYf3i21m", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"gdsbTvJr": "fjkm95Tr", "yEcEibpn": "LIjbwwai", "yQE66oT7": "WGAdfKUE"}}, {"itemIdentity": "vkaYfb0l", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"OuLCwsWr": "DOUwwLan", "yYMjqJ0d": "O5MEj3fu", "yq5p8e7I": "lKjZ3NLv"}}]}' \
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
    --body '{"appId": "hmnmEwgL", "appSecret": "UFrTrgdD"}' \
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
    --body '{"backOfficeServerClientId": "qRkcJExE", "backOfficeServerClientSecret": "idGUTiE2", "enableStreamJob": false, "environment": "cEEZtArI", "streamName": "re38SJVk", "streamPartnerName": "HWrm2exP"}' \
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
    --body '{"backOfficeServerClientId": "02fiqktg", "backOfficeServerClientSecret": "AyiA7w0Z", "enableStreamJob": true, "environment": "duXP5HpQ", "streamName": "IV3HsIiM", "streamPartnerName": "84mbgtjY"}' \
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
    --body '{"appId": "wYLJkreG", "publisherAuthenticationKey": "PowXCamH"}' \
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
    --body '{"clientId": "FHHMWzp9", "clientSecret": "9cVdFI1F", "organizationId": "AEiI9pbG"}' \
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
    --body '{"relyingPartyCert": "IoqMsFte"}' \
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
    --password 'fF0MViaE' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'tjxRoWPA' \
    --itemId 'yezSTVn4' \
    --itemType 'SEASON' \
    --endTime 'z4ov9LaM' \
    --startTime 'Mrkl81kM' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'xM3vYGrp' \
    --itemId 'cq3fsnPD' \
    --itemType 'EXTENSION' \
    --endTime '4gJm10sL' \
    --startTime '6TvKXti3' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'IG2vLLV8' \
    --body '{"categoryPath": "q15hzVr4", "targetItemId": "5qY1oayh", "targetNamespace": "QfqCEbUJ"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'bLn8DPoZ' \
    --body '{"appId": "816AJ6C5", "appType": "GAME", "baseAppId": "blEH96ac", "boothName": "9OPSOXkS", "categoryPath": "flbdkp8z", "clazz": "io3Qrbm0", "displayOrder": 28, "entitlementType": "CONSUMABLE", "ext": {"eJ3bakGG": {}, "ItTvYsm1": {}, "Z7C71sr0": {}}, "features": ["Vg64z2sF", "NZKBR2T5", "C5hybPzN"], "images": [{"as": "zIMPluRs", "caption": "XAcUmYQ8", "height": 63, "imageUrl": "Qkyjv7x3", "smallImageUrl": "l0d9JHe5", "width": 64}, {"as": "JcMq5PbJ", "caption": "74svPG9h", "height": 49, "imageUrl": "6GlOkbqe", "smallImageUrl": "Bh7hCRf1", "width": 1}, {"as": "FQcdffM9", "caption": "Pa2YrFV2", "height": 47, "imageUrl": "hrp8Uj4q", "smallImageUrl": "WNdGVLjf", "width": 94}], "itemIds": ["SF8KnmsT", "aUkHgjn5", "JXI5cy0e"], "itemQty": {"U14sbkr4": 19, "PIojPvE0": 60, "zFpsD5wl": 9}, "itemType": "BUNDLE", "listable": true, "localizations": {"dephuK9E": {"description": "RkYuH7WA", "localExt": {"GukOcGcn": {}, "LW7QK8tm": {}, "gIA3KvUx": {}}, "longDescription": "qMMrg5UK", "title": "LT03RkrO"}, "RMl3xzvV": {"description": "PM9KYrZy", "localExt": {"OzQBisjc": {}, "yUzsFxR2": {}, "LK8HJrhH": {}}, "longDescription": "4JpDngfV", "title": "87QSvjqh"}, "kMXJt6me": {"description": "MRV0yhKt", "localExt": {"OGCPTQXL": {}, "kwD9m4WB": {}, "DHt6MGVn": {}}, "longDescription": "Ogm4WBZe", "title": "phYwIwRp"}}, "lootBoxConfig": {"rewardCount": 8, "rewards": [{"lootBoxItems": [{"count": 10, "duration": 83, "endDate": "1988-09-23T00:00:00Z", "itemId": "3lfcBu5w", "itemSku": "6Cnvxbll", "itemType": "ivlPKbZX"}, {"count": 82, "duration": 58, "endDate": "1996-10-11T00:00:00Z", "itemId": "M5zFKMxp", "itemSku": "dxdBU60o", "itemType": "9ALOw6aq"}, {"count": 68, "duration": 70, "endDate": "1971-10-27T00:00:00Z", "itemId": "pF1IPDuR", "itemSku": "p8PANtAA", "itemType": "LqAjNh3I"}], "name": "Z6PTAsiY", "odds": 0.3391846652601598, "type": "PROBABILITY_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 67, "duration": 81, "endDate": "1997-04-20T00:00:00Z", "itemId": "gszyXDH3", "itemSku": "xQEYuiWJ", "itemType": "cNnqxCm4"}, {"count": 14, "duration": 55, "endDate": "1985-11-20T00:00:00Z", "itemId": "F7MwayFD", "itemSku": "0QrnBinU", "itemType": "4Xjn6tib"}, {"count": 75, "duration": 64, "endDate": "1975-09-02T00:00:00Z", "itemId": "gIXGkdhL", "itemSku": "PudRC6NG", "itemType": "w6ktIVKb"}], "name": "NzPuBsnt", "odds": 0.5127063409216067, "type": "REWARD", "weight": 15}, {"lootBoxItems": [{"count": 78, "duration": 25, "endDate": "1971-07-26T00:00:00Z", "itemId": "iFf117lt", "itemSku": "do2j5n2D", "itemType": "wjd7NTz7"}, {"count": 50, "duration": 88, "endDate": "1975-05-18T00:00:00Z", "itemId": "lYK8lE1b", "itemSku": "73cUOdQr", "itemType": "Ont9qZse"}, {"count": 21, "duration": 68, "endDate": "1977-11-24T00:00:00Z", "itemId": "kUfI9xgG", "itemSku": "BjsBG4Gp", "itemType": "QpPdckkT"}], "name": "ljmMerLJ", "odds": 0.46100349816245934, "type": "PROBABILITY_GROUP", "weight": 9}], "rollFunction": "CUSTOM"}, "maxCount": 40, "maxCountPerUser": 17, "name": "lXMNLwon", "optionBoxConfig": {"boxItems": [{"count": 7, "duration": 51, "endDate": "1996-08-11T00:00:00Z", "itemId": "qeZsKplK", "itemSku": "0VwLp5SL", "itemType": "vGFzsIJC"}, {"count": 3, "duration": 50, "endDate": "1971-04-24T00:00:00Z", "itemId": "KnCWQkXJ", "itemSku": "5dX6Pfcl", "itemType": "xXnKD80n"}, {"count": 17, "duration": 38, "endDate": "1987-09-12T00:00:00Z", "itemId": "V0DX9uWA", "itemSku": "C9i8mDRj", "itemType": "TastGDqp"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 66, "fixedTrialCycles": 90, "graceDays": 34}, "regionData": {"fqhWSb3G": [{"currencyCode": "RdhHHRBe", "currencyNamespace": "g9XK1ibm", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1999-02-24T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1996-08-22T00:00:00Z", "expireAt": "1974-09-03T00:00:00Z", "price": 73, "purchaseAt": "1996-04-30T00:00:00Z", "trialPrice": 91}, {"currencyCode": "MdegbPXa", "currencyNamespace": "UWArGyv5", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1985-05-27T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1990-02-02T00:00:00Z", "expireAt": "1975-10-31T00:00:00Z", "price": 2, "purchaseAt": "1992-11-26T00:00:00Z", "trialPrice": 69}, {"currencyCode": "rnu4vVO8", "currencyNamespace": "lMzYWYsY", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1994-02-19T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1998-12-15T00:00:00Z", "expireAt": "1971-09-20T00:00:00Z", "price": 5, "purchaseAt": "1977-02-06T00:00:00Z", "trialPrice": 62}], "AFrdpFwQ": [{"currencyCode": "ILRuQEDi", "currencyNamespace": "XL8xKP5W", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1996-01-31T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1982-05-29T00:00:00Z", "expireAt": "1977-12-31T00:00:00Z", "price": 50, "purchaseAt": "1984-07-11T00:00:00Z", "trialPrice": 61}, {"currencyCode": "Pj9FWEE4", "currencyNamespace": "aDaGkbpo", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1998-09-30T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1985-03-19T00:00:00Z", "expireAt": "1979-10-07T00:00:00Z", "price": 71, "purchaseAt": "1987-06-03T00:00:00Z", "trialPrice": 81}, {"currencyCode": "D1S4Lr2h", "currencyNamespace": "XmHOPmgS", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1973-03-18T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1997-05-09T00:00:00Z", "expireAt": "1999-11-12T00:00:00Z", "price": 99, "purchaseAt": "1981-11-26T00:00:00Z", "trialPrice": 10}], "8LHV0Azw": [{"currencyCode": "W0qh6XLA", "currencyNamespace": "bp14rRFn", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1973-10-19T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1990-04-12T00:00:00Z", "expireAt": "1981-01-04T00:00:00Z", "price": 19, "purchaseAt": "1997-01-23T00:00:00Z", "trialPrice": 66}, {"currencyCode": "aziYgeiV", "currencyNamespace": "FgBVH97K", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1993-02-13T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1998-02-06T00:00:00Z", "expireAt": "1998-08-02T00:00:00Z", "price": 47, "purchaseAt": "1975-10-05T00:00:00Z", "trialPrice": 30}, {"currencyCode": "kX0UhSIu", "currencyNamespace": "0TfaJNx2", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1983-07-28T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1993-02-18T00:00:00Z", "expireAt": "1997-05-30T00:00:00Z", "price": 56, "purchaseAt": "1995-04-15T00:00:00Z", "trialPrice": 37}]}, "saleConfig": {"currencyCode": "wkzEaBfx", "price": 16}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "PrUqfjjH", "stackable": false, "status": "ACTIVE", "tags": ["ZLBVBK6K", "OS2LGhGI", "G5NoIeZ5"], "targetCurrencyCode": "ky0oAQCK", "targetNamespace": "2lMiqgwo", "thumbnailUrl": "BGDFbmNC", "useCount": 39}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'LxJdjRMy' \
    --appId 'DO1CfTGv' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DLC' \
    --availableDate 'ex13DMiA' \
    --baseAppId 'N6oMKiO7' \
    --categoryPath 'mconKqPN' \
    --features 'nr98e2ty' \
    --includeSubCategoryItem 'true' \
    --itemType 'SUBSCRIPTION' \
    --limit '47' \
    --offset '99' \
    --region 'bBjel8xA' \
    --sortBy '["displayOrder:desc", "createdAt:asc", "name:asc"]' \
    --storeId 'UGUzFJdd' \
    --tags 'X48S0ksA' \
    --targetNamespace 'ey1NnpnR' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["eBebXKmH", "YQifNnFx", "hwpmV7FH"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'i44UGcXi' \
    --sku '8PCAPhML' \
    > test.out 2>&1
eval_tap $? 105 'GetItemBySku' test.out

#- 106 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'fAoBx5Pk' \
    --populateBundle 'false' \
    --region 'SNrI9s38' \
    --storeId 'h0HwhRzh' \
    --sku '6Nd265vZ' \
    > test.out 2>&1
eval_tap $? 106 'GetLocaleItemBySku' test.out

#- 107 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '5cqUIAsr' \
    --sku 'p2E82d0X' \
    > test.out 2>&1
eval_tap $? 107 'GetItemIdBySku' test.out

#- 108 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["wyXhjB9H", "1pBjHvw8", "pCy9faWV"]' \
    --storeId 'vNn73I2B' \
    > test.out 2>&1
eval_tap $? 108 'GetBulkItemIdBySkus' test.out

#- 109 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'dF6EopUM' \
    --region '72a2AYmV' \
    --storeId 'l8VREr5H' \
    --itemIds 'PEdD2qE0' \
    > test.out 2>&1
eval_tap $? 109 'BulkGetLocaleItems' test.out

#- 110 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'GetAvailablePredicateTypes' test.out

#- 111 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --userId 'Ok2i13bg' \
    --body '{"itemIds": ["AGtZSHCX", "ehgJA8BY", "RzK0uyyL"]}' \
    > test.out 2>&1
eval_tap $? 111 'ValidateItemPurchaseCondition' test.out

#- 112 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'SFsFM1mg' \
    --body '{"changes": [{"itemIdentities": ["7LSZnG2u", "LD0Cf2V2", "Eiwk1SG5"], "itemIdentityType": "ITEM_SKU", "regionData": {"fy1fnucW": [{"currencyCode": "RdtmLRYy", "currencyNamespace": "anRaJIpp", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1976-06-07T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1979-01-17T00:00:00Z", "discountedPrice": 47, "expireAt": "1971-07-30T00:00:00Z", "price": 22, "purchaseAt": "1973-03-05T00:00:00Z", "trialPrice": 51}, {"currencyCode": "Zgu5JyDQ", "currencyNamespace": "EcICOG4f", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1994-08-01T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1975-02-01T00:00:00Z", "discountedPrice": 12, "expireAt": "1997-06-06T00:00:00Z", "price": 97, "purchaseAt": "1994-03-01T00:00:00Z", "trialPrice": 51}, {"currencyCode": "lu7Ii7kU", "currencyNamespace": "91hG9ZPE", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1977-05-28T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1980-12-13T00:00:00Z", "discountedPrice": 65, "expireAt": "1997-09-27T00:00:00Z", "price": 1, "purchaseAt": "1997-02-14T00:00:00Z", "trialPrice": 20}], "plOKz2vV": [{"currencyCode": "7swz4L0D", "currencyNamespace": "gh5wzxPx", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1999-11-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1988-06-25T00:00:00Z", "discountedPrice": 27, "expireAt": "1982-10-05T00:00:00Z", "price": 60, "purchaseAt": "1981-11-05T00:00:00Z", "trialPrice": 89}, {"currencyCode": "KWNrMXX9", "currencyNamespace": "2SK7YcfN", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-12-05T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1971-09-03T00:00:00Z", "discountedPrice": 51, "expireAt": "1989-07-14T00:00:00Z", "price": 94, "purchaseAt": "1987-09-26T00:00:00Z", "trialPrice": 72}, {"currencyCode": "dPaGV5fs", "currencyNamespace": "sJ8Ojxif", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1984-11-16T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1981-09-02T00:00:00Z", "discountedPrice": 51, "expireAt": "1979-02-18T00:00:00Z", "price": 90, "purchaseAt": "1984-12-30T00:00:00Z", "trialPrice": 91}], "CmL4K4dn": [{"currencyCode": "lThzI1XK", "currencyNamespace": "iDcmBmmD", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1991-06-22T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1973-11-06T00:00:00Z", "discountedPrice": 84, "expireAt": "1975-07-15T00:00:00Z", "price": 26, "purchaseAt": "1998-09-27T00:00:00Z", "trialPrice": 96}, {"currencyCode": "vuJHOyTk", "currencyNamespace": "hQblgI70", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1988-10-07T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1980-03-26T00:00:00Z", "discountedPrice": 97, "expireAt": "1978-06-15T00:00:00Z", "price": 49, "purchaseAt": "1975-11-03T00:00:00Z", "trialPrice": 11}, {"currencyCode": "gHFBIDKK", "currencyNamespace": "2CQ1FONv", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1973-11-27T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1989-01-14T00:00:00Z", "discountedPrice": 82, "expireAt": "1985-01-07T00:00:00Z", "price": 0, "purchaseAt": "1983-02-26T00:00:00Z", "trialPrice": 69}]}}, {"itemIdentities": ["An8X7KSU", "yJcEoUPJ", "m0hCiZ3t"], "itemIdentityType": "ITEM_SKU", "regionData": {"iKfmlbTA": [{"currencyCode": "2HgvW7JO", "currencyNamespace": "wYHR27Fv", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1979-05-27T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1988-11-25T00:00:00Z", "discountedPrice": 49, "expireAt": "1975-11-03T00:00:00Z", "price": 41, "purchaseAt": "1989-11-25T00:00:00Z", "trialPrice": 39}, {"currencyCode": "OiwxzFyG", "currencyNamespace": "0dP250Wr", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1986-02-21T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1979-02-24T00:00:00Z", "discountedPrice": 75, "expireAt": "1977-12-01T00:00:00Z", "price": 56, "purchaseAt": "1972-05-30T00:00:00Z", "trialPrice": 9}, {"currencyCode": "ZFNbl4kO", "currencyNamespace": "vcC5aDk6", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1973-01-22T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1975-10-21T00:00:00Z", "discountedPrice": 31, "expireAt": "1988-06-02T00:00:00Z", "price": 12, "purchaseAt": "1990-07-08T00:00:00Z", "trialPrice": 10}], "rcot28so": [{"currencyCode": "uBLmzwkh", "currencyNamespace": "HN56BLVm", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1971-03-26T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1973-08-25T00:00:00Z", "discountedPrice": 0, "expireAt": "1983-08-07T00:00:00Z", "price": 57, "purchaseAt": "1981-09-03T00:00:00Z", "trialPrice": 14}, {"currencyCode": "DQ2oir01", "currencyNamespace": "lBklQeqi", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1989-09-06T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1977-08-24T00:00:00Z", "discountedPrice": 16, "expireAt": "1982-05-07T00:00:00Z", "price": 55, "purchaseAt": "1975-03-19T00:00:00Z", "trialPrice": 23}, {"currencyCode": "1rHBREel", "currencyNamespace": "pXVyDURH", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1991-01-22T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1982-02-13T00:00:00Z", "discountedPrice": 80, "expireAt": "1976-06-22T00:00:00Z", "price": 98, "purchaseAt": "1983-06-22T00:00:00Z", "trialPrice": 37}], "tPVGb9QR": [{"currencyCode": "2AYmlNVr", "currencyNamespace": "u50xyPOh", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1972-04-08T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1997-06-22T00:00:00Z", "discountedPrice": 44, "expireAt": "1987-10-20T00:00:00Z", "price": 90, "purchaseAt": "1997-03-08T00:00:00Z", "trialPrice": 6}, {"currencyCode": "NNoT7vnk", "currencyNamespace": "xIzODJaB", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1981-04-24T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1992-07-18T00:00:00Z", "discountedPrice": 86, "expireAt": "1972-05-29T00:00:00Z", "price": 36, "purchaseAt": "1973-02-03T00:00:00Z", "trialPrice": 98}, {"currencyCode": "6cADAiHR", "currencyNamespace": "z6XWtWRv", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1982-03-28T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1996-08-14T00:00:00Z", "discountedPrice": 4, "expireAt": "1995-08-30T00:00:00Z", "price": 68, "purchaseAt": "1995-01-03T00:00:00Z", "trialPrice": 29}]}}, {"itemIdentities": ["tapEHYRb", "XYRLcVXb", "PJ2fwouA"], "itemIdentityType": "ITEM_ID", "regionData": {"e0At9rP4": [{"currencyCode": "W7BzZAKs", "currencyNamespace": "fqIRvkGf", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1992-01-20T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1993-08-03T00:00:00Z", "discountedPrice": 81, "expireAt": "1987-08-14T00:00:00Z", "price": 45, "purchaseAt": "1974-08-07T00:00:00Z", "trialPrice": 28}, {"currencyCode": "PTg0oZy3", "currencyNamespace": "YDa3cnL7", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1973-01-24T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1979-07-21T00:00:00Z", "discountedPrice": 81, "expireAt": "1992-02-10T00:00:00Z", "price": 43, "purchaseAt": "1989-04-28T00:00:00Z", "trialPrice": 13}, {"currencyCode": "i5oF0KOu", "currencyNamespace": "gXJUNGMQ", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1996-11-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1990-07-20T00:00:00Z", "discountedPrice": 87, "expireAt": "1983-06-30T00:00:00Z", "price": 32, "purchaseAt": "1992-09-30T00:00:00Z", "trialPrice": 74}], "rWEnwyG5": [{"currencyCode": "igtH7mYh", "currencyNamespace": "uWtko5bX", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1973-04-03T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1972-09-01T00:00:00Z", "discountedPrice": 22, "expireAt": "1975-03-09T00:00:00Z", "price": 94, "purchaseAt": "1982-05-25T00:00:00Z", "trialPrice": 11}, {"currencyCode": "e2EfZoh4", "currencyNamespace": "N27ZnqnT", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1972-02-19T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1983-12-31T00:00:00Z", "discountedPrice": 5, "expireAt": "1998-07-07T00:00:00Z", "price": 53, "purchaseAt": "1998-04-16T00:00:00Z", "trialPrice": 89}, {"currencyCode": "gBX3cDIM", "currencyNamespace": "LNuesns0", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1986-10-30T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1979-12-05T00:00:00Z", "discountedPrice": 51, "expireAt": "1973-07-16T00:00:00Z", "price": 34, "purchaseAt": "1978-07-25T00:00:00Z", "trialPrice": 25}], "AE4K3DgV": [{"currencyCode": "6rZgesfv", "currencyNamespace": "v7uSmi6u", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1983-05-23T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-01-14T00:00:00Z", "discountedPrice": 51, "expireAt": "1993-11-15T00:00:00Z", "price": 67, "purchaseAt": "1983-12-21T00:00:00Z", "trialPrice": 98}, {"currencyCode": "Iz6OOIcH", "currencyNamespace": "CNJgnj8W", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1989-08-02T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1980-06-15T00:00:00Z", "discountedPrice": 30, "expireAt": "1979-04-18T00:00:00Z", "price": 15, "purchaseAt": "1980-04-09T00:00:00Z", "trialPrice": 5}, {"currencyCode": "kg6Q5Eqx", "currencyNamespace": "KiSJrJc3", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1992-12-23T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-05-12T00:00:00Z", "discountedPrice": 16, "expireAt": "1971-06-07T00:00:00Z", "price": 12, "purchaseAt": "1993-02-14T00:00:00Z", "trialPrice": 40}]}}]}' \
    > test.out 2>&1
eval_tap $? 112 'BulkUpdateRegionData' test.out

#- 113 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'BUNDLE' \
    --limit '40' \
    --offset '34' \
    --sortBy '4i7PBNlD' \
    --storeId 'joojGLrA' \
    --keyword 'glJdOReo' \
    --language 'tedHAOzY' \
    > test.out 2>&1
eval_tap $? 113 'SearchItems' test.out

#- 114 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '36' \
    --offset '15' \
    --sortBy '["name", "name:asc", "updatedAt"]' \
    --storeId 'Rb1BaUxI' \
    > test.out 2>&1
eval_tap $? 114 'QueryUncategorizedItems' test.out

#- 115 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId '2w8JtPQg' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'JrQto3nr' \
    > test.out 2>&1
eval_tap $? 115 'GetItem' test.out

#- 116 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'oyWGH4ss' \
    --namespace $AB_NAMESPACE \
    --storeId 'A2Wb4c96' \
    --body '{"appId": "XUfNXjBl", "appType": "SOFTWARE", "baseAppId": "GsaxdwLd", "boothName": "HOpTaihC", "categoryPath": "LL0aRE1P", "clazz": "sjEEpz6v", "displayOrder": 8, "entitlementType": "DURABLE", "ext": {"86nc3G7s": {}, "MLy3Xkvz": {}, "6lSQjDIj": {}}, "features": ["8g2NpWQ6", "T7AmQTWO", "gXLjMGnH"], "images": [{"as": "Dr0FHKKN", "caption": "Vmp9UHeA", "height": 84, "imageUrl": "Xefrmu8R", "smallImageUrl": "tLgTzVmK", "width": 74}, {"as": "SPs8EZl9", "caption": "IQtWtBxn", "height": 5, "imageUrl": "U6NYWbzn", "smallImageUrl": "O9wrA11S", "width": 44}, {"as": "gPyvyP9K", "caption": "jaHhtoM6", "height": 7, "imageUrl": "Plk5kogK", "smallImageUrl": "hvP5HLjI", "width": 32}], "itemIds": ["3BPn6p8h", "mCngn4V2", "UDKe3dYJ"], "itemQty": {"OMN6sFjn": 56, "aSo9Vm0F": 65, "0qJUl14q": 91}, "itemType": "MEDIA", "listable": false, "localizations": {"cPvBYifN": {"description": "OPlKvId0", "localExt": {"vP4A4YxZ": {}, "wnxPoWOz": {}, "ElPxs8f5": {}}, "longDescription": "f9YL1d09", "title": "zIaKDqqD"}, "mEgM16Vq": {"description": "qLw5oflq", "localExt": {"ugQFuQxN": {}, "nwQMGjvV": {}, "kbbTpDlB": {}}, "longDescription": "SN05A8gE", "title": "k3fAo4fU"}, "i5SOCWZh": {"description": "QQlPUsII", "localExt": {"CZd31aBg": {}, "K3AiLDyH": {}, "Orem7Xi7": {}}, "longDescription": "rY01WTLK", "title": "WMLIXIHn"}}, "lootBoxConfig": {"rewardCount": 17, "rewards": [{"lootBoxItems": [{"count": 9, "duration": 17, "endDate": "1979-05-19T00:00:00Z", "itemId": "uBg9IHCJ", "itemSku": "zEu66WAD", "itemType": "XB48Zjep"}, {"count": 27, "duration": 32, "endDate": "1994-09-09T00:00:00Z", "itemId": "zGbEZAwd", "itemSku": "TpSU4j5a", "itemType": "hd6hcmxF"}, {"count": 6, "duration": 84, "endDate": "1995-01-11T00:00:00Z", "itemId": "QtSnp50N", "itemSku": "FkKYuWrb", "itemType": "IStiZU5h"}], "name": "RgFQ676c", "odds": 0.2575769424015655, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 2, "duration": 32, "endDate": "1990-03-30T00:00:00Z", "itemId": "lSugiuhN", "itemSku": "XpudRsRe", "itemType": "Em9cllBh"}, {"count": 98, "duration": 58, "endDate": "1996-05-01T00:00:00Z", "itemId": "HOK41m6a", "itemSku": "xF1RNU33", "itemType": "5DEOm3NQ"}, {"count": 20, "duration": 52, "endDate": "1981-02-21T00:00:00Z", "itemId": "idgbwmZS", "itemSku": "RrCSa8rD", "itemType": "2T85vAvU"}], "name": "SDSaOf6H", "odds": 0.1581102437294135, "type": "REWARD_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 66, "duration": 22, "endDate": "1982-04-02T00:00:00Z", "itemId": "pFHCsHqW", "itemSku": "k3TZwzD5", "itemType": "HlDdtoBV"}, {"count": 46, "duration": 66, "endDate": "1994-09-20T00:00:00Z", "itemId": "xljjU1eZ", "itemSku": "e2gfTWeP", "itemType": "3LBysalY"}, {"count": 9, "duration": 95, "endDate": "1979-12-09T00:00:00Z", "itemId": "1rYitGuR", "itemSku": "0RTMGLdm", "itemType": "KUFTT5LU"}], "name": "0LITVpui", "odds": 0.42066269244702337, "type": "REWARD_GROUP", "weight": 77}], "rollFunction": "DEFAULT"}, "maxCount": 46, "maxCountPerUser": 40, "name": "CqojC8iV", "optionBoxConfig": {"boxItems": [{"count": 74, "duration": 21, "endDate": "1993-08-16T00:00:00Z", "itemId": "XxGepLkR", "itemSku": "MxKTDVdW", "itemType": "xfealXLT"}, {"count": 34, "duration": 78, "endDate": "1988-03-05T00:00:00Z", "itemId": "crBtl7ng", "itemSku": "M8FILS7e", "itemType": "ygGzyAMa"}, {"count": 47, "duration": 60, "endDate": "1979-12-21T00:00:00Z", "itemId": "fJWDoKFm", "itemSku": "IOkqanrT", "itemType": "xbMwFdqA"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 65, "fixedTrialCycles": 70, "graceDays": 46}, "regionData": {"ZX9OkgiY": [{"currencyCode": "oJBzpZGk", "currencyNamespace": "mfNGJ4JY", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1978-09-10T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1991-05-03T00:00:00Z", "expireAt": "1988-05-17T00:00:00Z", "price": 73, "purchaseAt": "1976-11-29T00:00:00Z", "trialPrice": 39}, {"currencyCode": "3WQkXdVe", "currencyNamespace": "yJAm07F9", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1979-08-23T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1991-09-10T00:00:00Z", "expireAt": "1987-03-19T00:00:00Z", "price": 83, "purchaseAt": "1993-09-22T00:00:00Z", "trialPrice": 91}, {"currencyCode": "0bMIqaI7", "currencyNamespace": "MDAjYvSx", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1985-11-20T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1982-10-03T00:00:00Z", "expireAt": "1974-04-03T00:00:00Z", "price": 24, "purchaseAt": "1985-10-01T00:00:00Z", "trialPrice": 53}], "RSLc1sKH": [{"currencyCode": "yJGCP07r", "currencyNamespace": "VGZT6dfS", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1993-01-14T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1993-06-07T00:00:00Z", "expireAt": "1987-11-16T00:00:00Z", "price": 1, "purchaseAt": "1999-07-05T00:00:00Z", "trialPrice": 43}, {"currencyCode": "plGiAChv", "currencyNamespace": "bEuTT7i1", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1982-05-05T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1983-02-21T00:00:00Z", "expireAt": "1993-02-15T00:00:00Z", "price": 68, "purchaseAt": "1999-09-02T00:00:00Z", "trialPrice": 20}, {"currencyCode": "3r4Kd8iq", "currencyNamespace": "6xZUWzrm", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1990-06-13T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1975-03-31T00:00:00Z", "expireAt": "1995-04-06T00:00:00Z", "price": 79, "purchaseAt": "1971-12-25T00:00:00Z", "trialPrice": 73}], "zSq0rAcb": [{"currencyCode": "JW3X43YY", "currencyNamespace": "67WSdx3I", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1983-07-13T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1999-05-08T00:00:00Z", "expireAt": "1988-01-18T00:00:00Z", "price": 50, "purchaseAt": "1984-11-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "qFSOafjm", "currencyNamespace": "x7uYoFBO", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1975-02-26T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-07-27T00:00:00Z", "expireAt": "1982-08-17T00:00:00Z", "price": 30, "purchaseAt": "1993-11-16T00:00:00Z", "trialPrice": 56}, {"currencyCode": "u4RqGo7e", "currencyNamespace": "1Ls7Szgn", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1992-01-21T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-08-26T00:00:00Z", "expireAt": "1972-11-16T00:00:00Z", "price": 38, "purchaseAt": "1989-10-20T00:00:00Z", "trialPrice": 77}]}, "saleConfig": {"currencyCode": "cao6EjAv", "price": 10}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "dwIN7JLP", "stackable": false, "status": "INACTIVE", "tags": ["P3yVyb95", "8RqWV84q", "JjKxNPbX"], "targetCurrencyCode": "KDrSHbgX", "targetNamespace": "J3wTsnVZ", "thumbnailUrl": "lLDnA7ZR", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 116 'UpdateItem' test.out

#- 117 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'SBMARhCz' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'PYCeplFw' \
    > test.out 2>&1
eval_tap $? 117 'DeleteItem' test.out

#- 118 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'yeEt31UB' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 74, "orderNo": "FFUhdfQ1"}' \
    > test.out 2>&1
eval_tap $? 118 'AcquireItem' test.out

#- 119 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'ngzMJMvQ' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'lQCyrA41' \
    > test.out 2>&1
eval_tap $? 119 'GetApp' test.out

#- 120 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'A2yOSAyA' \
    --namespace $AB_NAMESPACE \
    --storeId 'w5mvCCTa' \
    --body '{"carousel": [{"alt": "nsEdVMQz", "previewUrl": "eJJwdkaC", "thumbnailUrl": "l5WZroVw", "type": "video", "url": "5CioziUy", "videoSource": "vimeo"}, {"alt": "OvYJM4sx", "previewUrl": "hzkgjeAE", "thumbnailUrl": "g9zQD3WT", "type": "video", "url": "2GRdnZ1l", "videoSource": "youtube"}, {"alt": "TBxbfXYF", "previewUrl": "aEKbghHk", "thumbnailUrl": "RSa5u8Nu", "type": "video", "url": "TJCh26Ns", "videoSource": "vimeo"}], "developer": "XLCrF9y6", "forumUrl": "mhbm0tGM", "genres": ["Strategy", "Casual", "RPG"], "localizations": {"fXDBC7nO": {"announcement": "b8JuT87m", "slogan": "bt7ZyZH1"}, "aT8nF2Lk": {"announcement": "Jk7buZ2y", "slogan": "rR31iJ7y"}, "vJ9dLB4m": {"announcement": "zVYa1Oyj", "slogan": "qPF7Omu6"}}, "platformRequirements": {"0PQhM7s6": [{"additionals": "CObt4gio", "directXVersion": "Jsm0m8EH", "diskSpace": "v3gfedwq", "graphics": "NJN93UoP", "label": "gI4VMPBj", "osVersion": "Q4439xoU", "processor": "LZQI15YX", "ram": "DgiCcFh6", "soundCard": "cCq5qvqn"}, {"additionals": "Yv5wHffD", "directXVersion": "9CPgOXa7", "diskSpace": "QzmpW8Xi", "graphics": "TimkprkZ", "label": "WEEZzlsi", "osVersion": "mnGOYGWS", "processor": "AN933Qxx", "ram": "Ju5zHQCG", "soundCard": "Ei9THokv"}, {"additionals": "xIFnthSP", "directXVersion": "74ALhaOV", "diskSpace": "MKy7FCdl", "graphics": "jlfZJHgo", "label": "x6slQE45", "osVersion": "t7Y3Hho1", "processor": "b61uT1Tb", "ram": "o0oCtSAv", "soundCard": "jAsV1i2H"}], "C76SXNHr": [{"additionals": "x9GJ4Wxy", "directXVersion": "xARnUcWq", "diskSpace": "g8jn9H5P", "graphics": "yp0RGWTH", "label": "WvbQ74z1", "osVersion": "dsOCHvQf", "processor": "2jQChb5Y", "ram": "Q9NoDpLr", "soundCard": "AgdCW0Jr"}, {"additionals": "F3f8KIBY", "directXVersion": "NdasXatg", "diskSpace": "C9UGzw6I", "graphics": "mfdjBarq", "label": "qPZDfXOM", "osVersion": "cWQNMi8N", "processor": "FU3tp98x", "ram": "ksTWLL73", "soundCard": "LqCOX69R"}, {"additionals": "yHh9fuWR", "directXVersion": "KZSx7i2o", "diskSpace": "Xm4Kgo9u", "graphics": "egAk5ZnR", "label": "q4LMx3Pg", "osVersion": "0vScXvGW", "processor": "cbQvPIVe", "ram": "oHtWyQEV", "soundCard": "9agkznl3"}], "6nN6S1vz": [{"additionals": "gXXuau24", "directXVersion": "NICTza2S", "diskSpace": "LsGXGqzb", "graphics": "dlFijm26", "label": "om4No2Xk", "osVersion": "wdAZQQqT", "processor": "4u6YaDin", "ram": "pDs1HAiE", "soundCard": "ALjfe1Jo"}, {"additionals": "wzRnJGRH", "directXVersion": "qWvRZ8A2", "diskSpace": "RbZK6M40", "graphics": "L7YgWb6R", "label": "Ib2WUCuj", "osVersion": "mCHt0u1Z", "processor": "kWMKLFrM", "ram": "TpxloVEp", "soundCard": "DJVkZZjU"}, {"additionals": "M1KnOdGE", "directXVersion": "1vcgtABk", "diskSpace": "xb2lh40K", "graphics": "MNIaPWnJ", "label": "UY9VXPcI", "osVersion": "tGrW9MON", "processor": "6Dd7nDov", "ram": "Twilnfoy", "soundCard": "44CPBfGO"}]}, "platforms": ["IOS", "IOS", "MacOS"], "players": ["Coop", "Multi", "Multi"], "primaryGenre": "Indie", "publisher": "YjT4P0pI", "releaseDate": "1985-10-08T00:00:00Z", "websiteUrl": "c4Io9PCS"}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateApp' test.out

#- 121 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'oXjnHIGk' \
    --namespace $AB_NAMESPACE \
    --storeId 'ag3XGBoH' \
    > test.out 2>&1
eval_tap $? 121 'DisableItem' test.out

#- 122 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId '0dvy1IDz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'GetItemDynamicData' test.out

#- 123 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'NGNdzUPL' \
    --namespace $AB_NAMESPACE \
    --storeId 'eme1xvt2' \
    > test.out 2>&1
eval_tap $? 123 'EnableItem' test.out

#- 124 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'p5PPpXIp' \
    --itemId 'Cwotr4GW' \
    --namespace $AB_NAMESPACE \
    --storeId 'iZyi2sIC' \
    > test.out 2>&1
eval_tap $? 124 'FeatureItem' test.out

#- 125 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'G0yW8kf4' \
    --itemId 'VuakZwez' \
    --namespace $AB_NAMESPACE \
    --storeId 'AUwEQ5dc' \
    > test.out 2>&1
eval_tap $? 125 'DefeatureItem' test.out

#- 126 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'CVAv0AAs' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'aWzbaXTI' \
    --populateBundle 'false' \
    --region 'fzXkJUOW' \
    --storeId 'GDsNqt7Y' \
    > test.out 2>&1
eval_tap $? 126 'GetLocaleItem' test.out

#- 127 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'ZNfOVGBP' \
    --namespace $AB_NAMESPACE \
    --storeId 'QpwPOVB9' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 43, "comparison": "includes", "name": "aEHujA7q", "predicateType": "SeasonPassPredicate", "value": "c3cYAZip", "values": ["FR58IhRp", "WD6s3t8P", "69kltGpu"]}, {"anyOf": 46, "comparison": "isGreaterThanOrEqual", "name": "z00L4O9N", "predicateType": "SeasonPassPredicate", "value": "du4TsZ0Q", "values": ["V4gychkM", "m15cOVi8", "mMDtvA1F"]}, {"anyOf": 81, "comparison": "isLessThan", "name": "RdTBoW5U", "predicateType": "SeasonPassPredicate", "value": "M7YypBCa", "values": ["p72mjEbc", "w2UF06J6", "ACJqJgS7"]}]}, {"operator": "or", "predicates": [{"anyOf": 88, "comparison": "is", "name": "DTUALmJF", "predicateType": "SeasonTierPredicate", "value": "RpOArER9", "values": ["6ApuaUY3", "DSaIWaFD", "bM1KRv7P"]}, {"anyOf": 22, "comparison": "excludes", "name": "m3XuFpUW", "predicateType": "SeasonTierPredicate", "value": "QJM1LdQB", "values": ["dXRgwH2z", "xrRWgGl1", "cQDtxGNj"]}, {"anyOf": 54, "comparison": "isGreaterThan", "name": "qHKrJCgx", "predicateType": "SeasonPassPredicate", "value": "2hX1g8X8", "values": ["HHK5KXQ8", "LYKL2pnJ", "AKav9Dux"]}]}, {"operator": "and", "predicates": [{"anyOf": 85, "comparison": "isLessThan", "name": "ai4fGLXr", "predicateType": "SeasonTierPredicate", "value": "X0yST5O8", "values": ["gRKqjIBt", "HHDKJ8bR", "cUspHKNj"]}, {"anyOf": 74, "comparison": "isLessThan", "name": "akEWCUFH", "predicateType": "SeasonTierPredicate", "value": "0jxf6X6V", "values": ["Sunn81f8", "TxlZwexA", "iB3v1SsZ"]}, {"anyOf": 8, "comparison": "isNot", "name": "WDwih2EB", "predicateType": "EntitlementPredicate", "value": "RfZcwhVi", "values": ["LDMOfo4p", "kkLfUxZ0", "64TRsz7B"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateItemPurchaseCondition' test.out

#- 128 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'CDVVO7p8' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "JfqCGxrP"}' \
    > test.out 2>&1
eval_tap $? 128 'ReturnItem' test.out

#- 129 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'ISG2rBrr' \
    --offset '44' \
    --tag 'DGvRcMwT' \
    > test.out 2>&1
eval_tap $? 129 'QueryKeyGroups' test.out

#- 130 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "rRCCeZUW", "name": "rUkEXNBW", "status": "ACTIVE", "tags": ["naX140vq", "f24862Vq", "IR1ZEugI"]}' \
    > test.out 2>&1
eval_tap $? 130 'CreateKeyGroup' test.out

#- 131 GetKeyGroupByBoothName
eval_tap 0 131 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 132 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'd8ZJWdiY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'GetKeyGroup' test.out

#- 133 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'v4b836Xm' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Zd2d6dFd", "name": "X1fUkG6k", "status": "ACTIVE", "tags": ["UUzvTbqw", "UXq7Fqsd", "E2ecytAL"]}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateKeyGroup' test.out

#- 134 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '4Ob0yu1a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroupDynamic' test.out

#- 135 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'ab9QVAQm' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '31' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 135 'ListKeys' test.out

#- 136 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'rR1ShdEn' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 136 'UploadKeys' test.out

#- 137 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'r4fh1c8y' \
    --limit '60' \
    --offset '82' \
    --orderNos '["zC1iV08Q", "zoqa5NCS", "9FXuSOQF"]' \
    --sortBy '4wjWp2Z3' \
    --startTime '9hKsspK8' \
    --status 'FULFILL_FAILED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 137 'QueryOrders' test.out

#- 138 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetOrderStatistics' test.out

#- 139 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'aYozqJHb' \
    > test.out 2>&1
eval_tap $? 139 'GetOrder' test.out

#- 140 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '7ofPZM2I' \
    --body '{"description": "dkIIa64o"}' \
    > test.out 2>&1
eval_tap $? 140 'RefundOrder' test.out

#- 141 GetPaymentCallbackConfig
samples/cli/sample-apps Platform getPaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'GetPaymentCallbackConfig' test.out

#- 142 UpdatePaymentCallbackConfig
samples/cli/sample-apps Platform updatePaymentCallbackConfig \
    --namespace $AB_NAMESPACE \
    --body '{"dryRun": true, "notifyUrl": "yVIfoS50", "privateKey": "cETAOcEc"}' \
    > test.out 2>&1
eval_tap $? 142 'UpdatePaymentCallbackConfig' test.out

#- 143 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'sux75VY8' \
    --externalId 'vrxKfinr' \
    --limit '53' \
    --notificationSource 'CHECKOUT' \
    --notificationType 'OdCb2qQr' \
    --offset '67' \
    --paymentOrderNo 'sxGfaPDK' \
    --startDate 'VZBBM9UJ' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 143 'QueryPaymentNotifications' test.out

#- 144 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId '6YG3rsbT' \
    --limit '52' \
    --offset '37' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 144 'QueryPaymentOrders' test.out

#- 145 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "IX5mnrzl", "currencyNamespace": "boYkCG1f", "customParameters": {"ghleNCTE": {}, "P0fVB8qN": {}, "xLMJ8eUi": {}}, "description": "obxwj1Kd", "extOrderNo": "S25I86EK", "extUserId": "5AR3s2hf", "itemType": "CODE", "language": "ZE_Ahjc_vc", "metadata": {"cmWy1sk9": "31I2Q5nv", "FhYVhiOu": "wl1z6H3g", "OM32givA": "v8urHE2F"}, "notifyUrl": "IWqpdwQN", "omitNotification": true, "platform": "Y9jdlTQ7", "price": 19, "recurringPaymentOrderNo": "jBfRBqES", "region": "dn7qsPW3", "returnUrl": "9bx5SS4K", "sandbox": true, "sku": "4QEcURyz", "subscriptionId": "OpTH2w3z", "targetNamespace": "r4Zu7DxL", "targetUserId": "6QDKcI9F", "title": "2YNqnbps"}' \
    > test.out 2>&1
eval_tap $? 145 'CreatePaymentOrderByDedicated' test.out

#- 146 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'RTGNc1Jb' \
    > test.out 2>&1
eval_tap $? 146 'ListExtOrderNoByExtTxId' test.out

#- 147 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'PfE24J3B' \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentOrder' test.out

#- 148 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sDmjyOKV' \
    --body '{"extTxId": "KmmcFCRE", "paymentMethod": "1sYp0mPl", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 148 'ChargePaymentOrder' test.out

#- 149 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'xcGz7CPh' \
    --body '{"description": "5lPY7fjs"}' \
    > test.out 2>&1
eval_tap $? 149 'RefundPaymentOrderByDedicated' test.out

#- 150 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'k8HqU0ul' \
    --body '{"amount": 33, "currencyCode": "YBdhFngV", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 96, "vat": 80}' \
    > test.out 2>&1
eval_tap $? 150 'SimulatePaymentOrderNotification' test.out

#- 151 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vgv4Sovt' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrderChargeStatus' test.out

#- 152 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 152 'GetPlatformWalletConfig' test.out

#- 153 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Oculus", "Playstation", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdatePlatformWalletConfig' test.out

#- 154 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 154 'ResetPlatformWalletConfig' test.out

#- 155 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 155 'GetRevocationConfig' test.out

#- 156 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 156 'UpdateRevocationConfig' test.out

#- 157 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'DeleteRevocationConfig' test.out

#- 158 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'e6SmcuLC' \
    --limit '45' \
    --offset '75' \
    --source 'DLC' \
    --startTime 'Es3M3x4P' \
    --status 'SUCCESS' \
    --transactionId 'RVaKBMHB' \
    --userId 'rwC61THR' \
    > test.out 2>&1
eval_tap $? 158 'QueryRevocationHistories' test.out

#- 159 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 159 'GetRevocationPluginConfig' test.out

#- 160 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "rK5whFWQ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "De2XQYIu"}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateRevocationPluginConfig' test.out

#- 161 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 161 'DeleteRevocationPluginConfig' test.out

#- 162 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 162 'UploadRevocationPluginConfigCert' test.out

#- 163 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "12ZCb1QU", "eventTopic": "D9ZxEdN0", "maxAwarded": 55, "maxAwardedPerUser": 17, "namespaceExpression": "Z3NRBHq9", "rewardCode": "5MvKPPdC", "rewardConditions": [{"condition": "lnu6lDrK", "conditionName": "be11DscK", "eventName": "zG6Y8LS7", "rewardItems": [{"duration": 46, "endDate": "1978-01-31T00:00:00Z", "itemId": "oDiMA6Zc", "quantity": 33}, {"duration": 1, "endDate": "1988-03-23T00:00:00Z", "itemId": "rpN6ZVQz", "quantity": 45}, {"duration": 86, "endDate": "1982-09-30T00:00:00Z", "itemId": "W9qk9ieR", "quantity": 95}]}, {"condition": "qC5CqYqH", "conditionName": "lB3ShLUN", "eventName": "dZcj1CAQ", "rewardItems": [{"duration": 23, "endDate": "1989-04-28T00:00:00Z", "itemId": "z7tSaxEJ", "quantity": 83}, {"duration": 72, "endDate": "1997-12-15T00:00:00Z", "itemId": "Wn6JDvVy", "quantity": 23}, {"duration": 43, "endDate": "1987-07-21T00:00:00Z", "itemId": "43jQ8Y4q", "quantity": 39}]}, {"condition": "6UY066TM", "conditionName": "Jliiqqv5", "eventName": "3hbuvMpA", "rewardItems": [{"duration": 75, "endDate": "1973-03-24T00:00:00Z", "itemId": "Ro6HIyfM", "quantity": 10}, {"duration": 76, "endDate": "1994-01-10T00:00:00Z", "itemId": "wnPYAR32", "quantity": 42}, {"duration": 86, "endDate": "1979-06-13T00:00:00Z", "itemId": "YEjlykxG", "quantity": 89}]}], "userIdExpression": "4axPjQzn"}' \
    > test.out 2>&1
eval_tap $? 163 'CreateReward' test.out

#- 164 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '2RAHacA1' \
    --limit '60' \
    --offset '6' \
    --sortBy '["rewardCode:desc", "rewardCode", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 164 'QueryRewards' test.out

#- 165 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 165 'ExportRewards' test.out

#- 166 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 166 'ImportRewards' test.out

#- 167 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'ggvPcJG7' \
    > test.out 2>&1
eval_tap $? 167 'GetReward' test.out

#- 168 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4WBYRRNG' \
    --body '{"description": "M9xdXOiA", "eventTopic": "ChQBtGWG", "maxAwarded": 50, "maxAwardedPerUser": 90, "namespaceExpression": "BX2nNOu0", "rewardCode": "rQGvFfPR", "rewardConditions": [{"condition": "VUcVBsPq", "conditionName": "RvBwd77F", "eventName": "2tfba4Qz", "rewardItems": [{"duration": 85, "endDate": "1986-02-16T00:00:00Z", "itemId": "0ZOKl8YA", "quantity": 53}, {"duration": 20, "endDate": "1981-11-17T00:00:00Z", "itemId": "UpdQddYZ", "quantity": 27}, {"duration": 21, "endDate": "1997-01-11T00:00:00Z", "itemId": "kWmaavQk", "quantity": 98}]}, {"condition": "ddgsy9dG", "conditionName": "bb517O6t", "eventName": "dDlcINHZ", "rewardItems": [{"duration": 49, "endDate": "1983-09-11T00:00:00Z", "itemId": "rrnJsesD", "quantity": 19}, {"duration": 51, "endDate": "1979-01-24T00:00:00Z", "itemId": "J5sGvMxP", "quantity": 29}, {"duration": 65, "endDate": "1984-06-03T00:00:00Z", "itemId": "S9MRSdDM", "quantity": 70}]}, {"condition": "Xdw44ayj", "conditionName": "gevI8Ojt", "eventName": "RSNhI7jJ", "rewardItems": [{"duration": 82, "endDate": "1980-03-09T00:00:00Z", "itemId": "gPJg2TLa", "quantity": 56}, {"duration": 12, "endDate": "1995-09-17T00:00:00Z", "itemId": "mogseqJO", "quantity": 62}, {"duration": 54, "endDate": "1997-01-29T00:00:00Z", "itemId": "GZruOPjc", "quantity": 3}]}], "userIdExpression": "MXX6yCKZ"}' \
    > test.out 2>&1
eval_tap $? 168 'UpdateReward' test.out

#- 169 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'mkZm5o0P' \
    > test.out 2>&1
eval_tap $? 169 'DeleteReward' test.out

#- 170 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'yHRVJ1ko' \
    --body '{"payload": {"7Skldo6A": {}, "BlXcRVPz": {}, "SzYYU18H": {}}}' \
    > test.out 2>&1
eval_tap $? 170 'CheckEventCondition' test.out

#- 171 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'ShtdSSjY' \
    --body '{"conditionName": "4TxuVqAm", "userId": "8LVFtu1t"}' \
    > test.out 2>&1
eval_tap $? 171 'DeleteRewardConditionRecord' test.out

#- 172 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '1f5qy9vh' \
    --limit '50' \
    --offset '84' \
    --start 'mi6QqFty' \
    --storeId '3aL26GrY' \
    --viewId 'XxsqzMRz' \
    > test.out 2>&1
eval_tap $? 172 'QuerySections' test.out

#- 173 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId '4lHdDHnT' \
    --body '{"active": false, "displayOrder": 46, "endDate": "1981-03-12T00:00:00Z", "ext": {"e9xhFp49": {}, "FTMJc8XG": {}, "xypqs0Ao": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 55, "itemCount": 79, "rule": "SEQUENCE"}, "items": [{"id": "NdFVl2Xw", "sku": "XUtyDR8M"}, {"id": "ig2MLNjj", "sku": "xPBGaRvM"}, {"id": "d9IXvJ3p", "sku": "GJSbGsgL"}], "localizations": {"dsfo3Jkc": {"description": "WL0Ime6z", "localExt": {"tGZXfXSe": {}, "U73mbdLc": {}, "Hst6Xrxa": {}}, "longDescription": "oVRxzQ7Y", "title": "TMicAV4T"}, "ectnNnEq": {"description": "R6zPU1LI", "localExt": {"7BbmgDyz": {}, "XcLmxns4": {}, "OFSYOaFj": {}}, "longDescription": "Ej66m7pZ", "title": "nQXALdrP"}, "WMYC6gZd": {"description": "34eOZtzo", "localExt": {"pwIrQUuj": {}, "96M1Cr9c": {}, "NIChBVKA": {}}, "longDescription": "AEo1GQrQ", "title": "TeOJIkNK"}}, "name": "OJp98cOS", "rotationType": "NONE", "startDate": "1976-01-28T00:00:00Z", "viewId": "6kOxbi0T"}' \
    > test.out 2>&1
eval_tap $? 173 'CreateSection' test.out

#- 174 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'guMSSXs8' \
    > test.out 2>&1
eval_tap $? 174 'PurgeExpiredSection' test.out

#- 175 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'tMm7VL6Z' \
    --storeId 'GGo3gsDM' \
    > test.out 2>&1
eval_tap $? 175 'GetSection' test.out

#- 176 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'PA7WFkAH' \
    --storeId 'GrrG0Pi9' \
    --body '{"active": false, "displayOrder": 92, "endDate": "1997-07-30T00:00:00Z", "ext": {"ThYvLOFe": {}, "UAyQiij6": {}, "dqbeGfSM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 28, "itemCount": 45, "rule": "SEQUENCE"}, "items": [{"id": "l3BrTRPH", "sku": "wvPQ6t5w"}, {"id": "KFPBHkJW", "sku": "QwtiJDqJ"}, {"id": "HgcaTJIx", "sku": "QCR37U9d"}], "localizations": {"TqJHjKNZ": {"description": "8xhWmDiG", "localExt": {"7j2uRJI1": {}, "t8Ym9WNm": {}, "hmMqRkgl": {}}, "longDescription": "8kzo41Cw", "title": "Ieh7lWh1"}, "faWrObDt": {"description": "DBr9p9vm", "localExt": {"ZBkSqIZo": {}, "FIbi9vT2": {}, "L7Ztbx9Z": {}}, "longDescription": "2KrnVyrs", "title": "50FStaTO"}, "KHrMA14A": {"description": "qPc2wF2C", "localExt": {"C8qw3FJI": {}, "OQ1fLHfd": {}, "tP5fzJqn": {}}, "longDescription": "ZqghpO3t", "title": "XBXRMJgE"}}, "name": "yWWnRLWY", "rotationType": "NONE", "startDate": "1992-11-29T00:00:00Z", "viewId": "E5Hv2WMh"}' \
    > test.out 2>&1
eval_tap $? 176 'UpdateSection' test.out

#- 177 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '69SJgQdm' \
    --storeId 'Xg6kw5p8' \
    > test.out 2>&1
eval_tap $? 177 'DeleteSection' test.out

#- 178 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 178 'ListStores' test.out

#- 179 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "4OmQlAUq", "defaultRegion": "iuCNRRn7", "description": "cLW826dM", "supportedLanguages": ["fWFov9bJ", "J5nBpkpV", "bdg3FDVX"], "supportedRegions": ["0lDKv1dY", "AatXufrc", "4edeEHRm"], "title": "AkcBecDh"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateStore' test.out

#- 180 ImportStore
eval_tap 0 180 'ImportStore # SKIP deprecated' test.out

#- 181 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 181 'GetPublishedStore' test.out

#- 182 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'DeletePublishedStore' test.out

#- 183 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStoreBackup' test.out

#- 184 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'RollbackPublishedStore' test.out

#- 185 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'XnG0BDXi' \
    > test.out 2>&1
eval_tap $? 185 'GetStore' test.out

#- 186 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ipUt5OxU' \
    --body '{"defaultLanguage": "COWT8eQv", "defaultRegion": "x2WtmEhZ", "description": "3GgpMQYe", "supportedLanguages": ["q9NaWqFk", "wSgAkrq2", "4VvCQvjY"], "supportedRegions": ["iUeb4nFr", "72muj675", "KVUnnCcb"], "title": "BnoAOmjO"}' \
    > test.out 2>&1
eval_tap $? 186 'UpdateStore' test.out

#- 187 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TLLPA0ZW' \
    > test.out 2>&1
eval_tap $? 187 'DeleteStore' test.out

#- 188 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'jcLdiN11' \
    --action 'CREATE' \
    --itemSku 'YraUFchW' \
    --itemType 'LOOTBOX' \
    --limit '96' \
    --offset '39' \
    --selected 'false' \
    --sortBy '["createdAt", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'AHGxv2I2' \
    --updatedAtStart 'gk6cbwMg' \
    > test.out 2>&1
eval_tap $? 188 'QueryChanges' test.out

#- 189 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'mAx821ZC' \
    > test.out 2>&1
eval_tap $? 189 'PublishAll' test.out

#- 190 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'idySDKl8' \
    > test.out 2>&1
eval_tap $? 190 'PublishSelected' test.out

#- 191 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'tsIaGHlD' \
    > test.out 2>&1
eval_tap $? 191 'SelectAllRecords' test.out

#- 192 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'LZICcNoe' \
    --action 'CREATE' \
    --itemSku 'WqSTSRwl' \
    --itemType 'COINS' \
    --type 'SECTION' \
    --updatedAtEnd '7kk7gZEA' \
    --updatedAtStart 'wWrWvsC8' \
    > test.out 2>&1
eval_tap $? 192 'GetStatistic' test.out

#- 193 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '4OTrc4R5' \
    > test.out 2>&1
eval_tap $? 193 'UnselectAllRecords' test.out

#- 194 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '2l3YP9fb' \
    --namespace $AB_NAMESPACE \
    --storeId 'gNQY57JT' \
    > test.out 2>&1
eval_tap $? 194 'SelectRecord' test.out

#- 195 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'LPT32Prt' \
    --namespace $AB_NAMESPACE \
    --storeId 'LeddGK8V' \
    > test.out 2>&1
eval_tap $? 195 'UnselectRecord' test.out

#- 196 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'GLlO3HVh' \
    --targetStoreId 'TyeQvKCY' \
    > test.out 2>&1
eval_tap $? 196 'CloneStore' test.out

#- 197 ExportStore
eval_tap 0 197 'ExportStore # SKIP deprecated' test.out

#- 198 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'sySb8JVc' \
    --limit '96' \
    --offset '10' \
    --sku '71w1nLld' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'qjwvRJb3' \
    > test.out 2>&1
eval_tap $? 198 'QuerySubscriptions' test.out

#- 199 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'SbCbw4yc' \
    > test.out 2>&1
eval_tap $? 199 'RecurringChargeSubscription' test.out

#- 200 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName '5bwDyX3j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 200 'GetTicketDynamic' test.out

#- 201 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'nCGPn6a5' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "KOvxFSlt"}' \
    > test.out 2>&1
eval_tap $? 201 'DecreaseTicketSale' test.out

#- 202 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'FgXVWyLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketBoothID' test.out

#- 203 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'R5pp7YoC' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 43, "orderNo": "axSOeTCC"}' \
    > test.out 2>&1
eval_tap $? 203 'IncreaseTicketSale' test.out

#- 204 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9RBoPO81' \
    --body '{"achievements": [{"id": "jMSgMaCk", "value": 18}, {"id": "UhbCy7WB", "value": 21}, {"id": "9kjLtliX", "value": 90}], "steamUserId": "KhjTLSbB"}' \
    > test.out 2>&1
eval_tap $? 204 'UnlockSteamUserAchievement' test.out

#- 205 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'UEx2vLCx' \
    --xboxUserId 'CW9ZzCbK' \
    > test.out 2>&1
eval_tap $? 205 'GetXblUserAchievements' test.out

#- 206 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ynZD87wC' \
    --body '{"achievements": [{"id": "AuqFKW85", "percentComplete": 56}, {"id": "VhZuPoTY", "percentComplete": 44}, {"id": "js6tNn57", "percentComplete": 3}], "serviceConfigId": "h5DluyPC", "titleId": "OAzNSdYm", "xboxUserId": "YlGzItGb"}' \
    > test.out 2>&1
eval_tap $? 206 'UpdateXblUserAchievement' test.out

#- 207 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'QMHw0bhW' \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeCampaign' test.out

#- 208 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'JUnGPzrC' \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeEntitlement' test.out

#- 209 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'A5vfO40i' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeFulfillment' test.out

#- 210 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'wsCrlcw6' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeIntegration' test.out

#- 211 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'cdLM8xyt' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeOrder' test.out

#- 212 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'x4yQsnI0' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizePayment' test.out

#- 213 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'rW5vmjDA' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeRevocation' test.out

#- 214 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'lgFoiBTf' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeSubscription' test.out

#- 215 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '9nI5jJ0o' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeWallet' test.out

#- 216 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'Vh8UC59s' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 216 'GetUserDLCByPlatform' test.out

#- 217 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZgXfEeiY' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 217 'GetUserDLC' test.out

#- 218 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '3LAg3hdj' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'pmu59Vjm' \
    --features '["luuFilo1", "lQD6ZsvM", "Gu7jMlx5"]' \
    --itemId '["eTs8zKZ8", "A0tXrgI4", "a8ax8vVj"]' \
    --limit '28' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlements' test.out

#- 219 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gIGbkles' \
    --body '[{"endDate": "1999-03-12T00:00:00Z", "grantedCode": "WwdpXJIc", "itemId": "SVkQ7Jnb", "itemNamespace": "iI3b6GV5", "language": "aTtz_rdLa", "quantity": 79, "region": "JnuhPTex", "source": "IAP", "startDate": "1981-07-06T00:00:00Z", "storeId": "wka2ZySn"}, {"endDate": "1983-12-11T00:00:00Z", "grantedCode": "lC4f2Ifn", "itemId": "0q9pAnIe", "itemNamespace": "GYWszhVL", "language": "paPj-IQ", "quantity": 1, "region": "tXGM1Qrk", "source": "GIFT", "startDate": "1991-01-03T00:00:00Z", "storeId": "5lvsu2Bo"}, {"endDate": "1975-07-24T00:00:00Z", "grantedCode": "W12zFJzw", "itemId": "J6Thj0ax", "itemNamespace": "YFm1Hfuc", "language": "ouJ_mx", "quantity": 40, "region": "Jp86myKm", "source": "REFERRAL_BONUS", "startDate": "1979-10-29T00:00:00Z", "storeId": "lctXI8Xg"}]' \
    > test.out 2>&1
eval_tap $? 219 'GrantUserEntitlement' test.out

#- 220 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'pREcygPI' \
    --activeOnly 'true' \
    --appId '0ScesRnb' \
    > test.out 2>&1
eval_tap $? 220 'GetUserAppEntitlementByAppId' test.out

#- 221 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'CUkB5mDv' \
    --activeOnly 'false' \
    --limit '8' \
    --offset '3' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 221 'QueryUserEntitlementsByAppType' test.out

#- 222 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'f7zxZMff' \
    --activeOnly 'true' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'os0ry2zF' \
    > test.out 2>&1
eval_tap $? 222 'GetUserEntitlementByItemId' test.out

#- 223 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'OyNW2BCy' \
    --ids '["XDnu8QUl", "P3rtweuf", "TqmMep5m"]' \
    > test.out 2>&1
eval_tap $? 223 'GetUserActiveEntitlementsByItemIds' test.out

#- 224 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'm6PUwBKT' \
    --activeOnly 'true' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'V9sg1Eql' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementBySku' test.out

#- 225 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'q5hvl0Eg' \
    --appIds '["B4jm4Ygc", "fCGCrl83", "QGt4vCnF"]' \
    --itemIds '["Rug8nuqi", "Vcd9p4M5", "ht7zshkq"]' \
    --skus '["EvbW3Laz", "wSHOVcSN", "DNw7YoaF"]' \
    > test.out 2>&1
eval_tap $? 225 'ExistsAnyUserActiveEntitlement' test.out

#- 226 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'tIVlC2zu' \
    --itemIds '["GgXTjLcT", "ihLQn5pn", "S4gmk0na"]' \
    > test.out 2>&1
eval_tap $? 226 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 227 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'rzMh1JF0' \
    --appId '04rsGfav' \
    > test.out 2>&1
eval_tap $? 227 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 228 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GVrO53NO' \
    --entitlementClazz 'APP' \
    --itemId 'ss2jhj33' \
    > test.out 2>&1
eval_tap $? 228 'GetUserEntitlementOwnershipByItemId' test.out

#- 229 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '0aPEOi5t' \
    --ids '["3WmBhNXo", "s1o2BXJi", "XxApUUg8"]' \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementOwnershipByItemIds' test.out

#- 230 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VDNqJvkQ' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'xjAXirSQ' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipBySku' test.out

#- 231 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'PHtfoarz' \
    > test.out 2>&1
eval_tap $? 231 'RevokeAllEntitlements' test.out

#- 232 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ls7eyRxY' \
    --entitlementIds 'YAxyxC90' \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserEntitlements' test.out

#- 233 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'OVpcKsDL' \
    --namespace $AB_NAMESPACE \
    --userId 'bAheGBCf' \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlement' test.out

#- 234 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'ERjpMgSr' \
    --namespace $AB_NAMESPACE \
    --userId 'UaMANOxc' \
    --body '{"endDate": "1978-07-20T00:00:00Z", "nullFieldList": ["qdlzxhas", "mJkVtQEv", "Uyfd2RKn"], "startDate": "1994-09-06T00:00:00Z", "status": "SOLD", "useCount": 99}' \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserEntitlement' test.out

#- 235 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'kdCI5h35' \
    --namespace $AB_NAMESPACE \
    --userId '2kSQLS6B' \
    --body '{"options": ["vHbBDlEl", "aK5aHphO", "lg0YXsGn"], "requestId": "odzRnGGS", "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 235 'ConsumeUserEntitlement' test.out

#- 236 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'ZfuM6Thf' \
    --namespace $AB_NAMESPACE \
    --userId 'P5mqSgDW' \
    > test.out 2>&1
eval_tap $? 236 'DisableUserEntitlement' test.out

#- 237 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'OQ2r634J' \
    --namespace $AB_NAMESPACE \
    --userId 'HpKbG5Pq' \
    > test.out 2>&1
eval_tap $? 237 'EnableUserEntitlement' test.out

#- 238 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId '5f2y0x6s' \
    --namespace $AB_NAMESPACE \
    --userId 'HDWrTW4w' \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementHistories' test.out

#- 239 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'sUxo7F1x' \
    --namespace $AB_NAMESPACE \
    --userId '2g2k79V4' \
    > test.out 2>&1
eval_tap $? 239 'RevokeUserEntitlement' test.out

#- 240 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'Q1nknJlu' \
    --namespace $AB_NAMESPACE \
    --userId 'fSzMrTaM' \
    --body '{"reason": "6M7X2GZj", "useCount": 97}' \
    > test.out 2>&1
eval_tap $? 240 'RevokeUseCount' test.out

#- 241 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'PctOG8WA' \
    --namespace $AB_NAMESPACE \
    --userId 'HSHfMBwK' \
    --body '{"requestId": "5Jq22AQk", "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 241 'SellUserEntitlement' test.out

#- 242 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '7wmXg22e' \
    --body '{"duration": 93, "endDate": "1978-08-09T00:00:00Z", "itemId": "J1DU9faa", "itemSku": "vWC9uaxh", "language": "bWQNVKHA", "metadata": {"ujAShQhL": {}, "LSvyQxck": {}, "T5F9QArA": {}}, "order": {"currency": {"currencyCode": "r05VF5jY", "currencySymbol": "qk04bkaj", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "LNU8UgzT"}, "ext": {"v9XJ6WNd": {}, "9luMbBDg": {}, "jdzazdK4": {}}, "free": true}, "orderNo": "A9U9t62p", "origin": "Epic", "quantity": 52, "region": "rZml2nSz", "source": "PAYMENT", "startDate": "1994-06-04T00:00:00Z", "storeId": "FXGK8f9R"}' \
    > test.out 2>&1
eval_tap $? 242 'FulfillItem' test.out

#- 243 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'J4SCVC1d' \
    --body '{"code": "5LURpuYc", "language": "iZU-AZNU", "region": "RNjqDYLs"}' \
    > test.out 2>&1
eval_tap $? 243 'RedeemCode' test.out

#- 244 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '2uuzWKJu' \
    --body '{"metadata": {"G9V3WcE8": {}, "kxEWQADw": {}, "msQSTyBt": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "OCvVAc0u", "namespace": "GxD9LpzH"}, "item": {"itemId": "bQNx5Nc1", "itemSku": "iBLrtI0l", "itemType": "Tr4Tr2ji"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "jhlNMZ0J", "namespace": "brplrm9t"}, "item": {"itemId": "QU4idGxa", "itemSku": "bYrVj3ai", "itemType": "ohAPPq6s"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "Da5cfmcN", "namespace": "pbsQQYXX"}, "item": {"itemId": "FFwyf4xS", "itemSku": "H7rNVZ4F", "itemType": "wn6vGj5d"}, "quantity": 57, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "4HHFyefN"}' \
    > test.out 2>&1
eval_tap $? 244 'FulfillRewards' test.out

#- 245 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '5M4z7yw8' \
    --endTime '5qcK8ZOd' \
    --limit '40' \
    --offset '91' \
    --productId '7ks6QMFr' \
    --startTime 'jK73uglA' \
    --status 'VERIFIED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 245 'QueryUserIAPOrders' test.out

#- 246 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '3CLWAAyQ' \
    > test.out 2>&1
eval_tap $? 246 'QueryAllUserIAPOrders' test.out

#- 247 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Kmu4GvdJ' \
    --endTime 'lPg2f0ev' \
    --limit '75' \
    --offset '100' \
    --startTime 'tRJN9Glb' \
    --status 'PENDING' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPConsumeHistory' test.out

#- 248 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'K597YaH3' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "yc", "productId": "fDXH5WHE", "region": "l7KnGxDi", "transactionId": "OGtOHsJC", "type": "OCULUS"}' \
    > test.out 2>&1
eval_tap $? 248 'MockFulfillIAPItem' test.out

#- 249 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'nZEqHJQD' \
    --itemId 'UWq1WAqn' \
    --limit '21' \
    --offset '86' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserOrders' test.out

#- 250 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'X74SIzPU' \
    --body '{"currencyCode": "1ZMWV6Kw", "currencyNamespace": "DXnRPSFc", "discountedPrice": 3, "ext": {"uZVwCR0T": {}, "qX4qtcte": {}, "An2Zuy1S": {}}, "itemId": "vh1G9yKf", "language": "2p3KWxXA", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 2, "quantity": 93, "region": "PMhUsOgD", "returnUrl": "tpVTZhEY", "sandbox": false, "sectionId": "owwmI9fD"}' \
    > test.out 2>&1
eval_tap $? 250 'AdminCreateUserOrder' test.out

#- 251 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'mgsm4PWT' \
    --itemId '3FjXjW01' \
    > test.out 2>&1
eval_tap $? 251 'CountOfPurchasedItem' test.out

#- 252 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'vJ2KwytD' \
    --userId 'pubeVp7y' \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrder' test.out

#- 253 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 's7FXK6UX' \
    --userId 'wqYSvIIs' \
    --body '{"status": "REFUNDING", "statusReason": "RK8YncdS"}' \
    > test.out 2>&1
eval_tap $? 253 'UpdateUserOrderStatus' test.out

#- 254 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'XvPMdpxI' \
    --userId 'umAGOoUW' \
    > test.out 2>&1
eval_tap $? 254 'FulfillUserOrder' test.out

#- 255 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'fbjlORHf' \
    --userId 'yT3kXAFa' \
    > test.out 2>&1
eval_tap $? 255 'GetUserOrderGrant' test.out

#- 256 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'e9TD4PfM' \
    --userId 'iLWmyxTw' \
    > test.out 2>&1
eval_tap $? 256 'GetUserOrderHistories' test.out

#- 257 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'cxmgNYNI' \
    --userId 'rGeP7EPi' \
    --body '{"additionalData": {"cardSummary": "YXroPOQA"}, "authorisedTime": "1992-10-28T00:00:00Z", "chargebackReversedTime": "1987-01-02T00:00:00Z", "chargebackTime": "1996-03-15T00:00:00Z", "chargedTime": "1973-10-30T00:00:00Z", "createdTime": "1981-12-18T00:00:00Z", "currency": {"currencyCode": "8gK9FqLS", "currencySymbol": "nRsCXxT4", "currencyType": "REAL", "decimals": 15, "namespace": "KHik3FUH"}, "customParameters": {"5ZMw4hAf": {}, "uFuCUyqr": {}, "xshwUCF8": {}}, "extOrderNo": "QINRtC2R", "extTxId": "tZiX436p", "extUserId": "Yq1FV4wC", "issuedAt": "1977-05-17T00:00:00Z", "metadata": {"1Ye1x30h": "ZETQ14R3", "p2r4QZ7E": "0IbyeYrN", "JepuANtR": "QQRArBjG"}, "namespace": "spoWHhlY", "nonceStr": "TZQIDEqk", "paymentMethod": "wlY1hPlt", "paymentMethodFee": 12, "paymentOrderNo": "m1lg9Hyl", "paymentProvider": "ADYEN", "paymentProviderFee": 42, "paymentStationUrl": "yQ7p6WJx", "price": 72, "refundedTime": "1979-08-06T00:00:00Z", "salesTax": 31, "sandbox": true, "sku": "043sX9Ny", "status": "REQUEST_FOR_INFORMATION", "statusReason": "gdMInFAk", "subscriptionId": "YPaS2t5c", "subtotalPrice": 87, "targetNamespace": "5FQvFFM6", "targetUserId": "PvsShbbH", "tax": 51, "totalPrice": 22, "totalTax": 2, "txEndTime": "1994-07-02T00:00:00Z", "type": "R73OAuMD", "userId": "VrAyDPAX", "vat": 87}' \
    > test.out 2>&1
eval_tap $? 257 'ProcessUserOrderNotification' test.out

#- 258 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 's1wr490z' \
    --userId 'EgPFoOUN' \
    > test.out 2>&1
eval_tap $? 258 'DownloadUserOrderReceipt' test.out

#- 259 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gAqgwFZ0' \
    --body '{"currencyCode": "pcolchPV", "currencyNamespace": "REGAH2jb", "customParameters": {"mOXSTdji": {}, "z2XFkV7A": {}, "Cts22VR9": {}}, "description": "9FLNZV2F", "extOrderNo": "QDikM9AV", "extUserId": "lMlIKamp", "itemType": "APP", "language": "CJcn-zVKf", "metadata": {"LSriVFJs": "oRBMd9gb", "dWQqzYb9": "yU9BYpmJ", "Gy2tl4A4": "1uoEqJHG"}, "notifyUrl": "oyctg468", "omitNotification": false, "platform": "kuuZwqmJ", "price": 44, "recurringPaymentOrderNo": "a2byQhY7", "region": "7nq2doLv", "returnUrl": "4CKme6Bs", "sandbox": true, "sku": "1NDdZdnG", "subscriptionId": "xKSqbrzP", "title": "SvWMPH0v"}' \
    > test.out 2>&1
eval_tap $? 259 'CreateUserPaymentOrder' test.out

#- 260 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'c6xAcRRb' \
    --userId 'iAq0KLID' \
    --body '{"description": "o6i4TNXV"}' \
    > test.out 2>&1
eval_tap $? 260 'RefundUserPaymentOrder' test.out

#- 261 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'Frl7KOxc' \
    --body '{"code": "aAwNaXwZ", "orderNo": "grcASsHX"}' \
    > test.out 2>&1
eval_tap $? 261 'ApplyUserRedemption' test.out

#- 262 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'xAvDwT16' \
    --body '{"meta": {"rm7hWPff": {}, "2xtJ34oK": {}, "JGSDEnbo": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "3U4t0XJ2", "namespace": "MUOu4HKD"}, "entitlement": {"entitlementId": "NBpOzUlK"}, "item": {"itemIdentity": "SHKOWyxk", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 53, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "LqKTvuz3", "namespace": "K3QAeNTF"}, "entitlement": {"entitlementId": "vEReXlYD"}, "item": {"itemIdentity": "ilfouWh2", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 94, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "fpAkl3TP", "namespace": "ra4k1Ov2"}, "entitlement": {"entitlementId": "pWDrGA90"}, "item": {"itemIdentity": "GumQ4RPd", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 42, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "cIger9m8"}' \
    > test.out 2>&1
eval_tap $? 262 'DoRevocation' test.out

#- 263 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'ijJZpf4w' \
    --body '{"gameSessionId": "w0yJy6Op", "payload": {"8Ag2WpMY": {}, "z8xzutJB": {}, "dOD9yVsm": {}}, "scid": "riRyU0Jm", "sessionTemplateName": "naotyeup"}' \
    > test.out 2>&1
eval_tap $? 263 'RegisterXblSessions' test.out

#- 264 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'wmLErx90' \
    --chargeStatus 'NEVER' \
    --itemId 'FPaNK1PH' \
    --limit '11' \
    --offset '41' \
    --sku 'QX60LlSS' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 264 'QueryUserSubscriptions' test.out

#- 265 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'Hr9HrGUv' \
    --excludeSystem 'true' \
    --limit '28' \
    --offset '53' \
    --subscriptionId 'f9kQu3uy' \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscriptionActivities' test.out

#- 266 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'Oh7tVYpQ' \
    --body '{"grantDays": 55, "itemId": "lsYcDxsJ", "language": "xxxC8Vcl", "reason": "aJ84HPPL", "region": "TtMSKQoP", "source": "j2T6T6Tt"}' \
    > test.out 2>&1
eval_tap $? 266 'PlatformSubscribeSubscription' test.out

#- 267 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hVEeo6Tt' \
    --itemId 'roRK77xU' \
    > test.out 2>&1
eval_tap $? 267 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 268 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'L3tbpLin' \
    --userId 'fOPBe8QO' \
    > test.out 2>&1
eval_tap $? 268 'GetUserSubscription' test.out

#- 269 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cEhU0ZBb' \
    --userId 'Ei7IavPH' \
    > test.out 2>&1
eval_tap $? 269 'DeleteUserSubscription' test.out

#- 270 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vhWhcc16' \
    --userId 'H2pYWufR' \
    --force 'false' \
    --body '{"immediate": true, "reason": "RV9jQAad"}' \
    > test.out 2>&1
eval_tap $? 270 'CancelSubscription' test.out

#- 271 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Zmf88aBo' \
    --userId 'jSTu3CmZ' \
    --body '{"grantDays": 5, "reason": "acIFqIeG"}' \
    > test.out 2>&1
eval_tap $? 271 'GrantDaysToSubscription' test.out

#- 272 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'W1M0GERs' \
    --userId 'qSs9Rjvj' \
    --excludeFree 'false' \
    --limit '53' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 272 'GetUserSubscriptionBillingHistories' test.out

#- 273 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5xZfHq55' \
    --userId 'QkrRJ3ma' \
    --body '{"additionalData": {"cardSummary": "seXvJRAD"}, "authorisedTime": "1981-04-16T00:00:00Z", "chargebackReversedTime": "1972-07-01T00:00:00Z", "chargebackTime": "1982-08-10T00:00:00Z", "chargedTime": "1981-04-12T00:00:00Z", "createdTime": "1994-08-24T00:00:00Z", "currency": {"currencyCode": "Qqjm6dpW", "currencySymbol": "FaCRaK6a", "currencyType": "REAL", "decimals": 46, "namespace": "m9EqmFuv"}, "customParameters": {"1axkJgma": {}, "fVrkyw1B": {}, "SVdfIuQk": {}}, "extOrderNo": "g5lvDF1p", "extTxId": "I8ncogoi", "extUserId": "EtcObRfj", "issuedAt": "1985-09-28T00:00:00Z", "metadata": {"gNGcm9iH": "F5YEgqaw", "VPS14vZc": "fmxH14jp", "cfkDIw9P": "e63wMWwp"}, "namespace": "Qu1v9Jp8", "nonceStr": "3wrtbuLN", "paymentMethod": "dgbUrEjQ", "paymentMethodFee": 88, "paymentOrderNo": "KOufu56X", "paymentProvider": "WALLET", "paymentProviderFee": 49, "paymentStationUrl": "aDLI4PPd", "price": 51, "refundedTime": "1987-02-04T00:00:00Z", "salesTax": 95, "sandbox": true, "sku": "Ozsc0HEV", "status": "INIT", "statusReason": "oohtoSm0", "subscriptionId": "ubeEKYo2", "subtotalPrice": 50, "targetNamespace": "7WHgJv1B", "targetUserId": "OPnVjL6b", "tax": 59, "totalPrice": 11, "totalTax": 31, "txEndTime": "1987-10-31T00:00:00Z", "type": "HKz2d6Ie", "userId": "AeVtdX3r", "vat": 16}' \
    > test.out 2>&1
eval_tap $? 273 'ProcessUserSubscriptionNotification' test.out

#- 274 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'QJhv8a2d' \
    --namespace $AB_NAMESPACE \
    --userId 't1nGka8o' \
    --body '{"count": 63, "orderNo": "i2tO1pgr"}' \
    > test.out 2>&1
eval_tap $? 274 'AcquireUserTicket' test.out

#- 275 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'ZTNA8YnD' \
    > test.out 2>&1
eval_tap $? 275 'QueryUserCurrencyWallets' test.out

#- 276 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'qptNC0XA' \
    --namespace $AB_NAMESPACE \
    --userId 'iPkwph22' \
    --body '{"allowOverdraft": false, "amount": 81, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"leEr9a3S": {}, "9NPG0l5W": {}, "WZGKhCFb": {}}, "reason": "ZUTlwdXk"}' \
    > test.out 2>&1
eval_tap $? 276 'DebitUserWalletByCurrencyCode' test.out

#- 277 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'mTAUDYbi' \
    --namespace $AB_NAMESPACE \
    --userId 'hi4ltZ8P' \
    --limit '73' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 277 'ListUserCurrencyTransactions' test.out

#- 278 CheckWallet
eval_tap 0 278 'CheckWallet # SKIP deprecated' test.out

#- 279 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'q62t6IRQ' \
    --namespace $AB_NAMESPACE \
    --userId 'RntRGadc' \
    --body '{"amount": 93, "expireAt": "1976-01-22T00:00:00Z", "metadata": {"3hj33NRI": {}, "q37JZqt9": {}, "z5Aa2c4M": {}}, "origin": "Nintendo", "reason": "9iW5gT9e", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 279 'CreditUserWallet' test.out

#- 280 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'MKFqFdFD' \
    --namespace $AB_NAMESPACE \
    --userId 'CYJpkKFt' \
    --body '{"amount": 45, "metadata": {"DkYyWXFF": {}, "6Bbsf7eN": {}, "fmmt3YlT": {}}, "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 280 'PayWithUserWallet' test.out

#- 281 GetUserWallet
eval_tap 0 281 'GetUserWallet # SKIP deprecated' test.out

#- 282 DebitUserWallet
eval_tap 0 282 'DebitUserWallet # SKIP deprecated' test.out

#- 283 DisableUserWallet
eval_tap 0 283 'DisableUserWallet # SKIP deprecated' test.out

#- 284 EnableUserWallet
eval_tap 0 284 'EnableUserWallet # SKIP deprecated' test.out

#- 285 ListUserWalletTransactions
eval_tap 0 285 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 286 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'c46j3Tyu' \
    > test.out 2>&1
eval_tap $? 286 'ListViews' test.out

#- 287 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'CaYdwrzA' \
    --body '{"displayOrder": 29, "localizations": {"UtJnRPli": {"description": "Esf1ggaE", "localExt": {"thm81iX2": {}, "kNtrtqVH": {}, "yAUiHxNu": {}}, "longDescription": "zQqpHrWk", "title": "eMHgKS5U"}, "FNxRG7Rw": {"description": "yI4p3MRZ", "localExt": {"eHlzcuBQ": {}, "SmjHXsBO": {}, "4tHR05z8": {}}, "longDescription": "HTSHxnEW", "title": "LxXpAB3z"}, "eFDAHDOf": {"description": "vqrVp1nK", "localExt": {"7Lc9ccyD": {}, "zRcQSg9G": {}, "l63YuG7O": {}}, "longDescription": "MpeLVtBi", "title": "DccERE7d"}}, "name": "QfeSZ9Zd"}' \
    > test.out 2>&1
eval_tap $? 287 'CreateView' test.out

#- 288 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '2OaJOvX3' \
    --storeId 'K7guVHNA' \
    > test.out 2>&1
eval_tap $? 288 'GetView' test.out

#- 289 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'C0Cyh7Sr' \
    --storeId 'nEQUA5Wt' \
    --body '{"displayOrder": 23, "localizations": {"ody7uHuz": {"description": "xYqO5rkV", "localExt": {"o55LCxqm": {}, "e8Xnk19a": {}, "togdmisj": {}}, "longDescription": "08XqEJJX", "title": "VMnubgkO"}, "TFOkziK4": {"description": "JCSdJnPa", "localExt": {"P5pj8xCQ": {}, "JRXT8OMz": {}, "n2T7UFIA": {}}, "longDescription": "ISkOtnKR", "title": "9BixKkSj"}, "WQo6JFQr": {"description": "GivenZKu", "localExt": {"3UE4VZpn": {}, "RznXJikg": {}, "2fDgGSyH": {}}, "longDescription": "uFYgJwDY", "title": "pMYn4a4j"}}, "name": "JaI80SVW"}' \
    > test.out 2>&1
eval_tap $? 289 'UpdateView' test.out

#- 290 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'baXYwMqV' \
    --storeId 'NtDhEZLI' \
    > test.out 2>&1
eval_tap $? 290 'DeleteView' test.out

#- 291 QueryWallets
eval_tap 0 291 'QueryWallets # SKIP deprecated' test.out

#- 292 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 34, "expireAt": "1982-09-14T00:00:00Z", "metadata": {"KraNAsux": {}, "G6aKhxBo": {}, "AxtMOdTD": {}}, "origin": "System", "reason": "Fb3P2bFa", "source": "REFERRAL_BONUS"}, "currencyCode": "b5i1pma0", "userIds": ["4OPsyDfd", "HycZaRQj", "5roigcsO"]}, {"creditRequest": {"amount": 4, "expireAt": "1994-08-21T00:00:00Z", "metadata": {"QHWuJ0fc": {}, "siy5gNbW": {}, "homVIFT7": {}}, "origin": "Other", "reason": "zozZlKg1", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "dhODBBKX", "userIds": ["6JPihnM8", "uYdPYDUH", "iJISsFpQ"]}, {"creditRequest": {"amount": 100, "expireAt": "1990-03-25T00:00:00Z", "metadata": {"lZ2Gu3YX": {}, "VKLpaw01": {}, "ReKzUsoE": {}}, "origin": "Twitch", "reason": "6a59n1Sq", "source": "SELL_BACK"}, "currencyCode": "ZqC3thjq", "userIds": ["JBllQA0t", "Xcn1Fieh", "vQQE7mI1"]}]' \
    > test.out 2>&1
eval_tap $? 292 'BulkCredit' test.out

#- 293 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "HkqbyyGV", "request": {"allowOverdraft": false, "amount": 95, "balanceOrigin": "Playstation", "balanceSource": "EXPIRATION", "metadata": {"3lNRmKsL": {}, "FFwtxEK3": {}, "E3XlXUSx": {}}, "reason": "JvEqTRLX"}, "userIds": ["TnIfEVuq", "faQxOIVN", "4sJYuvJo"]}, {"currencyCode": "pKlIPUP0", "request": {"allowOverdraft": false, "amount": 10, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"JcCWWcef": {}, "2OxO5q9o": {}, "C50fmQbV": {}}, "reason": "I36x3GGg"}, "userIds": ["egOVw1HO", "HFHn3FPu", "J5EFlyNg"]}, {"currencyCode": "OIqrxPI2", "request": {"allowOverdraft": false, "amount": 9, "balanceOrigin": "Nintendo", "balanceSource": "ORDER_REVOCATION", "metadata": {"rZKPaQFq": {}, "KnwOzlqS": {}, "i0NQakMy": {}}, "reason": "rlEteXlb"}, "userIds": ["TM0S2POX", "iC4eNN0E", "4wPyWHhs"]}]' \
    > test.out 2>&1
eval_tap $? 293 'BulkDebit' test.out

#- 294 GetWallet
eval_tap 0 294 'GetWallet # SKIP deprecated' test.out

#- 295 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'nzJsCpUz' \
    --end 'LmItGMOT' \
    --start 'yE23hDeT' \
    > test.out 2>&1
eval_tap $? 295 'SyncOrders' test.out

#- 296 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["3NMBBtOu", "ksn60i1c", "V8IXOVdS"], "apiKey": "qfl9OQI5", "authoriseAsCapture": true, "blockedPaymentMethods": ["K29ubXV4", "VxCStYDy", "WYkQaabX"], "clientKey": "3IbIC1dD", "dropInSettings": "1nk1lTcP", "liveEndpointUrlPrefix": "CQvdQGV2", "merchantAccount": "i5Vqvx42", "notificationHmacKey": "UrP2Ik5N", "notificationPassword": "kOQLsj7B", "notificationUsername": "e2QnaSVo", "returnUrl": "sZ5zJSul", "settings": "kaJHEA7U"}' \
    > test.out 2>&1
eval_tap $? 296 'TestAdyenConfig' test.out

#- 297 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "9AKxYeoV", "privateKey": "CLmBhsOH", "publicKey": "Cxu3o6mb", "returnUrl": "L8dpcXYa"}' \
    > test.out 2>&1
eval_tap $? 297 'TestAliPayConfig' test.out

#- 298 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "eBkk3puu", "secretKey": "C3x2auuq"}' \
    > test.out 2>&1
eval_tap $? 298 'TestCheckoutConfig' test.out

#- 299 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'jun5409s' \
    --region 'KnLX73hf' \
    > test.out 2>&1
eval_tap $? 299 'DebugMatchedPaymentMerchantConfig' test.out

#- 300 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "ntTRZnD7", "clientSecret": "WnPVzeyY", "returnUrl": "0voxyLkq", "webHookId": "hHZTt7IU"}' \
    > test.out 2>&1
eval_tap $? 300 'TestPayPalConfig' test.out

#- 301 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["F1TVFgWj", "nrpStx0f", "mVTALeNj"], "publishableKey": "E7EzoSey", "secretKey": "kzd4RQlw", "webhookSecret": "SqawljbK"}' \
    > test.out 2>&1
eval_tap $? 301 'TestStripeConfig' test.out

#- 302 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "8e9S6pxl", "key": "PGnawjDL", "mchid": "iJTG3kPU", "returnUrl": "pkT8skOI"}' \
    > test.out 2>&1
eval_tap $? 302 'TestWxPayConfig' test.out

#- 303 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "wAyzan4o", "flowCompletionUrl": "X0UvvW2Z", "merchantId": 30, "projectId": 42, "projectSecretKey": "oqW6ujGH"}' \
    > test.out 2>&1
eval_tap $? 303 'TestXsollaConfig' test.out

#- 304 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'u8q1Gzfl' \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentMerchantConfig' test.out

#- 305 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'muqF1Udw' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["Cue9DKY2", "kOnIavni", "pRBEoTJb"], "apiKey": "S0cRl2lz", "authoriseAsCapture": false, "blockedPaymentMethods": ["r1giLGNs", "x634E8oe", "eClpr5Z8"], "clientKey": "N9uC2Mll", "dropInSettings": "VCqi6dLp", "liveEndpointUrlPrefix": "su2Huii7", "merchantAccount": "CBDhj7V7", "notificationHmacKey": "ySkCgIdn", "notificationPassword": "bBMEYswv", "notificationUsername": "P7asWGFg", "returnUrl": "iJ1TUDrQ", "settings": "HozHgFXF"}' \
    > test.out 2>&1
eval_tap $? 305 'UpdateAdyenConfig' test.out

#- 306 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'GnJJ6dJX' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 306 'TestAdyenConfigById' test.out

#- 307 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id '2unamz9q' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "LMmyMjkm", "privateKey": "wOtAMrmT", "publicKey": "69algiGM", "returnUrl": "k7Mf0p8Y"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateAliPayConfig' test.out

#- 308 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'uWAnHqQy' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 308 'TestAliPayConfigById' test.out

#- 309 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'UJZcUdhX' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "IQgxRCWb", "secretKey": "KR1Kz4x9"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateCheckoutConfig' test.out

#- 310 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'V0PiiCtl' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 310 'TestCheckoutConfigById' test.out

#- 311 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'nYtJRf9n' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"clientID": "VzXpdrIF", "clientSecret": "Ih2KO1ee", "returnUrl": "IJstYdVT", "webHookId": "K2BTWS6Y"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdatePayPalConfig' test.out

#- 312 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'bZhEkgfS' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestPayPalConfigById' test.out

#- 313 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'UuFkfyY8' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["RC7Mjxlw", "joa3Bmyb", "AnVhvITZ"], "publishableKey": "Vn4NJP24", "secretKey": "pppKtf1s", "webhookSecret": "9sApTJrh"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdateStripeConfig' test.out

#- 314 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'tzzNGNlO' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestStripeConfigById' test.out

#- 315 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id '6TBNnOxm' \
    --validate 'true' \
    --body '{"appId": "VuxdT77N", "key": "sqnetiWZ", "mchid": "dhlMCUx9", "returnUrl": "hCnfcDdm"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateWxPayConfig' test.out

#- 316 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'AqfsSFJO' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 316 'UpdateWxPayConfigCert' test.out

#- 317 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'PKARSIjm' \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfigById' test.out

#- 318 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'Ysu9p233' \
    --validate 'false' \
    --body '{"apiKey": "uNtNFj6M", "flowCompletionUrl": "qNqRwC50", "merchantId": 14, "projectId": 99, "projectSecretKey": "oIMCwyCL"}' \
    > test.out 2>&1
eval_tap $? 318 'UpdateXsollaConfig' test.out

#- 319 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'ECyQmoJn' \
    > test.out 2>&1
eval_tap $? 319 'TestXsollaConfigById' test.out

#- 320 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'A4aLgjIi' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaUIConfig' test.out

#- 321 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '99' \
    --namespace 'HYZFbjqY' \
    --offset '22' \
    --region 'alJgjrVz' \
    > test.out 2>&1
eval_tap $? 321 'QueryPaymentProviderConfig' test.out

#- 322 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "CGfScF8k", "region": "pMv8E33p", "sandboxTaxJarApiToken": "odOF9C7U", "specials": ["WXPAY", "WALLET", "WALLET"], "taxJarApiToken": "MVyD0K3v", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 322 'CreatePaymentProviderConfig' test.out

#- 323 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 323 'GetAggregatePaymentProviders' test.out

#- 324 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'iJO2cQuB' \
    --region 'G1gVin7H' \
    > test.out 2>&1
eval_tap $? 324 'DebugMatchedPaymentProviderConfig' test.out

#- 325 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 325 'GetSpecialPaymentProviders' test.out

#- 326 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'oWWpIIJt' \
    --body '{"aggregate": "XSOLLA", "namespace": "k6LVhRxK", "region": "IKbbRNYc", "sandboxTaxJarApiToken": "OVO5ihHj", "specials": ["WXPAY", "STRIPE", "WALLET"], "taxJarApiToken": "yjnq6kZG", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentProviderConfig' test.out

#- 327 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'nNFcgQaX' \
    > test.out 2>&1
eval_tap $? 327 'DeletePaymentProviderConfig' test.out

#- 328 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 328 'GetPaymentTaxConfig' test.out

#- 329 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "esp8PUEr", "taxJarApiToken": "785NWBEI", "taxJarEnabled": false, "taxJarProductCodesMapping": {"bPKqRG2Q": "gAYfPl6v", "E1lCsTmb": "QVrDwmye", "QRW4f8NE": "7090LhCG"}}' \
    > test.out 2>&1
eval_tap $? 329 'UpdatePaymentTaxConfig' test.out

#- 330 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'w0mgG1OY' \
    --end 'QEACWOng' \
    --start 'vIy3W7j4' \
    > test.out 2>&1
eval_tap $? 330 'SyncPaymentOrders' test.out

#- 331 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'lWBjkDZL' \
    --storeId 't3IzcYj4' \
    > test.out 2>&1
eval_tap $? 331 'PublicGetRootCategories' test.out

#- 332 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language '3erUf653' \
    --storeId 'rVH7suP2' \
    > test.out 2>&1
eval_tap $? 332 'DownloadCategories' test.out

#- 333 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '5M1SSICu' \
    --namespace $AB_NAMESPACE \
    --language 'eOgNusug' \
    --storeId 'Zt5G7UFB' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetCategory' test.out

#- 334 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'ZVtzcgms' \
    --namespace $AB_NAMESPACE \
    --language 'eCppd7GZ' \
    --storeId '6yFjlwUK' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetChildCategories' test.out

#- 335 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'JKPmQnXJ' \
    --namespace $AB_NAMESPACE \
    --language 'brTVBKxo' \
    --storeId 'V59XDGyj' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetDescendantCategories' test.out

#- 336 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 336 'PublicListCurrencies' test.out

#- 337 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 337 'GetIAPItemMapping' test.out

#- 338 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'F02yvSWF' \
    --region 'CstzNXO0' \
    --storeId 'Mz8DbecI' \
    --appId 'K6RnVpek' \
    > test.out 2>&1
eval_tap $? 338 'PublicGetItemByAppId' test.out

#- 339 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --baseAppId '4okhabw0' \
    --categoryPath 'S9zNJ9KU' \
    --features 'H5gFWSBi' \
    --includeSubCategoryItem 'true' \
    --itemType 'LOOTBOX' \
    --language '6l1iWk1O' \
    --limit '32' \
    --offset '49' \
    --region 'PDoSRc8J' \
    --sortBy '["name", "displayOrder:asc", "updatedAt:asc"]' \
    --storeId 'msbemFl2' \
    --tags 'CzLwGjWv' \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryItems' test.out

#- 340 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language '9Ysec0Mi' \
    --region 'Kkikpyis' \
    --storeId '8NAJPGII' \
    --sku 'EoQQHXDO' \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItemBySku' test.out

#- 341 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language '97rnOrhd' \
    --region '3AwaWDBs' \
    --storeId 'f2VOZNek' \
    --itemIds '9FY7epmP' \
    > test.out 2>&1
eval_tap $? 341 'PublicBulkGetItems' test.out

#- 342 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["DDft1rnj", "Wy4ptIPQ", "NZSe9xQb"]}' \
    > test.out 2>&1
eval_tap $? 342 'PublicValidateItemPurchaseCondition' test.out

#- 343 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'COINS' \
    --limit '43' \
    --offset '100' \
    --region 'nHz1saxf' \
    --storeId 'KYeeBQ7p' \
    --keyword 'rmh2JlSE' \
    --language 'qqibYJDg' \
    > test.out 2>&1
eval_tap $? 343 'PublicSearchItems' test.out

#- 344 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'Kp64WoKe' \
    --namespace $AB_NAMESPACE \
    --language 'B9FA8Vku' \
    --region 'fbKgbNso' \
    --storeId 'X64naXMg' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetApp' test.out

#- 345 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '1pZCEYxF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemDynamicData' test.out

#- 346 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId '79NUrfZj' \
    --namespace $AB_NAMESPACE \
    --language '5gd4hPeg' \
    --populateBundle 'true' \
    --region 'ZYd4YTQW' \
    --storeId 'vlg8CZAX' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetItem' test.out

#- 347 GetPaymentCustomization
eval_tap 0 347 'GetPaymentCustomization # SKIP deprecated' test.out

#- 348 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "6yBk7eTP", "paymentProvider": "WXPAY", "returnUrl": "7hUNDgRS", "ui": "XzXxxQLX", "zipCode": "KPGlBQje"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetPaymentUrl' test.out

#- 349 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'aGNpBwfB' \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentMethods' test.out

#- 350 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ndm7jaIW' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUnpaidPaymentOrder' test.out

#- 351 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CCaLtB2S' \
    --paymentProvider 'STRIPE' \
    --zipCode '9iW4Z487' \
    --body '{"token": "dezXjYnM"}' \
    > test.out 2>&1
eval_tap $? 351 'Pay' test.out

#- 352 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '8hZVW3oG' \
    > test.out 2>&1
eval_tap $? 352 'PublicCheckPaymentOrderPaidStatus' test.out

#- 353 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'XSOLLA' \
    --region 'zh4ZBvOs' \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentPublicConfig' test.out

#- 354 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'cWRQ1wDk' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetQRCode' test.out

#- 355 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'EDZE9JrI' \
    --foreinginvoice 'zG960faY' \
    --invoiceId 'BkUhcOnw' \
    --payload 'xPVHoEVJ' \
    --redirectResult '3mM3fdLs' \
    --resultCode 'AEuegoFK' \
    --sessionId 'APg6STCx' \
    --status 'ygfzmCFz' \
    --token 'Tr2u4RsY' \
    --type 'wECIaHE9' \
    --userId 'PwM7iWsq' \
    --orderNo 'MEiXOPBp' \
    --paymentOrderNo 'SjBzRsMi' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'Gh7PfUgG' \
    > test.out 2>&1
eval_tap $? 355 'PublicNormalizePaymentReturnUrl' test.out

#- 356 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '5KpyuAwl' \
    --paymentOrderNo 'LZySkUW0' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 356 'GetPaymentTaxValue' test.out

#- 357 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'VLEJSb54' \
    > test.out 2>&1
eval_tap $? 357 'GetRewardByCode' test.out

#- 358 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'UMSwSQSz' \
    --limit '45' \
    --offset '57' \
    --sortBy '["rewardCode:desc", "namespace:desc", "namespace:asc"]' \
    > test.out 2>&1
eval_tap $? 358 'QueryRewards1' test.out

#- 359 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'XhmnSMou' \
    > test.out 2>&1
eval_tap $? 359 'GetReward1' test.out

#- 360 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicListStores' test.out

#- 361 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["YsZYchiC", "FLX6HIJ3", "gkZHX5fx"]' \
    --itemIds '["p7xd1Ayn", "4rKqLJax", "zs1WkCJC"]' \
    --skus '["Qh3JNcfM", "fWUsuf5E", "87yIsu2j"]' \
    > test.out 2>&1
eval_tap $? 361 'PublicExistsAnyMyActiveEntitlement' test.out

#- 362 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'H2ZNRWi3' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 363 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'Cqvzw4fJ' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 364 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'nSbijaUv' \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 365 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["atICQo9i", "RPtSOUc2", "8jjaxQ14"]' \
    --itemIds '["KoEGXgNb", "zLLRS6wN", "YRd1NJTQ"]' \
    --skus '["1BC9Rr72", "3eZzfALN", "pyWHXmGW"]' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetEntitlementOwnershipToken' test.out

#- 366 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "QqiAxYKX", "language": "hPL_xVYY-nT", "region": "C1tMAbOF"}' \
    > test.out 2>&1
eval_tap $? 366 'SyncTwitchDropsEntitlement' test.out

#- 367 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'K25JQkSZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyWallet' test.out

#- 368 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '3V7RWahE' \
    --body '{"epicGamesJwtToken": "sqLptOFh"}' \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGameDLC' test.out

#- 369 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'bKGKl1bL' \
    > test.out 2>&1
eval_tap $? 369 'SyncOculusDLC' test.out

#- 370 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'G6XILKOt' \
    --body '{"serviceLabel": 71}' \
    > test.out 2>&1
eval_tap $? 370 'PublicSyncPsnDlcInventory' test.out

#- 371 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'RJCla024' \
    --body '{"serviceLabels": [81, 23]}' \
    > test.out 2>&1
eval_tap $? 371 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 372 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'mVky4p8S' \
    --body '{"appId": "OIqOQR1A", "steamId": "fDsekXqd"}' \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamDLC' test.out

#- 373 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'TJBYrV7L' \
    --body '{"xstsToken": "EQ3Pz2jJ"}' \
    > test.out 2>&1
eval_tap $? 373 'SyncXboxDLC' test.out

#- 374 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'wyztJTQV' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'UXVD9VXj' \
    --features '["J1VpuH2Y", "Og0vHcY2", "a7kL2mX4"]' \
    --itemId '["8zy0BFBc", "BysELc5o", "WTjpxuud"]' \
    --limit '71' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 374 'PublicQueryUserEntitlements' test.out

#- 375 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'RfSeushY' \
    --appId 'jfwSzJuc' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserAppEntitlementByAppId' test.out

#- 376 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId '6w03Zj2c' \
    --limit '97' \
    --offset '23' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserEntitlementsByAppType' test.out

#- 377 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'RXKWtn3t' \
    --entitlementClazz 'CODE' \
    --itemId 'sY6bwEUb' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserEntitlementByItemId' test.out

#- 378 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'uTXbsghn' \
    --entitlementClazz 'CODE' \
    --sku 'hXAXmfit' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementBySku' test.out

#- 379 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'E91cgMka' \
    --appIds '["9P8rUzbj", "EREG48an", "vg913Yrg"]' \
    --itemIds '["KZe32IzY", "SBfQZ9OQ", "HN6rkeeR"]' \
    --skus '["e3AuwJ9p", "OX24S5FK", "ceW01TXh"]' \
    > test.out 2>&1
eval_tap $? 379 'PublicExistsAnyUserActiveEntitlement' test.out

#- 380 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'qvnC3rTV' \
    --appId 'F2D9TRNr' \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 381 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'VAp2XFfG' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'seOzHbs3' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 382 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'mY53O8p9' \
    --ids '["jVfwZ9my", "qvUDyco9", "5J54DRZu"]' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 383 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'HQyeeCV6' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'LGQsNTDx' \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 384 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'h7ArbjgZ' \
    --namespace $AB_NAMESPACE \
    --userId '1vOYAyC0' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlement' test.out

#- 385 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'hxDlT0Bu' \
    --namespace $AB_NAMESPACE \
    --userId 'LIYtagVE' \
    --body '{"options": ["2f7KRmdp", "cfG9zO7V", "aMxX7xQX"], "requestId": "0YSeZTrj", "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 385 'PublicConsumeUserEntitlement' test.out

#- 386 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'UbyW8efO' \
    --namespace $AB_NAMESPACE \
    --userId 'o8s0sXda' \
    --body '{"requestId": "M8obkDJO", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 386 'PublicSellUserEntitlement' test.out

#- 387 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'gCoLVjtN' \
    --body '{"code": "V5T77HGO", "language": "TlS", "region": "r3xWo8V6"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicRedeemCode' test.out

#- 388 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'vRhyvqLf' \
    --body '{"excludeOldTransactions": false, "language": "IJ-VZDm", "productId": "KMdh7Btq", "receiptData": "BwQZtA4w", "region": "q619Wm7G", "transactionId": "TtZarOFU"}' \
    > test.out 2>&1
eval_tap $? 388 'PublicFulfillAppleIAPItem' test.out

#- 389 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '1ilwZEcL' \
    --body '{"epicGamesJwtToken": "cEpLfErI"}' \
    > test.out 2>&1
eval_tap $? 389 'SyncEpicGamesInventory' test.out

#- 390 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'XCcUGMU2' \
    --body '{"autoAck": true, "language": "Lx-434", "orderId": "I8ht0s5v", "packageName": "ZEJeU6LS", "productId": "D7XBNJ3L", "purchaseTime": 67, "purchaseToken": "q555tZ2M", "region": "kOeVokZz"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicFulfillGoogleIAPItem' test.out

#- 391 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7AoWhCsD' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusConsumableEntitlements' test.out

#- 392 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'g9dbdDwj' \
    --body '{"currencyCode": "GcP6YTbQ", "price": 0.1855356005838421, "productId": "ZH8StChr", "serviceLabel": 44}' \
    > test.out 2>&1
eval_tap $? 392 'PublicReconcilePlayStationStore' test.out

#- 393 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'PHaQcPnG' \
    --body '{"currencyCode": "uvC6ksYB", "price": 0.7823085533185876, "productId": "P6shvTij", "serviceLabels": [9, 67, 95]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 394 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'ZcpPHhPx' \
    --body '{"appId": "fxl30At0", "currencyCode": "zbr8RXMk", "language": "Vy_ybLQ-621", "price": 0.13346165146494804, "productId": "E2rKDhKM", "region": "nyRHt1pN", "steamId": "Zo3KTSbC"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamInventory' test.out

#- 395 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'XUUYOPoq' \
    --body '{"gameId": "SmhZrk0F", "language": "OQW", "region": "s6nogd3d"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncTwitchDropsEntitlement1' test.out

#- 396 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'Qb9Uo87q' \
    --body '{"currencyCode": "UMsb3n8i", "price": 0.8106410837309034, "productId": "l9i5c7po", "xstsToken": "wytyGPW2"}' \
    > test.out 2>&1
eval_tap $? 396 'SyncXboxInventory' test.out

#- 397 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '0l5uFaWc' \
    --itemId 'CraJOTvz' \
    --limit '82' \
    --offset '13' \
    --status 'FULFILLED' \
    > test.out 2>&1
eval_tap $? 397 'PublicQueryUserOrders' test.out

#- 398 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'YInztGck' \
    --body '{"currencyCode": "JWN7DUDX", "discountedPrice": 77, "ext": {"f5pvE0Fd": {}, "F4QIZv17": {}, "kkQWFXpc": {}}, "itemId": "IA0yJcZ0", "language": "zmJq-SX", "price": 38, "quantity": 58, "region": "FWHILoVp", "returnUrl": "5tofpYlh", "sectionId": "IiyRKre4"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicCreateUserOrder' test.out

#- 399 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'uZxEM0to' \
    --userId '2N0wzj4v' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserOrder' test.out

#- 400 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Hsc21WMA' \
    --userId 'Q4eeCQmv' \
    > test.out 2>&1
eval_tap $? 400 'PublicCancelUserOrder' test.out

#- 401 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'JH85uoIj' \
    --userId 'UveifDI2' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserOrderHistories' test.out

#- 402 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'aXFgW5EI' \
    --userId 'C6wzaxJv' \
    > test.out 2>&1
eval_tap $? 402 'PublicDownloadUserOrderReceipt' test.out

#- 403 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'u89T0ths' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetPaymentAccounts' test.out

#- 404 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '4kMAjhBS' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'gh87m3dv' \
    > test.out 2>&1
eval_tap $? 404 'PublicDeletePaymentAccount' test.out

#- 405 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'aAIAyDOv' \
    --language 'NRyY1ciK' \
    --region 'EPQQW5Mk' \
    --storeId 'wwY0Oz0k' \
    --viewId 'lOzpoG5c' \
    > test.out 2>&1
eval_tap $? 405 'PublicListActiveSections' test.out

#- 406 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'QI99flLr' \
    --chargeStatus 'NEVER' \
    --itemId 'uOgxqaUw' \
    --limit '85' \
    --offset '80' \
    --sku 'O41i2l46' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserSubscriptions' test.out

#- 407 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'tneQ5RIi' \
    --body '{"currencyCode": "js9SVUbx", "itemId": "xUwGlY2g", "language": "AD-339", "region": "DNHKXYo9", "returnUrl": "9jysQymb", "source": "VEeB1Vgv"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicSubscribeSubscription' test.out

#- 408 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'GH3oE4lK' \
    --itemId 'bpcLZr0U' \
    > test.out 2>&1
eval_tap $? 408 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 409 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'vyVMSvv0' \
    --userId 'U2Wl9uZ3' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscription' test.out

#- 410 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId '6SIICkEb' \
    --userId 'C3uYByLm' \
    > test.out 2>&1
eval_tap $? 410 'PublicChangeSubscriptionBillingAccount' test.out

#- 411 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QYYfGhzM' \
    --userId 'XQ7hXKID' \
    --body '{"immediate": false, "reason": "LbP8PjWv"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicCancelSubscription' test.out

#- 412 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'zrNKeXil' \
    --userId '2XTPoV1i' \
    --excludeFree 'true' \
    --limit '50' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserSubscriptionBillingHistories' test.out

#- 413 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '6UkON5gJ' \
    --language 'ACkYqHoV' \
    --storeId 'itIAGkXw' \
    > test.out 2>&1
eval_tap $? 413 'PublicListViews' test.out

#- 414 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode '7Mh4p8HX' \
    --namespace $AB_NAMESPACE \
    --userId 'tAAMAaBO' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetWallet' test.out

#- 415 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'nfQfsqbh' \
    --namespace $AB_NAMESPACE \
    --userId 'bTQTLQx5' \
    --limit '57' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 415 'PublicListUserWalletTransactions' test.out

#- 416 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'kSsP3RAe' \
    --baseAppId 'x1fSYMkG' \
    --categoryPath 'ngjXMIQp' \
    --features '3KqzOTq4' \
    --includeSubCategoryItem 'false' \
    --itemName 'BGQsl0P7' \
    --itemStatus 'ACTIVE' \
    --itemType 'INGAMEITEM' \
    --limit '59' \
    --offset '59' \
    --region '03z53JSm' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt:desc", "updatedAt:desc"]' \
    --storeId 'agH30uI6' \
    --tags 'Ng7qt1nY' \
    --targetNamespace 'RgJ13TFq' \
    > test.out 2>&1
eval_tap $? 416 'QueryItems1' test.out

#- 417 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '4e8V8mI6' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 417 'ImportStore1' test.out

#- 418 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'CnuLFf7f' \
    --body '{"itemIds": ["4jErRcCK", "IXGR8cme", "xdYcjN4u"]}' \
    > test.out 2>&1
eval_tap $? 418 'ExportStore1' test.out

#- 419 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BZaoZtfs' \
    --body '{"metadata": {"pFRAAyLx": {}, "0EJgFt2C": {}, "kQos9dgZ": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "PpeQp9aq", "namespace": "utMfVE3S"}, "item": {"itemId": "q3ylqwRX", "itemSku": "v5jtpAAs", "itemType": "YLb20hoK"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"currencyCode": "IlvxxYdK", "namespace": "su776q5D"}, "item": {"itemId": "9BrlBPiZ", "itemSku": "DbsP3BPB", "itemType": "Tv3gIEit"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "KixWiOv3", "namespace": "X7BctFd9"}, "item": {"itemId": "oUEevdle", "itemSku": "hwQ9hUMN", "itemType": "Hf6CjxGK"}, "quantity": 30, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "JXL7UW12"}' \
    > test.out 2>&1
eval_tap $? 419 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE