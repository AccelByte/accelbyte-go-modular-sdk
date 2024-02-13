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
    --userId 'KD4kEd1u' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Gd3lhBek' \
    --userId 'pGruN7oN' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["kxupPCKB", "mfqyx1r6", "8c7xZlvP"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'xN61XvoC' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'oJRm37Ar' \
    --body '{"achievements": ["bJGHAZpS", "wj1IKmmv", "0IhUaPS9"], "attributes": {"xi9xpsQc": "CfWBiEjw", "MSur5Djv": "m6VA8YcL", "H41e0xoQ": "nixnlt2g"}, "avatarUrl": "ME7X037x", "inventories": ["QivZXykZ", "qGDDlid5", "iZFFB2OP"], "label": "x3WRG8Lq", "profileName": "BFNcSW6Y", "statistics": ["lVBtKVeG", "wNlBkugq", "Q7CzCn3p"], "tags": ["j9K3lR7A", "AoC137FY", "04XTOqM7"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'yh3TOHP7' \
    --userId 'DstipjL1' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gP1vvnSL' \
    --userId 'tZL8qn4C' \
    --body '{"achievements": ["f6aOvDBG", "R9QAMytk", "136fmBpW"], "attributes": {"74an2kJh": "5oFA84Vw", "K8u5PrNG": "3mqKrIBq", "LjHjPD3y": "WN79zUej"}, "avatarUrl": "0KLjntC7", "inventories": ["tkU7E9nz", "cijFCFXx", "iOOVX3ld"], "label": "iTMBNclm", "profileName": "FHctEBQ4", "statistics": ["uVvgdD7B", "KLsrHCPK", "amKaBHqV"], "tags": ["IUiR0A05", "n9RBOixa", "2fapBSrA"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'jLlwuctG' \
    --userId 'zdOc1llY' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '7fO0HmD7' \
    --namespace $AB_NAMESPACE \
    --profileId 'VjFslq62' \
    --userId 'DdkCcwCF' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'kHyTWr0q' \
    --namespace $AB_NAMESPACE \
    --profileId 'j112S2fN' \
    --userId 'lpcpfGgP' \
    --body '{"name": "fgCHIv4n", "value": "1OUJQM4m"}' \
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
    --limit '20' \
    --offset '34' \
    --statCodes 'Msnr8cZx' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'HJlWg2My' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '64' \
    --name 'bBDaPHah' \
    --offset '58' \
    --sortBy 'YzANkSQF' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "unuQymsl", "end": "1976-07-25T00:00:00Z", "name": "XwlUjdrp", "resetDate": 85, "resetDay": 82, "resetMonth": 54, "resetTime": "9OZaf1jm", "seasonPeriod": 50, "start": "1991-02-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["d8Eg8qNM", "3y7hRNJw", "hJ9r6hSg"]}' \
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
    --cycleId 'amCjpQlm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'FzxIRaUx' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "euTZT5fq", "end": "1975-03-18T00:00:00Z", "name": "o2yU8xVt", "resetDate": 78, "resetDay": 38, "resetMonth": 95, "resetTime": "xjgrSMT2", "seasonPeriod": 45, "start": "1973-02-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'dp84jp4z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'NoSgpi0p' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["x7uar4w3", "ymSvSKyq", "w5Px8hs9"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'hqcvXUa6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mQuXAfly' \
    --userIds '0fjzrTAL' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9267523420020074, "statCode": "juYyzC7N", "userId": "LTMDEo6l"}, {"inc": 0.8504376519010185, "statCode": "roBrVOqr", "userId": "W07IaplK"}, {"inc": 0.8155181557554574, "statCode": "SyMVHS0M", "userId": "LQeiGckb"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5537935780105075, "statCode": "YdWfhIe2", "userId": "Kc0VdPdB"}, {"inc": 0.2903768602129422, "statCode": "M7YxDuTh", "userId": "onbqQL1I"}, {"inc": 0.6361555294787143, "statCode": "fSnP6WMw", "userId": "j5fqDCUv"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'BYPZXENF' \
    --userIds '["HC3JceIk", "wXNsYfxb", "9eDTWdm0"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "mnim2wea", "userId": "KJ4NN22r"}, {"statCode": "8TFzWQof", "userId": "rZ2ojCXZ"}, {"statCode": "egWW8Tie", "userId": "VFYTKFYF"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'k3J6Y3Kg' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '70' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["LZzcuuQy", "XJeuV2k2", "DtP0hrsV"], "defaultValue": 0.753284028406449, "description": "tq1i9nL7", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.18701845897699276, "minimum": 0.8249052539433382, "name": "SIVsS9jA", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "NKH2abJp", "tags": ["AhJp8HZl", "ppB0nCJP", "ehoJd8zx"]}' \
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
    --limit '65' \
    --offset '97' \
    --keyword 'wEhXD48B' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '8U1wkD3U' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '6X5gjKE3' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '6can5BMM' \
    --body '{"cycleIds": ["Qwvb86a8", "1cwrbcgh", "OSHgFNRV"], "defaultValue": 0.12472330159908784, "description": "y9XpNymc", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "eVsbQexB", "tags": ["uq9FQFuZ", "WQVTZYwP", "NDnap1mJ"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Gp5mNvOq' \
    --limit '33' \
    --offset '41' \
    --sortBy 'kNiKAhbH' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'i2JyKBGT' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 's2M6TJ3X' \
    --namespace $AB_NAMESPACE \
    --userId 'Td7XCNAJ' \
    --isPublic 'false' \
    --limit '60' \
    --offset '72' \
    --sortBy 'gouXYOip' \
    --statCodes 'nXssOPsb' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bcGmH3oc' \
    --isPublic 'false' \
    --limit '26' \
    --offset '34' \
    --sortBy 'HPYYUmsR' \
    --statCodes '98oQXDGv' \
    --tags '9yCScxUL' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '1zmCHrRj' \
    --body '[{"statCode": "bsf8zWpZ"}, {"statCode": "QXCoefcj"}, {"statCode": "JmXUjdQr"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'zqGcf2ZU' \
    --body '[{"inc": 0.614979736233539, "statCode": "zMeUK3bI"}, {"inc": 0.4557325808660324, "statCode": "58M23t3i"}, {"inc": 0.5770180747181155, "statCode": "1R0EVW5p"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'rOjyODQ8' \
    --body '[{"inc": 0.8574211868252046, "statCode": "84vdmnrF"}, {"inc": 0.10668424749615135, "statCode": "ZumwTPu4"}, {"inc": 0.8125737646399771, "statCode": "eCzpYqjY"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '7ju8X2y6' \
    --body '[{"statCode": "k7icjzxc"}, {"statCode": "DlE1AoV3"}, {"statCode": "USMpjLiW"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'b2wb4lyg' \
    --userId 'KepVY3MJ' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'vAWfJcIK' \
    --userId '3qrvh1pn' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '0e1JyVzw' \
    --userId '3jCRRH5K' \
    --body '{"inc": 0.9366676199654191}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vQ5X798K' \
    --userId 'EJdh3zgz' \
    --additionalKey 'ly1HMWQy' \
    --body '{"additionalData": {"ge75mXgu": {}, "eMZq3Ud8": {}, "xDJ9sm8y": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '1' \
    --statCodes 'xR0VPUoZ' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Il6Xoquh' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '22' \
    --name '4dZDd1WV' \
    --offset '48' \
    --sortBy 'zeiDcjgW' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["l2NDekzn", "WQ4Xs15v", "cbLKMvdL"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'GsWwpfrB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hYD6LvCY' \
    --userIds 'opORA36p' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8868857883817916, "statCode": "Thlc6Zmk", "userId": "SgyIxZSJ"}, {"inc": 0.9607907962392058, "statCode": "2bqOUi8j", "userId": "wX2CDkjY"}, {"inc": 0.4132217929724471, "statCode": "gsgFnJdS", "userId": "X7i5NyOZ"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6670211498828398, "statCode": "9XF4OjjH", "userId": "OA9S1tO7"}, {"inc": 0.789084051289382, "statCode": "cDNKiRUW", "userId": "mg3l99r0"}, {"inc": 0.12631163710201254, "statCode": "hRVHE5Db", "userId": "S6vzNqTN"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "B9RH5GYP", "userId": "oV9yRiLu"}, {"statCode": "1YnP7kVR", "userId": "Rg9r7W4P"}, {"statCode": "6Tbb53wL", "userId": "4mTtJ8oc"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["lJDnraTv", "VXBXgtL4", "k6bkAP0R"], "defaultValue": 0.012462331494727752, "description": "RPBZ7aqe", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.5059057775870139, "minimum": 0.03686653025548303, "name": "aJOPEuYc", "setAsGlobal": true, "setBy": "SERVER", "statCode": "seQhGmRh", "tags": ["zzMFCOVB", "DesWGaIV", "zNdX4pbs"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'UlHv3V3q' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '89' \
    --sortBy 'xTxo8C6j' \
    --statCodes '["Zyjealoi", "obbx7Dqr", "Pgql9YlU"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '7' \
    --sortBy 'g8PXzRZj' \
    --statCodes '["NCNDS5YU", "uYWusywr", "ipHatJvg"]' \
    --tags '["5MetcB6C", "DD7vlgo5", "LDRaNEob"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'rTIAvLO4' \
    --statCodes '["E72jzTx2", "FGzGG2PE", "kSeIiJMU"]' \
    --tags '["R1qLw1rT", "D52huu33", "mNBtcro6"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'eO4RtALy' \
    --namespace $AB_NAMESPACE \
    --userId 'qxbq32yy' \
    --limit '12' \
    --offset '90' \
    --sortBy 'gEibziQ1' \
    --statCodes 'AaBDLYBb' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'WLAKWmnd' \
    --limit '15' \
    --offset '17' \
    --sortBy 'kJm4Takx' \
    --statCodes 'eMubIOf4' \
    --tags 'T0i5TdYN' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'dzFSSeZN' \
    --body '[{"statCode": "E38fcZQH"}, {"statCode": "44fNxqiU"}, {"statCode": "GWtanzZw"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'G5TYZGEt' \
    --additionalKey '8UDcaTOa' \
    --statCodes '["pJo6FPxo", "ey59HxBl", "yzBhnsET"]' \
    --tags '["m5Qs22ID", "osnRMvDo", "Xt8V4rIz"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'f9DRk2tF' \
    --body '[{"inc": 0.20672644900474002, "statCode": "2SinmXec"}, {"inc": 0.7160736410124505, "statCode": "5aZCKDVN"}, {"inc": 0.062016241859697896, "statCode": "hkj42aYK"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'yNEzFzQA' \
    --body '[{"inc": 0.8269273270245805, "statCode": "HhJl2jM9"}, {"inc": 0.5926193716709542, "statCode": "cDroA0f6"}, {"inc": 0.7312158375218127, "statCode": "nmsVmcQR"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'LnlR2ebk' \
    --body '[{"statCode": "t4RcUPGt"}, {"statCode": "LyUp5VDi"}, {"statCode": "9VI3WyTc"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'bXBGDYHE' \
    --userId 'An6oyrl9' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'HItKdnob' \
    --userId 'lAvhrvlC' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'BuBFz2q7' \
    --userId 'uqOtxiGG' \
    --body '{"inc": 0.6841587028795174}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vWl4gABH' \
    --userId 'PsKFUttk' \
    --body '{"inc": 0.729945491583013}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '50tghl3F' \
    --userId 'F0WG6RVa' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"fIUurHt9": {}, "sjKGwp8z": {}, "Wz3McdG0": {}}, "additionalKey": "KPZACUBr", "statCode": "4MpZOvmg", "updateStrategy": "OVERRIDE", "userId": "1yC6xl2V", "value": 0.3784266437074687}, {"additionalData": {"h9Q2oF3j": {}, "Gp929BhL": {}, "ea8ypg7Q": {}}, "additionalKey": "iw21XH0Y", "statCode": "grITG3Z4", "updateStrategy": "OVERRIDE", "userId": "tYvLuCFD", "value": 0.5916758280916853}, {"additionalData": {"rZTecqHw": {}, "1M3IpMMj": {}, "aplcmUM5": {}}, "additionalKey": "NH9qoodm", "statCode": "8n2sSe2r", "updateStrategy": "OVERRIDE", "userId": "ShcYdIKu", "value": 0.8600661637280483}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '8p6FnGsQ' \
    --statCode '2VQfBIst' \
    --userIds '["DvjNaHGi", "wpYQ3AjY", "QK3ULSLl"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'vmTMFwWM' \
    --additionalKey 'cO3dimzY' \
    --statCodes '["hkcysfGw", "qQEWYxou", "t14ruWLV"]' \
    --tags '["njY245P8", "2yTl2xWh", "Zrj1cANX"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '2A1Hvc1N' \
    --additionalKey 'KbjyxJ5A' \
    --body '[{"additionalData": {"YzGMTpmY": {}, "mlCbXrcn": {}, "poiinCLZ": {}}, "statCode": "D2Eldi0R", "updateStrategy": "MAX", "value": 0.662695211353917}, {"additionalData": {"YMWSfriH": {}, "xnnmrn2V": {}, "V4y8VlH5": {}}, "statCode": "7wSHoxeC", "updateStrategy": "OVERRIDE", "value": 0.9281726503961756}, {"additionalData": {"NZdbo4Wb": {}, "bs63TF29": {}, "mSGifejl": {}}, "statCode": "d2H68UFZ", "updateStrategy": "OVERRIDE", "value": 0.39461901983551795}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'qdjSDv9L' \
    --additionalKey 'Dy7icsU6' \
    --body '[{"additionalData": {"4Ya5dy4r": {}, "EyK9N8xW": {}, "wBbMPZ0f": {}}, "statCode": "4LlgzK9T"}, {"additionalData": {"kFLe5aAb": {}, "FvZ051s0": {}, "KRXT1e7l": {}}, "statCode": "E3bBouX4"}, {"additionalData": {"C8VmXQLE": {}, "Bn38gjx6": {}, "EFyDorOM": {}}, "statCode": "4JzrCZOM"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'P6azEbo3' \
    --userId 'oXTaOC0E' \
    --additionalKey 'eu7pdsXy' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'DBQ9pvtn' \
    --userId '7kMxX99Y' \
    --additionalKey 'Pjxn4vJT' \
    --body '{"additionalData": {"5CTLishW": {}, "ORZLvHVa": {}, "TsXJb7L5": {}}, "updateStrategy": "MAX", "value": 0.6388810947929141}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"WZenXoIE": {}, "B16JP4AF": {}, "NXepkYUG": {}}, "additionalKey": "KkJO0NKQ", "statCode": "E6lfi5c4", "updateStrategy": "MAX", "userId": "No4NCIHu", "value": 0.9374024644564789}, {"additionalData": {"AxNuzgNt": {}, "kpegNJel": {}, "9ZypLM9K": {}}, "additionalKey": "lRw3YKxO", "statCode": "Gslkdsik", "updateStrategy": "OVERRIDE", "userId": "HKW5hJHG", "value": 0.2413074574547982}, {"additionalData": {"jfJb3xAX": {}, "HUlhVO5H": {}, "aE22lAic": {}}, "additionalKey": "c4sHwIUR", "statCode": "NRh3hsMw", "updateStrategy": "MAX", "userId": "a9I17sCX", "value": 0.3370792706612944}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'rHTmDVqq' \
    --additionalKey '1dojtuiW' \
    --statCodes '["OHNdHD7L", "1cYTHKIg", "vN0cGcnY"]' \
    --tags '["5K8NshPV", "9pTi8oZ7", "Gwu6fCqa"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'zjooABc0' \
    --additionalKey 'FuwiiLlM' \
    --body '[{"additionalData": {"9lOdvayt": {}, "yFGcE36z": {}, "PCxPvw9q": {}}, "statCode": "zQkhkAOo", "updateStrategy": "OVERRIDE", "value": 0.9813636884093331}, {"additionalData": {"Bt7nUU9u": {}, "ip57Ch9p": {}, "n14KimeP": {}}, "statCode": "nl2AhljA", "updateStrategy": "OVERRIDE", "value": 0.7220150146792848}, {"additionalData": {"2bQrCXwb": {}, "IfjQYQGv": {}, "wIeXGH0y": {}}, "statCode": "9tECSgHi", "updateStrategy": "MAX", "value": 0.31713545177779623}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '94QXhkUx' \
    --userId 'dYV1zVzt' \
    --additionalKey 'fJ8fErBg' \
    --body '{"additionalData": {"61iIBlZ1": {}, "SYSypaaP": {}, "kwDbWqL4": {}}, "updateStrategy": "OVERRIDE", "value": 0.05329125879158825}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE