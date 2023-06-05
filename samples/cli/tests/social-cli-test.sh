#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..94"

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
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    --body '{"maxSlotSize": 67, "maxSlots": 22}' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'XyRpVevVzbYZqDnU' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'itJj2A030KNjmoXI' \
    --body '{"maxSlotSize": 14, "maxSlots": 36}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'bzVeeihIWwpcR9GT' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '9EO3GD9qnsq7rVSE' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'n3el8ZPKdbCE7HQ2' \
    --userId 'EvfgtShv44OV3F2s' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'TvwkEPWLlhBwGSY1' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'tNQEMO9Vjv9r85e8' \
    --userId 'geu6nDyop2o9XEii' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["SW3zzW3VwSfwMhK9", "U4jvANubjanP19W4", "AKp3660OtGl4o9ni"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'z1xbrqrje3oKgWRz' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'viyaSDud8d4eMCjI' \
    --body '{"achievements": ["DlYpsoOS0jBv2s7u", "J5ZgTneztm3u2ZZk", "SSMOfwoAFgKtVRK7"], "attributes": {"v4Oi2syfzmxBM4HV": "KMjJwGWD6dgMCKsV", "6GGU7x2vT1ra79sA": "giiGCvp0Y6YegUaP", "Eic8J4oZgpMDVwb6": "DLLJtNIm6ok09HWh"}, "avatarUrl": "r0e9egypxScGUOBA", "inventories": ["O5FUvqWFq7YHsAlj", "kMR1JYKLgGqN4BwG", "09AJfZBj83GYKxIh"], "label": "F5mqLKpZFY7TMYeI", "profileName": "6jusrccxDhWc49Vd", "statistics": ["4IgG55wOYXTZNUV4", "MDRjfU7Z12PW3Pl2", "rhNhcwykb6gqKM2A"], "tags": ["BgzHP26DCx0ytZEH", "uDY8a2kf2zK37Efw", "4q74898uPZisG0L9"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '5lTI8AASoW8Qqk46' \
    --userId 'EhI62uQZ9zz3MIQk' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JbDgrmNXXbxcH97K' \
    --userId 'pViNCHHWd57biPBP' \
    --body '{"achievements": ["OrRd0C34d3TzcdCI", "888vd5iDlUZtF8RM", "CxfbA22Fn57NrdTg"], "attributes": {"ta8yNX2mb59vaOUY": "ugRsZVN2I8wrlTCi", "OHzG6VaYXdz4dHna": "N5X7iEBsbWvH7Dw9", "nd01eeM6zebuLqQY": "PbxkO4SUrla8eTeM"}, "avatarUrl": "ligXe4yhKUXo5Hz3", "inventories": ["KvvaAb2LLs7Z7rR9", "3MT6mV7CCd4H5WRu", "KD9jsltWd5KO7k8W"], "label": "rNB4FYBtgc659oSr", "profileName": "ifu2vGBy2WFuhdWv", "statistics": ["B2RZXl1qpl2F9POg", "ajhGJtGsJuZCiaVn", "AiMCoEvZkpjf6WBi"], "tags": ["IxEkKSVxaIT1ntNO", "ll27MWueGL6Q8xR0", "rZNG6pPz1sluE2dg"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'q4wfbFGquFu6YCA6' \
    --userId 'yR7JfGAG09rNWGGY' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'q84oT8yy1onp7Kfl' \
    --namespace $AB_NAMESPACE \
    --profileId 'otTBPxIWP1Fn90cK' \
    --userId 'IoIehqiktGVEWcLq' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'B9uas1Hd3Vlp5gxh' \
    --namespace $AB_NAMESPACE \
    --profileId 'FgNEFC3NYi4duvGG' \
    --userId 'dHMAcypuy0g3j3q5' \
    --body '{"name": "H6bxXAlltSA7n356", "value": "9qW2Iaz9nth7VdrC"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId '91QHxEwBeRMjITdv' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'XntdJT6nB2wwd9OY' \
    --label 'xKKrLotFpQqWk3Fl' \
    --tags '["9jiMOCyA7M2d1D9M", "QHbfVqzjwGpo10mt", "6aaNm1TOLuTdac7O"]' \
    --checksum 'qasN3ssMcHQTS9FT' \
    --customAttribute 'jUnxvxpQJzIuci5j' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '32bZjaaF1ZvxzLyN' \
    --userId '27mAU9eM7jkNUbrS' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId '4fyRMoP06IqitEnT' \
    --userId 'LR968lmo8iAufZjj' \
    --label 'uzMuDieXakh6sKlG' \
    --tags '["3SBpDyGJ2cOHt2Or", "yMf2PeGKqK57OH6k", "w4ILCNC6kjFCBtE9"]' \
    --checksum 'EQZFDaqkJlPDHkU3' \
    --customAttribute 'kXusxM9qPSrIjDkz' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'PrIumySbeDlUGEjn' \
    --userId 'QPd1wqpzyFKczljd' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'kVKtS49KN38h1ID0' \
    --userId 'uSoHcrnmZuzgF4om' \
    --body '{"customAttribute": "FJT9iCGwZz2dE7B4", "label": "kvyn1Pvouho9AX58", "tags": ["e9nKAnOAA23HS0xX", "KAv2yMOG6WOiJMCQ", "AYgoL7GYVMp5gexR"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '20' \
    --statCodes 'GDyGPFqRE3UHnseS' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'JlcR9ulJv2k7j4Vz' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '21' \
    --name '3SPMYkodxtGoB3To' \
    --offset '81' \
    --sortBy 'Cq3HHlG1UzW8vonR' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "gqBzpZLcvAwcGnI2", "end": "1977-01-11T00:00:00Z", "name": "9icAdhr0GGUXIXAS", "resetDate": 89, "resetDay": 60, "resetMonth": 52, "resetTime": "s80S1hUobaFLwuxJ", "seasonPeriod": 21, "start": "1982-03-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["7md9GMTd6tDJqetq", "Jc4bV9LZ8ecWR51c", "cFbndz5kBWjTLK8B"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'XNyJR1bVRuDDkrli' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'c5534CvgH8rlY1W3' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "V2dEuPrGtvf2YVxD", "end": "1978-07-06T00:00:00Z", "name": "N9TfXku2EUqgIYiV", "resetDate": 76, "resetDay": 89, "resetMonth": 54, "resetTime": "AgAFi9xGbs38Qmjx", "seasonPeriod": 31, "start": "1986-01-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'mnB2LyPQ1e1vrMtr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'CGpPe8AKnYlMzFDQ' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["ntcCKFSGu6uMeQSD", "vMWspnRSC8cpPBx1", "7yuXvKlbKFaFI42R"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '5nHBJ9ZYGurQdglK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Q9aelVBcxUG2D9NV' \
    --userIds 'gN7XS1gCcogccsCi' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.284215643066423, "statCode": "fJhjQOMsZjG9Foel", "userId": "WrrXlNXU6h8YYrPG"}, {"inc": 0.6860430210233666, "statCode": "Gcx534nHOca4Xcqn", "userId": "oMEG3D0NUW50wFa2"}, {"inc": 0.6530891423778938, "statCode": "AaJYJrk4YUMxQPEx", "userId": "DaxDX0xReEqLD6Cg"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.0827666668616851, "statCode": "DXhVB5yf0SCwrG2E", "userId": "2PL4O4QXXp0361LR"}, {"inc": 0.25115179033342006, "statCode": "OKUSW99mfMfNPpfS", "userId": "gesJWrGib9sUhum0"}, {"inc": 0.5769412756736362, "statCode": "gQ2KWI7drQhoEtLG", "userId": "q5MaBwMQTooBXmO6"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'HO6D8CZhi1CcsNpb' \
    --userIds '["3VSM0jjXaUQY7dt4", "U1CnhtBg6c0I583z", "AbvLGDeZhEtyqNyk"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "7xz1YMa1mhxirz9e", "userId": "gfphUItcMqXc0RJU"}, {"statCode": "pUhVXvMo7OyWpSqY", "userId": "3F4L5KJK45ul3JkY"}, {"statCode": "BI3ljfXkV1GMIddf", "userId": "kT8tZt1DnMVCRVH2"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'Xs7o6g3vPvbRIdI6' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '6' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["tY6wofUDBOqmWhZF", "lCnRc0siFWzyOGnM", "Mr5vxmSfgs8hSjVZ"], "defaultValue": 0.13667528359070724, "description": "zoCWRkX6mQlQ0Zuf", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.5601761151920559, "minimum": 0.13429482415388883, "name": "s5isR7g4TGeWIm4r", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "p81X7Mpmyct7AEvP", "tags": ["nWvLk91A0onwxqh3", "6iITfzg7fmMY2m15", "X4hp2NEbaanKkqo0"]}' \
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
    --isPublic 'false' \
    --limit '77' \
    --offset '75' \
    --keyword 'JBHwCq4fjftxhDN5' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'fdssL6Mtei0GnmId' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nbgqAi2g7HxdnROI' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'PCm0a5G2YNkNGhsv' \
    --body '{"cycleIds": ["koHQUACCmEy15NIG", "ZOhgB8JSxDJ2YiP7", "t2NFyno87Ltqotqk"], "defaultValue": 0.06118857480768114, "description": "ggJd1JgCQ8k96dy3", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "zyP6ngQJHvbwn9OI", "tags": ["VPlrFMt383kUGsqU", "QlbnIipUzSJDCBxB", "C0myfwdVDqyXgecL"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'CCTWDduJTeLT04Ss' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'PmZkv0Ycg3vi6ycA' \
    --namespace $AB_NAMESPACE \
    --userId '99lYyMQlNkZqT9mz' \
    --isPublic 'false' \
    --limit '96' \
    --offset '97' \
    --sortBy 'jrXYuNU9znl8l6j9' \
    --statCodes 'NEBTWr3Gol6B9FLf' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KpXWuknbbtIPUSSg' \
    --isPublic 'false' \
    --limit '18' \
    --offset '70' \
    --sortBy 'DXmUmGjG8tm3fPDf' \
    --statCodes 'fajNis6gjLctkMOe' \
    --tags 'NDMqbYOlGte0nLPA' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'GtojeTxivpFWunpC' \
    --body '[{"statCode": "9DVkmj1VRZRJveUI"}, {"statCode": "fpEuWldL5F20m0gy"}, {"statCode": "yTJdCCnOSznEWIXF"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'IbsGnXrv9MX19vu8' \
    --body '[{"inc": 0.18012110642305412, "statCode": "ToPbc5hRrSrnfPYq"}, {"inc": 0.9771525517343254, "statCode": "1RDNuCOhlO1ykSVU"}, {"inc": 0.8844683155218562, "statCode": "8HPNgSsmj5EIO8h2"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '2ok4BvoKObWNG8Xq' \
    --body '[{"inc": 0.46166494519197054, "statCode": "FqFKM1TXjznjbUoX"}, {"inc": 0.2348062804764529, "statCode": "eaRIa4jQlKXOCmXR"}, {"inc": 0.8623834315125216, "statCode": "l5B1VajPu8zaKNxh"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'fdAURQv9IaB8Mzk8' \
    --body '[{"statCode": "ImRfvCjkIFLUG5sq"}, {"statCode": "XPbHHtHWRWWlkwmX"}, {"statCode": "KS8fCmlHKOAuodeW"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'EsjUUewExbDkJ255' \
    --userId 'bc1Ow2Ggsl9d3PLV' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'p68Syr65cqM5IU8Z' \
    --userId 'AuQaMrqXnk74pEgi' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'YRSa90SC1gtZPw5J' \
    --userId 'Lv73oCdzarVoUyUk' \
    --body '{"inc": 0.13307953574023168}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'seAz7zscLCPhB5bC' \
    --userId 's3xfWaW7WCl3OUrf' \
    --additionalKey 'QvvfZQtrrVGUeGgY' \
    --body '{"additionalData": {"jyMFmDjB2ltKvzV6": {}, "Mp6AN1WQnpxfwHUt": {}, "O7zhN66kgG5gFzPo": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '94' \
    --statCodes 'zy5YgpKyntNb5vM8' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Z2OOocW1wp289rss' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '14' \
    --name 'SqB9WSvSGN87rZzS' \
    --offset '36' \
    --sortBy 'hSRdQeqQ6ENtVU8B' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["vOGTRGftcGkiqxkb", "6H6SsRMiFpcdsQd7", "26FjRKRPKEqvDUyI"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '1OnA1kJAFeMDK2Xn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'hrK1umEkpbI3Qmw1' \
    --userIds '3Ssn9WxfOga4ryrl' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9185141739245406, "statCode": "ERXi9EAbtKgdDPI3", "userId": "cw4R2pAhAQVdMPNV"}, {"inc": 0.4159575953125245, "statCode": "Vte7Pb9WCg2juD2o", "userId": "2nwFNhMfuwVahQ6F"}, {"inc": 0.4421170320562311, "statCode": "ocgIgwl3JY56TmWZ", "userId": "ht5lGWN4lNG2dazP"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6654058547811127, "statCode": "bzK6XqASsjMVAmmo", "userId": "RAXYPSpt601K6eGb"}, {"inc": 0.8811134880448228, "statCode": "MMnXT87BvstwP5bx", "userId": "gDQTLe8iH20J7heR"}, {"inc": 0.6470963824444146, "statCode": "4tc4zAiCBFb0LKsh", "userId": "qKozKBXr1egnI4Qz"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "u7DSIF5t2P2fW8iv", "userId": "LLRGhZUrbfemrILt"}, {"statCode": "wrnKaDeZRZa2dKK5", "userId": "QmDFrTXQvxrXuo0k"}, {"statCode": "ZsPdKtk4bDGmJI3k", "userId": "rv1AgE2mUSHYWpGp"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["3hw0LLlph6Pdl46b", "wiYstNHuW33UMg6x", "YkqwphLvi4Cb31W5"], "defaultValue": 0.013556693733952296, "description": "2XfaRLIyhfdKcOZ8", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.9512734606039877, "minimum": 0.9734247115780982, "name": "B50CMTqjLIBjmT89", "setAsGlobal": false, "setBy": "SERVER", "statCode": "tzx82B4J95fCbFno", "tags": ["43RKM1GkRGToJxNj", "4JmGsSD0gmEM5uai", "8vA5B0ggf4MEtPZZ"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'ZStxTUEipjylT6DR' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '39' \
    --sortBy 'nj7XO6VkNYu1xRZL' \
    --statCodes '["0ttfOQOUTg3NY7FF", "UuHb2oo0ROnXgFjK", "f3ttLrdaABuoLgWQ"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '51' \
    --sortBy 'pA8d3fObXFzFU3lG' \
    --statCodes '["9TvcskwgjeIQOFkO", "6TyrIwmg2cc5FxY6", "0k5zY1UaTmX4hwmB"]' \
    --tags '["IUNisaurPNTUzZ84", "FkAVDC43nIL91yby", "Aas4J8TfjAb3LTC8"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'khtU7MuTCag9pXLm' \
    --statCodes '["mOFZ9nphFOnE7LEl", "V9BJZcJh1PN1DASC", "zkihE0CqtvgyVlGF"]' \
    --tags '["3xNDFc18RszDFeZk", "tJxr97Vkln8LOeuv", "iVyJf28Oa4VB6gO7"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'CEnYV6dwbYNTxPUH' \
    --namespace $AB_NAMESPACE \
    --userId 'U4xkSPQOztY2NEST' \
    --limit '64' \
    --offset '61' \
    --sortBy 'R1WyDZftqN7LDC81' \
    --statCodes 'bc7Mza3acG5anf4C' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sEBXfRfP6uavpmaT' \
    --limit '16' \
    --offset '57' \
    --sortBy 'ibHIPD5t3RwcXWJC' \
    --statCodes 'GkHoXF59pSZNnXpO' \
    --tags 'tzvyb0QrLA86ROmE' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'xNzFTwhjNn50qmh4' \
    --body '[{"statCode": "Cz0qpxmXCLVl7whm"}, {"statCode": "OqHKDg5W443li0Zt"}, {"statCode": "9hfCPxTv5ZptaL8M"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'QvCuX59HRaSBeDTS' \
    --additionalKey '1bmxRPLgFU09e49m' \
    --statCodes '["P1sLxsXW2Pyyz3HB", "BwnlfAqSfGPioaVn", "OUZCDFgyFIehjDeV"]' \
    --tags '["aZMxRvuPUhXbjTpF", "d0t8ec5qfH1x9D9J", "yl3rSXgyFCYF1wcY"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Yyf2j7i0YjgTFHhc' \
    --body '[{"inc": 0.8131319841995855, "statCode": "G5y55rDOkwV7B7G8"}, {"inc": 0.7466987070732442, "statCode": "lYwpS1trAMa2B2Yn"}, {"inc": 0.2801647465921079, "statCode": "b7cVTcYMmMtDhY76"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'u2P4uKW0Btauk4GM' \
    --body '[{"inc": 0.32192251956154405, "statCode": "WTFWxKduFAmLfimg"}, {"inc": 0.276666364869817, "statCode": "cdHm3kIF5nDsRtCR"}, {"inc": 0.7413352435393605, "statCode": "KuZ6Fae4NHETDJQt"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '9OMrPrGQLYlWycKj' \
    --body '[{"statCode": "Xb3w4cXea7aqUOtT"}, {"statCode": "9mtW4wCPaXEDCg1Q"}, {"statCode": "cpD6DijIdBwztxiE"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'UwP7kLzL41Ty3aKh' \
    --userId '1GmgWh5Q5FVdraWP' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'giJd18DG0mZv2uLl' \
    --userId 'HJ4n9CvdaHAX3Bno' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'RJe7NlRtkNimdwo3' \
    --userId '6eOwTzIbYROASMml' \
    --body '{"inc": 0.0017998457427661485}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '33msF6pWqzPNYjXB' \
    --userId 'qkQxTK4guGPVPAfX' \
    --body '{"inc": 0.53474139781885}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mzVmYuoiUyLDmwYh' \
    --userId 'HjvBmeng3cGOVrqj' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"3zjLqOH9Jtlj66AM": {}, "feK0rduVmM8HmIWY": {}, "dDAvqL5az477F7ZX": {}}, "additionalKey": "V8UDLPfrMCM3dPFO", "statCode": "LXiSRmRWHwe4x5fy", "updateStrategy": "INCREMENT", "userId": "fH1b0xWqMJuqFI0O", "value": 0.9621096672428419}, {"additionalData": {"Tg68V2SqSSEB60gy": {}, "1l2itsB5v8PGkSY8": {}, "o0W8CLngwvfyXwJv": {}}, "additionalKey": "JMmb7ktrrdOSWbts", "statCode": "5ZVubALEKjCP1Ajh", "updateStrategy": "INCREMENT", "userId": "0aYekaB65EIs8XeV", "value": 0.7149547718604241}, {"additionalData": {"kRAX5iTcmyQe0r8r": {}, "ZqqCfaAWNU9OAMob": {}, "fBgM4ZHMHOCrHSyy": {}}, "additionalKey": "NEBJaJb7JttHxLKA", "statCode": "5cfAlPGOG0vg7HKe", "updateStrategy": "MIN", "userId": "xo3LrdPV5h58vVlR", "value": 0.1136238944538589}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'q0Bb1h5lB59NYOYV' \
    --statCode '5m4dkpju5lgu8G26' \
    --userIds '["iDYg87dMK5NADvFY", "jtKlwhcks541zluy", "iwr4GfrJPybqdzMZ"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'ELamGCyw4e7MtfzA' \
    --additionalKey 'XL8TuG2kN5ShNxzU' \
    --body '[{"additionalData": {"Nw1QiCqYWoMl3cFJ": {}, "YzVbQwlxVWEyjBYl": {}, "IXU5VDRo2Atb3c6n": {}}, "statCode": "ITwFmRKWQZT5ooWH", "updateStrategy": "MAX", "value": 0.8352955736152615}, {"additionalData": {"VZPJ04LTH20Q9cIT": {}, "eXIuxPJTFJfXGbW0": {}, "uvPHNNPvExOxNjN9": {}}, "statCode": "asNpUd6s365V5KqM", "updateStrategy": "MIN", "value": 0.8445065859814468}, {"additionalData": {"1IYFQhdSTv2m3fib": {}, "RICGaDtxIvJeGfV9": {}, "1MSgiuFn3WPiB7rd": {}}, "statCode": "qycjZcCzUaRxCzex", "updateStrategy": "MIN", "value": 0.41255955536327427}]' \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem' test.out

#- 88 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'OLeDpvPREwUhb4qG' \
    --additionalKey 'ObQACP2Vbp3bmHds' \
    --body '[{"additionalData": {"TTWxLLj75kHaBXUp": {}, "TOATTfi9HNrNPH3j": {}, "5NY8k1MGhptTB0p7": {}}, "statCode": "l62tYVCv5aKye3nk"}, {"additionalData": {"NXn7q3wlYs3INPOo": {}, "fDXscdQ3LAm3jIK2": {}, "6T1yvLpc94Es1WbG": {}}, "statCode": "CdnNdX2ImkSSeTN4"}, {"additionalData": {"GpAwVSHHBiCA28jn": {}, "LMiF70fMFAYqAxIO": {}, "NsHLkjCBROMteerB": {}}, "statCode": "lC54JeTQwwAY4b1R"}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkResetUserStatItemValues' test.out

#- 89 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'dbzUHGclMKoNcA7N' \
    --userId 'ihpwVGp6Mm5jGWLX' \
    --additionalKey '5drVuwSR1YRKGb7F' \
    > test.out 2>&1
eval_tap $? 89 'DeleteUserStatItems2' test.out

#- 90 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'aIcbhkKacMacQsfw' \
    --userId 'BWjeKCWdq7MWlqkc' \
    --additionalKey 'MP34ZBR49nppPymk' \
    --body '{"additionalData": {"PWOyXifjqywHWZXn": {}, "BYnLarqOBA6u2nmP": {}, "M9TqKDMp25PWW1pv": {}}, "updateStrategy": "MIN", "value": 0.00872075499449021}' \
    > test.out 2>&1
eval_tap $? 90 'UpdateUserStatItemValue' test.out

#- 91 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"9g0mXnEvDCXa0q3b": {}, "X2fqTn9LAaBdPiT8": {}, "otTP85Y36kc0V3ip": {}}, "additionalKey": "IEcsv4QnQjyKdwfV", "statCode": "wsKAZbIf9HNJmAz0", "updateStrategy": "MIN", "userId": "JwjgFzlF5fM8e9eH", "value": 0.7873766948377685}, {"additionalData": {"HyspxpjiTYLHNloI": {}, "qfT7BpxAEIo1SzH7": {}, "ozXBZlCiy6YMFhv7": {}}, "additionalKey": "A5m7BGAUba3Bz6q4", "statCode": "kpcn8IBSkTrAvmfj", "updateStrategy": "OVERRIDE", "userId": "vU1Z5kItLKjmscgn", "value": 0.9585100059236689}, {"additionalData": {"LD3BI5qTsX31W3a3": {}, "s3FFWzyhwjz3jDL9": {}, "pOfm6TZZSIXKwaCO": {}}, "additionalKey": "9LGZSarBffai0Dcb", "statCode": "jUI8F79XYUPwDmn8", "updateStrategy": "MAX", "userId": "wDIfwrfgwkT6fYfS", "value": 0.937418760776592}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem1' test.out

#- 92 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'SKgUTuRKfrCquNrF' \
    --additionalKey 'rCnBWJursAZneMef' \
    --statCodes '["bQaFEsQeqOigHlHe", "bBFTpOKB3ouLguil", "yjd6vr7WN3R0eJRt"]' \
    --tags '["UC6rZOio4QIdi7DW", "mtJUTRSTppaHIGMn", "opQ5x4Pc8YMQbtJd"]' \
    > test.out 2>&1
eval_tap $? 92 'PublicQueryUserStatItems2' test.out

#- 93 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'W3yzJJ6M5bhTqHxX' \
    --additionalKey 'Nv2rtaVJjeLylrKE' \
    --body '[{"additionalData": {"fX3PN5QEgVLJwueD": {}, "hK2hS50b9q5etq3z": {}, "G3liwyUm1A6DgQ0u": {}}, "statCode": "WeSZ3q4oc7vWdxtO", "updateStrategy": "OVERRIDE", "value": 0.015379981159394318}, {"additionalData": {"RHHsYV802dPQoOmm": {}, "F3DCON1dR11WVvdR": {}, "2I9vgANWXrUs9Qof": {}}, "statCode": "kWVZfti9QrQZrGvw", "updateStrategy": "INCREMENT", "value": 0.1698777489958292}, {"additionalData": {"tWxzHX8bCdl3ZjT3": {}, "OIwj70rL3GGgUFiN": {}, "X6N7rquoGFe3XsqJ": {}}, "statCode": "XtB3euSvIlBtxNOl", "updateStrategy": "MAX", "value": 0.07752935089673385}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkUpdateUserStatItem2' test.out

#- 94 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'i7lHpyhGudqWT47C' \
    --userId 'Kqdfb4ASirz3bjB8' \
    --additionalKey 'l9tQvZ3n6g6XKEu9' \
    --body '{"additionalData": {"cDMCzGTmIXH2XkaQ": {}, "C62ZcDm3585z4A6Q": {}, "RSsHxEuVv7Cj2vXc": {}}, "updateStrategy": "INCREMENT", "value": 0.08977804176630155}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE