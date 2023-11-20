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
    --userId 'cziqgCs7' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'dMZ28YXI' \
    --userId 'X0v0A6qI' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["ImdMLfGS", "fk0ATJ39", "YIHEtxEb"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'SK3DSEhn' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'RiNSk95X' \
    --body '{"achievements": ["BSa4zDyL", "NQwPVeW8", "Kd7xEuwc"], "attributes": {"wQQyRSr2": "yyHO26LS", "Za2Tgnpp": "oLyFSNLx", "SuyhAVbn": "4wmhVsJZ"}, "avatarUrl": "hGLnKT0V", "inventories": ["KnxihIvB", "x2Hk5vJJ", "0kTnkJ6v"], "label": "87Kl90d7", "profileName": "9IZ29SoV", "statistics": ["2I7vCYN0", "swkVFek4", "EtJ9qbvs"], "tags": ["6gKOOb15", "6rOczZAb", "2KiUiUB6"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '2PRlNFeX' \
    --userId 'PXpoyyCh' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'd2RdTNFT' \
    --userId 'zoh88Ss1' \
    --body '{"achievements": ["h9mgHQs6", "qEbIAwpJ", "kKN2ArKK"], "attributes": {"ptCAFyXT": "OeFHzRuy", "bP2WnVb1": "T4ZR91Mh", "jdkxpjrf": "nGy7V8wk"}, "avatarUrl": "OVNVe8UG", "inventories": ["6hlX3tZo", "4DGIBvXa", "vYUGkp0h"], "label": "D5izgFX6", "profileName": "NdCwigcb", "statistics": ["bgnIoJmY", "sE4Z9Lbz", "taWfkZ2D"], "tags": ["es7L6RmP", "kVxuwejv", "kbBDak3f"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '6ORqYJ78' \
    --userId 'BgKYc9l1' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'zAmDWSfm' \
    --namespace $AB_NAMESPACE \
    --profileId 'LIEi18Nx' \
    --userId '0YmHCRSj' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'lKaPbVQt' \
    --namespace $AB_NAMESPACE \
    --profileId 'Jwxw3o8e' \
    --userId '9hFrRTPn' \
    --body '{"name": "R6q2Reab", "value": "t4LCltEM"}' \
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
    --limit '87' \
    --offset '67' \
    --statCodes 'FLhkSfrP' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Hh02yuBx' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '0' \
    --name 'rtCxXVAQ' \
    --offset '2' \
    --sortBy 'UICMVFs6' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "lDK9v1pL", "end": "1995-08-24T00:00:00Z", "name": "NAr9zOrm", "resetDate": 83, "resetDay": 39, "resetMonth": 11, "resetTime": "Eyrycv4Y", "seasonPeriod": 55, "start": "1986-06-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["B8Ht37V7", "1u4oEMO0", "hkAixnRu"]}' \
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
    --cycleId 'zac7hEc1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '1WTGJRl3' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "DihScj6L", "end": "1992-04-27T00:00:00Z", "name": "DkKIzaUR", "resetDate": 82, "resetDay": 60, "resetMonth": 17, "resetTime": "t9PAfMov", "seasonPeriod": 40, "start": "1977-08-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '6WwWZ7mu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'VhmC6Lwm' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["mYN6Sbxr", "2eT5AbFR", "4OTx9J4o"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'erncp4e5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4ttxpM8Y' \
    --userIds 'Nv1DGCjf' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.22214912685074895, "statCode": "YY2rkb4B", "userId": "dXKX95TU"}, {"inc": 0.07210731360862999, "statCode": "qcyJGMXD", "userId": "4zPHx3Hp"}, {"inc": 0.7491108709808305, "statCode": "GcgkcYmU", "userId": "b1HRTHF5"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7071139743413011, "statCode": "ipU8NPjG", "userId": "b2LgUVYT"}, {"inc": 0.423642058561823, "statCode": "BLxFHRkE", "userId": "ZAm2vbdt"}, {"inc": 0.24517914782065198, "statCode": "xsspCaPg", "userId": "1El4FGBn"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ISXbMqHp' \
    --userIds '["6rArbapx", "n8K0V168", "n2AAeAwZ"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "XD5GMjw5", "userId": "y2SEe6hZ"}, {"statCode": "nZYOke28", "userId": "TzM9jLHl"}, {"statCode": "oKnGiYnv", "userId": "RHkjB8fQ"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '7qbvHDN3' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '63' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["YreK1gk7", "sPbqMb2K", "DbZ22IC0"], "defaultValue": 0.8203974277113054, "description": "4RqI1Q50", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.9925453486737108, "minimum": 0.8362270290955663, "name": "WbjcrrtM", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "4POLO49N", "tags": ["OMBPdYk0", "uc4xo5Ew", "XyYJjaBy"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '53' \
    --offset '11' \
    --keyword 'q640fW7V' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ShOyBewD' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'U8sk5zRR' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Q6GaWYss' \
    --body '{"cycleIds": ["uUYqNMgK", "ITx9lTrv", "cIYJQvoE"], "defaultValue": 0.9723584515426061, "description": "PwuL2aVR", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "PNm85qUU", "tags": ["JiB1Gx49", "6X5D1nf8", "9u577pUP"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'HAQVBeXe' \
    --limit '91' \
    --offset '34' \
    --sortBy 'n5XWUQMG' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'uYHLiklT' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'CuMW65uF' \
    --namespace $AB_NAMESPACE \
    --userId '0V8UBIe7' \
    --isPublic 'false' \
    --limit '37' \
    --offset '91' \
    --sortBy 'kYpCrDiA' \
    --statCodes '35qzROvO' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'e7D76epB' \
    --isPublic 'true' \
    --limit '15' \
    --offset '2' \
    --sortBy 'v1UpXg1K' \
    --statCodes 'TU2gM9ai' \
    --tags 'zPd2dXOv' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'd8MEEOwi' \
    --body '[{"statCode": "ACoUvmV7"}, {"statCode": "FGJ6UYyw"}, {"statCode": "n15Kwz5X"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'EU8XydKx' \
    --body '[{"inc": 0.2612473116114665, "statCode": "DZyzDq5k"}, {"inc": 0.6544956428935098, "statCode": "i1MpiQ5M"}, {"inc": 0.7864274083093982, "statCode": "1t3SJRn0"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Wcg9PIsO' \
    --body '[{"inc": 0.03307096220474426, "statCode": "pEehidq9"}, {"inc": 0.2753552392105656, "statCode": "KamlXwI9"}, {"inc": 0.7658962042188809, "statCode": "8Ki6v2X9"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0hvoogcf' \
    --body '[{"statCode": "tPiLfsuc"}, {"statCode": "cwaz5pqW"}, {"statCode": "yqJPW8GW"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'z5itq1rI' \
    --userId 'itj1hZmZ' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '46e3L3cL' \
    --userId 'HikCJVvc' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '3msAgd90' \
    --userId 'sAWflYJP' \
    --body '{"inc": 0.8453544294581435}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ez0JmDAl' \
    --userId 'W7GBNbxW' \
    --additionalKey 'AxFNo9DK' \
    --body '{"additionalData": {"A5ycvUQc": {}, "P9YGRMvB": {}, "5A4A8TFZ": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '65' \
    --statCodes 'FH5fderH' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sVxIsLHK' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '88' \
    --name 'BYkDGz0k' \
    --offset '10' \
    --sortBy 'DOhZT850' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["P2n2CAnJ", "4h0Z6L3G", "wEQnwwNX"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'dJLZ6OGb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'VybipXVh' \
    --userIds 'TwWswd62' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.32943918844105946, "statCode": "ErKhCwqK", "userId": "b5FrI63y"}, {"inc": 0.7475971352235671, "statCode": "O35hBijX", "userId": "hSRCFzDD"}, {"inc": 0.22048271587543422, "statCode": "VNEvUTfv", "userId": "o9DM5GXy"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.11836984815563412, "statCode": "WXUaV44I", "userId": "8lvXGeEU"}, {"inc": 0.15521433658521722, "statCode": "h8lPEj2R", "userId": "ms1lICqS"}, {"inc": 0.5861102754143027, "statCode": "tLn9Hupv", "userId": "sywTF3nn"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "q3Z3ULc2", "userId": "HJZjb3gv"}, {"statCode": "g49ERsJW", "userId": "dascYi7t"}, {"statCode": "rGJgpGYb", "userId": "kLKt5dit"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["GDcsHzZS", "uQKr8nXs", "QXTpupHQ"], "defaultValue": 0.5924583822032328, "description": "JM4LcZRe", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.3403996192674358, "minimum": 0.26879781429861394, "name": "oIsMId9V", "setAsGlobal": false, "setBy": "SERVER", "statCode": "TwsisElh", "tags": ["Xz5QOGmQ", "6NhnC5Uz", "AgWDHkI1"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'VqawUXq5' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '60' \
    --sortBy 'VlmrTpLX' \
    --statCodes '["MMNbAyZd", "6ti3iKgu", "henSuhbo"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '7' \
    --sortBy 'Xj6NtTaa' \
    --statCodes '["DgEisjHo", "b2pyDgI7", "IFeaWKaQ"]' \
    --tags '["CTdupJUl", "gsezZC4B", "cQke5UmO"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '6i7y1wrK' \
    --statCodes '["fHipap4B", "xFlg1zwL", "sVbthpqe"]' \
    --tags '["fD2YcxIA", "mWBAZvTT", "6iQxvt67"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'BRZEOKK1' \
    --namespace $AB_NAMESPACE \
    --userId '0QzTeU2Z' \
    --limit '59' \
    --offset '8' \
    --sortBy 'VJFgvKfN' \
    --statCodes 'BjTcwJvM' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SCUUItzG' \
    --limit '42' \
    --offset '59' \
    --sortBy 'Vn9ZqoFs' \
    --statCodes '2tAlwApu' \
    --tags 'LEnscvbg' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'EEbEoeuZ' \
    --body '[{"statCode": "oYn1Hwvf"}, {"statCode": "sSlK66JR"}, {"statCode": "fP73s8Ie"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z6yMqAAV' \
    --additionalKey '1v7H8TGj' \
    --statCodes '["xtKupG0N", "SjhnDbzc", "2QaIeLI4"]' \
    --tags '["iYX97feo", "Oqz31kOQ", "DQwFswtE"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'J8wWlQcy' \
    --body '[{"inc": 0.052958245081479616, "statCode": "uXvlB9HB"}, {"inc": 0.8850641994488142, "statCode": "DJ3pR4HS"}, {"inc": 0.6493690533922224, "statCode": "eIPOKeGP"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'YoAF6Lel' \
    --body '[{"inc": 0.28422140411878316, "statCode": "aPXqpIGw"}, {"inc": 0.26754211713860254, "statCode": "HcSa6jTZ"}, {"inc": 0.6962577200030479, "statCode": "EwoI0Yz8"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'HsOmyrp9' \
    --body '[{"statCode": "GuoN9h79"}, {"statCode": "WjzUxpVM"}, {"statCode": "MbnXnxhG"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '9k4MrcwO' \
    --userId '2HnVqtT2' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nZYSBoNe' \
    --userId 'Td4MblVs' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'auAFvWwd' \
    --userId 'UBbMLFwr' \
    --body '{"inc": 0.2512982075159301}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'V1jZCUHc' \
    --userId 'owM6AcNd' \
    --body '{"inc": 0.9007013461613708}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'm4Ati66w' \
    --userId 'GTRRfDFX' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"H3bvqj98": {}, "IaYPvkNl": {}, "kXTy3x88": {}}, "additionalKey": "aF0zIqSy", "statCode": "VbEzIpFP", "updateStrategy": "MIN", "userId": "8hXLALwl", "value": 0.8754037917846487}, {"additionalData": {"oU3LiKpE": {}, "okRj4mZe": {}, "JJetP4mL": {}}, "additionalKey": "j4qdO2Zf", "statCode": "Gq6lPoXg", "updateStrategy": "MIN", "userId": "TBDYEb75", "value": 0.6558098527989424}, {"additionalData": {"DW5XXuXt": {}, "wjjzsIjc": {}, "IDgMxYr8": {}}, "additionalKey": "EtA4SiVG", "statCode": "OyX2hw3Y", "updateStrategy": "OVERRIDE", "userId": "fYtlXZC7", "value": 0.7978818368398615}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '5q1Fc9VW' \
    --statCode 'Wtb4IUvn' \
    --userIds '["lxJiSr5i", "oizXwR1z", "YKf5UTdr"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Y6okxA2g' \
    --additionalKey 'HBiARkZj' \
    --statCodes '["4kyqHFg8", "u9w9ICMl", "cQ5D8U4g"]' \
    --tags '["XAE5CxZY", "hHJv2wKo", "Ab9SQgqw"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'wy9QvuqW' \
    --additionalKey 'QK7XBUN8' \
    --body '[{"additionalData": {"Vk80Krxx": {}, "flosghWT": {}, "UVoYl3kB": {}}, "statCode": "f0RquI8Q", "updateStrategy": "OVERRIDE", "value": 0.2624123958299247}, {"additionalData": {"oddlxcPZ": {}, "X4CHfxDp": {}, "JpXsg8CY": {}}, "statCode": "ATC0lXhD", "updateStrategy": "OVERRIDE", "value": 0.84976020810144}, {"additionalData": {"H4gUV5W8": {}, "60l5GSQl": {}, "PN9NaYwS": {}}, "statCode": "1Sw40tlD", "updateStrategy": "MIN", "value": 0.5977526473631991}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'M0MNBkkB' \
    --additionalKey 'VubOGCUK' \
    --body '[{"additionalData": {"goWcBS4J": {}, "Q3onDYr5": {}, "x9eIRQHY": {}}, "statCode": "QkmM5OYC"}, {"additionalData": {"Wqzmt8Ak": {}, "oqiFvyUZ": {}, "w1hUrR85": {}}, "statCode": "dSw9swk2"}, {"additionalData": {"T6tHH6il": {}, "tIu7VORn": {}, "dwaXno6P": {}}, "statCode": "MgtCd8eE"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Eva1iUbv' \
    --userId 'CQkhP0qF' \
    --additionalKey 'bsMohcDA' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7ANyuXrE' \
    --userId '7MSyV82p' \
    --additionalKey 'jIvmTccV' \
    --body '{"additionalData": {"LqYxWNj6": {}, "zWlHzNVQ": {}, "Z1pcJygh": {}}, "updateStrategy": "MIN", "value": 0.31459834460314173}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Hsk4jZVN": {}, "NlQNF1sH": {}, "jKnnk8iO": {}}, "additionalKey": "9sx64XTH", "statCode": "0EaWLVxC", "updateStrategy": "MIN", "userId": "OOjI4b0X", "value": 0.4742261691538916}, {"additionalData": {"46JlQX2N": {}, "agu79n1A": {}, "ubKNCarJ": {}}, "additionalKey": "bLbALmUu", "statCode": "tPMcofzD", "updateStrategy": "INCREMENT", "userId": "gGtOuzVM", "value": 0.9863655630102658}, {"additionalData": {"c7AE9fow": {}, "EB59Lyk3": {}, "VVwo3q0M": {}}, "additionalKey": "59liomOo", "statCode": "j8Hj0Qr4", "updateStrategy": "OVERRIDE", "userId": "Pcba66NL", "value": 0.22002088315601442}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'YrCXBpIY' \
    --additionalKey 'FJuDa2TS' \
    --statCodes '["eHBUIBzb", "uawfLCZn", "KZ3zr7yk"]' \
    --tags '["YCzFTQbA", "2uVyMiPa", "72bwb6hv"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'vTOGpcDJ' \
    --additionalKey '4OqICkXO' \
    --body '[{"additionalData": {"vwfZSJfW": {}, "G3lNGNY8": {}, "h97wnrfj": {}}, "statCode": "pkIclBEs", "updateStrategy": "MAX", "value": 0.8976213900281698}, {"additionalData": {"uJyfIGSe": {}, "XQPnqGiH": {}, "V8iXF1KA": {}}, "statCode": "i5fhkydt", "updateStrategy": "OVERRIDE", "value": 0.37015750697715444}, {"additionalData": {"Xhvch9dU": {}, "drbAdiGS": {}, "W83xYWdj": {}}, "statCode": "YkStym4F", "updateStrategy": "OVERRIDE", "value": 0.04675199522769524}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '9u0WSkJv' \
    --userId 'cso9Yr2t' \
    --additionalKey 'Y7k16apR' \
    --body '{"additionalData": {"n1s3FSEy": {}, "6Lnk0VQL": {}, "KgStLW96": {}}, "updateStrategy": "MIN", "value": 0.31560848322753277}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE