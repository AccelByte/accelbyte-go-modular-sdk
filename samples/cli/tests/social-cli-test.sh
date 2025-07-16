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
    --limit '27' \
    --offset '73' \
    --statCodes 'E92spnlB' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'ZR2MQZIQ' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '3' \
    --name 'KtfxIoXG' \
    --offset '3' \
    --sortBy 'gNpPykSy' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "N4sxnPaK", "end": "1993-04-12T00:00:00Z", "id": "FsF4BvFn", "name": "BkWc6Jlt", "resetDate": 33, "resetDay": 2, "resetMonth": 93, "resetTime": "p8f4xffr", "seasonPeriod": 37, "start": "1989-03-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["KydMf1Ii", "QLKvJEkC", "RUAHyqQY"]}' \
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
    --cycleId 'JMwSgsO6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '0a8rnCHe' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "mHZoXkGw", "end": "1989-05-06T00:00:00Z", "name": "M2nNWYLN", "resetDate": 43, "resetDay": 31, "resetMonth": 50, "resetTime": "EiIU9dWh", "seasonPeriod": 20, "start": "1971-01-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'JXWsrR3F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '6VrgWO8f' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["oiA9zazu", "y8SFIRCw", "wMq7TrGy"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'kEh5X3nH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lA20jy7y' \
    --userIds 'im4wFPkt' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.668326877457422, "statCode": "BJxj8lNe", "userId": "LJLiUik9"}, {"inc": 0.007889798695311367, "statCode": "sWUIhOrw", "userId": "7gOxtZ4e"}, {"inc": 0.4421485203041421, "statCode": "Ber6vMus", "userId": "m27L3wmV"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7345744376039152, "statCode": "o9ntIE45", "userId": "QnMtW1xl"}, {"inc": 0.5308051483874185, "statCode": "yTDoM02b", "userId": "zGTTCa5E"}, {"inc": 0.04009186942837162, "statCode": "nSN28Kua", "userId": "WrxfEAgf"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Wz7UcMTL' \
    --userIds '["2RFKPfj5", "5SvS3xSN", "kGfjCw2a"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "KaLXIdZK", "userId": "ti7dax8X"}, {"statCode": "pXv2dYKM", "userId": "kUDPDa9b"}, {"statCode": "alQ68cHM", "userId": "6QW8inqc"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'CHr9PgXp' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '76' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["hA63bjev", "xNWEwGcd", "3UYeXT9N"], "cycleOverrides": [{"cycleId": "Tt7p5W0O", "maximum": 0.22045746867440819, "minimum": 0.3646293888304807}, {"cycleId": "OkkoOCZY", "maximum": 0.17404099619303415, "minimum": 0.17131348327388807}, {"cycleId": "fkC2Mwb4", "maximum": 0.17538787084420815, "minimum": 0.8934463113667528}], "defaultValue": 0.9110779704360787, "description": "rkRWb1Mi", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.10415463069683484, "minimum": 0.4609205694863264, "name": "A06tQ8pl", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "6kDYA5bg", "tags": ["zfhcztY4", "v220Wq3B", "yuvxoNDC"], "visibility": "SERVERONLY"}' \
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
    --limit '29' \
    --offset '85' \
    --keyword 'U4gk9cOO' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'TLWuD07I' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'qywvWxQh' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '9h0XWSfj' \
    --body '{"capCycleOverride": false, "cycleIds": ["H3W0YsFp", "OCqj9Es1", "2ln9UC40"], "cycleOverrides": [{"cycleId": "sf0EnCix", "maximum": 0.8188795542962427, "minimum": 0.2690966798941221}, {"cycleId": "EGDWnxsH", "maximum": 0.09216460418891581, "minimum": 0.477631017354057}, {"cycleId": "doETPBOV", "maximum": 0.969302221554152, "minimum": 0.13941562725523793}], "defaultValue": 0.9331280766618003, "description": "OHBibA8P", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "LtLHsD2G", "tags": ["RAO8LMU7", "burZeoit", "MEQVuNqG"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '3uJGMInL' \
    --limit '8' \
    --offset '9' \
    --sortBy 'SSL5DIO5' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'D2vd0Vmk' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'cpwtpeXp' \
    --namespace $AB_NAMESPACE \
    --userId 'kDHvQEXu' \
    --isPublic 'false' \
    --limit '5' \
    --offset '39' \
    --sortBy 'UXFWTwT2' \
    --statCodes 'CuAUGrNV' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'vhvedYn2' \
    --isPublic 'true' \
    --limit '31' \
    --offset '6' \
    --sortBy 'csbcG9Um' \
    --statCodes 'NdlkY7Jk' \
    --tags 'q3h4KyAh' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'UabrTUtm' \
    --body '[{"statCode": "CsQk8nrQ"}, {"statCode": "3qRmERJ9"}, {"statCode": "TZolh7E1"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'rQXczfL8' \
    --body '[{"inc": 0.010779526147726148, "statCode": "hKJIzwIv"}, {"inc": 0.0011344186762133335, "statCode": "aSdyl5bM"}, {"inc": 0.34463818970412197, "statCode": "vvEOIL48"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'UkQt1VLt' \
    --body '[{"inc": 0.22841778909518562, "statCode": "6fU5ctd1"}, {"inc": 0.876377835998997, "statCode": "kMxJVaiW"}, {"inc": 0.6146075319740576, "statCode": "69NUU74p"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'hIleGfhU' \
    --body '[{"statCode": "WDojQQP4"}, {"statCode": "8xDoMOsJ"}, {"statCode": "YTGA7shW"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'tSk82sXr' \
    --userId '31n9s81X' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'OuaVH5CX' \
    --userId 'PMQRV8b3' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'NT4Vltr4' \
    --userId 'J8WqFHZr' \
    --body '{"inc": 0.7898353598983386}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AteZIoKs' \
    --userId 'uJzHvyHr' \
    --additionalKey '0KnoJl3C' \
    --body '{"additionalData": {"QHU3D4G8": {}, "2pXn5RsK": {}, "OBVhPuAx": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '55' \
    --statCodes 'cJiq7Kd6' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '7P8vuUnp' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '51' \
    --name 'MqdVYGMc' \
    --offset '57' \
    --sortBy 'vzQdy6SB' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["SM6V3vFh", "dUgkN4rR", "XSNKrcpY"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'VTjuTSDQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'w1Ocy33V' \
    --userIds 'IFbUMZqZ' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.47598222513937016, "statCode": "7yezzWjS", "userId": "9Dw6oE4K"}, {"inc": 0.2390825387245339, "statCode": "n9eRlxh7", "userId": "QwTLAonP"}, {"inc": 0.8390452042812873, "statCode": "IsjBgAHe", "userId": "XCuGVH0P"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5749270190986304, "statCode": "CWN3OH6x", "userId": "nbr6rOGd"}, {"inc": 0.284305633446331, "statCode": "Z0VyuZAl", "userId": "IQFDSKLg"}, {"inc": 0.81062759966509, "statCode": "Zh5zWhCF", "userId": "y06ffJ2n"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "Zbc6tWdu", "userId": "BtGjSXnK"}, {"statCode": "CcfJ4w13", "userId": "l4WGXAr5"}, {"statCode": "gamRkvaL", "userId": "q5tFPb2o"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["YFhoIRX5", "2Bhlcuh9", "76F47RhM"], "cycleOverrides": [{"cycleId": "1D8sDWbm", "maximum": 0.3379424508559188, "minimum": 0.5784159733649521}, {"cycleId": "tCGmZ935", "maximum": 0.9252937350915458, "minimum": 0.6098794797509943}, {"cycleId": "MqRqsyvY", "maximum": 0.5181556020152606, "minimum": 0.9825509390434162}], "defaultValue": 0.6791010944440327, "description": "AS8dC6Tf", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7002626659481694, "minimum": 0.5952552682415841, "name": "FU8ndRgl", "setAsGlobal": false, "setBy": "SERVER", "statCode": "H4iUUwf7", "tags": ["3pOcXJEr", "rRvQ4yIC", "HzEU6pM7"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'KbhQ3rRJ' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '78' \
    --sortBy '8Q82RucS' \
    --statCodes '["TFsDjtwW", "EvdRaCDp", "UxChnhV9"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '19' \
    --sortBy 'zIRaP1MX' \
    --statCodes '["v5Sw4dXx", "tPZY1VyZ", "xAtdjtSU"]' \
    --tags '["sfH3Hwvr", "Kfaop5yo", "wF25kIzM"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'XMFxkJhJ' \
    --statCodes '["S2EWxf4R", "HhCTiMn4", "9HSlpL5S"]' \
    --tags '["STMSczVN", "XEgrAtuA", "OZYgQjLQ"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'HO00Whgb' \
    --namespace $AB_NAMESPACE \
    --userId '6tHGCnIp' \
    --limit '25' \
    --offset '49' \
    --sortBy '9nsyrhJ3' \
    --statCodes 'f8G2dDJT' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId '2Qm1vjFj' \
    --limit '77' \
    --offset '86' \
    --sortBy 'WDVibC7T' \
    --statCodes 'AnkdQyBT' \
    --tags 'iZ5En1NN' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7DbMttCM' \
    --body '[{"statCode": "Bo5C9HnL"}, {"statCode": "4yuD9h15"}, {"statCode": "IqzpkGvx"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'j3SqfWxY' \
    --additionalKey 'gDu7a11U' \
    --statCodes '["0F8iQlmz", "zcSItF3s", "tsFh1hSh"]' \
    --tags '["RMUOxGU6", "UG56d6Un", "Eiz6G68G"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'VIjbEnmb' \
    --body '[{"inc": 0.7445504686812318, "statCode": "yyK5YTHW"}, {"inc": 0.98749733342249, "statCode": "6keCp1na"}, {"inc": 0.9752102619139978, "statCode": "APGihkmP"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'N6CfrdxN' \
    --body '[{"inc": 0.19718598963586653, "statCode": "ILbTjwk8"}, {"inc": 0.5787147144697649, "statCode": "3Nz5Kj6M"}, {"inc": 0.9521825116013377, "statCode": "AHQiEjjf"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'S0sh3b47' \
    --body '[{"statCode": "4Q8y5hlA"}, {"statCode": "uW8OhFni"}, {"statCode": "xD3WmD4o"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'FYtodBhg' \
    --userId 'iGKyUBe2' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ROs0nUiL' \
    --userId 'ozbeVx9v' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'IEqZqoPn' \
    --userId 'kCG0GWTf' \
    --body '{"inc": 0.20738520052488363}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '2E4AGpj6' \
    --userId 'cEgz2YvY' \
    --body '{"inc": 0.7829375703925937}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'nkZkQRYF' \
    --userId 'cVDBMYUD' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"XO5qPFaw": {}, "Dk6u5EyR": {}, "r0lwLcK8": {}}, "additionalKey": "0sgdgrgK", "statCode": "d3dhJmti", "updateStrategy": "INCREMENT", "userId": "Xdm66eDt", "value": 0.8797836861725699}, {"additionalData": {"Dc3mPDvo": {}, "AuLuAPSE": {}, "nUkRjFY5": {}}, "additionalKey": "abmGDl6R", "statCode": "KOcxezqS", "updateStrategy": "MIN", "userId": "VybTHioV", "value": 0.4339144003596228}, {"additionalData": {"KLc1VYYf": {}, "8Aw3sbJs": {}, "2iZpEPsB": {}}, "additionalKey": "2ojrpJKe", "statCode": "T9wgTA43", "updateStrategy": "INCREMENT", "userId": "9g34bPnZ", "value": 0.8203219123508961}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'beU5yWSX' \
    --statCode 'wiXCAn9U' \
    --userIds '["S9e2KrSD", "x09gB0za", "1jtDtO4A"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'NhDqbUZv' \
    --additionalKey 'qcJuzG0N' \
    --statCodes '["HJebKGGW", "3SSrYMPH", "YUS6Ewgt"]' \
    --tags '["ZtmrX7k2", "kyj4gSsI", "MBQZv2BP"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'DH5vbNaM' \
    --additionalKey 'xxCgSvXf' \
    --body '[{"additionalData": {"173XZKQL": {}, "MNtt2vRI": {}, "dBdtazQE": {}}, "statCode": "92Q6ilMC", "updateStrategy": "MIN", "value": 0.980427516936052}, {"additionalData": {"mf3xdczM": {}, "LBXTi9JC": {}, "EZjiFxwF": {}}, "statCode": "QleLeH5q", "updateStrategy": "OVERRIDE", "value": 0.5394524546297933}, {"additionalData": {"Gq3dFJiz": {}, "36VEBQHY": {}, "RXNmBAIM": {}}, "statCode": "xbvrll2W", "updateStrategy": "INCREMENT", "value": 0.8748043305737941}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'qwlWZMSg' \
    --additionalKey 'OsQkvonB' \
    --body '{"statCodes": ["jVxx4ZHu", "DNrnBcDt", "hdYvPEgH"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'N0nNzu1x' \
    --additionalKey 'sVrhAmdJ' \
    --body '[{"additionalData": {"w5rO7xSv": {}, "xdIY7of8": {}, "Hh2qV5sM": {}}, "statCode": "vi4y1PIs"}, {"additionalData": {"1AAFdRXP": {}, "T49fBSE0": {}, "3ouDlFXu": {}}, "statCode": "EL4wIaVI"}, {"additionalData": {"sgahBgBf": {}, "ErYHYUNB": {}, "11eexw9q": {}}, "statCode": "wgVEvncJ"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'VSenLSM0' \
    --userId 'ah5i4shZ' \
    --additionalKey 'W8GSB8zi' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6NtHdVcM' \
    --userId '1KjqqPHv' \
    --additionalKey 'v7XqHMHF' \
    --body '{"additionalData": {"HFMiPjy5": {}, "Cx8OLj2p": {}, "u7iDctUS": {}}, "updateStrategy": "OVERRIDE", "value": 0.16850436828839188}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"rGiFPcHh": {}, "Rjg3IT8C": {}, "WdzV3pBi": {}}, "additionalKey": "oqG7d5JD", "statCode": "IVryzoyS", "updateStrategy": "MAX", "userId": "mSHSh8jJ", "value": 0.9071374940835284}, {"additionalData": {"fbVW0TfK": {}, "1ZBJFRYM": {}, "zhWWfnjV": {}}, "additionalKey": "xSsrsqcW", "statCode": "M4HuUKVd", "updateStrategy": "MAX", "userId": "q83mz5lm", "value": 0.9252715818616701}, {"additionalData": {"dMuTDLq4": {}, "pLcXAuVc": {}, "YoRCWSl5": {}}, "additionalKey": "0hNjuqzI", "statCode": "uJIpTFLK", "updateStrategy": "MAX", "userId": "Qsc5j8FV", "value": 0.07245618191250736}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'LCfaL7Zy' \
    --additionalKey 'TuiI7OnF' \
    --statCodes '["uTbfhTBR", "4DMUVRqk", "9lpl3Apm"]' \
    --tags '["hF6llDkK", "pxnMyr7s", "UIKviHTI"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'iFlBtTaW' \
    --additionalKey '33I3qDVE' \
    --body '[{"additionalData": {"hghFwUbN": {}, "1gIDwC47": {}, "9UY2b18k": {}}, "statCode": "04220iNR", "updateStrategy": "INCREMENT", "value": 0.7637270955201659}, {"additionalData": {"zjgCFu4E": {}, "8Kr3pQfy": {}, "qyLhADE9": {}}, "statCode": "PFpBQ4VR", "updateStrategy": "OVERRIDE", "value": 0.7388920079397147}, {"additionalData": {"S4KPie5P": {}, "kXj7gMfo": {}, "6ZxFZE7S": {}}, "statCode": "MxiOWRA9", "updateStrategy": "INCREMENT", "value": 0.9787482388589657}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'eeLni9ut' \
    --userId '0tP9mfXu' \
    --additionalKey 'BALSDaLb' \
    --body '{"additionalData": {"fAPQbyx4": {}, "BUXnlndw": {}, "8Kdt0rDn": {}}, "updateStrategy": "INCREMENT", "value": 0.6693949431473211}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE