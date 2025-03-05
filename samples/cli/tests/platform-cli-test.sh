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
    --id '9U2EpRga' \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
samples/cli/sample-apps Platform createFulfillmentScript \
    --id '1jWdCuk6' \
    --body '{"grantDays": "k5czr2A5"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'TQyMh4Q5' \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'SgJDgAtg' \
    --body '{"grantDays": "ZFm9aOZl"}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
samples/cli/sample-apps Platform listItemTypeConfigs \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "YIa3qO1b", "dryRun": true, "fulfillmentUrl": "dZ6hc9pM", "itemType": "SEASON", "purchaseConditionUrl": "ZPxESgNt"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'P12aDdC5' \
    --itemType 'EXTENSION' \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'QRnqXHUh' \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'vGDZT2nK' \
    --body '{"clazz": "xciGCWE8", "dryRun": true, "fulfillmentUrl": "MTMKWIbl", "purchaseConditionUrl": "vijvPLxd"}' \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'AJNZlYLU' \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
samples/cli/sample-apps Platform queryCampaigns \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'yBSX4AEA' \
    --offset '6' \
    --tag 'BffdXx5H' \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
samples/cli/sample-apps Platform createCampaign \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VY3f26A1", "discountConfig": {"categories": [{"categoryPath": "nXL13t4Z", "includeSubCategories": false}, {"categoryPath": "SEbpTrKV", "includeSubCategories": true}, {"categoryPath": "ZUMSMeHI", "includeSubCategories": true}], "currencyCode": "aNUVHuG5", "currencyNamespace": "4xcBqxIG", "discountAmount": 4, "discountPercentage": 98, "discountType": "AMOUNT", "items": [{"itemId": "nhWUSMSW", "itemName": "8T9st7i5"}, {"itemId": "QBhcRdS9", "itemName": "sVrz3eNS"}, {"itemId": "eUyKMVPy", "itemName": "lFnCKeFl"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 99, "itemId": "Fc4w4H4r", "itemName": "iQsEVcSb", "quantity": 28}, {"extraSubscriptionDays": 7, "itemId": "JR2eCH7w", "itemName": "iq7Qfz3C", "quantity": 66}, {"extraSubscriptionDays": 77, "itemId": "S4gagmzC", "itemName": "9ELY327k", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 61, "maxRedeemCountPerCode": 51, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 100, "name": "3SvjljuJ", "redeemEnd": "1989-04-06T00:00:00Z", "redeemStart": "1977-03-13T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["OOy1V7K8", "A7Gq2YXE", "jKbNNnIO"], "type": "REDEMPTION"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
samples/cli/sample-apps Platform getCampaign \
    --campaignId 'Q2HaE5kk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'EzY6XlBL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "eGRcrskC", "discountConfig": {"categories": [{"categoryPath": "NAYMlmJe", "includeSubCategories": false}, {"categoryPath": "BcYlDCzw", "includeSubCategories": true}, {"categoryPath": "A7bSugrZ", "includeSubCategories": false}], "currencyCode": "xFOQBO7L", "currencyNamespace": "ggXIL5V5", "discountAmount": 69, "discountPercentage": 29, "discountType": "PERCENTAGE", "items": [{"itemId": "peAjcT0t", "itemName": "6MjmbZDN"}, {"itemId": "ctOC5ayU", "itemName": "um6PDB8v"}, {"itemId": "sM3E1K2c", "itemName": "MHUgaacR"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 80, "itemId": "cPKYCdld", "itemName": "eZMNRN6W", "quantity": 71}, {"extraSubscriptionDays": 99, "itemId": "F8mn5BRy", "itemName": "r2puhIXN", "quantity": 46}, {"extraSubscriptionDays": 87, "itemId": "kQaaGulf", "itemName": "wGDe7WOq", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 13, "maxRedeemCountPerCode": 83, "maxRedeemCountPerCodePerUser": 6, "maxSaleCount": 94, "name": "x8X9PlhS", "redeemEnd": "1987-07-07T00:00:00Z", "redeemStart": "1982-01-21T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["lW8ebmax", "kfx8i6uW", "ymt5FZog"]}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
samples/cli/sample-apps Platform renameBatch \
    --campaignId 'D1218nVJ' \
    --namespace $AB_NAMESPACE \
    --body '{"newName": "LZjRnAXZ", "oldName": "nZWYtBBs"}' \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'ul7cjvOb' \
    --namespace $AB_NAMESPACE \
    --batchName 'AgbOqYgA' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'Ve2A3aZy' \
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
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CATALOG", "ENTITLEMENT"]}' \
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
    --body '{"appConfig": {"appName": "AO7kbxs5"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "xjIyZ4j3"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "hzvhGrbV"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "4NOrCHEz"}, "extendType": "APP"}' \
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
    --storeId 'TrfFTTbR' \
    > test.out 2>&1
eval_tap $? 31 'GetRootCategories' test.out

#- 32 CreateCategory
samples/cli/sample-apps Platform createCategory \
    --namespace $AB_NAMESPACE \
    --storeId 'ra9PDDxi' \
    --body '{"categoryPath": "VK2kUd6d", "localizationDisplayNames": {"YPYZFh2I": "WLwZ4RP4", "OK3j9JvL": "tytIEGyY", "Aa3yXB4W": "RQemDo9Z"}}' \
    > test.out 2>&1
eval_tap $? 32 'CreateCategory' test.out

#- 33 ListCategoriesBasic
samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace $AB_NAMESPACE \
    --storeId '77edg4pQ' \
    > test.out 2>&1
eval_tap $? 33 'ListCategoriesBasic' test.out

#- 34 GetCategory
samples/cli/sample-apps Platform getCategory \
    --categoryPath 'JLFwqPP8' \
    --namespace $AB_NAMESPACE \
    --storeId 'Bs9TM0Cq' \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
samples/cli/sample-apps Platform updateCategory \
    --categoryPath '90BRFvwc' \
    --namespace $AB_NAMESPACE \
    --storeId 'DqoJ3hAS' \
    --body '{"localizationDisplayNames": {"Ko82RoXE": "JHhMBvMY", "abFC3ky7": "semxrLNo", "ygglPVbv": "yWeqlrjo"}}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'LXUZPSYu' \
    --namespace $AB_NAMESPACE \
    --storeId 'wvPLDNk5' \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'GZ6RtO6a' \
    --namespace $AB_NAMESPACE \
    --storeId 'v7LUPfSx' \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'hVI25hQu' \
    --namespace $AB_NAMESPACE \
    --storeId 'DS4j75Oe' \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
samples/cli/sample-apps Platform queryCodes \
    --campaignId 'Vh2fnARp' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --batchName 'UTJY3Nub' \
    --batchNo '[85, 73, 75]' \
    --code 'ia8qZOfB' \
    --limit '57' \
    --offset '34' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
samples/cli/sample-apps Platform createCodes \
    --campaignId 'DFyzSXV6' \
    --namespace $AB_NAMESPACE \
    --body '{"batchName": "w332xyEQ", "codeValue": "j13ioTO7", "quantity": 21}' \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
samples/cli/sample-apps Platform download \
    --campaignId 'T0LDZUqw' \
    --namespace $AB_NAMESPACE \
    --batchName '3W2k5hl8' \
    --batchNo '[93, 84, 75]' \
    --withBatchName 'true' \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'SRXK48G3' \
    --namespace $AB_NAMESPACE \
    --batchName '2M5FcZ40' \
    --batchNo '[90, 19, 75]' \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'rjkMARwJ' \
    --namespace $AB_NAMESPACE \
    --batchName '11YW9sbq' \
    --batchNo '[30, 85, 69]' \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'MOQQf4Bl' \
    --namespace $AB_NAMESPACE \
    --code 'oSd3uoLW' \
    --limit '29' \
    --offset '29' \
    --userId '1uxhmSul' \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
samples/cli/sample-apps Platform getCode \
    --code '63AF4N6x' \
    --namespace $AB_NAMESPACE \
    --redeemable 'false' \
    --withBatchName 'false' \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
samples/cli/sample-apps Platform disableCode \
    --code 'pkbFfb7N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
samples/cli/sample-apps Platform enableCode \
    --code 'OMFJAi04' \
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
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 51 'ListCurrencies' test.out

#- 52 CreateCurrency
samples/cli/sample-apps Platform createCurrency \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "5sgJCf4x", "currencySymbol": "BIXGW11r", "currencyType": "VIRTUAL", "decimals": 38, "localizationDescriptions": {"P986njqt": "Khx5MzW3", "DbxooBW0": "1oWlix8a", "F54q3BCH": "vQGQgTBE"}}' \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'njiytftv' \
    --namespace $AB_NAMESPACE \
    --body '{"localizationDescriptions": {"fHg3WrZ0": "6pZVWRuX", "CRandLLV": "2L13SCBP", "Sv2tNYcB": "KnQNtlxz"}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'ff9PuZgC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'q2xVtMDA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'WsyjZNJp' \
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
    --body '{"data": [{"id": "TaL3sZ6o", "rewards": [{"currency": {"currencyCode": "fS67bt61", "namespace": "5gwOL15E"}, "item": {"itemId": "ewDGm7Of", "itemName": "ezx0KzUL", "itemSku": "baL17ujl", "itemType": "xn71eP4V"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "ZayhCvh8", "namespace": "sc3s84Ae"}, "item": {"itemId": "LPDMrLXA", "itemName": "XUHdUI7I", "itemSku": "74iTZVya", "itemType": "MBxtcLci"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "LtWa5d11", "namespace": "MArA1pbx"}, "item": {"itemId": "Ns0B6TOq", "itemName": "C5gTjeu7", "itemSku": "hORaH6O0", "itemType": "XjJOAYrN"}, "quantity": 72, "type": "CURRENCY"}]}, {"id": "HzCBcPgi", "rewards": [{"currency": {"currencyCode": "soqeAlXn", "namespace": "N7EkH48u"}, "item": {"itemId": "01XbfppK", "itemName": "F1zfVaQu", "itemSku": "W3Ifz0lf", "itemType": "SUyUsR3b"}, "quantity": 2, "type": "ITEM"}, {"currency": {"currencyCode": "ODTvMVZb", "namespace": "M0G6logR"}, "item": {"itemId": "IQcnyd4b", "itemName": "Cv5d6IKC", "itemSku": "lzfKbazq", "itemType": "THPz3gqQ"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"currencyCode": "b9IzS8Cx", "namespace": "esnHkgjS"}, "item": {"itemId": "Y8kHQ0iA", "itemName": "zXwUiI8J", "itemSku": "Laelu1vp", "itemType": "3mG02j1E"}, "quantity": 17, "type": "ITEM"}]}, {"id": "NmjSy6i8", "rewards": [{"currency": {"currencyCode": "TpH8yUqH", "namespace": "RLNAbvFg"}, "item": {"itemId": "svq6zjn4", "itemName": "7bwXN4Ii", "itemSku": "fDheSS8l", "itemType": "OhfDh1bb"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "GTEu0fYw", "namespace": "wNviiRjV"}, "item": {"itemId": "iCYNMY0t", "itemName": "bejJTPlp", "itemSku": "61j3eSkD", "itemType": "jqCAiNja"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "7Dq8PjRF", "namespace": "rhYDRJJr"}, "item": {"itemId": "dsNAaHtk", "itemName": "Iue9DD3X", "itemSku": "lwcLk0R2", "itemType": "XjtjnaUV"}, "quantity": 23, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"WMaMmmIT": "4sBUlaDQ", "KNw3smmc": "VCOVEbKV", "MALNsVos": "gaCbOOdY"}}, {"platform": "OCULUS", "platformDlcIdMap": {"qzXv2x2M": "7N65rdOG", "40JmfFSg": "DwROteIT", "ULdoZmaX": "ePREERk5"}}, {"platform": "XBOX", "platformDlcIdMap": {"fqvyKnbK": "CrBcpndH", "Ogx2yDpL": "YN2KPnjZ", "7Hx30rif": "UybC5WvX"}}]}' \
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
    --appType 'DLC' \
    --entitlementClazz 'APP' \
    --entitlementName 'kUwK8sHO' \
    --itemId '["PbcLa31G", "5Yy3JGRi", "3utRH5jf"]' \
    --limit '51' \
    --offset '70' \
    --origin 'GooglePlay' \
    --userId 'BMCpSBLa' \
    > test.out 2>&1
eval_tap $? 63 'QueryEntitlements1' test.out

#- 64 QueryEntitlements
samples/cli/sample-apps Platform queryEntitlements \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemIds '["DsAlsYxr", "rOBOqeNP", "UGztvNV7"]' \
    --limit '94' \
    --offset '58' \
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
    --body '{"entitlementGrantList": [{"collectionId": "e1rASfva", "endDate": "1994-09-10T00:00:00Z", "grantedCode": "7aQyCCjB", "itemId": "zdRk2vON", "itemNamespace": "imNx6Ked", "language": "bYku-MrZh", "metadata": {"EyVpjMBa": {}, "GlVbH0E0": {}, "NnG5seNM": {}}, "origin": "Xbox", "quantity": 14, "region": "fq8WZVUh", "source": "PROMOTION", "startDate": "1998-05-09T00:00:00Z", "storeId": "R3KvRCaQ"}, {"collectionId": "1ylRvUBm", "endDate": "1987-12-25T00:00:00Z", "grantedCode": "4DzDW809", "itemId": "1huySSUJ", "itemNamespace": "7DnK7uSp", "language": "Vz-Zegg-oz", "metadata": {"ZB0iqyrG": {}, "8dvQs3yY": {}, "SglWzpjV": {}}, "origin": "Xbox", "quantity": 55, "region": "AiqiIuTH", "source": "REFERRAL_BONUS", "startDate": "1975-07-18T00:00:00Z", "storeId": "kNZCVkEo"}, {"collectionId": "tsTCVRx5", "endDate": "1980-05-11T00:00:00Z", "grantedCode": "gVXwWOKr", "itemId": "SUWbL8ug", "itemNamespace": "fSTT50cW", "language": "TqHK_eYFY", "metadata": {"rYsNInid": {}, "x8Ny8aPY": {}, "Dqkgiqb6": {}}, "origin": "GooglePlay", "quantity": 72, "region": "bYz579bL", "source": "GIFT", "startDate": "1972-06-23T00:00:00Z", "storeId": "v1nvT50I"}], "userIds": ["7oYowtgA", "30LPSn3z", "Wj12vFAQ"]}' \
    > test.out 2>&1
eval_tap $? 67 'GrantEntitlements' test.out

#- 68 RevokeEntitlements
samples/cli/sample-apps Platform revokeEntitlements \
    --namespace $AB_NAMESPACE \
    --body '["kVsuNGgp", "rxKJSmiG", "wBxqTBLX"]' \
    > test.out 2>&1
eval_tap $? 68 'RevokeEntitlements' test.out

#- 69 GetEntitlement
samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'JuuvVmCB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'GetEntitlement' test.out

#- 70 QueryFulfillmentHistories
samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '35' \
    --status 'SUCCESS' \
    --userId 's9J8tpkc' \
    > test.out 2>&1
eval_tap $? 70 'QueryFulfillmentHistories' test.out

#- 71 QueryIAPClawbackHistory
samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace $AB_NAMESPACE \
    --endTime 'wNhRJ3zF' \
    --eventType 'CHARGEBACK_REVERSED' \
    --externalOrderId 'liWzgKCG' \
    --limit '8' \
    --offset '5' \
    --startTime 'LdfM0lgl' \
    --status 'INIT' \
    --userId '0TSz5gCm' \
    > test.out 2>&1
eval_tap $? 71 'QueryIAPClawbackHistory' test.out

#- 72 MockPlayStationStreamEvent
samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace $AB_NAMESPACE \
    --body '{"body": {"account": "EzYJSw4r", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 56, "clientTransactionId": "Cps2ySbk"}, {"amountConsumed": 11, "clientTransactionId": "Qrn31HyR"}, {"amountConsumed": 1, "clientTransactionId": "2o3N4wKD"}], "entitlementId": "xaf5OT4T", "usageCount": 62}, {"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "VlUvEwT9"}, {"amountConsumed": 48, "clientTransactionId": "XiN02bLh"}, {"amountConsumed": 49, "clientTransactionId": "XQklcQP7"}], "entitlementId": "S6QRxcdI", "usageCount": 68}, {"clientTransaction": [{"amountConsumed": 72, "clientTransactionId": "7Gq2Zmu7"}, {"amountConsumed": 77, "clientTransactionId": "qX9vMuef"}, {"amountConsumed": 32, "clientTransactionId": "4r3ehcRY"}], "entitlementId": "Wv49V2OP", "usageCount": 85}], "purpose": "f5dZ9uQH"}, "originalTitleName": "Yq8iDWk9", "paymentProductSKU": "jaw4Koh1", "purchaseDate": "My00qafv", "sourceOrderItemId": "Fsn7LXdP", "titleName": "I0dLgxkQ"}, "eventDomain": "heEPrTwf", "eventSource": "7JzbU821", "eventType": "qKHUVP7h", "eventVersion": 75, "id": "S4m38UMv", "timestamp": "RvQngykI"}' \
    > test.out 2>&1
eval_tap $? 72 'MockPlayStationStreamEvent' test.out

#- 73 MockXblClawbackEvent
samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"eventDate": "FqLbudRb", "eventState": "26CPJpf4", "lineItemId": "epEtLyqV", "orderId": "4dgy5I3m", "productId": "KchHPyE8", "productType": "iPIPxzIq", "purchasedDate": "fHAw3SxR", "sandboxId": "CDf61p2j", "skuId": "1v2DE4rQ", "subscriptionData": {"consumedDurationInDays": 36, "dateTime": "Muf7jZNR", "durationInDays": 30, "recurrenceId": "8yJyztkP"}}, "datacontenttype": "k1wsuMTK", "id": "FGGNwgK3", "source": "97hJMaJm", "specVersion": "XmYLZrSl", "subject": "p34QEZI1", "time": "Le5aq5Aa", "traceparent": "uWvjumIy", "type": "OFmWGNzj"}' \
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
    --body '{"appAppleId": 47, "bundleId": "KYhloevQ", "issuerId": "pj1l1TxV", "keyId": "DDQRlRqF", "password": "ZDLWu9Pe", "version": "V1"}' \
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
    --body '{"sandboxId": "KsZ4HF6x"}' \
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
    --body '{"applicationName": "cIhPO6fS", "notificationTokenAudience": "HqzVaIhd", "notificationTokenEmail": "ggkUyzKb", "packageName": "TIkb8nZm", "serviceAccountId": "vAXaFU1n"}' \
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
    --body '{"data": [{"itemIdentity": "dJHulUXs", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"oRn7ju4n": "464AMBxP", "9yPmtjzW": "tYOWSZHG", "zQgA2apa": "TmTwJsoM"}}, {"itemIdentity": "Hxos1bvD", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fMPfGPtk": "DHMTj0Tn", "aC8zBmjM": "por9BQ6v", "tvsQtA2d": "Ms4nfEdd"}}, {"itemIdentity": "THIe9EGz", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"SYnuoUjo": "Dk2DlflU", "EiEMsE4T": "VcilKTGd", "7c1O2UzL": "I9vRfpUW"}}]}' \
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
    --body '{"appId": "dpsPnw4g", "appSecret": "HYT0A7cK"}' \
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
    --body '{"backOfficeServerClientId": "Y3Ep9iVT", "backOfficeServerClientSecret": "vmQWtkYl", "enableStreamJob": false, "environment": "I2QV7mYU", "streamName": "FmE35xQH", "streamPartnerName": "Ln2htH0h"}' \
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
    --body '{"backOfficeServerClientId": "wi8dlt90", "backOfficeServerClientSecret": "OakHwbHx", "enableStreamJob": true, "environment": "EVKOGDHz", "streamName": "JbhlRdmi", "streamPartnerName": "ymAhpS5h"}' \
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
    --body '{"appId": "lJT6YJB2", "env": "LIVE", "publisherAuthenticationKey": "nLrq3Eux", "syncMode": "TRANSACTION"}' \
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
    --body '{"clientId": "nURvXUj8", "clientSecret": "yl2q85Nq", "organizationId": "VpNZQ8UH"}' \
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
    --body '{"enableClawback": false, "entraAppClientId": "pAINY8nj", "entraAppClientSecret": "WJ9MGgZD", "entraTenantId": "6rnGKsJh", "relyingPartyCert": "nKY79T1x"}' \
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
    --password 'Epu7RM89' \
    > test.out 2>&1
eval_tap $? 105 'UpdateXblBPCertFile' test.out

#- 106 QueryThirdPartyNotifications
samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'UlvIz4E0' \
    --externalId '0fWKAiOz' \
    --limit '49' \
    --offset '89' \
    --source 'OCULUS' \
    --startDate 'pg7pkhVa' \
    --status 'PROCESSED' \
    --type 'ACLwEA7q' \
    > test.out 2>&1
eval_tap $? 106 'QueryThirdPartyNotifications' test.out

#- 107 QueryAbnormalTransactions
samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '14' \
    --orderId 'vr6yqAh5' \
    --steamId 'GZBF94e0' \
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
    --body '{"env": "SANDBOX", "lastTime": "1974-06-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminResetSteamJobTime' test.out

#- 110 AdminRefundIAPOrder
samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'UqkvCbaQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminRefundIAPOrder' test.out

#- 111 QuerySteamReportHistories
samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '86' \
    --orderId 'lB7oBRVJ' \
    --processStatus 'ERROR' \
    --steamId 'F3FxGkeg' \
    > test.out 2>&1
eval_tap $? 111 'QuerySteamReportHistories' test.out

#- 112 QueryThirdPartySubscription
samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --groupId '5kiOGT6m' \
    --limit '53' \
    --offset '79' \
    --platform 'STADIA' \
    --productId '5bpYuiEu' \
    --userId 'eaZ0FvXB' \
    > test.out 2>&1
eval_tap $? 112 'QueryThirdPartySubscription' test.out

#- 113 GetIAPOrderConsumeDetails
samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'zJNSefZG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 113 'GetIAPOrderConsumeDetails' test.out

#- 114 DownloadInvoiceDetails
samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace $AB_NAMESPACE \
    --endTime 'BwhPIPKC' \
    --feature 'eB3VHADs' \
    --itemId 'rKmNSOpH' \
    --itemType 'APP' \
    --startTime '0SaN2dSu' \
    > test.out 2>&1
eval_tap $? 114 'DownloadInvoiceDetails' test.out

#- 115 GenerateInvoiceSummary
samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace $AB_NAMESPACE \
    --endTime 'QDX8Brpy' \
    --feature 'Vo6QnSnG' \
    --itemId '6cJuVdDj' \
    --itemType 'INGAMEITEM' \
    --startTime 'ztAS2eI0' \
    > test.out 2>&1
eval_tap $? 115 'GenerateInvoiceSummary' test.out

#- 116 SyncInGameItem
samples/cli/sample-apps Platform syncInGameItem \
    --namespace $AB_NAMESPACE \
    --storeId 'ztKHPQ4k' \
    --body '{"categoryPath": "H5qXqzlv", "targetItemId": "JQ3Z9wCZ", "targetNamespace": "OKpuWAph"}' \
    > test.out 2>&1
eval_tap $? 116 'SyncInGameItem' test.out

#- 117 CreateItem
samples/cli/sample-apps Platform createItem \
    --namespace $AB_NAMESPACE \
    --storeId 'urZnGOOB' \
    --body '{"appId": "em9O6phu", "appType": "GAME", "baseAppId": "PGZlJKka", "boothName": "NWNQ8dUm", "categoryPath": "6tR48hMh", "clazz": "X082MCWK", "displayOrder": 30, "entitlementType": "DURABLE", "ext": {"PLNw6th4": {}, "vhkQDISi": {}, "RS1DuOdH": {}}, "features": ["fbO8W7r2", "A1g25jJN", "RwJi1lqT"], "flexible": false, "images": [{"as": "AlmBUmf8", "caption": "KWBvPT5h", "height": 50, "imageUrl": "4bCJqbjm", "smallImageUrl": "66jkj3F8", "width": 51}, {"as": "kzHsGWWm", "caption": "6fZq0led", "height": 50, "imageUrl": "iJqxxnPn", "smallImageUrl": "o2iFYuC7", "width": 65}, {"as": "4Ai6SLqa", "caption": "3W65ybry", "height": 31, "imageUrl": "5nqiI3oZ", "smallImageUrl": "qtKuO8EO", "width": 76}], "inventoryConfig": {"customAttributes": {"EkI9aEMe": {}, "SIp7JOK4": {}, "JEWIZexd": {}}, "serverCustomAttributes": {"vO7UznwP": {}, "ivPOiY4h": {}, "Z1nvFIqZ": {}}, "slotUsed": 58}, "itemIds": ["ztJq5qFq", "G5t233er", "aJs6rvRL"], "itemQty": {"h89VjKuW": 42, "Ss7NxU2k": 57, "MAqHFMYY": 31}, "itemType": "COINS", "listable": false, "localizations": {"lXknOMaw": {"description": "wfRC3jIM", "localExt": {"g6mNaqBA": {}, "GM04LE5Z": {}, "T6FTWQB1": {}}, "longDescription": "Y11AXH4j", "title": "l714vLKt"}, "oGjcWwgr": {"description": "2AsSMSUk", "localExt": {"JYEAJg2F": {}, "Ibi4eZxl": {}, "fTyQIy2M": {}}, "longDescription": "neqM7eHM", "title": "Oh95ASyk"}, "1X1d3iB5": {"description": "1eGuiTh0", "localExt": {"6tzKQLsU": {}, "KNpBMEA8": {}, "isy523qu": {}}, "longDescription": "pN9w0x5Z", "title": "YrVHA29X"}}, "lootBoxConfig": {"rewardCount": 72, "rewards": [{"lootBoxItems": [{"count": 42, "duration": 13, "endDate": "1995-07-17T00:00:00Z", "itemId": "YNHLTvQe", "itemSku": "CCwNmalL", "itemType": "c6UKjqRd"}, {"count": 47, "duration": 22, "endDate": "1988-01-20T00:00:00Z", "itemId": "DEVFdjOx", "itemSku": "7mJWUvoS", "itemType": "m2HoZG7q"}, {"count": 95, "duration": 20, "endDate": "1998-01-26T00:00:00Z", "itemId": "oVr2oWQK", "itemSku": "ABsFIfwz", "itemType": "4k2ccpAq"}], "name": "uW7LdRAi", "odds": 0.9049381868022071, "type": "REWARD_GROUP", "weight": 22}, {"lootBoxItems": [{"count": 1, "duration": 44, "endDate": "1995-07-07T00:00:00Z", "itemId": "bVnmQZET", "itemSku": "c4izuIkg", "itemType": "s1PUxo06"}, {"count": 56, "duration": 54, "endDate": "1973-06-01T00:00:00Z", "itemId": "qz9DTU7x", "itemSku": "uleN5eGZ", "itemType": "VPP75Eqp"}, {"count": 58, "duration": 92, "endDate": "1976-01-10T00:00:00Z", "itemId": "xvA18KPz", "itemSku": "PhpKMQt5", "itemType": "S5vA3QNN"}], "name": "PIXq2Zvs", "odds": 0.330755049919477, "type": "REWARD", "weight": 78}, {"lootBoxItems": [{"count": 73, "duration": 1, "endDate": "1994-09-08T00:00:00Z", "itemId": "8K9tpp2o", "itemSku": "iImFrl3X", "itemType": "p7Q6J1yv"}, {"count": 64, "duration": 59, "endDate": "1980-04-06T00:00:00Z", "itemId": "rSV9Cnku", "itemSku": "58OgTEMv", "itemType": "oR7O71Uh"}, {"count": 96, "duration": 22, "endDate": "1992-03-11T00:00:00Z", "itemId": "lk2VMnVO", "itemSku": "r3yTDu0o", "itemType": "5GO6iveH"}], "name": "EI82hONE", "odds": 0.47475610469965246, "type": "REWARD_GROUP", "weight": 88}], "rollFunction": "DEFAULT"}, "maxCount": 54, "maxCountPerUser": 52, "name": "BTvKbc9j", "optionBoxConfig": {"boxItems": [{"count": 23, "duration": 43, "endDate": "1999-02-23T00:00:00Z", "itemId": "WBMP6MLn", "itemSku": "HL5PnLng", "itemType": "IVomK2le"}, {"count": 95, "duration": 6, "endDate": "1992-01-23T00:00:00Z", "itemId": "igsdV9Ui", "itemSku": "Ts7Ae9Sp", "itemType": "xB6jQE8x"}, {"count": 25, "duration": 90, "endDate": "1984-03-24T00:00:00Z", "itemId": "A1qt1yb6", "itemSku": "M3DaWWMN", "itemType": "WuyqX2Kk"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 97, "fixedTrialCycles": 73, "graceDays": 46}, "regionData": {"isZTrewE": [{"currencyCode": "DVUPnTb2", "currencyNamespace": "7CbN0nzf", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1992-09-07T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1980-12-17T00:00:00Z", "expireAt": "1994-01-12T00:00:00Z", "price": 17, "purchaseAt": "1983-02-05T00:00:00Z", "trialPrice": 9}, {"currencyCode": "de1l1Zau", "currencyNamespace": "fyFHz7bZ", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1974-09-06T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1994-06-11T00:00:00Z", "expireAt": "1985-05-18T00:00:00Z", "price": 71, "purchaseAt": "1986-12-15T00:00:00Z", "trialPrice": 56}, {"currencyCode": "kmjrvFGB", "currencyNamespace": "3jbakKNk", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1981-03-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1985-09-08T00:00:00Z", "expireAt": "1977-12-02T00:00:00Z", "price": 45, "purchaseAt": "1998-04-25T00:00:00Z", "trialPrice": 10}], "QlN35uG7": [{"currencyCode": "NAbzYwVz", "currencyNamespace": "0GRWdInZ", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1988-09-30T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1986-10-08T00:00:00Z", "expireAt": "1984-01-26T00:00:00Z", "price": 11, "purchaseAt": "1974-02-10T00:00:00Z", "trialPrice": 80}, {"currencyCode": "obDCuYwT", "currencyNamespace": "aT6xJ2sg", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1986-07-01T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-07-19T00:00:00Z", "expireAt": "1991-04-10T00:00:00Z", "price": 2, "purchaseAt": "1988-01-29T00:00:00Z", "trialPrice": 93}, {"currencyCode": "XsqUZAHk", "currencyNamespace": "ThAzpTrj", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1986-03-11T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1995-03-19T00:00:00Z", "expireAt": "1995-09-16T00:00:00Z", "price": 57, "purchaseAt": "1981-01-30T00:00:00Z", "trialPrice": 81}], "Z17udYwx": [{"currencyCode": "CpETMvjR", "currencyNamespace": "VA0Mecvk", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1982-03-10T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1986-03-07T00:00:00Z", "expireAt": "1977-07-07T00:00:00Z", "price": 94, "purchaseAt": "1978-06-15T00:00:00Z", "trialPrice": 67}, {"currencyCode": "NLyD6NqV", "currencyNamespace": "xbu6jLoN", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1980-01-12T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1999-06-01T00:00:00Z", "expireAt": "1991-10-16T00:00:00Z", "price": 30, "purchaseAt": "1985-05-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "lutD3xEv", "currencyNamespace": "8YdpCzxB", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1989-05-27T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1975-01-22T00:00:00Z", "expireAt": "1973-07-24T00:00:00Z", "price": 95, "purchaseAt": "1982-10-09T00:00:00Z", "trialPrice": 99}]}, "saleConfig": {"currencyCode": "PkutMsQX", "price": 39}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "vbhKWUrf", "stackable": true, "status": "INACTIVE", "tags": ["Whib1ufg", "kYWPju5g", "mi33KM85"], "targetCurrencyCode": "qpFuDvOG", "targetNamespace": "LOncVYno", "thumbnailUrl": "eWvIdbzC", "useCount": 82}' \
    > test.out 2>&1
eval_tap $? 117 'CreateItem' test.out

#- 118 GetItemByAppId
samples/cli/sample-apps Platform getItemByAppId \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'eBLmlJhs' \
    --appId 'wKD174mm' \
    > test.out 2>&1
eval_tap $? 118 'GetItemByAppId' test.out

#- 119 QueryItems
samples/cli/sample-apps Platform queryItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --appType 'GAME' \
    --availableDate '8HJL786Z' \
    --baseAppId 'epldWURX' \
    --categoryPath 'FyYVcdzx' \
    --features '7zcZhXRx' \
    --includeSubCategoryItem 'false' \
    --itemType 'APP' \
    --limit '89' \
    --offset '61' \
    --region '7L3PQK3L' \
    --sortBy '["createdAt:desc", "displayOrder"]' \
    --storeId 'heOtn9Qj' \
    --tags 'n2sLpAET' \
    --targetNamespace 'HoiLeoIK' \
    > test.out 2>&1
eval_tap $? 119 'QueryItems' test.out

#- 120 ListBasicItemsByFeatures
samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --features '["Al1hemP5", "riciSDho", "r1ZiHUIO"]' \
    > test.out 2>&1
eval_tap $? 120 'ListBasicItemsByFeatures' test.out

#- 121 GetItems
samples/cli/sample-apps Platform getItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'nAK9SYnz' \
    --itemIds 'lDx77nwc' \
    > test.out 2>&1
eval_tap $? 121 'GetItems' test.out

#- 122 GetItemBySku
samples/cli/sample-apps Platform getItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'wUyIHKQU' \
    --sku 'VnvG4oSJ' \
    > test.out 2>&1
eval_tap $? 122 'GetItemBySku' test.out

#- 123 GetLocaleItemBySku
samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'uvRq7xbo' \
    --populateBundle 'false' \
    --region 'eIdyrKEV' \
    --storeId 'HUtHfhuM' \
    --sku 'bbBrwdyd' \
    > test.out 2>&1
eval_tap $? 123 'GetLocaleItemBySku' test.out

#- 124 GetEstimatedPrice
samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --platform 'eC9mqfEh' \
    --region 'OBQozQen' \
    --storeId 'Me9Z0hka' \
    --itemIds 'iAfeUBzD' \
    --userId '1AaN5trw' \
    > test.out 2>&1
eval_tap $? 124 'GetEstimatedPrice' test.out

#- 125 GetItemIdBySku
samples/cli/sample-apps Platform getItemIdBySku \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --storeId 'mEf9p88i' \
    --sku 'QSF8GawR' \
    > test.out 2>&1
eval_tap $? 125 'GetItemIdBySku' test.out

#- 126 GetBulkItemIdBySkus
samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace $AB_NAMESPACE \
    --sku '["O1eudlCt", "WuMHwnAX", "56Ej553c"]' \
    --storeId 'QRweXZDU' \
    > test.out 2>&1
eval_tap $? 126 'GetBulkItemIdBySkus' test.out

#- 127 BulkGetLocaleItems
samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --language 'mqZZqi8G' \
    --region '8TiFuWFt' \
    --storeId 'u29qXekx' \
    --itemIds 'tQWX3CSq' \
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
    --platform 'DF7AIqsM' \
    --userId '2WbFyaIf' \
    --body '{"itemIds": ["C9rpptLq", "UcSdeepv", "EZP4Xeyi"]}' \
    > test.out 2>&1
eval_tap $? 129 'ValidateItemPurchaseCondition' test.out

#- 130 BulkUpdateRegionData
samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace $AB_NAMESPACE \
    --storeId 'cvfHhKeZ' \
    --body '{"changes": [{"itemIdentities": ["9iw6ycuP", "NeuzpNgB", "kZeMVCuQ"], "itemIdentityType": "ITEM_SKU", "regionData": {"qGVD3fTO": [{"currencyCode": "Ve3WCrIZ", "currencyNamespace": "woz9mhbg", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1987-10-30T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1976-11-11T00:00:00Z", "discountedPrice": 92, "expireAt": "1986-12-16T00:00:00Z", "price": 43, "purchaseAt": "1982-09-12T00:00:00Z", "trialPrice": 51}, {"currencyCode": "9vPgb7ai", "currencyNamespace": "PO2DiVFw", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1986-02-15T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1985-06-07T00:00:00Z", "discountedPrice": 52, "expireAt": "1980-11-16T00:00:00Z", "price": 3, "purchaseAt": "1989-12-17T00:00:00Z", "trialPrice": 41}, {"currencyCode": "ZwEtqQ24", "currencyNamespace": "w6bIb84p", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1989-07-22T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-07-30T00:00:00Z", "discountedPrice": 72, "expireAt": "1984-08-30T00:00:00Z", "price": 90, "purchaseAt": "1981-03-30T00:00:00Z", "trialPrice": 97}], "dsuu9Ds9": [{"currencyCode": "g0xPy490", "currencyNamespace": "E1vorTb6", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1981-08-02T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1999-10-16T00:00:00Z", "discountedPrice": 89, "expireAt": "1972-09-06T00:00:00Z", "price": 6, "purchaseAt": "1991-10-11T00:00:00Z", "trialPrice": 69}, {"currencyCode": "TK52MOMU", "currencyNamespace": "JjybutkV", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1997-06-11T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1999-03-20T00:00:00Z", "discountedPrice": 1, "expireAt": "1981-08-14T00:00:00Z", "price": 70, "purchaseAt": "1973-11-24T00:00:00Z", "trialPrice": 98}, {"currencyCode": "6cI9MfFv", "currencyNamespace": "mmq8KSvO", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1994-12-12T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1989-04-18T00:00:00Z", "discountedPrice": 69, "expireAt": "1991-05-29T00:00:00Z", "price": 59, "purchaseAt": "1999-01-15T00:00:00Z", "trialPrice": 12}], "SrHMMbMD": [{"currencyCode": "RAs2cbBw", "currencyNamespace": "78foxZsz", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1987-09-26T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1975-01-10T00:00:00Z", "discountedPrice": 60, "expireAt": "1985-12-02T00:00:00Z", "price": 44, "purchaseAt": "1990-10-10T00:00:00Z", "trialPrice": 69}, {"currencyCode": "y2qT8Rvt", "currencyNamespace": "LyQQxpal", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1980-01-10T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1979-06-27T00:00:00Z", "discountedPrice": 29, "expireAt": "1990-03-08T00:00:00Z", "price": 68, "purchaseAt": "1994-02-27T00:00:00Z", "trialPrice": 91}, {"currencyCode": "vVBmlzqV", "currencyNamespace": "aL047d2X", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1986-03-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1976-10-02T00:00:00Z", "discountedPrice": 11, "expireAt": "1979-06-02T00:00:00Z", "price": 69, "purchaseAt": "1992-09-14T00:00:00Z", "trialPrice": 33}]}}, {"itemIdentities": ["JKBeGZnY", "QrGv7J0u", "Qm3N9jA2"], "itemIdentityType": "ITEM_ID", "regionData": {"Fw6PD7Ho": [{"currencyCode": "anPSpmwD", "currencyNamespace": "ElGjHUS0", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1991-09-04T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1996-07-28T00:00:00Z", "discountedPrice": 59, "expireAt": "1985-02-21T00:00:00Z", "price": 32, "purchaseAt": "1973-04-17T00:00:00Z", "trialPrice": 94}, {"currencyCode": "RgU1GDVl", "currencyNamespace": "7vAUex04", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1980-03-26T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1996-08-19T00:00:00Z", "discountedPrice": 5, "expireAt": "1999-08-27T00:00:00Z", "price": 22, "purchaseAt": "1980-12-02T00:00:00Z", "trialPrice": 12}, {"currencyCode": "4yt6iwWb", "currencyNamespace": "2XyRBpWE", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1977-05-28T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-11-26T00:00:00Z", "discountedPrice": 82, "expireAt": "1997-11-06T00:00:00Z", "price": 29, "purchaseAt": "1982-02-28T00:00:00Z", "trialPrice": 54}], "LU9RWnbf": [{"currencyCode": "1tcbyaS2", "currencyNamespace": "Cu56dDj6", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1984-07-29T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1997-03-24T00:00:00Z", "discountedPrice": 94, "expireAt": "1990-02-10T00:00:00Z", "price": 75, "purchaseAt": "1975-10-09T00:00:00Z", "trialPrice": 30}, {"currencyCode": "9fP5NW3I", "currencyNamespace": "MRT0CON1", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1974-01-09T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1992-09-11T00:00:00Z", "discountedPrice": 55, "expireAt": "1984-09-20T00:00:00Z", "price": 71, "purchaseAt": "1971-01-17T00:00:00Z", "trialPrice": 58}, {"currencyCode": "DTLMabUg", "currencyNamespace": "vu7MDxn7", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1984-10-17T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1982-10-07T00:00:00Z", "discountedPrice": 62, "expireAt": "1998-08-27T00:00:00Z", "price": 40, "purchaseAt": "1972-07-10T00:00:00Z", "trialPrice": 71}], "Ilb1VII5": [{"currencyCode": "dewPC3Fd", "currencyNamespace": "zigf1Eum", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1996-08-01T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1971-08-13T00:00:00Z", "discountedPrice": 73, "expireAt": "1987-07-29T00:00:00Z", "price": 33, "purchaseAt": "1989-02-26T00:00:00Z", "trialPrice": 96}, {"currencyCode": "CDwrxEuU", "currencyNamespace": "IislM6dC", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1971-12-07T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1971-12-06T00:00:00Z", "discountedPrice": 70, "expireAt": "1971-05-31T00:00:00Z", "price": 28, "purchaseAt": "1990-08-28T00:00:00Z", "trialPrice": 93}, {"currencyCode": "M3vYr587", "currencyNamespace": "mwl24PXM", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1995-11-22T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1997-06-13T00:00:00Z", "discountedPrice": 31, "expireAt": "1985-05-25T00:00:00Z", "price": 51, "purchaseAt": "1996-03-30T00:00:00Z", "trialPrice": 67}]}}, {"itemIdentities": ["xhrvz6mD", "IRLMsxvx", "YgNkdRAg"], "itemIdentityType": "ITEM_SKU", "regionData": {"uLebXTRB": [{"currencyCode": "NC2GXBw3", "currencyNamespace": "giYoXS5H", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1973-03-14T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1993-03-30T00:00:00Z", "discountedPrice": 49, "expireAt": "1995-03-08T00:00:00Z", "price": 62, "purchaseAt": "1980-04-02T00:00:00Z", "trialPrice": 41}, {"currencyCode": "NUhE8cWP", "currencyNamespace": "6iTB6w4v", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1992-01-19T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1985-07-18T00:00:00Z", "discountedPrice": 23, "expireAt": "1976-03-08T00:00:00Z", "price": 45, "purchaseAt": "1980-02-22T00:00:00Z", "trialPrice": 96}, {"currencyCode": "5ZR9p4qP", "currencyNamespace": "580HJQSl", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1980-03-20T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1979-11-18T00:00:00Z", "discountedPrice": 66, "expireAt": "1979-11-22T00:00:00Z", "price": 43, "purchaseAt": "1977-07-30T00:00:00Z", "trialPrice": 25}], "KwM7OT0N": [{"currencyCode": "1zLN9fTj", "currencyNamespace": "Dc6Ti7NQ", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1972-06-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1982-08-16T00:00:00Z", "discountedPrice": 12, "expireAt": "1997-09-19T00:00:00Z", "price": 23, "purchaseAt": "1976-10-27T00:00:00Z", "trialPrice": 23}, {"currencyCode": "GppKnamf", "currencyNamespace": "D0hjJtMS", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1998-04-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1985-07-07T00:00:00Z", "discountedPrice": 37, "expireAt": "1985-02-05T00:00:00Z", "price": 32, "purchaseAt": "1999-08-25T00:00:00Z", "trialPrice": 24}, {"currencyCode": "WXrx9Uks", "currencyNamespace": "mgoyXlYf", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1981-08-17T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1988-03-27T00:00:00Z", "discountedPrice": 91, "expireAt": "1996-12-04T00:00:00Z", "price": 61, "purchaseAt": "1972-03-24T00:00:00Z", "trialPrice": 66}], "R2wDCEyr": [{"currencyCode": "3y1upPVh", "currencyNamespace": "S7HPHBEr", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1983-10-17T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1973-08-26T00:00:00Z", "discountedPrice": 52, "expireAt": "1983-01-27T00:00:00Z", "price": 34, "purchaseAt": "1976-08-02T00:00:00Z", "trialPrice": 6}, {"currencyCode": "tuGdHfBj", "currencyNamespace": "f44ErPDZ", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1985-06-10T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1984-07-16T00:00:00Z", "discountedPrice": 22, "expireAt": "1977-06-12T00:00:00Z", "price": 6, "purchaseAt": "1991-10-22T00:00:00Z", "trialPrice": 0}, {"currencyCode": "2VTARNbT", "currencyNamespace": "hK5ZKMXd", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1974-03-12T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1982-11-28T00:00:00Z", "discountedPrice": 73, "expireAt": "1979-07-15T00:00:00Z", "price": 59, "purchaseAt": "1996-01-17T00:00:00Z", "trialPrice": 55}]}}]}' \
    > test.out 2>&1
eval_tap $? 130 'BulkUpdateRegionData' test.out

#- 131 SearchItems
samples/cli/sample-apps Platform searchItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --itemType 'CODE' \
    --limit '79' \
    --offset '47' \
    --sortBy '13ka3Tpu' \
    --storeId 'tliZ8lBh' \
    --keyword '9hN0QCle' \
    --language 'ifmKfERc' \
    > test.out 2>&1
eval_tap $? 131 'SearchItems' test.out

#- 132 QueryUncategorizedItems
samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --limit '24' \
    --offset '68' \
    --sortBy '["displayOrder:asc", "name", "createdAt:asc"]' \
    --storeId 'UY9DNGEJ' \
    > test.out 2>&1
eval_tap $? 132 'QueryUncategorizedItems' test.out

#- 133 GetItem
samples/cli/sample-apps Platform getItem \
    --itemId 'waZuzbzH' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'KGPoLyd0' \
    > test.out 2>&1
eval_tap $? 133 'GetItem' test.out

#- 134 UpdateItem
samples/cli/sample-apps Platform updateItem \
    --itemId 'MHLcl13G' \
    --namespace $AB_NAMESPACE \
    --storeId 'ul2sbkN2' \
    --body '{"appId": "PYf8qgbX", "appType": "SOFTWARE", "baseAppId": "apqMcWPS", "boothName": "O4c414bW", "categoryPath": "D58e4nqy", "clazz": "kHNa913k", "displayOrder": 6, "entitlementType": "CONSUMABLE", "ext": {"4IQ6Roxf": {}, "Q3kf6wY3": {}, "3F278YW7": {}}, "features": ["Z84e17B7", "q9ILlmXo", "5WGtoErn"], "flexible": true, "images": [{"as": "PApBGAdX", "caption": "TgAOxblG", "height": 7, "imageUrl": "5gw5XGAG", "smallImageUrl": "Hwpa9HYp", "width": 11}, {"as": "yfqardqh", "caption": "vymWRhk2", "height": 28, "imageUrl": "yIvmCtzr", "smallImageUrl": "Hp6YIJOg", "width": 6}, {"as": "cvXrFCrS", "caption": "TY3uXqdo", "height": 4, "imageUrl": "cCEf41uf", "smallImageUrl": "LcFWfgxw", "width": 32}], "inventoryConfig": {"customAttributes": {"EEGskwQv": {}, "Ev6DLGDG": {}, "jL1cEDuh": {}}, "serverCustomAttributes": {"rMUloKH7": {}, "FbDcCpJF": {}, "U7giEnOf": {}}, "slotUsed": 50}, "itemIds": ["gZ93rDal", "m5hFDSOo", "LrIJAgvg"], "itemQty": {"6C5WJjEb": 76, "abqqhFqT": 79, "5kT9rPdU": 23}, "itemType": "BUNDLE", "listable": true, "localizations": {"QZPzWFZ9": {"description": "GZxQYmcc", "localExt": {"dShESvNZ": {}, "aONEH1It": {}, "7K5W9giB": {}}, "longDescription": "Trml7Qud", "title": "onrjXMcd"}, "ncHp4uIB": {"description": "BT5dfjJs", "localExt": {"kFOIxDcM": {}, "3Dq4Q888": {}, "aDXq6Z2b": {}}, "longDescription": "hSAiC83h", "title": "wEOYyB0i"}, "2bjmY1PD": {"description": "fYYScfl4", "localExt": {"rBAuUpR5": {}, "JcLcnx9w": {}, "xa1ZYT7E": {}}, "longDescription": "bkGaTJyk", "title": "kI1o2Yhn"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 77, "duration": 58, "endDate": "1994-11-13T00:00:00Z", "itemId": "lXb6NBwK", "itemSku": "HupowSS0", "itemType": "K9wrXYcI"}, {"count": 60, "duration": 18, "endDate": "1994-01-19T00:00:00Z", "itemId": "lvYd95p0", "itemSku": "duBEzDSO", "itemType": "P7jzPElW"}, {"count": 51, "duration": 47, "endDate": "1971-06-11T00:00:00Z", "itemId": "c5A21rXV", "itemSku": "Yiql2Utm", "itemType": "G0qhquAS"}], "name": "E3GAjhlN", "odds": 0.8345804394057631, "type": "REWARD", "weight": 36}, {"lootBoxItems": [{"count": 99, "duration": 20, "endDate": "1988-07-14T00:00:00Z", "itemId": "liAfhk36", "itemSku": "uVpiQGSN", "itemType": "4dXjc6Dv"}, {"count": 26, "duration": 27, "endDate": "1973-12-26T00:00:00Z", "itemId": "UMuDX8fX", "itemSku": "82lI8yVH", "itemType": "drbkrI8f"}, {"count": 85, "duration": 46, "endDate": "1981-11-23T00:00:00Z", "itemId": "EvqrYWrM", "itemSku": "uXRB4XXH", "itemType": "zXxrnJhW"}], "name": "qKqHQbbt", "odds": 0.2035515965976551, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 57, "duration": 6, "endDate": "1998-11-09T00:00:00Z", "itemId": "SOHHDEqM", "itemSku": "377NCrdo", "itemType": "I1hyHVkl"}, {"count": 79, "duration": 1, "endDate": "1993-05-27T00:00:00Z", "itemId": "vuE2x0jD", "itemSku": "ubfyJwUO", "itemType": "7R0z5Bpr"}, {"count": 93, "duration": 3, "endDate": "1989-08-29T00:00:00Z", "itemId": "wk9fkzvj", "itemSku": "zDBstkpR", "itemType": "ljqw5omD"}], "name": "t6pvZbc5", "odds": 0.49879104995854917, "type": "REWARD_GROUP", "weight": 10}], "rollFunction": "CUSTOM"}, "maxCount": 66, "maxCountPerUser": 40, "name": "aAR9ce8e", "optionBoxConfig": {"boxItems": [{"count": 60, "duration": 71, "endDate": "1988-03-28T00:00:00Z", "itemId": "VdRqDCet", "itemSku": "VQtIpT8n", "itemType": "mgVVL0Mn"}, {"count": 30, "duration": 73, "endDate": "1983-10-24T00:00:00Z", "itemId": "srsFjPcm", "itemSku": "mDOI9B3b", "itemType": "RIgQgWUj"}, {"count": 44, "duration": 41, "endDate": "1993-03-11T00:00:00Z", "itemId": "52frkxVv", "itemSku": "j0fykQ8G", "itemType": "qPLjA8fB"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 63, "fixedTrialCycles": 93, "graceDays": 18}, "regionData": {"ZHG4Lo7D": [{"currencyCode": "nyCJQ6KX", "currencyNamespace": "OUD57ETN", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1971-11-13T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1986-05-10T00:00:00Z", "expireAt": "1981-07-03T00:00:00Z", "price": 70, "purchaseAt": "1983-04-26T00:00:00Z", "trialPrice": 82}, {"currencyCode": "tTCILhL7", "currencyNamespace": "YEVexA9o", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1992-03-01T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1994-01-31T00:00:00Z", "expireAt": "1987-02-07T00:00:00Z", "price": 85, "purchaseAt": "1987-12-04T00:00:00Z", "trialPrice": 56}, {"currencyCode": "JDS0Rf5G", "currencyNamespace": "Y3Ow2WoC", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1996-06-03T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1992-09-07T00:00:00Z", "expireAt": "1984-03-03T00:00:00Z", "price": 43, "purchaseAt": "1971-11-10T00:00:00Z", "trialPrice": 66}], "CiN8Q3SG": [{"currencyCode": "eUjKt3bv", "currencyNamespace": "89fTwGku", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1980-08-15T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1973-03-02T00:00:00Z", "expireAt": "1985-09-09T00:00:00Z", "price": 36, "purchaseAt": "1987-04-12T00:00:00Z", "trialPrice": 21}, {"currencyCode": "zbhKaIUk", "currencyNamespace": "fnFX8fiO", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1978-08-29T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1979-03-27T00:00:00Z", "expireAt": "1992-09-04T00:00:00Z", "price": 98, "purchaseAt": "1981-11-21T00:00:00Z", "trialPrice": 66}, {"currencyCode": "L7dMCuln", "currencyNamespace": "UeRi0NId", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1990-01-22T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1983-04-23T00:00:00Z", "expireAt": "1981-07-08T00:00:00Z", "price": 48, "purchaseAt": "1995-06-30T00:00:00Z", "trialPrice": 84}], "rm11N0eV": [{"currencyCode": "1ogHaM4P", "currencyNamespace": "OWGnadYO", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1973-07-09T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1997-10-18T00:00:00Z", "expireAt": "1973-07-06T00:00:00Z", "price": 67, "purchaseAt": "1974-02-25T00:00:00Z", "trialPrice": 41}, {"currencyCode": "MsDTZFQT", "currencyNamespace": "6H2ctYv5", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1998-03-17T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1977-02-17T00:00:00Z", "expireAt": "1997-07-23T00:00:00Z", "price": 56, "purchaseAt": "1993-11-13T00:00:00Z", "trialPrice": 13}, {"currencyCode": "n0KNncxq", "currencyNamespace": "jhqUSIbW", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1985-10-16T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1993-09-17T00:00:00Z", "expireAt": "1994-09-15T00:00:00Z", "price": 34, "purchaseAt": "1975-09-15T00:00:00Z", "trialPrice": 32}]}, "saleConfig": {"currencyCode": "WuJA1kCd", "price": 75}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "0t3w7BDh", "stackable": true, "status": "INACTIVE", "tags": ["ZctA5XFL", "4XtKdq3L", "xNElB06o"], "targetCurrencyCode": "XihE6UY8", "targetNamespace": "VlErj7oj", "thumbnailUrl": "TDn8Yuo2", "useCount": 84}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateItem' test.out

#- 135 DeleteItem
samples/cli/sample-apps Platform deleteItem \
    --itemId 'j4bm4VPS' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["DLC", "IAP", "IAP"]' \
    --force 'true' \
    --storeId '9nwVghMu' \
    > test.out 2>&1
eval_tap $? 135 'DeleteItem' test.out

#- 136 AcquireItem
samples/cli/sample-apps Platform acquireItem \
    --itemId 'y7rtPedU' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 1, "orderNo": "RXSDlIkJ"}' \
    > test.out 2>&1
eval_tap $? 136 'AcquireItem' test.out

#- 137 GetApp
samples/cli/sample-apps Platform getApp \
    --itemId 'r86Dial0' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --storeId 'uBzT0QPI' \
    > test.out 2>&1
eval_tap $? 137 'GetApp' test.out

#- 138 UpdateApp
samples/cli/sample-apps Platform updateApp \
    --itemId 'cW5AjVXe' \
    --namespace $AB_NAMESPACE \
    --storeId 'a8b6ApiT' \
    --body '{"carousel": [{"alt": "hHLYYHO8", "previewUrl": "zgJ6zHMb", "thumbnailUrl": "lqrHZwjb", "type": "video", "url": "qdasV7hH", "videoSource": "generic"}, {"alt": "cKk0105q", "previewUrl": "jxN9jpia", "thumbnailUrl": "E1cEfqSb", "type": "image", "url": "GtsTtKoT", "videoSource": "vimeo"}, {"alt": "kOpM35K6", "previewUrl": "dsO8VGsS", "thumbnailUrl": "uyyMNEMF", "type": "image", "url": "1CmkhQFK", "videoSource": "vimeo"}], "developer": "YJ1CAkhe", "forumUrl": "NkCOGrIz", "genres": ["Action", "Casual", "FreeToPlay"], "localizations": {"0Ig8ncQ7": {"announcement": "QzBSHkk7", "slogan": "lWhmH77u"}, "Jkkpgoe8": {"announcement": "1ArwPV93", "slogan": "AXcbtOiI"}, "tPucd63t": {"announcement": "luSX3DIW", "slogan": "DqFHn9At"}}, "platformRequirements": {"oCEqbe0i": [{"additionals": "HlbSTgdK", "directXVersion": "Zq5Vt8Ej", "diskSpace": "LQPL03CH", "graphics": "JUBQtcY2", "label": "u2JDLliy", "osVersion": "R4DYLADo", "processor": "XH3G5m7w", "ram": "RtpI02Lo", "soundCard": "d6XU4QJg"}, {"additionals": "ln7y0XdS", "directXVersion": "Df63gpxi", "diskSpace": "C3jwHaN9", "graphics": "VujX2y4D", "label": "3vGenSUf", "osVersion": "PoTtG4Wk", "processor": "lktM4oOc", "ram": "BPhOy4cw", "soundCard": "2fQqU9Os"}, {"additionals": "oJIgD7D2", "directXVersion": "xc95nfWw", "diskSpace": "pZmQHA3v", "graphics": "dQpGzJGw", "label": "40Uk0WdB", "osVersion": "8nU9897j", "processor": "jP5CQS0O", "ram": "i5h1x0Oj", "soundCard": "hwmDutjY"}], "HIwcfUYH": [{"additionals": "ByF5sN60", "directXVersion": "5nfIaoTl", "diskSpace": "ZrcKuvc7", "graphics": "nf1Me342", "label": "v5QqXcbR", "osVersion": "qnMsYWka", "processor": "u8YGGTSU", "ram": "ZWxoQ3x4", "soundCard": "I4TvMfGB"}, {"additionals": "QNOwM9sT", "directXVersion": "REgqENwn", "diskSpace": "UNPxAfMu", "graphics": "Y5AHlNC3", "label": "YJrfxUoq", "osVersion": "8j55HgQh", "processor": "QaCAy8Ox", "ram": "UP7VTH2B", "soundCard": "uMVm415O"}, {"additionals": "LhPwzme9", "directXVersion": "6mXmPJ8y", "diskSpace": "F2ykYTJW", "graphics": "qzGSXVUM", "label": "BTh2qyWE", "osVersion": "FtryIkrL", "processor": "VvuqwK50", "ram": "r4MBkomd", "soundCard": "GWvvriqM"}], "Hg8WDKFM": [{"additionals": "hrM3znMX", "directXVersion": "aPLKUewL", "diskSpace": "PlqiMJcM", "graphics": "QfprLlp8", "label": "NaCmhrBj", "osVersion": "JaQSEvvY", "processor": "snKnphCE", "ram": "m4tGJlVS", "soundCard": "VL905BIv"}, {"additionals": "7iek5Ap0", "directXVersion": "HAZq7Kub", "diskSpace": "8TqFe6Lb", "graphics": "jxfvVHs3", "label": "J0vd2neV", "osVersion": "1ydwSwtl", "processor": "h1kEFrs8", "ram": "PFWdikom", "soundCard": "GEWeGwuv"}, {"additionals": "T7TTWbLj", "directXVersion": "dP1AwPvX", "diskSpace": "PsZYaXDj", "graphics": "NjxI4g8j", "label": "XvcBjr2I", "osVersion": "otUGSgF3", "processor": "lEILlBNy", "ram": "i5a8ODIb", "soundCard": "yKZywGgx"}]}, "platforms": ["IOS", "Linux", "IOS"], "players": ["MMO", "Coop", "Single"], "primaryGenre": "FreeToPlay", "publisher": "n8TUjM0a", "releaseDate": "1991-11-26T00:00:00Z", "websiteUrl": "wlXnjjKp"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateApp' test.out

#- 139 DisableItem
samples/cli/sample-apps Platform disableItem \
    --itemId 'OtEua8Gd' \
    --namespace $AB_NAMESPACE \
    --storeId 'bVirzG2I' \
    --body '{"featuresToCheck": ["CATALOG", "CAMPAIGN", "ENTITLEMENT"]}' \
    > test.out 2>&1
eval_tap $? 139 'DisableItem' test.out

#- 140 GetItemDynamicData
samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'jr4wU1hc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'GetItemDynamicData' test.out

#- 141 EnableItem
samples/cli/sample-apps Platform enableItem \
    --itemId '0RlobDtE' \
    --namespace $AB_NAMESPACE \
    --storeId 'tesuJ7mn' \
    > test.out 2>&1
eval_tap $? 141 'EnableItem' test.out

#- 142 FeatureItem
samples/cli/sample-apps Platform featureItem \
    --feature 'GGY8IGtQ' \
    --itemId 'hdOttX8G' \
    --namespace $AB_NAMESPACE \
    --storeId 'QfNd2Vq6' \
    > test.out 2>&1
eval_tap $? 142 'FeatureItem' test.out

#- 143 DefeatureItem
samples/cli/sample-apps Platform defeatureItem \
    --feature 'LrLcHwy9' \
    --itemId 'kLaaBXLt' \
    --namespace $AB_NAMESPACE \
    --storeId 'AhNfbbql' \
    > test.out 2>&1
eval_tap $? 143 'DefeatureItem' test.out

#- 144 GetLocaleItem
samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'Jlg74QaN' \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --language 'WRRcWQNU' \
    --populateBundle 'true' \
    --region 'Im5hWZUx' \
    --storeId 'q7uFL3q1' \
    > test.out 2>&1
eval_tap $? 144 'GetLocaleItem' test.out

#- 145 UpdateItemPurchaseCondition
samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId '9SrmZOHp' \
    --namespace $AB_NAMESPACE \
    --storeId '4BS7nFw6' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 81, "code": "ohZikrJ1", "comparison": "isGreaterThan", "name": "GUCaWXDo", "predicateType": "StatisticCodePredicate", "value": "AkEgULFz", "values": ["ggTjNjeI", "G5z19zPb", "03tU3iTh"]}, {"anyOf": 27, "code": "C1MCpt2h", "comparison": "isGreaterThan", "name": "uMm1OTRR", "predicateType": "SeasonTierPredicate", "value": "KPla2Wzj", "values": ["dLEP9yIE", "xngJAOWs", "qNoO2qKM"]}, {"anyOf": 9, "code": "ArqW7YPy", "comparison": "isGreaterThan", "name": "VTgZo3L0", "predicateType": "StatisticCodePredicate", "value": "swVxFqP2", "values": ["PuWpOmHG", "kzYvugtu", "nRV3amOu"]}]}, {"operator": "or", "predicates": [{"anyOf": 80, "code": "WBdUoQRD", "comparison": "is", "name": "gafVBFA4", "predicateType": "StatisticCodePredicate", "value": "jMSDfova", "values": ["z50KDZYf", "w7SUg4qK", "rPzFmp9w"]}, {"anyOf": 65, "code": "LM9HdzdN", "comparison": "isGreaterThan", "name": "qIlhM5W9", "predicateType": "SeasonTierPredicate", "value": "BYPzzLrA", "values": ["zHRw2RSn", "Rh3Q8uXX", "m0ibQ7kB"]}, {"anyOf": 69, "code": "Wtc3eAmh", "comparison": "isGreaterThan", "name": "0x6Pkebd", "predicateType": "SeasonTierPredicate", "value": "4zK39U35", "values": ["OlprGnZp", "hoaOhDFm", "Ipye61Jp"]}]}, {"operator": "or", "predicates": [{"anyOf": 56, "code": "CG38Tg96", "comparison": "excludes", "name": "HY4jvuGA", "predicateType": "StatisticCodePredicate", "value": "wS6ninzR", "values": ["ihAvlZdj", "bXusPvoB", "hT8DoqEU"]}, {"anyOf": 55, "code": "oU7gSk55", "comparison": "isLessThanOrEqual", "name": "yUsAHGWc", "predicateType": "StatisticCodePredicate", "value": "Kv1qxIpi", "values": ["uJ56bpWZ", "YcQZuz0B", "v3mIaxi5"]}, {"anyOf": 68, "code": "1rf8ZB3W", "comparison": "is", "name": "kWUmjEGt", "predicateType": "SeasonPassPredicate", "value": "DcmSoE4b", "values": ["fQMPI2uq", "4ObZ7SKx", "1JN9ivDa"]}]}]}}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateItemPurchaseCondition' test.out

#- 146 QueryItemReferences
samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'Ky32wBpT' \
    --namespace $AB_NAMESPACE \
    --featuresToCheck '["REWARD", "DLC", "REWARD"]' \
    --storeId 'nWa3AhcR' \
    > test.out 2>&1
eval_tap $? 146 'QueryItemReferences' test.out

#- 147 ReturnItem
samples/cli/sample-apps Platform returnItem \
    --itemId 'c8yJxAW1' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "yDDnIdNx"}' \
    > test.out 2>&1
eval_tap $? 147 'ReturnItem' test.out

#- 148 QueryKeyGroups
samples/cli/sample-apps Platform queryKeyGroups \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --name 'wImSQMwx' \
    --offset '50' \
    --tag 'M5Sgtzn6' \
    > test.out 2>&1
eval_tap $? 148 'QueryKeyGroups' test.out

#- 149 CreateKeyGroup
samples/cli/sample-apps Platform createKeyGroup \
    --namespace $AB_NAMESPACE \
    --body '{"description": "x37XKMxx", "name": "ycN7znKh", "status": "ACTIVE", "tags": ["3BX5cA5G", "eECSl2UI", "JyfmrRVy"]}' \
    > test.out 2>&1
eval_tap $? 149 'CreateKeyGroup' test.out

#- 150 GetKeyGroupByBoothName
eval_tap 0 150 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 151 GetKeyGroup
samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'FwC809W1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 151 'GetKeyGroup' test.out

#- 152 UpdateKeyGroup
samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'WVfAQYgi' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "d9dxlI9V", "name": "7ZPPNm3X", "status": "INACTIVE", "tags": ["OIGhIqL4", "zgcEe1gk", "hRVNRWuE"]}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateKeyGroup' test.out

#- 153 GetKeyGroupDynamic
samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'wur1rq9I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroupDynamic' test.out

#- 154 ListKeys
samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'bZdmEPyK' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '14' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 154 'ListKeys' test.out

#- 155 UploadKeys
samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'QWtMVejB' \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 155 'UploadKeys' test.out

#- 156 QueryOrders
samples/cli/sample-apps Platform queryOrders \
    --namespace $AB_NAMESPACE \
    --endTime 'sx6oSnD0' \
    --limit '29' \
    --offset '46' \
    --orderNos '["t5KPg4sT", "hj8XmUHr", "aZvsne6N"]' \
    --sortBy 'YzkwSngz' \
    --startTime '5FQjxkji' \
    --status 'CHARGED' \
    --withTotal 'true' \
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
    --orderNo 'G2ftMPo1' \
    > test.out 2>&1
eval_tap $? 158 'GetOrder' test.out

#- 159 RefundOrder
samples/cli/sample-apps Platform refundOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'BUK8xpEa' \
    --body '{"description": "0iZavAtu"}' \
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
    --body '{"domains": ["L5qptNyF", "5VwkC51A", "30s0zg0u"]}' \
    > test.out 2>&1
eval_tap $? 163 'UpdatePaymentDomainWhitelistConfig' test.out

#- 164 QueryPaymentNotifications
samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace $AB_NAMESPACE \
    --endDate 'hBRJmhgm' \
    --externalId 'ZGoqCpXP' \
    --limit '85' \
    --notificationSource 'WXPAY' \
    --notificationType 'iEJLXIlc' \
    --offset '0' \
    --paymentOrderNo 'mkqgMdv4' \
    --startDate 'Y91efsNZ' \
    --status 'PROCESSED' \
    > test.out 2>&1
eval_tap $? 164 'QueryPaymentNotifications' test.out

#- 165 QueryPaymentOrders
samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace $AB_NAMESPACE \
    --channel 'INTERNAL' \
    --extTxId 'qxxuqXxl' \
    --limit '24' \
    --offset '30' \
    --status 'DELETED' \
    > test.out 2>&1
eval_tap $? 165 'QueryPaymentOrders' test.out

#- 166 CreatePaymentOrderByDedicated
samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --body '{"currencyCode": "BNa9Buyw", "currencyNamespace": "i6ZPfKru", "customParameters": {"SmkMAXPp": {}, "AT6D5yLC": {}, "qO2BFXyE": {}}, "description": "YqudGcHI", "extOrderNo": "HOK1PdrL", "extUserId": "XrRgGmbf", "itemType": "EXTENSION", "language": "KOdK-aapZ", "metadata": {"yMP1BF0d": "trXidycW", "MqIwMek1": "JFeFwUgz", "wEGBgn8p": "IKSof5l7"}, "notifyUrl": "Q8gzTJ8z", "omitNotification": true, "platform": "ETIyVhAH", "price": 39, "recurringPaymentOrderNo": "3nkXPRR3", "region": "3uEFPnFK", "returnUrl": "jNGKsyfP", "sandbox": true, "sku": "Do6OqApF", "subscriptionId": "Slnljcpa", "targetNamespace": "Rouo4p48", "targetUserId": "WEk8SMZd", "title": "NhBb9usb"}' \
    > test.out 2>&1
eval_tap $? 166 'CreatePaymentOrderByDedicated' test.out

#- 167 ListExtOrderNoByExtTxId
samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace $AB_NAMESPACE \
    --extTxId 'mC3iKW5o' \
    > test.out 2>&1
eval_tap $? 167 'ListExtOrderNoByExtTxId' test.out

#- 168 GetPaymentOrder
samples/cli/sample-apps Platform getPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'UGsWXehs' \
    > test.out 2>&1
eval_tap $? 168 'GetPaymentOrder' test.out

#- 169 ChargePaymentOrder
samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'akBJXsP7' \
    --body '{"extTxId": "MFTVDA2I", "paymentMethod": "PDAzqPKf", "paymentProvider": "PAYPAL"}' \
    > test.out 2>&1
eval_tap $? 169 'ChargePaymentOrder' test.out

#- 170 RefundPaymentOrderByDedicated
samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'jKS93yuM' \
    --body '{"description": "070oTDqp"}' \
    > test.out 2>&1
eval_tap $? 170 'RefundPaymentOrderByDedicated' test.out

#- 171 SimulatePaymentOrderNotification
samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'HBt263ow' \
    --body '{"amount": 27, "currencyCode": "BXpWeYZo", "notifyType": "CHARGE", "paymentProvider": "NEONPAY", "salesTax": 3, "vat": 4}' \
    > test.out 2>&1
eval_tap $? 171 'SimulatePaymentOrderNotification' test.out

#- 172 GetPaymentOrderChargeStatus
samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'wJtmn3WW' \
    > test.out 2>&1
eval_tap $? 172 'GetPaymentOrderChargeStatus' test.out

#- 173 GetPsnEntitlementOwnership
samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel '2UmlTTz6' \
    --namespace $AB_NAMESPACE \
    --body '{"accessToken": "EGmjU7dt", "serviceLabel": 98}' \
    > test.out 2>&1
eval_tap $? 173 'GetPsnEntitlementOwnership' test.out

#- 174 GetXboxEntitlementOwnership
samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace $AB_NAMESPACE \
    --productSku 'NgBj1U9h' \
    --body '{"delegationToken": "sElfYV7b", "sandboxId": "jJC6GdUg"}' \
    > test.out 2>&1
eval_tap $? 174 'GetXboxEntitlementOwnership' test.out

#- 175 GetPlatformEntitlementConfig
samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    > test.out 2>&1
eval_tap $? 175 'GetPlatformEntitlementConfig' test.out

#- 176 UpdatePlatformEntitlementConfig
samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Oculus' \
    --body '{"allowedPlatformOrigins": ["System", "Playstation", "GooglePlay"]}' \
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
    --platform 'Steam' \
    --body '{"allowedBalanceOrigins": ["Oculus", "IOS", "Other"]}' \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformWalletConfig' test.out

#- 179 ResetPlatformWalletConfig
samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace $AB_NAMESPACE \
    --platform 'Nintendo' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --endTime 'LOOZX1ho' \
    --limit '2' \
    --offset '81' \
    --source 'OTHER' \
    --startTime 'Xy6yutJu' \
    --status 'SUCCESS' \
    --transactionId 'JJbekEhH' \
    --userId 'xQwn9qSy' \
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
    --body '{"appConfig": {"appName": "EZMk2lm2"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "A4qzihFq"}, "extendType": "APP"}' \
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
    --body '{"description": "B5lmxvan", "eventTopic": "gE71UF3w", "maxAwarded": 96, "maxAwardedPerUser": 24, "namespaceExpression": "bmFg6Jvn", "rewardCode": "52EDbhl9", "rewardConditions": [{"condition": "Oh33QgVE", "conditionName": "hZI1IgaD", "eventName": "uZS5vlzc", "rewardItems": [{"duration": 70, "endDate": "1994-03-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zk43YOhE", "quantity": 67, "sku": "5gPt0rbZ"}, {"duration": 82, "endDate": "1987-08-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "HukLWGWS", "quantity": 20, "sku": "82AKIQVb"}, {"duration": 19, "endDate": "1974-12-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "oZNyOROU", "quantity": 7, "sku": "R8ZJi6Xe"}]}, {"condition": "vGbVwuxL", "conditionName": "8X2fGg62", "eventName": "u6CeAPcW", "rewardItems": [{"duration": 54, "endDate": "1981-05-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4SlzpXl3", "quantity": 98, "sku": "ocNb4HwW"}, {"duration": 25, "endDate": "1991-11-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Dd6BBvcb", "quantity": 25, "sku": "uuc4kuTf"}, {"duration": 79, "endDate": "1974-08-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HlY7dQHV", "quantity": 62, "sku": "f0OfDZq7"}]}, {"condition": "Vp26Ju3W", "conditionName": "3XK7N2Tt", "eventName": "N5RVMaOZ", "rewardItems": [{"duration": 19, "endDate": "1975-12-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "za6VGvSa", "quantity": 28, "sku": "OvzUzo0s"}, {"duration": 35, "endDate": "1991-07-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bdVlXW5s", "quantity": 32, "sku": "7DYr27LJ"}, {"duration": 50, "endDate": "1971-03-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "lZ93QNfJ", "quantity": 84, "sku": "1d5oNNm3"}]}], "userIdExpression": "Fp7Hh2hC"}' \
    > test.out 2>&1
eval_tap $? 188 'CreateReward' test.out

#- 189 QueryRewards
samples/cli/sample-apps Platform queryRewards \
    --namespace $AB_NAMESPACE \
    --eventTopic 'rCpRtDbg' \
    --limit '7' \
    --offset '40' \
    --sortBy '["namespace:desc", "rewardCode:asc"]' \
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
    --rewardId 'DXtmB3Hu' \
    > test.out 2>&1
eval_tap $? 192 'GetReward' test.out

#- 193 UpdateReward
samples/cli/sample-apps Platform updateReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'kyk2cKv9' \
    --body '{"description": "K5DEMll1", "eventTopic": "4XawwBOM", "maxAwarded": 85, "maxAwardedPerUser": 24, "namespaceExpression": "EaccR7Ey", "rewardCode": "4jN9FNFK", "rewardConditions": [{"condition": "jKHU6q3d", "conditionName": "YH3a70oc", "eventName": "I0ytBnoU", "rewardItems": [{"duration": 97, "endDate": "1995-05-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SExXN61r", "quantity": 23, "sku": "cw4Fn243"}, {"duration": 45, "endDate": "1992-04-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "otYhrAfF", "quantity": 61, "sku": "hyi0xtVo"}, {"duration": 1, "endDate": "1971-08-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "p0LjcVAv", "quantity": 44, "sku": "ESfS503u"}]}, {"condition": "MemErZIE", "conditionName": "uwlzcCBK", "eventName": "u5YnR72y", "rewardItems": [{"duration": 60, "endDate": "1995-12-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "39SCwk7B", "quantity": 41, "sku": "doPndD1m"}, {"duration": 92, "endDate": "1987-02-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4jgOyFTm", "quantity": 35, "sku": "J9PjGfR6"}, {"duration": 87, "endDate": "1976-05-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9VhMvqUs", "quantity": 82, "sku": "pmJS13Gr"}]}, {"condition": "6cCLUwsn", "conditionName": "FDTnfqmo", "eventName": "lmyhu5JB", "rewardItems": [{"duration": 55, "endDate": "1974-08-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PWGzeBFs", "quantity": 7, "sku": "LynTnVeN"}, {"duration": 66, "endDate": "1990-04-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UrKPu0uI", "quantity": 66, "sku": "6v7bXGV6"}, {"duration": 44, "endDate": "1997-02-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Ibz2Po1K", "quantity": 61, "sku": "unJZEzPf"}]}], "userIdExpression": "LClPgE8o"}' \
    > test.out 2>&1
eval_tap $? 193 'UpdateReward' test.out

#- 194 DeleteReward
samples/cli/sample-apps Platform deleteReward \
    --namespace $AB_NAMESPACE \
    --rewardId 'GyHQkjOa' \
    > test.out 2>&1
eval_tap $? 194 'DeleteReward' test.out

#- 195 CheckEventCondition
samples/cli/sample-apps Platform checkEventCondition \
    --namespace $AB_NAMESPACE \
    --rewardId 'TW3c7yzC' \
    --body '{"payload": {"Je6KLw2p": {}, "oX83rmgi": {}, "BAplF1zC": {}}}' \
    > test.out 2>&1
eval_tap $? 195 'CheckEventCondition' test.out

#- 196 DeleteRewardConditionRecord
samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace $AB_NAMESPACE \
    --rewardId 'cFSTAZbx' \
    --body '{"conditionName": "xwusHDte", "userId": "NTLPorzb"}' \
    > test.out 2>&1
eval_tap $? 196 'DeleteRewardConditionRecord' test.out

#- 197 QuerySections
samples/cli/sample-apps Platform querySections \
    --namespace $AB_NAMESPACE \
    --end 'ucdAtbVm' \
    --limit '55' \
    --offset '2' \
    --start 'JXkMDYoC' \
    --storeId 'ihiFicK1' \
    --viewId 'YYBDFokx' \
    > test.out 2>&1
eval_tap $? 197 'QuerySections' test.out

#- 198 CreateSection
samples/cli/sample-apps Platform createSection \
    --namespace $AB_NAMESPACE \
    --storeId 'NnmN9EYf' \
    --body '{"active": true, "displayOrder": 7, "endDate": "1998-09-10T00:00:00Z", "ext": {"PjHb9uKU": {}, "CWY5xef7": {}, "ToAOf0To": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 12, "itemCount": 39, "rule": "SEQUENCE"}, "items": [{"id": "TEQD4GzJ", "sku": "pQDdEVWm"}, {"id": "0Q44VbLp", "sku": "9j9oHdRZ"}, {"id": "26LY6QRB", "sku": "HksJfsN6"}], "localizations": {"6VXUbuIJ": {"description": "GulkEOwl", "localExt": {"U2FlLcNW": {}, "DOX0labe": {}, "GzLwOcFA": {}}, "longDescription": "KPd0199Y", "title": "mFArwRjr"}, "P62wlnMA": {"description": "Zog9eLfA", "localExt": {"jqyFEwcy": {}, "QTecyg3s": {}, "aT4OtjNJ": {}}, "longDescription": "PwtlMhv1", "title": "npkCOyMu"}, "MVv5zaUl": {"description": "s0tfFjOy", "localExt": {"IyUGbq3l": {}, "8hSqwxfQ": {}, "he06xXyd": {}}, "longDescription": "GWdIFV8B", "title": "CwKUqqZ7"}}, "name": "sHS0ap8R", "rotationType": "CUSTOM", "startDate": "1980-01-21T00:00:00Z", "viewId": "tdImsPjb"}' \
    > test.out 2>&1
eval_tap $? 198 'CreateSection' test.out

#- 199 PurgeExpiredSection
samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace $AB_NAMESPACE \
    --storeId 'TWAijhbF' \
    > test.out 2>&1
eval_tap $? 199 'PurgeExpiredSection' test.out

#- 200 GetSection
samples/cli/sample-apps Platform getSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'WSvrnPJe' \
    --storeId '60resPJ1' \
    > test.out 2>&1
eval_tap $? 200 'GetSection' test.out

#- 201 UpdateSection
samples/cli/sample-apps Platform updateSection \
    --namespace $AB_NAMESPACE \
    --sectionId 'XNs2RZHZ' \
    --storeId '3aZyTs84' \
    --body '{"active": false, "displayOrder": 64, "endDate": "1977-04-20T00:00:00Z", "ext": {"uGTDdgDM": {}, "dyyqhGDB": {}, "0krRDWHX": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 47, "itemCount": 75, "rule": "SEQUENCE"}, "items": [{"id": "7IEPHWKN", "sku": "o3YFIIpj"}, {"id": "Ju5QuubK", "sku": "yBdqJliY"}, {"id": "LuhrOL22", "sku": "l8RCBbjG"}], "localizations": {"7TFZuqkC": {"description": "0iIdiXpk", "localExt": {"5yC7kJWG": {}, "o4OXgori": {}, "bsff1ZfI": {}}, "longDescription": "C8yujEWK", "title": "tXrPh54I"}, "q1reEjx5": {"description": "EdV6dTmQ", "localExt": {"5wxhBwLK": {}, "12v2FyEy": {}, "HZlAOjcq": {}}, "longDescription": "wFN9CFZ5", "title": "VSYOLXZQ"}, "Fj9BDUym": {"description": "URMSlxUY", "localExt": {"sYLZin9w": {}, "YYyZBCKj": {}, "mwHqli7l": {}}, "longDescription": "1yqV0eTI", "title": "QCI7M5FU"}}, "name": "a25O1Vr1", "rotationType": "FIXED_PERIOD", "startDate": "1975-08-13T00:00:00Z", "viewId": "JCWwgyFv"}' \
    > test.out 2>&1
eval_tap $? 201 'UpdateSection' test.out

#- 202 DeleteSection
samples/cli/sample-apps Platform deleteSection \
    --namespace $AB_NAMESPACE \
    --sectionId '3g0Loeeb' \
    --storeId 'tFZEhKF4' \
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
    --body '{"defaultLanguage": "ELhXqZuH", "defaultRegion": "vq67DuNw", "description": "b6jyGw4S", "supportedLanguages": ["pGO7Am7c", "UYxonVU3", "CNPL4fRO"], "supportedRegions": ["zwEyFHCA", "cWOX6nDf", "vIVu4Jqd"], "title": "1Tr3WCSt"}' \
    > test.out 2>&1
eval_tap $? 204 'CreateStore' test.out

#- 205 GetCatalogDefinition
samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace $AB_NAMESPACE \
    --catalogType 'VIEW' \
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
    --body '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["9yQWLkhD", "LAgG0hDc", "zHD6rMnd"], "idsToBeExported": ["P2HLCkmS", "Q5rQsaAa", "mb0nRCzL"], "storeId": "rckch86u"}' \
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
    --storeId 'zN6Tcmcb' \
    > test.out 2>&1
eval_tap $? 213 'GetStore' test.out

#- 214 UpdateStore
samples/cli/sample-apps Platform updateStore \
    --namespace $AB_NAMESPACE \
    --storeId 'TIt13rUu' \
    --body '{"defaultLanguage": "PjDvZyHx", "defaultRegion": "dvWo2bOS", "description": "gnBKAtEE", "supportedLanguages": ["bwZcFlcK", "yZz5Q2TQ", "LTqfMuen"], "supportedRegions": ["mrFw96ED", "mjzGXoUq", "a4E4SSRY"], "title": "OB8X1CXv"}' \
    > test.out 2>&1
eval_tap $? 214 'UpdateStore' test.out

#- 215 DeleteStore
samples/cli/sample-apps Platform deleteStore \
    --namespace $AB_NAMESPACE \
    --storeId 'ZY1KyKrH' \
    > test.out 2>&1
eval_tap $? 215 'DeleteStore' test.out

#- 216 QueryChanges
samples/cli/sample-apps Platform queryChanges \
    --namespace $AB_NAMESPACE \
    --storeId 'nEgQLjUD' \
    --action 'UPDATE' \
    --itemSku 'UCVZC2F3' \
    --itemType 'EXTENSION' \
    --limit '34' \
    --offset '65' \
    --selected 'true' \
    --sortBy '["updatedAt", "updatedAt:desc", "createdAt"]' \
    --status 'PUBLISHED' \
    --type 'ITEM' \
    --updatedAtEnd 'nfcXGiRj' \
    --updatedAtStart 'Yhj25PJt' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 216 'QueryChanges' test.out

#- 217 PublishAll
samples/cli/sample-apps Platform publishAll \
    --namespace $AB_NAMESPACE \
    --storeId 'xOF75okW' \
    > test.out 2>&1
eval_tap $? 217 'PublishAll' test.out

#- 218 PublishSelected
samples/cli/sample-apps Platform publishSelected \
    --namespace $AB_NAMESPACE \
    --storeId 'GeO3ZsvW' \
    > test.out 2>&1
eval_tap $? 218 'PublishSelected' test.out

#- 219 SelectAllRecords
samples/cli/sample-apps Platform selectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '992JwQvc' \
    > test.out 2>&1
eval_tap $? 219 'SelectAllRecords' test.out

#- 220 SelectAllRecordsByCriteria
samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace $AB_NAMESPACE \
    --storeId '68Ypa8aN' \
    --action 'UPDATE' \
    --itemSku 'Nrk0yGkj' \
    --itemType 'APP' \
    --selected 'false' \
    --type 'VIEW' \
    --updatedAtEnd 'vDDCfxsS' \
    --updatedAtStart 'xrgvXqxJ' \
    > test.out 2>&1
eval_tap $? 220 'SelectAllRecordsByCriteria' test.out

#- 221 GetStatistic
samples/cli/sample-apps Platform getStatistic \
    --namespace $AB_NAMESPACE \
    --storeId 'GVb2AAY5' \
    --action 'DELETE' \
    --itemSku 'hmXcK3V4' \
    --itemType 'CODE' \
    --type 'SECTION' \
    --updatedAtEnd 'IzWSqh9i' \
    --updatedAtStart 'U0qiSMY0' \
    > test.out 2>&1
eval_tap $? 221 'GetStatistic' test.out

#- 222 UnselectAllRecords
samples/cli/sample-apps Platform unselectAllRecords \
    --namespace $AB_NAMESPACE \
    --storeId '6cIkL1xj' \
    > test.out 2>&1
eval_tap $? 222 'UnselectAllRecords' test.out

#- 223 SelectRecord
samples/cli/sample-apps Platform selectRecord \
    --changeId 'MVlTh1tA' \
    --namespace $AB_NAMESPACE \
    --storeId '4BNj2wBn' \
    > test.out 2>&1
eval_tap $? 223 'SelectRecord' test.out

#- 224 UnselectRecord
samples/cli/sample-apps Platform unselectRecord \
    --changeId '9fPYD8qz' \
    --namespace $AB_NAMESPACE \
    --storeId 'AD6erK91' \
    > test.out 2>&1
eval_tap $? 224 'UnselectRecord' test.out

#- 225 CloneStore
samples/cli/sample-apps Platform cloneStore \
    --namespace $AB_NAMESPACE \
    --storeId 'nsfz1hdR' \
    --targetStoreId '6V0Yhz8j' \
    > test.out 2>&1
eval_tap $? 225 'CloneStore' test.out

#- 226 ExportStore
eval_tap 0 226 'ExportStore # SKIP deprecated' test.out

#- 227 QueryImportHistory
samples/cli/sample-apps Platform queryImportHistory \
    --namespace $AB_NAMESPACE \
    --storeId 'EJF1Q7GS' \
    --end 'bmoqUqOE' \
    --limit '70' \
    --offset '84' \
    --sortBy 'X3bo1qz6' \
    --start '5ib2aJRl' \
    --success 'false' \
    > test.out 2>&1
eval_tap $? 227 'QueryImportHistory' test.out

#- 228 ImportStoreByCSV
samples/cli/sample-apps Platform importStoreByCSV \
    --namespace $AB_NAMESPACE \
    --storeId 'zbnjnIsD' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes '1ITKioFp' \
    --section 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 228 'ImportStoreByCSV' test.out

#- 229 QuerySubscriptions
samples/cli/sample-apps Platform querySubscriptions \
    --namespace $AB_NAMESPACE \
    --chargeStatus 'CHARGED' \
    --itemId 'DtgwwWMR' \
    --limit '10' \
    --offset '15' \
    --sku 'm7z1tjP3' \
    --status 'INIT' \
    --subscribedBy 'PLATFORM' \
    --userId 'NRNhsyGm' \
    > test.out 2>&1
eval_tap $? 229 'QuerySubscriptions' test.out

#- 230 RecurringChargeSubscription
samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'GSlxZFGr' \
    > test.out 2>&1
eval_tap $? 230 'RecurringChargeSubscription' test.out

#- 231 GetTicketDynamic
samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'siWVaRAS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'GetTicketDynamic' test.out

#- 232 DecreaseTicketSale
samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'NCvNEJmB' \
    --namespace $AB_NAMESPACE \
    --body '{"orderNo": "DpP7iljV"}' \
    > test.out 2>&1
eval_tap $? 232 'DecreaseTicketSale' test.out

#- 233 GetTicketBoothID
samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'vyFmQ7y5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'GetTicketBoothID' test.out

#- 234 IncreaseTicketSale
samples/cli/sample-apps Platform increaseTicketSale \
    --boothName '3bjn2BL7' \
    --namespace $AB_NAMESPACE \
    --body '{"count": 90, "orderNo": "vtCI4uR6"}' \
    > test.out 2>&1
eval_tap $? 234 'IncreaseTicketSale' test.out

#- 235 Commit
samples/cli/sample-apps Platform commit \
    --namespace $AB_NAMESPACE \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 38, "currencyCode": "KAjUPLnM", "expireAt": "1971-04-25T00:00:00Z"}, "debitPayload": {"count": 74, "currencyCode": "hncYQQkg", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "LONzpS04", "entitlementOrigin": "Oculus", "itemIdentity": "wLbgqzNE", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "2RfCgKwe"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 49, "currencyCode": "IJvv86Mh", "expireAt": "1975-08-15T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "PZg4a3R1", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "aiBpR0DN", "entitlementOrigin": "Twitch", "itemIdentity": "SUo4cmJk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "Q6I5KfRv"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 86, "currencyCode": "KP16La30", "expireAt": "1982-07-06T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "UE4jg1Ba", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "hlBRpS4y", "entitlementOrigin": "Epic", "itemIdentity": "C0yCrVQH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "6n9goGbP"}, "type": "FULFILL_ITEM"}], "userId": "5K2QjPn7"}, {"operations": [{"creditPayload": {"balanceOrigin": "System", "count": 26, "currencyCode": "txksbof7", "expireAt": "1983-12-26T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "UuvmIpx8", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 60, "entitlementCollectionId": "KlRxyBbN", "entitlementOrigin": "System", "itemIdentity": "I9ppnhSJ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "lpwjvIwX"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 9, "currencyCode": "55F0CesY", "expireAt": "1987-06-07T00:00:00Z"}, "debitPayload": {"count": 30, "currencyCode": "ww8MAq6l", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 21, "entitlementCollectionId": "eF0MYwSu", "entitlementOrigin": "IOS", "itemIdentity": "8BPhg69Z", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 75, "entitlementId": "aD6u6qiv"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 1, "currencyCode": "hV6dpSY6", "expireAt": "1971-11-22T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "Uraom9Up", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 92, "entitlementCollectionId": "e5fAbeeq", "entitlementOrigin": "IOS", "itemIdentity": "0Usa1IZa", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "vhkOqi15"}, "type": "CREDIT_WALLET"}], "userId": "54Y1ZT6R"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 84, "currencyCode": "hzoq8ITK", "expireAt": "1983-09-04T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "QDjItwou", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "XsrwlIHO", "entitlementOrigin": "IOS", "itemIdentity": "qPnN53QN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "H3LuTt4z"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 42, "currencyCode": "Olj3gnpx", "expireAt": "1994-12-28T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "cGpwvmcM", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "0qxKwZJU", "entitlementOrigin": "Xbox", "itemIdentity": "itVyFVGx", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 77, "entitlementId": "fiFoS7xu"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 77, "currencyCode": "eFwqxUG5", "expireAt": "1990-04-19T00:00:00Z"}, "debitPayload": {"count": 68, "currencyCode": "ADyZEDRj", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "LrnARg9n", "entitlementOrigin": "Nintendo", "itemIdentity": "6iIk3M7R", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "9hbvgtCE"}, "type": "FULFILL_ITEM"}], "userId": "6yd8l3rc"}], "metadata": {"PhC10dIW": {}, "B6NK0Ubo": {}, "JQzdBFdx": {}}, "needPreCheck": false, "transactionId": "Z0VnKuN1", "type": "5kAusGAR"}' \
    > test.out 2>&1
eval_tap $? 235 'Commit' test.out

#- 236 GetTradeHistoryByCriteria
samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '31' \
    --status 'SUCCESS' \
    --type 'Z6XKkK3g' \
    --userId 'VPnFLQTO' \
    > test.out 2>&1
eval_tap $? 236 'GetTradeHistoryByCriteria' test.out

#- 237 GetTradeHistoryByTransactionId
samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace $AB_NAMESPACE \
    --transactionId 'COeISqSM' \
    > test.out 2>&1
eval_tap $? 237 'GetTradeHistoryByTransactionId' test.out

#- 238 UnlockSteamUserAchievement
samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'lzcNvwgh' \
    --body '{"achievements": [{"id": "fv1wM5nZ", "value": 5}, {"id": "6546LL2l", "value": 68}, {"id": "tc6ZRlOV", "value": 62}], "steamUserId": "Im6wdvjz"}' \
    > test.out 2>&1
eval_tap $? 238 'UnlockSteamUserAchievement' test.out

#- 239 GetXblUserAchievements
samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'dxtxQa60' \
    --xboxUserId 'pjuwfNGb' \
    > test.out 2>&1
eval_tap $? 239 'GetXblUserAchievements' test.out

#- 240 UpdateXblUserAchievement
samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'bLUabCOw' \
    --body '{"achievements": [{"id": "ICCJNKZL", "percentComplete": 94}, {"id": "3T1EpEjC", "percentComplete": 19}, {"id": "LmSe9jHd", "percentComplete": 11}], "serviceConfigId": "VxQkiYc2", "titleId": "56iGu5h7", "xboxUserId": "ekDNLfMc"}' \
    > test.out 2>&1
eval_tap $? 240 'UpdateXblUserAchievement' test.out

#- 241 AnonymizeCampaign
samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace $AB_NAMESPACE \
    --userId 'Kp3WC2FH' \
    > test.out 2>&1
eval_tap $? 241 'AnonymizeCampaign' test.out

#- 242 AnonymizeEntitlement
samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '7bIsZq9K' \
    > test.out 2>&1
eval_tap $? 242 'AnonymizeEntitlement' test.out

#- 243 AnonymizeFulfillment
samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace $AB_NAMESPACE \
    --userId 'GQxSDYs3' \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeFulfillment' test.out

#- 244 AnonymizeIntegration
samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace $AB_NAMESPACE \
    --userId 'bLBm6Wmo' \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeIntegration' test.out

#- 245 AnonymizeOrder
samples/cli/sample-apps Platform anonymizeOrder \
    --namespace $AB_NAMESPACE \
    --userId 'DqqJ7458' \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeOrder' test.out

#- 246 AnonymizePayment
samples/cli/sample-apps Platform anonymizePayment \
    --namespace $AB_NAMESPACE \
    --userId 'sYw0r1SZ' \
    > test.out 2>&1
eval_tap $? 246 'AnonymizePayment' test.out

#- 247 AnonymizeRevocation
samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace $AB_NAMESPACE \
    --userId 'D17NJwvs' \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeRevocation' test.out

#- 248 AnonymizeSubscription
samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace $AB_NAMESPACE \
    --userId 'BeifNLln' \
    > test.out 2>&1
eval_tap $? 248 'AnonymizeSubscription' test.out

#- 249 AnonymizeWallet
samples/cli/sample-apps Platform anonymizeWallet \
    --namespace $AB_NAMESPACE \
    --userId 'A1CAYGFQ' \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeWallet' test.out

#- 250 GetUserDLCByPlatform
samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace $AB_NAMESPACE \
    --userId 'ydTkDeiW' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 250 'GetUserDLCByPlatform' test.out

#- 251 GetUserDLC
samples/cli/sample-apps Platform getUserDLC \
    --namespace $AB_NAMESPACE \
    --userId 'S4S8QDtd' \
    --includeAllNamespaces 'true' \
    --status 'REVOKE_FAILED' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 251 'GetUserDLC' test.out

#- 252 QueryUserEntitlements
samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'gqU7kkor' \
    --activeOnly 'false' \
    --appType 'DLC' \
    --collectionId 'LigJpQl2' \
    --entitlementClazz 'LOOTBOX' \
    --entitlementName 'YaY9fzAz' \
    --features '["4XUj2Bf3", "z2ix1WDY", "6h9WS0Hu"]' \
    --fuzzyMatchName 'false' \
    --ignoreActiveDate 'true' \
    --itemId '["elPbfoaI", "iOBfA4af", "xDVMojc7"]' \
    --limit '3' \
    --offset '49' \
    --origin 'Twitch' \
    > test.out 2>&1
eval_tap $? 252 'QueryUserEntitlements' test.out

#- 253 GrantUserEntitlement
samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'oUpoBSUc' \
    --body '[{"collectionId": "YcXpD90N", "endDate": "1982-02-27T00:00:00Z", "grantedCode": "7a63C6Y6", "itemId": "5BLYwD3D", "itemNamespace": "7x8jLjfE", "language": "zpF", "metadata": {"WXAr9CHu": {}, "AJLBgcDR": {}, "T6dGxeFk": {}}, "origin": "Other", "quantity": 12, "region": "k92qAcgK", "source": "PROMOTION", "startDate": "1995-03-25T00:00:00Z", "storeId": "IJZkv46F"}, {"collectionId": "PePRiPvZ", "endDate": "1985-08-13T00:00:00Z", "grantedCode": "o4gaiSjv", "itemId": "Z6AdhGi5", "itemNamespace": "mmoTpFcd", "language": "lt", "metadata": {"eUkgWawC": {}, "zeYkUwfJ": {}, "wnIB9B7z": {}}, "origin": "IOS", "quantity": 35, "region": "HdwWufp4", "source": "REDEEM_CODE", "startDate": "1982-09-03T00:00:00Z", "storeId": "6smdALI2"}, {"collectionId": "fZu6baXf", "endDate": "1979-04-07T00:00:00Z", "grantedCode": "ZhAB2Xqw", "itemId": "G4tBa32a", "itemNamespace": "qlTm1Ucp", "language": "Zy-299", "metadata": {"LaUgR4G2": {}, "ybn22y16": {}, "vf8kZtAA": {}}, "origin": "Twitch", "quantity": 57, "region": "EZJHSM4V", "source": "PROMOTION", "startDate": "1998-10-20T00:00:00Z", "storeId": "KckWTbdO"}]' \
    > test.out 2>&1
eval_tap $? 253 'GrantUserEntitlement' test.out

#- 254 GetUserAppEntitlementByAppId
samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'Gp5YMDHU' \
    --activeOnly 'true' \
    --appId 'PL1xrEro' \
    > test.out 2>&1
eval_tap $? 254 'GetUserAppEntitlementByAppId' test.out

#- 255 QueryUserEntitlementsByAppType
samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'q2xIEufb' \
    --activeOnly 'true' \
    --limit '27' \
    --offset '59' \
    --appType 'GAME' \
    > test.out 2>&1
eval_tap $? 255 'QueryUserEntitlementsByAppType' test.out

#- 256 GetUserEntitlementsByIds
samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'zKOL4HNT' \
    --ids '["sOp2de0O", "5qWwT53l", "0z3c6O9v"]' \
    > test.out 2>&1
eval_tap $? 256 'GetUserEntitlementsByIds' test.out

#- 257 GetUserEntitlementByItemId
samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace $AB_NAMESPACE \
    --userId '7oEoI1CF' \
    --activeOnly 'true' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'ZJ5551kQ' \
    --itemId 't01Cjmqt' \
    > test.out 2>&1
eval_tap $? 257 'GetUserEntitlementByItemId' test.out

#- 258 GetUserActiveEntitlementsByItemIds
samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace $AB_NAMESPACE \
    --userId '8OdIHx7B' \
    --ids '["d6zVHDdu", "nUVonBUa", "Vu0N2Ley"]' \
    --platform 'hYdOZpdA' \
    > test.out 2>&1
eval_tap $? 258 'GetUserActiveEntitlementsByItemIds' test.out

#- 259 GetUserEntitlementBySku
samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace $AB_NAMESPACE \
    --userId 'Tmubn80E' \
    --activeOnly 'true' \
    --entitlementClazz 'CODE' \
    --platform 'PCic6SDj' \
    --sku 'Hbcz625y' \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementBySku' test.out

#- 260 ExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId 'pv83Y7Uu' \
    --appIds '["IvJ0zOxB", "c3fglKAH", "RmTqsxMy"]' \
    --itemIds '["mLEWoVMg", "qxyEHBkY", "0TXus61R"]' \
    --platform 'bH9iGZe3' \
    --skus '["oB81BTPZ", "VAhGaPtH", "1bFm9Aar"]' \
    > test.out 2>&1
eval_tap $? 260 'ExistsAnyUserActiveEntitlement' test.out

#- 261 ExistsAnyUserActiveEntitlementByItemIds
samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'a9wjeiVs' \
    --platform 'cV0kWk6I' \
    --itemIds '["5r8M1DOS", "WVOV1590", "I02h4gut"]' \
    > test.out 2>&1
eval_tap $? 261 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 262 GetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 't7fQAIBY' \
    --appId '92ppalSU' \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 263 GetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'HyJZokbJ' \
    --entitlementClazz 'APP' \
    --platform 'jWulLlV0' \
    --itemId 'jNvJwJZW' \
    > test.out 2>&1
eval_tap $? 263 'GetUserEntitlementOwnershipByItemId' test.out

#- 264 GetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'QC0WwcLW' \
    --ids '["6VTE42fW", "D5ElS44m", "Rzu0KCnN"]' \
    --platform '6gs8drQK' \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementOwnershipByItemIds' test.out

#- 265 GetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'R271bT1h' \
    --entitlementClazz 'ENTITLEMENT' \
    --platform 'W42bSf5N' \
    --sku 'r8Ej9W3W' \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipBySku' test.out

#- 266 RevokeAllEntitlements
samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'XIC3hO9i' \
    > test.out 2>&1
eval_tap $? 266 'RevokeAllEntitlements' test.out

#- 267 RevokeUserEntitlements
samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'l4rJw7K5' \
    --entitlementIds '5m4vwgLT' \
    > test.out 2>&1
eval_tap $? 267 'RevokeUserEntitlements' test.out

#- 268 GetUserEntitlement
samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId '2oQSSu6b' \
    --namespace $AB_NAMESPACE \
    --userId 'MSLcBMmG' \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlement' test.out

#- 269 UpdateUserEntitlement
samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'jTyiXVKM' \
    --namespace $AB_NAMESPACE \
    --userId 'LTnx08OF' \
    --body '{"collectionId": "h2Qch5zw", "endDate": "1972-05-14T00:00:00Z", "nullFieldList": ["5Nl4xGBA", "4lC9KbBS", "MtQCiFVk"], "origin": "GooglePlay", "reason": "okv3hgnN", "startDate": "1987-02-10T00:00:00Z", "status": "REVOKED", "useCount": 80}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserEntitlement' test.out

#- 270 ConsumeUserEntitlement
samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'esaagyr2' \
    --namespace $AB_NAMESPACE \
    --userId 'yZsKjWSp' \
    --body '{"metadata": {"isuM9fGp": {}, "DxseRQro": {}, "8ZBEPX5l": {}}, "options": ["la3s5SRS", "H7hhzgQh", "9yIxIKus"], "platform": "G7MS7WDM", "requestId": "6ubeoPfo", "useCount": 23}' \
    > test.out 2>&1
eval_tap $? 270 'ConsumeUserEntitlement' test.out

#- 271 DisableUserEntitlement
samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'i9OGavJ9' \
    --namespace $AB_NAMESPACE \
    --userId 'qaLpAhFX' \
    > test.out 2>&1
eval_tap $? 271 'DisableUserEntitlement' test.out

#- 272 EnableUserEntitlement
samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'aXB4ZEdc' \
    --namespace $AB_NAMESPACE \
    --userId '9kWgWN9j' \
    > test.out 2>&1
eval_tap $? 272 'EnableUserEntitlement' test.out

#- 273 GetUserEntitlementHistories
samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'BB34UP0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'eT2DDKQV' \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementHistories' test.out

#- 274 RevokeUserEntitlement
samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId '1PguUIgt' \
    --namespace $AB_NAMESPACE \
    --userId 'JzYXNK6W' \
    --body '{"metadata": {"WE1Xf75u": {}, "lAxaWenW": {}, "3l95msac": {}}}' \
    > test.out 2>&1
eval_tap $? 274 'RevokeUserEntitlement' test.out

#- 275 RevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId '4tsnNqrk' \
    --namespace $AB_NAMESPACE \
    --userId 'rO7nlp0u' \
    --body '{"reason": "oomHdVmj", "useCount": 13}' \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlementByUseCount' test.out

#- 276 PreCheckRevokeUserEntitlementByUseCount
samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'iB6o2cW7' \
    --namespace $AB_NAMESPACE \
    --userId 'aTtlJjCK' \
    --quantity '94' \
    > test.out 2>&1
eval_tap $? 276 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 277 RevokeUseCount
eval_tap 0 277 'RevokeUseCount # SKIP deprecated' test.out

#- 278 SellUserEntitlement
samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'NmxLmGLK' \
    --namespace $AB_NAMESPACE \
    --userId 'xlUQlQT0' \
    --body '{"platform": "uoB6S90g", "requestId": "OkG9Zz7e", "useCount": 33}' \
    > test.out 2>&1
eval_tap $? 278 'SellUserEntitlement' test.out

#- 279 FulfillItem
samples/cli/sample-apps Platform fulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'IoEuzlfV' \
    --body '{"duration": 96, "endDate": "1999-09-13T00:00:00Z", "entitlementCollectionId": "Y1kTOFqS", "entitlementOrigin": "Playstation", "itemId": "OcwcX0t2", "itemSku": "MrvqD663", "language": "m6SAnbuW", "metadata": {"XeMlrUyt": {}, "CXncy8k0": {}, "pGqqvUIu": {}}, "order": {"currency": {"currencyCode": "PQlpOvCl", "currencySymbol": "MWVz98Ra", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "QHFJs15X"}, "ext": {"3pCV5SxT": {}, "Dhc42gNJ": {}, "kPbHtp5d": {}}, "free": true}, "orderNo": "PmWngAIk", "origin": "IOS", "overrideBundleItemQty": {"XMzNQiVE": 28, "i0edYrAb": 96, "PtQ2EunD": 64}, "quantity": 97, "region": "S8Xdb2NY", "source": "EXPIRATION", "startDate": "1988-05-07T00:00:00Z", "storeId": "VcYnhKwn"}' \
    > test.out 2>&1
eval_tap $? 279 'FulfillItem' test.out

#- 280 RedeemCode
samples/cli/sample-apps Platform redeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'bjMv7bYm' \
    --body '{"code": "aKauF5RE", "language": "YGzH_GV", "region": "n8EvNQRG"}' \
    > test.out 2>&1
eval_tap $? 280 'RedeemCode' test.out

#- 281 PreCheckFulfillItem
samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace $AB_NAMESPACE \
    --userId 'DWpBtv1E' \
    --body '{"itemId": "sLC6zlLL", "itemSku": "YXpmgvJG", "quantity": 23}' \
    > test.out 2>&1
eval_tap $? 281 'PreCheckFulfillItem' test.out

#- 282 FulfillRewards
samples/cli/sample-apps Platform fulfillRewards \
    --namespace $AB_NAMESPACE \
    --userId 'mk3JIJyg' \
    --body '{"entitlementCollectionId": "fLMgecDl", "entitlementOrigin": "GooglePlay", "metadata": {"NjvwtV90": {}, "h42ufVdF": {}, "9KI4A38l": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "YVWfR8lf", "namespace": "qYxKmrGb"}, "item": {"itemId": "XHqexhpz", "itemName": "v1riRUbJ", "itemSku": "HaNQCW1E", "itemType": "FslL5red"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "7Dz5ETv6", "namespace": "VN6WAytC"}, "item": {"itemId": "dVXqBZL7", "itemName": "jlxtxg0m", "itemSku": "os27aofg", "itemType": "hkd53jeD"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "UZhX3UFx", "namespace": "8LI6pvQm"}, "item": {"itemId": "3sS7hbvf", "itemName": "DVLvQSwW", "itemSku": "nqaVvGOX", "itemType": "iE3biEeT"}, "quantity": 70, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "fVKtYYHv"}' \
    > test.out 2>&1
eval_tap $? 282 'FulfillRewards' test.out

#- 283 QueryUserIAPOrders
samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'UxjN1evl' \
    --endTime '98bCb1Qw' \
    --limit '52' \
    --offset '92' \
    --productId 'U98TJTwQ' \
    --startTime 'ukhp5d3Y' \
    --status 'FAILED' \
    --type 'STADIA' \
    > test.out 2>&1
eval_tap $? 283 'QueryUserIAPOrders' test.out

#- 284 QueryAllUserIAPOrders
samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace $AB_NAMESPACE \
    --userId 'zllWD9rU' \
    > test.out 2>&1
eval_tap $? 284 'QueryAllUserIAPOrders' test.out

#- 285 QueryUserIAPConsumeHistory
samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace $AB_NAMESPACE \
    --userId 'rUPQhfiY' \
    --endTime '1GkZsm67' \
    --limit '9' \
    --offset '27' \
    --startTime 'VCvRb3TV' \
    --status 'SUCCESS' \
    --type 'OCULUS' \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPConsumeHistory' test.out

#- 286 MockFulfillIAPItem
samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'x4Zt5zPp' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "iDSy-662", "productId": "laYPZ73M", "region": "06GfJKrL", "transactionId": "2vxJPUMD", "type": "STEAM"}' \
    > test.out 2>&1
eval_tap $? 286 'MockFulfillIAPItem' test.out

#- 287 AdminGetIAPOrderLineItems
samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'IawlKCWZ' \
    --namespace $AB_NAMESPACE \
    --userId 'HXbgEBny' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetIAPOrderLineItems' test.out

#- 288 AdminSyncSteamAbnormalTransaction
samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'ajBPtRY2' \
    > test.out 2>&1
eval_tap $? 288 'AdminSyncSteamAbnormalTransaction' test.out

#- 289 AdminSyncSteamIAPByTransaction
samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'lDisY2Ro' \
    --body '{"orderId": "cil4HsXW"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminSyncSteamIAPByTransaction' test.out

#- 290 QueryUserThirdPartySubscription
samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --userId 'mH3OYaWm' \
    --activeOnly 'true' \
    --groupId 'wMDyVP8x' \
    --limit '8' \
    --offset '57' \
    --platform 'EPICGAMES' \
    --productId 'Nk9HMbyd' \
    > test.out 2>&1
eval_tap $? 290 'QueryUserThirdPartySubscription' test.out

#- 291 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace $AB_NAMESPACE \
    --platform 'APPLE' \
    --userId 'NK7Da7NT' \
    --groupId 'qLjKLhoM' \
    > test.out 2>&1
eval_tap $? 291 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 292 GetThirdPartyPlatformSubscriptionOwnershipByProductId
samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace $AB_NAMESPACE \
    --platform 'OCULUS' \
    --userId 'NPaNIueG' \
    --productId 'op195rMz' \
    > test.out 2>&1
eval_tap $? 292 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 293 QueryUserThirdPartySubscriptionTransactions
samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace $AB_NAMESPACE \
    --userId 'ke2pGjZS' \
    --activeOnly 'true' \
    --groupId 'WTgbtGi6' \
    --limit '41' \
    --offset '57' \
    --platform 'STADIA' \
    --productId 'duvfbffW' \
    > test.out 2>&1
eval_tap $? 293 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 294 GetThirdPartySubscriptionDetails
samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'VfDipRnq' \
    --namespace $AB_NAMESPACE \
    --userId 'YLtPupXP' \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartySubscriptionDetails' test.out

#- 295 GetSubscriptionHistory
samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'kcZwZhSs' \
    --namespace $AB_NAMESPACE \
    --userId 'HeJqVqSm' \
    --limit '85' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 295 'GetSubscriptionHistory' test.out

#- 296 SyncSubscriptionTransaction
samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'uWjCCpKE' \
    --namespace $AB_NAMESPACE \
    --userId '0QLYUugT' \
    > test.out 2>&1
eval_tap $? 296 'SyncSubscriptionTransaction' test.out

#- 297 GetThirdPartyUserSubscriptionDetails
samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'kuAlNHpR' \
    --namespace $AB_NAMESPACE \
    --userId 'KPEODBne' \
    > test.out 2>&1
eval_tap $? 297 'GetThirdPartyUserSubscriptionDetails' test.out

#- 298 SyncSubscription
samples/cli/sample-apps Platform syncSubscription \
    --id 'W8PjyNcf' \
    --namespace $AB_NAMESPACE \
    --userId '11V2m3tc' \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscription' test.out

#- 299 QueryUserOrders
samples/cli/sample-apps Platform queryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'JkyHJnDK' \
    --discounted 'false' \
    --itemId '9EorNng2' \
    --limit '56' \
    --offset '75' \
    --status 'REFUND_FAILED' \
    > test.out 2>&1
eval_tap $? 299 'QueryUserOrders' test.out

#- 300 AdminCreateUserOrder
samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'veRA9Gq8' \
    --body '{"currencyCode": "4C39jXoe", "currencyNamespace": "C5fj9zP7", "discountCodes": ["rMYkYwyh", "3shx2RUL", "DVvl0rvL"], "discountedPrice": 48, "entitlementPlatform": "Xbox", "ext": {"CETMT8wS": {}, "sfMPsR8i": {}, "oVhpSnuC": {}}, "itemId": "GT4shr22", "language": "tMghXf0J", "options": {"skipPriceValidation": true}, "platform": "Oculus", "price": 46, "quantity": 51, "region": "IIL0UVQ5", "returnUrl": "8gbNZD6d", "sandbox": true, "sectionId": "AtoN7I6n"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminCreateUserOrder' test.out

#- 301 CountOfPurchasedItem
samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace $AB_NAMESPACE \
    --userId 'utpqgZjL' \
    --itemId 'TlbTYjod' \
    > test.out 2>&1
eval_tap $? 301 'CountOfPurchasedItem' test.out

#- 302 GetUserOrder
samples/cli/sample-apps Platform getUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'YaGfZIvI' \
    --userId 'PLrXMP3w' \
    > test.out 2>&1
eval_tap $? 302 'GetUserOrder' test.out

#- 303 UpdateUserOrderStatus
samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace $AB_NAMESPACE \
    --orderNo 'yGkKHiWt' \
    --userId 'yS7FnREY' \
    --body '{"status": "REFUNDING", "statusReason": "4usIQWg0"}' \
    > test.out 2>&1
eval_tap $? 303 'UpdateUserOrderStatus' test.out

#- 304 FulfillUserOrder
samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'HKu49rOJ' \
    --userId 'p2ZjUoWT' \
    > test.out 2>&1
eval_tap $? 304 'FulfillUserOrder' test.out

#- 305 GetUserOrderGrant
eval_tap 0 305 'GetUserOrderGrant # SKIP deprecated' test.out

#- 306 GetUserOrderHistories
samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'DxzhTUQ5' \
    --userId 'mFTelUsS' \
    > test.out 2>&1
eval_tap $? 306 'GetUserOrderHistories' test.out

#- 307 ProcessUserOrderNotification
samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace $AB_NAMESPACE \
    --orderNo 'lIkTvhgY' \
    --userId 'r30zphmx' \
    --body '{"additionalData": {"cardSummary": "Fappvz7J"}, "authorisedTime": "1986-11-14T00:00:00Z", "chargebackReversedTime": "1988-08-14T00:00:00Z", "chargebackTime": "1999-12-08T00:00:00Z", "chargedTime": "1977-05-26T00:00:00Z", "createdTime": "1986-02-01T00:00:00Z", "currency": {"currencyCode": "VnMJ1fFX", "currencySymbol": "L1NupvKs", "currencyType": "REAL", "decimals": 89, "namespace": "avBpFjmJ"}, "customParameters": {"XU1hQQKU": {}, "KUcPuQ9H": {}, "FMbyQqeo": {}}, "extOrderNo": "NugsI6ux", "extTxId": "BVngXtHY", "extUserId": "H9UFiHb3", "issuedAt": "1975-10-07T00:00:00Z", "metadata": {"2s2aExJC": "gSfXnLSg", "1EU7AxMw": "cj2jFwK9", "dCpLWdgf": "znOl9wk4"}, "namespace": "X69QXxWW", "nonceStr": "oT5Ie0tM", "paymentData": {"discountAmount": 84, "discountCode": "620sDqZD", "subtotalPrice": 92, "tax": 91, "totalPrice": 5}, "paymentMethod": "wrp2cjvQ", "paymentMethodFee": 17, "paymentOrderNo": "cMWiW0Fb", "paymentProvider": "PAYPAL", "paymentProviderFee": 63, "paymentStationUrl": "3LnrUjvZ", "price": 26, "refundedTime": "1994-02-23T00:00:00Z", "salesTax": 36, "sandbox": false, "sku": "lPIui1Tc", "status": "INIT", "statusReason": "7eYcrHsT", "subscriptionId": "MrfGkRWh", "subtotalPrice": 1, "targetNamespace": "GMmL5DOq", "targetUserId": "CstMWZpT", "tax": 79, "totalPrice": 25, "totalTax": 82, "txEndTime": "1974-11-18T00:00:00Z", "type": "Y5j6sySW", "userId": "vZIXmL0G", "vat": 5}' \
    > test.out 2>&1
eval_tap $? 307 'ProcessUserOrderNotification' test.out

#- 308 DownloadUserOrderReceipt
samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo '23XwiMnN' \
    --userId 're21w9eJ' \
    > test.out 2>&1
eval_tap $? 308 'DownloadUserOrderReceipt' test.out

#- 309 CreateUserPaymentOrder
samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --userId 'dcg4mZV4' \
    --body '{"currencyCode": "EEKbmyQd", "currencyNamespace": "DKfsXOCZ", "customParameters": {"vTVNEdh1": {}, "UDAvS9fG": {}, "d6RSLx4E": {}}, "description": "jCKRVDIm", "extOrderNo": "ixgOS7vU", "extUserId": "YAcTtXbX", "itemType": "CODE", "language": "yWwF-Hisn-zg", "metadata": {"hnTykC0Y": "xAof7lNY", "SYnw3985": "IFL7aBNJ", "EBFEnYy8": "CKZFcHW0"}, "notifyUrl": "3HBbpfa6", "omitNotification": false, "platform": "2wZRGHwb", "price": 33, "recurringPaymentOrderNo": "Qdy3aabH", "region": "5el78yaJ", "returnUrl": "uy2trMQb", "sandbox": true, "sku": "yieJREOy", "subscriptionId": "ArtCM5FN", "title": "N87po0xZ"}' \
    > test.out 2>&1
eval_tap $? 309 'CreateUserPaymentOrder' test.out

#- 310 RefundUserPaymentOrder
samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'OmmPTL4F' \
    --userId '4zhLNLu4' \
    --body '{"description": "8nRhUfPp"}' \
    > test.out 2>&1
eval_tap $? 310 'RefundUserPaymentOrder' test.out

#- 311 GetUserPlatformAccountClosureHistories
samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace $AB_NAMESPACE \
    --userId 'YMyPJWca' \
    > test.out 2>&1
eval_tap $? 311 'GetUserPlatformAccountClosureHistories' test.out

#- 312 ApplyUserRedemption
samples/cli/sample-apps Platform applyUserRedemption \
    --namespace $AB_NAMESPACE \
    --userId '3MSJH8ig' \
    --body '{"code": "iqCK65vy", "orderNo": "eaW3x8Ki"}' \
    > test.out 2>&1
eval_tap $? 312 'ApplyUserRedemption' test.out

#- 313 DoRevocation
samples/cli/sample-apps Platform doRevocation \
    --namespace $AB_NAMESPACE \
    --userId '7WbWITkW' \
    --body '{"meta": {"HohpnZ51": {}, "aflfRuuB": {}, "crRgnB5H": {}}, "reason": "XknNOFy2", "requestId": "h10n9uZt", "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "rLNih7R6", "namespace": "187s814j"}, "entitlement": {"entitlementId": "zGHMSQ0g"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "MXpVGUXI", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 59, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "RKyiTeyZ", "namespace": "fOb1KFk5"}, "entitlement": {"entitlementId": "OKL7CQFS"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "OQFg2MxA", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 45, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "d95bqJfo", "namespace": "qm42h7Du"}, "entitlement": {"entitlementId": "Jo26yhLR"}, "item": {"entitlementOrigin": "System", "itemIdentity": "yOHZWeep", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 19, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "CqOKMC74"}' \
    > test.out 2>&1
eval_tap $? 313 'DoRevocation' test.out

#- 314 RegisterXblSessions
samples/cli/sample-apps Platform registerXblSessions \
    --namespace $AB_NAMESPACE \
    --userId 'l2UZbyJQ' \
    --body '{"gameSessionId": "nhweZnLx", "payload": {"wKhPabte": {}, "WV2jdam8": {}, "UY9f0nbD": {}}, "scid": "JOWYvzHS", "sessionTemplateName": "Oix8YGv8"}' \
    > test.out 2>&1
eval_tap $? 314 'RegisterXblSessions' test.out

#- 315 QueryUserSubscriptions
samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId '7F8XO2Qu' \
    --chargeStatus 'SETUP' \
    --itemId 'rw81v0mF' \
    --limit '85' \
    --offset '17' \
    --sku 'OoZs9u9S' \
    --status 'CANCELLED' \
    --subscribedBy 'USER' \
    > test.out 2>&1
eval_tap $? 315 'QueryUserSubscriptions' test.out

#- 316 GetUserSubscriptionActivities
samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace $AB_NAMESPACE \
    --userId 'fb97Q9Kj' \
    --excludeSystem 'true' \
    --limit '96' \
    --offset '22' \
    --subscriptionId 'zQS7I9mb' \
    > test.out 2>&1
eval_tap $? 316 'GetUserSubscriptionActivities' test.out

#- 317 PlatformSubscribeSubscription
samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '3DlXREmN' \
    --body '{"grantDays": 39, "itemId": "H2ZTchhN", "language": "Vdv4NAe3", "reason": "wbTWQivV", "region": "lVEryEbB", "source": "WW5HTAOI"}' \
    > test.out 2>&1
eval_tap $? 317 'PlatformSubscribeSubscription' test.out

#- 318 CheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'MOcyPZSG' \
    --itemId 'jLX3DeEm' \
    > test.out 2>&1
eval_tap $? 318 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 319 GetUserSubscription
samples/cli/sample-apps Platform getUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'uVlz3Fvn' \
    --userId '2PABD5tN' \
    > test.out 2>&1
eval_tap $? 319 'GetUserSubscription' test.out

#- 320 DeleteUserSubscription
samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Ly6b80k7' \
    --userId 'EUr4fxSc' \
    > test.out 2>&1
eval_tap $? 320 'DeleteUserSubscription' test.out

#- 321 CancelSubscription
samples/cli/sample-apps Platform cancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'b2fogo0i' \
    --userId 'dxKHYdCO' \
    --force 'true' \
    --body '{"immediate": true, "reason": "dWSULHBb"}' \
    > test.out 2>&1
eval_tap $? 321 'CancelSubscription' test.out

#- 322 GrantDaysToSubscription
samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId '5g5wpGLJ' \
    --userId 'pgzTFaOe' \
    --body '{"grantDays": 35, "reason": "5MxB6KWr"}' \
    > test.out 2>&1
eval_tap $? 322 'GrantDaysToSubscription' test.out

#- 323 GetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'pXJl4x1D' \
    --userId 'kX3yXt77' \
    --excludeFree 'false' \
    --limit '64' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 323 'GetUserSubscriptionBillingHistories' test.out

#- 324 ProcessUserSubscriptionNotification
samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'CLassLS2' \
    --userId 'yovrqBl5' \
    --body '{"additionalData": {"cardSummary": "7RNWd4qq"}, "authorisedTime": "1977-10-10T00:00:00Z", "chargebackReversedTime": "1990-03-14T00:00:00Z", "chargebackTime": "1979-05-25T00:00:00Z", "chargedTime": "1971-09-26T00:00:00Z", "createdTime": "1999-12-17T00:00:00Z", "currency": {"currencyCode": "RPA2zWrX", "currencySymbol": "yRUypRzD", "currencyType": "VIRTUAL", "decimals": 39, "namespace": "diNSUET7"}, "customParameters": {"lvkBOVJN": {}, "7yXIIn9M": {}, "zF9wXGMS": {}}, "extOrderNo": "QXTR9ki5", "extTxId": "x2YNZCSQ", "extUserId": "Fv2B3ARJ", "issuedAt": "1972-08-04T00:00:00Z", "metadata": {"dal5jzlN": "OSkT7Kvz", "rVnKrgBl": "vhjA2TvO", "AFuQl6J3": "3WBThRGS"}, "namespace": "TBIztpex", "nonceStr": "iXEvRnnh", "paymentData": {"discountAmount": 35, "discountCode": "ajfodoFK", "subtotalPrice": 68, "tax": 6, "totalPrice": 70}, "paymentMethod": "FxFicPf7", "paymentMethodFee": 57, "paymentOrderNo": "fDyy4AFE", "paymentProvider": "ALIPAY", "paymentProviderFee": 91, "paymentStationUrl": "lQoMQeNO", "price": 69, "refundedTime": "1986-01-25T00:00:00Z", "salesTax": 70, "sandbox": false, "sku": "9QiTO8bb", "status": "CHARGE_FAILED", "statusReason": "T1UYmjWN", "subscriptionId": "e25LbxGQ", "subtotalPrice": 25, "targetNamespace": "IKNrTxLa", "targetUserId": "RVun21Br", "tax": 34, "totalPrice": 38, "totalTax": 45, "txEndTime": "1981-11-21T00:00:00Z", "type": "jhf5fzrK", "userId": "fmMHJZvH", "vat": 61}' \
    > test.out 2>&1
eval_tap $? 324 'ProcessUserSubscriptionNotification' test.out

#- 325 AcquireUserTicket
samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'JaJws2oz' \
    --namespace $AB_NAMESPACE \
    --userId '1VAZyqKe' \
    --body '{"count": 77, "orderNo": "AeAd5JSg"}' \
    > test.out 2>&1
eval_tap $? 325 'AcquireUserTicket' test.out

#- 326 QueryUserCurrencyWallets
samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace $AB_NAMESPACE \
    --userId '0lM28P1A' \
    > test.out 2>&1
eval_tap $? 326 'QueryUserCurrencyWallets' test.out

#- 327 DebitUserWalletByCurrencyCode
samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'Fvy9qEjC' \
    --namespace $AB_NAMESPACE \
    --userId 'LwNMA38n' \
    --body '{"allowOverdraft": true, "amount": 94, "balanceOrigin": "Epic", "balanceSource": "ORDER_REVOCATION", "metadata": {"tq60I3j3": {}, "j9p8vhzb": {}, "PnvKiroG": {}}, "reason": "d6EnjLpy"}' \
    > test.out 2>&1
eval_tap $? 327 'DebitUserWalletByCurrencyCode' test.out

#- 328 ListUserCurrencyTransactions
samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'Ehm6kpBj' \
    --namespace $AB_NAMESPACE \
    --userId 'C5CtiUKy' \
    --limit '85' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 328 'ListUserCurrencyTransactions' test.out

#- 329 CheckBalance
samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'AABU3YMR' \
    --namespace $AB_NAMESPACE \
    --userId 'TMwdum05' \
    --request '{"amount": 89, "debitBalanceSource": "PAYMENT", "metadata": {"LJmGerbT": {}, "WxcF4pDE": {}, "LyukTosq": {}}, "reason": "L3pMvBMn", "walletPlatform": "Oculus"}' \
    > test.out 2>&1
eval_tap $? 329 'CheckBalance' test.out

#- 330 CheckWallet
eval_tap 0 330 'CheckWallet # SKIP deprecated' test.out

#- 331 CreditUserWallet
samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'Bn5bW0kQ' \
    --namespace $AB_NAMESPACE \
    --userId 'tB2Bc6U8' \
    --body '{"amount": 6, "expireAt": "1982-06-18T00:00:00Z", "metadata": {"pCvntBrG": {}, "4uRYyhQq": {}, "9I1ZFIXw": {}}, "origin": "Steam", "reason": "8OjMgfKD", "source": "REFERRAL_BONUS"}' \
    > test.out 2>&1
eval_tap $? 331 'CreditUserWallet' test.out

#- 332 DebitByWalletPlatform
samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode '45N0GJD0' \
    --namespace $AB_NAMESPACE \
    --userId 'XfOpZMAu' \
    --request '{"amount": 28, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"pQhsDpOh": {}, "FAzYjNkh": {}, "rnVb3Bkm": {}}, "reason": "4RiX8HGc", "walletPlatform": "IOS"}' \
    > test.out 2>&1
eval_tap $? 332 'DebitByWalletPlatform' test.out

#- 333 PayWithUserWallet
samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode '9IyFeCyG' \
    --namespace $AB_NAMESPACE \
    --userId 'qZxJhwMz' \
    --body '{"amount": 66, "metadata": {"i9FS0oYJ": {}, "j5KH1Mj0": {}, "DlsLkLqY": {}}, "walletPlatform": "Other"}' \
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
    --storeId 'Byfq7T91' \
    > test.out 2>&1
eval_tap $? 339 'ListViews' test.out

#- 340 CreateView
samples/cli/sample-apps Platform createView \
    --namespace $AB_NAMESPACE \
    --storeId 'gmVjYLL4' \
    --body '{"displayOrder": 85, "localizations": {"IMUU0n8T": {"description": "Qn2v5gwo", "localExt": {"9FWcn5jO": {}, "vGZrawLK": {}, "4abSRx4X": {}}, "longDescription": "3YEEuFty", "title": "LZRdpphn"}, "BBgnkxQ9": {"description": "IXhCpre8", "localExt": {"qG33bhLe": {}, "C6rTSmgP": {}, "J1E6ExKQ": {}}, "longDescription": "9cOLtafZ", "title": "bXN30ldi"}, "aVotTPNV": {"description": "hqNVB1k1", "localExt": {"Uv68TTdy": {}, "1hduz0Am": {}, "qTYhYhLa": {}}, "longDescription": "DF5lCrhp", "title": "VJ06hEMQ"}}, "name": "6WKHE82r"}' \
    > test.out 2>&1
eval_tap $? 340 'CreateView' test.out

#- 341 GetView
samples/cli/sample-apps Platform getView \
    --namespace $AB_NAMESPACE \
    --viewId '4URQtrfg' \
    --storeId 'Bnr11v0G' \
    > test.out 2>&1
eval_tap $? 341 'GetView' test.out

#- 342 UpdateView
samples/cli/sample-apps Platform updateView \
    --namespace $AB_NAMESPACE \
    --viewId 'IGNeh3ES' \
    --storeId 'DBv7jj6K' \
    --body '{"displayOrder": 59, "localizations": {"hUPi9xo8": {"description": "apRcxnx7", "localExt": {"97oyVqQT": {}, "njnvm2eL": {}, "mx6nyERm": {}}, "longDescription": "iIC3e1Jz", "title": "LMvA5V7a"}, "stuPT4ST": {"description": "oTHpzOX7", "localExt": {"x1lDxUBr": {}, "MBhAz1Xo": {}, "064YhUG7": {}}, "longDescription": "Or0R22G1", "title": "k45ZS8UI"}, "fDzRFOEq": {"description": "dewlj1aA", "localExt": {"yk9jLki5": {}, "TTjqaUMn": {}, "9XGCfeAU": {}}, "longDescription": "XFeHzQrl", "title": "CfG3aRyS"}}, "name": "GI4MRKgR"}' \
    > test.out 2>&1
eval_tap $? 342 'UpdateView' test.out

#- 343 DeleteView
samples/cli/sample-apps Platform deleteView \
    --namespace $AB_NAMESPACE \
    --viewId 'mIbSX62i' \
    --storeId 'HDDIjboR' \
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
    --body '{"enablePaidForVCExpiration": true}' \
    > test.out 2>&1
eval_tap $? 345 'UpdateWalletConfig' test.out

#- 346 QueryWallets
eval_tap 0 346 'QueryWallets # SKIP deprecated' test.out

#- 347 BulkCredit
samples/cli/sample-apps Platform bulkCredit \
    --namespace $AB_NAMESPACE \
    --body '[{"creditRequest": {"amount": 71, "expireAt": "1982-05-06T00:00:00Z", "metadata": {"vWIiJou8": {}, "NaAfk9gc": {}, "s9ENAa4E": {}}, "origin": "Playstation", "reason": "q382e7XJ", "source": "DLC"}, "currencyCode": "07JojgzO", "userIds": ["5R9LAKO2", "4GHThwJX", "ZeghBIxI"]}, {"creditRequest": {"amount": 96, "expireAt": "1997-05-06T00:00:00Z", "metadata": {"LuGoNIhr": {}, "if8q5KyN": {}, "eRgJEN8k": {}}, "origin": "Nintendo", "reason": "MA4Ffrun", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "ZmVbIwU3", "userIds": ["GVG4A7e9", "shw8kaAb", "g9JgF0pY"]}, {"creditRequest": {"amount": 58, "expireAt": "1994-04-08T00:00:00Z", "metadata": {"p1IRySoE": {}, "YsvejRiP": {}, "jWLb8DKr": {}}, "origin": "Xbox", "reason": "1UndgnFv", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "x4J4c6TV", "userIds": ["Qbunkssw", "eXnoTd3r", "0MiQoqCR"]}]' \
    > test.out 2>&1
eval_tap $? 347 'BulkCredit' test.out

#- 348 BulkDebit
samples/cli/sample-apps Platform bulkDebit \
    --namespace $AB_NAMESPACE \
    --body '[{"currencyCode": "PHrqrxHy", "request": {"allowOverdraft": false, "amount": 38, "balanceOrigin": "GooglePlay", "balanceSource": "DLC_REVOCATION", "metadata": {"BPdd414t": {}, "nHcu3In5": {}, "cWaXiDJh": {}}, "reason": "OSPeY1yZ"}, "userIds": ["LtIVVOwa", "53sAFw7f", "lZmUflGq"]}, {"currencyCode": "f0aX1nsa", "request": {"allowOverdraft": false, "amount": 85, "balanceOrigin": "Xbox", "balanceSource": "TRADE", "metadata": {"KKnarVmb": {}, "wSooqdX9": {}, "t2trltuK": {}}, "reason": "b1nnorpq"}, "userIds": ["Ev6DsazS", "xJA1xyGs", "XcrWDo1a"]}, {"currencyCode": "2aaRCSt3", "request": {"allowOverdraft": true, "amount": 12, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"R1jYzuOO": {}, "qOmv7UH7": {}, "NEBc8N0t": {}}, "reason": "AGK3RiBI"}, "userIds": ["TSbi6WoJ", "LjrG5PDV", "KUrfARdb"]}]' \
    > test.out 2>&1
eval_tap $? 348 'BulkDebit' test.out

#- 349 GetWallet
eval_tap 0 349 'GetWallet # SKIP deprecated' test.out

#- 350 SyncOrders
samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'B49BZyuC' \
    --end 'PEaIrTbP' \
    --start '8wKwhsmr' \
    > test.out 2>&1
eval_tap $? 350 'SyncOrders' test.out

#- 351 TestAdyenConfig
samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethods": ["EILz2h19", "TTc6n56k", "5oUBQCX5"], "apiKey": "8IJh65wP", "authoriseAsCapture": false, "blockedPaymentMethods": ["6ql0SxRY", "4BcrJA1q", "eOV6NXq2"], "clientKey": "MuSwD9to", "dropInSettings": "It49FPMy", "liveEndpointUrlPrefix": "mWsjd8II", "merchantAccount": "TFNgmSYg", "notificationHmacKey": "L0GNcEfG", "notificationPassword": "UutP1iTG", "notificationUsername": "RhSTJY0b", "returnUrl": "fhWmRacm", "settings": "RltnlKgV"}' \
    > test.out 2>&1
eval_tap $? 351 'TestAdyenConfig' test.out

#- 352 TestAliPayConfig
samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox 'true' \
    --body '{"appId": "aCwrlosE", "privateKey": "Vs4swlO2", "publicKey": "mdJDrIKz", "returnUrl": "ctX4nACj"}' \
    > test.out 2>&1
eval_tap $? 352 'TestAliPayConfig' test.out

#- 353 TestCheckoutConfig
samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox 'false' \
    --body '{"publicKey": "FmQEvcZd", "secretKey": "8TA1ENhW"}' \
    > test.out 2>&1
eval_tap $? 353 'TestCheckoutConfig' test.out

#- 354 DebugMatchedPaymentMerchantConfig
samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'pX9Hg4FG' \
    --region 'XCpstBuo' \
    > test.out 2>&1
eval_tap $? 354 'DebugMatchedPaymentMerchantConfig' test.out

#- 355 TestNeonPayConfig
samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox 'true' \
    --body '{"apiKey": "6PCItd1K", "webhookSecretKey": "qdPXoGim"}' \
    > test.out 2>&1
eval_tap $? 355 'TestNeonPayConfig' test.out

#- 356 TestPayPalConfig
samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox 'false' \
    --body '{"clientID": "7zAt3Vzi", "clientSecret": "osNs7x4q", "returnUrl": "0IRKMjIH", "webHookId": "NtnxR729"}' \
    > test.out 2>&1
eval_tap $? 356 'TestPayPalConfig' test.out

#- 357 TestStripeConfig
samples/cli/sample-apps Platform testStripeConfig \
    --sandbox 'true' \
    --body '{"allowedPaymentMethodTypes": ["BBmOh0ZO", "KwMZGhl7", "uxutrNXz"], "publishableKey": "4eLxZjGX", "secretKey": "Y6UnvIJi", "webhookSecret": "SphVOg7h"}' \
    > test.out 2>&1
eval_tap $? 357 'TestStripeConfig' test.out

#- 358 TestWxPayConfig
samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "sxrRI8cF", "key": "0we5j9Db", "mchid": "QXbBQ0Pt", "returnUrl": "V0az3kQf"}' \
    > test.out 2>&1
eval_tap $? 358 'TestWxPayConfig' test.out

#- 359 TestXsollaConfig
samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "HXkuwCZ8", "flowCompletionUrl": "ePyeqbjH", "merchantId": 38, "projectId": 30, "projectSecretKey": "8joDxgnq"}' \
    > test.out 2>&1
eval_tap $? 359 'TestXsollaConfig' test.out

#- 360 GetPaymentMerchantConfig1
samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'wcYJwXbA' \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentMerchantConfig1' test.out

#- 361 UpdateAdyenConfig
samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'DYnkqzFu' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethods": ["exokwUkQ", "RD3m80qB", "9beh9RXa"], "apiKey": "NFheB7py", "authoriseAsCapture": false, "blockedPaymentMethods": ["oOdMCoCu", "c4RCuPyQ", "9PIaG1nP"], "clientKey": "2POtZJPr", "dropInSettings": "Hq9r44Ab", "liveEndpointUrlPrefix": "6X9YaOOr", "merchantAccount": "Kuvhfeg9", "notificationHmacKey": "24O2LEzx", "notificationPassword": "n5nUJQww", "notificationUsername": "j6TmtN3N", "returnUrl": "zPoEjL9B", "settings": "Cz4VEv2T"}' \
    > test.out 2>&1
eval_tap $? 361 'UpdateAdyenConfig' test.out

#- 362 TestAdyenConfigById
samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'RIBMvyDq' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfigById' test.out

#- 363 UpdateAliPayConfig
samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'BAMNAg40' \
    --sandbox 'true' \
    --validate 'true' \
    --body '{"appId": "5SSPjveq", "privateKey": "LIq8QF9X", "publicKey": "h1zsFXrV", "returnUrl": "3Atpxmr1"}' \
    > test.out 2>&1
eval_tap $? 363 'UpdateAliPayConfig' test.out

#- 364 TestAliPayConfigById
samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'JR3SkyhQ' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 364 'TestAliPayConfigById' test.out

#- 365 UpdateCheckoutConfig
samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'tUVQSHFw' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"publicKey": "cwHV6jjN", "secretKey": "4gYuYqGd"}' \
    > test.out 2>&1
eval_tap $? 365 'UpdateCheckoutConfig' test.out

#- 366 TestCheckoutConfigById
samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'QdU0Dc9x' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 366 'TestCheckoutConfigById' test.out

#- 367 UpdateNeonPayConfig
samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'TlGZ583E' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"apiKey": "UQOOfElw", "webhookSecretKey": "tzHGmJSu"}' \
    > test.out 2>&1
eval_tap $? 367 'UpdateNeonPayConfig' test.out

#- 368 TestNeonPayConfigById
samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'a13q7SBF' \
    --sandbox 'true' \
    > test.out 2>&1
eval_tap $? 368 'TestNeonPayConfigById' test.out

#- 369 UpdatePayPalConfig
samples/cli/sample-apps Platform updatePayPalConfig \
    --id '9LYL90NQ' \
    --sandbox 'true' \
    --validate 'false' \
    --body '{"clientID": "QHrb9oDh", "clientSecret": "d7MJBTVd", "returnUrl": "P5pPpWX9", "webHookId": "Oo5iN4bE"}' \
    > test.out 2>&1
eval_tap $? 369 'UpdatePayPalConfig' test.out

#- 370 TestPayPalConfigById
samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'd1HPfcjC' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 370 'TestPayPalConfigById' test.out

#- 371 UpdateStripeConfig
samples/cli/sample-apps Platform updateStripeConfig \
    --id 'HTsVybND' \
    --sandbox 'false' \
    --validate 'false' \
    --body '{"allowedPaymentMethodTypes": ["07u0kBhc", "I1U5aPAJ", "s5V8JnGD"], "publishableKey": "VkVfndkI", "secretKey": "vuuW38N3", "webhookSecret": "s9454KvZ"}' \
    > test.out 2>&1
eval_tap $? 371 'UpdateStripeConfig' test.out

#- 372 TestStripeConfigById
samples/cli/sample-apps Platform testStripeConfigById \
    --id 'e3QHpwm9' \
    --sandbox 'false' \
    > test.out 2>&1
eval_tap $? 372 'TestStripeConfigById' test.out

#- 373 UpdateWxPayConfig
samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'J9wB4aH0' \
    --validate 'false' \
    --body '{"appId": "fYMjpnZa", "key": "SbhwzhsU", "mchid": "vjDGxu24", "returnUrl": "mZxxh9pD"}' \
    > test.out 2>&1
eval_tap $? 373 'UpdateWxPayConfig' test.out

#- 374 UpdateWxPayConfigCert
samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id '0MpLJvoC' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 374 'UpdateWxPayConfigCert' test.out

#- 375 TestWxPayConfigById
samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'IWTSTxuK' \
    > test.out 2>&1
eval_tap $? 375 'TestWxPayConfigById' test.out

#- 376 UpdateXsollaConfig
samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'PDejPwSw' \
    --validate 'false' \
    --body '{"apiKey": "WQtd9QgE", "flowCompletionUrl": "OCOW2jFs", "merchantId": 83, "projectId": 36, "projectSecretKey": "GrxBgUIq"}' \
    > test.out 2>&1
eval_tap $? 376 'UpdateXsollaConfig' test.out

#- 377 TestXsollaConfigById
samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'xiyRBiFW' \
    > test.out 2>&1
eval_tap $? 377 'TestXsollaConfigById' test.out

#- 378 UpdateXsollaUIConfig
samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'RsYsnZUV' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaUIConfig' test.out

#- 379 QueryPaymentProviderConfig
samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit '52' \
    --namespace 'SC8fyd33' \
    --offset '62' \
    --region 'sCg2NQmM' \
    > test.out 2>&1
eval_tap $? 379 'QueryPaymentProviderConfig' test.out

#- 380 CreatePaymentProviderConfig
samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "XSOLLA", "namespace": "bBE2qS9O", "region": "Oyb1WpWh", "sandboxTaxJarApiToken": "fhrwSE1x", "specials": ["NEONPAY", "WALLET", "WALLET"], "taxJarApiToken": "LH1dlV9b", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 380 'CreatePaymentProviderConfig' test.out

#- 381 GetAggregatePaymentProviders
samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > test.out 2>&1
eval_tap $? 381 'GetAggregatePaymentProviders' test.out

#- 382 DebugMatchedPaymentProviderConfig
samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'MGMNQsRU' \
    --region '2WyXAwlw' \
    > test.out 2>&1
eval_tap $? 382 'DebugMatchedPaymentProviderConfig' test.out

#- 383 GetSpecialPaymentProviders
samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > test.out 2>&1
eval_tap $? 383 'GetSpecialPaymentProviders' test.out

#- 384 UpdatePaymentProviderConfig
samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'bUSbBmwf' \
    --body '{"aggregate": "NEONPAY", "namespace": "YNJyCS89", "region": "X2OsQWhI", "sandboxTaxJarApiToken": "bxhgrt84", "specials": ["PAYPAL", "PAYPAL", "ADYEN"], "taxJarApiToken": "Z0seKmIt", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    > test.out 2>&1
eval_tap $? 384 'UpdatePaymentProviderConfig' test.out

#- 385 DeletePaymentProviderConfig
samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id '7k4xM5Kj' \
    > test.out 2>&1
eval_tap $? 385 'DeletePaymentProviderConfig' test.out

#- 386 GetPaymentTaxConfig
samples/cli/sample-apps Platform getPaymentTaxConfig \
    > test.out 2>&1
eval_tap $? 386 'GetPaymentTaxConfig' test.out

#- 387 UpdatePaymentTaxConfig
samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "Akmdnt5k", "taxJarApiToken": "HTheh7o8", "taxJarEnabled": true, "taxJarProductCodesMapping": {"8flDTLSk": "ofJIxsWJ", "cYcAtopo": "sR8TT7nf", "Fl80I8a7": "lX8bOnt4"}}' \
    > test.out 2>&1
eval_tap $? 387 'UpdatePaymentTaxConfig' test.out

#- 388 SyncPaymentOrders
samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'KYPa6oXm' \
    --end '0k6GxfQs' \
    --start 'C3iHrPPQ' \
    > test.out 2>&1
eval_tap $? 388 'SyncPaymentOrders' test.out

#- 389 PublicGetRootCategories
samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace $AB_NAMESPACE \
    --language '2nr1ylHJ' \
    --storeId 'Ybd5HOwH' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetRootCategories' test.out

#- 390 DownloadCategories
samples/cli/sample-apps Platform downloadCategories \
    --namespace $AB_NAMESPACE \
    --language 'x4QhtdRR' \
    --storeId 'NiScMgpm' \
    > test.out 2>&1
eval_tap $? 390 'DownloadCategories' test.out

#- 391 PublicGetCategory
samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'FBlr9uns' \
    --namespace $AB_NAMESPACE \
    --language 'zoasUWmT' \
    --storeId 'fYeFHYdg' \
    > test.out 2>&1
eval_tap $? 391 'PublicGetCategory' test.out

#- 392 PublicGetChildCategories
samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'OO92UpQf' \
    --namespace $AB_NAMESPACE \
    --language '6ej5vdN2' \
    --storeId '3IQOc133' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetChildCategories' test.out

#- 393 PublicGetDescendantCategories
samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'hVQzX3PC' \
    --namespace $AB_NAMESPACE \
    --language '6SOupEpE' \
    --storeId 'hrk3DHu7' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetDescendantCategories' test.out

#- 394 PublicListCurrencies
samples/cli/sample-apps Platform publicListCurrencies \
    --namespace $AB_NAMESPACE \
    --currencyType 'VIRTUAL' \
    > test.out 2>&1
eval_tap $? 394 'PublicListCurrencies' test.out

#- 395 GeDLCDurableRewardShortMap
samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace $AB_NAMESPACE \
    --dlcType 'XBOX' \
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
    --platform 'TWITCH' \
    > test.out 2>&1
eval_tap $? 397 'GetIAPItemMapping' test.out

#- 398 PublicGetItemByAppId
samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace $AB_NAMESPACE \
    --language 'fyNuT6tb' \
    --region '3lAZ5RlB' \
    --storeId 'fJaNoawl' \
    --appId 'whvPilnL' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetItemByAppId' test.out

#- 399 PublicQueryItems
samples/cli/sample-apps Platform publicQueryItems \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --autoCalcEstimatedPrice 'true' \
    --baseAppId '0HBfzB3S' \
    --categoryPath 'mwAiojTi' \
    --features 'i8bmfGHl' \
    --includeSubCategoryItem 'true' \
    --itemType 'COINS' \
    --language 'X5P3t0kT' \
    --limit '36' \
    --offset '64' \
    --region 'TClzAaeC' \
    --sortBy '["createdAt:desc", "createdAt", "updatedAt:asc"]' \
    --storeId 'h6TV1t2I' \
    --tags 'ozavDieA' \
    > test.out 2>&1
eval_tap $? 399 'PublicQueryItems' test.out

#- 400 PublicGetItemBySku
samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'false' \
    --language 'HxhQb13x' \
    --region '8Y5qiAtW' \
    --storeId 'ETgVmxBB' \
    --sku 'Zpr8xQt5' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetItemBySku' test.out

#- 401 PublicGetEstimatedPrice
samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace $AB_NAMESPACE \
    --region 'KyyZ4jMJ' \
    --storeId '0j5nq7Jn' \
    --itemIds '4dkKbCCJ' \
    > test.out 2>&1
eval_tap $? 401 'PublicGetEstimatedPrice' test.out

#- 402 PublicBulkGetItems
samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language '1oxPItmg' \
    --region 'D0cZlRny' \
    --storeId 'LMAP444U' \
    --itemIds 'aJX82miQ' \
    > test.out 2>&1
eval_tap $? 402 'PublicBulkGetItems' test.out

#- 403 PublicValidateItemPurchaseCondition
samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace $AB_NAMESPACE \
    --body '{"itemIds": ["EDQRC5On", "5ENwhu6o", "YsNC1G7F"]}' \
    > test.out 2>&1
eval_tap $? 403 'PublicValidateItemPurchaseCondition' test.out

#- 404 PublicSearchItems
samples/cli/sample-apps Platform publicSearchItems \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --itemType 'MEDIA' \
    --limit '99' \
    --offset '4' \
    --region 'VIHVj23u' \
    --storeId 'SaXDpA5s' \
    --keyword 'TB5cPDB7' \
    --language 'xXpXFlso' \
    > test.out 2>&1
eval_tap $? 404 'PublicSearchItems' test.out

#- 405 PublicGetApp
samples/cli/sample-apps Platform publicGetApp \
    --itemId 'kgcUzAaG' \
    --namespace $AB_NAMESPACE \
    --language 'DQc1jUen' \
    --region 'v3hCEec9' \
    --storeId '69iA0EWS' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetApp' test.out

#- 406 PublicGetItemDynamicData
samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'eCEI2xbw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'PublicGetItemDynamicData' test.out

#- 407 PublicGetItem
samples/cli/sample-apps Platform publicGetItem \
    --itemId 'aXIF5Glq' \
    --namespace $AB_NAMESPACE \
    --autoCalcEstimatedPrice 'true' \
    --language 'B6XxxpaB' \
    --populateBundle 'false' \
    --region '5Pl54Kls' \
    --storeId 'pYOJIYB2' \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItem' test.out

#- 408 GetPaymentCustomization
eval_tap 0 408 'GetPaymentCustomization # SKIP deprecated' test.out

#- 409 PublicGetPaymentUrl
samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace $AB_NAMESPACE \
    --body '{"neonPayConfig": {"cancelUrl": "AfM8QdFM", "successUrl": "XI0YkWUl"}, "paymentOrderNo": "sggS8P5B", "paymentProvider": "XSOLLA", "returnUrl": "hz1i0zDm", "ui": "sx8nIGKM", "zipCode": "2ARzsXbw"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicGetPaymentUrl' test.out

#- 410 PublicGetPaymentMethods
samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo '2o64Eg7b' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetPaymentMethods' test.out

#- 411 PublicGetUnpaidPaymentOrder
samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'mJiMDawD' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetUnpaidPaymentOrder' test.out

#- 412 Pay
samples/cli/sample-apps Platform pay \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'uLTfV0w7' \
    --paymentProvider 'STRIPE' \
    --zipCode '36oCUP3S' \
    --body '{"token": "pfrATkTc"}' \
    > test.out 2>&1
eval_tap $? 412 'Pay' test.out

#- 413 PublicCheckPaymentOrderPaidStatus
samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace $AB_NAMESPACE \
    --paymentOrderNo 'JeDSXiza' \
    > test.out 2>&1
eval_tap $? 413 'PublicCheckPaymentOrderPaidStatus' test.out

#- 414 GetPaymentPublicConfig
samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace $AB_NAMESPACE \
    --sandbox 'true' \
    --paymentProvider 'CHECKOUT' \
    --region '7UC9TEOU' \
    > test.out 2>&1
eval_tap $? 414 'GetPaymentPublicConfig' test.out

#- 415 PublicGetQRCode
samples/cli/sample-apps Platform publicGetQRCode \
    --namespace $AB_NAMESPACE \
    --code 'meeMzcCm' \
    > test.out 2>&1
eval_tap $? 415 'PublicGetQRCode' test.out

#- 416 PublicNormalizePaymentReturnUrl
samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace $AB_NAMESPACE \
    --payerID 'wmEqthD7' \
    --foreinginvoice 'X1hExgPR' \
    --invoiceId 'zU07OkKg' \
    --payload '9Eh9Us7i' \
    --redirectResult 'Lq5bsOfj' \
    --resultCode '812MfyPQ' \
    --sessionId 'amj5e0nS' \
    --status 'muOqjJT9' \
    --token 'bILdUsPe' \
    --type 'HHAwEQ7u' \
    --userId '5W4cHPVq' \
    --orderNo 'SHzttJfT' \
    --paymentOrderNo 'OzFN4ovZ' \
    --paymentProvider 'PAYPAL' \
    --returnUrl 'scKip9LJ' \
    > test.out 2>&1
eval_tap $? 416 'PublicNormalizePaymentReturnUrl' test.out

#- 417 GetPaymentTaxValue
samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace $AB_NAMESPACE \
    --zipCode '8d5MMLgk' \
    --paymentOrderNo 'Q8r1Kszu' \
    --paymentProvider 'PAYPAL' \
    > test.out 2>&1
eval_tap $? 417 'GetPaymentTaxValue' test.out

#- 418 GetRewardByCode
samples/cli/sample-apps Platform getRewardByCode \
    --namespace $AB_NAMESPACE \
    --rewardCode '2UtsWf9A' \
    > test.out 2>&1
eval_tap $? 418 'GetRewardByCode' test.out

#- 419 QueryRewards1
samples/cli/sample-apps Platform queryRewards1 \
    --namespace $AB_NAMESPACE \
    --eventTopic 'QsyebXas' \
    --limit '41' \
    --offset '40' \
    --sortBy '["rewardCode:desc", "rewardCode"]' \
    > test.out 2>&1
eval_tap $? 419 'QueryRewards1' test.out

#- 420 GetReward1
samples/cli/sample-apps Platform getReward1 \
    --namespace $AB_NAMESPACE \
    --rewardId 'mP3rt0ca' \
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
    --appIds '["sqJKllyo", "5Fl6OP29", "rTQdYeO2"]' \
    --itemIds '["Mmq4bneZ", "18qxt9Qk", "SRNHotjT"]' \
    --skus '["n0TN51Os", "TykSRaaM", "TQBMmx6N"]' \
    > test.out 2>&1
eval_tap $? 422 'PublicExistsAnyMyActiveEntitlement' test.out

#- 423 PublicGetMyAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --appId 'khNk7QKJ' \
    > test.out 2>&1
eval_tap $? 423 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 424 PublicGetMyEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'LOOTBOX' \
    --itemId 'tPN9Cptb' \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 425 PublicGetMyEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --entitlementClazz 'APP' \
    --sku 'ZQ6eiTl5' \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 426 PublicGetEntitlementOwnershipToken
samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace $AB_NAMESPACE \
    --appIds '["gFFVWJME", "z8AQiEmy", "0FqlljLH"]' \
    --itemIds '["PxYqlC8f", "CpykLJNF", "7RCuedLn"]' \
    --skus '["tiAubVKj", "OIqGmmaC", "3aJNMhi8"]' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetEntitlementOwnershipToken' test.out

#- 427 SyncTwitchDropsEntitlement
samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace $AB_NAMESPACE \
    --body '{"gameId": "t7gw07VU", "language": "nxP_shot_LI", "region": "NSrVgaAj"}' \
    > test.out 2>&1
eval_tap $? 427 'SyncTwitchDropsEntitlement' test.out

#- 428 PublicGetMyWallet
samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'A9qyaxrx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyWallet' test.out

#- 429 SyncEpicGameDLC
samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace $AB_NAMESPACE \
    --userId 'wRGs3edi' \
    --body '{"epicGamesJwtToken": "4o0hy3J1"}' \
    > test.out 2>&1
eval_tap $? 429 'SyncEpicGameDLC' test.out

#- 430 SyncOculusDLC
samples/cli/sample-apps Platform syncOculusDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ZB6LtaE6' \
    > test.out 2>&1
eval_tap $? 430 'SyncOculusDLC' test.out

#- 431 PublicSyncPsnDlcInventory
samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace $AB_NAMESPACE \
    --userId 'l4yFZYXj' \
    --body '{"serviceLabel": 12}' \
    > test.out 2>&1
eval_tap $? 431 'PublicSyncPsnDlcInventory' test.out

#- 432 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '2RhZxwas' \
    --body '{"serviceLabels": [64, 8, 34]}' \
    > test.out 2>&1
eval_tap $? 432 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 433 SyncSteamDLC
samples/cli/sample-apps Platform syncSteamDLC \
    --namespace $AB_NAMESPACE \
    --userId 'H8e7jZR3' \
    --body '{"appId": "iyhVaQfL", "steamId": "VgNZdQ6J"}' \
    > test.out 2>&1
eval_tap $? 433 'SyncSteamDLC' test.out

#- 434 SyncXboxDLC
samples/cli/sample-apps Platform syncXboxDLC \
    --namespace $AB_NAMESPACE \
    --userId 'ODNRQ9g3' \
    --body '{"xstsToken": "Z930EYQ6"}' \
    > test.out 2>&1
eval_tap $? 434 'SyncXboxDLC' test.out

#- 435 PublicQueryUserEntitlements
samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'W2sBszTO' \
    --appType 'DLC' \
    --entitlementClazz 'OPTIONBOX' \
    --entitlementName '5eY2mvr1' \
    --features '["0MyVOniu", "wbX4w9pU", "o24tBLGq"]' \
    --itemId '["iEG6DhFj", "BULb5D2V", "keE6Wyh2"]' \
    --limit '75' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 435 'PublicQueryUserEntitlements' test.out

#- 436 PublicGetUserAppEntitlementByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'EroI2Ntu' \
    --appId '7JEE3VqT' \
    > test.out 2>&1
eval_tap $? 436 'PublicGetUserAppEntitlementByAppId' test.out

#- 437 PublicQueryUserEntitlementsByAppType
samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace $AB_NAMESPACE \
    --userId 'KV2Z3qbu' \
    --limit '15' \
    --offset '15' \
    --appType 'DLC' \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlementsByAppType' test.out

#- 438 PublicGetUserEntitlementsByIds
samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace $AB_NAMESPACE \
    --userId 'hFBVRIRQ' \
    --availablePlatformOnly 'false' \
    --ids '["xtrFTopb", "Z0ixpy2H", "Ay8yT8YE"]' \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserEntitlementsByIds' test.out

#- 439 PublicGetUserEntitlementByItemId
eval_tap 0 439 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 440 PublicGetUserEntitlementBySku
eval_tap 0 440 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 441 PublicUserEntitlementHistory
samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace $AB_NAMESPACE \
    --userId 'rSAoP3Hv' \
    --endDate 'GNtSiVBj' \
    --entitlementClazz 'LOOTBOX' \
    --limit '30' \
    --offset '57' \
    --startDate 'f2MbWC7z' \
    > test.out 2>&1
eval_tap $? 441 'PublicUserEntitlementHistory' test.out

#- 442 PublicExistsAnyUserActiveEntitlement
samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace $AB_NAMESPACE \
    --userId '4a7sYSCM' \
    --appIds '["dLCb6UM8", "KIq4wYyq", "yPw0lA2h"]' \
    --itemIds '["S1XR7v7C", "tyapyPx0", "Thfnsktt"]' \
    --skus '["sfwYy4za", "ay8Pov7h", "NOAd2NkW"]' \
    > test.out 2>&1
eval_tap $? 442 'PublicExistsAnyUserActiveEntitlement' test.out

#- 443 PublicGetUserAppEntitlementOwnershipByAppId
samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace $AB_NAMESPACE \
    --userId 'iEERDqUv' \
    --appId '1XF3K8E0' \
    > test.out 2>&1
eval_tap $? 443 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 444 PublicGetUserEntitlementOwnershipByItemId
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'IBjAefE1' \
    --entitlementClazz 'MEDIA' \
    --itemId 'hqLhS0fB' \
    > test.out 2>&1
eval_tap $? 444 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 445 PublicGetUserEntitlementOwnershipByItemIds
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace $AB_NAMESPACE \
    --userId 'GfaUVrRu' \
    --ids '["xGIXZylZ", "zqJaVzyw", "FUWqaXKo"]' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 446 PublicGetUserEntitlementOwnershipBySku
samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace $AB_NAMESPACE \
    --userId 'CeM2IXxI' \
    --entitlementClazz 'OPTIONBOX' \
    --sku 'da0wbRlD' \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 447 PublicGetUserEntitlement
samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'V4ZcgKkQ' \
    --namespace $AB_NAMESPACE \
    --userId 'vKuyVyVS' \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlement' test.out

#- 448 PublicConsumeUserEntitlement
samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'lEt48S1a' \
    --namespace $AB_NAMESPACE \
    --userId '2SS0OgnL' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "options": ["MPF3YUtx", "H3TWo48J", "Fv0DUr7D"], "requestId": "AA4Ghld6", "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 448 'PublicConsumeUserEntitlement' test.out

#- 449 PublicSellUserEntitlement
samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'lE9a3rIZ' \
    --namespace $AB_NAMESPACE \
    --userId 'L3fsmM6C' \
    --body '{"requestId": "7NHqdWDX", "useCount": 0}' \
    > test.out 2>&1
eval_tap $? 449 'PublicSellUserEntitlement' test.out

#- 450 PublicSplitUserEntitlement
samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId '2VRpgnuB' \
    --namespace $AB_NAMESPACE \
    --userId 'EDheZMrX' \
    --body '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 18}' \
    > test.out 2>&1
eval_tap $? 450 'PublicSplitUserEntitlement' test.out

#- 451 PublicTransferUserEntitlement
samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'TEq3h6Pw' \
    --namespace $AB_NAMESPACE \
    --userId 'QMj03stH' \
    --body '{"entitlementId": "sO9ZsFa5", "metadata": {"operationSource": "INVENTORY"}, "useCount": 31}' \
    > test.out 2>&1
eval_tap $? 451 'PublicTransferUserEntitlement' test.out

#- 452 PublicRedeemCode
samples/cli/sample-apps Platform publicRedeemCode \
    --namespace $AB_NAMESPACE \
    --userId 'gUOWUxgQ' \
    --body '{"code": "oH6NaHaj", "language": "KZpS-Qfvt", "region": "tvtAqU3g"}' \
    > test.out 2>&1
eval_tap $? 452 'PublicRedeemCode' test.out

#- 453 PublicFulfillAppleIAPItem
samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'H91NylLf' \
    --body '{"excludeOldTransactions": true, "language": "pDHA-TTgY", "productId": "hLOSHRDk", "receiptData": "hzmEWVae", "region": "VHU9kCbu", "transactionId": "M3wKt6dS"}' \
    > test.out 2>&1
eval_tap $? 453 'PublicFulfillAppleIAPItem' test.out

#- 454 SyncEpicGamesInventory
samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace $AB_NAMESPACE \
    --userId 'K8kVfaeW' \
    --body '{"epicGamesJwtToken": "Ld0STZ8i"}' \
    > test.out 2>&1
eval_tap $? 454 'SyncEpicGamesInventory' test.out

#- 455 PublicFulfillGoogleIAPItem
samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace $AB_NAMESPACE \
    --userId 'cpEycJdX' \
    --body '{"autoAck": true, "autoConsume": false, "language": "mgew_anwr", "orderId": "tM5rqHYA", "packageName": "yaSw8yYU", "productId": "nqB6hotA", "purchaseTime": 39, "purchaseToken": "o0AdeodQ", "region": "F0JXJMl8", "subscriptionPurchase": true}' \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillGoogleIAPItem' test.out

#- 456 SyncOculusConsumableEntitlements
samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'NNFUNr7X' \
    > test.out 2>&1
eval_tap $? 456 'SyncOculusConsumableEntitlements' test.out

#- 457 PublicReconcilePlayStationStore
samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace $AB_NAMESPACE \
    --userId 'PSIzgbKH' \
    --body '{"currencyCode": "G2g8HC8o", "price": 0.373245492511864, "productId": "WdtNTaif", "serviceLabel": 38}' \
    > test.out 2>&1
eval_tap $? 457 'PublicReconcilePlayStationStore' test.out

#- 458 PublicReconcilePlayStationStoreWithMultipleServiceLabels
samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace $AB_NAMESPACE \
    --userId '1C2NH32O' \
    --body '{"currencyCode": "Lr7qNTuD", "price": 0.7247406642591806, "productId": "UGKIpKuO", "serviceLabels": [56, 65, 12]}' \
    > test.out 2>&1
eval_tap $? 458 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 459 SyncSteamInventory
samples/cli/sample-apps Platform syncSteamInventory \
    --namespace $AB_NAMESPACE \
    --userId 'SVK6LpAI' \
    --body '{"appId": "6EBwleGh", "currencyCode": "Dtcbmuq2", "language": "iB-qQvu", "price": 0.9844114490333269, "productId": "OxybCN43", "region": "sdNbtWx0", "steamId": "YF7XfRj2"}' \
    > test.out 2>&1
eval_tap $? 459 'SyncSteamInventory' test.out

#- 460 SyncSteamAbnormalTransaction
samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace $AB_NAMESPACE \
    --userId 'sHu7hPU8' \
    > test.out 2>&1
eval_tap $? 460 'SyncSteamAbnormalTransaction' test.out

#- 461 SyncSteamIAPByTransaction
samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace $AB_NAMESPACE \
    --userId '3dxZMeDc' \
    --body '{"orderId": "4ELOsTYA"}' \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamIAPByTransaction' test.out

#- 462 PublicQueryUserThirdPartySubscription
samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace $AB_NAMESPACE \
    --platform 'EPICGAMES' \
    --userId 'EX96Mak3' \
    --activeOnly 'false' \
    --groupId 'H57KI7Mg' \
    --limit '56' \
    --offset '91' \
    --productId 'LvZuM27d' \
    > test.out 2>&1
eval_tap $? 462 'PublicQueryUserThirdPartySubscription' test.out

#- 463 SyncTwitchDropsEntitlement1
samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace $AB_NAMESPACE \
    --userId 'mTNhAYem' \
    --body '{"gameId": "hGovVkZj", "language": "QcJw_etLT", "region": "xlUexplq"}' \
    > test.out 2>&1
eval_tap $? 463 'SyncTwitchDropsEntitlement1' test.out

#- 464 SyncXboxInventory
samples/cli/sample-apps Platform syncXboxInventory \
    --namespace $AB_NAMESPACE \
    --userId 'D6Di977a' \
    --body '{"currencyCode": "7T4MvkvA", "price": 0.054183693908317676, "productId": "PTbJVbq5", "xstsToken": "6G6tXSsV"}' \
    > test.out 2>&1
eval_tap $? 464 'SyncXboxInventory' test.out

#- 465 PublicQueryUserOrders
samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace $AB_NAMESPACE \
    --userId 'JSBEEb5R' \
    --discounted 'true' \
    --itemId 'VLxh8gEu' \
    --limit '2' \
    --offset '82' \
    --status 'CHARGEBACK' \
    > test.out 2>&1
eval_tap $? 465 'PublicQueryUserOrders' test.out

#- 466 PublicCreateUserOrder
samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace $AB_NAMESPACE \
    --userId 'jLhNKLZc' \
    --body '{"currencyCode": "Jk9IvFew", "discountCodes": ["UHgtNcj3", "1l2VAZiT", "oL1J7dav"], "discountedPrice": 81, "ext": {"Cp0JvT5V": {}, "vO3746Ee": {}, "HD0xYOd7": {}}, "itemId": "3oXFROfO", "language": "lLb-UIix_cy", "price": 28, "quantity": 48, "region": "BoKRyecL", "returnUrl": "UJ5ZkwOu", "sectionId": "32jo9ZRh"}' \
    > test.out 2>&1
eval_tap $? 466 'PublicCreateUserOrder' test.out

#- 467 PublicPreviewOrderPrice
samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace $AB_NAMESPACE \
    --userId 'zseyZmU0' \
    --body '{"currencyCode": "bsmVVd2V", "discountCodes": ["DNwcjY3o", "h2zpQ7Ys", "MN7pU7Z4"], "discountedPrice": 80, "itemId": "rYvtF9BW", "price": 98, "quantity": 79}' \
    > test.out 2>&1
eval_tap $? 467 'PublicPreviewOrderPrice' test.out

#- 468 PublicGetUserOrder
samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'gWTZZ5CH' \
    --userId 'XOefcZOe' \
    > test.out 2>&1
eval_tap $? 468 'PublicGetUserOrder' test.out

#- 469 PublicCancelUserOrder
samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace $AB_NAMESPACE \
    --orderNo 'C28oHeH9' \
    --userId 'PohAcnyZ' \
    > test.out 2>&1
eval_tap $? 469 'PublicCancelUserOrder' test.out

#- 470 PublicGetUserOrderHistories
samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace $AB_NAMESPACE \
    --orderNo 'hQk4Uh7J' \
    --userId '5ZKUB8lM' \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrderHistories' test.out

#- 471 PublicDownloadUserOrderReceipt
samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace $AB_NAMESPACE \
    --orderNo 'vbWjcE4K' \
    --userId 'M0raiq0T' \
    > test.out 2>&1
eval_tap $? 471 'PublicDownloadUserOrderReceipt' test.out

#- 472 PublicGetPaymentAccounts
samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'RJM2AptF' \
    > test.out 2>&1
eval_tap $? 472 'PublicGetPaymentAccounts' test.out

#- 473 PublicDeletePaymentAccount
samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id '1qjmZs9P' \
    --namespace $AB_NAMESPACE \
    --type 'card' \
    --userId '9NsDjlFW' \
    > test.out 2>&1
eval_tap $? 473 'PublicDeletePaymentAccount' test.out

#- 474 PublicListActiveSections
samples/cli/sample-apps Platform publicListActiveSections \
    --namespace $AB_NAMESPACE \
    --userId 'H5w58wQH' \
    --autoCalcEstimatedPrice 'false' \
    --language '2lbDTlNZ' \
    --region 'mpRJT0Ni' \
    --storeId 'jtEPAwMa' \
    --viewId '5aTwYqaA' \
    > test.out 2>&1
eval_tap $? 474 'PublicListActiveSections' test.out

#- 475 PublicQueryUserSubscriptions
samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace $AB_NAMESPACE \
    --userId 'pcvJ3imF' \
    --chargeStatus 'CHARGE_FAILED' \
    --itemId '5R7dFL3Q' \
    --limit '18' \
    --offset '28' \
    --sku 'B8AhtOJm' \
    --status 'CANCELLED' \
    --subscribedBy 'PLATFORM' \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserSubscriptions' test.out

#- 476 PublicSubscribeSubscription
samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace $AB_NAMESPACE \
    --userId '0jx1y4wG' \
    --body '{"currencyCode": "Owi3xjS6", "itemId": "g05qkXyX", "language": "pYS", "region": "dJwHZNap", "returnUrl": "XgDJRZTk", "source": "LgX1ZPNm"}' \
    > test.out 2>&1
eval_tap $? 476 'PublicSubscribeSubscription' test.out

#- 477 PublicCheckUserSubscriptionSubscribableByItemId
samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace $AB_NAMESPACE \
    --userId 'hdRsqsnJ' \
    --itemId 'Zt58AnXI' \
    > test.out 2>&1
eval_tap $? 477 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 478 PublicGetUserSubscription
samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'w6BayVC0' \
    --userId 'f1T25KQe' \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserSubscription' test.out

#- 479 PublicChangeSubscriptionBillingAccount
samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'KdmHD4QB' \
    --userId 'Fw43T8DA' \
    > test.out 2>&1
eval_tap $? 479 'PublicChangeSubscriptionBillingAccount' test.out

#- 480 PublicCancelSubscription
samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'Je2WlPJj' \
    --userId 'HEjXw0dA' \
    --body '{"immediate": true, "reason": "PSuCtxVz"}' \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelSubscription' test.out

#- 481 PublicGetUserSubscriptionBillingHistories
samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace $AB_NAMESPACE \
    --subscriptionId 'l1rW73sG' \
    --userId '6d4EeDTn' \
    --excludeFree 'false' \
    --limit '71' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserSubscriptionBillingHistories' test.out

#- 482 PublicListViews
samples/cli/sample-apps Platform publicListViews \
    --namespace $AB_NAMESPACE \
    --userId 'nhdIx6xz' \
    --language 'j6y8TRAb' \
    --storeId 'IgZTpjDr' \
    > test.out 2>&1
eval_tap $? 482 'PublicListViews' test.out

#- 483 PublicGetWallet
samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'aFPEpogy' \
    --namespace $AB_NAMESPACE \
    --userId 'TG4wtoeR' \
    > test.out 2>&1
eval_tap $? 483 'PublicGetWallet' test.out

#- 484 PublicListUserWalletTransactions
samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'xiwJ51oX' \
    --namespace $AB_NAMESPACE \
    --userId 'oQjEKaQW' \
    --limit '49' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 484 'PublicListUserWalletTransactions' test.out

#- 485 PublicGetMyDLCContent
samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces 'true' \
    --type 'XBOX' \
    > test.out 2>&1
eval_tap $? 485 'PublicGetMyDLCContent' test.out

#- 486 QueryFulfillments
samples/cli/sample-apps Platform queryFulfillments \
    --namespace $AB_NAMESPACE \
    --endTime '5AD6xYp1' \
    --limit '85' \
    --offset '8' \
    --startTime 'SEezqVoJ' \
    --state 'REVOKED' \
    --transactionId 'Q9h07XD7' \
    --userId 'en08rzcX' \
    > test.out 2>&1
eval_tap $? 486 'QueryFulfillments' test.out

#- 487 QueryItemsV2
samples/cli/sample-apps Platform queryItemsV2 \
    --namespace $AB_NAMESPACE \
    --appType 'SOFTWARE' \
    --availableDate 'hNLSkhdN' \
    --baseAppId 'wzlHF3p8' \
    --categoryPath 'FSIi41A5' \
    --features 'fpmpoFgb' \
    --includeSubCategoryItem 'false' \
    --itemName 'ctEuGyV4' \
    --itemStatus 'INACTIVE' \
    --itemType '["INGAMEITEM", "COINS", "INGAMEITEM"]' \
    --limit '22' \
    --offset '6' \
    --region 'WycR8ORc' \
    --sectionExclusive 'false' \
    --sortBy '["createdAt", "name:asc", "updatedAt:asc"]' \
    --storeId 'wUf65p37' \
    --tags 'KrPkkWqy' \
    --targetNamespace '1VJInTjR' \
    --withTotal 'false' \
    > test.out 2>&1
eval_tap $? 487 'QueryItemsV2' test.out

#- 488 ImportStore1
samples/cli/sample-apps Platform importStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'faN0Ban7' \
    --strictMode 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 488 'ImportStore1' test.out

#- 489 ExportStore1
samples/cli/sample-apps Platform exportStore1 \
    --namespace $AB_NAMESPACE \
    --storeId 'tmmyBktg' \
    --body '{"itemIds": ["WCfueYbt", "k9kIP3fs", "ROFGafwa"]}' \
    > test.out 2>&1
eval_tap $? 489 'ExportStore1' test.out

#- 490 FulfillRewardsV2
samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace $AB_NAMESPACE \
    --userId 'UZzjikMQ' \
    --body '{"entitlementCollectionId": "AGPDcOK3", "entitlementOrigin": "Steam", "metadata": {"JAY9gwtt": {}, "PiRa6N7d": {}, "T85u2dJQ": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "UZvqCib6", "namespace": "KerivZnA"}, "item": {"itemId": "6hqK85Nj", "itemName": "cXVQzC0X", "itemSku": "3Wco340Q", "itemType": "WH1uqhrt"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "Rcl7XqRD", "namespace": "hY1BUyyh"}, "item": {"itemId": "L0pvVCjx", "itemName": "59jeiEZW", "itemSku": "oBX7VxVM", "itemType": "w8GaweMH"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "PC4bZz6F", "namespace": "dcgPz09h"}, "item": {"itemId": "geElE7qx", "itemName": "XtGAvys4", "itemSku": "F3OxvyDw", "itemType": "KYjQr38Q"}, "quantity": 89, "type": "ITEM"}], "source": "GIFT", "transactionId": "UMqbMy52"}' \
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
    --userId 'PX6FXxyp' \
    --body '{"transactionId": "NoCspdtd"}' \
    > test.out 2>&1
eval_tap $? 494 'V2PublicFulfillAppleIAPItem' test.out

#- 495 FulfillItemsV3
samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'aArNob8X' \
    --userId 'KAYWmXq4' \
    --body '{"items": [{"duration": 86, "endDate": "1987-03-24T00:00:00Z", "entitlementCollectionId": "iSGI7JZc", "entitlementOrigin": "Nintendo", "itemId": "yx8Td87e", "itemSku": "gMWnfl9g", "language": "ZNtKee4w", "metadata": {"0KjEX2vq": {}, "z024DBXl": {}, "bO7z8KIc": {}}, "orderNo": "TJsYyHi8", "origin": "Epic", "quantity": 44, "region": "tk34AVpq", "source": "ORDER_REVOCATION", "startDate": "1974-06-28T00:00:00Z", "storeId": "bAH2i8Ts"}, {"duration": 43, "endDate": "1991-06-14T00:00:00Z", "entitlementCollectionId": "rhc2lUL3", "entitlementOrigin": "Playstation", "itemId": "eq0zFz6i", "itemSku": "uZIWIVPJ", "language": "yb0htKcK", "metadata": {"IB07PXYG": {}, "W5V3yDh6": {}, "0uR4XaRX": {}}, "orderNo": "5uDRjBKc", "origin": "GooglePlay", "quantity": 32, "region": "WCEXHfZI", "source": "PURCHASE", "startDate": "1991-07-02T00:00:00Z", "storeId": "5AYgA2Lj"}, {"duration": 24, "endDate": "1986-11-10T00:00:00Z", "entitlementCollectionId": "GPn8wM6x", "entitlementOrigin": "Nintendo", "itemId": "sd7YTXye", "itemSku": "nyzJ1ahl", "language": "5QZZZ5i2", "metadata": {"Klqh5P2H": {}, "EA4Yrtev": {}, "bkPjNODN": {}}, "orderNo": "oZ76MTno", "origin": "Oculus", "quantity": 77, "region": "OJErS8Ds", "source": "EXPIRATION", "startDate": "1999-04-28T00:00:00Z", "storeId": "Be6KH4hP"}]}' \
    > test.out 2>&1
eval_tap $? 495 'FulfillItemsV3' test.out

#- 496 RetryFulfillItemsV3
samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'SRGEv5DD' \
    --userId 'jbdWxXUL' \
    > test.out 2>&1
eval_tap $? 496 'RetryFulfillItemsV3' test.out

#- 497 RevokeItemsV3
samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace $AB_NAMESPACE \
    --transactionId 'UDx6WEb4' \
    --userId 'DVTmkOX9' \
    > test.out 2>&1
eval_tap $? 497 'RevokeItemsV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE