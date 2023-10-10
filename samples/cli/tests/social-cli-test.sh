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
echo "1..95"

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
    --userId 'XZOEg2Ia' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'c0OCdPvk' \
    --userId 'CA096IYI' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["AE0xGVjW", "rOUGPjZ3", "wRrzOVwL"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'TdFRmH3h' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '8DmX5e5p' \
    --body '{"achievements": ["Dz8n0i8E", "IjdcmTOL", "Ioj5zguH"], "attributes": {"c7H02Jff": "QuJ4KONZ", "uZ6kURNS": "OOfeyu1Q", "a5PbJ8gs": "Bo9fCWlr"}, "avatarUrl": "wMDiuSkx", "inventories": ["VdKL7xoG", "EqjhAgY2", "NjAVahiv"], "label": "3wxV8n7o", "profileName": "Gy3yD29O", "statistics": ["LdYn1wNF", "4mVW8MRB", "GzeZAEIF"], "tags": ["WG3IkBCe", "ZJfizSO1", "TnX9A9Hn"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8iNAdqFm' \
    --userId 'kJQKt0ZK' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'pNHCauoT' \
    --userId 'fxlzPTBA' \
    --body '{"achievements": ["FFojyeUj", "izVLzRMQ", "VXZcPo8r"], "attributes": {"B2kYJyj1": "mYzbTgC5", "MSLe0Y3z": "0KGtamZc", "FPw2CMdq": "BkhrBt3w"}, "avatarUrl": "W1SSqbkm", "inventories": ["7BWf1x0U", "mOHIYbFc", "f6akiTQN"], "label": "QsD4hCR7", "profileName": "HUrPOvbd", "statistics": ["D3Hodlc7", "QtZIy7Gh", "iTZ984Jk"], "tags": ["wYlaX9el", "TFhET7Sw", "TdkEwAcu"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'LEYoHt4q' \
    --userId 'j68rDMZX' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'EvASodUs' \
    --namespace $AB_NAMESPACE \
    --profileId '4cl0soA3' \
    --userId 'cODz9jkH' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'GMPKsMDa' \
    --namespace $AB_NAMESPACE \
    --profileId '6uuvgDWn' \
    --userId 'v3EUh0ED' \
    --body '{"name": "mM4qC2o0", "value": "4gCONO0m"}' \
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
    --limit '57' \
    --offset '51' \
    --statCodes 'Km5WFYWD' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'jf1AZEyF' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '16' \
    --name 'kCb02YOI' \
    --offset '68' \
    --sortBy 'sZya9yIE' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "Rgj2rasG", "end": "1988-02-16T00:00:00Z", "name": "JSWz64hP", "resetDate": 53, "resetDay": 83, "resetMonth": 25, "resetTime": "fuITmlZd", "seasonPeriod": 84, "start": "1972-10-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["8J0WPVWh", "FjYpewof", "EXJ0AsIO"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'SypPsjIY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'OQ7QyOVg' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "B9StwYc7", "end": "1993-08-26T00:00:00Z", "name": "shzlDg7h", "resetDate": 39, "resetDay": 32, "resetMonth": 83, "resetTime": "Exr5WYed", "seasonPeriod": 39, "start": "1983-07-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'flGXImZ3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'QCbuASKC' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["SAfJLXr0", "56rFlAgN", "oyfkab5h"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'HZvCmsqo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'osE9wwZr' \
    --userIds 'niKYkgKM' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3684503190733486, "statCode": "9MIXK3bx", "userId": "VYNrirfp"}, {"inc": 0.7620726093559673, "statCode": "GdarHUMh", "userId": "H288JlS0"}, {"inc": 0.5347703746256937, "statCode": "og09C426", "userId": "Q8xXAIoX"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8771181195383198, "statCode": "nRlTH9b7", "userId": "hsg3FJOf"}, {"inc": 0.32313773497593645, "statCode": "HjbghgdU", "userId": "etqYnv8G"}, {"inc": 0.9158590429363591, "statCode": "7UiSVemc", "userId": "xy69nU6n"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AiTbrlCA' \
    --userIds '["uqr6hcrv", "UT0HW4iH", "QLRE3QQq"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "QeVkis0x", "userId": "UtmsyjWu"}, {"statCode": "pTpQegfw", "userId": "QtA11iDp"}, {"statCode": "yFlVZxIj", "userId": "mdmsva1e"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'IChegIk8' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '80' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["naF0WSVG", "zd9i4vqS", "HeFX2kbr"], "defaultValue": 0.20710929136330658, "description": "a9jQkEAI", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.7793536707203438, "minimum": 0.48246571459264453, "name": "LuSmLp0x", "setAsGlobal": true, "setBy": "SERVER", "statCode": "Vjz5BY2h", "tags": ["KOOMk3VV", "XC93uINC", "VfgS4TqD"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '68' \
    --offset '56' \
    --keyword 'gDcOX3Xd' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'qTKMTH9A' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zX5rZDY8' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '9zE1Pbgw' \
    --body '{"cycleIds": ["3LDARt9x", "ZtxLZLOJ", "VhtmCdrr"], "defaultValue": 0.49622906694985736, "description": "3in86DtL", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "GJXJetIm", "tags": ["XTVkUJUd", "y0xCSBJY", "s6sXWXaw"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HuUQ7tpi' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'mVdANjhI' \
    --namespace $AB_NAMESPACE \
    --userId '4WoYAMxI' \
    --isPublic 'true' \
    --limit '42' \
    --offset '23' \
    --sortBy 'M26MZTkB' \
    --statCodes '6ui90BoO' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SjuaNtC5' \
    --isPublic 'true' \
    --limit '17' \
    --offset '67' \
    --sortBy 'pGJq94Rr' \
    --statCodes 'IfuAPqqk' \
    --tags 'i8PXYeZ6' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2uvD0Af0' \
    --body '[{"statCode": "TaDdGWgh"}, {"statCode": "o6okPXH1"}, {"statCode": "CU4y55sw"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0gFQKdO7' \
    --body '[{"inc": 0.6030891616909255, "statCode": "lWFEEuVq"}, {"inc": 0.6417147970171214, "statCode": "CpPALljU"}, {"inc": 0.37069656349045577, "statCode": "AUCc3H0t"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '1hie0n7l' \
    --body '[{"inc": 0.8546769159318823, "statCode": "IkRbwkOr"}, {"inc": 0.9100592525113412, "statCode": "hHm9QDki"}, {"inc": 0.7260934695282881, "statCode": "MrC4bbHl"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'H8aZTJ9K' \
    --body '[{"statCode": "VcVvK8pb"}, {"statCode": "g5M5EbN2"}, {"statCode": "cSlephqi"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'aBWP4D9n' \
    --userId 'V2osVZR6' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ZGN7nJ6t' \
    --userId 'm3fG34r1' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RUZhmC3m' \
    --userId 'SJPiYgyO' \
    --body '{"inc": 0.24928690050276892}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'um7bf7gD' \
    --userId '8mtJzCgR' \
    --additionalKey 'j6rJ2Sql' \
    --body '{"additionalData": {"nZJBVx2B": {}, "yQ36yz4q": {}, "xJGPGxFH": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '0' \
    --statCodes 'jBCh4qnn' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'n595WGpV' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '80' \
    --name 'XglQQa8S' \
    --offset '63' \
    --sortBy 'qbCGIBWV' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["BeOeapKv", "oqtiqr5z", "GPxtgWTM"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'eDB4NZCy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Nf4lpY49' \
    --userIds 'k7OFfTuT' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7458535616801666, "statCode": "oEY9PcxG", "userId": "o0EUlFIV"}, {"inc": 0.6465674997796862, "statCode": "xC4XqcWo", "userId": "pPZWamrh"}, {"inc": 0.6031057103040098, "statCode": "a3xMC4P7", "userId": "WNlz9c3R"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.430003840209466, "statCode": "1tvdLbRZ", "userId": "gVONEN1q"}, {"inc": 0.2479644510855693, "statCode": "H8DE80wx", "userId": "7oq24Ymg"}, {"inc": 0.7300223528100783, "statCode": "eEaNpKwf", "userId": "ivG5l9aW"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "XcUKigoz", "userId": "Kti44www"}, {"statCode": "TQsEqDCG", "userId": "CHRomOsM"}, {"statCode": "ynuMlWH5", "userId": "EWN1f8Dg"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["vDWISSHP", "sqmoMlnG", "GonBm5bG"], "defaultValue": 0.2251289482956076, "description": "nxsdWIx2", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.10274656631651136, "minimum": 0.40930544090862075, "name": "wiji8n3t", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "qAv89wCR", "tags": ["IctU0Kw1", "bwPuyg6p", "Wi6kDotP"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'mbO1pRC1' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '9' \
    --sortBy 'BkAQV0qJ' \
    --statCodes '["jlKAU4gG", "intO9RXG", "A6PyxLaX"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '28' \
    --sortBy 'uxSR92G1' \
    --statCodes '["fwPTsBT7", "IHdtM37L", "okGUoXns"]' \
    --tags '["LimDgcR7", "2DHkqM9C", "X8V5HQHL"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'LrCa9XMW' \
    --statCodes '["wbKoTHqU", "vOQ0UEQ1", "jmrPLCUW"]' \
    --tags '["elm6Oftp", "Kuga6zC1", "8RFemKRw"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'Uf8xl52A' \
    --namespace $AB_NAMESPACE \
    --userId 'DeUZ7SJN' \
    --limit '20' \
    --offset '59' \
    --sortBy 'GqXjnRgv' \
    --statCodes 'iRdQIEjO' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'tdLNQCym' \
    --limit '79' \
    --offset '54' \
    --sortBy 'fjQSMFZi' \
    --statCodes 'fWDGXjEN' \
    --tags 'gTZ2ePTh' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'UdpHRj0l' \
    --body '[{"statCode": "MFN1pkqo"}, {"statCode": "GbxEdNwW"}, {"statCode": "riYuL5xQ"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ta704lz4' \
    --additionalKey 'ooLIk4kV' \
    --statCodes '["INVVmDxu", "jECUXWUP", "Pu9X3dcv"]' \
    --tags '["4jgzMnAV", "HLu4ymK1", "dmZVGujY"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'HQ3leEoK' \
    --body '[{"inc": 0.24836911904766623, "statCode": "OJxjnv9M"}, {"inc": 0.059819995457449204, "statCode": "YO1bUafZ"}, {"inc": 0.15921911797021404, "statCode": "AI7a0ZE9"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'C4X3uwBY' \
    --body '[{"inc": 0.929198034020021, "statCode": "eloDFhPk"}, {"inc": 0.2474551979814078, "statCode": "d9wLsBih"}, {"inc": 0.4242618645663583, "statCode": "E9vZMgTq"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'cm3hb3uN' \
    --body '[{"statCode": "rMFhZsGS"}, {"statCode": "v0AToqsT"}, {"statCode": "1WFocO3t"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'K9Zx0JwH' \
    --userId '1XSNW9wu' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tocMraZ6' \
    --userId '27AojpOh' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '7Pr8HOSy' \
    --userId '5kSxeJSK' \
    --body '{"inc": 0.6327092461063255}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'XtA05Sea' \
    --userId 'uw5zYyzI' \
    --body '{"inc": 0.12909078825478648}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'TOc5XWuN' \
    --userId 'ELB85vD2' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"kGQryakJ": {}, "k5gC0RnU": {}, "8HyHJCtn": {}}, "additionalKey": "PaBso0oX", "statCode": "shS87mkh", "updateStrategy": "INCREMENT", "userId": "u1avSZhF", "value": 0.7497780516586207}, {"additionalData": {"J12zWI08": {}, "rjZbnJoD": {}, "BAgGiLRI": {}}, "additionalKey": "fjTn4tSD", "statCode": "IdCeFa2t", "updateStrategy": "MAX", "userId": "3K9Il2KU", "value": 0.9022022642865613}, {"additionalData": {"ljywZIQI": {}, "qoStBHa0": {}, "t1OKMiDY": {}}, "additionalKey": "8tEp4BZj", "statCode": "AU6VSGOP", "updateStrategy": "MAX", "userId": "wLhG6N8G", "value": 0.33532588544300823}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'da8X2tSs' \
    --statCode '6xl5oYd8' \
    --userIds '["PbAcYF2z", "CqJyyRIJ", "cqBzBUba"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oA7v2DO6' \
    --additionalKey 'ohGh3SUW' \
    --statCodes '["dS262Xlo", "aNuGbNic", "KxmeSg9e"]' \
    --tags '["fRIij5Bx", "sDbrTuRd", "oBchYT5Z"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '0uz5fqpv' \
    --additionalKey 'glNFNkED' \
    --body '[{"additionalData": {"T7ToeVec": {}, "R9sdFMmS": {}, "oOqFSP7J": {}}, "statCode": "AZWo8mnN", "updateStrategy": "MAX", "value": 0.37720627741829893}, {"additionalData": {"TOxAyQWr": {}, "cD1D32fB": {}, "OgwF4Byo": {}}, "statCode": "Md7NyEKg", "updateStrategy": "MIN", "value": 0.23322090725894795}, {"additionalData": {"ftl6duJo": {}, "iVHWpCq6": {}, "GHFmth4L": {}}, "statCode": "zlkPoyWm", "updateStrategy": "MAX", "value": 0.11865451356536272}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'vdoQxg9G' \
    --additionalKey 'gXyODKGE' \
    --body '[{"additionalData": {"uBxPCB1d": {}, "IOHKrfrc": {}, "h8k4gDiz": {}}, "statCode": "NLcJiLpr"}, {"additionalData": {"ecc6khiJ": {}, "DDcUfk2z": {}, "OfdmZpSH": {}}, "statCode": "D2zE67Yw"}, {"additionalData": {"oPV1loFV": {}, "HRlECbqL": {}, "NjLu5T96": {}}, "statCode": "6nJSaRB1"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'C5SJ4I5T' \
    --userId 'j4SfW7w4' \
    --additionalKey '6c6xeCQJ' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bKFQjwc0' \
    --userId 'NRYHM4aQ' \
    --additionalKey 'zGXPt3hQ' \
    --body '{"additionalData": {"513pTVTB": {}, "3UohR7Di": {}, "uwDxuFQ0": {}}, "updateStrategy": "MIN", "value": 0.002244697295579856}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"CNoQfZ81": {}, "i21Keua5": {}, "JwfbLcGW": {}}, "additionalKey": "RvTsJpVH", "statCode": "XTNBMK33", "updateStrategy": "OVERRIDE", "userId": "viGYCMDV", "value": 0.7189660056087617}, {"additionalData": {"mROkURXN": {}, "afOqBNYb": {}, "QUQVv4tG": {}}, "additionalKey": "AodeBl3S", "statCode": "yktai0TB", "updateStrategy": "MIN", "userId": "DP6Ujqia", "value": 0.006048234783623485}, {"additionalData": {"JjJdim3B": {}, "2QO14mRU": {}, "FicRwxrL": {}}, "additionalKey": "gE4ciLHi", "statCode": "j4T69wLj", "updateStrategy": "INCREMENT", "userId": "5BFXPvyh", "value": 0.8120319119870195}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'NLaiXytK' \
    --additionalKey '0UNeeDzM' \
    --statCodes '["kKJRzmu7", "KygXWsyd", "RqnPq19x"]' \
    --tags '["FDvgXi2R", "XGWyz1Rx", "UTJtsFUB"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'N5wpqpx0' \
    --additionalKey 'vDqx3M5A' \
    --body '[{"additionalData": {"8ecyArRO": {}, "P7pPs39Z": {}, "KS9Ja8Av": {}}, "statCode": "B6lOEcF1", "updateStrategy": "INCREMENT", "value": 0.5021905585720621}, {"additionalData": {"IQLtB9n2": {}, "27J42U4w": {}, "cYYGAXw7": {}}, "statCode": "jTgtxcP0", "updateStrategy": "MAX", "value": 0.18861503586375905}, {"additionalData": {"HLJDe9Gw": {}, "r21lOsv6": {}, "TNNkyrdh": {}}, "statCode": "ReFpgjmH", "updateStrategy": "MAX", "value": 0.9029901985322707}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'MFSOwI7P' \
    --userId '86grYV1s' \
    --additionalKey 'HGNiZAhs' \
    --body '{"additionalData": {"9XqM09Lg": {}, "UFBjodzy": {}, "Cp9L7Sbj": {}}, "updateStrategy": "INCREMENT", "value": 0.9110607109726293}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE