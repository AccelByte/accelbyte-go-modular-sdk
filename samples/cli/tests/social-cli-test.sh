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
    --userId 'D1DrusFe' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId '6lBVi1DL' \
    --userId 'NHZHRFVS' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["jyJR7Kdm", "x6mHb0kF", "yT3sWZ65"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ugArwPne' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'GdYzJJc8' \
    --body '{"achievements": ["QPjYoo4L", "gMDvs62c", "2GZ51DjG"], "attributes": {"1xFySoVe": "XyLusv5l", "5uGnIN0T": "OqfWZR3M", "pVOMZMaz": "ixZLZTVd"}, "avatarUrl": "ZnTv9ayM", "inventories": ["u1Z2z9e5", "PKMPlIe3", "kODR527d"], "label": "5mc7MgnN", "profileName": "z7GikXcI", "statistics": ["4gNRymWn", "IEwN415T", "eWDvTJUF"], "tags": ["v4JuZGDk", "xGxBbr5c", "Jib0Sn4O"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'xRgGHPlm' \
    --userId 'pHATrJlU' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '4U30uasx' \
    --userId 'WXoEXoAk' \
    --body '{"achievements": ["apVFRPIw", "VTyNomlr", "O8IZarPu"], "attributes": {"HRb5kr3p": "tjTqEs3f", "hbkNHglP": "QU2KpYIn", "lg4j8dMt": "2Z2pVr48"}, "avatarUrl": "TmkY6Jvo", "inventories": ["i5Wu9hQp", "ehYTkjAB", "2dnAXQWB"], "label": "kcFx48q4", "profileName": "Q2ONIBHA", "statistics": ["ZF1SEV1A", "X4to9iCS", "5qXbrQN9"], "tags": ["pJJcMIfY", "LD8dqeHu", "YuZe5Dt8"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'fJH8DufO' \
    --userId '6QvE7PIa' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'qwfaxWlZ' \
    --namespace $AB_NAMESPACE \
    --profileId 'aIJRkgEf' \
    --userId 'MV1HsW2r' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName '147mXPJA' \
    --namespace $AB_NAMESPACE \
    --profileId 'hUbwS3ns' \
    --userId 'm7QH2jKk' \
    --body '{"name": "EUgB5gAI", "value": "ou86xfIl"}' \
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
    --limit '22' \
    --offset '49' \
    --statCodes 'L20JDyNn' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'fPrXvd6N' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '41' \
    --name '9FCksPFl' \
    --offset '37' \
    --sortBy 'A1gSpj6O' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "pebADYNT", "end": "1979-06-05T00:00:00Z", "id": "MuQNRVic", "name": "EF0brr4h", "resetDate": 81, "resetDay": 84, "resetMonth": 8, "resetTime": "Ueeu2H2j", "seasonPeriod": 84, "start": "1997-12-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["c94AH99e", "NzTGmEwJ", "xsPTxYEX"]}' \
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
    --cycleId 'OGMTcKjC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '3yjFz0Wo' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "9r6rIk6x", "end": "1979-12-19T00:00:00Z", "name": "VPSupuVW", "resetDate": 96, "resetDay": 87, "resetMonth": 94, "resetTime": "4aLA6qsn", "seasonPeriod": 40, "start": "1996-06-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'gP7soetj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '8jiYHPSf' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["qppz0Zum", "rgVYdXND", "wYSd0kq9"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '8NYDNDsD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '7c6xp0bJ' \
    --userIds 'wGdLtFn8' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.471418050891531, "statCode": "mm4pntOn", "userId": "SUIk88ZU"}, {"inc": 0.8903391278902966, "statCode": "kFXeX1tW", "userId": "A2hTI0YW"}, {"inc": 0.41491421632587133, "statCode": "5s9fQcte", "userId": "npfBLObh"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3266194960631231, "statCode": "L9zmMVY2", "userId": "jhjuvRu0"}, {"inc": 0.3752898472270646, "statCode": "0hp31CcJ", "userId": "d2wVH1wy"}, {"inc": 0.2927566213553181, "statCode": "8RX4ZFKR", "userId": "McPY9hmx"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9Y5reKV7' \
    --userIds '["JfDjgwYf", "1BJG3ztk", "M5GhJgW9"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "TCoE4hnk", "userId": "O10zHes1"}, {"statCode": "HpF2pyxh", "userId": "qDQR2fpW"}, {"statCode": "h7HVEjnc", "userId": "VN4Flkyp"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'KP5NjJFO' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '59' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["saOtyb5E", "ReWTygnw", "S6DomwAT"], "defaultValue": 0.5406351815288605, "description": "yXC7pO4R", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.6441442966345173, "minimum": 0.7063357120684249, "name": "oM6Aejwk", "setAsGlobal": false, "setBy": "SERVER", "statCode": "qCOuMZKh", "tags": ["oKCOr4jj", "o0wEBMCH", "ELLG0KpT"]}' \
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
    --limit '36' \
    --offset '32' \
    --keyword 'rNSbdbfM' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '5EzdK0DH' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'N7HuTdDF' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Tp3W2Lir' \
    --body '{"cycleIds": ["VowU0QCs", "kjjNsgK3", "EEW84jyY"], "defaultValue": 0.8240728993493251, "description": "wPegxKYT", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "ochD1GT8", "tags": ["gZWTk7zd", "jh1ITjDQ", "xgAFISpF"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'V8migiid' \
    --limit '91' \
    --offset '90' \
    --sortBy 'p2WLtMyX' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '0dHrDwst' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'eie7Vjvt' \
    --namespace $AB_NAMESPACE \
    --userId 'hO6Eh9WM' \
    --isPublic 'true' \
    --limit '77' \
    --offset '99' \
    --sortBy 'bImuKz7w' \
    --statCodes 'BrPlYP9F' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '68DrsYwU' \
    --isPublic 'false' \
    --limit '63' \
    --offset '45' \
    --sortBy 'J3KjAY1C' \
    --statCodes 'FMOWyboG' \
    --tags 'uwnOQ31o' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'EKMETg8q' \
    --body '[{"statCode": "G5Xjkb1O"}, {"statCode": "R1o2q6gf"}, {"statCode": "KRR37Tnq"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Kw0X2hGh' \
    --body '[{"inc": 0.7358774660004181, "statCode": "sshr3hoK"}, {"inc": 0.10333660569383896, "statCode": "U5jwCRp2"}, {"inc": 0.8665357746209911, "statCode": "CEf0f1GG"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'QTAeVMNw' \
    --body '[{"inc": 0.01742826961732169, "statCode": "SG9LGnpB"}, {"inc": 0.553626360010167, "statCode": "52dX6bST"}, {"inc": 0.9752900768304485, "statCode": "liHJyCq9"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'YANgZ6tM' \
    --body '[{"statCode": "Mi5PlO2c"}, {"statCode": "oveThauN"}, {"statCode": "CaVGOOFj"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Vf6HaRwr' \
    --userId '0P2mmJeB' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '5I6SPwiU' \
    --userId 'C7GXV7QE' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wl4l3r8N' \
    --userId 'tPgUxc73' \
    --body '{"inc": 0.23213409543204266}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'SQ8B6LvE' \
    --userId 'uRfuNSlt' \
    --additionalKey 'vZZdbn0E' \
    --body '{"additionalData": {"m8QzJZwU": {}, "wTsScFUk": {}, "KkndfaLl": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '12' \
    --statCodes 'f4YpI7iD' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hs7Smc5K' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '12' \
    --name 'e89xxbmX' \
    --offset '42' \
    --sortBy 'sELFdTHe' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ASNyWr8o", "db0dPzCC", "Hp4hD8zU"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'ZnnUFt7E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FJvj4aEu' \
    --userIds 'kn8f0a0G' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9570759558691588, "statCode": "XkFUvLXN", "userId": "aU1RhsBA"}, {"inc": 0.41559790314616474, "statCode": "p6W9k0IZ", "userId": "g2x84ESe"}, {"inc": 0.42430283507284294, "statCode": "fLZinT2p", "userId": "s5EdQL1O"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.28180823946547384, "statCode": "2z51ipza", "userId": "5cvXcAlF"}, {"inc": 0.8170132303933421, "statCode": "HOweB6fe", "userId": "QzOUJYnT"}, {"inc": 0.5502548493685315, "statCode": "a4dNuFZG", "userId": "31vKEnT8"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "9qSVOxbE", "userId": "w1sN3Jjz"}, {"statCode": "L3kyLPEL", "userId": "gLg797VH"}, {"statCode": "hPCrTk9e", "userId": "DWdVFCIx"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["0oyDXUuT", "6nvacg1s", "kyAljSqT"], "defaultValue": 0.6287901770208525, "description": "IXPh1PK3", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.0580397939146613, "minimum": 0.7766738873220159, "name": "OljKIHZL", "setAsGlobal": true, "setBy": "SERVER", "statCode": "SvHkcVYu", "tags": ["ILkh3wZq", "LtBBAsBU", "u1q5v6rg"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'bJ673sHL' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '31' \
    --sortBy 'mTFygNJ6' \
    --statCodes '["u3oFXBX1", "OVe7prDc", "0yZrdVeX"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '58' \
    --sortBy '1aFZZ9av' \
    --statCodes '["gh5IKaJE", "fM1eFkzA", "HYGCZAME"]' \
    --tags '["TVjoruys", "kuagU0XU", "wLMFNThS"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'lBgqmX9j' \
    --statCodes '["RI9VQpHM", "SxxQ6zbg", "1wKDWUrv"]' \
    --tags '["042F9gaE", "IRvftnI6", "lZB9IMeh"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'UGQzrZVp' \
    --namespace $AB_NAMESPACE \
    --userId 'JKcsConG' \
    --limit '51' \
    --offset '19' \
    --sortBy 'Vm1X0yCK' \
    --statCodes 'qMiGrRKA' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ZSXNapy4' \
    --limit '78' \
    --offset '100' \
    --sortBy 'MlcQCtlb' \
    --statCodes '85XayfpZ' \
    --tags '7sJu3PU9' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9TLnJOdX' \
    --body '[{"statCode": "t8qBm6sc"}, {"statCode": "veUU8O2H"}, {"statCode": "6KjqAPWt"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'UjzU1EH9' \
    --additionalKey '3o9Rsc6A' \
    --statCodes '["GxUpcyW3", "69qmi7Em", "vXy3RdB0"]' \
    --tags '["zobzaCg5", "EWbfpcJN", "0mZuR1nj"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'efUDwP7v' \
    --body '[{"inc": 0.5569773006989378, "statCode": "29tzfhYp"}, {"inc": 0.5616958146260063, "statCode": "gj1gNkKO"}, {"inc": 0.6698739907096926, "statCode": "nKvaaiNR"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'D6VpM2IO' \
    --body '[{"inc": 0.7862293525634702, "statCode": "DthfZL1u"}, {"inc": 0.9979407574837118, "statCode": "uzYv3cZC"}, {"inc": 0.029590729736162613, "statCode": "7IV067J1"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'IhIQn9ZW' \
    --body '[{"statCode": "vm7XW6RJ"}, {"statCode": "0LM0NQxM"}, {"statCode": "ycLCDM7k"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '5R6gS1jK' \
    --userId '9g2yGfaJ' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'JHIKf2Z4' \
    --userId 'KwqsodnR' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'dVNkKhM6' \
    --userId 'XMlTpGR1' \
    --body '{"inc": 0.5699419498308136}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'BzHYX7tb' \
    --userId 'hgfgRsbU' \
    --body '{"inc": 0.39719581870392917}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ZVvzn0uF' \
    --userId 'DV9Jp9Bq' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"CgSHS9Kd": {}, "OXJgdbFE": {}, "nWFk9cUv": {}}, "additionalKey": "XVMOFSUx", "statCode": "ZIgb0nex", "updateStrategy": "MIN", "userId": "Pla5e7T5", "value": 0.7002633352052057}, {"additionalData": {"rMcSaQhW": {}, "uam2iW8k": {}, "xeIudOe7": {}}, "additionalKey": "w5BaNEac", "statCode": "hJyPlrZz", "updateStrategy": "MAX", "userId": "dsmppC4n", "value": 0.3564571628753894}, {"additionalData": {"RJ7cUau0": {}, "gQuIqN37": {}, "Ly5KkEWq": {}}, "additionalKey": "0LJbyR5w", "statCode": "YyF4Qq8w", "updateStrategy": "MAX", "userId": "BKkcj5hP", "value": 0.1804511638213202}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'yOp5GJk8' \
    --statCode 'BwLuaWUn' \
    --userIds '["h7jcRtvP", "KUeGNuuC", "sUFsNOZk"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jA2bNLyP' \
    --additionalKey '9ba0E2GZ' \
    --statCodes '["zN6ZEx7R", "ZmHMVj1f", "Ap6OeLHZ"]' \
    --tags '["faDESCAn", "7vZFAizH", "T3ZuyeBD"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'IxW3OKij' \
    --additionalKey 'dPDJNdyo' \
    --body '[{"additionalData": {"aPc9wEAP": {}, "t25lmaE0": {}, "Q1qtK3DL": {}}, "statCode": "BHvAgFbV", "updateStrategy": "OVERRIDE", "value": 0.24419102374181034}, {"additionalData": {"xglcCcB9": {}, "73KYsCmb": {}, "cTdahT8u": {}}, "statCode": "78QNzXD9", "updateStrategy": "OVERRIDE", "value": 0.23714616892160256}, {"additionalData": {"V7M9Uvk9": {}, "Sjev3AN3": {}, "bQGJ4KOW": {}}, "statCode": "AHJsdFBV", "updateStrategy": "MIN", "value": 0.2882538086769503}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'g3SFQqjL' \
    --additionalKey 'IgelH9zL' \
    --body '{"statCodes": ["U1cFX9td", "7tcapulV", "LDjjphar"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'A7BdyMmj' \
    --additionalKey '8jBttDKT' \
    --body '[{"additionalData": {"RGrMYBT0": {}, "cpszFwbv": {}, "aP1vjmyX": {}}, "statCode": "vai6Km6r"}, {"additionalData": {"i2fD4IlD": {}, "oFiBvZ2m": {}, "8Qo1QFfa": {}}, "statCode": "3eGpIlTx"}, {"additionalData": {"93a4XUwA": {}, "Dmu51HPB": {}, "wuIidRKM": {}}, "statCode": "ALwUYEaZ"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'MXgeUm6X' \
    --userId 'lVbWvRKq' \
    --additionalKey 'IcpQXPfS' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '2K27q7zT' \
    --userId '1Ybsw2Dy' \
    --additionalKey 'vYAqz4z1' \
    --body '{"additionalData": {"ZcowOzbr": {}, "0odk1ugk": {}, "LJGJhkC7": {}}, "updateStrategy": "INCREMENT", "value": 0.2424281138415425}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"hekYaLHl": {}, "wRkspTFS": {}, "0cggXUWL": {}}, "additionalKey": "qor3ZrVx", "statCode": "FKjxywyT", "updateStrategy": "INCREMENT", "userId": "jn4rqfiC", "value": 0.18812394545003364}, {"additionalData": {"aAFuSMY3": {}, "86Vi847U": {}, "tQTqQZD2": {}}, "additionalKey": "3qKLWvS2", "statCode": "2v7Rbd83", "updateStrategy": "MIN", "userId": "stDV8L4M", "value": 0.8193876187398774}, {"additionalData": {"CnG5dbvm": {}, "ApMf2OUT": {}, "RDsniS14": {}}, "additionalKey": "qsAQwvF8", "statCode": "y9dIGnoT", "updateStrategy": "MIN", "userId": "BDjsnPk1", "value": 0.15129562345729064}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '3jmMg57Q' \
    --additionalKey 'p9aCSLbf' \
    --statCodes '["w8Pmog6G", "L40sAIwb", "N6DRbwTB"]' \
    --tags '["BkbJ9hqE", "5HCGj1fF", "c0N1R4f2"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'AQNulSFJ' \
    --additionalKey 'iw3Bp5rL' \
    --body '[{"additionalData": {"DfhNT7Bk": {}, "OpGGGhWM": {}, "eAN5Lcn0": {}}, "statCode": "euKPVUtk", "updateStrategy": "OVERRIDE", "value": 0.3045212810817808}, {"additionalData": {"XsxfuxZp": {}, "uWzX5Ukw": {}, "hZzZs6pu": {}}, "statCode": "P4Rde91A", "updateStrategy": "INCREMENT", "value": 0.5042023011695016}, {"additionalData": {"vcUP6rnm": {}, "jAQ80D85": {}, "tODclJxN": {}}, "statCode": "1j2RxDxs", "updateStrategy": "INCREMENT", "value": 0.3703624643484279}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'G0F9DKHg' \
    --userId 'oHqf0lq8' \
    --additionalKey '0Dqm2YuJ' \
    --body '{"additionalData": {"44hPch0R": {}, "BCgEq6FM": {}, "apgV9zRc": {}}, "updateStrategy": "MIN", "value": 0.512898921404829}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE