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
echo "1..100"

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
    --limit '26' \
    --offset '74' \
    --statCodes 'pTvVOke8' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'NwVDYpMR' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '53' \
    --name 'ndG4DN4z' \
    --offset '47' \
    --sortBy 'YbZXDwTl' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "X86HhTQq", "end": "1975-07-14T00:00:00Z", "id": "oRbXdnRD", "name": "gqWbIIdM", "resetDate": 67, "resetDay": 92, "resetMonth": 9, "resetTime": "caqGXNwO", "seasonPeriod": 60, "start": "1977-06-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["5j1BG3so", "4NZiv04s", "jpSHP8Ip"]}' \
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
    --cycleId 'XiH3qu4A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'IwC7YnNg' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "KFGuTMRE", "end": "1991-06-26T00:00:00Z", "name": "XRanQKTJ", "resetDate": 37, "resetDay": 64, "resetMonth": 39, "resetTime": "dx1Rg4Zo", "seasonPeriod": 85, "start": "1981-02-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'RounT737' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
samples/cli/sample-apps Social resetStatCycle \
    --cycleId 'L4H4ATtU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'CF6j7EY7' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["1iljQeRZ", "KbzOFAO9", "CCUeaH4e"]}' \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'BCcos9Bi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'fOwXlfik' \
    --userIds '5HWYApcq' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.72679129215762, "statCode": "OWZEsqTk", "userId": "AdTsHLIE"}, {"inc": 0.2510308545945561, "statCode": "OH3mggFo", "userId": "6AYeoKJe"}, {"inc": 0.6877206491898632, "statCode": "vBBz89ij", "userId": "NaMHEEg5"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6884191099366774, "statCode": "I2sDPppw", "userId": "1g0WfeeL"}, {"inc": 0.58303887187881, "statCode": "3KSXVcEC", "userId": "ismfDquJ"}, {"inc": 0.46222173270415556, "statCode": "vA7buszk", "userId": "QN99dHwM"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'nThAagsh' \
    --userIds '["ZJ5otN4H", "M3IIBHHo", "A1NuHXhE"]' \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "O9W3ouOG", "userId": "A1iNv9Cl"}, {"statCode": "PpwiJLZf", "userId": "xNsSjPyI"}, {"statCode": "x91Mt4yr", "userId": "sunhP3sD"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'EZDBQebz' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '41' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["6GtsaAub", "JaPiOWWt", "GeaxCzsl"], "cycleOverrides": [{"cycleId": "12tFCnDC", "maximum": 0.3351538135684602, "minimum": 0.1772238309522819}, {"cycleId": "CeOj8U3H", "maximum": 0.6314455740584912, "minimum": 0.0047844611970970785}, {"cycleId": "9jWBPKFY", "maximum": 0.03657996226355975, "minimum": 0.7834549254332279}], "defaultValue": 0.40689538239842593, "description": "QWzlGXDp", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.8263851517181046, "minimum": 0.9055126340067874, "name": "jzNpYZob", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "zhcI0lao", "tags": ["TGACLLWA", "xg8DRrbK", "0psgFOme"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateStat' test.out

#- 46 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ExportStats' test.out

#- 47 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 47 'ImportStats' test.out

#- 48 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '65' \
    --offset '73' \
    --keyword 'hRhSHMwU' \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'IcunX9iT' \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '0Cqk7zFN' \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '3bzPcxX6' \
    --body '{"capCycleOverride": false, "cycleIds": ["9DOHEgD5", "JvEpNo1y", "1M4TQ4b4"], "cycleOverrides": [{"cycleId": "VRPe1SQH", "maximum": 0.20939350525216494, "minimum": 0.2472303355704949}, {"cycleId": "Ni63yzlE", "maximum": 0.01782548830528463, "minimum": 0.15823160354829058}, {"cycleId": "2Yj3fdba", "maximum": 0.5241104704743796, "minimum": 0.22330968114029282}], "defaultValue": 0.7613221232347605, "description": "TMm6L6U1", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.37598390057154496, "minimum": 0.8962577560254008, "name": "aeMhXYkH", "setAsGlobal": true, "setBy": "SERVER", "tags": ["uibNsDcl", "pjXqFEB1", "Y1fsBvb1"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'l76sRdcD' \
    --limit '58' \
    --offset '22' \
    --sortBy 'k9EVe4MZ' \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'P6ctw0Js' \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'EJ0929ME' \
    --namespace $AB_NAMESPACE \
    --userId 'sWbaXA95' \
    --isPublic 'true' \
    --limit '93' \
    --offset '33' \
    --sortBy 'MiRflG51' \
    --statCodes 'xGu1VehH' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'gRTAJh6d' \
    --isPublic 'true' \
    --limit '78' \
    --offset '4' \
    --sortBy '2UQ2iJ7K' \
    --statCodes 'vElZ7VYk' \
    --tags '8Ljk52ya' \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'gnKajFln' \
    --body '[{"statCode": "Irtzzjgu"}, {"statCode": "B2BDB67b"}, {"statCode": "CxCkHjAk"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ewfHIzC8' \
    --body '[{"inc": 0.8819970090751391, "statCode": "AGkpnMjM"}, {"inc": 0.16805746000646804, "statCode": "CSYY1OFV"}, {"inc": 0.664464643901028, "statCode": "0QpJrO6q"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'ug9nONO8' \
    --body '[{"inc": 0.3402906086118015, "statCode": "x8cmvMnm"}, {"inc": 0.9595784157692342, "statCode": "Vvv9dj8L"}, {"inc": 0.4711705274172774, "statCode": "g8GG7XnZ"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'iMJSOVsN' \
    --body '[{"statCode": "ar96u0TQ"}, {"statCode": "Mfq6PdsC"}, {"statCode": "DhU3mreR"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'CeEc2U0c' \
    --userId '2RuI5weK' \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'IIdOkWX5' \
    --userId 'xNw0ZiDA' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wqCu3CJw' \
    --userId 'fSRohOcf' \
    --body '{"inc": 0.39893857451935244}' \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Wzf9x5jg' \
    --userId 'ITNsOnRM' \
    --additionalKey 'oWDBX3oy' \
    --body '{"additionalData": {"QQj3ySpD": {}, "nbF0xm9e": {}, "2jJ2WZhQ": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '60' \
    --statCodes 'aWwBzBbC' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'OaqIYv3r' \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '37' \
    --name 'NQe25Nju' \
    --offset '64' \
    --sortBy 'mOAgNRVr' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["W7YF0y1q", "T6cXtFH8", "TEnL5UX3"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'CXHXtvBH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FekacbAz' \
    --userIds 'ep21xFnC' \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.938870050140066, "statCode": "2YpOCHtt", "userId": "USHEjVSM"}, {"inc": 0.5998268633692665, "statCode": "4AagAacF", "userId": "uOGl6zHf"}, {"inc": 0.053870200659641765, "statCode": "vsQD4eRp", "userId": "ldtzug5d"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3803932793924969, "statCode": "DEn78Z71", "userId": "zWmV96GR"}, {"inc": 0.5239119730562644, "statCode": "kWeQUuwh", "userId": "DthZW3yM"}, {"inc": 0.20718620680606326, "statCode": "vMgWeMyV", "userId": "fOkcQdoM"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "SEOktVEF", "userId": "XLU7H0hj"}, {"statCode": "lTGj94XJ", "userId": "1Sy8csaR"}, {"statCode": "ku331RMr", "userId": "w6tgQ5wc"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["0sZmW1Ud", "Y3hYcgwP", "6m4KL7gF"], "cycleOverrides": [{"cycleId": "cjSzs2e2", "maximum": 0.6477243062094704, "minimum": 0.895525647727187}, {"cycleId": "y8OiYHH9", "maximum": 0.2380677731966946, "minimum": 0.49368683130334834}, {"cycleId": "qLZyEHfs", "maximum": 0.9483718603148275, "minimum": 0.7480813651950048}], "defaultValue": 0.6410881699263509, "description": "9NkHJKks", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.8409490848164901, "minimum": 0.8234677437269502, "name": "Yl5HjTFP", "setAsGlobal": true, "setBy": "SERVER", "statCode": "ZdIhKRJu", "tags": ["6Ch7JJ3j", "iyJZiI3v", "1ig5VHok"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'RoEVPUbE' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '99' \
    --sortBy 'e5p82rIj' \
    --statCodes '["QW2yVGv2", "aHI6AZTX", "FjzIvroQ"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '31' \
    --sortBy '7AQOkTCY' \
    --statCodes '["F8cL1iKq", "y2nI9rfn", "OaO2ePHv"]' \
    --tags '["5hPwdnD4", "KzXqgF1e", "P0cECVHL"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Becyg4DS' \
    --statCodes '["plt2dsUd", "1CcD3TND", "OqTvgA9a"]' \
    --tags '["Azq99wOt", "VDuyp4Nc", "jWUCdArb"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'YuB0HcJj' \
    --namespace $AB_NAMESPACE \
    --userId 'O8TJyeAo' \
    --limit '42' \
    --offset '34' \
    --sortBy 'F1CHxACV' \
    --statCodes 'GeDasRIP' \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'f7L8OVuR' \
    --limit '23' \
    --offset '33' \
    --sortBy '52GGY5pi' \
    --statCodes 'yN8ScaZq' \
    --tags 'SVl1CmiH' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JsCp6KrP' \
    --body '[{"statCode": "RPt3G2K8"}, {"statCode": "k9df9zRa"}, {"statCode": "u9ibFdjd"}]' \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wVkjedKl' \
    --additionalKey 'wJvaYBSu' \
    --statCodes '["CFslbYGP", "RkXW3KYu", "HAlgaTbe"]' \
    --tags '["Vk7iGGuo", "pcgZy7jf", "w5TNqomT"]' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'GcUJBeKR' \
    --body '[{"inc": 0.03576877244117416, "statCode": "2dlDX9GD"}, {"inc": 0.8609762682783316, "statCode": "F1Vbd8RA"}, {"inc": 0.841494603429902, "statCode": "u6ykUBzD"}]' \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'xhSInhLj' \
    --body '[{"inc": 0.41629616520245505, "statCode": "2iMhPvHh"}, {"inc": 0.882831285619929, "statCode": "w3hxXvrB"}, {"inc": 0.6434654906658185, "statCode": "Av8UsJsx"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '3UuXpcK5' \
    --body '[{"statCode": "0Ss7cyYh"}, {"statCode": "hVjZUxPX"}, {"statCode": "Sw4hYFgJ"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Ds8mJ1Lp' \
    --userId 'AaMy1fLu' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'PCSR1rIk' \
    --userId 'd0eG82AC' \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'tjFgTzgu' \
    --userId 'c4fNM2S4' \
    --body '{"inc": 0.04307776660012763}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '5zx6mnWs' \
    --userId 'pYWYNDkS' \
    --body '{"inc": 0.15644767675982685}' \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Ux60Aq74' \
    --userId 'PP7JAROt' \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"z5U2FuvX": {}, "vqptWCZz": {}, "eOMtDPqx": {}}, "additionalKey": "SDSzSmCW", "requestId": "JDVqLKP0", "statCode": "Yyun6li0", "updateStrategy": "MAX", "userId": "Z6PSLNjH", "value": 0.9607021824932874}, {"additionalData": {"3sa6u454": {}, "sXM5fp7f": {}, "8cKDnC8B": {}}, "additionalKey": "lfnSafWx", "requestId": "2i6YgBou", "statCode": "LiMEHei7", "updateStrategy": "INCREMENT", "userId": "fs9z1PJ5", "value": 0.7334135712280705}, {"additionalData": {"cJ447fgm": {}, "hhFRMwmb": {}, "irg7cp1E": {}}, "additionalKey": "T1Py8gFj", "requestId": "CSVxfFTl", "statCode": "lvnkrdWp", "updateStrategy": "MIN", "userId": "tLWRLszx", "value": 0.4924885081146101}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '0lC6Nmm1' \
    --statCode 'Yx6BpkL7' \
    --userIds '["oVDxy85F", "FsCg2HLg", "9arZJILb"]' \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sw04oM7x' \
    --additionalKey 'F1U7CFXN' \
    --statCodes '["K00carU0", "J0PDT5wB", "CvkXErco"]' \
    --tags '["Vxf673cI", "9lMs1g1H", "hoPyDaf7"]' \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'jYYQZpRG' \
    --additionalKey 'ZUKRGI1B' \
    --body '[{"additionalData": {"hif7dJtP": {}, "NW6pIpE0": {}, "IooRurmm": {}}, "requestId": "3vut39Z2", "statCode": "k6ETkcwG", "updateStrategy": "MAX", "value": 0.3653977898445038}, {"additionalData": {"GWa2NEea": {}, "r4wGukNy": {}, "t0vXB3Wy": {}}, "requestId": "y1u0K1Lu", "statCode": "CKltjhCL", "updateStrategy": "MIN", "value": 0.5704512437060174}, {"additionalData": {"OMALDtCP": {}, "i9DorChf": {}, "n8ZI3v87": {}}, "requestId": "EwfQDROS", "statCode": "AUIkZ3gj", "updateStrategy": "MIN", "value": 0.3760167182653734}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'OH2YvB8U' \
    --additionalKey 'HUEzEEAD' \
    --body '{"statCodes": ["Mjl30umi", "Igh0fMIs", "hsIvBKZ7"]}' \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'zLdb18ds' \
    --additionalKey 'pczP6gN4' \
    --body '[{"additionalData": {"iUbmHp8T": {}, "j2Od999s": {}, "IzrCMQ9j": {}}, "statCode": "w7jgS87k"}, {"additionalData": {"TNx4Wtet": {}, "jTdrsQUn": {}, "loxTAd5h": {}}, "statCode": "T22PUQEN"}, {"additionalData": {"MojSd205": {}, "cJxKmYug": {}, "rUEk7dLt": {}}, "statCode": "9Fqx0ZUb"}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '9kwF2XJ5' \
    --userId 'M3js9UzV' \
    --additionalKey 'syXDniPG' \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'MNabV6N5' \
    --userId 'tUZQhVZN' \
    --additionalKey 'GJt2Tntj' \
    --body '{"additionalData": {"92Pvu0k4": {}, "gFCSz6gB": {}, "eNb35fiw": {}}, "updateStrategy": "MAX", "value": 0.6470641268173115}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"CURNJAo6": {}, "ATITxJpx": {}, "k8C1ErkQ": {}}, "additionalKey": "xwpfyVMV", "requestId": "CiX3zD8x", "statCode": "W7UCLzIe", "updateStrategy": "MAX", "userId": "o4hTxe61", "value": 0.6346539915814846}, {"additionalData": {"4qzH2zaW": {}, "8eo3s0r7": {}, "LfNaBNwD": {}}, "additionalKey": "zOwjinFK", "requestId": "2uS2Leeq", "statCode": "pt41d1td", "updateStrategy": "MAX", "userId": "xKNPrcBZ", "value": 0.16505339611935388}, {"additionalData": {"v6OzoBXU": {}, "SINHFv2G": {}, "hHd0F4zX": {}}, "additionalKey": "tGWMYQiU", "requestId": "2eAqY9qE", "statCode": "6yr5kLsQ", "updateStrategy": "MAX", "userId": "Vqg0NsnU", "value": 0.3007128849481826}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'KLrYxDql' \
    --additionalKey 'CntLn30D' \
    --statCodes '["VGebvyo0", "td9pJFfD", "hTm4lINS"]' \
    --tags '["TGYsTkZ5", "TM3aB28y", "ZIIht3pK"]' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'Z0b5ujcd' \
    --additionalKey 'W9nKW99g' \
    --body '[{"additionalData": {"ZqCBGezR": {}, "AxueRhnN": {}, "LpxpMb5x": {}}, "requestId": "rUyVBEnj", "statCode": "hJHySI4y", "updateStrategy": "INCREMENT", "value": 0.06217533918738816}, {"additionalData": {"UnfZXUYl": {}, "VlaEXwIs": {}, "5ORJixdJ": {}}, "requestId": "lYT3U6sw", "statCode": "jN7EIBwi", "updateStrategy": "INCREMENT", "value": 0.9144288587090765}, {"additionalData": {"jg4eK5sc": {}, "3TQr4kl6": {}, "HmPIJyJQ": {}}, "requestId": "vAgURW2G", "statCode": "haV2O9J4", "updateStrategy": "MIN", "value": 0.5812014449350246}]' \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wcoZ0YM2' \
    --userId 'YJMSE5fV' \
    --additionalKey '0ddhZrvW' \
    --body '{"additionalData": {"Lm5eSKOA": {}, "dyMiNoUQ": {}, "WZvsizxX": {}}, "updateStrategy": "MIN", "value": 0.31109525679573236}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE