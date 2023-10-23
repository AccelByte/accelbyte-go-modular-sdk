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
    --userId 'fAo3kXD9' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Hh0bJQv8' \
    --userId 'KPD9RGsF' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["yZXzCL7y", "TV7oa1Q8", "pspXPrvj"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '01DQhHNs' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'bXvi3Hgf' \
    --body '{"achievements": ["koy0jRpJ", "v4fQnYtR", "ShrriYyV"], "attributes": {"vUqzbZ9Y": "j68poZtk", "pk24Dbx4": "QuR6BZK7", "wvJPh8w1": "UC7xgEgu"}, "avatarUrl": "brnMpmRk", "inventories": ["Ng1cey5X", "oI8Dj08w", "yfnqrWX6"], "label": "Z8RZ83D6", "profileName": "dQtkMXYx", "statistics": ["gpPTJjTW", "QaQ9isbl", "aVBWg696"], "tags": ["t9xIkEw3", "XPxIgOJu", "6X9V17Oo"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'ghhBuSby' \
    --userId 'LqR1J3KE' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 've9t1d7R' \
    --userId '3FeVTerw' \
    --body '{"achievements": ["d6eKlhAF", "PtldwQzb", "a3932TW3"], "attributes": {"pwOkYhsN": "BGw6CYGw", "cxdqyaBi": "ijDTH69F", "YuBB1Gdu": "rSgZRozB"}, "avatarUrl": "3c4Q9FhX", "inventories": ["75h4xblb", "k1WKNR70", "GryZSJsv"], "label": "fu7rbHZ1", "profileName": "l2kfkQXL", "statistics": ["cTbXXL8r", "IGALKjrh", "K5BQoJSJ"], "tags": ["ZuX1iREo", "XvehqpaJ", "69SN3byZ"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Z8SdRsOl' \
    --userId 'ewV13YsX' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'b6Gv7bCl' \
    --namespace $AB_NAMESPACE \
    --profileId 'IV8TkExq' \
    --userId 'bpNpKmfz' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'pXP6pxjx' \
    --namespace $AB_NAMESPACE \
    --profileId '9EXDm0oh' \
    --userId 'oGIVVAay' \
    --body '{"name": "jYIQgvra", "value": "s7gho8NI"}' \
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
    --limit '73' \
    --offset '58' \
    --statCodes 'WUcD9j8F' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '6AauseTJ' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '96' \
    --name 'psKJJnxo' \
    --offset '75' \
    --sortBy 'mmAUPAv4' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "3AbhjAmi", "end": "1988-12-14T00:00:00Z", "name": "65Xznk5t", "resetDate": 80, "resetDay": 8, "resetMonth": 38, "resetTime": "EiSEfVRi", "seasonPeriod": 7, "start": "1988-04-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["N9XeMYvn", "4hhJKK4x", "BswJwz5e"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'bFRTJidY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'mgjQvOng' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "DjojVkbH", "end": "1974-05-28T00:00:00Z", "name": "LEpzFhvA", "resetDate": 87, "resetDay": 66, "resetMonth": 46, "resetTime": "3zr8itJa", "seasonPeriod": 1, "start": "1987-01-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'TWCMmKIY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'VyAq6CrZ' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["dNrck7QF", "Uw3es390", "IQXzLbc2"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'URQbvPKD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'y76eF8yh' \
    --userIds 'DRQzXFmv' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5549361009524337, "statCode": "1dzXHPO1", "userId": "XCPG5a9k"}, {"inc": 0.1865245282436232, "statCode": "tqu1NVEx", "userId": "Yx6kTC6u"}, {"inc": 0.5087064360922617, "statCode": "tB892yWz", "userId": "bvt94K20"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.46246133820638957, "statCode": "Hn9UQYZe", "userId": "UQoaxw67"}, {"inc": 0.6436473791449879, "statCode": "LZMELKXu", "userId": "06xWV2i1"}, {"inc": 0.4046017691874966, "statCode": "O7tVK29J", "userId": "AlbwLPTH"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Jo24m1bG' \
    --userIds '["YNZwYDaa", "4q7suTQE", "0DSaZ4tB"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "KrsDBmHG", "userId": "22GMy2Wn"}, {"statCode": "WzRxqtCk", "userId": "RVWvF9gE"}, {"statCode": "sPDgrUem", "userId": "E3EEojNp"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'yMmHu1Xs' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '91' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["yH4hzE3S", "Fjdap0bL", "X6A6D0Hz"], "defaultValue": 0.6663743247413365, "description": "R5z5u7aB", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.30226675247372814, "minimum": 0.37424174496078544, "name": "6s9MC9G5", "setAsGlobal": true, "setBy": "SERVER", "statCode": "0GfXjlqi", "tags": ["2TNy2QdS", "wY7yLPAW", "2uCV4Uz5"]}' \
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
    --limit '31' \
    --offset '42' \
    --keyword 'z2cjHdea' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'RRzf2Vn9' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'RpoqaI7T' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '6l2z9CBV' \
    --body '{"cycleIds": ["kAtY7xl4", "HeIJPsRZ", "x533VI1O"], "defaultValue": 0.5374832622367465, "description": "7Rgd6v1o", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "gpDuug3S", "tags": ["INcqsvj5", "Y20K5T7a", "85qT5Cn9"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'jMZFSDJx' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Uq2ZVC5V' \
    --namespace $AB_NAMESPACE \
    --userId '3w07VsZO' \
    --isPublic 'true' \
    --limit '35' \
    --offset '43' \
    --sortBy 'DC1wmIkL' \
    --statCodes 'P7BMhPCI' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'MkfcSc1l' \
    --isPublic 'false' \
    --limit '68' \
    --offset '24' \
    --sortBy 'zS6iBpcZ' \
    --statCodes 'kCHNs4Ti' \
    --tags 'TFQTBO58' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'I2FRJ3T2' \
    --body '[{"statCode": "U4o69jMT"}, {"statCode": "K35KYzoJ"}, {"statCode": "m14C9tGW"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ogM8f4bf' \
    --body '[{"inc": 0.2902916939448189, "statCode": "oR9WgSMZ"}, {"inc": 0.9004879637147069, "statCode": "ukrYtENi"}, {"inc": 0.8280450883831237, "statCode": "oKaFS0rG"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'hBzQmViP' \
    --body '[{"inc": 0.2840812940197708, "statCode": "dYL3Clk3"}, {"inc": 0.024058767143767645, "statCode": "zLvD5LQ9"}, {"inc": 0.23365079166765113, "statCode": "HBfuCTG7"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'vuXcxV3O' \
    --body '[{"statCode": "khD1L6qY"}, {"statCode": "eaEfvp11"}, {"statCode": "Nbms1toP"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'A6L2DMXa' \
    --userId 'mJYppdMF' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ByM8ugTU' \
    --userId 'lafZElZz' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jAsKesVg' \
    --userId 'gcgdz0WJ' \
    --body '{"inc": 0.7329841977480603}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'sKw6VNYg' \
    --userId 'kjRb9iS5' \
    --additionalKey '4cDld8Ke' \
    --body '{"additionalData": {"JMfARN1R": {}, "t33qOUYW": {}, "LQJHVWNn": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '32' \
    --statCodes '6dG17nUJ' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'q4OPUb5z' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '42' \
    --name 'VnuJajWG' \
    --offset '35' \
    --sortBy 'XPgWpyvx' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["kPEnKifz", "pIJVmHIJ", "PFrkfTPW"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'wVZFan81' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'RB1ezEYc' \
    --userIds '3tPEUO46' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6778423151044565, "statCode": "IE0r4mtk", "userId": "6cJQvQuW"}, {"inc": 0.8500900453101058, "statCode": "8RYqMTRv", "userId": "MVwuA2UO"}, {"inc": 0.8249582873731723, "statCode": "hjQBW0qg", "userId": "On8xpLcU"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9535471226584575, "statCode": "zEO79WIx", "userId": "NdTIiG9R"}, {"inc": 0.8798781112375709, "statCode": "udz37Xgb", "userId": "qtYRPh7x"}, {"inc": 0.26813770565872563, "statCode": "kG7MvPs6", "userId": "u7Ve10b9"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "fcheJQS1", "userId": "EvLDjDV9"}, {"statCode": "dZhzSoDU", "userId": "3dHcZqom"}, {"statCode": "KNXemzyo", "userId": "FUUb8i6r"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["wAjA3K4N", "vSbQrNsw", "GQ4t3o9c"], "defaultValue": 0.586571348429085, "description": "kmeLbstK", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.45135788052180037, "minimum": 0.3607307669232579, "name": "j30tNoEa", "setAsGlobal": true, "setBy": "SERVER", "statCode": "ynAoj3t3", "tags": ["JSk6J8Gd", "7D1HrXuX", "sBIZyR1a"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'AIS0eyul' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '51' \
    --sortBy 'PawfnWxh' \
    --statCodes '["RaqbfT7l", "hXH4ALyi", "1eupdQ5D"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '10' \
    --sortBy 'Pl2AaMXh' \
    --statCodes '["GkM38uLk", "pCAfvMm6", "F7KgBjC7"]' \
    --tags '["dBBuYzIA", "lWRu24MG", "uaqMIBVg"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'JzB2rHl1' \
    --statCodes '["HQtU0Y9G", "trEZgZF0", "2NjQITtA"]' \
    --tags '["EdqAUKLO", "I4bu3pN4", "cBqASOUQ"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'BkhkxWpw' \
    --namespace $AB_NAMESPACE \
    --userId '1F7yBnaT' \
    --limit '48' \
    --offset '81' \
    --sortBy '9GT6igiV' \
    --statCodes '1LHDypBr' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ZssQIyiI' \
    --limit '54' \
    --offset '17' \
    --sortBy '1EM3L06Z' \
    --statCodes 'CcqjpL2i' \
    --tags 'CiiMOy8b' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'eMy82GiV' \
    --body '[{"statCode": "82vHcRXD"}, {"statCode": "Q3rcOGhl"}, {"statCode": "SVulaSOT"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'kbGkBwba' \
    --additionalKey 'iiGGmATI' \
    --statCodes '["2CACzDUi", "tuuKUCk1", "5FMAl0YF"]' \
    --tags '["mtZSSUCy", "8ADWqjb7", "cHKimek5"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Vu1lfKLC' \
    --body '[{"inc": 0.5001390193519273, "statCode": "wSQX707O"}, {"inc": 0.37796723241266816, "statCode": "O3Gx5JwX"}, {"inc": 0.9712413023108009, "statCode": "eOf5ltL4"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'h89oiB9m' \
    --body '[{"inc": 0.413704470889091, "statCode": "Tna2f7NM"}, {"inc": 0.031376532987728134, "statCode": "vf9f9zGr"}, {"inc": 0.13452468040466237, "statCode": "PGnb6iTe"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '9CSTWAET' \
    --body '[{"statCode": "jzGYnnEv"}, {"statCode": "WTQJHwOZ"}, {"statCode": "DT6jrx7O"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'WTJc0IP4' \
    --userId 'INskplXD' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'qVHD93Um' \
    --userId 'eaHmLIDb' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'S305frFd' \
    --userId 'nr5GNho1' \
    --body '{"inc": 0.8258162008855339}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '9BSUnr92' \
    --userId 'HQj0nZiy' \
    --body '{"inc": 0.6370224689696201}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'DdeZW3u0' \
    --userId '9Kcl917k' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"cFRR0z8w": {}, "G5GHTcy4": {}, "tDY6NpNz": {}}, "additionalKey": "5a3zGnxe", "statCode": "FoyH6UoT", "updateStrategy": "INCREMENT", "userId": "8sDLcwIy", "value": 0.8338292960868011}, {"additionalData": {"DAO3KwKt": {}, "nxoRrQih": {}, "3zdZhIaN": {}}, "additionalKey": "sp5icHj6", "statCode": "I6KFs1eE", "updateStrategy": "MIN", "userId": "7NWNHpRP", "value": 0.5721354932643135}, {"additionalData": {"MZgEtUDT": {}, "FmfVoLyZ": {}, "gh9kcyxO": {}}, "additionalKey": "vNIXkRh7", "statCode": "e7MPX83j", "updateStrategy": "MAX", "userId": "0VAfIXif", "value": 0.9307892818214024}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'LgC4QJtC' \
    --statCode 'mCjeiHv6' \
    --userIds '["B6KjxfEx", "zNkhfcoZ", "csu6FPoM"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'VuuAMffK' \
    --additionalKey 'ClYWWwWn' \
    --statCodes '["QDaGseF4", "w6Cx9rY3", "Xh1VmyCA"]' \
    --tags '["agS0GMp2", "xxZqNAMp", "iF96sCiW"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '7td7MFym' \
    --additionalKey 'NkCC37qM' \
    --body '[{"additionalData": {"7lHcF4Lv": {}, "b54jgafb": {}, "jP7sX07W": {}}, "statCode": "Le3cvoyv", "updateStrategy": "OVERRIDE", "value": 0.7191612766738625}, {"additionalData": {"c3DUy3Ac": {}, "69k2lbHs": {}, "vELGqjif": {}}, "statCode": "OHFnPHfe", "updateStrategy": "INCREMENT", "value": 0.636149430777078}, {"additionalData": {"FKZOPpoH": {}, "p5SVhSk6": {}, "pRwgavCq": {}}, "statCode": "rLtRROdK", "updateStrategy": "INCREMENT", "value": 0.197635453135527}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'NUE78xBj' \
    --additionalKey 'cAEEUNdg' \
    --body '[{"additionalData": {"G2dyKoSK": {}, "GYWKM3gY": {}, "54sIR44d": {}}, "statCode": "Sqe8dPtz"}, {"additionalData": {"F6y9j7Vt": {}, "JX4KnAKZ": {}, "2vqjhjjd": {}}, "statCode": "jYY5eXP2"}, {"additionalData": {"ledr2w99": {}, "1wFsyric": {}, "UV9reHej": {}}, "statCode": "CpzosLlt"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'pH6TUCk5' \
    --userId 'H7HraGw2' \
    --additionalKey 'CB93rA93' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Er7pK8Gu' \
    --userId 'y1JsPlU2' \
    --additionalKey 's2BqcgZt' \
    --body '{"additionalData": {"nAQ75r4q": {}, "D8is15xD": {}, "gHjDXL63": {}}, "updateStrategy": "MAX", "value": 0.31284587077624104}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"QCMs66rL": {}, "AEXuKOYH": {}, "USA1RvuJ": {}}, "additionalKey": "u5ePwkJA", "statCode": "RDlzDgn6", "updateStrategy": "MIN", "userId": "rw3WZ4js", "value": 0.3854448668842543}, {"additionalData": {"zcikYkG3": {}, "eRe5RNj1": {}, "QEcW7WHo": {}}, "additionalKey": "VtGAX9xN", "statCode": "UlYHYQuG", "updateStrategy": "OVERRIDE", "userId": "YffMJaDU", "value": 0.16950181980158852}, {"additionalData": {"d8Znjcrf": {}, "Dg6o7TEF": {}, "oBBiYAw3": {}}, "additionalKey": "4S8wVxcJ", "statCode": "960TdVq3", "updateStrategy": "OVERRIDE", "userId": "FjFnM7BR", "value": 0.3118375382667592}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'i2zj4kC7' \
    --additionalKey 'vRS1XnVH' \
    --statCodes '["pipmlymQ", "Rk4fq1eX", "eieShP3A"]' \
    --tags '["cUn97L8z", "09MzZq5H", "OGv40voK"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '4CrBgSlM' \
    --additionalKey 'tjNfllyb' \
    --body '[{"additionalData": {"Fml471S5": {}, "ULB2DMxH": {}, "UXGYGE8V": {}}, "statCode": "e6mOSGpO", "updateStrategy": "MAX", "value": 0.7864923861323143}, {"additionalData": {"QPsQ6DJL": {}, "IHjXGCz2": {}, "b4ok4Y32": {}}, "statCode": "0LQHU5wD", "updateStrategy": "MAX", "value": 0.3828986206936369}, {"additionalData": {"nO1m8WeD": {}, "IegPSFnV": {}, "paXErIuV": {}}, "statCode": "o2mxrqVR", "updateStrategy": "MAX", "value": 0.5435421429062104}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CvzBI07h' \
    --userId 'mOsSXtpC' \
    --additionalKey '1JJwO4kE' \
    --body '{"additionalData": {"ZfOV948t": {}, "KwaIaalY": {}, "CkDwuBki": {}}, "updateStrategy": "MAX", "value": 0.7477015136984377}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE