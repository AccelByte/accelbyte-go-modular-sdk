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
echo "1..444"

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
    --id 'P2xGZot8' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'URGLhh59' \
    --body '{"grantDays": "bsYJq9ol"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'hQt1ieK1' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '8IJYLrcK' \
    --body '{"grantDays": "WpWCjJfV"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "d5zt0zIX", "dryRun": false, "fulfillmentUrl": "cPDOKYKa", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "ZHjnzXOs"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'dftw5mDh' \
    --itemType 'COINS' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Ymkx9YsA' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'Ym2EKUtm' \
    --body '{"clazz": "vJAKrpYO", "dryRun": true, "fulfillmentUrl": "pccmt9jR", "purchaseConditionUrl": "yLCP5j2f"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '7HJ5hyHX' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name '44avSlMb' \
    --offset '78' \
    --tag 'qNEBsvJ8' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "LOF92iG2", "items": [{"extraSubscriptionDays": 91, "itemId": "Dbbm0VSM", "itemName": "2F1u9fH8", "quantity": 42}, {"extraSubscriptionDays": 27, "itemId": "s2iM71Mn", "itemName": "58wNf5ye", "quantity": 97}, {"extraSubscriptionDays": 52, "itemId": "Y6Ou1N3l", "itemName": "tHlMISK5", "quantity": 68}], "maxRedeemCountPerCampaignPerUser": 31, "maxRedeemCountPerCode": 85, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 9, "name": "eFQJR2sb", "redeemEnd": "1978-05-23T00:00:00Z", "redeemStart": "1979-01-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Z7KIGyfb", "rXekVOiF", "2c3eMyZX"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'JI06N7ld' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'edtnmfZI' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KiE0P5Li", "items": [{"extraSubscriptionDays": 36, "itemId": "Az64Kx6H", "itemName": "1HSQkbn1", "quantity": 17}, {"extraSubscriptionDays": 10, "itemId": "3TqY8g5a", "itemName": "cNz1AF4l", "quantity": 34}, {"extraSubscriptionDays": 28, "itemId": "j8WBBDsF", "itemName": "0El9ODcb", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 49, "maxRedeemCountPerCode": 51, "maxRedeemCountPerCodePerUser": 3, "maxSaleCount": 15, "name": "u0aL5dQu", "redeemEnd": "1998-08-17T00:00:00Z", "redeemStart": "1993-07-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["GRpIG4TK", "LssrY8pY", "VrEyGNR3"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 't6SAsbok' \
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
    --body '{"appConfig": {"appName": "oDxnuehz"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "0eri0TH8"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "PYknv3YW"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "nAJbCxOI"}, "extendType": "APP"}' \
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
    --storeId 'UkP8eUJr' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'G4F95TKO' \
    --body '{"categoryPath": "ux2drLlh", "localizationDisplayNames": {"rpVPBX9u": "2F1Q4t6k", "YoM3PzaW": "hyCUR9JU", "5ESvH126": "tX3fyZ0B"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'YmJbudmE' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'pIoFS5kh' \
    --namespace $AB_NAMESPACE \
    --storeId 'sOP7WyzK' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'hIbPvLfT' \
    --namespace $AB_NAMESPACE \
    --storeId 'L9XSrJ3r' \
    --body '{"localizationDisplayNames": {"FmqMYnIo": "VLDnPNCd", "ZSJR7SIW": "Xljn2XfN", "NBIkNDaq": "5yzsWNuu"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'gPvqR1hP' \
    --namespace $AB_NAMESPACE \
    --storeId 'R0Cw4ca7' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'wqNpEA9N' \
    --namespace $AB_NAMESPACE \
    --storeId 'gnIfB0kv' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'HM0o56XJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'Q1glS6Vi' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'nVuD25ph' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '66' \
    --code 'OgJaMbhM' \
    --limit '37' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'zKNxA5R7' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 28}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'O1i2GQSS' \
    --namespace $AB_NAMESPACE \
    --batchNo '8' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'I6zbTOJm' \
    --namespace $AB_NAMESPACE \
    --batchNo '9' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'GhJBVFUt' \
    --namespace $AB_NAMESPACE \
    --batchNo '54' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'T63Iq2FR' \
    --namespace $AB_NAMESPACE \
    --code 'hj6AliK8' \
    --limit '52' \
    --offset '4' \
    --userId 'RBRp5B5V' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'JCSNy3UT' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'uHisgIFL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'L9z7lK4w' \
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
    --body '{"currencyCode": "H3dxpET7", "currencySymbol": "aZoRC4Xk", "currencyType": "VIRTUAL", "decimals": 76, "localizationDescriptions": {"flp5mjGB": "XyI6KRF6", "HIl9xCKx": "G8ApnTti", "yOe6txnn": "iHtOMYSY"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'VhqkIB0g' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"fdE15a7Q": "hJHEKJta", "As8kukce": "aZD7JurM", "LAdHGuzv": "VBpWgOuL"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'FtrHlnpT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode '2zi0wF9e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'CJ2fGz1J' \
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
    --body '{"data": [{"id": "YlAhQWI7", "rewards": [{"currency": {"currencyCode": "edFjIMcu", "namespace": "QOGoZNDY"}, "item": {"itemId": "8Ecq0eFj", "itemSku": "XZ5wtktR", "itemType": "cxqOv2gQ"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "IwmS8j9J", "namespace": "dIK3aryH"}, "item": {"itemId": "NHLcWKCD", "itemSku": "j1NOrRXw", "itemType": "1xT9JjOO"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "OQPVOFS6", "namespace": "dCFEGpp6"}, "item": {"itemId": "3vymHgW4", "itemSku": "v1qn2x4m", "itemType": "YVhl0KJw"}, "quantity": 57, "type": "ITEM"}]}, {"id": "yHCtaG5S", "rewards": [{"currency": {"currencyCode": "RHxLl8QC", "namespace": "tQxP7Tw3"}, "item": {"itemId": "oHhglUrn", "itemSku": "MqyTemqX", "itemType": "SEHpQPDu"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "DFsetp3V", "namespace": "SjHhbMCU"}, "item": {"itemId": "8rUz6tUg", "itemSku": "9MRVK6xJ", "itemType": "PVfTCiby"}, "quantity": 63, "type": "CURRENCY"}, {"currency": {"currencyCode": "NHyqYMxm", "namespace": "BEvOIOzV"}, "item": {"itemId": "Zh5XFDpb", "itemSku": "ldxkKF10", "itemType": "5F1SbDvP"}, "quantity": 93, "type": "ITEM"}]}, {"id": "79x99xez", "rewards": [{"currency": {"currencyCode": "uVPXh2pX", "namespace": "U5RM5ZGC"}, "item": {"itemId": "AElRK4Z1", "itemSku": "KL7FGFy8", "itemType": "s9lepH9I"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "LkxyFvRk", "namespace": "xuK02QZI"}, "item": {"itemId": "dZ2j8rny", "itemSku": "jUS1sE81", "itemType": "fXBIRquB"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "JjiP3WIK", "namespace": "SGdewxCo"}, "item": {"itemId": "wKFgDnVK", "itemSku": "oRKehdrC", "itemType": "ECWsJRpn"}, "quantity": 4, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"gyZYhChJ": "J0j1FaEK", "tz9DGpvx": "IbzUFhnu", "ceO0iZZ2": "oyUmXEQc"}}, {"platform": "STEAM", "platformDlcIdMap": {"knPb1JGe": "COqBRz7G", "jKsZd7pj": "17Rz7oIZ", "Ym6PDL4U": "UvoPOLri"}}, {"platform": "PSN", "platformDlcIdMap": {"CpCSkitg": "c4ck4Tlm", "FRtvFgEf": "kOwggHDn", "SmMS6Smr": "yLjU8qQy"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName 'ZhbYu82W' \
    --itemId '["5O5ElbgR", "oFy6aIb9", "e3FM8OPy"]' \
    --limit '78' \
    --offset '25' \
    --origin 'Other' \
    --userId '5gAu97UX' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemIds '["AN0ORg0l", "CduJ5sCk", "cT3YyWxM"]' \
    --limit '91' \
    --offset '46' \
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
    --body '{"entitlementGrantList": [{"collectionId": "UGn7RzQO", "endDate": "1971-10-07T00:00:00Z", "grantedCode": "2ucongC5", "itemId": "Ohknl0mQ", "itemNamespace": "aQZ29L2V", "language": "OaaM", "origin": "Epic", "quantity": 13, "region": "lu5sluZf", "source": "REFERRAL_BONUS", "startDate": "1991-03-02T00:00:00Z", "storeId": "UG2c0e8o"}, {"collectionId": "UQAKEonl", "endDate": "1992-05-31T00:00:00Z", "grantedCode": "GMeZiTH8", "itemId": "4o9Dng8N", "itemNamespace": "6EcTcSbO", "language": "xLca_jZeC", "origin": "Xbox", "quantity": 69, "region": "ZvqqwpVB", "source": "GIFT", "startDate": "1980-09-05T00:00:00Z", "storeId": "muqh4ZGh"}, {"collectionId": "v9lJlbcA", "endDate": "1975-08-12T00:00:00Z", "grantedCode": "DQL6TvUY", "itemId": "3nOMVjUb", "itemNamespace": "he4cF0vb", "language": "kQpO-215", "origin": "Twitch", "quantity": 73, "region": "qoAGau5p", "source": "PROMOTION", "startDate": "1987-01-27T00:00:00Z", "storeId": "F4mNTotF"}], "userIds": ["JkiKt9zo", "DujYNVpo", "pEy5bgWJ"]}' \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["qGyNdxyi", "cV4frGJD", "vL4N4y2k"]' \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'u4I6iqtv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '50' \
    --status 'SUCCESS' \
    --userId '823kO9mC' \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '1xLllPO2' \
    --eventType 'REFUND' \
    --externalOrderId 'PCFLvSAP' \
    --limit '97' \
    --offset '35' \
    --startTime 'FZmscPwM' \
    --status 'SUCCESS' \
    --userId 'QcM1I16N' \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "yukf07N4", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 9, "clientTransactionId": "6AAOtpmJ"}, {"amountConsumed": 27, "clientTransactionId": "R22xtKQt"}, {"amountConsumed": 26, "clientTransactionId": "Cbt21FkY"}], "entitlementId": "BlcSM4nF", "usageCount": 82}, {"clientTransaction": [{"amountConsumed": 95, "clientTransactionId": "DcQuTTcM"}, {"amountConsumed": 37, "clientTransactionId": "o4nNBuTu"}, {"amountConsumed": 99, "clientTransactionId": "vX3GoDp6"}], "entitlementId": "jeC8ca0i", "usageCount": 7}, {"clientTransaction": [{"amountConsumed": 51, "clientTransactionId": "igWMiqcN"}, {"amountConsumed": 3, "clientTransactionId": "lzitk7xv"}, {"amountConsumed": 43, "clientTransactionId": "22vvvsRW"}], "entitlementId": "fUoDbsuN", "usageCount": 76}], "purpose": "naklH1dw"}, "originalTitleName": "SlLwPJG4", "paymentProductSKU": "1oOkNck7", "purchaseDate": "kzajjzDp", "sourceOrderItemId": "GpxWnKpg", "titleName": "ibLZ6crs"}, "eventDomain": "CYxoJx0x", "eventSource": "qyA3kAnh", "eventType": "FOHdHP8l", "eventVersion": 88, "id": "YK8zI7af", "timestamp": "uh9DKPq0"}' \
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
    --body '{"bundleId": "iPHBZrCl", "password": "iEHtcA7b"}' \
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
    --body '{"sandboxId": "uFpaZUSo"}' \
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
    --body '{"applicationName": "xr8sukQT", "serviceAccountId": "mD8YJepQ"}' \
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
    --body '{"data": [{"itemIdentity": "Ifzrmymg", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"tBHR1wgq": "LWOh5SJ5", "BspKggFW": "wTOA9UqD", "V5SCurVA": "y6CIEmaF"}}, {"itemIdentity": "Wi5jSG0Z", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"8y1j2wzU": "fKNBj4iW", "9hu3Qwp1": "k1F7VGpo", "xAzTslTj": "ff2wNpp1"}}, {"itemIdentity": "o0wcjIA5", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"NNRw8IjK": "OXTt5UU9", "QmEkjGY0": "Uh2eoy0M", "RBt4uWkC": "qcv4NanU"}}]}' \
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
    --body '{"appId": "cwoz8gL1", "appSecret": "etRZlchn"}' \
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
    --body '{"backOfficeServerClientId": "HddcZclL", "backOfficeServerClientSecret": "dCV6dO6Z", "enableStreamJob": true, "environment": "4Q7NYqVc", "streamName": "yZqNMtfy", "streamPartnerName": "XKFMZTsq"}' \
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
    --body '{"backOfficeServerClientId": "Irb46wZG", "backOfficeServerClientSecret": "mNl4dKjm", "enableStreamJob": false, "environment": "tu5ubdm6", "streamName": "B0So79bY", "streamPartnerName": "LQMeSI7s"}' \
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
    --body '{"appId": "JhMp3UgK", "publisherAuthenticationKey": "Xwy39Oil"}' \
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
    --body '{"clientId": "UMwiEl88", "clientSecret": "NrCtN654", "organizationId": "kcvgcwPZ"}' \
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
    --body '{"relyingPartyCert": "mkrqhZzo"}' \
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
    --password 'M2Sd4cU6' \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'nPcQ6YNr' \
    --itemId 'UONfErXM' \
    --itemType 'INGAMEITEM' \
    --endTime 'lpGgS6JU' \
    --startTime 'PRnmEXCt' \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'MGstYoYZ' \
    --itemId 'MYHOxo1o' \
    --itemType 'SEASON' \
    --endTime 'Lt1yf7i8' \
    --startTime 'mHUtMXlE' \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'bKV6e3m8' \
    --body '{"categoryPath": "2UoAc7x6", "targetItemId": "7VTjixBf", "targetNamespace": "cpxprNpT"}' \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'Q6PU1Iyk' \
    --body '{"appId": "IEDVqDhG", "appType": "DLC", "baseAppId": "0j0bOr8D", "boothName": "gAs7XwbO", "categoryPath": "YkNb3uhj", "clazz": "TzMY1iOs", "displayOrder": 32, "entitlementType": "CONSUMABLE", "ext": {"jE5We2l9": {}, "a3JzVM9K": {}, "BAYSm9h2": {}}, "features": ["vNryPZDV", "gzSFsdMx", "CtROKoR1"], "flexible": false, "images": [{"as": "XX74F2G8", "caption": "KWnREz7S", "height": 31, "imageUrl": "ugH6ZT9X", "smallImageUrl": "BPrRyzz2", "width": 30}, {"as": "yGGtxQ2s", "caption": "oBSsGTbn", "height": 56, "imageUrl": "GiyOSxDU", "smallImageUrl": "Qna8Sc1V", "width": 53}, {"as": "5tobsjvr", "caption": "InQ9lLgB", "height": 62, "imageUrl": "JVOhLbTa", "smallImageUrl": "flUQxUOK", "width": 14}], "inventoryConfig": {"customAttributes": {"TtKGxaP4": {}, "dlSaX8AF": {}, "8kkCsI1g": {}}, "serverCustomAttributes": {"yZYChbv2": {}, "h9ydf5eX": {}, "7gO92Tlg": {}}, "slotUsed": 67}, "itemIds": ["JUbZxc4M", "qU7yiQe3", "EGUW3sTe"], "itemQty": {"DeIVe23v": 87, "zN65p18L": 11, "ol55dHHB": 92}, "itemType": "MEDIA", "listable": false, "localizations": {"dkQv2bNG": {"description": "vC7pwGm0", "localExt": {"YaTbWdpk": {}, "yiWSCDCc": {}, "q08vQbBR": {}}, "longDescription": "9ftVAGrc", "title": "5sbOyPfS"}, "Hvby7x05": {"description": "e4QghF2g", "localExt": {"gbNyOxIx": {}, "j6JnYnaf": {}, "hq0F7gRC": {}}, "longDescription": "d7PT4Fh1", "title": "AJOmA6T9"}, "34CZyArl": {"description": "SHzqxnhu", "localExt": {"SUc0pgjV": {}, "hMzL6mpO": {}, "7oe6Bbqy": {}}, "longDescription": "aIss0Y8X", "title": "XxsHFtHf"}}, "lootBoxConfig": {"rewardCount": 23, "rewards": [{"lootBoxItems": [{"count": 88, "duration": 2, "endDate": "1975-03-30T00:00:00Z", "itemId": "AEucCmYD", "itemSku": "rXrfYVFq", "itemType": "iNfSot86"}, {"count": 86, "duration": 48, "endDate": "1985-08-14T00:00:00Z", "itemId": "bLlLI9NI", "itemSku": "xxe2AIAz", "itemType": "9upNVpOW"}, {"count": 21, "duration": 91, "endDate": "1977-10-14T00:00:00Z", "itemId": "R14MRVGa", "itemSku": "GgCVp12J", "itemType": "DbjrgKB1"}], "name": "yGYTBQeK", "odds": 0.6336359012724994, "type": "REWARD_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 92, "duration": 87, "endDate": "1983-12-19T00:00:00Z", "itemId": "6nYyJd4N", "itemSku": "hCec6PUy", "itemType": "rImIrbPb"}, {"count": 15, "duration": 55, "endDate": "1984-12-02T00:00:00Z", "itemId": "H6J56Piy", "itemSku": "fnxxFCTk", "itemType": "0uYQSI3a"}, {"count": 76, "duration": 71, "endDate": "1973-11-10T00:00:00Z", "itemId": "TwvOB7qC", "itemSku": "7hNKECRA", "itemType": "PK1SCekl"}], "name": "BcZ2A3TP", "odds": 0.10099564053219767, "type": "REWARD", "weight": 38}, {"lootBoxItems": [{"count": 32, "duration": 22, "endDate": "1973-04-30T00:00:00Z", "itemId": "PVd1P5DQ", "itemSku": "hYDno9FB", "itemType": "R8DUiEg9"}, {"count": 59, "duration": 57, "endDate": "1987-12-29T00:00:00Z", "itemId": "ufoYa9lh", "itemSku": "OAdIurDx", "itemType": "BQRVmgwC"}, {"count": 22, "duration": 65, "endDate": "1984-03-15T00:00:00Z", "itemId": "Bc511pXF", "itemSku": "iJW9AsmZ", "itemType": "qKY2yMNa"}], "name": "GasAvLu3", "odds": 0.0680391851868477, "type": "REWARD", "weight": 47}], "rollFunction": "DEFAULT"}, "maxCount": 18, "maxCountPerUser": 93, "name": "WyAV8cQJ", "optionBoxConfig": {"boxItems": [{"count": 82, "duration": 11, "endDate": "1998-10-24T00:00:00Z", "itemId": "N4ujv49w", "itemSku": "epDkSQrE", "itemType": "mRrrzS9z"}, {"count": 16, "duration": 39, "endDate": "1982-05-30T00:00:00Z", "itemId": "WIg16dcY", "itemSku": "qskeTGT0", "itemType": "yqcDzkO3"}, {"count": 43, "duration": 55, "endDate": "1994-05-06T00:00:00Z", "itemId": "F9PYMukQ", "itemSku": "n7gQmiIx", "itemType": "GuOL294Z"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 30, "fixedTrialCycles": 44, "graceDays": 54}, "regionData": {"5qxCzRrf": [{"currencyCode": "UaFIQtFV", "currencyNamespace": "kb5IHFWQ", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1991-02-12T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1971-04-25T00:00:00Z", "expireAt": "1991-10-01T00:00:00Z", "price": 4, "purchaseAt": "1973-09-02T00:00:00Z", "trialPrice": 34}, {"currencyCode": "hnRTTdhI", "currencyNamespace": "w3oPvpUM", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1986-05-12T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1982-07-14T00:00:00Z", "expireAt": "1987-06-29T00:00:00Z", "price": 9, "purchaseAt": "1986-06-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "PwIS7FJ1", "currencyNamespace": "L5noE3v5", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1977-09-12T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1994-04-30T00:00:00Z", "expireAt": "1971-09-09T00:00:00Z", "price": 78, "purchaseAt": "1985-06-28T00:00:00Z", "trialPrice": 5}], "qwRBOsZw": [{"currencyCode": "q0rjOWwD", "currencyNamespace": "Igq1CRNZ", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1992-09-21T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1979-03-30T00:00:00Z", "expireAt": "1977-10-13T00:00:00Z", "price": 5, "purchaseAt": "1975-09-09T00:00:00Z", "trialPrice": 90}, {"currencyCode": "tKNdAOBl", "currencyNamespace": "mhAeNbYe", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1992-09-22T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1972-05-29T00:00:00Z", "expireAt": "1985-09-26T00:00:00Z", "price": 2, "purchaseAt": "1997-11-03T00:00:00Z", "trialPrice": 90}, {"currencyCode": "z6cOhx4V", "currencyNamespace": "hizh8sLj", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1990-02-14T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1999-07-21T00:00:00Z", "expireAt": "1986-11-17T00:00:00Z", "price": 82, "purchaseAt": "1974-03-29T00:00:00Z", "trialPrice": 11}], "JP0hdlJ6": [{"currencyCode": "R4Tz9TyQ", "currencyNamespace": "TqPeYEiI", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1982-10-08T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1987-09-12T00:00:00Z", "expireAt": "1972-10-22T00:00:00Z", "price": 31, "purchaseAt": "1981-05-07T00:00:00Z", "trialPrice": 100}, {"currencyCode": "FH6E24SY", "currencyNamespace": "6Lvy92q1", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1972-03-01T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1974-04-07T00:00:00Z", "expireAt": "1992-01-19T00:00:00Z", "price": 27, "purchaseAt": "1996-03-21T00:00:00Z", "trialPrice": 73}, {"currencyCode": "xxGmQ9dZ", "currencyNamespace": "tkxWsIoU", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1974-06-02T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1973-02-24T00:00:00Z", "expireAt": "1979-06-19T00:00:00Z", "price": 57, "purchaseAt": "1976-12-17T00:00:00Z", "trialPrice": 50}]}, "saleConfig": {"currencyCode": "idOvhBeC", "price": 24}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "Qc4hugLE", "stackable": true, "status": "ACTIVE", "tags": ["CXnSsHN2", "0tmZUZkl", "xrvF3pBF"], "targetCurrencyCode": "DZJyoSMr", "targetNamespace": "bBjnyLOT", "thumbnailUrl": "xCu46pIH", "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'nF2yRr0H' \
    --appId 'F7F9A3QB' \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'fzDBuota' \
    --baseAppId 'th6e0568' \
    --categoryPath 'X2WVA1ZI' \
    --features 'JfzHS4AA' \
    --includeSubCategoryItem 'false' \
    --itemType 'EXTENSION' \
    --limit '36' \
    --offset '56' \
    --region 'iroWC30h' \
    --sortBy '["createdAt:asc", "name:desc", "updatedAt:asc"]' \
    --storeId 'y3QrZL5o' \
    --tags 'io6Yg7Ea' \
    --targetNamespace '9XikVrHX' \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["xLXBEg91", "ZIYraN6I", "yCW0CScC"]' \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'KlMj0vfw' \
    --itemIds '4rtow2fp' \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'Oda5u0wB' \
    --sku '2bL8lzNx' \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'lsPjuiJA' \
    --populateBundle 'false' \
    --region '6Dmb2OOi' \
    --storeId 'clg9WOOA' \
    --sku 'u9KHALdp' \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'mo6aX4h5' \
    --region 'v6BuYPru' \
    --storeId 'Bm5o9X1T' \
    --itemIds 'AgiYtW6U' \
    --userId 'yvAXsngZ' \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'bOdq9KqS' \
    --sku 'fMNVZKnf' \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["J1k2irdr", "cLslip4o", "sKB5UGdm"]' \
    --storeId 'pG4yIuen' \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'zUNN1ppM' \
    --region 'kK2P9FWd' \
    --storeId 'xLQ8bd5R' \
    --itemIds 't0GGYI8t' \
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
    --platform 'wemHBEIH' \
    --userId '3aWhqBHD' \
    --body '{"itemIds": ["Ejo3q6U8", "DKEDOrBn", "xGN6D3LG"]}' \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'Usf1CwZs' \
    --body '{"changes": [{"itemIdentities": ["KUUi8DA4", "EQUDAGtI", "PL6SyCYI"], "itemIdentityType": "ITEM_SKU", "regionData": {"P6edowzS": [{"currencyCode": "SWcImpYw", "currencyNamespace": "TYaCl2NV", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1984-07-25T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1971-05-18T00:00:00Z", "discountedPrice": 86, "expireAt": "1997-10-07T00:00:00Z", "price": 98, "purchaseAt": "1994-07-06T00:00:00Z", "trialPrice": 96}, {"currencyCode": "KhgTXrEl", "currencyNamespace": "cryc4sFB", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1977-04-20T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1992-07-16T00:00:00Z", "discountedPrice": 36, "expireAt": "1999-01-01T00:00:00Z", "price": 44, "purchaseAt": "1990-07-01T00:00:00Z", "trialPrice": 93}, {"currencyCode": "lctzuVTa", "currencyNamespace": "GGqryQ8D", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1972-05-27T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1977-03-14T00:00:00Z", "discountedPrice": 80, "expireAt": "1974-08-09T00:00:00Z", "price": 27, "purchaseAt": "1972-12-24T00:00:00Z", "trialPrice": 90}], "nYDhqMTO": [{"currencyCode": "5jqsUAcp", "currencyNamespace": "dwQU4EeD", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1987-03-19T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1998-05-10T00:00:00Z", "discountedPrice": 48, "expireAt": "1987-02-21T00:00:00Z", "price": 29, "purchaseAt": "1973-03-07T00:00:00Z", "trialPrice": 88}, {"currencyCode": "s6hHSuTo", "currencyNamespace": "3M6eBfMS", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1986-03-03T00:00:00Z", "discountedPrice": 43, "expireAt": "1985-02-24T00:00:00Z", "price": 34, "purchaseAt": "1979-01-08T00:00:00Z", "trialPrice": 27}, {"currencyCode": "pisueZ2z", "currencyNamespace": "aQMQ7lBC", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1986-01-04T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1985-01-18T00:00:00Z", "discountedPrice": 4, "expireAt": "1990-06-09T00:00:00Z", "price": 48, "purchaseAt": "1973-08-19T00:00:00Z", "trialPrice": 98}], "3xHbKEqx": [{"currencyCode": "7A9UfEQQ", "currencyNamespace": "ZpIBIoPz", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1988-09-21T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1987-05-16T00:00:00Z", "discountedPrice": 60, "expireAt": "1971-07-26T00:00:00Z", "price": 66, "purchaseAt": "1990-01-13T00:00:00Z", "trialPrice": 18}, {"currencyCode": "rvaUKCWP", "currencyNamespace": "cbZ6frRx", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1992-03-31T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1998-06-05T00:00:00Z", "discountedPrice": 72, "expireAt": "1978-01-19T00:00:00Z", "price": 22, "purchaseAt": "1980-11-21T00:00:00Z", "trialPrice": 48}, {"currencyCode": "ta9FBGpZ", "currencyNamespace": "uJZvw1B4", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1973-06-30T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1977-03-26T00:00:00Z", "discountedPrice": 55, "expireAt": "1988-10-12T00:00:00Z", "price": 18, "purchaseAt": "1975-07-09T00:00:00Z", "trialPrice": 56}]}}, {"itemIdentities": ["ZAum7M0P", "RR4o1pBv", "F8yBEvsX"], "itemIdentityType": "ITEM_SKU", "regionData": {"IwCE76F3": [{"currencyCode": "0HPMDM6R", "currencyNamespace": "M5fRBuVa", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1984-04-01T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1973-01-25T00:00:00Z", "discountedPrice": 22, "expireAt": "1989-04-30T00:00:00Z", "price": 14, "purchaseAt": "1986-03-31T00:00:00Z", "trialPrice": 52}, {"currencyCode": "vbnHHczc", "currencyNamespace": "EOXlf4ua", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1972-12-02T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1991-02-12T00:00:00Z", "discountedPrice": 79, "expireAt": "1978-07-16T00:00:00Z", "price": 51, "purchaseAt": "1999-11-19T00:00:00Z", "trialPrice": 97}, {"currencyCode": "UTm4CD0c", "currencyNamespace": "kXS5bs7w", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1996-07-04T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1979-03-20T00:00:00Z", "discountedPrice": 15, "expireAt": "1991-03-08T00:00:00Z", "price": 56, "purchaseAt": "1988-04-28T00:00:00Z", "trialPrice": 31}], "KIGxeA0n": [{"currencyCode": "nNvQziw3", "currencyNamespace": "5CLG544X", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1983-11-01T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1994-09-17T00:00:00Z", "discountedPrice": 85, "expireAt": "1996-01-17T00:00:00Z", "price": 91, "purchaseAt": "1984-10-11T00:00:00Z", "trialPrice": 76}, {"currencyCode": "SCvGyXzb", "currencyNamespace": "fsdWdFZq", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1985-12-08T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1986-03-08T00:00:00Z", "discountedPrice": 52, "expireAt": "1982-01-18T00:00:00Z", "price": 16, "purchaseAt": "1971-10-20T00:00:00Z", "trialPrice": 38}, {"currencyCode": "zsCfVQ2e", "currencyNamespace": "luPRahim", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1986-09-28T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1988-02-02T00:00:00Z", "discountedPrice": 71, "expireAt": "1992-01-07T00:00:00Z", "price": 46, "purchaseAt": "1971-03-18T00:00:00Z", "trialPrice": 84}], "V0XhtqOv": [{"currencyCode": "0izSjJZz", "currencyNamespace": "H6mbWLlV", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1996-01-08T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1996-07-21T00:00:00Z", "discountedPrice": 19, "expireAt": "1992-01-13T00:00:00Z", "price": 16, "purchaseAt": "1996-12-11T00:00:00Z", "trialPrice": 7}, {"currencyCode": "4ZucLTN7", "currencyNamespace": "2mKVRsjY", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1982-11-15T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1978-03-04T00:00:00Z", "discountedPrice": 6, "expireAt": "1979-10-24T00:00:00Z", "price": 76, "purchaseAt": "1978-08-08T00:00:00Z", "trialPrice": 20}, {"currencyCode": "M87Nc3dv", "currencyNamespace": "z57Gu7CR", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1978-12-27T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1988-09-17T00:00:00Z", "discountedPrice": 77, "expireAt": "1982-08-28T00:00:00Z", "price": 58, "purchaseAt": "1995-06-17T00:00:00Z", "trialPrice": 53}]}}, {"itemIdentities": ["VYy8MhQt", "OnyprwXy", "GvChuQcV"], "itemIdentityType": "ITEM_SKU", "regionData": {"K0NmHlvj": [{"currencyCode": "Nix608LV", "currencyNamespace": "PQQUrkUU", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1989-09-15T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1987-05-10T00:00:00Z", "discountedPrice": 48, "expireAt": "1987-01-27T00:00:00Z", "price": 72, "purchaseAt": "1998-02-28T00:00:00Z", "trialPrice": 92}, {"currencyCode": "gLzwXaQ6", "currencyNamespace": "0T8zEeZk", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1991-04-07T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1977-04-19T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-09-26T00:00:00Z", "price": 20, "purchaseAt": "1984-03-17T00:00:00Z", "trialPrice": 59}, {"currencyCode": "Kwu8HFfB", "currencyNamespace": "QLPd5jcP", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1978-01-08T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1991-01-06T00:00:00Z", "discountedPrice": 82, "expireAt": "1994-11-03T00:00:00Z", "price": 72, "purchaseAt": "1983-01-16T00:00:00Z", "trialPrice": 52}], "R9YmwRFN": [{"currencyCode": "ZBeFt3S3", "currencyNamespace": "EFWtZqJi", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1990-08-11T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1971-09-22T00:00:00Z", "discountedPrice": 64, "expireAt": "1979-09-21T00:00:00Z", "price": 93, "purchaseAt": "1989-11-05T00:00:00Z", "trialPrice": 14}, {"currencyCode": "SFNy2qE0", "currencyNamespace": "PPNOZHmI", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1973-04-30T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1984-09-12T00:00:00Z", "discountedPrice": 22, "expireAt": "1978-11-30T00:00:00Z", "price": 65, "purchaseAt": "1983-12-23T00:00:00Z", "trialPrice": 7}, {"currencyCode": "7bTNVUUh", "currencyNamespace": "mYY3FS3B", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1987-08-31T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1999-06-04T00:00:00Z", "discountedPrice": 48, "expireAt": "1975-04-04T00:00:00Z", "price": 13, "purchaseAt": "1997-12-06T00:00:00Z", "trialPrice": 4}], "BPnOoKvC": [{"currencyCode": "NSngzsOZ", "currencyNamespace": "q4sNMkdt", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1984-11-22T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-08-04T00:00:00Z", "discountedPrice": 25, "expireAt": "1997-01-01T00:00:00Z", "price": 19, "purchaseAt": "1986-06-17T00:00:00Z", "trialPrice": 76}, {"currencyCode": "zn1SVBCK", "currencyNamespace": "7IkAHPa6", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1983-10-13T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1978-02-03T00:00:00Z", "discountedPrice": 11, "expireAt": "1983-11-06T00:00:00Z", "price": 47, "purchaseAt": "1998-05-02T00:00:00Z", "trialPrice": 19}, {"currencyCode": "355Q7hPi", "currencyNamespace": "KqOfOnJn", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1997-07-09T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1979-07-07T00:00:00Z", "discountedPrice": 66, "expireAt": "1995-04-27T00:00:00Z", "price": 4, "purchaseAt": "1992-06-10T00:00:00Z", "trialPrice": 99}]}}]}' \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'MEDIA' \
    --limit '2' \
    --offset '1' \
    --sortBy 'cjxpcyz6' \
    --storeId 'bYt7IpXU' \
    --keyword 'sJ031QVS' \
    --language 'fTqyOiVi' \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '6' \
    --offset '88' \
    --sortBy '["name:asc", "displayOrder:desc"]' \
    --storeId 'FiPytsXl' \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'q0TfoSuk' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'hi3owVAt' \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'gUp0gKmz' \
    --namespace $AB_NAMESPACE \
    --storeId 'ojAR5gT5' \
    --body '{"appId": "2yny4cCa", "appType": "GAME", "baseAppId": "3y074APj", "boothName": "WENF91BL", "categoryPath": "3832pWIN", "clazz": "JQDZaLIh", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"7Ywa6GqQ": {}, "qt4wLB0j": {}, "HYGfX6qf": {}}, "features": ["JqLxsLg3", "CNxMheDl", "y3IsTYjR"], "flexible": true, "images": [{"as": "0TyXWx2k", "caption": "uj7tRDrf", "height": 21, "imageUrl": "3vxmwuyR", "smallImageUrl": "Ad1HVIFk", "width": 98}, {"as": "nqZ7n9fG", "caption": "dk49ijJI", "height": 41, "imageUrl": "EQSH92MD", "smallImageUrl": "iq3NVl4E", "width": 40}, {"as": "1zValBxm", "caption": "i154z8Bt", "height": 33, "imageUrl": "Pjmmw9mK", "smallImageUrl": "A4bn1wYD", "width": 18}], "inventoryConfig": {"customAttributes": {"RaZoCCP0": {}, "lvCfpo2Q": {}, "mUuDvIu2": {}}, "serverCustomAttributes": {"2ySgXIh3": {}, "YyB7nULJ": {}, "SCHYE6rr": {}}, "slotUsed": 80}, "itemIds": ["TOFHVH7t", "vgeKcmt2", "SVDdFpuE"], "itemQty": {"QkxdETcR": 40, "1LlI5jee": 1, "42XZYctY": 63}, "itemType": "MEDIA", "listable": true, "localizations": {"UWc6o8i1": {"description": "m19k4KtV", "localExt": {"cPJZrhDU": {}, "yLrT24an": {}, "0HMFiBc5": {}}, "longDescription": "3S05RctT", "title": "drQHAker"}, "0zClrhQ9": {"description": "3sMf7gEJ", "localExt": {"TQeZWkBp": {}, "AvkxTMUb": {}, "xC19yNbr": {}}, "longDescription": "LVlRwhFs", "title": "sGCNRKsr"}, "gvaSWjqY": {"description": "phbfsqmp", "localExt": {"KmeSeSZw": {}, "XLgSDdAd": {}, "K5ipz0c5": {}}, "longDescription": "7QbWLOxU", "title": "yEa4ftzB"}}, "lootBoxConfig": {"rewardCount": 45, "rewards": [{"lootBoxItems": [{"count": 21, "duration": 38, "endDate": "1988-02-02T00:00:00Z", "itemId": "Ubj5Fdj5", "itemSku": "YcMaPOqW", "itemType": "QvjeIIyk"}, {"count": 33, "duration": 96, "endDate": "1999-02-10T00:00:00Z", "itemId": "eji2JrhE", "itemSku": "PuWrq0zs", "itemType": "kycnqO5q"}, {"count": 66, "duration": 93, "endDate": "1974-11-19T00:00:00Z", "itemId": "Lpq92gnK", "itemSku": "DrcA3aIB", "itemType": "VxD6DYSC"}], "name": "cTZywtEs", "odds": 0.26513445585231576, "type": "REWARD", "weight": 39}, {"lootBoxItems": [{"count": 19, "duration": 91, "endDate": "1980-02-11T00:00:00Z", "itemId": "5Zk7V2eK", "itemSku": "Hm08sucM", "itemType": "IZd0CO7c"}, {"count": 100, "duration": 84, "endDate": "1977-02-25T00:00:00Z", "itemId": "gYYZ4lkg", "itemSku": "nJL5k9pW", "itemType": "lP9dO7Rp"}, {"count": 9, "duration": 53, "endDate": "1988-04-20T00:00:00Z", "itemId": "a1Sbyv2h", "itemSku": "S1DZQVhV", "itemType": "509f1R9R"}], "name": "e12bBYTW", "odds": 0.5367851863607239, "type": "REWARD_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 2, "duration": 68, "endDate": "1996-07-02T00:00:00Z", "itemId": "EPJRQEBV", "itemSku": "gVEBJwz6", "itemType": "eJ5BnwPS"}, {"count": 74, "duration": 35, "endDate": "1971-12-31T00:00:00Z", "itemId": "O9doAsF9", "itemSku": "BduVe3Jh", "itemType": "FrfNSrTx"}, {"count": 16, "duration": 85, "endDate": "1980-05-13T00:00:00Z", "itemId": "KnKsn32I", "itemSku": "i03orPLq", "itemType": "93AtZHK0"}], "name": "DSgXRSPX", "odds": 0.17034908727640574, "type": "REWARD_GROUP", "weight": 19}], "rollFunction": "DEFAULT"}, "maxCount": 23, "maxCountPerUser": 73, "name": "ws56enGC", "optionBoxConfig": {"boxItems": [{"count": 30, "duration": 61, "endDate": "1987-10-03T00:00:00Z", "itemId": "k49eVrto", "itemSku": "DzT0mwVS", "itemType": "gU5N5Q4r"}, {"count": 43, "duration": 2, "endDate": "1975-06-20T00:00:00Z", "itemId": "gdXcc5ng", "itemSku": "cLXrgPaQ", "itemType": "NUk90ESn"}, {"count": 4, "duration": 28, "endDate": "1989-09-13T00:00:00Z", "itemId": "GZQtP5tF", "itemSku": "BR7lhU48", "itemType": "FVuhGJFa"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 24, "fixedTrialCycles": 21, "graceDays": 16}, "regionData": {"7sfS0i2M": [{"currencyCode": "QZj3Ee8m", "currencyNamespace": "CfHvhB5F", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1989-08-14T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1971-11-29T00:00:00Z", "expireAt": "1990-12-07T00:00:00Z", "price": 85, "purchaseAt": "1981-10-31T00:00:00Z", "trialPrice": 33}, {"currencyCode": "ddRb2Pt5", "currencyNamespace": "uDeA9rau", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1990-02-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1998-12-26T00:00:00Z", "expireAt": "1988-10-29T00:00:00Z", "price": 87, "purchaseAt": "1972-06-21T00:00:00Z", "trialPrice": 52}, {"currencyCode": "riL8g9Ot", "currencyNamespace": "xFXMQ64k", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1997-04-20T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1971-10-05T00:00:00Z", "expireAt": "1991-01-27T00:00:00Z", "price": 96, "purchaseAt": "1990-07-08T00:00:00Z", "trialPrice": 71}], "KfMwBobA": [{"currencyCode": "TEzmyoGy", "currencyNamespace": "lC0zoZV3", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1989-02-06T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1982-04-07T00:00:00Z", "expireAt": "1990-03-11T00:00:00Z", "price": 76, "purchaseAt": "1976-11-21T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Aa9CXH5e", "currencyNamespace": "Eqdj01mi", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1985-01-26T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1971-02-04T00:00:00Z", "expireAt": "1998-03-31T00:00:00Z", "price": 1, "purchaseAt": "1995-07-31T00:00:00Z", "trialPrice": 8}, {"currencyCode": "boeuQRSJ", "currencyNamespace": "c1qPd37f", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1980-10-16T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1982-12-02T00:00:00Z", "expireAt": "1994-10-29T00:00:00Z", "price": 45, "purchaseAt": "1982-09-29T00:00:00Z", "trialPrice": 31}], "44Rfskim": [{"currencyCode": "Yg3aOfy6", "currencyNamespace": "U3d2kI0F", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1994-03-19T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-06-15T00:00:00Z", "expireAt": "1994-10-16T00:00:00Z", "price": 15, "purchaseAt": "1989-06-15T00:00:00Z", "trialPrice": 58}, {"currencyCode": "vSDlWeT8", "currencyNamespace": "lbR3IpI6", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1977-10-22T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1999-07-06T00:00:00Z", "expireAt": "1985-04-02T00:00:00Z", "price": 78, "purchaseAt": "1988-01-16T00:00:00Z", "trialPrice": 69}, {"currencyCode": "QODvyKM8", "currencyNamespace": "VvA6jN1K", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1978-03-12T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-09-12T00:00:00Z", "expireAt": "1996-01-15T00:00:00Z", "price": 67, "purchaseAt": "1975-08-06T00:00:00Z", "trialPrice": 88}]}, "saleConfig": {"currencyCode": "p8yFYg3B", "price": 3}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "xGALh8a7", "stackable": true, "status": "INACTIVE", "tags": ["fhlASMY9", "lZSVrXEC", "7qEnVCu0"], "targetCurrencyCode": "GdzEs2U3", "targetNamespace": "quAmpdrl", "thumbnailUrl": "cRo1cjtS", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'osCZA1Yc' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    --storeId 'g4jIDeMi' \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'hAoH2VfP' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 74, "orderNo": "fn9Mh4I6"}' \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'qwJ3Wgrp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'DN0kPzmn' \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'jFr5y579' \
    --namespace $AB_NAMESPACE \
    --storeId 'nuiAboO4' \
    --body '{"carousel": [{"alt": "UtKRoh93", "previewUrl": "C50uOYt7", "thumbnailUrl": "rAIMIGxv", "type": "image", "url": "ipcpPEFW", "videoSource": "generic"}, {"alt": "XvpWUET3", "previewUrl": "XP60WEQz", "thumbnailUrl": "nOgXGe2s", "type": "video", "url": "1yV3sj0g", "videoSource": "youtube"}, {"alt": "pRek1gSa", "previewUrl": "sB3ZiyGH", "thumbnailUrl": "dshpxuYb", "type": "video", "url": "opRrjOFV", "videoSource": "vimeo"}], "developer": "6JqFMmNv", "forumUrl": "S1YVBDND", "genres": ["RPG", "MassivelyMultiplayer", "Strategy"], "localizations": {"X0Rpmuiz": {"announcement": "7Vwp3jDY", "slogan": "4Bqci8xB"}, "EfAUfW99": {"announcement": "C17noaMp", "slogan": "Tic89RKi"}, "2klvCSNH": {"announcement": "nt13gMwk", "slogan": "F4F9ScsI"}}, "platformRequirements": {"inOO1hLD": [{"additionals": "w7BZglrM", "directXVersion": "ViJxAkvi", "diskSpace": "1oStfTNa", "graphics": "5EGIPu1M", "label": "4XysCnit", "osVersion": "0YhrgmYM", "processor": "AXLlTcbM", "ram": "ebI05Zj8", "soundCard": "pMi58c90"}, {"additionals": "YWTruQXt", "directXVersion": "wrmz3y1Y", "diskSpace": "dvPmQTlJ", "graphics": "JAEX1lI8", "label": "Kr9zoQQJ", "osVersion": "H0Yxpd8n", "processor": "vUo7V3St", "ram": "IMVvnm78", "soundCard": "hNb2OIoe"}, {"additionals": "HiJ26wO0", "directXVersion": "bfPv3ezZ", "diskSpace": "cMCn9ex0", "graphics": "CcQGB92a", "label": "mUbAqaIw", "osVersion": "qfMUNTir", "processor": "N5KG5ZFU", "ram": "3MzqBYD1", "soundCard": "yIfTSZD9"}], "m9SwVxc8": [{"additionals": "dMYvaGcN", "directXVersion": "FTcApHy9", "diskSpace": "Vpjktplt", "graphics": "5noMNoKk", "label": "Jp1AvulE", "osVersion": "0lGsCZeM", "processor": "Yv3Ix9ZB", "ram": "2u4HtLTh", "soundCard": "Lsza0tNv"}, {"additionals": "wgVTkHd7", "directXVersion": "7lIjTaVy", "diskSpace": "nQURoGgG", "graphics": "4gAGxasa", "label": "16oA9KUt", "osVersion": "aatfq1MF", "processor": "Iqf8RhQc", "ram": "vQilZgPb", "soundCard": "AFW1aZXr"}, {"additionals": "rTYngLbL", "directXVersion": "jMxTSxcN", "diskSpace": "gC5Uqw9G", "graphics": "k3aTfc3t", "label": "8Z36Jb2L", "osVersion": "7fXItzmZ", "processor": "jjQOVaTj", "ram": "dmvGGpcL", "soundCard": "AJTY2R9s"}], "vXigBiQP": [{"additionals": "UWp7KDtA", "directXVersion": "THZLOtTi", "diskSpace": "IgZoqZ87", "graphics": "eDZPQrN3", "label": "ejggSzmO", "osVersion": "addSM7vN", "processor": "jnBJVzxw", "ram": "GT1gWGw9", "soundCard": "6DJTLT4h"}, {"additionals": "KX9p4Z5E", "directXVersion": "VrR6tvuh", "diskSpace": "A5HHpz23", "graphics": "uJtduyoL", "label": "OTIj7Xj8", "osVersion": "cn5j6Qco", "processor": "OAoqnM4R", "ram": "2dOPnekG", "soundCard": "Gt0nyFSQ"}, {"additionals": "NU9NIb5T", "directXVersion": "pmYvPcid", "diskSpace": "smWoYBAg", "graphics": "mpoDdr7H", "label": "CV8UdkSq", "osVersion": "hsBP1F1z", "processor": "qQ3YuMoX", "ram": "G5XP4yok", "soundCard": "UO2SAc62"}]}, "platforms": ["Android", "MacOS", "IOS"], "players": ["Multi", "MMO", "Coop"], "primaryGenre": "Casual", "publisher": "8OIxyObE", "releaseDate": "1989-04-03T00:00:00Z", "websiteUrl": "tz7fn2vo"}' \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'KMmJdBOr' \
    --namespace $AB_NAMESPACE \
    --storeId 'WJNxHX2f' \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'C7kJfoQU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'PiitkhFT' \
    --namespace $AB_NAMESPACE \
    --storeId '6hh5puBt' \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'u7ybqMAD' \
    --itemId 'NiyxyMZC' \
    --namespace $AB_NAMESPACE \
    --storeId '4V1Zm6X3' \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Q6Ik6Kkj' \
    --itemId 'KzOQxNom' \
    --namespace $AB_NAMESPACE \
    --storeId 'Fcpd0VyW' \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'IeOZhumv' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'Zcb6WHui' \
    --populateBundle 'true' \
    --region 'vDuXBEeE' \
    --storeId '5PNlslQO' \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'mnJLbdPJ' \
    --namespace $AB_NAMESPACE \
    --storeId 'UZm8mdM9' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 56, "comparison": "includes", "name": "vbtaFjHl", "predicateType": "EntitlementPredicate", "value": "73a7dyyf", "values": ["SLfFzJvH", "aFU8njbY", "Cx8q8VXe"]}, {"anyOf": 15, "comparison": "isNot", "name": "y4J78yes", "predicateType": "EntitlementPredicate", "value": "CJr6tuSm", "values": ["RYpaQdtE", "kAhAvg0z", "6jqIzCYO"]}, {"anyOf": 57, "comparison": "isGreaterThan", "name": "V08Y7Dcm", "predicateType": "EntitlementPredicate", "value": "ril09YgY", "values": ["3sKuwDdN", "1O6b9Rwm", "d1iSkiXR"]}]}, {"operator": "and", "predicates": [{"anyOf": 1, "comparison": "isNot", "name": "2viu0RtW", "predicateType": "SeasonPassPredicate", "value": "1vp0Srr3", "values": ["nI5cknX3", "oZeqi34X", "5AY8IZ9X"]}, {"anyOf": 45, "comparison": "isLessThan", "name": "tC1m6xLp", "predicateType": "SeasonTierPredicate", "value": "X5z3sTVG", "values": ["3cTcNIB9", "HXbyIYgg", "vyqNeFj7"]}, {"anyOf": 34, "comparison": "isNot", "name": "7yFQqjjW", "predicateType": "SeasonPassPredicate", "value": "X1gigVPk", "values": ["VG8LuTM2", "AADhUx4m", "2XfID7wm"]}]}, {"operator": "and", "predicates": [{"anyOf": 38, "comparison": "isNot", "name": "OshNjkCG", "predicateType": "EntitlementPredicate", "value": "jZn1yUMj", "values": ["JyHqQA60", "NPXlgmH7", "77sPWemY"]}, {"anyOf": 19, "comparison": "isGreaterThan", "name": "cLd25nUV", "predicateType": "SeasonTierPredicate", "value": "Li1bu4bX", "values": ["hFsl0Shc", "fIpW5PIg", "Ri8pGNVU"]}, {"anyOf": 22, "comparison": "isGreaterThan", "name": "TNyBNwWn", "predicateType": "EntitlementPredicate", "value": "6Ar1rgTk", "values": ["D1xAdKIo", "lFxMjQRM", "qWWobZX9"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'aeo2w5UD' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "lRaWD9gY"}' \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name 'yeKnpBlw' \
    --offset '88' \
    --tag '0oKECLV4' \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "vOBGp59p", "name": "KBrQ29Cc", "status": "INACTIVE", "tags": ["FjSmVdYW", "jwaAhnjE", "05DwmCJu"]}' \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'hHKxCQJz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'dMCPxE7w' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IzuTLg7m", "name": "svGLpnM5", "status": "ACTIVE", "tags": ["GVh68Ip6", "gSmV6X0H", "FrA9vKVS"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'xYO8I4g7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'GrUKUwIA' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '23' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Lo179oXz' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'epaFJ6OJ' \
    --limit '98' \
    --offset '91' \
    --orderNos '["bhNaVZYU", "3r0EW5Lm", "uqOOU0hl"]' \
    --sortBy '5fNH8osj' \
    --startTime '6Oz39yNl' \
    --status 'FULFILLED' \
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
    --orderNo '4ombAcO4' \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'bfPwnSE5' \
    --body '{"description": "M6JY9RMA"}' \
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
    --body '{"dryRun": false, "notifyUrl": "geaRCs9j", "privateKey": "6lrsBfx0"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'Z2Drc4ca' \
    --externalId 'N7soWlue' \
    --limit '63' \
    --notificationSource 'PAYPAL' \
    --notificationType '9P1mF6sf' \
    --offset '19' \
    --paymentOrderNo 'Q7Guyvbt' \
    --startDate 'g7ZnnVxm' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'EXTERNAL' \
    --extTxId 'XGFWrCIi' \
    --limit '31' \
    --offset '1' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "Y9LsWUcH", "currencyNamespace": "y85FB4GH", "customParameters": {"Z5GYtN4d": {}, "xy1bZNVx": {}, "zNXp0hqN": {}}, "description": "GvVS6eMy", "extOrderNo": "tebsKAHG", "extUserId": "KKLhe6vb", "itemType": "MEDIA", "language": "krxi", "metadata": {"DyynCxRm": "MW92ADcE", "dMahA3nW": "LFAUV8y5", "ArE5ALgs": "SMd8dxjH"}, "notifyUrl": "r0kYkXHG", "omitNotification": false, "platform": "LdVlQI0T", "price": 42, "recurringPaymentOrderNo": "2XhFsxcu", "region": "TFEc0VWX", "returnUrl": "57HD6CXE", "sandbox": true, "sku": "ZgYSntXi", "subscriptionId": "ESEGoGt4", "targetNamespace": "gSf98eVf", "targetUserId": "E3UCxkxj", "title": "G4bvcgVI"}' \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId '0JB11Pmm' \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'lnXoTVGw' \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qEADSqJQ' \
    --body '{"extTxId": "CiiTtsfk", "paymentMethod": "sfHaxAmd", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'Nj0D8laV' \
    --body '{"description": "SNvXeUui"}' \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'RdEMyJ3E' \
    --body '{"amount": 70, "currencyCode": "TnV9XQKY", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 67, "vat": 77}' \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'CfZ42qjB' \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Xbox' \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedPlatformOrigins": ["Xbox", "Xbox", "Other"]}' \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["System", "Nintendo", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'Pip8CPha' \
    --limit '64' \
    --offset '7' \
    --source 'IAP' \
    --startTime 'Sw5fwmG6' \
    --status 'SUCCESS' \
    --transactionId 'df8a1qrO' \
    --userId 'g0l4GKJl' \
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
    --body '{"appConfig": {"appName": "1n6ieWMu"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "awZECg7h"}, "extendType": "APP"}' \
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
    --body '{"description": "ZaKm1WWv", "eventTopic": "STESxBqO", "maxAwarded": 16, "maxAwardedPerUser": 27, "namespaceExpression": "WmblKgDH", "rewardCode": "qiPoloVv", "rewardConditions": [{"condition": "acWJohYo", "conditionName": "8VOQCjvA", "eventName": "i1OPkEx5", "rewardItems": [{"duration": 79, "endDate": "1984-06-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rzhxJR1R", "quantity": 99, "sku": "nY1IpPfj"}, {"duration": 69, "endDate": "1979-03-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "p7SVlq4a", "quantity": 87, "sku": "lW1K4F4r"}, {"duration": 25, "endDate": "1991-07-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eqyLCzNX", "quantity": 64, "sku": "n38wLpq5"}]}, {"condition": "vkmeW7UY", "conditionName": "280nx519", "eventName": "aFtZqNnj", "rewardItems": [{"duration": 20, "endDate": "1995-07-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tAiHonPn", "quantity": 12, "sku": "oGX8IljL"}, {"duration": 91, "endDate": "1983-12-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "9cpULW2G", "quantity": 59, "sku": "W8b4L2Ew"}, {"duration": 73, "endDate": "1985-03-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HmSCDHKj", "quantity": 41, "sku": "scKyJ2EP"}]}, {"condition": "pl9OfIxN", "conditionName": "4N2L9Y0H", "eventName": "g1ZnMKQp", "rewardItems": [{"duration": 19, "endDate": "1995-01-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JU0v0Rx4", "quantity": 89, "sku": "JJo4Txm9"}, {"duration": 15, "endDate": "1989-12-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ZblMUc3a", "quantity": 8, "sku": "RmBTk1UK"}, {"duration": 19, "endDate": "1992-03-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ZCwEfUMp", "quantity": 95, "sku": "V4zhpd29"}]}], "userIdExpression": "adCSE2eQ"}' \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'VQKPuv4T' \
    --limit '12' \
    --offset '11' \
    --sortBy '["namespace", "rewardCode:asc", "rewardCode:desc"]' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'G1aTq1Y7' \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '4WIOCyol' \
    --body '{"description": "idSZXaKC", "eventTopic": "MaKwPzxl", "maxAwarded": 85, "maxAwardedPerUser": 98, "namespaceExpression": "JnlyvPRq", "rewardCode": "8ExTG5I3", "rewardConditions": [{"condition": "gYgU40Aj", "conditionName": "6WNkRajS", "eventName": "YycAgaEK", "rewardItems": [{"duration": 96, "endDate": "1984-03-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8Ce9SOZG", "quantity": 25, "sku": "U8qGI4Od"}, {"duration": 15, "endDate": "1989-06-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KMfyC6TS", "quantity": 7, "sku": "1fCcFIWq"}, {"duration": 96, "endDate": "1998-09-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "mJ7JCoLv", "quantity": 47, "sku": "vCKPp7EB"}]}, {"condition": "BUcpJwoq", "conditionName": "nJBFAfS3", "eventName": "C9ga3wDy", "rewardItems": [{"duration": 90, "endDate": "1974-05-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DC8ZtYEk", "quantity": 23, "sku": "wtrPqENi"}, {"duration": 62, "endDate": "1999-11-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Dn5AVwVW", "quantity": 3, "sku": "sFuuYgeI"}, {"duration": 22, "endDate": "1995-06-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7ai5KoBE", "quantity": 68, "sku": "UuydXd1V"}]}, {"condition": "Mx2woQj1", "conditionName": "UgCnUS7n", "eventName": "uxJ1x75Q", "rewardItems": [{"duration": 100, "endDate": "1995-06-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nmb14TKy", "quantity": 69, "sku": "4bd539wK"}, {"duration": 5, "endDate": "1987-06-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EDaK3jXM", "quantity": 53, "sku": "2anPiTGi"}, {"duration": 38, "endDate": "1972-04-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Cuj0WQsN", "quantity": 57, "sku": "ArZVGZEB"}]}], "userIdExpression": "AObvgW6a"}' \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'hn6LUcW4' \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'dTv5YL62' \
    --body '{"payload": {"hAUnTbNR": {}, "NTHCiUSe": {}, "RKh1Ccbb": {}}}' \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'ch0LmHDM' \
    --body '{"conditionName": "KSoTmHRX", "userId": "XjAEc3Zo"}' \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '2KIkDWZi' \
    --limit '20' \
    --offset '25' \
    --start '7LVfXXSk' \
    --storeId 'wqc0tcOO' \
    --viewId 'XoUMoCpz' \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'X3U4qJvB' \
    --body '{"active": false, "displayOrder": 31, "endDate": "1979-03-02T00:00:00Z", "ext": {"iSxVWW95": {}, "hfyjWK03": {}, "ZOjxYM0b": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 84, "itemCount": 29, "rule": "SEQUENCE"}, "items": [{"id": "l39ZnEJ1", "sku": "Gn1x7iR2"}, {"id": "OzsmpF6U", "sku": "1B5fNbZb"}, {"id": "iikUTN5B", "sku": "kBoowB7y"}], "localizations": {"2DhobT8t": {"description": "gecGLdpf", "localExt": {"HkeUUvId": {}, "854nrY4E": {}, "jFrGJHjK": {}}, "longDescription": "RK8op004", "title": "jZhncNvI"}, "ZS0je7JC": {"description": "rnQ25L4o", "localExt": {"dSzxA9c7": {}, "zC77aCtb": {}, "MOtruGpY": {}}, "longDescription": "4ozHdCJp", "title": "zWX4RHSi"}, "a9z7mr5N": {"description": "I2GFipI0", "localExt": {"FOUSyBgD": {}, "jOl2EHQU": {}, "RMTFDHdq": {}}, "longDescription": "UAJySRJL", "title": "Rn64h8ip"}}, "name": "CXx6ag5k", "rotationType": "FIXED_PERIOD", "startDate": "1971-02-19T00:00:00Z", "viewId": "DJRcYO38"}' \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'zdLspWWP' \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'ZyWTFwju' \
    --storeId 'mXorVHtz' \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'CKOEn9fF' \
    --storeId 'lQeweYsE' \
    --body '{"active": true, "displayOrder": 66, "endDate": "1995-08-22T00:00:00Z", "ext": {"u1NUD3Hc": {}, "WVq4nX4T": {}, "lzE1MRiM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 11, "itemCount": 36, "rule": "SEQUENCE"}, "items": [{"id": "FFhN6Q97", "sku": "7YJP1qV6"}, {"id": "R0BwswHc", "sku": "hmdIjOcd"}, {"id": "v2l1g6oM", "sku": "5sj7sfdy"}], "localizations": {"PmJzJzzm": {"description": "tNXj5m4O", "localExt": {"pthq9oSX": {}, "BUSrxsU9": {}, "XQqRFHMZ": {}}, "longDescription": "CJBzK5CM", "title": "b332aCAF"}, "xnUQKlOH": {"description": "Hoy54TPm", "localExt": {"SeUI1XhL": {}, "Za94hVFd": {}, "Sqc4SAoS": {}}, "longDescription": "PB8PPCLA", "title": "oNYUyGJo"}, "WTSmWKfm": {"description": "Kx5aLhjK", "localExt": {"RAROBFLL": {}, "AJNMzeWg": {}, "ik48XQNR": {}}, "longDescription": "A9fTXdIf", "title": "pP7JCMPY"}}, "name": "KGwMecHG", "rotationType": "CUSTOM", "startDate": "1995-03-17T00:00:00Z", "viewId": "XJCiBqm0"}' \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xqaQ7J2r' \
    --storeId 'mCvvSnGd' \
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
    --body '{"defaultLanguage": "jv4WP3WA", "defaultRegion": "VLMG3ZGh", "description": "FS7R4Ivr", "supportedLanguages": ["XI6YCgWc", "fYEN1kOc", "lG4tahp2"], "supportedRegions": ["TlPBDkkE", "J83Dm9Qq", "PkWvoarM"], "title": "K0xXVOkN"}' \
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
    --body '{"catalogType": "VIEW", "fieldsToBeIncluded": ["mib6DHNv", "sZPVLOUF", "fNWiTXX1"], "idsToBeExported": ["LT48nwSe", "6HspOpmh", "0LU2opOm"], "storeId": "GEZ7T0Kn"}' \
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
    --storeId 'kbGj8gqU' \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'rrypjHc8' \
    --body '{"defaultLanguage": "vIK2LAVN", "defaultRegion": "r6e1HldW", "description": "FC5Pnc4d", "supportedLanguages": ["iqqjALuG", "I0XannxC", "6Bup4f6l"], "supportedRegions": ["EXG02jhP", "mNgDbxjj", "JEhbIfxm"], "title": "zifwLM6F"}' \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZJssNW5w' \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId '4VAPlIcY' \
    --action 'DELETE' \
    --itemSku 'MH90lsSp' \
    --itemType 'SEASON' \
    --limit '24' \
    --offset '6' \
    --selected 'true' \
    --sortBy '["createdAt", "updatedAt:asc", "updatedAt"]' \
    --status 'UNPUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'GjGaaveC' \
    --updatedAtStart '0h6NfC1T' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'zk9XMeFb' \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'Ki0M6sDl' \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'PQhKoHpE' \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'UmkqIaLB' \
    --action 'UPDATE' \
    --itemSku 'u4jLIvS9' \
    --itemType 'EXTENSION' \
    --selected 'false' \
    --type 'SECTION' \
    --updatedAtEnd 'RU2t645w' \
    --updatedAtStart 'R6mCGlp4' \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '5uvtB5K9' \
    --action 'DELETE' \
    --itemSku 'RwPNqNDb' \
    --itemType 'CODE' \
    --type 'VIEW' \
    --updatedAtEnd 'yyOGLulA' \
    --updatedAtStart 'VqRaDZDf' \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '8r0B0j00' \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'JAx6gZ7f' \
    --namespace $AB_NAMESPACE \
    --storeId 'pV9m3aNF' \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'qpSzYIhT' \
    --namespace $AB_NAMESPACE \
    --storeId 'OWxE8BSe' \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'QbNqfup2' \
    --targetStoreId 'BMuy2ND5' \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'n6fxBzus' \
    --end 'p5L18L5N' \
    --limit '30' \
    --offset '1' \
    --sortBy 'Ej8AoKnS' \
    --start 'XCxwrGpN' \
    --success 'true' \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'Kr84MShg' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'QZzkFs5b' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'eFywV8Ms' \
    --limit '71' \
    --offset '39' \
    --sku 'zjNYDZVi' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId '4lM5RtpU' \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'JIwo6W8s' \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'O7zip9yZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ZnpZQgvb' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "11QnJeRB"}' \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'DESKYT1x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'BdOGG5VV' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 81, "orderNo": "KLr1nzzc"}' \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 90, "currencyCode": "FColcs2o", "expireAt": "1996-08-04T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "9MxEY0em", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "R5FX4IgH", "entitlementOrigin": "Xbox", "itemIdentity": "OcWAEEeq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "bYC8QVrn"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 98, "currencyCode": "7ZKzBMLb", "expireAt": "1977-11-25T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "XW74sdOL", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "9rny3OXP", "entitlementOrigin": "Playstation", "itemIdentity": "8L8ugWhj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 20, "entitlementId": "c9adQitk"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 93, "currencyCode": "XD8SwHDZ", "expireAt": "1982-11-29T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "V0Uf9Yq0", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "r5bWvLB0", "entitlementOrigin": "Steam", "itemIdentity": "igXN2PLS", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "01OQFhDB"}, "type": "CREDIT_WALLET"}], "userId": "Rmivhogn"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 40, "currencyCode": "8BwMepcx", "expireAt": "1990-03-05T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "bqwnDmtZ", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "iI4xdyRv", "entitlementOrigin": "Twitch", "itemIdentity": "lpVE5RKU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 28, "entitlementId": "DXTQ0D4x"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 63, "currencyCode": "RQDxz457", "expireAt": "1993-05-02T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "8Ghi6JY0", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "IqDBDu7W", "entitlementOrigin": "Epic", "itemIdentity": "w5kInXMb", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "2i24suxW"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 29, "currencyCode": "bPW51YIL", "expireAt": "1975-10-08T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "O4CSkxFc", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "5MY5jVqs", "entitlementOrigin": "Nintendo", "itemIdentity": "ZsyW7Zvk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "WbWC7LeX"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "P7vmFyiO"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 86, "currencyCode": "dGYKtMJK", "expireAt": "1973-09-21T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "bV8MbDWd", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "hQI3vxrJ", "entitlementOrigin": "GooglePlay", "itemIdentity": "FNMT0eZR", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 46, "entitlementId": "XdjxMWcB"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 2, "currencyCode": "gnXD0hEi", "expireAt": "1972-05-31T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "tTaUQyz6", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 40, "entitlementCollectionId": "dBcG7Wkr", "entitlementOrigin": "Steam", "itemIdentity": "wXTJ1pRM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "2axtjvBe"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 31, "currencyCode": "8qvG0oBm", "expireAt": "1991-11-01T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "M7LUnL5O", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "FxBp9UYd", "entitlementOrigin": "Oculus", "itemIdentity": "W1cr7TW0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "elo228e2"}, "type": "DEBIT_WALLET"}], "userId": "3zC7ahTD"}], "metadata": {"TOm6s0O6": {}, "JERUEJwm": {}, "Xi7JZtLy": {}}, "needPreCheck": false, "transactionId": "hhbQGxl5", "type": "quUHWs3U"}' \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '92' \
    --status 'INIT' \
    --type '2CFx8123' \
    --userId 'cNMMFv2W' \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'pLFHarjH' \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'eKFGrEhw' \
    --body '{"achievements": [{"id": "3f06p3Cx", "value": 44}, {"id": "zPnHpSeH", "value": 16}, {"id": "gaoWmtQr", "value": 23}], "steamUserId": "0x1Ip5Vz"}' \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '16MekjBt' \
    --xboxUserId 'GqM4Z6Wa' \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '6BqCciSY' \
    --body '{"achievements": [{"id": "CyGgOpHL", "percentComplete": 15}, {"id": "nZpI8oVK", "percentComplete": 13}, {"id": "V52IqFWK", "percentComplete": 89}], "serviceConfigId": "Cjpf98iF", "titleId": "rWhKEork", "xboxUserId": "3NbwOAwc"}' \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'HLm0ROdr' \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'dH5hjXlW' \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '08tCiyzb' \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'iQ4WPrxr' \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dj7jnipo' \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'hTH97k3M' \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'MDOGIUhR' \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3Y8eihor' \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'axDZ2HK7' \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'tACwpwT6' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'EIlsnyAH' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'QQkkOSIq' \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --collectionId 'WmAhdYh2' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'wP5XGCu2' \
    --features '["D2QhQSxr", "wsNDYu7r", "LRFKvFyh"]' \
    --fuzzyMatchName 'true' \
    --itemId '["PsccXlMk", "rN3YoGqh", "yvGdiokb"]' \
    --limit '11' \
    --offset '45' \
    --origin 'System' \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pXwAxzY8' \
    --body '[{"collectionId": "Q6RjhgB6", "endDate": "1995-07-27T00:00:00Z", "grantedCode": "tyBAMhFW", "itemId": "BnTKRDgK", "itemNamespace": "ep38rQaF", "language": "LCJ_xArB-430", "origin": "Twitch", "quantity": 49, "region": "amfq6xgb", "source": "IAP", "startDate": "1991-09-04T00:00:00Z", "storeId": "mcZIsPHE"}, {"collectionId": "0xVRAVT6", "endDate": "1972-04-12T00:00:00Z", "grantedCode": "7FW0luDL", "itemId": "Ecsfz7sE", "itemNamespace": "CKIzbaI5", "language": "Oojh_267", "origin": "Steam", "quantity": 77, "region": "Lq2HTCqn", "source": "GIFT", "startDate": "1998-12-28T00:00:00Z", "storeId": "cMLNz2nf"}, {"collectionId": "66yGS54P", "endDate": "1973-10-16T00:00:00Z", "grantedCode": "lV4xIRDH", "itemId": "U4l5kSTZ", "itemNamespace": "vsywbY2I", "language": "lvA_YQRQ_Up", "origin": "Epic", "quantity": 39, "region": "6UEt4P24", "source": "REFERRAL_BONUS", "startDate": "1997-11-06T00:00:00Z", "storeId": "Y6UCSydp"}]' \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'O6e1OP66' \
    --activeOnly 'false' \
    --appId 'f2u1exgo' \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'NsmLRRm1' \
    --activeOnly 'false' \
    --limit '33' \
    --offset '26' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'tQXnw5NB' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform '8zzWZm15' \
    --itemId 'gcddjrOI' \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'cyn0SsqR' \
    --ids '["jwQ6B7ep", "5bDoECgj", "ZDgJk09i"]' \
    --platform 'ujWJgDHq' \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'djWNbMyf' \
    --activeOnly 'false' \
    --entitlementClazz 'MEDIA' \
    --platform 'fmCYG9ex' \
    --sku 'IHH9luvQ' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'rqIJeBuY' \
    --appIds '["w9kbeedI", "9i7yKIN5", "q9v9ZJwJ"]' \
    --itemIds '["P6FJjsr9", "dbYk78lC", "jyUXyDfF"]' \
    --platform '2bfZAjwm' \
    --skus '["MHAEQKag", "2L6J69T4", "ANBmeRoq"]' \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'OgXk16y7' \
    --platform 'tn3vAke5' \
    --itemIds '["Bkgmey0g", "hCgOIH9o", "eqXP2dVO"]' \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'dH9H8kmm' \
    --appId 'MYqOOFTc' \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'jEwFIXP9' \
    --entitlementClazz 'CODE' \
    --platform 'PaUueNXf' \
    --itemId 'qKUYu2Fc' \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'X1hzCYkJ' \
    --ids '["I2xKzbcw", "MqNhPtr5", "xyD9fCTc"]' \
    --platform 'lQrBlasR' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Sj6Qc4Xw' \
    --entitlementClazz 'SUBSCRIPTION' \
    --platform 'XxYxdKgp' \
    --sku 'wojfOWIN' \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Rvbc5HC1' \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'kiDwaLCw' \
    --entitlementIds 'dMf2l0J7' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'W9O1jRct' \
    --namespace $AB_NAMESPACE \
    --userId 'pyDXyoms' \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'Ucy9hxsh' \
    --namespace $AB_NAMESPACE \
    --userId 'PqBynxfj' \
    --body '{"collectionId": "Ga3Dxkax", "endDate": "1975-08-20T00:00:00Z", "nullFieldList": ["Jj6aJZsv", "RF19KzUo", "qnXgKSGH"], "origin": "IOS", "reason": "xbcyNj2u", "startDate": "1973-11-27T00:00:00Z", "status": "CONSUMED", "useCount": 32}' \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'Vru5xqV2' \
    --namespace $AB_NAMESPACE \
    --userId 'd71nlt1n' \
    --body '{"options": ["AIDpQgtq", "g5axtAFy", "ykqOvr4e"], "platform": "zjNOQNdJ", "requestId": "VGCQxDqt", "useCount": 56}' \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'yfz73O7A' \
    --namespace $AB_NAMESPACE \
    --userId 'S3jivXKI' \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId '4E2nt4LE' \
    --namespace $AB_NAMESPACE \
    --userId 'XUOonpkr' \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'C7umpoI2' \
    --namespace $AB_NAMESPACE \
    --userId 'HSPiOixt' \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'bQ9rG3MO' \
    --namespace $AB_NAMESPACE \
    --userId '9n0SzkBG' \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'CLmwqhPQ' \
    --namespace $AB_NAMESPACE \
    --userId '6gkMcNG2' \
    --body '{"reason": "fzylviTd", "useCount": 45}' \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'eILeFUOo' \
    --namespace $AB_NAMESPACE \
    --userId 'JwIpHM8k' \
    --quantity '37' \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'OuXLLFSu' \
    --namespace $AB_NAMESPACE \
    --userId 'KG6x2Vw4' \
    --body '{"platform": "XQdlYKVf", "requestId": "PkiBV70t", "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'jbTUhP3R' \
    --body '{"duration": 6, "endDate": "1998-02-04T00:00:00Z", "entitlementCollectionId": "xNAsP5DO", "entitlementOrigin": "Playstation", "itemId": "jqotgQvx", "itemSku": "4fA6yH0x", "language": "op0DrcMY", "metadata": {"SIrGVApB": {}, "0LLMKlg8": {}, "796tJGL7": {}}, "order": {"currency": {"currencyCode": "wuTnvPAT", "currencySymbol": "QBVUxn8Z", "currencyType": "REAL", "decimals": 27, "namespace": "WRcfe29E"}, "ext": {"3NQyN0wf": {}, "dl2EgSP3": {}, "s59HmV4g": {}}, "free": false}, "orderNo": "Jh2onQny", "origin": "Oculus", "overrideBundleItemQty": {"Z9Yq2gqr": 83, "Rp8agIag": 11, "Q2TY58vn": 65}, "quantity": 74, "region": "jOV4T9ds", "source": "ACHIEVEMENT", "startDate": "1981-04-25T00:00:00Z", "storeId": "Sy8guVdi"}' \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'KVqCe9J7' \
    --body '{"code": "UtLcKycY", "language": "cT_Xu", "region": "cAmStg4o"}' \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId '81gZe6NC' \
    --body '{"itemId": "s8YYLwut", "itemSku": "kr2nB9wr", "quantity": 41}' \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId '33uK3R8Y' \
    --body '{"entitlementCollectionId": "Kbbx2e0b", "entitlementOrigin": "IOS", "metadata": {"AmA95hX9": {}, "oTjEbzyW": {}, "xCC8ercJ": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "uhQSIvXQ", "namespace": "xkauSfJi"}, "item": {"itemId": "y0Ehaepw", "itemSku": "XsERfdvR", "itemType": "yF5lUYDn"}, "quantity": 5, "type": "ITEM"}, {"currency": {"currencyCode": "IMpfKbwc", "namespace": "iXTuUuAd"}, "item": {"itemId": "FlqnDHqv", "itemSku": "2fykl6Px", "itemType": "ZM5xAeLC"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "k2TAu0XJ", "namespace": "jz5QwJaj"}, "item": {"itemId": "mnRlJyDs", "itemSku": "DILLT9ou", "itemType": "iJCXdKSE"}, "quantity": 50, "type": "CURRENCY"}], "source": "PROMOTION", "transactionId": "T4lpIc3a"}' \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'gglzq8nv' \
    --endTime 'KpFrEFap' \
    --limit '16' \
    --offset '34' \
    --productId 'WyBTEl2u' \
    --startTime 'fi0Jm5cs' \
    --status 'FAILED' \
    --type 'TWITCH' \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '9HytKKUm' \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'CYq5DftN' \
    --endTime 'efVUmqh7' \
    --limit '37' \
    --offset '14' \
    --startTime '7T0FmFTg' \
    --status 'PENDING' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'NBTd106i' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "dzHt", "productId": "LCTZoiHW", "region": "Rcd2O7e3", "transactionId": "RtRFQv1N", "type": "XBOX"}' \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'VAiOAJz1' \
    --itemId 'YXpWlYDQ' \
    --limit '71' \
    --offset '85' \
    --status 'REFUNDING' \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId '4XaqOLrN' \
    --body '{"currencyCode": "yAZMKd1t", "currencyNamespace": "bhJKz3Jy", "discountedPrice": 98, "entitlementPlatform": "GooglePlay", "ext": {"a8cBhpch": {}, "WyS8S6h7": {}, "6S11QdMA": {}}, "itemId": "7hNJ7Too", "language": "OGfF4f4S", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 7, "quantity": 22, "region": "fFayrOLA", "returnUrl": "rMXnu2So", "sandbox": true, "sectionId": "yV8rVv4L"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'sshDWEb2' \
    --itemId 'm43cU0yt' \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '1zL4TTWO' \
    --userId 'Rj0xgW05' \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'YHNpRlYO' \
    --userId '2qo24JYG' \
    --body '{"status": "REFUNDING", "statusReason": "T1Uu2d5Z"}' \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'hmQUv4Zi' \
    --userId 'Ubh8EDGS' \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'R09TJ64I' \
    --userId 'poiOIKnq' \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '2BLaJ7st' \
    --userId 'il9CewOW' \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 's3LyAtJ3' \
    --userId 'yXbCORgP' \
    --body '{"additionalData": {"cardSummary": "ZpOExWtC"}, "authorisedTime": "1975-08-29T00:00:00Z", "chargebackReversedTime": "1982-07-20T00:00:00Z", "chargebackTime": "1996-10-23T00:00:00Z", "chargedTime": "1996-01-06T00:00:00Z", "createdTime": "1991-05-30T00:00:00Z", "currency": {"currencyCode": "EZ0wCsgo", "currencySymbol": "o72D8d39", "currencyType": "VIRTUAL", "decimals": 18, "namespace": "pj5E7pm1"}, "customParameters": {"pJFPSA1d": {}, "zXS0tKew": {}, "KiGtYNmy": {}}, "extOrderNo": "ooaW8SV1", "extTxId": "HIa8KQYJ", "extUserId": "mS24qhTB", "issuedAt": "1990-11-07T00:00:00Z", "metadata": {"r0qtTLYi": "uCtcXRGM", "gNscxS9X": "r8OipkOd", "rI3ylLgh": "wnyvPSsT"}, "namespace": "RDDPYB2V", "nonceStr": "HiWdHz8o", "paymentMethod": "7GhPaQFF", "paymentMethodFee": 34, "paymentOrderNo": "9i4W6e2E", "paymentProvider": "ALIPAY", "paymentProviderFee": 38, "paymentStationUrl": "du1ql3Td", "price": 46, "refundedTime": "1989-05-13T00:00:00Z", "salesTax": 25, "sandbox": false, "sku": "MrwM4gdg", "status": "DELETED", "statusReason": "YfGXAhre", "subscriptionId": "GmHIxOm8", "subtotalPrice": 20, "targetNamespace": "rNIS5rxL", "targetUserId": "wRxty7wk", "tax": 41, "totalPrice": 19, "totalTax": 79, "txEndTime": "1994-06-26T00:00:00Z", "type": "LmmHiYVk", "userId": "oLXkMhXA", "vat": 86}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'brrasQnI' \
    --userId 'iwAbmFaM' \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dXuCVLTI' \
    --body '{"currencyCode": "KZ69hFVJ", "currencyNamespace": "GY9AiRdv", "customParameters": {"8rAu8RyD": {}, "LOtfyCYp": {}, "vlEcXveM": {}}, "description": "iomXxT8m", "extOrderNo": "P8MkQCJQ", "extUserId": "5UVylf76", "itemType": "MEDIA", "language": "tB_ixcw", "metadata": {"0G3LJ205": "6zYN3gd7", "p29E0ssf": "8gPCGwJP", "RY9BKuP3": "XZRuoyqd"}, "notifyUrl": "XnjPhWu6", "omitNotification": false, "platform": "UZgki7Sg", "price": 17, "recurringPaymentOrderNo": "EwWPqdkK", "region": "DsPbbvlM", "returnUrl": "RuxN5D7e", "sandbox": false, "sku": "177PipsV", "subscriptionId": "IWTo15nY", "title": "SNg3n7XQ"}' \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MqJcCYz5' \
    --userId 'ZBC6bOwU' \
    --body '{"description": "qduImHZF"}' \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'pLz8MNLW' \
    --body '{"code": "VcEFvdBp", "orderNo": "BfsZS4fP"}' \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'NwfFHioM' \
    --body '{"meta": {"uH5kSoJA": {}, "PP0lBqEj": {}, "Ui9EX2ZQ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "Av2hhV8j", "namespace": "rGuckUMe"}, "entitlement": {"entitlementId": "VTRBU6MO"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "kdwc7UYQ", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "neNhZy3I", "namespace": "AVjqGeYk"}, "entitlement": {"entitlementId": "kVS8yHoU"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "CFGziqrm", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "h3J6X2kB", "namespace": "7T2QJZ3S"}, "entitlement": {"entitlementId": "zE8nbniC"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "Z2E3w12k", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 6, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "bxrtmczI"}' \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'EOoT4ZFe' \
    --body '{"gameSessionId": "HE8acVwz", "payload": {"LaZB9p6f": {}, "ikxzD5Gj": {}, "PaWFgdNO": {}}, "scid": "0h8NJV6U", "sessionTemplateName": "dIKkVUfh"}' \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '08F2rP0W' \
    --chargeStatus 'SETUP' \
    --itemId 'QyJAmIj8' \
    --limit '21' \
    --offset '54' \
    --sku 'pKqLr1HG' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'KzZUPQvl' \
    --excludeSystem 'false' \
    --limit '95' \
    --offset '1' \
    --subscriptionId 'zz0sACI7' \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3tDdgN3K' \
    --body '{"grantDays": 33, "itemId": "bLcgrrFq", "language": "CDkOF9F3", "reason": "72OWff3R", "region": "1wXmg2A6", "source": "gu0GReIB"}' \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IvOfTdx1' \
    --itemId '52gsKrV5' \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'bm3PCov6' \
    --userId 'Vo5xmPTA' \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'PgKFCM6U' \
    --userId 'J99Eo8Fi' \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'RwSV9qTC' \
    --userId 'pvBNEWGE' \
    --force 'true' \
    --body '{"immediate": false, "reason": "pfISF7I6"}' \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VuKVPkE5' \
    --userId 'kBARZJNV' \
    --body '{"grantDays": 20, "reason": "vMOS6Qf8"}' \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'cLCfCzgU' \
    --userId 'E9KYATtw' \
    --excludeFree 'false' \
    --limit '27' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId '60IVccon' \
    --userId 'ODoKEUeN' \
    --body '{"additionalData": {"cardSummary": "zA90FhmA"}, "authorisedTime": "1986-09-25T00:00:00Z", "chargebackReversedTime": "1978-09-05T00:00:00Z", "chargebackTime": "1998-12-08T00:00:00Z", "chargedTime": "1996-10-08T00:00:00Z", "createdTime": "1995-03-31T00:00:00Z", "currency": {"currencyCode": "k8kqxqCg", "currencySymbol": "QqkgHUOx", "currencyType": "VIRTUAL", "decimals": 58, "namespace": "SsnKJZbP"}, "customParameters": {"Ou3NuloW": {}, "IKpLSACF": {}, "5RZ57Sv5": {}}, "extOrderNo": "nOdHmM78", "extTxId": "D8MvosQk", "extUserId": "YeBUFAXE", "issuedAt": "1992-03-01T00:00:00Z", "metadata": {"PrxCpLH9": "dr7606LO", "peUSw8qc": "hVVyund1", "Y5MoNWqf": "xIYTNseb"}, "namespace": "omFHNZVx", "nonceStr": "DJQdLxBD", "paymentMethod": "UiLVAdvJ", "paymentMethodFee": 72, "paymentOrderNo": "gBJT6xiU", "paymentProvider": "CHECKOUT", "paymentProviderFee": 1, "paymentStationUrl": "HtD41ogS", "price": 27, "refundedTime": "1998-07-20T00:00:00Z", "salesTax": 60, "sandbox": true, "sku": "MwrMlfX9", "status": "INIT", "statusReason": "OC6QIvIg", "subscriptionId": "4YZlnAXz", "subtotalPrice": 76, "targetNamespace": "xOn4ZRYw", "targetUserId": "CRqxIedJ", "tax": 41, "totalPrice": 90, "totalTax": 38, "txEndTime": "1995-09-09T00:00:00Z", "type": "FpBKNcjd", "userId": "vqgcQ7xo", "vat": 15}' \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'AWCzsUzs' \
    --namespace $AB_NAMESPACE \
    --userId '9hkFm87S' \
    --body '{"count": 93, "orderNo": "SkIReLDl"}' \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'JyLv6S09' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'hOTOjf0f' \
    --namespace $AB_NAMESPACE \
    --userId 'swbwUroA' \
    --body '{"allowOverdraft": true, "amount": 7, "balanceOrigin": "Other", "balanceSource": "OTHER", "metadata": {"UKgJTbNq": {}, "oBNhIdVV": {}, "ggqdWOoT": {}}, "reason": "uNLVvVAb"}' \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'bO46qrOG' \
    --namespace $AB_NAMESPACE \
    --userId 'rRvmwTyK' \
    --limit '45' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '2hunaeMV' \
    --namespace $AB_NAMESPACE \
    --userId '3jqzWlgv' \
    --request '{"amount": 50, "debitBalanceSource": "PAYMENT", "metadata": {"CmqS4vB7": {}, "HtMpCnsH": {}, "46ZX5hwa": {}}, "reason": "xWUXbizU", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'dVsApJJp' \
    --namespace $AB_NAMESPACE \
    --userId 'XnA63tY5' \
    --body '{"amount": 94, "expireAt": "1987-10-04T00:00:00Z", "metadata": {"T4GE14W2": {}, "bEcOsHDv": {}, "6v7yHCDI": {}}, "origin": "Oculus", "reason": "uM6kN3Xd", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'ftvRp6l0' \
    --namespace $AB_NAMESPACE \
    --userId 'UgdPJaU9' \
    --request '{"amount": 7, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"1IdgsT5u": {}, "87Gx5KHs": {}, "ybax1UhP": {}}, "reason": "tbLojT9m", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'auWITtGT' \
    --namespace $AB_NAMESPACE \
    --userId 'DUyyJpXT' \
    --body '{"amount": 100, "metadata": {"tpMw26ck": {}, "uXCfrpFR": {}, "PU1YEy28": {}}, "walletPlatform": "Epic"}' \
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
    --storeId 'F9FK5uK4' \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'zceelE4v' \
    --body '{"displayOrder": 79, "localizations": {"duWRTnlj": {"description": "ItzVWU6O", "localExt": {"K9HzXx2T": {}, "5iMTLaGT": {}, "cAgioInT": {}}, "longDescription": "cmbm53tO", "title": "19q01H28"}, "H09gLndv": {"description": "MOb7bU1A", "localExt": {"JkZeHwhd": {}, "GR5wWa7B": {}, "QnNoqdcd": {}}, "longDescription": "rFky67B9", "title": "Yi9nsy0e"}, "PD3HY2ds": {"description": "Zbq4dSl7", "localExt": {"BvRu4zjV": {}, "VQSUBUwk": {}, "lhhsBisq": {}}, "longDescription": "dPpnBPQy", "title": "hplj8rkP"}}, "name": "kWUUQmj5"}' \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '1FhMjUkm' \
    --storeId '5efl6nFT' \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'pX1HwF2Y' \
    --storeId 'ulvG4bRa' \
    --body '{"displayOrder": 21, "localizations": {"X9zv7RRm": {"description": "loVPCNUi", "localExt": {"itbPO4zD": {}, "vuLGnyy8": {}, "gvy8wSi4": {}}, "longDescription": "HF2ljCY8", "title": "cGs3BYqc"}, "QEwi15os": {"description": "X2NeAQYl", "localExt": {"lj2WKqOt": {}, "Ow9caLZ0": {}, "cpLC1wNL": {}}, "longDescription": "RrzprjzM", "title": "uJeyJg2R"}, "ER9hqX0O": {"description": "mhIzXyS6", "localExt": {"utHZlmOF": {}, "BPpswwSO": {}, "Eg6eRZJx": {}}, "longDescription": "MonSOSdR", "title": "0yRZX6Jj"}}, "name": "FErSqrw9"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'rjGFEOxj' \
    --storeId 'e0EvW8Vt' \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 25, "expireAt": "1983-12-08T00:00:00Z", "metadata": {"Iak2Q93m": {}, "bBQ9bk56": {}, "IqOx2q7u": {}}, "origin": "GooglePlay", "reason": "CkQV4fd7", "source": "TRADE"}, "currencyCode": "FIz9neGb", "userIds": ["OsNEBQ31", "D8CmOcNt", "AB4q8wQj"]}, {"creditRequest": {"amount": 88, "expireAt": "1979-09-24T00:00:00Z", "metadata": {"PutDnjvU": {}, "kjmvpusX": {}, "Siq7ux3m": {}}, "origin": "GooglePlay", "reason": "xaKh4uHR", "source": "IAP"}, "currencyCode": "d0L0m6CB", "userIds": ["vb4r4YF3", "yWZBiw2T", "yNR8HIQ8"]}, {"creditRequest": {"amount": 35, "expireAt": "1978-09-21T00:00:00Z", "metadata": {"lW9jhalV": {}, "HUO9zX8k": {}, "QDrq9fUs": {}}, "origin": "Oculus", "reason": "jPCmAXUx", "source": "REFERRAL_BONUS"}, "currencyCode": "KiDd27G6", "userIds": ["zRWSJm50", "6ZPR32ws", "pnlDujV6"]}]' \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "je4pxm9N", "request": {"allowOverdraft": false, "amount": 63, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"wacDKoqg": {}, "pukBbgas": {}, "w2W6nPmi": {}}, "reason": "MbOsXa59"}, "userIds": ["3XQdB9pH", "12jQjy3V", "hcgkjPf1"]}, {"currencyCode": "Az4m7lQn", "request": {"allowOverdraft": false, "amount": 75, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"MTAbnLWA": {}, "KJCfLNAX": {}, "tJFNN2QD": {}}, "reason": "X1iKjB2R"}, "userIds": ["DSR8JBHd", "jYqcLi7t", "ELMZPj5Y"]}, {"currencyCode": "846mdCHQ", "request": {"allowOverdraft": true, "amount": 11, "balanceOrigin": "GooglePlay", "balanceSource": "PAYMENT", "metadata": {"4xcCZ5xP": {}, "F6BU0oAK": {}, "n0yrD3op": {}}, "reason": "4bvhE1p7"}, "userIds": ["cSjDRLuR", "rhA2XU0n", "flgJeqzJ"]}]' \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'BsEX0YeH' \
    --end 'IWaPBEf7' \
    --start 'sCGfB549' \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["W5w9yVX5", "5xVee706", "rZTQYe6C"], "apiKey": "0UyAfaC8", "authoriseAsCapture": true, "blockedPaymentMethods": ["sowt2YdG", "RBjNUETh", "HR9sFSn7"], "clientKey": "Bo3EfVbF", "dropInSettings": "kF63qCtP", "liveEndpointUrlPrefix": "WfU12Nz8", "merchantAccount": "gBimzEbI", "notificationHmacKey": "FFgq25k0", "notificationPassword": "kW7tvtoq", "notificationUsername": "E2unu00S", "returnUrl": "uqNQfOSb", "settings": "wQV5ZLAl"}' \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "mRJz4NTH", "privateKey": "KbkyrpWy", "publicKey": "KpXNB896", "returnUrl": "0NN76XMj"}' \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "Ac9eLtRx", "secretKey": "azxMxfAM"}' \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'p8vOVxZv' \
    --region 'BwbIvovH' \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "HnE90QQT", "clientSecret": "rYaCxUML", "returnUrl": "ye8PMuGc", "webHookId": "V2Ktchfy"}' \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethodTypes": ["GadE0xqZ", "giw9teJ1", "DEooF3sT"], "publishableKey": "fNnKUwVi", "secretKey": "sCvzXPjg", "webhookSecret": "KLyWezti"}' \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "gtupYKWk", "key": "dInSPzA6", "mchid": "4ara1Pc3", "returnUrl": "Ehf9fPAQ"}' \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "YUmTVE3y", "flowCompletionUrl": "XuNQb3FK", "merchantId": 29, "projectId": 64, "projectSecretKey": "fHxktn41"}' \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'hAOn5q9A' \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'LuAGGtKB' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["o6T7yWr3", "Tu0AYikp", "RoSppunc"], "apiKey": "Mw0TIKFK", "authoriseAsCapture": false, "blockedPaymentMethods": ["iPh06FBQ", "RzcCVs0K", "RjLWORGT"], "clientKey": "zeLWFC3b", "dropInSettings": "BFBPGIDQ", "liveEndpointUrlPrefix": "GDeQDP22", "merchantAccount": "hFtNgfea", "notificationHmacKey": "DNNW4TCz", "notificationPassword": "TTmbfa6r", "notificationUsername": "rBIHLicR", "returnUrl": "48xajiNi", "settings": "St8OpFhl"}' \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'jXKDWyKz' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'DCystfNX' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "3wT0263C", "privateKey": "HEyo6mPW", "publicKey": "4sFAt5ak", "returnUrl": "dLvAzyIy"}' \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'ZX51AVJ3' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'wXRUSqP7' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"publicKey": "x9yDDYy1", "secretKey": "QSbiw9Sn"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'rBUSU3kt' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'vwJ096cU' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "C95ByoeW", "clientSecret": "tm8sm7PN", "returnUrl": "yn0DcHVA", "webHookId": "uONKBICm"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'Oz271Sjb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'LlnwXCiR' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["vezGeke8", "PBDBY0SY", "KEBr3Tf2"], "publishableKey": "nmyTPaZ7", "secretKey": "11W1vPjg", "webhookSecret": "6FQjU3Ly"}' \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'Lh3VFIvy' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'c4w78Ubs' \
    --validate 'true' \
    --body '{"appId": "YD9NM72P", "key": "SSM2weZs", "mchid": "gRGZO2gK", "returnUrl": "NvDVbwpb"}' \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'dcwrZvAA' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'Gqixz1cX' \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id '7OUGqMfB' \
    --validate 'true' \
    --body '{"apiKey": "sJoHEpf5", "flowCompletionUrl": "Zayp9X0I", "merchantId": 44, "projectId": 100, "projectSecretKey": "vxVYbbVQ"}' \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'IVf5JPSN' \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'LkGVo328' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '7' \
    --namespace '5HM0tVMM' \
    --offset '93' \
    --region 'PVYmUGjc' \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "DSHvZYZx", "region": "JedUQIr1", "sandboxTaxJarApiToken": "AZdRRyAV", "specials": ["ADYEN", "CHECKOUT", "STRIPE"], "taxJarApiToken": "xxbXheNM", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'E6Kii5gb' \
    --region 'O2f2IWr6' \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'Qk24bBRd' \
    --body '{"aggregate": "ADYEN", "namespace": "Q4dzHjWi", "region": "4bke4rCE", "sandboxTaxJarApiToken": "GRkBXE0X", "specials": ["ALIPAY", "ADYEN", "ADYEN"], "taxJarApiToken": "dZA2QXw7", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'GskwgzKk' \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "XLGqCybK", "taxJarApiToken": "JfMS9cFy", "taxJarEnabled": false, "taxJarProductCodesMapping": {"42eXVHM2": "mE3Gjksr", "2r3JPRhO": "yavgHnBc", "Tm5yDuJS": "PLFdc74X"}}' \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'uK2h6JoP' \
    --end 'sEBpVnqh' \
    --start 'inr7eGWS' \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '8TKZN2w7' \
    --storeId 'Eno1ePYp' \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'MAXQz62q' \
    --storeId 'LxOvyqBV' \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'fRDvt6Sx' \
    --namespace $AB_NAMESPACE \
    --language 'M2blboKE' \
    --storeId 'XMY5Arqx' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'DCDh23zh' \
    --namespace $AB_NAMESPACE \
    --language 'IgtnRbW2' \
    --storeId 'q3K5esLp' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'DUXjg4kb' \
    --namespace $AB_NAMESPACE \
    --language '81Wq2t75' \
    --storeId 'GawDVnBB' \
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
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'hWl1xTyH' \
    --region '5YOOpSKl' \
    --storeId 'Xx9Y16z6' \
    --appId 'T1tVU21C' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'WLcX7cY6' \
    --categoryPath 'X6yYwaXC' \
    --features 'wnJzHUfG' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --language 'oiX3fllV' \
    --limit '79' \
    --offset '0' \
    --region 'YirZBp5r' \
    --sortBy '["name:asc", "displayOrder", "createdAt:desc"]' \
    --storeId 'KRBSTot3' \
    --tags 'IgCbFe9B' \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'dU9pCA5K' \
    --region 'aLSvdr3R' \
    --storeId 'daPVvKh9' \
    --sku 'beUnjWRH' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'VzMLAlny' \
    --storeId 'WaiuYBbe' \
    --itemIds 'eLy4R07H' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'aXeXjQVU' \
    --region 'g7PcAEed' \
    --storeId 'nO1BHLgy' \
    --itemIds 'AaMheK8T' \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["Ed0a5Yhy", "r9jIxzKM", "tfLFu28x"]}' \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'OPTIONBOX' \
    --limit '38' \
    --offset '85' \
    --region 'YMUKBsF5' \
    --storeId 'q40ouBXK' \
    --keyword 'Q0s7s5f4' \
    --language 'rNaSRI5N' \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'TLJluTop' \
    --namespace $AB_NAMESPACE \
    --language 'xMSzmJLe' \
    --region 'Gu3GhgOX' \
    --storeId 'C46bBIHw' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'nwKVDcHy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'iqjp4aQu' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'uXP3Z67N' \
    --populateBundle 'true' \
    --region 'GGPPJGxE' \
    --storeId 'DxZaqGzf' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "TndoiUBa", "paymentProvider": "ALIPAY", "returnUrl": "saXs3kxe", "ui": "empWeyXH", "zipCode": "qkpL8aFB"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'khCglNWv' \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'R3mWFyd7' \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'a2ylJOhQ' \
    --paymentProvider 'WXPAY' \
    --zipCode 'imrU5Osa' \
    --body '{"token": "jGXCN1RK"}' \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZLFIJXcA' \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'STRIPE' \
    --region 'jVxygofz' \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'XRw8Krtf' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'kpjZygu3' \
    --foreinginvoice 'ZnrXsBWC' \
    --invoiceId '3MR3NvyT' \
    --payload 'a0mi1VgJ' \
    --redirectResult 'sOYT39zJ' \
    --resultCode 'PB8fXdhf' \
    --sessionId 'SgyVlr4r' \
    --status 'Dnk0wezo' \
    --token 'EzJiSUuK' \
    --type '2BoOb5is' \
    --userId 'qlIezqXW' \
    --orderNo 'uKVeS28c' \
    --paymentOrderNo 'Ro3bjk0M' \
    --paymentProvider 'ALIPAY' \
    --returnUrl 'wePTTIcG' \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'O2W2qe5B' \
    --paymentOrderNo 'v84nf2t7' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'jqPOF4k5' \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'Wtcsg0Ym' \
    --limit '29' \
    --offset '14' \
    --sortBy '["rewardCode:desc", "namespace:desc"]' \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'h6OgVQKx' \
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
    --appIds '["qZfAVgmT", "bzvCbaO2", "SwiSM9ng"]' \
    --itemIds '["TAQG1tN1", "nmbE0kYx", "eKZq20Op"]' \
    --skus '["E2sy85EG", "lmGTCCJW", "Wmj25Vwi"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId '3BSrmGKH' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --itemId 'chkwXEcD' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'MEDIA' \
    --sku 'vlOTpy7C' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["8XPlHH87", "cJq1646z", "psXugV0d"]' \
    --itemIds '["d2phtw8O", "Hz5zV7Pw", "pgNYl934"]' \
    --skus '["hg73vpm4", "ROfJGsqa", "4ltE6KV6"]' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "17pjJkgk", "language": "rdYa_oq", "region": "6b7MUCVM"}' \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'NgQ5YPIX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId '8Si3uKcN' \
    --body '{"epicGamesJwtToken": "3qARyqrE"}' \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'P039m6hM' \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'L7NfzrjE' \
    --body '{"serviceLabel": 27}' \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '5xiv3azQ' \
    --body '{"serviceLabels": [56, 45, 6]}' \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'iplaigR8' \
    --body '{"appId": "USMgwGtX", "steamId": "dyHdPTVF"}' \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'oVpwrhZp' \
    --body '{"xstsToken": "vNmiY1i3"}' \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'b2iDCrGw' \
    --appType 'DEMO' \
    --entitlementClazz 'SUBSCRIPTION' \
    --entitlementName '1eePz5r6' \
    --features '["vATP1swf", "RDyZxEEK", "qIuDCE8Z"]' \
    --itemId '["sG0bC7Sv", "4LGfTu0B", "eC3zHOWm"]' \
    --limit '59' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'j856bjWN' \
    --appId 'UIPfUaX7' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'KbLLxsKk' \
    --limit '95' \
    --offset '45' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'dF87CvO2' \
    --availablePlatformOnly 'true' \
    --ids '["48Vk3NS5", "QLIu3G96", "rje3McED"]' \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'IPNjBF2r' \
    --appIds '["DRUBMHnm", "1ciZPHSg", "BUC8mPRk"]' \
    --itemIds '["nlPFUqay", "ZlQvpdjY", "ao8KcD4t"]' \
    --skus '["13NfD2nO", "ra7dmK6n", "GuvYmhvW"]' \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'WnJTf9HL' \
    --appId 'dWdJMHmB' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'RcQsGk1Z' \
    --entitlementClazz 'MEDIA' \
    --itemId '392qSZ0i' \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'twPboJbG' \
    --ids '["8e7QNmo1", "hFrHtYUu", "HcdeCq1V"]' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Sx40lzO8' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku 'StMIhSpo' \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'N7THKC0Y' \
    --namespace $AB_NAMESPACE \
    --userId '9hnVbLGI' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'ElcNICq8' \
    --namespace $AB_NAMESPACE \
    --userId 'C6EpnSaK' \
    --body '{"options": ["dsq4zV8R", "JtMyiZOp", "sjrvoeKB"], "requestId": "SQ5a4tSy", "useCount": 90}' \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '8tEXdORi' \
    --namespace $AB_NAMESPACE \
    --userId '26AbKSJh' \
    --body '{"requestId": "HNeH1iwg", "useCount": 36}' \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'wNxAdM4F' \
    --namespace $AB_NAMESPACE \
    --userId 'EhktaDLJ' \
    --body '{"useCount": 28}' \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '5jHcwJY0' \
    --namespace $AB_NAMESPACE \
    --userId 'l2HLiXI3' \
    --body '{"entitlementId": "xdVbI0X9", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId '94Euky5o' \
    --body '{"code": "YFGSpmNw", "language": "su_nH", "region": "ydrBEt8q"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'zdE2avXr' \
    --body '{"excludeOldTransactions": true, "language": "WR-RMOD", "productId": "fmZKkMfw", "receiptData": "cf4exzgA", "region": "rF84efCr", "transactionId": "aUi73VoS"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l1HRxGH6' \
    --body '{"epicGamesJwtToken": "TqcJoWZu"}' \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'WyM4hBYt' \
    --body '{"autoAck": false, "language": "ibVY_937", "orderId": "o75au3AL", "packageName": "wSs2NPj6", "productId": "U3qvAmoH", "purchaseTime": 37, "purchaseToken": "L79BAxGM", "region": "d4CI0zjC"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Ivog7kaZ' \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'r5dyq9Vo' \
    --body '{"currencyCode": "TOHINk66", "price": 0.9665317025914296, "productId": "KibPO767", "serviceLabel": 96}' \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '17KgfAV9' \
    --body '{"currencyCode": "UgOWOE3J", "price": 0.835135020183908, "productId": "zu5Rgd8c", "serviceLabels": [75, 68, 7]}' \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'UYTFWvKt' \
    --body '{"appId": "VKzGz2Vh", "currencyCode": "V4JDkX0i", "language": "xQw_uKns_269", "price": 0.6438504429763053, "productId": "1wzYhUM2", "region": "9qoDfLIn", "steamId": "n83DdfdY"}' \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'BUdl7g6d' \
    --body '{"gameId": "vsJZbXe0", "language": "oqc", "region": "BitFWgOD"}' \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'itBFKAeT' \
    --body '{"currencyCode": "mujHPXo5", "price": 0.5363776149828016, "productId": "v80ysESs", "xstsToken": "VhKe9IbH"}' \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '891HwiSx' \
    --itemId 'oFL2ICyk' \
    --limit '64' \
    --offset '66' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'iJOAGTA5' \
    --body '{"currencyCode": "nSAxzHSW", "discountedPrice": 51, "ext": {"UuDTwLzM": {}, "1uiXTyNT": {}, "p8NMpeRo": {}}, "itemId": "KgDMazJT", "language": "qrqW_pEGE", "price": 93, "quantity": 60, "region": "nBm5w47B", "returnUrl": "hJz4vqu2", "sectionId": "r3Ld5hsb"}' \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Q6DJ4J2D' \
    --userId 'sARkJDeW' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'o3H6f58k' \
    --userId 'P8P7MYe7' \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo '3X6UT8L9' \
    --userId '82gt2ggI' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'MdenVDzr' \
    --userId 'Cs3bsn3p' \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'UA8LPhj2' \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '9X3THtqB' \
    --namespace $AB_NAMESPACE \
    --type 'paypal' \
    --userId '131qrkYS' \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId '8GRuD7an' \
    --autoCalcEstimatedPrice 'true' \
    --language 'fjKokfJb' \
    --region 'o5kA40Q3' \
    --storeId 'HUAD4QuD' \
    --viewId 'kQC8o28C' \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'k3hwvEBG' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'ZeW1K1VM' \
    --limit '30' \
    --offset '3' \
    --sku 'igONtbOQ' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '88fql1t1' \
    --body '{"currencyCode": "aCHdWfYA", "itemId": "IcMvGk2K", "language": "kZb_CHWr-494", "region": "pBx9DEXQ", "returnUrl": "2uOqupCV", "source": "mwqK2OfN"}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'vkGGGvzJ' \
    --itemId 'lRqCeM6m' \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QP7G8umP' \
    --userId 'wZn90U5b' \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VpyPJE4M' \
    --userId 'aIYf22G3' \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'NPZPA20E' \
    --userId 'qQ21XJbg' \
    --body '{"immediate": true, "reason": "lSY8QX2i"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Xz0b83lb' \
    --userId '67Is781K' \
    --excludeFree 'false' \
    --limit '68' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'DM7xPfck' \
    --language 'X7RYtuTX' \
    --storeId 'fDEF3rVO' \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'a50nLr8d' \
    --namespace $AB_NAMESPACE \
    --userId '5k9PNMWT' \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode '9BZN9Wiu' \
    --namespace $AB_NAMESPACE \
    --userId 'p2to5xRl' \
    --limit '53' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --availableDate 'npf8bSf7' \
    --baseAppId 'om72cPuW' \
    --categoryPath 'T42AvW59' \
    --features 'xlUsYhJC' \
    --includeSubCategoryItem 'false' \
    --itemName 'PDpfyzBP' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '45' \
    --offset '52' \
    --region '4tHmabJx' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder", "displayOrder:desc"]' \
    --storeId 'M8fWIyCY' \
    --tags 'D9Adf3fX' \
    --targetNamespace 'BuAWch8J' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId '59IWWTIm' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'YCJqUyWb' \
    --body '{"itemIds": ["pIxV5H4N", "fGwsL7dx", "Cb2Vcuxx"]}' \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'varr8NSn' \
    --body '{"entitlementCollectionId": "ppUL4DJo", "entitlementOrigin": "IOS", "metadata": {"3Vp2lgMW": {}, "s4RurjKx": {}, "etooRCc2": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "i4dlYDf6", "namespace": "QlRBUw1y"}, "item": {"itemId": "h1BXp16I", "itemSku": "wllcoCJD", "itemType": "Nqf2hUg4"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "hkzNt6fx", "namespace": "0BgNjyUx"}, "item": {"itemId": "Ne6qohHk", "itemSku": "9NBsmJFv", "itemType": "9aQ3p6y4"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "EmQJrsQb", "namespace": "ivMj6kqV"}, "item": {"itemId": "ApGGsXrb", "itemSku": "LhOCZF5S", "itemType": "fUsLKCAu"}, "quantity": 19, "type": "ITEM"}], "source": "IAP", "transactionId": "PJyJoFmK"}' \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE