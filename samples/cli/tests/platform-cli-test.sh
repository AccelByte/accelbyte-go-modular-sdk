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
echo "1..497"

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
    --id 'bc4KlbKA' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'dHiDdL2W' \
    --body '{"grantDays": "vYYhHbej"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'Eq1qpAHf' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'jk2QmXdx' \
    --body '{"grantDays": "4igoIhk4"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "EfRtLPgy", "dryRun": false, "fulfillmentUrl": "3yMvuqmH", "itemType": "EXTENSION", "purchaseConditionUrl": "vXDcqDuB"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'qkHD8uxS' \
    --itemType 'SUBSCRIPTION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'Uckz7kX9' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id '2I0YzuoG' \
    --body '{"clazz": "cDGwzXKn", "dryRun": false, "fulfillmentUrl": "fwk2VtWf", "purchaseConditionUrl": "0s23sllG"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'BcVcmN5L' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'HBAYIWo7' \
    --offset '46' \
    --tag 'rIShKWsh' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "H2wcXGuc", "discountConfig": {"categories": [{"categoryPath": "dmXr02is", "includeSubCategories": true}, {"categoryPath": "E1ioySQZ", "includeSubCategories": false}, {"categoryPath": "qsKicZbm", "includeSubCategories": true}], "currencyCode": "sWVYEynx", "currencyNamespace": "13N1k5cP", "discountAmount": 54, "discountPercentage": 22, "discountType": "PERCENTAGE", "items": [{"itemId": "C25rralO", "itemName": "zIIwJDTC"}, {"itemId": "9vucniCg", "itemName": "cD9L8coK"}, {"itemId": "A5zbdxMW", "itemName": "8TZIOhCC"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 66, "itemId": "bkUzfQom", "itemName": "Fxa3sFGl", "quantity": 33}, {"extraSubscriptionDays": 74, "itemId": "KsnXNnCK", "itemName": "njMjBoVG", "quantity": 34}, {"extraSubscriptionDays": 72, "itemId": "KGFnbVi8", "itemName": "N7vb88fs", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 44, "maxRedeemCountPerCode": 35, "maxRedeemCountPerCodePerUser": 53, "maxSaleCount": 97, "name": "g9dk5w36", "redeemEnd": "1999-02-24T00:00:00Z", "redeemStart": "1990-05-22T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["orzU8dDt", "BBXcXFTP", "6wVN73TD"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'TMddUCwn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'xrRbn3bX' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Peb16okw", "discountConfig": {"categories": [{"categoryPath": "s1NagCnq", "includeSubCategories": false}, {"categoryPath": "f6pMelQ7", "includeSubCategories": false}, {"categoryPath": "SFka1Qf5", "includeSubCategories": false}], "currencyCode": "smui76oO", "currencyNamespace": "wC6J8iv4", "discountAmount": 37, "discountPercentage": 47, "discountType": "AMOUNT", "items": [{"itemId": "8IjOyAcM", "itemName": "xRcNVlVl"}, {"itemId": "GycWQBkS", "itemName": "Sr8hlbO0"}, {"itemId": "Kd1UsCUS", "itemName": "8F7RaeIQ"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 7, "itemId": "OPvBrDVl", "itemName": "1JlcfX7L", "quantity": 74}, {"extraSubscriptionDays": 33, "itemId": "9qFQ2stz", "itemName": "6nFq6EFk", "quantity": 38}, {"extraSubscriptionDays": 1, "itemId": "pVq2YvBv", "itemName": "mfApd6YI", "quantity": 78}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 87, "maxRedeemCountPerCodePerUser": 0, "maxSaleCount": 65, "name": "1Rlf7RWv", "redeemEnd": "1995-02-17T00:00:00Z", "redeemStart": "1991-09-04T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["HBeImESm", "lsU5XtaL", "9ZUWlPbj"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'WQsbvBvT' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "NEWOjnzH", "oldName": "f00Zh2ZJ"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'GJfAYIEu' \
    --namespace $AB_NAMESPACE \
    --batchName '9aLxqdRx' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'B2HvgVu3' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["DLC", "ENTITLEMENT", "IAP"]}' \
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
    --body '{"appConfig": {"appName": "1gnoTEaP"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "fFUowqOM"}, "extendType": "CUSTOM"}' \
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
    --force 'false' \
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
    --body '{"appConfig": {"appName": "mDtVhejY"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ewj6eSr2"}, "extendType": "CUSTOM"}' \
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
    --storeId 'FrhtGDUd' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'WObraza1' \
    --body '{"categoryPath": "vm58rlJd", "localizationDisplayNames": {"PupCuOKc": "kOp7ajf8", "ghn61i5Z": "eek9RHNo", "5Tcm8IHv": "AQJFy1aF"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId 'GbCZ2ZcK' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'VmWwTgYB' \
    --namespace $AB_NAMESPACE \
    --storeId 'XczrYG85' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'tBwMtSYk' \
    --namespace $AB_NAMESPACE \
    --storeId 'nBE894Fn' \
    --body '{"localizationDisplayNames": {"qVYLsbQp": "HkiH7gh3", "lS5PvzjN": "GoYN4AnB", "Kiea3ncI": "7bn7kWwS"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'Rembpg4R' \
    --namespace $AB_NAMESPACE \
    --storeId '9emcEfU0' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'hcuIb2VZ' \
    --namespace $AB_NAMESPACE \
    --storeId 'e2eEfQv5' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath '5tfaRpPA' \
    --namespace $AB_NAMESPACE \
    --storeId '3yERi4nT' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'gRbe8qWW' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName '2ufjYWew' \
    --batchNo '[7, 49, 34]' \
    --code 'gcunqxVv' \
    --limit '17' \
    --offset '74' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'dv1AS09T' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "BHRM4S0H", "codeValue": "0O3IsmHA", "quantity": 30}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'De4SkaEx' \
    --namespace $AB_NAMESPACE \
    --batchName 'fAq1VVmt' \
    --batchNo '[81, 97, 15]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'nIUtN5vd' \
    --namespace $AB_NAMESPACE \
    --batchName 'HVYqmBRR' \
    --batchNo '[18, 26, 39]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'J94xqzK9' \
    --namespace $AB_NAMESPACE \
    --batchName 'ZtGn6O0T' \
    --batchNo '[92, 91, 70]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'yx4ojZLT' \
    --namespace $AB_NAMESPACE \
    --code 'TbRtG2pR' \
    --limit '58' \
    --offset '46' \
    --userId 'tyS0ByoG' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '6cPHPNwv' \
    --namespace $AB_NAMESPACE \
    --redeemable 'true' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'ty1cwdiP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code '7QMcAoBu' \
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
    --body '{"currencyCode": "SCCdevKl", "currencySymbol": "1d6RmbOi", "currencyType": "VIRTUAL", "decimals": 97, "localizationDescriptions": {"9PIKfZqG": "GmQaU4Fl", "WOTNzL66": "omz3lsn1", "SQYLI7Xc": "gbouEiCR"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode '8ncPlg7V' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"rN0QBvko": "TifvagAW", "53dt9BCG": "2ubzkb3L", "kbsR0PTj": "zS3vVynq"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'rmOn7x20' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'aygrGwaw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'TKbnlFu4' \
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
    --body '{"data": [{"id": "k6IuhyyY", "rewards": [{"currency": {"currencyCode": "R0eD1bV2", "namespace": "pZ6Dr4dJ"}, "item": {"itemId": "cYJwC2pd", "itemName": "d31TPwOS", "itemSku": "GNp4XJDt", "itemType": "ILvBSEea"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "Z0CQq16V", "namespace": "4Nz2xkRK"}, "item": {"itemId": "EOthSo21", "itemName": "hG3zP6dU", "itemSku": "mxOcBHoD", "itemType": "ozEvmPW2"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "CvfBRUh7", "namespace": "AFNlxcdd"}, "item": {"itemId": "IHnde91o", "itemName": "5utZ6Wzt", "itemSku": "UafqPRlz", "itemType": "c3mN8Tmp"}, "quantity": 58, "type": "ITEM"}]}, {"id": "AlEAFfBi", "rewards": [{"currency": {"currencyCode": "EElJVnnv", "namespace": "XzOCSd4r"}, "item": {"itemId": "cfWLzyFu", "itemName": "0tcDm33t", "itemSku": "4TMFexfq", "itemType": "R8ZGQZJk"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "agmHQLwj", "namespace": "B2dCzHDi"}, "item": {"itemId": "446YAKq2", "itemName": "PzHywzi9", "itemSku": "MEtbJ6G5", "itemType": "LBeLi1XX"}, "quantity": 9, "type": "ITEM"}, {"currency": {"currencyCode": "3y0V2WTv", "namespace": "Q2p8Ejie"}, "item": {"itemId": "1LP6V5CS", "itemName": "AlzhkFXZ", "itemSku": "ezh9Kgp8", "itemType": "rTnr9S62"}, "quantity": 51, "type": "CURRENCY"}]}, {"id": "9o6NymW2", "rewards": [{"currency": {"currencyCode": "60BYAwt1", "namespace": "fn3m8sHm"}, "item": {"itemId": "9andh2b2", "itemName": "nNuC5vzW", "itemSku": "OWxnGq5X", "itemType": "GfJz2Q7a"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "x6mTEmRb", "namespace": "ICGGtodc"}, "item": {"itemId": "onjdvziG", "itemName": "zYHN8QEO", "itemSku": "TQ7fEqHb", "itemType": "zqGOyKiL"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "dFNSG1Tj", "namespace": "TjP32YET"}, "item": {"itemId": "lrmAhmu8", "itemName": "Me0SGLbI", "itemSku": "jj8eQydm", "itemType": "QcmSg1ro"}, "quantity": 2, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"dOl3GAyv": "vQkKJIsk", "nxRhDa5F": "Usz9k7Qw", "WYz9CXWH": "T81PTnRL"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"ItqTjB66": "kVxXnH3D", "WnEnIxYN": "F2RQy17b", "zrAYNTLc": "kBlnyv23"}}, {"platform": "STEAM", "platformDlcIdMap": {"zMzKeR7x": "6nnyf1Ld", "PT08O8lU": "qEk8alyo", "bpOPufRO": "LoxvLI0u"}}]}' \
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
    --entitlementClazz 'CODE' \
    --entitlementName 'grRa2CT4' \
    --itemId '["e7TPR0zn", "A3wVj9fQ", "Gk07Wh1i"]' \
    --limit '25' \
    --offset '15' \
    --origin 'Xbox' \
    --userId 'XV3S5sec' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["pxUHkpAp", "SKBOBhW1", "SBKH0UFn"]' \
    --limit '3' \
    --offset '38' \
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
    --body '{"entitlementGrantList": [{"collectionId": "BfsAAEw5", "endDate": "1975-01-12T00:00:00Z", "grantedCode": "3N19EhdE", "itemId": "dALLW1GQ", "itemNamespace": "0ApJuI1Y", "language": "fqlJ-PVSm", "metadata": {"OFxOX9fb": {}, "6Tf2ZzoY": {}, "p6b4pyXs": {}}, "origin": "Playstation", "quantity": 19, "region": "5S8LPLJS", "source": "IAP", "startDate": "1983-07-11T00:00:00Z", "storeId": "3DqlxU04"}, {"collectionId": "UOJHoT9r", "endDate": "1992-08-15T00:00:00Z", "grantedCode": "BvPrkxS4", "itemId": "Mwcnqia2", "itemNamespace": "t0NR6d7c", "language": "WVjF-vxoL", "metadata": {"7CSueuLW": {}, "gc16weqw": {}, "bR1b20Nf": {}}, "origin": "Playstation", "quantity": 68, "region": "IgYE20Ic", "source": "REWARD", "startDate": "1982-04-12T00:00:00Z", "storeId": "EqxLJdue"}, {"collectionId": "uwUVi5Qs", "endDate": "1981-07-28T00:00:00Z", "grantedCode": "Qf1yH66P", "itemId": "8IpRP1SK", "itemNamespace": "MRHpaSNZ", "language": "xsw-assY_Wj", "metadata": {"b9tvMeJg": {}, "UqyLAJV8": {}, "wI7o83MN": {}}, "origin": "Epic", "quantity": 97, "region": "Fh7csJHV", "source": "ACHIEVEMENT", "startDate": "1981-12-12T00:00:00Z", "storeId": "36IAPZ3X"}], "userIds": ["o4ArBxn2", "llj2wQXp", "4z1xNkja"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["TGCUlaoI", "EfZFE7MJ", "9vZOWdRm"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'lQ7wxAR2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '12' \
    --status 'SUCCESS' \
    --userId 'QTQBSm4J' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime '8sBYePOW' \
    --eventType 'REVOKED' \
    --externalOrderId 'yeokIOOV' \
    --limit '67' \
    --offset '94' \
    --startTime 'aWN1MvWd' \
    --status 'SUCCESS' \
    --userId 'zpvXcfYf' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "wdVTJt0W", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 59, "clientTransactionId": "wGK1W1wk"}, {"amountConsumed": 38, "clientTransactionId": "ZOikCONG"}, {"amountConsumed": 54, "clientTransactionId": "QBk943HQ"}], "entitlementId": "A3lPbw0U", "usageCount": 34}, {"clientTransaction": [{"amountConsumed": 51, "clientTransactionId": "5Gxe8vNR"}, {"amountConsumed": 93, "clientTransactionId": "M1txQ7dJ"}, {"amountConsumed": 0, "clientTransactionId": "Qjrf2Lea"}], "entitlementId": "ShR4b14Y", "usageCount": 76}, {"clientTransaction": [{"amountConsumed": 76, "clientTransactionId": "6tR7xfBw"}, {"amountConsumed": 83, "clientTransactionId": "fszmx7ju"}, {"amountConsumed": 94, "clientTransactionId": "s6NAf2IS"}], "entitlementId": "Q1IQVkbt", "usageCount": 85}], "purpose": "lDDnTTNY"}, "originalTitleName": "QfCOSx6G", "paymentProductSKU": "3NvVBg7K", "purchaseDate": "jnRmdQlL", "sourceOrderItemId": "ggtxk8gj", "titleName": "2i3YPB2l"}, "eventDomain": "HkgqHvnV", "eventSource": "lhSJvyx0", "eventType": "fMzXrzKC", "eventVersion": 60, "id": "d1ePLKzu", "timestamp": "BYDUaOCo"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "9ktRS1FW", "eventState": "e0HiO1uR", "lineItemId": "Y5XZUNNv", "orderId": "tg5asTfx", "productId": "119jcLjY", "productType": "FQguhMbx", "purchasedDate": "LZFiLIZJ", "sandboxId": "QGhl8sxc", "skuId": "fzY7BRgJ", "subscriptionData": {"consumedDurationInDays": 65, "dateTime": "K61SK7SG", "durationInDays": 90, "recurrenceId": "Erp4s0LV"}}, "datacontenttype": "AumQPkqT", "id": "moK4TzBt", "source": "R9t4dGYR", "specVersion": "Hl8xBo1x", "subject": "fJGJA3nY", "time": "AC38i6WC", "traceparent": "8LDMzyII", "type": "uXWbGS9p"}' \
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
    --body '{"appAppleId": 4, "bundleId": "rA0WTbhN", "issuerId": "pJUVUTrJ", "keyId": "0DLpWITv", "password": "cZNve52A", "version": "V1"}' \
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
    --body '{"sandboxId": "FOOuT7ky"}' \
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
    --body '{"applicationName": "HQRyy3Ae", "notificationTokenAudience": "etsHAtop", "notificationTokenEmail": "nLss9P14", "packageName": "omtXjdZN", "serviceAccountId": "4bqRUI6C"}' \
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
    --body '{"data": [{"itemIdentity": "CaWiMXfK", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Agz13UhJ": "krosdJbb", "99pHj8kL": "WNuqxX7U", "1TMafypo": "1efZyZI3"}}, {"itemIdentity": "mPlG1ZHA", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"4XB5dV8y": "Gz3gDuNM", "J9XeRBQS": "FtuYsswg", "lZ2RC878": "651h0vaz"}}, {"itemIdentity": "Ma5RvEM7", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0ujObGll": "SLvNuA5U", "2RgLvtUU": "bHv3fH7q", "s1GMujjU": "1jmw3drl"}}]}' \
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
    --body '{"appId": "4Ub8kFIG", "appSecret": "DNLf4Svy"}' \
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
    --body '{"backOfficeServerClientId": "oLJOmZqC", "backOfficeServerClientSecret": "qdu6U8WH", "enableStreamJob": true, "environment": "qa6dZFx5", "streamName": "RGns1kHq", "streamPartnerName": "uwcgvum8"}' \
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
    --body '{"backOfficeServerClientId": "cYS1srTy", "backOfficeServerClientSecret": "VohQAA16", "enableStreamJob": true, "environment": "5XB2AawL", "streamName": "KWHk9uGf", "streamPartnerName": "jsFRpqD1"}' \
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
    --body '{"appId": "hjVgHNrG", "env": "LIVE", "publisherAuthenticationKey": "UQKQeS91", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "9py7bcEr", "clientSecret": "lEwJeS9y", "organizationId": "IHfoVkwb"}' \
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
    --body '{"enableClawback": true, "entraAppClientId": "QaO57LS7", "entraAppClientSecret": "Qx2nqF1o", "entraTenantId": "gjXXKQud", "relyingPartyCert": "nXgWYF6c"}' \
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
    --password 'nDVO7EM4' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'N89gNi2Y' \
    --externalId 'AeNfLmmB' \
    --limit '60' \
    --offset '47' \
    --source 'XBOX' \
    --startDate 'FN5ONagp' \
    --status 'PROCESSED' \
    --type '07n1ugrU' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '75' \
    --orderId 'oE1hJzs1' \
    --steamId 'NpvSah9H' \
    > test.out 2>&1
eval_tap $? 107 'QueryAbnormalTransactions' test.out

#- 108 AdminGetSteamJobInfo
samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 108 'AdminGetSteamJobInfo' test.out

#- 109 AdminResetSteamJobTime
samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace $AB_NAMESPACE \
    --body '{"env": "SANDBOX", "lastTime": "1985-04-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminResetSteamJobTime' test.out

#- 110 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'aAlFqnJn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminRefundIAPOrder' test.out

#- 111 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '79' \
    --orderId 'Nz7YPUB0' \
    --processStatus 'ERROR' \
    --steamId 'mNNER2HW' \
    > test.out 2>&1
eval_tap $? 111 'QuerySteamReportHistories' test.out

#- 112 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --groupId 'D5zul76h' \
    --limit '29' \
    --offset '7' \
    --platform 'EPICGAMES' \
    --productId 'h2KR7G3d' \
    --userId 'MxpMjn31' \
    > test.out 2>&1
eval_tap $? 112 'QueryThirdPartySubscription' test.out

#- 113 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'ewGqoHv3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetIAPOrderConsumeDetails' test.out

#- 114 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'AhZlKdyC' \
    --feature '33zndQjY' \
    --itemId 'UbVPKkXN' \
    --itemType 'SEASON' \
    --startTime '49MSTgIA' \
    > test.out 2>&1
eval_tap $? 114 'DownloadInvoiceDetails' test.out

#- 115 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'HBXwb579' \
    --feature 'QqNXCRtI' \
    --itemId 'Ykl3bFHa' \
    --itemType 'MEDIA' \
    --startTime 'fxFS1D8E' \
    > test.out 2>&1
eval_tap $? 115 'GenerateInvoiceSummary' test.out

#- 116 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'UoTwXRlu' \
    --body '{"categoryPath": "TIhAVtFk", "targetItemId": "f5GAaVJN", "targetNamespace": "qYPIjTZy"}' \
    > test.out 2>&1
eval_tap $? 116 'SyncInGameItem' test.out

#- 117 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'nxgxilWV' \
    --body '{"appId": "0ctWNDpG", "appType": "SOFTWARE", "baseAppId": "kSdP8ROC", "boothName": "zyBVWEdi", "categoryPath": "7u2UP0aP", "clazz": "LtBBfEWs", "displayOrder": 68, "entitlementType": "DURABLE", "ext": {"8MZ5uJNi": {}, "58VAqcgE": {}, "0LvvQlxr": {}}, "features": ["tR3Jtj0i", "dybJuIk3", "vjPMOflu"], "flexible": true, "images": [{"as": "5VU157za", "caption": "2nDgWvjs", "height": 7, "imageUrl": "oqGNIKqS", "smallImageUrl": "C5JzcRaE", "width": 63}, {"as": "9pYN4hW7", "caption": "Di9beGqi", "height": 95, "imageUrl": "Md4DJfzO", "smallImageUrl": "JpMtloCc", "width": 66}, {"as": "tWlfee5G", "caption": "zFPaYCRN", "height": 95, "imageUrl": "VCqmJzMz", "smallImageUrl": "0rbP7tDM", "width": 18}], "inventoryConfig": {"customAttributes": {"wtCCFTfX": {}, "Pm12mZKr": {}, "d3GMh99g": {}}, "serverCustomAttributes": {"oqvPXOeM": {}, "MejXAfIW": {}, "6wGkKIjd": {}}, "slotUsed": 88}, "itemIds": ["vGtBS1Wc", "7BE3Yk1N", "rGMZHloZ"], "itemQty": {"uGBzSCHR": 64, "NH0tCssr": 60, "Aj0f81e6": 19}, "itemType": "MEDIA", "listable": true, "localizations": {"42gyUp47": {"description": "sZShBBg1", "localExt": {"LLVoC7mT": {}, "9MoVqwit": {}, "EOkuHzTg": {}}, "longDescription": "InTCb5cf", "title": "zQ75Un4E"}, "Lte0AcZt": {"description": "6Byacgx8", "localExt": {"OPlLilhx": {}, "gN6auGoA": {}, "0DB5RWeY": {}}, "longDescription": "CLlJUi6e", "title": "Ig4KCiAV"}, "KKjxWsUT": {"description": "a5J4HBsV", "localExt": {"T2baSG88": {}, "l8V6L1BU": {}, "Ooc2dayQ": {}}, "longDescription": "QcFQkyxN", "title": "e519XmGv"}}, "lootBoxConfig": {"rewardCount": 51, "rewards": [{"lootBoxItems": [{"count": 10, "duration": 54, "endDate": "1974-10-22T00:00:00Z", "itemId": "Hbg2xeQH", "itemSku": "3JkQZuVT", "itemType": "3AOhZy4L"}, {"count": 52, "duration": 98, "endDate": "1998-01-13T00:00:00Z", "itemId": "BYINxdFg", "itemSku": "suqa1xmx", "itemType": "vfKKEoGQ"}, {"count": 22, "duration": 22, "endDate": "1978-03-23T00:00:00Z", "itemId": "wKT7u1vj", "itemSku": "1obloRnL", "itemType": "AqDiZaVk"}], "name": "zmRusizc", "odds": 0.8948722940795347, "type": "REWARD_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 1, "duration": 75, "endDate": "1993-01-27T00:00:00Z", "itemId": "z9teM4v5", "itemSku": "0wUfLYYX", "itemType": "LEr5JQrm"}, {"count": 88, "duration": 40, "endDate": "1990-04-04T00:00:00Z", "itemId": "roeEfGMS", "itemSku": "QE6TcyG8", "itemType": "rCXHWpIJ"}, {"count": 24, "duration": 36, "endDate": "1975-05-16T00:00:00Z", "itemId": "njs1ykwm", "itemSku": "SSzeQ7Cq", "itemType": "wOrzgSc7"}], "name": "hZzoLNXe", "odds": 0.12883904744716634, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 29, "duration": 20, "endDate": "1972-05-19T00:00:00Z", "itemId": "9z9f9mT4", "itemSku": "cg4Q6xRt", "itemType": "VitfqXsy"}, {"count": 5, "duration": 39, "endDate": "1972-09-29T00:00:00Z", "itemId": "oQVbxQmB", "itemSku": "m0OlPWXx", "itemType": "JZVFSOxR"}, {"count": 16, "duration": 34, "endDate": "1987-09-22T00:00:00Z", "itemId": "5gm4VGjd", "itemSku": "jQXJmkfy", "itemType": "N2Hakuc7"}], "name": "MiC8e3n3", "odds": 0.7433612231449875, "type": "REWARD", "weight": 87}], "rollFunction": "CUSTOM"}, "maxCount": 17, "maxCountPerUser": 28, "name": "qyAPfi6b", "optionBoxConfig": {"boxItems": [{"count": 94, "duration": 4, "endDate": "1989-07-30T00:00:00Z", "itemId": "ERyl7zWL", "itemSku": "07mfkUNi", "itemType": "DxZdKPpv"}, {"count": 90, "duration": 17, "endDate": "1985-12-15T00:00:00Z", "itemId": "4Yi60yKT", "itemSku": "5GCgprhI", "itemType": "0MjYMviV"}, {"count": 15, "duration": 3, "endDate": "1996-11-16T00:00:00Z", "itemId": "veZ7NrUA", "itemSku": "pyeztGSE", "itemType": "ghfDT57M"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 13, "fixedTrialCycles": 6, "graceDays": 73}, "regionData": {"2Jd2dFeh": [{"currencyCode": "ytmXA1Vb", "currencyNamespace": "Txw6XkUq", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1989-09-27T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1987-01-06T00:00:00Z", "expireAt": "1978-11-03T00:00:00Z", "price": 95, "purchaseAt": "1990-07-08T00:00:00Z", "trialPrice": 53}, {"currencyCode": "v399BcCo", "currencyNamespace": "8VaNMhph", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1975-03-21T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1992-09-03T00:00:00Z", "expireAt": "1988-04-13T00:00:00Z", "price": 65, "purchaseAt": "1974-08-27T00:00:00Z", "trialPrice": 96}, {"currencyCode": "AtyL8sHn", "currencyNamespace": "9D8ovc9v", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1998-04-17T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1980-04-01T00:00:00Z", "expireAt": "1992-04-23T00:00:00Z", "price": 80, "purchaseAt": "1994-03-30T00:00:00Z", "trialPrice": 49}], "QIVd3zZE": [{"currencyCode": "8WJcAPHc", "currencyNamespace": "7tfWBP0f", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1995-01-12T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1976-08-19T00:00:00Z", "expireAt": "1991-12-25T00:00:00Z", "price": 43, "purchaseAt": "1992-11-24T00:00:00Z", "trialPrice": 36}, {"currencyCode": "kZZmLSJK", "currencyNamespace": "bPHUmSPJ", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1988-08-19T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1976-08-22T00:00:00Z", "expireAt": "1976-02-17T00:00:00Z", "price": 52, "purchaseAt": "1976-12-31T00:00:00Z", "trialPrice": 96}, {"currencyCode": "brH3RHgM", "currencyNamespace": "pib5p6xG", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1990-08-13T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1982-11-20T00:00:00Z", "expireAt": "1971-03-27T00:00:00Z", "price": 81, "purchaseAt": "1995-07-30T00:00:00Z", "trialPrice": 25}], "udGmEtLo": [{"currencyCode": "EnED2zCS", "currencyNamespace": "7gnxtVsu", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1973-08-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1979-06-20T00:00:00Z", "expireAt": "1979-04-20T00:00:00Z", "price": 22, "purchaseAt": "1996-12-12T00:00:00Z", "trialPrice": 29}, {"currencyCode": "vO8Lw3Cx", "currencyNamespace": "Bj3J2AEr", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1974-11-11T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1993-04-25T00:00:00Z", "expireAt": "1997-09-06T00:00:00Z", "price": 30, "purchaseAt": "1986-09-04T00:00:00Z", "trialPrice": 23}, {"currencyCode": "DGavDxLL", "currencyNamespace": "7w34Lr2w", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1978-05-27T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1981-06-10T00:00:00Z", "expireAt": "1990-10-08T00:00:00Z", "price": 20, "purchaseAt": "1987-04-08T00:00:00Z", "trialPrice": 30}]}, "saleConfig": {"currencyCode": "06rkT2Q6", "price": 8}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "W5oI2Z3w", "stackable": true, "status": "ACTIVE", "tags": ["LbXXznOD", "gB8APHXh", "rWIbTddI"], "targetCurrencyCode": "gnDVRQ2B", "targetNamespace": "2KnxlFBq", "thumbnailUrl": "HJJEksOw", "useCount": 12}' \
    > test.out 2>&1
eval_tap $? 117 'CreateItem' test.out

#- 118 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'YRto5rx3' \
    --appId 'ABb7qsop' \
    > test.out 2>&1
eval_tap $? 118 'GetItemByAppId' test.out

#- 119 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --appType 'DLC' \
    --availableDate 'Risks2C7' \
    --baseAppId 'aozS1ymu' \
    --categoryPath '7B5Ivg5k' \
    --features '9sa9hGWJ' \
    --includeSubCategoryItem 'false' \
    --itemType 'MEDIA' \
    --limit '12' \
    --offset '73' \
    --region 'U9Sg3eLe' \
    --sortBy '["name", "name:desc"]' \
    --storeId '9YFi1zuY' \
    --tags 'k3RvxSoK' \
    --targetNamespace 'eylFqhWO' \
    > test.out 2>&1
eval_tap $? 119 'QueryItems' test.out

#- 120 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["T67OoT97", "LxfjY0Rm", "oIeEn551"]' \
    > test.out 2>&1
eval_tap $? 120 'ListBasicItemsByFeatures' test.out

#- 121 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'XTSMSn7s' \
    --itemIds 'dBK1mTLf' \
    > test.out 2>&1
eval_tap $? 121 'GetItems' test.out

#- 122 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Ks6TcSD4' \
    --sku 'hIakrwB2' \
    > test.out 2>&1
eval_tap $? 122 'GetItemBySku' test.out

#- 123 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '8gi2J1KS' \
    --populateBundle 'true' \
    --region 'TnAcdFHd' \
    --storeId 'FMz2teoI' \
    --sku 'J64IvZ85' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItemBySku' test.out

#- 124 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform '1wnMAG8S' \
    --region 'gFWZ9oRz' \
    --storeId 'Ovj2s3sN' \
    --itemIds 'f0i8Lkow' \
    --userId 'fVTMhWn1' \
    > test.out 2>&1
eval_tap $? 124 'GetEstimatedPrice' test.out

#- 125 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'KpMEjsgw' \
    --sku 'V9dZMUkf' \
    > test.out 2>&1
eval_tap $? 125 'GetItemIdBySku' test.out

#- 126 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["jjsl56Q4", "PWeq1rR3", "QzPnDCrf"]' \
    --storeId 'l209danB' \
    > test.out 2>&1
eval_tap $? 126 'GetBulkItemIdBySkus' test.out

#- 127 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language '1C2bRfLl' \
    --region 'RUp9vwMD' \
    --storeId 'fwQ0MHv0' \
    --itemIds 'cT1kCpHw' \
    > test.out 2>&1
eval_tap $? 127 'BulkGetLocaleItems' test.out

#- 128 GetAvailablePredicateTypes
samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'GetAvailablePredicateTypes' test.out

#- 129 ValidateItemPurchaseCondition
samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --platform '4DP5oFl4' \
    --userId 'eYTjQXhT' \
    --body '{"itemIds": ["J30fdoHs", "IrXs8nwe", "0FHRP5Ya"]}' \
    > test.out 2>&1
eval_tap $? 129 'ValidateItemPurchaseCondition' test.out

#- 130 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'vZUJaZnH' \
    --body '{"changes": [{"itemIdentities": ["MpePrucc", "6nruXmQn", "C5a2DHc6"], "itemIdentityType": "ITEM_SKU", "regionData": {"aAuX0Ivl": [{"currencyCode": "GQ9vVDMw", "currencyNamespace": "MomabAqf", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1991-10-29T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1976-10-27T00:00:00Z", "discountedPrice": 11, "expireAt": "1998-12-09T00:00:00Z", "price": 92, "purchaseAt": "1971-01-21T00:00:00Z", "trialPrice": 6}, {"currencyCode": "y4HhBtpV", "currencyNamespace": "wUodQHxY", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1983-02-19T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1976-06-03T00:00:00Z", "discountedPrice": 74, "expireAt": "1995-08-10T00:00:00Z", "price": 30, "purchaseAt": "1999-12-05T00:00:00Z", "trialPrice": 34}, {"currencyCode": "LHtohccA", "currencyNamespace": "DE75txrk", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1982-11-19T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1983-11-25T00:00:00Z", "discountedPrice": 30, "expireAt": "1980-02-18T00:00:00Z", "price": 98, "purchaseAt": "1993-12-15T00:00:00Z", "trialPrice": 10}], "zINPj9jH": [{"currencyCode": "bALgQZPW", "currencyNamespace": "Dok9J2lb", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1986-07-23T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1975-12-09T00:00:00Z", "discountedPrice": 16, "expireAt": "1997-09-08T00:00:00Z", "price": 37, "purchaseAt": "1986-10-17T00:00:00Z", "trialPrice": 8}, {"currencyCode": "ps1d70go", "currencyNamespace": "MboDFVDt", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1978-11-20T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1983-12-02T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-02-06T00:00:00Z", "price": 35, "purchaseAt": "1988-08-08T00:00:00Z", "trialPrice": 97}, {"currencyCode": "FMAnRXF5", "currencyNamespace": "JmPkYFHv", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1972-10-05T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1977-09-03T00:00:00Z", "discountedPrice": 88, "expireAt": "1990-09-09T00:00:00Z", "price": 35, "purchaseAt": "1982-11-08T00:00:00Z", "trialPrice": 90}], "lh5EwL2Y": [{"currencyCode": "DXeQGOBS", "currencyNamespace": "LZZ65fGw", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1991-08-24T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1996-02-13T00:00:00Z", "discountedPrice": 0, "expireAt": "1994-10-18T00:00:00Z", "price": 87, "purchaseAt": "1981-09-02T00:00:00Z", "trialPrice": 99}, {"currencyCode": "mYRbdueS", "currencyNamespace": "htDPjI5r", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1971-04-26T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1994-08-29T00:00:00Z", "discountedPrice": 79, "expireAt": "1985-02-07T00:00:00Z", "price": 48, "purchaseAt": "1971-03-27T00:00:00Z", "trialPrice": 25}, {"currencyCode": "d7ga70Zr", "currencyNamespace": "sRf7QMQv", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1972-01-30T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1977-06-16T00:00:00Z", "discountedPrice": 7, "expireAt": "1979-11-06T00:00:00Z", "price": 20, "purchaseAt": "1997-09-29T00:00:00Z", "trialPrice": 67}]}}, {"itemIdentities": ["m00M2gXX", "KCcf9XVu", "Qk3kdL2z"], "itemIdentityType": "ITEM_ID", "regionData": {"hOr2FyWB": [{"currencyCode": "UYcKQC47", "currencyNamespace": "O11f5ru3", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1984-07-18T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1971-11-09T00:00:00Z", "discountedPrice": 82, "expireAt": "1994-04-14T00:00:00Z", "price": 31, "purchaseAt": "1980-09-06T00:00:00Z", "trialPrice": 56}, {"currencyCode": "g5KIeBzd", "currencyNamespace": "IPc9uC4J", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1995-12-24T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1980-03-31T00:00:00Z", "discountedPrice": 84, "expireAt": "1981-06-12T00:00:00Z", "price": 82, "purchaseAt": "1998-12-06T00:00:00Z", "trialPrice": 36}, {"currencyCode": "jfcuy3u2", "currencyNamespace": "6uALz68r", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1985-12-06T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1985-03-07T00:00:00Z", "discountedPrice": 8, "expireAt": "1979-08-24T00:00:00Z", "price": 29, "purchaseAt": "1981-06-26T00:00:00Z", "trialPrice": 99}], "5vUqWeXs": [{"currencyCode": "OyR0hWKS", "currencyNamespace": "Ac6o6D5W", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1999-04-22T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1979-08-28T00:00:00Z", "discountedPrice": 92, "expireAt": "1999-08-25T00:00:00Z", "price": 58, "purchaseAt": "1989-01-20T00:00:00Z", "trialPrice": 90}, {"currencyCode": "h621HnS9", "currencyNamespace": "Q0zAz8vl", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1998-05-06T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1977-07-04T00:00:00Z", "discountedPrice": 71, "expireAt": "1985-04-19T00:00:00Z", "price": 50, "purchaseAt": "1999-07-26T00:00:00Z", "trialPrice": 9}, {"currencyCode": "IZUijjYQ", "currencyNamespace": "NJqTUYbq", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1982-05-07T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1981-05-17T00:00:00Z", "discountedPrice": 11, "expireAt": "1996-05-19T00:00:00Z", "price": 51, "purchaseAt": "1975-12-19T00:00:00Z", "trialPrice": 100}], "zFIPH768": [{"currencyCode": "s3ZHyg54", "currencyNamespace": "rSvhwrDE", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1995-06-12T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1974-10-05T00:00:00Z", "discountedPrice": 0, "expireAt": "1977-03-11T00:00:00Z", "price": 50, "purchaseAt": "1978-11-28T00:00:00Z", "trialPrice": 91}, {"currencyCode": "prTHVHaQ", "currencyNamespace": "eWw8tMiN", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1975-05-27T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1988-07-31T00:00:00Z", "discountedPrice": 55, "expireAt": "1984-09-27T00:00:00Z", "price": 89, "purchaseAt": "1997-09-14T00:00:00Z", "trialPrice": 32}, {"currencyCode": "hPc9oI3K", "currencyNamespace": "SdPHWhe4", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1983-03-24T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1998-01-07T00:00:00Z", "discountedPrice": 13, "expireAt": "1983-07-10T00:00:00Z", "price": 92, "purchaseAt": "1999-01-21T00:00:00Z", "trialPrice": 26}]}}, {"itemIdentities": ["o8XllfDk", "jkvqvGQF", "sDrwZTqq"], "itemIdentityType": "ITEM_ID", "regionData": {"hyTkOScF": [{"currencyCode": "LvCPhY1g", "currencyNamespace": "qIm6dOlv", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1981-02-20T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1976-09-15T00:00:00Z", "discountedPrice": 65, "expireAt": "1972-06-03T00:00:00Z", "price": 7, "purchaseAt": "1998-04-23T00:00:00Z", "trialPrice": 5}, {"currencyCode": "12xd87lw", "currencyNamespace": "kpYv5gln", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1984-07-18T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1997-10-13T00:00:00Z", "discountedPrice": 19, "expireAt": "1998-10-15T00:00:00Z", "price": 70, "purchaseAt": "1986-09-10T00:00:00Z", "trialPrice": 94}, {"currencyCode": "dstIlZsc", "currencyNamespace": "k5GjDofX", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1981-12-08T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1983-06-02T00:00:00Z", "discountedPrice": 55, "expireAt": "1981-09-07T00:00:00Z", "price": 14, "purchaseAt": "1978-09-20T00:00:00Z", "trialPrice": 45}], "WXznaSMA": [{"currencyCode": "DCo6qwyS", "currencyNamespace": "bXLCh4mb", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1996-02-09T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1999-08-25T00:00:00Z", "discountedPrice": 99, "expireAt": "1990-10-13T00:00:00Z", "price": 85, "purchaseAt": "1976-12-27T00:00:00Z", "trialPrice": 91}, {"currencyCode": "amJ20FX2", "currencyNamespace": "GswRMiKp", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1985-09-19T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1989-04-23T00:00:00Z", "discountedPrice": 26, "expireAt": "1988-11-12T00:00:00Z", "price": 20, "purchaseAt": "1973-03-19T00:00:00Z", "trialPrice": 48}, {"currencyCode": "MH1TBAbc", "currencyNamespace": "8ADQ6ZKO", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1983-02-27T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1982-12-30T00:00:00Z", "discountedPrice": 44, "expireAt": "1990-05-27T00:00:00Z", "price": 44, "purchaseAt": "1991-05-30T00:00:00Z", "trialPrice": 93}], "Ie3od0cx": [{"currencyCode": "Sodp2Yzm", "currencyNamespace": "1Y4nSkNa", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1996-11-13T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-03-03T00:00:00Z", "discountedPrice": 50, "expireAt": "1976-10-21T00:00:00Z", "price": 73, "purchaseAt": "1972-01-23T00:00:00Z", "trialPrice": 75}, {"currencyCode": "Lj8fBZvI", "currencyNamespace": "bhM3blqx", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1985-02-25T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1996-01-19T00:00:00Z", "discountedPrice": 15, "expireAt": "1978-10-15T00:00:00Z", "price": 4, "purchaseAt": "1995-10-15T00:00:00Z", "trialPrice": 24}, {"currencyCode": "GUjEPsnF", "currencyNamespace": "TrYr73cd", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1988-12-08T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1977-09-05T00:00:00Z", "discountedPrice": 87, "expireAt": "1997-04-06T00:00:00Z", "price": 13, "purchaseAt": "1980-08-13T00:00:00Z", "trialPrice": 37}]}}]}' \
    > test.out 2>&1
eval_tap $? 130 'BulkUpdateRegionData' test.out

#- 131 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'SEASON' \
    --limit '13' \
    --offset '26' \
    --sortBy '22kTfpCI' \
    --storeId 'bSSIzXam' \
    --keyword 'bEtPDXRJ' \
    --language 'Owl6pAFF' \
    > test.out 2>&1
eval_tap $? 131 'SearchItems' test.out

#- 132 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --limit '97' \
    --offset '32' \
    --sortBy '["name", "displayOrder", "createdAt:desc"]' \
    --storeId 'sf2yFlrv' \
    > test.out 2>&1
eval_tap $? 132 'QueryUncategorizedItems' test.out

#- 133 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'YB7VHOUO' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'Hrj9Wvec' \
    > test.out 2>&1
eval_tap $? 133 'GetItem' test.out

#- 134 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'EyoorSPR' \
    --namespace $AB_NAMESPACE \
    --storeId 'yQYDUxI6' \
    --body '{"appId": "uMUx6XrB", "appType": "SOFTWARE", "baseAppId": "9BJiMiYw", "boothName": "jeD3OtUR", "categoryPath": "x9aoAOPe", "clazz": "chWgF5G5", "displayOrder": 32, "entitlementType": "DURABLE", "ext": {"nsZhZchH": {}, "3277ZuIS": {}, "4R9PNkXM": {}}, "features": ["XWXnCILP", "8pkUFl6c", "oLph4Qhd"], "flexible": true, "images": [{"as": "ggyVX8Qr", "caption": "YSjjXIPT", "height": 43, "imageUrl": "bvbGAwZX", "smallImageUrl": "eT3MkP5i", "width": 34}, {"as": "KNXC7vAX", "caption": "2QHqbmMM", "height": 93, "imageUrl": "EXJWrXYh", "smallImageUrl": "PZCyu5d3", "width": 35}, {"as": "ahxj0xLL", "caption": "AqhELlKd", "height": 54, "imageUrl": "ajoPIj54", "smallImageUrl": "nTDepwhi", "width": 2}], "inventoryConfig": {"customAttributes": {"kE6cJQ2O": {}, "AW33j6IE": {}, "Bk2ySpgx": {}}, "serverCustomAttributes": {"bQXeHBdX": {}, "XbPeyXym": {}, "yj1wnex0": {}}, "slotUsed": 40}, "itemIds": ["ZrJlBWT1", "WFcOMOkw", "h4WtdZcC"], "itemQty": {"V2LYOiIx": 95, "N0Ax6mYL": 81, "hvzSW4PW": 75}, "itemType": "APP", "listable": false, "localizations": {"4JfwaXwJ": {"description": "9Kn7GdrN", "localExt": {"1STt8nm6": {}, "SIyJeNW6": {}, "DCZhZIBj": {}}, "longDescription": "jktd0u4j", "title": "HPDVNDPp"}, "pEPI0ApQ": {"description": "C2mQyTWn", "localExt": {"ltMQCPgX": {}, "IKhySD3e": {}, "IsNqUPMd": {}}, "longDescription": "DyHQh4Rn", "title": "NPRAzi3u"}, "jxqm7f35": {"description": "6UPqDeyF", "localExt": {"X99DBVhE": {}, "iZ5xNcuq": {}, "SkLmoAyQ": {}}, "longDescription": "d3oNgCwL", "title": "pyfQKdnI"}}, "lootBoxConfig": {"rewardCount": 4, "rewards": [{"lootBoxItems": [{"count": 3, "duration": 74, "endDate": "1972-02-12T00:00:00Z", "itemId": "9jNkFYTx", "itemSku": "KSZpfkm2", "itemType": "CfMxGKkt"}, {"count": 20, "duration": 5, "endDate": "1990-10-21T00:00:00Z", "itemId": "sXsTS8iS", "itemSku": "mnflPyPs", "itemType": "w2RV4XOe"}, {"count": 18, "duration": 34, "endDate": "1989-07-07T00:00:00Z", "itemId": "Tk0UGFPj", "itemSku": "e7QsxlbO", "itemType": "q1DcOHch"}], "name": "1trmRIAL", "odds": 0.5334666417197613, "type": "PROBABILITY_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 42, "duration": 78, "endDate": "1975-06-09T00:00:00Z", "itemId": "uF65RsKA", "itemSku": "PiaDli1n", "itemType": "hwywCg0N"}, {"count": 57, "duration": 94, "endDate": "1988-11-02T00:00:00Z", "itemId": "ET058x1U", "itemSku": "xY1CL3eq", "itemType": "CrL2Fyif"}, {"count": 22, "duration": 87, "endDate": "1975-08-30T00:00:00Z", "itemId": "H0hnNw02", "itemSku": "99fLALzZ", "itemType": "lmQmXNfm"}], "name": "Aeyg3O4n", "odds": 0.2581215503165428, "type": "REWARD_GROUP", "weight": 63}, {"lootBoxItems": [{"count": 79, "duration": 43, "endDate": "1993-08-01T00:00:00Z", "itemId": "hAEd8ANv", "itemSku": "nwboCMyz", "itemType": "lNuOe8UR"}, {"count": 37, "duration": 90, "endDate": "1974-02-16T00:00:00Z", "itemId": "6nnNA5dl", "itemSku": "VBCUPKlI", "itemType": "Qz0lHcvN"}, {"count": 28, "duration": 77, "endDate": "1973-09-18T00:00:00Z", "itemId": "mYMFirH2", "itemSku": "AHhS36RM", "itemType": "BBStY98B"}], "name": "5pTHiqXT", "odds": 0.7174232864156733, "type": "REWARD_GROUP", "weight": 44}], "rollFunction": "DEFAULT"}, "maxCount": 47, "maxCountPerUser": 97, "name": "t2bYLOeL", "optionBoxConfig": {"boxItems": [{"count": 64, "duration": 13, "endDate": "1985-01-14T00:00:00Z", "itemId": "cLmmiKkt", "itemSku": "fdtwPDpE", "itemType": "MrqU1Lwg"}, {"count": 78, "duration": 7, "endDate": "1996-06-27T00:00:00Z", "itemId": "mEQV2hxR", "itemSku": "JeBb4L7V", "itemType": "q4trDu5F"}, {"count": 72, "duration": 75, "endDate": "1986-06-10T00:00:00Z", "itemId": "ov1nbND2", "itemSku": "NCDbco6v", "itemType": "ffo6Ksss"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 35, "fixedTrialCycles": 53, "graceDays": 2}, "regionData": {"inpVw7pd": [{"currencyCode": "g2CDNNCF", "currencyNamespace": "EFuua2FQ", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1981-09-16T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1980-04-24T00:00:00Z", "expireAt": "1997-08-17T00:00:00Z", "price": 4, "purchaseAt": "1982-02-12T00:00:00Z", "trialPrice": 8}, {"currencyCode": "GWOjbWP5", "currencyNamespace": "mhWvcZHG", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1974-12-19T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1989-01-18T00:00:00Z", "expireAt": "1988-01-12T00:00:00Z", "price": 36, "purchaseAt": "1993-10-26T00:00:00Z", "trialPrice": 44}, {"currencyCode": "2HAxi5PL", "currencyNamespace": "F8QOQtRs", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1995-05-05T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1996-04-08T00:00:00Z", "expireAt": "1987-10-13T00:00:00Z", "price": 88, "purchaseAt": "1995-06-05T00:00:00Z", "trialPrice": 45}], "DOPzi8xw": [{"currencyCode": "ZkJaBfJy", "currencyNamespace": "6r92rnAv", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1988-09-16T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1972-03-17T00:00:00Z", "expireAt": "1978-02-09T00:00:00Z", "price": 47, "purchaseAt": "1981-08-18T00:00:00Z", "trialPrice": 57}, {"currencyCode": "OCSo9wie", "currencyNamespace": "7VG6V5F5", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1996-07-03T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1990-01-16T00:00:00Z", "expireAt": "1984-01-04T00:00:00Z", "price": 21, "purchaseAt": "1996-09-30T00:00:00Z", "trialPrice": 15}, {"currencyCode": "ShuLfHlR", "currencyNamespace": "oWaHy8KT", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1998-12-21T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1978-07-31T00:00:00Z", "expireAt": "1987-11-04T00:00:00Z", "price": 24, "purchaseAt": "1994-01-24T00:00:00Z", "trialPrice": 9}], "tFGWVjGo": [{"currencyCode": "yIk0LC7V", "currencyNamespace": "LUfUUHqC", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1974-08-24T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1986-06-16T00:00:00Z", "expireAt": "1986-03-03T00:00:00Z", "price": 19, "purchaseAt": "1987-02-16T00:00:00Z", "trialPrice": 23}, {"currencyCode": "HeS6ChuN", "currencyNamespace": "mMldLh5R", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1981-04-26T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1985-11-18T00:00:00Z", "expireAt": "1994-06-05T00:00:00Z", "price": 24, "purchaseAt": "1995-01-10T00:00:00Z", "trialPrice": 38}, {"currencyCode": "9rMg0b30", "currencyNamespace": "WgnbjMC4", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1980-01-19T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1994-07-27T00:00:00Z", "expireAt": "1983-12-27T00:00:00Z", "price": 72, "purchaseAt": "1993-11-12T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "qHVnRdGD", "price": 99}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "M2zLNHmU", "stackable": false, "status": "ACTIVE", "tags": ["G4HfB4wG", "ZSevsY5j", "u1nQyJQj"], "targetCurrencyCode": "X9ASBUB2", "targetNamespace": "hspArIIL", "thumbnailUrl": "qhOjG6Xf", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateItem' test.out

#- 135 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'oFX5C06f' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "REWARD", "CATALOG"]' \
    --force 'true' \
    --storeId '1JOZJXI3' \
    > test.out 2>&1
eval_tap $? 135 'DeleteItem' test.out

#- 136 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'uJ23zuvC' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 86, "orderNo": "qQZpYVOh"}' \
    > test.out 2>&1
eval_tap $? 136 'AcquireItem' test.out

#- 137 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'klVc3rbp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'edZPn7cb' \
    > test.out 2>&1
eval_tap $? 137 'GetApp' test.out

#- 138 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'fWIBzq1z' \
    --namespace $AB_NAMESPACE \
    --storeId 'RZsL35uR' \
    --body '{"carousel": [{"alt": "vDaWRluQ", "previewUrl": "Sxszq2eh", "thumbnailUrl": "B42j86Hs", "type": "video", "url": "S24kCybW", "videoSource": "generic"}, {"alt": "QL5qeP5Y", "previewUrl": "19DD6sbE", "thumbnailUrl": "TEq3eZgV", "type": "video", "url": "Oy2OljAf", "videoSource": "youtube"}, {"alt": "GvBMbOMX", "previewUrl": "QZSKJbNp", "thumbnailUrl": "OkGetP05", "type": "image", "url": "y5z8R2s9", "videoSource": "youtube"}], "developer": "6Oyk35L2", "forumUrl": "oa0vp9nS", "genres": ["Strategy", "FreeToPlay", "Strategy"], "localizations": {"MR9resjh": {"announcement": "80Q1SbHn", "slogan": "qK04Dtmn"}, "Snbc884E": {"announcement": "ThRsPnnk", "slogan": "BcUAv6Xz"}, "Nr1aH3VF": {"announcement": "YDHDoJQw", "slogan": "NdgymGbw"}}, "platformRequirements": {"ACiJlPyy": [{"additionals": "fGJEvGDe", "directXVersion": "tgk40bnd", "diskSpace": "j5cG5wvb", "graphics": "CHT44I7D", "label": "Z0iIBGMm", "osVersion": "3PZ3RIp5", "processor": "zq8bnrgH", "ram": "mDDtfgIV", "soundCard": "vt4RiKDx"}, {"additionals": "HC1G3vCZ", "directXVersion": "vLUq0ALn", "diskSpace": "K8rkchmQ", "graphics": "GoS2zR5L", "label": "DrJItkuB", "osVersion": "zTGNdChM", "processor": "s9ywHB68", "ram": "KxmpSbM2", "soundCard": "QRCy6CVB"}, {"additionals": "W5rJkpsC", "directXVersion": "jByTk83C", "diskSpace": "vGB78pFx", "graphics": "8OC9M4xT", "label": "vbWvlpbf", "osVersion": "DCme4vKw", "processor": "ttZQ9RZ5", "ram": "280Wct20", "soundCard": "dW86zp1h"}], "i7t0r5wA": [{"additionals": "DNd2yB07", "directXVersion": "1f31LRtg", "diskSpace": "aKci2Aur", "graphics": "6V59Stjh", "label": "PwD1AIfw", "osVersion": "NzSnph7e", "processor": "Tm6TpcDx", "ram": "xkgSsrj2", "soundCard": "B2gLL1Dx"}, {"additionals": "P0MOhUWR", "directXVersion": "FJhmcqZQ", "diskSpace": "v5SMvl7D", "graphics": "WiwXI3Ms", "label": "3BCQIBvn", "osVersion": "jhoyJwY3", "processor": "6aOPEPt0", "ram": "XgSxsa6k", "soundCard": "wrT0h2Cc"}, {"additionals": "ArejlUjI", "directXVersion": "L81HSY0j", "diskSpace": "Fapto39w", "graphics": "gPFItqNg", "label": "JV4TeJqw", "osVersion": "wtDVfw5U", "processor": "H4KDUhMJ", "ram": "BkEay79P", "soundCard": "wGxPXjlZ"}], "79RCzown": [{"additionals": "NGMPtQcf", "directXVersion": "HtI7sSaJ", "diskSpace": "0IpmpU8C", "graphics": "R1rJWfVG", "label": "nDz0sUbG", "osVersion": "9X4BdHgN", "processor": "uJIotzpS", "ram": "xZwAjg9K", "soundCard": "Ei5205Mv"}, {"additionals": "2id7ql5m", "directXVersion": "iNzBnFIZ", "diskSpace": "IYDNi6PP", "graphics": "GpzdkcTF", "label": "zxtKV6lT", "osVersion": "Es2syMEZ", "processor": "NU2efIzB", "ram": "n3sI6x83", "soundCard": "1UU3LFtR"}, {"additionals": "81KdTBoB", "directXVersion": "qqSQ1OFv", "diskSpace": "vRS7e265", "graphics": "JDOX0FsI", "label": "w9ABhofO", "osVersion": "urQK3x8x", "processor": "PUmpBxgc", "ram": "aQRqaiPK", "soundCard": "LTc56x1i"}]}, "platforms": ["MacOS", "Android", "IOS"], "players": ["Multi", "MMO", "MMO"], "primaryGenre": "Strategy", "publisher": "r6bGKujd", "releaseDate": "1987-06-12T00:00:00Z", "websiteUrl": "B3jvaNv6"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateApp' test.out

#- 139 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'evTo0nqP' \
    --namespace $AB_NAMESPACE \
    --storeId 'ES9f8mwm' \
    --body '{"featuresToCheck": ["REWARD", "CAMPAIGN", "IAP"]}' \
    > test.out 2>&1
eval_tap $? 139 'DisableItem' test.out

#- 140 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'ZPB6tQ5R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetItemDynamicData' test.out

#- 141 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId 'Kiaz9ApS' \
    --namespace $AB_NAMESPACE \
    --storeId '7X0m02xF' \
    > test.out 2>&1
eval_tap $? 141 'EnableItem' test.out

#- 142 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'MHTceLlj' \
    --itemId '3vp8Z7Hf' \
    --namespace $AB_NAMESPACE \
    --storeId 'hKRKKQzY' \
    > test.out 2>&1
eval_tap $? 142 'FeatureItem' test.out

#- 143 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'AirN9pkJ' \
    --itemId '5qVFLLcm' \
    --namespace $AB_NAMESPACE \
    --storeId 'RzVEPF9n' \
    > test.out 2>&1
eval_tap $? 143 'DefeatureItem' test.out

#- 144 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'mLGjTF6K' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'hCdBIaoE' \
    --populateBundle 'true' \
    --region 'QlxpFGO2' \
    --storeId 'SMDgQ1Pn' \
    > test.out 2>&1
eval_tap $? 144 'GetLocaleItem' test.out

#- 145 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'YK7zEH6U' \
    --namespace $AB_NAMESPACE \
    --storeId 'F91Ld5Wj' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 41, "code": "JS0YmGYw", "comparison": "isGreaterThan", "name": "86UEmuHU", "predicateType": "SeasonTierPredicate", "value": "e3JNl3j1", "values": ["ySqeYlNO", "Q0lK9zlb", "11aVI31z"]}, {"anyOf": 8, "code": "2lANdIrH", "comparison": "isGreaterThanOrEqual", "name": "k0ysyaKa", "predicateType": "SeasonTierPredicate", "value": "p2sr7WAz", "values": ["vz9xBWwd", "2679mt3N", "o1vAnrAw"]}, {"anyOf": 27, "code": "XoexJtrO", "comparison": "isNot", "name": "S9lqTdJy", "predicateType": "EntitlementPredicate", "value": "EVtwGc0g", "values": ["NbifrNVD", "H9E9TWJT", "PGVE6clF"]}]}, {"operator": "and", "predicates": [{"anyOf": 14, "code": "KPvSco39", "comparison": "isLessThanOrEqual", "name": "XcbvNIFM", "predicateType": "StatisticCodePredicate", "value": "uqTQfy19", "values": ["myIj6U6U", "VWua5mST", "8BQhBJ81"]}, {"anyOf": 28, "code": "tcsbJu5J", "comparison": "isLessThan", "name": "a0lKz04o", "predicateType": "SeasonPassPredicate", "value": "PNjVOM1L", "values": ["LLNkmbSg", "v4ufK9nZ", "haWzKAhG"]}, {"anyOf": 59, "code": "c5QdQtRL", "comparison": "isGreaterThan", "name": "Gmxkzxk1", "predicateType": "EntitlementPredicate", "value": "aO4mdXrx", "values": ["XeBFYQD9", "8LaonOO7", "yczL2Jo8"]}]}, {"operator": "and", "predicates": [{"anyOf": 76, "code": "zcUpbLvP", "comparison": "isLessThanOrEqual", "name": "hn1153es", "predicateType": "EntitlementPredicate", "value": "IlpZFa85", "values": ["GRjcBUv1", "3ETHEmHF", "wzXHCUqF"]}, {"anyOf": 81, "code": "jqJwYJen", "comparison": "excludes", "name": "aGZUkRBw", "predicateType": "SeasonPassPredicate", "value": "mD3OSyYn", "values": ["i6CEtR1Z", "gzN81UZ3", "HkhgPlaX"]}, {"anyOf": 97, "code": "ThOj6Vck", "comparison": "includes", "name": "vGOt5fiu", "predicateType": "SeasonPassPredicate", "value": "9Bo77ILQ", "values": ["vWTD5mkZ", "dA5sou6d", "1XMNCnhe"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateItemPurchaseCondition' test.out

#- 146 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'Uo7Y6sug' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "DLC", "DLC"]' \
    --storeId '9ggnvo7b' \
    > test.out 2>&1
eval_tap $? 146 'QueryItemReferences' test.out

#- 147 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'm6zU8uMR' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "uiLzHrky"}' \
    > test.out 2>&1
eval_tap $? 147 'ReturnItem' test.out

#- 148 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 't23UklLE' \
    --offset '67' \
    --tag 'AChPdg6o' \
    > test.out 2>&1
eval_tap $? 148 'QueryKeyGroups' test.out

#- 149 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "s5L8nSNo", "name": "ePvfqC0Q", "status": "INACTIVE", "tags": ["Ha2liyff", "d1jgAabt", "9M7BncZx"]}' \
    > test.out 2>&1
eval_tap $? 149 'CreateKeyGroup' test.out

#- 150 GetKeyGroupByBoothName
eval_tap 0 150 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 151 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId '5C1fUXAO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetKeyGroup' test.out

#- 152 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'URF3BqJf' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wWHOpjG1", "name": "3UFXrj1X", "status": "ACTIVE", "tags": ["Fot12lou", "N5xCHl5B", "xPmn7gDO"]}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateKeyGroup' test.out

#- 153 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'tyX46VOh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroupDynamic' test.out

#- 154 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'tOlOyti0' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '100' \
    --status 'ACQUIRED' \
    > test.out 2>&1
eval_tap $? 154 'ListKeys' test.out

#- 155 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'Uo1zvwpY' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 155 'UploadKeys' test.out

#- 156 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'q5vSLNWa' \
    --limit '80' \
    --offset '30' \
    --orderNos '["c2YMLfy0", "vvC6h9Vs", "9gN3IvRY"]' \
    --sortBy 'YUd54abb' \
    --startTime 'blAnFM30' \
    --status 'CHARGED' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 156 'QueryOrders' test.out

#- 157 GetOrderStatistics
samples/cli/sample-apps Platform getOrderStatistics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 157 'GetOrderStatistics' test.out

#- 158 GetOrder
samples/cli/sample-apps Platform getOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'twZrjI3n' \
    > test.out 2>&1
eval_tap $? 158 'GetOrder' test.out

#- 159 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'lDILD35M' \
    --body '{"description": "ATLrHYZ8"}' \
    > test.out 2>&1
eval_tap $? 159 'RefundOrder' test.out

#- 160 GetPaymentCallbackConfig
eval_tap 0 160 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 161 UpdatePaymentCallbackConfig
eval_tap 0 161 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 162 GetPaymentMerchantConfig
samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 162 'GetPaymentMerchantConfig' test.out

#- 163 UpdatePaymentDomainWhitelistConfig
samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace $AB_NAMESPACE \
    --body '{"domains": ["pP0CFACm", "xAbL4clE", "cbelA8Ws"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePaymentDomainWhitelistConfig' test.out

#- 164 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate '33NYXydy' \
    --externalId '6D5TgS1Y' \
    --limit '32' \
    --notificationSource 'STRIPE' \
    --notificationType 'iAFuHeQ1' \
    --offset '95' \
    --paymentOrderNo 'eu00NqNS' \
    --startDate 'NPXNCkqp' \
    --status 'ERROR' \
    > test.out 2>&1
eval_tap $? 164 'QueryPaymentNotifications' test.out

#- 165 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'MXGJqofV' \
    --limit '32' \
    --offset '75' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 165 'QueryPaymentOrders' test.out

#- 166 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BRucNJEP", "currencyNamespace": "OmAkb81Y", "customParameters": {"3PTpuZpN": {}, "toSGGwaH": {}, "jR7bhkcw": {}}, "description": "3oTlgm3d", "extOrderNo": "cIoRDUCe", "extUserId": "MM1ROw3Q", "itemType": "SUBSCRIPTION", "language": "Bg_814", "metadata": {"CsyyQVr9": "soRyPk1O", "bHfnJgN8": "Ff4HkEJM", "0f3kVRB4": "ji9N1rqq"}, "notifyUrl": "d93YYx9T", "omitNotification": false, "platform": "vvmSz41V", "price": 24, "recurringPaymentOrderNo": "aholzylr", "region": "gGs4gLn0", "returnUrl": "m4x1pgKI", "sandbox": false, "sku": "PLd3Pyvw", "subscriptionId": "tIM7tuNf", "targetNamespace": "GCKJNEvL", "targetUserId": "KFIXCMG6", "title": "NsJPy4Mi"}' \
    > test.out 2>&1
eval_tap $? 166 'CreatePaymentOrderByDedicated' test.out

#- 167 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'WF2PDdvb' \
    > test.out 2>&1
eval_tap $? 167 'ListExtOrderNoByExtTxId' test.out

#- 168 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'cnboP29o' \
    > test.out 2>&1
eval_tap $? 168 'GetPaymentOrder' test.out

#- 169 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'NLZrNFVx' \
    --body '{"extTxId": "JPpcVUHc", "paymentMethod": "a9cyDGpN", "paymentProvider": "CHECKOUT"}' \
    > test.out 2>&1
eval_tap $? 169 'ChargePaymentOrder' test.out

#- 170 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'fGbthFh9' \
    --body '{"description": "OVBc543s"}' \
    > test.out 2>&1
eval_tap $? 170 'RefundPaymentOrderByDedicated' test.out

#- 171 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OWslrisY' \
    --body '{"amount": 22, "currencyCode": "f12K1EQy", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 100, "vat": 54}' \
    > test.out 2>&1
eval_tap $? 171 'SimulatePaymentOrderNotification' test.out

#- 172 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'ZrhZHCrW' \
    > test.out 2>&1
eval_tap $? 172 'GetPaymentOrderChargeStatus' test.out

#- 173 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'TLyuhn33' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "s2OI7bdD", "serviceLabel": 72}' \
    > test.out 2>&1
eval_tap $? 173 'GetPsnEntitlementOwnership' test.out

#- 174 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'WgqM9WG1' \
    --body '{"delegationToken": "Hzc7tOsl", "sandboxId": "D8h0FOCz"}' \
    > test.out 2>&1
eval_tap $? 174 'GetXboxEntitlementOwnership' test.out

#- 175 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    > test.out 2>&1
eval_tap $? 175 'GetPlatformEntitlementConfig' test.out

#- 176 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Oculus", "Nintendo", "GooglePlay"]}' \
    > test.out 2>&1
eval_tap $? 176 'UpdatePlatformEntitlementConfig' test.out

#- 177 GetPlatformWalletConfig
samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformWalletConfig' test.out

#- 178 UpdatePlatformWalletConfig
samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Other' \
    --body '{"allowedBalanceOrigins": ["System", "Epic", "Nintendo"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformWalletConfig' test.out

#- 179 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'GooglePlay' \
    > test.out 2>&1
eval_tap $? 179 'ResetPlatformWalletConfig' test.out

#- 180 GetRevocationConfig
samples/cli/sample-apps Platform getRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 180 'GetRevocationConfig' test.out

#- 181 UpdateRevocationConfig
samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace $AB_NAMESPACE \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    > test.out 2>&1
eval_tap $? 181 'UpdateRevocationConfig' test.out

#- 182 DeleteRevocationConfig
samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 182 'DeleteRevocationConfig' test.out

#- 183 QueryRevocationHistories
samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace $AB_NAMESPACE \
    --endTime 'nUhNFjCd' \
    --limit '58' \
    --offset '89' \
    --source 'DLC' \
    --startTime 'LbcKLhOi' \
    --status 'SUCCESS' \
    --transactionId 'gB6EiNri' \
    --userId 'qO3M2DZX' \
    > test.out 2>&1
eval_tap $? 183 'QueryRevocationHistories' test.out

#- 184 GetRevocationPluginConfig
samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 184 'GetRevocationPluginConfig' test.out

#- 185 UpdateRevocationPluginConfig
samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "d8LtcHLI"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "w9Fa9FPb"}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 185 'UpdateRevocationPluginConfig' test.out

#- 186 DeleteRevocationPluginConfig
samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 186 'DeleteRevocationPluginConfig' test.out

#- 187 UploadRevocationPluginConfigCert
samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 187 'UploadRevocationPluginConfigCert' test.out

#- 188 CreateReward
samples/cli/sample-apps Platform createReward \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nRkSHLd5", "eventTopic": "ZrJhHUcS", "maxAwarded": 66, "maxAwardedPerUser": 53, "namespaceExpression": "QzABUAn9", "rewardCode": "cfTyxTEw", "rewardConditions": [{"condition": "B6r4oG0u", "conditionName": "SCAtEssW", "eventName": "7Rau9HQ2", "rewardItems": [{"duration": 87, "endDate": "1983-02-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RruXDQtM", "quantity": 95, "sku": "CajYJODq"}, {"duration": 64, "endDate": "1996-08-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "p9GUfEtN", "quantity": 53, "sku": "PiiJ9RaR"}, {"duration": 36, "endDate": "1991-11-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Rb579m5O", "quantity": 73, "sku": "oJG5Wqxf"}]}, {"condition": "9Bk4Ev5m", "conditionName": "tYwedvYV", "eventName": "As2DM17y", "rewardItems": [{"duration": 18, "endDate": "1993-11-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LFBSwmzv", "quantity": 53, "sku": "cfhfi01Y"}, {"duration": 48, "endDate": "1988-03-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BaB7TdWZ", "quantity": 9, "sku": "Zk0pze1k"}, {"duration": 61, "endDate": "1989-11-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "w8615x7t", "quantity": 2, "sku": "4RbphzXn"}]}, {"condition": "ZexhX1qA", "conditionName": "nHQI1cJg", "eventName": "nawOgLYl", "rewardItems": [{"duration": 85, "endDate": "1993-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "da5UQIkJ", "quantity": 98, "sku": "nvo4DKci"}, {"duration": 63, "endDate": "1972-02-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "g4cowWvo", "quantity": 49, "sku": "edHykr1q"}, {"duration": 31, "endDate": "1983-07-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "osXj8ZVl", "quantity": 99, "sku": "MVUkifjU"}]}], "userIdExpression": "Rju9dg2g"}' \
    > test.out 2>&1
eval_tap $? 188 'CreateReward' test.out

#- 189 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic '05dsNty0' \
    --limit '32' \
    --offset '77' \
    --sortBy '["rewardCode:desc", "rewardCode:asc"]' \
    > test.out 2>&1
eval_tap $? 189 'QueryRewards' test.out

#- 190 ExportRewards
samples/cli/sample-apps Platform exportRewards \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 190 'ExportRewards' test.out

#- 191 ImportRewards
samples/cli/sample-apps Platform importRewards \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 191 'ImportRewards' test.out

#- 192 GetReward
samples/cli/sample-apps Platform getReward \
    --namespace $AB_NAMESPACE \
    --rewardId '6UqEDWCO' \
    > test.out 2>&1
eval_tap $? 192 'GetReward' test.out

#- 193 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'h9fNQBQS' \
    --body '{"description": "1wHa9gTk", "eventTopic": "31vaZVsA", "maxAwarded": 40, "maxAwardedPerUser": 26, "namespaceExpression": "TtsMk0hy", "rewardCode": "yD4X4Ety", "rewardConditions": [{"condition": "CkV0aW50", "conditionName": "Ji2JnA2O", "eventName": "VtpSrbPY", "rewardItems": [{"duration": 11, "endDate": "1990-09-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "a5Htob0m", "quantity": 40, "sku": "YeaWimHj"}, {"duration": 31, "endDate": "1979-12-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "igH14Wgq", "quantity": 80, "sku": "rVhwmlWV"}, {"duration": 62, "endDate": "1974-01-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4SxEO1oi", "quantity": 96, "sku": "UP8VxFmH"}]}, {"condition": "9MeqcgHj", "conditionName": "cK4gh3K0", "eventName": "2FgsE6lT", "rewardItems": [{"duration": 9, "endDate": "1982-06-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "my1zppyj", "quantity": 73, "sku": "3T2l2xqf"}, {"duration": 10, "endDate": "1995-06-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sWzXYHic", "quantity": 38, "sku": "96fFpgoA"}, {"duration": 4, "endDate": "1981-02-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bUJA1fo7", "quantity": 57, "sku": "50w4DhlH"}]}, {"condition": "OARBL9Zl", "conditionName": "4bwK0KDs", "eventName": "s8WCLuiG", "rewardItems": [{"duration": 62, "endDate": "1996-03-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "vqIZntEc", "quantity": 7, "sku": "FZsOePz0"}, {"duration": 41, "endDate": "1992-05-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "W8k2Dtml", "quantity": 86, "sku": "XwPEVJHn"}, {"duration": 70, "endDate": "1977-08-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kltaYcal", "quantity": 49, "sku": "FTcwCPU5"}]}], "userIdExpression": "MBSkrn2e"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateReward' test.out

#- 194 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId '09p4Co75' \
    > test.out 2>&1
eval_tap $? 194 'DeleteReward' test.out

#- 195 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'YwHseVef' \
    --body '{"payload": {"xcCV5pvM": {}, "ZZCNti4C": {}, "HO4IsR3J": {}}}' \
    > test.out 2>&1
eval_tap $? 195 'CheckEventCondition' test.out

#- 196 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'nl0aN7Rb' \
    --body '{"conditionName": "LxZNUoUi", "userId": "5FqsTzux"}' \
    > test.out 2>&1
eval_tap $? 196 'DeleteRewardConditionRecord' test.out

#- 197 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'IP08EExq' \
    --limit '82' \
    --offset '94' \
    --start '4FL5QsZb' \
    --storeId 'L5hjt3A8' \
    --viewId 'SlUG1xWc' \
    > test.out 2>&1
eval_tap $? 197 'QuerySections' test.out

#- 198 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'ip8JBrWV' \
    --body '{"active": true, "displayOrder": 20, "endDate": "1983-03-09T00:00:00Z", "ext": {"Ub8rCzKt": {}, "WWYKOiwS": {}, "pVFn4XPL": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 75, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "AWhHziSw", "sku": "E77SxVr3"}, {"id": "osQ5mXL6", "sku": "s7Wnc2zB"}, {"id": "4r6Xmo2i", "sku": "2aV3N320"}], "localizations": {"vQ3pTamA": {"description": "Khe7EGkJ", "localExt": {"EfMtjtiu": {}, "5ifyqphP": {}, "QN5bD6wi": {}}, "longDescription": "cAmUsqBI", "title": "0ju1qLB4"}, "qimmfhCH": {"description": "yKWtTLuq", "localExt": {"sVxHbK8v": {}, "ImK4t8be": {}, "1nKz4MsR": {}}, "longDescription": "NKhmJBy3", "title": "hvHUiLho"}, "ITvCmbCL": {"description": "Dkk1WLM0", "localExt": {"GxfrbCxe": {}, "GVwzewsT": {}, "IOCG2frW": {}}, "longDescription": "qIuxNXB3", "title": "0pcBvS3s"}}, "name": "ToGSjee4", "rotationType": "FIXED_PERIOD", "startDate": "1989-08-31T00:00:00Z", "viewId": "2Ah5yCyA"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateSection' test.out

#- 199 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'YXlElAlk' \
    > test.out 2>&1
eval_tap $? 199 'PurgeExpiredSection' test.out

#- 200 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId '4kNSmR0b' \
    --storeId 'O5A0BMMH' \
    > test.out 2>&1
eval_tap $? 200 'GetSection' test.out

#- 201 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId '9NG8sP6X' \
    --storeId 'QCMeDQMm' \
    --body '{"active": true, "displayOrder": 99, "endDate": "1990-12-20T00:00:00Z", "ext": {"TdpWcKBf": {}, "MHtdAgcz": {}, "OMlYLYWB": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 68, "itemCount": 6, "rule": "SEQUENCE"}, "items": [{"id": "mLa4Itzo", "sku": "fpXisyVL"}, {"id": "Mb0vPmZM", "sku": "r6e8awDl"}, {"id": "SMWPVAMC", "sku": "aag0NvrW"}], "localizations": {"dcI9OoiC": {"description": "TArp167E", "localExt": {"zOEZnwko": {}, "6rjHBVr6": {}, "NkXmmK6z": {}}, "longDescription": "0oppYCYs", "title": "01qONWyc"}, "YZ3Q9tNF": {"description": "PZ2edYy4", "localExt": {"VLP97kPj": {}, "oAsZlqOb": {}, "UvFxHjbr": {}}, "longDescription": "MahoE5rw", "title": "YU84lilS"}, "HlgfZoWc": {"description": "BQDajo2X", "localExt": {"lMVshn9o": {}, "3drmbRqZ": {}, "eN6G6nV4": {}}, "longDescription": "c8Pn04IU", "title": "ByZGIpJP"}}, "name": "0TJkLSll", "rotationType": "NONE", "startDate": "1992-12-12T00:00:00Z", "viewId": "L0hpEhOk"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateSection' test.out

#- 202 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'qzX5xBnl' \
    --storeId 'zMIzNaIy' \
    > test.out 2>&1
eval_tap $? 202 'DeleteSection' test.out

#- 203 ListStores
samples/cli/sample-apps Platform listStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 203 'ListStores' test.out

#- 204 CreateStore
samples/cli/sample-apps Platform createStore \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "PTsKwyun", "defaultRegion": "i28RXgVW", "description": "QYsBj0tH", "supportedLanguages": ["HIBzOpHL", "3gL8UB6Z", "Wxk0Fv2K"], "supportedRegions": ["GkjRrI7m", "0mUV7MZc", "GfuqDSgQ"], "title": "VUwOh1Sg"}' \
    > test.out 2>&1
eval_tap $? 204 'CreateStore' test.out

#- 205 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'APP' \
    > test.out 2>&1
eval_tap $? 205 'GetCatalogDefinition' test.out

#- 206 DownloadCSVTemplates
samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 206 'DownloadCSVTemplates' test.out

#- 207 ExportStoreByCSV
samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace $AB_NAMESPACE \
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["FkS7ZAeE", "FrgBD6d8", "YIotTw9z"], "idsToBeExported": ["72Yh98GV", "b8Taz1zj", "bfBndaoY"], "storeId": "8S0Jlhuh"}' \
    > test.out 2>&1
eval_tap $? 207 'ExportStoreByCSV' test.out

#- 208 ImportStore
eval_tap 0 208 'ImportStore # SKIP deprecated' test.out

#- 209 GetPublishedStore
samples/cli/sample-apps Platform getPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 209 'GetPublishedStore' test.out

#- 210 DeletePublishedStore
samples/cli/sample-apps Platform deletePublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 210 'DeletePublishedStore' test.out

#- 211 GetPublishedStoreBackup
samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 211 'GetPublishedStoreBackup' test.out

#- 212 RollbackPublishedStore
samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 212 'RollbackPublishedStore' test.out

#- 213 GetStore
samples/cli/sample-apps Platform getStore \
    --namespace $AB_NAMESPACE \
    --storeId 'DzGXfgGo' \
    > test.out 2>&1
eval_tap $? 213 'GetStore' test.out

#- 214 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'S5p8tVl7' \
    --body '{"defaultLanguage": "9Y3nbvDU", "defaultRegion": "BWL84DCZ", "description": "FCy01Z1Y", "supportedLanguages": ["ZUeIZEue", "RTC4sRPf", "5VTNvLGk"], "supportedRegions": ["VH8vb8VS", "14bBu1UD", "3kvVNKV4"], "title": "Y82zOJ1z"}' \
    > test.out 2>&1
eval_tap $? 214 'UpdateStore' test.out

#- 215 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'FbxCxM1I' \
    > test.out 2>&1
eval_tap $? 215 'DeleteStore' test.out

#- 216 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'eWxXtI0l' \
    --action 'DELETE' \
    --itemSku 'CxlpCKG3' \
    --itemType 'OPTIONBOX' \
    --limit '52' \
    --offset '52' \
    --selected 'true' \
    --sortBy '["updatedAt:asc", "createdAt:asc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'VIEW' \
    --updatedAtEnd 'WOgBhW0s' \
    --updatedAtStart 'K7ZzdXnh' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 216 'QueryChanges' test.out

#- 217 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'ye97WKc0' \
    > test.out 2>&1
eval_tap $? 217 'PublishAll' test.out

#- 218 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'iZnAV20j' \
    > test.out 2>&1
eval_tap $? 218 'PublishSelected' test.out

#- 219 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'NOtuBDLH' \
    > test.out 2>&1
eval_tap $? 219 'SelectAllRecords' test.out

#- 220 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId 'tFtUoAHY' \
    --action 'UPDATE' \
    --itemSku '6uwcXDZg' \
    --itemType 'SEASON' \
    --selected 'false' \
    --type 'ITEM' \
    --updatedAtEnd 'L3cWdPD9' \
    --updatedAtStart '9bueUbpI' \
    > test.out 2>&1
eval_tap $? 220 'SelectAllRecordsByCriteria' test.out

#- 221 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'SAiFuwjO' \
    --action 'DELETE' \
    --itemSku 'GjhOZOX7' \
    --itemType 'MEDIA' \
    --type 'VIEW' \
    --updatedAtEnd 'oLEl8koA' \
    --updatedAtStart 'jd62zfse' \
    > test.out 2>&1
eval_tap $? 221 'GetStatistic' test.out

#- 222 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId 'DMGkm3SL' \
    > test.out 2>&1
eval_tap $? 222 'UnselectAllRecords' test.out

#- 223 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'QIPk8W9M' \
    --namespace $AB_NAMESPACE \
    --storeId '7qIA0FwI' \
    > test.out 2>&1
eval_tap $? 223 'SelectRecord' test.out

#- 224 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId 'uFrCMYe3' \
    --namespace $AB_NAMESPACE \
    --storeId 'AUzKbmal' \
    > test.out 2>&1
eval_tap $? 224 'UnselectRecord' test.out

#- 225 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'YOzGKrY4' \
    --targetStoreId 'd6bFLDuo' \
    > test.out 2>&1
eval_tap $? 225 'CloneStore' test.out

#- 226 ExportStore
eval_tap 0 226 'ExportStore # SKIP deprecated' test.out

#- 227 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'pIh77c0x' \
    --end 'rFtaPmzM' \
    --limit '10' \
    --offset '70' \
    --sortBy 'fDYfMC0b' \
    --start 'JgardEnf' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 227 'QueryImportHistory' test.out

#- 228 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'KKnxEwaF' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'A3ZmVGKQ' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 228 'ImportStoreByCSV' test.out

#- 229 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId 'CYOFyfUI' \
    --limit '85' \
    --offset '31' \
    --sku 'RyIRALgw' \
    --status 'EXPIRED' \
    --subscribedBy 'USER' \
    --userId 'EX6ftyUs' \
    > test.out 2>&1
eval_tap $? 229 'QuerySubscriptions' test.out

#- 230 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Q8ZgnBdK' \
    > test.out 2>&1
eval_tap $? 230 'RecurringChargeSubscription' test.out

#- 231 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'q4EYFO9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'GetTicketDynamic' test.out

#- 232 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'ECftnvOn' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "jlx8fyua"}' \
    > test.out 2>&1
eval_tap $? 232 'DecreaseTicketSale' test.out

#- 233 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'l0Y2UODF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketBoothID' test.out

#- 234 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'PiWIlw6Q' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69, "orderNo": "mFLM8QzR"}' \
    > test.out 2>&1
eval_tap $? 234 'IncreaseTicketSale' test.out

#- 235 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 39, "currencyCode": "UsXQJIpy", "expireAt": "1986-02-22T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "uuNevDW7", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "Z9oHq5QE", "entitlementOrigin": "Twitch", "itemIdentity": "Ge99NN4s", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "qvHUdCiQ"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 13, "currencyCode": "fYTXPC2b", "expireAt": "1980-04-26T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "Q2WDjQxk", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 62, "entitlementCollectionId": "lzh8diTb", "entitlementOrigin": "Other", "itemIdentity": "VB5OVGfy", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "aaUw677T"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 57, "currencyCode": "Nr7eVRML", "expireAt": "1977-02-19T00:00:00Z"}, "debitPayload": {"count": 2, "currencyCode": "oyDROFXC", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 63, "entitlementCollectionId": "MF8hXSr7", "entitlementOrigin": "System", "itemIdentity": "pP3ZMLhl", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 48, "entitlementId": "a3Twivmk"}, "type": "DEBIT_WALLET"}], "userId": "kuZ3uKI6"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 58, "currencyCode": "U6RLjPNO", "expireAt": "1998-01-12T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "11E0Elw9", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "6FSXF6eV", "entitlementOrigin": "Epic", "itemIdentity": "UJu5sI1L", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 86, "entitlementId": "zNZKmxsr"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 89, "currencyCode": "0jVN32UE", "expireAt": "1981-06-18T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "MuWzZ5KZ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "VTz6zjgj", "entitlementOrigin": "Xbox", "itemIdentity": "W8M6Z15B", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "mBmw3ucC"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 90, "currencyCode": "J1v5YDii", "expireAt": "1997-10-09T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "rHsUy3rK", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 77, "entitlementCollectionId": "bUAOiqJk", "entitlementOrigin": "Oculus", "itemIdentity": "FtHwamBG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "jm8GOFJG"}, "type": "DEBIT_WALLET"}], "userId": "EDBGhSmr"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 90, "currencyCode": "If64zHkk", "expireAt": "1988-07-31T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "ZyMc0zf5", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "Mz2MHkHD", "entitlementOrigin": "Playstation", "itemIdentity": "hhjYF8S9", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "V8mD87Pu"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 42, "currencyCode": "PuX3Lntv", "expireAt": "1986-11-25T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "1GfrOtie", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 28, "entitlementCollectionId": "RT29x3Gf", "entitlementOrigin": "Xbox", "itemIdentity": "wNiceKKs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "OVldc8EL"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 97, "currencyCode": "m4HLNEyl", "expireAt": "1973-01-29T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "ISrOQMu8", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "SCC0T5Qs", "entitlementOrigin": "Playstation", "itemIdentity": "KoqD67g2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "5w7p31DV"}, "type": "DEBIT_WALLET"}], "userId": "v3Srvrx1"}], "metadata": {"2NHD9403": {}, "cjR8IV2B": {}, "cMk7CRCL": {}}, "needPreCheck": false, "transactionId": "UcTZzSQF", "type": "tRmiazmc"}' \
    > test.out 2>&1
eval_tap $? 235 'Commit' test.out

#- 236 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '35' \
    --status 'INIT' \
    --type 'HeGbSged' \
    --userId 'RiCnKorv' \
    > test.out 2>&1
eval_tap $? 236 'GetTradeHistoryByCriteria' test.out

#- 237 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'c5wULGU7' \
    > test.out 2>&1
eval_tap $? 237 'GetTradeHistoryByTransactionId' test.out

#- 238 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ug8jdFUM' \
    --body '{"achievements": [{"id": "CuQXFRJP", "value": 55}, {"id": "tuAac9OT", "value": 10}, {"id": "GOIPsrHK", "value": 29}], "steamUserId": "oCcFb6gB"}' \
    > test.out 2>&1
eval_tap $? 238 'UnlockSteamUserAchievement' test.out

#- 239 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'WQhNEnO0' \
    --xboxUserId '4XVGOEtc' \
    > test.out 2>&1
eval_tap $? 239 'GetXblUserAchievements' test.out

#- 240 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'MDY8Jx7F' \
    --body '{"achievements": [{"id": "Uk3V5kUN", "percentComplete": 60}, {"id": "JFLG2EBI", "percentComplete": 46}, {"id": "iunIUo7g", "percentComplete": 86}], "serviceConfigId": "pwi06zuh", "titleId": "DEbjyHSy", "xboxUserId": "gUn8tWn2"}' \
    > test.out 2>&1
eval_tap $? 240 'UpdateXblUserAchievement' test.out

#- 241 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'pKFi7rxa' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeCampaign' test.out

#- 242 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'IytPKXAR' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeEntitlement' test.out

#- 243 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'xh945QlW' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeFulfillment' test.out

#- 244 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'gUrgArfe' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeIntegration' test.out

#- 245 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'udsFs6eF' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeOrder' test.out

#- 246 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'DlrrWCrd' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizePayment' test.out

#- 247 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'wTYExKog' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeRevocation' test.out

#- 248 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'eqdLtiwY' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizeSubscription' test.out

#- 249 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId '4xJT586L' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeWallet' test.out

#- 250 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'J6F3Qb8T' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 250 'GetUserDLCByPlatform' test.out

#- 251 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'qtUGWRWh' \
    --includeAllNamespaces 'false' \
    --status 'REVOKE_FAILED' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 251 'GetUserDLC' test.out

#- 252 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'mkk4qdmg' \
    --activeOnly 'true' \
    --appType 'SOFTWARE' \
    --collectionId 'ixJ2QpTU' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName 'dDqrao3H' \
    --features '["tmeSAApM", "rvGCDvDr", "kAXlv6Id"]' \
    --fuzzyMatchName 'true' \
    --ignoreActiveDate 'true' \
    --itemId '["IeUiPwrF", "nrjulG67", "4BSmBnEd"]' \
    --limit '30' \
    --offset '50' \
    --origin 'Steam' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserEntitlements' test.out

#- 253 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'aR1DvLf6' \
    --body '[{"collectionId": "Xfm4IlqB", "endDate": "1980-09-23T00:00:00Z", "grantedCode": "daZs8wqo", "itemId": "Rr4KCf18", "itemNamespace": "S2gyQRKR", "language": "HcwT_KSoG_382", "metadata": {"rMDpcmu4": {}, "a39KlMRf": {}, "3P3yRciT": {}}, "origin": "Twitch", "quantity": 32, "region": "MFOGDTEg", "source": "ACHIEVEMENT", "startDate": "1986-12-20T00:00:00Z", "storeId": "Sx6xah90"}, {"collectionId": "PTFqlhou", "endDate": "1972-04-03T00:00:00Z", "grantedCode": "s30hWf95", "itemId": "aLW0FHvY", "itemNamespace": "PQ1za9dB", "language": "Uh_facV_436", "metadata": {"mgCO3Crj": {}, "aNUVR4Ze": {}, "PWJC7GIm": {}}, "origin": "Playstation", "quantity": 50, "region": "g9x72J2r", "source": "PROMOTION", "startDate": "1990-01-22T00:00:00Z", "storeId": "i1Pd4jd8"}, {"collectionId": "XXAwBDGP", "endDate": "1996-03-26T00:00:00Z", "grantedCode": "cWskxyq7", "itemId": "O1fRmCSU", "itemNamespace": "Jy58prxq", "language": "WW_qHYU-KW", "metadata": {"R5zGkrXK": {}, "F5Hxt23R": {}, "J65k5fNf": {}}, "origin": "Playstation", "quantity": 50, "region": "eLZpoe1g", "source": "REDEEM_CODE", "startDate": "1983-03-24T00:00:00Z", "storeId": "wb8kuH9R"}]' \
    > test.out 2>&1
eval_tap $? 253 'GrantUserEntitlement' test.out

#- 254 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'XxjakmYh' \
    --activeOnly 'true' \
    --appId 'bKLb39Lp' \
    > test.out 2>&1
eval_tap $? 254 'GetUserAppEntitlementByAppId' test.out

#- 255 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'OjJoX2se' \
    --activeOnly 'false' \
    --limit '46' \
    --offset '17' \
    --appType 'SOFTWARE' \
    > test.out 2>&1
eval_tap $? 255 'QueryUserEntitlementsByAppType' test.out

#- 256 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId '21uzfQuP' \
    --ids '["gP9etGeH", "It6qawes", "bP8lSlHy"]' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementsByIds' test.out

#- 257 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'yR0TP2RB' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'QcObbO6i' \
    --itemId 'TZN7DiPo' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementByItemId' test.out

#- 258 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '1nKh11dv' \
    --ids '["jDpU8MR1", "EZpkNsXM", "v7WOA1cr"]' \
    --platform 'uywLXxh3' \
    > test.out 2>&1
eval_tap $? 258 'GetUserActiveEntitlementsByItemIds' test.out

#- 259 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'yblWmHod' \
    --activeOnly 'false' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'z07Cp2D8' \
    --sku 'YVhrhTib' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementBySku' test.out

#- 260 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'mocsxivQ' \
    --appIds '["mENypBx8", "u79GBsLE", "SBi7ne7k"]' \
    --itemIds '["celh0jtr", "OvZ9gsas", "MK8vL3aY"]' \
    --platform 'EQUxYnWj' \
    --skus '["bJNnkFif", "35wnJC8U", "rI2RYbER"]' \
    > test.out 2>&1
eval_tap $? 260 'ExistsAnyUserActiveEntitlement' test.out

#- 261 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'yL9Z1TOD' \
    --platform 'dZW6vEBW' \
    --itemIds '["er5Jt4Hw", "3j9dIP48", "3q4sqQQX"]' \
    > test.out 2>&1
eval_tap $? 261 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 262 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'bu9sHm8m' \
    --appId 'QR3QVjvq' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 263 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'YIprn6Rz' \
    --entitlementClazz 'CODE' \
    --platform '9uJVCX2l' \
    --itemId '3ua96ZzR' \
    > test.out 2>&1
eval_tap $? 263 'GetUserEntitlementOwnershipByItemId' test.out

#- 264 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'fL8jpUPI' \
    --ids '["7KEuLt3N", "pAu6qFfp", "rvq9wruI"]' \
    --platform 'vt0tbOQU' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementOwnershipByItemIds' test.out

#- 265 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'VVVJVQzb' \
    --entitlementClazz 'OPTIONBOX' \
    --platform 'mAlUtezp' \
    --sku 'LvSTrkEw' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipBySku' test.out

#- 266 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '7MNK07D9' \
    > test.out 2>&1
eval_tap $? 266 'RevokeAllEntitlements' test.out

#- 267 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'fPrDnmHl' \
    --entitlementIds '7zxU2bD5' \
    > test.out 2>&1
eval_tap $? 267 'RevokeUserEntitlements' test.out

#- 268 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'EdYrHXcm' \
    --namespace $AB_NAMESPACE \
    --userId 'QWYJA1kc' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlement' test.out

#- 269 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId '4pbvc2bO' \
    --namespace $AB_NAMESPACE \
    --userId 'VCGIVTLu' \
    --body '{"collectionId": "0javX9dg", "endDate": "1973-04-28T00:00:00Z", "nullFieldList": ["zpi6u1dp", "3bmiKWLu", "XfGkJxE9"], "origin": "Xbox", "reason": "vwFFEflX", "startDate": "1993-09-04T00:00:00Z", "status": "ACTIVE", "useCount": 64}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserEntitlement' test.out

#- 270 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'PUtyusYZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gJn4eQau' \
    --body '{"metadata": {"nDEZ2muE": {}, "ZboZ3iK9": {}, "xKf9y6gk": {}}, "options": ["sOdeqG5Z", "GqArt31o", "shBAjhUw"], "platform": "Mf5eKhuE", "requestId": "4jvzKvDv", "useCount": 98}' \
    > test.out 2>&1
eval_tap $? 270 'ConsumeUserEntitlement' test.out

#- 271 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'TblM48Ea' \
    --namespace $AB_NAMESPACE \
    --userId 'eX9FOoTH' \
    > test.out 2>&1
eval_tap $? 271 'DisableUserEntitlement' test.out

#- 272 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'Bm0UFHMt' \
    --namespace $AB_NAMESPACE \
    --userId 'yFG8tIwZ' \
    > test.out 2>&1
eval_tap $? 272 'EnableUserEntitlement' test.out

#- 273 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'dTwn7eOk' \
    --namespace $AB_NAMESPACE \
    --userId 'fUCGDmHu' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementHistories' test.out

#- 274 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '1gFT81NR' \
    --namespace $AB_NAMESPACE \
    --userId 'WTTOUP1x' \
    --body '{"metadata": {"xitgqmT1": {}, "YKOcX8bX": {}, "wKIviiBF": {}}}' \
    > test.out 2>&1
eval_tap $? 274 'RevokeUserEntitlement' test.out

#- 275 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'QYF53T4k' \
    --namespace $AB_NAMESPACE \
    --userId 'wRVcrPPE' \
    --body '{"reason": "Oi3SO6eI", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlementByUseCount' test.out

#- 276 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'd8Ph7yXQ' \
    --namespace $AB_NAMESPACE \
    --userId 'YNF3UJx4' \
    --quantity '66' \
    > test.out 2>&1
eval_tap $? 276 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 277 RevokeUseCount
eval_tap 0 277 'RevokeUseCount # SKIP deprecated' test.out

#- 278 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'A28bAKbc' \
    --namespace $AB_NAMESPACE \
    --userId 'rHUZ2rY8' \
    --body '{"platform": "Zby5KG7Y", "requestId": "ucxJceAU", "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 278 'SellUserEntitlement' test.out

#- 279 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'K4bL6xlP' \
    --body '{"duration": 92, "endDate": "1998-11-15T00:00:00Z", "entitlementCollectionId": "FBcQjwfz", "entitlementOrigin": "GooglePlay", "itemId": "kb7WVN1E", "itemSku": "7i4tglGX", "language": "2622MWO5", "metadata": {"KxuEvaT7": {}, "dKKMjWsG": {}, "hQgvgeRG": {}}, "order": {"currency": {"currencyCode": "HVbO84kb", "currencySymbol": "QxieBgSq", "currencyType": "REAL", "decimals": 89, "namespace": "SCPLr0UZ"}, "ext": {"3zNah8hj": {}, "kufsCoyf": {}, "TiykNsEP": {}}, "free": false}, "orderNo": "X2kQcNe5", "origin": "GooglePlay", "overrideBundleItemQty": {"3cwlNV8a": 92, "AtQn7vmi": 95, "nL4WQMML": 14}, "quantity": 47, "region": "JhsGgLBs", "source": "EXPIRATION", "startDate": "1975-11-22T00:00:00Z", "storeId": "BrHsVdIk"}' \
    > test.out 2>&1
eval_tap $? 279 'FulfillItem' test.out

#- 280 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'Uo6tnc8D' \
    --body '{"code": "Ij9rcZ0z", "language": "Rqr_CEFh-238", "region": "qvVJmsfY"}' \
    > test.out 2>&1
eval_tap $? 280 'RedeemCode' test.out

#- 281 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'yYQw0cgY' \
    --body '{"itemId": "JG1jVJIF", "itemSku": "tTmNVUye", "quantity": 57}' \
    > test.out 2>&1
eval_tap $? 281 'PreCheckFulfillItem' test.out

#- 282 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'yu7dC5n5' \
    --body '{"entitlementCollectionId": "fckrB0TW", "entitlementOrigin": "Other", "metadata": {"8FLEybDf": {}, "uayPa7Mc": {}, "5umNiw0l": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "15hIuBYS", "namespace": "XQf8GIyE"}, "item": {"itemId": "gPQVhwyp", "itemName": "0Aym81tC", "itemSku": "6dSyycaB", "itemType": "XNtvUHwG"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "ZV7DIoKM", "namespace": "VEDAyKjM"}, "item": {"itemId": "TtPjwEyo", "itemName": "W8SAkCoe", "itemSku": "XqOkirU2", "itemType": "uTMceD4g"}, "quantity": 50, "type": "CURRENCY"}, {"currency": {"currencyCode": "425R20r2", "namespace": "kulVJg7i"}, "item": {"itemId": "8eeLv5Ft", "itemName": "0mOVIJrl", "itemSku": "luzecMs1", "itemType": "txHRtDfk"}, "quantity": 41, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "nDc1gfAE"}' \
    > test.out 2>&1
eval_tap $? 282 'FulfillRewards' test.out

#- 283 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId '2b60ehUb' \
    --endTime 'Q7wKHbM2' \
    --limit '67' \
    --offset '65' \
    --productId 'qZhnWwav' \
    --startTime 'tUnl428n' \
    --status 'FULFILLED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 283 'QueryUserIAPOrders' test.out

#- 284 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'czQELkML' \
    > test.out 2>&1
eval_tap $? 284 'QueryAllUserIAPOrders' test.out

#- 285 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'm9INAHWf' \
    --endTime 'PfXliPtm' \
    --limit '4' \
    --offset '33' \
    --startTime 'C0CSlxE2' \
    --status 'FAIL' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPConsumeHistory' test.out

#- 286 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'D5SWNSwX' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "OAgZ_ejgT-624", "productId": "u6cQLQbw", "region": "Bi373jwi", "transactionId": "DvbzBa29", "type": "EPICGAMES"}' \
    > test.out 2>&1
eval_tap $? 286 'MockFulfillIAPItem' test.out

#- 287 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'G60fvjek' \
    --namespace $AB_NAMESPACE \
    --userId '9iQeFZPL' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetIAPOrderLineItems' test.out

#- 288 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'gQbEVC6E' \
    > test.out 2>&1
eval_tap $? 288 'AdminSyncSteamAbnormalTransaction' test.out

#- 289 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'YVDxY8EG' \
    --body '{"orderId": "KlsEyYuF"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminSyncSteamIAPByTransaction' test.out

#- 290 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'cHWlLx21' \
    --activeOnly 'false' \
    --groupId 'MHrpYzY1' \
    --limit '18' \
    --offset '78' \
    --platform 'OCULUS' \
    --productId 'xIzgysbt' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserThirdPartySubscription' test.out

#- 291 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId '5yd8bn08' \
    --groupId 'vPoLaawb' \
    > test.out 2>&1
eval_tap $? 291 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 292 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'xHMKhe0M' \
    --productId 'JKREHpqa' \
    > test.out 2>&1
eval_tap $? 292 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 293 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId '7zHvhC3d' \
    --activeOnly 'true' \
    --groupId 'YxuPj4ii' \
    --limit '27' \
    --offset '6' \
    --platform 'GOOGLE' \
    --productId 'JTPQG7Ig' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 294 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id '3ez27cQQ' \
    --namespace $AB_NAMESPACE \
    --userId 'MIGPAsxu' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartySubscriptionDetails' test.out

#- 295 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'AK8L4wiM' \
    --namespace $AB_NAMESPACE \
    --userId 'VNmjhKFs' \
    --limit '3' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 295 'GetSubscriptionHistory' test.out

#- 296 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'eWnlLfP0' \
    --namespace $AB_NAMESPACE \
    --userId 'EiZFqbop' \
    > test.out 2>&1
eval_tap $? 296 'SyncSubscriptionTransaction' test.out

#- 297 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'Og4rlakW' \
    --namespace $AB_NAMESPACE \
    --userId 'vYv87r5t' \
    > test.out 2>&1
eval_tap $? 297 'GetThirdPartyUserSubscriptionDetails' test.out

#- 298 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'p776a7Qz' \
    --namespace $AB_NAMESPACE \
    --userId 'LveFZ3yO' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscription' test.out

#- 299 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'NPQiHhAR' \
    --discounted 'false' \
    --itemId '1VtOwe0r' \
    --limit '97' \
    --offset '65' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserOrders' test.out

#- 300 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'IByEz22i' \
    --body '{"currencyCode": "tm0lUxSB", "currencyNamespace": "vNKcjI1y", "discountCodes": ["cn8zoBGa", "Xjw1w0y0", "XKv5rOF6"], "discountedPrice": 20, "entitlementPlatform": "Playstation", "ext": {"vubjoH4O": {}, "7bmlyd50": {}, "Pv5KsbkH": {}}, "itemId": "t4OBDjtT", "language": "gC7bunoF", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 8, "quantity": 76, "region": "w8kZhrnP", "returnUrl": "UAO9KaX7", "sandbox": true, "sectionId": "8NZXesuV"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminCreateUserOrder' test.out

#- 301 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'b6GMd9er' \
    --itemId 'SfxcFjxt' \
    > test.out 2>&1
eval_tap $? 301 'CountOfPurchasedItem' test.out

#- 302 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'tvn3oMcr' \
    --userId 'rq5H1QDR' \
    > test.out 2>&1
eval_tap $? 302 'GetUserOrder' test.out

#- 303 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'KH5Swcjn' \
    --userId 'RVGumdLb' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "tNwCQNV5"}' \
    > test.out 2>&1
eval_tap $? 303 'UpdateUserOrderStatus' test.out

#- 304 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'm1z62UuR' \
    --userId '8dv5fhvr' \
    > test.out 2>&1
eval_tap $? 304 'FulfillUserOrder' test.out

#- 305 GetUserOrderGrant
eval_tap 0 305 'GetUserOrderGrant # SKIP deprecated' test.out

#- 306 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'JFGTI0FK' \
    --userId 'BoxC54Sa' \
    > test.out 2>&1
eval_tap $? 306 'GetUserOrderHistories' test.out

#- 307 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo '9ySj0Ca0' \
    --userId 'FVS2hSja' \
    --body '{"additionalData": {"cardSummary": "kM24QBlL"}, "authorisedTime": "1974-11-17T00:00:00Z", "chargebackReversedTime": "1999-07-25T00:00:00Z", "chargebackTime": "1999-09-08T00:00:00Z", "chargedTime": "1995-10-08T00:00:00Z", "createdTime": "1995-06-12T00:00:00Z", "currency": {"currencyCode": "pqOPgh12", "currencySymbol": "3spB3r3I", "currencyType": "REAL", "decimals": 20, "namespace": "UjBmqhpo"}, "customParameters": {"A9sg3fJN": {}, "zabIeRg7": {}, "5vpARgWU": {}}, "extOrderNo": "WkEbzbgO", "extTxId": "MoEidVi3", "extUserId": "ZVfaLoQj", "issuedAt": "1994-03-30T00:00:00Z", "metadata": {"tO7QLcge": "0CkTLJSX", "OBHmzfAW": "AsCoqnFu", "eZsJnJ5s": "FiZb875d"}, "namespace": "q3XI9SFw", "nonceStr": "HQR2FSW2", "paymentData": {"discountAmount": 18, "discountCode": "KAnof6qR", "subtotalPrice": 67, "tax": 37, "totalPrice": 49}, "paymentMethod": "h7uzBLvu", "paymentMethodFee": 33, "paymentOrderNo": "1HSroi2y", "paymentProvider": "PAYPAL", "paymentProviderFee": 90, "paymentStationUrl": "GCn7xdRq", "price": 31, "refundedTime": "1980-01-30T00:00:00Z", "salesTax": 100, "sandbox": true, "sku": "NGvgA3Zv", "status": "CHARGED", "statusReason": "8QXeZ8w3", "subscriptionId": "zaHWzQ2j", "subtotalPrice": 9, "targetNamespace": "5kNw6YWj", "targetUserId": "JaD4NMSz", "tax": 3, "totalPrice": 78, "totalTax": 72, "txEndTime": "1993-01-06T00:00:00Z", "type": "tFbk9Hxx", "userId": "B1eZYy7Y", "vat": 36}' \
    > test.out 2>&1
eval_tap $? 307 'ProcessUserOrderNotification' test.out

#- 308 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'Z4A6nWhY' \
    --userId 'nSSPzKD1' \
    > test.out 2>&1
eval_tap $? 308 'DownloadUserOrderReceipt' test.out

#- 309 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'ApFpGdLt' \
    --body '{"currencyCode": "X8d4PfrO", "currencyNamespace": "MtLuLJPf", "customParameters": {"EUkbl1Iz": {}, "TgduHogt": {}, "HgPyAsOc": {}}, "description": "2hCcjkRk", "extOrderNo": "hFXr8fht", "extUserId": "NqCNEnBD", "itemType": "MEDIA", "language": "iAyn_LfhQ-Gk", "metadata": {"ZMCcQfgp": "XJMrMpGp", "7t6yrK2r": "Yg6nR1TS", "MLKkpM2Y": "DuAWyeYQ"}, "notifyUrl": "Wv6xfRdy", "omitNotification": false, "platform": "qnapAUwT", "price": 90, "recurringPaymentOrderNo": "9eiun6f3", "region": "fv7PcjwR", "returnUrl": "aKKSwPLm", "sandbox": true, "sku": "yg1GKkhS", "subscriptionId": "v67PfOJT", "title": "RoP14oo7"}' \
    > test.out 2>&1
eval_tap $? 309 'CreateUserPaymentOrder' test.out

#- 310 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'MrhqBnjQ' \
    --userId 'CXRaXxrv' \
    --body '{"description": "5EyA2kag"}' \
    > test.out 2>&1
eval_tap $? 310 'RefundUserPaymentOrder' test.out

#- 311 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'FwNHis3p' \
    > test.out 2>&1
eval_tap $? 311 'GetUserPlatformAccountClosureHistories' test.out

#- 312 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId 'ilP71rrJ' \
    --body '{"code": "0SdHaNix", "orderNo": "MwsmEUuA"}' \
    > test.out 2>&1
eval_tap $? 312 'ApplyUserRedemption' test.out

#- 313 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'hlRqYxL1' \
    --body '{"meta": {"2EWqB67q": {}, "KQd67DWz": {}, "bU12S5vf": {}}, "reason": "nx6XbVf8", "requestId": "v05x7aF8", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "pE5oXq7y", "namespace": "5wIYVs5R"}, "entitlement": {"entitlementId": "dHGyHWz5"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "0os9KCXq", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 23, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "r3DyEkjr", "namespace": "H9WbGGLk"}, "entitlement": {"entitlementId": "VxN7g98q"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "3C3kf7c5", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 66, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "bOO943Se", "namespace": "FHTxG0tt"}, "entitlement": {"entitlementId": "2sdWkCdU"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "j9QhQ0D0", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 59, "type": "CURRENCY"}], "source": "DLC", "transactionId": "TVk4WY60"}' \
    > test.out 2>&1
eval_tap $? 313 'DoRevocation' test.out

#- 314 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'SdowaLU5' \
    --body '{"gameSessionId": "DjwSI97c", "payload": {"bQeEoF6D": {}, "YqX544qE": {}, "rF2UETrI": {}}, "scid": "hHeYrq8q", "sessionTemplateName": "rOggPLvt"}' \
    > test.out 2>&1
eval_tap $? 314 'RegisterXblSessions' test.out

#- 315 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'vdHTbiTv' \
    --chargeStatus 'SETUP' \
    --itemId 'Q5pozEyt' \
    --limit '36' \
    --offset '37' \
    --sku '6uruzi1t' \
    --status 'EXPIRED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 315 'QueryUserSubscriptions' test.out

#- 316 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'MWZcw5Zb' \
    --excludeSystem 'true' \
    --limit '57' \
    --offset '3' \
    --subscriptionId 'XVrgzNp5' \
    > test.out 2>&1
eval_tap $? 316 'GetUserSubscriptionActivities' test.out

#- 317 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'UhtwG6d0' \
    --body '{"grantDays": 38, "itemId": "DjxsehiA", "language": "2a3Wpkry", "reason": "hz9ykOvs", "region": "xbhzelJ9", "source": "VbGBMFyy"}' \
    > test.out 2>&1
eval_tap $? 317 'PlatformSubscribeSubscription' test.out

#- 318 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId '4PIH5avU' \
    --itemId 'vBoKdt4L' \
    > test.out 2>&1
eval_tap $? 318 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 319 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'fVZUWHUx' \
    --userId 'QAlo6Djg' \
    > test.out 2>&1
eval_tap $? 319 'GetUserSubscription' test.out

#- 320 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'hFNhwiP8' \
    --userId 'ol8pxG2u' \
    > test.out 2>&1
eval_tap $? 320 'DeleteUserSubscription' test.out

#- 321 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Cv0ABqru' \
    --userId 'kzY3NFtM' \
    --force 'true' \
    --body '{"immediate": true, "reason": "LfNNPIrb"}' \
    > test.out 2>&1
eval_tap $? 321 'CancelSubscription' test.out

#- 322 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yLE3olPU' \
    --userId 'JrK7dIOz' \
    --body '{"grantDays": 92, "reason": "KTDll3hC"}' \
    > test.out 2>&1
eval_tap $? 322 'GrantDaysToSubscription' test.out

#- 323 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uz20bMwP' \
    --userId 'c0Cy4p7z' \
    --excludeFree 'true' \
    --limit '70' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 323 'GetUserSubscriptionBillingHistories' test.out

#- 324 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QtLaiSLA' \
    --userId 'X36hdJsH' \
    --body '{"additionalData": {"cardSummary": "w9VlRgsP"}, "authorisedTime": "1984-08-31T00:00:00Z", "chargebackReversedTime": "1988-10-23T00:00:00Z", "chargebackTime": "1976-10-11T00:00:00Z", "chargedTime": "1990-08-02T00:00:00Z", "createdTime": "1988-12-22T00:00:00Z", "currency": {"currencyCode": "BKyhl898", "currencySymbol": "cQGFcZ62", "currencyType": "REAL", "decimals": 25, "namespace": "UnfwTeYM"}, "customParameters": {"4FuGa1JP": {}, "dMVIbDV7": {}, "NKWZHJVW": {}}, "extOrderNo": "jvvvjvrE", "extTxId": "mgYoven6", "extUserId": "J4nEDeHY", "issuedAt": "1988-05-24T00:00:00Z", "metadata": {"GWzdOkx4": "VMjZ09b8", "HrFlru2O": "tFOvgc25", "a61CWced": "DZZ7bShA"}, "namespace": "JcRbvPyK", "nonceStr": "MkpD3BTD", "paymentData": {"discountAmount": 76, "discountCode": "dAHdveOE", "subtotalPrice": 30, "tax": 79, "totalPrice": 62}, "paymentMethod": "4D1cM378", "paymentMethodFee": 45, "paymentOrderNo": "Je7aWjU8", "paymentProvider": "ALIPAY", "paymentProviderFee": 15, "paymentStationUrl": "kke6elFx", "price": 6, "refundedTime": "1993-01-14T00:00:00Z", "salesTax": 30, "sandbox": true, "sku": "HhOrSlqn", "status": "AUTHORISED", "statusReason": "wJaaqod3", "subscriptionId": "4dLbe74V", "subtotalPrice": 32, "targetNamespace": "96mVjSBp", "targetUserId": "NuJ9tTZd", "tax": 0, "totalPrice": 82, "totalTax": 43, "txEndTime": "1986-05-27T00:00:00Z", "type": "DdR62lPW", "userId": "KzQLGLho", "vat": 45}' \
    > test.out 2>&1
eval_tap $? 324 'ProcessUserSubscriptionNotification' test.out

#- 325 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'FNBmFavP' \
    --namespace $AB_NAMESPACE \
    --userId 'pAbDcFjK' \
    --body '{"count": 2, "orderNo": "6k9YOCYX"}' \
    > test.out 2>&1
eval_tap $? 325 'AcquireUserTicket' test.out

#- 326 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId 'DGDQivFw' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserCurrencyWallets' test.out

#- 327 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'LqQeLklg' \
    --namespace $AB_NAMESPACE \
    --userId 'ZaiQmsFd' \
    --body '{"allowOverdraft": false, "amount": 83, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"HKQeCtbR": {}, "mVBZA8oZ": {}, "XnzXVJuH": {}}, "reason": "LDPT2VDq"}' \
    > test.out 2>&1
eval_tap $? 327 'DebitUserWalletByCurrencyCode' test.out

#- 328 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'tU53jSq6' \
    --namespace $AB_NAMESPACE \
    --userId '8Zh3R6y6' \
    --limit '52' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 328 'ListUserCurrencyTransactions' test.out

#- 329 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'ndXP0VeG' \
    --namespace $AB_NAMESPACE \
    --userId 'UQjW6Zzi' \
    --request '{"amount": 60, "debitBalanceSource": "EXPIRATION", "metadata": {"R96rgsTE": {}, "3DF5KdIH": {}, "9RbEJWyP": {}}, "reason": "VCZzBBkd", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 329 'CheckBalance' test.out

#- 330 CheckWallet
eval_tap 0 330 'CheckWallet # SKIP deprecated' test.out

#- 331 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'qzIMPu08' \
    --namespace $AB_NAMESPACE \
    --userId 'hMBjOMG7' \
    --body '{"amount": 47, "expireAt": "1985-09-05T00:00:00Z", "metadata": {"DXEaLs34": {}, "V1cN9ZHf": {}, "pdCL4LKg": {}}, "origin": "Playstation", "reason": "Mz65KpgO", "source": "DLC"}' \
    > test.out 2>&1
eval_tap $? 331 'CreditUserWallet' test.out

#- 332 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'vcNV0NXB' \
    --namespace $AB_NAMESPACE \
    --userId 'RwpGsEVv' \
    --request '{"amount": 90, "debitBalanceSource": "PAYMENT", "metadata": {"QSfzHlp2": {}, "ngztUGxM": {}, "JMhseofb": {}}, "reason": "lx3iE8N7", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 332 'DebitByWalletPlatform' test.out

#- 333 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'n94yNVHP' \
    --namespace $AB_NAMESPACE \
    --userId 'TFLTEzTb' \
    --body '{"amount": 4, "metadata": {"4UZ32WLG": {}, "3CLeIXlb": {}, "CAgyyfCZ": {}}, "walletPlatform": "Playstation"}' \
    > test.out 2>&1
eval_tap $? 333 'PayWithUserWallet' test.out

#- 334 GetUserWallet
eval_tap 0 334 'GetUserWallet # SKIP deprecated' test.out

#- 335 DebitUserWallet
eval_tap 0 335 'DebitUserWallet # SKIP deprecated' test.out

#- 336 DisableUserWallet
eval_tap 0 336 'DisableUserWallet # SKIP deprecated' test.out

#- 337 EnableUserWallet
eval_tap 0 337 'EnableUserWallet # SKIP deprecated' test.out

#- 338 ListUserWalletTransactions
eval_tap 0 338 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 339 ListViews
samples/cli/sample-apps Platform listViews \
    --namespace $AB_NAMESPACE \
    --storeId 'TY8C218v' \
    > test.out 2>&1
eval_tap $? 339 'ListViews' test.out

#- 340 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'Kgw4NXm6' \
    --body '{"displayOrder": 9, "localizations": {"el1dtB5w": {"description": "u0RTBfv9", "localExt": {"SSMxe4xc": {}, "Ul6wJIey": {}, "SKLGs3FL": {}}, "longDescription": "24COi4r6", "title": "5gX9tOmg"}, "oeIYGaTL": {"description": "DuTezHXw", "localExt": {"Q6nmTyK6": {}, "4t0n3aKY": {}, "BbTv0aKP": {}}, "longDescription": "ttnbyi9t", "title": "TzA3dv9C"}, "0wt7yRqn": {"description": "LKRNhEL3", "localExt": {"cf2X0mfM": {}, "YlPwEUvD": {}, "5daQ8cCu": {}}, "longDescription": "D8izyKsP", "title": "neNhYDhw"}}, "name": "O8MiTonY"}' \
    > test.out 2>&1
eval_tap $? 340 'CreateView' test.out

#- 341 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId 'jt8UYkO5' \
    --storeId 'IUsxdxGw' \
    > test.out 2>&1
eval_tap $? 341 'GetView' test.out

#- 342 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'VJ44PwDf' \
    --storeId 'g29J3zKn' \
    --body '{"displayOrder": 57, "localizations": {"sxWP6GeC": {"description": "Zx38f8qw", "localExt": {"tUTvJ0mF": {}, "ZzBXqHdf": {}, "RUuv5x54": {}}, "longDescription": "stfil0uG", "title": "MV0Gqoys"}, "msEyB5by": {"description": "mP5KvfWG", "localExt": {"jeu1MLc7": {}, "d4i8hCXl": {}, "1JJyum2u": {}}, "longDescription": "728vO9C3", "title": "ydroWglr"}, "VzTUhvzk": {"description": "ioxXuD2L", "localExt": {"Qibrih8k": {}, "tL6j6Xtu": {}, "jiyitEe7": {}}, "longDescription": "Q43a1uJc", "title": "HPKhUvnX"}}, "name": "mRFF9guu"}' \
    > test.out 2>&1
eval_tap $? 342 'UpdateView' test.out

#- 343 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'nVTfokvu' \
    --storeId 'IjFFvwlU' \
    > test.out 2>&1
eval_tap $? 343 'DeleteView' test.out

#- 344 GetWalletConfig
samples/cli/sample-apps Platform getWalletConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'GetWalletConfig' test.out

#- 345 UpdateWalletConfig
samples/cli/sample-apps Platform updateWalletConfig \
    --namespace $AB_NAMESPACE \
    --body '{"enablePaidForVCExpiration": false}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWalletConfig' test.out

#- 346 QueryWallets
eval_tap 0 346 'QueryWallets # SKIP deprecated' test.out

#- 347 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 74, "expireAt": "1984-11-01T00:00:00Z", "metadata": {"RYZy5HOp": {}, "frPuA8kZ": {}, "SyC4dbGp": {}}, "origin": "Steam", "reason": "exv202hf", "source": "PURCHASE"}, "currencyCode": "PpUih8te", "userIds": ["P0lIPIcp", "TRrTKLOf", "KqS2KOfc"]}, {"creditRequest": {"amount": 93, "expireAt": "1982-03-16T00:00:00Z", "metadata": {"E6r3FVut": {}, "2Y1vaBFB": {}, "sCJQCwxn": {}}, "origin": "Other", "reason": "VkHa3Xeq", "source": "ACHIEVEMENT"}, "currencyCode": "4ZK9kpCY", "userIds": ["NuYonVYl", "3sSjU5CJ", "jnknfAfC"]}, {"creditRequest": {"amount": 61, "expireAt": "1976-10-24T00:00:00Z", "metadata": {"7d7JVmCt": {}, "iiXwGh25": {}, "zO4Nw4gU": {}}, "origin": "Twitch", "reason": "73BECP0c", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "v6t9jJUn", "userIds": ["lO2lihw4", "pszmtVkc", "pqm7Zewe"]}]' \
    > test.out 2>&1
eval_tap $? 347 'BulkCredit' test.out

#- 348 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "mRi0CtuT", "request": {"allowOverdraft": true, "amount": 50, "balanceOrigin": "Xbox", "balanceSource": "DLC_REVOCATION", "metadata": {"9BW8isAC": {}, "rNtZomFW": {}, "kTwtm7a0": {}}, "reason": "9lobZuGr"}, "userIds": ["swCeCs6a", "0xadCe3d", "UXfY7xce"]}, {"currencyCode": "3C6542lF", "request": {"allowOverdraft": true, "amount": 6, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"sPeB8tWj": {}, "z9FH4t4D": {}, "1zwDZUDX": {}}, "reason": "SbYW681O"}, "userIds": ["kN6Dp1iL", "mYK6Lwmc", "o36Tb77R"]}, {"currencyCode": "Fn5s44bQ", "request": {"allowOverdraft": true, "amount": 84, "balanceOrigin": "GooglePlay", "balanceSource": "TRADE", "metadata": {"yVDF1XVo": {}, "pJO6z4XV": {}, "ULuAIJit": {}}, "reason": "biDWrgw3"}, "userIds": ["Kn01eo4M", "QqluYo9j", "OuaIKD5J"]}]' \
    > test.out 2>&1
eval_tap $? 348 'BulkDebit' test.out

#- 349 GetWallet
eval_tap 0 349 'GetWallet # SKIP deprecated' test.out

#- 350 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'fcrW9Uml' \
    --end 'tHdvlPGG' \
    --start 'dYljPep6' \
    > test.out 2>&1
eval_tap $? 350 'SyncOrders' test.out

#- 351 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["hXUmreBH", "BSct38dI", "j1Njbbb5"], "apiKey": "9DiNmEjq", "authoriseAsCapture": true, "blockedPaymentMethods": ["EZ5GuBAB", "fYwkOb69", "U8uTy14w"], "clientKey": "kSNLphT7", "dropInSettings": "ucRg6nTC", "liveEndpointUrlPrefix": "UMOCgqC4", "merchantAccount": "AqgmL0Qt", "notificationHmacKey": "lGvxkrrI", "notificationPassword": "iqnVhuHd", "notificationUsername": "RsJ2YLbD", "returnUrl": "uf74D1Gs", "settings": "FMQUsMd0"}' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfig' test.out

#- 352 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'false' \
    --body '{"appId": "qshdkAF8", "privateKey": "xppH0RFY", "publicKey": "5Yx6KNC2", "returnUrl": "niKlohYz"}' \
    > test.out 2>&1
eval_tap $? 352 'TestAliPayConfig' test.out

#- 353 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'true' \
    --body '{"publicKey": "tEo9wcfo", "secretKey": "AEcyFqSU"}' \
    > test.out 2>&1
eval_tap $? 353 'TestCheckoutConfig' test.out

#- 354 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'davKWzPV' \
    --region 'JMuTs1mE' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentMerchantConfig' test.out

#- 355 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "9DJBmFSk", "webhookSecretKey": "gEgKMJ8B"}' \
    > test.out 2>&1
eval_tap $? 355 'TestNeonPayConfig' test.out

#- 356 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "kMZyoxAb", "clientSecret": "MHQS4Hsk", "returnUrl": "lxYclaWf", "webHookId": "GK7Jrxke"}' \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfig' test.out

#- 357 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["gErxpnY0", "UH71wxlw", "kAudVweV"], "publishableKey": "fokWXXwT", "secretKey": "E0vdlM3P", "webhookSecret": "fWnIaDwi"}' \
    > test.out 2>&1
eval_tap $? 357 'TestStripeConfig' test.out

#- 358 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "YJKjtl8W", "key": "g3NVO6W3", "mchid": "fkLDbxea", "returnUrl": "WcLJK79X"}' \
    > test.out 2>&1
eval_tap $? 358 'TestWxPayConfig' test.out

#- 359 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "tet0jmOW", "flowCompletionUrl": "EvNCt5N0", "merchantId": 40, "projectId": 100, "projectSecretKey": "O1po2VSM"}' \
    > test.out 2>&1
eval_tap $? 359 'TestXsollaConfig' test.out

#- 360 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'lhUMLHpW' \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentMerchantConfig1' test.out

#- 361 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'MJQIA8Fe' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["Q7NlAxzV", "l24kckKm", "P37a88jG"], "apiKey": "f2IP6Sa9", "authoriseAsCapture": true, "blockedPaymentMethods": ["rp3Rlyec", "gB7pxnFS", "y6rL2k3E"], "clientKey": "5U8STbyf", "dropInSettings": "8ybtp4w9", "liveEndpointUrlPrefix": "YBQ4MrEo", "merchantAccount": "tecyfxIj", "notificationHmacKey": "u5HKLphW", "notificationPassword": "8C9mAv9q", "notificationUsername": "63XJL5Jj", "returnUrl": "58e6CGBC", "settings": "TFqvGy9q"}' \
    > test.out 2>&1
eval_tap $? 361 'UpdateAdyenConfig' test.out

#- 362 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'YJBvi5IT' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfigById' test.out

#- 363 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'MsZ6MArz' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"appId": "aE4ASjEs", "privateKey": "PPmQEdFa", "publicKey": "QKNrhtAg", "returnUrl": "XckoQkw2"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAliPayConfig' test.out

#- 364 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'SuKLnQ9x' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 364 'TestAliPayConfigById' test.out

#- 365 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'eSNpOkwk' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"publicKey": "c4iFnnzu", "secretKey": "HvRmEkNa"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateCheckoutConfig' test.out

#- 366 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'i4qZguNU' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestCheckoutConfigById' test.out

#- 367 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'ndXZRShz' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"apiKey": "MHDo2w1Y", "webhookSecretKey": "MYoQ00xr"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateNeonPayConfig' test.out

#- 368 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'lY6siLSO' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 368 'TestNeonPayConfigById' test.out

#- 369 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'bBqiwZPu' \
    --sandbox 'false' \
    --validate 'true' \
    --body '{"clientID": "XR1GQmFE", "clientSecret": "1yZqLbk1", "returnUrl": "Ud5dex5a", "webHookId": "umfS1Smo"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdatePayPalConfig' test.out

#- 370 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'UB8k32qJ' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestPayPalConfigById' test.out

#- 371 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'q6AKrKZT' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"allowedPaymentMethodTypes": ["BOb9Icfx", "rpPHRyjC", "AOkB2ofL"], "publishableKey": "tlwXOz2E", "secretKey": "wd87VlVp", "webhookSecret": "XNV9Dg6I"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdateStripeConfig' test.out

#- 372 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'a3k3aTsV' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 372 'TestStripeConfigById' test.out

#- 373 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'dCbkiZBZ' \
    --validate 'false' \
    --body '{"appId": "890iIEkr", "key": "EtAJtJ1k", "mchid": "GeWjjc8t", "returnUrl": "n6Tnpckd"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateWxPayConfig' test.out

#- 374 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '2fdj7AYJ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 374 'UpdateWxPayConfigCert' test.out

#- 375 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'kE8eAtU9' \
    > test.out 2>&1
eval_tap $? 375 'TestWxPayConfigById' test.out

#- 376 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'yvN6otvM' \
    --validate 'false' \
    --body '{"apiKey": "mNMvyY9W", "flowCompletionUrl": "n5ALxqOl", "merchantId": 11, "projectId": 5, "projectSecretKey": "0DTCsdZg"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateXsollaConfig' test.out

#- 377 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'OLR8PoZH' \
    > test.out 2>&1
eval_tap $? 377 'TestXsollaConfigById' test.out

#- 378 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id '4dkv0z9j' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaUIConfig' test.out

#- 379 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '100' \
    --namespace 'co7Hx8yD' \
    --offset '24' \
    --region '9atJ0xTO' \
    > test.out 2>&1
eval_tap $? 379 'QueryPaymentProviderConfig' test.out

#- 380 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "NdmS9ZUs", "region": "uCRnKPCD", "sandboxTaxJarApiToken": "9KAYwAfU", "specials": ["ADYEN", "ALIPAY", "CHECKOUT"], "taxJarApiToken": "R7kIB05C", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 380 'CreatePaymentProviderConfig' test.out

#- 381 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 381 'GetAggregatePaymentProviders' test.out

#- 382 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'RP3bxKKB' \
    --region 'IpN8ZNRD' \
    > test.out 2>&1
eval_tap $? 382 'DebugMatchedPaymentProviderConfig' test.out

#- 383 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetSpecialPaymentProviders' test.out

#- 384 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'h6rXOM8o' \
    --body '{"aggregate": "STRIPE", "namespace": "eGTbb6Wk", "region": "WRQJd6gK", "sandboxTaxJarApiToken": "NrSmm7XH", "specials": ["XSOLLA", "ALIPAY", "WXPAY"], "taxJarApiToken": "b5W15WOm", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 384 'UpdatePaymentProviderConfig' test.out

#- 385 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'D9OSdLk5' \
    > test.out 2>&1
eval_tap $? 385 'DeletePaymentProviderConfig' test.out

#- 386 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 386 'GetPaymentTaxConfig' test.out

#- 387 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "N00z2tXH", "taxJarApiToken": "foMumRKQ", "taxJarEnabled": false, "taxJarProductCodesMapping": {"6pAutYJP": "t7s3CoIh", "D2XIIaMw": "noWGmXC5", "Zqn0yBUV": "yhekMG0b"}}' \
    > test.out 2>&1
eval_tap $? 387 'UpdatePaymentTaxConfig' test.out

#- 388 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'ANQiUBYK' \
    --end 'gHwwc6xc' \
    --start 'Vgj095mG' \
    > test.out 2>&1
eval_tap $? 388 'SyncPaymentOrders' test.out

#- 389 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language 'xLPk771j' \
    --storeId '5gpCjjhW' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetRootCategories' test.out

#- 390 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'x6yOkbjq' \
    --storeId 'lIQOTPA3' \
    > test.out 2>&1
eval_tap $? 390 'DownloadCategories' test.out

#- 391 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'brBWO81Q' \
    --namespace $AB_NAMESPACE \
    --language 'eRyBkWIN' \
    --storeId 'tkrSHElL' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetCategory' test.out

#- 392 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'iq4mphUd' \
    --namespace $AB_NAMESPACE \
    --language 'xfn6mFjQ' \
    --storeId 'SqQJgK0A' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetChildCategories' test.out

#- 393 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'jJwo4Ezq' \
    --namespace $AB_NAMESPACE \
    --language 'uPsDq9We' \
    --storeId 'hkHBU3T3' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetDescendantCategories' test.out

#- 394 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'REAL' \
    > test.out 2>&1
eval_tap $? 394 'PublicListCurrencies' test.out

#- 395 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'STEAM' \
    > test.out 2>&1
eval_tap $? 395 'GeDLCDurableRewardShortMap' test.out

#- 396 GetAppleConfigVersion
samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 396 'GetAppleConfigVersion' test.out

#- 397 GetIAPItemMapping
samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace $AB_NAMESPACE \
    --platform 'STADIA' \
    > test.out 2>&1
eval_tap $? 397 'GetIAPItemMapping' test.out

#- 398 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'yYRaJRQh' \
    --region 'unqS3gFA' \
    --storeId '9JkT9aWt' \
    --appId 'yZ7tYJKo' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItemByAppId' test.out

#- 399 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'false' \
    --baseAppId 'usIPQBV6' \
    --categoryPath 'miM0yqPG' \
    --features '44t5YEsA' \
    --includeSubCategoryItem 'false' \
    --itemType 'SEASON' \
    --language 'neyXHvWo' \
    --limit '10' \
    --offset '46' \
    --region 'qn53IC3e' \
    --sortBy '["updatedAt:asc", "name:desc", "displayOrder"]' \
    --storeId 'VjsxwxDI' \
    --tags 'ltQFY8Ei' \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryItems' test.out

#- 400 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'RbxrLhOo' \
    --region '7Xq6FuDd' \
    --storeId 'DU2dtGKZ' \
    --sku '1tLpLIVq' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemBySku' test.out

#- 401 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'xY1ER9zH' \
    --storeId 'FSWSamao' \
    --itemIds 'jRpjF90c' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetEstimatedPrice' test.out

#- 402 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'Uul63OyD' \
    --region 'WVvX3aFv' \
    --storeId 'j9bUHvm6' \
    --itemIds 'VroG4902' \
    > test.out 2>&1
eval_tap $? 402 'PublicBulkGetItems' test.out

#- 403 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["f8zYiSQv", "jmRrD93c", "5qw8OfbL"]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicValidateItemPurchaseCondition' test.out

#- 404 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --itemType 'EXTENSION' \
    --limit '25' \
    --offset '64' \
    --region 'cbPGlObm' \
    --storeId 'xgTKKh7h' \
    --keyword 'kWbgehqQ' \
    --language 'G3irQZWl' \
    > test.out 2>&1
eval_tap $? 404 'PublicSearchItems' test.out

#- 405 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'tKrmlC7g' \
    --namespace $AB_NAMESPACE \
    --language 'GGHos2dl' \
    --region 'DyIuUdfu' \
    --storeId 'WCmEZFYD' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetApp' test.out

#- 406 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'rfL312WL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'PublicGetItemDynamicData' test.out

#- 407 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'YC4YIryl' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'w3jqRON1' \
    --populateBundle 'true' \
    --region 'qOVAlRC0' \
    --storeId 'RFBXCH9K' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItem' test.out

#- 408 GetPaymentCustomization
eval_tap 0 408 'GetPaymentCustomization # SKIP deprecated' test.out

#- 409 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "GqMkWXxC", "successUrl": "dmzOcF5y"}, "paymentOrderNo": "gOXeqfNQ", "paymentProvider": "ALIPAY", "returnUrl": "DJ4ACS27", "ui": "9ojlB3r3", "zipCode": "QbsIS0ha"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetPaymentUrl' test.out

#- 410 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'FX8VhMhL' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetPaymentMethods' test.out

#- 411 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'exScYQft' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUnpaidPaymentOrder' test.out

#- 412 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'AI45l3Oh' \
    --paymentProvider 'XSOLLA' \
    --zipCode 'EPMAYE3u' \
    --body '{"token": "dkMzFWQZ"}' \
    > test.out 2>&1
eval_tap $? 412 'Pay' test.out

#- 413 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'K1kAqYsx' \
    > test.out 2>&1
eval_tap $? 413 'PublicCheckPaymentOrderPaidStatus' test.out

#- 414 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'ALIPAY' \
    --region 'IOWCariC' \
    > test.out 2>&1
eval_tap $? 414 'GetPaymentPublicConfig' test.out

#- 415 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'Gsm8mB0C' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetQRCode' test.out

#- 416 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID '9i03RLlQ' \
    --foreinginvoice 'lNBSZwUD' \
    --invoiceId 'MQWpjYKS' \
    --payload 'jOgHQWdT' \
    --redirectResult '8rbqZvxQ' \
    --resultCode 'MuotJfks' \
    --sessionId 'k9t7pGcu' \
    --status 'IZ5BxGAJ' \
    --token 'DARmzMu8' \
    --type 'Ba8rJDpH' \
    --userId 's4DPfahO' \
    --orderNo 'ZxWcmaAb' \
    --paymentOrderNo '5fbo1HPk' \
    --paymentProvider 'WXPAY' \
    --returnUrl 'Xpj4O7Kz' \
    > test.out 2>&1
eval_tap $? 416 'PublicNormalizePaymentReturnUrl' test.out

#- 417 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode 'I1MlZysi' \
    --paymentOrderNo 'BEpEKLJW' \
    --paymentProvider 'XSOLLA' \
    > test.out 2>&1
eval_tap $? 417 'GetPaymentTaxValue' test.out

#- 418 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '99ZlnfvI' \
    > test.out 2>&1
eval_tap $? 418 'GetRewardByCode' test.out

#- 419 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'LoySAH5J' \
    --limit '36' \
    --offset '34' \
    --sortBy '["rewardCode:desc", "namespace:asc", "namespace"]' \
    > test.out 2>&1
eval_tap $? 419 'QueryRewards1' test.out

#- 420 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'UCRtXXvH' \
    > test.out 2>&1
eval_tap $? 420 'GetReward1' test.out

#- 421 PublicListStores
samples/cli/sample-apps Platform publicListStores \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 421 'PublicListStores' test.out

#- 422 PublicExistsAnyMyActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --appIds '["RFKzkb7T", "JOGWoCio", "LYXKpn9L"]' \
    --itemIds '["Q5J3aIv8", "iA5hGwyL", "QgxfEktw"]' \
    --skus '["grSlDasn", "2bd1BVK3", "v4fUTng2"]' \
    > test.out 2>&1
eval_tap $? 422 'PublicExistsAnyMyActiveEntitlement' test.out

#- 423 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'fZTfUnDh' \
    > test.out 2>&1
eval_tap $? 423 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 424 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'YFnsIK5C' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 425 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'hCbOKTQ3' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 426 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["dPIdqxEl", "esRfpEIS", "HdbPKQpm"]' \
    --itemIds '["h8Oyed7f", "Sz91OgQr", "6vt5rggX"]' \
    --skus '["vAFq8xI2", "B0cdYMH7", "T7DLtNBl"]' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetEntitlementOwnershipToken' test.out

#- 427 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "o3tnTETq", "language": "tsr-527", "region": "EiiKbKot"}' \
    > test.out 2>&1
eval_tap $? 427 'SyncTwitchDropsEntitlement' test.out

#- 428 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'a1Dq9NEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyWallet' test.out

#- 429 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'lqEF5RRp' \
    --body '{"epicGamesJwtToken": "aaWw1Lch"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncEpicGameDLC' test.out

#- 430 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'Kt6tX8Yi' \
    > test.out 2>&1
eval_tap $? 430 'SyncOculusDLC' test.out

#- 431 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'tachC039' \
    --body '{"serviceLabel": 37}' \
    > test.out 2>&1
eval_tap $? 431 'PublicSyncPsnDlcInventory' test.out

#- 432 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'BPrvfsMc' \
    --body '{"serviceLabels": [42, 53, 15]}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 433 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'MVpbrwqs' \
    --body '{"appId": "3egsC1M4", "steamId": "a0A7wfy7"}' \
    > test.out 2>&1
eval_tap $? 433 'SyncSteamDLC' test.out

#- 434 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'rk5t4hwp' \
    --body '{"xstsToken": "nUfLy6ih"}' \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxDLC' test.out

#- 435 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pULPOUFJ' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '7c2S028M' \
    --features '["vr6VxZej", "d3LR76y6", "oTAIrzMY"]' \
    --itemId '["R9l7yzzq", "5F0MugpW", "ekCVUCxP"]' \
    --limit '29' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserEntitlements' test.out

#- 436 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId '5kZxujob' \
    --appId 'hNwfoois' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserAppEntitlementByAppId' test.out

#- 437 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'LT96Zv8D' \
    --limit '48' \
    --offset '30' \
    --appType 'DEMO' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlementsByAppType' test.out

#- 438 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'TnCTde8G' \
    --availablePlatformOnly 'false' \
    --ids '["p42nCI6T", "fjU05sm1", "mUnpvFPp"]' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlementsByIds' test.out

#- 439 PublicGetUserEntitlementByItemId
eval_tap 0 439 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 440 PublicGetUserEntitlementBySku
eval_tap 0 440 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 441 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'F40A1JcL' \
    --endDate '1ZEPDjeS' \
    --entitlementClazz 'LOOTBOX' \
    --limit '55' \
    --offset '96' \
    --startDate 'avCjcEkt' \
    > test.out 2>&1
eval_tap $? 441 'PublicUserEntitlementHistory' test.out

#- 442 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'flCBo13w' \
    --appIds '["fZlK2Ofp", "E03B7Gmv", "LL8dxC1f"]' \
    --itemIds '["WtQLkDin", "PiS2cEeH", "9xWZGz0U"]' \
    --skus '["8u40URQw", "MpsJpXe6", "qsElfZTM"]' \
    > test.out 2>&1
eval_tap $? 442 'PublicExistsAnyUserActiveEntitlement' test.out

#- 443 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'jQJb0usD' \
    --appId 't4p1LsCc' \
    > test.out 2>&1
eval_tap $? 443 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 444 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'QVDmqtRJ' \
    --entitlementClazz 'OPTIONBOX' \
    --itemId 'lRUfVLYM' \
    > test.out 2>&1
eval_tap $? 444 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 445 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '4CBTj3dy' \
    --ids '["HaD4XcYn", "AgSyUGDX", "AT5sQ5jf"]' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 446 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'BoNV6BYl' \
    --entitlementClazz 'LOOTBOX' \
    --sku 'TX6k0Ha9' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 447 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'qYtspQXJ' \
    --namespace $AB_NAMESPACE \
    --userId 'J9oxnA02' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlement' test.out

#- 448 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'TTlZLvRh' \
    --namespace $AB_NAMESPACE \
    --userId 'A2OlT3fk' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["Ya67WqgD", "nCLXSQ1t", "vqsgV2sk"], "requestId": "91wR8q3y", "useCount": 59}' \
    > test.out 2>&1
eval_tap $? 448 'PublicConsumeUserEntitlement' test.out

#- 449 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'UaVkU3RX' \
    --namespace $AB_NAMESPACE \
    --userId 'nA3HG0VZ' \
    --body '{"requestId": "ffNhFDCy", "useCount": 17}' \
    > test.out 2>&1
eval_tap $? 449 'PublicSellUserEntitlement' test.out

#- 450 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '3pQfVKUK' \
    --namespace $AB_NAMESPACE \
    --userId 'H7HLyKpT' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 19}' \
    > test.out 2>&1
eval_tap $? 450 'PublicSplitUserEntitlement' test.out

#- 451 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId '1s4V7Vf6' \
    --namespace $AB_NAMESPACE \
    --userId 'bZw6eBTM' \
    --body '{"entitlementId": "8A84gKzs", "metadata": {"operationSource": "INVENTORY"}, "useCount": 6}' \
    > test.out 2>&1
eval_tap $? 451 'PublicTransferUserEntitlement' test.out

#- 452 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'TABnjXvg' \
    --body '{"code": "fhlw54Vc", "language": "wwL", "region": "IRkPP5A3"}' \
    > test.out 2>&1
eval_tap $? 452 'PublicRedeemCode' test.out

#- 453 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'kLWNQVoY' \
    --body '{"excludeOldTransactions": true, "language": "hLhg-dxdZ", "productId": "mQYxvbdd", "receiptData": "X7IFxVLj", "region": "GBaTNZOa", "transactionId": "Rcs8i6Uu"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicFulfillAppleIAPItem' test.out

#- 454 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'gINI9Tse' \
    --body '{"epicGamesJwtToken": "waySA9WQ"}' \
    > test.out 2>&1
eval_tap $? 454 'SyncEpicGamesInventory' test.out

#- 455 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'hPTsVTZq' \
    --body '{"autoAck": false, "autoConsume": false, "language": "puZm-xp", "orderId": "wq3qY3Hb", "packageName": "wJYBr3G7", "productId": "icK2hnKS", "purchaseTime": 70, "purchaseToken": "Jj2Hff4m", "region": "hay9rEXt", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillGoogleIAPItem' test.out

#- 456 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'e55enTQs' \
    > test.out 2>&1
eval_tap $? 456 'SyncOculusConsumableEntitlements' test.out

#- 457 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId '15wjXdbC' \
    --body '{"currencyCode": "U7hIzfBK", "price": 0.08363658278621555, "productId": "qqxuHBxU", "serviceLabel": 52}' \
    > test.out 2>&1
eval_tap $? 457 'PublicReconcilePlayStationStore' test.out

#- 458 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId 'O9ETJeLK' \
    --body '{"currencyCode": "8ktY8X03", "price": 0.26034198811684806, "productId": "8kUSSsjX", "serviceLabels": [9, 50, 20]}' \
    > test.out 2>&1
eval_tap $? 458 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 459 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'noybVX8N' \
    --body '{"appId": "dezHZBWr", "currencyCode": "rHVf8mNa", "language": "VSh_zCPV_yL", "price": 0.3263833760241034, "productId": "YZpNzJEu", "region": "1W3g172s", "steamId": "vVi4LRQy"}' \
    > test.out 2>&1
eval_tap $? 459 'SyncSteamInventory' test.out

#- 460 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId '9uROdxRG' \
    > test.out 2>&1
eval_tap $? 460 'SyncSteamAbnormalTransaction' test.out

#- 461 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'WChMalOU' \
    --body '{"orderId": "YT7OPO4e"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamIAPByTransaction' test.out

#- 462 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'STEAM' \
    --userId 'KUGZZAde' \
    --activeOnly 'false' \
    --groupId 'lWRElM3N' \
    --limit '57' \
    --offset '86' \
    --productId 'O8QLJAQP' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserThirdPartySubscription' test.out

#- 463 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'mnX3z54Q' \
    --body '{"gameId": "3HEcJiLE", "language": "hM", "region": "pKmcjADJ"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncTwitchDropsEntitlement1' test.out

#- 464 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'cmkngQdz' \
    --body '{"currencyCode": "OSTp9F6C", "price": 0.8022710974614287, "productId": "yQNO1T1N", "xstsToken": "WslrWImZ"}' \
    > test.out 2>&1
eval_tap $? 464 'SyncXboxInventory' test.out

#- 465 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId '5949pJVD' \
    --discounted 'true' \
    --itemId 'XwRWNemL' \
    --limit '7' \
    --offset '40' \
    --status 'CHARGED' \
    > test.out 2>&1
eval_tap $? 465 'PublicQueryUserOrders' test.out

#- 466 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'v2bGKiVb' \
    --body '{"currencyCode": "ROPaH4ca", "discountCodes": ["zDw79OsD", "tgo5GIN5", "6J53tXaR"], "discountedPrice": 8, "ext": {"O13Axjq3": {}, "Q1yHilxL": {}, "Gqa5Pq8n": {}}, "itemId": "KRwfX5U8", "language": "XoA_CaLY", "price": 35, "quantity": 62, "region": "xi94j7Fz", "returnUrl": "SyHJAk7Q", "sectionId": "KCczCN58"}' \
    > test.out 2>&1
eval_tap $? 466 'PublicCreateUserOrder' test.out

#- 467 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'JzR1aksB' \
    --body '{"currencyCode": "CzQLvniv", "discountCodes": ["piKTLeC7", "HwQ5nd9q", "2nNZhuyQ"], "discountedPrice": 100, "itemId": "HDGrrS8m", "price": 43, "quantity": 3}' \
    > test.out 2>&1
eval_tap $? 467 'PublicPreviewOrderPrice' test.out

#- 468 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'veeAhMLQ' \
    --userId 'TTZr01bG' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserOrder' test.out

#- 469 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'b4wIwP5e' \
    --userId 'cwkhuVug' \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelUserOrder' test.out

#- 470 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'TnnyfAcD' \
    --userId 'NRQew9yh' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrderHistories' test.out

#- 471 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'IV4GQOIm' \
    --userId 'JXcLlnis' \
    > test.out 2>&1
eval_tap $? 471 'PublicDownloadUserOrderReceipt' test.out

#- 472 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId '6Qs3tn1x' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetPaymentAccounts' test.out

#- 473 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'z0zKk6ZD' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId 'dTRcD9AO' \
    > test.out 2>&1
eval_tap $? 473 'PublicDeletePaymentAccount' test.out

#- 474 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'KqsZvYpp' \
    --autoCalcEstimatedPrice 'false' \
    --language 'oGhvKxwS' \
    --region 'Sg0D2Y6u' \
    --storeId 'iPnXFp5w' \
    --viewId '7XRnwgfP' \
    > test.out 2>&1
eval_tap $? 474 'PublicListActiveSections' test.out

#- 475 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'yQyQXDpo' \
    --chargeStatus 'SETUP' \
    --itemId 'xB344pDs' \
    --limit '2' \
    --offset '37' \
    --sku 'rTqVlsGC' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserSubscriptions' test.out

#- 476 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'CAGzOIvq' \
    --body '{"currencyCode": "NJNvEOzF", "itemId": "9nxk06tA", "language": "hdin", "region": "cU7Gu9x1", "returnUrl": "fQwcCZFu", "source": "kBtn8DcC"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicSubscribeSubscription' test.out

#- 477 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IRCiUnAk' \
    --itemId 'xN5ybW1X' \
    > test.out 2>&1
eval_tap $? 477 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 478 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'OQGoOS9e' \
    --userId 'sHSk9AqJ' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserSubscription' test.out

#- 479 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'yKIMnUka' \
    --userId 'PD7amTGo' \
    > test.out 2>&1
eval_tap $? 479 'PublicChangeSubscriptionBillingAccount' test.out

#- 480 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'wlbZMCUK' \
    --userId 'iMWJcz6j' \
    --body '{"immediate": true, "reason": "Xk0YkPKv"}' \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelSubscription' test.out

#- 481 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'QqLym7Lt' \
    --userId '8OX1H2b3' \
    --excludeFree 'false' \
    --limit '59' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserSubscriptionBillingHistories' test.out

#- 482 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId '6uGZV1sf' \
    --language '5FVoscy2' \
    --storeId '7cfIQ4Bp' \
    > test.out 2>&1
eval_tap $? 482 'PublicListViews' test.out

#- 483 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'grenILuC' \
    --namespace $AB_NAMESPACE \
    --userId 'ot9QSVZj' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetWallet' test.out

#- 484 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'ZX1DzoDM' \
    --namespace $AB_NAMESPACE \
    --userId 'tgMSiPHT' \
    --limit '96' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 484 'PublicListUserWalletTransactions' test.out

#- 485 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'EPICGAMES' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetMyDLCContent' test.out

#- 486 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime 'KMjhoCIj' \
    --limit '36' \
    --offset '89' \
    --startTime 'GybJMOiM' \
    --state 'FULFILLED' \
    --transactionId 'BCcBuuhR' \
    --userId 'KSE9Xndb' \
    > test.out 2>&1
eval_tap $? 486 'QueryFulfillments' test.out

#- 487 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'GAME' \
    --availableDate 'zoqcB4nV' \
    --baseAppId 'GskaYWoc' \
    --categoryPath 'rjRPBfyn' \
    --features '9Z2nSOuL' \
    --includeSubCategoryItem 'true' \
    --itemName '5ux92TMs' \
    --itemStatus 'ACTIVE' \
    --itemType '["BUNDLE", "BUNDLE", "SEASON"]' \
    --limit '0' \
    --offset '35' \
    --region 'FiE2Evbw' \
    --sectionExclusive 'false' \
    --sortBy '["updatedAt:desc", "displayOrder:desc", "createdAt:desc"]' \
    --storeId 'za7mSV0Y' \
    --tags 'qvXxMba7' \
    --targetNamespace '5iU5LTH2' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 487 'QueryItemsV2' test.out

#- 488 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'zy8sLOG1' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 488 'ImportStore1' test.out

#- 489 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'K1tPs3Xs' \
    --body '{"itemIds": ["nquXXU4E", "5X4y0T5X", "MrEfJJiQ"]}' \
    > test.out 2>&1
eval_tap $? 489 'ExportStore1' test.out

#- 490 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'M1GiS9Wy' \
    --body '{"entitlementCollectionId": "iXRA8cJk", "entitlementOrigin": "Nintendo", "metadata": {"Kit5I037": {}, "P8mycN9e": {}, "7OQMDz0S": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "f8VKdSlT", "namespace": "XQ75JPFq"}, "item": {"itemId": "EHtnKmuw", "itemName": "YhMkddDu", "itemSku": "IK7ZZK5B", "itemType": "ZhM1CNvN"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "3gkMxSWN", "namespace": "pqmKrTd7"}, "item": {"itemId": "C5MLLeOy", "itemName": "Mm6iL2i8", "itemSku": "1MApinmE", "itemType": "ufpoylGi"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "CvnkOIOm", "namespace": "5KkLVUrf"}, "item": {"itemId": "Obyr8hCF", "itemName": "GLf6uMkt", "itemSku": "QYBlozfM", "itemType": "Du4bkj6o"}, "quantity": 84, "type": "CURRENCY"}], "source": "PAYMENT", "transactionId": "awlDsdbz"}' \
    > test.out 2>&1
eval_tap $? 490 'FulfillRewardsV2' test.out

#- 491 FulfillItems
eval_tap 0 491 'FulfillItems # SKIP deprecated' test.out

#- 492 RetryFulfillItems
eval_tap 0 492 'RetryFulfillItems # SKIP deprecated' test.out

#- 493 RevokeItems
eval_tap 0 493 'RevokeItems # SKIP deprecated' test.out

#- 494 V2PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'CQtpNB9y' \
    --body '{"transactionId": "n5AHF6po"}' \
    > test.out 2>&1
eval_tap $? 494 'V2PublicFulfillAppleIAPItem' test.out

#- 495 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'DAX0Zj76' \
    --userId 'RwiqrVf7' \
    --body '{"items": [{"duration": 57, "endDate": "1971-05-10T00:00:00Z", "entitlementCollectionId": "FvIakkob", "entitlementOrigin": "System", "itemId": "2uV9drIm", "itemSku": "wbIzuIzT", "language": "hMsX7g5k", "metadata": {"AFCcAItJ": {}, "3IwkMpfu": {}, "A8Yyj9Uz": {}}, "orderNo": "kKLKucxm", "origin": "GooglePlay", "quantity": 63, "region": "NJRkOsRC", "source": "IAP", "startDate": "1973-06-06T00:00:00Z", "storeId": "f7QXNReU"}, {"duration": 5, "endDate": "1996-07-22T00:00:00Z", "entitlementCollectionId": "RfQi5hTz", "entitlementOrigin": "System", "itemId": "jfHFRWEl", "itemSku": "bE5FjX2K", "language": "HbXnSeGx", "metadata": {"Xy7GIBwK": {}, "WpWX966Y": {}, "h7GWiCjo": {}}, "orderNo": "dNXasqkV", "origin": "Nintendo", "quantity": 4, "region": "y8BAu7Ap", "source": "SELL_BACK", "startDate": "1997-10-17T00:00:00Z", "storeId": "p6PrJxgG"}, {"duration": 92, "endDate": "1985-10-26T00:00:00Z", "entitlementCollectionId": "7oWTjBb8", "entitlementOrigin": "IOS", "itemId": "WH9xfr84", "itemSku": "9udCl6Tn", "language": "L4yX1WI2", "metadata": {"XWGhqQRI": {}, "UZobOYNp": {}, "kZgg2l4d": {}}, "orderNo": "bmhdXOL7", "origin": "Twitch", "quantity": 77, "region": "yozlBhW2", "source": "IAP", "startDate": "1994-03-04T00:00:00Z", "storeId": "LCMnhXuR"}]}' \
    > test.out 2>&1
eval_tap $? 495 'FulfillItemsV3' test.out

#- 496 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'ZvrM0av1' \
    --userId 'MbSzinLP' \
    > test.out 2>&1
eval_tap $? 496 'RetryFulfillItemsV3' test.out

#- 497 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'LMkpBhHA' \
    --userId 'kK93z5cr' \
    > test.out 2>&1
eval_tap $? 497 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE