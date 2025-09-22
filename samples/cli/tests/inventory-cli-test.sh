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
echo "1..44"

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

#- 2 AdminCreateChainingOperations
samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace $AB_NAMESPACE \
    --body '{"message": "wPdDwsxD", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "8FWN52Po", "options": ["kQEDTYvN", "o5LVoQUr", "1RmnI5iO"], "qty": 68, "slotId": "grhK22Hf", "sourceItemId": "5aV9QMKw"}, {"dateRangeValidation": true, "inventoryId": "k3r3YF2u", "options": ["9D975sNG", "JBGOJjJ5", "SnNeOK9i"], "qty": 10, "slotId": "qppRi6is", "sourceItemId": "YQF6VWNo"}, {"dateRangeValidation": true, "inventoryId": "uc4RMKV8", "options": ["9Fy8HGhU", "eIjN99iy", "hjEyBAsy"], "qty": 51, "slotId": "LkXJ9Lh4", "sourceItemId": "36wQg0Be"}], "createItems": [{"customAttributes": {"2f7qkAEF": {}, "Nj70ZRMz": {}, "IGKnUyBW": {}}, "inventoryConfigurationCode": "Y0Zpcla9", "inventoryId": "JrnBsYPs", "qty": 89, "serverCustomAttributes": {"2FMGSziR": {}, "NTHFtizb": {}, "bmv5x1h9": {}}, "slotId": "wHk9Tjgc", "slotUsed": 11, "source": "OTHER", "sourceItemId": "GQQvA3zc", "tags": ["wCSLH6n1", "PsoOV6ff", "R6mI7Vg4"], "toSpecificInventory": true, "type": "Zuu17nYf"}, {"customAttributes": {"KFCyli2Q": {}, "DK0GbIDf": {}, "eM4F0Zzf": {}}, "inventoryConfigurationCode": "JoZg5f5g", "inventoryId": "luW0x7gd", "qty": 72, "serverCustomAttributes": {"Nffp9p0a": {}, "ciaBms3o": {}, "b3U7JS6z": {}}, "slotId": "iB4Bts6f", "slotUsed": 68, "source": "OTHER", "sourceItemId": "Lxb10wCa", "tags": ["Zk2RvEH5", "mgZEIlVv", "AkJh5YTc"], "toSpecificInventory": true, "type": "yeIjNq3i"}, {"customAttributes": {"1tuuKLve": {}, "jqNhIvhq": {}, "y5AdHTJb": {}}, "inventoryConfigurationCode": "K2bah7f0", "inventoryId": "MQwtTMQ2", "qty": 37, "serverCustomAttributes": {"TSpWBXRY": {}, "gCW9uz9Z": {}, "J4wZ1wIC": {}}, "slotId": "B4sAUQ0n", "slotUsed": 50, "source": "ECOMMERCE", "sourceItemId": "5i4YfM5F", "tags": ["25mhf90p", "zJejB8Mg", "NjRqSPo0"], "toSpecificInventory": false, "type": "3BDiVcNG"}], "removeItems": [{"inventoryId": "g8VTAJor", "slotId": "bNdlEtSl", "sourceItemId": "kGpO11T2"}, {"inventoryId": "lWiArixO", "slotId": "PBEf5ExX", "sourceItemId": "AeaPZZpA"}, {"inventoryId": "OPpa7sbG", "slotId": "J0svKLtJ", "sourceItemId": "ERkUlIHm"}], "targetUserId": "N61moio7", "updateItems": [{"customAttributes": {"jFry3mUX": {}, "sUCDm11P": {}, "YttsKxr3": {}}, "inventoryId": "CED9hPkH", "serverCustomAttributes": {"RoJFwbiJ": {}, "sSx34cs0": {}, "5OkwANqe": {}}, "slotId": "erAvxIXV", "sourceItemId": "0CEKpmsx", "tags": ["4fbjePIK", "pJz4w8H3", "N4h1D9EK"], "type": "pV6MEWUN"}, {"customAttributes": {"BfzqvIlg": {}, "gO4Sj9N4": {}, "DWC9OeuN": {}}, "inventoryId": "QngdzHuF", "serverCustomAttributes": {"zdVHPaTv": {}, "9Cjrmx63": {}, "Bd7LLQfi": {}}, "slotId": "IShE5JG4", "sourceItemId": "OkcXNh3F", "tags": ["Sz4dD6OG", "kgPUrMS0", "05WOiiWr"], "type": "Z9HYqUaf"}, {"customAttributes": {"UcFB5d4h": {}, "2ITpI2v2": {}, "39iGs2Oy": {}}, "inventoryId": "oiIgdTqO", "serverCustomAttributes": {"uCU9i1zr": {}, "0iSdojlE": {}, "s5OegJwp": {}}, "slotId": "02sXHyjG", "sourceItemId": "QMaGhGKl", "tags": ["IbuYcdJd", "GkJbzrqr", "6f7KLIDT"], "type": "c20gXlUt"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "2G8pERv0", "options": ["R6MyLCJ5", "unEeWIzR", "PI62Dfv0"], "qty": 11, "slotId": "RNj9HaS1", "sourceItemId": "6dH6bL7r"}, {"dateRangeValidation": true, "inventoryId": "uY9SiitE", "options": ["IMioQzg1", "o1x7mSXU", "LKAsdPRI"], "qty": 17, "slotId": "BJRY9dre", "sourceItemId": "aPuk8Tqn"}, {"dateRangeValidation": false, "inventoryId": "knWEdGc6", "options": ["jea2UDoc", "d7I2KSN7", "8hZELDW7"], "qty": 94, "slotId": "VWNT1X4v", "sourceItemId": "Me3djurw"}], "createItems": [{"customAttributes": {"GiHhqYco": {}, "T5uARbEn": {}, "M8QaEC5Y": {}}, "inventoryConfigurationCode": "ejkBh7Zo", "inventoryId": "SWPVSMKU", "qty": 63, "serverCustomAttributes": {"gtw33agE": {}, "zyjSKtIo": {}, "vwful3mh": {}}, "slotId": "kiMJn0Fk", "slotUsed": 21, "source": "ECOMMERCE", "sourceItemId": "XYXIiDOE", "tags": ["iqKgL3Vg", "u4A2Do5C", "OuF3Vhtt"], "toSpecificInventory": false, "type": "GaPZ6nqv"}, {"customAttributes": {"sMsbhZoo": {}, "9LOQUwmQ": {}, "Yif2Ph3T": {}}, "inventoryConfigurationCode": "W2uiPSML", "inventoryId": "BxYk4qs4", "qty": 82, "serverCustomAttributes": {"KVegauKH": {}, "bAmKkIzR": {}, "QeoQaKhy": {}}, "slotId": "mWRWevHg", "slotUsed": 7, "source": "ECOMMERCE", "sourceItemId": "S6yHGmR1", "tags": ["wunbcJPg", "fF9o8xI8", "TprLVUAJ"], "toSpecificInventory": true, "type": "ElvErGqI"}, {"customAttributes": {"udArOjlg": {}, "U8FKfYxF": {}, "gyFkZzYx": {}}, "inventoryConfigurationCode": "wjvMa7Ig", "inventoryId": "J8oEIrnj", "qty": 48, "serverCustomAttributes": {"BQGSsnEn": {}, "enTetCaI": {}, "vVcnTJGO": {}}, "slotId": "TPLB2VVu", "slotUsed": 43, "source": "ECOMMERCE", "sourceItemId": "wMpS9YT7", "tags": ["LyXAlWw0", "5aJUnIdi", "45wvWLYF"], "toSpecificInventory": false, "type": "Za4hjhFI"}], "removeItems": [{"inventoryId": "lUmM0XHP", "slotId": "VBQJxxQx", "sourceItemId": "AH6pgWH4"}, {"inventoryId": "fkaZoEi3", "slotId": "tNom4VWj", "sourceItemId": "odkcwUvC"}, {"inventoryId": "wQ8oBU64", "slotId": "HqDSbhSt", "sourceItemId": "NiLtgkB1"}], "targetUserId": "POsoA3sc", "updateItems": [{"customAttributes": {"85Ap6i7a": {}, "8P03sed3": {}, "7vhMNzGn": {}}, "inventoryId": "5enntD0U", "serverCustomAttributes": {"6TicP5Jw": {}, "m5UQ4KVW": {}, "2nTes8iR": {}}, "slotId": "MQli3m9z", "sourceItemId": "bvXkH0rX", "tags": ["5D4MUjN3", "J2HtMDcO", "WWSauvDk"], "type": "9rAJWZii"}, {"customAttributes": {"XoSLoODX": {}, "fDQpT0Qb": {}, "1AZXLdGF": {}}, "inventoryId": "35vHHvIM", "serverCustomAttributes": {"HE9RJHJ0": {}, "lcVRTCXZ": {}, "78pUnMUn": {}}, "slotId": "tnnK867u", "sourceItemId": "vFce6LAJ", "tags": ["Qg2bte1v", "Kn71Hl8s", "KakMUsBU"], "type": "HnRrLaMI"}, {"customAttributes": {"VG2uGvBC": {}, "IQIVOH0d": {}, "2idUg5YA": {}}, "inventoryId": "gQoSpvlL", "serverCustomAttributes": {"nPxxJkkv": {}, "AAgZzsUz": {}, "wmebLlZ7": {}}, "slotId": "o4glZUzv", "sourceItemId": "sIF16OzV", "tags": ["ncE5CBG7", "KnvNE54b", "JkBo4JPO"], "type": "qBexww6a"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "QL8tkZMr", "options": ["lUjZRf2y", "4qAgOtmW", "0OxzoBpp"], "qty": 72, "slotId": "n6iC7ETf", "sourceItemId": "WIuBRC98"}, {"dateRangeValidation": false, "inventoryId": "AlSzzzQD", "options": ["NPxYideG", "CmTWqhMz", "nRYHi5wB"], "qty": 52, "slotId": "cXtkqUCr", "sourceItemId": "b61kAghU"}, {"dateRangeValidation": false, "inventoryId": "rc40r8d9", "options": ["ZEpKXwDs", "IRNunaHe", "eBd9zgN3"], "qty": 86, "slotId": "WLAlUsmi", "sourceItemId": "VQRefGNu"}], "createItems": [{"customAttributes": {"TCFLrQZB": {}, "qKH9Yjdh": {}, "igy8ImWQ": {}}, "inventoryConfigurationCode": "kPKjfMV0", "inventoryId": "5RhXWq7P", "qty": 5, "serverCustomAttributes": {"Faw6dy0w": {}, "xjWbEbv9": {}, "DqUIGCiA": {}}, "slotId": "qJXY3TEz", "slotUsed": 3, "source": "ECOMMERCE", "sourceItemId": "SdZrHj45", "tags": ["huFqpNoy", "6a4VXqsR", "TPiBxYSS"], "toSpecificInventory": true, "type": "ex7kMNlA"}, {"customAttributes": {"seIdfDJl": {}, "AnYARPJi": {}, "fHlTuGD0": {}}, "inventoryConfigurationCode": "BILV5psP", "inventoryId": "2W8hUYA3", "qty": 0, "serverCustomAttributes": {"w4NS8sGk": {}, "fNPiaBff": {}, "tvdso7jZ": {}}, "slotId": "sV5f2bza", "slotUsed": 31, "source": "OTHER", "sourceItemId": "iQo2Vkvg", "tags": ["V9yQs02y", "S24sdbAj", "DdDcRVFS"], "toSpecificInventory": true, "type": "AWKGcApl"}, {"customAttributes": {"9oOyj4dL": {}, "O4mdWJZ3": {}, "9UaFzIm1": {}}, "inventoryConfigurationCode": "LtTd79aR", "inventoryId": "vQFqdzDZ", "qty": 70, "serverCustomAttributes": {"9DgbWFSD": {}, "hxWjyjFO": {}, "VpATte9E": {}}, "slotId": "a5mqbLdj", "slotUsed": 14, "source": "OTHER", "sourceItemId": "ZAON0cNb", "tags": ["ORs66G9R", "nURHhUZ3", "WNqCZrn9"], "toSpecificInventory": true, "type": "n6eG0KXP"}], "removeItems": [{"inventoryId": "x3kZCeav", "slotId": "B8VylB3b", "sourceItemId": "UIe6NNtE"}, {"inventoryId": "7qjDjz1U", "slotId": "wlaFFdq0", "sourceItemId": "kgkuyl88"}, {"inventoryId": "aX5QoC13", "slotId": "npSOPWRY", "sourceItemId": "rzJv2bdh"}], "targetUserId": "SNiVuXeu", "updateItems": [{"customAttributes": {"tvzbW0Z8": {}, "zYiS35xs": {}, "lhvW4j3s": {}}, "inventoryId": "MIAQagpr", "serverCustomAttributes": {"UKnmHKDx": {}, "cI21Ju2q": {}, "eD1sLz0P": {}}, "slotId": "7aXCNqDK", "sourceItemId": "c48z8u7y", "tags": ["qeevLyG9", "BqPe1NcX", "VSzC21oV"], "type": "rVx08iMS"}, {"customAttributes": {"iWBDupWS": {}, "stHShQqH": {}, "iexdDD1J": {}}, "inventoryId": "WWPNR3fS", "serverCustomAttributes": {"gDzdNhbq": {}, "psArOH54": {}, "C8pmgIMC": {}}, "slotId": "hOsx2NTY", "sourceItemId": "90m3yKFL", "tags": ["6lmcfz4j", "sA7h9nun", "bNbOtcUz"], "type": "urXMsDGr"}, {"customAttributes": {"waBk7cZM": {}, "D3akNIFC": {}, "DedORGdL": {}}, "inventoryId": "v4O3mqVz", "serverCustomAttributes": {"Fvbq2Cm0": {}, "uu94JrSV": {}, "O44gWa5I": {}}, "slotId": "z2eR0eei", "sourceItemId": "m8Q9PWZU", "tags": ["dSzMjRcE", "Xp4nBVNU", "Vlk43Jfx"], "type": "V8hG58fL"}]}], "requestId": "IeCWLHIn"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '76' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["wdC89sHQ", "Xw3yOafw", "tK9V9Dgq"], "serviceName": "FHyHVUnS", "targetInventoryCode": "1S8OFkWm"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'ZXDNuQxm' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["36pr8d0n", "HKkvQt15", "1EjhoR8a"], "serviceName": "vL03b1zi", "targetInventoryCode": "lAdeOLTx"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'ofRNPRkm' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'YOr8RZjX' \
    --limit '96' \
    --offset '58' \
    --sortBy 'updatedAt:desc' \
    --userId 'aswMZJ7e' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "B4FBDQe3", "userId": "Aqn0Z4wn"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'ESWWhJOQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '8oucDzLA' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 35}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Zg6ALDtv' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "k2HiPt7p"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'ZWLBafmS' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '21' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'g4WBEZCW' \
    --tags 'vTluSANn' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'x678yZc1' \
    --namespace $AB_NAMESPACE \
    --slotId 'PBgaLqqI' \
    --sourceItemId '5v5pUMtC' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '5MXMp285' \
    --limit '26' \
    --offset '25' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "00l0f5RH", "description": "OXvArnim", "initialMaxSlots": 86, "maxInstancesPerUser": 97, "maxUpgradeSlots": 92, "name": "1IdGvHUd"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'MfEdxhv2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'q57Er3BL' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "W3IzYrLA", "description": "3tl7sJaU", "initialMaxSlots": 30, "maxInstancesPerUser": 55, "maxUpgradeSlots": 32, "name": "bCGmqj49"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'JXVl93Jb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '94' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "gV4cF8Bo"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'JTsiszAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '47' \
    --owner 'q7G6cyk6' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "iILsxdeE", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'FTsDE5zd' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'P3divLiV' \
    --namespace $AB_NAMESPACE \
    --userId 'O8lNy8Qt' \
    --dateRangeValidation 's4k7ySvM' \
    --body '{"options": ["LmszZFvE", "IsBs2rBc", "YO5lKXuK"], "qty": 43, "slotId": "C2sP6Nye", "sourceItemId": "0cT51a6q"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Ljua14Hp' \
    --namespace $AB_NAMESPACE \
    --userId 'WrVw0ltY' \
    --body '[{"customAttributes": {"JTs8YHlV": {}, "qgtoCCcO": {}, "ogU3AXxE": {}}, "serverCustomAttributes": {"MKT8coml": {}, "4rwXsbIv": {}, "SWi7LIea": {}}, "slotId": "zvne7dlE", "sourceItemId": "vklDox4p", "tags": ["lRqDJCRQ", "ALQZ3fKr", "JDGqZYXG"], "type": "4diymQWl"}, {"customAttributes": {"BKN2DWE6": {}, "yx5ijJmF": {}, "OvF23AMM": {}}, "serverCustomAttributes": {"0a6GBmhl": {}, "3BGkwd8f": {}, "jFcjbjKr": {}}, "slotId": "sduF2aIE", "sourceItemId": "zrFJ1A6D", "tags": ["8CtNkifT", "vTBxFExS", "OGEBjZ0i"], "type": "UuKvBccW"}, {"customAttributes": {"KmRDEzbf": {}, "0S9zIdR3": {}, "ozcd9yED": {}}, "serverCustomAttributes": {"9OBuej8N": {}, "XeALsZVd": {}, "kL7aPRqD": {}}, "slotId": "DhcmSfvu", "sourceItemId": "LYHRUJ6W", "tags": ["4CvRv9BY", "Z73JgmRB", "5FnOY60d"], "type": "b67spKTy"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'c4rDoNlA' \
    --namespace $AB_NAMESPACE \
    --userId 'f1W7GBhj' \
    --body '{"customAttributes": {"Jo24oQjB": {}, "ofCCddRk": {}, "9PwqNlQ1": {}}, "qty": 95, "serverCustomAttributes": {"oM21mcFg": {}, "jhPXfIgR": {}, "SSvi7jvQ": {}}, "slotId": "d7SJOY6h", "slotUsed": 52, "source": "ECOMMERCE", "sourceItemId": "YqSzCwa4", "tags": ["RiwJOOwQ", "pvDsdhQK", "UD3NeZ1u"], "type": "ke2D6Leu"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'kRqyc63x' \
    --namespace $AB_NAMESPACE \
    --userId 'KVxqfJLv' \
    --body '[{"slotId": "XlsbvExy", "sourceItemId": "8cs8zdwz"}, {"slotId": "CvL5cNbK", "sourceItemId": "arYh7JmM"}, {"slotId": "TQjE9yxK", "sourceItemId": "V92TK3IO"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'kfMX9idK' \
    --namespace $AB_NAMESPACE \
    --userId 'UwiYKzb8' \
    --body '[{"customAttributes": {"sL8lp9LE": {}, "rwYC1dmc": {}, "j7TH498P": {}}, "qty": 6, "serverCustomAttributes": {"TMqyAtsT": {}, "nDlK655v": {}, "YRLi704e": {}}, "slotId": "a0OTY0aP", "slotUsed": 41, "source": "OTHER", "sourceItemId": "mADZTMTM", "tags": ["82Pm6Gyi", "PSzke4HV", "jv5B7dIH"], "type": "aA0wH23K"}, {"customAttributes": {"o2ZmmB2e": {}, "VL6gFCFn": {}, "YmAuQrnN": {}}, "qty": 2, "serverCustomAttributes": {"AjkypSJT": {}, "d4UCozpt": {}, "qiMvgOLk": {}}, "slotId": "gnw04xKu", "slotUsed": 35, "source": "ECOMMERCE", "sourceItemId": "bHmNleeC", "tags": ["Su94B6i3", "MRjh8gJq", "ngoGjD1d"], "type": "wHDEw2RD"}, {"customAttributes": {"rqAdDw1K": {}, "n98qsY3g": {}, "mGWcpeQx": {}}, "qty": 93, "serverCustomAttributes": {"lqcjv6qZ": {}, "PsteEVBS": {}, "VnXoOiHd": {}}, "slotId": "hvD61oX3", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "U94xPWua", "tags": ["V4IjMACV", "NxzQjiYL", "5xGEEyU1"], "type": "c4KT9Xfq"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'eLU33BHe' \
    --namespace $AB_NAMESPACE \
    --userId 'HmTGLd6v' \
    --body '{"incMaxSlots": 66}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'eA3i6BD7' \
    --body '{"customAttributes": {"WXR5ZVUR": {}, "ro05sVSf": {}, "nFIxxsDH": {}}, "inventoryConfigurationCode": "2dkZqGmw", "qty": 1, "serverCustomAttributes": {"xuxRBEZA": {}, "CCKtUkMH": {}, "Edap79HX": {}}, "slotId": "KMNRvPYH", "slotUsed": 74, "source": "ECOMMERCE", "sourceItemId": "RrqELhT8", "tags": ["8JsVPRpK", "UGXFl4h0", "pUmRzdeH"], "type": "zGWF4Xgi"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZUcbq1gI' \
    --body '[{"customAttributes": {"gC7x2unQ": {}, "wdXQTJDn": {}, "PAsAxuV6": {}}, "inventoryConfigurationCode": "ylc6wp5f", "qty": 22, "serverCustomAttributes": {"qWWAkFgY": {}, "wTidmWfn": {}, "CCBS5co0": {}}, "slotId": "q2QAPgLw", "slotUsed": 15, "source": "OTHER", "sourceItemId": "nR0htqdZ", "tags": ["QAyyUB7F", "uZMGE93x", "1O2Z6pF7"], "type": "kJiZUhhJ"}, {"customAttributes": {"1LVdSSbR": {}, "kj26Q2xf": {}, "TInyaZ1H": {}}, "inventoryConfigurationCode": "X0ZMYeXx", "qty": 99, "serverCustomAttributes": {"oszsjmsV": {}, "Ga987bHf": {}, "wXGYVYYm": {}}, "slotId": "S7DvbNpQ", "slotUsed": 46, "source": "OTHER", "sourceItemId": "p5C9DQ5m", "tags": ["w8ZEWpGI", "7Qmsxhws", "8ZNqjyUR"], "type": "x25Gv4ck"}, {"customAttributes": {"qMS3h5PG": {}, "VdqWBS7R": {}, "fKltBftQ": {}}, "inventoryConfigurationCode": "MDoMtHfb", "qty": 45, "serverCustomAttributes": {"PyrYt47w": {}, "qFn8YUdf": {}, "FWa2r6re": {}}, "slotId": "MMxxyWct", "slotUsed": 75, "source": "OTHER", "sourceItemId": "33yDutJn", "tags": ["vv8GYfPt", "cLKl4uBm", "kZ0AWs8c"], "type": "jsoY0T9q"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'lGHBbuFf' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '11uhNE0n' \
    --body '{"entitlementType": "WDeCUAnY", "inventoryConfig": {"slotUsed": 44}, "itemId": "1DijcBqo", "itemType": "9i2CB7IT", "items": [{"bundledQty": 33, "entitlementType": "qNj7urVp", "inventoryConfig": {"slotUsed": 61}, "itemId": "pK4VvuGO", "itemType": "wwE5nvZj", "sku": "GZVrWGQT", "stackable": true, "useCount": 91}, {"bundledQty": 87, "entitlementType": "MePgccmb", "inventoryConfig": {"slotUsed": 73}, "itemId": "JDKAEwxF", "itemType": "YSQCCO8x", "sku": "X9Bt5bDR", "stackable": false, "useCount": 89}, {"bundledQty": 35, "entitlementType": "Z9ZuDGuk", "inventoryConfig": {"slotUsed": 65}, "itemId": "JnsMomdT", "itemType": "g7Lta4LJ", "sku": "3NTHNLQp", "stackable": true, "useCount": 90}], "quantity": 39, "sku": "OGq64vrr", "stackable": true, "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'oa4nZUU5' \
    --limit '43' \
    --offset '0' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '4' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '85' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'J5oLicSJ' \
    --limit '48' \
    --offset '38' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'cPPHRQnT' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["xhs4wHov", "6Nb4RRa5", "bRUyQnIN"], "qty": 12, "slotId": "130ElpHJ", "sourceItemId": "cYJw4VRp"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'a4aCNmJZ' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '49' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'dLovFV8h' \
    --tags '2birXEdJ' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '3jzvyABZ' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"T5Oalvfv": {}, "YOs2a6yX": {}, "dflUDUJP": {}}, "slotId": "Z3Er5Xah", "sourceItemId": "B10Yob5V", "tags": ["sTnl2K6G", "qeFKDEnu", "KPklsrzF"]}, {"customAttributes": {"m1S7CLWR": {}, "LjGPxgZS": {}, "QmbO71ml": {}}, "slotId": "r9o3ILQR", "sourceItemId": "xKuGJMkR", "tags": ["qAB4tAsp", "tX7Tgo9M", "JxBO7rp6"]}, {"customAttributes": {"D6Mgh43S": {}, "wGQEtjK2": {}, "jpN6ut8C": {}}, "slotId": "F9fYF6oy", "sourceItemId": "G9c5aq7d", "tags": ["dWa8EYxZ", "stZnPfoT", "pwVYjl42"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'FWgeljoW' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "6SUXQ3E8", "sourceItemId": "UNZZLCm3"}, {"slotId": "kHMvwtbh", "sourceItemId": "w1ESgaYL"}, {"slotId": "BYXcU1Go", "sourceItemId": "MAwiSnMY"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'gL6WXuBr' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 38, "slotId": "beucFYf1", "sourceItemId": "x3AqXm5o"}, {"qty": 20, "slotId": "hfghgsrw", "sourceItemId": "yWBjz6z3"}, {"qty": 66, "slotId": "EgTFnGq6", "sourceItemId": "JPEaswHJ"}], "srcInventoryId": "qSQESLrj"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'PCKqTmJE' \
    --namespace $AB_NAMESPACE \
    --slotId 'yORcKIDW' \
    --sourceItemId 'VEBkahv6' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE