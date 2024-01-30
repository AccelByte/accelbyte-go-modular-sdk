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
    --userId 'DegbHSk7' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gufJWmle' \
    --userId '2LqYZQ7N' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["WFejvtPq", "hHyuZs2p", "LBlhIYrm"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'CMSW02K3' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'ISbKTBkW' \
    --body '{"achievements": ["h16ADmUM", "3etvqk3i", "hbb14yF9"], "attributes": {"hHm8dbtL": "myJ6siB8", "byV4Jrkj": "o19fvFqU", "Xsd2uCYU": "NSEGxYNB"}, "avatarUrl": "fGjSsxuo", "inventories": ["mJllXeft", "EBSEpyn1", "FRyshtWf"], "label": "EYVtVbd3", "profileName": "bcTL4IKO", "statistics": ["G2z14EDu", "NJrCYqxd", "a4QUsssq"], "tags": ["IyFRg1e6", "KYIgTiU8", "aYcn9Wpi"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'LEdgJooj' \
    --userId 'Pv3CmOeN' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'WrChB3Ah' \
    --userId 'CC6ZTuf0' \
    --body '{"achievements": ["PjoMOQvY", "2mCln2bz", "WNb31yEL"], "attributes": {"3IvjHWg9": "ZBZFfigT", "TN86pwef": "P2TDYrU2", "DdNbKuaQ": "XTeGfBDT"}, "avatarUrl": "NhnnWbiX", "inventories": ["sNZJDd4H", "lBDDVMcT", "1XpO33m6"], "label": "KTvdTlDv", "profileName": "i0kzpIjq", "statistics": ["J1AIFRFO", "KZkD0IAJ", "fRH1eRMo"], "tags": ["mX3YjSPk", "qvK6cKgZ", "4QmVmo29"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'peUzR789' \
    --userId 'NihwDKMw' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'OMqxvhm9' \
    --namespace $AB_NAMESPACE \
    --profileId 'O0S2ADJV' \
    --userId 'fK8RwZPI' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'gSGUcdrK' \
    --namespace $AB_NAMESPACE \
    --profileId 'ElobQTIA' \
    --userId 'h2UCmeR1' \
    --body '{"name": "bRAWeegx", "value": "LYLmJBxS"}' \
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
    --limit '97' \
    --offset '65' \
    --statCodes '4qkOlqKJ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '9WMeVR3t' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '32' \
    --name 'mvH3R8b2' \
    --offset '16' \
    --sortBy 'ZjodEakm' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "lA9QDXGg", "end": "1976-07-31T00:00:00Z", "name": "anSnStTm", "resetDate": 29, "resetDay": 36, "resetMonth": 34, "resetTime": "iPfD1Az8", "seasonPeriod": 98, "start": "1971-02-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["9ZeMHzeD", "AhyX3mGm", "zHRvuzYa"]}' \
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
    --cycleId 'a77UQd4v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'QQT0RTi9' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "ZvUXohLj", "end": "1998-10-29T00:00:00Z", "name": "0yKJtnPR", "resetDate": 25, "resetDay": 80, "resetMonth": 12, "resetTime": "Qw2sdWTx", "seasonPeriod": 86, "start": "1980-03-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'i9Q2xTob' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'sx9mCvDa' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["SrDuxaED", "xBRXFzNV", "szRB5gGt"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '1A7u2KWe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'gcV1o26u' \
    --userIds 'GBDR8fRD' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.14182108735064203, "statCode": "BDdB4VV6", "userId": "mCiIhFPV"}, {"inc": 0.9112353499409296, "statCode": "Oh3kLNMO", "userId": "Nfb4iNDx"}, {"inc": 0.22947110721089048, "statCode": "zruhcGrS", "userId": "hozRyvL9"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9261467905150214, "statCode": "0AdU6Iyj", "userId": "iPMHq2op"}, {"inc": 0.7170201685223082, "statCode": "Oia8mKAN", "userId": "8o0vBRql"}, {"inc": 0.006582987878311686, "statCode": "3yPjtjtm", "userId": "nueDKXlI"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AGHeFDVF' \
    --userIds '["Sg9EZE3J", "eYuAebRo", "58WYOxvH"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "bwqsHKx7", "userId": "nn9vD3kS"}, {"statCode": "EEn44qqj", "userId": "LkrT4M75"}, {"statCode": "cBqGj9vX", "userId": "Mbrs6ZaN"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'ipItVWco' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '88' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["F2h4u47c", "JmuTfSP7", "CHSgMaDw"], "defaultValue": 0.9610643575755962, "description": "eCYyiMqb", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.5673575107291468, "minimum": 0.25576357749270473, "name": "hKNH3h4h", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "FGDpEkXx", "tags": ["btfC4Zi5", "ZbkyqWsK", "Rz43SQlM"]}' \
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
    --isPublic 'false' \
    --limit '79' \
    --offset '75' \
    --keyword 'zZBez5Ho' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ovtLizYI' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'h19cO4qv' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QtkoGmpj' \
    --body '{"cycleIds": ["kdMy9fG3", "bnqSfNiN", "Fg4lfQJX"], "defaultValue": 0.8258864648526792, "description": "r99kD4rT", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "gQMY92e8", "tags": ["VPJyYc29", "QEhGBWIK", "DTwrLeA6"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'pBUKOxA9' \
    --limit '59' \
    --offset '12' \
    --sortBy 'iPaDbGPc' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'yssvYSm3' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'm15pmqW1' \
    --namespace $AB_NAMESPACE \
    --userId 'HU5Fmqtz' \
    --isPublic 'false' \
    --limit '85' \
    --offset '50' \
    --sortBy 'saAWcCgP' \
    --statCodes 'sSgws1aT' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7iU4eRfy' \
    --isPublic 'false' \
    --limit '39' \
    --offset '95' \
    --sortBy '9TpZUctg' \
    --statCodes 'Mh5YIM4I' \
    --tags 'EXizthI6' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xFKB0vxJ' \
    --body '[{"statCode": "tndXA0D0"}, {"statCode": "kjZYMD1M"}, {"statCode": "RPsCZosu"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'mYrpTEQr' \
    --body '[{"inc": 0.2667559966650598, "statCode": "xaPFo2Ud"}, {"inc": 0.65543075777632, "statCode": "4DICFPnm"}, {"inc": 0.4475751650548049, "statCode": "nVlWvS2K"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'TXfuRKcU' \
    --body '[{"inc": 0.22789961669505898, "statCode": "SluMIk7m"}, {"inc": 0.5913154014725102, "statCode": "3JZDCXQ5"}, {"inc": 0.8220413996914746, "statCode": "UfmBnfAn"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'lLeemS9i' \
    --body '[{"statCode": "cVRLZkrn"}, {"statCode": "eGSxlp1Z"}, {"statCode": "ckqVQ0WP"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ux5T96ii' \
    --userId 'FSmEOpBv' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'bzLZZtr7' \
    --userId '5jwTtj4Z' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'UrO1X0Q7' \
    --userId '2ByRLFz3' \
    --body '{"inc": 0.5829372073328196}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '8t6wadRc' \
    --userId 'NPc0JgTZ' \
    --additionalKey 'V5Urtqow' \
    --body '{"additionalData": {"GO1YMLIc": {}, "T5RyVif4": {}, "Z0VBxyEk": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '10' \
    --statCodes 'ZiFbIctw' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'VdO642Uy' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '43' \
    --name 'KWYog8q7' \
    --offset '29' \
    --sortBy 'QhvCeJdw' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["pVJYPttG", "F1TXtZuY", "j7KVvOdh"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '3kcUgtk1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FomntvKU' \
    --userIds 'A2iKatKY' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.47750271701919256, "statCode": "D7lfYF3j", "userId": "2u178Jch"}, {"inc": 0.04191903854862311, "statCode": "aITaHFwE", "userId": "5ao4PVUF"}, {"inc": 0.12379363883941175, "statCode": "qZZSl1qI", "userId": "pHJClmR0"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6260631205164323, "statCode": "9EaoUHE0", "userId": "Pd6k9wBZ"}, {"inc": 0.27266744687109123, "statCode": "VNy349B1", "userId": "cW8mPDAd"}, {"inc": 0.6651518082421499, "statCode": "jaR3iKft", "userId": "GyR6hxKl"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "SsvzKuDB", "userId": "FXhaNqzD"}, {"statCode": "ZJpqA7Cg", "userId": "oCInIsBd"}, {"statCode": "XKDoe6yA", "userId": "RT2E0mBt"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["57mL6h0W", "m2nPJvSx", "DnpkOi6L"], "defaultValue": 0.11576323486875495, "description": "gxZIaGzK", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.5952767394977454, "minimum": 0.2680875039388777, "name": "tHpVKvHh", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "d51dqmiR", "tags": ["rvKoIG0W", "AWP7iQGo", "Xxploycx"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'hDJPi0Bc' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '11' \
    --sortBy 'K0xtUn9p' \
    --statCodes '["dDTgYxRZ", "ngKPzRmD", "3m9t59ks"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '34' \
    --sortBy 'Sd406maI' \
    --statCodes '["92u6XssZ", "zqcJjceJ", "LUDg9NsD"]' \
    --tags '["i4oU5UPS", "ya4wEAD4", "sE553ts5"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'jrKszaz0' \
    --statCodes '["kJIluNIA", "m5KNX9wr", "vEtHXqlU"]' \
    --tags '["70I5zZXj", "EzSodOGM", "yezQcvL6"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'O23sLVUC' \
    --namespace $AB_NAMESPACE \
    --userId 'Wrd3ZFzg' \
    --limit '10' \
    --offset '59' \
    --sortBy 'KfGHjswO' \
    --statCodes 'n934Gkb9' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OodaWIHx' \
    --limit '60' \
    --offset '88' \
    --sortBy 'MSFGPbvd' \
    --statCodes 'kcdgt0xv' \
    --tags 'vlMIUF9J' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'HsCyFmo0' \
    --body '[{"statCode": "wKEetruX"}, {"statCode": "zXXhM9pd"}, {"statCode": "GDgns3ZB"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Tscj0Eyb' \
    --additionalKey 'd3gAfdzh' \
    --statCodes '["wBlgDUVb", "N6GiovZ9", "ZM9ilyZ4"]' \
    --tags '["lmlaC6gT", "0vMRFEaZ", "Jnzy5KvD"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'DobvTSWX' \
    --body '[{"inc": 0.2731569970421288, "statCode": "j8Jpet5G"}, {"inc": 0.8464597616868272, "statCode": "YSne5EsC"}, {"inc": 0.05045895512969134, "statCode": "xwNCYgpq"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'bTjtxKG4' \
    --body '[{"inc": 0.019648862739921946, "statCode": "ZZ5TSd5w"}, {"inc": 0.7311326714964396, "statCode": "Z4CtkjCK"}, {"inc": 0.8176045135812221, "statCode": "Iv6G2Oq1"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'WJE4cYe8' \
    --body '[{"statCode": "qXtLc4iu"}, {"statCode": "yFuNGkDk"}, {"statCode": "kBL2A2yL"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'kCXcxlfX' \
    --userId 'fkG88Usc' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'JFOoUwuQ' \
    --userId 'cXkH3HrC' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'D69GuaHj' \
    --userId 'm2PjfeRc' \
    --body '{"inc": 0.8499717536729332}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rnNeP8qI' \
    --userId '9bDu840h' \
    --body '{"inc": 0.9958057045758852}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xfffpd9A' \
    --userId 'z5uaa2at' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"bU1gdtcP": {}, "75piC44C": {}, "f7vGEFT6": {}}, "additionalKey": "OFNcpT6V", "statCode": "gc5RSPhA", "updateStrategy": "MAX", "userId": "5q49FuiK", "value": 0.0034843634350749664}, {"additionalData": {"PBGC0aG8": {}, "vQ3epnQo": {}, "JPSU8SgR": {}}, "additionalKey": "LWoiOV0l", "statCode": "nY0tYado", "updateStrategy": "MAX", "userId": "n8fLVkJ9", "value": 0.8361078334944828}, {"additionalData": {"pDcNbYz9": {}, "aeIm1X9d": {}, "YmfXKOx5": {}}, "additionalKey": "qgDsXdgZ", "statCode": "2MIUZndq", "updateStrategy": "INCREMENT", "userId": "H087BZHT", "value": 0.8078326200332542}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'SyzljSrY' \
    --statCode 'jJXoQk81' \
    --userIds '["ITsT82HK", "JvxQja48", "75LrNngF"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'MoqbMZI8' \
    --additionalKey 'FxEWjb1u' \
    --statCodes '["kBIhA8S2", "cGpRI90p", "9zAGsjId"]' \
    --tags '["nw4UfRF9", "nhGb42Un", "TLyQPfIQ"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'zV45isZp' \
    --additionalKey 'FNJJTX7h' \
    --body '[{"additionalData": {"gQNwayEf": {}, "kHLtyRis": {}, "0znBrB1c": {}}, "statCode": "Abbca9Rt", "updateStrategy": "MAX", "value": 0.5310194449864881}, {"additionalData": {"tp3s2ZZ5": {}, "DcZOFxRG": {}, "L3f5Wz7M": {}}, "statCode": "Qnbi4d8o", "updateStrategy": "OVERRIDE", "value": 0.9305201798932085}, {"additionalData": {"NCIuSPGq": {}, "ZkDQlMmf": {}, "GsBVwmRc": {}}, "statCode": "eSpkH57B", "updateStrategy": "OVERRIDE", "value": 0.6943036238781946}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'o7aXhRwM' \
    --additionalKey 'a0TEaPiV' \
    --body '[{"additionalData": {"hggvbFuk": {}, "E2m1Dkus": {}, "HgvpmMCa": {}}, "statCode": "pqWW8jVm"}, {"additionalData": {"TrBHF4bm": {}, "HiOXtJNq": {}, "prQxE70g": {}}, "statCode": "nqIDrJPu"}, {"additionalData": {"xS2Rcr22": {}, "0OSTfvvD": {}, "gt6KyHjz": {}}, "statCode": "yHqKRN5l"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'UeLsNtoz' \
    --userId 'Xe9bZ5We' \
    --additionalKey 'hPFDhd9s' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'gLRfuZYc' \
    --userId 'NZ8dkA2x' \
    --additionalKey '9OaCM25c' \
    --body '{"additionalData": {"rpgMp9vw": {}, "aLwcr9PS": {}, "o9hmSITJ": {}}, "updateStrategy": "MIN", "value": 0.7998994583464346}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"uN4g42eh": {}, "mMqpwK0O": {}, "urZQts0T": {}}, "additionalKey": "eQzKWCOT", "statCode": "HYbh9aH6", "updateStrategy": "MAX", "userId": "sTU5MUCT", "value": 0.9015684445484872}, {"additionalData": {"qRtLWbyi": {}, "hV8uZ4cc": {}, "iYycckAj": {}}, "additionalKey": "70S7RT8s", "statCode": "f0rB9IK9", "updateStrategy": "INCREMENT", "userId": "HuPdkovm", "value": 0.26323901443008624}, {"additionalData": {"PziA0aR0": {}, "WBRZNdkG": {}, "B8F2xmrU": {}}, "additionalKey": "1VEaEQO1", "statCode": "qJPHeTIF", "updateStrategy": "INCREMENT", "userId": "TjwhFUlx", "value": 0.21939955488622376}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'KKw6ZZ5q' \
    --additionalKey 'l9ER6QZ8' \
    --statCodes '["jeJ1bBQ1", "HaMg4IiR", "HgN08o4b"]' \
    --tags '["6SrIkMWF", "wDURUPUz", "L3Zv6RmU"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '4bTa9miB' \
    --additionalKey '07gxehcu' \
    --body '[{"additionalData": {"pQkjEAIj": {}, "mUoFa2oF": {}, "Rb9816WL": {}}, "statCode": "shEfK3dT", "updateStrategy": "OVERRIDE", "value": 0.6796831231322052}, {"additionalData": {"S8NjScm7": {}, "7o3v0x6O": {}, "66sXjE3i": {}}, "statCode": "xgNggumk", "updateStrategy": "INCREMENT", "value": 0.07825120852480716}, {"additionalData": {"SbfkvO3b": {}, "5oDHzHst": {}, "QRa0yjen": {}}, "statCode": "zhkuKzK6", "updateStrategy": "MAX", "value": 0.8317210436261019}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '3WPmk9yc' \
    --userId 'HyiFIhyr' \
    --additionalKey 'lCxVC9cD' \
    --body '{"additionalData": {"b50sYhpa": {}, "UK05K0GA": {}, "8Z9prSSo": {}}, "updateStrategy": "MAX", "value": 0.7028654027687989}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE