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
echo "1..98"

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
    --userId 'ggxBr0Q3' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'r9UojDLz' \
    --userId 'tdZ1W4Ly' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["UQp9yPgc", "kaAayNB5", "tRMn9gSQ"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'jl361SsP' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'b0hIjaZg' \
    --body '{"achievements": ["eTrvpAJJ", "FD2pH5yg", "VpVNAf6u"], "attributes": {"QHdtaY1g": "yK8I98xQ", "Kf7CLRHT": "IwP9DPUY", "O8WVe7M4": "4c26UTiS"}, "avatarUrl": "2Fo60gHG", "inventories": ["W6XTDr3J", "v0kzDbNO", "RxYTT7zR"], "label": "1Sscxaf3", "profileName": "duZdm0b7", "statistics": ["YmQikwDg", "c1Hh5JpV", "Vm5kJi9i"], "tags": ["92fOf49N", "famPapxA", "Ij4JS99z"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'p7ny6T4j' \
    --userId 'PavupKXS' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'HOjv1lpt' \
    --userId 'pGHxAEt7' \
    --body '{"achievements": ["4Ux5ECyo", "hHc6ltGd", "HPLag6Vx"], "attributes": {"hkA47hzw": "OwoZkBLd", "sBEQBPCF": "wm4LRqK0", "oX4KI4Jl": "KwoVoNvP"}, "avatarUrl": "y6yKbEeV", "inventories": ["Nyic9bLv", "0tNRlouo", "1Ysl7tWC"], "label": "ZiV91l81", "profileName": "UFYHwIHC", "statistics": ["E7KmrNBh", "kFlPeXss", "MRP9HAdS"], "tags": ["SJ1fI2dc", "nLAg5PVp", "zcnTBsZS"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '5XZTWgCC' \
    --userId '52a4abbp' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'I8tADRxE' \
    --namespace $AB_NAMESPACE \
    --profileId '5ZCOpcQb' \
    --userId 'btDDoOJK' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'Z6Gsrgyx' \
    --namespace $AB_NAMESPACE \
    --profileId 'ZXcwJZEg' \
    --userId 'Bu7fQ6O2' \
    --body '{"name": "n1ALsFqB", "value": "uQTrEnYS"}' \
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
    --limit '61' \
    --offset '22' \
    --statCodes 'WgK2zzQg' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Ue7iLWyJ' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '100' \
    --name 'Zi1bYIeK' \
    --offset '42' \
    --sortBy 'fPpLCcd3' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "YevCDhrW", "end": "1976-07-21T00:00:00Z", "name": "UmV2Bsx8", "resetDate": 95, "resetDay": 38, "resetMonth": 62, "resetTime": "xmMu1Fa5", "seasonPeriod": 97, "start": "1971-03-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Qi3piRgY", "Xv56Xvww", "C2ZTsChO"]}' \
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
    --cycleId 'P9asLD3Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'JJeUdHCB' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "FKMXP0ry", "end": "1996-10-05T00:00:00Z", "name": "uGg5dNAy", "resetDate": 20, "resetDay": 48, "resetMonth": 72, "resetTime": "mfBW4IU9", "seasonPeriod": 50, "start": "1982-03-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'TEYERcpU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'R6g8TqQT' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["XODHWeta", "ipHl9Vqp", "yVHyXgtT"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'WfOdNdYz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'kXA07Alp' \
    --userIds 'NG87rVgC' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.45674930589544116, "statCode": "Cc93fEGd", "userId": "CpA0K9wl"}, {"inc": 0.2489681730722062, "statCode": "m2Isrzzs", "userId": "tVzqT3w3"}, {"inc": 0.2546216382796722, "statCode": "zNydmQwS", "userId": "fzhEaDOM"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4082711806339844, "statCode": "mjGRT1Hm", "userId": "NlpmvelA"}, {"inc": 0.7769557364007404, "statCode": "ReSnqqyk", "userId": "QnRSDgcQ"}, {"inc": 0.1789923664773414, "statCode": "wHES5WJO", "userId": "wANX33Yj"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'k1zRYn4D' \
    --userIds '["OvoMHfBi", "zqPcwEUx", "tsMzvRnT"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "JAq1yWAO", "userId": "KQBj7UJi"}, {"statCode": "4tRGxA2V", "userId": "s0x5OtQj"}, {"statCode": "hA25ZKRy", "userId": "9HeTKo1C"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'i2b8TKk2' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '18' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["urndXFsl", "XWKWwhdx", "m4eEDPyX"], "defaultValue": 0.1032174327036448, "description": "qdlpfZsm", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.27569981970669555, "minimum": 0.5829746941457467, "name": "JyUBcwuN", "setAsGlobal": true, "setBy": "SERVER", "statCode": "QP0ZZprd", "tags": ["jcEoZ5KA", "M8UOeKUF", "sm2PaCTC"]}' \
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
    --isPublic 'false' \
    --limit '57' \
    --offset '3' \
    --keyword 'H80yp58T' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'VjR54Thv' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'dQxIQKGO' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oE8HSlXI' \
    --body '{"cycleIds": ["0TdfgUtM", "hxeVWeDj", "Hq9nNxf2"], "defaultValue": 0.44022071535873564, "description": "F0KpWwon", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "oga7ExmP", "tags": ["LLxf2JJ0", "QNPRIwBP", "6enndKip"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Ce3jOed2' \
    --limit '3' \
    --offset '12' \
    --sortBy 'QQWOFNXS' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'KSvB3nGc' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'o5acrqfV' \
    --namespace $AB_NAMESPACE \
    --userId '7zXRW8OY' \
    --isPublic 'false' \
    --limit '20' \
    --offset '31' \
    --sortBy 'nUYOWAkT' \
    --statCodes 'sEVIXr9K' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'CN0ul7Ol' \
    --isPublic 'true' \
    --limit '100' \
    --offset '49' \
    --sortBy '4zbEy4Bs' \
    --statCodes 'GTg4SjUr' \
    --tags 'ufkugkNA' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'AiSv14yG' \
    --body '[{"statCode": "KFdHjXiy"}, {"statCode": "zDB0hLy8"}, {"statCode": "vuw1AF0s"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Nh8av1b0' \
    --body '[{"inc": 0.1241648895114682, "statCode": "JKDvYqjA"}, {"inc": 0.15170682349344233, "statCode": "OIJWANf7"}, {"inc": 0.8065684439965587, "statCode": "XOk89cgY"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Un0o8Fgi' \
    --body '[{"inc": 0.6113087379636342, "statCode": "ZtWyKdGJ"}, {"inc": 0.13052839900790525, "statCode": "Leqtvf3G"}, {"inc": 0.3169039383358817, "statCode": "bbOLM3lW"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'xvBSKZBV' \
    --body '[{"statCode": "in8SXtcv"}, {"statCode": "J2ycLQNI"}, {"statCode": "VHGqknna"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'SuHRvsdi' \
    --userId 'i59tZDLn' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ni2rUCNB' \
    --userId 'yTEuA7AU' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1MTok3ic' \
    --userId 'rj5LxGXT' \
    --body '{"inc": 0.5745780492028091}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'FEaDO0hz' \
    --userId 'QWCSZ2XM' \
    --additionalKey 'EyD0r30Z' \
    --body '{"additionalData": {"rrTULlA2": {}, "1pjJeD5s": {}, "WJEb6dfX": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '99' \
    --statCodes 'QmsRQVVg' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'VGVrDdYW' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '83' \
    --name '1vitRd0g' \
    --offset '14' \
    --sortBy 'AieDfc6o' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["OS4RWo4M", "IfDfEsbD", "eiTkjfkK"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '9hhSmMsS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Ia5dO179' \
    --userIds 'z3JNnmDp' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.14291706665111903, "statCode": "Q9rLJneC", "userId": "QcaroT92"}, {"inc": 0.032171268968518074, "statCode": "wiPxXWf0", "userId": "JS0u1OGC"}, {"inc": 0.5014128540939782, "statCode": "P10hADLS", "userId": "wnkiADBw"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.10174957391668282, "statCode": "nmFrCwdA", "userId": "gjPjD1Ab"}, {"inc": 0.970516012497903, "statCode": "M1p4jJAu", "userId": "BPDklCeu"}, {"inc": 0.697314314655561, "statCode": "DTaiKL0a", "userId": "EgBsp9Eg"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "DgtzzLHv", "userId": "DGz17uYB"}, {"statCode": "nVN6pht7", "userId": "CMhKSkuV"}, {"statCode": "kA3P4egI", "userId": "s1RvtqwS"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["E4OYa6qS", "mpUNuzoW", "9mzKZIGA"], "defaultValue": 0.9552037885533026, "description": "duS6ZFQu", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.6346714565252454, "minimum": 0.717822287027171, "name": "Gvw6sek7", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "Pc1cvFGF", "tags": ["ikdzFfOY", "loSyAhQC", "RM1IL7Z2"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'vWVJXe5c' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '40' \
    --sortBy 'HkJB1QdP' \
    --statCodes '["sAqanNDh", "R7xMXxc7", "tAij01Rv"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '99' \
    --sortBy 'YVbLbEru' \
    --statCodes '["KP3DBsDK", "L9lK4VrP", "ucfOFl90"]' \
    --tags '["eu2oE9t5", "o07MG1cM", "TEEz7jas"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'uLUPzoxP' \
    --statCodes '["N0ltXN39", "xx0ZXtRU", "ybIf3NUH"]' \
    --tags '["sDEAp3xR", "6lH60Zzd", "LVCUKW0y"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'lf0iIpDm' \
    --namespace $AB_NAMESPACE \
    --userId 'NWX9iUNv' \
    --limit '36' \
    --offset '66' \
    --sortBy '3vX0se11' \
    --statCodes 'sQkvkACi' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wPgEf1cj' \
    --limit '25' \
    --offset '62' \
    --sortBy 'mBWS8kqK' \
    --statCodes 'rqS1c5Kn' \
    --tags 'sS1nwTii' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LZ9waNvS' \
    --body '[{"statCode": "7trSwnsO"}, {"statCode": "6zcPQU3g"}, {"statCode": "7kL32t2u"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'YB9rTw5K' \
    --additionalKey 'RF4Gbot1' \
    --statCodes '["slx2U7HK", "76l02h4Z", "IZCKZOMA"]' \
    --tags '["p99XrsmD", "O8Ad6IpJ", "PkWkepNc"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'WRcZZaZH' \
    --body '[{"inc": 0.8343729502418461, "statCode": "zDxOkEfT"}, {"inc": 0.025167331606161913, "statCode": "HTSAdJj0"}, {"inc": 0.7998064110927867, "statCode": "lAoainLw"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'RiWuV6RS' \
    --body '[{"inc": 0.6020774002831849, "statCode": "WhBYW8cD"}, {"inc": 0.3538383829799129, "statCode": "y3t2txYJ"}, {"inc": 0.3421690614855589, "statCode": "AF4BL1TM"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'hncZOyAo' \
    --body '[{"statCode": "gzGuqyFd"}, {"statCode": "qzcsgZca"}, {"statCode": "EJHO0kSK"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'NrZQijeU' \
    --userId 'lauJdL6q' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BNPwPNRf' \
    --userId 'eeUQXbt6' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'JE87evJI' \
    --userId 'iVDrdvuO' \
    --body '{"inc": 0.770427359233612}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bKUgfkBd' \
    --userId 'OtasLAAW' \
    --body '{"inc": 0.4837804361876499}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'SEQoen6X' \
    --userId 'QRzYZRSM' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"iWyXqvtJ": {}, "238DWF8C": {}, "rVf8dakW": {}}, "additionalKey": "qHb7n61C", "statCode": "GfnFwHYw", "updateStrategy": "MAX", "userId": "a1cgDIS8", "value": 0.11133739642992335}, {"additionalData": {"G4lJbSZi": {}, "bUwHHu7E": {}, "Bl6RmXny": {}}, "additionalKey": "eMLqf4Ka", "statCode": "mwf4DLot", "updateStrategy": "INCREMENT", "userId": "OYdD7afP", "value": 0.4040980853688919}, {"additionalData": {"SkYlKxyB": {}, "kCuCKSzb": {}, "z9yKdHAN": {}}, "additionalKey": "HLSoank1", "statCode": "Hmu3x9Wt", "updateStrategy": "MIN", "userId": "qclU1clJ", "value": 0.9244666287800996}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'zBfTPYYd' \
    --statCode 'RMwlJbz1' \
    --userIds '["EGSf1Vk9", "ZqyCEG34", "DTZrD5PN"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nYgYTJUv' \
    --additionalKey 'uu9H9Tld' \
    --statCodes '["cXBntqgx", "YAfEfHvZ", "ga3zZfsv"]' \
    --tags '["mT4HjL66", "TCdeLlvP", "mq6iAK48"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'k0mWwtiu' \
    --additionalKey 'KJyzu9CC' \
    --body '[{"additionalData": {"7vGeCKGW": {}, "r532kE2G": {}, "m4Wy8HTo": {}}, "statCode": "XBwb30zA", "updateStrategy": "MIN", "value": 0.4132206386728863}, {"additionalData": {"K8ktXNhb": {}, "iN7NQXAE": {}, "MaixnsJ9": {}}, "statCode": "ObSUQQsU", "updateStrategy": "OVERRIDE", "value": 0.677890519600638}, {"additionalData": {"mtMoe19K": {}, "JyRsfMFh": {}, "9asdzCZL": {}}, "statCode": "cwGtvwlO", "updateStrategy": "MIN", "value": 0.43669528949013725}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'zNkdVdXY' \
    --additionalKey 'YvGFDyjU' \
    --body '[{"additionalData": {"oRcypvpq": {}, "Jy73UmE2": {}, "GRZHKRJ5": {}}, "statCode": "yAxvH5MI"}, {"additionalData": {"wZzQ3kYO": {}, "Axtmyv59": {}, "wtxKiHnj": {}}, "statCode": "ABQtNskO"}, {"additionalData": {"mh7rgPpm": {}, "pwyz0Zuk": {}, "4Y36YCUG": {}}, "statCode": "lqTqeys9"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'RkbNBlHs' \
    --userId 'yIkdyI4F' \
    --additionalKey 'riYcvEdO' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'WW0S01Of' \
    --userId 'gEI3sghf' \
    --additionalKey 'ESfcOubM' \
    --body '{"additionalData": {"1BTR0t29": {}, "Ok0uz0Ca": {}, "PA2Hc8vy": {}}, "updateStrategy": "OVERRIDE", "value": 0.4328760574531597}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"PLjJYLpp": {}, "o7D87ren": {}, "tczQBKiW": {}}, "additionalKey": "oQFBVKKz", "statCode": "syCAhscG", "updateStrategy": "MAX", "userId": "XtACTOJB", "value": 0.6583992970032482}, {"additionalData": {"wX6ysUz3": {}, "Px2wgQdX": {}, "lD0XM2iG": {}}, "additionalKey": "k1wMaDbZ", "statCode": "HmRfLVYa", "updateStrategy": "MIN", "userId": "HNQIaX6w", "value": 0.7688277809263779}, {"additionalData": {"GLJY0nfo": {}, "LwKsxGjZ": {}, "0RNTBowW": {}}, "additionalKey": "tsxqQWyC", "statCode": "3kr1CExa", "updateStrategy": "INCREMENT", "userId": "4L3A6BoS", "value": 0.5038935009574669}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'XAdGfsWq' \
    --additionalKey 'q32zgeyD' \
    --statCodes '["wSplz5i6", "RHWEBJLv", "k2kkujZW"]' \
    --tags '["YHqTx8JY", "ttUNe8HO", "cvdlcJvm"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'lbsUshDg' \
    --additionalKey 'ojoaGNeK' \
    --body '[{"additionalData": {"e6egEPid": {}, "kRyAuhr0": {}, "MbSbaq6y": {}}, "statCode": "2J02hr3k", "updateStrategy": "MAX", "value": 0.34235554925330747}, {"additionalData": {"q19r2Sy7": {}, "cdH7Sdcn": {}, "n0pKQe8n": {}}, "statCode": "JBlIiZbH", "updateStrategy": "OVERRIDE", "value": 0.4834136644586772}, {"additionalData": {"29FPRZLO": {}, "CnvijpAE": {}, "e1OrgXBS": {}}, "statCode": "bdWkC37k", "updateStrategy": "MIN", "value": 0.5142598796769142}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'XXEi7xxC' \
    --userId 'iH63VpUl' \
    --additionalKey 'HNEA6ubG' \
    --body '{"additionalData": {"fjvLPpif": {}, "EiHGNlLq": {}, "pUawMvxG": {}}, "updateStrategy": "MAX", "value": 0.44223206751141475}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE