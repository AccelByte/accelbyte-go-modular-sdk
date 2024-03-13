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
    --userId 'HKNWtzwj' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'QKBj2vyd' \
    --userId 'ED2XbVdk' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["aOMGzaaJ", "fhqOUxbR", "rphNYHg0"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'H1ii9s8M' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Yhc78TAK' \
    --body '{"achievements": ["WojDl3CI", "WMCAXcNT", "eiiGLErB"], "attributes": {"yJUq3Gca": "6BxubmPR", "jmnkl3qO": "oJwkVEfG", "Fpe3vzmw": "TtjhIaiT"}, "avatarUrl": "pntBtDe4", "inventories": ["37KfDhZL", "4jtXyGcV", "bp6JCIw8"], "label": "uCCMQIx9", "profileName": "ItxMpCF0", "statistics": ["gzk0iBhX", "fvTPsVeE", "D2mHe8HC"], "tags": ["MzC4Hdln", "p5Dzx0bK", "XLIKWpA6"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'spZcrH5h' \
    --userId 'x9m5OIbA' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '4Z2ZziTC' \
    --userId 'kNkNMKnL' \
    --body '{"achievements": ["9aAv01lN", "jnfibwK6", "v0SSPdFQ"], "attributes": {"oA420unf": "o5ag37GI", "DRKotZqQ": "W6akprOX", "r8Kc3sHH": "4JkTTOp3"}, "avatarUrl": "yNeiWYcX", "inventories": ["uQC5Rnom", "bcktSTnb", "sF9zdOIr"], "label": "UHmPe99M", "profileName": "rHPTrJG1", "statistics": ["lxwugd2R", "n21B3bl6", "D0Sf1tho"], "tags": ["Nxmuyjv0", "dwkHvNUm", "rcNiPcsY"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'mo3jpSzf' \
    --userId 'LXiU6xVu' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'j3slNghG' \
    --namespace $AB_NAMESPACE \
    --profileId '8dGUGmcv' \
    --userId 'Nalrgz1v' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'clgUf6kr' \
    --namespace $AB_NAMESPACE \
    --profileId 'UfFvVHzX' \
    --userId 'RB18slNc' \
    --body '{"name": "ABWNE4L2", "value": "r3G3UTwv"}' \
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
    --limit '43' \
    --offset '17' \
    --statCodes '9H3gOtig' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'zsEXty6D' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '21' \
    --name 'ltizQRPg' \
    --offset '13' \
    --sortBy 'Vg8G42Et' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "Wjzi3odd", "end": "1971-12-17T00:00:00Z", "name": "7gSZCq1N", "resetDate": 65, "resetDay": 91, "resetMonth": 83, "resetTime": "xNWTXqpR", "seasonPeriod": 36, "start": "1978-08-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["rnUp7XIT", "JNa2SbpK", "oHS3Odvu"]}' \
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
    --cycleId '348iHJtE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '6JqKvogp' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "54cbSNFq", "end": "1975-12-14T00:00:00Z", "name": "5zY104L0", "resetDate": 40, "resetDay": 59, "resetMonth": 36, "resetTime": "vtqyYB2b", "seasonPeriod": 14, "start": "1999-04-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'WgAYQ9Kt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'FdTBdyAk' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["4yzzpF23", "ZXjvC65z", "9sLitHJU"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '4g6DLq5d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ZvCLf5e1' \
    --userIds 'PbnLfS88' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3469834194446123, "statCode": "TTe9WNBu", "userId": "6fa7uWiB"}, {"inc": 0.16945109587875729, "statCode": "pJQRpriQ", "userId": "1FsToJGn"}, {"inc": 0.8328306786123401, "statCode": "821S3TZj", "userId": "b3Brkmte"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5120900107018694, "statCode": "Z2LBqwKj", "userId": "DPJu0xJi"}, {"inc": 0.8179100821774279, "statCode": "IB7oRlHE", "userId": "4C4x77Jw"}, {"inc": 0.29239102227218416, "statCode": "40mGuifS", "userId": "ZgiqgYK8"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'SuhHU9E9' \
    --userIds '["DxG62CTr", "o1fEJ37J", "OaShqsbY"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "hXy5CzEI", "userId": "OdA3EhD1"}, {"statCode": "NMg1USU8", "userId": "kt7FUPv6"}, {"statCode": "EPeHT0p7", "userId": "3UqCut8Y"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'qOdNdZcO' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '99' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["oyDi9hs5", "6InJ3JbM", "49gWVbzA"], "defaultValue": 0.34245995205765434, "description": "2olPlS15", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.19099024757281824, "minimum": 0.6583447174602796, "name": "esWdySKM", "setAsGlobal": true, "setBy": "SERVER", "statCode": "DBcJTHj7", "tags": ["qlPla3ED", "PEN0Xy5r", "rwaXL8fd"]}' \
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
    --limit '68' \
    --offset '28' \
    --keyword 'nPf9WRKX' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'IYP1Yo98' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'SQ8etQVs' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'VaqUqtqp' \
    --body '{"cycleIds": ["YxKRpJQ3", "Uv67pKta", "lIgmuuak"], "defaultValue": 0.5452772561287325, "description": "JUoeYRxO", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "UoM6DAyl", "tags": ["BDCJLfF9", "fppwva37", "NhfPeTTQ"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '93eT1TEr' \
    --limit '58' \
    --offset '79' \
    --sortBy 'dJShF1Yu' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'c3EgXMg0' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'jV22efKn' \
    --namespace $AB_NAMESPACE \
    --userId 'stKUZ6Sr' \
    --isPublic 'false' \
    --limit '44' \
    --offset '19' \
    --sortBy 'Py0kzYjf' \
    --statCodes 'HsLBBb0o' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bPRDdTwW' \
    --isPublic 'false' \
    --limit '60' \
    --offset '5' \
    --sortBy 'szAojuzO' \
    --statCodes 'NOxFNi4T' \
    --tags 'yrwhcRIs' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nr1Kz2pC' \
    --body '[{"statCode": "wHNZPAYD"}, {"statCode": "wr8fBI4N"}, {"statCode": "xWdI7WTD"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Wu88qjqX' \
    --body '[{"inc": 0.06818213191236067, "statCode": "XI1ABWgv"}, {"inc": 0.9835845609516453, "statCode": "hvcOwaPC"}, {"inc": 0.5942560084212467, "statCode": "5x2Y8rv8"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Tuwzsok1' \
    --body '[{"inc": 0.6959693978968395, "statCode": "y81t6BYn"}, {"inc": 0.7973975660647903, "statCode": "7px9ZWVS"}, {"inc": 0.3523626025103188, "statCode": "MYnrqv0a"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'z4GvKhdG' \
    --body '[{"statCode": "AaVzxQ3t"}, {"statCode": "LEzOVmxG"}, {"statCode": "NseCtFqU"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'IDOWG2Xa' \
    --userId 'kpJXnfD5' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'L6AvkL9E' \
    --userId '9ddeeuTC' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'At6WGylV' \
    --userId 'LNDx180I' \
    --body '{"inc": 0.746795992334987}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'f9o3aM60' \
    --userId 'EwfeFRk7' \
    --additionalKey 'ieiYdjwt' \
    --body '{"additionalData": {"CJhOLLS4": {}, "CAy8ZLWh": {}, "WJVW2lsX": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '65' \
    --statCodes 'VYJ7T9kh' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'T3e9SKZs' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '28' \
    --name 'sa9vgafg' \
    --offset '10' \
    --sortBy 'biwg5tHh' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["TFYZOVsj", "kOlqbnqG", "bXUYP3z7"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'hZUlWQfs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '2VftXU6u' \
    --userIds 'w27Skhkv' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.804659076164172, "statCode": "BEzyQF2k", "userId": "gWAyouzq"}, {"inc": 0.7529810459075353, "statCode": "OXRNlgMp", "userId": "eD9nAlmy"}, {"inc": 0.06943909238347545, "statCode": "kxuQDWpH", "userId": "niMZyDW2"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.07864195636215165, "statCode": "g0cTSrK0", "userId": "hFSDqAaS"}, {"inc": 0.6849923454151153, "statCode": "h3LkBch1", "userId": "OTtChpay"}, {"inc": 0.2701764091581311, "statCode": "wozgO6EJ", "userId": "HMu2XQdq"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "5vlX2BvT", "userId": "BeQEy718"}, {"statCode": "eubSyxM0", "userId": "3VwyiV4G"}, {"statCode": "P4VKg7Kb", "userId": "V6FITmcS"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["3PQ3Lo1L", "uFlyvrdw", "ziakF3Z7"], "defaultValue": 0.2139482254359778, "description": "dSGeTLVT", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.910572238569043, "minimum": 0.7235024839609226, "name": "GEZRXmeQ", "setAsGlobal": true, "setBy": "SERVER", "statCode": "mpPHw3sR", "tags": ["kpz1OLP6", "JeIcgxtj", "shLcH1nx"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'y259ZTZs' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '31' \
    --sortBy 'qRBGK4aY' \
    --statCodes '["vz4lgysB", "uEUV2K3s", "vI0nGWYZ"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '50' \
    --sortBy 'GpdJiOlF' \
    --statCodes '["fdwXCuRt", "T0FJ1IWc", "Ph3CS8lJ"]' \
    --tags '["XpKeydj6", "iOtrxR9L", "QpJcqKGm"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'bPQUTN6R' \
    --statCodes '["WbHKlqrC", "obJdwpy1", "l606g24m"]' \
    --tags '["1X6HCW0F", "vQotX0Qk", "FA9MmfeZ"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'cw0C9ecy' \
    --namespace $AB_NAMESPACE \
    --userId 'zu4oLdmL' \
    --limit '54' \
    --offset '89' \
    --sortBy 'bztwHPgK' \
    --statCodes 'mqOKWvFq' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mXvHFMoz' \
    --limit '48' \
    --offset '23' \
    --sortBy 'buGvxY8u' \
    --statCodes 'fdrW089L' \
    --tags '8QbfQiQc' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'aQK5wkRk' \
    --body '[{"statCode": "KhJ4xAJl"}, {"statCode": "Xkk9a5DE"}, {"statCode": "rtS4ECjz"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'kDJNI4BF' \
    --additionalKey 'ZlY6TICO' \
    --statCodes '["6O4gQ7fj", "DWCI9Y60", "eYAIiSqN"]' \
    --tags '["Vh6Hlybi", "FLyG91Ue", "e0ZDm0lN"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '3CMZaVVe' \
    --body '[{"inc": 0.31414047610511064, "statCode": "sDLqdSO0"}, {"inc": 0.7628026463896814, "statCode": "dO4Fj3OX"}, {"inc": 0.1994428760760517, "statCode": "KlGnG26i"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'aDl4gH2I' \
    --body '[{"inc": 0.9428988357800978, "statCode": "2CeEcDRv"}, {"inc": 0.6879700012938739, "statCode": "x7B8uqgE"}, {"inc": 0.2774924294192266, "statCode": "L6wj3tAD"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '2wipxqmO' \
    --body '[{"statCode": "U8BtwII2"}, {"statCode": "hxiTeFjo"}, {"statCode": "CsZWcYtX"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'YT3cNIZV' \
    --userId 'TA3NvUiY' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'CRV7k93i' \
    --userId 'Hw3TaVKi' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'm7bF0NpZ' \
    --userId 'qOJ93TDX' \
    --body '{"inc": 0.44181315162541235}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'uaLG5kb3' \
    --userId 'LmgLfRvj' \
    --body '{"inc": 0.7180257955554922}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gDfXcoib' \
    --userId 'MJ335FKP' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"SE4Uv4zD": {}, "MkcZOvkf": {}, "f7kucSpL": {}}, "additionalKey": "Ps0ct8nX", "statCode": "LHdJ73z8", "updateStrategy": "MIN", "userId": "sMWTdEEr", "value": 0.5676761671008209}, {"additionalData": {"XrpUhjHZ": {}, "vKdkZV6i": {}, "4ea8O3yB": {}}, "additionalKey": "YbGEXvT4", "statCode": "yj6S3PmV", "updateStrategy": "OVERRIDE", "userId": "JooUaCY8", "value": 0.40878376544183637}, {"additionalData": {"ELaQVQba": {}, "mDWmPP3f": {}, "hVmylw3R": {}}, "additionalKey": "25kiPTjs", "statCode": "62kcfepE", "updateStrategy": "MIN", "userId": "u7ybJcMK", "value": 0.9046071486633603}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '25D5ichh' \
    --statCode '7iEEvL5X' \
    --userIds '["Uo2HRi3B", "xbFbvWpN", "gKbmPVI8"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'uOOxgS55' \
    --additionalKey 'MdfxQEsR' \
    --statCodes '["5ai4QMC1", "DeI6HDTr", "vm1ExyJW"]' \
    --tags '["Y6kspGOj", "kgIUsQWY", "GJ4XXAbq"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'irDUwGSk' \
    --additionalKey 'X9CGpMY9' \
    --body '[{"additionalData": {"qmGt29Gm": {}, "UrRTgTe9": {}, "unqoKaXo": {}}, "statCode": "ABJxOHmK", "updateStrategy": "MIN", "value": 0.4022217856833843}, {"additionalData": {"HtiLyHhz": {}, "0gLxMzPA": {}, "MNJEdpDj": {}}, "statCode": "CHMHuVjq", "updateStrategy": "MIN", "value": 0.7744896470054293}, {"additionalData": {"NnVAKKk4": {}, "H9jKt4rw": {}, "Q6UARrAn": {}}, "statCode": "mMhSRHue", "updateStrategy": "MIN", "value": 0.270700431729362}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'caovvqJ6' \
    --additionalKey 'kreMnYKU' \
    --body '[{"additionalData": {"jXXnUsMV": {}, "tIa1WIOP": {}, "aCLZKxjg": {}}, "statCode": "6nWaZa4q"}, {"additionalData": {"F4GvJwax": {}, "H3Y8Wywy": {}, "sYOBzHBK": {}}, "statCode": "Bkdl7CfX"}, {"additionalData": {"HbrRE062": {}, "0IWS4XQD": {}, "fOmTGDWa": {}}, "statCode": "0DCcLlWk"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'lDQEcDAn' \
    --userId 'sb3A4pe1' \
    --additionalKey 'O83uln5Q' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'hGvkWuVb' \
    --userId 'qd6xT1DF' \
    --additionalKey 'LqL2XE3m' \
    --body '{"additionalData": {"jfXzbxLE": {}, "LVuAOTVV": {}, "TIiprfwo": {}}, "updateStrategy": "INCREMENT", "value": 0.5936529264813639}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"2S9qocvo": {}, "pYEEVXHE": {}, "HikwaZX4": {}}, "additionalKey": "ZEWZlqAq", "statCode": "cyjQ4WbD", "updateStrategy": "OVERRIDE", "userId": "KGOVNFCt", "value": 0.4923102822879909}, {"additionalData": {"It8fSlRQ": {}, "xgwUD1u6": {}, "cg1oxafw": {}}, "additionalKey": "J3dagqhf", "statCode": "D1S14lLA", "updateStrategy": "INCREMENT", "userId": "ynX738kc", "value": 0.904402639176101}, {"additionalData": {"v54iJqX3": {}, "bSaBvLGq": {}, "iZYpkcpW": {}}, "additionalKey": "GtvlbAjP", "statCode": "S0ZDmCh2", "updateStrategy": "OVERRIDE", "userId": "eS9hkEL5", "value": 0.4938741175010295}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'qhV6pxPh' \
    --additionalKey 'Vjey8MZI' \
    --statCodes '["YCgfmPWv", "LAK9xuoQ", "ud1kXwjM"]' \
    --tags '["feykPhnF", "rYodmpxD", "7CKuABr1"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'aDIpRA0t' \
    --additionalKey 'VfhjT36o' \
    --body '[{"additionalData": {"TqChWIRy": {}, "FRRo0JAv": {}, "Rm8Envwk": {}}, "statCode": "g4SRJYt3", "updateStrategy": "MAX", "value": 0.7768611803734222}, {"additionalData": {"dxgYR82q": {}, "ZxWgWxOJ": {}, "wV2IdmDs": {}}, "statCode": "PCS5bUR6", "updateStrategy": "MIN", "value": 0.6673671753814681}, {"additionalData": {"AdKyfEiw": {}, "H4fNkCZF": {}, "uqGY2X9S": {}}, "statCode": "Q0gP9RZN", "updateStrategy": "MIN", "value": 0.5245305480110638}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'PpI1Id5W' \
    --userId 'Xp4t3G8Y' \
    --additionalKey 'rMmfoDlc' \
    --body '{"additionalData": {"yAVYs31O": {}, "aBxWPle4": {}, "B7zyTxXv": {}}, "updateStrategy": "MAX", "value": 0.9844786184915104}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE