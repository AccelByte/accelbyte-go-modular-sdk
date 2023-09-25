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
    --userId 'DFlMXbCS' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gDQ7EGy4' \
    --userId 'cdRgxHUx' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["tsHDAf4i", "QkYgp5HH", "8yArBp7R"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '5eTV9wmB' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'pvrLblZ0' \
    --body '{"achievements": ["3xiMEyVS", "3XI0D5ah", "MfttcLfF"], "attributes": {"IJuF7kFC": "79bIn7p8", "kctHh1oU": "zVK1lhc6", "BnjfMfnn": "1a6hzuf6"}, "avatarUrl": "DR7xtbla", "inventories": ["BXYlcKYk", "gdddBBXu", "pAFOgh64"], "label": "Fqbrsyv2", "profileName": "g3lHDcJj", "statistics": ["ni0fANlL", "BqMxeAfv", "jKN0Iw4l"], "tags": ["BmaSknFI", "67uK8vDR", "EwxvbptA"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'mqrcPjdy' \
    --userId 'Mr7XLs4S' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'HZBjFox5' \
    --userId 'UFjWukzx' \
    --body '{"achievements": ["f8G48Wej", "EjlEPAOC", "3zZJoGv9"], "attributes": {"TE9bkaxo": "Bdx8NWGT", "61VR6d6S": "ISy1ruBo", "q02hHO9j": "30rSEHQk"}, "avatarUrl": "XaD2573c", "inventories": ["qL1VWQDQ", "zFw0iriO", "3uu1WIXq"], "label": "qeUoNYCL", "profileName": "vbkuNnbn", "statistics": ["9xtDwqr4", "pStdWjHp", "8AkdqLkA"], "tags": ["6WN9ZurU", "gcA8aWCL", "pFnpQwzL"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'fMRo2yjn' \
    --userId 'mnxflf7a' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '3UQXdak2' \
    --namespace $AB_NAMESPACE \
    --profileId '8BAAIA3b' \
    --userId 'eARoLzpR' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'dv5GYW9P' \
    --namespace $AB_NAMESPACE \
    --profileId 'YZZ7sOjB' \
    --userId 'CTybAgBm' \
    --body '{"name": "rZMUZhW9", "value": "ksOWVLIf"}' \
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
    --limit '96' \
    --offset '94' \
    --statCodes 'Vrsb5ONg' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'WDTXgVqm' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '34' \
    --name 'N5ncmcSQ' \
    --offset '40' \
    --sortBy 'ruJqfqn2' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "oIiWo1qr", "end": "1991-10-28T00:00:00Z", "name": "DIrjLEgk", "resetDate": 86, "resetDay": 38, "resetMonth": 46, "resetTime": "cbbAjVpy", "seasonPeriod": 86, "start": "1977-02-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Mgge36Ua", "snljOIaC", "LZgXA2gE"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'ad1Mh9MV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '5xSnVx3i' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "Q3yo4Ivq", "end": "1982-05-24T00:00:00Z", "name": "rVGjd7ZF", "resetDate": 34, "resetDay": 59, "resetMonth": 34, "resetTime": "53TLaEIm", "seasonPeriod": 89, "start": "1974-06-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '1Vu4mHwm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'YWD83UNL' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["JU1rBxrn", "veCbZM4O", "mJ9AqDWs"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'HFD1JEUz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ytb00pt6' \
    --userIds 'PZdZ8SmP' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.51251314861708, "statCode": "VB1CVK0C", "userId": "hI6t71ws"}, {"inc": 0.4941101526158683, "statCode": "ZhxT9oFo", "userId": "qUapjbuL"}, {"inc": 0.15141668000150432, "statCode": "OpQVZUaU", "userId": "RqLutVYS"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.251220432079275, "statCode": "t0JeCejD", "userId": "iOJWSYkg"}, {"inc": 0.8396919970022029, "statCode": "G96qynLY", "userId": "GLNj6Zba"}, {"inc": 0.023517046700377686, "statCode": "OIP21MSH", "userId": "wvjQzOxN"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wioFH1c9' \
    --userIds '["eahfGXwL", "vrfuPghI", "DpX2pa6v"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "hKqmDP3m", "userId": "hHaGF5vN"}, {"statCode": "MffB7Jwg", "userId": "PFsHTzNM"}, {"statCode": "VutPKqKW", "userId": "gRNFZyLb"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'KFKQL0bp' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '17' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["LXtagDR8", "K3MKyy5E", "tssC1CVc"], "defaultValue": 0.29672132236915105, "description": "vveg0nlc", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.12466992900998741, "minimum": 0.2836030348110552, "name": "mtgR5KVT", "setAsGlobal": false, "setBy": "SERVER", "statCode": "SnDupSuS", "tags": ["8KTgABhw", "K3Zx2RWR", "H7FwHZnt"]}' \
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
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '93' \
    --offset '85' \
    --keyword 'Q4xpKt3l' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FmOz7mxN' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fpNMzDli' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ovhmNrIF' \
    --body '{"cycleIds": ["UYNChpeb", "f1PwkpxV", "zNnCj51B"], "defaultValue": 0.04277225844983612, "description": "2FHZrUtA", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "22MwLX4Q", "tags": ["D1jmH7vg", "E5vN47T2", "4qczRmnk"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ynKjITav' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '4C8BGKHA' \
    --namespace $AB_NAMESPACE \
    --userId 'CEG9leJT' \
    --isPublic 'false' \
    --limit '79' \
    --offset '60' \
    --sortBy 'Pr6gZkmL' \
    --statCodes 'xtyClzSC' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'h7zjOQix' \
    --isPublic 'true' \
    --limit '51' \
    --offset '27' \
    --sortBy 'n70629W4' \
    --statCodes '4fWQEE5I' \
    --tags 'QBD73xIy' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'PpuPEas6' \
    --body '[{"statCode": "IyTNwUub"}, {"statCode": "2OxBgl5x"}, {"statCode": "MNWHbw5D"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '9xTHoNhY' \
    --body '[{"inc": 0.5253393694968158, "statCode": "5EMlZdRp"}, {"inc": 0.2510161061639351, "statCode": "FUX1NLHa"}, {"inc": 0.35862624032626855, "statCode": "l5e0XlXV"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'U95C60rL' \
    --body '[{"inc": 0.6981095046052468, "statCode": "AdMZQgw9"}, {"inc": 0.4124606389750599, "statCode": "uDYFN6ol"}, {"inc": 0.24711428404571067, "statCode": "XST6tcoL"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '1FYn3SpE' \
    --body '[{"statCode": "gOMAWqqH"}, {"statCode": "gevJEzHl"}, {"statCode": "9srK6yY0"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'bnlc5SBQ' \
    --userId 'R0Canvdn' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wZPLSS2m' \
    --userId 'alOxbnvw' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'DfSo8hQ6' \
    --userId 'IPAFMsXM' \
    --body '{"inc": 0.9574573498137117}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xNQEXn7X' \
    --userId 'Ihn9OnoK' \
    --additionalKey 'bab6ND7g' \
    --body '{"additionalData": {"J4147fly": {}, "stcDIXog": {}, "1oduNnsl": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '2' \
    --statCodes 'v15zKGIk' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'W8UUajaX' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '45' \
    --name 'vcsubfFT' \
    --offset '34' \
    --sortBy 'auLV1hR8' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ExUig0oS", "u3mb7WVP", "JMZ3xOY3"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'Gzjmfjoh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '9vpI29w7' \
    --userIds 'XCse1jTA' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9443948614195538, "statCode": "LfCk3Nli", "userId": "mePvR2q3"}, {"inc": 0.08751863214332556, "statCode": "MUhLqA7z", "userId": "a2UdjdvM"}, {"inc": 0.40404331062542675, "statCode": "aa2Hd982", "userId": "g6GIaLGF"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8127963221771917, "statCode": "s6tIwBcw", "userId": "F8stoX3N"}, {"inc": 0.1728023434577367, "statCode": "MNzm7GGz", "userId": "3uGOkado"}, {"inc": 0.8875187280789655, "statCode": "e1xNxoll", "userId": "ZkVHUZPu"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "6ql65Rrk", "userId": "HknqjNki"}, {"statCode": "mZDf42wl", "userId": "lvpzpDWx"}, {"statCode": "FZJ05WYF", "userId": "d7cdVOJa"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["7LedcmX4", "RmjBv4qM", "XhpokJXW"], "defaultValue": 0.9756886306051752, "description": "avzbt2UF", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.531284332377559, "minimum": 0.21779162280809405, "name": "b4vzjZ0s", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "91amJWnr", "tags": ["2Bimbt7D", "GVwakwfq", "HnrZqYjX"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'XFRGJ0fh' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '44' \
    --sortBy 'bDRQqosG' \
    --statCodes '["rWZA64L8", "zwgjkJea", "jCj9CsMq"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '72' \
    --sortBy 'J4o1wyRr' \
    --statCodes '["Uujpms6P", "Jxhnm06u", "lNAlLqxz"]' \
    --tags '["B7rQMYKJ", "r2Mv3NxH", "IW7YCDkU"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'QJnynv8A' \
    --statCodes '["yz4bP46e", "w1CwUyri", "7B1Aso95"]' \
    --tags '["wiVJOGks", "N1lKlZtq", "L0j0JF3J"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'A3k0GJvz' \
    --namespace $AB_NAMESPACE \
    --userId 'dAt8EDnJ' \
    --limit '36' \
    --offset '13' \
    --sortBy 'yzyy0ja8' \
    --statCodes 'XPwVybzf' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'OCO0DuBK' \
    --limit '47' \
    --offset '10' \
    --sortBy '68blzmrA' \
    --statCodes 'RGjFGXsR' \
    --tags '7QnPbXDg' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'P0vlGvDW' \
    --body '[{"statCode": "RGSG0KQS"}, {"statCode": "Zw5LPAqy"}, {"statCode": "CDHWjajA"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'RC671yPb' \
    --additionalKey 'jrCYRU1R' \
    --statCodes '["7qZ3pXIa", "6yLeBK27", "oC9lRTD4"]' \
    --tags '["tIaDmpOu", "Vr0ZKOZD", "kY5OICaS"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'cbcEezI8' \
    --body '[{"inc": 0.1807418227758546, "statCode": "aTNZiyI0"}, {"inc": 0.4007170373988851, "statCode": "uxVaG7SI"}, {"inc": 0.5774042406919634, "statCode": "f3J78uRP"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'GYtJ85Xy' \
    --body '[{"inc": 0.6628548264477249, "statCode": "rrYxjEhg"}, {"inc": 0.592009820235303, "statCode": "mMlitiws"}, {"inc": 0.8501450259763872, "statCode": "6bnGejcS"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'XVfHOMAc' \
    --body '[{"statCode": "y9UlDM0J"}, {"statCode": "c8BxX1Pv"}, {"statCode": "NeOxuJSj"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'UuFOwyqM' \
    --userId 'b3yqzT66' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'XkDN7uWX' \
    --userId 't34YRali' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'eW3peXhL' \
    --userId '0zrehDjJ' \
    --body '{"inc": 0.556388314322211}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NcQl0dIn' \
    --userId 'zm3QmoW4' \
    --body '{"inc": 0.38366593627184753}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '29jaBJW3' \
    --userId 'FxBV5LaW' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"vs0npFZC": {}, "p2umnm3u": {}, "vp8vn3i5": {}}, "additionalKey": "ifjlhMdg", "statCode": "H5UFcoDu", "updateStrategy": "MAX", "userId": "DjU0CwPV", "value": 0.971976112675097}, {"additionalData": {"lMvW7sz6": {}, "HeMyjYXH": {}, "gfirmdVY": {}}, "additionalKey": "NAmNTpXt", "statCode": "bA42OVzz", "updateStrategy": "INCREMENT", "userId": "jQqMg4MD", "value": 0.9939242866874661}, {"additionalData": {"WWkKh5Vs": {}, "6Uq2Ldhd": {}, "f58HhItB": {}}, "additionalKey": "Tf2PXDZ0", "statCode": "MztVmAaY", "updateStrategy": "MAX", "userId": "SQIScSwG", "value": 0.7391866575863376}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'uCHnVDNK' \
    --statCode 'WGwWDu4m' \
    --userIds '["CPenazzO", "jUR6yFfz", "BaCgbP2x"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'DFykNxk7' \
    --additionalKey 'h09JxSsh' \
    --statCodes '["jTwIi3pU", "18dDBe3c", "DhpdDTYb"]' \
    --tags '["nYiBt2Hf", "S9IhmFen", "QdFE0roz"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '2dxosuBQ' \
    --additionalKey '7AUVlDiE' \
    --body '[{"additionalData": {"FaNgpApN": {}, "cHp09oUJ": {}, "VAOStg1f": {}}, "statCode": "d9TIbifE", "updateStrategy": "MIN", "value": 0.5147868411440424}, {"additionalData": {"rdZ1j6J0": {}, "GIqednx0": {}, "VHAKkaWY": {}}, "statCode": "ZXnOoJm7", "updateStrategy": "OVERRIDE", "value": 0.2503756588998356}, {"additionalData": {"ct2XVcNn": {}, "a0C1p14G": {}, "1V4GWzAd": {}}, "statCode": "OVfEbO5h", "updateStrategy": "MAX", "value": 0.44822230360482374}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'rR8e39oR' \
    --additionalKey 'eya2Ifbt' \
    --body '[{"additionalData": {"ZsMxmp6m": {}, "G8sxBc0G": {}, "SiS5eT02": {}}, "statCode": "01k31Dj1"}, {"additionalData": {"2s0h4icU": {}, "kZrVAkNA": {}, "DULHiXT4": {}}, "statCode": "yO2AGPYQ"}, {"additionalData": {"odtjTaIi": {}, "jzRoCgXZ": {}, "Do7tX7Wf": {}}, "statCode": "H8HTSxoj"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Moy1aB3l' \
    --userId 'OPgMxVGN' \
    --additionalKey 'y4MRGPS5' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'CPqvB3V4' \
    --userId 'HefL5iDn' \
    --additionalKey '1vGcMHrl' \
    --body '{"additionalData": {"Krbx4i30": {}, "3bYZ57jV": {}, "YvHT5jLi": {}}, "updateStrategy": "MAX", "value": 0.30199491680308177}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"v5Qsij4C": {}, "khX227Eu": {}, "AKxQcA0V": {}}, "additionalKey": "YlgYog6i", "statCode": "GY2KMYKu", "updateStrategy": "INCREMENT", "userId": "fdCH3KwP", "value": 0.6142593726398062}, {"additionalData": {"iWOzIMl1": {}, "qE7rJrcU": {}, "Ypxtt38z": {}}, "additionalKey": "2NYg2JKL", "statCode": "H36HkZ0a", "updateStrategy": "INCREMENT", "userId": "O5bSHrHt", "value": 0.2133678851973423}, {"additionalData": {"IB6zFVSx": {}, "J0egpAPr": {}, "ElheSZcz": {}}, "additionalKey": "GzUMRZVM", "statCode": "ke1myodQ", "updateStrategy": "OVERRIDE", "userId": "KuC2VAiI", "value": 0.8672842180571075}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '7NmuqMEl' \
    --additionalKey 'Mq5DAoUH' \
    --statCodes '["sZGymiFV", "0DyTpLqa", "mbZiyoYd"]' \
    --tags '["q6TXnFI0", "EBNSbFWa", "69DMVtIL"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'hkfNZd9N' \
    --additionalKey '8XFiIreE' \
    --body '[{"additionalData": {"iDGA3lB1": {}, "kLjSV0ZR": {}, "MaInpWZQ": {}}, "statCode": "WYlEfshl", "updateStrategy": "OVERRIDE", "value": 0.6182025737207021}, {"additionalData": {"vhp5Uh1H": {}, "nBMvRQDc": {}, "HvSf4zfJ": {}}, "statCode": "yA549hFj", "updateStrategy": "INCREMENT", "value": 0.09618265497855649}, {"additionalData": {"QVVznPBU": {}, "wz4HpNpL": {}, "BJC49Oew": {}}, "statCode": "PR9hAEzC", "updateStrategy": "MIN", "value": 0.10107537043595094}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'b7USh2Xq' \
    --userId 'nXKHqnRj' \
    --additionalKey 'k3bjyNnQ' \
    --body '{"additionalData": {"YlV02PsK": {}, "sTF5wA6E": {}, "Il7O3G0p": {}}, "updateStrategy": "MAX", "value": 0.5291288946118671}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE