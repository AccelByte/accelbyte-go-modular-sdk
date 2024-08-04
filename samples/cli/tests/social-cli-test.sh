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
    --userId 'IiKFUX6D' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jqkeOdAS' \
    --userId 'xT5SeEEX' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["MxMj4vCX", "dxYoh4iG", "gUHTc8zq"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'c0i9s9ht' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'm7rjdAdH' \
    --body '{"achievements": ["idA7dGio", "8Kg0Ytxn", "pD6Dk5Y9"], "attributes": {"oYGPSkDv": "yhoDq0xv", "asmIXXsV": "L42BvfGj", "F8bSMwPn": "DOEdKMno"}, "avatarUrl": "dVjGOJ4I", "inventories": ["NHAqd0Jt", "FW6aniZF", "IzbDvbRu"], "label": "Mr8PY6iQ", "profileName": "NfCXJ2DA", "statistics": ["s8XmaiQo", "ANWwuPTq", "PLc2Hhfw"], "tags": ["tg5ifhgK", "P0XDE7mD", "t5WhqPm5"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JVbGgbsp' \
    --userId '4OhG5yWE' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'axh6t0vJ' \
    --userId 'w8IkOpYm' \
    --body '{"achievements": ["ZW2zHGkG", "9aoQNr4V", "KFnjXmMA"], "attributes": {"vYrkx4yE": "k4hSam5K", "go3AJOOF": "iy9MsOLH", "KBwxe9cS": "Yf67iU07"}, "avatarUrl": "lL2Ij17W", "inventories": ["mELLeMKw", "AU8oUvlc", "Nf8xoJqL"], "label": "W1PVIJYU", "profileName": "8p7tiKKl", "statistics": ["Jjo2vqkL", "pll9N6XC", "ql2FZhvO"], "tags": ["TOTLSdpR", "sBRJoMTT", "QSFeXLlb"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'kEUgNab0' \
    --userId 'svdBkrbj' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'T5VDW0Qy' \
    --namespace $AB_NAMESPACE \
    --profileId '014WPlue' \
    --userId 'VrfWbqe5' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'yFWyoHyJ' \
    --namespace $AB_NAMESPACE \
    --profileId 'i1vVqFZb' \
    --userId 'ijiLaXay' \
    --body '{"name": "Z3AgecBg", "value": "cDICzoCP"}' \
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
    --limit '41' \
    --offset '73' \
    --statCodes 'rWet8cUp' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'NyMtjq6h' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '37' \
    --name 'zOsSng2M' \
    --offset '68' \
    --sortBy 'v7SMHUaw' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "szc4JUME", "end": "1981-04-30T00:00:00Z", "name": "VikPnvxY", "resetDate": 85, "resetDay": 53, "resetMonth": 11, "resetTime": "OgfsZYFT", "seasonPeriod": 100, "start": "1983-05-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["7xnzTxNE", "4ppsgEoE", "0pjZPcUB"]}' \
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
    --cycleId 'YiFAg059' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '58TsW8mT' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "mfvgxy9T", "end": "1978-10-02T00:00:00Z", "name": "6S2U7E4k", "resetDate": 43, "resetDay": 95, "resetMonth": 54, "resetTime": "QagHncAS", "seasonPeriod": 39, "start": "1973-03-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '5a6gbbEj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'iieDZlWn' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["R3q7zTcH", "lqO5bG7v", "PxrUpWLy"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Ef9D5l0Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'udGjy9X5' \
    --userIds 'KIgsuvmI' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.10655005001434137, "statCode": "SaBUqHTa", "userId": "oUirg1g9"}, {"inc": 0.2848825166928992, "statCode": "u6zSEV0Z", "userId": "Y9MSvMm5"}, {"inc": 0.807348675225009, "statCode": "uSwWdgh9", "userId": "TLjsCxtD"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8580825311619574, "statCode": "jC5Z8u2n", "userId": "fE6HC8QY"}, {"inc": 0.6350267069914598, "statCode": "W4uoFBes", "userId": "9M1uxgBu"}, {"inc": 0.5215757614650391, "statCode": "U6WBUonu", "userId": "7y5fEbaW"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lN9uwgIK' \
    --userIds '["NnKkRTEp", "bUYykhb1", "bxKvkxOh"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "E3nEpSFb", "userId": "qjmjjSUy"}, {"statCode": "fJpkes2v", "userId": "073OjBPb"}, {"statCode": "scvMlnGa", "userId": "tJGGPzuF"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'iwKAgcuM' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '79' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["nLXhdUPC", "8bHUvACb", "jWevpSe1"], "defaultValue": 0.7686917702684681, "description": "39t7Yb2C", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.9525007692042752, "minimum": 0.7372565830515422, "name": "FxHCt1gy", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "6iDxpy4C", "tags": ["G9I7f1Vu", "hk4m5gCX", "M5okx681"]}' \
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
    --isPublic 'false' \
    --limit '20' \
    --offset '2' \
    --keyword 'T2FiTCJN' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zRsLhG3z' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'AIbAioMq' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Fqf3uqyT' \
    --body '{"cycleIds": ["vEJfxn5h", "SUFFkcbb", "DtN1keVh"], "defaultValue": 0.7659009736373562, "description": "w4UQYZMu", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "uz3ombaK", "tags": ["yO2Z1bWC", "17gkfIA8", "fNUES8KD"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AeJ6CnON' \
    --limit '24' \
    --offset '69' \
    --sortBy 'GUSTvLQH' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'EJXniC2T' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Ks2ZjOjT' \
    --namespace $AB_NAMESPACE \
    --userId 'qxEHPs2V' \
    --isPublic 'true' \
    --limit '28' \
    --offset '39' \
    --sortBy 'ngNksBEo' \
    --statCodes 'G3J3Aczy' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Nj9iO6km' \
    --isPublic 'true' \
    --limit '63' \
    --offset '4' \
    --sortBy '5esPpClo' \
    --statCodes '4WmnLYvE' \
    --tags 'cGBLb4Bv' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8ymvl1pG' \
    --body '[{"statCode": "0LZuCnXI"}, {"statCode": "sxQIXTW8"}, {"statCode": "UM3FtpBv"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'XTcyUU6K' \
    --body '[{"inc": 0.556886539745452, "statCode": "KCwFknpC"}, {"inc": 0.3980851854883536, "statCode": "pSfNnqty"}, {"inc": 0.5121391433043333, "statCode": "Thtakbuu"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 's6qxr7Df' \
    --body '[{"inc": 0.5275175064854555, "statCode": "HZdvPoVo"}, {"inc": 0.42196174856534696, "statCode": "hmndQO62"}, {"inc": 0.25283066190041414, "statCode": "dkhZRPwf"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'eE7Xrx9s' \
    --body '[{"statCode": "c8s8Lhjd"}, {"statCode": "E4tndN4t"}, {"statCode": "dzCNyPxJ"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'gcCWjar5' \
    --userId 'xqYWJzdK' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'VMbiYRTp' \
    --userId 'GfIhvo7h' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'HcPXyOxe' \
    --userId 'fKLUGHwb' \
    --body '{"inc": 0.27746332938259255}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0hUmxKVT' \
    --userId '786PX65T' \
    --additionalKey 'S2h8C3ll' \
    --body '{"additionalData": {"6n0NEjQ8": {}, "L6NARD2V": {}, "fGpFdWnn": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '84' \
    --statCodes 'ACA5O3X8' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EllevV3U' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '37' \
    --name 'HahPqH5D' \
    --offset '91' \
    --sortBy '5SwcsJDq' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["xwwEHz0M", "dxpjGUkY", "tnLvuYAH"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'kp3WMmhq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bzM8kJU0' \
    --userIds 'UASiksq0' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9896461979260307, "statCode": "seIojKP0", "userId": "gvEFZ3EJ"}, {"inc": 0.7230689203763836, "statCode": "uJessWKW", "userId": "9zB1CIcQ"}, {"inc": 0.10253795722452475, "statCode": "5DVSgTqC", "userId": "svyzEbJD"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7649565058292622, "statCode": "MDbv1KXN", "userId": "XxXXgSQQ"}, {"inc": 0.9951555406656492, "statCode": "TyDUyiCn", "userId": "whWFTeJ0"}, {"inc": 0.21774790596770888, "statCode": "39MGn4Sb", "userId": "jZZk1rwr"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "jOAOWWsZ", "userId": "F6stNcnF"}, {"statCode": "gDkAxQvL", "userId": "kabkUAIX"}, {"statCode": "Y4OJ3WsQ", "userId": "GADSm7XR"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["tQs1nomW", "g4oPeiGv", "lDc8e6ed"], "defaultValue": 0.8746727261274619, "description": "paZ87Fdy", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.058067992582642725, "minimum": 0.5653238742039931, "name": "LWUYqLKl", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "CSm5TneD", "tags": ["8haso8YM", "sUfC45fN", "NUWwdsew"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'SVQuiWb8' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '14' \
    --sortBy '1bpuuWBT' \
    --statCodes '["zjEVNsz1", "FyydNgRE", "JepPHKxH"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '30' \
    --sortBy 'H9dIHcEv' \
    --statCodes '["tnAprLjC", "yTGTlHeS", "zzzuQnBN"]' \
    --tags '["KtebG0rU", "C62IqV7A", "6CQftD12"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'CDvv2adg' \
    --statCodes '["Mua6Azni", "1FDSlXvo", "guyBdko7"]' \
    --tags '["LMqImrAE", "ttQh0VAA", "P7h1onW2"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '4sXJklnw' \
    --namespace $AB_NAMESPACE \
    --userId 'lTLiPwLu' \
    --limit '51' \
    --offset '83' \
    --sortBy 'B8Gt5TVl' \
    --statCodes 'MuosgQIA' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'HDmQRHJX' \
    --limit '5' \
    --offset '81' \
    --sortBy 'cSw7hAQW' \
    --statCodes 'aJEVtwaF' \
    --tags 'b0Qxrgsc' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9nHeuQdO' \
    --body '[{"statCode": "Mq2FAjpL"}, {"statCode": "FJFmV8VX"}, {"statCode": "i1iU4dvw"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'v1TOauri' \
    --additionalKey '8jR8wPzF' \
    --statCodes '["QsphUSPW", "c7RJI8N1", "Fa1tVDBG"]' \
    --tags '["xxAIQCyX", "F8bFaVlm", "Hg4EFWga"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '07jaJjOv' \
    --body '[{"inc": 0.49970352649168726, "statCode": "YU4CLcXo"}, {"inc": 0.6823412022684205, "statCode": "lyc16Oa6"}, {"inc": 0.5210475655742335, "statCode": "5fnhpUj0"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'yfQWJ9u6' \
    --body '[{"inc": 0.357524894935043, "statCode": "sTDKm09v"}, {"inc": 0.4399306504440592, "statCode": "ly3PDDZM"}, {"inc": 0.4681930717850895, "statCode": "Uro9ufir"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'YRNhTQzI' \
    --body '[{"statCode": "cV2FzyFm"}, {"statCode": "BbT8U0sz"}, {"statCode": "HpM3Phz1"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ZtNKJ5J3' \
    --userId '9XeP0d6V' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xkf2ZPRx' \
    --userId 'lG6ezu0A' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'JjoAAqAP' \
    --userId '1yJmOCYh' \
    --body '{"inc": 0.5584672773165653}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'RxIQJCCr' \
    --userId 'IoRapcuy' \
    --body '{"inc": 0.49836984268798257}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iwQGByPN' \
    --userId 'Gjnk2uvm' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"9NiA6Y1G": {}, "ZxHuZChU": {}, "QaSyISu5": {}}, "additionalKey": "BRDcmUl4", "statCode": "0JNlW39L", "updateStrategy": "MIN", "userId": "ChRsxzfW", "value": 0.5665134871230497}, {"additionalData": {"tUT6zdB5": {}, "pAu37xXi": {}, "EWAYbFBG": {}}, "additionalKey": "afQvmycV", "statCode": "aJslf0zK", "updateStrategy": "MIN", "userId": "Gs9gtGOx", "value": 0.17851744849563955}, {"additionalData": {"5S7ZnaGm": {}, "f1JB0owN": {}, "cIEyGD1P": {}}, "additionalKey": "vbal13wW", "statCode": "QtWCyWtX", "updateStrategy": "OVERRIDE", "userId": "A1mnoTkW", "value": 0.9793420607465346}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '3Ll4rsm0' \
    --statCode 'GpbrVPtd' \
    --userIds '["DGYv0TS6", "MaMgw6JW", "nc7drdUE"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Zakpnx0a' \
    --additionalKey '6rVSNVcD' \
    --statCodes '["SSh3DuX4", "QW4zPtI2", "pz1539ro"]' \
    --tags '["aI9usPlm", "IyMybjTx", "mrXOoBpq"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'tXAcZZWS' \
    --additionalKey 'UuL96ehm' \
    --body '[{"additionalData": {"al9cfHEd": {}, "RVvmaj6k": {}, "Y7zqOloE": {}}, "statCode": "EB072j3l", "updateStrategy": "OVERRIDE", "value": 0.9734667121292786}, {"additionalData": {"JbbjbpUO": {}, "vR0lOEbd": {}, "ECFbBfpC": {}}, "statCode": "BcCi3cvI", "updateStrategy": "INCREMENT", "value": 0.16099851631229267}, {"additionalData": {"g08S2DBY": {}, "4wTprfsb": {}, "w4fIvLkV": {}}, "statCode": "zaJunnTi", "updateStrategy": "MIN", "value": 0.012427274314362857}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '0Cb2XbFz' \
    --additionalKey 'NUqQCWjU' \
    --body '{"statCodes": ["QITXA4wd", "vUgXc5et", "XJgbrDff"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '9PQBNGj9' \
    --additionalKey 'C2a0IjNg' \
    --body '[{"additionalData": {"DrB9KLj6": {}, "RmihpbAt": {}, "7R4b16Uc": {}}, "statCode": "ezP5e07B"}, {"additionalData": {"jUpQM8GM": {}, "QQ3BjJRV": {}, "KF0vgTCU": {}}, "statCode": "bNg30bDE"}, {"additionalData": {"ZRtB7yWn": {}, "YVIWK2UO": {}, "ikX1YQql": {}}, "statCode": "3YYdEJyl"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'iIhOlezr' \
    --userId 'ssQsLijz' \
    --additionalKey 'x6SUlIl6' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Uo3L6FAD' \
    --userId 'pt9ok8yo' \
    --additionalKey 'hxw9wYl4' \
    --body '{"additionalData": {"Dfej3u4k": {}, "fR87F3eC": {}, "7XZIoPbL": {}}, "updateStrategy": "MIN", "value": 0.9414123414485864}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"itpSmwaX": {}, "qBiS33x8": {}, "XJpHDkOV": {}}, "additionalKey": "JuuhyRKk", "statCode": "r1AjoYGO", "updateStrategy": "INCREMENT", "userId": "ZJNFuGyo", "value": 0.3936374165051335}, {"additionalData": {"xu3QsgGL": {}, "BuDpFAQ7": {}, "qfAlKDMw": {}}, "additionalKey": "rRLy0srm", "statCode": "Dzto1d3B", "updateStrategy": "MAX", "userId": "Lha8ORW8", "value": 0.9794659209383103}, {"additionalData": {"Oxf5uWEN": {}, "7fZ39MsZ": {}, "YItd3A2a": {}}, "additionalKey": "GzYQlPCk", "statCode": "5JOJDRdR", "updateStrategy": "MAX", "userId": "llOLpNO5", "value": 0.8539218926225514}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'XoDIwDgN' \
    --additionalKey 'udCFfEJw' \
    --statCodes '["KapUJPdG", "6VzRqegV", "VSWDLTxg"]' \
    --tags '["Gfyja3NJ", "QpGQT6ro", "niiOY9Mv"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'uWXmuqHa' \
    --additionalKey 'oTMwdH69' \
    --body '[{"additionalData": {"H8y6oy3n": {}, "HPB8LsXC": {}, "Yrf7iVu5": {}}, "statCode": "CxUqwe3a", "updateStrategy": "OVERRIDE", "value": 0.43164084289279625}, {"additionalData": {"XXyY0Zvy": {}, "5FWvpxJW": {}, "REr51upL": {}}, "statCode": "5vLHIzV8", "updateStrategy": "MAX", "value": 0.4117381078443292}, {"additionalData": {"Gb8q2SZd": {}, "sVZWGZTq": {}, "eh4m5aU7": {}}, "statCode": "jXo00LJn", "updateStrategy": "OVERRIDE", "value": 0.07650365792916669}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'GHiNJ8rG' \
    --userId '5e3aoWB5' \
    --additionalKey 'tCI17OcP' \
    --body '{"additionalData": {"byprJHTW": {}, "SoUy4WmZ": {}, "YfpsewHg": {}}, "updateStrategy": "INCREMENT", "value": 0.021884873231174273}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE