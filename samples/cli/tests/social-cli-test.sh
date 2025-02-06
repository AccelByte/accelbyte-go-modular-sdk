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
    --userId 'ZLNSRZ2U' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'O1rNkAfE' \
    --userId 'Nx8YOCdc' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["vLusD7fX", "wAiLOXI3", "KL0HSr6K"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'SOnJdAlg' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'UEEYSltx' \
    --body '{"achievements": ["NfPkFGmh", "TzuCN4ti", "SHbOS3Nd"], "attributes": {"Rf5Gzkxc": "Qq7FLplF", "QDP4OEgY": "64uep2Vk", "mPvZWTmM": "5OKNbQ0P"}, "avatarUrl": "RBX0ur63", "inventories": ["yZMTEevA", "8EpmOYLg", "mREWUFV1"], "label": "qXM11YvK", "profileName": "VYyEWv4V", "statistics": ["zWBbLkLq", "bmoTyv9o", "lVLkbaQe"], "tags": ["GGlDvDn8", "4swgmI6M", "rwDHw2Gl"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'dtAmIXWe' \
    --userId 'k9cetygl' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'yxbsksC1' \
    --userId '0EOpMJlY' \
    --body '{"achievements": ["MJS4L2I7", "CTjKzlIC", "vpVSkgJm"], "attributes": {"IQe7xuZJ": "tVOV5Mj3", "QAzYEhR5": "wQrRaVzH", "LlAmgnIO": "5sDdwqPz"}, "avatarUrl": "wwvGcTeu", "inventories": ["DZCr9iRU", "t1KBZaud", "BnjGmuMu"], "label": "pL07fN6i", "profileName": "v1FMey7Q", "statistics": ["vGkseXrr", "lEZJFIRy", "lgFzgPys"], "tags": ["tqiBDFZ1", "tLKzvO3f", "NXviDhK9"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'dZwltcz3' \
    --userId '1otwf1Sj' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'hAq12f63' \
    --namespace $AB_NAMESPACE \
    --profileId 'SEnCYrii' \
    --userId 'ahBR8dZO' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'Pm439N0Z' \
    --namespace $AB_NAMESPACE \
    --profileId '6V2TBokA' \
    --userId 'dkfiQ578' \
    --body '{"name": "961NeKjK", "value": "BKFkcVhs"}' \
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
    --offset '58' \
    --statCodes 'ynf5zR1R' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'k6dk1ePm' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '29' \
    --name 'DiasANrh' \
    --offset '46' \
    --sortBy '0JibNj64' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "FPMpBDUH", "end": "1981-04-07T00:00:00Z", "id": "AgJobhCy", "name": "fNVME65Q", "resetDate": 11, "resetDay": 22, "resetMonth": 17, "resetTime": "rpwwpESt", "seasonPeriod": 48, "start": "1971-02-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["s3KG1EvL", "oYMwKeSv", "0BFhNgRu"]}' \
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
    --cycleId 'aOIZVk7z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '7uKhWvuV' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "wFoSu4OO", "end": "1983-01-08T00:00:00Z", "name": "nmF2O7PY", "resetDate": 24, "resetDay": 16, "resetMonth": 50, "resetTime": "xIUozOOh", "seasonPeriod": 54, "start": "1972-08-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'x5FlKuvA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'q6j3vCZW' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["3MSevOFT", "r82zRExi", "0ZrcS9Xc"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'NyqeHxxD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4CFHBr3X' \
    --userIds 'f5DInevH' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.009389007390319781, "statCode": "kDaSWs6l", "userId": "8UDKWsna"}, {"inc": 0.6462209128928765, "statCode": "hNOa6m8q", "userId": "n8azN9Yg"}, {"inc": 0.633012023946842, "statCode": "NteRTWLE", "userId": "MuMNowBH"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8350449629572222, "statCode": "AyG43Wyg", "userId": "LgPeM4lU"}, {"inc": 0.40080819570163784, "statCode": "FZwJub4l", "userId": "bWeIu5Xp"}, {"inc": 0.3175722532710371, "statCode": "d3LrvVUU", "userId": "0fnQ9dd0"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'EDelv2vv' \
    --userIds '["wyCiZSol", "JTm4b71l", "6DXMwWq8"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "bHYSqpEc", "userId": "dASK9yS0"}, {"statCode": "XSV8yh7L", "userId": "7fVTnrgB"}, {"statCode": "XY7ebaKG", "userId": "2S3IXkJn"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'Dehzbc4G' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '92' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["kK147GXe", "qiynJVip", "i3Pmkqge"], "cycleOverrides": [{"cycleId": "8PqtLIFS", "maximum": 0.9926375548472252, "minimum": 0.9383126771780862}, {"cycleId": "jkp8p6lZ", "maximum": 0.596020568732589, "minimum": 0.07477067439154272}, {"cycleId": "4Lnyr58e", "maximum": 0.4258383443028365, "minimum": 0.7484138638573509}], "defaultValue": 0.9272927795276454, "description": "6czKNqJB", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.29499566157007295, "minimum": 0.5198646601521597, "name": "xPYlnvOM", "setAsGlobal": false, "setBy": "SERVER", "statCode": "eBkTmpft", "tags": ["9oc4WU8G", "ECg2cLiC", "rrKGjuKp"], "visibility": "SHOWALL"}' \
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
    --limit '16' \
    --offset '3' \
    --keyword 'ZCavulQU' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'IkAURAQN' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'MYxDMakc' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QcI2S8IZ' \
    --body '{"capCycleOverride": true, "cycleIds": ["cleghZwf", "jiwZbZaf", "JFmUBywt"], "cycleOverrides": [{"cycleId": "qVonenvS", "maximum": 0.37631471221580326, "minimum": 0.8771496618585684}, {"cycleId": "Qs0nOsXg", "maximum": 0.2540467354994874, "minimum": 0.9166314223660442}, {"cycleId": "r0pvSaJ9", "maximum": 0.7753919315774597, "minimum": 0.23021044373442878}], "defaultValue": 0.5134838183019581, "description": "zosMQVfr", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "zo0mSGVA", "tags": ["ZtUiXMwc", "xsuFtKOv", "UjP5LoOF"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'M4CV3O0V' \
    --limit '61' \
    --offset '84' \
    --sortBy '7OaTn3pS' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TUWn22ol' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'SYJNVDMd' \
    --namespace $AB_NAMESPACE \
    --userId 'LcgN0y6z' \
    --isPublic 'true' \
    --limit '2' \
    --offset '45' \
    --sortBy 'ZvxhLlmr' \
    --statCodes 'NVsi7XLq' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hmBmFoUK' \
    --isPublic 'false' \
    --limit '50' \
    --offset '64' \
    --sortBy 'SsHJCDvi' \
    --statCodes 'bGw7aaPm' \
    --tags 'TKpdx92C' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3JRAVSQM' \
    --body '[{"statCode": "1ByeTZQq"}, {"statCode": "thdoC16Q"}, {"statCode": "0lH8OG0x"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'sIdlDJZl' \
    --body '[{"inc": 0.35480622271844753, "statCode": "GhhA31pF"}, {"inc": 0.21530697360930418, "statCode": "mI9u3W4L"}, {"inc": 0.0320658318835354, "statCode": "JkVif1vY"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'saCXUcyd' \
    --body '[{"inc": 0.5433600504908416, "statCode": "FPjmpvbB"}, {"inc": 0.07031489061779717, "statCode": "pXkCBcZ0"}, {"inc": 0.2875007152531829, "statCode": "rjwQj7gL"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ahA31ZwW' \
    --body '[{"statCode": "P4g4tUhB"}, {"statCode": "BzgdPJbw"}, {"statCode": "kP04Uc2q"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'F1pIcZ7M' \
    --userId '4l6LaCEY' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'bldcclbi' \
    --userId '0t18Szj5' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Ozz3kAIN' \
    --userId 'DSAxOZYu' \
    --body '{"inc": 0.15883594545105317}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'YpECCwjj' \
    --userId '2ZFVQFyh' \
    --additionalKey 'yEncuCIM' \
    --body '{"additionalData": {"ylyW7APs": {}, "Yl6BF246": {}, "RDwGbhd4": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '100' \
    --statCodes 'VPjOlKaG' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jdCiGjdT' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '100' \
    --name 'e4Tey3vA' \
    --offset '41' \
    --sortBy 'PghjcK68' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["6aA5Vp3u", "5k7SXiMG", "Pyi05t0Y"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'u5qCE4qs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'IRp75sNs' \
    --userIds 'Ok4svW53' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3156255820721212, "statCode": "f7VrQbLc", "userId": "8e1pc5hF"}, {"inc": 0.14539245237754828, "statCode": "VipUi24Q", "userId": "B7tevkc9"}, {"inc": 0.8246918223687283, "statCode": "zd12EQJn", "userId": "jAf4fCam"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.21863319780923562, "statCode": "VPFjsHW3", "userId": "JeRmbb3m"}, {"inc": 0.8189113866656992, "statCode": "b1QmhDJy", "userId": "6TbJQBoq"}, {"inc": 0.8441264193721533, "statCode": "GAoNfxnY", "userId": "XpgPd1i3"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "z8BXNuBO", "userId": "s6akuwQx"}, {"statCode": "XoxfEfXX", "userId": "nxnJWi3Y"}, {"statCode": "HUYwtskA", "userId": "IrTxMxIA"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["ncon9ofq", "yA1Y3C1f", "0EphcDSD"], "cycleOverrides": [{"cycleId": "PkTWm1NB", "maximum": 0.5178706235169985, "minimum": 0.24456839407604625}, {"cycleId": "NEwESpQy", "maximum": 0.27927503877955906, "minimum": 0.1956743580487117}, {"cycleId": "dtIkr8L2", "maximum": 0.647421823487112, "minimum": 0.8401583119003251}], "defaultValue": 0.4927621954507099, "description": "RjlBD8HH", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7686621060679613, "minimum": 0.17918641937275925, "name": "RuLwIlOQ", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "xohotheK", "tags": ["kUoflNcZ", "L9lzFr1h", "LaCEDGMu"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId '42ZLQLcl' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '36' \
    --sortBy 'NjrKF3FS' \
    --statCodes '["L5MuClQ1", "033IwNub", "RHadTfVK"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '18' \
    --sortBy 'McVBGsY8' \
    --statCodes '["HxbR4kSq", "2XJKJkso", "0H3i2yk5"]' \
    --tags '["GDNBlmNj", "GJvnDOV1", "SonZVdyi"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'uazSIxxL' \
    --statCodes '["m4jqmeBE", "NjY5yB3u", "G0rLlel9"]' \
    --tags '["jLkEP3U6", "6zVaZALo", "eNpSssLK"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'S3je9bRR' \
    --namespace $AB_NAMESPACE \
    --userId 'CDmXNghO' \
    --limit '75' \
    --offset '47' \
    --sortBy 'UW4xc3uF' \
    --statCodes 'WeryNGWW' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8igX55g4' \
    --limit '89' \
    --offset '64' \
    --sortBy 'mclhjmdz' \
    --statCodes 'J5lTVEXt' \
    --tags '5pm9MYcD' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YdZf4s84' \
    --body '[{"statCode": "F5eZfMWh"}, {"statCode": "c77n8Dok"}, {"statCode": "HKivs4uN"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'KDbGGIMS' \
    --additionalKey 'g5S8ITSk' \
    --statCodes '["sckc5efp", "ZIJIYZzk", "dpx7LfMW"]' \
    --tags '["v7sRoyjf", "ixjKf1Ww", "1q6XMI8W"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XzazDs2s' \
    --body '[{"inc": 0.408164166891291, "statCode": "C1dQS8pi"}, {"inc": 0.8167820239187703, "statCode": "tgNlMjnW"}, {"inc": 0.12300894197865508, "statCode": "MFa3rTkV"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'E1aNyYEC' \
    --body '[{"inc": 0.857049185240457, "statCode": "asopAQSc"}, {"inc": 0.9666831629990505, "statCode": "ajPA2A0I"}, {"inc": 0.9097742823032158, "statCode": "VZiOaBNP"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'XCf2BZ7L' \
    --body '[{"statCode": "uDS4D9ro"}, {"statCode": "1xid2KSD"}, {"statCode": "7wWDRn0L"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'iKq3Fjhh' \
    --userId '5mdJsvs5' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'lu82K3MJ' \
    --userId 'kGgEIkle' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CVWEwHXs' \
    --userId 'zW3ivBe8' \
    --body '{"inc": 0.23418126018152285}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7Wfilzmp' \
    --userId 'aCNn3hzx' \
    --body '{"inc": 0.7348766228604613}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LMFr7gOb' \
    --userId 'qEVqQ0OD' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"TkhQRfvN": {}, "Z7Vd18zH": {}, "sLtPiNfI": {}}, "additionalKey": "0CSUK0Zz", "statCode": "TYNqNpbt", "updateStrategy": "OVERRIDE", "userId": "VHCOhR0w", "value": 0.8396774482574378}, {"additionalData": {"ncgQeHjr": {}, "KWit70Df": {}, "8CrbBFnC": {}}, "additionalKey": "drArAjoB", "statCode": "rxsx1dD4", "updateStrategy": "INCREMENT", "userId": "SaNtdkMN", "value": 0.8634083333024749}, {"additionalData": {"3e5JigNG": {}, "9eXu4dWJ": {}, "ivTwvM7B": {}}, "additionalKey": "w1TeDCJx", "statCode": "Y3GdD907", "updateStrategy": "MAX", "userId": "AUXSZPrz", "value": 0.420764550205715}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '9aSRkXSo' \
    --statCode 'JgO9J2UX' \
    --userIds '["UNp01aAT", "mGjjY3eU", "i05fCgXN"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'rhI2dF5h' \
    --additionalKey 'LdFahbE6' \
    --statCodes '["rXwTqvrM", "tee09wYL", "YCdbC50x"]' \
    --tags '["fJWGsRFf", "cmWutTG4", "3Z6LghHZ"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'oyrhPvRl' \
    --additionalKey '4SpXrxuI' \
    --body '[{"additionalData": {"lx4Bm22b": {}, "6wlTfvMp": {}, "plQgPmV7": {}}, "statCode": "HHGwVyQ9", "updateStrategy": "INCREMENT", "value": 0.4973870042518701}, {"additionalData": {"YVEkcP5v": {}, "436bnDGk": {}, "JU4obJCS": {}}, "statCode": "ClHTdW0w", "updateStrategy": "OVERRIDE", "value": 0.6592553265835742}, {"additionalData": {"MuaAAkI8": {}, "wz6gznQl": {}, "cFRErJdj": {}}, "statCode": "p1i9wUZg", "updateStrategy": "INCREMENT", "value": 0.06138397418522412}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'Kl4vlTJM' \
    --additionalKey 'F1KoVFY8' \
    --body '{"statCodes": ["fNUGLASd", "uHlr5Mrh", "qyRigtV2"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'CZWzjCxY' \
    --additionalKey 'K3z0cFrS' \
    --body '[{"additionalData": {"UGlbDWu1": {}, "efSOtlNp": {}, "pTDTC8QE": {}}, "statCode": "kSLsv9B1"}, {"additionalData": {"AFBWgHD5": {}, "lO9LmtHT": {}, "crfD9fM4": {}}, "statCode": "VtAoP8gf"}, {"additionalData": {"swyDw8wu": {}, "CIa7Ti3k": {}, "LaHJnMzR": {}}, "statCode": "if1red1R"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'tkzBNOeg' \
    --userId 'zAZ2AEUa' \
    --additionalKey 'w185mO6p' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'maesHi9W' \
    --userId 'upgQvdJ0' \
    --additionalKey 'waylxJY0' \
    --body '{"additionalData": {"ppvAH3tb": {}, "oHA3p8Y9": {}, "Isbbsub9": {}}, "updateStrategy": "MIN", "value": 0.06788178356278574}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"WEtikXNO": {}, "O5xnhmHN": {}, "PA29CnXw": {}}, "additionalKey": "tdlcnRtj", "statCode": "z3vpsfr5", "updateStrategy": "OVERRIDE", "userId": "2mTYlrJz", "value": 0.4352864972747368}, {"additionalData": {"zCqSyHRN": {}, "J29Nf5sR": {}, "DFPXKzbk": {}}, "additionalKey": "JevL9s3x", "statCode": "fAcbo5tR", "updateStrategy": "MAX", "userId": "AWVUulwn", "value": 0.32419874262355364}, {"additionalData": {"G429OV67": {}, "ChO7DGSe": {}, "LNZb0Fqd": {}}, "additionalKey": "Kp33inKS", "statCode": "4UL61dFw", "updateStrategy": "MIN", "userId": "DtHe6QKY", "value": 0.08135793446197881}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'RXJrY6ki' \
    --additionalKey 'pXXKQjro' \
    --statCodes '["HtS9zaHZ", "Pazgc5Kw", "EFrZ0k0P"]' \
    --tags '["tW3vtNnP", "l6J6m2jC", "EHSJ5oKl"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ra4B6KHl' \
    --additionalKey 'SMnMcNok' \
    --body '[{"additionalData": {"Wp8FaCIn": {}, "uttLFD1p": {}, "0xYtoOi7": {}}, "statCode": "sNXlI9YA", "updateStrategy": "MAX", "value": 0.8791399383341335}, {"additionalData": {"iSUBqGzT": {}, "sA3iTSoH": {}, "D1PS8orj": {}}, "statCode": "5EykPdlV", "updateStrategy": "MAX", "value": 0.14972781154690107}, {"additionalData": {"kfext0hX": {}, "RhkAw3EK": {}, "cSc48Oga": {}}, "statCode": "2WZ0la8z", "updateStrategy": "MIN", "value": 0.5206508550717839}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WxPUizV5' \
    --userId 'Usd35CIa' \
    --additionalKey 'BmwILOB5' \
    --body '{"additionalData": {"gdzwCEYg": {}, "j2pHwhgt": {}, "1aVOTjAJ": {}}, "updateStrategy": "MIN", "value": 0.5357116266367468}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE