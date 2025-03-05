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
echo "1..99"

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

#- 2 GetNamespaceSlotConfig
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
eval_tap 0 8 'GetUserProfiles # SKIP deprecated' test.out

#- 9 GetProfile
eval_tap 0 9 'GetProfile # SKIP deprecated' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
eval_tap 0 12 'PublicGetUserGameProfiles # SKIP deprecated' test.out

#- 13 PublicGetUserProfiles
eval_tap 0 13 'PublicGetUserProfiles # SKIP deprecated' test.out

#- 14 PublicCreateProfile
eval_tap 0 14 'PublicCreateProfile # SKIP deprecated' test.out

#- 15 PublicGetProfile
eval_tap 0 15 'PublicGetProfile # SKIP deprecated' test.out

#- 16 PublicUpdateProfile
eval_tap 0 16 'PublicUpdateProfile # SKIP deprecated' test.out

#- 17 PublicDeleteProfile
eval_tap 0 17 'PublicDeleteProfile # SKIP deprecated' test.out

#- 18 PublicGetProfileAttribute
eval_tap 0 18 'PublicGetProfileAttribute # SKIP deprecated' test.out

#- 19 PublicUpdateAttribute
eval_tap 0 19 'PublicUpdateAttribute # SKIP deprecated' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '97' \
    --statCodes 'w3ba9m8A' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'az7IiXg6' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '44' \
    --name '9W7m3eH3' \
    --offset '39' \
    --sortBy '0PalxIRW' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "POd5537i", "end": "1993-11-19T00:00:00Z", "id": "MZ3fQtIH", "name": "k4ChhkWb", "resetDate": 41, "resetDay": 84, "resetMonth": 54, "resetTime": "sPWvAt1l", "seasonPeriod": 74, "start": "1984-02-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["lZP7A6Dq", "legpVZOl", "ckkGFnhj"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
samples/cli/sample-apps Social exportStatCycle \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
samples/cli/sample-apps Social importStatCycle \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'WSyPVAaf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'dFRUGI8r' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "5tKs4n6Q", "end": "1971-03-13T00:00:00Z", "name": "MZ8rnFGW", "resetDate": 34, "resetDay": 48, "resetMonth": 0, "resetTime": "Ff2BA3ni", "seasonPeriod": 43, "start": "1990-12-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'zDWTOpHK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'cuaB3uSY' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["HJHYusQx", "B7ODq6i4", "JFRHvmfq"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '9REZcwHu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'NrSkCbXU' \
    --userIds 'UJegI6NG' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.16042753522515407, "statCode": "g1SzllxX", "userId": "YGwZjxhN"}, {"inc": 0.3953047850039936, "statCode": "6c2PkKqC", "userId": "cvankgFI"}, {"inc": 0.37702304920066076, "statCode": "sJYHKXGh", "userId": "GWoscupb"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.11789793171426477, "statCode": "bZEuKLfp", "userId": "pZmKW5WG"}, {"inc": 0.7488462511433873, "statCode": "Wlhoteaa", "userId": "gZe09qoB"}, {"inc": 0.5223672103135669, "statCode": "yDwJRL0v", "userId": "niutQiyD"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AWiP1glL' \
    --userIds '["2QNl7fW3", "nVIpA0GQ", "oqNVhHVg"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "0I1cj5GW", "userId": "uoWryOvL"}, {"statCode": "HgGGu5QU", "userId": "wQ1TXI1g"}, {"statCode": "ZIEpXlFP", "userId": "3ad92Yl5"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '1AgjXf8x' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '14' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["1lkZJ9Rd", "Kimi07Ip", "rEddqdQY"], "cycleOverrides": [{"cycleId": "DJTDV12m", "maximum": 0.006367574199830028, "minimum": 0.8747415065873326}, {"cycleId": "FColrtgI", "maximum": 0.14468169616177595, "minimum": 0.10154979184269508}, {"cycleId": "k9f1FRmw", "maximum": 0.49344806419170284, "minimum": 0.8525591078119695}], "defaultValue": 0.2517882416963012, "description": "tDNJFYHR", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.6942779087167746, "minimum": 0.20405251315362216, "name": "RYGHyTA2", "setAsGlobal": true, "setBy": "SERVER", "statCode": "RuOphloA", "tags": ["TVj3wJ5t", "8Dak0NRt", "hsLiNM5D"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '100' \
    --offset '51' \
    --keyword 'bU2VyNmL' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'bbsBejn5' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'NQgzonTt' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'AcLny5Qt' \
    --body '{"capCycleOverride": true, "cycleIds": ["0EgYUTpi", "BXDmmqhH", "KMPE1NCa"], "cycleOverrides": [{"cycleId": "93Xy2PvR", "maximum": 0.32390415490926283, "minimum": 0.8793031813038444}, {"cycleId": "VRFSkM6L", "maximum": 0.5491315565106162, "minimum": 0.7317373945163993}, {"cycleId": "ziNaVQ75", "maximum": 0.35222772419312476, "minimum": 0.00036630747585664203}], "defaultValue": 0.12358740521897749, "description": "oAzNNstF", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "l0rcALIa", "tags": ["MCzePore", "AoqrXb9N", "h4dtYCPF"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '7rAyxiPB' \
    --limit '13' \
    --offset '4' \
    --sortBy 'owlBtI19' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'PSlnylAe' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'p95s72bm' \
    --namespace $AB_NAMESPACE \
    --userId 'q18uFWEL' \
    --isPublic 'false' \
    --limit '0' \
    --offset '46' \
    --sortBy 'lFnbmIBB' \
    --statCodes 'ZxrPfDCA' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0z2fkNsA' \
    --isPublic 'false' \
    --limit '58' \
    --offset '43' \
    --sortBy 'n2nvB6uk' \
    --statCodes '0QzHmB6w' \
    --tags 'dHOd6Cay' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jlJmH7B3' \
    --body '[{"statCode": "0ajslh6f"}, {"statCode": "y08opl0S"}, {"statCode": "L6W1Q6zp"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'P3fjL9tO' \
    --body '[{"inc": 0.238300039566531, "statCode": "GVhltE6T"}, {"inc": 0.27638122168175305, "statCode": "W8RmluWG"}, {"inc": 0.0042061497580423435, "statCode": "OWwuVKt5"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'GOeRN7C3' \
    --body '[{"inc": 0.04820436967842767, "statCode": "Mm1fNOBx"}, {"inc": 0.6960341410808275, "statCode": "IFdTJgea"}, {"inc": 0.9245610756056625, "statCode": "bNjvuPNS"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'bq8kz3us' \
    --body '[{"statCode": "xvqrTggD"}, {"statCode": "5qHIQIqx"}, {"statCode": "UKx1niBx"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '0LBo1Ld9' \
    --userId 'on2k20YP' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '0l2XiFTF' \
    --userId '0TDiVOXo' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'WppAJROX' \
    --userId 'apVfh8kb' \
    --body '{"inc": 0.39442465384611736}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NWXtCSqg' \
    --userId 'Myv6Pf3s' \
    --additionalKey '1nA0RvgE' \
    --body '{"additionalData": {"QKk7bVEI": {}, "hXPwelhn": {}, "Go0LPBHc": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '13' \
    --statCodes '4rfd436L' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jvdR31On' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '97' \
    --name 'D4DEgNwJ' \
    --offset '70' \
    --sortBy 'ailqZLaf' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["hIVwhAlI", "b1l7L6go", "4SpMthms"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '03QJ63Bl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sHFwdYPa' \
    --userIds '0HTPSfLj' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4193321245328826, "statCode": "9gcRPCuN", "userId": "Ifvc2C0U"}, {"inc": 0.15970203274558914, "statCode": "UCqRBtZD", "userId": "0VVCZteZ"}, {"inc": 0.9799899399201454, "statCode": "QgsbzCQn", "userId": "gBbm3fs6"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3784370329731317, "statCode": "OEUMVlLC", "userId": "oYDlPY3u"}, {"inc": 0.458313693553824, "statCode": "R0lgUNRL", "userId": "Yi7UVBbn"}, {"inc": 0.21353514024775633, "statCode": "URJPKtYh", "userId": "UIYP7fYN"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "FVfpTPny", "userId": "GOOEc32V"}, {"statCode": "YgFrffCg", "userId": "5JEOxA0M"}, {"statCode": "9UA1pojC", "userId": "kVcyZOZy"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["sbmWzDsY", "r8mEi3e7", "8NNngVNz"], "cycleOverrides": [{"cycleId": "JQAaDm67", "maximum": 0.41857507041841246, "minimum": 0.7584888557360717}, {"cycleId": "YGtf5HAC", "maximum": 0.3102713409484298, "minimum": 0.4766196557709814}, {"cycleId": "clR6Cz5X", "maximum": 0.18367222287565788, "minimum": 0.8443820718002949}], "defaultValue": 0.35407807054831664, "description": "g6u52mxy", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.7115823745284362, "minimum": 0.7069670454219292, "name": "vtLkbJEb", "setAsGlobal": false, "setBy": "SERVER", "statCode": "DvdVWEMT", "tags": ["rAKET4fR", "1nR3HM9U", "4yJfXb5n"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'F8btHLbN' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '82' \
    --sortBy 'lLh9RHxn' \
    --statCodes '["1d1HvwZh", "KPh4wnXf", "pLdb34AO"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '79' \
    --sortBy 'ZZREtdtc' \
    --statCodes '["lkWqWFm8", "G6H1nD8u", "e9lRMoKp"]' \
    --tags '["CMSKRutF", "MIRV8xta", "CgUh3h54"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'bfBWY5No' \
    --statCodes '["oUMb0q1v", "SRVzKrTL", "jICqzpYk"]' \
    --tags '["tXPqmIRG", "R9tK98Za", "aPBSu9Gk"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'xC8gceSK' \
    --namespace $AB_NAMESPACE \
    --userId 'yVBpotd1' \
    --limit '0' \
    --offset '95' \
    --sortBy 'QCOqfj0M' \
    --statCodes 'rrFoXunI' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '2NzUWBVU' \
    --limit '16' \
    --offset '87' \
    --sortBy '7AJXbKL0' \
    --statCodes 'CDFx7vnB' \
    --tags 'ev9cVDkA' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'lEn3cCDC' \
    --body '[{"statCode": "cJnoxDBU"}, {"statCode": "YZA91fZH"}, {"statCode": "u0iDkmOa"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'F91RjuPq' \
    --additionalKey 'VC9CCCnm' \
    --statCodes '["gVarqSJ7", "MKQNolj7", "hO7kK2aW"]' \
    --tags '["vVXbKcBY", "7hcP2YLf", "aH5qBRy7"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'cXqD5q8z' \
    --body '[{"inc": 0.9064381102278242, "statCode": "ts6Dwxc3"}, {"inc": 0.8676704553341845, "statCode": "jJnFU2Cf"}, {"inc": 0.6826718065691226, "statCode": "B1PXVtIK"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'FzTDluBP' \
    --body '[{"inc": 0.3726821202128294, "statCode": "Pgxz6nPT"}, {"inc": 0.35294195743748036, "statCode": "ywMUHWQN"}, {"inc": 0.38459280304916676, "statCode": "RxIoHgp4"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'qWZICAdy' \
    --body '[{"statCode": "RHJhAI7l"}, {"statCode": "FjXEyRFB"}, {"statCode": "PjOWFJfJ"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'h2qDinmx' \
    --userId 'hPgHVmTo' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'D4POQrzr' \
    --userId 'gznpaUzS' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'cruMQHdj' \
    --userId 'Q0sMEnyM' \
    --body '{"inc": 0.10618890045961116}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rqo3Y9fM' \
    --userId 'XjJvWp6y' \
    --body '{"inc": 0.04579582412158989}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '2P2xN4W9' \
    --userId 'OmLLPnM6' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"dVhe23xV": {}, "pGGGzAoC": {}, "fCeOV9xy": {}}, "additionalKey": "3XzKJEwK", "statCode": "XuXwEeVl", "updateStrategy": "MAX", "userId": "0p7nfQm5", "value": 0.39708772320392915}, {"additionalData": {"4vK61YlG": {}, "hZnYHl2c": {}, "0xsbJYoK": {}}, "additionalKey": "1gnI9Vhu", "statCode": "QlXJzJLY", "updateStrategy": "INCREMENT", "userId": "mHLTm0p1", "value": 0.4166892991253316}, {"additionalData": {"DA9ZxRY2": {}, "4peyHoMg": {}, "U90D9ERt": {}}, "additionalKey": "t1KHLrSQ", "statCode": "8g3hZwA5", "updateStrategy": "OVERRIDE", "userId": "DuxEjS0Y", "value": 0.08326162684037308}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'bTS4yVz0' \
    --statCode 'hCj0AmAy' \
    --userIds '["CNPc25zA", "Bymh9hBw", "vMp80Uqj"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'HBtoomck' \
    --additionalKey 'dIeWtCW3' \
    --statCodes '["ThrKGvTZ", "CWXCOusz", "u1qnpu1r"]' \
    --tags '["VpAf3elB", "gEY5ftBR", "mykPPH9x"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'eV6VbRNM' \
    --additionalKey 'ArcvQOg9' \
    --body '[{"additionalData": {"U7zt7Zo8": {}, "vYQ6ETFI": {}, "clugtIvP": {}}, "statCode": "a4ZBUhgX", "updateStrategy": "MIN", "value": 0.030850918848912667}, {"additionalData": {"9WhQs0s7": {}, "tcCOTkzD": {}, "IjQBqN7j": {}}, "statCode": "ezzJagkk", "updateStrategy": "OVERRIDE", "value": 0.8869789591934596}, {"additionalData": {"K93ozpmN": {}, "UAAGuqsO": {}, "vectiVvK": {}}, "statCode": "hTzGHXh7", "updateStrategy": "MIN", "value": 0.6696243458894817}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'pof7Rabn' \
    --additionalKey 'T3CwCGtA' \
    --body '{"statCodes": ["KNM1vTiu", "6Pcym93W", "vB3vzd25"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'rjXDvl6i' \
    --additionalKey 'C32rYQJP' \
    --body '[{"additionalData": {"ABhYxGqN": {}, "qQctZQCv": {}, "myOnvM7w": {}}, "statCode": "OOxJVl6K"}, {"additionalData": {"gROlvobG": {}, "AQPKzYZ7": {}, "Pr5LsvLK": {}}, "statCode": "1t6OcHMC"}, {"additionalData": {"WBnhyu2E": {}, "ittelZrL": {}, "7CQ3N97z": {}}, "statCode": "d4daP0ES"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Z1v63uNn' \
    --userId 'x9gT60IP' \
    --additionalKey 'yXzquQAJ' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Dysd8fJW' \
    --userId 'UALAn9bb' \
    --additionalKey 'M6SVM0JB' \
    --body '{"additionalData": {"KwMCMGbt": {}, "EQBJvOts": {}, "ST0JqOmb": {}}, "updateStrategy": "OVERRIDE", "value": 0.060081851567670874}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"QqetwjiR": {}, "33bo6p9X": {}, "727mNv2g": {}}, "additionalKey": "tKgPmHNa", "statCode": "VkccWvW0", "updateStrategy": "INCREMENT", "userId": "bS27KG69", "value": 0.2599844509467343}, {"additionalData": {"8irq1FaU": {}, "Sw9eVM3E": {}, "8LLCk7Xn": {}}, "additionalKey": "y7vqYZYV", "statCode": "mZa0SB9p", "updateStrategy": "INCREMENT", "userId": "eU4tsLhg", "value": 0.34757517690363204}, {"additionalData": {"8jn2RDW9": {}, "khrcUfqS": {}, "ycu7u07g": {}}, "additionalKey": "SCv3qDLJ", "statCode": "Pohmm4OD", "updateStrategy": "OVERRIDE", "userId": "RAFCHGEi", "value": 0.4479728220225374}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'gldVRWsP' \
    --additionalKey 'idpF8BRh' \
    --statCodes '["5l9feRHm", "gtRgOZeN", "fva7a0C6"]' \
    --tags '["4nsraolg", "MaCIOQc5", "csdwzoWC"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'iVZicuLA' \
    --additionalKey 'tLbP1ynP' \
    --body '[{"additionalData": {"d1Fcl0iW": {}, "uqnF8lXK": {}, "eyK7zfBR": {}}, "statCode": "D2o4ZrwK", "updateStrategy": "MIN", "value": 0.7695363424641426}, {"additionalData": {"T4eWRocc": {}, "RYxXNdRJ": {}, "X6n89ZfQ": {}}, "statCode": "AxFsy0E6", "updateStrategy": "INCREMENT", "value": 0.06048476475444453}, {"additionalData": {"GMN5spPo": {}, "mMDAhEG9": {}, "gBoTm9Ci": {}}, "statCode": "XMe9Lsc7", "updateStrategy": "OVERRIDE", "value": 0.4584206421279612}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'G9aPvM5W' \
    --userId 'hwzSMMzn' \
    --additionalKey '58hhjsc8' \
    --body '{"additionalData": {"QdZBmJ9f": {}, "heqReplr": {}, "xFq3yuvm": {}}, "updateStrategy": "MAX", "value": 0.8862120339616091}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE