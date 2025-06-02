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
    --limit '33' \
    --offset '25' \
    --statCodes 'GYDEuRkP' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'kE5YSZax' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '78' \
    --name '53VrBVZ7' \
    --offset '43' \
    --sortBy 'TsdrfIcc' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "4upFDsfi", "end": "1978-05-30T00:00:00Z", "id": "lSeNoM63", "name": "BP8aLkLo", "resetDate": 59, "resetDay": 6, "resetMonth": 2, "resetTime": "R6ioVdhB", "seasonPeriod": 55, "start": "1983-09-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["5easda8S", "YaUQMDDA", "pgg4hCDr"]}' \
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
    --cycleId 'gnDPFADa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'qzXKq5st' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "mVKZbVWw", "end": "1989-11-10T00:00:00Z", "name": "r5sJo4eO", "resetDate": 0, "resetDay": 86, "resetMonth": 40, "resetTime": "yxQjfaDX", "seasonPeriod": 22, "start": "1993-11-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'pEOQ7gbw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'MA11XMPI' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["KED0WTCx", "ScD2kDZz", "aF3ZLvl3"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'SEEzD65G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'NVZgI0uK' \
    --userIds 'iFRPGHvO' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.21708932741302345, "statCode": "azJawMhP", "userId": "qQ9PtGw2"}, {"inc": 0.8296981865533809, "statCode": "W9FgAZfg", "userId": "faxLxpjA"}, {"inc": 0.07880032946123527, "statCode": "HNfdnFGb", "userId": "6EkE35Rw"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7260567328797543, "statCode": "AJXwkdJb", "userId": "MvOeaOUR"}, {"inc": 0.21616545534106768, "statCode": "fuQBmrxH", "userId": "iAYtYVaB"}, {"inc": 0.5371094483586379, "statCode": "VqEzW2mF", "userId": "pIDtaMnN"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '2riYlXOZ' \
    --userIds '["9f82FTnm", "lUb12uiF", "K0o9lizc"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "tbOZEEOT", "userId": "TE3MKSoJ"}, {"statCode": "l8wyzZSU", "userId": "HTqIsEds"}, {"statCode": "fdqR9iTJ", "userId": "8sPzvc1f"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'nYEUdQqB' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '18' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["Kykr0XFC", "FT8UEAwS", "BWoatqed"], "cycleOverrides": [{"cycleId": "P0SspbvV", "maximum": 0.6580439332720032, "minimum": 0.13688267005554822}, {"cycleId": "GdxNLcGZ", "maximum": 0.6304069183346998, "minimum": 0.18984239445897755}, {"cycleId": "WCUsAcXd", "maximum": 0.9256193905855533, "minimum": 0.04711497705641887}], "defaultValue": 0.361443265204368, "description": "DDJOKGVj", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.351267278674124, "minimum": 0.965912721727396, "name": "5bbMHxWp", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "uSEKtjvs", "tags": ["IIldG0iT", "Nqiejsw9", "daNEBB09"], "visibility": "SERVERONLY"}' \
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
    --limit '67' \
    --offset '81' \
    --keyword 'TZtSm9BC' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '3lyF53wC' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'K6trmZQ8' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '7WCGEmX9' \
    --body '{"capCycleOverride": true, "cycleIds": ["3rOV7kla", "EazzK2Lp", "ljXmFswW"], "cycleOverrides": [{"cycleId": "KiWjQhVV", "maximum": 0.6797132199361038, "minimum": 0.793279454227279}, {"cycleId": "VEK9NUjr", "maximum": 0.2685331739616925, "minimum": 0.7651190277875367}, {"cycleId": "VpXIYqAS", "maximum": 0.5248200916485879, "minimum": 0.5333292018214594}], "defaultValue": 0.4462702749306596, "description": "ERL3ss2H", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "qFmzqHcY", "tags": ["XlO8MFP9", "o3199X4J", "XoXP2u6e"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'A45Vjvsb' \
    --limit '61' \
    --offset '61' \
    --sortBy 'INjxbGCn' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '1zCAxsZM' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '5ZAadtui' \
    --namespace $AB_NAMESPACE \
    --userId 'pZZ3uuCt' \
    --isPublic 'false' \
    --limit '33' \
    --offset '67' \
    --sortBy 'nJxjLkTq' \
    --statCodes '6exsn6nw' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '6lcugrwL' \
    --isPublic 'true' \
    --limit '43' \
    --offset '29' \
    --sortBy '0HtcHhFq' \
    --statCodes 'NGu6mDkH' \
    --tags 'OhY19O8K' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'f4l1i9Jm' \
    --body '[{"statCode": "vuGFZ5Ja"}, {"statCode": "hFF7ab6U"}, {"statCode": "afVJLpGW"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'TDhiNatn' \
    --body '[{"inc": 0.5724381597162961, "statCode": "yF0E7aqA"}, {"inc": 0.3515672493524067, "statCode": "PPG9ZRvG"}, {"inc": 0.29872868017827103, "statCode": "s8r3bQLE"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'D3kUWLaG' \
    --body '[{"inc": 0.6395517152311527, "statCode": "JcejFhkI"}, {"inc": 0.3370153370926978, "statCode": "SAx4QT8L"}, {"inc": 0.3815134528805231, "statCode": "FWhXMuQU"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'bKyEfUCf' \
    --body '[{"statCode": "ol8JFbS8"}, {"statCode": "2X16mq6i"}, {"statCode": "S8NZQTy7"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Nh1t6ihM' \
    --userId 'GxQO9byl' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'bBpVoUHu' \
    --userId '0ffsG8FV' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'zGF5PVQX' \
    --userId 'mVnMuUzT' \
    --body '{"inc": 0.16677966089490537}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jx9Ar8mS' \
    --userId 'j5jkjLVP' \
    --additionalKey '5cCFc26d' \
    --body '{"additionalData": {"5inlenAC": {}, "1PMWud1k": {}, "wokBgThN": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '36' \
    --statCodes 'bfeMtMsC' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '181jdMpD' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '80' \
    --name 'EVCSZ5y7' \
    --offset '8' \
    --sortBy 'VCFEasw2' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["iRFOXvsw", "Q39InLHx", "okho7mmg"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'CbTXCyID' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hJ1tyYGS' \
    --userIds 'kwKSPNeS' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.03233159962337362, "statCode": "teDR3VvM", "userId": "wz5dcLpF"}, {"inc": 0.8224715178492052, "statCode": "xUnt4ZtO", "userId": "Acp9gPiA"}, {"inc": 0.9789086508262703, "statCode": "7IhW0cqn", "userId": "9QFLWVf8"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7919989494836446, "statCode": "0n3bS7sC", "userId": "mQIumj62"}, {"inc": 0.8530266879453415, "statCode": "theJ1UIP", "userId": "JgoPoNIz"}, {"inc": 0.9149364847713537, "statCode": "YqOfggxs", "userId": "lKryo39F"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "gIMi4YYz", "userId": "7VknnJju"}, {"statCode": "9vNs138P", "userId": "wDGfg5Kz"}, {"statCode": "7gJEXcFc", "userId": "emf9Gzjv"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["ZFxj9Op7", "tdCrp5xI", "UHJiXd4H"], "cycleOverrides": [{"cycleId": "kM1bc1AK", "maximum": 0.5363771981922889, "minimum": 0.2580223007520672}, {"cycleId": "GifAWjsK", "maximum": 0.9859055655282966, "minimum": 0.04732444581151707}, {"cycleId": "NW0WvPGo", "maximum": 0.9411675963279007, "minimum": 0.6442062735883148}], "defaultValue": 0.47426051428815463, "description": "XbNYACJz", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.6096982176476156, "minimum": 0.6164614644657667, "name": "3nR1iyPB", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "Eyj5GTfA", "tags": ["WKp0OFuO", "FdZpnu95", "ojAavRUk"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'MWPmEpTa' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '42' \
    --sortBy '1XvAPzKJ' \
    --statCodes '["ZmEfQuaC", "Y2cqJT7p", "ljpEyiMn"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '75' \
    --sortBy 'C7WfvBn9' \
    --statCodes '["CO5nkUyB", "cDZJi7pj", "2q1ys9GX"]' \
    --tags '["X05DxmCD", "ZomjlkKN", "CJqn1Aa3"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'cug1eja3' \
    --statCodes '["SyQI9772", "87sN3r9w", "yHRW7XzU"]' \
    --tags '["0nQik7uZ", "cl3qIQr0", "YjupN6s3"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'SnpYe088' \
    --namespace $AB_NAMESPACE \
    --userId 'obsRrVDq' \
    --limit '66' \
    --offset '72' \
    --sortBy 'h8riS60V' \
    --statCodes 'EWzyJvPv' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'nqEzNxmR' \
    --limit '23' \
    --offset '58' \
    --sortBy 'yVi9rnIe' \
    --statCodes 'bSDUwzTk' \
    --tags 'QXCX92sE' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KQwtJIdY' \
    --body '[{"statCode": "i2gFKK3r"}, {"statCode": "oweYmrTl"}, {"statCode": "exE7egZo"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'izcuQa7L' \
    --additionalKey 'hsccw99X' \
    --statCodes '["8ADlfhRj", "uLx74wfc", "TeVxu6NE"]' \
    --tags '["3MdEetqc", "uC8ZmBmi", "JaYEIlGf"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'rGnHtyVL' \
    --body '[{"inc": 0.8876163534449241, "statCode": "WwObuKlf"}, {"inc": 0.2742246991860947, "statCode": "62vM7jJR"}, {"inc": 0.19661492479237108, "statCode": "1uyOb6pl"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'gTxKvkhr' \
    --body '[{"inc": 0.4387485950610064, "statCode": "g8tMmHXq"}, {"inc": 0.587046083418963, "statCode": "JFiRehFA"}, {"inc": 0.20755553474776933, "statCode": "sZtUqPUN"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '0xNKVMLE' \
    --body '[{"statCode": "FeiXtcLM"}, {"statCode": "B7qWDFRS"}, {"statCode": "62FS3hS3"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'QLIJkSaw' \
    --userId '7ogg23zh' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '9kvCG3nC' \
    --userId 'iLZopvQh' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'qsPmvlPn' \
    --userId 'T1EN8W9E' \
    --body '{"inc": 0.517213615500747}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Kda0QoB8' \
    --userId '6ZGuUwHa' \
    --body '{"inc": 0.9769993403321429}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'TsNRykmp' \
    --userId 'YBPzgr87' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"lL5d2XLe": {}, "2MvDy8UM": {}, "MLHrfh9K": {}}, "additionalKey": "zLgVK6Am", "statCode": "tAOcgZ0p", "updateStrategy": "MAX", "userId": "fBNAu3H4", "value": 0.9825555511789643}, {"additionalData": {"ThqYB7EJ": {}, "lwVIBmSK": {}, "GMTDogIn": {}}, "additionalKey": "fZnDC9KM", "statCode": "w6mRG77O", "updateStrategy": "MAX", "userId": "3Cvjaiy7", "value": 0.5690259600674173}, {"additionalData": {"ep9yxzQ7": {}, "Za2lpg0q": {}, "DFioorfh": {}}, "additionalKey": "N1rHUSUn", "statCode": "1BuHqXw0", "updateStrategy": "MAX", "userId": "I2SneM21", "value": 0.5502370875282061}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'uvwu9o5o' \
    --statCode 'qAb0tK9I' \
    --userIds '["8ujZsfMj", "zQ0lLbgs", "VLeJTSjo"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qlJaEQXR' \
    --additionalKey 'h0l3pNxl' \
    --statCodes '["u2YNqX8J", "XsiriMaF", "Vecchmiy"]' \
    --tags '["ibYG9mxV", "DvDPSKig", "gIbG9jau"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'engJ86ba' \
    --additionalKey 'PyGbND8m' \
    --body '[{"additionalData": {"VzoNxV4f": {}, "6HIbDio7": {}, "P5xSjEEb": {}}, "statCode": "fjrXR6Wy", "updateStrategy": "MAX", "value": 0.740888920123589}, {"additionalData": {"QGOkOHR2": {}, "YdQvchbq": {}, "592qV6x6": {}}, "statCode": "cuzgN6E3", "updateStrategy": "OVERRIDE", "value": 0.6672290805899368}, {"additionalData": {"rZUUlcrp": {}, "zHUxguwP": {}, "3GqrM8CT": {}}, "statCode": "s6IxwG6L", "updateStrategy": "OVERRIDE", "value": 0.9208220316572016}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'ubGK0t5S' \
    --additionalKey 'Esy5kEJt' \
    --body '{"statCodes": ["om7JaJNh", "aazE3Cse", "qcJ0728v"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'mvzkOEko' \
    --additionalKey 'r8SjdWDU' \
    --body '[{"additionalData": {"Astk96g4": {}, "2oLhPJPi": {}, "LImIRya6": {}}, "statCode": "Q8kT7JL4"}, {"additionalData": {"Gr2EZo0K": {}, "JyqbItKh": {}, "mmuqJ2uh": {}}, "statCode": "kUeUpN4X"}, {"additionalData": {"Ed2MO3su": {}, "gOt2SkyY": {}, "oHIBj1GW": {}}, "statCode": "FniWAuZB"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'zUjFjHxV' \
    --userId 'lOAz2fOB' \
    --additionalKey 'nA9NspfZ' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'EEbza13O' \
    --userId 'T2W5hu98' \
    --additionalKey 'p1DxB2lT' \
    --body '{"additionalData": {"dtrRSlDd": {}, "AV0nH8SK": {}, "uxaUTDMY": {}}, "updateStrategy": "INCREMENT", "value": 0.9318396600343355}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ZskDdZ2y": {}, "x72R22bc": {}, "7wfRKJ1x": {}}, "additionalKey": "LdMM9YBe", "statCode": "h2mrWnaE", "updateStrategy": "MAX", "userId": "BH7PfLmM", "value": 0.5703156086415324}, {"additionalData": {"TaDkwQG4": {}, "8M2IgH7w": {}, "KD5sbcgk": {}}, "additionalKey": "lMwZm67O", "statCode": "JEil85X2", "updateStrategy": "MIN", "userId": "kixbIvsl", "value": 0.18076538314885615}, {"additionalData": {"IQeZCOad": {}, "smSzw5GU": {}, "tZ7Oru00": {}}, "additionalKey": "OXl7PM3z", "statCode": "W3aDBmxe", "updateStrategy": "MAX", "userId": "ry2RxlOc", "value": 0.37998096276618953}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'CmQpdkpc' \
    --additionalKey 'SHLwwdQF' \
    --statCodes '["6z7Yvppj", "e9T53oSA", "7qG0bELv"]' \
    --tags '["SieouG6d", "lWAIVUO9", "Cy2dHCzi"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '1zGVn9JV' \
    --additionalKey 'tzn5Mfpk' \
    --body '[{"additionalData": {"hqorXhVC": {}, "EP0tNcHe": {}, "nwWlhLRz": {}}, "statCode": "g7QTZRrH", "updateStrategy": "MAX", "value": 0.45785172670132857}, {"additionalData": {"GzAf0ofA": {}, "cn5AETjU": {}, "3kDea3sS": {}}, "statCode": "brflOBJY", "updateStrategy": "MAX", "value": 0.1456911182795223}, {"additionalData": {"BnhPfv3B": {}, "zT4E6pni": {}, "uYbLEY0B": {}}, "statCode": "GuGRg4bt", "updateStrategy": "MAX", "value": 0.9080671587153248}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xwL33TbW' \
    --userId 'twtviIRW' \
    --additionalKey 'bAZqD3fy' \
    --body '{"additionalData": {"g9ZCjZPj": {}, "HZalvNpU": {}, "SXd6Ayng": {}}, "updateStrategy": "MIN", "value": 0.6183761295582881}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE