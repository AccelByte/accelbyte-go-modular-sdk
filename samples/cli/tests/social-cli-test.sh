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
    --limit '28' \
    --offset '96' \
    --statCodes 'pwQZ5OrZ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'b7Ou8ago' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '79' \
    --name 'ITqlpBqb' \
    --offset '81' \
    --sortBy 'lAByqDkg' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "y2APdTuJ", "end": "1991-01-30T00:00:00Z", "id": "LEevk2jV", "name": "5yWSdYIt", "resetDate": 24, "resetDay": 43, "resetMonth": 3, "resetTime": "u8Ki4tf0", "seasonPeriod": 6, "start": "1981-04-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["k8OzGLnZ", "Wk7fRIWK", "y2ELjFMc"]}' \
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
    --cycleId '7SkYfe4m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'QWmQcqTZ' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "M4BYDC59", "end": "1976-04-14T00:00:00Z", "name": "9ZZ1SMBu", "resetDate": 51, "resetDay": 20, "resetMonth": 15, "resetTime": "9zjQZgLV", "seasonPeriod": 72, "start": "1985-02-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'U6EBO5Jp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'MOMXvaYa' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["3g5EHGqT", "OO4YI1yM", "XBHk21Kl"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'KBM9NbCP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4TuUIHQc' \
    --userIds 'Xd9Aulvp' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.17134045816111698, "statCode": "LqeXZc3T", "userId": "qXMurBPS"}, {"inc": 0.4856802004443741, "statCode": "Fp2ofj1u", "userId": "0l4drZby"}, {"inc": 0.1976694291805171, "statCode": "ZrtD8Pwx", "userId": "olQ9hS5y"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.10988217596880412, "statCode": "xHz2nJwf", "userId": "FBiI1THQ"}, {"inc": 0.8328521516464719, "statCode": "iEoc3wNH", "userId": "YOdr2I2a"}, {"inc": 0.32791667068755637, "statCode": "d4n0yS6e", "userId": "UnnEQdCi"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'EYrKTVph' \
    --userIds '["3GEfZ1Hi", "WXO5QGvE", "KdJOXzFq"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "OIr1EDpe", "userId": "jx6TuDXG"}, {"statCode": "VuZwFxzf", "userId": "bmGDI99L"}, {"statCode": "4Pnv543h", "userId": "QWlAWgDG"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'FOEwk0KO' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '29' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["LOhBO1EC", "R0V2Htwg", "F8a7cyjj"], "cycleOverrides": [{"cycleId": "kVUTDdGb", "maximum": 0.02680847906741779, "minimum": 0.9413962415006487}, {"cycleId": "wBbZcJ9r", "maximum": 0.1617820545704628, "minimum": 0.8332916894443568}, {"cycleId": "T8kggUVi", "maximum": 0.6237004428318585, "minimum": 0.525449060641314}], "defaultValue": 0.7983488614256267, "description": "yXRrnGRd", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.7605989303915297, "minimum": 0.8515151545748577, "name": "vlOS4zA4", "setAsGlobal": false, "setBy": "SERVER", "statCode": "yBGsByCQ", "tags": ["tfapOMiU", "hSDVIZgy", "R6MfIk0S"], "visibility": "SERVERONLY"}' \
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
    --limit '55' \
    --offset '70' \
    --keyword 'A5ixtOhb' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '5SeulcKY' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'T5TPYlDn' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'VCiz3hZL' \
    --body '{"capCycleOverride": false, "cycleIds": ["fScEF2Uw", "jwS2EcbY", "Ap7P0CKv"], "cycleOverrides": [{"cycleId": "Kv4Cm1kc", "maximum": 0.6373453429028254, "minimum": 0.01442983886144178}, {"cycleId": "3vNDHjqa", "maximum": 0.9079596478318226, "minimum": 0.9117880823777907}, {"cycleId": "81nITaNw", "maximum": 0.6868104401451138, "minimum": 0.9303833699822881}], "defaultValue": 0.32949049676164754, "description": "BgMnZAVt", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "CEbW1fuI", "tags": ["ddwSCvhk", "lo3acUMb", "yFbDsPKz"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'bj2pYUaO' \
    --limit '23' \
    --offset '59' \
    --sortBy 'O7RdJT3Y' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'y7MCx1nA' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'vSen8qb2' \
    --namespace $AB_NAMESPACE \
    --userId 'H10VfMyn' \
    --isPublic 'true' \
    --limit '46' \
    --offset '19' \
    --sortBy '2mVdfJqs' \
    --statCodes 'T47caMF5' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SgVvCir5' \
    --isPublic 'false' \
    --limit '65' \
    --offset '100' \
    --sortBy 'MZAlkOYg' \
    --statCodes 'mzf8AIU6' \
    --tags 'f7cEWDG7' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'BM2nzTbw' \
    --body '[{"statCode": "E7ISerKP"}, {"statCode": "LpUrb2PE"}, {"statCode": "ZuYismbp"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'BPYrVA28' \
    --body '[{"inc": 0.16777208808045396, "statCode": "NfoY3YGz"}, {"inc": 0.5381425020845728, "statCode": "917FID9G"}, {"inc": 0.23108844480410184, "statCode": "nNVorkWx"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'kNbULax9' \
    --body '[{"inc": 0.413761754942356, "statCode": "nSkx6rPA"}, {"inc": 0.09659140785624931, "statCode": "MN85Qlj2"}, {"inc": 0.07977722733747528, "statCode": "ALvpKLN5"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'WHCEkY3g' \
    --body '[{"statCode": "e2IRHKuX"}, {"statCode": "oXv1zbJ4"}, {"statCode": "Gc5Cg8LD"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4G2E9qHg' \
    --userId 'MbYoS0Zj' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'TedMwu0C' \
    --userId 'cXLnldmp' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'QxNb0L5Z' \
    --userId '0Mye799d' \
    --body '{"inc": 0.01528507560402903}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fqJ0iSvP' \
    --userId 'OxQbfFEx' \
    --additionalKey 'ckdhvP5m' \
    --body '{"additionalData": {"YA46kOeO": {}, "cru4v3ti": {}, "q8iSRnxk": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '97' \
    --statCodes 'vJjnULkm' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '8BZ7ShDS' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '61' \
    --name 'ibtSGXKk' \
    --offset '55' \
    --sortBy 'tdRHGSYy' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["U4o0JsBM", "B8ypVNRF", "NknQ0PEK"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'i21TSTvi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'XRbc6dma' \
    --userIds 'Jii19DEt' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5687080892912887, "statCode": "XohSr40I", "userId": "yod9O2Gy"}, {"inc": 0.3324302285506856, "statCode": "VHiDiarZ", "userId": "xVbpIPua"}, {"inc": 0.6869728744955399, "statCode": "mSQklCJ4", "userId": "HRHteiTg"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.21504072269474694, "statCode": "y4nChZgg", "userId": "eTOog7yG"}, {"inc": 0.8424313504681087, "statCode": "lq3hmHAx", "userId": "yVZXdluS"}, {"inc": 0.44384654712364313, "statCode": "sCnmXAHZ", "userId": "QOJ1BJvp"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Q8STQUIE", "userId": "dIzv2CXY"}, {"statCode": "Lz9Xin80", "userId": "jXY0cRdP"}, {"statCode": "qjoykdJA", "userId": "pPQGlaNz"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["xuVu7xMx", "gaEUolPj", "7wSxiSQL"], "cycleOverrides": [{"cycleId": "f2DAZE3E", "maximum": 0.6618238946809515, "minimum": 0.02701684831031681}, {"cycleId": "QVAiI8Gn", "maximum": 0.8419920006283906, "minimum": 0.6030646824314743}, {"cycleId": "GuxHDVuF", "maximum": 0.30182920591336315, "minimum": 0.46393738371082627}], "defaultValue": 0.169194479452069, "description": "i9XfX5HC", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.50145243769768, "minimum": 0.8855229089926562, "name": "i6mZzFFz", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "pJnhUrm4", "tags": ["3Tz2ESo4", "YhLHDUwP", "8wRpvyAU"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'QPQZUXXy' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '23' \
    --sortBy 'xKpZ7PI6' \
    --statCodes '["C386UlMd", "La1K1Hgu", "Ol3qrjcn"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '79' \
    --sortBy 'HiS8tyPH' \
    --statCodes '["eURNqlMX", "TfdUpZcA", "5v6y7Uxu"]' \
    --tags '["475xMqpC", "Q1BPUxTL", "QMhJu6BG"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'e7Wn2YUm' \
    --statCodes '["m3qHCA1m", "puiFJr1S", "yGJGsmdi"]' \
    --tags '["aQfEvEoG", "byWwnM1Q", "VAIBBBuS"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'zGbOfBFZ' \
    --namespace $AB_NAMESPACE \
    --userId 'nzvsHLYg' \
    --limit '9' \
    --offset '13' \
    --sortBy 'yxrIC3kO' \
    --statCodes '2LSfkldr' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'uSfSzufU' \
    --limit '49' \
    --offset '23' \
    --sortBy 'HrkzB7Kg' \
    --statCodes 'rs8i4S6T' \
    --tags 'M3ixv14U' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'GuVkBmMu' \
    --body '[{"statCode": "cJBVLpBM"}, {"statCode": "w64Wnd90"}, {"statCode": "NlTHK9RJ"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'uMvSQBwX' \
    --additionalKey 'd6K1nW8t' \
    --statCodes '["PoHmf3Fw", "PdvCPNoM", "f8oWZW7y"]' \
    --tags '["0LGp4tW0", "i059JKiv", "ZnGaionk"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'JcsuduVZ' \
    --body '[{"inc": 0.27588818891569145, "statCode": "UCVYBmZ6"}, {"inc": 0.0037756987442387757, "statCode": "oZiAU2G6"}, {"inc": 0.3905748078735397, "statCode": "xpWlUQJl"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'WtcYfmwR' \
    --body '[{"inc": 0.2781034935840748, "statCode": "vAG7Jxhv"}, {"inc": 0.015537378725801632, "statCode": "aFaqdzt9"}, {"inc": 0.3246593647521795, "statCode": "pNcshoUP"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'AgciwVEL' \
    --body '[{"statCode": "kjhqmHse"}, {"statCode": "WwwG5CoO"}, {"statCode": "hySTJEDh"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'jYVp9qkp' \
    --userId 'blYwp4zj' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 't6p0X18q' \
    --userId 'fzT6ZvoJ' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4U64oyBK' \
    --userId 'VvWIyhEm' \
    --body '{"inc": 0.9666001649551391}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7iFY4HkW' \
    --userId 'oZZRQvCA' \
    --body '{"inc": 0.2985114777411172}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '5EiFnDqN' \
    --userId 'o9y6ablb' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"GoxCYM2U": {}, "eEQ8Cc2W": {}, "iSeROCO5": {}}, "additionalKey": "WCAjhFJM", "statCode": "gCavVdne", "updateStrategy": "INCREMENT", "userId": "eZTesRYG", "value": 0.44081790272242904}, {"additionalData": {"jRwGbctM": {}, "IFTcw75u": {}, "vDQC20TB": {}}, "additionalKey": "5OT0M6E0", "statCode": "ddDJWgwp", "updateStrategy": "MAX", "userId": "Ifvv5Fhe", "value": 0.42946008801010593}, {"additionalData": {"IlCff836": {}, "ZEZR97GS": {}, "pAK3fZJR": {}}, "additionalKey": "l45QLya8", "statCode": "p361Nz18", "updateStrategy": "INCREMENT", "userId": "4kzBWvja", "value": 0.04267168903323271}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'khpBBynu' \
    --statCode 'VzRO1RSa' \
    --userIds '["prNQnvZA", "prsV8ubM", "N0dZkKEY"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'uo2VRFOx' \
    --additionalKey 'uvh7qKh2' \
    --statCodes '["DujTyuvJ", "isJ3bjUt", "ydq1hk71"]' \
    --tags '["faB2ioVF", "YzyihDHF", "Rk7eTC3F"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'ReE0RRjL' \
    --additionalKey 'ZguNdZ9Q' \
    --body '[{"additionalData": {"WuGC9wTw": {}, "ELCPyeyD": {}, "9CsJr9Su": {}}, "statCode": "dOVrzc7r", "updateStrategy": "INCREMENT", "value": 0.6480708811661476}, {"additionalData": {"yt3hAyHa": {}, "Zj8sBH5f": {}, "c3Zq9T0c": {}}, "statCode": "TR99WSbr", "updateStrategy": "OVERRIDE", "value": 0.21124600831236617}, {"additionalData": {"mjB4Bbpu": {}, "G3oaRcll": {}, "HA7OfFOL": {}}, "statCode": "XF43aR2W", "updateStrategy": "OVERRIDE", "value": 0.9725400146450796}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'OsToe3KZ' \
    --additionalKey 'KbPmNOTV' \
    --body '{"statCodes": ["mhaxu6Wh", "JAmNEqCP", "CYvvyJd2"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'dNJXL2TD' \
    --additionalKey 'TYbiH9C6' \
    --body '[{"additionalData": {"6NDcbwFk": {}, "si2745h2": {}, "6RK4RPrc": {}}, "statCode": "VRhFg311"}, {"additionalData": {"hyqK9r2p": {}, "dBwgPizL": {}, "98uwWo5U": {}}, "statCode": "bsAgRDYj"}, {"additionalData": {"2HcEgLrr": {}, "AuIYYGZu": {}, "qs1ecQoF": {}}, "statCode": "6pR09oho"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'WHmTMSGC' \
    --userId '9cm5kWkE' \
    --additionalKey 'mkGyysqk' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'twbz80mw' \
    --userId 'Lmh8NOaX' \
    --additionalKey 'v9xDkiie' \
    --body '{"additionalData": {"EydRdrAq": {}, "aQOh0F9x": {}, "3lrvn6Km": {}}, "updateStrategy": "INCREMENT", "value": 0.8715912460861599}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"EyvscsMK": {}, "T7kDJNor": {}, "WQKo7ehE": {}}, "additionalKey": "I8CTE8Dw", "statCode": "yC2pHIGz", "updateStrategy": "MAX", "userId": "0T6NJ0TZ", "value": 0.020339831462764968}, {"additionalData": {"JIhxuTQ8": {}, "TxDGLAlX": {}, "zVlVEcGl": {}}, "additionalKey": "oiGApEsh", "statCode": "jcJxv96A", "updateStrategy": "MIN", "userId": "sZeOwJx3", "value": 0.5893646631002359}, {"additionalData": {"pnzvFfYM": {}, "r2sBrB1T": {}, "TarfwLDE": {}}, "additionalKey": "gDLlrFQv", "statCode": "P8IbuIMT", "updateStrategy": "MIN", "userId": "DdUbIaYl", "value": 0.15325211552018236}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'XNzh27W5' \
    --additionalKey 'nSXkVG64' \
    --statCodes '["vPjGwRzR", "J5ZAqf7D", "Zea1gBQ2"]' \
    --tags '["uHkk6QVW", "nGP6CJS3", "KmxoHxU6"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'NVc6j2Ti' \
    --additionalKey 'xJlq6C0W' \
    --body '[{"additionalData": {"XYnpzc14": {}, "Zygpvqjf": {}, "vyVbgfMe": {}}, "statCode": "TDuTFo11", "updateStrategy": "INCREMENT", "value": 0.6936366950226688}, {"additionalData": {"lRvzVw2A": {}, "GIWQFW3W": {}, "4ohfCCug": {}}, "statCode": "fiVNdpug", "updateStrategy": "INCREMENT", "value": 0.6716797404996332}, {"additionalData": {"WMjyyfxi": {}, "00oRaAdV": {}, "jhnILVie": {}}, "statCode": "NGPhJnf1", "updateStrategy": "MAX", "value": 0.16155901902262326}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Z95MBohU' \
    --userId 'L9AuJCMA' \
    --additionalKey 'CwPToGS6' \
    --body '{"additionalData": {"ooh3m2fK": {}, "S46dxZFI": {}, "xiHW43sn": {}}, "updateStrategy": "MIN", "value": 0.9954403744617892}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE