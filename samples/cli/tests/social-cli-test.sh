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
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'wd3Vt6TH' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'bW3K2Xj4' \
    --userId 'ANknvGsb' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["0Pi02CLr", "B4vTlu4c", "UCWMniWE"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'yDeVQo2f' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'o9BzsMyQ' \
    --body '{"achievements": ["UeIzaTmT", "2mwfHBfb", "8nLquspR"], "attributes": {"VNCwiLUS": "jwyMR6kp", "RvATPnmU": "W0ekm6eg", "82HOmuwX": "eqOC9E9h"}, "avatarUrl": "ZR3ivqIJ", "inventories": ["Rp9BEyIv", "vMPAIiSB", "9mrv5YqJ"], "label": "Ld8SS0IE", "profileName": "htlVHNkE", "statistics": ["L32RY0tU", "2k8pCRa0", "ktN1xhhl"], "tags": ["ubtAFxzt", "Df2pnajR", "GcmLfHT8"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '3dpwussm' \
    --userId 'Ca1Guutu' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gwzV2ydB' \
    --userId 'gX3WGrRo' \
    --body '{"achievements": ["A2HeHKug", "4NANk930", "wUcwOLPB"], "attributes": {"ySEruylD": "k6SzODps", "kdyeIiXF": "TyL8f1WK", "SkSlHTLd": "zFsrUcO1"}, "avatarUrl": "lTWmq59N", "inventories": ["dHpL3CZt", "vCifHacm", "wEmMwHYJ"], "label": "WU0ixsQr", "profileName": "uPBu8u7I", "statistics": ["wIVT7y7x", "g48EaMTV", "5E7189x2"], "tags": ["el3fDPzE", "fSQfibFX", "lUUYZzaO"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tqtMCTsn' \
    --userId '2pdSaxm5' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'AniHiY4Y' \
    --namespace $AB_NAMESPACE \
    --profileId 'TuYqpoaL' \
    --userId 'jmmEbb3f' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '1qwKR0A6' \
    --namespace $AB_NAMESPACE \
    --profileId 'ZkqL7OQT' \
    --userId 'GiBhyRJu' \
    --body '{"name": "ornoqZsG", "value": "8ouX40Cy"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

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
    --limit '52' \
    --offset '24' \
    --statCodes '29jr6iHz' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'KX1B8OCU' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '20' \
    --name 'AXJkjhCr' \
    --offset '82' \
    --sortBy 'VQiOJB4Y' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "11g9bTuY", "end": "1993-08-09T00:00:00Z", "id": "FI1iyNg7", "name": "mfjG9172", "resetDate": 66, "resetDay": 9, "resetMonth": 10, "resetTime": "IyCzRvqY", "seasonPeriod": 37, "start": "1986-01-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["aEdhQOvx", "9XXR7wms", "dRlUgoZf"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'xR79udXv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'ZJJvivmz' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "02FDYeHL", "end": "1973-05-01T00:00:00Z", "name": "IlsN6D1t", "resetDate": 76, "resetDay": 17, "resetMonth": 15, "resetTime": "n4KNhMLH", "seasonPeriod": 94, "start": "1985-01-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'G2pLAkMw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'A3I8fC0e' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["dghklQ3O", "puXFBLkl", "CTfzBvIk"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '6iWJvy7S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'tedR8vDC' \
    --userIds 'vKLETbzs' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5823860237926639, "statCode": "GgPIruPT", "userId": "MxDUSvsY"}, {"inc": 0.590384805741477, "statCode": "wyvrEifH", "userId": "nCvbd3km"}, {"inc": 0.5698209488407845, "statCode": "JBf7uFGk", "userId": "D6vWx8Y4"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4509773927060645, "statCode": "JW1m5vtw", "userId": "QFdJCnti"}, {"inc": 0.6597208098169627, "statCode": "a1mct0Y8", "userId": "z8xUjFjV"}, {"inc": 0.14226376415631625, "statCode": "Ck8wDsvI", "userId": "oE05FsJJ"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'QlHvkxRQ' \
    --userIds '["dpbAPbpE", "HvFWAJ5y", "vaXLXDYf"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "DjSZ1ZgX", "userId": "UDNXio5z"}, {"statCode": "T4UqVhkh", "userId": "KOFBiiSf"}, {"statCode": "fUu6xmpS", "userId": "QNBgfKlA"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'DjI2kErH' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '21' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["DfWEDerw", "jqcxNDm0", "ki9txLlW"], "cycleOverrides": [{"cycleId": "WiRHx2iR", "maximum": 0.05589878329752007, "minimum": 0.1547044001075042}, {"cycleId": "45kDhnSp", "maximum": 0.7372677759054187, "minimum": 0.1778333719174433}, {"cycleId": "n5K8exxp", "maximum": 0.8830704499430612, "minimum": 0.37876482726331073}], "defaultValue": 0.045547967111487786, "description": "sY3Vy0pO", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.46598873981376954, "minimum": 0.005513653668585583, "name": "dazs32UH", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "eTSfLfDG", "tags": ["OehUkqTP", "J9t95ubw", "JzyZwZoA"], "visibility": "SERVERONLY"}' \
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
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '77' \
    --offset '99' \
    --keyword '4BfFgjKy' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ouR8nwz6' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'doV0zTn7' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'vpBIanCy' \
    --body '{"cycleIds": ["vlf6msbS", "5IvqEcZ0", "LXmlTdi5"], "cycleOverrides": [{"cycleId": "Ag7URbUi", "maximum": 0.9068918605020578, "minimum": 0.21953411513891563}, {"cycleId": "UA3eU2SW", "maximum": 0.4346568414902219, "minimum": 0.3623289171609815}, {"cycleId": "FQLoVVfU", "maximum": 0.4052905203502204, "minimum": 0.5347007750530779}], "defaultValue": 0.811768976337578, "description": "XT5WkrV0", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "06R8t3TP", "tags": ["4KKjnBkv", "r1MKo5wc", "KtLK8XmZ"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'tIka5bgK' \
    --limit '38' \
    --offset '91' \
    --sortBy 'S0XhpYFQ' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'm2YwpN8t' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '88nWLJUg' \
    --namespace $AB_NAMESPACE \
    --userId '74GdnS4A' \
    --isPublic 'true' \
    --limit '97' \
    --offset '86' \
    --sortBy 'Ejs1Sp2j' \
    --statCodes 'bDKKcrg9' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bvydZLeh' \
    --isPublic 'false' \
    --limit '61' \
    --offset '7' \
    --sortBy 'm6R0kXyN' \
    --statCodes 'Z0M99SjF' \
    --tags 'cnIHqqeI' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Kaxkod6C' \
    --body '[{"statCode": "39Z9HMXI"}, {"statCode": "fm9XJI9u"}, {"statCode": "AyxIyeG2"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Cc7Ak1X6' \
    --body '[{"inc": 0.07419140798792023, "statCode": "9nfF2kA5"}, {"inc": 0.8526955300332544, "statCode": "IL4NTOno"}, {"inc": 0.7370089061899114, "statCode": "ZTEG3Dc1"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'WaeielTr' \
    --body '[{"inc": 0.9843390347503991, "statCode": "TSW5q41R"}, {"inc": 0.11089244388239128, "statCode": "67LzZK5w"}, {"inc": 0.4086905207778678, "statCode": "qEvzQ9ad"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'VIyuwX04' \
    --body '[{"statCode": "i2qMHuh4"}, {"statCode": "9AgYgcA9"}, {"statCode": "X6IGxFN4"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'T1Ljv68T' \
    --userId 'ySzIdrVq' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'dMKHN4Mv' \
    --userId 'cMSUSo95' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Y7dFJJVF' \
    --userId 'JeIirzoC' \
    --body '{"inc": 0.10072356634636492}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'b1AhkCP8' \
    --userId 'tl4sZrBH' \
    --additionalKey 'dUA7ogTr' \
    --body '{"additionalData": {"n1gVZVsK": {}, "AN8C42Y5": {}, "zWiLU5oH": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '19' \
    --statCodes 'kwfj77UU' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'eN8g6Jv3' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '16' \
    --name 'jvMCECVR' \
    --offset '56' \
    --sortBy 'FkacoEEj' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["wYx0nojL", "lJ4qEhyZ", "2dHNgbcV"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'KjUqY7yp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'yfuYrVDf' \
    --userIds 'nvVV8xOz' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.14034415103363707, "statCode": "NhXlAH8Z", "userId": "GG7OX5Ar"}, {"inc": 0.5003007126166172, "statCode": "uTpOHYWY", "userId": "2YspHVc5"}, {"inc": 0.4519042635980993, "statCode": "rKkJp4jh", "userId": "yAmSpm5I"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8471336925230439, "statCode": "iRp2YQMm", "userId": "o890zIzc"}, {"inc": 0.3327530740599579, "statCode": "gQLdi8ho", "userId": "Tkyx2pOZ"}, {"inc": 0.6316567701713129, "statCode": "yzrPCgbg", "userId": "lFXaACBz"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "npJneLEY", "userId": "sB2I1LkF"}, {"statCode": "1MabOIWk", "userId": "aOCY0Zax"}, {"statCode": "T0JbfUcT", "userId": "VhZHlWrq"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["RRoUXqcM", "jVYX4ngN", "pdp1thj0"], "cycleOverrides": [{"cycleId": "oRPULMgs", "maximum": 0.5710568205038298, "minimum": 0.4098424687226686}, {"cycleId": "hMZE0lxm", "maximum": 0.09597664493287006, "minimum": 0.10408998731528218}, {"cycleId": "dnXCMUpP", "maximum": 0.4429034561980494, "minimum": 0.9272406950433396}], "defaultValue": 0.30630999272214765, "description": "1EsptmJo", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.9723550519367147, "minimum": 0.7685785903580743, "name": "tiQvWzMC", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "cNdc49up", "tags": ["MmyOE5ji", "DUtc0e93", "obCio7Ko"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'bz7iUoiN' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '29' \
    --sortBy 'F5b8H6pE' \
    --statCodes '["FbaAQOSR", "10tHkrzv", "h0Ck4K5u"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '50' \
    --sortBy 'FWZkjUSo' \
    --statCodes '["SDlicCeZ", "sBbUlT0E", "zdxWcADT"]' \
    --tags '["pPlaBqnF", "IS4w7RVY", "w63ciYQs"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'kOVdT4ng' \
    --statCodes '["TXUd3JM3", "H50OTTV9", "lK8CVp99"]' \
    --tags '["qteDxCeA", "D9xjabIv", "PbnXIzTg"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'JFo4dg7k' \
    --namespace $AB_NAMESPACE \
    --userId 'KS0ysPwI' \
    --limit '51' \
    --offset '4' \
    --sortBy 'QCNyy931' \
    --statCodes 'h5eDoo7j' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xAOG8h9F' \
    --limit '25' \
    --offset '61' \
    --sortBy 'Th6366Qr' \
    --statCodes 'MMIQFrMC' \
    --tags 'YAHPSw6l' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0ACRac6l' \
    --body '[{"statCode": "vdPnu7G8"}, {"statCode": "A3uMj1sj"}, {"statCode": "hjZE8FoZ"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'PVXX3V9M' \
    --additionalKey 'ccmilRHo' \
    --statCodes '["mieS84zr", "OlJbb30w", "5H0zZH6E"]' \
    --tags '["KtwgPvxm", "DanwMBUS", "bjmeAOse"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XEk7WudK' \
    --body '[{"inc": 0.5922241525302756, "statCode": "cEJi8agw"}, {"inc": 0.662939443061707, "statCode": "yzlnX6hL"}, {"inc": 0.7382389901048555, "statCode": "zoraniGh"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '8dyGZqZE' \
    --body '[{"inc": 0.2891594838351551, "statCode": "saOqRnF2"}, {"inc": 0.8328235235128293, "statCode": "v8rA1dvB"}, {"inc": 0.8033527964330079, "statCode": "WZ9UI5tj"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZdeLtMIq' \
    --body '[{"statCode": "KlrsaED4"}, {"statCode": "1TeJL7Z6"}, {"statCode": "kHeCnXbn"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'roJxXUt0' \
    --userId 'ceSuzQhv' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CE2W6rCz' \
    --userId 'hLy79fTL' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'hyiWMqy3' \
    --userId 'ANAW1klT' \
    --body '{"inc": 0.522213872968501}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'UdOXIVZQ' \
    --userId 'xw9dPH9Q' \
    --body '{"inc": 0.16351639304308174}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LYgYMwf9' \
    --userId 'CKsTYB2P' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"aR3BiPkf": {}, "tBV7Q6AP": {}, "A2tIEkAf": {}}, "additionalKey": "0UDx82k5", "statCode": "Q3RXNmDj", "updateStrategy": "OVERRIDE", "userId": "acaEiQx9", "value": 0.8868245415596326}, {"additionalData": {"ocaqB0nR": {}, "7xrm7L9R": {}, "0SEz31mJ": {}}, "additionalKey": "5jlXGC7X", "statCode": "WfPKSDDY", "updateStrategy": "OVERRIDE", "userId": "u8PooZu4", "value": 0.2554232474876875}, {"additionalData": {"TwLyyGIA": {}, "KROxLesn": {}, "LR0HpWW1": {}}, "additionalKey": "eC52nmsg", "statCode": "bjSobwhE", "updateStrategy": "OVERRIDE", "userId": "4jWcED80", "value": 0.9684230080999698}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'ik2RKvX2' \
    --statCode 'FAz26Opa' \
    --userIds '["p0TR2AnK", "t9L4vLC0", "5HFeJFgm"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '5cT0ux7t' \
    --additionalKey 'BlgnIA2F' \
    --statCodes '["J4XjNJcF", "l3bWBYHI", "krZ7O0xf"]' \
    --tags '["gPV4fAek", "o5ctLRgm", "i05BbSyc"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'uohNAHZ9' \
    --additionalKey 'gVzA61Qu' \
    --body '[{"additionalData": {"CCiEhAEt": {}, "94ryZyWf": {}, "EVdNNRma": {}}, "statCode": "QA4tCPiY", "updateStrategy": "MAX", "value": 0.34981820338913283}, {"additionalData": {"EeZFPvo8": {}, "vu03qZNX": {}, "bxtZwniC": {}}, "statCode": "vylyxbBj", "updateStrategy": "OVERRIDE", "value": 0.3093389398175507}, {"additionalData": {"XWGxGazf": {}, "q4JWCmaY": {}, "rA0ua7M2": {}}, "statCode": "PQbWKbBr", "updateStrategy": "INCREMENT", "value": 0.9088982234217989}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'bSkMBC7Z' \
    --additionalKey 'Bxf7AbBe' \
    --body '{"statCodes": ["Nq9PWqpU", "nNV93YPO", "IsVvZlV3"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'yfMWhQwg' \
    --additionalKey 'd3CFixMi' \
    --body '[{"additionalData": {"g3ddAUYv": {}, "BqqeCzmg": {}, "3sWELfLc": {}}, "statCode": "giZR5MEW"}, {"additionalData": {"A0lzj1Ba": {}, "42omyDQR": {}, "VRK5uOyS": {}}, "statCode": "fh1cD1pV"}, {"additionalData": {"k9S115n1": {}, "TVplsOUN": {}, "6zocrHX0": {}}, "statCode": "HLLurAGz"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'utQg3fBV' \
    --userId 'mYuZrann' \
    --additionalKey 'zKwakwBh' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'kSZFmM3n' \
    --userId 'm8Ur02vg' \
    --additionalKey 'POfdFY4a' \
    --body '{"additionalData": {"IQaUC5CX": {}, "eK6W5AUD": {}, "hOKgCuWw": {}}, "updateStrategy": "MAX", "value": 0.22336041186305222}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ZS4ciN2K": {}, "lQPGmzYU": {}, "04rE7H83": {}}, "additionalKey": "RhKegJLF", "statCode": "IjioMLhL", "updateStrategy": "INCREMENT", "userId": "HCtC1OC6", "value": 0.633155084786637}, {"additionalData": {"O5of4iRx": {}, "HsD8vUED": {}, "XGmEJ6xj": {}}, "additionalKey": "RkV6Ya6h", "statCode": "TandAtWN", "updateStrategy": "OVERRIDE", "userId": "sI2MfOCs", "value": 0.5865068839756885}, {"additionalData": {"icEvIboS": {}, "Ezzr2tl5": {}, "M2DHyjrJ": {}}, "additionalKey": "XNJZTTBk", "statCode": "qhSRuGvM", "updateStrategy": "INCREMENT", "userId": "qKt6mT0d", "value": 0.7545729828676311}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 's31wDIWg' \
    --additionalKey 'RYfYRznC' \
    --statCodes '["c3IZKtNs", "dMLJbgDM", "IUAFk5LT"]' \
    --tags '["HxVwvrOj", "B4j0nQGy", "M11qOrdc"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '2vXUVq5u' \
    --additionalKey '1Bp47hOs' \
    --body '[{"additionalData": {"FmBBm4fW": {}, "WBYas26L": {}, "LyB7sxNa": {}}, "statCode": "hthYLukt", "updateStrategy": "MIN", "value": 0.9886288566570015}, {"additionalData": {"c6czcBMr": {}, "zDCY2YYl": {}, "S9tyIF1Y": {}}, "statCode": "5HyFwcvl", "updateStrategy": "OVERRIDE", "value": 0.7166830480231753}, {"additionalData": {"UkscMy2y": {}, "wrmL7GTz": {}, "qUPCuTAv": {}}, "statCode": "dXzTXEKK", "updateStrategy": "INCREMENT", "value": 0.6148308981655329}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NvtWjQ9b' \
    --userId 'w3jOXrux' \
    --additionalKey 'OmpUt07t' \
    --body '{"additionalData": {"DXMD6lpz": {}, "A7HNzTTC": {}, "qLmrMfOU": {}}, "updateStrategy": "INCREMENT", "value": 0.45747450086844565}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE