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
    --userId '1JiXcxuI' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'B0G1ZiIk' \
    --userId 'fOvIceOm' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["YIlSdg7z", "5ugRbXgT", "Y4RU7Q2x"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'ee5R3zKJ' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'WmoZacPs' \
    --body '{"achievements": ["1kMK3Ro6", "VqMPhLwU", "ZZaH0WPI"], "attributes": {"LBSncYn7": "hocFhQYp", "aAdLdqAu": "H2G9zb8u", "wN37t1zX": "qVZ5LKz2"}, "avatarUrl": "3ubPvq7Q", "inventories": ["VEotN3mV", "HwhJo327", "nbRHBeM8"], "label": "Cxq5uE9K", "profileName": "EK09MuYM", "statistics": ["BvMoLVdD", "ORjUEnrA", "BLxzlPEr"], "tags": ["pDOd6N0Z", "dGLYVpAi", "G5GLJIPV"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'McpftRIo' \
    --userId 'cJMnq3F0' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'FjKkWzZA' \
    --userId 'nFUr2LsN' \
    --body '{"achievements": ["BMMzwMr5", "gDQq8qya", "fyB80MQg"], "attributes": {"8Z70XXsm": "vSYUu5l4", "EVFmSvKo": "1p8IlLY7", "JNJgMtPF": "GJsVRBp5"}, "avatarUrl": "qLWhvUmH", "inventories": ["1uRJWrWv", "hXEcVnIF", "WKcZPLP1"], "label": "GFjX9fRP", "profileName": "YDZ9peGD", "statistics": ["b6QnvAPa", "lMBbgG6d", "nnOtkYCh"], "tags": ["9fxnpjJP", "tbFGrl82", "CaqSuWC7"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'iToRk5cT' \
    --userId 'kdtLu1PG' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'UCuoQMTF' \
    --namespace $AB_NAMESPACE \
    --profileId 'LYdKpThq' \
    --userId 'CJSj56H3' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'IWTbfAig' \
    --namespace $AB_NAMESPACE \
    --profileId '8oMlaZC6' \
    --userId 'Eay2nBSR' \
    --body '{"name": "P8lxZzsM", "value": "VrDATue1"}' \
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
    --offset '79' \
    --statCodes 'GwmpDRxD' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '5AbnWxgP' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '26' \
    --name '9HpaYztL' \
    --offset '80' \
    --sortBy 'ofTUku6y' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "0w2eLNK7", "end": "1977-12-14T00:00:00Z", "name": "gqCIQwyF", "resetDate": 51, "resetDay": 74, "resetMonth": 16, "resetTime": "HAHQp6yD", "seasonPeriod": 63, "start": "1971-09-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["IWHnXhEB", "c5MndCmE", "WWknVPzq"]}' \
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
    --cycleId 'L1dRtftc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'rT5QLFl3' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "0AdBMdC6", "end": "1977-08-21T00:00:00Z", "name": "dvdhq7qs", "resetDate": 63, "resetDay": 92, "resetMonth": 87, "resetTime": "ddu13lfs", "seasonPeriod": 81, "start": "1975-09-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '3DHYa88R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'yQabzaR2' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["nXNDKmSZ", "U6MA1SxX", "bYOzX3AW"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'Zf6pSpya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'd3vf98cp' \
    --userIds 'sqFXFudw' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.09574506049406561, "statCode": "xYZyOMi1", "userId": "J4Ignz0Z"}, {"inc": 0.7012988703270494, "statCode": "JwDSWEwF", "userId": "f96Ze4OS"}, {"inc": 0.27449895610347197, "statCode": "xTuGXphD", "userId": "JKCTAY19"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9756791275020784, "statCode": "o8Qwytcy", "userId": "Nz2IGp5J"}, {"inc": 0.1141909036250055, "statCode": "GhKNTMqw", "userId": "GB61JfSn"}, {"inc": 0.6430651870196178, "statCode": "af4A5Nca", "userId": "EJXCWGzV"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '0Pd7gcX3' \
    --userIds '["DsdQ4S4g", "RBQ06SUp", "CNFPmskS"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ZjfNHM6y", "userId": "j51y62uY"}, {"statCode": "vwkDJukD", "userId": "dW8Ov8SM"}, {"statCode": "tOrAFiuH", "userId": "rH9GnmU1"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'Vjcctt44' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '78' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["s1XVjaWw", "KJcysudF", "pTW5De21"], "defaultValue": 0.33810823393958533, "description": "xsGKepkU", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.4365337504200514, "minimum": 0.2870910032389028, "name": "InxsD1Ej", "setAsGlobal": false, "setBy": "SERVER", "statCode": "HZ1Qrvpc", "tags": ["dqgZ3lBW", "P5PlT3jD", "HJHgc9pp"]}' \
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
    --limit '70' \
    --offset '82' \
    --keyword 'cEnDxcnO' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'QO23iztj' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'VS4lUeNc' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'gBNVQCCe' \
    --body '{"cycleIds": ["DHLhcUrN", "Y7cx9QCq", "Ydfyg09m"], "defaultValue": 0.21496319752380255, "description": "wqVvJM7r", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "E4x6pzGr", "tags": ["X1Iz6gBs", "Y9Fl2jpj", "Laz2OTVf"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'KtGoQVmw' \
    --limit '30' \
    --offset '7' \
    --sortBy 'pEgybG1d' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'brDWzBs7' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'B9CBDmqg' \
    --namespace $AB_NAMESPACE \
    --userId 'a34df9YH' \
    --isPublic 'true' \
    --limit '16' \
    --offset '82' \
    --sortBy 'gFBsE2bA' \
    --statCodes 'r9IIebkj' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '8yZNp8CE' \
    --isPublic 'true' \
    --limit '56' \
    --offset '75' \
    --sortBy 'LzcmYPIE' \
    --statCodes 'PkqchA25' \
    --tags 'ptEjma66' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'r1AThVjF' \
    --body '[{"statCode": "UDwzZGYh"}, {"statCode": "MNE9BGsD"}, {"statCode": "qlYub96h"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8PJwz7S1' \
    --body '[{"inc": 0.8685312047212048, "statCode": "e7aBaINf"}, {"inc": 0.5433743032478916, "statCode": "3Gxk7KuE"}, {"inc": 0.8358520239151644, "statCode": "vsCrNmOw"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '8WPtJYio' \
    --body '[{"inc": 0.9211509479545275, "statCode": "FOBaRoKQ"}, {"inc": 0.9525994021785391, "statCode": "OJUMNkpR"}, {"inc": 0.8258274634162219, "statCode": "ziTGyIj3"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'NrSigroP' \
    --body '[{"statCode": "sInByZ03"}, {"statCode": "u5r3Mi1k"}, {"statCode": "REMcfAAR"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'KiYbw7UG' \
    --userId 'ZHlw2uXQ' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'mApVPi6L' \
    --userId 'dWYGzKgd' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eXqOPaSP' \
    --userId 'jzkTjQ2W' \
    --body '{"inc": 0.7087529414806376}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'L8kPrCL8' \
    --userId 'b79VZiAw' \
    --additionalKey 'gRMwlfvG' \
    --body '{"additionalData": {"W2yHF8V0": {}, "1cGBLyLx": {}, "z2MBWgMN": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '93' \
    --statCodes 'CoXViNMn' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ZlHaHzGn' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '31' \
    --name 'ycczKriH' \
    --offset '31' \
    --sortBy 'sBoixxYY' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["UVlmnV0N", "CIlUoo2r", "FQrjRlUG"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '6lAfzphf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'AXbAZBhN' \
    --userIds 'CjZXuief' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.13859349727975023, "statCode": "2cS33Bfo", "userId": "uIpbrMsk"}, {"inc": 0.3589655621474299, "statCode": "iLXWveU3", "userId": "J3hMIlLl"}, {"inc": 0.1369862415915335, "statCode": "0yur0Shb", "userId": "v2pav5yB"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6696794404826742, "statCode": "u0JXZnfo", "userId": "mZSqdkrc"}, {"inc": 0.8352104630963327, "statCode": "RTqOCpjj", "userId": "Wx3d8u7G"}, {"inc": 0.8633331054984542, "statCode": "rgJttXCm", "userId": "MI42YIod"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "8Z3gIoWk", "userId": "rOFIvFoJ"}, {"statCode": "u8vh0ZGz", "userId": "Gwx4Obaa"}, {"statCode": "GoZInwFB", "userId": "OIpkzw8z"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["bSvNAQ3N", "sZimV3wP", "PQNPEWHg"], "defaultValue": 0.9048348641092709, "description": "iPFuBPby", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.12041995455463705, "minimum": 0.49223051301261866, "name": "SbUtl5I9", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "6tWHSRV8", "tags": ["TBpvs3Tt", "gSAMMq87", "bVuqii5x"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'rgvd0HlE' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '58' \
    --sortBy '3llJgy2V' \
    --statCodes '["8G4F7KHE", "VNyvmzne", "zUgeL5te"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '95' \
    --sortBy 'bbl5I3Rj' \
    --statCodes '["5bgCcd3J", "w4f654H8", "aShbHp5g"]' \
    --tags '["3P0tNnsZ", "dm9YnhVT", "pL3VFHRg"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'sYYccpuE' \
    --statCodes '["6ItOuuVT", "KHKDUAtk", "2pxV4cUN"]' \
    --tags '["rAWuAL38", "jGNvtblH", "UyANlWFR"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'kSR9KY0A' \
    --namespace $AB_NAMESPACE \
    --userId 'j1OB7w07' \
    --limit '20' \
    --offset '46' \
    --sortBy 'ZBklBJTM' \
    --statCodes 'tN4tlUYL' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jYfWcDVF' \
    --limit '34' \
    --offset '16' \
    --sortBy 'bcvsTSb0' \
    --statCodes 'oY5jU48Y' \
    --tags '8Mm4bCeg' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'YtcsPjsf' \
    --body '[{"statCode": "e95U0gos"}, {"statCode": "1lNiy6dN"}, {"statCode": "atmrDsTU"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'QrQlWljK' \
    --additionalKey 'lkrLlsUz' \
    --statCodes '["CLQxYxuF", "9ppeBFkG", "He0w3vpO"]' \
    --tags '["BPgsCFaN", "Fvb41AR3", "bsFaoeoY"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'fwCafAee' \
    --body '[{"inc": 0.09834504302839198, "statCode": "15g7QqAB"}, {"inc": 0.7049775312627358, "statCode": "P33hctiQ"}, {"inc": 0.06821359907562119, "statCode": "n0XHgvBb"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'qcKNHbBp' \
    --body '[{"inc": 0.20400789918609286, "statCode": "GWfDDCri"}, {"inc": 0.4812337826045163, "statCode": "OM62aD4U"}, {"inc": 0.33898880236657924, "statCode": "1k1urArq"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'N9y07Zfk' \
    --body '[{"statCode": "KNeMPx2m"}, {"statCode": "QhqbIuXB"}, {"statCode": "3RTHh7AO"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'L8ewNyPP' \
    --userId 'ehBUKPis' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EY7h5iqv' \
    --userId 'VYLJF22H' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'KAInyBAS' \
    --userId 'm12QWnLq' \
    --body '{"inc": 0.6644240949660495}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1428aK4i' \
    --userId 'oTJr6TS4' \
    --body '{"inc": 0.9511577098755912}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CGVqvbs8' \
    --userId 'aQsmbAWn' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ByIqs9z0": {}, "CjFMxGSO": {}, "c8RtnMDF": {}}, "additionalKey": "1sl0Tfw3", "statCode": "NuxBPGX9", "updateStrategy": "INCREMENT", "userId": "nHjVqLah", "value": 0.2426551578949394}, {"additionalData": {"sonoz33G": {}, "bxzVb5mB": {}, "9CXHVens": {}}, "additionalKey": "moD8e4xW", "statCode": "G2mTozzb", "updateStrategy": "MIN", "userId": "XObpVyJK", "value": 0.624186630759953}, {"additionalData": {"qjqGugh2": {}, "ScP16VHB": {}, "x1c4bSlZ": {}}, "additionalKey": "fltzWQAA", "statCode": "tFxBPWt2", "updateStrategy": "INCREMENT", "userId": "STFe4Sp6", "value": 0.8903020078248062}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'tVvA0SZa' \
    --statCode '0ncQIxuC' \
    --userIds '["9aG3IrMZ", "PNFBEcXW", "F3zkw60O"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Um0JA4N3' \
    --additionalKey 'TxhUBoJv' \
    --statCodes '["fPBuBtjM", "X19WpgWM", "iZxPNXyT"]' \
    --tags '["apYOjsYJ", "uacB9yJf", "w0oAqjVk"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'YhBFcc1q' \
    --additionalKey 'K8HvhhkK' \
    --body '[{"additionalData": {"QgZEb86W": {}, "Udw5oASL": {}, "LhDxKPS0": {}}, "statCode": "zuHzLkid", "updateStrategy": "MIN", "value": 0.6295114235754793}, {"additionalData": {"oD7EcP0k": {}, "cOOUuVKp": {}, "lSlVLYbD": {}}, "statCode": "hfAdNk6Y", "updateStrategy": "OVERRIDE", "value": 0.851498553536659}, {"additionalData": {"DbCiwnhj": {}, "GDOUtg75": {}, "fSS8DDaF": {}}, "statCode": "4KtwjUNz", "updateStrategy": "INCREMENT", "value": 0.12351768325660017}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'AecffvQO' \
    --additionalKey 'eoo3eTAM' \
    --body '[{"additionalData": {"F5Mu56VI": {}, "txWQSnKU": {}, "Y8B3rcsU": {}}, "statCode": "azSQve9m"}, {"additionalData": {"UtwaTNQp": {}, "zxFtWyc1": {}, "oGaMQFrE": {}}, "statCode": "qeEVHySR"}, {"additionalData": {"UneZaQpl": {}, "jHGIjN3q": {}, "Mi3mzl4L": {}}, "statCode": "1jIY80dM"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'fFDicODB' \
    --userId 'rlwzmc35' \
    --additionalKey 'uv60BCfs' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'n6ld219j' \
    --userId 'gIc9EfWU' \
    --additionalKey '3EtsFGuM' \
    --body '{"additionalData": {"nYdf0Tdk": {}, "i6Vol8TL": {}, "oqdPBSXo": {}}, "updateStrategy": "MIN", "value": 0.03880498732369808}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"UlT528W2": {}, "V1ZPv2fJ": {}, "GThCMHss": {}}, "additionalKey": "u95BOGmE", "statCode": "JNml2FFj", "updateStrategy": "OVERRIDE", "userId": "zlOWFsTq", "value": 0.852887624851574}, {"additionalData": {"KLCpetm0": {}, "vBE6Cai7": {}, "PS6M4Ylm": {}}, "additionalKey": "9ShKiqbm", "statCode": "aHGY43u9", "updateStrategy": "OVERRIDE", "userId": "YBdZhT5z", "value": 0.09228535196427667}, {"additionalData": {"8Z8ToCOM": {}, "FQ6Qp3hq": {}, "JtJLBhBE": {}}, "additionalKey": "eoVBPh4o", "statCode": "kwtqlgN5", "updateStrategy": "OVERRIDE", "userId": "cU4qRKAA", "value": 0.7950508106906498}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'PfKcOFwu' \
    --additionalKey 'Oe3oV37N' \
    --statCodes '["LLQbR9v1", "NUSVnddp", "YyViRYEs"]' \
    --tags '["xiAyeNqd", "CZEPBHQt", "2QkBG12w"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '7PzZtQcP' \
    --additionalKey 'tsSwcAab' \
    --body '[{"additionalData": {"oTUTFPBv": {}, "cjAFpyJM": {}, "3a07Lk2H": {}}, "statCode": "kbX49jh9", "updateStrategy": "INCREMENT", "value": 0.024977726914040543}, {"additionalData": {"SBBGTg0N": {}, "j5pQdxNq": {}, "xYW0XZrq": {}}, "statCode": "iGtF8TXu", "updateStrategy": "MIN", "value": 0.48873114306389354}, {"additionalData": {"ms1YDNgm": {}, "xdqifY9V": {}, "rOvqjnjW": {}}, "statCode": "mdY7uwgd", "updateStrategy": "MAX", "value": 0.8410163823054804}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BTMjVZD1' \
    --userId 'jBfo4Vbp' \
    --additionalKey 'TMnZCEGW' \
    --body '{"additionalData": {"PyFMMnui": {}, "pwBXfp3i": {}, "0OPoHbIl": {}}, "updateStrategy": "MIN", "value": 0.10636491206424226}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE