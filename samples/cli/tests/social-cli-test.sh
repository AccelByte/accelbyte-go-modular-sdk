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
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'aET4AhMF' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'XgWzv8FQ' \
    --userId '2o8DYNQG' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["zcdhnzq0", "trQ7ss2O", "Qyj6gFJl"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'fWRkzB55' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Hiwosutx' \
    --body '{"achievements": ["9H8LQQqy", "8tN6v89f", "KjH7T9Xb"], "attributes": {"f2XuJQlP": "FIBWaXU7", "uIi2DZej": "Tnq2TeXV", "YRzhncT0": "bs795EcQ"}, "avatarUrl": "yHPXcWzJ", "inventories": ["TpZcZZ20", "irrj8kZ7", "nd356hW1"], "label": "nKECXSIR", "profileName": "bBs3ckgg", "statistics": ["ZHVDgD2c", "CsIwJY52", "0Dgn3SBR"], "tags": ["npBNmGdQ", "MFeE3AoG", "aa0phI5s"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TqDtUVs4' \
    --userId 'BfrjR2r3' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'wHv0icW9' \
    --userId 'RkLbd4lf' \
    --body '{"achievements": ["U7LjvdOx", "d5slgnwD", "jq6a0Mn3"], "attributes": {"DUQxLU9H": "IaoyDtH1", "RSbc4XeD": "SUY96F5z", "DjzJQFOO": "kfLgwv32"}, "avatarUrl": "zXdOvPY5", "inventories": ["ck36ExiK", "Hd0DJdF6", "0LWBXkOu"], "label": "yUQaZ93v", "profileName": "AZj4PPUa", "statistics": ["qAqPpWcC", "5XmjWoTC", "fLUWenoC"], "tags": ["FBaqbecu", "RLcat79t", "5j9NDvmq"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tAXNRCop' \
    --userId '4tPduIiz' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'Jc4Ol6k3' \
    --namespace $AB_NAMESPACE \
    --profileId 'bqsu9iEY' \
    --userId 'RTMEHCue' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'XFXbAmj2' \
    --namespace $AB_NAMESPACE \
    --profileId 'cAFzkAZ3' \
    --userId 'Y5ds7Gjz' \
    --body '{"name": "8lY0akXe", "value": "ULqZt9LU"}' \
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
    --limit '63' \
    --offset '92' \
    --statCodes 'rRPY4XRL' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'gZYlKeMF' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '8' \
    --name 'lcjKW5rI' \
    --offset '76' \
    --sortBy 's1V86ZvL' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "Cj7qjCdR", "end": "1971-01-07T00:00:00Z", "id": "2J9SDTn2", "name": "WCmUmww9", "resetDate": 44, "resetDay": 32, "resetMonth": 31, "resetTime": "oYvjX7cZ", "seasonPeriod": 45, "start": "1974-12-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ZlJHKSmB", "lj1Dq67E", "J1e8iCzX"]}' \
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
    --cycleId 'g3EfVnV3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'GhM9Oorr' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "AuSD4nz4", "end": "1978-09-06T00:00:00Z", "name": "Synzqdaw", "resetDate": 51, "resetDay": 86, "resetMonth": 89, "resetTime": "RZHCuBzL", "seasonPeriod": 14, "start": "1977-05-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'D2cxBGpF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'Thj6WKO5' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["dlZiXsHB", "lrpm52Hi", "9likk9Ye"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'MEwLE3YV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'MAN8zZQk' \
    --userIds 'U6Sx55Pu' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8174708578493476, "statCode": "4qb0WcoD", "userId": "8e6ancAL"}, {"inc": 0.0671110509702878, "statCode": "wuUyxu97", "userId": "p2t2BBqS"}, {"inc": 0.6938793813686157, "statCode": "De8gwDTY", "userId": "mGqzAtYz"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.842506351122124, "statCode": "sED3JY55", "userId": "bjnhwluG"}, {"inc": 0.8846124563456002, "statCode": "j4qLpveP", "userId": "2PsreqBP"}, {"inc": 0.2365938440972304, "statCode": "LPiFGKwA", "userId": "ZEkfqRXw"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'v1EQTA0y' \
    --userIds '["eGOykysf", "Z7kGe7tF", "W0JfUdTz"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "FVceDabZ", "userId": "VLqn8U0s"}, {"statCode": "cgstcKVe", "userId": "2YIaU7zz"}, {"statCode": "jrQWT6v1", "userId": "4VAgROPO"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'AJ9aFHON' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '25' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["MhOcTacJ", "RZUunZAq", "YqCk1D2O"], "cycleOverrides": [{"cycleId": "jWtXQsG0", "maximum": 0.5868107222935763, "minimum": 0.958285914601221}, {"cycleId": "BbACSV0y", "maximum": 0.7461229414048698, "minimum": 0.35516460668757177}, {"cycleId": "XodHNKfr", "maximum": 0.9095589783874295, "minimum": 0.7067713422975728}], "defaultValue": 0.9313494651692262, "description": "lRIOX40n", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.6265046999423859, "minimum": 0.8951593887752524, "name": "JzKiFTuu", "setAsGlobal": false, "setBy": "SERVER", "statCode": "tcZIdOtn", "tags": ["DpcHO7RZ", "9DGl6ySC", "rk5CnMem"], "visibility": "SHOWALL"}' \
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
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '11' \
    --offset '65' \
    --keyword '8o9HvLt4' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'dVsQ841W' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fMdn4eFR' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'uPjvw59d' \
    --body '{"cycleIds": ["q9VNBizB", "X1APHB1I", "KGOmvUjW"], "cycleOverrides": [{"cycleId": "OlVGp9ap", "maximum": 0.8832581012503203, "minimum": 0.5157526317897135}, {"cycleId": "PBX8ke8E", "maximum": 0.8932696281136652, "minimum": 0.8302788289116108}, {"cycleId": "SATtr6mq", "maximum": 0.2879722786116262, "minimum": 0.5796595777578715}], "defaultValue": 0.05967197865197971, "description": "TN5dDad9", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "w1BM21eE", "tags": ["FQkglCGG", "wCQmICsj", "NeCoSddv"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '7NpqazFe' \
    --limit '96' \
    --offset '2' \
    --sortBy 'TIgGiNCR' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 't2tMBvto' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'rXyx6gej' \
    --namespace $AB_NAMESPACE \
    --userId 'OELrj3vF' \
    --isPublic 'true' \
    --limit '4' \
    --offset '14' \
    --sortBy 'P3lHbDkH' \
    --statCodes '57oJ94VZ' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'pxvM3Ciu' \
    --isPublic 'true' \
    --limit '96' \
    --offset '59' \
    --sortBy 'InzP3pFr' \
    --statCodes 'ilU8wQGq' \
    --tags 'VrmUsCfD' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jdHG0lQP' \
    --body '[{"statCode": "Tmb8GUXC"}, {"statCode": "n1qGYcfm"}, {"statCode": "IMMzqQ3y"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '46FNzh4e' \
    --body '[{"inc": 0.6658027560748422, "statCode": "hqrvYPOR"}, {"inc": 0.6766055158898253, "statCode": "y9pS8bB1"}, {"inc": 0.1460970966968682, "statCode": "0SI2tuA7"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '7BowCShm' \
    --body '[{"inc": 0.6715116224959045, "statCode": "2hjzmfGd"}, {"inc": 0.9312546272304864, "statCode": "IXKBdUBF"}, {"inc": 0.1872367348847871, "statCode": "GguIUT0g"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'UUZulpl6' \
    --body '[{"statCode": "jgsq7HsU"}, {"statCode": "ASNCURHE"}, {"statCode": "LQPEFTSU"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '5liGuvp0' \
    --userId 'qS29usS0' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zIop3v39' \
    --userId 'IE4IhSay' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'x06wGYGV' \
    --userId 'dVKWxESY' \
    --body '{"inc": 0.11639373240027096}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'hT9fCI48' \
    --userId 't1pOISYv' \
    --additionalKey 'M3DOtTbk' \
    --body '{"additionalData": {"4TkdgFXW": {}, "j1LJPuAm": {}, "93VzyYxJ": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '41' \
    --statCodes 'arHfViU8' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wbHLHSG3' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '98' \
    --name 'ysu2JMsd' \
    --offset '74' \
    --sortBy 'd1ErsO1k' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["awloI31I", "kFig2m80", "t0Wr3TDH"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'XVuETm6B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Qgwjw2j3' \
    --userIds 'JHa89dvq' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3066419004188973, "statCode": "9V2Di7yY", "userId": "0La6kK2x"}, {"inc": 0.7645073014577789, "statCode": "CdU9PdDW", "userId": "zlO0v0nf"}, {"inc": 0.4052591446543521, "statCode": "UUvj9Gpr", "userId": "s4irI90Q"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8298983570920933, "statCode": "42zuzlcm", "userId": "Dlnvh4l5"}, {"inc": 0.8318663050090747, "statCode": "LpxBci5b", "userId": "AoEnSij4"}, {"inc": 0.8208918014187916, "statCode": "2OX53Xfb", "userId": "3EwWH79W"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "NJrR41yd", "userId": "8qL9hxt5"}, {"statCode": "kAN71PO8", "userId": "u0WtQCmK"}, {"statCode": "cwyZIT6N", "userId": "vDTAb293"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["yDwbD6ls", "PllLwYV0", "mIU0bYds"], "cycleOverrides": [{"cycleId": "mmmUjOb1", "maximum": 0.8686788771569969, "minimum": 0.7467074484982834}, {"cycleId": "iWpg1SCp", "maximum": 0.11960069648554739, "minimum": 0.7333493353297853}, {"cycleId": "MG56Fof5", "maximum": 0.27557726469707045, "minimum": 0.08518008606768768}], "defaultValue": 0.23746716581671934, "description": "7KbFQC33", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.5825473053677016, "minimum": 0.5002160731989947, "name": "0PzWIXmR", "setAsGlobal": false, "setBy": "SERVER", "statCode": "R1IV4DS4", "tags": ["aFCFj9AS", "4NDPrAwG", "hwhW5QCi"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'mUFWPFwZ' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '35' \
    --sortBy 'lGdUlRWo' \
    --statCodes '["lhGizaaD", "5jAVfBfM", "gHILWAMo"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '25' \
    --sortBy 'EEBdDJko' \
    --statCodes '["6adLfxKc", "XqvWvKC1", "am6c19nj"]' \
    --tags '["P3eZJjqY", "ousVATuQ", "mDFDrIR5"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'l8dGHe56' \
    --statCodes '["VQry3u82", "aOPxjOot", "IrnQERyA"]' \
    --tags '["tSF8yU5z", "hrHYIKcR", "EBgqaQt8"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'bIe03KV9' \
    --namespace $AB_NAMESPACE \
    --userId 'wzt8GGp5' \
    --limit '90' \
    --offset '9' \
    --sortBy 'iL1aM08c' \
    --statCodes '03QziELi' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'vuRHHWKC' \
    --limit '99' \
    --offset '70' \
    --sortBy 'otkARl7x' \
    --statCodes '17I2Mv8N' \
    --tags 'ZT36NwYp' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'x8TKbpjm' \
    --body '[{"statCode": "OWNucjlI"}, {"statCode": "Y1ieFL1s"}, {"statCode": "f2lhN2ly"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'bebImLHM' \
    --additionalKey '9lN9Qrn7' \
    --statCodes '["zUFBrJ2e", "audDx9gO", "5TzTb8iW"]' \
    --tags '["cLS7a7mZ", "3bP3UvK2", "H8czXMMW"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'SM0sdh7B' \
    --body '[{"inc": 0.26124285064211994, "statCode": "AN0tHNtd"}, {"inc": 0.13893363143747262, "statCode": "NGBNFraD"}, {"inc": 0.5658235188546017, "statCode": "Jf41Ss1e"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'aYdnNXr0' \
    --body '[{"inc": 0.7788693013374328, "statCode": "c8QieBRb"}, {"inc": 0.406276735915849, "statCode": "tyxnUs5i"}, {"inc": 0.7845622012280071, "statCode": "Qr1oepXe"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '6dBhIJgO' \
    --body '[{"statCode": "G75lgwmB"}, {"statCode": "8BekBLc1"}, {"statCode": "FDcODVLE"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '97ErPLhE' \
    --userId '0ZpFSbnl' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '7OqmLsdv' \
    --userId 'MAXSAnEP' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '6C1FtIac' \
    --userId 'kNGM7tg6' \
    --body '{"inc": 0.260262497077427}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6MNzTCxp' \
    --userId '0QWsq2nV' \
    --body '{"inc": 0.04916493318195181}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'oPKcsujA' \
    --userId 'JjHhCAEw' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"TSP2Nw97": {}, "SYromvSq": {}, "epMPs3qP": {}}, "additionalKey": "BbDjRqx8", "statCode": "xAnFsWRe", "updateStrategy": "MIN", "userId": "03xOOeNY", "value": 0.7208511343788748}, {"additionalData": {"kFI2slnf": {}, "Opfo2pof": {}, "4bLw2RBZ": {}}, "additionalKey": "O3l4rTJK", "statCode": "8a5v3Igq", "updateStrategy": "MIN", "userId": "iIqOXdGI", "value": 0.9421093408549749}, {"additionalData": {"nKKOsGqy": {}, "TRll8ptV": {}, "QAWSKsXA": {}}, "additionalKey": "8qmOqTHx", "statCode": "wOOAEthY", "updateStrategy": "MAX", "userId": "xKQsimei", "value": 0.11181277031134029}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'xFBCFfDj' \
    --statCode 'CggjyhlI' \
    --userIds '["0l3KQKx9", "rx6BnhPZ", "aRHQAxFV"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KHzzeHJF' \
    --additionalKey '3pj4HgO8' \
    --statCodes '["MWhBQDTK", "zGFrCAxX", "RXpuMtVk"]' \
    --tags '["7oKsBQKc", "yWZ6LSWB", "0nU5eqnP"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '5S2XcugK' \
    --additionalKey '8fTkbl2B' \
    --body '[{"additionalData": {"r3ujErGK": {}, "jVWmyynz": {}, "9ZDFUWYy": {}}, "statCode": "kojjYM02", "updateStrategy": "OVERRIDE", "value": 0.0864315570576294}, {"additionalData": {"QSd1Tpbc": {}, "knRDCHad": {}, "wHgct4M7": {}}, "statCode": "wHJA2ZwP", "updateStrategy": "MAX", "value": 0.8462807322473588}, {"additionalData": {"2Z5apODe": {}, "QX8L8md3": {}, "SVKKSgUH": {}}, "statCode": "o7dxjr3r", "updateStrategy": "MAX", "value": 0.6728894245815017}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId '5bGIWks4' \
    --additionalKey 'LOYxNlpB' \
    --body '{"statCodes": ["IQvyNWMF", "SRr8NdBu", "NnUfYJkO"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '9YzBCres' \
    --additionalKey 'a8tg3CHH' \
    --body '[{"additionalData": {"bDhOXZkQ": {}, "hPfIjmxo": {}, "U1uimYod": {}}, "statCode": "ppV8L6lo"}, {"additionalData": {"qnvYCgAh": {}, "c7Ymrajz": {}, "jjS07Gzj": {}}, "statCode": "iFQTQiFe"}, {"additionalData": {"ClbLBvxZ": {}, "K1WRwIdL": {}, "ADLhALGc": {}}, "statCode": "E4L4upSx"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Rmj5Igye' \
    --userId 'kUUyEioF' \
    --additionalKey 'bhDpzJQZ' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'wqQx4bve' \
    --userId 'rkR3p3MK' \
    --additionalKey '0dxG45wl' \
    --body '{"additionalData": {"9My11Rtn": {}, "YOB0rotv": {}, "u1Prf7ba": {}}, "updateStrategy": "INCREMENT", "value": 0.9439404295512066}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Z2TX0D6f": {}, "GWt31ojh": {}, "lkOr4ZZO": {}}, "additionalKey": "stUA6KRp", "statCode": "Jrs2o19G", "updateStrategy": "MIN", "userId": "XR98ZroX", "value": 0.8073594208153434}, {"additionalData": {"uKS9mt9Q": {}, "3MXra7Tn": {}, "Ss739iZU": {}}, "additionalKey": "q2hjhuaJ", "statCode": "1beY6WBU", "updateStrategy": "MIN", "userId": "YNd6wQSD", "value": 0.17973910749286126}, {"additionalData": {"tpztAH9k": {}, "Kdt35FIR": {}, "t28xzaaw": {}}, "additionalKey": "p6g1qLy7", "statCode": "1wdIlP0k", "updateStrategy": "MAX", "userId": "HGjHClMV", "value": 0.5638910814782802}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'ir6kXGJ7' \
    --additionalKey 'hQYyH413' \
    --statCodes '["Fj38sFia", "BTxNcYzA", "xJcjKDJW"]' \
    --tags '["dLfGIXOZ", "eD7Rq3ai", "8i1LMkcz"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'UCr0mWmT' \
    --additionalKey 'MTLGR6Qu' \
    --body '[{"additionalData": {"UyBpr2KL": {}, "VBcnwYI4": {}, "zkYUbpg5": {}}, "statCode": "xIr9Z3NO", "updateStrategy": "OVERRIDE", "value": 0.7265478470305252}, {"additionalData": {"Qakxrbrk": {}, "hidg7F68": {}, "NYnqqMKN": {}}, "statCode": "F1Gay7x8", "updateStrategy": "MIN", "value": 0.7075960197498594}, {"additionalData": {"lR98JZHg": {}, "uUUCnQQi": {}, "ZBNaxBjs": {}}, "statCode": "TTpRFFQ9", "updateStrategy": "OVERRIDE", "value": 0.2711978739614903}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '9gnBQpbF' \
    --userId 'U4kmc1Yg' \
    --additionalKey 'JujU0Pqp' \
    --body '{"additionalData": {"Dsb6dzYx": {}, "faVqTH6T": {}, "UyDyczFz": {}}, "updateStrategy": "MIN", "value": 0.5352711777647422}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE