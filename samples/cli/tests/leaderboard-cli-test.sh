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
echo "1..62"

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

#- 2 GetLeaderboardConfigurationsAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'true' \
    --limit '64' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "gtURkmt3dElS8Q0p"}, "descending": true, "iconURL": "MVxGFtdqhVcRRnyV", "leaderboardCode": "0NKaiZPxVBPYEFcu", "monthly": {"resetDate": 6, "resetTime": "FJrKYJIaEWmvlBd7"}, "name": "P6xtKMoC5yAz6JHN", "seasonPeriod": 95, "startTime": "zdvJCEsKN6mz80uU", "statCode": "JV9g9wDocUDwFHgO", "weekly": {"resetDay": 74, "resetTime": "rL8TgfteqUG4XmEw"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'LGwIiYXsqQV13yJ7' \
    --leaderboardCodes 'tr44pdIFzI7h3JI9' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["UcVJY62Wtw7vAR2J", "YQ9bOhcUjzo9npcp", "RNkP8k0FAmOuE1oT"], "limit": 69, "slug": "3YwlwN0k2Iae3JhL"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["CvE0jMKppYunxnuo", "i3DlyYIJ6ShFlzwl", "HTaVLzVezJSKm0z1"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'Ozd56KDfE5wthRH2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'cVA76raZmXMnoyLI' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "JjujIBIWmlvWiF19"}, "descending": true, "iconURL": "qoITIgeOMX3RlriL", "monthly": {"resetDate": 69, "resetTime": "uRFl50DDQC3odAG0"}, "name": "4BFjtPm3Zby8aWsD", "seasonPeriod": 54, "startTime": "94lGx2WN1edJR2Yk", "statCode": "dO9c5k90VRDItVYL", "weekly": {"resetDay": 0, "resetTime": "XIOmTKFKqPRCcJaZ"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'I88UCaecZT5jRT9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'wd7I4S29m790IPZA' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'mB1uIgJFseGIbA1v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'c5fb3D2CoS0pLS8W' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '69' \
    --previousVersion '81' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'W7OTiH4KCbz9HLDw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'osGTQ5U43KBPCrIv' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '1' \
    --previousVersion '94' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'MFNqzqkug1JRBQBt' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '29' \
    --previousVersion '28' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'SjenybTj0NoXSOKJ' \
    --namespace $AB_NAMESPACE \
    --userId 'YCJWP5ORX4lLqM6H' \
    --previousVersion '15' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'eIA4aiYplyyIu6AU' \
    --namespace $AB_NAMESPACE \
    --userId 'jbTDAIOJCRJ8HZ3f' \
    --body '{"inc": 0.8110792701007559, "latestValue": 0.32681419222045316}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode '7i4c8TFqU9E0HtPF' \
    --namespace $AB_NAMESPACE \
    --userId '6gqcUGQeIqyHZg1n' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'Acz0gDyPCNe1kMJ5' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '27' \
    --previousVersion '93' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BLEXqOlc3XDvGcGV' \
    --leaderboardCode '["iNtafjDLjxl4fP0k", "kwottSdgmjJIr0xj", "ymKTa9Gf23rIo6UM"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BRqxhYyM8wVMjsX7' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nBE3CqC68EnhjEZR' \
    --limit '13' \
    --offset '59' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '42' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "vR4yWgi4DVJmjS81"}, "descending": true, "iconURL": "EdAiZkA2DZigkH5E", "leaderboardCode": "21X9D7W6H1Gwr3Di", "monthly": {"resetDate": 92, "resetTime": "uHuXTt2mxwbBmLvs"}, "name": "wb9kcYYYjx08AyQ1", "seasonPeriod": 0, "startTime": "U5WKXgcufAL6pat6", "statCode": "8vxArGV1ARaRjuCt", "weekly": {"resetDay": 93, "resetTime": "2mHB9giquh9hR052"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '5dUpB2UJzhl9JulJ' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'yQPfzDoieT4Wrm3v' \
    --namespace $AB_NAMESPACE \
    --slug 'WWhJJR2B3miEswPz' \
    --leaderboardCodes 'fVBwAaN5O38uNGnS' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'XmCSNYvmGhiEY8gk' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '79' \
    --previousVersion '19' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'EUXeenodStBN4v2A' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '18' \
    --previousVersion '1' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'hxz52EK36UOzCa0G' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '55' \
    --previousVersion '92' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'ItXRzU2XVVByl3Ng' \
    --namespace $AB_NAMESPACE \
    --userId 'guQmaCRUL13KVKW1' \
    --previousVersion '38' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'hvbqoWy0nPEvMmbk' \
    --namespace $AB_NAMESPACE \
    --userId 'd143QKut5vr2aMpX' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode '6ihLZu59ZymvYnTL' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '65' \
    --previousVersion '5' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'xGIzw5CyDIyRYdKI' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode '9YpNAppWtvUpeFUA' \
    --namespace $AB_NAMESPACE \
    --userId 'WyxklEYqmqOKPEmF' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'cewigsTZuzs3XghM' \
    --namespace $AB_NAMESPACE \
    --userId 'EyEXSKKWjIeZfELF' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'aYxAXTwKA9MUVQZW' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'wDKcuQKiIgKoRPrC' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '7' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["DPRMDhVBefw3iUwD", "fqdUZI5RTsRlhpHy", "QclC7JNas23FBj4V"], "descending": true, "description": "NpngUY9jpvnkRP8E", "iconURL": "zonw1r56bM6MXS48", "leaderboardCode": "g1LHtMckjGFcajfw", "name": "lufVgrdnu23H21FE", "statCode": "byzjgRsSA74VEMZ7"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["3NJR18z27rrqa4Bs", "7cqSoDQG67jpmHv2", "EREJdmKuQjJBvn4K"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'tTPKbSCTdgg5b7Fd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode '6p2at9gmxJLaHTw0' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["ONjkqU7Lab3SPVjS", "ZrZpzlPJbyIHfcaz", "IFhg0oQpQpnjMMxN"], "descending": false, "description": "NQAyPixdWsjDT7TY", "iconURL": "pNEJ5FnFZniuHhvL", "name": "Okq7EopDmLeMOwQ7"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'GSQKq4Z7aRMxD6VL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'm4CCAkFnpCHRVEZF' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'FUvnCVSp6lmQwli4' \
    --leaderboardCode '32w5LFAGtlW2u3Y2' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'Mah3AfEI74oGoqc4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'SFU2eQ1N0gX6hpO6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'Xide8POh5RrXIcgq' \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'IlEIATeufjWoWpww' \
    --namespace $AB_NAMESPACE \
    --userId '1oB4v4YREoc5nZkh' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'YhH6Bd0QpxsdyXCz' \
    --namespace $AB_NAMESPACE \
    --userId 'Jz1c8OTfX01A3SIV' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '83O7xoucGLxbUU3C' \
    --namespace $AB_NAMESPACE \
    --userId 'otUWWqhb12UhanCu' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode '4xUw13MeuJUQEVlG' \
    --namespace $AB_NAMESPACE \
    --userId 'Farij48HSmGFfah4' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '4txGUibxEa4HCne9' \
    --leaderboardCode '["NfFDmf53BReRxWqH", "vEToP5Qwr0UUnFoS", "HuTzljx6bT51pqkA"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BEZCIdNJpI6a0AAh' \
    --limit '32' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qZywAscktd54B2qT' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '42' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'T7gwwP0AIGJgxwwk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'HStt2hszFF5h4Z24' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'FXobCHGd37QoWEvT' \
    --leaderboardCode 'o62a4NlkJ4GYrnxE' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'JjB1TLw9bOqU8pTj' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1j8krWfbpmc23CO7", "ouaoOdYZspHyirjA", "0YKhkWiQGXZb1YkH"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'ghx4RWhYREk2HpDW' \
    --namespace $AB_NAMESPACE \
    --userId 'HOHBe8NOgwxr1xNS' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE