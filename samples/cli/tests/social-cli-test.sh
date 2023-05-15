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
echo "1..88"

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
    --body '{"maxSlotSize": 60, "maxSlots": 12}' \
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
    --userId 'pWKeS3fajwB0uht4' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'kNV2ZC0xosN3SvpS' \
    --body '{"maxSlotSize": 45, "maxSlots": 46}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'BaF19Y6zhmMEHQtI' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'QVZ558dBhjD83yti' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'l9KgLtcQ6c2zJwEc' \
    --userId 'Ovuz8Vqio5wNyf3P' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'ZBMMRes6kp9Q0zGy' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'h2Kv8MAAgKbC8FX8' \
    --userId 'q7yjRJ5CCXKQWFL7' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["Ju87LTN6F5OphnaC", "jp3SxVokUojYEz9o", "7oBEfutSJFGXv39g"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'PU6fdZbgSwdhZpUm' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'WHsNUpVmGuy1Dw2C' \
    --body '{"achievements": ["jzVoYEdZMxpKN8lk", "ieTwohYX9dfXxP2W", "b3q0UHFr3PCNsebL"], "attributes": {"YzhMtP4iS9JpnivD": "MOIXSRwPggfYImSN", "y9RjFMCPLAQjjRDw": "xdhzwHVzvBxiTjTy", "SNoXxI8tVY0WZVmU": "SwcfpUqTapS2OcrE"}, "avatarUrl": "SOw7L7JwFPTbx0HG", "inventories": ["jQXvOLxLnKlSgNCU", "1g5mAfqsgxZNJBnL", "x3vXgv4hQJI9Q033"], "label": "k1rP1TNmCJ8ly9EQ", "profileName": "lZQ1NrxFOh6Ua0tO", "statistics": ["vpTJkdcvut9MsHgl", "RIvXdsUS0KiLSASx", "bfrDi0FfrunC5U0u"], "tags": ["VQDY88IsTsf5MXkm", "PTBIYqQMJ9lZGiaQ", "lg9OdxoJYvqojuti"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tUOSIIbYvJEOvPgx' \
    --userId 'Xdjm37V4Qxsz4gkW' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '5OWQf7cwMH2ZMrw5' \
    --userId 'yINf3UTytYJxtD14' \
    --body '{"achievements": ["eIqjb8qxvHWEuTx4", "xRYKU4g62pQ2pPpJ", "FKuVM6rWPUwQECYX"], "attributes": {"SVdV1NntleE3uDTt": "5WknkRBBInenQwki", "2gonHueyZlyi36ZS": "QXgk0DIPFCsl1hxT", "91m4qehrPfiT5YMb": "5gm3QrdmDrMqdrCr"}, "avatarUrl": "vEugWOXSD6Q521Cl", "inventories": ["vQ4Iz5QJjcj0Spye", "ttBGKXXCdpI5QnSp", "4Je7RJ6z859etqa4"], "label": "F79F23QPvL5NyxEV", "profileName": "zNqFI9e0EfcjbhZT", "statistics": ["M2h7X0sNPmPidQMX", "06n7mnOym9ruBlB6", "8Ss3mX9DKTIHaCJe"], "tags": ["BjxDgZI24yntu4Zv", "ZJWlcyiTt7QfnEZg", "osjdO3dHreRf34OA"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'JneOnUi0gW9jEFOO' \
    --userId 'J6US4th0HKiLM5Mn' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'YLfn7nJNSZW9cica' \
    --namespace $AB_NAMESPACE \
    --profileId '4FQg8aiaVJCRRI0Y' \
    --userId 'GmFaeTmH4JAvzYIw' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'agr5yeYQ7XLHR5BJ' \
    --namespace $AB_NAMESPACE \
    --profileId 'aBl89Mbc13xVkb7X' \
    --userId 'YijrkSOlTzq3P0go' \
    --body '{"name": "2Hdm5YiJ5Frs3ILa", "value": "WIebq5iLE8koiMcf"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'zDBgZkYkJarsNYIS' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'WZQpVwUOHeTsSVYm' \
    --label 'AM0CvZsnK1wiU0np' \
    --tags '["xNj7SRtnObJ4Y0L4", "2tVQ0a4mVF9G8GVI", "ST8OI7M97QgKfjiQ"]' \
    --checksum 'zAJ1nTMwfaV0hfL3' \
    --customAttribute '2OjCUj1UTCRaY3zL' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'q5xhTb3u1N1s4NXu' \
    --userId 'XO5jtzKgYFeAl9h1' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'furKUfe1Aszu4ICL' \
    --userId 'eg3E9tVlxTuBHI3f' \
    --label 'WMwZR9L5TLVi5TcD' \
    --tags '["JjxgqFMHraGW9xDx", "xeGWSjgE9IwPL6TM", "VXAJ93w20JbE52fs"]' \
    --checksum '86lmFZsue1D8B1IS' \
    --customAttribute 'ECTaZf34OChaldT9' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'zOcTBDniVSq4IYSl' \
    --userId 'R5t8BchD9m6cH6BG' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'nRaF5NL20fu6Xfmb' \
    --userId 'nQkIsfezWakp1O4s' \
    --body '{"customAttribute": "8yb5AzjxpUgfzh1a", "label": "DALcRrY1vuxdsAWZ", "tags": ["GF8JNzOwkPM872wB", "aIcOPTE6eA7AvODQ", "vxBHTlDMa9T5OjH8"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '66' \
    --statCodes 'qqjSG5KSCGSRvYAL' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'nXpBWa80UVcieO6J' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '92' \
    --name 'INg3gKWlwXgMrilj' \
    --offset '33' \
    --sortBy 'olzJCeChm9k9kSc6' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "UGSWtqgCCqcSrTeR", "end": "1977-06-30T00:00:00Z", "name": "RiMPZCyNWiwZHvBg", "resetDate": 86, "resetDay": 28, "resetMonth": 88, "resetTime": "Fx40jNymdD8g9FFx", "seasonPeriod": 41, "start": "1989-06-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'mhd76mMDKDaicQHw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'MAwYv0rNDzIpWDUJ' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "9iu5KcOD2pfCmSrs", "end": "1990-06-21T00:00:00Z", "name": "K4wKL055jLMkx7AA", "resetDate": 88, "resetDay": 47, "resetMonth": 6, "resetTime": "p2zM0EIdGrQnDYy0", "seasonPeriod": 95, "start": "1974-10-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'Ks6M7Jc1Ul9XSQ8u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'DjSkyU3zYcUdxv9X' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["geVEYfZM76JRUhKI", "sV74EGePfcPNgBrp", "qYr0AJPxePA6db2E"]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'HSSlz2VajwF6B8hn' \
    --userIds 'rdSIzMKQ3xNv9t1i' \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1917425786233914, "statCode": "aWmhBfJXV5C5n4pU", "userId": "Nb5ddv96LHWcEO18"}, {"inc": 0.673635988130922, "statCode": "sc0bifZRVfVCShyT", "userId": "4BPuVCJnR5BomHni"}, {"inc": 0.8213806990603475, "statCode": "A1M4DN3xToXsLbpo", "userId": "EqkS2GUPVr5jJIoD"}]' \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5153653384387448, "statCode": "8yjfYC2kQjZTIH7h", "userId": "sb4H1WEQ4IMnb168"}, {"inc": 0.3394673664185336, "statCode": "s77B5fnMIqkdevdG", "userId": "XqOwag2FuYZTcIJQ"}, {"inc": 0.6211867103599228, "statCode": "1QN01r3kAh4Lt0lh", "userId": "wz2WTCBBGo4eufFd"}]' \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '3E5R6MhFm2WfYexz' \
    --userIds '["mHR519GytJeHik3A", "79Lcb3UPOujoe7vn", "FYz99sC2bvXqSJfO"]' \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "YvJ7t7LT7uRarmfJ", "userId": "YP0NBqSUxFNxzqQg"}, {"statCode": "9e0cT35gJ3Q0JTFs", "userId": "IDT8voWyLs5kSIcZ"}, {"statCode": "NAL95Z037jjEQPn1", "userId": "adm8H3CB601PUFIj"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkResetUserStatItem' test.out

#- 39 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '5ipslZygcfBrRaxp' \
    --isGlobal 'true' \
    --limit '14' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 39 'GetStats' test.out

#- 40 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["PwDmNK82B1t9xYnq", "LUw0k4j4XCHBV414", "iSvuVs9tlXweJxrA"], "defaultValue": 0.9761037337359902, "description": "DEuYyjYI0szhlVKk", "incrementOnly": false, "maximum": 0.07918286532873398, "minimum": 0.49427317344234434, "name": "EI9QLAG6e5akzWiW", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "ByiU9WWzWx5el9qi", "tags": ["EPM0XjKuNvbhuOyV", "ZtPWW7S9ihe0JyIP", "jm9Hr1khbx5ypYGk"]}' \
    > test.out 2>&1
eval_tap $? 40 'CreateStat' test.out

#- 41 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'ExportStats' test.out

#- 42 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 42 'ImportStats' test.out

#- 43 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --limit '18' \
    --offset '78' \
    --keyword 'OrdDgpiiMzNr0wbZ' \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'AkzCKtbriyMhzdke' \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FiuvlUc9a6A8Q4ST' \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nnXtQBHHS8AXyO80' \
    --body '{"cycleIds": ["6rBZKVqy1haR52Xy", "RgDcv7FZEJ63M2ae", "IQund0XBaICKnHJI"], "defaultValue": 0.6628129940755543, "description": "fjIqnCItDfwFLe9Q", "name": "iZtOyOzD3QN4fzbF", "tags": ["zOA4uiBRCm1LD4ax", "tPqr6BDXQqb9UKbC", "lalaHS9TXgDLQxns"]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'SPSJd152MqSsTDqj' \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'gLg8rPlt7x7IKWSy' \
    --namespace $AB_NAMESPACE \
    --userId '0a9mtVahHAYr4jGT' \
    --limit '53' \
    --offset '16' \
    --statCodes 'mhnqSvTa5xZYWXO2' \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatCycleItems' test.out

#- 49 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'deFkODXnGsjIvFmZ' \
    --limit '56' \
    --offset '46' \
    --sortBy 'qHuMoEZd6I1Z9z2s' \
    --statCodes 'VPKwvlU8LVloqsWh' \
    --tags '2I2O7ftfzKlFgmkE' \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatItems' test.out

#- 50 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KHDWhLDxtIo2qs45' \
    --body '[{"statCode": "JlgP0O5i9vncFfrZ"}, {"statCode": "wYgNYV51WN1PJoNl"}, {"statCode": "KwbDebZWz0nasZx6"}]' \
    > test.out 2>&1
eval_tap $? 50 'BulkCreateUserStatItems' test.out

#- 51 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'waYwfgFtmPOTYZWD' \
    --body '[{"inc": 0.3287205832733383, "statCode": "mbtGJgiY1YYDIfjV"}, {"inc": 0.4671729222688399, "statCode": "W0qW1lWyyLMhW8pU"}, {"inc": 0.13643100235171435, "statCode": "ACmBkYigMug66MaL"}]' \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItem1' test.out

#- 52 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '1uX8EFi07iENzTMs' \
    --body '[{"inc": 0.9065070717228175, "statCode": "ICskstvzdaWI7mdg"}, {"inc": 0.8904081585897401, "statCode": "raRAZeFcFutC3LWI"}, {"inc": 0.491530348447099, "statCode": "QllC2Wv14x2Ne7MT"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItemValue1' test.out

#- 53 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'h5rl4xw0yXox3qgD' \
    --body '[{"statCode": "Jk947yjpRav8JPmt"}, {"statCode": "n39SyH5C0TzAoNCi"}, {"statCode": "G8lHVIKLyCar0cwn"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem1' test.out

#- 54 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'hJpSt5rqZy7LEM2X' \
    --userId '32vS7rgPCAdqfw3U' \
    > test.out 2>&1
eval_tap $? 54 'CreateUserStatItem' test.out

#- 55 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zI0fP41AXITnrcXi' \
    --userId '1JLM1jvqiOwb4yci' \
    > test.out 2>&1
eval_tap $? 55 'DeleteUserStatItems' test.out

#- 56 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'f5F42G9H93KrnFLS' \
    --userId 'NPhzk7fJqoXz0srn' \
    --body '{"inc": 0.36187350933365925}' \
    > test.out 2>&1
eval_tap $? 56 'IncUserStatItemValue' test.out

#- 57 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'BxtIuabQ86k8Duvi' \
    --userId 'YaPleThQYNfUu7oX' \
    --additionalKey 'SyJixLGr6VXvcnnA' \
    --body '{"additionalData": {"EP95X8jnnOeYqdIf": {}, "VN3gffpO1HLCKG2t": {}, "BalY0IWehUX23unr": {}}}' \
    > test.out 2>&1
eval_tap $? 57 'ResetUserStatItemValue' test.out

#- 58 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '97' \
    --statCodes 'kowBgwvdaE4CVQpu' \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItems1' test.out

#- 59 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '3Pgt0k251l1tIrjK' \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItemByStatCode1' test.out

#- 60 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '85' \
    --name 'UsJMWhTKhq6SNiye' \
    --offset '5' \
    --sortBy 'MVB1br4BBLy6EdaT' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycles1' test.out

#- 61 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'PPV6Ryw08pEPYRn4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycle1' test.out

#- 62 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Q4IFtPPOjCSsENJQ' \
    --userIds 'EY4FoXbckaxaFk1V' \
    > test.out 2>&1
eval_tap $? 62 'BulkFetchStatItems1' test.out

#- 63 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8001786761571379, "statCode": "nKDTwWEAvCnm8xVX", "userId": "nPwuiZ5aOlwpYQJF"}, {"inc": 0.657464660011024, "statCode": "Teu1yGpyPEZMAdog", "userId": "5S1rAjNaLHYEA4Tt"}, {"inc": 0.5792841286983252, "statCode": "UcUetk3T6TvzrIYf", "userId": "3lIjjpWgkY0EtG7k"}]' \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItem' test.out

#- 64 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2535656009259659, "statCode": "KbHqUF4wABeWkh11", "userId": "9vnpqCvvUyi9CX1o"}, {"inc": 0.7206745382093481, "statCode": "VbFCzaJIbbocGTBz", "userId": "vrlUIYasjVGtr4Z0"}, {"inc": 0.18566400106928882, "statCode": "U5McC7E7auggMb8h", "userId": "gVBVe61R144ye4Lx"}]' \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItemValue' test.out

#- 65 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "onpnQr4VXZHV6fUi", "userId": "IHzGqE2vRoNuDmZ4"}, {"statCode": "OlckOlhMsAM1EBkN", "userId": "3tS55TELr5cB8qPB"}, {"statCode": "ZdJBmaeNJSIMOoPD", "userId": "ThUs0Iq649sa97Hl"}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkResetUserStatItem2' test.out

#- 66 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["QmbYvHOSo9hTTdtS", "clZg6TPwAfRAgKRS", "PPMBD7WSTMkzub2q"], "defaultValue": 0.7171661008988208, "description": "Iq6F8dSo1c3vS8xq", "incrementOnly": true, "maximum": 0.93888131638792, "minimum": 0.5258105036629903, "name": "TnbuGpdF1xSSUgwF", "setAsGlobal": true, "setBy": "SERVER", "statCode": "MRQCjkl7C2PYFzxt", "tags": ["6jzufKuFpPp5WSuD", "EYZ6XBOy0sUCUf4Y", "DQcUzyHYGYlNabY2"]}' \
    > test.out 2>&1
eval_tap $? 66 'CreateStat1' test.out

#- 67 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'pd7rtMyPDCM6qs2i' \
    --namespace $AB_NAMESPACE \
    --userId 'uCASgKdjmgh0XWyj' \
    --limit '42' \
    --offset '37' \
    --statCodes 'D1RjF0yI9TEnrhnV' \
    > test.out 2>&1
eval_tap $? 67 'GetUserStatCycleItems1' test.out

#- 68 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'bhxX01WLKhArrSSV' \
    --limit '33' \
    --offset '13' \
    --sortBy 'drZwDrRtedMaWxwX' \
    --statCodes '4O4AjMjPAMu8WJiR' \
    --tags 'cjh5Ixqwurdvy22i' \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems' test.out

#- 69 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QkBA4cICTWNY5q7k' \
    --body '[{"statCode": "iK4HebKEZHca5tY0"}, {"statCode": "IncFsQzc7pIR1FJ0"}, {"statCode": "Us5PLdCoFhbe3LSR"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkCreateUserStatItems' test.out

#- 70 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'QGmBITEMvYX3gwAS' \
    --statCodes '["zJWrSb6tAVcM6tAo", "8lNZUDdmFPxxqT9C", "kfVyfNWsGdD3c4re"]' \
    --tags '["SXVYIj47oMznVY3e", "DSmsS8T5TEe9Ha3F", "10q2G2sgzUqbdbaS"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryUserStatItems1' test.out

#- 71 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '2UNkp43akiiFygR5' \
    --body '[{"inc": 0.8417798964999491, "statCode": "NJJavV9YG5ycMcd3"}, {"inc": 0.8293116450290894, "statCode": "i0pYCVVdrS8Shrih"}, {"inc": 0.46005827014272827, "statCode": "ItcaZmglCLqHD3VR"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItem1' test.out

#- 72 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'JKuY6saZg3j266bU' \
    --body '[{"inc": 0.7977729174645839, "statCode": "AYRLadQHN8fwJuJc"}, {"inc": 0.5373793336301851, "statCode": "JEGIDbYlTWnc8OHf"}, {"inc": 0.9628668165694705, "statCode": "QBTB7iTbs3brXB3I"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkIncUserStatItemValue2' test.out

#- 73 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'xo3jyueA4aW9z5sV' \
    --body '[{"statCode": "ndieKepMtQtRKwtL"}, {"statCode": "yKNZ1Rdpr5r1igLo"}, {"statCode": "eEDrvsJgGWfu8wAi"}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkResetUserStatItem3' test.out

#- 74 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '0dH47Y8nw6p3PU2w' \
    --userId 'oFCEjL0HUeFZbvIY' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateUserStatItem' test.out

#- 75 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jlvXNg2KYlyzlZJK' \
    --userId '4mvzyFb1Bd1QU2SF' \
    > test.out 2>&1
eval_tap $? 75 'DeleteUserStatItems1' test.out

#- 76 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'aQ2KTo8sN3lDtlob' \
    --userId '1OVvqMJT0ejfVo8N' \
    --body '{"inc": 0.7538931944876182}' \
    > test.out 2>&1
eval_tap $? 76 'PublicIncUserStatItem' test.out

#- 77 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'E7MAt0wvXCTANQnQ' \
    --userId 'wUNbMZ22woRbPfLp' \
    --body '{"inc": 0.44451799028354}' \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItemValue' test.out

#- 78 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Tv6LcImHLnanIvwp' \
    --userId 'terwnQRv4txSOXKz' \
    > test.out 2>&1
eval_tap $? 78 'ResetUserStatItemValue1' test.out

#- 79 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"l1ELKGpaOd2CIbi8": {}, "14xwvqrm5wZt4zDh": {}, "QhaBGIi3di5Tc1zT": {}}, "additionalKey": "ilrmu3GJgWgiIdg7", "statCode": "hQa8QfyuhydbsIUE", "updateStrategy": "INCREMENT", "userId": "w3WmCuSNBgLWlk4t", "value": 0.08267604222102753}, {"additionalData": {"Y6iiLrs3yD4m1TNQ": {}, "yRONEkyXR7Y1yyms": {}, "VttxSj7RTJ8DdUfO": {}}, "additionalKey": "X0SolnHpPTDi0tz7", "statCode": "kmZVemGvj2zRc3Bc", "updateStrategy": "INCREMENT", "userId": "WoGsxvtfx9XxvYTf", "value": 0.5540255992201831}, {"additionalData": {"XYYsEZUJl51sCyvt": {}, "eEjcdhPVt0sf9ohj": {}, "LRAzs0vpkzNhqmnQ": {}}, "additionalKey": "SVZOCRqsaeCzxONG", "statCode": "vSiwff2wNYk4CdxS", "updateStrategy": "INCREMENT", "userId": "4H1kf9zHlAcVR1qB", "value": 0.9707211678371986}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItemV2' test.out

#- 80 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'AnCBEC8HwDPbUT4s' \
    --statCode 'SNnd6HPdmpAs612X' \
    --userIds '["YJV0Bi462mOzrSCc", "OWtfCjiL35ThHbbY", "4jFsGTKaTUYPeqqx"]' \
    > test.out 2>&1
eval_tap $? 80 'BulkFetchOrDefaultStatItems1' test.out

#- 81 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'kE13LWvBn2ntgL6C' \
    --additionalKey 'EhCrOVAqFzARaoRO' \
    --body '[{"additionalData": {"iTo160ApKyZRkAbH": {}, "txGwYFkpobNSOmUb": {}, "fHxXIA2qyZsiREhz": {}}, "statCode": "udT1z7dELvifxgQt", "updateStrategy": "MAX", "value": 0.9927555102419346}, {"additionalData": {"dhv6BWrkWfZ15lqh": {}, "xC6ukkPeMyVWULAY": {}, "EOhW6W9spKjzpEfx": {}}, "statCode": "MQHy9yvnIBJmbvo6", "updateStrategy": "OVERRIDE", "value": 0.866612092602052}, {"additionalData": {"SpqiyihdyqLoAvBu": {}, "2owjDoULoZrWQI2q": {}, "Q2gDPzGYsu3n6PC3": {}}, "statCode": "1IuVHo1rmHi6Fre5", "updateStrategy": "OVERRIDE", "value": 0.25232587112337557}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkUpdateUserStatItem' test.out

#- 82 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'x2IXXCtmooMEye52' \
    --additionalKey 'ynGOobwfkJaZyijE' \
    --body '[{"additionalData": {"nCR2Foxrwb9Hq8fQ": {}, "6SZvvVTKNbiPNG4Z": {}, "Zvg2yQhIQgnXDOZu": {}}, "statCode": "TfapDQgWjRABO1XO"}, {"additionalData": {"4ACgS4W6GGwmAm0Y": {}, "m2kWasiuwF33G0uI": {}, "YdCnp8x2O8Q9YzkN": {}}, "statCode": "ksXKI3ZVgkaUKatp"}, {"additionalData": {"Ya2cizKRpy2DX0sZ": {}, "ud27R1zvZVRBif7w": {}, "ZQkTp4WBrsaKCVWp": {}}, "statCode": "zzls95xW2jhwkk58"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItemValues' test.out

#- 83 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'o0EZ2rYlZ3MnfH5e' \
    --userId 'KV6M5o2ASFOYdYax' \
    --additionalKey '7Ef64Iu0gPjJpTQ2' \
    > test.out 2>&1
eval_tap $? 83 'DeleteUserStatItems2' test.out

#- 84 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'hvbDnUjJFRdoFVc2' \
    --userId 'xmzkuRBjm0WYrTK9' \
    --additionalKey 'YFnFIwZdbDW4FTtK' \
    --body '{"additionalData": {"2auPfZOLCLE0XZqL": {}, "i5Ze0KXLHjrtJbhs": {}, "3PVRLtaSBTnUJbVl": {}}, "updateStrategy": "MAX", "value": 0.8312912475669548}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateUserStatItemValue' test.out

#- 85 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"xS7LHoEApBKXF98j": {}, "Pz6H9nTHGz1IXY6U": {}, "2ZoO1PBYp2bkvqIs": {}}, "additionalKey": "BWsJW340JmZnXRe1", "statCode": "t8xhznfFZTxQ4sAI", "updateStrategy": "MIN", "userId": "8sOhBNN71dA1YmgR", "value": 0.9403834440002503}, {"additionalData": {"rAGv9T8mVLzA10fL": {}, "gd37ptGsya9LX05n": {}, "9VxeRJ4mI2mgWKwZ": {}}, "additionalKey": "QeaMBbidQgeIFAsK", "statCode": "lpApircWsRsVaZYA", "updateStrategy": "MAX", "userId": "PkwmrUcU2ZxLTfO5", "value": 0.7875439844995169}, {"additionalData": {"8DfEI1Q0IAIO03wK": {}, "tvVe69NljV9iGAWi": {}, "qhOrZw32cMTcMm4A": {}}, "additionalKey": "D1oTMfBklT9tgz5V", "statCode": "l6j4CS4J5TdlJTwt", "updateStrategy": "MAX", "userId": "Q0UjsMRXDsR8bDkf", "value": 0.07623522872612165}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem1' test.out

#- 86 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'oYZB5uRxJwYKksxq' \
    --additionalKey '8pnBRke8OoGrMpKB' \
    --statCodes '["jxaKqEEZwzN24PK8", "M0JKVZeJDLVN130Y", "wnYii0ly3cC5g80T"]' \
    --tags '["WoasxgzRmD1QamLZ", "QzJbVe1oDVguawY3", "EB4g1lcXNEGlktP4"]' \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryUserStatItems2' test.out

#- 87 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '0pYkQqDKMINifBpE' \
    --additionalKey 'CQznFz8yqaEypufb' \
    --body '[{"additionalData": {"shC8oFEp3jKMXcJY": {}, "3YnzKPaCcA2Vpc3Q": {}, "ON1jf1olTEeR6But": {}}, "statCode": "DVra0Im9iazUAuij", "updateStrategy": "OVERRIDE", "value": 0.8851926183446786}, {"additionalData": {"nO15auk6qqPHpYxz": {}, "56xHw3RrEIrljpwW": {}, "3VoxdWGa7RX5PkcJ": {}}, "statCode": "rFoqivp42vv9fY4s", "updateStrategy": "MIN", "value": 0.043241994434494946}, {"additionalData": {"vHTFXy1cl7dQIgzc": {}, "Z1RpnSfQoFdiJY0y": {}, "4ESkszHG4IRohu53": {}}, "statCode": "pu7RNSx0Wxgh3Hak", "updateStrategy": "MAX", "value": 0.976773389212337}]' \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem2' test.out

#- 88 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'mbAuKqZKl6KVB7HN' \
    --userId 'SkVXtV3qGpjx3wj0' \
    --additionalKey 'Mn2KZPyxBy01EBw3' \
    --body '{"additionalData": {"iCa6aZVZmpIBnZW6": {}, "vksZ78MnTf2b28gm": {}, "lxEyFAesfIdPJ95N": {}}, "updateStrategy": "MAX", "value": 0.8452513120557095}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE