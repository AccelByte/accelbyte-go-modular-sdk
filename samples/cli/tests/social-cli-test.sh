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
    --offset '69' \
    --statCodes 'JT1xdiCs' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '6SmrOiVG' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '35' \
    --name '37RlfzDP' \
    --offset '68' \
    --sortBy 'x0ixZdK1' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "2TiOt2kb", "end": "1996-03-27T00:00:00Z", "id": "5G2xDaku", "name": "TBdiz8VX", "resetDate": 22, "resetDay": 36, "resetMonth": 16, "resetTime": "fdr5lcxI", "seasonPeriod": 68, "start": "1988-10-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["k5wX6cEA", "FgsWIy9h", "DsqZrlcF"]}' \
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
    --cycleId 'x1KJAah6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'CDrOlwT4' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "GjTy8Epj", "end": "1972-09-01T00:00:00Z", "name": "wsnxtW1h", "resetDate": 60, "resetDay": 95, "resetMonth": 46, "resetTime": "AXCIdj5V", "seasonPeriod": 0, "start": "1990-05-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '3W7hr3vv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'bG3neUT5' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["Syk7jTQH", "mkwR21ia", "9aEfWeNU"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'isXj3ZFF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'LxO8NS3m' \
    --userIds 'OEmGPL5k' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2461430779746241, "statCode": "hsBJGYnh", "userId": "9iDtMNzs"}, {"inc": 0.5899265322689005, "statCode": "z2qUykpJ", "userId": "m3OHjW4u"}, {"inc": 0.923926261202088, "statCode": "ZH8PGftK", "userId": "lgS9bTjL"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.15747414030724727, "statCode": "jdWPhPoa", "userId": "ZGrK8gbO"}, {"inc": 0.1288231868327333, "statCode": "cagfhHYp", "userId": "n52plXmM"}, {"inc": 0.8550420308921858, "statCode": "sL5rVBVM", "userId": "CyFodkbs"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '6vO996ms' \
    --userIds '["I5oAExSX", "svMHSA2W", "ixHpqtu8"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "tjeqny7j", "userId": "GG7NKHAZ"}, {"statCode": "M0UUn07T", "userId": "g4FIKtd6"}, {"statCode": "8ZN451JK", "userId": "jOUQGKPF"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'IHRPU2io' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '33' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["VAdniIcb", "FE7cIsQ7", "gt9DfC7h"], "cycleOverrides": [{"cycleId": "CbIPQzBy", "maximum": 0.7724668095864308, "minimum": 0.5024508241852859}, {"cycleId": "1ViYzDNR", "maximum": 0.978150759316929, "minimum": 0.9070045110622194}, {"cycleId": "kTB8nvAY", "maximum": 0.12618695923910517, "minimum": 0.3345644851340309}], "defaultValue": 0.4659828431749934, "description": "0AKFVu8E", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.020380725181697867, "minimum": 0.11932976731860567, "name": "lrPR11XE", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "GvghGSCp", "tags": ["ArGD2dJv", "nnXU8ziB", "cMVDsXJE"], "visibility": "SHOWALL"}' \
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
    --limit '36' \
    --offset '90' \
    --keyword 'nkMFwASP' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'vrH6Ufkz' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ynHiWC6a' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'dnXm6KdN' \
    --body '{"capCycleOverride": true, "cycleIds": ["9xaueJZP", "hAyQ3Cgm", "CU3hgfMU"], "cycleOverrides": [{"cycleId": "iAR7pagH", "maximum": 0.8021347511702627, "minimum": 0.05033447290267812}, {"cycleId": "2gPyVrp9", "maximum": 0.8055733700850148, "minimum": 0.7597403171749328}, {"cycleId": "tcselIpc", "maximum": 0.9821795986037732, "minimum": 0.12736518424084842}], "defaultValue": 0.8507625715831643, "description": "9OafupU5", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "YJWR2Z4O", "tags": ["7sRI8d0C", "7XzTha0U", "pMHXj0XL"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'uiRtlD52' \
    --limit '64' \
    --offset '49' \
    --sortBy 'oqcofWUq' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'xmccfJ96' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'hiqktkWy' \
    --namespace $AB_NAMESPACE \
    --userId 'HOfft42y' \
    --isPublic 'true' \
    --limit '19' \
    --offset '5' \
    --sortBy 'aOt9xOYD' \
    --statCodes 'rqMDaqdw' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jdYLSFuO' \
    --isPublic 'false' \
    --limit '0' \
    --offset '28' \
    --sortBy 'ks47bL4s' \
    --statCodes 'q2SNzsym' \
    --tags 'muZhOoOG' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QbrU9ayh' \
    --body '[{"statCode": "mqq9z810"}, {"statCode": "T7jDdQXp"}, {"statCode": "GG8zoSCV"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'l6hmrVq2' \
    --body '[{"inc": 0.5699409029150797, "statCode": "8i46Ou7i"}, {"inc": 0.5067033157510578, "statCode": "QQf5hPtn"}, {"inc": 0.8343518753362468, "statCode": "OlxWAUY4"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'us3d6WLo' \
    --body '[{"inc": 0.6752911028913194, "statCode": "GnnwgZci"}, {"inc": 0.3785975374119869, "statCode": "HDopKDbX"}, {"inc": 0.11357112588085028, "statCode": "vpKYpBIx"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '88H123Bh' \
    --body '[{"statCode": "wqNE6DUs"}, {"statCode": "bEyAOplf"}, {"statCode": "cWLBrqW8"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'XXOchGMH' \
    --userId 'UFYk3wOp' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'CA8p4pu6' \
    --userId 'VAmBTRN5' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'sm9ghvhh' \
    --userId 'G4qkM0LK' \
    --body '{"inc": 0.9951718180167466}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'cLvxwpoQ' \
    --userId 'j1Fn4Sy7' \
    --additionalKey 'feR3Zgfg' \
    --body '{"additionalData": {"3vLeinAh": {}, "1hoVrmK7": {}, "PNWaSo1D": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '40' \
    --statCodes 'GkD5e2PC' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'uiEPR2Ih' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '32' \
    --name 'cgPgnxeP' \
    --offset '91' \
    --sortBy 'CWBNrgom' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["6L6dIqxK", "JcSzyxCl", "fOq6AYug"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'LpOGwY4J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'YVwYDLvE' \
    --userIds 'cBUg2Ylq' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.06696829291632178, "statCode": "UygPEz1A", "userId": "uC95lbKe"}, {"inc": 0.8467882470291154, "statCode": "H2QsYH9x", "userId": "rZcF2TEY"}, {"inc": 0.6692923755240812, "statCode": "UZd3KqYU", "userId": "dXA5ymWu"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8692561269654122, "statCode": "tNHIBPnN", "userId": "LZj6hgXf"}, {"inc": 0.7192632584755112, "statCode": "qYBC8g0c", "userId": "Tvim4FpE"}, {"inc": 0.9684903617286301, "statCode": "xxd7HofG", "userId": "VO7IOVYX"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "cq4IbT3F", "userId": "cL6GEFlu"}, {"statCode": "hUP6Uy4C", "userId": "KF1vZH1d"}, {"statCode": "sF4Lxbsy", "userId": "07OULg9b"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["toTus64S", "PmLKWkfs", "pvpoiPSC"], "cycleOverrides": [{"cycleId": "zPuuT9Zs", "maximum": 0.19819403199863084, "minimum": 0.14814080916095873}, {"cycleId": "ARBztiNo", "maximum": 0.19706292869390885, "minimum": 0.7387308585190128}, {"cycleId": "cFiIUyuZ", "maximum": 0.2354711912363563, "minimum": 0.13926246134264553}], "defaultValue": 0.12077046621879439, "description": "HzouVkdg", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7182146258264326, "minimum": 0.9071708541733834, "name": "irBGdKud", "setAsGlobal": true, "setBy": "SERVER", "statCode": "yN5F3ehK", "tags": ["zmPkH8Yj", "hvDHQnNt", "PyouFasn"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'GN4M6JSb' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '3' \
    --sortBy 'tiaa1bz0' \
    --statCodes '["9J2inGPt", "JM1QgC7F", "GU9YqBP6"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '48' \
    --sortBy 'F2pr1D4n' \
    --statCodes '["huDhE9Xt", "c7mV0k3F", "2wjeqDAS"]' \
    --tags '["OkBYi2n5", "UGUgsF4b", "5fvbejg0"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'yXR3FDpj' \
    --statCodes '["zenKRPZo", "BFvdgt3i", "KuTQ4crj"]' \
    --tags '["rpOKC9Gd", "9AueI8Lt", "12nMs2yy"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'z7PSCWQs' \
    --namespace $AB_NAMESPACE \
    --userId 'ITwvqbXJ' \
    --limit '45' \
    --offset '12' \
    --sortBy 'dF9hxmXx' \
    --statCodes 'kmacTrJu' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '34420gia' \
    --limit '16' \
    --offset '21' \
    --sortBy 'E23wK5fk' \
    --statCodes 'AP9BMoCk' \
    --tags 'bqE1GbeP' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'kaepeyMp' \
    --body '[{"statCode": "x3PIeyqU"}, {"statCode": "qgvFUts4"}, {"statCode": "ykY5OJuM"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '3eGNoiqK' \
    --additionalKey 'z0HYChg9' \
    --statCodes '["ANmi5j2G", "xV2HFDrg", "AHXl9IV1"]' \
    --tags '["zZIMfw3f", "jZep5zd4", "WYmV9pxl"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'CVHZqF6p' \
    --body '[{"inc": 0.017523740085351736, "statCode": "4B2n7k43"}, {"inc": 0.8651118373589498, "statCode": "j2oSixId"}, {"inc": 0.9341665403718996, "statCode": "lVEzL3pU"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '6RygXThM' \
    --body '[{"inc": 0.8532775568880491, "statCode": "apwCpUCz"}, {"inc": 0.9595385794522037, "statCode": "9p8NswPT"}, {"inc": 0.5222056108713244, "statCode": "tAKlJXIJ"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'mXTsUOkx' \
    --body '[{"statCode": "sWKVXPlv"}, {"statCode": "rTgXXumS"}, {"statCode": "PdtzDRUq"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'skjK9y3o' \
    --userId 'S6ZcGjwv' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FVTqBubD' \
    --userId '0ndp7hpl' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'GZGJilzz' \
    --userId 'QqBr242m' \
    --body '{"inc": 0.20053534525144756}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'D6FXBSgJ' \
    --userId 'lV1M0mlW' \
    --body '{"inc": 0.7637700347569458}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '8DVSJEkG' \
    --userId 'bwbiA2qs' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"RmcxrGoZ": {}, "Kzrh1UDb": {}, "ywolsNcN": {}}, "additionalKey": "wnyxTi3B", "requestId": "e6WjkCXH", "statCode": "aSWhdRVs", "updateStrategy": "MIN", "userId": "036vx6ca", "value": 0.04709522145924194}, {"additionalData": {"qgcfSKb5": {}, "oZsM1GEL": {}, "W5Li3B7N": {}}, "additionalKey": "TpRmf7PQ", "requestId": "8XNeU36i", "statCode": "sGNKdFj3", "updateStrategy": "OVERRIDE", "userId": "23eVQNm7", "value": 0.31020748562553124}, {"additionalData": {"ccJoWeam": {}, "HJLszPkY": {}, "gWtuzNmb": {}}, "additionalKey": "8eBHBJgj", "requestId": "HcUH5oTn", "statCode": "6FRcNKfV", "updateStrategy": "MIN", "userId": "psduWfvC", "value": 0.38466259753301013}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'OATMfqpx' \
    --statCode 'tumwJydo' \
    --userIds '["oCU4AO3d", "Mvnbjc3Z", "tXvcSzrR"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'AFZ2eJzs' \
    --additionalKey 'akiDlSXy' \
    --statCodes '["NpOpRciq", "p2h8816p", "5GkycwJr"]' \
    --tags '["AZrkQjDJ", "KLPsUNUS", "oULb9IMM"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'EtALZlzu' \
    --additionalKey 'P72Z8ie5' \
    --body '[{"additionalData": {"LufNOI1A": {}, "tJC1Ipof": {}, "sdN4Aikc": {}}, "requestId": "NWUKiTJX", "statCode": "DqprlS01", "updateStrategy": "INCREMENT", "value": 0.19900227451943264}, {"additionalData": {"fR8oYcYk": {}, "SjsEafA6": {}, "27Cx3FHR": {}}, "requestId": "UnYWc7qG", "statCode": "epktgdEV", "updateStrategy": "INCREMENT", "value": 0.6381737177636242}, {"additionalData": {"IgDRmYVP": {}, "rlk8AeZS": {}, "cvbsZSgy": {}}, "requestId": "9k2DQSjB", "statCode": "MHFWGUvO", "updateStrategy": "MAX", "value": 0.9771030571078398}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'gP9ux9AO' \
    --additionalKey 'bx1YmbBE' \
    --body '{"statCodes": ["DWqdcqvK", "9HIkuDNw", "0rFp4lyd"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'HNbqgL1t' \
    --additionalKey 'zv29g3mV' \
    --body '[{"additionalData": {"0GsEYjSV": {}, "i8FB6Dsf": {}, "c8owRJdW": {}}, "statCode": "HszdU4zJ"}, {"additionalData": {"Uv4fMWkA": {}, "4dYqAikL": {}, "q97Wl9hY": {}}, "statCode": "nOGPFhvp"}, {"additionalData": {"toovwMm0": {}, "Wt15nOsa": {}, "c1yZUjqj": {}}, "statCode": "r4Q2x8Xy"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'LPTNhOey' \
    --userId 'EmPYxCpG' \
    --additionalKey 'dT3raM6N' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rQky9tOi' \
    --userId '2P3qiXh7' \
    --additionalKey 'OitJaHBy' \
    --body '{"additionalData": {"IyL3wk1r": {}, "okA3c8rt": {}, "peaudlrZ": {}}, "updateStrategy": "INCREMENT", "value": 0.9912738486637868}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"c79IMExT": {}, "qS9xfUXi": {}, "W4pmyPSR": {}}, "additionalKey": "odMVxGzb", "requestId": "hIPRQ5CB", "statCode": "gkySRzZd", "updateStrategy": "MAX", "userId": "XvV5mpIn", "value": 0.5847949242135336}, {"additionalData": {"ysSr6nh5": {}, "bTOCfmGJ": {}, "CHj6pprV": {}}, "additionalKey": "IznjJ4RZ", "requestId": "LKoa2N8X", "statCode": "EZTMwSMF", "updateStrategy": "MAX", "userId": "MZYPamjS", "value": 0.05035659378170698}, {"additionalData": {"WujTZPvQ": {}, "RUOVUfKR": {}, "8vp7Glhc": {}}, "additionalKey": "uknBLLCK", "requestId": "t8C0VOP1", "statCode": "GRWQGZ1E", "updateStrategy": "MIN", "userId": "nWaWvyoB", "value": 0.6417235940885875}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'tyr8tOsH' \
    --additionalKey 'zR3tJuO5' \
    --statCodes '["KtzQmC89", "wlNKD7Sf", "2aaPr9jJ"]' \
    --tags '["o1m7pJT8", "XpJfD2TC", "VzmN2qSd"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'TsYfoWiy' \
    --additionalKey '2uDWezYU' \
    --body '[{"additionalData": {"0AlGKDFH": {}, "30qlp9Qe": {}, "DNvQkehJ": {}}, "requestId": "yk0SZZaw", "statCode": "n1PX9j1g", "updateStrategy": "INCREMENT", "value": 0.20610194948078842}, {"additionalData": {"piw3SEMT": {}, "Pg8ifcp1": {}, "BveUXnq5": {}}, "requestId": "rspsNfRy", "statCode": "A5q284SZ", "updateStrategy": "MIN", "value": 0.9606045811998046}, {"additionalData": {"JDGjGgYM": {}, "MJFTpONQ": {}, "wa2JLjAt": {}}, "requestId": "xrsOP1vg", "statCode": "k8iXNIpP", "updateStrategy": "MAX", "value": 0.602746017068905}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '3RpRaRse' \
    --userId 'xgdhRWj2' \
    --additionalKey 'YLtbyurW' \
    --body '{"additionalData": {"ErYW5dLD": {}, "iLruUnF9": {}, "ATKQOra6": {}}, "updateStrategy": "MAX", "value": 0.5709044057099781}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE