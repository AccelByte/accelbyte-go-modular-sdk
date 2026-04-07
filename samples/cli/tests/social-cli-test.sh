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
    --limit '88' \
    --offset '67' \
    --statCodes '3fxJis4J' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'huu03Taz' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '87' \
    --name 'l5thQTMY' \
    --offset '19' \
    --sortBy '4tHTh3kp' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "wwwGG2hJ", "end": "1999-04-09T00:00:00Z", "id": "q11ZbP6J", "name": "QCnPiDZi", "resetDate": 32, "resetDay": 86, "resetMonth": 64, "resetTime": "Z5qcZOHu", "seasonPeriod": 86, "start": "1986-03-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Xjr9iWt8", "O0xMXyNV", "oLSo0Aig"]}' \
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
    --cycleId 'BwuxMMmb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '5qNoUT0G' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "bPJ6R48I", "end": "1974-01-16T00:00:00Z", "name": "L2eMO7vr", "resetDate": 5, "resetDay": 13, "resetMonth": 35, "resetTime": "VJSCKf1M", "seasonPeriod": 0, "start": "1987-10-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'kxGWqPBQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
samples/cli/sample-apps Social resetStatCycle \
    --cycleId 'OazUXSkk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '6kOXNw4M' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["f77iO20M", "sqYtL2FD", "RYt0asJg"]}' \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '4jCOtBAs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '29N3eWf2' \
    --userIds 'SFIR7Uyz' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9415058056189264, "statCode": "E6PgVREW", "userId": "rLdjBiPd"}, {"inc": 0.8879579691647351, "statCode": "d638zluR", "userId": "x3GHEp3W"}, {"inc": 0.3608295387966197, "statCode": "Eoksia5q", "userId": "lKCtI4lO"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.16243404448652798, "statCode": "HTvK90uT", "userId": "LREQAEe5"}, {"inc": 0.5904704290906813, "statCode": "2aVuLjPE", "userId": "fHiVrnTH"}, {"inc": 0.7623597469744976, "statCode": "hkD4pFYD", "userId": "4MJgk5ft"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4vJ3dpsY' \
    --userIds '["Q3QuNnT2", "41lCyHcB", "8Ru2Nx8o"]' \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Wxj5TEVd", "userId": "1oSAMPSU"}, {"statCode": "jz5VzsrE", "userId": "RPzg4eCW"}, {"statCode": "5KcEMu1q", "userId": "Gk5wmwVn"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'zM0oiAQY' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '18' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["mZNlY1Go", "qcN9mJJR", "kTzOewts"], "cycleOverrides": [{"cycleId": "KfCCWY88", "maximum": 0.4247467806876324, "minimum": 0.07965947320567979}, {"cycleId": "nW2SMcy9", "maximum": 0.34687514489387883, "minimum": 0.9960112054869998}, {"cycleId": "WrleJIhx", "maximum": 0.7438765832470674, "minimum": 0.3881164021054607}], "defaultValue": 0.06951616089252666, "description": "OeI5jVtV", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.15382492606008125, "minimum": 0.8919918332379974, "name": "j5SeHkhw", "setAsGlobal": false, "setBy": "SERVER", "statCode": "YDqSjc7Z", "tags": ["qf201OVw", "WFVqeLvM", "XsWXxAH1"], "visibility": "SHOWALL"}' \
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
    --isPublic 'false' \
    --limit '98' \
    --offset '49' \
    --keyword 'T5bk2WZP' \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'uHHC5hER' \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode '0UHyKxTt' \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nD6jQNDq' \
    --body '{"capCycleOverride": false, "cycleIds": ["7nLruJRl", "AGkaB5m1", "pTvT05ZJ"], "cycleOverrides": [{"cycleId": "SzIXbeAe", "maximum": 0.24093120089366604, "minimum": 0.3506157581316528}, {"cycleId": "QjrlnB5H", "maximum": 0.36000372294086147, "minimum": 0.129309411027428}, {"cycleId": "WjaGKMpu", "maximum": 0.9280145626895726, "minimum": 0.6115791935995123}], "defaultValue": 0.9305981533270153, "description": "IexDfure", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.9029130350805514, "minimum": 0.31944312640874206, "name": "62uWXbRm", "setAsGlobal": true, "setBy": "CLIENT", "tags": ["WgE9X8iy", "nhuSPCki", "IVxmvq42"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'iTjULIz6' \
    --limit '32' \
    --offset '41' \
    --sortBy 'a7w6iDA2' \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ab7l1bz5' \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Pg7E4rYM' \
    --namespace $AB_NAMESPACE \
    --userId 'FcBIc4Qu' \
    --isPublic 'true' \
    --limit '98' \
    --offset '74' \
    --sortBy 'ftgYLKLZ' \
    --statCodes 'hHBoTKzD' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '5e3PAxnP' \
    --isPublic 'false' \
    --limit '4' \
    --offset '66' \
    --sortBy 'jQv8Aqnu' \
    --statCodes 'OCMGtq4f' \
    --tags 'ttUAKjPo' \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'duVXA16x' \
    --body '[{"statCode": "Z6QQC8Lp"}, {"statCode": "YW5YdZxn"}, {"statCode": "WJC2gVJd"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '7NyDMnlE' \
    --body '[{"inc": 0.7676639313580622, "statCode": "42Eh1yZH"}, {"inc": 0.7093555325525212, "statCode": "UZJ8QrgH"}, {"inc": 0.5877293100177161, "statCode": "qpqo2Gmc"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '0rm4wD5T' \
    --body '[{"inc": 0.92297812651398, "statCode": "4ANZmbLp"}, {"inc": 0.37746009166403727, "statCode": "AErbTVkv"}, {"inc": 0.3137981801511427, "statCode": "XU95YtcW"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'OPaoNyKU' \
    --body '[{"statCode": "B00m79Yq"}, {"statCode": "euCQNEeV"}, {"statCode": "OSyAYi08"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'rvcoBf0I' \
    --userId 'OqEYF0cN' \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ItVmfspX' \
    --userId 'JDC6nGMm' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'HNZlKhFO' \
    --userId '9QzOGRr5' \
    --body '{"inc": 0.6135259958900997}' \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '3hxf3I0S' \
    --userId 'Vwbjhxut' \
    --additionalKey 'UEwzLOk6' \
    --body '{"additionalData": {"m7pJQWWR": {}, "9L7PtZUu": {}, "zOndbhlH": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '25' \
    --statCodes 'UV738tKS' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'pRw2pySF' \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '61' \
    --name 'igDsgQfp' \
    --offset '97' \
    --sortBy 'd48Y5m7L' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["JXX4Dm2e", "1bt101KC", "MOMAh2oG"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '72nnQeJj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '4PaAopK4' \
    --userIds '8YBLDpQb' \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6861044984743955, "statCode": "cx5sBcpn", "userId": "U3OpeWsU"}, {"inc": 0.4461927561548359, "statCode": "1mhOgvBE", "userId": "z39EbotO"}, {"inc": 0.41318965735162394, "statCode": "JPkDl9y5", "userId": "wxBIHPBi"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2717068961346216, "statCode": "dPrOocgX", "userId": "mwioqWRW"}, {"inc": 0.8006513186885245, "statCode": "dlDKm2jp", "userId": "p01Z6vRk"}, {"inc": 0.17959489347829105, "statCode": "4iiDcAc5", "userId": "tLeYaYO2"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "RpvPmKF3", "userId": "n6peANdy"}, {"statCode": "KCfefPZI", "userId": "CA6iZncp"}, {"statCode": "ffUlbpUI", "userId": "Ue73S3EI"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["npPB2d9B", "rEpN51iL", "tIgIiObj"], "cycleOverrides": [{"cycleId": "kw1b90wb", "maximum": 0.5113089014991843, "minimum": 0.5791349602244352}, {"cycleId": "iCXO9nvY", "maximum": 0.6648629981159222, "minimum": 0.19683299559066048}, {"cycleId": "HxQYkm6X", "maximum": 0.386711700367813, "minimum": 0.12210630489692798}], "defaultValue": 0.08748406991439817, "description": "27wItk7h", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.3635919192738084, "minimum": 0.01423802864081447, "name": "ZSAAeuju", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "Fe33RTnA", "tags": ["Z15aWCB8", "cn9j6XJU", "blDTQviY"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'K79h4bPt' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '2' \
    --sortBy 'wbVPZmvQ' \
    --statCodes '["hbp3WpwG", "mhZ6BvvB", "9gTyCU6J"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '90' \
    --sortBy 'LjhWXufr' \
    --statCodes '["AMy5GWqi", "wZv5h3WD", "iXf7hJfk"]' \
    --tags '["KwaeARyC", "uMTKoP73", "93kpmlaA"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'VXVlMpis' \
    --statCodes '["jyrDo7jq", "ZU2FEfoU", "eGCk1C0V"]' \
    --tags '["6y6oAYts", "HXBjvs3V", "XzBJL5M9"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '30L5TTWA' \
    --namespace $AB_NAMESPACE \
    --userId 'ocAS01Wh' \
    --limit '9' \
    --offset '94' \
    --sortBy 'sl2jvYtf' \
    --statCodes 'f8YFvYt6' \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'j1MPZE1k' \
    --limit '11' \
    --offset '62' \
    --sortBy 'OZEiLydo' \
    --statCodes 'UH0Rs5BA' \
    --tags '6hmUk3ch' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'RhcpVOUW' \
    --body '[{"statCode": "WGhXkW5A"}, {"statCode": "ZK2nyJjS"}, {"statCode": "dWZ6D3nZ"}]' \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oyyjzgEQ' \
    --additionalKey 'l4ofnDe3' \
    --statCodes '["07g5xmch", "kBFCiHXQ", "nUFyv7rl"]' \
    --tags '["5A5n9wis", "dEI7LcAK", "ctKfVvyg"]' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'iCMiFuu4' \
    --body '[{"inc": 0.2037943853649995, "statCode": "k1IGFTv7"}, {"inc": 0.7601976888041032, "statCode": "AaIoy2ik"}, {"inc": 0.26708414508964495, "statCode": "82mDh1XV"}]' \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'zt7wWFTd' \
    --body '[{"inc": 0.9906143658160348, "statCode": "7iD5vDBv"}, {"inc": 0.5018308318619421, "statCode": "83jpgsim"}, {"inc": 0.44125335019436807, "statCode": "LjaL0NTE"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'WtDPYKL7' \
    --body '[{"statCode": "7EWyOvw6"}, {"statCode": "MFyXFRwR"}, {"statCode": "y0mmKtT8"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'sWjpC61f' \
    --userId 'ItlxZgcx' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wV4ueV5l' \
    --userId 'YMAT0wAS' \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '3zjhxSHx' \
    --userId 'K4jY4l1p' \
    --body '{"inc": 0.1285260489044312}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wiqziIij' \
    --userId 'Gdks85zd' \
    --body '{"inc": 0.6623051392423133}' \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '78kMIVng' \
    --userId 'NbuRFxE1' \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"tXhvlgsr": {}, "HdAkp17D": {}, "0VKqnoXZ": {}}, "additionalKey": "MST35i8N", "requestId": "HLn6ksLQ", "statCode": "rIcWOu25", "updateStrategy": "MAX", "userId": "cQgpDprx", "value": 0.9410612124822894}, {"additionalData": {"4fEdsS8x": {}, "uxtofYSL": {}, "HwlcwLN0": {}}, "additionalKey": "y2GKzpuJ", "requestId": "Ae7u80Yt", "statCode": "PdlgYRmg", "updateStrategy": "OVERRIDE", "userId": "Or8QdRbr", "value": 0.9642920832125046}, {"additionalData": {"P5WmdmX0": {}, "zFAjfVLD": {}, "NXRHsZ29": {}}, "additionalKey": "Dbhoa4OA", "requestId": "1BIDldQx", "statCode": "Qz3K9jS0", "updateStrategy": "MIN", "userId": "FTlZejPU", "value": 0.2127679918698273}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'ZJZKUvYU' \
    --statCode 'GiYuVwV5' \
    --userIds '["jlwjLtwI", "kB4KxWA5", "h2evsDEI"]' \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Y9n7mAjl' \
    --additionalKey 'TGHlf5oT' \
    --statCodes '["n4KW3YoU", "OO6m7FbR", "0tFc9RdL"]' \
    --tags '["Mbs4sdPC", "ZCOlcj6m", "NP73K0vJ"]' \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'C8SWHcL4' \
    --additionalKey 'wLL249Xr' \
    --body '[{"additionalData": {"CrJebY3w": {}, "3XGZVbM6": {}, "wTJWzUrE": {}}, "requestId": "zVm9zS67", "statCode": "exYqQWXg", "updateStrategy": "OVERRIDE", "value": 0.2345954393902161}, {"additionalData": {"agV7mmD3": {}, "g1im16LV": {}, "J1PdHeGK": {}}, "requestId": "D1B2T22v", "statCode": "VwX0LWDW", "updateStrategy": "INCREMENT", "value": 0.16484638927631345}, {"additionalData": {"Q4LEuG2z": {}, "f2yTtOUR": {}, "5MJSyuj5": {}}, "requestId": "vpkgnyAf", "statCode": "nya4JCJa", "updateStrategy": "OVERRIDE", "value": 0.3385615861182424}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'mRuh9jcK' \
    --additionalKey '4TlPhUnH' \
    --body '{"statCodes": ["ev97cFpI", "EJxh302Y", "V1FB3V07"]}' \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'CwTEX6tW' \
    --additionalKey 'irJENm9h' \
    --body '[{"additionalData": {"AiCGoo4Q": {}, "sOUAan8W": {}, "HDq9P0fV": {}}, "statCode": "jKIZLvrA"}, {"additionalData": {"LDbX3xmm": {}, "C1oJFZo9": {}, "BlaEbink": {}}, "statCode": "jhH3LTnd"}, {"additionalData": {"S3I7ScE3": {}, "NVbQe8og": {}, "qm8MUUnc": {}}, "statCode": "7me5WQLF"}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'zSdiTfFV' \
    --userId 'Ij8aR1Fa' \
    --additionalKey 'FS0RFWfy' \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NNY0oPLo' \
    --userId 'H16MN9Oy' \
    --additionalKey 'F6BJJ3RM' \
    --body '{"additionalData": {"KsqvI1vx": {}, "pu6PLaFt": {}, "M4yoWXED": {}}, "updateStrategy": "MIN", "value": 0.5472807420364764}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"yG3cJfFO": {}, "Ho5OQVhN": {}, "0r6tP9qJ": {}}, "additionalKey": "Mzcd67K4", "requestId": "VD54AMnH", "statCode": "gjYOO6ev", "updateStrategy": "MAX", "userId": "EPsVx5Qq", "value": 0.30550454820867146}, {"additionalData": {"lvL3Pgt6": {}, "yGhcRfE4": {}, "3T5oW2B7": {}}, "additionalKey": "LofTMaqQ", "requestId": "feyRLfbz", "statCode": "XVMgE0hP", "updateStrategy": "MAX", "userId": "FKCi2SB5", "value": 0.35914392693578556}, {"additionalData": {"NqQwC68Y": {}, "3vR5xPem": {}, "iF1DOaOq": {}}, "additionalKey": "Vowb03HM", "requestId": "v9KDINsD", "statCode": "6K1jCAhX", "updateStrategy": "INCREMENT", "userId": "NR2v1Q0s", "value": 0.6362032404806983}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'gvTNdes0' \
    --additionalKey 'FoUPNVwg' \
    --statCodes '["HtaTdge1", "hRxoCype", "K7FUMnu5"]' \
    --tags '["e0ztJ6nG", "f4hiSu9y", "FxvTzBG7"]' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'IM9qp6mW' \
    --additionalKey '6X8sTJra' \
    --body '[{"additionalData": {"6Bap6z1D": {}, "jyllVcCw": {}, "5ZNntOkU": {}}, "requestId": "UvJT0E7V", "statCode": "2yWeqMdW", "updateStrategy": "MIN", "value": 0.6175252091034796}, {"additionalData": {"NpCGpzSB": {}, "4wBwsyqJ": {}, "49lRh5tG": {}}, "requestId": "sWKIFlik", "statCode": "JDuuXeD9", "updateStrategy": "MIN", "value": 0.8373930136387691}, {"additionalData": {"FfR9aUBe": {}, "U5RKMCi5": {}, "9j8ehYVt": {}}, "requestId": "Di7ubCJJ", "statCode": "lHCyTe3c", "updateStrategy": "MAX", "value": 0.18129129885928597}]' \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '7Dw7ScSK' \
    --userId 'hWeajUFg' \
    --additionalKey 'mcU4uZKF' \
    --body '{"additionalData": {"eWcB4KYh": {}, "JAlkzM0e": {}, "2NZDTEjC": {}}, "updateStrategy": "MIN", "value": 0.9666015202249699}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE