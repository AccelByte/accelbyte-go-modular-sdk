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
    --limit '24' \
    --offset '46' \
    --statCodes 'raQ9M8mX' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'jlScI2vx' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '60' \
    --name 'YuGPzBEa' \
    --offset '3' \
    --sortBy 'ccQLoMlk' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "U29FV88J", "end": "1972-12-21T00:00:00Z", "id": "tBiuQ1XF", "name": "LfckI1kG", "resetDate": 5, "resetDay": 78, "resetMonth": 16, "resetTime": "Yn9ayQ6S", "seasonPeriod": 40, "start": "1998-05-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["CzfPxxxf", "ONvVnII8", "l2ksbWE6"]}' \
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
    --cycleId 'rXICENyF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'OiRZzeOM' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "llxdgbEN", "end": "1990-10-05T00:00:00Z", "name": "rE1aqm0H", "resetDate": 99, "resetDay": 57, "resetMonth": 95, "resetTime": "dVMr18F7", "seasonPeriod": 67, "start": "1984-10-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'UKWNoTxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '5MOwMGVX' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["YhQriFdm", "ROQSjMkJ", "lYMOStcj"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'abgGF0NU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'iShl5VAB' \
    --userIds 'v6fE1Y2y' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9083769501945292, "statCode": "i92sfsiq", "userId": "YZvmhvfM"}, {"inc": 0.2685246255694528, "statCode": "6Ypt7trp", "userId": "kUQ4jxMq"}, {"inc": 0.37684863770757215, "statCode": "VsgSBTd3", "userId": "IBymA11M"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8992184057224687, "statCode": "nrlkFGM8", "userId": "EIACN7kP"}, {"inc": 0.9165642907422937, "statCode": "RH2pUsZt", "userId": "uDOfNIuA"}, {"inc": 0.6017665624424162, "statCode": "DfmtdZtn", "userId": "9QyB7HQq"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'jsqJD2Ub' \
    --userIds '["otIuqXkw", "61QXTLQe", "FeyPYBBi"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "r7kVF0LN", "userId": "gAgZRlsD"}, {"statCode": "OZxor7YI", "userId": "eAaoSiH5"}, {"statCode": "K5INsi7M", "userId": "GdAuR9qB"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'p9JLJZcv' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '67' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["1Wwas2DH", "8CoVfw7M", "HwTDhtYW"], "cycleOverrides": [{"cycleId": "HWFR1yYY", "maximum": 0.6108662907507216, "minimum": 0.212927861399135}, {"cycleId": "BLBrQW9z", "maximum": 0.5910971360070745, "minimum": 0.16874523734146918}, {"cycleId": "cmTajapE", "maximum": 0.8091151742693411, "minimum": 0.47625223183884857}], "defaultValue": 0.2902675772998806, "description": "fibk3h6Y", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.4936243767115027, "minimum": 0.221838580558267, "name": "0MTYis7F", "setAsGlobal": true, "setBy": "SERVER", "statCode": "dnYXLmed", "tags": ["zIBHytf4", "1n9ngaGl", "NEsxzN3I"], "visibility": "SERVERONLY"}' \
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
    --limit '45' \
    --offset '94' \
    --keyword 'v7EsJxGl' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zjwGJqvr' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '7BZMntjv' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QaaHhPiH' \
    --body '{"capCycleOverride": false, "cycleIds": ["44aTrzr8", "ZOdC6LMq", "yK9tg4Ak"], "cycleOverrides": [{"cycleId": "gePOJX8Z", "maximum": 0.2646242421341033, "minimum": 0.4866157935612434}, {"cycleId": "Z7GwLQw5", "maximum": 0.8058685032807098, "minimum": 0.9587425996188279}, {"cycleId": "vitfO36V", "maximum": 0.4802094402351128, "minimum": 0.1710129210950584}], "defaultValue": 0.6936186540981275, "description": "LhbaR7rB", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "1BeDoc0A", "tags": ["jRU4qMay", "s3ncduro", "Oh50ugfl"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '6SCRGr72' \
    --limit '0' \
    --offset '16' \
    --sortBy '3hwukUHj' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'L1wr6gQq' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'XmFwrGBX' \
    --namespace $AB_NAMESPACE \
    --userId 'amRmjMuu' \
    --isPublic 'true' \
    --limit '24' \
    --offset '22' \
    --sortBy '2pmqTiga' \
    --statCodes 'kJ1mbNrE' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Cr0v5xYD' \
    --isPublic 'false' \
    --limit '92' \
    --offset '2' \
    --sortBy 'ac95CRqq' \
    --statCodes 'xDg3K1cS' \
    --tags 'FyPOzG1P' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'PIVae3Mn' \
    --body '[{"statCode": "a4uD2dcH"}, {"statCode": "wF1gSMYJ"}, {"statCode": "hdeJfOKO"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'tHJqBAnt' \
    --body '[{"inc": 0.7003479510700766, "statCode": "dJL5hV5k"}, {"inc": 0.6547093792379943, "statCode": "iAs6UUD8"}, {"inc": 0.6222810579259332, "statCode": "G2Y6TnHK"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'RdNbiYQx' \
    --body '[{"inc": 0.3270364981459054, "statCode": "bezhDUyy"}, {"inc": 0.5745652848840501, "statCode": "raHaCVqg"}, {"inc": 0.9298796620089305, "statCode": "kXonsKlz"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'RJsai021' \
    --body '[{"statCode": "tlD5nAeT"}, {"statCode": "MyoYrXG7"}, {"statCode": "Jomt2vvX"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'WzCSObrc' \
    --userId 'hj9XA3yi' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'OsskBegF' \
    --userId 'LdAnxvbA' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6zhbR2Wa' \
    --userId 'mzkUFbGp' \
    --body '{"inc": 0.9082706716661025}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'PiwaGIVk' \
    --userId 'ZSCXRp8n' \
    --additionalKey '4lNL6Wad' \
    --body '{"additionalData": {"yjP02i6b": {}, "DckXfhsV": {}, "K1zQBTdo": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '72' \
    --statCodes 'qzBkIG2K' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BG2dB4fu' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '31' \
    --name 'ywJOnne4' \
    --offset '94' \
    --sortBy '1kGG4gdy' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["q6a0UxJ7", "R6Eq3pjK", "ev1Co6To"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'ZWD74Nrf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '7vGsy7su' \
    --userIds 'lafJCXWc' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3746261798985355, "statCode": "WWd7o0zN", "userId": "1c00o2EO"}, {"inc": 0.05738640929153671, "statCode": "tPrTTB6e", "userId": "s6zV68td"}, {"inc": 0.025459853411028632, "statCode": "cwDcmylf", "userId": "PQ3ZMOWn"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7442686413279771, "statCode": "LxMKYSkS", "userId": "uhYTcsFx"}, {"inc": 0.6288757018636212, "statCode": "eh4d9Mxu", "userId": "6yg2OjXZ"}, {"inc": 0.9025759764084745, "statCode": "qRvQ9KsF", "userId": "lHC7EqBn"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "i2XkOYoH", "userId": "UBqYrnsg"}, {"statCode": "XEoom3VI", "userId": "wsyT2Zts"}, {"statCode": "L42C9LbU", "userId": "ZiEAptOr"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["JajaTcK5", "dMveZQfU", "Pmd52AiL"], "cycleOverrides": [{"cycleId": "r6wTa0AM", "maximum": 0.5652431833304165, "minimum": 0.6803777595232887}, {"cycleId": "FUJFI9Oz", "maximum": 0.5127229976632994, "minimum": 0.9905012359912206}, {"cycleId": "TGlOc2us", "maximum": 0.25547169766564504, "minimum": 0.1054518805955943}], "defaultValue": 0.6263706860326913, "description": "HTQYVfSX", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.12549639867490758, "minimum": 0.487993384123826, "name": "J08CfCFU", "setAsGlobal": true, "setBy": "SERVER", "statCode": "n4pJeCrN", "tags": ["M3MPtJq7", "tvo9fd7C", "GS97PEBL"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'KLi03bp3' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '65' \
    --sortBy 'kwrCvFPg' \
    --statCodes '["o4TYxIge", "IJJI9vwZ", "tzUcjyS6"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '32' \
    --sortBy 'WM2AqW1Z' \
    --statCodes '["wDdMyMlr", "rFRkLw9U", "xWLlFTWQ"]' \
    --tags '["kOeaGrOk", "Nz1vYaGg", "0XW1AcQf"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'RcpnXwfz' \
    --statCodes '["ftfuwM8T", "I7wegYmd", "aYBfAfuL"]' \
    --tags '["CFrx7v7P", "6FTd9w3O", "XjUuRaZz"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'o0SRpeT1' \
    --namespace $AB_NAMESPACE \
    --userId 'LoLkRiAd' \
    --limit '64' \
    --offset '83' \
    --sortBy 'oA4wZt1F' \
    --statCodes '7He29J7b' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'iQUKBynU' \
    --limit '95' \
    --offset '0' \
    --sortBy 'fqWBXzUp' \
    --statCodes 'XQlbthxM' \
    --tags 'vo3mlheA' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2LQuXlwk' \
    --body '[{"statCode": "PhlkOPKb"}, {"statCode": "NK6vkNgm"}, {"statCode": "ZgGbIPuV"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sypUFpFq' \
    --additionalKey 'Kj5g977A' \
    --statCodes '["cZss1erZ", "Jqo9oYdr", "0PeIYLM1"]' \
    --tags '["qpPVC5zJ", "R7hIdSJJ", "vjVB9FdC"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f9VC8RiW' \
    --body '[{"inc": 0.6595045766294315, "statCode": "C6wUWpfa"}, {"inc": 0.539854260206022, "statCode": "K8iS6ZFu"}, {"inc": 0.7999991297049265, "statCode": "bCJU8TEl"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '3y8SgF0P' \
    --body '[{"inc": 0.24309212027079719, "statCode": "H5OEePoX"}, {"inc": 0.008843933944396976, "statCode": "PJJ8lr3L"}, {"inc": 0.520008806888119, "statCode": "l1OF0XyR"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'nNuXKprd' \
    --body '[{"statCode": "m2dzumsA"}, {"statCode": "04DIVVz5"}, {"statCode": "gMdwwcjW"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'MvcknTwm' \
    --userId 'EriK6sOL' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'HUbCK7Iv' \
    --userId 'OKKLqQwC' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Nkx16SFL' \
    --userId 'qxOUNTLL' \
    --body '{"inc": 0.578199969989029}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xmGQdpui' \
    --userId '9zW6kh8a' \
    --body '{"inc": 0.24281183297670206}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'XLXk6d3L' \
    --userId 'ue9vrsLh' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"61EowwtC": {}, "1fVsbrno": {}, "WE91xylp": {}}, "additionalKey": "xO8tFPXh", "statCode": "Cmmyz4GO", "updateStrategy": "MAX", "userId": "wgDuYeyM", "value": 0.05722625342603049}, {"additionalData": {"W46l0Im7": {}, "T8BNFRUv": {}, "FByK7adz": {}}, "additionalKey": "bgmpSxJq", "statCode": "FqL5bt77", "updateStrategy": "OVERRIDE", "userId": "JPFehSoK", "value": 0.3498742894579011}, {"additionalData": {"qHMZOeiN": {}, "d3tQQ28m": {}, "DlFMOMVa": {}}, "additionalKey": "Szkj7dwV", "statCode": "BhH3kkDf", "updateStrategy": "OVERRIDE", "userId": "XufJXniG", "value": 0.005000884086485025}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'SnRKgqxx' \
    --statCode 'O78blmXT' \
    --userIds '["kQwTZZoQ", "ioHNzSSk", "JqxKky8E"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'thGOpfbb' \
    --additionalKey 'jOO7etd8' \
    --statCodes '["uKyZTcMt", "Sbc1m5A9", "Id1H1i5S"]' \
    --tags '["2e2x0Fng", "HvPiMCBM", "F2NMSNUU"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'L00Clb0H' \
    --additionalKey 'YbCNvFNZ' \
    --body '[{"additionalData": {"CRi2MQeM": {}, "FHY3fkmx": {}, "xcTWb5Hc": {}}, "statCode": "FiYR9DXF", "updateStrategy": "MIN", "value": 0.1973802722333028}, {"additionalData": {"VkY1fDSv": {}, "MbEzTVN4": {}, "7vc1e10e": {}}, "statCode": "0jRVs4yG", "updateStrategy": "MAX", "value": 0.2885276967711502}, {"additionalData": {"Or5F0alC": {}, "K5EJGRCY": {}, "Mo1sibil": {}}, "statCode": "TKldVVRP", "updateStrategy": "OVERRIDE", "value": 0.992176726038198}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'OEUyqpSp' \
    --additionalKey 'LKct2iiO' \
    --body '{"statCodes": ["NxAoFoeE", "d8JSVhPX", "j5Omm23E"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'baHZZwSM' \
    --additionalKey 'EQ2K30um' \
    --body '[{"additionalData": {"hRl5wpfI": {}, "6Oo5lNMq": {}, "St70JyYB": {}}, "statCode": "XRA1Nj5E"}, {"additionalData": {"xxJ7p7eL": {}, "Xu6zmwpW": {}, "PC72HpvZ": {}}, "statCode": "d2zGCMq6"}, {"additionalData": {"0kDpfEAJ": {}, "bCsAg1NH": {}, "AwsAR7kz": {}}, "statCode": "odDMtCY4"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'bKSkyV6e' \
    --userId 'CbhO8DWG' \
    --additionalKey '0mH7OM8c' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'EGDPbY8R' \
    --userId 'BaPNziQg' \
    --additionalKey 'JTNm17vQ' \
    --body '{"additionalData": {"OmSdGBJn": {}, "DNOcPijE": {}, "ZQ522Kzv": {}}, "updateStrategy": "INCREMENT", "value": 0.7148336550392497}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"z53Kkr5S": {}, "wyuzdvbb": {}, "xEqhk6Og": {}}, "additionalKey": "4vO9jDDD", "statCode": "iw7geYwL", "updateStrategy": "MIN", "userId": "P2bg16Ft", "value": 0.1412443866944727}, {"additionalData": {"ghfjqcBU": {}, "xvJaIkq9": {}, "RjAvgHOA": {}}, "additionalKey": "k5xT4y8P", "statCode": "ldjXM4dm", "updateStrategy": "MAX", "userId": "LtsCyVsa", "value": 0.7590199856315688}, {"additionalData": {"zsUv0kIa": {}, "DBqCWLJO": {}, "JRR1qaXn": {}}, "additionalKey": "SkiyEQVm", "statCode": "tDlEKAfq", "updateStrategy": "INCREMENT", "userId": "GK6mq6gB", "value": 0.530829822784923}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'LA1p3Zik' \
    --additionalKey 'zrCyEeE8' \
    --statCodes '["1kul6QWs", "RjJhaMeK", "UCTXm5Cz"]' \
    --tags '["26bJDAKP", "xy0Fqabh", "o0JoUolQ"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'vorPXFut' \
    --additionalKey 'rcmGwAfa' \
    --body '[{"additionalData": {"sDGPUsZA": {}, "9MXbB3L4": {}, "qEAlw0cT": {}}, "statCode": "FKARzxCk", "updateStrategy": "MIN", "value": 0.7597336055656206}, {"additionalData": {"fGu21tph": {}, "RuYpaPwB": {}, "UVLFfpWg": {}}, "statCode": "qHPMfJkl", "updateStrategy": "OVERRIDE", "value": 0.11054561747031888}, {"additionalData": {"VVFlBSTV": {}, "fIHSMqUm": {}, "uQB4ZmB3": {}}, "statCode": "KYnozhgV", "updateStrategy": "MAX", "value": 0.47333668494880543}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'daRG4uX9' \
    --userId '3wk3JuVo' \
    --additionalKey 'LQEgGRdR' \
    --body '{"additionalData": {"UY6J0QOt": {}, "8o5tOwck": {}, "DWQxKZJ7": {}}, "updateStrategy": "MAX", "value": 0.7554495977100537}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE