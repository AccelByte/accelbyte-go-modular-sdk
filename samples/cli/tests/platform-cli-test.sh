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
echo "1..432"

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
    --id 'jmf8Ikba' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'mOekTkAs' \
    --body '{"grantDays": "13UWmYPT"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'NMBkhkip' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id '1pFiPMtg' \
    --body '{"grantDays": "xIXraGnS"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "c2oMakiJ", "dryRun": true, "fulfillmentUrl": "7QKNNUYa", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "yizIM2yi"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'IZruIZWH' \
    --itemType 'APP' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'e3dd6IaT' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'l2ndjqDg' \
    --body '{"clazz": "9aI1c4b6", "dryRun": false, "fulfillmentUrl": "r6N9h4gh", "purchaseConditionUrl": "geVemSJ6"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'EFsT4JCP' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --name '8vNiFHUl' \
    --offset '86' \
    --tag 'PfX7wLLr' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SALzOB22", "items": [{"extraSubscriptionDays": 37, "itemId": "wPT9Ttgq", "itemName": "LmFVAj9u", "quantity": 89}, {"extraSubscriptionDays": 77, "itemId": "5ngwhQ7J", "itemName": "wwjtP7ge", "quantity": 30}, {"extraSubscriptionDays": 83, "itemId": "dwjY6Xau", "itemName": "TSv2ctue", "quantity": 100}], "maxRedeemCountPerCampaignPerUser": 44, "maxRedeemCountPerCode": 86, "maxRedeemCountPerCodePerUser": 32, "maxSaleCount": 93, "name": "ZQMjz2hq", "redeemEnd": "1980-08-08T00:00:00Z", "redeemStart": "1998-09-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["APuxl1uS", "EWdHLOdW", "viXce02i"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'IpwGjXrk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'oSnlGJsf' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZNBc6MrG", "items": [{"extraSubscriptionDays": 90, "itemId": "aqkHMX27", "itemName": "qXHJdNjV", "quantity": 27}, {"extraSubscriptionDays": 51, "itemId": "vZCEjTFp", "itemName": "QnuRIUN0", "quantity": 29}, {"extraSubscriptionDays": 89, "itemId": "jIAUlGCm", "itemName": "XkuNeOrR", "quantity": 49}], "maxRedeemCountPerCampaignPerUser": 60, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 27, "maxSaleCount": 86, "name": "nI9oGFlk", "redeemEnd": "1997-06-14T00:00:00Z", "redeemStart": "1989-06-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["L2iIge7C", "vFbtDF0m", "giCl88uR"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'nOuWN1hX' \
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
    --body '{"appConfig": {"appName": "lBOGAUHV"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "xBbkik6z"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "Wb82K3Yr"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "97hjTwTD"}, "extendType": "APP"}' \
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
    --storeId 'xDGIj5bM' \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'KXmEhGr9' \
    --body '{"categoryPath": "id5cuHBn", "localizationDisplayNames": {"AgL324PB": "mgWZkCn6", "Lzdy4SoD": "7llNER7V", "3p5yo5yF": "baFj7Rpf"}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'rF33acxT' \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'FzQ6u4bi' \
    --namespace $AB_NAMESPACE \
    --storeId 'yQ6uQzf4' \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'i1PFocAN' \
    --namespace $AB_NAMESPACE \
    --storeId '0kPUg7cq' \
    --body '{"localizationDisplayNames": {"PPbDERbz": "ABhXDDwO", "fdAVzrV3": "jXBNthz1", "gI5EyrhA": "R0w1S7V3"}}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'oyXQIPZI' \
    --namespace $AB_NAMESPACE \
    --storeId '9O4uXytb' \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'XccBHY2z' \
    --namespace $AB_NAMESPACE \
    --storeId '51QCFEbD' \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'Nve01gQU' \
    --namespace $AB_NAMESPACE \
    --storeId 'gJry8Sf7' \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'i6Ycu0a1' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --batchNo '45' \
    --code 'jAOtynlO' \
    --limit '36' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'r6sEKKUs' \
    --namespace $AB_NAMESPACE \
    --body '{"quantity": 0}' \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
samples/cli/sample-apps Platform download \
    --campaignId 'nDxv2s7N' \
    --namespace $AB_NAMESPACE \
    --batchNo '84' \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId '17wBlWz1' \
    --namespace $AB_NAMESPACE \
    --batchNo '22' \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId '67vb8eG4' \
    --namespace $AB_NAMESPACE \
    --batchNo '31' \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'IaHn3Gr1' \
    --namespace $AB_NAMESPACE \
    --code 'xj34opql' \
    --limit '63' \
    --offset '30' \
    --userId 'EFyM2o1h' \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
samples/cli/sample-apps Platform getCode \
    --code 's33OFgnC' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'l3W8UH5H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'Z94tCGLr' \
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
    --body '{"currencyCode": "PFbuOs9E", "currencySymbol": "fBaSjsfP", "currencyType": "REAL", "decimals": 93, "localizationDescriptions": {"biKPgzIO": "iPwmoDPh", "JUEs7QO3": "IKzgAuKd", "7FrOvCGl": "1pdXJocq"}}' \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'byXMYzT9' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"NBs3d4jQ": "18KtDKxp", "2uqnRLfw": "HVGAsFCS", "VWl7jiM2": "fkukae1L"}}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'DfsJae80' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'pmonQWmR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'DT0lHo0e' \
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
    --body '{"data": [{"id": "aE6TT8K7", "rewards": [{"currency": {"currencyCode": "bYKSJf8J", "namespace": "jT6Jsp93"}, "item": {"itemId": "DGlaMdBI", "itemSku": "2yO4tfB2", "itemType": "bB3dkBvz"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"currencyCode": "AuIFme5Z", "namespace": "maelgBwQ"}, "item": {"itemId": "tnnZWjIz", "itemSku": "CmtM00wd", "itemType": "7rraRdTN"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "LiK9UBbK", "namespace": "0mzdOAYH"}, "item": {"itemId": "YSkOzhOb", "itemSku": "tRBIeZdD", "itemType": "GYJE5vPC"}, "quantity": 78, "type": "CURRENCY"}]}, {"id": "5HdaDY3m", "rewards": [{"currency": {"currencyCode": "WbwcwRCA", "namespace": "xPzK9VnG"}, "item": {"itemId": "DIuraKW3", "itemSku": "AoAGdhQx", "itemType": "esEZPGUj"}, "quantity": 18, "type": "CURRENCY"}, {"currency": {"currencyCode": "guO94T2z", "namespace": "nCQPl8K0"}, "item": {"itemId": "efJLJ6Yk", "itemSku": "Xs3NWSqH", "itemType": "R0iXiz4a"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "ogCr6xmT", "namespace": "2Wv4JxaP"}, "item": {"itemId": "CJ1lFxBE", "itemSku": "Sk7x6bt4", "itemType": "uoZ3v7fY"}, "quantity": 64, "type": "ITEM"}]}, {"id": "TyN4KgBe", "rewards": [{"currency": {"currencyCode": "mEGWVifr", "namespace": "iztWAtMT"}, "item": {"itemId": "BMjtR1mC", "itemSku": "iNQdH8cV", "itemType": "ETufx9Dt"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "DsJ5Qg36", "namespace": "JVjfgExv"}, "item": {"itemId": "aoa5n8Xj", "itemSku": "Ysfbdjtv", "itemType": "w7QS5ZbA"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "djAT9g4u", "namespace": "v26yZ9kh"}, "item": {"itemId": "f3Z8MVkT", "itemSku": "VXcPQRFK", "itemType": "FpeGstp4"}, "quantity": 52, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"CWv4yCzI": "Me3oEvQe", "vSSntkKS": "l7DOCqbZ", "FTZj6WEP": "N1zkjTwr"}}, {"platform": "PSN", "platformDlcIdMap": {"wINKEFax": "5T0b8ACy", "gqVybOPh": "vWDPbJfu", "aZKgcfau": "nCaMVwYx"}}, {"platform": "OCULUS", "platformDlcIdMap": {"3VaxKN67": "DJcIBYJy", "JTBut2Xz": "j2hJx8sV", "CRIBaP7u": "NXzVGJfQ"}}]}' \
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
    --entitlementName 'amgeeeOh' \
    --itemId '["7fDkchFW", "wz2FxI5f", "i2pnKagu"]' \
    --limit '47' \
    --offset '26' \
    --userId 'MCgheU6m' \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
samples/cli/sample-apps Platform queryEntitlements1 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["eGupC5SF", "45BJmo1c", "XFSf1x6F"]' \
    --limit '100' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 GrantEntitlements
samples/cli/sample-apps Platform grantEntitlements \
    --namespace $AB_NAMESPACE \
    --body '{"entitlementGrantList": [{"endDate": "1981-04-04T00:00:00Z", "grantedCode": "ePUOjITW", "itemId": "GryjQLtC", "itemNamespace": "0OZPdUdO", "language": "Ap_929", "quantity": 4, "region": "s23hNp2a", "source": "IAP", "startDate": "1987-07-18T00:00:00Z", "storeId": "OxJbqEZ1"}, {"endDate": "1997-01-18T00:00:00Z", "grantedCode": "s9w63Ais", "itemId": "ISqhxzxz", "itemNamespace": "5BtmODjl", "language": "guc_IH", "quantity": 53, "region": "dXkUAyUO", "source": "REFERRAL_BONUS", "startDate": "1997-05-25T00:00:00Z", "storeId": "XOpuJVeY"}, {"endDate": "1996-03-02T00:00:00Z", "grantedCode": "D3Pjswel", "itemId": "02vvdnsQ", "itemNamespace": "MZKuCdVd", "language": "DWAW_fKOY", "quantity": 89, "region": "Kq7DjzPj", "source": "REDEEM_CODE", "startDate": "1995-09-11T00:00:00Z", "storeId": "PczxtSjx"}], "userIds": ["6rZmGlfK", "AViugULH", "yknZLhGF"]}' \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["GmOH9BSn", "MhPTWoQG", "kkeCMlbP"]' \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'oRoaUD2e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '29' \
    --status 'FAIL' \
    --userId '3pnE1oM9' \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'lg5Xe9tG' \
    --eventType 'CHARGEBACK' \
    --externalOrderId '35Yxi0v2' \
    --limit '100' \
    --offset '81' \
    --startTime 'SYefEw6q' \
    --status 'FAIL' \
    --userId 'U6fq6CG5' \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "2a5kbREc", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 36, "clientTransactionId": "ed1HzhpH"}, {"amountConsumed": 43, "clientTransactionId": "2WOJ49Es"}, {"amountConsumed": 15, "clientTransactionId": "x3hnSWJI"}], "entitlementId": "xD64IB6d", "usageCount": 76}, {"clientTransaction": [{"amountConsumed": 68, "clientTransactionId": "MloBDh1Q"}, {"amountConsumed": 8, "clientTransactionId": "ebSBFwcZ"}, {"amountConsumed": 50, "clientTransactionId": "n6qJeyHF"}], "entitlementId": "CFlC4D2j", "usageCount": 9}, {"clientTransaction": [{"amountConsumed": 51, "clientTransactionId": "2QbrO1De"}, {"amountConsumed": 82, "clientTransactionId": "IroR8Ecs"}, {"amountConsumed": 44, "clientTransactionId": "9psCGulk"}], "entitlementId": "TlsVz5m7", "usageCount": 33}], "purpose": "aeINbEK4"}, "originalTitleName": "hPspAa1M", "paymentProductSKU": "OpTprJ3E", "purchaseDate": "jChWVbYI", "sourceOrderItemId": "g9SmWOCa", "titleName": "yC06Eh3N"}, "eventDomain": "7QasvmcS", "eventSource": "JvwITwx8", "eventType": "uuiVReKY", "eventVersion": 16, "id": "FC1BRRfl", "timestamp": "WbLnefFG"}' \
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
    --body '{"bundleId": "lapvjFPk", "password": "tRzRNWe0"}' \
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
    --body '{"sandboxId": "roYlhtZt"}' \
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
    --body '{"applicationName": "f7llDnVJ", "serviceAccountId": "51qYwx3S"}' \
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
    --body '{"data": [{"itemIdentity": "AKwWteGU", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Pn1fBfyB": "BS8gLX08", "ijsqPIAs": "tw76lksO", "lO1MBUsC": "g0SIZwcg"}}, {"itemIdentity": "MskXpbsY", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Xw0Ul8yb": "ysaoUuT5", "8LHDupG3": "nC9fSxBD", "CE9b6iwC": "DYDtehCq"}}, {"itemIdentity": "J5V5s8mk", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"wnGOPW67": "Ol6p73iL", "ttpmbs6N": "FgNhPSg7", "9QLMZGkZ": "BteBtsoG"}}]}' \
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
    --body '{"appId": "tjtkSrjc", "appSecret": "xnb1Rqhr"}' \
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
    --body '{"backOfficeServerClientId": "biH7K1JR", "backOfficeServerClientSecret": "k9COQdqF", "enableStreamJob": false, "environment": "GC0luP2d", "streamName": "uVyqLpdd", "streamPartnerName": "JUCo1onL"}' \
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
    --body '{"backOfficeServerClientId": "ltAXasCn", "backOfficeServerClientSecret": "RtquB2sO", "enableStreamJob": true, "environment": "oMekbBPY", "streamName": "iepBazfJ", "streamPartnerName": "puvm6NRZ"}' \
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
    --body '{"appId": "yMxjL6OJ", "publisherAuthenticationKey": "6EkRIbpl"}' \
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
    --body '{"clientId": "5oeEmLrC", "clientSecret": "WW1twEpu", "organizationId": "FbmlCTnq"}' \
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
    --body '{"relyingPartyCert": "AdVam5nW"}' \
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
    --password 'txREZlED' \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --feature '4IUAl7EZ' \
    --itemId 'doWg8Jwy' \
    --itemType 'MEDIA' \
    --endTime 'hksVbe4M' \
    --startTime '5rq7CFlT' \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --feature 'h85v198r' \
    --itemId '6LpeCEZY' \
    --itemType 'SEASON' \
    --endTime 'CiPdbI8u' \
    --startTime 'IL7fxp8Q' \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'k7d1eBOa' \
    --body '{"categoryPath": "f1wdq4aF", "targetItemId": "sqwilZzx", "targetNamespace": "cJ84hQJE"}' \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'i2tUijbA' \
    --body '{"appId": "iVND0lxh", "appType": "SOFTWARE", "baseAppId": "n4nn5eKS", "boothName": "1fDWvOAi", "categoryPath": "avbHf5RW", "clazz": "XuRFbMAs", "displayOrder": 82, "entitlementType": "CONSUMABLE", "ext": {"WRus7Ch0": {}, "WypWokDj": {}, "EdLgl808": {}}, "features": ["jS4UjDo8", "10dTTGQc", "E8zoK6Xg"], "flexible": false, "images": [{"as": "Ra2nTsGL", "caption": "LDehy6NB", "height": 51, "imageUrl": "ZRJYQTG4", "smallImageUrl": "yeD3XRdY", "width": 5}, {"as": "44zkYZGV", "caption": "zYnWIuP1", "height": 10, "imageUrl": "ZpCJtnvt", "smallImageUrl": "MoIEklKR", "width": 34}, {"as": "uf2wLmTM", "caption": "IUjDx58d", "height": 62, "imageUrl": "cKs8e8cU", "smallImageUrl": "HVMQBxkl", "width": 12}], "itemIds": ["wxz1IUv2", "XERv2QvU", "wc3cJGDb"], "itemQty": {"o158WC38": 70, "dAYEHMpd": 79, "xUSC4sIg": 75}, "itemType": "SEASON", "listable": false, "localizations": {"jqEkH31z": {"description": "YaHYOSup", "localExt": {"s90OLyvU": {}, "IZU4DujP": {}, "OQL6emKW": {}}, "longDescription": "9eGsLc2w", "title": "FZMWzySx"}, "FsGfQrsu": {"description": "FOqeUev4", "localExt": {"iK0BT35V": {}, "1x9tS0H6": {}, "c8PDuPCY": {}}, "longDescription": "vAk0uZCq", "title": "wM6aqhHE"}, "g4PKZ2Fg": {"description": "HkBfKJAX", "localExt": {"AmvfQrG1": {}, "qg5hMoqS": {}, "4cp4Zf6F": {}}, "longDescription": "ZvhPL447", "title": "Nph3tBQF"}}, "lootBoxConfig": {"rewardCount": 52, "rewards": [{"lootBoxItems": [{"count": 11, "duration": 53, "endDate": "1984-02-05T00:00:00Z", "itemId": "pTyKkJxA", "itemSku": "p43ZD3J2", "itemType": "yCWSLqXx"}, {"count": 88, "duration": 73, "endDate": "1989-09-11T00:00:00Z", "itemId": "1dxMobzV", "itemSku": "H9vemMTH", "itemType": "FCj0tRvg"}, {"count": 22, "duration": 6, "endDate": "1997-11-22T00:00:00Z", "itemId": "d0RHE8dS", "itemSku": "3VDixJtR", "itemType": "tD9mHu5v"}], "name": "ioTd0JZW", "odds": 0.29199746999263354, "type": "REWARD_GROUP", "weight": 31}, {"lootBoxItems": [{"count": 81, "duration": 66, "endDate": "1976-03-03T00:00:00Z", "itemId": "V83W5eqd", "itemSku": "XLb27w9e", "itemType": "OKwT3xFx"}, {"count": 83, "duration": 98, "endDate": "1972-09-10T00:00:00Z", "itemId": "ZVbbhvdv", "itemSku": "eJNVZrIJ", "itemType": "OpnyVfxU"}, {"count": 30, "duration": 28, "endDate": "1973-04-29T00:00:00Z", "itemId": "LlJeWAfN", "itemSku": "RLTu4est", "itemType": "D4NT2d80"}], "name": "bHM1pb9V", "odds": 0.7225539309488701, "type": "REWARD", "weight": 15}, {"lootBoxItems": [{"count": 93, "duration": 3, "endDate": "1997-12-04T00:00:00Z", "itemId": "kCyPN2Zk", "itemSku": "SZwVYJgt", "itemType": "8L360Ini"}, {"count": 2, "duration": 99, "endDate": "1985-08-25T00:00:00Z", "itemId": "o7sF2R4x", "itemSku": "9r1bWdgh", "itemType": "x52n0epH"}, {"count": 49, "duration": 53, "endDate": "1984-04-23T00:00:00Z", "itemId": "jc2yU8HB", "itemSku": "UvXpG9NW", "itemType": "AosdvfBS"}], "name": "VJuYHfqZ", "odds": 0.9659552779675882, "type": "REWARD_GROUP", "weight": 47}], "rollFunction": "CUSTOM"}, "maxCount": 60, "maxCountPerUser": 36, "name": "i12X6K66", "optionBoxConfig": {"boxItems": [{"count": 45, "duration": 6, "endDate": "1986-10-27T00:00:00Z", "itemId": "liDLGdEt", "itemSku": "gyEOQfGn", "itemType": "mHYdPxXV"}, {"count": 35, "duration": 66, "endDate": "1996-06-06T00:00:00Z", "itemId": "qhz0FB7u", "itemSku": "1Ol3ghu1", "itemType": "GPdprYgH"}, {"count": 77, "duration": 19, "endDate": "1976-04-06T00:00:00Z", "itemId": "WpB6Kc3V", "itemSku": "6h0Jpo1H", "itemType": "NMkkXaad"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 67, "fixedTrialCycles": 84, "graceDays": 26}, "regionData": {"dF5eTZdL": [{"currencyCode": "AKaky1rD", "currencyNamespace": "10ReV9iD", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1995-01-11T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1997-11-13T00:00:00Z", "expireAt": "1999-10-19T00:00:00Z", "price": 26, "purchaseAt": "1987-12-26T00:00:00Z", "trialPrice": 9}, {"currencyCode": "GtfH4f1y", "currencyNamespace": "HNTDllOR", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1990-02-14T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1994-01-16T00:00:00Z", "expireAt": "1975-11-01T00:00:00Z", "price": 66, "purchaseAt": "1986-04-25T00:00:00Z", "trialPrice": 52}, {"currencyCode": "bVb0sxvo", "currencyNamespace": "zd01d2Qj", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1973-09-07T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1982-08-21T00:00:00Z", "expireAt": "1980-05-06T00:00:00Z", "price": 53, "purchaseAt": "1983-04-30T00:00:00Z", "trialPrice": 61}], "sDMji7q7": [{"currencyCode": "CNVkSXpp", "currencyNamespace": "I1BW5IXJ", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1978-11-14T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1977-04-26T00:00:00Z", "expireAt": "1972-02-26T00:00:00Z", "price": 59, "purchaseAt": "1989-06-29T00:00:00Z", "trialPrice": 87}, {"currencyCode": "k54gvOjx", "currencyNamespace": "hEpBAA5h", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1991-01-17T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1995-04-30T00:00:00Z", "expireAt": "1985-08-05T00:00:00Z", "price": 11, "purchaseAt": "1986-11-05T00:00:00Z", "trialPrice": 68}, {"currencyCode": "rcLwhyDF", "currencyNamespace": "m580E0Ch", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1996-06-15T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1979-07-01T00:00:00Z", "expireAt": "1972-03-07T00:00:00Z", "price": 26, "purchaseAt": "1976-06-26T00:00:00Z", "trialPrice": 45}], "Z3qgRl0d": [{"currencyCode": "5ZI6DyVL", "currencyNamespace": "BTQZusgC", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1988-11-15T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1980-10-03T00:00:00Z", "expireAt": "1999-05-13T00:00:00Z", "price": 34, "purchaseAt": "1979-05-27T00:00:00Z", "trialPrice": 27}, {"currencyCode": "qfm6JKKL", "currencyNamespace": "FsIKKK4b", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1998-02-20T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1986-05-06T00:00:00Z", "expireAt": "1985-11-25T00:00:00Z", "price": 64, "purchaseAt": "1987-03-02T00:00:00Z", "trialPrice": 79}, {"currencyCode": "VZrZT2Fy", "currencyNamespace": "T0vDGGkM", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1982-11-14T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1993-12-09T00:00:00Z", "expireAt": "1988-10-15T00:00:00Z", "price": 19, "purchaseAt": "1983-04-09T00:00:00Z", "trialPrice": 31}]}, "saleConfig": {"currencyCode": "EGkvZDBd", "price": 45}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "gINsJR1W", "stackable": false, "status": "INACTIVE", "tags": ["kBPqijKW", "WDldImZH", "lm2cz197"], "targetCurrencyCode": "Rz2ypIER", "targetNamespace": "Lw6DNgjd", "thumbnailUrl": "TzeH8PvJ", "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'S7zALGlL' \
    --appId 'njlrSqaN' \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'DEMO' \
    --availableDate 'IqWMCdah' \
    --baseAppId 'S8tnUavj' \
    --categoryPath 'j5A4aOzI' \
    --features 'sBceLWuB' \
    --includeSubCategoryItem 'true' \
    --itemType 'SEASON' \
    --limit '39' \
    --offset '71' \
    --region 'iiPBy9RD' \
    --sortBy '["displayOrder:desc", "name", "createdAt"]' \
    --storeId 'ExUEp1IM' \
    --tags 'DyatpLbO' \
    --targetNamespace 'YKsfR4gJ' \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --features '["OUGFFnNn", "rSKTeCX8", "KHjjSGLt"]' \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'qRGC0n4U' \
    --itemIds 'HBmU56TK' \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId '0HFDwDmz' \
    --sku 'MwaUZc2A' \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '9izFWA0W' \
    --populateBundle 'false' \
    --region 'NVxQsC4t' \
    --storeId 't4Ju4msN' \
    --sku 'pe8rhsKQ' \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'onCxEuE0' \
    --storeId 'cBBrkkFT' \
    --itemIds 'VTZ0X7uw' \
    --userId 'aWYXJ5xk' \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'leAAyZEH' \
    --sku 'ZqkJeICD' \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["FiU8csSQ", "O9Bvcu12", "voMOxksT"]' \
    --storeId 'yR3Sh1l8' \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'oWC4O6vZ' \
    --region 'jG9uoEE0' \
    --storeId 'u5oYEXYT' \
    --itemIds 'uo4ONAlx' \
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
    --userId 'Dxu9KbgK' \
    --body '{"itemIds": ["vhsBNGs1", "wce0SybL", "SdtBh1Ok"]}' \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'bVLJkpu9' \
    --body '{"changes": [{"itemIdentities": ["2BUgO3iV", "e0mHwDXI", "lYuiMTeN"], "itemIdentityType": "ITEM_ID", "regionData": {"fsNAwt9j": [{"currencyCode": "j94yg7rF", "currencyNamespace": "FLnEXuKY", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1983-05-31T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-06-26T00:00:00Z", "discountedPrice": 42, "expireAt": "1972-03-22T00:00:00Z", "price": 48, "purchaseAt": "1974-06-20T00:00:00Z", "trialPrice": 85}, {"currencyCode": "vG9Yujos", "currencyNamespace": "DZAxNQyW", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1990-06-18T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-06-24T00:00:00Z", "discountedPrice": 100, "expireAt": "1987-01-06T00:00:00Z", "price": 38, "purchaseAt": "1987-07-19T00:00:00Z", "trialPrice": 29}, {"currencyCode": "QIpw0mnz", "currencyNamespace": "Wo6pAHEW", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1975-07-25T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1987-05-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1972-02-29T00:00:00Z", "price": 41, "purchaseAt": "1999-11-19T00:00:00Z", "trialPrice": 0}], "8EYVbHld": [{"currencyCode": "ByHNkHQP", "currencyNamespace": "JXdDQVLd", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1990-11-08T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1994-12-02T00:00:00Z", "discountedPrice": 34, "expireAt": "1998-06-15T00:00:00Z", "price": 92, "purchaseAt": "1998-01-02T00:00:00Z", "trialPrice": 23}, {"currencyCode": "b1a6mrc8", "currencyNamespace": "3AxYjzak", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1989-04-28T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1971-04-27T00:00:00Z", "discountedPrice": 45, "expireAt": "1978-03-12T00:00:00Z", "price": 53, "purchaseAt": "1977-07-28T00:00:00Z", "trialPrice": 63}, {"currencyCode": "rSdbiYZV", "currencyNamespace": "LwGNjOLs", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1986-01-17T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1975-01-11T00:00:00Z", "discountedPrice": 100, "expireAt": "1993-07-14T00:00:00Z", "price": 51, "purchaseAt": "1985-10-18T00:00:00Z", "trialPrice": 53}], "VcnxnXuv": [{"currencyCode": "JT3rYRN7", "currencyNamespace": "V5hwBOGO", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1975-01-10T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1986-01-23T00:00:00Z", "discountedPrice": 40, "expireAt": "1977-02-17T00:00:00Z", "price": 36, "purchaseAt": "1984-07-04T00:00:00Z", "trialPrice": 34}, {"currencyCode": "Zllo23X2", "currencyNamespace": "5E7uziV1", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1991-03-27T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1990-02-09T00:00:00Z", "discountedPrice": 73, "expireAt": "1973-10-07T00:00:00Z", "price": 31, "purchaseAt": "1996-06-28T00:00:00Z", "trialPrice": 60}, {"currencyCode": "3gF3sCRY", "currencyNamespace": "LYmozAiI", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1994-06-29T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1977-09-04T00:00:00Z", "discountedPrice": 45, "expireAt": "1972-09-05T00:00:00Z", "price": 62, "purchaseAt": "1997-11-07T00:00:00Z", "trialPrice": 78}]}}, {"itemIdentities": ["UloZVK3Q", "44ZkdzeE", "d8hp80ud"], "itemIdentityType": "ITEM_SKU", "regionData": {"AqUF6buK": [{"currencyCode": "4TUefADJ", "currencyNamespace": "pF2BxSJ2", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1973-08-19T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1998-05-21T00:00:00Z", "discountedPrice": 58, "expireAt": "1976-02-27T00:00:00Z", "price": 6, "purchaseAt": "1974-04-03T00:00:00Z", "trialPrice": 52}, {"currencyCode": "Avqyx6MX", "currencyNamespace": "t2g06GDf", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1988-11-16T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1979-05-12T00:00:00Z", "discountedPrice": 98, "expireAt": "1975-08-31T00:00:00Z", "price": 83, "purchaseAt": "1980-03-11T00:00:00Z", "trialPrice": 89}, {"currencyCode": "hIQ00Hgl", "currencyNamespace": "MfyJoQiH", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1972-10-05T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1989-02-12T00:00:00Z", "discountedPrice": 74, "expireAt": "1976-10-24T00:00:00Z", "price": 5, "purchaseAt": "1999-08-02T00:00:00Z", "trialPrice": 32}], "A9WhSbsG": [{"currencyCode": "aL6ikcOU", "currencyNamespace": "sK0jazVH", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1972-07-12T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1997-03-06T00:00:00Z", "discountedPrice": 35, "expireAt": "1978-09-01T00:00:00Z", "price": 76, "purchaseAt": "1984-01-13T00:00:00Z", "trialPrice": 27}, {"currencyCode": "ny3PPnjw", "currencyNamespace": "ekzTcn6A", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1973-01-31T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1974-07-31T00:00:00Z", "discountedPrice": 17, "expireAt": "1971-08-27T00:00:00Z", "price": 30, "purchaseAt": "1996-07-19T00:00:00Z", "trialPrice": 75}, {"currencyCode": "jPUpBh3f", "currencyNamespace": "9olkjrhM", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1988-08-23T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1976-10-23T00:00:00Z", "discountedPrice": 20, "expireAt": "1998-08-12T00:00:00Z", "price": 35, "purchaseAt": "1976-01-24T00:00:00Z", "trialPrice": 34}], "LBmS77LN": [{"currencyCode": "u5G7y3R4", "currencyNamespace": "xku34UQq", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1975-08-01T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1998-10-01T00:00:00Z", "discountedPrice": 27, "expireAt": "1971-11-19T00:00:00Z", "price": 45, "purchaseAt": "1991-11-20T00:00:00Z", "trialPrice": 76}, {"currencyCode": "Wpv2VGz1", "currencyNamespace": "2EpmVh8q", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1986-11-15T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1971-02-20T00:00:00Z", "discountedPrice": 92, "expireAt": "1977-03-12T00:00:00Z", "price": 71, "purchaseAt": "1976-09-27T00:00:00Z", "trialPrice": 39}, {"currencyCode": "6ooO6rR4", "currencyNamespace": "MaPkgGNi", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1978-07-30T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1983-08-17T00:00:00Z", "discountedPrice": 75, "expireAt": "1994-05-16T00:00:00Z", "price": 48, "purchaseAt": "1984-11-01T00:00:00Z", "trialPrice": 48}]}}, {"itemIdentities": ["YrVehwdl", "Aj7lltSX", "Sb6IvfdF"], "itemIdentityType": "ITEM_SKU", "regionData": {"n74ZEFEy": [{"currencyCode": "RI6unyz1", "currencyNamespace": "3Sj6FdM1", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1991-07-12T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1986-05-30T00:00:00Z", "discountedPrice": 87, "expireAt": "1973-11-24T00:00:00Z", "price": 83, "purchaseAt": "1995-02-12T00:00:00Z", "trialPrice": 56}, {"currencyCode": "4wuy6Jgl", "currencyNamespace": "JvdDWIzZ", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1979-02-21T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1986-07-13T00:00:00Z", "discountedPrice": 3, "expireAt": "1987-10-15T00:00:00Z", "price": 29, "purchaseAt": "1992-06-26T00:00:00Z", "trialPrice": 14}, {"currencyCode": "xo0x2qWJ", "currencyNamespace": "oQuDX7FI", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1975-07-16T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1989-12-29T00:00:00Z", "discountedPrice": 5, "expireAt": "1973-04-23T00:00:00Z", "price": 94, "purchaseAt": "1991-02-08T00:00:00Z", "trialPrice": 88}], "H4VIIBPo": [{"currencyCode": "NPhrL8GO", "currencyNamespace": "ja2kiCV2", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1984-04-01T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1976-12-18T00:00:00Z", "discountedPrice": 47, "expireAt": "1986-10-21T00:00:00Z", "price": 88, "purchaseAt": "1989-05-24T00:00:00Z", "trialPrice": 48}, {"currencyCode": "yv2bgiNu", "currencyNamespace": "V0Fof66o", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1992-09-30T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1987-04-25T00:00:00Z", "discountedPrice": 51, "expireAt": "1996-10-07T00:00:00Z", "price": 88, "purchaseAt": "1984-10-11T00:00:00Z", "trialPrice": 63}, {"currencyCode": "PNHXeJEv", "currencyNamespace": "jysVKOMU", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1983-01-26T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1972-12-11T00:00:00Z", "discountedPrice": 10, "expireAt": "1985-09-29T00:00:00Z", "price": 99, "purchaseAt": "1973-06-04T00:00:00Z", "trialPrice": 51}], "1AyvOMI8": [{"currencyCode": "H0HqFCPz", "currencyNamespace": "sBO5e4J2", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1980-08-05T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1976-10-19T00:00:00Z", "discountedPrice": 51, "expireAt": "1984-11-20T00:00:00Z", "price": 7, "purchaseAt": "1987-09-12T00:00:00Z", "trialPrice": 50}, {"currencyCode": "B99Nh9wM", "currencyNamespace": "IOtcKdxf", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1996-07-05T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1975-01-29T00:00:00Z", "discountedPrice": 65, "expireAt": "1998-07-12T00:00:00Z", "price": 21, "purchaseAt": "1975-07-16T00:00:00Z", "trialPrice": 66}, {"currencyCode": "XYekc06S", "currencyNamespace": "gDZDkSE4", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1995-02-19T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1997-12-25T00:00:00Z", "discountedPrice": 97, "expireAt": "1983-11-21T00:00:00Z", "price": 56, "purchaseAt": "1974-02-18T00:00:00Z", "trialPrice": 46}]}}]}' \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --itemType 'CODE' \
    --limit '16' \
    --offset '88' \
    --sortBy 'gTZlzlYJ' \
    --storeId '28vuJCWt' \
    --keyword 'sfFcHAmp' \
    --language 'pIWX1WKf' \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '84' \
    --offset '27' \
    --sortBy '["displayOrder", "name", "updatedAt:desc"]' \
    --storeId 'uKT9ihmB' \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'LNQ7j0HI' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'rqcrOkjt' \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'nj0jzT2W' \
    --namespace $AB_NAMESPACE \
    --storeId 'D7MKeSKP' \
    --body '{"appId": "crmNaIQW", "appType": "DEMO", "baseAppId": "a9bgQqIZ", "boothName": "rxwQAFFv", "categoryPath": "QZKMX94q", "clazz": "YX9dqhQ6", "displayOrder": 62, "entitlementType": "DURABLE", "ext": {"P9w2Eo77": {}, "2nPKsNgA": {}, "ZvKF7rIr": {}}, "features": ["d5ggMVFA", "Y9mt00h5", "MwrQOonI"], "flexible": false, "images": [{"as": "7fK7wVPQ", "caption": "EYLnC6jl", "height": 55, "imageUrl": "Y4Ll87CF", "smallImageUrl": "t3aw4nwT", "width": 74}, {"as": "ttSoY0YN", "caption": "gMEH0IJZ", "height": 43, "imageUrl": "B9o5ca6E", "smallImageUrl": "FcYvO37I", "width": 86}, {"as": "Hey3JJnh", "caption": "vQcYScX6", "height": 39, "imageUrl": "9IwLLbU7", "smallImageUrl": "b2e4pGnE", "width": 32}], "itemIds": ["O5owFlLW", "yDAx00yH", "VS0xUKCt"], "itemQty": {"MMXMugcu": 70, "1Xz9wiYu": 57, "pcwCrzmz": 46}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"EtQnEM5T": {"description": "ljsdYqHc", "localExt": {"jq2CxkhA": {}, "kTUUHtYF": {}, "9SH32s2b": {}}, "longDescription": "73YlmkQa", "title": "GqiG8htY"}, "UIEW4FUB": {"description": "pJdiIpTx", "localExt": {"1BTmymOZ": {}, "5Z7rLGUF": {}, "liNzXzRN": {}}, "longDescription": "20KssMj5", "title": "P41mSkIQ"}, "pv18YzQo": {"description": "udg8ormQ", "localExt": {"ENTqOfP2": {}, "3D0NFujT": {}, "kH28zJUh": {}}, "longDescription": "aOKPd5rA", "title": "WGXDQEYf"}}, "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 81, "duration": 25, "endDate": "1980-06-21T00:00:00Z", "itemId": "8NNEQwdu", "itemSku": "JVXjc8Nm", "itemType": "0X8RkOfd"}, {"count": 76, "duration": 86, "endDate": "1987-11-20T00:00:00Z", "itemId": "Uu9qLYBd", "itemSku": "Ns82LkuL", "itemType": "TgZlGdXT"}, {"count": 61, "duration": 42, "endDate": "1998-01-26T00:00:00Z", "itemId": "IhBBxsLz", "itemSku": "zIlYkYf6", "itemType": "YiLjrjlq"}], "name": "9Q53kAVf", "odds": 0.3719815399617947, "type": "PROBABILITY_GROUP", "weight": 87}, {"lootBoxItems": [{"count": 31, "duration": 76, "endDate": "1987-04-26T00:00:00Z", "itemId": "EHGsKAKI", "itemSku": "lhvHL0nf", "itemType": "0cpeXkuZ"}, {"count": 89, "duration": 82, "endDate": "1971-05-04T00:00:00Z", "itemId": "Yjfzjy2U", "itemSku": "2Asu4ll2", "itemType": "83NHH9fg"}, {"count": 43, "duration": 15, "endDate": "1974-07-16T00:00:00Z", "itemId": "2jmzLudv", "itemSku": "4RAhnntW", "itemType": "zEvvj60B"}], "name": "ilHfdECj", "odds": 0.3095651646808901, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 42, "duration": 59, "endDate": "1987-07-13T00:00:00Z", "itemId": "bV2USENR", "itemSku": "9UD8GTcx", "itemType": "jkwjMdwN"}, {"count": 30, "duration": 5, "endDate": "1974-12-22T00:00:00Z", "itemId": "1fZS5OYh", "itemSku": "LhpA7mZ8", "itemType": "KU4NUt6q"}, {"count": 83, "duration": 35, "endDate": "1975-07-19T00:00:00Z", "itemId": "11mD5iVF", "itemSku": "1jGZsZO0", "itemType": "IS6m64qK"}], "name": "pduJLN31", "odds": 0.30143935644039477, "type": "REWARD", "weight": 16}], "rollFunction": "DEFAULT"}, "maxCount": 73, "maxCountPerUser": 30, "name": "JkuAjkdj", "optionBoxConfig": {"boxItems": [{"count": 84, "duration": 54, "endDate": "1992-09-27T00:00:00Z", "itemId": "w7lD3CG1", "itemSku": "kvEfaqFI", "itemType": "jJRIkDh1"}, {"count": 33, "duration": 0, "endDate": "1994-08-13T00:00:00Z", "itemId": "eKTFjtwZ", "itemSku": "bpmms71X", "itemType": "bqlxL0ZJ"}, {"count": 52, "duration": 59, "endDate": "1989-06-17T00:00:00Z", "itemId": "HdQwg4MY", "itemSku": "VTMR0yvj", "itemType": "WkF3RAds"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 50, "graceDays": 73}, "regionData": {"ixzFOvFv": [{"currencyCode": "3kGzP3pk", "currencyNamespace": "woXFLWvg", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1983-07-15T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1983-05-13T00:00:00Z", "expireAt": "1972-04-22T00:00:00Z", "price": 51, "purchaseAt": "1971-05-23T00:00:00Z", "trialPrice": 68}, {"currencyCode": "UUh3a64o", "currencyNamespace": "0sOAob0o", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1997-08-08T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1995-04-11T00:00:00Z", "expireAt": "1983-07-18T00:00:00Z", "price": 61, "purchaseAt": "1979-01-13T00:00:00Z", "trialPrice": 91}, {"currencyCode": "koJlwOXb", "currencyNamespace": "OkPdMmsQ", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1977-03-09T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1983-02-25T00:00:00Z", "expireAt": "1993-05-31T00:00:00Z", "price": 48, "purchaseAt": "1975-06-05T00:00:00Z", "trialPrice": 14}], "6lK9DqJN": [{"currencyCode": "sxtVmCIe", "currencyNamespace": "0nBoAwj1", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1978-01-26T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1978-12-30T00:00:00Z", "expireAt": "1997-01-11T00:00:00Z", "price": 36, "purchaseAt": "1990-05-05T00:00:00Z", "trialPrice": 0}, {"currencyCode": "KKZK3YDO", "currencyNamespace": "f5MzLnl4", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1975-08-02T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1992-01-29T00:00:00Z", "expireAt": "1998-07-14T00:00:00Z", "price": 38, "purchaseAt": "1993-12-22T00:00:00Z", "trialPrice": 38}, {"currencyCode": "5zVb29bz", "currencyNamespace": "wXeIGFal", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1975-12-09T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1999-04-10T00:00:00Z", "expireAt": "1974-07-28T00:00:00Z", "price": 23, "purchaseAt": "1974-10-04T00:00:00Z", "trialPrice": 81}], "eZSUWF36": [{"currencyCode": "vFJN2vqg", "currencyNamespace": "wNWjF1gg", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1999-10-25T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1990-11-19T00:00:00Z", "expireAt": "1973-12-03T00:00:00Z", "price": 98, "purchaseAt": "1989-06-23T00:00:00Z", "trialPrice": 17}, {"currencyCode": "xcgv1UEL", "currencyNamespace": "raupez8s", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1979-08-28T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1997-12-25T00:00:00Z", "expireAt": "1974-08-29T00:00:00Z", "price": 9, "purchaseAt": "1990-05-02T00:00:00Z", "trialPrice": 99}, {"currencyCode": "JTEtinjf", "currencyNamespace": "aJ7MxCO4", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1977-07-15T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1984-11-12T00:00:00Z", "expireAt": "1997-07-29T00:00:00Z", "price": 9, "purchaseAt": "1972-03-19T00:00:00Z", "trialPrice": 35}]}, "saleConfig": {"currencyCode": "y4KBJ7IN", "price": 1}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "KQoZMtqb", "stackable": false, "status": "INACTIVE", "tags": ["vPULM8qO", "Y9yidch3", "iBXpsH6x"], "targetCurrencyCode": "DorZwtK1", "targetNamespace": "5Utv2AyZ", "thumbnailUrl": "Ld8nIE6R", "useCount": 83}' \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId '3ioNtA6Y' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    --storeId 'oNNTPB9Z' \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'a3lo6Ng1' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "dv1pgh40"}' \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'lIMRmMId' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId '01xMqgV1' \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId '7bMOYM6a' \
    --namespace $AB_NAMESPACE \
    --storeId 'LyTvQgpl' \
    --body '{"carousel": [{"alt": "DPSpyfym", "previewUrl": "IPLzIWFZ", "thumbnailUrl": "iBY3AXka", "type": "image", "url": "FIilP935", "videoSource": "generic"}, {"alt": "lCWf0AOg", "previewUrl": "vPXBFMvQ", "thumbnailUrl": "CAyGS1dK", "type": "video", "url": "w8YTYNww", "videoSource": "vimeo"}, {"alt": "x1Ga3uSG", "previewUrl": "DIDYmq6L", "thumbnailUrl": "UGTrYNbD", "type": "video", "url": "p8WsM9os", "videoSource": "youtube"}], "developer": "duv09nXY", "forumUrl": "ntGeBe0p", "genres": ["Adventure", "MassivelyMultiplayer", "MassivelyMultiplayer"], "localizations": {"pjruOz6Q": {"announcement": "gf795U8Q", "slogan": "Hbs0jUCy"}, "gnBMnXYX": {"announcement": "h7GABMaf", "slogan": "3HKDuVTC"}, "gldN096Y": {"announcement": "ViE37Vaw", "slogan": "iXvqD88Q"}}, "platformRequirements": {"tDCOlH5n": [{"additionals": "UAfxSpD0", "directXVersion": "doT2fdvl", "diskSpace": "1xvQFmWC", "graphics": "uLHtdODF", "label": "k2xI3UV8", "osVersion": "cEr20Aqc", "processor": "IeJIKn5V", "ram": "5FPt4SEv", "soundCard": "Dav3Wmwi"}, {"additionals": "vW46reW4", "directXVersion": "oPSphQqk", "diskSpace": "oXcyxjdF", "graphics": "sDxAZM3I", "label": "vnLlDTBe", "osVersion": "tuBn1J4G", "processor": "amanaEh4", "ram": "mfQ3Gh15", "soundCard": "6AMfYT2z"}, {"additionals": "a3LXlc8a", "directXVersion": "mYEynGwJ", "diskSpace": "0bkBpGND", "graphics": "DHMHmuzm", "label": "kgXoL67j", "osVersion": "2jX1fwwa", "processor": "562Qf49x", "ram": "ZUuTHORG", "soundCard": "4L2Zn70O"}], "yIqgWQQa": [{"additionals": "PcWfFz04", "directXVersion": "Dwf6fk9S", "diskSpace": "r36Kk2Ma", "graphics": "pW1E1ARm", "label": "vqy4MpRA", "osVersion": "QXPth610", "processor": "2CiQ5Dyw", "ram": "hALmLerh", "soundCard": "pJFivzpG"}, {"additionals": "pCn4Ghcj", "directXVersion": "oXG7rARc", "diskSpace": "rEvVh1wX", "graphics": "SKEtw7cA", "label": "m4df3NFe", "osVersion": "RzEUjeBk", "processor": "JN5iMDQU", "ram": "u2OiGuG7", "soundCard": "hzHkjBJ0"}, {"additionals": "cvYgJDG8", "directXVersion": "6tUDQUKs", "diskSpace": "iYjzJtxo", "graphics": "jIqQ430W", "label": "Nxkn2H7C", "osVersion": "K2txZKem", "processor": "Jhu7O5CG", "ram": "p80ogglq", "soundCard": "4f5CCCgS"}], "P1kxbXi6": [{"additionals": "FQGcF6cC", "directXVersion": "j6WLKnj5", "diskSpace": "pBEbyHbs", "graphics": "semAcCH4", "label": "5s4EQesX", "osVersion": "BLCE7NTG", "processor": "ZnJ4qudD", "ram": "3bYtvlLU", "soundCard": "dq6ajoOo"}, {"additionals": "MJQ6892T", "directXVersion": "1Aas7dac", "diskSpace": "ZpVb5XL8", "graphics": "YaGvkY8R", "label": "yU2leTzF", "osVersion": "hSzg7Q3B", "processor": "BDnqP5KV", "ram": "YiWbxtDF", "soundCard": "Kju99gfv"}, {"additionals": "F7iktP75", "directXVersion": "cJLUIW2Q", "diskSpace": "koU4dyeK", "graphics": "Uo0H1Sym", "label": "wkYD1vzR", "osVersion": "nkJDEhvh", "processor": "VmdlIG7U", "ram": "iho8AQQB", "soundCard": "3lhN04iZ"}]}, "platforms": ["Windows", "Android", "Android"], "players": ["MMO", "CrossPlatformMulti", "Coop"], "primaryGenre": "Racing", "publisher": "JMOeRjzB", "releaseDate": "1973-07-16T00:00:00Z", "websiteUrl": "8xv9nMIG"}' \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'igzOqPOM' \
    --namespace $AB_NAMESPACE \
    --storeId 'gAYUpYqh' \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'VF4VHzYq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Ce52hYpL' \
    --namespace $AB_NAMESPACE \
    --storeId 'XDzJT7vW' \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'TZ2wb1UT' \
    --itemId 'CkR9eu4l' \
    --namespace $AB_NAMESPACE \
    --storeId 'K4v2vjqR' \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'Y03nqlcC' \
    --itemId 'rwFwc5fc' \
    --namespace $AB_NAMESPACE \
    --storeId 'MkI4hbp3' \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'EzesDFvj' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'M2PhWjqP' \
    --populateBundle 'true' \
    --region 'OHrq5ZgH' \
    --storeId 'nkSZRq9u' \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'fZgrDOOV' \
    --namespace $AB_NAMESPACE \
    --storeId '5xdjSHt1' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 70, "comparison": "is", "name": "jy9kMJTZ", "predicateType": "EntitlementPredicate", "value": "XQKDZeYR", "values": ["QQP8yjOb", "7l4okOEo", "FRQ4IuSL"]}, {"anyOf": 92, "comparison": "isLessThan", "name": "Q1U5PKpq", "predicateType": "EntitlementPredicate", "value": "cUnXa0UF", "values": ["Qp9v0Lo6", "WYDcqbxr", "qyCqz8zc"]}, {"anyOf": 12, "comparison": "includes", "name": "kJ4GPJCp", "predicateType": "SeasonTierPredicate", "value": "JFmsTrWf", "values": ["0OkwtykH", "Kwrw6lZR", "gl7mzNsI"]}]}, {"operator": "or", "predicates": [{"anyOf": 11, "comparison": "isLessThan", "name": "LnchvaK5", "predicateType": "SeasonPassPredicate", "value": "rZiQaJ7c", "values": ["WdFMMYre", "AozLp1Li", "XmrgsYk0"]}, {"anyOf": 15, "comparison": "is", "name": "oBErHdhk", "predicateType": "SeasonTierPredicate", "value": "4xdRtVMO", "values": ["v3w01osY", "TdfqqBtN", "x8Raz7B2"]}, {"anyOf": 17, "comparison": "isLessThanOrEqual", "name": "PHYuzMQS", "predicateType": "SeasonPassPredicate", "value": "FSZgh9KS", "values": ["1sKueBv5", "kB90O0Ha", "IFgzMj41"]}]}, {"operator": "or", "predicates": [{"anyOf": 58, "comparison": "isLessThanOrEqual", "name": "nVYXcvVK", "predicateType": "SeasonTierPredicate", "value": "h5ht1LJz", "values": ["cWlT0xf6", "3aXFX1SF", "XoQXR4Kl"]}, {"anyOf": 89, "comparison": "is", "name": "HymgEErq", "predicateType": "EntitlementPredicate", "value": "oEdToKcI", "values": ["8EeGY1C5", "EgMa8EIc", "9df5Zst9"]}, {"anyOf": 31, "comparison": "isLessThan", "name": "BiuD39SV", "predicateType": "EntitlementPredicate", "value": "pVkjBMmY", "values": ["SHJVGr0C", "xWtPDSUj", "gGIs9t4T"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'p7YunJ8b' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "c7SHTRZ3"}' \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'Od6bpPNU' \
    --offset '55' \
    --tag 'PrasOzHl' \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0ic6SM7F", "name": "0pLnVaag", "status": "INACTIVE", "tags": ["shMpQqEK", "kTrrNuJJ", "FND9aiyW"]}' \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'yqJHdXto' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'vVKElgn4' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "uK5dmpHy", "name": "xJxCxPt3", "status": "ACTIVE", "tags": ["PXMkWhbn", "4aEbaJsE", "w18bJMyh"]}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'Q3R9ccnW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'HRmSVdGC' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '32' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'kYpJHl3x' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime '1xYpjTYS' \
    --limit '89' \
    --offset '11' \
    --orderNos '["1aWl81i1", "nbbPd8D2", "Jg578E91"]' \
    --sortBy '8a1yu7pQ' \
    --startTime '7Jyiz4hb' \
    --status 'FULFILLED' \
    --withTotal 'true' \
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
    --orderNo 'rnSUH1AH' \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'iFrxrDPb' \
    --body '{"description": "qYqWvek7"}' \
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
    --body '{"dryRun": false, "notifyUrl": "W84mmJv4", "privateKey": "VFXmvMmZ"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'XIj3BWZI' \
    --externalId 'rI30BItV' \
    --limit '55' \
    --notificationSource 'ALIPAY' \
    --notificationType '1jiOyl4A' \
    --offset '70' \
    --paymentOrderNo 'teGxtFuq' \
    --startDate '8HMvvoPA' \
    --status 'IGNORED' \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'wMuKFL5f' \
    --limit '100' \
    --offset '45' \
    --status 'CHARGE_FAILED' \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "TR8CA8Sf", "currencyNamespace": "7JAh3Cpm", "customParameters": {"URjwjHt5": {}, "wSG64E8C": {}, "IFoSdeeb": {}}, "description": "E2PQFvMY", "extOrderNo": "Al5ZEhTH", "extUserId": "1Opx1sT9", "itemType": "LOOTBOX", "language": "tj-UMXL", "metadata": {"IWiGJxot": "92a4z4Yw", "FSvwK1pY": "XJksxxJf", "TXakSf31": "XBbscOLy"}, "notifyUrl": "iaJzWtj7", "omitNotification": true, "platform": "6q3cFtmg", "price": 48, "recurringPaymentOrderNo": "Rw346qei", "region": "kJLBA2uH", "returnUrl": "he8Dh6GN", "sandbox": false, "sku": "uLix3WMp", "subscriptionId": "FAsEB3Mx", "targetNamespace": "xu60YJPX", "targetUserId": "0tvkZElN", "title": "6b0LL0DB"}' \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'FJRv76ZN' \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'qW1JcToI' \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ptGBvEDk' \
    --body '{"extTxId": "FK7vXDsM", "paymentMethod": "tREmLdj2", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '0Upd0185' \
    --body '{"description": "52vcDgzf"}' \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'y8MjWr5O' \
    --body '{"amount": 56, "currencyCode": "7sqGtS2L", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 69, "vat": 23}' \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'e2gozu5X' \
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
    --body '{"allowedBalanceOrigins": ["Nintendo", "Steam", "Epic"]}' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --endTime 'ALgi1tH9' \
    --limit '84' \
    --offset '74' \
    --source 'IAP' \
    --startTime 'jTALeiyg' \
    --status 'SUCCESS' \
    --transactionId 'n7Cw0HjF' \
    --userId 'nR1YCA9i' \
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
    --body '{"appConfig": {"appName": "r7o1lfoy"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "YyBtqNsA"}, "extendType": "APP"}' \
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
    --body '{"description": "5Lh9sbGk", "eventTopic": "p7RU2kXN", "maxAwarded": 68, "maxAwardedPerUser": 43, "namespaceExpression": "5jzBBzfK", "rewardCode": "esNY40Pb", "rewardConditions": [{"condition": "8FsXjv8H", "conditionName": "XKXFYB6O", "eventName": "QGwQfxAX", "rewardItems": [{"duration": 58, "endDate": "1982-06-26T00:00:00Z", "itemId": "p2eXTiAm", "quantity": 45}, {"duration": 85, "endDate": "1971-08-12T00:00:00Z", "itemId": "gvWQQmDz", "quantity": 84}, {"duration": 18, "endDate": "1985-05-26T00:00:00Z", "itemId": "Z2sZD7xG", "quantity": 19}]}, {"condition": "DxAwnUuw", "conditionName": "0Hkj1YuY", "eventName": "wCanv51Z", "rewardItems": [{"duration": 77, "endDate": "1979-10-04T00:00:00Z", "itemId": "4UDdQUu7", "quantity": 89}, {"duration": 57, "endDate": "1975-11-22T00:00:00Z", "itemId": "ypPb6y8t", "quantity": 28}, {"duration": 13, "endDate": "1992-06-04T00:00:00Z", "itemId": "EJ5InT7S", "quantity": 41}]}, {"condition": "2XkY4u1y", "conditionName": "0p8dwthZ", "eventName": "u6dsVEno", "rewardItems": [{"duration": 42, "endDate": "1971-09-29T00:00:00Z", "itemId": "Uoe4GqbQ", "quantity": 34}, {"duration": 23, "endDate": "1972-01-11T00:00:00Z", "itemId": "Ap65V0Fw", "quantity": 55}, {"duration": 23, "endDate": "1991-07-01T00:00:00Z", "itemId": "ABRftlyo", "quantity": 7}]}], "userIdExpression": "nWJRHYdW"}' \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'leeRu8zW' \
    --limit '52' \
    --offset '69' \
    --sortBy '["rewardCode:asc", "namespace:desc", "namespace"]' \
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
    --rewardId 'yH8xnpE2' \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId '3kPyKxXI' \
    --body '{"description": "6qTewGEz", "eventTopic": "CS5dSiTx", "maxAwarded": 72, "maxAwardedPerUser": 26, "namespaceExpression": "HdONJKGq", "rewardCode": "NBXf5zlD", "rewardConditions": [{"condition": "NsW5mypx", "conditionName": "NITRLaeI", "eventName": "3PRjE8dD", "rewardItems": [{"duration": 14, "endDate": "1991-10-12T00:00:00Z", "itemId": "zYDlfScj", "quantity": 96}, {"duration": 57, "endDate": "1974-10-15T00:00:00Z", "itemId": "QnwmkzKc", "quantity": 44}, {"duration": 83, "endDate": "1974-12-31T00:00:00Z", "itemId": "aZAmLbPa", "quantity": 37}]}, {"condition": "WspjNS6C", "conditionName": "Gpxt9W0b", "eventName": "deiy6ZUG", "rewardItems": [{"duration": 23, "endDate": "1971-11-17T00:00:00Z", "itemId": "RdqerNID", "quantity": 32}, {"duration": 83, "endDate": "1976-04-06T00:00:00Z", "itemId": "YNIRANe0", "quantity": 87}, {"duration": 1, "endDate": "1994-12-23T00:00:00Z", "itemId": "qT2uU7rJ", "quantity": 57}]}, {"condition": "aaGUBzIw", "conditionName": "QmOB7zRD", "eventName": "tpnamCR9", "rewardItems": [{"duration": 95, "endDate": "1978-11-10T00:00:00Z", "itemId": "JsYDrty1", "quantity": 95}, {"duration": 74, "endDate": "1983-09-10T00:00:00Z", "itemId": "o0ZZrPsj", "quantity": 66}, {"duration": 44, "endDate": "1999-12-06T00:00:00Z", "itemId": "eoz8lnIR", "quantity": 4}]}], "userIdExpression": "cG8D9ChC"}' \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'xYDZiQ5J' \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'hO1VK4QO' \
    --body '{"payload": {"dmQOXBr5": {}, "h3OmA4Ay": {}, "ZU2yIJCe": {}}}' \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'M9jcAXqv' \
    --body '{"conditionName": "RbQFP0Lm", "userId": "qxVWoTW9"}' \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end '2i59TJrN' \
    --limit '74' \
    --offset '74' \
    --start 'DO2j58cS' \
    --storeId 'ERTmNPSs' \
    --viewId 'seDmLGoH' \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'JW95JKwf' \
    --body '{"active": true, "displayOrder": 40, "endDate": "1981-10-15T00:00:00Z", "ext": {"D9Wgqldp": {}, "4YmDNafD": {}, "SKNpDvlB": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 18, "itemCount": 85, "rule": "SEQUENCE"}, "items": [{"id": "zb9rHFTn", "sku": "gSNWoffx"}, {"id": "qmldOS8Y", "sku": "zM5CaHy2"}, {"id": "1VC64CBk", "sku": "YUhxSNmX"}], "localizations": {"EiuxslDG": {"description": "7ZgbhRf5", "localExt": {"SBpiNDSd": {}, "bVVw8ES7": {}, "835MZI8D": {}}, "longDescription": "gcml0XuD", "title": "DPiYTJCP"}, "WdxhZw2L": {"description": "WosdAp9U", "localExt": {"LIjGZ4P0": {}, "NKzFsWPf": {}, "gXTHR8Up": {}}, "longDescription": "lZfSyary", "title": "DnUSiTLm"}, "icQ5oFKw": {"description": "xOE86D9N", "localExt": {"3Axo3tbp": {}, "eShWDShU": {}, "iGZQiAvU": {}}, "longDescription": "VWlSqdZH", "title": "AWU4A7Ac"}}, "name": "4AVaCuEW", "rotationType": "FIXED_PERIOD", "startDate": "1973-10-20T00:00:00Z", "viewId": "WfoM1Lb6"}' \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'EI6u7W3C' \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'AFd1KsUB' \
    --storeId 'CxXb5UdY' \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'U8ixzoON' \
    --storeId 'RkHtmXkd' \
    --body '{"active": true, "displayOrder": 1, "endDate": "1980-04-26T00:00:00Z", "ext": {"WAdfbyNS": {}, "molH1oNe": {}, "vNh3T6Ml": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 6, "itemCount": 54, "rule": "SEQUENCE"}, "items": [{"id": "JqgtN4NF", "sku": "TPzedqNg"}, {"id": "bbuC2GmH", "sku": "EfbKDwJL"}, {"id": "yd20B8Nh", "sku": "6Y7ON3zw"}], "localizations": {"TLMVmUot": {"description": "eIKiGv09", "localExt": {"4YPgqqV5": {}, "40EuQIxx": {}, "XtOhnhRE": {}}, "longDescription": "ICB7OMQM", "title": "p5zvwDQb"}, "UXmI7FgS": {"description": "Guqe66TG", "localExt": {"SoRAzpZS": {}, "K7ORPsD0": {}, "SPPzpQdP": {}}, "longDescription": "463KZCsc", "title": "h5Pe5cZm"}, "rVEignp8": {"description": "QM7WqMYf", "localExt": {"KWpoInHz": {}, "TJeBjgXr": {}, "ajUhsW76": {}}, "longDescription": "aKO1Xc1E", "title": "Jgqp0ui3"}}, "name": "PKea1YXm", "rotationType": "NONE", "startDate": "1987-04-12T00:00:00Z", "viewId": "PoXvKO2H"}' \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'vz0FuBxV' \
    --storeId 'TqZcmvse' \
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
    --body '{"defaultLanguage": "6nCQUUT2", "defaultRegion": "Sxj6qGyQ", "description": "29BSApdh", "supportedLanguages": ["NvA7wZCx", "bGzjDB6w", "XllZvyE9"], "supportedRegions": ["rQfiABKm", "PT9at5LJ", "4HbMvUVB"], "title": "qR3UrMqv"}' \
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
    --storeId 'UxVoYsEE' \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId '66ZLbPQN' \
    --body '{"defaultLanguage": "jgUK56AF", "defaultRegion": "ihmMYCoE", "description": "wi3C1O7K", "supportedLanguages": ["q9M4tONy", "Mu8JIqyj", "zsVTXJBS"], "supportedRegions": ["cz8y310R", "fc1GW3np", "mozhAgsU"], "title": "3n2fj75v"}' \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FTX2jvXw' \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'IFL0cfNW' \
    --action 'DELETE' \
    --itemSku 'M9Pag1aH' \
    --itemType 'COINS' \
    --limit '57' \
    --offset '6' \
    --selected 'true' \
    --sortBy '["updatedAt", "createdAt:desc", "updatedAt:asc"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'PcgBPn2a' \
    --updatedAtStart 'SSOwJ0eS' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'c6RlAsyx' \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'AwcZMHt6' \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'gDxHWUgc' \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '9Gz9k1qt' \
    --action 'DELETE' \
    --itemSku 'jQie7pFl' \
    --itemType 'SUBSCRIPTION' \
    --selected 'false' \
    --type 'STORE' \
    --updatedAtEnd 'kwdaFRqk' \
    --updatedAtStart 'EKuVm5eN' \
    > test.out 2>&1
eval_tap $? 194 'SelectAllRecordsByCriteria' test.out

#- 195 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId '6wZfcpYM' \
    --action 'DELETE' \
    --itemSku '3YkNiZHG' \
    --itemType 'APP' \
    --type 'SECTION' \
    --updatedAtEnd 'UhGBz2JR' \
    --updatedAtStart 'FQW7ysW9' \
    > test.out 2>&1
eval_tap $? 195 'GetStatistic' test.out

#- 196 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '6pErkhEg' \
    > test.out 2>&1
eval_tap $? 196 'UnselectAllRecords' test.out

#- 197 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'utZ21XDL' \
    --namespace $AB_NAMESPACE \
    --storeId 'c4WV19UK' \
    > test.out 2>&1
eval_tap $? 197 'SelectRecord' test.out

#- 198 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'hhmpX9Rs' \
    --namespace $AB_NAMESPACE \
    --storeId 'YkCdU9KU' \
    > test.out 2>&1
eval_tap $? 198 'UnselectRecord' test.out

#- 199 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ysbvH7HC' \
    --targetStoreId 'wpxBiIZI' \
    > test.out 2>&1
eval_tap $? 199 'CloneStore' test.out

#- 200 ExportStore
eval_tap 0 200 'ExportStore # SKIP deprecated' test.out

#- 201 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'biKMAlyB' \
    --limit '1' \
    --offset '85' \
    --sku '0F73e9LK' \
    --status 'ACTIVE' \
    --subscribedBy 'USER' \
    --userId 'CaM4x9rz' \
    > test.out 2>&1
eval_tap $? 201 'QuerySubscriptions' test.out

#- 202 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FMK4u6Lc' \
    > test.out 2>&1
eval_tap $? 202 'RecurringChargeSubscription' test.out

#- 203 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'pj6R0k5b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'GetTicketDynamic' test.out

#- 204 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'w6XwSCRX' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "Bw4QBjUt"}' \
    > test.out 2>&1
eval_tap $? 204 'DecreaseTicketSale' test.out

#- 205 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'CZWPwYjE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 205 'GetTicketBoothID' test.out

#- 206 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'maBsXT5k' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 54, "orderNo": "CfVcUxjy"}' \
    > test.out 2>&1
eval_tap $? 206 'IncreaseTicketSale' test.out

#- 207 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 90, "currencyCode": "mRl63dFN", "expireAt": "1979-12-27T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "jQu8tTN3", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 65, "itemIdentity": "zaNMr9d3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "OZ7xXu3g"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 43, "currencyCode": "9vicQoLQ", "expireAt": "1999-05-22T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "Kqhkgsad", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 31, "itemIdentity": "t17AOZZY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "MxyIGJRD"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 80, "currencyCode": "oeM7F5Ya", "expireAt": "1974-12-06T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "PGcyuYgI", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 52, "itemIdentity": "75PxVVxV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "FF8MzWw2"}, "type": "DEBIT_WALLET"}], "userId": "4Y8KUbCd"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 41, "currencyCode": "IGak584L", "expireAt": "1985-04-27T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "ws4wT2ss", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 7, "itemIdentity": "N2kfAf8J", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 75, "entitlementId": "t5N6Iuxb"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 68, "currencyCode": "gongIeu7", "expireAt": "1984-02-02T00:00:00Z"}, "debitPayload": {"count": 89, "currencyCode": "2loDAOLX", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 13, "itemIdentity": "YEk6nzw7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "pEDK5PON"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 72, "currencyCode": "m9JfYjeu", "expireAt": "1998-11-18T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "1IFujlWd", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 4, "itemIdentity": "VoAF2Z5Y", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 69, "entitlementId": "xbt7AeXv"}, "type": "DEBIT_WALLET"}], "userId": "qnnw5vuc"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 45, "currencyCode": "UgkFBNfd", "expireAt": "1972-12-28T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "HYKKUGiN", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 4, "itemIdentity": "UuolXajG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "vwHYD7Hc"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 26, "currencyCode": "nEYsWbGX", "expireAt": "1977-07-02T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "3gDSy9OM", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 90, "itemIdentity": "Bsq4iPGg", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "u3hsI06m"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 7, "currencyCode": "2eivDfyz", "expireAt": "1994-07-27T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "rvbecfp6", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 68, "itemIdentity": "QbYoNe0b", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "m4Bb6ua4"}, "type": "DEBIT_WALLET"}], "userId": "h0AXSFH1"}], "metadata": {"tKRvXnpE": {}, "KmPHTLpx": {}, "OVl4cTUf": {}}, "needPreCheck": false, "transactionId": "V0LEGNLl", "type": "IXIQoC2m"}' \
    > test.out 2>&1
eval_tap $? 207 'Commit' test.out

#- 208 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '48' \
    --status 'FAILED' \
    --type 'F9i0ks2I' \
    --userId 'NrqseeSl' \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByCriteria' test.out

#- 209 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'kg1fzPwR' \
    > test.out 2>&1
eval_tap $? 209 'GetTradeHistoryByTransactionId' test.out

#- 210 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'SYaKJQw6' \
    --body '{"achievements": [{"id": "NllkBRrG", "value": 62}, {"id": "EKhlWj5E", "value": 1}, {"id": "4rFjSDwh", "value": 50}], "steamUserId": "R0fiArui"}' \
    > test.out 2>&1
eval_tap $? 210 'UnlockSteamUserAchievement' test.out

#- 211 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'FTEH3Cl9' \
    --xboxUserId 'SPaOsLEq' \
    > test.out 2>&1
eval_tap $? 211 'GetXblUserAchievements' test.out

#- 212 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ickU2YAH' \
    --body '{"achievements": [{"id": "hiwupBwf", "percentComplete": 47}, {"id": "stpos6T2", "percentComplete": 9}, {"id": "krO1b0zr", "percentComplete": 66}], "serviceConfigId": "pV0lLEQI", "titleId": "fJTXGfV7", "xboxUserId": "K4bj6lpp"}' \
    > test.out 2>&1
eval_tap $? 212 'UpdateXblUserAchievement' test.out

#- 213 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'r1vNJhOU' \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeCampaign' test.out

#- 214 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'YEa2cEq0' \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeEntitlement' test.out

#- 215 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId '0twfBvdJ' \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeFulfillment' test.out

#- 216 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId '5rIFKVzw' \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeIntegration' test.out

#- 217 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId '7DnfCQxU' \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeOrder' test.out

#- 218 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'zb7GFevl' \
    > test.out 2>&1
eval_tap $? 218 'AnonymizePayment' test.out

#- 219 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'KbOjr2KM' \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeRevocation' test.out

#- 220 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'SM1GClaw' \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeSubscription' test.out

#- 221 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'n5kplPZC' \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeWallet' test.out

#- 222 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId '7nmXlDwG' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLCByPlatform' test.out

#- 223 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'FiyolSdE' \
    --type 'PSN' \
    > test.out 2>&1
eval_tap $? 223 'GetUserDLC' test.out

#- 224 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XPumalB8' \
    --activeOnly 'true' \
    --appType 'DLC' \
    --entitlementClazz 'CODE' \
    --entitlementName 'bSJUTQsm' \
    --features '["tj26jXl6", "xomSk63Z", "DRATx0qI"]' \
    --itemId '["9KTC6qqq", "RbvqXU2f", "9bgBjdhA"]' \
    --limit '46' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 224 'QueryUserEntitlements' test.out

#- 225 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '98imPrCU' \
    --body '[{"endDate": "1993-06-04T00:00:00Z", "grantedCode": "LzJsUSyF", "itemId": "8Oxu3fjM", "itemNamespace": "lVc4vk5N", "language": "Bzr_781", "quantity": 87, "region": "upmpTP44", "source": "GIFT", "startDate": "1981-10-21T00:00:00Z", "storeId": "YfrHaUcT"}, {"endDate": "1991-06-01T00:00:00Z", "grantedCode": "hNLiPgNz", "itemId": "kiH3U2mc", "itemNamespace": "02A2vnBM", "language": "dg", "quantity": 91, "region": "hql6O26B", "source": "REDEEM_CODE", "startDate": "1972-03-10T00:00:00Z", "storeId": "GmuXiHVE"}, {"endDate": "1991-05-07T00:00:00Z", "grantedCode": "5uUNsAWe", "itemId": "rxmvvLio", "itemNamespace": "MfvijxrG", "language": "mk-NWft", "quantity": 22, "region": "GmPd7KWr", "source": "REWARD", "startDate": "1985-02-26T00:00:00Z", "storeId": "kOjsG6hG"}]' \
    > test.out 2>&1
eval_tap $? 225 'GrantUserEntitlement' test.out

#- 226 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'N0nCouKx' \
    --activeOnly 'false' \
    --appId 'RgdICek3' \
    > test.out 2>&1
eval_tap $? 226 'GetUserAppEntitlementByAppId' test.out

#- 227 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'jM9S22tC' \
    --activeOnly 'true' \
    --limit '39' \
    --offset '86' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 227 'QueryUserEntitlementsByAppType' test.out

#- 228 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4tnmRqU1' \
    --activeOnly 'false' \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'n2grWXsj' \
    > test.out 2>&1
eval_tap $? 228 'GetUserEntitlementByItemId' test.out

#- 229 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'z28EUVch' \
    --ids '["fuf2jxYk", "SU00Kc4z", "j71l4Ako"]' \
    > test.out 2>&1
eval_tap $? 229 'GetUserActiveEntitlementsByItemIds' test.out

#- 230 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'cPG0L56B' \
    --activeOnly 'true' \
    --entitlementClazz 'APP' \
    --sku 'TK1u4idk' \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementBySku' test.out

#- 231 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'kebJpGh8' \
    --appIds '["rCXvgoQL", "zXtI3ydf", "YUpxRaQa"]' \
    --itemIds '["jRIajVRF", "LhHjNWY9", "xehJ9XA6"]' \
    --skus '["bH9E6LQQ", "nUyUOrhz", "lHJxxgcR"]' \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlement' test.out

#- 232 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'krhj62Hv' \
    --itemIds '["XzInChq7", "mE2RcnPX", "WEUyhlS7"]' \
    > test.out 2>&1
eval_tap $? 232 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 233 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'fVMo87ut' \
    --appId 'wRXB7U12' \
    > test.out 2>&1
eval_tap $? 233 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 234 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'br3GoDcl' \
    --entitlementClazz 'CODE' \
    --itemId 'PhThEMbQ' \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemId' test.out

#- 235 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'EXxm3EeR' \
    --ids '["Ln7vOPDL", "iPo49TOh", "ziXqx2NL"]' \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipByItemIds' test.out

#- 236 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'j2SRE8Od' \
    --entitlementClazz 'SUBSCRIPTION' \
    --sku 'ZQjRopNK' \
    > test.out 2>&1
eval_tap $? 236 'GetUserEntitlementOwnershipBySku' test.out

#- 237 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'CQD25inZ' \
    > test.out 2>&1
eval_tap $? 237 'RevokeAllEntitlements' test.out

#- 238 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '2cbfkHQQ' \
    --entitlementIds 'dlTL49qG' \
    > test.out 2>&1
eval_tap $? 238 'RevokeUserEntitlements' test.out

#- 239 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'b2y99lAh' \
    --namespace $AB_NAMESPACE \
    --userId 'oCrqGDMV' \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlement' test.out

#- 240 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'I3bPZ2Ug' \
    --namespace $AB_NAMESPACE \
    --userId 'v574j8K9' \
    --body '{"endDate": "1984-03-11T00:00:00Z", "nullFieldList": ["ikvymHe3", "aFYKEvE7", "47Iw3L5T"], "startDate": "1996-01-25T00:00:00Z", "status": "INACTIVE", "useCount": 51}' \
    > test.out 2>&1
eval_tap $? 240 'UpdateUserEntitlement' test.out

#- 241 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'BQr9HznP' \
    --namespace $AB_NAMESPACE \
    --userId 'p6uWlD5P' \
    --body '{"options": ["LjYlklMM", "5mEGvFgk", "6fb6ekNB"], "requestId": "RlUQCC8I", "useCount": 1}' \
    > test.out 2>&1
eval_tap $? 241 'ConsumeUserEntitlement' test.out

#- 242 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'UKPBQdCi' \
    --namespace $AB_NAMESPACE \
    --userId 'DwsnMTiV' \
    > test.out 2>&1
eval_tap $? 242 'DisableUserEntitlement' test.out

#- 243 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'sPKQ7SQy' \
    --namespace $AB_NAMESPACE \
    --userId 'P5nwL6DX' \
    > test.out 2>&1
eval_tap $? 243 'EnableUserEntitlement' test.out

#- 244 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'LKel5vIT' \
    --namespace $AB_NAMESPACE \
    --userId 'f1CT42v6' \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementHistories' test.out

#- 245 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'sPUgYa8f' \
    --namespace $AB_NAMESPACE \
    --userId 'FQ8TRkyg' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUserEntitlement' test.out

#- 246 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '5kP7KaF4' \
    --namespace $AB_NAMESPACE \
    --userId 'RZUq984l' \
    --body '{"reason": "zlzbu1SC", "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 246 'RevokeUserEntitlementByUseCount' test.out

#- 247 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'tOe7DldG' \
    --namespace $AB_NAMESPACE \
    --userId 'guQzWHbL' \
    --quantity '29' \
    > test.out 2>&1
eval_tap $? 247 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 248 RevokeUseCount
eval_tap 0 248 'RevokeUseCount # SKIP deprecated' test.out

#- 249 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'M0CQReEs' \
    --namespace $AB_NAMESPACE \
    --userId 'nrPZQipY' \
    --body '{"requestId": "KVzJ0XSK", "useCount": 88}' \
    > test.out 2>&1
eval_tap $? 249 'SellUserEntitlement' test.out

#- 250 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'ElswM0km' \
    --body '{"duration": 31, "endDate": "1995-03-05T00:00:00Z", "itemId": "NBXa10d1", "itemSku": "Bler7bnn", "language": "9WtHgMPY", "metadata": {"xcguLDi9": {}, "v7nTVw95": {}, "45XPQMRk": {}}, "order": {"currency": {"currencyCode": "7EOupozM", "currencySymbol": "wAiPSMTE", "currencyType": "REAL", "decimals": 94, "namespace": "KwhvDASK"}, "ext": {"8CNp8Um1": {}, "mXmAlUUI": {}, "QXO4KTUo": {}}, "free": false}, "orderNo": "D21FAoRV", "origin": "Other", "overrideBundleItemQty": {"k8WAK8WA": 10, "r8vngBQN": 19, "Ouk6jDAX": 75}, "quantity": 0, "region": "0fKJbFZe", "source": "PURCHASE", "startDate": "1994-05-26T00:00:00Z", "storeId": "FYesunl7"}' \
    > test.out 2>&1
eval_tap $? 250 'FulfillItem' test.out

#- 251 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'WfVzG0xB' \
    --body '{"code": "wZNNOOak", "language": "vHsW_qx", "region": "U7fHzR2U"}' \
    > test.out 2>&1
eval_tap $? 251 'RedeemCode' test.out

#- 252 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'mMfOqmyD' \
    --body '{"itemId": "U3epC5Ng", "itemSku": "gXaCKKwc", "quantity": 60}' \
    > test.out 2>&1
eval_tap $? 252 'PreCheckFulfillItem' test.out

#- 253 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'FAbLEWyb' \
    --body '{"metadata": {"XhWYv4vn": {}, "KzVEwCJ4": {}, "qgbBDjcb": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "Pjt1Kgdl", "namespace": "Y8aQ8o8K"}, "item": {"itemId": "2BMiuD5R", "itemSku": "IMrBVUJ7", "itemType": "9SxlZLGC"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "t6DSObVs", "namespace": "MZJYzWNs"}, "item": {"itemId": "paFoMxbq", "itemSku": "Psq69DK2", "itemType": "ilr7RhoR"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "1tutIxe9", "namespace": "pVboksIh"}, "item": {"itemId": "UOCTkv9K", "itemSku": "njmMX0j6", "itemType": "8YSG9f1m"}, "quantity": 61, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "BEEchGpE"}' \
    > test.out 2>&1
eval_tap $? 253 'FulfillRewards' test.out

#- 254 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'bVJIF78Y' \
    --endTime 'NedSyWos' \
    --limit '59' \
    --offset '35' \
    --productId 'mbC1ARgM' \
    --startTime 'Sk5DBLT6' \
    --status 'VERIFIED' \
    --type 'STEAM' \
    > test.out 2>&1
eval_tap $? 254 'QueryUserIAPOrders' test.out

#- 255 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '7JarR6fz' \
    > test.out 2>&1
eval_tap $? 255 'QueryAllUserIAPOrders' test.out

#- 256 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'hTRUtymW' \
    --endTime 'EkmCEMDr' \
    --limit '8' \
    --offset '34' \
    --startTime 'lVDkottn' \
    --status 'PENDING' \
    --type 'GOOGLE' \
    > test.out 2>&1
eval_tap $? 256 'QueryUserIAPConsumeHistory' test.out

#- 257 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId '0syHARaH' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "jnLM_rulc", "productId": "0yq0hZ4D", "region": "eIkkPDSY", "transactionId": "W9siFqCM", "type": "PLAYSTATION"}' \
    > test.out 2>&1
eval_tap $? 257 'MockFulfillIAPItem' test.out

#- 258 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '1TYI9Yxs' \
    --itemId 'axOTaARb' \
    --limit '31' \
    --offset '32' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 258 'QueryUserOrders' test.out

#- 259 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'XLA07uX8' \
    --body '{"currencyCode": "7RZMK2xX", "currencyNamespace": "glMGLehA", "discountedPrice": 23, "ext": {"mwFKw4lB": {}, "S6EesiLT": {}, "UmXQY7y0": {}}, "itemId": "SgbGYe9A", "language": "ympxEQK0", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 44, "quantity": 66, "region": "8ItSBLGN", "returnUrl": "dEbk050Z", "sandbox": true, "sectionId": "wWqPLhxI"}' \
    > test.out 2>&1
eval_tap $? 259 'AdminCreateUserOrder' test.out

#- 260 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'FkMN7qfv' \
    --itemId 'gPuNTOoe' \
    > test.out 2>&1
eval_tap $? 260 'CountOfPurchasedItem' test.out

#- 261 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'T8AfIGsu' \
    --userId 'j38OkG6F' \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrder' test.out

#- 262 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'ZiqIsqDY' \
    --userId 'eerQUrfU' \
    --body '{"status": "INIT", "statusReason": "Nk2IGANv"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserOrderStatus' test.out

#- 263 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'CHEPirBM' \
    --userId 'tQUZwuPG' \
    > test.out 2>&1
eval_tap $? 263 'FulfillUserOrder' test.out

#- 264 GetUserOrderGrant
samples/cli/sample-apps Platform getUserOrderGrant \
    --namespace $AB_NAMESPACE \
    --orderNo 'GsfnyRfo' \
    --userId '0ppncRJY' \
    > test.out 2>&1
eval_tap $? 264 'GetUserOrderGrant' test.out

#- 265 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'VlggTwvO' \
    --userId 'weWq2ZZR' \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrderHistories' test.out

#- 266 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'N2thV2Ir' \
    --userId 'x2JXZGwl' \
    --body '{"additionalData": {"cardSummary": "ljk3qHuU"}, "authorisedTime": "1981-12-08T00:00:00Z", "chargebackReversedTime": "1990-12-23T00:00:00Z", "chargebackTime": "1975-12-17T00:00:00Z", "chargedTime": "1978-04-01T00:00:00Z", "createdTime": "1986-01-31T00:00:00Z", "currency": {"currencyCode": "WmhwQGwp", "currencySymbol": "zgkbQk2Q", "currencyType": "VIRTUAL", "decimals": 55, "namespace": "vkiAoVoB"}, "customParameters": {"qvnkpr6e": {}, "waUewuPp": {}, "GN1jnX5d": {}}, "extOrderNo": "CSsUi63t", "extTxId": "WvDz5856", "extUserId": "Qu6lv9hS", "issuedAt": "1983-12-21T00:00:00Z", "metadata": {"fMXRVWOH": "mLooDKcp", "qJUwM4u2": "78J2wv5Q", "XHbIlxEl": "qQpJhOAR"}, "namespace": "7tpgQ7Zl", "nonceStr": "rNw2Fvcu", "paymentMethod": "igtFh8hN", "paymentMethodFee": 32, "paymentOrderNo": "3ALCiZGK", "paymentProvider": "XSOLLA", "paymentProviderFee": 11, "paymentStationUrl": "nJyonaxw", "price": 98, "refundedTime": "1992-07-14T00:00:00Z", "salesTax": 13, "sandbox": true, "sku": "WV02pFZE", "status": "CHARGEBACK_REVERSED", "statusReason": "78ZRPGLK", "subscriptionId": "az7DGwjK", "subtotalPrice": 86, "targetNamespace": "M4V4sKOK", "targetUserId": "catl358P", "tax": 69, "totalPrice": 71, "totalTax": 51, "txEndTime": "1992-06-29T00:00:00Z", "type": "4oJGBMHx", "userId": "r98eHLCY", "vat": 2}' \
    > test.out 2>&1
eval_tap $? 266 'ProcessUserOrderNotification' test.out

#- 267 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'TggC8t7x' \
    --userId 'SNLImWBO' \
    > test.out 2>&1
eval_tap $? 267 'DownloadUserOrderReceipt' test.out

#- 268 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'kPkCDNBw' \
    --body '{"currencyCode": "3jqcu6dR", "currencyNamespace": "BbIJuPGG", "customParameters": {"S7tPq1Kz": {}, "j0UQLY5s": {}, "RHo9SmFR": {}}, "description": "mG4LrvcS", "extOrderNo": "VNAEkIsa", "extUserId": "L3By8yDm", "itemType": "SUBSCRIPTION", "language": "Cu-zXkR-204", "metadata": {"aT5QG1ik": "LE0WfJMT", "1OdTRhKZ": "ySvK6FAm", "HBXW4L2n": "5HLkCJ0E"}, "notifyUrl": "RTlp56et", "omitNotification": true, "platform": "WMmoW4y3", "price": 36, "recurringPaymentOrderNo": "rLcv1Mqf", "region": "Ds5YTtWP", "returnUrl": "1Pqbqv9f", "sandbox": false, "sku": "YODYgqk2", "subscriptionId": "HlgCnEZZ", "title": "Cw55N5sV"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateUserPaymentOrder' test.out

#- 269 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'rhM8Mhmi' \
    --userId 'AnY2ufG6' \
    --body '{"description": "hlm8jUjZ"}' \
    > test.out 2>&1
eval_tap $? 269 'RefundUserPaymentOrder' test.out

#- 270 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'AfzC2h59' \
    --body '{"code": "owcVdrMZ", "orderNo": "GjEdGVQv"}' \
    > test.out 2>&1
eval_tap $? 270 'ApplyUserRedemption' test.out

#- 271 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'SxNaaaPm' \
    --body '{"meta": {"7Jtg8LLZ": {}, "wntcJigO": {}, "KrkOsvOh": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "Puy6Ypf0", "namespace": "4C9M3Q0X"}, "entitlement": {"entitlementId": "iU9zNhb0"}, "item": {"itemIdentity": "jnru3Kcn", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 58, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "uWlD3LCi", "namespace": "UR5fItUR"}, "entitlement": {"entitlementId": "tkfb8avC"}, "item": {"itemIdentity": "fFQWM85D", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "THTT0y4f", "namespace": "uRHSgRmC"}, "entitlement": {"entitlementId": "xPwvZJGv"}, "item": {"itemIdentity": "L5iqkzEO", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 64, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "hc999Hbf"}' \
    > test.out 2>&1
eval_tap $? 271 'DoRevocation' test.out

#- 272 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'Fs1CWK1Z' \
    --body '{"gameSessionId": "OMxCitCY", "payload": {"NyYFNWCC": {}, "R29ct9jk": {}, "b3MJOwdN": {}}, "scid": "tBiOMi4H", "sessionTemplateName": "eiIUd5uV"}' \
    > test.out 2>&1
eval_tap $? 272 'RegisterXblSessions' test.out

#- 273 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '3GKzJbOu' \
    --chargeStatus 'SETUP' \
    --itemId 'LsJ91kvb' \
    --limit '59' \
    --offset '6' \
    --sku 'mDwQyOSp' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 273 'QueryUserSubscriptions' test.out

#- 274 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'nd1TrFzd' \
    --excludeSystem 'true' \
    --limit '92' \
    --offset '20' \
    --subscriptionId 'RmEmFou9' \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionActivities' test.out

#- 275 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'haAvzO75' \
    --body '{"grantDays": 57, "itemId": "tZDPaiPN", "language": "vm6vekBy", "reason": "LW6dYcKz", "region": "mKHkIQsy", "source": "HeIeqUSg"}' \
    > test.out 2>&1
eval_tap $? 275 'PlatformSubscribeSubscription' test.out

#- 276 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'H0q0KaVT' \
    --itemId 'THgaSp6Y' \
    > test.out 2>&1
eval_tap $? 276 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 277 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'LqrtvDMm' \
    --userId 'SmJJkh2J' \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscription' test.out

#- 278 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'VjDVZh3J' \
    --userId 'ZY2DSlQb' \
    > test.out 2>&1
eval_tap $? 278 'DeleteUserSubscription' test.out

#- 279 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '3OaHclfL' \
    --userId 'OFGppD0z' \
    --force 'true' \
    --body '{"immediate": true, "reason": "kkkwAXP9"}' \
    > test.out 2>&1
eval_tap $? 279 'CancelSubscription' test.out

#- 280 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'qc0reYq1' \
    --userId 'ifI2c4YU' \
    --body '{"grantDays": 19, "reason": "HqUmGf40"}' \
    > test.out 2>&1
eval_tap $? 280 'GrantDaysToSubscription' test.out

#- 281 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'FWrv5eKo' \
    --userId 'ODeM5cLG' \
    --excludeFree 'true' \
    --limit '99' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscriptionBillingHistories' test.out

#- 282 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'TiJTawlK' \
    --userId 'psKqbba8' \
    --body '{"additionalData": {"cardSummary": "zNfi6VcB"}, "authorisedTime": "1992-05-26T00:00:00Z", "chargebackReversedTime": "1971-11-12T00:00:00Z", "chargebackTime": "1989-05-30T00:00:00Z", "chargedTime": "1985-01-29T00:00:00Z", "createdTime": "1978-07-03T00:00:00Z", "currency": {"currencyCode": "a0yRWRAY", "currencySymbol": "7ghMY41j", "currencyType": "REAL", "decimals": 38, "namespace": "kkqjrPMu"}, "customParameters": {"x2NWgBTo": {}, "gBPhvGdi": {}, "F6iAvgSm": {}}, "extOrderNo": "F1PdPdTV", "extTxId": "Do782aqc", "extUserId": "61QdCpGd", "issuedAt": "1985-05-12T00:00:00Z", "metadata": {"GmZxbmM8": "J8ehHXAu", "GVt2h1aW": "Is3075b1", "dz6xcI3S": "dRZ2dFUk"}, "namespace": "E9PcfiX0", "nonceStr": "012j8ntk", "paymentMethod": "p64AqazT", "paymentMethodFee": 100, "paymentOrderNo": "sh6bJHpp", "paymentProvider": "WXPAY", "paymentProviderFee": 92, "paymentStationUrl": "VP0EENaI", "price": 48, "refundedTime": "1978-11-23T00:00:00Z", "salesTax": 17, "sandbox": false, "sku": "D7wnV0ga", "status": "REQUEST_FOR_INFORMATION", "statusReason": "y3H3rn7M", "subscriptionId": "vQSui28S", "subtotalPrice": 81, "targetNamespace": "aX93xhKd", "targetUserId": "zdgzW8wq", "tax": 12, "totalPrice": 39, "totalTax": 90, "txEndTime": "1998-12-12T00:00:00Z", "type": "FfE3y6NT", "userId": "KINCUa0y", "vat": 31}' \
    > test.out 2>&1
eval_tap $? 282 'ProcessUserSubscriptionNotification' test.out

#- 283 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'gyoXUkHE' \
    --namespace $AB_NAMESPACE \
    --userId 'h3e2AAvL' \
    --body '{"count": 98, "orderNo": "HRV08OCY"}' \
    > test.out 2>&1
eval_tap $? 283 'AcquireUserTicket' test.out

#- 284 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'Jy6SuVl9' \
    > test.out 2>&1
eval_tap $? 284 'QueryUserCurrencyWallets' test.out

#- 285 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'XRkwK0aa' \
    --namespace $AB_NAMESPACE \
    --userId '458Y16Sa' \
    --body '{"allowOverdraft": true, "amount": 26, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"Ipud2FRM": {}, "xk1tLohu": {}, "xERd2XfH": {}}, "reason": "OymAuq48"}' \
    > test.out 2>&1
eval_tap $? 285 'DebitUserWalletByCurrencyCode' test.out

#- 286 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'MGfpZQof' \
    --namespace $AB_NAMESPACE \
    --userId 'soFGbhrJ' \
    --limit '15' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 286 'ListUserCurrencyTransactions' test.out

#- 287 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode '8KkfJSO9' \
    --namespace $AB_NAMESPACE \
    --userId 'RRW1rzoS' \
    --request '{"amount": 76, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"pnWN4icp": {}, "AT3wARnH": {}, "vnSfrFQh": {}}, "reason": "O3WSaEtQ", "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 287 'CheckBalance' test.out

#- 288 CheckWallet
eval_tap 0 288 'CheckWallet # SKIP deprecated' test.out

#- 289 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'NdMqmDwJ' \
    --namespace $AB_NAMESPACE \
    --userId 'sJhYraAH' \
    --body '{"amount": 58, "expireAt": "1977-06-25T00:00:00Z", "metadata": {"F8YPBria": {}, "A4K171gy": {}, "vsCyyepS": {}}, "origin": "Other", "reason": "G0tag69V", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 289 'CreditUserWallet' test.out

#- 290 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'uTlMvYM5' \
    --namespace $AB_NAMESPACE \
    --userId '65E6sTE6' \
    --request '{"amount": 40, "debitBalanceSource": "TRADE", "metadata": {"pNng1M9d": {}, "3Vtzn92s": {}, "bsfGAwMl": {}}, "reason": "68ode6nc", "walletPlatform": "Other"}' \
    > test.out 2>&1
eval_tap $? 290 'DebitByWalletPlatform' test.out

#- 291 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'IDnSkf1a' \
    --namespace $AB_NAMESPACE \
    --userId 'jN5SpO5H' \
    --body '{"amount": 49, "metadata": {"am6TOLYP": {}, "KQXofnCf": {}, "r9xYLamg": {}}, "walletPlatform": "Nintendo"}' \
    > test.out 2>&1
eval_tap $? 291 'PayWithUserWallet' test.out

#- 292 GetUserWallet
eval_tap 0 292 'GetUserWallet # SKIP deprecated' test.out

#- 293 DebitUserWallet
eval_tap 0 293 'DebitUserWallet # SKIP deprecated' test.out

#- 294 DisableUserWallet
eval_tap 0 294 'DisableUserWallet # SKIP deprecated' test.out

#- 295 EnableUserWallet
eval_tap 0 295 'EnableUserWallet # SKIP deprecated' test.out

#- 296 ListUserWalletTransactions
eval_tap 0 296 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 297 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'Es1wvPMq' \
    > test.out 2>&1
eval_tap $? 297 'ListViews' test.out

#- 298 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId '4qZWO6xI' \
    --body '{"displayOrder": 85, "localizations": {"3y1cDsq0": {"description": "19GoUhpw", "localExt": {"zapXaVLs": {}, "SMNnjSeB": {}, "d7ozXr5s": {}}, "longDescription": "aiMLSRFJ", "title": "uyoNgyDc"}, "wZuwJNoF": {"description": "U2IXCPJw", "localExt": {"J0wnW62u": {}, "0OXTjRPm": {}, "joKZOnMZ": {}}, "longDescription": "soH4jn9z", "title": "4KzmnS22"}, "L2CLP42y": {"description": "5g8JQTiM", "localExt": {"9boSS7gl": {}, "wLGG0K3J": {}, "CFbpbI1q": {}}, "longDescription": "8fXXzR6C", "title": "ReZsOZK8"}}, "name": "sqiSKSYS"}' \
    > test.out 2>&1
eval_tap $? 298 'CreateView' test.out

#- 299 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'HOk3LUA0' \
    --storeId 'D1zlhCJk' \
    > test.out 2>&1
eval_tap $? 299 'GetView' test.out

#- 300 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'ch6NoDe3' \
    --storeId 'JixaDWIX' \
    --body '{"displayOrder": 5, "localizations": {"kXV3CZKP": {"description": "EgxGJ4R4", "localExt": {"Y3dDEQuO": {}, "uvPXbmaV": {}, "EmLwHYPL": {}}, "longDescription": "WyMYkbQ4", "title": "0UWMfy9w"}, "ZzXijZAc": {"description": "oKd2O7Eo", "localExt": {"4CsVMHQn": {}, "WvufT7nJ": {}, "SSgAoSj3": {}}, "longDescription": "hxMEJOy0", "title": "uEvLHaay"}, "M5bEpynb": {"description": "uZwxPy0A", "localExt": {"Ta5pQc0b": {}, "xIglhIZO": {}, "fhp2M6mF": {}}, "longDescription": "lAZVYjEK", "title": "1F0t9YJi"}}, "name": "p7hU2O06"}' \
    > test.out 2>&1
eval_tap $? 300 'UpdateView' test.out

#- 301 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'FrXzxZwi' \
    --storeId 'yGKU5BRz' \
    > test.out 2>&1
eval_tap $? 301 'DeleteView' test.out

#- 302 QueryWallets
eval_tap 0 302 'QueryWallets # SKIP deprecated' test.out

#- 303 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 99, "expireAt": "1974-12-29T00:00:00Z", "metadata": {"k2awUVzm": {}, "0QbyXZH7": {}, "ProhUqpc": {}}, "origin": "Steam", "reason": "OsmbaOL0", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "cV9XcgE8", "userIds": ["L3iSCgwD", "vgmg8rfH", "npHKVfHH"]}, {"creditRequest": {"amount": 38, "expireAt": "1981-09-20T00:00:00Z", "metadata": {"ol8qibex": {}, "2jkj0zFr": {}, "AAJKAFEI": {}}, "origin": "Playstation", "reason": "F2ucUrP9", "source": "REWARD"}, "currencyCode": "U6gfU9Va", "userIds": ["CpjNiCkl", "X2Rrz8qU", "fJuFypJ2"]}, {"creditRequest": {"amount": 31, "expireAt": "1990-07-30T00:00:00Z", "metadata": {"KMd1Gog5": {}, "zIfXV02l": {}, "ltm6dAUx": {}}, "origin": "Epic", "reason": "yj1vLnDW", "source": "GIFT"}, "currencyCode": "r0XdZehr", "userIds": ["h93RQzWu", "IIPF9wIb", "LRIHHMNe"]}]' \
    > test.out 2>&1
eval_tap $? 303 'BulkCredit' test.out

#- 304 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "OZu8rz9g", "request": {"allowOverdraft": false, "amount": 34, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"7ycCmV7D": {}, "ucT8zagD": {}, "aPYS70Gk": {}}, "reason": "i0FsnZjQ"}, "userIds": ["LV2PzCzg", "MykkTOan", "jvLTEmOJ"]}, {"currencyCode": "U11V1ZJb", "request": {"allowOverdraft": false, "amount": 91, "balanceOrigin": "Xbox", "balanceSource": "TRADE", "metadata": {"UtwnYU8z": {}, "SZxCUQmE": {}, "4mlxS9cG": {}}, "reason": "tDd7KE0c"}, "userIds": ["Em5n5u0c", "KOlGwXui", "SWwL5plp"]}, {"currencyCode": "UvbLaytj", "request": {"allowOverdraft": true, "amount": 7, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"WoEjJP8W": {}, "kVnoydBT": {}, "JxAJWrB8": {}}, "reason": "1YXwAZmk"}, "userIds": ["VucNDapR", "jcrkZQPy", "PIABz4Xx"]}]' \
    > test.out 2>&1
eval_tap $? 304 'BulkDebit' test.out

#- 305 GetWallet
eval_tap 0 305 'GetWallet # SKIP deprecated' test.out

#- 306 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'INWvg4it' \
    --end 'SrlALsKN' \
    --start 'n9diCeMr' \
    > test.out 2>&1
eval_tap $? 306 'SyncOrders' test.out

#- 307 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'false' \
    --body '{"allowedPaymentMethods": ["ZjkKEoj9", "dO5O61bp", "L61Y3FnQ"], "apiKey": "tUy84apx", "authoriseAsCapture": false, "blockedPaymentMethods": ["w2e8InNf", "9cqiYrbM", "tuMhqlYc"], "clientKey": "3uCQqLWe", "dropInSettings": "fLPlBDBv", "liveEndpointUrlPrefix": "MCdM9YpC", "merchantAccount": "9HiXFjnm", "notificationHmacKey": "KF2WWXCd", "notificationPassword": "ycRQyndo", "notificationUsername": "2HbkQFE4", "returnUrl": "G8FeZZAu", "settings": "KuEzvGju"}' \
    > test.out 2>&1
eval_tap $? 307 'TestAdyenConfig' test.out

#- 308 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "3MV8m7Uh", "privateKey": "KlSLVOtD", "publicKey": "LZ4WUxpx", "returnUrl": "YOtnVEyG"}' \
    > test.out 2>&1
eval_tap $? 308 'TestAliPayConfig' test.out

#- 309 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "1JNN2QSd", "secretKey": "QBfzWYcy"}' \
    > test.out 2>&1
eval_tap $? 309 'TestCheckoutConfig' test.out

#- 310 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'SVpOYUC8' \
    --region '4AfR7JUd' \
    > test.out 2>&1
eval_tap $? 310 'DebugMatchedPaymentMerchantConfig' test.out

#- 311 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "U5vTv3nN", "clientSecret": "S48AjRwJ", "returnUrl": "WUKUcTDP", "webHookId": "hnRdVQjR"}' \
    > test.out 2>&1
eval_tap $? 311 'TestPayPalConfig' test.out

#- 312 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["JujqOPBp", "gvtMe431", "WtsNZW0e"], "publishableKey": "UxynWlfc", "secretKey": "Ei4LEjNG", "webhookSecret": "dzbFOsqh"}' \
    > test.out 2>&1
eval_tap $? 312 'TestStripeConfig' test.out

#- 313 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "Ez6ptEuA", "key": "lpkwxwHY", "mchid": "VaT1tLqz", "returnUrl": "y35eRfg5"}' \
    > test.out 2>&1
eval_tap $? 313 'TestWxPayConfig' test.out

#- 314 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "zYC5gnMZ", "flowCompletionUrl": "le6Xv1E7", "merchantId": 43, "projectId": 29, "projectSecretKey": "EUMR3J4J"}' \
    > test.out 2>&1
eval_tap $? 314 'TestXsollaConfig' test.out

#- 315 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --id 'txSqT3p4' \
    > test.out 2>&1
eval_tap $? 315 'GetPaymentMerchantConfig' test.out

#- 316 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'lgd41RYQ' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"allowedPaymentMethods": ["ALtpjy8J", "HPqmfriY", "RNlAgU8t"], "apiKey": "tVDq01Uj", "authoriseAsCapture": true, "blockedPaymentMethods": ["nI4LAI27", "ifQNnTxp", "T0BfRFT7"], "clientKey": "D02PCTjy", "dropInSettings": "1aXWJ1Hz", "liveEndpointUrlPrefix": "EIQhWgJs", "merchantAccount": "JQjru5lc", "notificationHmacKey": "QgBA83QQ", "notificationPassword": "PGZDpY6P", "notificationUsername": "pnH0GNAT", "returnUrl": "mQlPAtyB", "settings": "hNkjgjMV"}' \
    > test.out 2>&1
eval_tap $? 316 'UpdateAdyenConfig' test.out

#- 317 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'hAVQYJgV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 317 'TestAdyenConfigById' test.out

#- 318 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'dcNP8FGE' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"appId": "40H2dNHd", "privateKey": "lcznyZw6", "publicKey": "Sd7dBYvu", "returnUrl": "6okmCVzA"}' \
    > test.out 2>&1
eval_tap $? 318 'UpdateAliPayConfig' test.out

#- 319 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id '9C1FpQkF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 319 'TestAliPayConfigById' test.out

#- 320 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'Ipm71DXb' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"publicKey": "mkaIuuXb", "secretKey": "w4qib6sF"}' \
    > test.out 2>&1
eval_tap $? 320 'UpdateCheckoutConfig' test.out

#- 321 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'iXq3lLyF' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 321 'TestCheckoutConfigById' test.out

#- 322 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'RKAJ9JZM' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"clientID": "ecQCh4dP", "clientSecret": "eTxW9ggO", "returnUrl": "0P3H1WWR", "webHookId": "CXpvTme1"}' \
    > test.out 2>&1
eval_tap $? 322 'UpdatePayPalConfig' test.out

#- 323 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'FfJpxTce' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 323 'TestPayPalConfigById' test.out

#- 324 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'J5dORF6d' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["9wh8It0q", "ozrZclhg", "hn9AQIod"], "publishableKey": "u9RNAbLZ", "secretKey": "9Fdnh309", "webhookSecret": "VxcBhOas"}' \
    > test.out 2>&1
eval_tap $? 324 'UpdateStripeConfig' test.out

#- 325 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'DGhJ6Gjb' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 325 'TestStripeConfigById' test.out

#- 326 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'wbiXAYtd' \
    --validate 'false' \
    --body '{"appId": "lLRtwmCH", "key": "nXL6D5Rm", "mchid": "lkAbjBEg", "returnUrl": "XJcVlZFx"}' \
    > test.out 2>&1
eval_tap $? 326 'UpdateWxPayConfig' test.out

#- 327 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '50lL5c8a' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 327 'UpdateWxPayConfigCert' test.out

#- 328 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'aeNs8RRm' \
    > test.out 2>&1
eval_tap $? 328 'TestWxPayConfigById' test.out

#- 329 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'RnXwzKtb' \
    --validate 'true' \
    --body '{"apiKey": "6fk0roPv", "flowCompletionUrl": "puM5Yijq", "merchantId": 90, "projectId": 87, "projectSecretKey": "43UxcIjv"}' \
    > test.out 2>&1
eval_tap $? 329 'UpdateXsollaConfig' test.out

#- 330 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id '2CsrqCYz' \
    > test.out 2>&1
eval_tap $? 330 'TestXsollaConfigById' test.out

#- 331 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'LkHdthPM' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 331 'UpdateXsollaUIConfig' test.out

#- 332 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '21' \
    --namespace 'djV2Gp6A' \
    --offset '40' \
    --region 'LUxZssIW' \
    > test.out 2>&1
eval_tap $? 332 'QueryPaymentProviderConfig' test.out

#- 333 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "myT62pr9", "region": "28HUjdaj", "sandboxTaxJarApiToken": "qPKXpE1m", "specials": ["STRIPE", "ADYEN", "ADYEN"], "taxJarApiToken": "MB9zAAul", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 333 'CreatePaymentProviderConfig' test.out

#- 334 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 334 'GetAggregatePaymentProviders' test.out

#- 335 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'U4zuKnEe' \
    --region 'USihpwtj' \
    > test.out 2>&1
eval_tap $? 335 'DebugMatchedPaymentProviderConfig' test.out

#- 336 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 336 'GetSpecialPaymentProviders' test.out

#- 337 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'F7YOuKmx' \
    --body '{"aggregate": "XSOLLA", "namespace": "SB1TDHjz", "region": "UrVGhx8a", "sandboxTaxJarApiToken": "kkxUZDtf", "specials": ["ALIPAY", "CHECKOUT", "ADYEN"], "taxJarApiToken": "Ya2bmKn9", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 337 'UpdatePaymentProviderConfig' test.out

#- 338 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '2dJrZLeR' \
    > test.out 2>&1
eval_tap $? 338 'DeletePaymentProviderConfig' test.out

#- 339 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 339 'GetPaymentTaxConfig' test.out

#- 340 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "SvawYpHd", "taxJarApiToken": "MPUBAXtF", "taxJarEnabled": false, "taxJarProductCodesMapping": {"N6Z3oZyd": "h2Lex7wh", "x14ETIAF": "5W1oR0uP", "f7VKimJd": "vHMwDYac"}}' \
    > test.out 2>&1
eval_tap $? 340 'UpdatePaymentTaxConfig' test.out

#- 341 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'DY8F1pjw' \
    --end 'dMsUcOEu' \
    --start 'kr66rEK0' \
    > test.out 2>&1
eval_tap $? 341 'SyncPaymentOrders' test.out

#- 342 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'L9BGS81x' \
    --storeId 'XGoLlSvM' \
    > test.out 2>&1
eval_tap $? 342 'PublicGetRootCategories' test.out

#- 343 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'd5k8SKw2' \
    --storeId 'IBvwXn9U' \
    > test.out 2>&1
eval_tap $? 343 'DownloadCategories' test.out

#- 344 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'L6yubFJW' \
    --namespace $AB_NAMESPACE \
    --language 'ctoI2EZ7' \
    --storeId 'fJa28x9g' \
    > test.out 2>&1
eval_tap $? 344 'PublicGetCategory' test.out

#- 345 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'AtPhILsc' \
    --namespace $AB_NAMESPACE \
    --language 'L4wXbV4X' \
    --storeId '9BEVfKWd' \
    > test.out 2>&1
eval_tap $? 345 'PublicGetChildCategories' test.out

#- 346 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'sHO1VqxN' \
    --namespace $AB_NAMESPACE \
    --language 'G8cw9q7h' \
    --storeId 'vinK4zVb' \
    > test.out 2>&1
eval_tap $? 346 'PublicGetDescendantCategories' test.out

#- 347 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 347 'PublicListCurrencies' test.out

#- 348 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 348 'GeDLCDurableRewardShortMap' test.out

#- 349 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    > test.out 2>&1
eval_tap $? 349 'GetIAPItemMapping' test.out

#- 350 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'UpYfIFs7' \
    --region 'AtNJfwQO' \
    --storeId 'IOhGXQEu' \
    --appId 'FFajRcW3' \
    > test.out 2>&1
eval_tap $? 350 'PublicGetItemByAppId' test.out

#- 351 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'DLC' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId 'fNAZHmH5' \
    --categoryPath 'MRZr1E2M' \
    --features 'plImKWGn' \
    --includeSubCategoryItem 'true' \
    --itemType 'EXTENSION' \
    --language 'fN5YJfO6' \
    --limit '61' \
    --offset '84' \
    --region 'UgLod6WT' \
    --sortBy '["updatedAt", "createdAt", "createdAt:desc"]' \
    --storeId 'CyCf3s0Z' \
    --tags 'PrfoQPE0' \
    > test.out 2>&1
eval_tap $? 351 'PublicQueryItems' test.out

#- 352 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 't0AgJnhS' \
    --region 'lIuoLNyt' \
    --storeId '0dXgLlrU' \
    --sku 'XzznLUFT' \
    > test.out 2>&1
eval_tap $? 352 'PublicGetItemBySku' test.out

#- 353 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'd1fGUOxp' \
    --storeId 'c47eJMmH' \
    --itemIds 'TkheQD7Z' \
    > test.out 2>&1
eval_tap $? 353 'PublicGetEstimatedPrice' test.out

#- 354 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'Hyr8RqsN' \
    --region 'NmBCSQBa' \
    --storeId 'QX2UYkpn' \
    --itemIds 'nKltyU9G' \
    > test.out 2>&1
eval_tap $? 354 'PublicBulkGetItems' test.out

#- 355 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["LbG3Tbya", "Uz19xVoJ", "vF9yGHon"]}' \
    > test.out 2>&1
eval_tap $? 355 'PublicValidateItemPurchaseCondition' test.out

#- 356 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'SUBSCRIPTION' \
    --limit '61' \
    --offset '19' \
    --region 'kAz5Xi0Q' \
    --storeId 'EGJOdyVY' \
    --keyword 'YBh8YLZr' \
    --language 'rQSXfbyu' \
    > test.out 2>&1
eval_tap $? 356 'PublicSearchItems' test.out

#- 357 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'ySVD2oML' \
    --namespace $AB_NAMESPACE \
    --language 'twYjVnrk' \
    --region 'X6vTkh6W' \
    --storeId '3wsKlTff' \
    > test.out 2>&1
eval_tap $? 357 'PublicGetApp' test.out

#- 358 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId '9PsYi4MA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicGetItemDynamicData' test.out

#- 359 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'S8mBhcSg' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'WalUiFRf' \
    --populateBundle 'false' \
    --region 'urxqaz8i' \
    --storeId 'm86p1XCV' \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItem' test.out

#- 360 GetPaymentCustomization
eval_tap 0 360 'GetPaymentCustomization # SKIP deprecated' test.out

#- 361 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"paymentOrderNo": "Dc2XOoc1", "paymentProvider": "CHECKOUT", "returnUrl": "Ejt1EAJj", "ui": "xtebaVaE", "zipCode": "aVgSKXBO"}' \
    > test.out 2>&1
eval_tap $? 361 'PublicGetPaymentUrl' test.out

#- 362 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'W3VDyvHs' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetPaymentMethods' test.out

#- 363 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'swZbRTkg' \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUnpaidPaymentOrder' test.out

#- 364 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'r8VuSdAD' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'e0K6sXXr' \
    --body '{"token": "2Gy0nfx9"}' \
    > test.out 2>&1
eval_tap $? 364 'Pay' test.out

#- 365 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'hN01SVpi' \
    > test.out 2>&1
eval_tap $? 365 'PublicCheckPaymentOrderPaidStatus' test.out

#- 366 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'false' \
    --paymentProvider 'PAYPAL' \
    --region 'jAT3Cx2x' \
    > test.out 2>&1
eval_tap $? 366 'GetPaymentPublicConfig' test.out

#- 367 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'IqoBVI3H' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetQRCode' test.out

#- 368 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'iOCKAcHo' \
    --foreinginvoice 'FORTm2Nn' \
    --invoiceId 'WT2wNVYV' \
    --payload 'FzxNDlUQ' \
    --redirectResult 'TstAILl1' \
    --resultCode 'CaftV8vp' \
    --sessionId 'Ojg9fHRA' \
    --status 'AlhtGUzg' \
    --token 'jQOVI0BF' \
    --type 'FE9nJpoj' \
    --userId 'jDbHmnu0' \
    --orderNo '1cudQBmV' \
    --paymentOrderNo '1lyBiE3R' \
    --paymentProvider 'WALLET' \
    --returnUrl 'IS1IID3f' \
    > test.out 2>&1
eval_tap $? 368 'PublicNormalizePaymentReturnUrl' test.out

#- 369 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'j0zQoJnX' \
    --paymentOrderNo 'gHPdaSJb' \
    --paymentProvider 'WALLET' \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentTaxValue' test.out

#- 370 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode 'unxmYOYX' \
    > test.out 2>&1
eval_tap $? 370 'GetRewardByCode' test.out

#- 371 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'WAl02fkb' \
    --limit '27' \
    --offset '8' \
    --sortBy '["namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 371 'QueryRewards1' test.out

#- 372 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'M25qBnjE' \
    > test.out 2>&1
eval_tap $? 372 'GetReward1' test.out

#- 373 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicListStores' test.out

#- 374 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["iePFwFIw", "TCIrX4er", "puFcOAyO"]' \
    --itemIds '["o9wdQQOQ", "f4ydgDLD", "pgZzryVo"]' \
    --skus '["w4CLht2W", "ysk8nVBG", "cIVuOZMX"]' \
    > test.out 2>&1
eval_tap $? 374 'PublicExistsAnyMyActiveEntitlement' test.out

#- 375 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'P0H0MFUy' \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 376 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'SUBSCRIPTION' \
    --itemId 'Vneoi1gy' \
    > test.out 2>&1
eval_tap $? 376 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 377 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'CODE' \
    --sku 'CBm6jFyC' \
    > test.out 2>&1
eval_tap $? 377 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 378 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["J6FUwm1f", "eIxV0tXy", "FQZFJPSK"]' \
    --itemIds '["7JeG2Jx6", "X6E4auDY", "HruVYveK"]' \
    --skus '["jgrOvxwu", "tZgcvaRa", "ipYX1kEj"]' \
    > test.out 2>&1
eval_tap $? 378 'PublicGetEntitlementOwnershipToken' test.out

#- 379 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "LROTCsgh", "language": "KKV", "region": "iooGxP97"}' \
    > test.out 2>&1
eval_tap $? 379 'SyncTwitchDropsEntitlement' test.out

#- 380 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'z7tFJ34T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyWallet' test.out

#- 381 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'BVKLvFQK' \
    --body '{"epicGamesJwtToken": "0L98pG9i"}' \
    > test.out 2>&1
eval_tap $? 381 'SyncEpicGameDLC' test.out

#- 382 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'L41hLj9P' \
    > test.out 2>&1
eval_tap $? 382 'SyncOculusDLC' test.out

#- 383 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'xWa7Ekgr' \
    --body '{"serviceLabel": 1}' \
    > test.out 2>&1
eval_tap $? 383 'PublicSyncPsnDlcInventory' test.out

#- 384 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'Xgy6PmPl' \
    --body '{"serviceLabels": [40, 49, 83]}' \
    > test.out 2>&1
eval_tap $? 384 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 385 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'KKc3V3jr' \
    --body '{"appId": "1WpREi3N", "steamId": "EZTOstaz"}' \
    > test.out 2>&1
eval_tap $? 385 'SyncSteamDLC' test.out

#- 386 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'uXDMBBbX' \
    --body '{"xstsToken": "RPhl9Jor"}' \
    > test.out 2>&1
eval_tap $? 386 'SyncXboxDLC' test.out

#- 387 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'G6sYJpch' \
    --appType 'SOFTWARE' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'YtmdWAjS' \
    --features '["KqkUWQGE", "u3Zv5OKW", "QVR70866"]' \
    --itemId '["5jnoim6V", "3LNetFdt", "wMVQv1Ln"]' \
    --limit '25' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 387 'PublicQueryUserEntitlements' test.out

#- 388 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'S6xdNsq1' \
    --appId '3P0EMvRZ' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementByAppId' test.out

#- 389 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'PUjr24uf' \
    --limit '9' \
    --offset '8' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 389 'PublicQueryUserEntitlementsByAppType' test.out

#- 390 PublicGetUserEntitlementByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'Gv85vttb' \
    --entitlementClazz 'CODE' \
    --itemId 'kSnsrE90' \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementByItemId' test.out

#- 391 PublicGetUserEntitlementBySku
samples/cli/sample-apps Platform publicGetUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'zGUUQ5zn' \
    --entitlementClazz 'LOOTBOX' \
    --sku '5rqrzg8o' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementBySku' test.out

#- 392 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '7TjrhezN' \
    --appIds '["qk10E1sE", "OEBgOOea", "Xr8Zhf6B"]' \
    --itemIds '["pfR7vB2P", "3fxI9FSP", "3krfmB7t"]' \
    --skus '["22BxPDpk", "joY1M9rf", "nRaJYK4F"]' \
    > test.out 2>&1
eval_tap $? 392 'PublicExistsAnyUserActiveEntitlement' test.out

#- 393 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'FlXNQUPK' \
    --appId 'QoJlSQJe' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 394 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'WRN70ztO' \
    --entitlementClazz 'ENTITLEMENT' \
    --itemId 'J9f52MGh' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 395 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'mdTxUiLX' \
    --ids '["RjmwFPu7", "dBIy2H3I", "dh01IUB1"]' \
    > test.out 2>&1
eval_tap $? 395 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 396 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 's4KcqWps' \
    --entitlementClazz 'ENTITLEMENT' \
    --sku '1K1kszRy' \
    > test.out 2>&1
eval_tap $? 396 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 397 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'GXFcPE6Y' \
    --namespace $AB_NAMESPACE \
    --userId 'CJuo9DNJ' \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserEntitlement' test.out

#- 398 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'JhqBAwOJ' \
    --namespace $AB_NAMESPACE \
    --userId 'CmD1cPPp' \
    --body '{"options": ["Dx2WCZtY", "D8Ulgfbu", "huwibKqY"], "requestId": "Va1WoIAf", "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 398 'PublicConsumeUserEntitlement' test.out

#- 399 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId '1BrCMADd' \
    --namespace $AB_NAMESPACE \
    --userId 'CXfAlxxH' \
    --body '{"requestId": "LTfsLN7B", "useCount": 79}' \
    > test.out 2>&1
eval_tap $? 399 'PublicSellUserEntitlement' test.out

#- 400 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'He4O0dEo' \
    --body '{"code": "SXRhFQQm", "language": "UmRJ", "region": "tjW5wyWo"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicRedeemCode' test.out

#- 401 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'T5sauKba' \
    --body '{"excludeOldTransactions": false, "language": "seay-SgQt_589", "productId": "Dl01AZH4", "receiptData": "n4trE7Cp", "region": "PJAHzZjr", "transactionId": "7oWJVvrg"}' \
    > test.out 2>&1
eval_tap $? 401 'PublicFulfillAppleIAPItem' test.out

#- 402 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId '5xj2nrks' \
    --body '{"epicGamesJwtToken": "HkwvHO0A"}' \
    > test.out 2>&1
eval_tap $? 402 'SyncEpicGamesInventory' test.out

#- 403 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'FI6NK4RS' \
    --body '{"autoAck": true, "language": "FX-Frxu", "orderId": "eEPsMB6E", "packageName": "Ggo4mG4m", "productId": "dyYam0CO", "purchaseTime": 0, "purchaseToken": "dFyYXrus", "region": "TnTF8QJm"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicFulfillGoogleIAPItem' test.out

#- 404 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'a8Xcn6rL' \
    > test.out 2>&1
eval_tap $? 404 'SyncOculusConsumableEntitlements' test.out

#- 405 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'F5NXjZn7' \
    --body '{"currencyCode": "dKsTsuEw", "price": 0.2551193054288514, "productId": "CdFaIwUC", "serviceLabel": 62}' \
    > test.out 2>&1
eval_tap $? 405 'PublicReconcilePlayStationStore' test.out

#- 406 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'pk0LmOv4' \
    --body '{"currencyCode": "9lsJG1sQ", "price": 0.04000642637631269, "productId": "hfPdxNrW", "serviceLabels": [80, 41, 34]}' \
    > test.out 2>&1
eval_tap $? 406 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 407 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'C8MCQ1ZY' \
    --body '{"appId": "f0mxM0yc", "currencyCode": "jdBeacMg", "language": "MlG_sqMh", "price": 0.26767996891305856, "productId": "6ARK8x3I", "region": "RGSR1erc", "steamId": "1KqRxt9F"}' \
    > test.out 2>&1
eval_tap $? 407 'SyncSteamInventory' test.out

#- 408 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId '6NEvws67' \
    --body '{"gameId": "giElmK0S", "language": "Ts_NbJy-Sw", "region": "DxtUgcEg"}' \
    > test.out 2>&1
eval_tap $? 408 'SyncTwitchDropsEntitlement1' test.out

#- 409 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId '2kvR1nGZ' \
    --body '{"currencyCode": "G0VQ34iO", "price": 0.04274197737006791, "productId": "X3lHKw0y", "xstsToken": "cxKpQEQR"}' \
    > test.out 2>&1
eval_tap $? 409 'SyncXboxInventory' test.out

#- 410 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'vFxO3Brx' \
    --itemId 'xptzq64c' \
    --limit '2' \
    --offset '25' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserOrders' test.out

#- 411 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'HoNpkbFb' \
    --body '{"currencyCode": "hKfVjLBs", "discountedPrice": 48, "ext": {"0teGbc0S": {}, "fQjjvQPn": {}, "qLxexZIU": {}}, "itemId": "5CJNo4t6", "language": "Wlsl_ikzH", "price": 87, "quantity": 80, "region": "4vyA9w3A", "returnUrl": "9RxQW1Ts", "sectionId": "7gU6xcMY"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicCreateUserOrder' test.out

#- 412 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'SEWqEZ8W' \
    --userId '8mQtagEZ' \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserOrder' test.out

#- 413 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo '8fa4rGbM' \
    --userId 'dJsCWKPk' \
    > test.out 2>&1
eval_tap $? 413 'PublicCancelUserOrder' test.out

#- 414 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'x3sgEIxo' \
    --userId 'WPB1nKod' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserOrderHistories' test.out

#- 415 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Sq1wbSPq' \
    --userId 'MORclSEI' \
    > test.out 2>&1
eval_tap $? 415 'PublicDownloadUserOrderReceipt' test.out

#- 416 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'dxeaLxVQ' \
    > test.out 2>&1
eval_tap $? 416 'PublicGetPaymentAccounts' test.out

#- 417 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'Vc5kRRlI' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'Lpgx10sc' \
    > test.out 2>&1
eval_tap $? 417 'PublicDeletePaymentAccount' test.out

#- 418 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'chvnKD7D' \
    --autoCalcEstimatedPrice 'false' \
    --language '2918dq3m' \
    --region 'RaaIHDbT' \
    --storeId 'u72iBNPI' \
    --viewId 'iSg3eUde' \
    > test.out 2>&1
eval_tap $? 418 'PublicListActiveSections' test.out

#- 419 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'rARtvNnZ' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '3mu5rBPz' \
    --limit '68' \
    --offset '81' \
    --sku 'O8oLjJlI' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 419 'PublicQueryUserSubscriptions' test.out

#- 420 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'jNRNehih' \
    --body '{"currencyCode": "rX2GrYav", "itemId": "0Q7Mc3Vt", "language": "Lp_kXfH-kS", "region": "XFxVeIg3", "returnUrl": "6VFVJ1KH", "source": "7wDoVTfv"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicSubscribeSubscription' test.out

#- 421 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '6S5VZYMb' \
    --itemId 'HZHmfBCd' \
    > test.out 2>&1
eval_tap $? 421 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 422 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'R3RlEhMB' \
    --userId 'LEz6nwmO' \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUserSubscription' test.out

#- 423 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GvlP9d1k' \
    --userId 'YbFkPp5J' \
    > test.out 2>&1
eval_tap $? 423 'PublicChangeSubscriptionBillingAccount' test.out

#- 424 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'HCvTCVT7' \
    --userId 'lRV1Dpxr' \
    --body '{"immediate": true, "reason": "CPF9aomV"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicCancelSubscription' test.out

#- 425 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId '9LF4nC05' \
    --userId '2mYwy76J' \
    --excludeFree 'false' \
    --limit '84' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserSubscriptionBillingHistories' test.out

#- 426 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'faKMifky' \
    --language 'mbB6XZRm' \
    --storeId 'eXZWWOwx' \
    > test.out 2>&1
eval_tap $? 426 'PublicListViews' test.out

#- 427 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'BsDjljJQ' \
    --namespace $AB_NAMESPACE \
    --userId 'WTmcJLCS' \
    > test.out 2>&1
eval_tap $? 427 'PublicGetWallet' test.out

#- 428 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'v4QaOodF' \
    --namespace $AB_NAMESPACE \
    --userId 'njUeUGEK' \
    --limit '58' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 428 'PublicListUserWalletTransactions' test.out

#- 429 QueryItems1
samples/cli/sample-apps Platform queryItems1 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate '6hLuNprR' \
    --baseAppId 'BQf0u2ry' \
    --categoryPath 'Mg2jlSEB' \
    --features 'WMN6J6R1' \
    --includeSubCategoryItem 'false' \
    --itemName 'BcE4dv3O' \
    --itemStatus 'INACTIVE' \
    --itemType 'LOOTBOX' \
    --limit '16' \
    --offset '75' \
    --region 'u6y0x3lf' \
    --sectionExclusive 'true' \
    --sortBy '["displayOrder:desc", "displayOrder:asc", "updatedAt:asc"]' \
    --storeId '9sLSrMrc' \
    --tags 'le3d3Nhs' \
    --targetNamespace 'pjUwB73W' \
    --withTotal 'true' \
    > test.out 2>&1
eval_tap $? 429 'QueryItems1' test.out

#- 430 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'cHDF3YJR' \
    --strictMode 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 430 'ImportStore1' test.out

#- 431 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'msloLQU1' \
    --body '{"itemIds": ["ex2PoyU8", "UzysE6lG", "91kjZM1X"]}' \
    > test.out 2>&1
eval_tap $? 431 'ExportStore1' test.out

#- 432 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'uOKl4vkD' \
    --body '{"metadata": {"iU76dg6h": {}, "oPRvhooH": {}, "tI9U9nmI": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "ia5jIuoi", "namespace": "B5afmCUQ"}, "item": {"itemId": "UZ01NiKK", "itemSku": "Axw9SqL0", "itemType": "elFyZBZN"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "5s3Vzyhj", "namespace": "SEqsXohT"}, "item": {"itemId": "bQBZ2Yre", "itemSku": "nIzwE5a9", "itemType": "fGUa1uBq"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "3Z7g7qbF", "namespace": "Lv1WAeXA"}, "item": {"itemId": "YrDKQR7E", "itemSku": "b29GEBIJ", "itemType": "CB4QxWdM"}, "quantity": 1, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "s6TiXpYl"}' \
    > test.out 2>&1
eval_tap $? 432 'FulfillRewardsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE