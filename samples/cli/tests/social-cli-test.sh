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
    --limit '99' \
    --offset '65' \
    --statCodes '7mMU4AVW' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'V7WUi0jM' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '84' \
    --name 'rwIrD4b4' \
    --offset '93' \
    --sortBy 'zNttR4Bf' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "Uird25Yt", "end": "1977-09-22T00:00:00Z", "id": "AqQRVFiP", "name": "Wcw3Umlm", "resetDate": 96, "resetDay": 46, "resetMonth": 97, "resetTime": "FpQeHKGj", "seasonPeriod": 54, "start": "1977-11-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["D2UTvL9Y", "IP156hLt", "dhSTyET1"]}' \
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
    --cycleId 'McHNqQ6J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '6ivm8hKj' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "fSVctOZt", "end": "1978-06-08T00:00:00Z", "name": "DL4ywHK6", "resetDate": 4, "resetDay": 53, "resetMonth": 38, "resetTime": "sCsS6ls9", "seasonPeriod": 2, "start": "1983-02-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '7cAdT5nF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '1SPg4qP1' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["xFFQZ6ZJ", "TuZgHE4j", "pWKpAMMX"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'zZetvnjm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zExxCEc7' \
    --userIds 'ISRl5CgT' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4633898058586221, "statCode": "izmKH2JZ", "userId": "mWHxeAqI"}, {"inc": 0.3462732589199995, "statCode": "RWpVGBSA", "userId": "GDy8vDuE"}, {"inc": 0.07466389792254424, "statCode": "fTRoDSVk", "userId": "OUA447HO"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1526876926798134, "statCode": "ctO0B6hN", "userId": "SMhwej51"}, {"inc": 0.26150738885579083, "statCode": "pw2XcXIV", "userId": "HyQD15Xr"}, {"inc": 0.03178202132729291, "statCode": "HzfwHoXf", "userId": "Nt4Nnayv"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'jdOJEztq' \
    --userIds '["HLFIKLBF", "BIM1cqcd", "haQ9mr0V"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "l2wOK69q", "userId": "axzrgshY"}, {"statCode": "j9ZcmdDI", "userId": "AvUO914M"}, {"statCode": "AOIo1o60", "userId": "DYOjWE0m"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'BQXZ0L4H' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '96' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["Q9orYwx4", "8YSXpbVg", "kycGvCIu"], "cycleOverrides": [{"cycleId": "n2h913rw", "maximum": 0.8207865649532186, "minimum": 0.9722811668552174}, {"cycleId": "GRcP9niU", "maximum": 0.5842370026899177, "minimum": 0.333467724958035}, {"cycleId": "yicjZ2nO", "maximum": 0.7899324054466811, "minimum": 0.1987081924299744}], "defaultValue": 0.3911075986841044, "description": "FqN5P1bM", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.3129730341887924, "minimum": 0.3106858624889326, "name": "Fc8ATqFm", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "IP48nqrk", "tags": ["iDVQdDLL", "4J3mCVmF", "s7hm6Wsh"], "visibility": "SHOWALL"}' \
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
    --limit '43' \
    --offset '54' \
    --keyword 'yUZoAqk8' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '1r9onUvm' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '83DgaWGA' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pZXvddiT' \
    --body '{"capCycleOverride": true, "cycleIds": ["TUJ60Lk2", "ByWtRVyO", "PBSI677s"], "cycleOverrides": [{"cycleId": "eAHEXvL4", "maximum": 0.8179721930310702, "minimum": 0.4005589615043229}, {"cycleId": "rxTNIdJA", "maximum": 0.3107945977561828, "minimum": 0.6261594582597855}, {"cycleId": "8lmykMEb", "maximum": 0.5553015685012546, "minimum": 0.01093131478817766}], "defaultValue": 0.09038299299968089, "description": "hIfYmkU9", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "zi5MNmtm", "tags": ["V0V5WpVt", "Lb82EIE5", "GHZ3uEzU"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Q6CC8WPA' \
    --limit '100' \
    --offset '54' \
    --sortBy 'GJsnu5Di' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'bqGDUO2s' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Cj2kY1B5' \
    --namespace $AB_NAMESPACE \
    --userId 'x8bQbVAU' \
    --isPublic 'false' \
    --limit '8' \
    --offset '5' \
    --sortBy 'RGc18uzC' \
    --statCodes 'Lm5Y6a3N' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'aFixtj0n' \
    --isPublic 'false' \
    --limit '66' \
    --offset '28' \
    --sortBy '7Rbj8zYh' \
    --statCodes 'BgNJHvIc' \
    --tags 'CBqrpM1l' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Gz4gJhIH' \
    --body '[{"statCode": "fBpD0HAz"}, {"statCode": "ZfX4C91w"}, {"statCode": "MKOzR9wF"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'himGEyKv' \
    --body '[{"inc": 0.46799328542822705, "statCode": "SJi1FpVn"}, {"inc": 0.6037353649506438, "statCode": "Wml0Z0bz"}, {"inc": 0.11282384636017362, "statCode": "WHGhDuw8"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'm10xjUcX' \
    --body '[{"inc": 0.7415519725994291, "statCode": "IzdnrNc2"}, {"inc": 0.07591994538884805, "statCode": "dp4VPf36"}, {"inc": 0.19161514474486474, "statCode": "QGiTJ3Xz"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'yVxafmF1' \
    --body '[{"statCode": "wsHShZxp"}, {"statCode": "KiQvBOJo"}, {"statCode": "xOjZArp5"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'IIIGcdN6' \
    --userId 'VuWaarUU' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '7vt4FL1l' \
    --userId 'ZEvinFHJ' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jCy3a5Pm' \
    --userId 'pTYDRlex' \
    --body '{"inc": 0.7161541092092698}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '8VfcITow' \
    --userId 'BGdn5Pwm' \
    --additionalKey 'yj8WPUW8' \
    --body '{"additionalData": {"NSi9jLol": {}, "Z87AXWjE": {}, "APkMOSVt": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '4' \
    --statCodes '7eIc53qv' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'y6BRkhL8' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '1' \
    --name 'SH9mQLFs' \
    --offset '12' \
    --sortBy 'rK38UhTQ' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["deJClsYE", "KXA3eWIr", "z4tS7xJl"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'Woh7of0L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'o66l4KYu' \
    --userIds 'ca85WClZ' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4431980938918936, "statCode": "0oZu3NA5", "userId": "SAChUQfx"}, {"inc": 0.47329547597362065, "statCode": "g32Q44XK", "userId": "OBpMqCXo"}, {"inc": 0.2102599238617895, "statCode": "zbwctX8k", "userId": "RfOSzJvy"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9644207107883285, "statCode": "17tHrrAH", "userId": "v2at92JG"}, {"inc": 0.8774412268954784, "statCode": "163kRGBV", "userId": "EZhIB1Ym"}, {"inc": 0.4291250693536792, "statCode": "71zDrXXm", "userId": "3Dvqw2aA"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "OXeaVsMY", "userId": "dGGi7l7Q"}, {"statCode": "1GzMk0RU", "userId": "D0sf5Z2e"}, {"statCode": "nLnOLTUr", "userId": "GWaCh7vh"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["nlroYrvm", "rnyrBSiA", "yDD58jOk"], "cycleOverrides": [{"cycleId": "TkZPtSSk", "maximum": 0.3295868619778387, "minimum": 0.8049909170130884}, {"cycleId": "CZPNWfbI", "maximum": 0.2711862211167708, "minimum": 0.8409251306542422}, {"cycleId": "9Nqcq446", "maximum": 0.8072615023448231, "minimum": 0.2209096336555607}], "defaultValue": 0.6933690415547451, "description": "mPdaxVFD", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.07426189907128566, "minimum": 0.26926458189698466, "name": "buABA8cb", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "IDtbLzk1", "tags": ["IsdsBPCm", "t2fOcz0d", "tp3Mo6eF"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'D5req7fb' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '50' \
    --sortBy 'BLfXdCjg' \
    --statCodes '["vDr1pr2z", "mkB1Bx1T", "sVo5rWMT"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '27' \
    --sortBy 'gzd00ux5' \
    --statCodes '["IuxfiCpJ", "BZMXxsC3", "zvpG0Cf5"]' \
    --tags '["DL3RvYg2", "wKglPXh1", "xDGIonpB"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'lw6uxkhR' \
    --statCodes '["qW3TVex8", "xUf1rfYn", "zABUs78p"]' \
    --tags '["2whCe61C", "OwbaxXhF", "QbAFempu"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'UWiTcRQh' \
    --namespace $AB_NAMESPACE \
    --userId 'fNzVWQLW' \
    --limit '45' \
    --offset '52' \
    --sortBy 'mpbTEvlm' \
    --statCodes 'BJZNi0LT' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '8Uao9w6u' \
    --limit '43' \
    --offset '98' \
    --sortBy 'je3FcHXo' \
    --statCodes '17gCrs3Z' \
    --tags 'DJQyNeFl' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'lz1R2oww' \
    --body '[{"statCode": "7ZPMkJr3"}, {"statCode": "dRtjChOa"}, {"statCode": "lvYpsMYV"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'k7k5fNcU' \
    --additionalKey 'wp9ezP2r' \
    --statCodes '["yJ74uuYc", "hUM5tGRj", "m0L43sPg"]' \
    --tags '["P0svRsAm", "SGKOKfQ5", "5w7e6CBv"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '42XBQ1wF' \
    --body '[{"inc": 0.6635003230385302, "statCode": "nYu3JrIE"}, {"inc": 0.9825865104228485, "statCode": "YdOUNCGR"}, {"inc": 0.9978504784817754, "statCode": "zEYU7Nma"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '8jNjAbVi' \
    --body '[{"inc": 0.2220204887074244, "statCode": "hIcTvXpE"}, {"inc": 0.9229243967762905, "statCode": "D7D50jVl"}, {"inc": 0.6940615214696368, "statCode": "mpcVICac"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'vokfAzEQ' \
    --body '[{"statCode": "bvqUxH97"}, {"statCode": "j4PNP2kb"}, {"statCode": "8xNmhnKt"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'ZhJggUJq' \
    --userId 'Xs8UEUdx' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'DPfEnAs7' \
    --userId 'ytKbrhVg' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8DbqKS0r' \
    --userId '1UuG532e' \
    --body '{"inc": 0.12345149764734853}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'pMENsZHx' \
    --userId 'izoMUY3y' \
    --body '{"inc": 0.4595847753341542}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YU51Ceq1' \
    --userId 'aJpkyXLa' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"nC9ay4Qx": {}, "jDhkNLnT": {}, "5Dy6qRy7": {}}, "additionalKey": "5Ks6bv1o", "requestId": "7Qb3LjUy", "statCode": "Pjw4bCyd", "updateStrategy": "MAX", "userId": "w7rNcqoE", "value": 0.707167922880372}, {"additionalData": {"45Gt7XVq": {}, "vUv1zosO": {}, "NvhETMpk": {}}, "additionalKey": "YwUeUg59", "requestId": "eVFRwzPa", "statCode": "ynxAKqw8", "updateStrategy": "MAX", "userId": "c31DiCA6", "value": 0.8611940515705822}, {"additionalData": {"vLIptbQe": {}, "KHFYD0Z7": {}, "PqYneugs": {}}, "additionalKey": "SJqCnExX", "requestId": "gXPzqjb4", "statCode": "ZkNAiCMZ", "updateStrategy": "INCREMENT", "userId": "KrknCEMP", "value": 0.6894517842399802}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'Ssx0pp8F' \
    --statCode 'a1g5Ay2R' \
    --userIds '["jGsrF6gY", "p87gKdf2", "7GaReVk8"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'LNNxbRFy' \
    --additionalKey '9AQ7Ja5W' \
    --statCodes '["7Dtk0FBA", "mDkts7Dh", "hB7WIL5L"]' \
    --tags '["HXQHYjWs", "lSzQdC0O", "BUD8K0Zo"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'T9dmoq3N' \
    --additionalKey 'iO3kZkJq' \
    --body '[{"additionalData": {"8g7g5qa1": {}, "Awxwehfp": {}, "Qldk1fTG": {}}, "requestId": "6BegvYW9", "statCode": "U3uEXTQ8", "updateStrategy": "MAX", "value": 0.49687680402507484}, {"additionalData": {"vmyoUxI2": {}, "ECyREFFj": {}, "9uEJnpGV": {}}, "requestId": "5cebozmA", "statCode": "oz2BYaSs", "updateStrategy": "OVERRIDE", "value": 0.47527616643453807}, {"additionalData": {"VzNDkyHg": {}, "9cOLRyBV": {}, "uMW3J1Ro": {}}, "requestId": "1bUgTxpn", "statCode": "nW3zhVkB", "updateStrategy": "MIN", "value": 0.7353663877421105}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'Hyp1O2HA' \
    --additionalKey 'qCUzT3Xa' \
    --body '{"statCodes": ["s7ytV6fY", "KoyhNjq6", "qeYsh5mm"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'GBpmXbf7' \
    --additionalKey 'YzuFCPJ4' \
    --body '[{"additionalData": {"zW69ouho": {}, "eLeRMkfP": {}, "14ZcvSF6": {}}, "statCode": "OuTdynGW"}, {"additionalData": {"h3kWJCwE": {}, "8sgRYiTa": {}, "mZ1QTSST": {}}, "statCode": "M8dwoeut"}, {"additionalData": {"JzXLKRSP": {}, "vh2njYfE": {}, "Y6r84CUB": {}}, "statCode": "jeVVAgSc"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'XVO8RQrv' \
    --userId '52fuTrXZ' \
    --additionalKey 'gG8aHdXc' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '8bL7uNvV' \
    --userId 'gy0Tgpn4' \
    --additionalKey 'DpJ2wGar' \
    --body '{"additionalData": {"TEYnZawG": {}, "QjbXGWyQ": {}, "mZGo9cCz": {}}, "updateStrategy": "INCREMENT", "value": 0.5658203685023242}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"vO7KuIp7": {}, "nuHG8RR6": {}, "4Eu4XhBR": {}}, "additionalKey": "30KYw1y4", "requestId": "IGg5cNZO", "statCode": "eySV8yam", "updateStrategy": "MAX", "userId": "VthCh1LE", "value": 0.09104494750102943}, {"additionalData": {"SEp52wdH": {}, "wAVAz03W": {}, "8bsfUTVd": {}}, "additionalKey": "6AWYYzom", "requestId": "snuO9pYF", "statCode": "THppNq93", "updateStrategy": "MIN", "userId": "HmMlaaZl", "value": 0.697615523172544}, {"additionalData": {"tDsm8ttJ": {}, "v91jvtsG": {}, "o0CgYG88": {}}, "additionalKey": "mmu1XK6i", "requestId": "ETI1WSbE", "statCode": "rxUvfZ8l", "updateStrategy": "MIN", "userId": "u6oVvjji", "value": 0.529105359789323}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '6abhEcu0' \
    --additionalKey 'nQ89OgWA' \
    --statCodes '["74iDjhOg", "MEAnHquW", "p9a0y2Vv"]' \
    --tags '["gH54ZvTJ", "PJLzcjyN", "SWiYko4H"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '1QJuv7T5' \
    --additionalKey 'i0J95RGB' \
    --body '[{"additionalData": {"Rl64BTWs": {}, "XuDatj5t": {}, "oDLnBmNJ": {}}, "requestId": "aQ6KQOIN", "statCode": "MG6zqaxx", "updateStrategy": "OVERRIDE", "value": 0.3909095973024984}, {"additionalData": {"lHKhZb3Q": {}, "tXUjPqHJ": {}, "N8tMjQeo": {}}, "requestId": "7493wY6m", "statCode": "HbbvmvkS", "updateStrategy": "INCREMENT", "value": 0.8976894726056025}, {"additionalData": {"OJxgBHTF": {}, "152Cnlfs": {}, "vJ0MC7ZR": {}}, "requestId": "YJG6YG0A", "statCode": "xyaAF2ye", "updateStrategy": "MAX", "value": 0.7291815546035352}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'HCoAYCu3' \
    --userId 'XsuZ70cT' \
    --additionalKey '8BSruvfH' \
    --body '{"additionalData": {"j0YQPNoy": {}, "v6aYettR": {}, "byVHTTUj": {}}, "updateStrategy": "MAX", "value": 0.8529603284708948}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE