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
    --limit '32' \
    --offset '85' \
    --statCodes 'mymu1xTJ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'LibZLXqX' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '24' \
    --name 'OjEuGjHV' \
    --offset '85' \
    --sortBy 'DqlGWiLz' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "3P05m5VZ", "end": "1994-10-29T00:00:00Z", "id": "qDKm3vS2", "name": "EsdrQu96", "resetDate": 98, "resetDay": 38, "resetMonth": 0, "resetTime": "FcnMt2MK", "seasonPeriod": 73, "start": "1994-03-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["LTDbsCPQ", "G8liuPZx", "zw8XREuZ"]}' \
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
    --cycleId 'UsBrrp4i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'zjr6VhsP' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "Wc4JgPAR", "end": "1971-04-13T00:00:00Z", "name": "6WSX9WVv", "resetDate": 9, "resetDay": 15, "resetMonth": 76, "resetTime": "2gNBZoRL", "seasonPeriod": 42, "start": "1971-01-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'chwDtXPw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'S1rPHqDX' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["KfKuHKU3", "jHChpGDy", "vo9Mit5v"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'jhSY9Ts8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lNgxN5dy' \
    --userIds 'Bg0lsHkE' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9868345323152802, "statCode": "0PUbzEu2", "userId": "oZkqhTRG"}, {"inc": 0.3550546288066405, "statCode": "VJaz8Ayw", "userId": "wg3K4QSR"}, {"inc": 0.06603528044302132, "statCode": "EHLcsfWX", "userId": "d2awCWJJ"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.0888343238462943, "statCode": "ILV4bmpu", "userId": "pSCRZtNs"}, {"inc": 0.20758516166557006, "statCode": "l5tXxxqU", "userId": "6ertSkDs"}, {"inc": 0.9901627994208752, "statCode": "rLaEWk0J", "userId": "uDKV1KVn"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '8IncbCBc' \
    --userIds '["K6PIhewX", "XyiWpCum", "QPtKgOrk"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "U7DyqIlL", "userId": "3utIv1Qt"}, {"statCode": "CuaI94hp", "userId": "hzmC5VZy"}, {"statCode": "kgwUNmJW", "userId": "wWsx4Tp3"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'znMbGQn6' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '4' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["vMvh1bAZ", "lE85hWxD", "UyAk6Oi2"], "cycleOverrides": [{"cycleId": "MfhgFWbn", "maximum": 0.19883213259574262, "minimum": 0.7182132041758584}, {"cycleId": "w0I3Up4q", "maximum": 0.3005099174835657, "minimum": 0.09171886892554992}, {"cycleId": "VH0PjU50", "maximum": 0.9919072495635902, "minimum": 0.7249084541843195}], "defaultValue": 0.32968813100016714, "description": "ruY4eVC1", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.8859177879718578, "minimum": 0.5000807080006889, "name": "3CI7hoPV", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "27gA5og6", "tags": ["tIspe5dB", "UWtuLgFH", "VOlELsU3"], "visibility": "SHOWALL"}' \
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
    --limit '17' \
    --offset '95' \
    --keyword 'f2C6yoxc' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '6RvHA7RL' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'NZtztskK' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '7bmZwlvE' \
    --body '{"capCycleOverride": true, "cycleIds": ["RH213Nj8", "I3visdqH", "x7AxRi0l"], "cycleOverrides": [{"cycleId": "Lcql4e5u", "maximum": 0.834585699807607, "minimum": 0.9161166232065608}, {"cycleId": "zSS1jUQV", "maximum": 0.7576151285670983, "minimum": 0.2949732069386862}, {"cycleId": "LNqj5hQi", "maximum": 0.2423862091958663, "minimum": 0.4150237600443488}], "defaultValue": 0.18735563258850862, "description": "loVIhWpY", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "p7jh6ruG", "tags": ["KOQoMDkE", "rVXIpolo", "W5NbKhba"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4aDOpvwo' \
    --limit '15' \
    --offset '80' \
    --sortBy 'uI31tFg6' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nNj6I9KD' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'gia6syAS' \
    --namespace $AB_NAMESPACE \
    --userId 'SM3iDeF2' \
    --isPublic 'true' \
    --limit '79' \
    --offset '55' \
    --sortBy '5RvPSssb' \
    --statCodes 'OWY2N0eH' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jOpwz4g6' \
    --isPublic 'true' \
    --limit '66' \
    --offset '20' \
    --sortBy '4J4FUu0A' \
    --statCodes 'cegr0pLs' \
    --tags 'eh25skJA' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'MBDZ1u0r' \
    --body '[{"statCode": "ETfiLBt5"}, {"statCode": "1lqC7C58"}, {"statCode": "syFIY4cQ"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'phvuTr9B' \
    --body '[{"inc": 0.5346245315787533, "statCode": "li94i1CE"}, {"inc": 0.7082307251592271, "statCode": "9bq0GmXs"}, {"inc": 0.8566354548741695, "statCode": "MRrQpe4Q"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'o5eID24w' \
    --body '[{"inc": 0.6798631570057577, "statCode": "vW4WV4xo"}, {"inc": 0.0769274991122193, "statCode": "qJeRlKbf"}, {"inc": 0.7502928419390441, "statCode": "bF7xpYo4"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'oLDK4cPo' \
    --body '[{"statCode": "7O15srTi"}, {"statCode": "zB9HAUMC"}, {"statCode": "8rtXohJ4"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'yVOA9YHy' \
    --userId 'iX5XNvUF' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'XOMDMFdO' \
    --userId 'pz2edVDf' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vJH3HWbs' \
    --userId 'kl6IY6mg' \
    --body '{"inc": 0.2757859385607663}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'k6dRHhE4' \
    --userId 'SBS8ZzsG' \
    --additionalKey 'bwDJntAA' \
    --body '{"additionalData": {"A0KRoKac": {}, "qNhevwkc": {}, "S1xccEDZ": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '8' \
    --statCodes 'yDcwf5tZ' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '4NAAU9fe' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '56' \
    --name 'ziba1S0z' \
    --offset '78' \
    --sortBy 'hC4k8nJv' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FjANizms", "jNcP2FNK", "JnryIrVP"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'wyoOWwii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'H9VJLEuA' \
    --userIds 'Zwg4ux1v' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5574135118177546, "statCode": "AQ9MLqRu", "userId": "MiLf7SWZ"}, {"inc": 0.8574366869501636, "statCode": "epT0OvVe", "userId": "gdC1im7z"}, {"inc": 0.622841323200905, "statCode": "ixUytyHs", "userId": "8TmPnAni"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3227027436876203, "statCode": "ITdHJTSw", "userId": "fPoYLHIk"}, {"inc": 0.6821165898097895, "statCode": "SLddUlcx", "userId": "9cdJgAwn"}, {"inc": 0.7996172162664504, "statCode": "XZhNTDZq", "userId": "xxrWHdEm"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ZgnzoaF9", "userId": "KWZxgc7h"}, {"statCode": "ouUqwfEL", "userId": "ijwtphQ5"}, {"statCode": "FMMV2aAk", "userId": "obfVYeXH"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["HPAfjibo", "LGBrDEfQ", "cNtSHbWl"], "cycleOverrides": [{"cycleId": "7zS7dZ0P", "maximum": 0.21862234815622283, "minimum": 0.4932399906540892}, {"cycleId": "BQgDiAgw", "maximum": 0.7941963165997268, "minimum": 0.9162838931905011}, {"cycleId": "2Xvhfjji", "maximum": 0.4174952705690471, "minimum": 0.2353354908570282}], "defaultValue": 0.4566475726686601, "description": "tmWFMGGR", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.3399562853497251, "minimum": 0.7165519158243516, "name": "SWVxgsRQ", "setAsGlobal": false, "setBy": "SERVER", "statCode": "RZd27vyP", "tags": ["1840OzQe", "ebv7JUVa", "Hdwt9833"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'nqimo5dC' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '38' \
    --sortBy 'kCG7jlQu' \
    --statCodes '["0uNnHUng", "yiJpyb1N", "pgG9cv3J"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '80' \
    --sortBy 'Wtg2WL6v' \
    --statCodes '["dq2Qjf0Y", "KvkSxCL1", "B6UisG8P"]' \
    --tags '["1TwqNhgq", "8fMSyKEm", "Qo7Wcn6p"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'PZhOekuE' \
    --statCodes '["HNtGgcFW", "BSySqQWa", "lilsygRi"]' \
    --tags '["Sc6xc8Se", "6HlfrL8A", "TKYZUvfp"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'MwGmtDB4' \
    --namespace $AB_NAMESPACE \
    --userId 'aswkWnHB' \
    --limit '65' \
    --offset '49' \
    --sortBy 'xwkuiPYU' \
    --statCodes 'Pg5k0szW' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'efzjhf8b' \
    --limit '54' \
    --offset '3' \
    --sortBy 'Rix0xKHl' \
    --statCodes 'aASW6Z3Q' \
    --tags 'eRqCLhTz' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9JdePrRS' \
    --body '[{"statCode": "Nan7CAzG"}, {"statCode": "NwOHvzFj"}, {"statCode": "RTVvxisw"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Sm4s1NWQ' \
    --additionalKey 'zBWZSLHZ' \
    --statCodes '["yfNvIS0F", "XVCHyPuv", "X1nT3cS5"]' \
    --tags '["fFO8ahnK", "fQR0CW6b", "hJt54Wri"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'fFXJBtrp' \
    --body '[{"inc": 0.23230607347230614, "statCode": "Le6tjEh1"}, {"inc": 0.8755054997293995, "statCode": "ezCnzBY6"}, {"inc": 0.5016317178620366, "statCode": "AofOXzJ1"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'GsYqmtpn' \
    --body '[{"inc": 0.8072021023527849, "statCode": "jcrKjqiB"}, {"inc": 0.5852691662466664, "statCode": "1sbdGOpS"}, {"inc": 0.711282915760639, "statCode": "O6ytZmKp"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'h3MTu52A' \
    --body '[{"statCode": "Th2cBFIW"}, {"statCode": "MtwJqoeb"}, {"statCode": "NwZPZGrf"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'rOhL7ec3' \
    --userId 'rlhaL5Ak' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'l6jUORi7' \
    --userId 'DProvRkS' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'aXRe0K7Y' \
    --userId 'wHanGnnU' \
    --body '{"inc": 0.03567303526830823}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'b2IeqiXQ' \
    --userId '7Lnns8YA' \
    --body '{"inc": 0.2503085558395265}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bKlcNJzL' \
    --userId 'rHCxgyTK' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"KreplauE": {}, "gC1wmF9r": {}, "KRNwIKvF": {}}, "additionalKey": "RQtjy7O4", "statCode": "tpOyPB40", "updateStrategy": "INCREMENT", "userId": "BqkVMuGK", "value": 0.7870338736282659}, {"additionalData": {"iW8YuHTJ": {}, "IL1AEcGz": {}, "Cbl8yh53": {}}, "additionalKey": "qOngfqbD", "statCode": "76uVXaLG", "updateStrategy": "OVERRIDE", "userId": "em92hogT", "value": 0.33657298334647145}, {"additionalData": {"2xRySNKl": {}, "Io61erHq": {}, "NIgpVeoA": {}}, "additionalKey": "R00p0m2P", "statCode": "NFgsWbUJ", "updateStrategy": "INCREMENT", "userId": "PaVaJwmH", "value": 0.4421501808750038}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'AZ04eLe7' \
    --statCode 'lQLbknvH' \
    --userIds '["O6iaN6Ur", "LFgYM2qW", "Xiis4541"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '84HQQjjc' \
    --additionalKey 'OHDMC83Z' \
    --statCodes '["Sy5M3MgH", "QmpZIxun", "f9Fn0c97"]' \
    --tags '["t2UEh12W", "RpxMi9ZA", "GlvkGLdl"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'ol5rLSxG' \
    --additionalKey 'axezxAOb' \
    --body '[{"additionalData": {"hzMgML2T": {}, "O7b3qa3F": {}, "1N4G9WjF": {}}, "statCode": "1yHALNB8", "updateStrategy": "MAX", "value": 0.989767482513804}, {"additionalData": {"wJLHasnx": {}, "czfdFdCC": {}, "EEMPS7x7": {}}, "statCode": "Kdi8ghWM", "updateStrategy": "OVERRIDE", "value": 0.057589568884014675}, {"additionalData": {"IDVHR5hn": {}, "hJ24PMwO": {}, "Tsxt0mYp": {}}, "statCode": "gi2OW5a3", "updateStrategy": "MAX", "value": 0.1895136478069428}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'ezMgtnW3' \
    --additionalKey 'h5xqRPBy' \
    --body '{"statCodes": ["sbrzxpVu", "Kg4mh0eR", "0ZUkncYX"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'iCjPM7bC' \
    --additionalKey 'svOSKdIZ' \
    --body '[{"additionalData": {"nbQYlXx8": {}, "n7CuCyuG": {}, "OBTbf988": {}}, "statCode": "Uwas5J5k"}, {"additionalData": {"Q2zssPnF": {}, "tFtI7lHK": {}, "M2p6LMLB": {}}, "statCode": "syX5Ob4O"}, {"additionalData": {"5yJOfaXK": {}, "2xOvMwDW": {}, "HgYKawU1": {}}, "statCode": "uaRDfwU2"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'B0U3SuaW' \
    --userId 'AyW0WGg0' \
    --additionalKey '4TfwLF5I' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'IkI5HUWH' \
    --userId 'ucqAK2Bw' \
    --additionalKey 'Y0WfyEhe' \
    --body '{"additionalData": {"Kx1bNAtZ": {}, "gq1FBMxS": {}, "VbJHkgS3": {}}, "updateStrategy": "OVERRIDE", "value": 0.6588394413838901}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"CnVHWqy5": {}, "pedYIjRo": {}, "VAnlDJQM": {}}, "additionalKey": "6mx7YgUB", "statCode": "d9VqnuJz", "updateStrategy": "MIN", "userId": "jBKrhrlw", "value": 0.8023033778187288}, {"additionalData": {"AOchKK5K": {}, "MIa3BF21": {}, "2mWzvYFx": {}}, "additionalKey": "7BHJaO3P", "statCode": "gtDkGnsl", "updateStrategy": "OVERRIDE", "userId": "6H6A7rvM", "value": 0.2322863398238758}, {"additionalData": {"Ha30O1L9": {}, "7RoheLvt": {}, "IBmWtZZx": {}}, "additionalKey": "7bzTyhOs", "statCode": "hg99nQFM", "updateStrategy": "OVERRIDE", "userId": "xLCwZxSB", "value": 0.27792679571026757}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'KAfX7syj' \
    --additionalKey 'DXYFO2sx' \
    --statCodes '["YJjVTa4l", "eewfXHhs", "2ZykZT8X"]' \
    --tags '["LkZE4izp", "ecczzsXn", "MlAiiqBJ"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '4vgkO1hH' \
    --additionalKey 'vF0DCz3Q' \
    --body '[{"additionalData": {"yBB8ycys": {}, "LsCWfgdq": {}, "jqhlHf06": {}}, "statCode": "cNdu81CD", "updateStrategy": "MAX", "value": 0.4644461725236382}, {"additionalData": {"pGM0b4GV": {}, "DYzH4UAw": {}, "rgzCNVUm": {}}, "statCode": "oie8ABGc", "updateStrategy": "OVERRIDE", "value": 0.8880730373358003}, {"additionalData": {"LDDhHLlH": {}, "UUSwCkMe": {}, "3b8GclwR": {}}, "statCode": "jQzIMDL8", "updateStrategy": "MAX", "value": 0.48465370902863425}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'TDFcicbA' \
    --userId 'KpHQld1P' \
    --additionalKey 'vDn1yVVY' \
    --body '{"additionalData": {"CUYOrVRb": {}, "naD4rDI9": {}, "VEcO1RDQ": {}}, "updateStrategy": "MAX", "value": 0.9334503767010703}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE