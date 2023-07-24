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
    --userId '7u94gV5aufd9tDLT' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'oTZlPrACPipk3EFJ' \
    --userId 'AUKwlN1tMMxlWY1R' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["OohH8f4nq6WDhKD7", "rUNwIpmXC0Wlaa8q", "UitKidKME0POBv2b"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '3mwJ9mT9Mnw1Nu4l' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId '6pVXStfUnWBS6Jmd' \
    --body '{"achievements": ["bqGv6VlFMqHcp8NF", "JVmYJuggwf7xVNhR", "mq3rXvBl0KhDkGTz"], "attributes": {"DVJxrWgF5Fn4CARg": "FNqStMRm72y7reqh", "10k8hEOtGfuTAfo8": "ROEuQAH7ogHflSHc", "I3SAkjxViO904iaj": "GQ4Zq15AZa9b5m3t"}, "avatarUrl": "a4b2YcdSabCtJrEj", "inventories": ["7Mi8G4EwsIOq4L8S", "4oNd8Df5wVhD85se", "7dXbiZi08FXaZfzO"], "label": "PrwAUbOWgd03a8ha", "profileName": "IaQsq2eA9I0rpugz", "statistics": ["LjtLhwv3IFOHeQIc", "lhL8F4MO25heScXi", "lwOKteohtplL1AYT"], "tags": ["zLHOG0zbxFr0B6oL", "i8E4NsA4PLO8sH3c", "wdPTdkB28pBU3v5L"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'lBpx8SU68r9VnytW' \
    --userId 'ZOy16X056GjAQwx4' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'QcYi2j0ZfEiXlLqD' \
    --userId 'VovMA7hxK1mNJmmS' \
    --body '{"achievements": ["WrKJzmadvbalM4mV", "XuqVTC5GxC1KsjEL", "0hALEWS5QgospsNz"], "attributes": {"F9NU5cnPZXpYjYVW": "DSkf1njvxbqARZCL", "y62erZ2opPCttFem": "2k7RhW2NiiGEfHav", "pxtpPjjHr2QTkPPA": "0mBlK3XcaDkxQfN5"}, "avatarUrl": "LFRryLYuTef5JPuk", "inventories": ["3lkhW3hlo4rH5eLM", "563cgKLeD2ir9Ewx", "QQT3DJI6EpCTIhuA"], "label": "kSraKUqPaioMVna0", "profileName": "bldPPCMkbSSG8lHD", "statistics": ["7xGOkFAhBLLQv1AH", "B5DZLo07LmOziEvA", "bAAxZ6SqOXHd6Tb7"], "tags": ["0fs88cB1CziUNMh3", "3UIusqaGZwa3CUe2", "HqFnz5oABVBfqN2a"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'OfGqyNOXFEMoPlgM' \
    --userId 'XGken7LaIwJl5oDt' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'rR0lhTqhrsngr5I6' \
    --namespace $AB_NAMESPACE \
    --profileId '6narTF3pGhffrReY' \
    --userId 'ypK7UdgbpUEZyg5k' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'JUiIeeWXbihNm8oU' \
    --namespace $AB_NAMESPACE \
    --profileId 'V0KTUEf2TRzKIxLJ' \
    --userId 'C6GbZZ60cFjhWcI7' \
    --body '{"name": "TgMCKAHHOb3bFxyJ", "value": "k5hwYCMdaFjcWpST"}' \
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
    --limit '78' \
    --offset '49' \
    --statCodes 'nONDLqsKUmVGypY0' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'FU4jMJx5GNRAcLGd' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '49' \
    --name 'eW6dC8Y9epSAg7E0' \
    --offset '19' \
    --sortBy 'OnMcHYbObFj5WkHH' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "pjpdk9Y7782Vy9rg", "end": "1980-01-12T00:00:00Z", "name": "WRBaRnnOuBqiNmcP", "resetDate": 57, "resetDay": 14, "resetMonth": 22, "resetTime": "GkDwNuvJ3w9630Uj", "seasonPeriod": 43, "start": "1990-12-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["c7AsM08qahKSU2SF", "3yBF7vtRoyC7knDe", "IiG91oLQe3un8VvE"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId '6sTN9o52C01lS3zx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'K5OyAHKwxxZjYKz3' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "F1oZmLH1a6mHnIka", "end": "1973-11-10T00:00:00Z", "name": "KTTylmsOcLCENzNq", "resetDate": 61, "resetDay": 17, "resetMonth": 17, "resetTime": "OnQBOgYdifV5XRSk", "seasonPeriod": 80, "start": "1983-04-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'UO6kCXMu0Q86VHtl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'zEpQraqlffPIO00J' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["xhnSFWGtNiKVVbUd", "Wsol6GetDacjQ1U6", "t22sh1Wb7t4gXdPB"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'PJ2nok4KoYHCHZxG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'IOoQrajcasXqD44h' \
    --userIds 'Q8sJQ3hMRoHRaiIi' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.36318316774062176, "statCode": "OkzsRREG3CMuJC4H", "userId": "EXiYKQlyiQxwGwLf"}, {"inc": 0.6484848972989575, "statCode": "1hyjWq3L9v3oosBS", "userId": "WnJxdnWqFOoOXdAL"}, {"inc": 0.3197496038595318, "statCode": "0WvmUSvY9Qwc0q2h", "userId": "cRm9CavJUTXruwmn"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9060397236564252, "statCode": "j70KwbOJ5GQU6aUp", "userId": "Z9oeHkLyiArFAyah"}, {"inc": 0.6859924941327703, "statCode": "lkFSK3UyHSQmZGmL", "userId": "Nw7xrJjxbz2jG8At"}, {"inc": 0.15630021065686928, "statCode": "t4tyBIKxC1FXewkR", "userId": "81XIwPsAaL8G55vM"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Lyih0Nn5pCNotOCE' \
    --userIds '["RHoYfykbAVnmAukG", "hd7BwKyrQAG6mAAh", "gGmEtnpApzi9gvoh"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "tDx29gWhLvN9Va6Q", "userId": "t0gJ1NWfqwnJ2owm"}, {"statCode": "XZxMnff8unRv0ZRN", "userId": "vxazJzRwszUh4uQx"}, {"statCode": "j3C9KVjh5hnCEVcu", "userId": "vlrHMKDrjbV1N0WV"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'OZhCiFjDNLUbM43p' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '1' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["25r1McnCnvOGByMD", "Bke0XHqUO2iB1svY", "oeVi0OFyNW6u1xFM"], "defaultValue": 0.018452761533108153, "description": "NwjaQsA2WMOUGA03", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.21302810642167902, "minimum": 0.8584417496144744, "name": "FQmeSgtc61rXLhWG", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "DnZMAQxiejTNc0qQ", "tags": ["k29P7empc68qqo3X", "b98p99Q5JXhw93nW", "fmFgpCZaaZoLNZU4"]}' \
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
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '77' \
    --offset '87' \
    --keyword 'uBQkrUZXbw9awU6j' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kvK4MEjmJz5kPbrQ' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'T5IUYFmqDRffbBRs' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 't4tInK4BS1XVJud7' \
    --body '{"cycleIds": ["rdlQUPODIzV3Y5ii", "srvA8dCFeofHFzL1", "8F45SOspH6yOEr6a"], "defaultValue": 0.43637309081124753, "description": "ivTSCTTkdpwDxG8L", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "wPsrlKKoSkaSIUpW", "tags": ["uyek8xttnhWKdULj", "Tlt9dxMy5ydhGSXi", "n9CaRSqkGCWza7tY"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'o4RyGZ076Pwbg7p3' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'oksdhmYvRW4c1i6v' \
    --namespace $AB_NAMESPACE \
    --userId 'IGEdkWm28a0oVl2a' \
    --isPublic 'true' \
    --limit '15' \
    --offset '23' \
    --sortBy 'kBCrrI3Du3EjvLqr' \
    --statCodes 'tljB0fqeX3DqA3KD' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'mAW7JFgTSny5jpYL' \
    --isPublic 'false' \
    --limit '81' \
    --offset '50' \
    --sortBy '5YT144LH6XvR9OZQ' \
    --statCodes '5D7cdQxfTDjdPAc9' \
    --tags 'Y3K4LkjAry4mCsSt' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'kkgb3wx5QFPDwhZl' \
    --body '[{"statCode": "3Ejzc1eDJmkSYGac"}, {"statCode": "cL1dhEYftDgAVRII"}, {"statCode": "W58LGxvnUibc9Nlt"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'airDmA3YHmjdadZX' \
    --body '[{"inc": 0.9459341742603332, "statCode": "Dd70TOPGNOJaViVk"}, {"inc": 0.27826096035819314, "statCode": "ZPNtqLOQO0y7EGlX"}, {"inc": 0.2195945732825515, "statCode": "06yOqkeWAVjRlFaI"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '8Oz90AD2bVlRz4tb' \
    --body '[{"inc": 0.7212592432638554, "statCode": "uRTxmM2FKBAHkoRQ"}, {"inc": 0.27419805532517616, "statCode": "6Ydgnx1NLS5pfjOl"}, {"inc": 0.38561726990281875, "statCode": "EBoA82niDQ02crMS"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '1IQCm0Jgd6m4GKik' \
    --body '[{"statCode": "ADSnvSFDr6TWNzto"}, {"statCode": "JApU8951S6vhepZG"}, {"statCode": "HUVBMIieMNiVKtyI"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'kRczlx5hz5jVSaFu' \
    --userId 'a0hEpLSJup6gIQ8U' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'W47C9frdmMFuP0L3' \
    --userId 'ia9Nf3ZlThL7rnIu' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '2CfwyoKVJ1sH6Sc8' \
    --userId '6bNLvDOw9Yb2HRv2' \
    --body '{"inc": 0.5861198402683357}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'gI8pJbH5wA2zBat3' \
    --userId 'Lpbi5Vhc9bYXEFqI' \
    --additionalKey 'Rmo9gsif0qIaALp7' \
    --body '{"additionalData": {"1PZNCK8NHCuc0DpG": {}, "LxqIgMgyI9QXWbR9": {}, "ubNlzpQa3A2nwI41": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '22' \
    --statCodes 'cLUT2dypXgv4LyK9' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'sqp1G9GXD2gt5XEj' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '47' \
    --name 'm0HvP8oDGTFlcJvG' \
    --offset '65' \
    --sortBy 'r8BKpeaScf4S8pQl' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["wT6dTCRtG4csxYTJ", "mLVJMo7nhCFky2VW", "9h6mzcVvPY00M2tg"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'H2VuAhlCsHtCf3K1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'THC8bZaZM4OGUiOm' \
    --userIds 'Ik8URHYzYx5nFQ6Y' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.07542527844935609, "statCode": "Hqmu9AExhCFJjj1R", "userId": "Nu7EpKkOXJvjAmbQ"}, {"inc": 0.8252842550918009, "statCode": "CkYRM9ddZn46u6PL", "userId": "l83xXNKE2qb26dJo"}, {"inc": 0.24982667627760868, "statCode": "mUtD4t27v2hmHyJ2", "userId": "ltqprN4NG3aWWUy0"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6116026032921605, "statCode": "lIFTlC8nnaGYp4JY", "userId": "KUdolzGCluTToeQW"}, {"inc": 0.7395304083905607, "statCode": "j1ZkHf1Q9ytamm7f", "userId": "Fw6Kv747oDy9P69J"}, {"inc": 0.2131434357087536, "statCode": "Ho8tlQzez77iDWpm", "userId": "1aRUntbIjC3zUEqS"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "j2thnCkIuzkkrELe", "userId": "KemaKprruaaX9dMo"}, {"statCode": "VaD8nS0I2Of5W8KY", "userId": "HDfliHgMNw65Itii"}, {"statCode": "ep8RkmoVEp08wbSv", "userId": "CrIPSRXQbZv7kBJO"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["rBoWlQOs3Q7IuURQ", "ef7Ga0ysML5m5S9w", "69OClKm4KUKb2Eua"], "defaultValue": 0.0671297130310301, "description": "i2U2JI2VCCLyYJQq", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7083064655756394, "minimum": 0.3163851283205136, "name": "WiKNVD5kCvWiZoyD", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "h7kvjb5YT9uLzReV", "tags": ["9E7XAtGLL5ceNHzS", "1G2p26tMCQmxl3jh", "7wpEvGsQmlpZowro"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'iqGaQrOMyIxlUYUA' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '9' \
    --sortBy 'YrCRbM7DNZSkDEeQ' \
    --statCodes '["JlnUNdZqZ6CavLVy", "a3ZM2jBJBr3TfG2X", "v5bwaLuB9l7KGVQN"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '96' \
    --sortBy 'vUE6scFoZT9rGudo' \
    --statCodes '["GJXDHR6gNhz2pzut", "BGBACXWD7SkRPslF", "7pRpDbYsemmUIap6"]' \
    --tags '["ZPjN1qqwBwF7DugW", "hGivSz1kfBw6Y6Ad", "K9fAGkjpPEj2PlUn"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'HOJ77TKFGtYZfp8J' \
    --statCodes '["oui0R41uaOg438z7", "Mv7YZc9UBtgtbr2g", "zKO92kuro4m8m2VK"]' \
    --tags '["1cW75RtkkL0e7Br9", "z0vpunC5bfXyOcg5", "mIv7TQYAhF9IbvJy"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'g2siZnR0iy3TqhAv' \
    --namespace $AB_NAMESPACE \
    --userId 'odLPoMxBiBffYeTl' \
    --limit '90' \
    --offset '2' \
    --sortBy 'wMvdnyjXC4jNvcwP' \
    --statCodes 'SmAo6CtN1TP2fXnh' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'muF6QdiIVblvjSE0' \
    --limit '60' \
    --offset '90' \
    --sortBy 'CCL8FzICbt0engZY' \
    --statCodes 'qmaCYOFNgbkCHS63' \
    --tags 'nrldeTDfcKidOc9O' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'faxWTinI6dBCCm0c' \
    --body '[{"statCode": "LUA3sSrRGWr0jX70"}, {"statCode": "z8LODgZJSGsSm57I"}, {"statCode": "KRsrmDE5hSnPJCJy"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'JKtCgVwJyTbHbC72' \
    --additionalKey 'tFZiNyWrJAqNJJrI' \
    --statCodes '["c2T2J2oBVDW50S0h", "dThNgD8SACWyQ8om", "bGQvti7IjI96jEI6"]' \
    --tags '["CyY1InIZExnGO8yI", "piyjAFF0BwTFc7HY", "q0GPeVlI9a9xhuBN"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'H5Imt7kV6IcVLczY' \
    --body '[{"inc": 0.8678621736178653, "statCode": "1HNJY2sVgCcrIB8e"}, {"inc": 0.09233866936502633, "statCode": "tNRGgRpCZPMitN0s"}, {"inc": 0.9740600214930276, "statCode": "37tAVsUSEheUArjL"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'I6OTJqXvk7ylosv5' \
    --body '[{"inc": 0.3213989700090726, "statCode": "dorBRnVIjCN6v1eX"}, {"inc": 0.000503621450727465, "statCode": "gCTcHhH89efA2n2j"}, {"inc": 0.19530360837818572, "statCode": "sxiG4QnUbJSsN0tD"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'i1PWdgj1kKhRvgLx' \
    --body '[{"statCode": "NKYlzf8a09qoDFgm"}, {"statCode": "0uy4YeJo1shqBz2e"}, {"statCode": "fnsyxIkPk6Ik0A1N"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'lOGhBPud3p1Jgm4P' \
    --userId 'iQrBmUTZJkmhwumT' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'unO25GyZaCLtcHrs' \
    --userId 'sWqs7x3Gh9VkdVlb' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'eP6IaD6s5DDM4FaC' \
    --userId 'gZwQjF5XNXc2pCjX' \
    --body '{"inc": 0.1998491458660503}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'TFhwu4a6vqKh9iqC' \
    --userId 'XeWdnGER7Mt5IIUb' \
    --body '{"inc": 0.014160868489407341}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'wXyCiiapm8Ss1Y4k' \
    --userId 'cV02AoJWpJkVXsJB' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"5JyTJQTyNLzSYU3k": {}, "1a0JXXPkH5DjGZ2p": {}, "3MfCwRromd3s35Oj": {}}, "additionalKey": "BXz9maxVfuqdhtmp", "statCode": "n5tDVhKN0gkzCdcT", "updateStrategy": "MIN", "userId": "lUfFUUlSTsJk8smV", "value": 0.587295624898357}, {"additionalData": {"F1IRhmAvvhjk5ndL": {}, "u0BK6WGUZJeoTNIV": {}, "J75FoOnQzXku89F2": {}}, "additionalKey": "sQTFAZtL9XaxtEuJ", "statCode": "ciUG7LdqXi1iftL3", "updateStrategy": "OVERRIDE", "userId": "awLXxGHy6XI4UfaQ", "value": 0.020098301794968854}, {"additionalData": {"SfznKT1gXtPP4lfq": {}, "W8ZOWCBZlSTV8p5K": {}, "SytnLfQksTvVScF0": {}}, "additionalKey": "ThsWsPefGpBKh0kt", "statCode": "FmeplmF2OG8v1jbg", "updateStrategy": "MIN", "userId": "4xllMAeM9heQgRqz", "value": 0.049092629135847554}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'CIgFUGkL9HdbZM74' \
    --statCode 'qOiyC38msdtoRr8L' \
    --userIds '["ftmQovBVeMIBVoaF", "Sqpd49FgaNQGEQOz", "9nqA9vzoVHksifnx"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'yjprj7d9FpBI52Nu' \
    --additionalKey 'kLf3sefFIplUy7oD' \
    --statCodes '["KH4AV6NLTNOiKLTv", "YJkK8JUtl4NI7R16", "focUS7wlGTyA2A4X"]' \
    --tags '["T8z28FifPbif02d1", "zzUF15stJbpjifxW", "CWiuXi89lWDug2St"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'jnDmQzVnir8ecyPj' \
    --additionalKey 'BLnscFPsckX6dJki' \
    --body '[{"additionalData": {"y6iEwf2pRQKt65PK": {}, "9LK9QVBnGUr5yA2C": {}, "KrZyu5TlEoXeRRwm": {}}, "statCode": "P5bv0K4oTSqkfX49", "updateStrategy": "INCREMENT", "value": 0.47263427032060923}, {"additionalData": {"qzsaLqs2OPbkUXuX": {}, "l5aze8wrmtZwzXcm": {}, "5RJ2lv9S3Wzb591L": {}}, "statCode": "uU6MbhsKkNR7X9Mp", "updateStrategy": "INCREMENT", "value": 0.6543428230816802}, {"additionalData": {"ZS86xznCA4UGPqHN": {}, "SnDOrMeSm6BDMoz0": {}, "Zv7NgyizWDKIiiHW": {}}, "statCode": "oDmu1YaL5mgs2tfY", "updateStrategy": "MIN", "value": 0.6930397231799241}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'LmcmdBpTey6QJuWJ' \
    --additionalKey 'V43umjp1s6ZHq8nt' \
    --body '[{"additionalData": {"plbZMfpcj2rvK5gf": {}, "Uo14RhHGvaxGqnAF": {}, "ZdbMThYP2Yi27Ctq": {}}, "statCode": "uF1mhNuuoe8l3Kxi"}, {"additionalData": {"tzs0vi2OelgAAwnN": {}, "RFRW54I5mndmNwnE": {}, "1AwsDzhUB9aIZ7IE": {}}, "statCode": "UNprryAaAEn4FQox"}, {"additionalData": {"7GoJic3UIPx4Gt7D": {}, "KU3Tr4ZBFoATYVap": {}, "vM0B1S3OWL0mO38S": {}}, "statCode": "EihwqrajwtFdFyBY"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '6PLBfhxLroGoa0JV' \
    --userId 'zIZ3RrVV7bRfJgJt' \
    --additionalKey 'tjG9kgH58RhP7UMn' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xBjCWqzBvl8nNoJk' \
    --userId 'U4EtFsesEX9UbWPL' \
    --additionalKey 'Y9YkVOjY3WCQ5CSP' \
    --body '{"additionalData": {"b6siIPyqL8acBn8m": {}, "AzjYNFamkrkSLe98": {}, "3toKUcnwo6ZOiHy6": {}}, "updateStrategy": "INCREMENT", "value": 0.383555328755409}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"YrCHRWZY7LAil7we": {}, "cs64lmVU8P78de7R": {}, "DmVYsw33P88G81Qs": {}}, "additionalKey": "NUZYFfvNMAFY2Ns1", "statCode": "fvbnTnd5cIuRZGKq", "updateStrategy": "MAX", "userId": "327rxvyZBxoHVeah", "value": 0.21281137954849794}, {"additionalData": {"mh4fZtVQK3JVQvDa": {}, "SLZq4haqMDsqS9r5": {}, "XyPR1KQzwlmqh14Z": {}}, "additionalKey": "y25h52AlhwR3pUqB", "statCode": "s2jLMXyUQ3gacfAC", "updateStrategy": "MAX", "userId": "q5v1ZigQuqCmQ9JP", "value": 0.9743912847141633}, {"additionalData": {"dnUexuSFRmsTdAWS": {}, "5u31P4Mnia3HhsE5": {}, "D3rjSHigpCWLt1bo": {}}, "additionalKey": "ppfR2PIh8DBbudSI", "statCode": "kUchDpJ8FaxWtYDt", "updateStrategy": "MIN", "userId": "3FkP2nYA8cXZkRXN", "value": 0.9623917299579111}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'UP9HYYyvdGUrgzOb' \
    --additionalKey 'hyp1WMup13s2SOnD' \
    --statCodes '["VUIoDA7gx7LJCWkV", "Y19huroK0yk5CDUr", "qywAJ9lIJlPxHKmr"]' \
    --tags '["QVkzXN3QOjFpG120", "DsPXWxl1yoKeaIZf", "GolFydZy6i5V5l3g"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'z4pjTeTR0kXycIKR' \
    --additionalKey '8veTxb5aQLO9oyV1' \
    --body '[{"additionalData": {"O6Ih2o1MKf01De8Y": {}, "eqheYrvGo7E30FAf": {}, "dP5VXU3MjWe5y03A": {}}, "statCode": "h5MOTrhTztQZYL09", "updateStrategy": "MAX", "value": 0.19967568464323104}, {"additionalData": {"N2nAMdlw56doXixc": {}, "HB3aRMwWDwFYmLvP": {}, "8l54lqq3EMR0Zaw2": {}}, "statCode": "W9fNWdMKgHaI0iLB", "updateStrategy": "MAX", "value": 0.38415937443713477}, {"additionalData": {"8UeFJsHWcEYm4FPl": {}, "Thr0uGGXOKtSRHEc": {}, "WDaeihEks75C0YWK": {}}, "statCode": "SzOlq5M2NdyRkCh3", "updateStrategy": "OVERRIDE", "value": 0.35556582168295525}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '0gYXufwkR50luqAA' \
    --userId 'Ny3ZgZPcrp2SFwJT' \
    --additionalKey 'hTmKeDMaQ3p4y3Lz' \
    --body '{"additionalData": {"IGhxMqc5A9yfIHtP": {}, "InRHNdxunMasgZNc": {}, "abLBx75omkqZgbMw": {}}, "updateStrategy": "INCREMENT", "value": 0.25315052545088534}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE