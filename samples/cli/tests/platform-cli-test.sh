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
echo "1..423"

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
    --id 'cabc9ibG' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'AcM0BAG6' \
    --body '{"grantDays": "59V2Ly2y"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'YGTZnvLb' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'x1FwJqwF' \
    --body '{"grantDays": "CnU5a1kB"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "xFdOhzb5", "dryRun": false, "fulfillmentUrl": "QJH5gcNx", "itemType": "OPTIONBOX", "purchaseConditionUrl": "b2muATi8"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'YRYThzbH' \
    --itemType 'LOOTBOX' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'uD2hzZ2U' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'nc87d7NB' \
    --body '{"clazz": "eElz0AAl", "dryRun": true, "fulfillmentUrl": "4olm0I8s", "purchaseConditionUrl": "fXZJDdTy"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id '8ErFt50r' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --name 'Vum2IeWd' \
    --offset '61' \
    --tag 'g8FmYCHN' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zX8VwWS7", "items": [{"extraSubscriptionDays": 64, "itemId": "fLaj3ITr", "itemName": "UrY1ZIaS", "quantity": 70}, {"extraSubscriptionDays": 68, "itemId": "P1HkIx16", "itemName": "4AqvTzRy", "quantity": 22}, {"extraSubscriptionDays": 28, "itemId": "Dgs7ueuI", "itemName": "I6DCbz8z", "quantity": 64}], "maxRedeemCountPerCampaignPerUser": 94, "maxRedeemCountPerCode": 91, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 44, "name": "Wzz7qSAU", "redeemEnd": "1991-08-04T00:00:00Z", "redeemStart": "1997-10-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["rECpNF3Q", "njpeWnad", "WaCpkg1F"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId '23H6RaEz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'RY2YPrRI' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nbSKOIww", "items": [{"extraSubscriptionDays": 81, "itemId": "tNjwek3p", "itemName": "G3lKV2CP", "quantity": 35}, {"extraSubscriptionDays": 50, "itemId": "xxxYKWMF", "itemName": "VwEF4zUw", "quantity": 41}, {"extraSubscriptionDays": 1, "itemId": "SAchLErZ", "itemName": "oOxw59cV", "quantity": 42}], "maxRedeemCountPerCampaignPerUser": 36, "maxRedeemCountPerCode": 11, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 22, "name": "eIrxZ0Wh", "redeemEnd": "1977-09-22T00:00:00Z", "redeemStart": "1980-08-15T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["BCpy8FkS", "3wzbdSjT", "rD7cBguE"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'SLn2Qco0' \
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
    --body '{"appConfig": {"appName": "f0H0IDl4"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "WNiWHA6z"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "rOORAelK"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "buxQuNoO"}, "extendType": "CUSTOM"}' \
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
    --storeId 'dwVjXr2X' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId '9Pude18Y' \
    --body '{"categoryPath": "vdotgnCy", "localizationDisplayNames": {"zBxSEHgG": "wx2ldIRZ", "xEsAbpwv": "8uTRHYKF", "9pfSDMyn": "rYGEsCRF"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'DXo5xwfb' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'THGfRBye' \
    --namespace $AB_NAMESPACE \
    --storeId 'ocgJvy6F' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'LaFW9ned' \
    --namespace $AB_NAMESPACE \
    --storeId 'J4P7bJjn' \
    --body '{"localizationDisplayNames": {"SFIyljM9": "UFG7La7u", "kFEp9xS9": "8dSxT7oS", "LpVKRSIz": "TnHn77R3"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'fnW6S0aZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'bvEAhYTK' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'hl315CmQ' \
    --namespace $AB_NAMESPACE \
    --storeId 'ximv83lT' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '4xEWFQGm' \
    --namespace $AB_NAMESPACE \
    --storeId 'ggMgd9xt' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId '2kgwVooW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchNo '19' \
    --code '7oGijtli' \
    --limit '7' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'JA0kt8Gf' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 25}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'Cakxcw4p' \
    --namespace $AB_NAMESPACE \
    --batchNo '26' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '6cWdwNjN' \
    --namespace $AB_NAMESPACE \
    --batchNo '45' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'QMDzwISw' \
    --namespace $AB_NAMESPACE \
    --batchNo '10' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId '2zDLGVgw' \
    --namespace $AB_NAMESPACE \
    --code 'q4qudOTB' \
    --limit '54' \
    --offset '41' \
    --userId 'mhgMzaTt' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 'rS64ou7Q' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code '6WNHd1bb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'gS6ZM9Q1' \
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
    --body '{"currencyCode": "pgHXc8q7", "currencySymbol": "vVLksewu", "currencyType": "VIRTUAL", "decimals": 11, "localizationDescriptions": {"9UAQIFT9": "pjtwNoQ7", "msChxS3o": "F3phtEjx", "lAomdUKP": "8chDYhcN"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'Q6vpIZav' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"OLEbidXZ": "EHKqwbEg", "oz0XheAe": "ASZ3RCTP", "aBvnmMro": "CUA1w7rT"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'ldaHe1tt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'EEzc9YqP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'a95Hbbfz' \
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
    --body '{"data": [{"id": "p85XLPxW", "rewards": [{"currency": {"currencyCode": "TphGTa7Q", "namespace": "gRpj58sB"}, "item": {"itemId": "f8ucTdW8", "itemSku": "VslrLCMh", "itemType": "LqMQ84G1"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "llYVbo06", "namespace": "TTk4vap2"}, "item": {"itemId": "kL47svcD", "itemSku": "GVTjIkaP", "itemType": "6rOm3TxB"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "S9X896TJ", "namespace": "7c2SUIJ0"}, "item": {"itemId": "DNWIdQsM", "itemSku": "wcPCKCvj", "itemType": "nzfkxNvn"}, "quantity": 63, "type": "ITEM"}]}, {"id": "43nejz8q", "rewards": [{"currency": {"currencyCode": "5B3oBF59", "namespace": "hrF50eWj"}, "item": {"itemId": "tknZ6Vd8", "itemSku": "mzDj6RRm", "itemType": "SYiWtFBi"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "Kyp8kFn1", "namespace": "d2OQRu8X"}, "item": {"itemId": "VNcJ7oaS", "itemSku": "fmHpsYLz", "itemType": "obuEpOLg"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "vLnYGu4k", "namespace": "MccmklHJ"}, "item": {"itemId": "fCOV4bqP", "itemSku": "jv2GWC07", "itemType": "YPA9ylGg"}, "quantity": 23, "type": "CURRENCY"}]}, {"id": "QZZqV7GY", "rewards": [{"currency": {"currencyCode": "62wOBYr1", "namespace": "czUNWNEV"}, "item": {"itemId": "TfwxCLjs", "itemSku": "NRTftwGj", "itemType": "k7TG0cuO"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "s9cVANc0", "namespace": "c2YHc2r7"}, "item": {"itemId": "7gJXGeX7", "itemSku": "43wbucZz", "itemType": "QzIUufs4"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "q5j5PoCR", "namespace": "Cx2eNQp9"}, "item": {"itemId": "wrFz36GB", "itemSku": "1grI5Ii7", "itemType": "Lcyx25RV"}, "quantity": 98, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"gM3MZ4pl": "7fmuLJ29", "GLCZAYja": "F1gtglzG", "LIaeAGPN": "sG83UBOC"}}, {"platform": "STEAM", "platformDlcIdMap": {"5SNCzz45": "tQXLhfmI", "5pvQ5F8b": "YYzpEDFx", "NrVIgKae": "NPfPT57n"}}, {"platform": "PSN", "platformDlcIdMap": {"MMzru6PR": "Z2z3ePpY", "F0yZidnm": "V7HaMYso", "irKJbTir": "gNXMRpel"}}]}' \
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
    --appType 'DEMO' \
    --entitlementClazz 'MEDIA' \
    --entitlementName 'HbM9lZ81' \
    --itemId '["t5LijtJS", "9l9LdW8i", "fFn8xHH1"]' \
    --limit '96' \
    --offset '28' \
    --userId 'grydlZK2' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["q1nzW46s", "5H7Bix0A", "Dm05l9nd"]' \
    --limit '71' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1982-04-28T00:00:00Z", "grantedCode": "7DYE0p8H", "itemId": "1S3NdLPy", "itemNamespace": "NzyOXYuM", "language": "qHf_up", "quantity": 100, "region": "C1S2y4r3", "source": "IAP", "startDate": "1977-09-21T00:00:00Z", "storeId": "XGhBrhc8"}, {"endDate": "1971-07-27T00:00:00Z", "grantedCode": "fY1COyTI", "itemId": "yeJLhTMB", "itemNamespace": "LF1xs6Qy", "language": "Zeb", "quantity": 43, "region": "XYGOXPG9", "source": "REDEEM_CODE", "startDate": "1972-01-09T00:00:00Z", "storeId": "YFIyiZv2"}, {"endDate": "1971-05-24T00:00:00Z", "grantedCode": "YgqXG1o0", "itemId": "Hl02w8HH", "itemNamespace": "iqdaJ8oP", "language": "LSU_SP", "quantity": 16, "region": "X7QaZQxH", "source": "PROMOTION", "startDate": "1977-03-13T00:00:00Z", "storeId": "Vd2sQstY"}], "userIds": ["i9vZI8mf", "ry258ouT", "ZtNSttyb"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["Z1pSmt1J", "kUYHHs5G", "OezZuNgr"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'Anar0sUT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '93' \
    --status 'SUCCESS' \
    --userId 'G9znuvmM' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'aUySWDL7' \
    --eventType 'REFUND' \
    --externalOrderId 'owyLPvoy' \
    --limit '53' \
    --offset '46' \
    --startTime 'rKeG8sGC' \
    --status 'FAIL' \
    --userId '8H3gTy6d' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "U1ukt0Gh", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 60, "clientTransactionId": "AyzX2ksA"}, {"amountConsumed": 96, "clientTransactionId": "e6qkQDbl"}, {"amountConsumed": 96, "clientTransactionId": "HaaLcmIw"}], "entitlementId": "X5dbxslQ", "usageCount": 23}, {"clientTransaction": [{"amountConsumed": 4, "clientTransactionId": "169i5SWP"}, {"amountConsumed": 32, "clientTransactionId": "Tqxa8XEz"}, {"amountConsumed": 75, "clientTransactionId": "92cB8r16"}], "entitlementId": "zT8b8Kxs", "usageCount": 68}, {"clientTransaction": [{"amountConsumed": 82, "clientTransactionId": "hYINTXId"}, {"amountConsumed": 27, "clientTransactionId": "QrcqwsfH"}, {"amountConsumed": 62, "clientTransactionId": "b7WJ754r"}], "entitlementId": "eOWX2xzp", "usageCount": 13}], "purpose": "pDcyVZ1X"}, "originalTitleName": "ZmNeldD7", "paymentProductSKU": "JdADnqvv", "purchaseDate": "P3St4rS9", "sourceOrderItemId": "Kj5jCmd1", "titleName": "6P0W1Z7k"}, "eventDomain": "cwnOegtG", "eventSource": "74FeI3Uy", "eventType": "Ld6DFnip", "eventVersion": 54, "id": "IXmiScOH", "timestamp": "dWcYvngb"}' \
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
    --body '{"bundleId": "21KYWQTm", "password": "EYj5d8jw"}' \
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
    --body '{"sandboxId": "g8qcxDdi"}' \
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
    --body '{"applicationName": "Qq0cKHQr", "serviceAccountId": "uYgRbqv8"}' \
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
    --body '{"data": [{"itemIdentity": "fh2XnUfr", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ciiRSqAw": "arDU66YL", "UOroMk0X": "ajv9fUfr", "wJGffgn4": "4Bbz4z6c"}}, {"itemIdentity": "JMbieOJY", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Z3i7HMiE": "sBvGu54M", "6KrQBahO": "Dxe222ft", "krZunRMr": "oX7lJmau"}}, {"itemIdentity": "YSSyjjR4", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"bU9IYUaU": "GnJLgiHK", "U6LxTSAG": "1RPNhxYP", "qQKJqRTn": "au7FrugK"}}]}' \
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
    --body '{"appId": "p21MaNix", "appSecret": "YmkvsiNw"}' \
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
    --body '{"backOfficeServerClientId": "n383h2cY", "backOfficeServerClientSecret": "NpBcf66r", "enableStreamJob": false, "environment": "pnoULFCn", "streamName": "DwrNcu6f", "streamPartnerName": "ZYtfz4et"}' \
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
    --body '{"backOfficeServerClientId": "Gr46fMlY", "backOfficeServerClientSecret": "xfWdl8lx", "enableStreamJob": true, "environment": "OfCbOXK1", "streamName": "0ed4nbmQ", "streamPartnerName": "o2uwfTde"}' \
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
    --body '{"appId": "L6E3iVHO", "publisherAuthenticationKey": "yBHgoUwA"}' \
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
    --body '{"clientId": "D9F0DgBY", "clientSecret": "48JuBmjG", "organizationId": "4GEqUwQy"}' \
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
    --body '{"relyingPartyCert": "vfcYjcp8"}' \
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
    --password 'ikjHxCpM' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature 'wnc6kXyZ' \
    --itemId 'FgmTSnA4' \
    --itemType 'CODE' \
    --endTime 'FLmhane3' \
    --startTime 'qxPr0y7U' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'OJDSOSQr' \
    --itemId 'rjAjQAJM' \
    --itemType 'COINS' \
    --endTime 'd6oCJfes' \
    --startTime 'nXPDG0yW' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ZmfhVQFU' \
    --body '{"categoryPath": "lYeaMiD7", "targetItemId": "73dxAqP4", "targetNamespace": "wCFFU2O2"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'xRFuV6Lz' \
    --body '{"appId": "iD5LrebX", "appType": "SOFTWARE", "baseAppId": "6YlwEMPB", "boothName": "jg7p5HwI", "categoryPath": "mxuQov0I", "clazz": "pzeyYc9J", "displayOrder": 51, "entitlementType": "CONSUMABLE", "ext": {"KQaoxf8E": {}, "DjjOBszF": {}, "FJ0Q6XuQ": {}}, "features": ["yRWw8R7G", "5gLWxB3C", "TdmLQIn3"], "flexible": false, "images": [{"as": "nRLMBsGc", "caption": "3QM2XnmI", "height": 39, "imageUrl": "9hZ1ALUX", "smallImageUrl": "3AG5z5Nk", "width": 1}, {"as": "73bPY5TP", "caption": "E3uzb0BX", "height": 44, "imageUrl": "8nvliW3i", "smallImageUrl": "s6HdtGoE", "width": 95}, {"as": "hV7IbAcJ", "caption": "52ExqZvF", "height": 10, "imageUrl": "oWPn4aD4", "smallImageUrl": "10uJ61GZ", "width": 95}], "itemIds": ["psJBbCNA", "AV37SYTw", "GJZr0NSo"], "itemQty": {"0yfqQfEv": 19, "5wU2Mt5X": 73, "IxWAlOYW": 38}, "itemType": "BUNDLE", "listable": false, "localizations": {"gTDhEVus": {"description": "SGsKqLPO", "localExt": {"skU6gWWJ": {}, "prXrJ4Ib": {}, "ePOIeShH": {}}, "longDescription": "f8HpkeS1", "title": "oc8wVYL1"}, "H3S8481s": {"description": "T3kykJKN", "localExt": {"O15IzzRR": {}, "GLGcmnTm": {}, "3DMS3KRx": {}}, "longDescription": "cBM8yYgK", "title": "XbEqqc0A"}, "CDNT0KNk": {"description": "Mzj9TF85", "localExt": {"6H6Ymv0s": {}, "9zGOTU8C": {}, "NJPBk4sz": {}}, "longDescription": "qXkEmKJ3", "title": "sGzbPTtL"}}, "lootBoxConfig": {"rewardCount": 12, "rewards": [{"lootBoxItems": [{"count": 21, "duration": 2, "endDate": "1998-08-06T00:00:00Z", "itemId": "iCztOxy9", "itemSku": "iQPH9Y0H", "itemType": "teus34BH"}, {"count": 84, "duration": 3, "endDate": "1990-06-07T00:00:00Z", "itemId": "Tpoksahj", "itemSku": "JnU6aY8p", "itemType": "WJfIqaQL"}, {"count": 25, "duration": 74, "endDate": "1972-04-03T00:00:00Z", "itemId": "FdlPBm9J", "itemSku": "SWr5tLBE", "itemType": "PqCC21Sc"}], "name": "NxWoQjTG", "odds": 0.11140447861782676, "type": "REWARD_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 61, "duration": 59, "endDate": "1979-05-30T00:00:00Z", "itemId": "DBtp01Jq", "itemSku": "sXHQ9eOx", "itemType": "FZuiIPVL"}, {"count": 37, "duration": 74, "endDate": "1987-04-15T00:00:00Z", "itemId": "eoDAZMwf", "itemSku": "EnHLMVKn", "itemType": "e6EoqyWg"}, {"count": 89, "duration": 14, "endDate": "1977-03-22T00:00:00Z", "itemId": "TpsLicFP", "itemSku": "BxRnWBeA", "itemType": "f76TYG7x"}], "name": "gUfPN3tu", "odds": 0.8765511573435759, "type": "REWARD_GROUP", "weight": 20}, {"lootBoxItems": [{"count": 62, "duration": 87, "endDate": "1982-06-17T00:00:00Z", "itemId": "zdm4z8kb", "itemSku": "OBlfP5mC", "itemType": "YxyV2G4Q"}, {"count": 20, "duration": 22, "endDate": "1976-07-03T00:00:00Z", "itemId": "DW093YSz", "itemSku": "LMUQSnf5", "itemType": "n6HPXo2W"}, {"count": 36, "duration": 33, "endDate": "1995-07-19T00:00:00Z", "itemId": "syeSfWTm", "itemSku": "xgJPnVxh", "itemType": "qeYeRfiJ"}], "name": "ngcbQRWW", "odds": 0.5537160208011136, "type": "REWARD", "weight": 83}], "rollFunction": "DEFAULT"}, "maxCount": 3, "maxCountPerUser": 0, "name": "5A1Vx4dd", "optionBoxConfig": {"boxItems": [{"count": 45, "duration": 100, "endDate": "1992-02-11T00:00:00Z", "itemId": "8YzsBvSs", "itemSku": "1twDVoQk", "itemType": "hNidFfpu"}, {"count": 69, "duration": 83, "endDate": "1995-10-18T00:00:00Z", "itemId": "WR6q9owm", "itemSku": "RTV5mGe6", "itemType": "lSbti50O"}, {"count": 94, "duration": 40, "endDate": "1979-10-07T00:00:00Z", "itemId": "CXxIUzLA", "itemSku": "gpGP6NTG", "itemType": "okq5uBPE"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 89, "fixedTrialCycles": 22, "graceDays": 8}, "regionData": {"YZkXk98o": [{"currencyCode": "RrW2mE8e", "currencyNamespace": "IRD8oB0o", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1979-10-18T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1982-07-18T00:00:00Z", "expireAt": "1997-09-16T00:00:00Z", "price": 39, "purchaseAt": "1995-01-05T00:00:00Z", "trialPrice": 96}, {"currencyCode": "8unIGiKz", "currencyNamespace": "h7AEbXGi", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1981-05-23T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1978-07-27T00:00:00Z", "expireAt": "1999-06-20T00:00:00Z", "price": 89, "purchaseAt": "1980-10-27T00:00:00Z", "trialPrice": 32}, {"currencyCode": "GFw3b2HK", "currencyNamespace": "bETzepEX", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1976-07-02T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1981-10-24T00:00:00Z", "expireAt": "1974-10-13T00:00:00Z", "price": 24, "purchaseAt": "1998-06-28T00:00:00Z", "trialPrice": 80}], "XvLQh3m9": [{"currencyCode": "Lct2EveT", "currencyNamespace": "PgeWEgFi", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1972-05-25T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1997-04-28T00:00:00Z", "expireAt": "1992-10-03T00:00:00Z", "price": 71, "purchaseAt": "1975-01-19T00:00:00Z", "trialPrice": 31}, {"currencyCode": "V875jJ5H", "currencyNamespace": "rIUP5daR", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1979-08-08T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1978-09-04T00:00:00Z", "expireAt": "1973-11-16T00:00:00Z", "price": 78, "purchaseAt": "1982-12-07T00:00:00Z", "trialPrice": 78}, {"currencyCode": "auhZHQSM", "currencyNamespace": "y659Qp9Z", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1986-11-13T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1972-12-29T00:00:00Z", "expireAt": "1995-03-21T00:00:00Z", "price": 31, "purchaseAt": "1978-03-15T00:00:00Z", "trialPrice": 38}], "yBw8lx5d": [{"currencyCode": "3E93nAib", "currencyNamespace": "EZl71Cb5", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1987-03-21T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1976-11-14T00:00:00Z", "expireAt": "1977-11-07T00:00:00Z", "price": 69, "purchaseAt": "1972-09-18T00:00:00Z", "trialPrice": 64}, {"currencyCode": "BO8UAEEM", "currencyNamespace": "N8cPAxGN", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1986-05-14T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1997-12-11T00:00:00Z", "expireAt": "1975-08-28T00:00:00Z", "price": 87, "purchaseAt": "1988-06-23T00:00:00Z", "trialPrice": 13}, {"currencyCode": "RZPQfM5L", "currencyNamespace": "tZ8RfmJG", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1990-09-23T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1987-06-26T00:00:00Z", "expireAt": "1992-04-06T00:00:00Z", "price": 11, "purchaseAt": "1994-01-14T00:00:00Z", "trialPrice": 11}]}, "saleConfig": {"currencyCode": "wXaqPxWm", "price": 22}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "lOFIlGLH", "stackable": true, "status": "ACTIVE", "tags": ["BZXpZLEm", "rQ900MvN", "kWA2uMhv"], "targetCurrencyCode": "AXBwE17T", "targetNamespace": "VPDnmCD4", "thumbnailUrl": "eQ6SWqMg", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'SCguFOTw' \
    --appId 'yE72ELUM' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'GAME' \
    --availableDate 'RQs4JLcf' \
    --baseAppId 'b0OU7mJR' \
    --categoryPath 'rmvbaSdv' \
    --features 'zJ2Zfape' \
    --includeSubCategoryItem 'true' \
    --itemType 'OPTIONBOX' \
    --limit '66' \
    --offset '90' \
    --region 'lT7kjxht' \
    --sortBy '["name", "displayOrder:asc", "name:desc"]' \
    --storeId 'oIgdleRg' \
    --tags '4aqk8zzx' \
    --targetNamespace 'mmJESscV' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Pvaki9oL", "u5B1RsrC", "OCBxZVvi"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'VDdR4QiI' \
    --itemIds '7yO3MWmF' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qCw9Mq87' \
    --sku 'yinCPQP3' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'Gh5zcee5' \
    --populateBundle 'true' \
    --region 'rAY2Wc4c' \
    --storeId 'HVmpiIzM' \
    --sku 'BSUFCBk0' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'ZGDXvr9b' \
    --storeId '7v8zbxom' \
    --itemIds 'L7hIIevl' \
    --userId 'lSslpNsH' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'a1MXEv3N' \
    --sku 'sl7OOQ4f' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["USMqWUjs", "JUsaYfJG", "dftkd97J"]' \
    --storeId 'PVfW1XH7' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '9FKWUssO' \
    --region 'JZhIGCjr' \
    --storeId 'beZPpeUI' \
    --itemIds 'mqo6UbM4' \
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
    --userId 'O7vWnvQ0' \
    --body '{"itemIds": ["WSRKsG4Q", "mmkizhZD", "hmH6JoVy"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'EwyfnRGz' \
    --body '{"changes": [{"itemIdentities": ["G66MzqfN", "A4ImsV8J", "gzxasOEu"], "itemIdentityType": "ITEM_SKU", "regionData": {"67ev19Mw": [{"currencyCode": "D3LLfALw", "currencyNamespace": "yJ5Usldd", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1980-07-13T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1989-03-29T00:00:00Z", "discountedPrice": 36, "expireAt": "1979-12-07T00:00:00Z", "price": 95, "purchaseAt": "1976-08-03T00:00:00Z", "trialPrice": 12}, {"currencyCode": "a1E06899", "currencyNamespace": "KJYNsvbj", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1992-08-10T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-09-27T00:00:00Z", "discountedPrice": 59, "expireAt": "1977-02-16T00:00:00Z", "price": 93, "purchaseAt": "1973-07-09T00:00:00Z", "trialPrice": 0}, {"currencyCode": "8fm7M0Jo", "currencyNamespace": "KBu2MR9B", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1995-09-18T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1984-10-06T00:00:00Z", "discountedPrice": 20, "expireAt": "1990-11-28T00:00:00Z", "price": 91, "purchaseAt": "1991-07-17T00:00:00Z", "trialPrice": 43}], "nckHooGP": [{"currencyCode": "YOnV6IT7", "currencyNamespace": "8EorvyLB", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1989-07-26T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1980-08-17T00:00:00Z", "discountedPrice": 89, "expireAt": "1988-04-14T00:00:00Z", "price": 56, "purchaseAt": "1992-08-12T00:00:00Z", "trialPrice": 81}, {"currencyCode": "X9hCNNUI", "currencyNamespace": "tfvqmoCs", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1982-12-07T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1996-12-08T00:00:00Z", "discountedPrice": 57, "expireAt": "1995-09-05T00:00:00Z", "price": 20, "purchaseAt": "1971-09-17T00:00:00Z", "trialPrice": 44}, {"currencyCode": "LfG88lHM", "currencyNamespace": "8BzgYJOB", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1992-10-12T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1990-12-03T00:00:00Z", "discountedPrice": 90, "expireAt": "1995-03-23T00:00:00Z", "price": 21, "purchaseAt": "1986-04-06T00:00:00Z", "trialPrice": 59}], "GhNge9dP": [{"currencyCode": "3JY5PDnF", "currencyNamespace": "nqUTtpRm", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1994-06-29T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1982-03-07T00:00:00Z", "discountedPrice": 77, "expireAt": "1981-12-14T00:00:00Z", "price": 10, "purchaseAt": "1984-07-09T00:00:00Z", "trialPrice": 14}, {"currencyCode": "Ez69xYOC", "currencyNamespace": "4bMemaWr", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1974-03-27T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1980-05-14T00:00:00Z", "discountedPrice": 63, "expireAt": "1990-10-02T00:00:00Z", "price": 9, "purchaseAt": "1979-02-04T00:00:00Z", "trialPrice": 54}, {"currencyCode": "o0EotlIN", "currencyNamespace": "W7ZAWiy0", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1983-12-25T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1989-09-20T00:00:00Z", "discountedPrice": 67, "expireAt": "1985-09-29T00:00:00Z", "price": 89, "purchaseAt": "1994-08-10T00:00:00Z", "trialPrice": 11}]}}, {"itemIdentities": ["DqwRtcZv", "oujXY3Se", "qbIeoaou"], "itemIdentityType": "ITEM_ID", "regionData": {"9qqlK2QV": [{"currencyCode": "QjYiaduz", "currencyNamespace": "o891sNKl", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1989-04-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1976-11-03T00:00:00Z", "discountedPrice": 50, "expireAt": "1989-08-12T00:00:00Z", "price": 73, "purchaseAt": "1999-09-09T00:00:00Z", "trialPrice": 2}, {"currencyCode": "MacHjzEp", "currencyNamespace": "pEi5AfRI", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1989-07-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1994-01-29T00:00:00Z", "discountedPrice": 2, "expireAt": "1984-03-15T00:00:00Z", "price": 44, "purchaseAt": "1988-08-23T00:00:00Z", "trialPrice": 28}, {"currencyCode": "BAAUrSE2", "currencyNamespace": "XElyoXPn", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1995-01-09T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1985-03-22T00:00:00Z", "discountedPrice": 86, "expireAt": "1971-01-12T00:00:00Z", "price": 46, "purchaseAt": "1981-02-24T00:00:00Z", "trialPrice": 6}], "e0bH9c90": [{"currencyCode": "sNfSAnqk", "currencyNamespace": "cU7A1jLs", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1976-10-20T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1972-12-14T00:00:00Z", "discountedPrice": 85, "expireAt": "1990-06-23T00:00:00Z", "price": 15, "purchaseAt": "1972-03-29T00:00:00Z", "trialPrice": 19}, {"currencyCode": "eX1LtIDW", "currencyNamespace": "oUSwgT3e", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1990-09-21T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1976-04-21T00:00:00Z", "discountedPrice": 52, "expireAt": "1983-09-15T00:00:00Z", "price": 29, "purchaseAt": "1976-05-14T00:00:00Z", "trialPrice": 94}, {"currencyCode": "xersNsA5", "currencyNamespace": "XjLlsrys", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1996-07-28T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1985-08-05T00:00:00Z", "discountedPrice": 98, "expireAt": "1987-07-07T00:00:00Z", "price": 6, "purchaseAt": "1985-04-08T00:00:00Z", "trialPrice": 90}], "fRKvWMeT": [{"currencyCode": "U1huBSfI", "currencyNamespace": "MB5bcVna", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1979-09-21T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1997-05-08T00:00:00Z", "discountedPrice": 56, "expireAt": "1981-08-29T00:00:00Z", "price": 43, "purchaseAt": "1974-09-25T00:00:00Z", "trialPrice": 35}, {"currencyCode": "i2IDS8T1", "currencyNamespace": "JRRS4Pa2", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1971-05-24T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1975-01-14T00:00:00Z", "discountedPrice": 37, "expireAt": "1987-08-09T00:00:00Z", "price": 67, "purchaseAt": "1988-03-13T00:00:00Z", "trialPrice": 55}, {"currencyCode": "kVTHdhoc", "currencyNamespace": "Nb4Effgg", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1979-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1989-08-29T00:00:00Z", "discountedPrice": 18, "expireAt": "1980-12-25T00:00:00Z", "price": 74, "purchaseAt": "1982-01-21T00:00:00Z", "trialPrice": 13}]}}, {"itemIdentities": ["IUXbgRN9", "ROZNVFpO", "YNo1CDVS"], "itemIdentityType": "ITEM_SKU", "regionData": {"Jpgrgbh5": [{"currencyCode": "FgLAdfJv", "currencyNamespace": "o66FQCfA", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1986-07-01T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1980-12-17T00:00:00Z", "discountedPrice": 68, "expireAt": "1998-01-29T00:00:00Z", "price": 42, "purchaseAt": "1975-01-02T00:00:00Z", "trialPrice": 5}, {"currencyCode": "MNxWY8Qa", "currencyNamespace": "otDjXi2y", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1985-01-14T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1991-01-27T00:00:00Z", "discountedPrice": 82, "expireAt": "1973-09-15T00:00:00Z", "price": 59, "purchaseAt": "1992-06-19T00:00:00Z", "trialPrice": 91}, {"currencyCode": "beqNr7OZ", "currencyNamespace": "06lLSU7l", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1992-09-26T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1979-02-17T00:00:00Z", "discountedPrice": 55, "expireAt": "1977-03-14T00:00:00Z", "price": 19, "purchaseAt": "1983-12-28T00:00:00Z", "trialPrice": 75}], "Bde0b7bf": [{"currencyCode": "Yb6NYsFd", "currencyNamespace": "wxycWpEl", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1973-06-15T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1990-10-31T00:00:00Z", "discountedPrice": 11, "expireAt": "1989-09-08T00:00:00Z", "price": 12, "purchaseAt": "1971-04-14T00:00:00Z", "trialPrice": 71}, {"currencyCode": "6LmNyKJj", "currencyNamespace": "bMSHtnhE", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1992-10-14T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1971-02-12T00:00:00Z", "discountedPrice": 6, "expireAt": "1977-11-11T00:00:00Z", "price": 42, "purchaseAt": "1972-10-17T00:00:00Z", "trialPrice": 3}, {"currencyCode": "5gm3pEn7", "currencyNamespace": "Y0HxY3m3", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1981-07-28T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1996-02-12T00:00:00Z", "discountedPrice": 20, "expireAt": "1994-11-28T00:00:00Z", "price": 39, "purchaseAt": "1977-12-07T00:00:00Z", "trialPrice": 44}], "j4yFD7Zl": [{"currencyCode": "bFZugkwR", "currencyNamespace": "LVo7IZac", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1978-09-12T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1992-11-09T00:00:00Z", "discountedPrice": 0, "expireAt": "1974-12-15T00:00:00Z", "price": 68, "purchaseAt": "1975-04-16T00:00:00Z", "trialPrice": 84}, {"currencyCode": "jGMyfv7j", "currencyNamespace": "9A99y8nd", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1990-12-23T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1973-04-15T00:00:00Z", "discountedPrice": 13, "expireAt": "1979-01-30T00:00:00Z", "price": 86, "purchaseAt": "1974-01-25T00:00:00Z", "trialPrice": 25}, {"currencyCode": "aGDmGl6H", "currencyNamespace": "fGmSFdBg", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1971-06-01T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1986-05-15T00:00:00Z", "discountedPrice": 27, "expireAt": "1979-11-22T00:00:00Z", "price": 59, "purchaseAt": "1985-05-23T00:00:00Z", "trialPrice": 1}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'OPTIONBOX' \
    --limit '52' \
    --offset '64' \
    --sortBy 'MnDAeobr' \
    --storeId '1uK38DBu' \
    --keyword 'rSQoTnCV' \
    --language 'KXKbtSdQ' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '69' \
    --offset '57' \
    --sortBy '["name", "createdAt:asc", "createdAt:desc"]' \
    --storeId '31GXIvC7' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'sEmrKYa0' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'HPw1x7j9' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'GTmee7Bw' \
    --namespace $AB_NAMESPACE \
    --storeId 'CvsnUeH8' \
    --body '{"appId": "qFAMduWh", "appType": "DEMO", "baseAppId": "CgWEvvVV", "boothName": "JxcSVUpG", "categoryPath": "Gl0BCsFK", "clazz": "CHRHfJRd", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"riF0MZCR": {}, "28ngATui": {}, "fdCCmI1N": {}}, "features": ["SJLtV2vD", "mI9Q0cl8", "TNleCrC5"], "flexible": false, "images": [{"as": "oCmXryb2", "caption": "I8uk6V0D", "height": 78, "imageUrl": "Il4ccKTa", "smallImageUrl": "5GbxtqLy", "width": 84}, {"as": "HetVym9M", "caption": "JXLgWvcf", "height": 70, "imageUrl": "gST34A2i", "smallImageUrl": "13C5y1U2", "width": 12}, {"as": "swr22hqS", "caption": "KcYfyvCm", "height": 40, "imageUrl": "ErgMJH9T", "smallImageUrl": "AwGd6MGd", "width": 80}], "itemIds": ["n8qDaZKe", "GUo3kfcT", "c1kWGrVG"], "itemQty": {"3uCi3Km1": 51, "KUxqWwG9": 43, "S6dcbxMG": 67}, "itemType": "MEDIA", "listable": false, "localizations": {"d9w5ng4v": {"description": "qDWY62eq", "localExt": {"UKpjK11N": {}, "Yw3cqyUd": {}, "8IN1KELh": {}}, "longDescription": "oeU0WL9o", "title": "tkWzqWJO"}, "JDAMqFKy": {"description": "MzbQSEHu", "localExt": {"ZhcOdMtA": {}, "cQKcIOCW": {}, "KYH1cKZI": {}}, "longDescription": "IVmv5NEq", "title": "ngRFORTc"}, "18Cy7i8n": {"description": "Ss7kXktL", "localExt": {"d8AdT7BF": {}, "Yav0vpR7": {}, "O2ryZtMQ": {}}, "longDescription": "0h6wg2jO", "title": "j2xR9QEf"}}, "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 65, "duration": 78, "endDate": "1990-04-04T00:00:00Z", "itemId": "gfrwMsma", "itemSku": "lYThQqWs", "itemType": "2FPgQQNY"}, {"count": 34, "duration": 63, "endDate": "1998-11-17T00:00:00Z", "itemId": "dPM6zRYs", "itemSku": "evyZ8hJS", "itemType": "kf6KtmvX"}, {"count": 87, "duration": 55, "endDate": "1996-11-03T00:00:00Z", "itemId": "UOixROYG", "itemSku": "rl6j5od7", "itemType": "RGw1KpVq"}], "name": "s32mFavL", "odds": 0.8255881492028598, "type": "PROBABILITY_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 97, "duration": 19, "endDate": "1981-01-05T00:00:00Z", "itemId": "yfrc5Rhp", "itemSku": "xbpfIYoP", "itemType": "9DNkTKfA"}, {"count": 44, "duration": 81, "endDate": "1981-12-21T00:00:00Z", "itemId": "5u79QzME", "itemSku": "l7KDtjNM", "itemType": "EpmXDq9W"}, {"count": 85, "duration": 5, "endDate": "1992-11-14T00:00:00Z", "itemId": "HRmAqN9G", "itemSku": "RhvQ1YKL", "itemType": "asY5etF7"}], "name": "1n16FujX", "odds": 0.11584701954054966, "type": "PROBABILITY_GROUP", "weight": 74}, {"lootBoxItems": [{"count": 28, "duration": 74, "endDate": "1987-05-09T00:00:00Z", "itemId": "dqAPiS4X", "itemSku": "nxBZIdCQ", "itemType": "07ykfuVU"}, {"count": 0, "duration": 12, "endDate": "1986-08-01T00:00:00Z", "itemId": "nEjQZuYZ", "itemSku": "m7D1ppZS", "itemType": "PWFgrIcr"}, {"count": 100, "duration": 60, "endDate": "1996-03-06T00:00:00Z", "itemId": "4Hb3rGXS", "itemSku": "LAk0fl8F", "itemType": "loR1Dwhc"}], "name": "7q3kqR2e", "odds": 0.11207179674353496, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "CUSTOM"}, "maxCount": 91, "maxCountPerUser": 70, "name": "3QnkiwW8", "optionBoxConfig": {"boxItems": [{"count": 26, "duration": 38, "endDate": "1990-01-28T00:00:00Z", "itemId": "n6wkkC7W", "itemSku": "j05WQt12", "itemType": "vH6irll6"}, {"count": 53, "duration": 47, "endDate": "1983-12-29T00:00:00Z", "itemId": "9WZH02Dh", "itemSku": "1z9trOuM", "itemType": "RItNihGK"}, {"count": 39, "duration": 10, "endDate": "1985-06-07T00:00:00Z", "itemId": "ctg9XN2d", "itemSku": "BQ45La5M", "itemType": "5igVIHv5"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 1, "fixedTrialCycles": 46, "graceDays": 59}, "regionData": {"payMOoJn": [{"currencyCode": "AS3F4RUn", "currencyNamespace": "ZjxnHmed", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1986-03-22T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1973-01-13T00:00:00Z", "expireAt": "1986-01-09T00:00:00Z", "price": 49, "purchaseAt": "1974-04-03T00:00:00Z", "trialPrice": 69}, {"currencyCode": "UTSYn1ta", "currencyNamespace": "FXFIylpj", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1972-11-13T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1998-05-04T00:00:00Z", "expireAt": "1972-09-13T00:00:00Z", "price": 9, "purchaseAt": "1984-04-18T00:00:00Z", "trialPrice": 82}, {"currencyCode": "HDlmi6Ik", "currencyNamespace": "sQZRFtN5", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1980-07-12T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1982-04-19T00:00:00Z", "expireAt": "1980-07-23T00:00:00Z", "price": 52, "purchaseAt": "1995-08-04T00:00:00Z", "trialPrice": 7}], "C7cM1w6Y": [{"currencyCode": "Ns7wF4lp", "currencyNamespace": "C7dkcyKW", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1997-08-01T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1988-03-31T00:00:00Z", "expireAt": "1998-07-07T00:00:00Z", "price": 54, "purchaseAt": "1983-11-25T00:00:00Z", "trialPrice": 71}, {"currencyCode": "YY6wgyr9", "currencyNamespace": "OFPNjpBU", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1984-07-29T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1971-10-16T00:00:00Z", "expireAt": "1987-05-10T00:00:00Z", "price": 4, "purchaseAt": "1999-08-23T00:00:00Z", "trialPrice": 11}, {"currencyCode": "pen1PgQD", "currencyNamespace": "ZiuvIvdy", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1983-02-26T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1999-01-13T00:00:00Z", "expireAt": "1971-02-06T00:00:00Z", "price": 22, "purchaseAt": "1972-09-09T00:00:00Z", "trialPrice": 24}], "p2jFrdn2": [{"currencyCode": "VQqGJbQr", "currencyNamespace": "Du7NkmHp", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1995-06-21T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-03-09T00:00:00Z", "expireAt": "1996-10-12T00:00:00Z", "price": 15, "purchaseAt": "1992-08-27T00:00:00Z", "trialPrice": 98}, {"currencyCode": "czZP1gua", "currencyNamespace": "aNrTOkMx", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1993-10-18T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1994-06-26T00:00:00Z", "expireAt": "1988-04-16T00:00:00Z", "price": 78, "purchaseAt": "1980-01-29T00:00:00Z", "trialPrice": 59}, {"currencyCode": "PPom1HeM", "currencyNamespace": "fAYeYfnl", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1982-10-08T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1976-11-27T00:00:00Z", "expireAt": "1988-11-03T00:00:00Z", "price": 36, "purchaseAt": "1974-05-31T00:00:00Z", "trialPrice": 59}]}, "saleConfig": {"currencyCode": "rnAvnMMm", "price": 20}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "YfyQhIaG", "stackable": true, "status": "INACTIVE", "tags": ["GOFlv1VI", "Cndsgly2", "wqKDsOjN"], "targetCurrencyCode": "DL6fXC3X", "targetNamespace": "fcepXsDO", "thumbnailUrl": "boFl2lwK", "useCount": 61}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'kV3CrISg' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'gIxMkZ4z' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'odPqZTVF' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 4, "orderNo": "0a87LlbQ"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'Z3UoRwhm' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'WMFzd2BQ' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'sLrGbq4k' \
    --namespace $AB_NAMESPACE \
    --storeId '9dRQ9Zk9' \
    --body '{"carousel": [{"alt": "sDi90ZHg", "previewUrl": "jnbiPWmG", "thumbnailUrl": "rrf2qNWG", "type": "image", "url": "HFilRWmF", "videoSource": "generic"}, {"alt": "sy4nPeFe", "previewUrl": "Cq71G3GU", "thumbnailUrl": "35jA6sM1", "type": "video", "url": "Wi9TPpcs", "videoSource": "youtube"}, {"alt": "19gZCJpm", "previewUrl": "XVH3tTY6", "thumbnailUrl": "wjlhncQX", "type": "image", "url": "Atb19zKO", "videoSource": "youtube"}], "developer": "PbCj3PiP", "forumUrl": "T2kNaxoC", "genres": ["Strategy", "Simulation", "RPG"], "localizations": {"YnxU9rGs": {"announcement": "eUkgHh5l", "slogan": "4I3NQyIi"}, "wKxuRLBA": {"announcement": "JTv6zxm8", "slogan": "CCKfE8uk"}, "Smu8GDWX": {"announcement": "cxiTPZxX", "slogan": "MzY9WYSB"}}, "platformRequirements": {"WTs7Tcrz": [{"additionals": "xyCxpsZT", "directXVersion": "eti2stgY", "diskSpace": "sOgYRCAQ", "graphics": "6ceHNmbF", "label": "WWB0Vahk", "osVersion": "u6b0nia6", "processor": "f7iqCWDb", "ram": "L414PUtV", "soundCard": "OnquNh0g"}, {"additionals": "4wBA6ASB", "directXVersion": "HoZthAeC", "diskSpace": "qxG36Dwq", "graphics": "7MrZdTuH", "label": "ue2Sp6nC", "osVersion": "wgrN2GbB", "processor": "QG8d4VG2", "ram": "rpZWq21h", "soundCard": "YEPEOJVH"}, {"additionals": "X5UT5M5W", "directXVersion": "FVy88xZW", "diskSpace": "JHiXfIkQ", "graphics": "MLjp7YpP", "label": "IG5lSOWB", "osVersion": "oRDhPeHX", "processor": "X5Ttw8DZ", "ram": "qhWdFCIG", "soundCard": "gs8Y06TR"}], "nhJa0JQY": [{"additionals": "aQzVrQLg", "directXVersion": "Dbp0DWMO", "diskSpace": "7yCFFG21", "graphics": "dOp5F9LW", "label": "bel6Aq5t", "osVersion": "0JIqtMrR", "processor": "TMpJteLK", "ram": "kVvu2DBg", "soundCard": "LtIaUBm9"}, {"additionals": "Wa3yMcj4", "directXVersion": "7h1Plsej", "diskSpace": "N9dg9u76", "graphics": "46KuPhvj", "label": "bmctkgb2", "osVersion": "IM3rInNu", "processor": "4M6xDDdR", "ram": "3mhuvbJ1", "soundCard": "cnwnctyx"}, {"additionals": "6V0cK2DA", "directXVersion": "kiGKf0pB", "diskSpace": "OMFW06ff", "graphics": "io2iSvQI", "label": "iDDDo8ya", "osVersion": "IAvv2iUS", "processor": "pCOVW49m", "ram": "m6Eig7IS", "soundCard": "DqBHEmXe"}], "WUKdLbTi": [{"additionals": "5eIi7UW2", "directXVersion": "n2drVQIF", "diskSpace": "nrxdC5Je", "graphics": "A4DZBfxt", "label": "M5KOw4zj", "osVersion": "fpGmdAYB", "processor": "MBni6psd", "ram": "1adakiXn", "soundCard": "eFehQH62"}, {"additionals": "ig4NnYLa", "directXVersion": "gjMxwfaA", "diskSpace": "uePIxQpp", "graphics": "3sdSQ54y", "label": "CwSoV10b", "osVersion": "kdPu5vfs", "processor": "IIgRVTzJ", "ram": "Xgs8j3re", "soundCard": "tqp3Eiid"}, {"additionals": "j3D1SWcc", "directXVersion": "VpjxBi9X", "diskSpace": "k5JtWNFj", "graphics": "HEck566T", "label": "dwrqTNYL", "osVersion": "0OMvNHb7", "processor": "hm8yNOwi", "ram": "N8leR7Pd", "soundCard": "cbVBl9jq"}]}, "platforms": ["IOS", "Windows", "MacOS"], "players": ["Multi", "Multi", "Multi"], "primaryGenre": "RPG", "publisher": "8rtiDMaI", "releaseDate": "1986-12-10T00:00:00Z", "websiteUrl": "kQnXzyPS"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'YX8Qe6ED' \
    --namespace $AB_NAMESPACE \
    --storeId 'HZbbh9Jz' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'UNlgTzBq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'NzqhXyZM' \
    --namespace $AB_NAMESPACE \
    --storeId 'c8cMdXC4' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'EttRKpcm' \
    --itemId 'JJ7SVkLe' \
    --namespace $AB_NAMESPACE \
    --storeId 'jL7YEBmU' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'ZpE02ltB' \
    --itemId '8gKfJYsr' \
    --namespace $AB_NAMESPACE \
    --storeId 'E35iiWzq' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId '19YRZ5w9' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'nJRvvhrM' \
    --populateBundle 'false' \
    --region 'irMnGtTX' \
    --storeId 'GKeCOA9i' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'x437VILb' \
    --namespace $AB_NAMESPACE \
    --storeId 'kE0ktWcy' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 32, "comparison": "isNot", "name": "139IWhzm", "predicateType": "EntitlementPredicate", "value": "QZJNaq9j", "values": ["ttdC2FAq", "vFxtGJwu", "aI5Mcm7b"]}, {"anyOf": 52, "comparison": "isNot", "name": "5e0CcLAB", "predicateType": "EntitlementPredicate", "value": "O2Yb9gzq", "values": ["tY6ASYTc", "ta6vJG5a", "Qmk4ZWGW"]}, {"anyOf": 70, "comparison": "isGreaterThanOrEqual", "name": "8ac3mxVe", "predicateType": "EntitlementPredicate", "value": "Ci22Gzsp", "values": ["rDh2hUGO", "4pHvXYWN", "gaRLzCcp"]}]}, {"operator": "and", "predicates": [{"anyOf": 25, "comparison": "excludes", "name": "61zvz6wm", "predicateType": "SeasonTierPredicate", "value": "cUNBF5Jl", "values": ["0Q2iVMTN", "lkwY3zjt", "wmza0mJN"]}, {"anyOf": 3, "comparison": "isNot", "name": "41MopcH9", "predicateType": "SeasonTierPredicate", "value": "Q3wdWAuW", "values": ["HhzLTs3z", "eKKKUZO9", "vEu54oHB"]}, {"anyOf": 32, "comparison": "isNot", "name": "lmLSk5Rs", "predicateType": "SeasonTierPredicate", "value": "c9uynIoI", "values": ["5HLgemiY", "hZHmzsO9", "GewHIeuz"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "comparison": "includes", "name": "2qsYaeN2", "predicateType": "SeasonTierPredicate", "value": "hcz7v2Ae", "values": ["r93PdQPP", "AXwuU6zq", "3zvUhS5u"]}, {"anyOf": 52, "comparison": "is", "name": "d18zKGJj", "predicateType": "EntitlementPredicate", "value": "5BoVvefM", "values": ["ARLAVLpo", "EMoy5bYm", "tMCFLVx7"]}, {"anyOf": 10, "comparison": "includes", "name": "Vg55B0CN", "predicateType": "EntitlementPredicate", "value": "vEhN4Wli", "values": ["eQholcAQ", "lCbu2hHV", "S2NcqHKQ"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'KhhIzPql' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "dq8UyNGG"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'Cu7ZFCE4' \
    --offset '42' \
    --tag '03UJkE1N' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KnMkIWtO", "name": "rt8CokQo", "status": "ACTIVE", "tags": ["KEXdAByC", "Os5dhy4L", "LHOsBH9M"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '5xi9DSj3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'Ugo8Y9NP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VNyGs2F9", "name": "9f3XSeTK", "status": "INACTIVE", "tags": ["qllXk5h2", "8yZeKnGt", "QE8d8VNt"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId '7wQdjgRL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'M7jSQafx' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '38' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'tjCmJf7P' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'vqbshdcK' \
    --limit '36' \
    --offset '77' \
    --orderNos '["KggWDwHT", "nnfFtQ1S", "jFpEuZZH"]' \
    --sortBy 'marq0u4H' \
    --startTime 'QFeivvCX' \
    --status 'CHARGEBACK' \
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
    --orderNo 'qlKBuqF7' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'Dh9pHNlU' \
    --body '{"description": "MJFJWZpY"}' \
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
    --body '{"dryRun": false, "notifyUrl": "88raL0Sx", "privateKey": "pJLnROqL"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'gNLPfqDu' \
    --externalId 'NiH3EtXa' \
    --limit '48' \
    --notificationSource 'PAYPAL' \
    --notificationType 'klb9s4xQ' \
    --offset '12' \
    --paymentOrderNo 'vxmijEI7' \
    --startDate 'KCWE2jeW' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'EE1Br3PA' \
    --limit '53' \
    --offset '13' \
    --status 'CHARGEBACK_REVERSED' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BkoWvoPN", "currencyNamespace": "CTCawPds", "customParameters": {"EkJnnE6W": {}, "muoMBXaU": {}, "6CiyaD84": {}}, "description": "wLyVo21x", "extOrderNo": "lCS0Q4ZW", "extUserId": "sto53pda", "itemType": "CODE", "language": "kkZ-ldRZ", "metadata": {"kv6ILki0": "HHt1jRC9", "sn21oQLW": "smCpe0hj", "5gf1DR2u": "3hjSuye7"}, "notifyUrl": "Mhw9WFt2", "omitNotification": false, "platform": "4u8JVXUD", "price": 6, "recurringPaymentOrderNo": "AX4P7saw", "region": "06IT53uM", "returnUrl": "YjFRGXBm", "sandbox": true, "sku": "vigVUmOB", "subscriptionId": "ahwedJwX", "targetNamespace": "IRc9hhIC", "targetUserId": "HSofFpKZ", "title": "lLNUveTt"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'Lnf2veDh' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'vKPxGb1k' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'pwP44R9Y' \
    --body '{"extTxId": "D8W2aoZT", "paymentMethod": "64zSptAa", "paymentProvider": "STRIPE"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'SsPHL5kj' \
    --body '{"description": "DimSRi9M"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NEZIBhuB' \
    --body '{"amount": 69, "currencyCode": "aejWmd1N", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 64, "vat": 76}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'sNWrdOwE' \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Oculus", "Other", "Oculus"]}' \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --endTime 'aiYEGM3m' \
    --limit '79' \
    --offset '99' \
    --source 'DLC' \
    --startTime '3BYMblQj' \
    --status 'SUCCESS' \
    --transactionId 'eOKzFpd3' \
    --userId 'ecvVmCtv' \
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
    --body '{"appConfig": {"appName": "0aaFwqN8"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "BhCxIy9l"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "aR8E4eBw", "eventTopic": "XqQFqZiK", "maxAwarded": 50, "maxAwardedPerUser": 5, "namespaceExpression": "Dj8Cjliy", "rewardCode": "ekkEIRnT", "rewardConditions": [{"condition": "hhFvmEn5", "conditionName": "gb7nQEQr", "eventName": "taxOYdvs", "rewardItems": [{"duration": 32, "endDate": "1983-05-04T00:00:00Z", "itemId": "Tqabze4s", "quantity": 85}, {"duration": 76, "endDate": "1993-09-13T00:00:00Z", "itemId": "OAHzTsZm", "quantity": 8}, {"duration": 69, "endDate": "1984-11-16T00:00:00Z", "itemId": "VPZlgAwG", "quantity": 3}]}, {"condition": "y1VE7u6u", "conditionName": "Pn4J0tXr", "eventName": "fCgUUbCv", "rewardItems": [{"duration": 46, "endDate": "1974-12-11T00:00:00Z", "itemId": "S1NHaxYc", "quantity": 56}, {"duration": 17, "endDate": "1981-09-08T00:00:00Z", "itemId": "Oqq4YGcl", "quantity": 74}, {"duration": 91, "endDate": "1997-07-11T00:00:00Z", "itemId": "EcPfGP5Z", "quantity": 45}]}, {"condition": "N9h9WIf7", "conditionName": "6KWLf84B", "eventName": "j2sWfvKg", "rewardItems": [{"duration": 47, "endDate": "1978-07-02T00:00:00Z", "itemId": "jnKcTn1U", "quantity": 14}, {"duration": 98, "endDate": "1981-11-05T00:00:00Z", "itemId": "d984rj7J", "quantity": 97}, {"duration": 71, "endDate": "1984-07-24T00:00:00Z", "itemId": "RawhJRe6", "quantity": 89}]}], "userIdExpression": "USFODZvr"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'HyssCyOh' \
    --limit '29' \
    --offset '55' \
    --sortBy '["namespace:desc", "namespace", "rewardCode"]' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '2s4Uzt6I' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'wiQfutEi' \
    --body '{"description": "7WvfFbJi", "eventTopic": "cMXPUPw3", "maxAwarded": 53, "maxAwardedPerUser": 23, "namespaceExpression": "xhNG8Kut", "rewardCode": "dYkwOJ2f", "rewardConditions": [{"condition": "Y5TdksdK", "conditionName": "dVZEFXm8", "eventName": "M5Ltxm5u", "rewardItems": [{"duration": 96, "endDate": "1975-11-24T00:00:00Z", "itemId": "cbfOVsBm", "quantity": 79}, {"duration": 66, "endDate": "1998-12-09T00:00:00Z", "itemId": "3MKFbcgd", "quantity": 61}, {"duration": 38, "endDate": "1975-04-16T00:00:00Z", "itemId": "WQPPivOQ", "quantity": 30}]}, {"condition": "CtqBshi1", "conditionName": "0eF5jugp", "eventName": "Zw6MDmBa", "rewardItems": [{"duration": 83, "endDate": "1975-01-22T00:00:00Z", "itemId": "WmzdHMms", "quantity": 97}, {"duration": 20, "endDate": "1989-01-07T00:00:00Z", "itemId": "urOwfYom", "quantity": 66}, {"duration": 94, "endDate": "1990-03-05T00:00:00Z", "itemId": "SJu3viki", "quantity": 58}]}, {"condition": "hJazdyEv", "conditionName": "5cHQmkQv", "eventName": "SJ2Syera", "rewardItems": [{"duration": 49, "endDate": "1984-10-04T00:00:00Z", "itemId": "Q5Ce7oRb", "quantity": 83}, {"duration": 98, "endDate": "1984-04-21T00:00:00Z", "itemId": "w1aCbOfx", "quantity": 7}, {"duration": 59, "endDate": "1983-01-13T00:00:00Z", "itemId": "GhgRzxgc", "quantity": 52}]}], "userIdExpression": "lNxwnYtM"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'DdfUqteT' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'AT5G4F3v' \
    --body '{"payload": {"QAOt8NPn": {}, "msv5zDMd": {}, "pYHDuDDC": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'nHWKHv1Y' \
    --body '{"conditionName": "CTGK8BRU", "userId": "s2FS8KuA"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '7pMCX3xE' \
    --limit '66' \
    --offset '57' \
    --start 'AB6kHKlR' \
    --storeId 'enCrrRMX' \
    --viewId 'k918UHMK' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'vanjRtGE' \
    --body '{"active": true, "displayOrder": 5, "endDate": "1971-12-09T00:00:00Z", "ext": {"NSILyh98": {}, "6PX1jUAr": {}, "n4Wmm7ry": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 3, "itemCount": 33, "rule": "SEQUENCE"}, "items": [{"id": "pVB6QzwC", "sku": "6XvZdIvH"}, {"id": "925IIlHs", "sku": "REsGnAOj"}, {"id": "E7UmiIfq", "sku": "D4t1hrno"}], "localizations": {"KnTrP9v9": {"description": "0WSqJtuR", "localExt": {"OKpm3rTZ": {}, "Z2NCpNoj": {}, "65MIruww": {}}, "longDescription": "BP14nbPO", "title": "JPgFF9TQ"}, "tueYu15m": {"description": "vpSlNcnr", "localExt": {"uWtZNyrD": {}, "kwTFRydU": {}, "lnFpEJDX": {}}, "longDescription": "ghs7MQFj", "title": "6ysb9UCG"}, "4TMFJ6H6": {"description": "nWwmPYCm", "localExt": {"KU3ImLKP": {}, "Gqf1TdHZ": {}, "XcuZ0dLs": {}}, "longDescription": "aoAHTDUB", "title": "TPZioKlB"}}, "name": "rNS9FdUd", "rotationType": "CUSTOM", "startDate": "1994-07-23T00:00:00Z", "viewId": "LChMscTq"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'FhM9OTvV' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '7i0EAlEz' \
    --storeId 'ab3o5JKq' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '5f1To47k' \
    --storeId 'HkEU0vKe' \
    --body '{"active": true, "displayOrder": 29, "endDate": "1997-06-28T00:00:00Z", "ext": {"JaAEsO3R": {}, "kQz3dZSs": {}, "bI0YkZqa": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 15, "itemCount": 66, "rule": "SEQUENCE"}, "items": [{"id": "KxRUCElU", "sku": "co1shUDc"}, {"id": "UuY53mfX", "sku": "Z7p07OGz"}, {"id": "yReRizAE", "sku": "QTiOjyTp"}], "localizations": {"WYe3pBur": {"description": "MyGy0FzU", "localExt": {"eZEQhUIA": {}, "qyF9jhDg": {}, "dONwuNMq": {}}, "longDescription": "yN8wBoh4", "title": "Lo18KdaM"}, "WU3hyWBg": {"description": "LYy9CwbK", "localExt": {"Mv7wKR3q": {}, "zP1Bvjpe": {}, "dWpqOtWn": {}}, "longDescription": "chFWKzwE", "title": "thb1I0nw"}, "Zztl8BME": {"description": "Sj85HMks", "localExt": {"26aAKMgo": {}, "4iYG3efC": {}, "FpuiP414": {}}, "longDescription": "HhxLNaoA", "title": "V7UGJK06"}}, "name": "tQ4ywJg7", "rotationType": "NONE", "startDate": "1996-07-17T00:00:00Z", "viewId": "s2H3W9XL"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'xC3jb6oJ' \
    --storeId '94DVvYsw' \
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
    --body '{"defaultLanguage": "fneGLnqI", "defaultRegion": "pLXHSeXf", "description": "AAQ0cJI2", "supportedLanguages": ["xjAphhTv", "4uZ6iaMf", "O79dg73P"], "supportedRegions": ["VSJh4QnQ", "l6KnOYEp", "bhOS0Xsf"], "title": "RJEgZN5T"}' \
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
    --storeId 'IcGoMtGx' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '4xyjqXQI' \
    --body '{"defaultLanguage": "TpbJQL7C", "defaultRegion": "0N63v4YD", "description": "keBbuoSZ", "supportedLanguages": ["NijxfLd7", "cz2LFJqg", "XNDxLH8Z"], "supportedRegions": ["2cOtLGHx", "TpnbDq5B", "XbOAmHsM"], "title": "WEMm1tfv"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'HU0COgVl' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'FUgVfTBu' \
    --action 'DELETE' \
    --itemSku '5oHpyo92' \
    --itemType 'CODE' \
    --limit '35' \
    --offset '60' \
    --selected 'false' \
    --sortBy '["createdAt:asc", "createdAt:desc"]' \
    --status 'PUBLISHED' \
    --type 'SECTION' \
    --updatedAtEnd 'NPd1v9x5' \
    --updatedAtStart '4dYMzaD9' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId '2UppkmCu' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'kBeRgtef' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'bJdJUrht' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'YxqQwH1w' \
    --action 'UPDATE' \
    --itemSku 'RYMQ5cxd' \
    --itemType 'CODE' \
    --type 'VIEW' \
    --updatedAtEnd 'JFlN2cK4' \
    --updatedAtStart 'zujl22ZY' \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'WJSOHYlg' \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId '2lXZhyss' \
    --namespace $AB_NAMESPACE \
    --storeId 'uRyEx3ad' \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '6Ytp5Bb5' \
    --namespace $AB_NAMESPACE \
    --storeId 'yDPludT5' \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'lYabHWt7' \
    --targetStoreId 'Hx6F7bPh' \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'bhPA3Kzd' \
    --limit '100' \
    --offset '88' \
    --sku 'v0wxVIkq' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'twgYdGGm' \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'lQmLZRzK' \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'L5kaMkkp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'F8qizbl8' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "FeQy8GXW"}' \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'LIKeqMmi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'yQYHTYBt' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 12, "orderNo": "bCEkbFH9"}' \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'L8f7KFT4' \
    --body '{"achievements": [{"id": "EmtEWZQk", "value": 74}, {"id": "kXCmEWM7", "value": 69}, {"id": "2m8WkcN2", "value": 79}], "steamUserId": "cPOqhelX"}' \
    > test.out 2>&1
eval_tap $? 206 'UnlockSteamUserAchievement' test.out

#- 207 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'p4zPIm0Q' \
    --xboxUserId 'G0PBb3k4' \
    > test.out 2>&1
eval_tap $? 207 'GetXblUserAchievements' test.out

#- 208 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'W0rfFFqp' \
    --body '{"achievements": [{"id": "MnI1HQR2", "percentComplete": 64}, {"id": "cduYMoc5", "percentComplete": 83}, {"id": "K3JTv4rQ", "percentComplete": 77}], "serviceConfigId": "naBo9mT9", "titleId": "AI57ng4k", "xboxUserId": "fOvNvfFx"}' \
    > test.out 2>&1
eval_tap $? 208 'UpdateXblUserAchievement' test.out

#- 209 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'XAKwy9nr' \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeCampaign' test.out

#- 210 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'twudHyW0' \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeEntitlement' test.out

#- 211 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'RfNazIhw' \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeFulfillment' test.out

#- 212 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'vl3pzGDR' \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeIntegration' test.out

#- 213 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'LzbYSZ7G' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeOrder' test.out

#- 214 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'Y4xZSZej' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizePayment' test.out

#- 215 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'fUAf73UP' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeRevocation' test.out

#- 216 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'I8L7lGoH' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeSubscription' test.out

#- 217 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '2QfbKpqo' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeWallet' test.out

#- 218 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'QZ6HOn4I' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLCByPlatform' test.out

#- 219 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'HtuIMBKs' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 219 'GetUserDLC' test.out

#- 220 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'p8jliUzc' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName '4JeBFZEk' \
    --features '["ExZHdVbO", "Coo8azC1", "dX1r73bu"]' \
    --itemId '["Vq49jzYR", "sVCDap2B", "4E22NUPx"]' \
    --limit '62' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 220 'QueryUserEntitlements' test.out

#- 221 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'MA9xUYK9' \
    --body '[{"endDate": "1982-05-24T00:00:00Z", "grantedCode": "vCRQayO0", "itemId": "uGYNNHbO", "itemNamespace": "uTbRY2nC", "language": "QD-wmYb", "quantity": 7, "region": "eyywPHrW", "source": "REWARD", "startDate": "1977-01-26T00:00:00Z", "storeId": "RV5gDCOg"}, {"endDate": "1998-11-29T00:00:00Z", "grantedCode": "SJdz8DKc", "itemId": "RoVwGkD8", "itemNamespace": "cby0Anmp", "language": "hmpq_gjYz_111", "quantity": 48, "region": "88IlesdB", "source": "REWARD", "startDate": "1997-12-06T00:00:00Z", "storeId": "t8Gz23aT"}, {"endDate": "1975-06-23T00:00:00Z", "grantedCode": "bH33Cs5i", "itemId": "FqhAdchX", "itemNamespace": "EjYOpcLN", "language": "jm-115", "quantity": 4, "region": "jUBfhztW", "source": "REWARD", "startDate": "1982-12-24T00:00:00Z", "storeId": "P51n4E01"}]' \
    > test.out 2>&1
eval_tap $? 221 'GrantUserEntitlement' test.out

#- 222 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'krLs4WCr' \
    --activeOnly 'true' \
    --appId 'sYO39maG' \
    > test.out 2>&1
eval_tap $? 222 'GetUserAppEntitlementByAppId' test.out

#- 223 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'J29NyXye' \
    --activeOnly 'true' \
    --limit '93' \
    --offset '3' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlementsByAppType' test.out

#- 224 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '2PTVyRjQ' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'bEFqG5ah' \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementByItemId' test.out

#- 225 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '7y41xQOt' \
    --ids '["YCvs8Ykx", "Q879TF80", "E2U0Fssh"]' \
    > test.out 2>&1
eval_tap $? 225 'GetUserActiveEntitlementsByItemIds' test.out

#- 226 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'prl4yQPw' \
    --activeOnly 'false' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'fhbxHF6u' \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementBySku' test.out

#- 227 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'gxpRMNZj' \
    --appIds '["oZIPzttl", "vXQivNF2", "L0pXHnpB"]' \
    --itemIds '["h6D8yc49", "CZ69ePre", "1Wwfj2dQ"]' \
    --skus '["ZR8zo7hI", "VTvmNOYj", "I9HBmtIB"]' \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlement' test.out

#- 228 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'CI3SVkj1' \
    --itemIds '["K9tu19Ec", "Q4oUoz54", "D10MUMuf"]' \
    > test.out 2>&1
eval_tap $? 228 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 229 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'vcf3qAr3' \
    --appId 'PdqjZPom' \
    > test.out 2>&1
eval_tap $? 229 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 230 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'TnvQrMPg' \
    --entitlementClazz 'CODE' \
    --itemId 'YZxoN3kr' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemId' test.out

#- 231 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'A5HmSYM5' \
    --ids '["rOa0qGTS", "Pa45xbAk", "6NUwSgXD"]' \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipByItemIds' test.out

#- 232 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId '6yoh6iwU' \
    --entitlementClazz 'CODE' \
    --sku '8FywSXJe' \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementOwnershipBySku' test.out

#- 233 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'cY6Y1eR0' \
    > test.out 2>&1
eval_tap $? 233 'RevokeAllEntitlements' test.out

#- 234 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'LW2jHPMR' \
    --entitlementIds 'hLqGu9VN' \
    > test.out 2>&1
eval_tap $? 234 'RevokeUserEntitlements' test.out

#- 235 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'nfuaPm7e' \
    --namespace $AB_NAMESPACE \
    --userId 'wUJ8VGx7' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlement' test.out

#- 236 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'efXZUTJL' \
    --namespace $AB_NAMESPACE \
    --userId 'rYeJe5tl' \
    --body '{"endDate": "1978-09-29T00:00:00Z", "nullFieldList": ["akHOTnAR", "uE17n6oX", "a6UEpW8e"], "startDate": "1983-08-24T00:00:00Z", "status": "INACTIVE", "useCount": 14}' \
    > test.out 2>&1
eval_tap $? 236 'UpdateUserEntitlement' test.out

#- 237 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'vnkXShgf' \
    --namespace $AB_NAMESPACE \
    --userId 'Rbn8TRTH' \
    --body '{"options": ["VMdLrSBY", "zUsLkA91", "ki5kkeH0"], "requestId": "Wd36Z2dP", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 237 'ConsumeUserEntitlement' test.out

#- 238 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'jQ4UJRxT' \
    --namespace $AB_NAMESPACE \
    --userId 'tWAl7WE2' \
    > test.out 2>&1
eval_tap $? 238 'DisableUserEntitlement' test.out

#- 239 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'fSzQMbpC' \
    --namespace $AB_NAMESPACE \
    --userId 'XW7BjGMF' \
    > test.out 2>&1
eval_tap $? 239 'EnableUserEntitlement' test.out

#- 240 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'FHyGr979' \
    --namespace $AB_NAMESPACE \
    --userId 'QvlnAjlD' \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementHistories' test.out

#- 241 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'w8s0ldzj' \
    --namespace $AB_NAMESPACE \
    --userId 'j1VaZhbZ' \
    > test.out 2>&1
eval_tap $? 241 'RevokeUserEntitlement' test.out

#- 242 RevokeUseCount
samples/cli/sample-apps Platform revokeUseCount \
    --entitlementId 'AJnQCViV' \
    --namespace $AB_NAMESPACE \
    --userId 'RYh726MX' \
    --body '{"reason": "8JzRmvPX", "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 242 'RevokeUseCount' test.out

#- 243 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'S95HwavR' \
    --namespace $AB_NAMESPACE \
    --userId '0xzWNE1v' \
    --body '{"requestId": "yQTPAcEq", "useCount": 93}' \
    > test.out 2>&1
eval_tap $? 243 'SellUserEntitlement' test.out

#- 244 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'wpA0Q2IQ' \
    --body '{"duration": 71, "endDate": "1986-05-10T00:00:00Z", "itemId": "aSUxQeti", "itemSku": "5Pfgg3iW", "language": "9Wd5cCt0", "metadata": {"vHyoUAnF": {}, "g3IV1Fbv": {}, "fy8abzHv": {}}, "order": {"currency": {"currencyCode": "mKeiQn66", "currencySymbol": "crwK9WV2", "currencyType": "VIRTUAL", "decimals": 25, "namespace": "9cUi7dfh"}, "ext": {"IJcyv6cV": {}, "p3TSdaz4": {}, "8kbuxNXV": {}}, "free": true}, "orderNo": "Icx4W7BE", "origin": "Xbox", "overrideBundleItemQty": {"OeSTDGbx": 85, "gzTXVkNZ": 0, "F2i0pnlO": 72}, "quantity": 80, "region": "vLDX8drt", "source": "REFERRAL_BONUS", "startDate": "1988-08-05T00:00:00Z", "storeId": "ifQXLrKV"}' \
    > test.out 2>&1
eval_tap $? 244 'FulfillItem' test.out

#- 245 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'mltcZ00f' \
    --body '{"code": "mQgUvW8H", "language": "hABb-qy", "region": "B4RFVDOf"}' \
    > test.out 2>&1
eval_tap $? 245 'RedeemCode' test.out

#- 246 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'x8H38x4V' \
    --body '{"metadata": {"nm76OiZ4": {}, "KyKUy0gC": {}, "rWENLb4h": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "v7x5ObFp", "namespace": "LM6wnmWP"}, "item": {"itemId": "pks8gY2h", "itemSku": "cFTpK6g1", "itemType": "bzpPtRHn"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "USR7m7d5", "namespace": "brb8sKBV"}, "item": {"itemId": "cP1iNTQG", "itemSku": "ejpdJ0UR", "itemType": "PdALxU2A"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "5CPFCofd", "namespace": "nmvpFaiI"}, "item": {"itemId": "eMsUwlHo", "itemSku": "r1CaJTvM", "itemType": "B2gshnVf"}, "quantity": 52, "type": "CURRENCY"}], "source": "DLC", "transactionId": "uuNYTyWM"}' \
    > test.out 2>&1
eval_tap $? 246 'FulfillRewards' test.out

#- 247 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'aRFqzC3R' \
    --endTime 'JfjLlA2A' \
    --limit '93' \
    --offset '67' \
    --productId 'dZzGBOtF' \
    --startTime '7mvmHFrg' \
    --status 'FAILED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPOrders' test.out

#- 248 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'oLwOevwv' \
    > test.out 2>&1
eval_tap $? 248 'QueryAllUserIAPOrders' test.out

#- 249 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId '82m6mdDm' \
    --endTime 'BZus0RCL' \
    --limit '20' \
    --offset '61' \
    --startTime 'OVLQ5lm9' \
    --status 'SUCCESS' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 249 'QueryUserIAPConsumeHistory' test.out

#- 250 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'lUre2KZ6' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "YD", "productId": "Y46bi0M6", "region": "IfWapZyN", "transactionId": "eIeMG6fu", "type": "STADIA"}' \
    > test.out 2>&1
eval_tap $? 250 'MockFulfillIAPItem' test.out

#- 251 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'xYX80IRk' \
    --itemId 'e6dLD8Et' \
    --limit '91' \
    --offset '93' \
    --status 'CLOSED' \
    > test.out 2>&1
eval_tap $? 251 'QueryUserOrders' test.out

#- 252 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'QFcuO0IZ' \
    --body '{"currencyCode": "34wErR4c", "currencyNamespace": "Lfl3UFJT", "discountedPrice": 49, "ext": {"ZjODHfw0": {}, "0pllKyOp": {}, "dtF5WEMj": {}}, "itemId": "z235NyRq", "language": "SauvSjWX", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 33, "quantity": 48, "region": "mdW5wLra", "returnUrl": "0eVezcNJ", "sandbox": false, "sectionId": "cqEy6FxE"}' \
    > test.out 2>&1
eval_tap $? 252 'AdminCreateUserOrder' test.out

#- 253 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'uS9fhiqM' \
    --itemId 'MBG4l2vF' \
    > test.out 2>&1
eval_tap $? 253 'CountOfPurchasedItem' test.out

#- 254 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'qfsLqlRR' \
    --userId 'ir32t35k' \
    > test.out 2>&1
eval_tap $? 254 'GetUserOrder' test.out

#- 255 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'eTaVyaJ3' \
    --userId 'pW6w9nB4' \
    --body '{"status": "FULFILLED", "statusReason": "bhn5L1SA"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserOrderStatus' test.out

#- 256 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'PTAZGonp' \
    --userId 'p0NVWBpn' \
    > test.out 2>&1
eval_tap $? 256 'FulfillUserOrder' test.out

#- 257 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'jF5Gc0uM' \
    --userId 'acix0GqN' \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderGrant' test.out

#- 258 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'JASYb88W' \
    --userId 'xElhBbM7' \
    > test.out 2>&1
eval_tap $? 258 'GetUserOrderHistories' test.out

#- 259 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '01nT28vd' \
    --userId 'enEnXbqi' \
    --body '{"additionalData": {"cardSummary": "s8YSLAnq"}, "authorisedTime": "1981-09-19T00:00:00Z", "chargebackReversedTime": "1989-03-24T00:00:00Z", "chargebackTime": "1993-03-21T00:00:00Z", "chargedTime": "1971-06-02T00:00:00Z", "createdTime": "1991-03-13T00:00:00Z", "currency": {"currencyCode": "Eqma04ld", "currencySymbol": "SQgyCr68", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "n3GLG3Q1"}, "customParameters": {"9vQUXc3m": {}, "uTVYlU6k": {}, "9IjpIG2c": {}}, "extOrderNo": "DKSjll2e", "extTxId": "wvypuZpI", "extUserId": "1b5VaoQZ", "issuedAt": "1983-09-27T00:00:00Z", "metadata": {"gv6sCQ9h": "63Rvxy0C", "k5STwA9E": "kpSrejqS", "qTsitb93": "DQ4rxJn6"}, "namespace": "ZLnrek5b", "nonceStr": "PgYagmQM", "paymentMethod": "skizMsvm", "paymentMethodFee": 32, "paymentOrderNo": "BmTtrF3p", "paymentProvider": "CHECKOUT", "paymentProviderFee": 63, "paymentStationUrl": "SeYQCWwd", "price": 30, "refundedTime": "1993-03-22T00:00:00Z", "salesTax": 71, "sandbox": true, "sku": "bc0sSqwb", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "UHTn6kdx", "subscriptionId": "gXa2X08p", "subtotalPrice": 42, "targetNamespace": "tFPlHpse", "targetUserId": "jS9kwU1h", "tax": 45, "totalPrice": 50, "totalTax": 95, "txEndTime": "1995-05-02T00:00:00Z", "type": "43wWSGsE", "userId": "J265coZR", "vat": 57}' \
    > test.out 2>&1
eval_tap $? 259 'ProcessUserOrderNotification' test.out

#- 260 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'jg2l6rsX' \
    --userId 'ERbzJ1a0' \
    > test.out 2>&1
eval_tap $? 260 'DownloadUserOrderReceipt' test.out

#- 261 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId '5hXODfd4' \
    --body '{"currencyCode": "QMjObbe8", "currencyNamespace": "eXwPAyGO", "customParameters": {"bzOoKDgn": {}, "2bAzXRvW": {}, "1UUhty0j": {}}, "description": "xETu91Ke", "extOrderNo": "Qwtxl8DP", "extUserId": "2E7oNX6k", "itemType": "COINS", "language": "eqUV-hw", "metadata": {"2mAVIonR": "jLGcyq2k", "kRbkU1VW": "177iZyOF", "kEYXCA5j": "WEEamEdp"}, "notifyUrl": "6EJKlg5g", "omitNotification": false, "platform": "19iGxb8c", "price": 56, "recurringPaymentOrderNo": "oXkdOhtJ", "region": "VrBPBgIK", "returnUrl": "U1JrUcCo", "sandbox": true, "sku": "ZFsLj2Kh", "subscriptionId": "w4j9l3sK", "title": "PDReieaB"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserPaymentOrder' test.out

#- 262 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '6UkVqnYR' \
    --userId 'eX68Dn28' \
    --body '{"description": "5h9d8aW9"}' \
    > test.out 2>&1
eval_tap $? 262 'RefundUserPaymentOrder' test.out

#- 263 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'UaW2wvme' \
    --body '{"code": "Ij013vtw", "orderNo": "aqkIVzvY"}' \
    > test.out 2>&1
eval_tap $? 263 'ApplyUserRedemption' test.out

#- 264 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'neXGa34y' \
    --body '{"meta": {"UR6QFFmv": {}, "OTneFxPz": {}, "XeRcMimS": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "3dXagn0Q", "namespace": "dBwb4WHe"}, "entitlement": {"entitlementId": "OVEhkmrY"}, "item": {"itemIdentity": "aXtlg2oa", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "WmmWnOhx", "namespace": "01OKhyQJ"}, "entitlement": {"entitlementId": "NBnWWDVX"}, "item": {"itemIdentity": "cGoIrxAM", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 55, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "Y5aVKiOJ", "namespace": "p6F3bLSO"}, "entitlement": {"entitlementId": "jsUTq9sJ"}, "item": {"itemIdentity": "dZ1dBUpm", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 92, "type": "CURRENCY"}], "source": "IAP", "transactionId": "sGB3TXSF"}' \
    > test.out 2>&1
eval_tap $? 264 'DoRevocation' test.out

#- 265 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'WtoRUU1d' \
    --body '{"gameSessionId": "cx2Uj3KM", "payload": {"ABaJmXzg": {}, "JTvZG8Vk": {}, "598sXefh": {}}, "scid": "11NQVJbN", "sessionTemplateName": "dBHcuRlX"}' \
    > test.out 2>&1
eval_tap $? 265 'RegisterXblSessions' test.out

#- 266 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '2e95EdiZ' \
    --chargeStatus 'RECURRING_CHARGING' \
    --itemId 'UhoBwqMW' \
    --limit '37' \
    --offset '96' \
    --sku 'DrTSEy2F' \
    --status 'INIT' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 266 'QueryUserSubscriptions' test.out

#- 267 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'pjqV6xxe' \
    --excludeSystem 'false' \
    --limit '18' \
    --offset '9' \
    --subscriptionId 'IO68PKBH' \
    > test.out 2>&1
eval_tap $? 267 'GetUserSubscriptionActivities' test.out

#- 268 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'QzbHFanY' \
    --body '{"grantDays": 55, "itemId": "bDwCCEpr", "language": "4oksYkbs", "reason": "Eg7SQB8f", "region": "kGNRwM2w", "source": "CXWSPLjw"}' \
    > test.out 2>&1
eval_tap $? 268 'PlatformSubscribeSubscription' test.out

#- 269 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Iw4LmNPW' \
    --itemId '1ASmk4zE' \
    > test.out 2>&1
eval_tap $? 269 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 270 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BUhN30e6' \
    --userId '7XIOryt1' \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscription' test.out

#- 271 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'iaEA13I4' \
    --userId 'IOgeIhvI' \
    > test.out 2>&1
eval_tap $? 271 'DeleteUserSubscription' test.out

#- 272 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'gdYfS5Lt' \
    --userId 'RcMuxvtA' \
    --force 'false' \
    --body '{"immediate": true, "reason": "E7eRzodD"}' \
    > test.out 2>&1
eval_tap $? 272 'CancelSubscription' test.out

#- 273 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'N4CXITON' \
    --userId 'OjuxBaRX' \
    --body '{"grantDays": 31, "reason": "cs9lfs3Z"}' \
    > test.out 2>&1
eval_tap $? 273 'GrantDaysToSubscription' test.out

#- 274 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'APlkUj6R' \
    --userId 'habg3zHe' \
    --excludeFree 'true' \
    --limit '31' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionBillingHistories' test.out

#- 275 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'rV13wvsi' \
    --userId 'aOMNTe0I' \
    --body '{"additionalData": {"cardSummary": "61nVwpvz"}, "authorisedTime": "1998-05-09T00:00:00Z", "chargebackReversedTime": "1973-12-29T00:00:00Z", "chargebackTime": "1992-07-25T00:00:00Z", "chargedTime": "1997-06-25T00:00:00Z", "createdTime": "1990-05-20T00:00:00Z", "currency": {"currencyCode": "eoyMPZQr", "currencySymbol": "xbax17YJ", "currencyType": "VIRTUAL", "decimals": 48, "namespace": "4ZHb3ux9"}, "customParameters": {"OiA9IiA7": {}, "NrjxOwsl": {}, "aw5wmil0": {}}, "extOrderNo": "ChNauEMB", "extTxId": "xM3AnE2H", "extUserId": "6aWUxjQO", "issuedAt": "1982-08-16T00:00:00Z", "metadata": {"p4riM4EI": "47SNmHAg", "ViZnEypO": "RegWHzWQ", "77v3mpFB": "7wbw596p"}, "namespace": "GesSB0BY", "nonceStr": "GTQRPZe3", "paymentMethod": "2Fm6HH5T", "paymentMethodFee": 2, "paymentOrderNo": "KzZ4TDYU", "paymentProvider": "XSOLLA", "paymentProviderFee": 48, "paymentStationUrl": "H48uPD9r", "price": 65, "refundedTime": "1984-05-12T00:00:00Z", "salesTax": 54, "sandbox": false, "sku": "qUJW0f5a", "status": "CHARGED", "statusReason": "JJLEteIx", "subscriptionId": "9PyaTPw1", "subtotalPrice": 1, "targetNamespace": "mooGzEBR", "targetUserId": "xsXOAs97", "tax": 91, "totalPrice": 78, "totalTax": 72, "txEndTime": "1976-10-22T00:00:00Z", "type": "NrslujLD", "userId": "VdLz0hNC", "vat": 56}' \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserSubscriptionNotification' test.out

#- 276 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName '7CVmV0MN' \
    --namespace $AB_NAMESPACE \
    --userId 'cy6Ow9it' \
    --body '{"count": 30, "orderNo": "TKILuJMU"}' \
    > test.out 2>&1
eval_tap $? 276 'AcquireUserTicket' test.out

#- 277 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'mBdbxrs9' \
    > test.out 2>&1
eval_tap $? 277 'QueryUserCurrencyWallets' test.out

#- 278 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'kYhQV8xr' \
    --namespace $AB_NAMESPACE \
    --userId 'ONULPI9j' \
    --body '{"allowOverdraft": false, "amount": 85, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"0ByK86jF": {}, "fByEWssI": {}, "fLVZofHy": {}}, "reason": "TNdg7Tcd"}' \
    > test.out 2>&1
eval_tap $? 278 'DebitUserWalletByCurrencyCode' test.out

#- 279 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode '0oit5byn' \
    --namespace $AB_NAMESPACE \
    --userId 'UCQzQdrT' \
    --limit '76' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 279 'ListUserCurrencyTransactions' test.out

#- 280 CheckWallet
eval_tap 0 280 'CheckWallet # SKIP deprecated' test.out

#- 281 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode '8193Lc2K' \
    --namespace $AB_NAMESPACE \
    --userId 'dXQ8XeJg' \
    --body '{"amount": 9, "expireAt": "1980-01-29T00:00:00Z", "metadata": {"y4zcvAj8": {}, "dvtwGkln": {}, "dokGkSOa": {}}, "origin": "Epic", "reason": "ZEUFnh1D", "source": "REWARD"}' \
    > test.out 2>&1
eval_tap $? 281 'CreditUserWallet' test.out

#- 282 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'cfAjcXdg' \
    --namespace $AB_NAMESPACE \
    --userId 'XMiPMcMD' \
    --body '{"amount": 61, "metadata": {"UKq3bv5c": {}, "ntN3x7eh": {}, "0b4hf2tI": {}}, "walletPlatform": "IOS"}' \
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
    --storeId 'y4NRFApB' \
    > test.out 2>&1
eval_tap $? 288 'ListViews' test.out

#- 289 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'GeIpgEDP' \
    --body '{"displayOrder": 24, "localizations": {"ZJF0rQh0": {"description": "07xmnpsa", "localExt": {"MGvo3YeN": {}, "NTapuko8": {}, "Exu1rqAc": {}}, "longDescription": "uO61UJtt", "title": "sI32gNsC"}, "PgW9kYXV": {"description": "gOaKbdfq", "localExt": {"rZHqHvnd": {}, "APhrTjcL": {}, "yBZKJlM4": {}}, "longDescription": "CdkvnMbI", "title": "mmUY14yt"}, "qnv4aakw": {"description": "bn4PYIrE", "localExt": {"d2uwnK4C": {}, "TDwqNpmv": {}, "F31B1SOL": {}}, "longDescription": "4frpzOr9", "title": "Hvc8p9WU"}}, "name": "6DyAb4H4"}' \
    > test.out 2>&1
eval_tap $? 289 'CreateView' test.out

#- 290 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'UA5riC8R' \
    --storeId 'dazy0885' \
    > test.out 2>&1
eval_tap $? 290 'GetView' test.out

#- 291 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'dEMzvc3a' \
    --storeId '1pvx95Nd' \
    --body '{"displayOrder": 46, "localizations": {"tKAmprYZ": {"description": "uTsyEPlz", "localExt": {"kpFJ9Vvf": {}, "iuRgwWdZ": {}, "2SJswxYq": {}}, "longDescription": "BSjZkHk7", "title": "7u46yQH5"}, "3lwbSoQi": {"description": "6H5P10Jh", "localExt": {"9HlHZKh9": {}, "xQbcmVIi": {}, "I5utL8SG": {}}, "longDescription": "mUKfEtUq", "title": "fLzW56LX"}, "mQtPkHY3": {"description": "kAGFiy9j", "localExt": {"g951DifK": {}, "jIyM33HC": {}, "glYBpdLp": {}}, "longDescription": "R3gMnHQk", "title": "7NFGY2Fa"}}, "name": "oAHzLoH8"}' \
    > test.out 2>&1
eval_tap $? 291 'UpdateView' test.out

#- 292 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'l59Ps74C' \
    --storeId '5oYjezs8' \
    > test.out 2>&1
eval_tap $? 292 'DeleteView' test.out

#- 293 QueryWallets
eval_tap 0 293 'QueryWallets # SKIP deprecated' test.out

#- 294 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 71, "expireAt": "1986-08-30T00:00:00Z", "metadata": {"miL5BEE1": {}, "jTUxf8cL": {}, "SXzKA6E6": {}}, "origin": "Other", "reason": "glU7Amb4", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "87hS8xPf", "userIds": ["Bas1SMAz", "6mI68P6I", "1GyL3T30"]}, {"creditRequest": {"amount": 26, "expireAt": "1995-06-26T00:00:00Z", "metadata": {"9Gu2MJW1": {}, "MgNmakSp": {}, "T18HVrMJ": {}}, "origin": "Steam", "reason": "St4hXc7C", "source": "REFERRAL_BONUS"}, "currencyCode": "eTVKvw5x", "userIds": ["jOMJdB0E", "o2ggT0EL", "9iGjgZVk"]}, {"creditRequest": {"amount": 88, "expireAt": "1993-09-04T00:00:00Z", "metadata": {"x8JXNT1Y": {}, "DwpWNbqo": {}, "kfDxiqbj": {}}, "origin": "GooglePlay", "reason": "B2SHg6SD", "source": "GIFT"}, "currencyCode": "stqCfp2g", "userIds": ["SArIlrIP", "ETqF831N", "u1UpFbjx"]}]' \
    > test.out 2>&1
eval_tap $? 294 'BulkCredit' test.out

#- 295 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "ZLdkiO6y", "request": {"allowOverdraft": true, "amount": 63, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"4GBbro6i": {}, "yFBnc59d": {}, "341BPp0P": {}}, "reason": "1K7rpGHV"}, "userIds": ["NZLSGcjO", "i1Se4I0t", "P5nLaEea"]}, {"currencyCode": "iwOB1uId", "request": {"allowOverdraft": true, "amount": 45, "balanceOrigin": "System", "balanceSource": "OTHER", "metadata": {"iH6jgw4W": {}, "Rie0cheN": {}, "ken3TxNX": {}}, "reason": "aVj985fW"}, "userIds": ["A0Reuzx3", "aucIkdk4", "JyznEMC0"]}, {"currencyCode": "gMNAdMn6", "request": {"allowOverdraft": false, "amount": 31, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"qKXpeWHN": {}, "qNpxSA57": {}, "VT5xANdB": {}}, "reason": "V5vT3NCN"}, "userIds": ["J0xTNwtd", "quLtrnxI", "BiWc8Uph"]}]' \
    > test.out 2>&1
eval_tap $? 295 'BulkDebit' test.out

#- 296 GetWallet
eval_tap 0 296 'GetWallet # SKIP deprecated' test.out

#- 297 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'T2YOdcNw' \
    --end 'doPR1QUB' \
    --start 'xBSnhwQq' \
    > test.out 2>&1
eval_tap $? 297 'SyncOrders' test.out

#- 298 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["VEmglIwy", "4rpY2MKN", "Cj7wZstY"], "apiKey": "i1p2NXfd", "authoriseAsCapture": true, "blockedPaymentMethods": ["6kSYFwbi", "Rp7qvNSp", "sL3i6UNp"], "clientKey": "W03iEFrN", "dropInSettings": "zuJJCSgJ", "liveEndpointUrlPrefix": "m6v78dxs", "merchantAccount": "kCnOEaN9", "notificationHmacKey": "qSg8LINo", "notificationPassword": "HrdgvKJH", "notificationUsername": "3P8zc5oe", "returnUrl": "9iHmRseM", "settings": "Q9sqtgG2"}' \
    > test.out 2>&1
eval_tap $? 298 'TestAdyenConfig' test.out

#- 299 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "GN4O1dWz", "privateKey": "clV0qIpZ", "publicKey": "7arfHOUp", "returnUrl": "hFdPNVhm"}' \
    > test.out 2>&1
eval_tap $? 299 'TestAliPayConfig' test.out

#- 300 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "TQQuLPQ2", "secretKey": "B6eMUcc2"}' \
    > test.out 2>&1
eval_tap $? 300 'TestCheckoutConfig' test.out

#- 301 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'Vm1o9TgT' \
    --region 'eF0dnvU2' \
    > test.out 2>&1
eval_tap $? 301 'DebugMatchedPaymentMerchantConfig' test.out

#- 302 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'true' \
    --body '{"clientID": "RixkI8dB", "clientSecret": "w28iKiXB", "returnUrl": "a5WKPlQK", "webHookId": "Hcwhe7l1"}' \
    > test.out 2>&1
eval_tap $? 302 'TestPayPalConfig' test.out

#- 303 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["AWaghLLB", "Pp2mTU2K", "CT7P8pbO"], "publishableKey": "mv5wPnt5", "secretKey": "SBDe8w57", "webhookSecret": "BqmpbR6b"}' \
    > test.out 2>&1
eval_tap $? 303 'TestStripeConfig' test.out

#- 304 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "PepSpWq4", "key": "sDFYquWc", "mchid": "HdxU37De", "returnUrl": "imOazkvR"}' \
    > test.out 2>&1
eval_tap $? 304 'TestWxPayConfig' test.out

#- 305 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "lCdamnJl", "flowCompletionUrl": "McD1ZmLf", "merchantId": 51, "projectId": 17, "projectSecretKey": "ZVow9wXi"}' \
    > test.out 2>&1
eval_tap $? 305 'TestXsollaConfig' test.out

#- 306 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'Du2cFTOI' \
    > test.out 2>&1
eval_tap $? 306 'GetPaymentMerchantConfig' test.out

#- 307 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'UWNp7A0k' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["5ESrhUp3", "tO6hg63e", "CdgduFY4"], "apiKey": "lTWnjiyd", "authoriseAsCapture": true, "blockedPaymentMethods": ["VL1avf2J", "X6FOmFci", "gLxtb69k"], "clientKey": "JnnlO1tQ", "dropInSettings": "ZK3evWYf", "liveEndpointUrlPrefix": "8deayHwr", "merchantAccount": "EIcwv9cJ", "notificationHmacKey": "MjxvsulX", "notificationPassword": "PMbKIIn5", "notificationUsername": "2hVgmxAC", "returnUrl": "VpXJOgkQ", "settings": "M6qJW6bc"}' \
    > test.out 2>&1
eval_tap $? 307 'UpdateAdyenConfig' test.out

#- 308 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'sB6zDY0P' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 308 'TestAdyenConfigById' test.out

#- 309 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'xqTGc39j' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "7kF5JQQi", "privateKey": "RBuis9Jx", "publicKey": "TqBhqhQu", "returnUrl": "IBRTb3VC"}' \
    > test.out 2>&1
eval_tap $? 309 'UpdateAliPayConfig' test.out

#- 310 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'r8ELhmej' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 310 'TestAliPayConfigById' test.out

#- 311 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'Ur4uklmm' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "r1sO1iLP", "secretKey": "Vpr3Jovr"}' \
    > test.out 2>&1
eval_tap $? 311 'UpdateCheckoutConfig' test.out

#- 312 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'B2EeNEmH' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 312 'TestCheckoutConfigById' test.out

#- 313 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'P6Zn0M2b' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "Inmhyzzz", "clientSecret": "FCuzg4DM", "returnUrl": "akCpB3HR", "webHookId": "eOK0oySu"}' \
    > test.out 2>&1
eval_tap $? 313 'UpdatePayPalConfig' test.out

#- 314 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'FPbjVMMf' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 314 'TestPayPalConfigById' test.out

#- 315 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id '0Ol2iRiN' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["OyIpqW4A", "94X7E07t", "q0OnAwar"], "publishableKey": "VuqVFvVL", "secretKey": "i6xhSrL4", "webhookSecret": "bw1DsdIx"}' \
    > test.out 2>&1
eval_tap $? 315 'UpdateStripeConfig' test.out

#- 316 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'oVSnsJXI' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfigById' test.out

#- 317 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'adymDGXt' \
    --validate 'true' \
    --body '{"appId": "tlcFuhnU", "key": "BORs6Oo8", "mchid": "1D8tmz21", "returnUrl": "eYCvhMWb"}' \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfig' test.out

#- 318 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'oPd5CsSZ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 318 'UpdateWxPayConfigCert' test.out

#- 319 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'keraMzm2' \
    > test.out 2>&1
eval_tap $? 319 'TestWxPayConfigById' test.out

#- 320 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'NVwGjN6U' \
    --validate 'false' \
    --body '{"apiKey": "KKxt9kQO", "flowCompletionUrl": "WPSD6xR6", "merchantId": 97, "projectId": 100, "projectSecretKey": "Ms1PxrYL"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaConfig' test.out

#- 321 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'JVFzhNuM' \
    > test.out 2>&1
eval_tap $? 321 'TestXsollaConfigById' test.out

#- 322 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'WsMfhM7v' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdateXsollaUIConfig' test.out

#- 323 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '43' \
    --namespace 'wxzhhn48' \
    --offset '11' \
    --region 'JlSVYApm' \
    > test.out 2>&1
eval_tap $? 323 'QueryPaymentProviderConfig' test.out

#- 324 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "g8OXv3DR", "region": "CAeqaxUp", "sandboxTaxJarApiToken": "rMbFvNYz", "specials": ["PAYPAL", "PAYPAL", "ADYEN"], "taxJarApiToken": "dHctADMQ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 324 'CreatePaymentProviderConfig' test.out

#- 325 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 325 'GetAggregatePaymentProviders' test.out

#- 326 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'm433ArMF' \
    --region '6iyOkiVt' \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentProviderConfig' test.out

#- 327 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 327 'GetSpecialPaymentProviders' test.out

#- 328 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id '6D1t52p2' \
    --body '{"aggregate": "ADYEN", "namespace": "yIk1VZTV", "region": "6DclcsT3", "sandboxTaxJarApiToken": "WEVyf1yG", "specials": ["PAYPAL", "CHECKOUT", "XSOLLA"], "taxJarApiToken": "lrLeHuqq", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    > test.out 2>&1
eval_tap $? 328 'UpdatePaymentProviderConfig' test.out

#- 329 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 't9bjZSl2' \
    > test.out 2>&1
eval_tap $? 329 'DeletePaymentProviderConfig' test.out

#- 330 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxConfig' test.out

#- 331 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "DhEWTsiq", "taxJarApiToken": "kZiXDkjO", "taxJarEnabled": false, "taxJarProductCodesMapping": {"vvSm9VoO": "0Z19Gq1c", "ZcBNRPG2": "SPMlDCG8", "biqvdfhi": "lZulAh8w"}}' \
    > test.out 2>&1
eval_tap $? 331 'UpdatePaymentTaxConfig' test.out

#- 332 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'VVd1dA1m' \
    --end '81TVHVN7' \
    --start '8g4AFKHl' \
    > test.out 2>&1
eval_tap $? 332 'SyncPaymentOrders' test.out

#- 333 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'vIV8v6ZA' \
    --storeId 'TcFyYzkC' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRootCategories' test.out

#- 334 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'EFyzc1m0' \
    --storeId 'OkgHnPX4' \
    > test.out 2>&1
eval_tap $? 334 'DownloadCategories' test.out

#- 335 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath '99GpEGSN' \
    --namespace $AB_NAMESPACE \
    --language 'ibs0O119' \
    --storeId 'Nubh1MPP' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetCategory' test.out

#- 336 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'Z6dL38oD' \
    --namespace $AB_NAMESPACE \
    --language 'tEpRRrUX' \
    --storeId 'Lc6YMHBd' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetChildCategories' test.out

#- 337 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'PGFQSf9y' \
    --namespace $AB_NAMESPACE \
    --language 'tTL4ql6S' \
    --storeId '1q6nAILz' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetDescendantCategories' test.out

#- 338 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 338 'PublicListCurrencies' test.out

#- 339 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 339 'GeDLCDurableRewardShortMap' test.out

#- 340 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 340 'GetIAPItemMapping' test.out

#- 341 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'EgPp3kzq' \
    --region 'rk00KGay' \
    --storeId 'GFzfHhCS' \
    --appId 'deI9n53M' \
    > test.out 2>&1
eval_tap $? 341 'PublicGetItemByAppId' test.out

#- 342 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DEMO' \
    --baseAppId 'Xr7EfnXC' \
    --categoryPath 'zvGXFQgi' \
    --features 'SEf2lSgd' \
    --includeSubCategoryItem 'false' \
    --itemType 'SUBSCRIPTION' \
    --language 'QZlKDoBm' \
    --limit '14' \
    --offset '43' \
    --region '9NPfD5am' \
    --sortBy '["displayOrder", "updatedAt:asc", "updatedAt"]' \
    --storeId 'HXbfSFQ8' \
    --tags 'fwVGoIY6' \
    > test.out 2>&1
eval_tap $? 342 'PublicQueryItems' test.out

#- 343 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --language 'XtwCEOPV' \
    --region 'I47i8zZl' \
    --storeId 'coghGvDs' \
    --sku 'IJQDzxso' \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItemBySku' test.out

#- 344 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'v9j5wYH0' \
    --storeId 'NDIXa0LU' \
    --itemIds 'K8bobCnK' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetEstimatedPrice' test.out

#- 345 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --language 'gXgtZm3S' \
    --region 'teRObcmW' \
    --storeId 'S720Iitd' \
    --itemIds 'VkIQdSqi' \
    > test.out 2>&1
eval_tap $? 345 'PublicBulkGetItems' test.out

#- 346 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["V8DolthF", "PaiaqdOy", "d6zdYPaU"]}' \
    > test.out 2>&1
eval_tap $? 346 'PublicValidateItemPurchaseCondition' test.out

#- 347 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --itemType 'BUNDLE' \
    --limit '81' \
    --offset '29' \
    --region 'RJpCNaBa' \
    --storeId 'ccz60nBM' \
    --keyword '7mmL91AR' \
    --language 'sznwMTIE' \
    > test.out 2>&1
eval_tap $? 347 'PublicSearchItems' test.out

#- 348 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'PkjrpWFG' \
    --namespace $AB_NAMESPACE \
    --language '3tFy92EA' \
    --region 'BaDHUesR' \
    --storeId '4qfibSIO' \
    > test.out 2>&1
eval_tap $? 348 'PublicGetApp' test.out

#- 349 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'csqnGD7k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicGetItemDynamicData' test.out

#- 350 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'h4UF72bU' \
    --namespace $AB_NAMESPACE \
    --language '7oyscl7r' \
    --populateBundle 'false' \
    --region 'UZJDwcD9' \
    --storeId 's3GTsFCx' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetItem' test.out

#- 351 GetPaymentCustomization
eval_tap 0 351 'GetPaymentCustomization # SKIP deprecated' test.out

#- 352 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "rMexlOrD", "paymentProvider": "XSOLLA", "returnUrl": "bRenGUwc", "ui": "zGJUh4IY", "zipCode": "Zodf60KR"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetPaymentUrl' test.out

#- 353 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'g8Jcs1yU' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetPaymentMethods' test.out

#- 354 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rgfURR6T' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUnpaidPaymentOrder' test.out

#- 355 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '3WHcxecG' \
    --paymentProvider 'STRIPE' \
    --zipCode 'hcPPJ9ew' \
    --body '{"token": "dLdQ8GcR"}' \
    > test.out 2>&1
eval_tap $? 355 'Pay' test.out

#- 356 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '5S4dcFFQ' \
    > test.out 2>&1
eval_tap $? 356 'PublicCheckPaymentOrderPaidStatus' test.out

#- 357 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'WALLET' \
    --region 'KR2J9h2j' \
    > test.out 2>&1
eval_tap $? 357 'GetPaymentPublicConfig' test.out

#- 358 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Q0zXwGMF' \
    > test.out 2>&1
eval_tap $? 358 'PublicGetQRCode' test.out

#- 359 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'ZLItcThJ' \
    --foreinginvoice 'wfxqB0DO' \
    --invoiceId 'yttNkfz5' \
    --payload 'FHLEgcmx' \
    --redirectResult 'uEZAmWSe' \
    --resultCode 'ZtlR4gsC' \
    --sessionId 'CGOmhQVd' \
    --status 'LsYK3slQ' \
    --token 'iEzJ8O18' \
    --type 'S1OaxuKG' \
    --userId '6K1DkSkd' \
    --orderNo 'sWxnXV1F' \
    --paymentOrderNo 'OKndemCw' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'aDlhY63h' \
    > test.out 2>&1
eval_tap $? 359 'PublicNormalizePaymentReturnUrl' test.out

#- 360 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'WYcpYw0m' \
    --paymentOrderNo 'zLCmVOYd' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentTaxValue' test.out

#- 361 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'DTue6Nc5' \
    > test.out 2>&1
eval_tap $? 361 'GetRewardByCode' test.out

#- 362 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'NCE9yn1x' \
    --limit '22' \
    --offset '26' \
    --sortBy '["rewardCode:asc", "rewardCode:desc"]' \
    > test.out 2>&1
eval_tap $? 362 'QueryRewards1' test.out

#- 363 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId '7v2pWqfM' \
    > test.out 2>&1
eval_tap $? 363 'GetReward1' test.out

#- 364 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicListStores' test.out

#- 365 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["xxdKVw0B", "qf35YZQn", "IAu25XBE"]' \
    --itemIds '["jHiaMgfE", "HL4Ijw8k", "4XxfLVFe"]' \
    --skus '["92FaVPxu", "MCbRJzNI", "pkmnkuiG"]' \
    > test.out 2>&1
eval_tap $? 365 'PublicExistsAnyMyActiveEntitlement' test.out

#- 366 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'RLw6ePHN' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 367 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'ndIaQ93r' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 368 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'PXA87wzy' \
    > test.out 2>&1
eval_tap $? 368 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 369 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["AUZHnv1P", "BekL27iy", "dwiIjApO"]' \
    --itemIds '["hep8pfiN", "6DXI0eO2", "m9xCdDUI"]' \
    --skus '["82DSwEGy", "8wkz4LQf", "nFRG4NVv"]' \
    > test.out 2>&1
eval_tap $? 369 'PublicGetEntitlementOwnershipToken' test.out

#- 370 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "sgsJru2M", "language": "Pk", "region": "ckeZ21Jl"}' \
    > test.out 2>&1
eval_tap $? 370 'SyncTwitchDropsEntitlement' test.out

#- 371 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'FAAFH3Rt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyWallet' test.out

#- 372 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uKb8uOhX' \
    --body '{"epicGamesJwtToken": "3nIaAYtY"}' \
    > test.out 2>&1
eval_tap $? 372 'SyncEpicGameDLC' test.out

#- 373 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'PkSqNsva' \
    > test.out 2>&1
eval_tap $? 373 'SyncOculusDLC' test.out

#- 374 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'cVg9a8Hd' \
    --body '{"serviceLabel": 70}' \
    > test.out 2>&1
eval_tap $? 374 'PublicSyncPsnDlcInventory' test.out

#- 375 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'kZtC0s1n' \
    --body '{"serviceLabels": [73, 44, 14]}' \
    > test.out 2>&1
eval_tap $? 375 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 376 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'zh9pRyW0' \
    --body '{"appId": "9rqopmDF", "steamId": "pdiM24mC"}' \
    > test.out 2>&1
eval_tap $? 376 'SyncSteamDLC' test.out

#- 377 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ArBUGnZ7' \
    --body '{"xstsToken": "io7DjKoB"}' \
    > test.out 2>&1
eval_tap $? 377 'SyncXboxDLC' test.out

#- 378 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pRQDbrTL' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'CODE' \
    --entitlementName 'M0Pixk4y' \
    --features '["6oa6CgZo", "cj67HPQ3", "mHhUvhAd"]' \
    --itemId '["IqpQqDs1", "YYme6k64", "IxpxqRzD"]' \
    --limit '66' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 378 'PublicQueryUserEntitlements' test.out

#- 379 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'I01BMjSj' \
    --appId 'JsqecCqj' \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserAppEntitlementByAppId' test.out

#- 380 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'XoLksTf5' \
    --limit '36' \
    --offset '59' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 380 'PublicQueryUserEntitlementsByAppType' test.out

#- 381 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'yRRfbIuz' \
    --entitlementClazz 'APP' \
    --itemId 'm3REKHr0' \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementByItemId' test.out

#- 382 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'wQqTsltD' \
    --entitlementClazz 'CODE' \
    --sku 'yXcEmS0L' \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementBySku' test.out

#- 383 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '3tRV4MBA' \
    --appIds '["X4arCqQp", "1CNNdiFs", "mTvdUNCl"]' \
    --itemIds '["6KrOzC87", "wPRd8HWK", "6uNln6xV"]' \
    --skus '["doM9AzlZ", "6XnmkLkM", "6hknbYnr"]' \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyUserActiveEntitlement' test.out

#- 384 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'c7WwO051' \
    --appId 'tGNwnYQg' \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'iPEpRsbr' \
    --entitlementClazz 'CODE' \
    --itemId 'wuFjiL3k' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 386 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'vROHg6FL' \
    --ids '["BnvE1fgO", "3Rbokl5a", "2EBycKhh"]' \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 387 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'bwzVEmqP' \
    --entitlementClazz 'LOOTBOX' \
    --sku '4JMtBgU1' \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 388 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'o1t742Bo' \
    --namespace $AB_NAMESPACE \
    --userId 'iFYIZWdn' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserEntitlement' test.out

#- 389 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'yIxxW2Ua' \
    --namespace $AB_NAMESPACE \
    --userId 'tp5ApIN7' \
    --body '{"options": ["34gMR614", "UW94hbA0", "nmd6Ufr5"], "requestId": "ImqxP7EW", "useCount": 43}' \
    > test.out 2>&1
eval_tap $? 389 'PublicConsumeUserEntitlement' test.out

#- 390 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'SeSuDv4B' \
    --namespace $AB_NAMESPACE \
    --userId 'UUq0jPt8' \
    --body '{"requestId": "J7qAQkFd", "useCount": 46}' \
    > test.out 2>&1
eval_tap $? 390 'PublicSellUserEntitlement' test.out

#- 391 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'mzQFIrMt' \
    --body '{"code": "EVHFgMXc", "language": "gSE-973", "region": "yupd2cuW"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicRedeemCode' test.out

#- 392 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'Ksbg4QHR' \
    --body '{"excludeOldTransactions": true, "language": "cV-vgUS-Qs", "productId": "dHSvKdzI", "receiptData": "2hpo6UQv", "region": "eNeYTHUU", "transactionId": "Awaq1tdd"}' \
    > test.out 2>&1
eval_tap $? 392 'PublicFulfillAppleIAPItem' test.out

#- 393 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'pU1YRFuy' \
    --body '{"epicGamesJwtToken": "Ov5mTRma"}' \
    > test.out 2>&1
eval_tap $? 393 'SyncEpicGamesInventory' test.out

#- 394 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'O3FDRoIG' \
    --body '{"autoAck": false, "language": "BXG-eNDG_GR", "orderId": "yAExLHXY", "packageName": "uTZJAt26", "productId": "r3VgLKok", "purchaseTime": 84, "purchaseToken": "RrEb0OGe", "region": "Ney8PMHD"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicFulfillGoogleIAPItem' test.out

#- 395 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'TzwAC3Dn' \
    > test.out 2>&1
eval_tap $? 395 'SyncOculusConsumableEntitlements' test.out

#- 396 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'NhHCRkJ0' \
    --body '{"currencyCode": "zlfgfytq", "price": 0.7728306056758186, "productId": "ah0xxWVW", "serviceLabel": 9}' \
    > test.out 2>&1
eval_tap $? 396 'PublicReconcilePlayStationStore' test.out

#- 397 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'jN6QLNLf' \
    --body '{"currencyCode": "kJtHQMM5", "price": 0.3156162317831178, "productId": "xLa8GL0W", "serviceLabels": [38, 41, 1]}' \
    > test.out 2>&1
eval_tap $? 397 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 398 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId '4kXKlmVx' \
    --body '{"appId": "H24JceO4", "currencyCode": "S090RO6y", "language": "htp_iR", "price": 0.9054422766149666, "productId": "tOFS3NG1", "region": "46tgB023", "steamId": "FIB61N0n"}' \
    > test.out 2>&1
eval_tap $? 398 'SyncSteamInventory' test.out

#- 399 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'oS36aRTe' \
    --body '{"gameId": "W1qQPkqm", "language": "DLB", "region": "vyt5k73c"}' \
    > test.out 2>&1
eval_tap $? 399 'SyncTwitchDropsEntitlement1' test.out

#- 400 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'hjvAuRqU' \
    --body '{"currencyCode": "X3uPrKiB", "price": 0.4291077466686781, "productId": "XgXMIxZb", "xstsToken": "xYRzDWyt"}' \
    > test.out 2>&1
eval_tap $? 400 'SyncXboxInventory' test.out

#- 401 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'NeSSEEnS' \
    --itemId 'VTbXfgwl' \
    --limit '79' \
    --offset '77' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryUserOrders' test.out

#- 402 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'gpcKxNRq' \
    --body '{"currencyCode": "NQ0nx6X8", "discountedPrice": 60, "ext": {"yAo0hZxi": {}, "cI8thFOI": {}, "k4XuhLmU": {}}, "itemId": "2En1pQcV", "language": "Vv", "price": 83, "quantity": 65, "region": "vl7kE8Hg", "returnUrl": "mjEzt2OR", "sectionId": "VqREGohW"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicCreateUserOrder' test.out

#- 403 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '3PxWAPfH' \
    --userId 'S1p8twNr' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserOrder' test.out

#- 404 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '5AV7CycI' \
    --userId 'kVyWJ0Zi' \
    > test.out 2>&1
eval_tap $? 404 'PublicCancelUserOrder' test.out

#- 405 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'araijZdu' \
    --userId 'Z76uR5X2' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserOrderHistories' test.out

#- 406 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Tu2KtfWW' \
    --userId 'c8IlbWqT' \
    > test.out 2>&1
eval_tap $? 406 'PublicDownloadUserOrderReceipt' test.out

#- 407 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '7bfVfpU4' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetPaymentAccounts' test.out

#- 408 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '3S8D5DWt' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'FpcLABMG' \
    > test.out 2>&1
eval_tap $? 408 'PublicDeletePaymentAccount' test.out

#- 409 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'V4cSQWnn' \
    --language 'nFxBUatu' \
    --region 'n7vuK40w' \
    --storeId 'T60uCwTK' \
    --viewId 'qYXr3eNa' \
    > test.out 2>&1
eval_tap $? 409 'PublicListActiveSections' test.out

#- 410 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '9lo9bfxI' \
    --chargeStatus 'CHARGED' \
    --itemId 'eTcfTvUo' \
    --limit '30' \
    --offset '18' \
    --sku 'kyeYnXkQ' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserSubscriptions' test.out

#- 411 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'fAICOc11' \
    --body '{"currencyCode": "hQZ7JjAM", "itemId": "iLA987kr", "language": "NLW-aN", "region": "trSyM9U4", "returnUrl": "ZHlwMWZ3", "source": "IXGa2XYp"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicSubscribeSubscription' test.out

#- 412 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '50T3xnMC' \
    --itemId 'ajmLUVxG' \
    > test.out 2>&1
eval_tap $? 412 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 413 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'BUPh4NOg' \
    --userId 'GhC2S2DP' \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUserSubscription' test.out

#- 414 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hruw3Ll5' \
    --userId 'a2apfbvo' \
    > test.out 2>&1
eval_tap $? 414 'PublicChangeSubscriptionBillingAccount' test.out

#- 415 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HuoR6Mj7' \
    --userId 'EJoi4esK' \
    --body '{"immediate": false, "reason": "Qpqt3PeW"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCancelSubscription' test.out

#- 416 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'jxU0augo' \
    --userId 'LU6iS0wA' \
    --excludeFree 'false' \
    --limit '2' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserSubscriptionBillingHistories' test.out

#- 417 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'Ed5raz77' \
    --language 'p7wmijmT' \
    --storeId '3drBSxLT' \
    > test.out 2>&1
eval_tap $? 417 'PublicListViews' test.out

#- 418 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'dkw5s7xW' \
    --namespace $AB_NAMESPACE \
    --userId '3pXav7IZ' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetWallet' test.out

#- 419 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'mjDuixIc' \
    --namespace $AB_NAMESPACE \
    --userId 'zZ1HnljO' \
    --limit '9' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 419 'PublicListUserWalletTransactions' test.out

#- 420 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'l4kMctX8' \
    --baseAppId 'GJ9dk73o' \
    --categoryPath 'pmHrcOdp' \
    --features '0cOISoyP' \
    --includeSubCategoryItem 'true' \
    --itemName 'w8HWWpgi' \
    --itemStatus 'ACTIVE' \
    --itemType 'OPTIONBOX' \
    --limit '57' \
    --offset '12' \
    --region 'rWB4u0YN' \
    --sectionExclusive 'true' \
    --sortBy '["updatedAt:asc", "name:asc", "displayOrder:asc"]' \
    --storeId 'tgEILfCK' \
    --tags 'dODqHCfo' \
    --targetNamespace 'zTNpG6oE' \
    > test.out 2>&1
eval_tap $? 420 'QueryItems1' test.out

#- 421 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'wgdBHYj2' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 421 'ImportStore1' test.out

#- 422 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'XDjm0iQS' \
    --body '{"itemIds": ["1zTf9b1h", "hh9lim7y", "6hrjrlXV"]}' \
    > test.out 2>&1
eval_tap $? 422 'ExportStore1' test.out

#- 423 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mngQpPoa' \
    --body '{"metadata": {"4FTedKZL": {}, "ULVy1Uiq": {}, "IYZ5LfwG": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "JeV63udf", "namespace": "HIJ5oiKA"}, "item": {"itemId": "Q1kGxYuB", "itemSku": "zbz8DKMI", "itemType": "hUiVB5ob"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "KJ9N1iV5", "namespace": "8OlEs2gc"}, "item": {"itemId": "gDjiJFl0", "itemSku": "R3eDYnri", "itemType": "8vXQDnzd"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "8OOzkh8h", "namespace": "65gmupBT"}, "item": {"itemId": "yy7U0WG1", "itemSku": "DAcx7bud", "itemType": "3Pohalpc"}, "quantity": 37, "type": "CURRENCY"}], "source": "IAP", "transactionId": "dFFFcoHb"}' \
    > test.out 2>&1
eval_tap $? 423 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE